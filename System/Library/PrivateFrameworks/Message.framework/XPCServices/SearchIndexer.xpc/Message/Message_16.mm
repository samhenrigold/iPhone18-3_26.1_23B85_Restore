uint64_t sub_1001151F4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v11 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = (*(v3 + 56) + 16 * (v10 | (v4 << 6)));
      v16 = *v14;
      v15 = v14[1];
      sub_100014CEC(*v14, v15);
      result = v15 >> 60 == 15;
      if (v15 >> 60 == 15)
      {
        return result;
      }

      v92 = v11;
      v18 = sub_100067004();
      if ((v19 & 1) == 0)
      {
        goto LABEL_155;
      }

      v20 = (*(v2 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v22 >> 62;
      v24 = v15 >> 62;
      if (v22 >> 62 != 3)
      {
        break;
      }

      if (v21)
      {
        v25 = 0;
      }

      else
      {
        v25 = v22 == 0xC000000000000000;
      }

      v26 = v25 && v15 >> 62 == 3;
      if (!v26 || (!v16 ? (v27 = v15 == 0xC000000000000000) : (v27 = 0), !v27))
      {
LABEL_39:
        v30 = 0;
        if (v24 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v24)
        {
          v34 = BYTE6(v15);
          goto LABEL_46;
        }

        LODWORD(v34) = HIDWORD(v16) - v16;
        if (!__OFSUB__(HIDWORD(v16), v16))
        {
          v34 = v34;
          goto LABEL_46;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
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
        __break(1u);
LABEL_181:
        __break(1u);
      }

      v28 = 0;
      v29 = 0xC000000000000000;
LABEL_59:
      sub_100014D40(v28, v29);
      v8 = v92;
    }

    if (v23 > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_39;
      }

      v32 = *(v21 + 16);
      v31 = *(v21 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (!v33)
      {
        if (v24 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_161;
    }

    if (v23)
    {
      LODWORD(v30) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_162;
      }

      v30 = v30;
      if (v24 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v30 = BYTE6(v22);
      if (v24 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v24 != 2)
    {
      if (v30)
      {
        goto LABEL_155;
      }

LABEL_58:
      v28 = v16;
      v29 = v15;
      goto LABEL_59;
    }

    v36 = *(v16 + 16);
    v35 = *(v16 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_160;
    }

LABEL_46:
    if (v30 != v34)
    {
LABEL_155:
      sub_100014D40(v16, v15);
      return 0;
    }

    if (v30 < 1)
    {
      goto LABEL_58;
    }

    if (v23 > 1)
    {
      break;
    }

    if (!v23)
    {
      __s1[0] = v21;
      LOWORD(__s1[1]) = v22;
      BYTE2(__s1[1]) = BYTE2(v22);
      BYTE3(__s1[1]) = BYTE3(v22);
      BYTE4(__s1[1]) = BYTE4(v22);
      BYTE5(__s1[1]) = BYTE5(v22);
      if (!v24)
      {
        goto LABEL_81;
      }

      v89 = v21;
      if (v24 != 1)
      {
        v68 = *(v16 + 16);
        v85 = *(v16 + 24);
        sub_100014CEC(v21, v22);
        v65 = sub_1004A40D4();
        v88 = v2;
        if (v65)
        {
          v69 = sub_1004A4104();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_177;
          }

          v65 += v68 - v69;
        }

        v67 = v85 - v68;
        if (__OFSUB__(v85, v68))
        {
          goto LABEL_169;
        }

        result = sub_1004A40F4();
        if (!v65)
        {
          goto LABEL_187;
        }

        goto LABEL_119;
      }

      v81 = ((v16 >> 32) - v16);
      if (v16 >> 32 < v16)
      {
        goto LABEL_167;
      }

      sub_100014CEC(v21, v22);
      v37 = sub_1004A40D4();
      if (!v37)
      {
        goto LABEL_186;
      }

      v38 = v37;
      v39 = sub_1004A4104();
      if (__OFSUB__(v16, v39))
      {
        goto LABEL_171;
      }

      v40 = (v16 - v39 + v38);
      result = sub_1004A40F4();
      if (!v40)
      {
        goto LABEL_193;
      }

      goto LABEL_77;
    }

    v87 = v2;
    v45 = v21;
    if (v21 > v21 >> 32)
    {
      goto LABEL_163;
    }

    v90 = v21;
    sub_100014CEC(v21, v22);
    v46 = sub_1004A40D4();
    if (v46)
    {
      v47 = v46;
      v48 = sub_1004A4104();
      if (__OFSUB__(v45, v48))
      {
        goto LABEL_165;
      }

      v83 = (v45 - v48 + v47);
    }

    else
    {
      v83 = 0;
    }

    sub_1004A40F4();
    v3 = a1;
    if (v24 == 2)
    {
      v77 = *(v16 + 16);
      v76 = *(v16 + 24);
      v58 = sub_1004A40D4();
      if (v58)
      {
        v78 = sub_1004A4104();
        if (__OFSUB__(v77, v78))
        {
          goto LABEL_179;
        }

        v58 += v77 - v78;
      }

      v33 = __OFSUB__(v76, v77);
      v79 = v76 - v77;
      if (v33)
      {
        goto LABEL_175;
      }

      v80 = sub_1004A40F4();
      if (v80 >= v79)
      {
        v61 = v79;
      }

      else
      {
        v61 = v80;
      }

      result = v83;
      if (!v83)
      {
        goto LABEL_197;
      }

      v2 = v87;
      if (!v58)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v24 != 1)
      {
        result = v83;
        v2 = v87;
        __s1[0] = v16;
        LOWORD(__s1[1]) = v15;
        BYTE2(__s1[1]) = BYTE2(v15);
        BYTE3(__s1[1]) = BYTE3(v15);
        BYTE4(__s1[1]) = BYTE4(v15);
        BYTE5(__s1[1]) = BYTE5(v15);
        if (!v83)
        {
          goto LABEL_194;
        }

        goto LABEL_150;
      }

      if (v16 >> 32 < v16)
      {
        goto LABEL_174;
      }

      v58 = sub_1004A40D4();
      if (v58)
      {
        v62 = sub_1004A4104();
        if (__OFSUB__(v16, v62))
        {
          goto LABEL_181;
        }

        v58 += v16 - v62;
      }

      v2 = v87;
      v63 = sub_1004A40F4();
      if (v63 >= (v16 >> 32) - v16)
      {
        v61 = (v16 >> 32) - v16;
      }

      else
      {
        v61 = v63;
      }

      result = v83;
      if (!v83)
      {
        goto LABEL_185;
      }

      if (!v58)
      {
        goto LABEL_184;
      }
    }

LABEL_144:
    if (result == v58)
    {
      sub_100014D40(v16, v15);
      sub_100014D40(v90, v22);
      v3 = a1;
      v8 = v92;
    }

    else
    {
      v53 = memcmp(result, v58, v61);
      sub_100014D40(v16, v15);
      v54 = v90;
      v55 = v22;
LABEL_147:
      sub_100014D40(v54, v55);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v92;
      result = 0;
      if (v53)
      {
        return result;
      }
    }
  }

  if (v23 == 2)
  {
    v86 = v2;
    v90 = v21;
    v41 = *(v21 + 16);
    sub_100014CEC(v21, v22);
    v42 = sub_1004A40D4();
    if (v42)
    {
      v43 = v42;
      v44 = sub_1004A4104();
      if (__OFSUB__(v41, v44))
      {
        goto LABEL_164;
      }

      v82 = (v41 - v44 + v43);
    }

    else
    {
      v82 = 0;
    }

    sub_1004A40F4();
    v3 = a1;
    if (v24 == 2)
    {
      v72 = *(v16 + 16);
      v71 = *(v16 + 24);
      v58 = sub_1004A40D4();
      if (v58)
      {
        v73 = sub_1004A4104();
        if (__OFSUB__(v72, v73))
        {
          goto LABEL_178;
        }

        v58 += v72 - v73;
      }

      v33 = __OFSUB__(v71, v72);
      v74 = v71 - v72;
      if (v33)
      {
        goto LABEL_173;
      }

      v75 = sub_1004A40F4();
      if (v75 >= v74)
      {
        v61 = v74;
      }

      else
      {
        v61 = v75;
      }

      result = v82;
      if (!v82)
      {
        goto LABEL_190;
      }

      v2 = v86;
      if (!v58)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v24 != 1)
      {
        result = v82;
        v2 = v86;
        __s1[0] = v16;
        LOWORD(__s1[1]) = v15;
        BYTE2(__s1[1]) = BYTE2(v15);
        BYTE3(__s1[1]) = BYTE3(v15);
        BYTE4(__s1[1]) = BYTE4(v15);
        BYTE5(__s1[1]) = BYTE5(v15);
        if (!v82)
        {
          goto LABEL_188;
        }

LABEL_150:
        v53 = memcmp(result, __s1, BYTE6(v15));
        sub_100014D40(v16, v15);
        v56 = v90;
        v57 = v22;
        goto LABEL_151;
      }

      if (v16 >> 32 < v16)
      {
        goto LABEL_170;
      }

      v58 = sub_1004A40D4();
      if (v58)
      {
        v59 = sub_1004A4104();
        if (__OFSUB__(v16, v59))
        {
          goto LABEL_180;
        }

        v58 += v16 - v59;
      }

      v2 = v86;
      v60 = sub_1004A40F4();
      if (v60 >= (v16 >> 32) - v16)
      {
        v61 = (v16 >> 32) - v16;
      }

      else
      {
        v61 = v60;
      }

      result = v82;
      if (!v82)
      {
        goto LABEL_192;
      }

      if (!v58)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_144;
  }

  memset(__s1, 0, 14);
  if (v24 == 2)
  {
    v64 = *(v16 + 16);
    v84 = *(v16 + 24);
    v89 = v21;
    sub_100014CEC(v21, v22);
    v65 = sub_1004A40D4();
    v88 = v2;
    if (v65)
    {
      v66 = sub_1004A4104();
      if (__OFSUB__(v64, v66))
      {
        goto LABEL_176;
      }

      v65 += v64 - v66;
    }

    v67 = v84 - v64;
    if (__OFSUB__(v84, v64))
    {
      goto LABEL_168;
    }

    result = sub_1004A40F4();
    if (!v65)
    {
      goto LABEL_195;
    }

LABEL_119:
    if (result >= v67)
    {
      v70 = v67;
    }

    else
    {
      v70 = result;
    }

    v53 = memcmp(__s1, v65, v70);
    sub_100014D40(v89, v22);
    sub_100014D40(v16, v15);
    v2 = v88;
    goto LABEL_148;
  }

  if (v24 != 1)
  {
LABEL_81:
    __s2 = v16;
    v94 = v15;
    v95 = BYTE2(v15);
    v96 = BYTE3(v15);
    v97 = BYTE4(v15);
    v98 = BYTE5(v15);
    v53 = memcmp(__s1, &__s2, BYTE6(v15));
    v56 = v16;
    v57 = v15;
LABEL_151:
    sub_100014D40(v56, v57);
    goto LABEL_152;
  }

  v81 = ((v16 >> 32) - v16);
  if (v16 >> 32 < v16)
  {
    goto LABEL_166;
  }

  v89 = v21;
  sub_100014CEC(v21, v22);
  v49 = sub_1004A40D4();
  if (v49)
  {
    v50 = v49;
    v51 = sub_1004A4104();
    if (__OFSUB__(v16, v51))
    {
      goto LABEL_172;
    }

    v40 = (v16 - v51 + v50);
    result = sub_1004A40F4();
    if (!v40)
    {
      goto LABEL_183;
    }

LABEL_77:
    if (result >= v81)
    {
      v52 = v81;
    }

    else
    {
      v52 = result;
    }

    v53 = memcmp(__s1, v40, v52);
    sub_100014D40(v89, v22);
    v54 = v16;
    v55 = v15;
    goto LABEL_147;
  }

  sub_1004A40F4();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  result = sub_1004A40F4();
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
  return result;
}

uint64_t sub_100115B88(uint64_t result, uint64_t a2)
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
  v30 = result + 64;
  v31 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v29 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 24 * v11);
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 16);
    v19 = *(v15 + 17);
    sub_100014CEC(*v12, v14);
    v20 = sub_100063DD8(v13, v14);
    v22 = v21;
    sub_100014D40(v13, v14);
    if (v22)
    {
      v23 = (*(a2 + 56) + 24 * v20);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = *(v23 + 16);
      v27 = *(v23 + 17) ? 256 : 0;
      v28 = v19 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v24, v25, v27 | v26, v16, v17, v28 | v18);
      v3 = v31;
      v7 = v32;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v29)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100115D34(uint64_t result, uint64_t a2)
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
LABEL_15:
    v12 = *(v3 + 56) + 16 * (v9 | (v4 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 9);
    v16 = sub_100067004();
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = *(a2 + 56) + 16 * v16;
    if (*(v18 + 8) == 1)
    {
      result = 0;
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      if (v14)
      {
        return 0;
      }

      result = 0;
      if (*v18 != v13)
      {
        return result;
      }
    }

    if ((v15 ^ *(v18 + 9)))
    {
      return result;
    }
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
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t RunningSyncRequests.kinds.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100113C18(a1);
  *a2 = result;
  return result;
}

uint64_t RunningSyncRequests.Change.started.setter(__int128 *a1)
{
  sub_1000197E0(v1);

  return sub_1000B364C(a1, v1);
}

uint64_t RunningSyncRequests.Change.completed.setter(__int128 *a1)
{
  sub_1000197E0((v1 + 40));

  return sub_1000B364C(a1, v1 + 40);
}

uint64_t RunningSyncRequests.Change.init<A, B>(started:completed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  a7[3] = a3;
  a7[4] = a5;
  v13 = sub_1000B3774(a7);
  v17 = *(a3 - 8);
  (*(v17 + 16))(v13, a1, a3);
  a7[8] = a4;
  a7[9] = a6;
  v14 = sub_1000B3774(a7 + 5);
  (*(*(a4 - 8) + 32))(v14, a2, a4);
  v15 = *(v17 + 8);

  return v15(a1, a3);
}

double RunningSyncRequests.Change.init(previous:current:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1001163EC;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100116998;
    *(v9 + 24) = v8;
    v17 = sub_10000C9C0(&qword_1005D0E10, &qword_1004D5CB0);
    v10 = sub_10000DF44(&qword_1005D0E18, &qword_1005D0E10, &qword_1004D5CB0, &protocol conformance descriptor for LazyMapSequence<A, B>);
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = sub_100116428;
    v11[4] = v7;
    v11[5] = sub_100116988;
    v11[6] = 0;
    v12 = sub_10000C9C0(&qword_1005D0E20, &qword_1004D5CB8);
    v13 = sub_10000DF44(&qword_1005D0E28, &qword_1005D0E20, &qword_1004D5CB8, &protocol conformance descriptor for LazyMapSequence<A, B>);
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10011699C;
    v14[4] = v9;
    v14[5] = sub_1001164C0;
    v14[6] = 0;

    a2 = v11;
    v15 = v17;
  }

  else
  {
    v15 = sub_10000C9C0(&qword_1005D0DF0, &qword_1004D5CA0);
    v10 = sub_10000DF44(&qword_1005D0DF8, &qword_1005D0DF0, &qword_1004D5CA0, &protocol conformance descriptor for LazyMapSequence<A, B>);
    v12 = sub_10000C9C0(&qword_1005D0E00, &qword_1004D5CA8);
    v13 = sub_10000DF44(&qword_1005D0E08, &qword_1005D0E00, &qword_1004D5CA8, &protocol conformance descriptor for [A]);
    v14 = _swiftEmptyArrayStorage;
  }

  *a3 = a2;
  a3[1] = sub_100116988;
  a3[2] = 0;
  a3[3] = v15;
  a3[4] = v10;
  a3[5] = v14;
  a3[8] = v12;
  a3[9] = v13;

  return result;
}

uint64_t sub_1001163A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_1001163B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001163F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011642C()
{
  if (*(*(v0 + 16) + 16))
  {
    sub_100067004();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1001164C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 32);
  *a2 = *result;
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1001164E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t static RunningSyncRequests.Change.Started.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    switch(BYTE4(a1))
    {
      case 2u:
        if (BYTE4(a2) == 2)
        {
          return 1;
        }

        break;
      case 3u:
        if (BYTE4(a2) == 3)
        {
          return 1;
        }

        break;
      case 4u:
        if (BYTE4(a2) == 4)
        {
          return 1;
        }

        break;
      default:
        if (BYTE4(a2) - 2 >= 3 && ((HIDWORD(a2) ^ HIDWORD(a1)) & 1) == 0)
        {
          return 1;
        }

        break;
    }
  }

  return 0;
}

BOOL sub_1001165BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    return (v3 - 2) >= 3 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 4;
}

BOOL static RunningSyncRequests.Change.Completed.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a3) == 2)
    {
      return a2 == a4;
    }
  }

  else
  {
    if (BYTE4(a1) != 3)
    {
      if (BYTE4(a1) == 4)
      {
        if (BYTE4(a3) != 4)
        {
          return 0;
        }
      }

      else if (BYTE4(a3) - 2 < 3 || ((HIDWORD(a3) ^ HIDWORD(a1)) & 1) != 0)
      {
        return 0;
      }

      return a2 == a4;
    }

    if (BYTE4(a3) == 3)
    {
      return a2 == a4;
    }
  }

  return 0;
}

BOOL sub_1001166B8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (v3 != 4)
        {
          return 0;
        }
      }

      else if (v3 - 2) < 3 || ((v3 ^ v2))
      {
        return 0;
      }

      return *(a1 + 8) == *(a2 + 8);
    }

    if (v3 == 3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  return 0;
}

uint64_t sub_10011674C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100116794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 5))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
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

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Started(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 16))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 4);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 4);
  }

  v5 = v4 - 5;
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

uint64_t storeEnumTagSinglePayload for RunningSyncRequests.Change.Completed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1001169B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Task.Logger(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100116A74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Task.Logger(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RunningTask(uint64_t a1)
{
  result = qword_1005D0E98;
  if (!qword_1005D0E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100116B64(uint64_t a1)
{
  type metadata accessor for Task.Logger(319);
  if (v1 <= 0x3F)
  {
    sub_100116C4C();
    if (v2 <= 0x3F)
    {
      sub_100116C9C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100116C4C()
{
  if (!qword_1005D0EA8)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D0EA8);
    }
  }
}

unint64_t sub_100116C9C()
{
  result = qword_1005D0EB0;
  if (!qword_1005D0EB0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1005D0EB0);
  }

  return result;
}

uint64_t sub_100116D1C(uint64_t a1)
{
  if ((*(a1 + 45) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 45) & 3;
  }
}

__n128 sub_100116D38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100116D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 46))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 45);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100116D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 30) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 45) = -a2;
    }
  }

  return result;
}

uint64_t sub_100116DD4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 29) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 45) = a2;
  return result;
}

uint64_t sub_100116E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 48) = _swiftEmptyArrayStorage;
  *(a3 + 56) = _swiftEmptyArrayStorage;
  v6 = type metadata accessor for RunningTask(0);
  v7 = a3 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a3 + v6[13]);
  *v8 = sub_100116E0C;
  v8[1] = 0;
  v9 = (a3 + v6[14]);
  *v9 = sub_100116E34;
  v9[1] = 0;
  sub_10011D9F0(a1, v17);
  if (v18)
  {
    sub_1000B364C(v17, v14);
    sub_100104D00(v14, a3);
    *(a3 + 40) = 0;
    *(a3 + 44) = 257;
  }

  else
  {
    sub_1000B364C(v17, v14);
    sub_100104D00(v14, a3);
    *(a3 + 45) = 0;
  }

  v10 = v15;
  v11 = v16;
  sub_10002587C(v14, v15);
  (*(v11 + 16))(v10, v11);
  sub_1000197E0(v14);
  sub_10011D9F0(a1, v17);
  sub_100168350(v17, v3, a3 + v6[7]);
  *(a3 + v6[8]) = 0;
  *(a3 + v6[11]) = 1;
  *(a3 + v6[12]) = 1;
  v12 = static MonotonicTime.now()();
  result = sub_10011DA4C(a1);
  *(a3 + v6[10]) = v12;
  return result;
}

unint64_t sub_100117058()
{
  result = qword_1005D0F08;
  if (!qword_1005D0F08)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for RunningTask.TracingID, v0, v1);
    atomic_store(result, &qword_1005D0F08);
  }

  return result;
}

uint64_t sub_1001170B8()
{
  v1._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v1);

  return 35;
}

uint64_t sub_100117120()
{
  sub_100117890(v0, v7);
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v11 == 1)
  {
    if ((v10 & 1) == 0)
    {
      sub_1000B364C(v7[0].i8, v5);
      sub_10002587C(v5, v6);
      v3 = sub_1004A6D44();
      sub_1004A6724(17);
      v12._countAndFlagsBits = 0x6E6E6F63206E6F20;
      v12._object = 0xEF206E6F69746365;
      sub_1004A5994(v12);
      sub_1004A6934();

      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      sub_1004A5994(v13);

      v1 = v3;
      goto LABEL_9;
    }

LABEL_4:
    sub_1000B364C(v7[0].i8, v5);
    sub_10002587C(v5, v6);
    v1 = sub_1004A6D44();
LABEL_9:
    sub_1000197E0(v5);
    return v1;
  }

  v2 = vorrq_s8(v7[0], v7[1]);
  if (v9 | (v10 << 32) | *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v8)
  {
    return 0x64656C696146;
  }

  else
  {
    return 0x6574656C706D6F43;
  }
}

uint64_t sub_100117300()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v1);
  v52 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = (&v51 - v4);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v57 = v0;
  v58 = v8;
  v13 = *(v0 + 48);
  v14 = *(v13 + 16);
  v59 = v15;
  v51 = v10;
  v55 = v13;
  if (v14)
  {
    v16 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    v18 = _swiftEmptyArrayStorage;
    do
    {
      sub_100120E14(v16, v12, type metadata accessor for TaskHistory.Running);
      sub_100120E14(v12, v5, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100120EB0(v12, type metadata accessor for TaskHistory.Running);
        sub_100120EB0(v5, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v19 = *v5;
        v20 = v5[1];
        v21 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
        sub_100120EB0(v5 + *(v21 + 64), type metadata accessor for ClientCommand);
        LOBYTE(v60[0]) = v19;
        HIDWORD(v60[0]) = v20;
        v22 = sub_1004A5804();
        v24 = v23;
        sub_100120EB0(v12, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100085070(0, *(v18 + 2) + 1, 1, v18);
        }

        v26 = *(v18 + 2);
        v25 = *(v18 + 3);
        if (v26 >= v25 >> 1)
        {
          v18 = sub_100085070((v25 > 1), v26 + 1, 1, v18);
        }

        *(v18 + 2) = v26 + 1;
        v27 = &v18[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        v8 = v58;
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v60[0] = v18;
  v28 = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  v53 = sub_100031CDC();
  v54 = v28;
  v56._countAndFlagsBits = sub_1004A5614();
  v56._object = v29;

  v30 = *(v55 + 16);
  if (v30)
  {
    v31 = v52;
    v32 = v55 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v33 = *(v51 + 72);
    v34 = _swiftEmptyArrayStorage;
    do
    {
      sub_100120E14(v32, v8, type metadata accessor for TaskHistory.Running);
      sub_100120E14(v8, v31, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *v31;
        sub_100020EDC(*(v31 + 8));
        LODWORD(v60[0]) = v35;
        sub_1000D40AC();
        v36 = sub_1004A5A84();
        v38 = v37;
        sub_100120EB0(v8, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100085070(0, *(v34 + 2) + 1, 1, v34);
        }

        v40 = *(v34 + 2);
        v39 = *(v34 + 3);
        if (v40 >= v39 >> 1)
        {
          v34 = sub_100085070((v39 > 1), v40 + 1, 1, v34);
        }

        *(v34 + 2) = v40 + 1;
        v41 = &v34[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        v8 = v58;
      }

      else
      {
        sub_100120EB0(v8, type metadata accessor for TaskHistory.Running);
        sub_100120EB0(v31, type metadata accessor for TaskHistory.Running);
      }

      v32 += v33;
      --v30;
    }

    while (v30);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v60[0] = v34;
  v42 = sub_1004A5614();
  v44 = v43;

  v45 = sub_100117120();
  v47 = v46;
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_1004A6724(30);

  strcpy(v60, " commands: {");
  BYTE5(v60[1]) = 0;
  HIWORD(v60[1]) = -5120;
  sub_1004A5994(v56);

  v61._countAndFlagsBits = 0x6F69746361202C7DLL;
  v61._object = 0xED00007B203A736ELL;
  sub_1004A5994(v61);
  v62._countAndFlagsBits = v42;
  v62._object = v44;
  sub_1004A5994(v62);

  v63._countAndFlagsBits = 125;
  v63._object = 0xE100000000000000;
  sub_1004A5994(v63);
  v48 = v60[0];
  v49 = v60[1];
  v60[0] = v45;
  v60[1] = v47;

  v64._countAndFlagsBits = v48;
  v64._object = v49;
  sub_1004A5994(v64);

  return v60[0];
}

void sub_1001178C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RunningTask(0);
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + *(v9 + 40));
  if (v19 <= a1)
  {
LABEL_6:
    v20 = a1 - v19;
    if (!__OFSUB__(a1, v19))
    {
      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v19, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = a1 - v19;
  if (__OFSUB__(0, v19 - a1))
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v21 = v20 / 1000000000.0;
  if (v21 > 9.0)
  {
    v55 = v2;
    v56 = v18;
    v54 = v16;
    v22 = *(v2 + 48);
    v23 = *(v22 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      v50 = a2;
      v51 = v9;
      v52 = v14;
      v53 = v11;
      v57 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v23, 0);
      v24 = v57;
      v25 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v26 = *(v6 + 72);
      do
      {
        sub_100120E14(v25, v8, type metadata accessor for TaskHistory.Running);
        v27 = sub_1001693F4();
        v29 = v28;
        sub_100120EB0(v8, type metadata accessor for TaskHistory.Running);
        v57 = v24;
        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          sub_100091A08((v30 > 1), v31 + 1, 1);
          v24 = v57;
        }

        v24[2] = v31 + 1;
        v32 = &v24[2 * v31];
        v32[4] = v27;
        v32[5] = v29;
        v25 += v26;
        --v23;
      }

      while (v23);
      v14 = v52;
      v11 = v53;
      a2 = v50;
      v9 = v51;
    }

    v57 = v24;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v33 = sub_1004A5614();
    v35 = v34;

    v36 = v56;
    sub_100120E14(a2, v56, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v37 = v55;
    sub_100120E14(v55, v14, type metadata accessor for RunningTask);
    sub_100120E14(v37, v11, type metadata accessor for RunningTask);

    v38 = sub_1004A4A54();
    v39 = sub_1004A6014();

    if (os_log_type_enabled(v38, v39))
    {
      v55 = v33;
      v40 = v36;
      v41 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v41 = 68158978;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = *(v40 + *(v54 + 20));
      sub_100120EB0(v40, type metadata accessor for State.Logger);
      *(v41 + 10) = v42;
      *(v41 + 11) = 2082;
      v43 = &v14[*(v9 + 28)];
      v44 = &v43[*(type metadata accessor for Task.Logger(0) + 20)];
      v45 = *(v44 + 1);
      v46 = *(v44 + 2);

      sub_100120EB0(v14, type metadata accessor for RunningTask);
      v47 = sub_10015BA6C(v45, v46, &v57);

      *(v41 + 13) = v47;
      *(v41 + 21) = 2048;
      if (*&v21 >> 52 <= 0x7FEuLL)
      {
        if (v21 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            *(v41 + 23) = v21;
            *(v41 + 31) = 2048;
            v48 = *(*(v11 + 6) + 16);
            sub_100120EB0(v11, type metadata accessor for RunningTask);
            *(v41 + 33) = v48;
            *(v41 + 41) = 2082;
            v49 = sub_10015BA6C(v55, v35, &v57);

            *(v41 + 43) = v49;
            _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx] Task %{public}s has been running for %ld s. Still running %ld: %{public}s", v41, 0x33u);
            swift_arrayDestroy();

            return;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_100120EB0(v11, type metadata accessor for RunningTask);
    sub_100120EB0(v36, type metadata accessor for State.Logger);

    sub_100120EB0(v14, type metadata accessor for RunningTask);
  }
}

void sub_100117EA8(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v41 - v9;
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v14 - 8);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v17 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
      {
        sub_100117890(v2, v46);
        if (v47)
        {
          sub_10011D8CC(v46);
        }

        else
        {
          sub_1000B364C(v46, &v48);
          v22 = *(v2 + 48);
          v23 = *(v2 + 56);
          v24 = v49;
          v25 = v50;
          sub_100025928(&v48, v49);
          (*(v25 + 64))(v17, v22, v23, v24, v25);
          sub_10011D8CC(v2);
          sub_1000B364C(&v48, v2);
          *(v2 + 45) = 0;
        }

        v26 = type metadata accessor for RunningTask(0);
        v27 = sub_100120E14(v2 + *(v26 + 28), v13, type metadata accessor for Task.Logger);
        __chkstk_darwin(v27);
        v41[-2] = v17;
        v41[-1] = v13;
        sub_100118CA4(a1, sub_100120D8C);
        v21 = v13;
      }

      else
      {
        v20 = type metadata accessor for RunningTask(0);
        sub_100120E14(v2 + *(v20 + 28), v7, type metadata accessor for Task.Logger);
        sub_100119718(v7, v17, a1, a2);
        v21 = v7;
      }

      sub_100120EB0(v21, type metadata accessor for Task.Logger);
    }
  }

  else
  {
    v18 = *(a1 + 24);
    if (((1 << (v18 >> 60)) & 0x1E7) == 0)
    {
      v51 = *(a1 + 40);
      if (v18 >> 60 == 3)
      {
        v19 = swift_projectBox();
        sub_100120E14(v19, v16, type metadata accessor for UntaggedResponse);
        sub_100117890(v2, v46);
        if (v47)
        {

          sub_1000CB7C8(v18);
          sub_10011D8CC(v46);
        }

        else
        {
          sub_1000B364C(v46, &v48);
          v34 = *(v2 + 48);
          v44 = *(v2 + 56);
          v45 = v34;
          v35 = v50;
          v43 = v49;
          v36 = sub_100025928(&v48, v49);
          v37 = *(v35 + 56);
          v41[1] = v36;
          v41[2] = v35 + 56;
          v42 = v37;

          sub_1000CB7C8(v18);
          v38 = v45;
          v45 = v2;
          v42(v16, v38, v44, v43, v35);
          v2 = v45;
          sub_10011D8CC(v45);
          sub_1000B364C(&v48, v2);
          *(v2 + 45) = 0;
        }

        v39 = type metadata accessor for RunningTask(0);
        v40 = sub_100120E14(v2 + *(v39 + 28), v13, type metadata accessor for Task.Logger);
        __chkstk_darwin(v40);
        v41[-4] = a2;
        v41[-3] = v16;
        v41[-2] = v13;
        sub_100118CA4(a1, sub_100120E7C);

        sub_100120EB0(v13, type metadata accessor for Task.Logger);
        v32 = type metadata accessor for UntaggedResponse;
        v33 = v16;
      }

      else
      {
        v28 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v30 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v44 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v45 = v28;
        v43 = v30;
        LODWORD(v42) = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v31 = type metadata accessor for RunningTask(0);
        sub_100120E14(v2 + *(v31 + 28), v10, type metadata accessor for Task.Logger);

        sub_1000CB7C8(v18);
        sub_100118ED8(v10, v45, v29, v44, v43, v42, a1, a2);

        v32 = type metadata accessor for Task.Logger;
        v33 = v10;
      }

      sub_100120EB0(v33, v32);
      sub_1000CB848(v18);
    }
  }
}

void *sub_100118410(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 0x100000000) == 0)
  {
    v9 = a4;
    v12 = result[3];
    v13 = result[4];
    v14 = result;
    v18[8] = a5;
    sub_10002587C(result, v12);
    (*(v13 + 32))(&v19, v12, v13);
    v15 = v20;
    v16 = v21;
    v22 = v19;
    v17 = sub_1000D69D0(&v22);
    __chkstk_darwin(v17);
    v18[2] = v14;
    v18[3] = a6;
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = a7;
    sub_100118534(v9, v15, v16, sub_100120F10, v18);
  }

  return result;
}

void sub_100118534(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, char *), uint64_t a5)
{
  v55 = a1;
  v11 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) == 1)
  {
    v14 = *(v5 + 168);
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = a5;
      v40 = a4;
      v41 = v6;
      v16 = 0;
      v17 = v14 + 32;
      v18 = a3 | (a3 << 32);
      v42 = (a2 + 32);
      do
      {
        v19 = (v17 + 176 * v16);
        v20 = *v19;
        v21 = v19[2];
        v45 = v19[1];
        v46 = v21;
        v44 = v20;
        v22 = v19[3];
        v23 = v19[4];
        v24 = v19[6];
        v49 = v19[5];
        v50 = v24;
        v47 = v22;
        v48 = v23;
        v25 = v19[7];
        v26 = v19[8];
        v27 = v19[10];
        v53 = v19[9];
        v54 = v27;
        v51 = v25;
        v52 = v26;
        v28 = v50;
        if (v50)
        {
          v29 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v30 = *(v28 + v29);
        }

        else
        {
          v30 = 0;
        }

        if ((DWORD2(v45) | (DWORD2(v45) << 32)) == v18)
        {
          v31 = *(v45 + 16);
          if (v31 == *(a2 + 16))
          {
            if (!v31 || v45 == a2)
            {
LABEL_15:
              if (v28 && v30 == v55)
              {
                v34 = v28 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v35 = _s13SelectedStateV7WrappedVMa(0);
                v36 = v38;
                sub_100120E14(v34 + *(v35 + 20), v38, type metadata accessor for MailboxSyncState);
                sub_10000E08C(&v44, &v43);

                v40(&v56, v36);
                sub_100120EB0(v36, type metadata accessor for MailboxSyncState);

                sub_10000E0E8(&v44);
                return;
              }
            }

            else
            {
              v32 = (v45 + 32);
              v33 = v42;
              while (*v32 == *v33)
              {
                ++v32;
                ++v33;
                if (!--v31)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }
}

void sub_1001187C8(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, char *), uint64_t a5)
{
  v55 = a1;
  v11 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) == 1)
  {
    v14 = *(v5 + 168);
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = a5;
      v40 = a4;
      v41 = v6;
      v16 = 0;
      v17 = v14 + 32;
      v18 = a3 | (a3 << 32);
      v42 = (a2 + 32);
      do
      {
        v19 = (v17 + 176 * v16);
        v20 = *v19;
        v21 = v19[2];
        v45 = v19[1];
        v46 = v21;
        v44 = v20;
        v22 = v19[3];
        v23 = v19[4];
        v24 = v19[6];
        v49 = v19[5];
        v50 = v24;
        v47 = v22;
        v48 = v23;
        v25 = v19[7];
        v26 = v19[8];
        v27 = v19[10];
        v53 = v19[9];
        v54 = v27;
        v51 = v25;
        v52 = v26;
        v28 = v50;
        if (v50)
        {
          v29 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v30 = *(v28 + v29);
        }

        else
        {
          v30 = 0;
        }

        if ((DWORD2(v45) | (DWORD2(v45) << 32)) == v18)
        {
          v31 = *(v45 + 16);
          if (v31 == *(a2 + 16))
          {
            if (!v31 || v45 == a2)
            {
LABEL_15:
              if (v28 && v30 == v55)
              {
                v34 = v28 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v35 = _s13SelectedStateV7WrappedVMa(0);
                v36 = v38;
                sub_100120E14(v34 + *(v35 + 20), v38, type metadata accessor for MailboxSyncState);
                sub_10000E08C(&v44, &v43);

                v40(&v56, v36);
                sub_100120EB0(v36, type metadata accessor for MailboxSyncState);

                sub_10000E0E8(&v44);
                return;
              }
            }

            else
            {
              v32 = (v45 + 32);
              v33 = v42;
              while (*v32 == *v33)
              {
                ++v32;
                ++v33;
                if (!--v31)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }
}

unint64_t sub_100118A5C(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, char *, uint64_t, uint64_t), uint64_t a5)
{
  if (!(result >> 62))
  {
    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = *(result + 40);
    sub_100117890(a2, v21);
    if (v24 == 1)
    {
      v26 = v16;
      v17 = v22;
      v18 = v23;
      sub_1000B364C(v21, v25);
      if ((v18 & 1) != 0 || v14 != v17)
      {
        return sub_1000197E0(v25);
      }

      v19 = *(a2 + 48);
      v20 = *(a2 + 56);
      sub_1000CB7C8(v15);

      if (sub_10016B808(v15, v19))
      {
        LOBYTE(v21[0]) = 0;
        sub_10011B15C(v25, v19, v20, v14, a3, a4, a5);
        sub_1000CB848(v15);

        if (v5)
        {
          return sub_1000197E0(v25);
        }

        sub_10011D8CC(a2);
        result = sub_1000B364C(v25, a2);
        *(a2 + 40) = v14;
        *(a2 + 44) = 256;
      }

      else
      {
        sub_1000197E0(v25);
        sub_1000CB848(v15);
      }

      return result;
    }

    return sub_10011D8CC(v21);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_100117890(a2, v21);
  if (v24 != 1)
  {
    return sub_10011D8CC(v21);
  }

  v10 = v22;
  v11 = v23;
  sub_1000B364C(v21, v25);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  LOBYTE(v21[0]) = v11;
  sub_10011B15C(v25, v12, v13, v10 | (v11 << 32), a3, a4, a5);
  if (v5)
  {
    return sub_1000197E0(v25);
  }

  sub_10011D8CC(a2);
  result = sub_1000B364C(v25, a2);
  *(a2 + 40) = v10;
  *(a2 + 44) = v11;
  *(a2 + 45) = 1;
  return result;
}

unint64_t sub_100118CA4(unint64_t result, void (*a2)(__int128 *, uint64_t, uint64_t, unint64_t))
{
  if (!(result >> 62))
  {
    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = *(result + 48);
    sub_100117890(v2, v16);
    if (v19 == 1)
    {
      v21 = v11;
      v12 = v17;
      v13 = v18;
      sub_1000B364C(v16, v20);
      if ((v13 & 1) != 0 || v9 != v12)
      {
        return sub_1000197E0(v20);
      }

      v14 = *(v2 + 48);
      v15 = *(v2 + 56);
      sub_1000CB7C8(v10);

      if (sub_10016B808(v10, v14))
      {
        LOBYTE(v16[0]) = 0;
        a2(v20, v14, v15, v9);
        sub_1000CB848(v10);

        if (v3)
        {
          return sub_1000197E0(v20);
        }

        sub_10011D8CC(v2);
        result = sub_1000B364C(v20, v2);
        *(v2 + 40) = v9;
        *(v2 + 44) = 256;
      }

      else
      {
        sub_1000197E0(v20);
        sub_1000CB848(v10);
      }

      return result;
    }

    return sub_10011D8CC(v16);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_100117890(v2, v16);
  if (v19 != 1)
  {
    return sub_10011D8CC(v16);
  }

  v5 = v17;
  v6 = v18;
  sub_1000B364C(v16, v20);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  LOBYTE(v16[0]) = v6;
  a2(v20, v7, v8, v5 | (v6 << 32));
  if (v3)
  {
    return sub_1000197E0(v20);
  }

  sub_10011D8CC(v2);
  result = sub_1000B364C(v20, v2);
  *(v2 + 40) = v5;
  *(v2 + 44) = v6;
  *(v2 + 45) = 1;
  return result;
}

uint64_t sub_100118ED8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8)
{
  v10 = v9;
  v11 = v8;
  v78 = a7;
  v79 = a8;
  LODWORD(v87) = a6;
  v80 = a4;
  v81 = a5;
  v15 = sub_10000C9C0(&qword_1005D0F48, &qword_1004D6058);
  __chkstk_darwin(v15 - 8);
  v17 = (&v73 - v16);
  v18 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v73 - v22;
  __chkstk_darwin(v23);
  v25 = &v73 - v24;
  sub_100169680(a2, v17);
  v26 = sub_10000C9C0(&qword_1005D0F50, &qword_1004D6060);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
  {
    return sub_100025F40(v17, &qword_1005D0F48, &qword_1004D6058);
  }

  v76 = v20;
  v28 = *v17;
  sub_100120D24(v17 + *(v26 + 48), v25, type metadata accessor for ClientCommand);
  sub_100117890(v11, v82);
  if (v83)
  {
    v29 = sub_10011D8CC(v82);
    goto LABEL_5;
  }

  v74 = a2;
  sub_1000B364C(v82, &v84);
  v54 = v85;
  v53 = v86;
  sub_100025928(&v84, v85);
  v55 = *(v53 + 72);
  v75 = v25;
  v55(v28, v25, a3, v80, v81, v87, a1, v54, v53);
  v10 = v9;
  if (!v9)
  {
    sub_10011D8CC(v11);
    v29 = sub_1000B364C(&v84, v11);
    *(v11 + 45) = 0;
    a2 = v74;
    v25 = v75;
LABEL_5:
    __chkstk_darwin(v29);
    *(&v73 - 16) = v28;
    *(&v73 - 7) = v25;
    *(&v73 - 6) = a3;
    v30 = v81;
    *(&v73 - 5) = v80;
    *(&v73 - 4) = v30;
    *(&v73 - 24) = v87;
    v72 = a1;
    sub_100118A5C(v78, v11, v79, sub_100120FA0, (&v73 - 10));
    if (!v10)
    {
      LODWORD(v80) = v28;
      v74 = a2;
      v87 = 0;
      v31 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v32 = *(v31 + 8);
      v81 = *v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v35 = *(v31 + 32);
      v36 = *(v31 + 40);
      if (v33 < 0)
      {

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v75 = v25;
        v56 = v76;
        sub_100120E14(v25, v76, type metadata accessor for ClientCommand);
        v57 = sub_1004A4A54();
        v58 = sub_1004A5FF4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          LODWORD(v77) = v36;
          v60 = v32;
          v61 = v59;
          v79 = swift_slowAlloc();
          *&v84 = v79;
          *v61 = 68160003;
          LODWORD(v78) = v58;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          *(v61 + 10) = v81;
          *(v61 + 11) = 2082;
          *(v61 + 13) = sub_10015BA6C(v60, v34, &v84);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          *(v61 + 29) = v33;

          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          *&v82[0] = v35;
          DWORD2(v82[0]) = v77;

          v62 = sub_1004A5824();
          v64 = sub_10015BA6C(v62, v63, &v84);

          *(v61 + 43) = v64;
          *(v61 + 51) = 2082;
          v65 = ClientCommand.logIdentifier.getter();
          v67 = v66;
          sub_100120EB0(v56, type metadata accessor for ClientCommand);
          v68 = sub_10015BA6C(v65, v67, &v84);

          *(v61 + 53) = v68;
          *(v61 + 61) = 2082;
          v69 = Tag.debugDescription.getter(v74 & 0xFFFFFFFF000000FFLL);
          v71 = sub_10015BA6C(v69, v70, &v84);

          *(v61 + 63) = v71;
          *(v61 + 71) = 1024;
          *(v61 + 73) = v80;
          _os_log_impl(&_mh_execute_header, v57, v78, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed '%{public}s' (%{public}s, #%u)", v61, 0x4Du);
          swift_arrayDestroy();
        }

        else
        {

          sub_100120EB0(v56, type metadata accessor for ClientCommand);
        }

        v25 = v75;
      }

      else
      {
        v37 = v32;

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v38 = v77;
        sub_100120E14(v25, v77, type metadata accessor for ClientCommand);
        v39 = sub_1004A4A54();
        v40 = sub_1004A5FF4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          LODWORD(v78) = v40;
          v42 = v35;
          v43 = v38;
          v44 = v41;
          v79 = swift_slowAlloc();
          *&v82[0] = v79;
          *v44 = 68158978;
          *(v44 + 4) = 2;
          *(v44 + 8) = 256;
          v45 = v81;
          *(v44 + 10) = v81;
          sub_100011284(v45, v37, v34, v33, v42);
          *(v44 + 11) = 2082;
          *(v44 + 13) = sub_10015BA6C(v37, v34, v82);
          *(v44 + 21) = 2082;
          v46 = ClientCommand.logIdentifier.getter();
          v48 = v47;
          sub_100120EB0(v43, type metadata accessor for ClientCommand);
          v49 = sub_10015BA6C(v46, v48, v82);

          *(v44 + 23) = v49;
          *(v44 + 31) = 2082;
          v50 = Tag.debugDescription.getter(v74 & 0xFFFFFFFF000000FFLL);
          v52 = sub_10015BA6C(v50, v51, v82);

          *(v44 + 33) = v52;
          *(v44 + 41) = 1024;
          *(v44 + 43) = v80;
          _os_log_impl(&_mh_execute_header, v39, v78, "[%.*hhx-%{public}s] Completed '%{public}s' (%{public}s, #%u)", v44, 0x2Fu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100011284(v81, v37, v34, v33, v35);

          sub_100120EB0(v38, type metadata accessor for ClientCommand);
        }
      }
    }

    return sub_100120EB0(v25, type metadata accessor for ClientCommand);
  }

  sub_1000197E0(&v84);
  v25 = v75;
  return sub_100120EB0(v25, type metadata accessor for ClientCommand);
}

uint64_t sub_100119718(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  sub_100169A68(a2);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v13 = v10;
    v14 = v11;
    sub_100117890(v4, v66);
    if (v67)
    {
      v15 = sub_10011D8CC(v66);
    }

    else
    {
      v71 = a1;
      sub_1000B364C(v66, &v68);
      v16 = v14;
      v17 = v13;
      v19 = v69;
      v18 = v70;
      sub_100025928(&v68, v69);
      (*(v18 + 80))(v17, v16, v19, v18);
      v6 = v5;
      if (v5)
      {
        sub_1000739C8(v17, v16);
        sub_1000197E0(&v68);
        return v12 & 1;
      }

      sub_10011D8CC(v4);
      v15 = sub_1000B364C(&v68, v4);
      *(v4 + 45) = 0;
      v13 = v17;
      v14 = v16;
      a1 = v71;
    }

    __chkstk_darwin(v15);
    v59[4] = v13;
    v60 = v14;
    v61 = a1;
    sub_100118A5C(a3, v4, a4, sub_1001210A0, v59);
    if (v6)
    {
      sub_1000739C8(v13, v14);
      return v12 & 1;
    }

    v71 = 0;
    v20 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    if (v24 < 0)
    {
      v63 = *v20;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v14);
      v43 = sub_1004A4A54();
      v44 = sub_1004A5FF4();
      sub_1000739C8(v13, v14);
      LODWORD(v65) = v44;
      v45 = v44;
      v31 = v43;
      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        v64 = v26;
        v47 = v25;
        v48 = v46;
        v62 = swift_slowAlloc();
        *&v68 = v62;
        *v48 = 68159747;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        *(v48 + 10) = v63;
        *(v48 + 11) = 2082;

        v49 = v13;
        v50 = sub_10015BA6C(v21, v23, &v68);

        *(v48 + 13) = v50;
        *(v48 + 21) = 1040;
        *(v48 + 23) = 2;
        *(v48 + 27) = 512;

        *(v48 + 29) = v24;

        *(v48 + 31) = 2160;
        *(v48 + 33) = 0x786F626C69616DLL;
        *(v48 + 41) = 2085;

        *&v66[0] = v47;
        DWORD2(v66[0]) = v64;
        v51 = sub_1004A5824();
        v53 = sub_10015BA6C(v51, v52, &v68);

        *(v48 + 43) = v53;
        *(v48 + 51) = 2082;
        v54 = Action.kind.getter(v14);
        v55 = Action.Kind.description.getter(v54);
        v57 = sub_10015BA6C(v55, v56, &v68);

        *(v48 + 53) = v57;
        *(v48 + 61) = 1024;
        *(v48 + 63) = v49;
        _os_log_impl(&_mh_execute_header, v31, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed action '%{public}s' (#%u)", v48, 0x43u);
        swift_arrayDestroy();

        v42 = v49;
        goto LABEL_15;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_100018BD0(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32));
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v14);
      v27 = sub_1004A4A54();
      v65 = v24;
      v28 = v27;
      v29 = sub_1004A5FF4();
      sub_1000739C8(v13, v14);
      LODWORD(v63) = v29;
      v30 = v29;
      v31 = v28;
      if (os_log_type_enabled(v28, v30))
      {
        v32 = swift_slowAlloc();
        v64 = v26;
        v33 = v25;
        v34 = v32;
        *&v66[0] = swift_slowAlloc();
        *v34 = 68158722;
        *(v34 + 4) = 2;
        *(v34 + 8) = 256;
        *(v34 + 10) = v22;
        *(v34 + 11) = 2082;
        v35 = sub_10015BA6C(v21, v23, v66);
        v62 = v13;
        v36 = v35;
        sub_100011284(v22, v21, v23, v65, v33);
        *(v34 + 13) = v36;
        *(v34 + 21) = 2082;
        v37 = Action.kind.getter(v14);
        v38 = Action.Kind.description.getter(v37);
        v40 = sub_10015BA6C(v38, v39, v66);

        *(v34 + 23) = v40;
        *(v34 + 31) = 1024;
        v41 = v62;
        *(v34 + 33) = v62;
        _os_log_impl(&_mh_execute_header, v28, v63, "[%.*hhx-%{public}s] Completed action '%{public}s' (#%u)", v34, 0x25u);
        swift_arrayDestroy();

        v42 = v41;
LABEL_15:
        sub_1000739C8(v42, v14);

LABEL_19:
        v12 = 1;
        return v12 & 1;
      }

      sub_100011284(v22, v21, v23, v65, v25);
    }

    sub_1000739C8(v13, v14);
    goto LABEL_19;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_100119D34(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100117890(v4, &v40);
  if (v43 != 1)
  {
    return sub_10011D8CC(&v40);
  }

  sub_1000B364C(&v40, v44);
  v13 = v45;
  v14 = v46;
  sub_10002587C(v44, v45);
  (*(v14 + 32))(&v47, v13, v14);
  v51 = v48;
  v52 = v49;
  v50 = v47;
  sub_1000D69D0(&v50);
  if ((v52 | (v52 << 32)) == (a2 | (a2 << 32)))
  {
    v15 = sub_1000FFC98(v51, a1);
    sub_10009DA94(&v51);
    if (v15)
    {
      sub_100120E14(a4, v12, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_100104D00(v44, &v40);

      v16 = sub_1004A4A54();
      v17 = sub_1004A5FF4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v18 = 68158723;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        v19 = v12[*(v10 + 20)];
        sub_100120EB0(v12, type metadata accessor for State.Logger);
        *(v18 + 10) = v19;
        *(v18 + 11) = 2160;
        *(v18 + 13) = 0x786F626C69616DLL;
        *(v18 + 21) = 2085;
        v36 = a1;
        v37 = a2;

        v20 = sub_1004A5824();
        v22 = sub_10015BA6C(v20, v21, &v35);

        *(v18 + 23) = v22;
        *(v18 + 31) = 2082;
        v23 = v41;
        v24 = v42;
        sub_10002587C(&v40, v41);
        v25 = (*(v24 + 72))(v23, v24);
        v27 = v26;
        sub_1000197E0(&v40);
        v28 = sub_10015BA6C(v25, v27, &v35);

        *(v18 + 33) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx] [%{sensitive,mask.mailbox}s] Marking task '%{public}s' as failed because we de-selected its mailbox.", v18, 0x29u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100120EB0(v12, type metadata accessor for State.Logger);

        sub_1000197E0(&v40);
      }

      sub_100117890(v5, &v40);
      if (v43)
      {
        if (v43 == 1)
        {
          sub_1000B364C(&v40, &v36);
          v30 = v38;
          v31 = v39;
          sub_10002587C(&v36, v38);
          v32 = type metadata accessor for RunningTask(0);
          (*(v31 + 136))(a3, v5 + *(v32 + 28), v30, v31);
          sub_10011D8CC(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          sub_1000197E0(&v36);
        }
      }

      else
      {
        sub_10011D8CC(v5);
        *v5 = 1;
        *(v5 + 8) = 0u;
        *(v5 + 24) = 0u;
        *(v5 + 37) = 0;
        *(v5 + 45) = 2;
        sub_10011D8CC(&v40);
      }
    }
  }

  else
  {
    sub_10009DA94(&v51);
  }

  return sub_1000197E0(v44);
}

uint64_t sub_10011A1BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  sub_100117890(v4, v78);
  if (!v81)
  {
    sub_1000B364C(v78, v75);
    v10 = *(type metadata accessor for RunningTask(0) + 44);
    v11 = *(v4 + v10);
    *(v4 + v10) = v11 + 1;
    v12 = *(v4 + 48);
    v13 = *(v5 + 56);
    v14 = v76;
    v15 = v77;
    sub_100025928(v75, v76);
    v16 = (*(v15 + 48))(v11 & 0xFFFFFF, v12, v13, v14, v15);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_10011D8CC(v5);
      sub_100104D00(v75, v5);
      *(v5 + 45) = 0;
      sub_1000197E0(v75);
      return 1;
    }

    v25 = v16;
    v74 = v11;
    v73 = a3();
    v26 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    v31 = *(v26 + 32);
    v32 = *(v26 + 40);
    if (v30 < 0)
    {
      v71 = *(v26 + 8);
      LODWORD(v72) = v32;
      swift_bridgeObjectRetain_n();
      v49 = v31;
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v25);
      v50 = sub_1004A4A54();
      v51 = sub_1004A5FF4();
      sub_1001207D4(v25);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v52 = 68159747;
        v69 = v50;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        *(v52 + 10) = v28;
        *(v52 + 11) = 2082;

        v53 = sub_10015BA6C(v71, v29, v85);
        LODWORD(v71) = v51;
        v54 = v53;

        *(v52 + 13) = v54;
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;

        *(v52 + 29) = v30;

        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;

        *&v82 = v49;
        DWORD2(v82) = v72;
        v55 = sub_1004A5824();
        v57 = sub_10015BA6C(v55, v56, v85);

        *(v52 + 43) = v57;
        *(v52 + 51) = 2082;
        v58 = Action.kind.getter(v25);
        v59 = Action.Kind.description.getter(v58);
        v61 = sub_10015BA6C(v59, v60, v85);

        *(v52 + 53) = v61;
        *(v52 + 61) = 2080;
        v45 = v73;
        LODWORD(v82) = v73;
        sub_1000D40AC();
        v62 = sub_1004A5A84();
        v64 = sub_10015BA6C(v62, v63, v85);

        *(v52 + 63) = v64;
        _os_log_impl(&_mh_execute_header, v69, v71, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v52, 0x47u);
        swift_arrayDestroy();

        goto LABEL_20;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v33 = *v26;
      v34 = *(v26 + 8);
      v35 = *(v26 + 16);
      v36 = *(v26 + 24);
      v72 = *(v26 + 32);
      sub_100018BD0(v33, v34, v35, v36, v31);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v25);
      v37 = sub_1004A4A54();
      v38 = sub_1004A5FF4();
      sub_1001207D4(v25);
      if (os_log_type_enabled(v37, v38))
      {
        LODWORD(v70) = v38;
        v39 = swift_slowAlloc();
        *&v82 = swift_slowAlloc();
        *v39 = 68158722;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        *(v39 + 10) = v28;
        *(v39 + 11) = 2082;
        v69 = v37;
        v40 = sub_10015BA6C(v27, v29, &v82);
        sub_100011284(v28, v27, v29, v30, v72);
        *(v39 + 13) = v40;
        *(v39 + 21) = 2082;
        v41 = Action.kind.getter(v25);
        v42 = Action.Kind.description.getter(v41);
        v44 = sub_10015BA6C(v42, v43, &v82);

        *(v39 + 23) = v44;
        *(v39 + 31) = 2080;
        v45 = v73;
        LODWORD(v85[0]) = v73;
        sub_1000D40AC();
        v46 = sub_1004A5A84();
        v48 = sub_10015BA6C(v46, v47, &v82);

        *(v39 + 33) = v48;
        _os_log_impl(&_mh_execute_header, v69, v70, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v39, 0x29u);
        swift_arrayDestroy();

LABEL_20:
        sub_10011D8CC(v5);
        sub_100104D00(v75, v5);
        *(v5 + 45) = 0;
        sub_10016A138(v25, v45, v74 & 0xFFFFFF);
        sub_1001207D4(v25);
        sub_1000197E0(v75);
        return 0;
      }

      sub_100011284(v28, v27, v29, v30, v72);
    }

    v45 = v73;
    goto LABEL_20;
  }

  if (v81 != 1)
  {
    return 1;
  }

  if (v80 == 1)
  {
    sub_1000197E0(v78);
    return 2;
  }

  else
  {
    v17 = v79;
    sub_1000B364C(v78, v75);
    v18 = v76;
    v19 = v77;
    sub_10002587C(v75, v76);
    (*(v19 + 32))(&v82, v18, v19);
    v20 = v83;
    v21 = v84;
    *v85 = v82;
    v22 = sub_1000D69D0(v85);
    __chkstk_darwin(v22);
    v65[2] = v5;
    v65[3] = v75;
    v65[4] = a1;
    v66 = v17;
    v67 = a3;
    v68 = a4;
    sub_1001187C8(v17, v20, v21, sub_1001207AC, v65);
    LODWORD(v5) = v23;
    v24 = v23;

    if (v24 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v5;
    }

    sub_1000197E0(v75);
    return v5;
  }
}

uint64_t sub_10011A930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t (*a6)(uint64_t)@<X5>, char *a7@<X8>)
{
  v9 = *(type metadata accessor for RunningTask(0) + 44);
  v10 = *(a2 + v9);
  *(a2 + v9) = v10 + 1;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v14 = *(a3 + 24);
  v13 = *(a3 + 32);
  sub_100025928(a3, v14);
  v15 = *(v13 + 88);

  v57 = v10;
  v16 = v15(v10 & 0xFFFFFF, v11, v12, a1, a4, v14, v13);

  if ((~v16 & 0xF000000000000007) != 0)
  {
    v52 = a2;
    v53 = a3;
    v59 = a6(v16);
    v19 = a4 + *(type metadata accessor for Task.Logger(0) + 20);
    v20 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    if (v22 < 0)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v16);
      v37 = sub_1004A4A54();
      v38 = sub_1004A5FF4();
      sub_1001207D4(v16);
      if (os_log_type_enabled(v37, v38))
      {
        log = v37;
        v39 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v39 = 68159747;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        *(v39 + 10) = v20;
        *(v39 + 11) = 2082;

        v40 = HIDWORD(v24);
        v41 = sub_10015BA6C(v21, v23, &v67);

        *(v39 + 13) = v41;
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;

        *(v39 + 29) = v22;

        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;

        HIDWORD(v63) = v40;
        v64 = v25;
        v42 = sub_1004A5824();
        v44 = sub_10015BA6C(v42, v43, &v67);

        *(v39 + 43) = v44;
        *(v39 + 51) = 2082;
        v45 = Action.kind.getter(v16);
        v46 = Action.Kind.description.getter(v45);
        v48 = sub_10015BA6C(v46, v47, &v67);

        *(v39 + 53) = v48;
        *(v39 + 61) = 2080;
        LODWORD(v63) = v59;
        sub_1000D40AC();
        v49 = sub_1004A5A84();
        v51 = sub_10015BA6C(v49, v50, &v67);

        *(v39 + 63) = v51;
        _os_log_impl(&_mh_execute_header, log, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v39, 0x47u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      sub_100018BD0(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32));
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10011D8FC(v16);
      v26 = sub_1004A4A54();
      v27 = sub_1004A5FF4();
      sub_1001207D4(v16);
      if (os_log_type_enabled(v26, v27))
      {
        v56 = v24;
        v28 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v28 = 68158722;
        *(v28 + 4) = 2;
        *(v28 + 8) = 256;
        *(v28 + 10) = v20;
        *(v28 + 11) = 2082;
        v29 = sub_10015BA6C(v21, v23, &v63);
        sub_100011284(v20, v21, v23, v22, v56);
        *(v28 + 13) = v29;
        *(v28 + 21) = 2082;
        v30 = Action.kind.getter(v16);
        v31 = Action.Kind.description.getter(v30);
        v33 = sub_10015BA6C(v31, v32, &v63);

        *(v28 + 23) = v33;
        *(v28 + 31) = 2080;
        LODWORD(v67) = v59;
        sub_1000D40AC();
        v34 = sub_1004A5A84();
        v36 = sub_10015BA6C(v34, v35, &v63);

        *(v28 + 33) = v36;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v28, 0x29u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100011284(v20, v21, v23, v22, v24);
      }
    }

    sub_100104D00(v53, &v63);
    v65 = a5;
    v66 = 256;
    sub_1001207E8(&v63, v52);
    sub_10016A138(v16, v59, v57 & 0xFFFFFF);
    result = sub_1001207D4(v16);
    v18 = 0;
  }

  else
  {
    sub_100104D00(a3, &v63);
    v65 = a5;
    v66 = 256;
    result = sub_1001207E8(&v63, a2);
    v18 = 1;
  }

  *a7 = v18;
  return result;
}

uint64_t sub_10011AF58()
{
  sub_100117890(v0, v9);
  if (v12)
  {
    if (v12 == 1)
    {
      v1 = v10;
      v2 = v11;
      sub_1000B364C(v9, v6);
      if ((v2 & 1) == 0)
      {
        v4 = v7;
        v5 = v8;
        sub_10002587C(v6, v7);
        (*(v5 + 32))(&v13, v4, v5);
        v14 = v13;
        sub_1000D69D0(&v14);
        sub_1000197E0(v6);
        return v1;
      }

      sub_1000197E0(v6);
    }
  }

  else
  {
    sub_10011D8CC(v9);
  }

  return 0;
}

uint64_t sub_10011B03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(a1, v6, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    result = sub_100120EB0(v6, type metadata accessor for TaskHistory.Running);
    v9 = 0;
  }

  else
  {
    v9 = *v6;
    v10 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    result = sub_100120EB0(v6 + *(v10 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v9;
  *(a2 + 4) = EnumCaseMultiPayload == 1;
  return result;
}

void sub_10011B15C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, char *, uint64_t, uint64_t), uint64_t a7)
{
  v67 = a7;
  v14 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100000000) == 0)
  {
    v44 = v16;
    v45 = a6;
    v46 = a3;
    v47 = a2;
    v48 = v7;
    v17 = a1[3];
    v18 = a1[4];
    sub_10002587C(a1, v17);
    (*(v18 + 32))(&v61, v17, v18);
    v65 = v62;
    v66 = v63;
    v64 = v61;
    sub_1000D69D0(&v64);
    if (*(a5 + 192) == 1)
    {
      v19 = *(a5 + 168);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = v19 + 32;
        do
        {
          v23 = (v22 + 176 * v21);
          v24 = *v23;
          v25 = v23[2];
          v51 = v23[1];
          v52 = v25;
          v50 = v24;
          v26 = v23[3];
          v27 = v23[4];
          v28 = v23[6];
          v55 = v23[5];
          v56 = v28;
          v53 = v26;
          v54 = v27;
          v29 = v23[7];
          v30 = v23[8];
          v31 = v23[10];
          v59 = v23[9];
          v60 = v31;
          v57 = v29;
          v58 = v30;
          v32 = v56;
          if (v56)
          {
            v33 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            v34 = *(v32 + v33);
          }

          else
          {
            v34 = 0;
          }

          if ((DWORD2(v51) | (DWORD2(v51) << 32)) == (v66 | (v66 << 32)))
          {
            v35 = *(v51 + 16);
            if (v35 == *(v65 + 16))
            {
              if (!v35 || v51 == v65)
              {
LABEL_16:
                if (v32 && v34 == a4)
                {
                  v38 = v32 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                  swift_beginAccess();
                  v39 = _s13SelectedStateV7WrappedVMa(0);
                  v40 = v44;
                  sub_100120E14(v38 + *(v39 + 20), v44, type metadata accessor for MailboxSyncState);
                  v41 = v47;

                  v42 = v46;

                  sub_10000E08C(&v50, &v49);

                  v45(a1, v40, v41, v42);
                  sub_100120EB0(v40, type metadata accessor for MailboxSyncState);

                  sub_10000E0E8(&v50);

                  sub_10009DA94(&v65);
                  return;
                }
              }

              else
              {
                v36 = (v51 + 32);
                v37 = (v65 + 32);
                while (*v36 == *v37)
                {
                  ++v36;
                  ++v37;
                  if (!--v35)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }

          ++v21;
        }

        while (v21 != v20);
      }
    }

    sub_10009DA94(&v65);
    sub_10012104C();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_10011B49C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskHistory.Running(0);
  v66 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RunningTask(0);
  __chkstk_darwin(v7);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v64[-v11];
  v71 = sub_1004A4904();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v14 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v69 = &v64[-v16];
  __chkstk_darwin(v17);
  v68 = &v64[-v18];
  v73 = sub_1004A4944();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v67 = &v64[-v22];
  v23 = *tracingLog.unsafeMutableAddressor();
  v24 = sub_1004A6354();

  if (v24)
  {
    sub_100117890(v2, &v77);
    v25 = v2;
    if (v80 == 1)
    {
      sub_1000B364C(&v77, v81);
      v26 = tracingSignposter.unsafeMutableAddressor();
      (*(v72 + 16))(v67, v26, v73);
      v27 = *(v2 + *(v7 + 32));
      v28 = v68;
      sub_1004A4914();
      sub_100120E14(v2, v12, type metadata accessor for RunningTask);
      sub_100104D00(v81, &v77);
      v29 = sub_1004A4934();
      v30 = sub_1004A6144();
      if (sub_1004A6354())
      {
        v31 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v31 = 136315651;
        *&v82 = *(v12 + 8);
        sub_10000C9C0(&qword_1005D0F10, &qword_1004D6010);
        v32 = sub_1004A5804();
        v65 = v30;
        v33 = v25;
        v35 = v34;
        sub_100120EB0(v12, type metadata accessor for RunningTask);
        v36 = sub_10015BA6C(v32, v35, &v76);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2160;
        *(v31 + 14) = 0x786F626C69616DLL;
        *(v31 + 22) = 2085;
        v37 = v78;
        v38 = v79;
        sub_10002587C(&v77, v78);
        v39 = *(v38 + 32);
        v40 = v38;
        v25 = v33;
        v39(&v82, v37, v40);
        v85 = v82;
        sub_1000D69D0(&v85);
        v74 = v83;
        v75 = v84;
        v41 = sub_1004A5824();
        v43 = v42;
        sub_1000197E0(&v77);
        v44 = sub_10015BA6C(v41, v43, &v76);

        *(v31 + 24) = v44;
        v45 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v65, v45, "BehaviorTask", "M %s,%{sensitive,mask.mailbox}s", v31, 0x20u);
        swift_arrayDestroy();
        v28 = v68;
      }

      else
      {

        sub_100120EB0(v12, type metadata accessor for RunningTask);
        sub_1000197E0(&v77);
      }

      v56 = v71;
      v57 = v70;
      (*(v70 + 16))(v69, v28, v71);
      sub_1004A4A34();
      swift_allocObject();
      sub_1004A4A24();

      (*(v57 + 8))(v28, v56);
      (*(v72 + 8))(v67, v73);
      sub_1000197E0(v81);
    }

    else
    {
      sub_10011D8CC(&v77);
      v46 = tracingSignposter.unsafeMutableAddressor();
      (*(v72 + 16))(v20, v46, v73);
      v27 = *(v2 + *(v7 + 32));
      sub_1004A4914();
      sub_100120E14(v2, v9, type metadata accessor for RunningTask);
      v47 = sub_1004A4934();
      v48 = sub_1004A6144();
      if (sub_1004A6354())
      {
        v49 = swift_slowAlloc();
        v65 = v48;
        v50 = v49;
        v67 = swift_slowAlloc();
        *&v77 = v67;
        *v50 = 136315138;
        v81[0] = *(v9 + 8);
        sub_10000C9C0(&qword_1005D0F10, &qword_1004D6010);
        v51 = sub_1004A5804();
        v68 = v25;
        v53 = v52;
        sub_100120EB0(v9, type metadata accessor for RunningTask);
        v54 = sub_10015BA6C(v51, v53, &v77);
        v25 = v68;

        *(v50 + 4) = v54;
        v55 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v65, v55, "BehaviorTask", "A %s", v50, 0xCu);
        sub_1000197E0(v67);
      }

      else
      {

        sub_100120EB0(v9, type metadata accessor for RunningTask);
      }

      v58 = v70;
      v59 = v71;
      (*(v70 + 16))(v69, v14, v71);
      sub_1004A4A34();
      swift_allocObject();
      sub_1004A4A24();

      (*(v58 + 8))(v14, v59);
      (*(v72 + 8))(v20, v73);
    }

    v60 = *(v25 + 6);
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = v60 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v63 = *(v66 + 72);
      do
      {
        sub_100120E14(v62, v6, type metadata accessor for TaskHistory.Running);
        sub_10011BDFC(a1, v27);
        sub_100120EB0(v6, type metadata accessor for TaskHistory.Running);
        v62 += v63;
        --v61;
      }

      while (v61);
    }
  }
}

uint64_t sub_10011BDFC(uint64_t a1, int a2)
{
  LODWORD(v80) = a2;
  v79 = a1;
  v3 = sub_1004A4904();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v72 - v7;
  __chkstk_darwin(v8);
  v75 = &v72 - v9;
  v10 = sub_1004A4944();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v72 - v15;
  v17 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v17 - 8);
  v76 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  v25 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v25);
  v27 = (&v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(v2, v27, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = *v27;
  v29 = v27[1];
  if (EnumCaseMultiPayload == 1)
  {
    v31 = v27[1];
    v32 = *(v27 + 1);
    v33 = tracingSignposter.unsafeMutableAddressor();
    v77 = v11;
    (*(v11 + 16))(v13, v33, v10);
    sub_1004A4914();
    sub_10011D8FC(v32);
    sub_10011D8FC(v32);
    v34 = sub_1004A4934();
    v35 = sub_1004A6144();
    v36 = v5;
    if (sub_1004A6354())
    {
      v37 = v30;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78 = v10;
      v40 = v39;
      v84 = v39;
      *v38 = 67109890;
      *(v38 + 4) = v37;
      *(v38 + 8) = 2080;
      v41 = Action.kind.getter(v32);
      v42 = Action.Kind.description.getter(v41);
      v44 = sub_10015BA6C(v42, v43, &v84);

      *(v38 + 10) = v44;
      *(v38 + 18) = 1024;
      *(v38 + 20) = v31;
      *(v38 + 24) = 1024;
      v45 = dword_1004D623C[(v32 >> 58) & 0x3C | (v32 >> 1) & 3];
      sub_100020EDC(v32);
      *(v38 + 26) = v45;
      sub_100020EDC(v32);
      v46 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v46, "BehaviorAction", "ID: %u name: %s %u %u", v38, 0x1Eu);
      sub_1000197E0(v40);
      v10 = v78;
    }

    else
    {
      sub_100020EDC(v32);
      sub_100020EDC(v32);
    }

    v67 = v82;
    v68 = v83;
    (*(v82 + 16))(v81, v36, v83);
    sub_1004A4A34();
    swift_allocObject();
    sub_1004A4A24();

    sub_100020EDC(v32);
    (*(v67 + 8))(v36, v68);
    return (*(v77 + 8))(v13, v10);
  }

  else
  {
    v74 = *v27;
    v73 = v27[2];
    v47 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_100120D24(v27 + *(v47 + 64), v24, type metadata accessor for ClientCommand);
    v48 = tracingSignposter.unsafeMutableAddressor();
    v49 = *(v11 + 16);
    v78 = v10;
    v49(v16, v48, v10);
    v50 = v75;
    sub_1004A4914();
    sub_100120E14(v24, v21, type metadata accessor for ClientCommand);
    v80 = v24;
    v51 = v24;
    v52 = v76;
    sub_100120E14(v51, v76, type metadata accessor for ClientCommand);
    v53 = sub_1004A4934();
    v54 = sub_1004A6144();
    v55 = v16;
    if (sub_1004A6354())
    {
      v56 = swift_slowAlloc();
      v77 = v11;
      v72 = v54;
      v57 = v56;
      v79 = swift_slowAlloc();
      v84 = v79;
      *v57 = 136447234;
      v58 = v74;
      v59 = Tag.debugDescription.getter(v74 | (v29 << 32));
      v61 = sub_10015BA6C(v59, v60, &v84);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = ClientCommand.logIdentifier.getter();
      v64 = v63;
      sub_100120EB0(v21, type metadata accessor for ClientCommand);
      v65 = sub_10015BA6C(v62, v64, &v84);

      *(v57 + 14) = v65;
      *(v57 + 22) = 1024;
      *(v57 + 24) = v73;
      *(v57 + 28) = 1024;
      *(v57 + 30) = v58;
      *(v57 + 34) = 1024;
      LODWORD(v65) = sub_10011D504() + 1;
      sub_100120EB0(v52, type metadata accessor for ClientCommand);
      *(v57 + 36) = v65;
      v66 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, v72, v66, "BehaviorCommand", "tag: %{public}s, name: %s %u %u %u", v57, 0x28u);
      swift_arrayDestroy();

      v11 = v77;
    }

    else
    {
      sub_100120EB0(v52, type metadata accessor for ClientCommand);

      sub_100120EB0(v21, type metadata accessor for ClientCommand);
    }

    v70 = v82;
    v71 = v83;
    (*(v82 + 16))(v81, v50, v83);
    sub_1004A4A34();
    swift_allocObject();
    sub_1004A4A24();

    (*(v70 + 8))(v50, v71);
    (*(v11 + 8))(v55, v78);
    return sub_100120EB0(v80, type metadata accessor for ClientCommand);
  }
}

void sub_10011C624(uint64_t a1)
{
  v2 = type metadata accessor for TaskHistory.Running(0);
  v59 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_1004A4954();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A4904();
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  __chkstk_darwin(v10);
  v61 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = &v51 - v14;
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_1004A4944();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *tracingLog.unsafeMutableAddressor();
  v23 = sub_1004A6354();

  if (v23)
  {
    v24 = tracingSignposter.unsafeMutableAddressor();
    v54 = v19;
    v55 = v18;
    v25 = *(v19 + 16);
    v52 = v21;
    v25(v21, v24, v18);
    v26 = *(v62 + *(type metadata accessor for RunningTask(0) + 32));
    v53 = a1;
    sub_1004A4914();
    v28 = v63;
    v27 = v64;
    (*(v64 + 16))(v60, v17, v63);
    sub_1004A4A34();
    swift_allocObject();
    sub_1004A4A24();
    v29 = *(v27 + 8);
    v64 = v27 + 8;
    v29(v17, v28);
    v30 = v29;
    v31 = v52;
    v32 = sub_1004A4934();
    v33 = v61;
    sub_1004A4A14();
    LODWORD(v60) = sub_1004A6134();
    v34 = sub_1004A6354();
    v35 = v63;
    if (v34)
    {
      v51 = v30;

      v36 = v56;
      sub_1004A4A44();

      v37 = v57;
      v38 = v58;
      if ((*(v57 + 88))(v36, v58) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 8))(v36, v38);
        v39 = "";
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = v61;
      v42 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v60, v42, "BehaviorTask", v39, v40, 2u);
      v33 = v41;

      v35 = v63;
      v30 = v51;
    }

    v30(v33, v35);
    (*(v54 + 8))(v31, v55);
    v43 = *(v62 + 48);
    v44 = *(v43 + 16);
    v45 = v53;
    if (v44)
    {
      v46 = v43 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v47 = *(v59 + 72);
      do
      {
        sub_100120E14(v46, v7, type metadata accessor for TaskHistory.Running);
        sub_100120E14(v7, v4, type metadata accessor for TaskHistory.Running);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v48 = *v4;
          sub_100020EDC(v4[1]);
        }

        else
        {
          v48 = *v4;
          v50 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
          sub_100120EB0(v4 + *(v50 + 64), type metadata accessor for ClientCommand);
        }

        sub_10011CC04(v45, v26, v48, EnumCaseMultiPayload == 1);
        sub_100120EB0(v7, type metadata accessor for TaskHistory.Running);
        v46 += v47;
        --v44;
      }

      while (v44);
    }
  }
}

uint64_t sub_10011CC04(uint64_t a1, int a2, unint64_t a3, int a4)
{
  LODWORD(v60) = a4;
  v61 = a3;
  v4 = sub_1004A4954();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v53 - v7;
  v8 = sub_1004A4904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v53 - v12;
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v19 = sub_1004A4944();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  v26 = tracingSignposter.unsafeMutableAddressor();
  v62 = v20;
  v27 = *(v20 + 16);
  v28 = (v9 + 16);
  v29 = (v9 + 8);
  if ((v60 & 1) == 0)
  {
    v60 = v19;
    v27(v25, v26, v19);
    sub_1004A4914();
    (*v28)(v15, v18, v8);
    sub_1004A4A34();
    swift_allocObject();
    sub_1004A4A24();
    v38 = *v29;
    (*v29)(v18, v8);
    v39 = sub_1004A4934();
    v40 = v56;
    sub_1004A4A14();
    v41 = sub_1004A6134();
    if (sub_1004A6354())
    {
      v61 = v8;

      v42 = v54;
      sub_1004A4A44();

      v44 = v58;
      v43 = v59;
      if ((*(v58 + 88))(v42, v59) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v42, v43);
        v45 = "";
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v41, v51, "BehaviorCommand", v45, v50, 2u);

      v46 = v40;
      v47 = v61;
    }

    else
    {

      v46 = v40;
      v47 = v8;
    }

    v38(v46, v47);
    goto LABEL_15;
  }

  v27(v22, v26, v19);
  sub_1004A4914();
  (*v28)(v15, v18, v8);
  sub_1004A4A34();
  swift_allocObject();
  sub_1004A4A24();
  v30 = *v29;
  (*v29)(v18, v8);
  v31 = sub_1004A4934();
  v32 = v57;
  sub_1004A4A14();
  v33 = sub_1004A6134();
  if (sub_1004A6354())
  {
    LODWORD(v56) = v33;
    v60 = v19;
    v61 = v22;

    v34 = v55;
    sub_1004A4A44();

    v36 = v58;
    v35 = v59;
    if ((*(v58 + 88))(v34, v59) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v37 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v34, v35);
      v37 = "";
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v56, v49, "BehaviorAction", v37, v48, 2u);

    v30(v32, v8);
    v25 = v61;
LABEL_15:
    v19 = v60;
    return (*(v62 + 8))(v25, v19);
  }

  v30(v32, v8);
  v25 = v22;
  return (*(v62 + 8))(v25, v19);
}

void sub_10011D274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *tracingLog.unsafeMutableAddressor();
  v11 = sub_1004A6354();

  if (v11)
  {
    v12 = *(v3 + 48);
    v13 = *(a2 + 48);
    v28 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    __chkstk_darwin(v15);
    v16 = sub_100120834();
    Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v13, KeyPath, sub_100120824, (&v28 - 4), sub_10012082C, (&v28 - 4), UInt32.init(_:), 0, v12, v16);

    v18 = v28;
    v17 = v29;
    v19 = v28[2];
    if (v19)
    {
      v20 = *(v3 + *(type metadata accessor for RunningTask(0) + 32));
      v21 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v22 = *(v7 + 72);
      do
      {
        sub_100120E14(v21, v9, type metadata accessor for TaskHistory.Running);
        sub_10011BDFC(a1, v20);
        sub_100120EB0(v9, type metadata accessor for TaskHistory.Running);
        v21 += v22;
        --v19;
      }

      while (v19);
    }

    v23 = v17[2];
    if (v23)
    {
      v24 = *(v3 + *(type metadata accessor for RunningTask(0) + 32));
      v25 = (v17 + 5);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v25 += 12;
        sub_10011CC04(a1, v24, v26, v27);
        --v23;
      }

      while (v23);
    }
  }
}

uint64_t sub_10011D504()
{
  v1 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100120E14(v0, v3, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 9:
      sub_100120EB0(v3, type metadata accessor for ClientCommand);
      goto LABEL_11;
    case 10:

      v9 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v10 = *(v9 + 64);
      sub_100014D40(*&v3[*(v9 + 80)], *&v3[*(v9 + 80) + 8]);
      v6 = &qword_1005D0F20;
      v7 = &qword_1004E9390;
      v8 = &v3[v10];
      goto LABEL_8;
    case 11:
    case 12:
    case 13:
    case 14:
      sub_100120EB0(v3, type metadata accessor for ClientCommand);
      goto LABEL_4;
    case 15:
      sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      return 4;
    case 16:
      sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      return 5;
    case 17:
    case 18:
      sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00);

      v6 = &unk_1005D91B0;
      v7 = &unk_1004CF400;
      v8 = v3;
LABEL_8:
      sub_100025F40(v8, v6, v7);
      result = 2;
      break;
    case 19:
LABEL_4:
      result = 3;
      break;
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
      return result;
    case 26:
    case 27:
    case 28:
LABEL_11:
      result = 1;
      break;
    default:
      sub_100120EB0(v3, type metadata accessor for ClientCommand);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_10011D7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100120E14(a1, v6, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v6;
    result = sub_100020EDC(v6[1]);
  }

  else
  {
    v8 = *v6;
    v10 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    result = sub_100120EB0(v6 + *(v10 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v8;
  *(a2 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

unint64_t sub_10011D8FC(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011DAB0(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v99 = a1;
  v97 = a7;
  v98 = a8;
  v95 = a5;
  v96 = a6;
  v88 = a4;
  v94 = a3;
  v8 = a2;
  v9 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  __chkstk_darwin(v9 - 8);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v85 - v12;
  v13 = type metadata accessor for ClientCommand(0);
  v90 = *(v13 - 8);
  v91 = v13;
  __chkstk_darwin(v13);
  v86 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &v85 - v16;
  __chkstk_darwin(v17);
  v89 = &v85 - v18;
  v19 = type metadata accessor for Command(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C9C0(&qword_1005D0F38, &qword_1004D6028);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v85 - v28;
  sub_10000E268(v99, &v85 - v28, &qword_1005D0F30, &qword_1004D6020);
  v30 = *(v24 + 56);
  v31 = v8;
  *&v29[v30] = v8;
  sub_10000E268(v29, v26, &qword_1005D0F38, &qword_1004D6028);
  if ((*(v20 + 48))(v26, 1, v19) == 1)
  {
    sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
    sub_100025F40(v26, &qword_1005D0F30, &qword_1004D6020);
    return 1;
  }

  else
  {
    sub_100120D24(v26, v22, type metadata accessor for Command);
    v33 = v100;
    v34 = sub_100159B5C(v22, v95, v96, v97, v98);
    if (v33)
    {
      sub_100120EB0(v22, type metadata accessor for Command);
      return sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
    }

    else if (v35)
    {
      v36 = v94 + *(type metadata accessor for RunningTask(0) + 36);
      if (*(v36 + 8))
      {
        v37 = static MonotonicTime.now()();
        sub_100120EB0(v22, type metadata accessor for Command);
        sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
        *v36 = v37;
        *(v36 + 8) = 0;
      }

      else
      {
        sub_100120EB0(v22, type metadata accessor for Command);
        sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
      }

      return 2;
    }

    else
    {
      v100 = v34;
      v38 = v92;
      sub_1000102DC(v92);
      if ((*(v90 + 48))(v38, 1, v91) == 1)
      {
        sub_100025F40(v38, &qword_1005D0F28, &qword_1004D6018);
      }

      else
      {
        v39 = v38;
        v40 = v89;
        sub_100120D24(v39, v89, type metadata accessor for ClientCommand);
        v41 = v88 + *(type metadata accessor for Task.Logger(0) + 20);
        v42 = *v41;
        v98 = *(v41 + 8);
        v43 = *(v41 + 16);
        v44 = *(v41 + 24);
        v45 = *(v41 + 32);
        LODWORD(v99) = *(v41 + 40);
        v96 = v42;
        v97 = v44;
        if (v44 < 0)
        {
          v65 = v43;

          v66 = v45;
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v67 = v86;
          sub_100120E14(v40, v86, type metadata accessor for ClientCommand);
          v68 = sub_1004A4A54();
          v69 = sub_1004A5FF4();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v95 = v29;
            v71 = v70;
            v92 = swift_slowAlloc();
            v103 = v92;
            *v71 = 68159747;
            LODWORD(v91) = v69;
            *(v71 + 4) = 2;
            *(v71 + 8) = 256;
            *(v71 + 10) = v96;
            *(v71 + 11) = 2082;
            *(v71 + 13) = sub_10015BA6C(v98, v65, &v103);
            *(v71 + 21) = 1040;
            *(v71 + 23) = 2;
            *(v71 + 27) = 512;
            *(v71 + 29) = v97;

            *(v71 + 31) = 2160;
            *(v71 + 33) = 0x786F626C69616DLL;
            *(v71 + 41) = 2085;
            v101 = v66;
            v102 = v99;

            v72 = sub_1004A5824();
            v74 = sub_10015BA6C(v72, v73, &v103);

            *(v71 + 43) = v74;
            *(v71 + 51) = 2082;
            v75 = ClientCommand.logIdentifier.getter();
            v76 = v67;
            v77 = v22;
            v79 = v78;
            sub_100120EB0(v76, type metadata accessor for ClientCommand);
            v80 = sub_10015BA6C(v75, v79, &v103);

            *(v71 + 53) = v80;
            *(v71 + 61) = 2082;
            v81 = Tag.debugDescription.getter(v100 & 0xFFFFFFFF000000FFLL);
            v83 = sub_10015BA6C(v81, v82, &v103);

            *(v71 + 63) = v83;
            v22 = v77;
            _os_log_impl(&_mh_execute_header, v68, v91, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v71, 0x47u);
            swift_arrayDestroy();

            v29 = v95;
          }

          else
          {

            sub_100120EB0(v67, type metadata accessor for ClientCommand);
          }

          sub_100120EB0(v89, type metadata accessor for ClientCommand);
        }

        else
        {
          v95 = v29;
          v46 = v43;

          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v47 = v87;
          sub_100120E14(v40, v87, type metadata accessor for ClientCommand);
          v48 = sub_1004A4A54();
          v49 = sub_1004A5FF4();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            LODWORD(v90) = v49;
            v51 = v47;
            v52 = v50;
            v91 = swift_slowAlloc();
            v92 = v22;
            v101 = v91;
            *v52 = 68158722;
            *(v52 + 4) = 2;
            *(v52 + 8) = 256;
            v53 = v96;
            v54 = v97;
            *(v52 + 10) = v96;
            v55 = v98;
            sub_100011284(v53, v98, v46, v54, v45);
            *(v52 + 11) = 2082;
            *(v52 + 13) = sub_10015BA6C(v55, v46, &v101);
            *(v52 + 21) = 2082;
            v56 = ClientCommand.logIdentifier.getter();
            v58 = v57;
            v99 = type metadata accessor for ClientCommand;
            sub_100120EB0(v51, type metadata accessor for ClientCommand);
            v59 = sub_10015BA6C(v56, v58, &v101);

            *(v52 + 23) = v59;
            *(v52 + 31) = 2082;
            v60 = Tag.debugDescription.getter(v100 & 0xFFFFFFFF000000FFLL);
            v62 = sub_10015BA6C(v60, v61, &v101);

            *(v52 + 33) = v62;
            _os_log_impl(&_mh_execute_header, v48, v90, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v52, 0x29u);
            swift_arrayDestroy();
            v22 = v92;

            v63 = v89;
            v64 = v99;
          }

          else
          {

            sub_100011284(v96, v98, v46, v97, v45);
            sub_100120EB0(v47, type metadata accessor for ClientCommand);
            v63 = v40;
            v64 = type metadata accessor for ClientCommand;
          }

          sub_100120EB0(v63, v64);
          v29 = v95;
        }
      }

      v84 = v93;
      sub_1000102DC(v93);
      sub_100169CC8(v84, v100, v31);
      sub_100025F40(v84, &qword_1005D0F28, &qword_1004D6018);
      sub_100120EB0(v22, type metadata accessor for Command);
      sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
      return 0;
    }
  }
}

unint64_t sub_10011E4EC(NSObject *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, void, void, void, void), uint64_t a5, char *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, __int128 a9, unsigned __int8 a10, uint64_t a11, unint64_t a12)
{
  v216 = a8;
  v215 = a7;
  v212 = a5;
  v213 = a6;
  v197 = a3;
  v218 = a2;
  v211 = a1;
  v13 = a12;
  LODWORD(v266) = a10;
  v14 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v14 - 8);
  v191 = &v184[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = type metadata accessor for Command(0);
  v16 = *(v209 - 8);
  __chkstk_darwin(v209);
  v18 = &v184[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v202 = &v184[-v20];
  v208 = type metadata accessor for ClientCommand(0);
  v21 = *(v208 - 8);
  __chkstk_darwin(v208);
  v192 = &v184[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v193 = &v184[-v24];
  __chkstk_darwin(v25);
  v196 = &v184[-v26];
  v27 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  __chkstk_darwin(v27 - 8);
  v189 = &v184[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v188 = &v184[-v30];
  __chkstk_darwin(v31);
  v194 = &v184[-v32];
  __chkstk_darwin(v33);
  v201 = &v184[-v34];
  __chkstk_darwin(v35);
  v200 = &v184[-v36];
  v37 = sub_10000C9C0(&qword_1005D0F30, &qword_1004D6020);
  __chkstk_darwin(v37 - 8);
  v187 = &v184[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v199 = &v184[-v40];
  v263 = a9;
  v41 = v212;
  v42 = v218;
  LOBYTE(v264) = v266;
  *(&v264 + 1) = a11;
  v265 = a12;
  v219 = a11;
  v43 = a4;

  sub_1000131FC(a12);
  v198 = v18;
  v190 = v18 + 8;
  v207 = (v21 + 48);
  v203 = (v16 + 56);
  v195 = (v21 + 56);
  v210 = a12;
  v266 = a4;
  while (1)
  {
    while (1)
    {
      v45 = swift_allocObject();
      v47 = v215;
      v46 = v216;
      *(v45 + 16) = v213;
      *(v45 + 24) = v47;
      *(v45 + 32) = v46;
      v48 = v264;
      *(v45 + 40) = v263;
      *(v45 + 56) = v48;
      *(v45 + 72) = v265;
      sub_100117890(v41, v237);
      v214 = v45;
      if (v240)
      {
        break;
      }

      sub_1000B364C(v237, &v223);
      v59 = *(type metadata accessor for RunningTask(0) + 48);
      v60 = *(v41 + v59);
      *(v41 + v59) = v60 + 1;
      v61 = *(v41 + 48);
      v204 = *(v41 + 56);
      v205 = v61;
      v62 = *(&v224 + 1);
      v63 = v225;
      sub_100025928(&v223, *(&v224 + 1));
      v64 = *(v63 + 40);

      sub_1000131FC(v13);

      sub_1000131FC(v13);

      sub_1000131FC(v13);
      v206 = v60;
      v65 = v200;
      v64(v60 & 0xFFFFFF, v205, v204, v62, v63);
      v66 = v201;
      sub_10000E268(v65, v201, &qword_1005D0F28, &qword_1004D6018);
      if ((*v207)(v66, 1, v208) == 1)
      {
        sub_100025F40(v65, &qword_1005D0F28, &qword_1004D6018);
        v67 = v199;
        (*v203)(v199, 1, 1, v209);
      }

      else
      {
        v68 = v196;
        sub_100120D24(v66, v196, type metadata accessor for ClientCommand);
        v67 = v199;
        sub_100120E14(v68, v199, type metadata accessor for ClientCommand);
        v69 = v209;
        swift_storeEnumTagMultiPayload();
        (*v203)(v67, 0, 1, v69);
        sub_100120EB0(v68, type metadata accessor for ClientCommand);
        sub_100025F40(v65, &qword_1005D0F28, &qword_1004D6018);
      }

      v70 = v217;
      v71 = v211;

      v13 = v210;
      sub_1000131FC(v210);
      v41 = v212;
      v72 = v70;
      v73 = sub_10011DAB0(v67, v206 & 0xFFFFFF, v212, v71, v213, v215, v216, &v263);

      sub_10001324C(v13);
      sub_100025F40(v67, &qword_1005D0F30, &qword_1004D6020);
      v43 = v266;
      v217 = v72;
      if (v72)
      {
        sub_1000197E0(&v223);

        goto LABEL_55;
      }

      if (v73 < 2u)
      {
        sub_10011D8CC(v41);
        sub_100104D00(&v223, v41);
        *(v41 + 45) = 0;
      }

      sub_1000197E0(&v223);

      sub_10001324C(v13);

      sub_10001324C(v13);
      v42 = v218;
      v44 = v73;
      if (v73)
      {
LABEL_48:
        v142 = v44 == 1;
        goto LABEL_51;
      }
    }

    if (v240 != 1)
    {

      sub_1000131FC(v13);

      v142 = 1;
LABEL_51:
      v57 = v211;
      goto LABEL_58;
    }

    v49 = v238;
    if (v239)
    {
      sub_1000B364C(v237, &v223);
      v50 = *(&v224 + 1);
      v51 = v225;
      sub_10002587C(&v223, *(&v224 + 1));
      v52 = *(v51 + 32);

      sub_1000131FC(v13);

      sub_1000131FC(v13);

      sub_1000131FC(v13);
      v52(&v241, v50, v51);
      v53 = v242;
      LODWORD(v51) = v243;
      v258 = v241;
      sub_1000D69D0(&v258);
      v54 = v202;
      *v202 = v49;
      v55 = 1;
      *(v54 + 4) = 1;
      *(v54 + 1) = v53;
      v54[4] = v51;
      swift_storeEnumTagMultiPayload();
      sub_100120E14(v54, v198, type metadata accessor for Command);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360);
        }

        v114 = v192;
        sub_100120D24(v198, v192, type metadata accessor for ClientCommand);
        v115 = v114;
        v58 = v194;
        sub_100120D24(v115, v194, type metadata accessor for ClientCommand);
        v55 = 0;
        v57 = v211;
        v41 = v212;
        v42 = v218;
        v43 = v266;
      }

      else
      {
        if ((EnumCaseMultiPayload - 2) < 2)
        {
          sub_100120EB0(v198, type metadata accessor for Command);
        }

        v57 = v211;
        v41 = v212;
        v42 = v218;
        v43 = v266;
        v58 = v194;
      }

      v116 = v55;
      v117 = v208;
      (*v195)(v58, v116, 1, v208);
      if ((*v207)(v58, 1, v117) == 1)
      {
        sub_100025F40(v58, &qword_1005D0F28, &qword_1004D6018);
      }

      else
      {
        v118 = v193;
        sub_100120D24(v58, v193, type metadata accessor for ClientCommand);
        v119 = *(v213 + 34);
        v120 = *(v213 + 70);
        v121 = v213[264];

        LOBYTE(v121) = sub_10012304C(v118, v121, v119, v120);

        sub_100120EB0(v118, type metadata accessor for ClientCommand);
        if ((v121 & 1) == 0)
        {
          sub_100120EB0(v202, type metadata accessor for Command);
          goto LABEL_80;
        }
      }

      v122 = v202;
      v123 = v217;
      v124 = v215(v202, &v263);
      v217 = v123;
      if (v123)
      {
        sub_100120EB0(v122, type metadata accessor for Command);
        sub_1000197E0(&v223);

LABEL_54:

        v13 = v210;
LABEL_55:
        sub_10001324C(v13);

        sub_10001324C(v13);
        goto LABEL_63;
      }

      v126 = v124;
      v127 = v125;
      sub_100120EB0(v122, type metadata accessor for Command);
      if ((v127 & 1) == 0)
      {
        sub_10011D8CC(v41);
        sub_100104D00(&v223, v41);
        *(v41 + 40) = v126;
        *(v41 + 44) = 256;
        v128 = *(v41 + *(type metadata accessor for RunningTask(0) + 52));
        v129 = *(&v224 + 1);
        v130 = v225;
        sub_10002587C(&v223, *(&v224 + 1));
        (*(v130 + 32))(&v250, v129, v130);
        v131 = v251;
        v132 = v252;
        v257 = v250;
        sub_1000D69D0(&v257);
        v133 = *(&v224 + 1);
        v134 = v225;
        sub_10002587C(&v223, *(&v224 + 1));
        v135 = (*(v134 + 48))(v133, v134);
        v128(v218, v131, v132, v135);
        v43 = v266;
        v42 = v218;

        v41 = v212;

        sub_1000197E0(&v223);

        v13 = v210;
        sub_10001324C(v210);

        sub_10001324C(v13);
        continue;
      }

      v13 = v210;
LABEL_80:
      sub_1000197E0(&v223);

      sub_10001324C(v13);

      sub_10001324C(v13);
      v142 = 0;
      goto LABEL_58;
    }

    sub_1000B364C(v237, v234);
    v74 = v235;
    v75 = v236;
    sub_10002587C(v234, v235);
    v76 = *(v75 + 32);

    sub_1000131FC(v13);

    sub_1000131FC(v13);

    sub_1000131FC(v13);
    v76(&v244, v74, v75);
    v261 = v245;
    v262 = v246;
    v260 = v244;
    sub_1000D69D0(&v260);
    if (*(v218 + 192) != 1)
    {
      v57 = v211;
      v41 = v212;
      v43 = v266;
      goto LABEL_57;
    }

    v77 = *(v218 + 168);
    v78 = *(v77 + 16);
    v57 = v211;
    v43 = v266;
    if (!v78)
    {
      break;
    }

    v79 = 0;
    v80 = v77 + 32;
    v41 = v212;
    v81 = v49;
    while (1)
    {
      v82 = (v80 + 176 * v79);
      v83 = *v82;
      v84 = v82[2];
      v224 = v82[1];
      v225 = v84;
      v223 = v83;
      v85 = v82[3];
      v86 = v82[4];
      v87 = v82[6];
      v228 = v82[5];
      v229 = v87;
      v226 = v85;
      v227 = v86;
      v88 = v82[7];
      v89 = v82[8];
      v90 = v82[10];
      v232 = v82[9];
      v233 = v90;
      v230 = v88;
      v231 = v89;
      v91 = v229;
      if (v229)
      {
        v92 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v81 = v49;
        v93 = *(v91 + v92);
        v43 = v266;
      }

      else
      {
        v93 = 0;
      }

      if ((DWORD2(v224) | (DWORD2(v224) << 32)) == (v262 | (v262 << 32)))
      {
        v94 = *(v224 + 16);
        if (v94 == *(v261 + 16))
        {
          if (v94 && v224 != v261)
          {
            v95 = (v224 + 32);
            v96 = (v261 + 32);
            while (*v95 == *v96)
            {
              ++v95;
              ++v96;
              if (!--v94)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_19;
          }

LABEL_30:
          if (v91 && v93 == v81)
          {
            break;
          }
        }
      }

LABEL_19:
      if (++v79 == v78)
      {
        goto LABEL_57;
      }
    }

    v97 = v91 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v98 = _s13SelectedStateV7WrappedVMa(0);
    sub_100120E14(v97 + *(v98 + 20), v191, type metadata accessor for MailboxSyncState);
    v99 = v235;
    v100 = v236;
    sub_10002587C(v234, v235);
    v101 = *(v100 + 32);
    sub_10000E08C(&v223, v220);

    v101(&v247, v99, v100);
    v205 = v248;
    v185 = v249;
    v259 = v247;
    sub_1000D69D0(&v259);
    v102 = *(type metadata accessor for RunningTask(0) + 48);
    LODWORD(v101) = *(v41 + v102);
    *(v41 + v102) = v101 + 1;
    v103 = *(v41 + 48);
    v104 = *(v41 + 56);
    v204 = v235;
    v105 = v236;
    sub_100025928(v234, v235);
    v186 = *(v105 + 80);

    v206 = v101;
    v106 = v101 & 0xFFFFFF;
    v107 = v188;
    v186(v106, v103, v104, v191, v211, v204, v105);

    v108 = v189;
    sub_10011FD38(v107, v189);
    if ((*v207)(v108, 1, v208) == 1)
    {

      v109 = 1;
      v110 = v217;
      v42 = v218;
      v111 = v209;
      v112 = v214;
      v113 = v187;
    }

    else
    {
      v136 = v196;
      sub_100120D24(v108, v196, type metadata accessor for ClientCommand);
      v137 = sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360);
      v113 = v187;
      v138 = v187 + *(v137 + 48);
      sub_100120D24(v136, v187, type metadata accessor for ClientCommand);
      *v138 = v49;
      v138[4] = 0;
      *(v138 + 1) = v205;
      *(v138 + 4) = v185;
      v111 = v209;
      swift_storeEnumTagMultiPayload();
      v109 = 0;
      v110 = v217;
      v42 = v218;
      v112 = v214;
    }

    (*v203)(v113, v109, 1, v111);
    v139 = v110;
    v140 = sub_10011FDA8(v113, v206 & 0xFFFFFF, sub_10011FD14, v112, v41, v211);
    v141 = v113;
    v43 = v266;
    v217 = v139;
    if (v139)
    {
      sub_100025F40(v141, &qword_1005D0F30, &qword_1004D6020);
      sub_100120EB0(v191, type metadata accessor for MailboxSyncState);

      sub_10000E0E8(&v223);
      sub_10009DA94(&v261);
      sub_1000197E0(v234);

      goto LABEL_54;
    }

    sub_100025F40(v141, &qword_1005D0F30, &qword_1004D6020);
    if (v140 < 2u)
    {
      sub_10011D8CC(v41);
      sub_100104D00(v234, v41);
      *(v41 + 40) = v49;
      *(v41 + 44) = 256;
    }

    sub_100120EB0(v191, type metadata accessor for MailboxSyncState);

    sub_10000E0E8(&v223);
    sub_10009DA94(&v261);
    sub_1000197E0(v234);

    v13 = v210;
    sub_10001324C(v210);

    sub_10001324C(v13);
    v44 = v140;
    if (v140)
    {
      goto LABEL_48;
    }
  }

  v41 = v212;
LABEL_57:
  sub_10009DA94(&v261);
  sub_1000197E0(v234);

  v13 = v210;
  sub_10001324C(v210);

  sub_10001324C(v13);
  v142 = 0;
  v42 = v218;
LABEL_58:
  v143 = v197;
  do
  {
    v144 = sub_10011A1BC(v57, v42, v143, v43);
  }

  while (!v144);
  if (v144 != 1 || !v142 || *(*(v41 + 48) + 16))
  {
LABEL_63:

    v145 = v13;
    return sub_10001324C(v145);
  }

  v147 = v57 + *(type metadata accessor for Task.Logger(0) + 20);
  v148 = *(v147 + 1);
  v216 = *v147;
  v266 = v148;
  v149 = *(v147 + 2);
  v150 = *(v147 + 3);
  v151 = *(v147 + 4);
  v152 = *(v147 + 10);
  if (v150 < 0)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v161 = sub_1004A4A54();
    LODWORD(v214) = sub_1004A6034();
    if (os_log_type_enabled(v161, v214))
    {
      v162 = swift_slowAlloc();
      v211 = v161;
      v163 = v162;
      v213 = swift_slowAlloc();
      v220[0] = v213;
      *v163 = 68159235;
      *(v163 + 4) = 2;
      *(v163 + 8) = 256;
      *(v163 + 10) = v216;
      *(v163 + 11) = 2082;

      v164 = sub_10015BA6C(v266, v149, v220);
      LODWORD(v215) = v152;
      v165 = v164;

      *(v163 + 13) = v165;
      *(v163 + 21) = 1040;
      *(v163 + 23) = 2;
      v41 = v212;
      *(v163 + 27) = 512;

      *(v163 + 29) = v150;

      *(v163 + 31) = 2160;
      *(v163 + 33) = 0x786F626C69616DLL;
      *(v163 + 41) = 2085;

      *&v223 = v151;
      DWORD2(v223) = v215;
      v166 = sub_1004A5824();
      v168 = sub_10015BA6C(v166, v167, v220);

      *(v163 + 43) = v168;
      v169 = v211;
      _os_log_impl(&_mh_execute_header, v211, v214, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking task as complete.", v163, 0x33u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v153 = sub_1004A4A54();
    v154 = sub_1004A6034();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v214 = v151;
      LODWORD(v215) = v152;
      v157 = v156;
      *&v223 = v156;
      *v155 = 68158210;
      *(v155 + 4) = 2;
      *(v155 + 8) = 256;
      v213 = v150;
      v158 = v216;
      *(v155 + 10) = v216;
      *(v155 + 11) = 2082;
      v159 = v266;
      v160 = sub_10015BA6C(v266, v149, &v223);
      sub_100011284(v158, v159, v149, v213, v214);
      *(v155 + 13) = v160;
      v41 = v212;
      _os_log_impl(&_mh_execute_header, v153, v154, "[%.*hhx-%{public}s] Marking task as complete.", v155, 0x15u);
      sub_1000197E0(v157);

      v57 = v211;
    }

    else
    {

      sub_100011284(v216, v266, v149, v150, v151);
    }

    v13 = v210;
  }

  sub_100117890(v41, &v223);
  if (!BYTE13(v225))
  {
    sub_1000B364C(&v223, v220);
    v182 = v221;
    v183 = v222;
    sub_10002587C(v220, v221);
    (*(v183 + 88))(v218, v57, v182, v183);
    sub_10011D8CC(v41);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 29) = 0u;
    *(v41 + 45) = 2;
    sub_1000197E0(v220);
    goto LABEL_63;
  }

  if (BYTE13(v225) != 1)
  {
    goto LABEL_63;
  }

  sub_1000B364C(&v223, v220);
  v266 = *(v41 + *(type metadata accessor for RunningTask(0) + 56));
  v170 = v41;
  v171 = v221;
  v172 = v222;
  sub_10002587C(v220, v221);
  (*(v172 + 32))(&v253, v171, v172);
  v173 = v254;
  v174 = v255;
  v256 = v253;
  sub_1000D69D0(&v256);
  v175 = v57;
  v176 = v221;
  v177 = v222;
  sub_10002587C(v220, v221);
  v178 = (*(v177 + 48))(v176, v177);
  v179 = v218;
  v266(v218, v173, v174, v178, v175);

  v180 = v221;
  v181 = v222;
  sub_10002587C(v220, v221);
  (*(v181 + 128))(v179, v175, v180, v181);
  sub_10011D8CC(v170);
  *v170 = 0u;
  *(v170 + 16) = 0u;
  *(v170 + 29) = 0u;
  *(v170 + 45) = 2;
  sub_1000197E0(v220);

  v145 = v210;
  return sub_10001324C(v145);
}

uint64_t sub_10011FCCC()
{

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10011FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011FDA8(uint64_t a1, int a2, uint64_t (*a3)(void), char *a4, uint64_t a5, uint64_t a6)
{
  v89 = a3;
  v80 = a6;
  v87 = a5;
  v88 = a4;
  v8 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  __chkstk_darwin(v8 - 8);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v77 - v11;
  v12 = type metadata accessor for ClientCommand(0);
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v78 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v77 - v15;
  __chkstk_darwin(v16);
  v81 = &v77 - v17;
  v18 = type metadata accessor for Command(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C9C0(&qword_1005D0F38, &qword_1004D6028);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v27 = a1;
  v29 = &v77 - v28;
  sub_10000E268(v27, &v77 - v28, &qword_1005D0F30, &qword_1004D6020);
  v30 = *(v23 + 56);
  v86 = a2;
  *&v29[v30] = a2;
  sub_10000E268(v29, v25, &qword_1005D0F38, &qword_1004D6028);
  if ((*(v19 + 48))(v25, 1, v18) == 1)
  {
    sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
    sub_100025F40(v25, &qword_1005D0F30, &qword_1004D6020);
    return 1;
  }

  sub_100120D24(v25, v21, type metadata accessor for Command);
  v32 = v90;
  v33 = (v89)(v21);
  v35 = v21;
  if (v32)
  {
    sub_100120EB0(v21, type metadata accessor for Command);
    return sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
  }

  if ((v34 & 1) == 0)
  {
    v89 = v33;
    v38 = v84;
    sub_1000102DC(v84);
    if ((*(v82 + 48))(v38, 1, v83) == 1)
    {
      sub_100025F40(v38, &qword_1005D0F28, &qword_1004D6018);
LABEL_22:
      v76 = v85;
      sub_1000102DC(v85);
      sub_100169CC8(v76, v89, v86);
      sub_100025F40(v76, &qword_1005D0F28, &qword_1004D6018);
      sub_100120EB0(v35, type metadata accessor for Command);
      sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
      return 0;
    }

    v88 = v29;
    v39 = v81;
    sub_100120D24(v38, v81, type metadata accessor for ClientCommand);
    v40 = v80 + *(type metadata accessor for Task.Logger(0) + 20);
    v41 = *(v40 + 8);
    v90 = *v40;
    v43 = *(v40 + 16);
    v42 = *(v40 + 24);
    v44 = *(v40 + 32);
    LODWORD(v84) = *(v40 + 40);
    v82 = v42;
    v83 = v41;
    if (v42 < 0)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = v78;
      sub_100120E14(v39, v78, type metadata accessor for ClientCommand);
      v63 = sub_1004A4A54();
      v64 = sub_1004A5FF4();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v93 = v80;
        *v65 = 68159747;
        *(v65 + 4) = 2;
        *(v65 + 8) = 256;
        *(v65 + 10) = v90;
        v90 = 0;
        *(v65 + 11) = 2082;
        *(v65 + 13) = sub_10015BA6C(v83, v43, &v93);
        *(v65 + 21) = 1040;
        *(v65 + 23) = 2;
        *(v65 + 27) = 512;
        *(v65 + 29) = v82;

        *(v65 + 31) = 2160;
        *(v65 + 33) = 0x786F626C69616DLL;
        *(v65 + 41) = 2085;
        v91 = v44;
        v92 = v84;

        v66 = sub_1004A5824();
        v68 = sub_10015BA6C(v66, v67, &v93);

        *(v65 + 43) = v68;
        *(v65 + 51) = 2082;
        v69 = ClientCommand.logIdentifier.getter();
        v71 = v70;
        sub_100120EB0(v45, type metadata accessor for ClientCommand);
        v72 = sub_10015BA6C(v69, v71, &v93);

        *(v65 + 53) = v72;
        *(v65 + 61) = 2082;
        v73 = Tag.debugDescription.getter(v89 & 0xFFFFFFFF000000FFLL);
        v75 = sub_10015BA6C(v73, v74, &v93);

        *(v65 + 63) = v75;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v65, 0x47u);
        swift_arrayDestroy();

        v61 = v81;
LABEL_20:
        v62 = type metadata accessor for ClientCommand;
        goto LABEL_21;
      }
    }

    else
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = v79;
      sub_100120E14(v39, v79, type metadata accessor for ClientCommand);
      v46 = sub_1004A4A54();
      v47 = sub_1004A5FF4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v44;
        v49 = v43;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v80 = v35;
        v78 = v51;
        v91 = v51;
        *v50 = 68158722;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        v52 = v90;
        *(v50 + 10) = v90;
        v53 = v83;
        sub_100011284(v52, v83, v49, v82, v48);
        *(v50 + 11) = 2082;
        *(v50 + 13) = sub_10015BA6C(v53, v49, &v91);
        *(v50 + 21) = 2082;
        v54 = ClientCommand.logIdentifier.getter();
        v56 = v55;
        v90 = type metadata accessor for ClientCommand;
        sub_100120EB0(v45, type metadata accessor for ClientCommand);
        v57 = sub_10015BA6C(v54, v56, &v91);

        *(v50 + 23) = v57;
        *(v50 + 31) = 2082;
        v58 = Tag.debugDescription.getter(v89 & 0xFFFFFFFF000000FFLL);
        v60 = sub_10015BA6C(v58, v59, &v91);

        *(v50 + 33) = v60;
        _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v50, 0x29u);
        swift_arrayDestroy();
        v35 = v80;

        v61 = v81;
        v62 = v90;
LABEL_21:
        sub_100120EB0(v61, v62);
        v29 = v88;
        goto LABEL_22;
      }

      sub_100011284(v90, v83, v43, v82, v44);
    }

    sub_100120EB0(v45, type metadata accessor for ClientCommand);
    v61 = v39;
    goto LABEL_20;
  }

  v36 = v87 + *(type metadata accessor for RunningTask(0) + 36);
  if (*(v36 + 8) == 1)
  {
    v37 = static MonotonicTime.now()();
    sub_100120EB0(v21, type metadata accessor for Command);
    sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
    *v36 = v37;
    *(v36 + 8) = 0;
  }

  else
  {
    sub_100120EB0(v21, type metadata accessor for Command);
    sub_100025F40(v29, &qword_1005D0F38, &qword_1004D6028);
  }

  return 2;
}

unint64_t sub_1001207D4(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_100020EDC(result);
  }

  return result;
}

unint64_t sub_100120834()
{
  result = qword_1005D0F40;
  if (!qword_1005D0F40)
  {
    result = swift_getWitnessTable(asc_1004D9C2C, &type metadata for TaskHistory.RemovedID, v0, v1);
    atomic_store(result, &qword_1005D0F40);
  }

  return result;
}

uint64_t sub_100120888(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  result = sub_100117890(v5, v49);
  if (v52)
  {
    if (v52 != 1)
    {
      return result;
    }

    v18 = a4;
    v19 = v50;
    v20 = v51;
    sub_1000B364C(v49, v46);
    if ((v20 & 1) == 0 && v19 == a1)
    {
      goto LABEL_5;
    }

    v35 = v47;
    v36 = v48;
    sub_10002587C(v46, v47);
    (*(v36 + 32))(&v53, v35, v36);
    v57 = v54;
    v58 = v55;
    v56 = v53;
    sub_1000D69D0(&v56);
    if (a2 && (v58 | (v58 << 32)) == (a3 | (a3 << 32)))
    {
      v37 = sub_1000FFC98(v57, a2);
      sub_10009DA94(&v57);
      if (v37)
      {
LABEL_5:
        sub_100117890(v5, v44);
        if (v45)
        {
          if (v45 == 1)
          {
            sub_1000B364C(v44, v41);
            v21 = v42;
            v22 = v43;
            sub_10002587C(v41, v42);
            v23 = type metadata accessor for RunningTask(0);
            (*(v22 + 136))(v18, v5 + *(v23 + 28), v21, v22);
            sub_10011D8CC(v5);
            *v5 = 1;
            *(v5 + 8) = 0u;
            *(v5 + 24) = 0u;
            *(v5 + 37) = 0;
            *(v5 + 45) = 2;
            sub_1000197E0(v41);
          }
        }

        else
        {
          sub_10011D8CC(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          sub_10011D8CC(v44);
        }
      }
    }

    else
    {
      sub_10009DA94(&v57);
    }

    return sub_1000197E0(v46);
  }

  v39 = a4;
  v40 = v5;
  v24 = *(v5 + 48);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return sub_10011D8CC(v49);
  }

  v26 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v27 = *(v11 + 72);
  while (1)
  {
    sub_100120E14(v26, v16, type metadata accessor for TaskHistory.Running);
    sub_100120D24(v16, v13, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100120EB0(v13, type metadata accessor for TaskHistory.Running);
LABEL_11:
    v26 += v27;
    if (!--v25)
    {
      return sub_10011D8CC(v49);
    }
  }

  v28 = *v13;
  v29 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_100120EB0(v13 + *(v29 + 64), type metadata accessor for ClientCommand);
  if (v28 != a1)
  {
    goto LABEL_11;
  }

  v30 = v40;
  sub_100117890(v40, v44);
  v31 = v39;
  if (v45)
  {
    if (v45 == 1)
    {
      sub_1000B364C(v44, v46);
      v32 = v47;
      v33 = v48;
      sub_10002587C(v46, v47);
      v34 = type metadata accessor for RunningTask(0);
      (*(v33 + 136))(v31, v30 + *(v34 + 28), v32, v33);
      sub_10011D8CC(v30);
      *v30 = 1;
      *(v30 + 8) = 0u;
      *(v30 + 24) = 0u;
      *(v30 + 37) = 0;
      *(v30 + 45) = 2;
      sub_1000197E0(v46);
    }
  }

  else
  {
    sub_10011D8CC(v30);
    *v30 = 1;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 37) = 0;
    *(v30 + 45) = 2;
    sub_10011D8CC(v44);
  }

  return sub_10011D8CC(v49);
}

uint64_t sub_100120D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100120D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  sub_100025928(a1, v8);
  return (*(v9 + 104))(v7, a2, a3, v6, v8, v9);
}

uint64_t sub_100120E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100120EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100120F10(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  sub_100025928(v3, v8);
  return (*(v9 + 96))(v4, v5, v6, a1, v7, v8, v9);
}

uint64_t sub_100120FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(v2 + 56);
  sub_100025928(a1, v9);
  return (*(v10 + 112))(v3, v4, v5, v6, v7, v11, a2, v8, v9, v10);
}

unint64_t sub_10012104C()
{
  result = qword_1005D0F58;
  if (!qword_1005D0F58)
  {
    result = swift_getWitnessTable(byte_1004D61F8, &type metadata for RunningTask.Error, v0, v1);
    atomic_store(result, &qword_1005D0F58);
  }

  return result;
}

uint64_t sub_1001210A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_100025928(a1, v7);
  return (*(v8 + 120))(v4, v6, a2, v5, v7, v8);
}

unint64_t sub_10012115C()
{
  result = qword_1005D0F60;
  if (!qword_1005D0F60)
  {
    result = swift_getWitnessTable(byte_1004D6070, &type metadata for RunningTask.ActionID, v0, v1);
    atomic_store(result, &qword_1005D0F60);
  }

  return result;
}

unint64_t sub_1001211B4()
{
  result = qword_1005D0F68;
  if (!qword_1005D0F68)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for RunningTask.CommandID, v0, v1);
    atomic_store(result, &qword_1005D0F68);
  }

  return result;
}

unint64_t sub_10012120C()
{
  result = qword_1005D0F70;
  if (!qword_1005D0F70)
  {
    result = swift_getWitnessTable(byte_1004D61D0, &type metadata for RunningTask.Error, v0, v1);
    atomic_store(result, &qword_1005D0F70);
  }

  return result;
}

uint64_t sub_100121274(void *a1, uint64_t a2)
{
  result = sub_100117890(a2, v29);
  if (!v30)
  {
    return sub_10011D8CC(v29);
  }

  if (v30 == 1)
  {
    sub_1000B364C(v29, v26);
    v6 = v27;
    v7 = v28;
    sub_10002587C(v26, v27);
    (*(v7 + 32))(&v31, v6, v7);
    v8 = v32;
    v9 = v33;
    v34 = v31;
    sub_1000D69D0(&v34);
    sub_1000197E0(v26);
    sub_100117890(a2, v29);
    if (v30)
    {
      if (v30 == 1)
      {
        sub_1000B364C(v29, v26);
        v10 = v27;
        v2 = v28;
        sub_10002587C(v26, v27);
        v11 = (*(v2 + 40))(v10, v2);
        sub_1000197E0(v26);
        v12 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      sub_10011D8CC(v29);
    }

    v12 = _swiftEmptySetSingleton;
LABEL_9:
    v13 = v12[2];

    if (!v13)
    {
    }

    sub_100117890(a2, v29);
    if (v30)
    {
      if (v30 == 1)
      {
        sub_1000B364C(v29, v26);
        v14 = v27;
        v15 = v28;
        sub_10002587C(v26, v27);
        v16 = (*(v15 + 40))(v14, v15);
        sub_1000197E0(v26);
        goto LABEL_16;
      }
    }

    else
    {
      sub_10011D8CC(v29);
    }

    v16 = _swiftEmptySetSingleton;
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = *a1;
    v18 = *&v29[0];
    v20 = sub_100063B5C(v8, v9);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v19;
      if (v18[3] < v23)
      {
        sub_1000C781C(v23, isUniquelyReferenced_nonNull_native);
        v18 = *&v29[0];
        v24 = sub_100063B5C(v8, v9);
        if ((v2 & 1) != (v25 & 1))
        {
          result = sub_1004A6E24();
          __break(1u);
          return result;
        }

        v20 = v24;
        *a1 = v18;
        if ((v2 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_23:

        return sub_100080DD8(v16);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *a1 = v18;
        if (v19)
        {
          goto LABEL_23;
        }

LABEL_26:
        sub_10001C89C(v20, v8, v9, _swiftEmptySetSingleton, v18);
        return sub_100080DD8(v16);
      }
    }

    sub_10013C3E0();
    v18 = *&v29[0];
    *a1 = *&v29[0];
    if (v2)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_10012154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  (*(a5 + 16))(v34, a4, a5);
  v9 = sub_100012728(v34, a2);
  sub_100014BEC(v34);
  if (v9)
  {
    return 0;
  }

  result = (*(v5 + 24))(v6, v5);
  v32 = *(result + 16);
  if (!v32)
  {

    goto LABEL_17;
  }

  v29 = a3;
  v30 = v6;
  v31 = v5;
  v11 = 0;
  v33 = result + 32;
  v12 = a2 + 56;
  do
  {
    if (v11 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v13 = result;
    sub_100014B90(v33 + 48 * v11, v37);
    if (*(a2 + 16))
    {
      sub_1004A6E94();
      sub_1004A6664();
      v14 = sub_1004A6F14();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if ((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        v18 = *&v37[0];
        do
        {
          sub_100014B90(*(a2 + 48) + 48 * v16, v34);
          if (v34[0] == v18)
          {
            v19 = sub_1004A6654();
            sub_100014BEC(v34);
            if (v19)
            {
              sub_100014BEC(v37);

              return 0;
            }
          }

          else
          {
            sub_100014BEC(v34);
          }

          v16 = (v16 + 1) & v17;
        }

        while (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
      }
    }

    ++v11;
    sub_100014BEC(v37);
    result = v13;
  }

  while (v11 != v32);

  v6 = v30;
  v5 = v31;
  a3 = v29;
LABEL_17:
  (*(v5 + 32))(v34, v6, v5);
  v20 = v35;
  v21 = v36;
  v37[0] = *v34;
  sub_1000D69D0(v37);
  if (!*(a3 + 16))
  {

    return 1;
  }

  v22 = sub_100063B5C(v20, v21);
  v24 = v23;

  if (v24)
  {
    v25 = *(*(a3 + 56) + 8 * v22);
    v26 = *(v5 + 48);

    v27 = v26(v6, v5);
    v28 = sub_10012DF2C(v27, v25);

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10012182C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6 - 8);
  v35 = &v30[-v7];
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  __chkstk_darwin(PendingDownload);
  v33 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DownloadTask(0);
  v39 = *(a1 + 24);
  v32 = a1;
  v38 = *(a1 + 32);
  v31 = a2;
  v37 = a2 & 1;
  v10 = a3 + 56;
  v36 = sub_1000B38F4();
  for (i = 0; i != 3; ++i)
  {
    v12 = *(&off_100599008 + i + 32);
    v43 = v39;
    v44 = v38;
    v45 = v37;
    v46 = v12;
    *&v47[0] = v9;

    sub_1004A6674();
    if (*(a3 + 16))
    {
      sub_1004A6E94();
      sub_1004A6664();
      v13 = sub_1004A6F14();
      v14 = -1 << *(a3 + 32);
      v15 = v13 & ~v14;
      if ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        do
        {
          sub_100014B90(*(a3 + 48) + 48 * v15, &v43);
          if (v43 == v9)
          {
            v17 = sub_1004A6654();
            sub_100014BEC(&v43);
            if (v17)
            {
              sub_100014BEC(v47);
              v18 = 1;
              return v18 & 1;
            }
          }

          else
          {
            sub_100014BEC(&v43);
          }

          v15 = (v15 + 1) & v16;
        }

        while (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
      }
    }

    sub_100014BEC(v47);
  }

  sub_100016D2C();
  v19 = v35;
  sub_1004A7114();
  v20 = v33;
  *v33 = 0;
  *(v20 + 56) = 0;
  v21 = v32;
  v22 = v32[1];
  *(v20 + 8) = *v32;
  *(v20 + 24) = v22;
  *(v20 + 40) = *(v21 + 8);
  sub_10000C9C0(&qword_1005CEF58, &qword_1004D1E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  if (v31)
  {
    v24 = 10;
  }

  else
  {
    v24 = 9;
  }

  v47[0] = *v21;
  *(inited + 32) = v24;
  v25 = sub_100093190(inited);
  swift_setDeallocating();
  *(v20 + 48) = v25;
  LOBYTE(v25) = v37;
  *(v20 + 57) = v37;
  v26 = PendingDownload;
  sub_10002A54C(v19, v20 + *(PendingDownload + 36));
  v27 = (v20 + *(v26 + 44));
  v40 = v39;
  v41 = v38;
  v42 = v25;
  *v27 = v26;
  swift_bridgeObjectRetain_n();
  sub_1000F7324(v47, &v43);
  sub_1000B4088();
  sub_1004A6674();
  sub_100121C40(v19);
  v28 = v20 + *(v26 + 40);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_100014B90(v27, &v43);
  sub_100121CA8(v20);
  v18 = sub_100012728(&v43, a3);
  sub_100014BEC(&v43);
  return v18 & 1;
}

uint64_t sub_100121C40(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100121CA8(uint64_t a1)
{
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  (*(*(PendingDownload - 8) + 8))(a1, PendingDownload);
  return a1;
}

uint64_t sub_100121D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100117890(a1, v14);
  if (!v15)
  {
    sub_10011D8CC(v14);
    goto LABEL_5;
  }

  if (v15 != 1)
  {
LABEL_5:
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  sub_1000B364C(v14, v11);
  v4 = v12;
  v5 = v13;
  sub_10002587C(v11, v12);
  (*(v5 + 32))(&v16, v4, v5);
  v6 = v17;
  v7 = v18;
  v19 = v16;
  sub_1000D69D0(&v19);
  sub_1000197E0(v11);
LABEL_6:
  result = type metadata accessor for RunningTask(0);
  v9 = (a1 + *(result + 36));
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  return result;
}

void *sub_100121E04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0) - 8;
  __chkstk_darwin(v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptySetSingleton;
  v20 = _swiftEmptySetSingleton;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_100124D34(v9, v6, type metadata accessor for RunningTask);
      sub_100117890(v6, v18);
      if (v19)
      {
        if (v19 == 1)
        {
          sub_1000B364C(v18, v15);
          v11 = v16;
          v12 = v17;
          sub_10002587C(v15, v16);
          (*(v12 + 32))(&v21, v11, v12);
          v13 = v22;
          LODWORD(v12) = v23;
          v24 = v21;
          sub_1000D69D0(&v24);
          sub_1000197E0(v15);
          sub_100088220(v18, v13, v12);
        }
      }

      else
      {
        sub_10011D8CC(v18);
      }

      sub_100124E74(v6, type metadata accessor for RunningTask);
      v9 += v10;
      --v8;
    }

    while (v8);
    return v20;
  }

  return result;
}

void *sub_100121FD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0) - 8;
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  v10 = _swiftEmptyArrayStorage;
  do
  {
    sub_100124D34(v8, v6, type metadata accessor for RunningTask);
    sub_100117890(v6, &v24);
    if (v27)
    {
      if (v27 == 1)
      {
        v11 = v25;
        v12 = v26;
        sub_1000B364C(&v24, v21);
        if (v12)
        {
          sub_100124E74(v6, type metadata accessor for RunningTask);
          sub_1000197E0(v21);
        }

        else
        {
          v13 = v22;
          v14 = v23;
          sub_10002587C(v21, v22);
          (*(v14 + 32))(&v28, v13, v14);
          sub_100124E74(v6, type metadata accessor for RunningTask);
          v31 = v28;
          sub_1000D69D0(&v31);
          sub_1000197E0(v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100085648(0, v10[2] + 1, 1, v10);
          }

          v16 = v10[2];
          v15 = v10[3];
          if (v16 >= v15 >> 1)
          {
            v10 = sub_100085648((v15 > 1), v16 + 1, 1, v10);
          }

          v17 = v29;
          v18 = v30;
          v10[2] = v16 + 1;
          v19 = &v10[3 * v16];
          *(v19 + 8) = v11;
          v19[5] = v17;
          *(v19 + 12) = v18;
        }
      }

      else
      {
        sub_100124E74(v6, type metadata accessor for RunningTask);
      }
    }

    else
    {
      sub_100124E74(v6, type metadata accessor for RunningTask);
      sub_10011D8CC(&v24);
    }

    v8 += v9;
    --v7;
  }

  while (v7);
  return v10;
}

void sub_1001222A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _swiftEmptySetSingleton;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
LABEL_3:
    v11 = v9;
    while (v11 < v7)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }

      sub_100124D34(v10 + *(v4 + 72) * v11, v6, type metadata accessor for RunningTask);
      sub_100117890(v6, v24);
      if (v25 == 1)
      {
        sub_1000197E0(v24);
      }

      else if (v25 != 2)
      {
        v12 = *(v6 + 6);

        sub_10011D8CC(v24);
        v16 = v12;
        v17 = 0;
        v18 = sub_10011B03C;
        v19 = 0;
        v20 = sub_100123C58;
        v21 = 0;
        v22 = sub_100123C68;
        v23 = 0;

        while (1)
        {
          sub_1001239AC();
          if ((v13 & 0x10000000000) != 0)
          {
            break;
          }

          if ((v13 & 0x100000000) != 0)
          {
            goto LABEL_23;
          }

          sub_10008854C(&v15 + 1, v13);
        }

        sub_100124E74(v6, type metadata accessor for RunningTask);

        v8 = 1;
        if (v9 == v7)
        {
          v14 = v26;
LABEL_17:
          if (!v14[2])
          {
          }

          return;
        }

        goto LABEL_3;
      }

      sub_100124E74(v6, type metadata accessor for RunningTask);
      ++v11;
      if (v9 == v7)
      {
        v14 = v26;
        if ((v8 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

uint64_t (*sub_100122508(uint64_t (*result)(char *)))(char *)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_1001399D0(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v6 = *(type metadata accessor for RunningTask(0) - 8);
      result = v4(&v2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i]);
    }

    *(v1 + 8) = v2;
  }

  return result;
}

uint64_t sub_1001225FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_100124D34(a1, &v17 - v10, type metadata accessor for RunningTask);
  v12 = *(v2 + 4);
  *&v11[*(v5 + 40)] = v12;
  *(v2 + 4) = (v12 + 1) & 0xFFFFFF;
  sub_10011B49C(*v2);
  sub_100124D34(v11, v8, type metadata accessor for RunningTask);
  v13 = *(v2 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_100087480(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_100087480((v14 > 1), v15 + 1, 1, v13);
  }

  sub_100124E74(v11, type metadata accessor for RunningTask);
  v13[2] = v15 + 1;
  result = sub_100124E0C(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for RunningTask);
  *(v2 + 1) = v13;
  return result;
}

uint64_t sub_1001227DC(uint64_t a1, unsigned __int8 *a2)
{
  sub_100117890(a1, v25);
  if (!v28)
  {
    sub_10011D8CC(v25);
    return 0;
  }

  if (v28 == 1)
  {
    sub_1000197E0(v25);
    return 0;
  }

  v6 = *a2;
  v7 = a1 + *(type metadata accessor for RunningTask(0) + 28);
  v8 = (v7 + *(type metadata accessor for Task.Logger(0) + 20));
  v10 = v8[1];
  v9 = v8[2];
  v11 = v8[3];
  if (v11 < 0)
  {
  }

  else
  {
    sub_100018BD0(*v8, v8[1], v8[2], v11, v8[4]);
  }

  sub_100117890(a1, v25);
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1000197E0(v25);
    }

    else if (v26 | (v27 << 32) || v25[3] | v25[4] | v25[0] | v25[2] | v25[1])
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v12 = sub_1004A4A54();
      v13 = sub_1004A5FF4();
      if (os_log_type_enabled(v12, v13))
      {
        v23 = swift_slowAlloc();
        LODWORD(v29) = v6;
        v18 = v23;
        v19 = swift_slowAlloc();
        v25[0] = v19;
        *v18 = 68158210;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        *(v18 + 10) = v29;

        *(v18 + 11) = 2082;
        v24 = sub_10015BA6C(v10, v9, v25);

        *(v18 + 13) = v24;
        v22 = "[%.*hhx-%{public}s] Pruning failed task";
        goto LABEL_17;
      }

LABEL_20:

      swift_bridgeObjectRelease_n();
      goto LABEL_21;
    }
  }

  else
  {
    sub_10011D8CC(v25);
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v12 = sub_1004A4A54();
  v13 = sub_1004A5FF4();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_20;
  }

  v14 = swift_slowAlloc();
  v29 = v2;
  v15 = a2;
  v16 = v10;
  v17 = v6;
  v18 = v14;
  v19 = swift_slowAlloc();
  v25[0] = v19;
  *v18 = 68158210;
  *(v18 + 4) = 2;
  *(v18 + 8) = 256;
  *(v18 + 10) = v17;

  *(v18 + 11) = 2082;
  v20 = v16;
  a2 = v15;
  v21 = sub_10015BA6C(v20, v9, v25);

  *(v18 + 13) = v21;
  v22 = "[%.*hhx-%{public}s] Pruning completed task";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v12, v13, v22, v18, 0x15u);
  sub_1000197E0(v19);

LABEL_21:
  sub_10011C624(*a2);
  return 1;
}

void sub_100122B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 8);
  v12 = (v4 + 8);
  v14 = *(v13 + 16);

  v15 = sub_1001235E4(v12, a1, a2, a3);
  v16 = *(*v12 + 16);
  if (v16 < v15)
  {
    __break(1u);
  }

  else
  {
    sub_1001650F0(v15, v16);
    v17 = *(*v12 + 16);
    v18 = v14 - v17;
    if (v14 != v17)
    {
      sub_100124D34(a4, v11, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v19 = sub_1004A4A54();
      v20 = sub_1004A6004();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 68158208;
        *(v21 + 4) = 2;
        *(v21 + 8) = 256;
        v22 = v11[*(v9 + 20)];
        sub_100124E74(v11, type metadata accessor for State.Logger);
        *(v21 + 10) = v22;
        *(v21 + 11) = 2048;
        *(v21 + 13) = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%.*hhx] Pruned %ld mailbox task(s) without mailbox affinity.", v21, 0x15u);
      }

      else
      {
        sub_100124E74(v11, type metadata accessor for State.Logger);
      }
    }
  }
}

void sub_100122D18(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 8) + 16))
  {
    sub_100124250(result, a3);
    __chkstk_darwin(v7);
    v11[0] = result;
    v11[1] = a2;
    v8 = sub_100122508(sub_100124CD8);
    __chkstk_darwin(v8);
    v11[2] = v3;
    v11[3] = a3;
    sub_10015C69C(sub_100124D14, v11);
    v10 = *(*(v3 + 8) + 16);
    if (v10 < v9)
    {
      __break(1u);
    }

    else
    {
      sub_1001650F0(v9, v10);
    }
  }
}

uint64_t sub_100122E24(uint64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for RunningTask(0);
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v9, 0);
    v10 = v23;
    v11 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    do
    {
      sub_100124D34(v11, v8, type metadata accessor for RunningTask);
      sub_100124D34(v8, v5, type metadata accessor for RunningTask);
      v12 = sub_1004A5824();
      v14 = v13;
      sub_100124E74(v8, type metadata accessor for RunningTask);
      v23 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_100091A08((v15 > 1), v16 + 1, 1);
        v10 = v23;
      }

      v10[2] = v16 + 1;
      v17 = &v10[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v11 += v21;
      --v9;
    }

    while (v9);
  }

  v23 = v10;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v18 = sub_1004A5614();

  return v18;
}

uint64_t sub_10012304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100124D34(a1, v9, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 10:

      v17 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v18 = *(v17 + 64);
      sub_100014D40(*&v9[*(v17 + 80)], *&v9[*(v17 + 80) + 8]);
      v19 = &qword_1005D0F20;
      v20 = &qword_1004E9390;
      v21 = &v9[v18];
      goto LABEL_10;
    case 15:
      sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);
      goto LABEL_9;
    case 16:
      sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0);
LABEL_9:

      v19 = &unk_1005D91B0;
      v20 = &unk_1004CF400;
      v21 = v9;
LABEL_10:
      sub_100025F40(v21, v19, v20);
      goto LABEL_3;
    case 17:
    case 18:
      v13 = &v9[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v14 = *v13;
      v15 = *(v13 + 2);
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      v16 = sub_1001232E0(v14, v15, a2, a3);

      v11 = v16 ^ 1;
      return v11 & 1;
    case 19:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return v11 & 1;
    default:
      sub_100124E74(v9, type metadata accessor for ClientCommand);
LABEL_3:
      v11 = 1;
      return v11 & 1;
  }
}

uint64_t sub_1001232E0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RunningTask(0) - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v15 = a2 | (a2 << 32);
    v26 = a1;
    v25 = (a1 + 32);
    do
    {
      sub_100124D34(v13 + v14 * v12, v10, type metadata accessor for RunningTask);
      sub_100117890(v10, v27);
      if (v28 == 1)
      {
        sub_1000B364C(v27, v29);
        v16 = v30;
        v17 = v31;
        sub_10002587C(v29, v30);
        (*(v17 + 32))(&v32, v16, v17);
        v36 = v33;
        v37 = v34;
        v35 = v32;
        sub_1000D69D0(&v35);
        if ((v37 | (v37 << 32)) != v15)
        {
          sub_100124E74(v10, type metadata accessor for RunningTask);
          sub_10009DA94(&v36);
          goto LABEL_17;
        }

        v18 = *(v36 + 16);
        if (v18 != *(v26 + 16))
        {
          goto LABEL_16;
        }

        if (v18 && v36 != v26)
        {
          v19 = (v36 + 32);
          v20 = v25;
          while (*v19 == *v20)
          {
            ++v19;
            ++v20;
            if (!--v18)
            {
              goto LABEL_13;
            }
          }

LABEL_16:
          sub_10009DA94(&v36);
          sub_100124E74(v10, type metadata accessor for RunningTask);
LABEL_17:
          sub_1000197E0(v29);
          goto LABEL_4;
        }

LABEL_13:
        sub_10009DA94(&v36);
        v21 = v30;
        v22 = v31;
        sub_10002587C(v29, v30);
        v23 = (*(v22 + 56))(v21, v22);
        sub_100124E74(v10, type metadata accessor for RunningTask);
        sub_1000197E0(v29);
        if (v23)
        {
          return 1;
        }
      }

      else
      {
        sub_100124E74(v10, type metadata accessor for RunningTask);
        sub_10011D8CC(v27);
      }

LABEL_4:
      ++v12;
    }

    while (v12 != v11);
  }

  return 0;
}

unint64_t sub_1001235E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RunningTask(0);
  v51 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v47 = a1;
  v18 = *a1;

  v19 = sub_1001240FC(v18, a2, a3);
  LODWORD(v53) = v20;

  v54 = v4;
  if (v4)
  {
  }

  v50 = v17;
  v46 = v14;
  v52 = v19;

  if (v53)
  {
    v52 = *(v18 + 16);

LABEL_8:

    return v52;
  }

  v44 = a4;
  v45 = v11;
  v48 = a3;
  v49 = a2;
  v22 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    v23 = v18;
    v25 = (v18 + 16);
    v24 = *(v18 + 16);
    v26 = v50;
    if (v22 == v24)
    {
LABEL_7:

      goto LABEL_8;
    }

    while (v22 < v24)
    {
      v27 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = v23;
      v28 = v23 + v27;
      v29 = *(v51 + 72);
      sub_100124D34(v23 + v27 + v29 * v22, v26, type metadata accessor for RunningTask);
      v30 = v54;
      v31 = sub_100123C80(v26, v49, v48);
      v32 = v26;
      v33 = v31;
      result = sub_100124E74(v32, type metadata accessor for RunningTask);
      v54 = v30;
      if (v30)
      {
      }

      if (v33)
      {
        v26 = v50;
        v23 = v53;
      }

      else
      {
        v34 = v52;
        if (v22 == v52)
        {
          v26 = v50;
          v23 = v53;
        }

        else
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v35 = *v25;
          if (v52 >= v35)
          {
            goto LABEL_27;
          }

          v36 = v29 * v52;
          result = sub_100124D34(&v28[v29 * v52], v46, type metadata accessor for RunningTask);
          if (v22 >= v35)
          {
            goto LABEL_28;
          }

          v37 = v29 * v22;
          v38 = &v28[v29 * v22];
          v39 = v45;
          sub_100124D34(v38, v45, type metadata accessor for RunningTask);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1001399D0(v53);
          }

          v40 = v46;
          v26 = v50;
          v41 = v53;
          v42 = v53 + v27;
          v43 = &v42[v36];
          v23 = v53;
          result = sub_1001241EC(v39, v43);
          if (v22 >= v41[2])
          {
            goto LABEL_29;
          }

          result = sub_1001241EC(v40, &v42[v37]);
          *v47 = v23;
          v34 = v52;
        }

        v52 = v34 + 1;
      }

      ++v22;
      v25 = v23 + 2;
      v24 = v23[2];
      if (v22 == v24)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001239AC()
{
  v1 = v0;
  v26 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C9C0(&qword_1005D0F78, &qword_1004D6350);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v27 = *v1;
  v12 = (v2 + 56);
  v13 = (v2 + 48);
  v14 = v1[3];
  v25 = v1[2];
  v23 = v2;
  v24 = v14;
  while (1)
  {
    v15 = *(v27 + 16);
    v16 = v1[1];
    if (v16 == v15)
    {
      v17 = 1;
      goto LABEL_6;
    }

    if (v16 >= v15)
    {
      break;
    }

    sub_100124D34(v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16, v11, type metadata accessor for TaskHistory.Running);
    v17 = 0;
    v1[1] = v16 + 1;
LABEL_6:
    v18 = v26;
    (*v12)(v11, v17, 1, v26, v9);
    sub_100124D9C(v11, v7);
    v19 = (*v13)(v7, 1, v18);
    if (v19 != 1)
    {
      sub_100124E0C(v7, v4, type metadata accessor for TaskHistory.Running);
      v25(&v28, v4);
      v20 = v28;
      v21 = BYTE4(v28);
      sub_100124E74(v4, type metadata accessor for TaskHistory.Running);
      v29 = v20;
      v30 = v21;
      if (((v1[4])(&v29) & 1) == 0)
      {
        continue;
      }
    }

    HIBYTE(v28) = v19 == 1;
    return;
  }

  __break(1u);
}

uint64_t sub_100123C68@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 4))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_100123C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100117890(a1, v40);
  if (v41)
  {
    if (v41 == 1)
    {
      sub_1000B364C(v40, v37);
      v6 = v38;
      v7 = v39;
      sub_10002587C(v37, v38);
      (*(v7 + 32))(&v42, v6, v7);
      v8 = v43;
      v9 = v44;
      v45 = v42;
      sub_1000D69D0(&v45);
      sub_1000197E0(v37);
      sub_10011AF58();
      if (v10)
      {
      }

      else
      {
        v12 = *(a3 + 16);
        v13 = a3 + 32;
        if (a2)
        {
          sub_10015C0B4(v8, v9, v13, v12, (a2 + 16), a2 + 32);
        }

        else
        {
          sub_10015C014(v8, v9, v13, v12);
        }

        v15 = v14;

        if (v15)
        {
          v16 = a1 + *(type metadata accessor for RunningTask(0) + 28);
          v17 = v16 + *(type metadata accessor for Task.Logger(0) + 20);
          v19 = *v17;
          v18 = *(v17 + 8);
          v20 = *(v17 + 16);
          v21 = *(v17 + 24);
          v22 = *(v17 + 32);
          v47 = *(v17 + 40);
          if (v21 < 0)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v23 = sub_1004A4A54();
            v30 = sub_1004A6004();
            if (!os_log_type_enabled(v23, v30))
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              return 1;
            }

            v31 = swift_slowAlloc();
            v37[0] = swift_slowAlloc();
            *v31 = 68159235;
            v46 = v30;
            *(v31 + 4) = 2;
            *(v31 + 8) = 256;
            *(v31 + 10) = v19;
            *(v31 + 11) = 2082;

            v32 = sub_10015BA6C(v18, v20, v37);

            *(v31 + 13) = v32;
            *(v31 + 21) = 1040;
            *(v31 + 23) = 2;
            *(v31 + 27) = 512;

            *(v31 + 29) = v21;

            *(v31 + 31) = 2160;
            *(v31 + 33) = 0x786F626C69616DLL;
            *(v31 + 41) = 2085;

            *&v40[0] = v22;
            DWORD2(v40[0]) = v47;
            v33 = sub_1004A5824();
            v35 = sub_10015BA6C(v33, v34, v37);

            *(v31 + 43) = v35;
            _os_log_impl(&_mh_execute_header, v23, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v31, 0x33u);
            swift_arrayDestroy();
          }

          else
          {

            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v23 = sub_1004A4A54();
            v24 = sub_1004A6004();
            if (!os_log_type_enabled(v23, v24))
            {

              sub_100011284(v19, v18, v20, v21, v22);
              return 1;
            }

            v25 = swift_slowAlloc();
            v36 = v22;
            v26 = swift_slowAlloc();
            *&v40[0] = v26;
            *v25 = 68158210;
            *(v25 + 4) = 2;
            *(v25 + 8) = 256;
            *(v25 + 10) = v19;
            *(v25 + 11) = 2082;
            v27 = sub_10015BA6C(v18, v20, v40);
            v28 = v18;
            v29 = v27;
            sub_100011284(v19, v28, v20, v21, v36);
            *(v25 + 13) = v29;
            _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] Pruning. No mailbox affinity, not targeting mailboxes-to-be-selected.", v25, 0x15u);
            sub_1000197E0(v26);
          }

          return 1;
        }
      }
    }
  }

  else
  {
    sub_10011D8CC(v40);
  }

  return 0;
}

uint64_t sub_1001240FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(type metadata accessor for RunningTask(0) - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_100123C80(v10, a2, a3);
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1001241EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningTask(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100124250(unsigned int *a1, uint64_t a2)
{
  v83 = a2;
  v81 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v81);
  v79 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v77 - v5;
  __chkstk_darwin(v6);
  v80 = &v77 - v7;
  __chkstk_darwin(v8);
  v78 = &v77 - v9;
  v10 = a1[6];
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v84 = a1;
  v13 = v11[2];
  v91 = _swiftEmptyArrayStorage;
  sub_100091A08(0, v13, 0);
  v14 = v91;
  LODWORD(v82) = v10;
  v85 = v12;
  v86 = v11;
  ConnectionCommandIDSet.makeIterator()(v10, v11, v12);
  if (!v13)
  {
LABEL_6:
    sub_1004A6AA4();
    if ((v90 & 1) == 0)
    {
      v47 = v89;
      do
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        v87 = v47;
        v88 = HIDWORD(v47);
        sub_1004A6934();
        v48 = v89;
        v49 = v90;
        v91 = v14;
        v51 = v14[2];
        v50 = v14[3];
        if (v51 >= v50 >> 1)
        {
          sub_100091A08((v50 > 1), v51 + 1, 1);
          v14 = v91;
        }

        v14[2] = v51 + 1;
        v52 = &v14[2 * v51];
        v52[4] = v48;
        v52[5] = v49;
        sub_1004A6AA4();
        v47 = v89;
      }

      while (v90 != 1);
    }

    v89 = v14;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v21 = sub_1004A5614();
    v23 = v22;

    v24 = v86;
    v25 = ConnectionCommandIDSet.normalCommandCount.getter(v82, v86, v85);
    v26 = v84;
    v27 = *(v84 + 1);
    if (v27)
    {
      v28 = v84[4];
      if (v25)
      {
        v29 = v80;
        sub_100124D34(v83, v80, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v30 = sub_1004A4A54();
        v31 = sub_1004A6014();

        LODWORD(v79) = v31;
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          LODWORD(v83) = v28;
          v33 = v29;
          v34 = v32;
          v35 = swift_slowAlloc();
          v82 = v21;
          v91 = v35;
          *v34 = 68159235;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v36 = *(v33 + *(v81 + 20));
          sub_100124E74(v33, type metadata accessor for State.Logger);
          *(v34 + 10) = v36;
          *(v34 + 11) = 2082;
          v37 = ConnectionID.debugDescription.getter(*v26);
          v39 = sub_10015BA6C(v37, v38, &v91);

          *(v34 + 13) = v39;
          *(v34 + 21) = 2048;
          v40 = v24[2];

          *(v34 + 23) = v40;

          *(v34 + 31) = 2082;
          v41 = sub_10015BA6C(v82, v23, &v91);

          *(v34 + 33) = v41;
          *(v34 + 41) = 2160;
          *(v34 + 43) = 0x786F626C69616DLL;
          *(v34 + 51) = 2085;
          v89 = v27;
          LODWORD(v90) = v83;

          v42 = sub_1004A5824();
          v44 = sub_10015BA6C(v42, v43, &v91);

          *(v34 + 53) = v44;
          v45 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s were running and '%{sensitive,mask.mailbox}s' was selected.";
          v46 = v79;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v30, v46, v45, v34, 0x3Du);
          swift_arrayDestroy();
LABEL_25:

          return;
        }
      }

      else
      {
        v82 = v21;
        v29 = v78;
        sub_100124D34(v83, v78, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v30 = sub_1004A4A54();
        v55 = sub_1004A6034();

        if (os_log_type_enabled(v30, v55))
        {
          v56 = swift_slowAlloc();
          LODWORD(v80) = v55;
          v57 = v29;
          v34 = v56;
          v58 = swift_slowAlloc();
          LODWORD(v83) = v28;
          v91 = v58;
          *v34 = 68159235;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v59 = *(v57 + *(v81 + 20));
          sub_100124E74(v57, type metadata accessor for State.Logger);
          *(v34 + 10) = v59;
          *(v34 + 11) = 2082;
          v60 = ConnectionID.debugDescription.getter(*v26);
          v62 = sub_10015BA6C(v60, v61, &v91);

          *(v34 + 13) = v62;
          *(v34 + 21) = 2048;
          v63 = v24[2];

          *(v34 + 23) = v63;

          *(v34 + 31) = 2082;
          v64 = sub_10015BA6C(v82, v23, &v91);

          *(v34 + 33) = v64;
          *(v34 + 41) = 2160;
          *(v34 + 43) = 0x786F626C69616DLL;
          *(v34 + 51) = 2085;
          v89 = v27;
          LODWORD(v90) = v83;

          v65 = sub_1004A5824();
          v67 = sub_10015BA6C(v65, v66, &v91);

          *(v34 + 53) = v67;
          v45 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running and '%{sensitive,mask.mailbox}s' was selected.";
          v46 = v80;
          goto LABEL_20;
        }
      }

      sub_100124E74(v29, type metadata accessor for State.Logger);
    }

    else
    {
      if (v25)
      {
        v53 = v79;
        sub_100124D34(v83, v79, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v30 = sub_1004A4A54();
        v54 = sub_1004A6014();
      }

      else
      {
        v53 = v77;
        sub_100124D34(v83, v77, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v30 = sub_1004A4A54();
        v54 = sub_1004A6034();
      }

      v68 = v54;

      if (os_log_type_enabled(v30, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v82 = v21;
        v89 = v70;
        *v69 = 68158722;
        *(v69 + 4) = 2;
        *(v69 + 8) = 256;
        v71 = *(v53 + *(v81 + 20));
        sub_100124E74(v53, type metadata accessor for State.Logger);
        *(v69 + 10) = v71;
        *(v69 + 11) = 2082;
        v72 = ConnectionID.debugDescription.getter(*v26);
        v74 = sub_10015BA6C(v72, v73, &v89);

        *(v69 + 13) = v74;
        *(v69 + 21) = 2048;
        v75 = v24[2];

        *(v69 + 23) = v75;

        *(v69 + 31) = 2082;
        v76 = sub_10015BA6C(v82, v23, &v89);

        *(v69 + 33) = v76;
        _os_log_impl(&_mh_execute_header, v30, v68, "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running. No mailbox selected.", v69, 0x29u);
        swift_arrayDestroy();
        goto LABEL_25;
      }

      sub_100124E74(v53, type metadata accessor for State.Logger);
    }

    return;
  }

  while (1)
  {
    sub_1004A6AA4();
    if (v90)
    {
      break;
    }

    v15 = v89;
    v89 = 0;
    v90 = 0xE000000000000000;
    v87 = v15;
    v88 = HIDWORD(v15);
    sub_1004A6934();
    v17 = v89;
    v16 = v90;
    v91 = v14;
    v19 = v14[2];
    v18 = v14[3];
    if (v19 >= v18 >> 1)
    {
      sub_100091A08((v18 > 1), v19 + 1, 1);
      v14 = v91;
    }

    v14[2] = v19 + 1;
    v20 = &v14[2 * v19];
    v20[4] = v17;
    v20[5] = v16;
    if (!--v13)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_100124D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100124D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F78, &qword_1004D6350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100124E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100124E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100124EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100124F60(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100124FE4@<X0>(__int16 a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v12 = sub_10000C9C0(a2, a3);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27[-v14];
  v16 = sub_10000C9C0(&qword_1005CD1A8, &qword_1004CEC28);
  __chkstk_darwin(v16 - 8);
  v19 = &v27[*(v18 + 56) - v17];
  sub_100124EFC(v9, v19);
  type metadata accessor for UntaggedResponse(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((a1 & 0x100) == 0)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v21 = v19[1];
      v29[0] = *v19;
      v29[1] = v21;
      v29[2] = v19[2];
      a4();
      return sub_100016C68(v29);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 11)
  {
LABEL_9:
    sub_100124F60(v19);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v23 = *v19;
  sub_100016D2C();
  sub_1004A7114();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    do
    {
      v26 = *v25++;
      v28 = v26;
      MessageIdentifierSet.insert(_:)(v29, &v28, v12);
      --v24;
    }

    while (v24);
  }

  sub_100025FDC(v15, a5, a2, a3);
  return (*(v13 + 56))(a5, 0, 1, v12);
}

Swift::Int sub_100125208()
{
  result = sub_100093190(&off_100599080);
  qword_1005DDF88 = result;
  return result;
}

void sub_100125230(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = *(v1 + 8);
  sub_1000118A4(a1, v20 - v7);
  sub_1000118A4(a1, v5);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v5[*(v3 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v8[*(v3 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v22);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v15 = *(v13 + 12);
    sub_100011908(v5);
    *(v12 + 29) = v15;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100011908(v8);
    v20[1] = v16;
    v21 = v14;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v22);

    *(v12 + 43) = v19;
    *(v12 + 51) = 1024;
    *(v12 + 53) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for search #%u.", v12, 0x39u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v5);

    sub_100011908(v8);
  }
}

unint64_t sub_1001254C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((sub_1001120F4(a1, a2) & 1) != 0 || (result = sub_1001257E4(), (~result & 0xF000000000000007) == 0))
  {
    v6 = sub_10000C9C0(&qword_1005D10F8, &qword_1004D6478);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }

  v8 = *v3 - 1;
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 > 0x7FFFFFFFFFFFFFFELL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(*v3))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (*(v3 + 146))
  {
    *a3 = result;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v9 = result;
    if (*(v3 + 145))
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      type metadata accessor for SearchReturnOption(0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1004CEAA0;
    }

    else
    {
      v16 = *v3;
      v17 = 1;
      sub_1000796C4();
      static MessageIdentifier.... infix(_:_:)(&v17, &v16, &type metadata for SequenceNumber, &v18);
      v11 = v18;
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      v12 = *(type metadata accessor for SearchReturnOption(0) - 8);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1004CEAA0;
      v14 = v10 + v13;
      *v14 = v11;
      *(v14 + 8) = 0;
    }

    swift_storeEnumTagMultiPayload();
    *a3 = v9;
    a3[1] = v10;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v15 = sub_10000C9C0(&qword_1005D10F8, &qword_1004D6478);
  return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
}

unint64_t sub_1001257E4()
{
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v19 = *(v0 + 128);
  if (!*(v19 + 16))
  {
    v31 = *(v0 + 120);
    sub_1000B3664(v31);
    return v31;
  }

  v43 = v0;
  v44 = v18;
  v46 = v9;
  v47 = v17;
  v48 = v1;
  v49 = v12;
  v42 = &v41 - v16;
  v50 = v15;
  v20 = sub_100016948();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v20, v51);
  v52 = v51[0];
  v51[4] = Range<>.init<A>(_:)(&v52, &type metadata for UID, v20);
  sub_100016D2C();
  v45 = v6;
  sub_1004A7124();
  result = sub_1004A7114();
  v22 = *(v19 + 16);
  if (!v22)
  {
LABEL_8:
    v26 = v45;
    v25 = v46;
    MessageIdentifierSet.subtracting(_:)(v3, v46);
    sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
      v29 = 1;
      v28 = v49;
    }

    else
    {
      v27 = v44;
      sub_100025FDC(v25, v44, &unk_1005D91B0, &unk_1004CF400);
      v28 = v49;
      sub_100025FDC(v27, v49, &qword_1005CD1D0, &unk_1004CF2C0);
      v29 = 0;
    }

    v30 = v50;
    v32 = v47;
    v33 = *(v47 + 56);
    v33(v28, v29, 1, v50);
    if ((*(v32 + 48))(v28, 1, v30) == 1)
    {
      sub_100025F40(v28, &qword_1005CD518, &qword_1004CF2F0);
      return 0xF000000000000007;
    }

    else
    {
      v34 = v42;
      sub_100025FDC(v28, v42, &qword_1005CD1D0, &unk_1004CF2C0);
      v35 = swift_allocObject();
      sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004D01D0;
      sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
      v37 = swift_allocBox();
      v39 = v38;
      sub_10000E268(v34, v38, &qword_1005CD1D0, &unk_1004CF2C0);
      v33(v39, 0, 1, v30);
      v40 = *(v43 + 120);
      *(v36 + 32) = v37 | 0xA000000000000000;
      *(v36 + 40) = v40;
      sub_1000B3664(v40);
      sub_100025F40(v34, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v35 + 16) = v36;
      return v35 | 0xC000000000000000;
    }
  }

  v23 = 0;
  while (v23 < *(v19 + 16))
  {
    v51[0] = *(v19 + 32 + 8 * v23);
    result = Range<>.init<A>(_:)(v51, &type metadata for UID, v20);
    v52 = result;
    if (HIDWORD(result) != result)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v24 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      result = v24(v51, 0);
    }

    if (v22 == ++v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100125D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  sub_1000118A4(a2, v27 - v10);
  sub_1000118A4(a2, v8);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v12 = sub_1004A4A54();
  v13 = sub_1004A6014();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 68159235;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    v15 = *(v6 + 20);
    v27[0] = a1;
    v16 = &v8[v15];
    *(v14 + 10) = v8[v15];
    *(v14 + 11) = 2082;
    v17 = &v11[*(v6 + 20)];
    *(v14 + 13) = sub_10015BA6C(*(v17 + 1), *(v17 + 2), &v29);
    *(v14 + 21) = 1040;
    *(v14 + 23) = 2;
    *(v14 + 27) = 512;
    LOWORD(v16) = *(v16 + 12);
    sub_100011908(v8);
    *(v14 + 29) = v16;
    *(v14 + 31) = 2160;
    *(v14 + 33) = 0x786F626C69616DLL;
    *(v14 + 41) = 2085;
    v18 = *(v17 + 4);
    LODWORD(v16) = *(v17 + 10);

    sub_100011908(v11);
    v27[1] = v18;
    v28 = v16;
    v19 = sub_1004A5824();
    v21 = sub_10015BA6C(v19, v20, &v29);

    *(v14 + 43) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search did fail.", v14, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v8);

    sub_100011908(v11);
  }

  v22 = *(v3 + 8);
  v23 = *(v3 + 16);
  v24 = *(v3 + 24);
  v25 = type metadata accessor for SearchMailbox(0);
  return sub_1000BB408(v22, v23, v24, v3 + *(v25 + 52));
}

double sub_100125FFC()
{
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  return result;
}

Swift::Int sub_100126100()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

void sub_100126160()
{
  v1 = v0[4];
  sub_1004A6EE4(*v0);
  sub_1004A6EB4(v1 | (v1 << 32));
}

Swift::Int sub_1001261A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  sub_1004A6E94();
  sub_1004A6EE4(v2);
  sub_1004A6EB4(v3 | (v3 << 32));
  return sub_1004A6F14();
}

uint64_t sub_10012627C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012634C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SearchMailbox(uint64_t a1)
{
  result = qword_1005D0FD8;
  if (!qword_1005D0FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100126448(uint64_t a1)
{
  sub_10002AABC(319);
  if (v1 <= 0x3F)
  {
    sub_100126524(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100126524(uint64_t a1)
{
  if (!qword_1005CFAD8)
  {
    sub_10000DEFC(&qword_1005CD1D0, &unk_1004CF2C0);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CFAD8);
    }
  }
}

unint64_t sub_100126588()
{
  result = qword_1005D1030;
  if (!qword_1005D1030)
  {
    result = swift_getWitnessTable(byte_1004D63E4, &type metadata for SearchMailbox.CommandID, v0, v1);
    atomic_store(result, &qword_1005D1030);
  }

  return result;
}

unint64_t sub_1001265DC(uint64_t a1)
{
  result = sub_100126604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100126604()
{
  result = qword_1005D10E8;
  if (!qword_1005D10E8)
  {
    v3 = type metadata accessor for SearchMailbox(255);
    result = swift_getWitnessTable("\t\n\v", v3, v0, v1);
    atomic_store(result, &qword_1005D10E8);
  }

  return result;
}

unint64_t sub_100126660()
{
  result = qword_1005D10F0;
  if (!qword_1005D10F0)
  {
    result = swift_getWitnessTable("]\t\v", &type metadata for SearchMailbox.SearchID, v0, v1);
    atomic_store(result, &qword_1005D10F0);
  }

  return result;
}

uint64_t sub_1001266B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v66 = a6;
  v71 = a1;
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v65 = &v61[-v12];
  v13 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v13 - 8);
  v68 = &v61[-v14];
  v64 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v64);
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v61[-v18];
  v20 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v20 - 8);
  v22 = &v61[-v21];
  v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v67 = &v61[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v61[-v27];
  __chkstk_darwin(v29);
  v72 = &v61[-v30];
  result = sub_100058770(a2, a3, a4);
  if (result)
  {
    if (*(v7 + 146))
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    sub_100124ED4(v32 | *(v7 + 145), v22);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      return sub_100025F40(v22, &qword_1005CD510, &unk_1004CF2E0);
    }

    else
    {
      v33 = v72;
      sub_100025FDC(v22, v72, &unk_1005D91B0, &unk_1004CF400);
      v34 = *(v7 + 8);
      v35 = v66;
      sub_1000118A4(v66, v19);
      sub_1000118A4(v35, v16);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v33, v28, &unk_1005D91B0, &unk_1004CF400);
      v36 = sub_1004A4A54();
      v37 = sub_1004A6034();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v66 = v7;
        v39 = v38;
        v40 = swift_slowAlloc();
        v71 = v23;
        v75 = v40;
        *v39 = 68159747;
        v63 = v36;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v41 = v64;
        v42 = *(v64 + 20);
        v62 = v34;
        v43 = &v16[v42];
        *(v39 + 10) = v16[v42];
        *(v39 + 11) = 2082;
        v44 = &v19[*(v41 + 20)];
        *(v39 + 13) = sub_10015BA6C(*(v44 + 1), *(v44 + 2), &v75);
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;
        v45 = *(v43 + 12);
        sub_100011908(v16);
        *(v39 + 29) = v45;
        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;
        v46 = *(v44 + 4);
        v47 = *(v44 + 10);

        sub_100011908(v19);
        v73 = v46;
        v74 = v47;
        v48 = sub_1004A5824();
        v50 = sub_10015BA6C(v48, v49, &v75);

        *(v39 + 43) = v50;
        *(v39 + 51) = 2048;
        v51 = MessageIdentifierSet.count.getter();
        sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        *(v39 + 53) = v51;
        *(v39 + 61) = 1024;
        *(v39 + 63) = v62;
        v52 = v63;
        _os_log_impl(&_mh_execute_header, v63, v37, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search returned %ld UIDs for search #%u.", v39, 0x43u);
        swift_arrayDestroy();
        v23 = v71;

        v7 = v66;
      }

      else
      {
        sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        sub_100011908(v16);

        sub_100011908(v19);
      }

      v53 = v67;
      v54 = v72;
      MessageIdentifierSet.suffix(_:)(*v7, v23, v67);
      v55 = MessageIdentifierSet.count.getter();
      sub_100025F40(v54, &unk_1005D91B0, &unk_1004CF400);
      if (v55 < 1)
      {
        sub_100025F40(v53, &unk_1005D91B0, &unk_1004CF400);
        v59 = 1;
        v58 = v68;
      }

      else
      {
        v56 = v65;
        sub_100025FDC(v53, v65, &unk_1005D91B0, &unk_1004CF400);
        v57 = v56;
        v58 = v68;
        sub_100025FDC(v57, v68, &qword_1005CD1D0, &unk_1004CF2C0);
        v59 = 0;
      }

      (*(v69 + 56))(v58, v59, 1, v70);
      v60 = type metadata accessor for SearchMailbox(0);
      return sub_1000DA8E4(v58, v7 + *(v60 + 52));
    }
  }

  return result;
}

void sub_100126D54(unint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v50 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v47[-v14];
  __chkstk_darwin(v16);
  v18 = &v47[-v17];
  __chkstk_darwin(v19);
  v21 = &v47[-v20];
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1000118A4(a6, &v47[-v20]);
      sub_1000118A4(a6, v18);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a1);

      v22 = sub_1004A4A54();
      v23 = sub_1004A6014();
      sub_10001114C(a1);

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v53 = v49;
        *v24 = 68159491;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v25 = &v18[*(v10 + 20)];
        *(v24 + 10) = *v25;
        *(v24 + 11) = 2082;
        v26 = &v21[*(v10 + 20)];
        *(v24 + 13) = sub_10015BA6C(*(v26 + 1), *(v26 + 2), &v53);
        *(v24 + 21) = 1040;
        *(v24 + 23) = 2;
        *(v24 + 27) = 512;
        LOWORD(v25) = *(v25 + 12);
        sub_100011908(v18);
        *(v24 + 29) = v25;
        *(v24 + 31) = 2160;
        *(v24 + 33) = 0x786F626C69616DLL;
        *(v24 + 41) = 2085;
        v27 = *(v26 + 4);
        LODWORD(v26) = *(v26 + 10);

        sub_100011908(v21);
        v51 = v27;
        v52 = v26;
        v28 = sub_1004A5824();
        v30 = sub_10015BA6C(v28, v29, &v53);

        *(v24 + 43) = v30;
        *(v24 + 51) = 2082;
        v31 = ResponseText.debugDescription.getter(a1, v50, a3);
        v33 = sub_10015BA6C(v31, v32, &v53);

        *(v24 + 53) = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with NO %{public}s.", v24, 0x3Du);
        swift_arrayDestroy();

LABEL_7:

        return;
      }

      sub_100011908(v18);

      v46 = v21;
    }

    else
    {
      sub_1000118A4(a6, v15);
      sub_1000118A4(a6, v12);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000110B0(a1);

      v22 = sub_1004A4A54();
      v34 = sub_1004A6014();
      sub_10001114C(a1);

      if (os_log_type_enabled(v22, v34))
      {
        v35 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v53 = v49;
        *v35 = 68159491;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        v36 = *(v10 + 20);
        v48 = v34;
        v37 = &v12[v36];
        *(v35 + 10) = v12[v36];
        *(v35 + 11) = 2082;
        v38 = &v15[*(v10 + 20)];
        *(v35 + 13) = sub_10015BA6C(*(v38 + 1), *(v38 + 2), &v53);
        *(v35 + 21) = 1040;
        *(v35 + 23) = 2;
        *(v35 + 27) = 512;
        LOWORD(v37) = *(v37 + 12);
        sub_100011908(v12);
        *(v35 + 29) = v37;
        *(v35 + 31) = 2160;
        *(v35 + 33) = 0x786F626C69616DLL;
        *(v35 + 41) = 2085;
        v39 = *(v38 + 4);
        LODWORD(v37) = *(v38 + 10);

        sub_100011908(v15);
        v51 = v39;
        v52 = v37;
        v40 = sub_1004A5824();
        v42 = sub_10015BA6C(v40, v41, &v53);

        *(v35 + 43) = v42;
        *(v35 + 51) = 2082;
        v43 = ResponseText.debugDescription.getter(a1, v50, a3);
        v45 = sub_10015BA6C(v43, v44, &v53);

        *(v35 + 53) = v45;
        _os_log_impl(&_mh_execute_header, v22, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with BAD %{public}s.", v35, 0x3Du);
        swift_arrayDestroy();

        goto LABEL_7;
      }

      sub_100011908(v12);

      v46 = v15;
    }

    sub_100011908(v46);
  }
}

uint64_t sub_1001272B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127300(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v56 = swift_allocObject();
      sub_1000C9F38(a1);
      if ((v52 - 2501) < 0xFFFFFFFFFFFFFDA7 || (v53 - 13) < 0xFFFFFFFFFFFFFFF4 || (v54 - 32) < 0xFFFFFFFFFFFFFFE1)
      {
        goto LABEL_39;
      }

      *(v56 + 16) = v52;
      *(v56 + 24) = v53;
      result = v56 | 4;
      *(v56 + 32) = v54;
      return result;
    case 2uLL:
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = swift_allocObject();

      v34 = ByteBufferAllocator.buffer(string:)(v30, v31, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v36 = v35;
      v38 = v37;

      sub_1000C9F38(a1);
      *(v33 + 16) = v34;
      *(v33 + 24) = v36;
      *(v33 + 32) = v38;
      *(v33 + 36) = WORD2(v38);
      result = v33 | 0x1000000000000000;
      *(v33 + 38) = BYTE6(v38);
      return result;
    case 3uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v42 = swift_allocObject();

      v43 = ByteBufferAllocator.buffer(string:)(v39, v40, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v45 = v44;
      v47 = v46;

      sub_1000C9F38(a1);
      *(v42 + 16) = v43;
      *(v42 + 24) = v45;
      *(v42 + 32) = v47;
      *(v42 + 36) = WORD2(v47);
      *(v42 + 38) = BYTE6(v47);
      return v42 | 0x1000000000000004;
    case 4uLL:
      v22 = sub_100081D78(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 1);
      sub_1000C9F38(a1);
      return v22;
    case 5uLL:
      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v62 = swift_allocObject();

      v63 = ByteBufferAllocator.buffer(string:)(v59, v60, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v65 = v64;
      v67 = v66;

      sub_1000C9F38(a1);
      *(v62 + 16) = v63;
      *(v62 + 24) = v65;
      *(v62 + 32) = v67;
      *(v62 + 36) = WORD2(v67);
      result = v62 | 0x2000000000000000;
      *(v62 + 38) = BYTE6(v67);
      return result;
    case 6uLL:
      v69 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v70 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v73 = swift_allocObject();
      *(v73 + 16) = v69;
      *(v73 + 24) = v68;

      v74 = ByteBufferAllocator.buffer(string:)(v70, v71, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      LODWORD(v70) = v75;
      LODWORD(v71) = v76;
      v77 = HIDWORD(v75);
      v78 = HIDWORD(v76);
      v79 = HIWORD(v76);
      sub_1000C9F38(a1);
      *(v73 + 32) = v74;
      *(v73 + 40) = v70;
      *(v73 + 44) = v77;
      *(v73 + 48) = v71;
      *(v73 + 52) = v78;
      result = v73 | 0x6000000000000000;
      *(v73 + 54) = v79;
      return result;
    case 7uLL:
      v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = swift_allocObject();
      sub_1000C9E60(v48);
      v51 = sub_100127300(v48);
      sub_1000C9F38(a1);
      *(v50 + 16) = v51;
      return v50 | 0x7000000000000000;
    case 8uLL:
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v90 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v92 = swift_allocObject();
      sub_1000C9E60(v90);
      sub_1000C9E60(v89);
      *(v92 + 16) = sub_100127300(v89);
      v93 = sub_100127300(v90);
      sub_1000C9F38(a1);
      *(v92 + 24) = v93;
      return v92 | 0x7000000000000004;
    case 9uLL:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v27 = swift_allocObject();
      sub_1000C9F38(a1);
      if ((v23 - 2501) < 0xFFFFFFFFFFFFFDA7 || (v24 - 13) < 0xFFFFFFFFFFFFFFF4 || (v25 - 32) < 0xFFFFFFFFFFFFFFE1)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        JUMPOUT(0x100127C00);
      }

      *(v27 + 16) = v23;
      *(v27 + 24) = v24;
      *(v27 + 32) = v25;
      return v27 | 0x3000000000000004;
    case 0xAuLL:
      v80 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v83 = swift_allocObject();

      v84 = ByteBufferAllocator.buffer(string:)(v80, v81, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v86 = v85;
      v88 = v87;

      sub_1000C9F38(a1);
      *(v83 + 16) = v84;
      *(v83 + 24) = v86;
      *(v83 + 32) = v88;
      *(v83 + 36) = WORD2(v88);
      result = v83 | 0x4000000000000000;
      *(v83 + 38) = BYTE6(v88);
      return result;
    case 0xBuLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();

      v15 = ByteBufferAllocator.buffer(string:)(v11, v12, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v17 = v16;
      v19 = v18;

      sub_1000C9F38(a1);
      *(v14 + 16) = v15;
      *(v14 + 24) = v17;
      *(v14 + 32) = v19;
      *(v14 + 36) = WORD2(v19);
      result = v14 | 0x5000000000000000;
      *(v14 + 38) = BYTE6(v19);
      return result;
    case 0xCuLL:
      return *(&unk_1004D64D0 + ((a1 + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
    default:
      v1 = *(a1 + 16);
      v2 = *(a1 + 24);
      sub_1000C9E60(v1);
      v4 = sub_100127300(v1);
      sub_1000C9E60(v2);
      v5 = sub_100127300(v2);
      v6 = v5;
      if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0x18)
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v9 = swift_allocObject();
          v100 = v7;

          sub_100081AF4(v8);
          sub_1000B37D8(v6);
          v10 = v4;
LABEL_35:
          sub_1000B37D8(v10);
          sub_1000C9F38(a1);
          *(v9 + 16) = v100;
          return v9 | 0xC000000000000000;
        }

        v96 = swift_allocObject();
        sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v6;

        sub_1000B3664(v6);
        sub_100081AF4(inited);
        sub_1000B37D8(v6);
        sub_1000B37D8(v4);
        sub_1000C9F38(a1);
        *(v96 + 16) = v7;
        return v96 | 0xC000000000000000;
      }

      else
      {
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v9 = swift_allocObject();
          sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1004CEAA0;
          *(v94 + 32) = v4;
          v100 = v94;

          sub_100081AF4(v95);
          v10 = v6;
          goto LABEL_35;
        }

        v98 = swift_allocObject();
        sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1004D01D0;
        *(v99 + 32) = v4;
        *(v99 + 40) = v6;
        sub_1000C9F38(a1);
        *(v98 + 16) = v99;
        return v98 | 0xC000000000000000;
      }
  }
}

uint64_t sub_100127C34()
{

  return _swift_deallocObject(v0, 39, 7);
}

void *sub_100127C84(void *__dst, const void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(__dst, __src, __len);
  }

  __break(1u);
  return __dst;
}

uint64_t sub_100127CA0()
{
  sub_1000B37D8(*(v0 + 16));
  sub_1000B37D8(*(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100127CE0()
{
  sub_1000B37D8(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127D18()
{

  return _swift_deallocObject(v0, 55, 7);
}

uint64_t sub_100127D58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100127DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 1;
  }

  v12 = 0;
  v18 = a3;
  v20 = a3 & 0xFE00000000;
  v21 = a1 + 32;
  while (1)
  {
    v22 = v12;
    v13 = *(v21 + 8 * v12);
    if (v20 || v13 < v18)
    {
      break;
    }

LABEL_3:
    v12 = v22 + 1;
    if (v22 + 1 == v19)
    {
      return 1;
    }
  }

  v14 = 0;
  v15 = *(v23 + 16);
  while (v15 != v14)
  {
    sub_10000E268(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14++, v11, &qword_1005CE300, &qword_1004D0DE0);
    sub_100025FDC(v11, v8, &qword_1005CE300, &qword_1004D0DE0);
    v16 = *v8;
    sub_100025F40(v8 + *(v5 + 48), &qword_1005D05E0, &qword_1004D65C0);
    if (v16 == v13)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_100127F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v195 = a3;
  v196 = a1;
  v4 = sub_1004A5384();
  v192 = *(v4 - 8);
  v193 = v4;
  __chkstk_darwin(v4);
  v190 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v191);
  v188 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v189 = &v167 - v8;
  __chkstk_darwin(v9);
  v183 = &v167 - v10;
  __chkstk_darwin(v11);
  v184 = &v167 - v12;
  v13 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v185 = *(v13 - 8);
  v186 = v13;
  __chkstk_darwin(v13);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v167 - v17;
  __chkstk_darwin(v19);
  v21 = &v167 - v20;
  __chkstk_darwin(v22);
  v24 = &v167 - v23;
  __chkstk_darwin(v25);
  v27 = &v167 - v26;
  __chkstk_darwin(v28);
  v30 = &v167 - v29;
  __chkstk_darwin(v31);
  v33 = (&v167 - v32);
  v34 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v34 - 8);
  v36 = (&v167 - v35);
  v37 = sub_1004A4644();
  __chkstk_darwin(v37);
  __chkstk_darwin(v38);
  v40 = &v167 - v39;
  __chkstk_darwin(v41);
  __chkstk_darwin(v42);
  HIDWORD(v48) = -1431655765 * a2;
  LODWORD(v48) = -1431655765 * a2;
  if ((v48 >> 17) > 0x2AAA)
  {
    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error, byte_1004D65FC);
    swift_allocError();
    *v49 = a2;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v173 = v40;
  v174 = v36;
  v175 = v33;
  v178 = v27;
  v172 = v30;
  v176 = v47;
  v50 = v195;
  v170 = v24;
  v171 = v21;
  v177 = v46;
  v168 = v18;
  v169 = v15;
  v182 = &v167 - v44;
  v179 = v43;
  v180 = v45;
  v181 = a2;
  v51 = v196;
  if (_s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0() > 393216)
  {
    v52 = v189;
    sub_1000118A4(v50, v189);
    v53 = v188;
    sub_1000118A4(v50, v188);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v55 = v192;
    v54 = v193;
    v56 = v190;
    (v192[2].isa)(v190, v51, v193);
    v57 = sub_1004A4A54();
    v58 = sub_1004A6014();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v191;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v194 = v57;
      v62 = v52;
      v63 = v61;
      v195 = swift_slowAlloc();
      v201 = v195;
      *v63 = 68159747;
      LODWORD(v187) = v58;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v64 = v53 + *(v60 + 20);
      *(v63 + 10) = *v64;
      *(v63 + 11) = 2082;
      v65 = v62 + *(v60 + 20);
      *(v63 + 13) = sub_10015BA6C(*(v65 + 8), *(v65 + 16), &v201);
      *(v63 + 21) = 1040;
      *(v63 + 23) = 2;
      *(v63 + 27) = 512;
      v66 = *(v64 + 24);
      sub_100011908(v53);
      *(v63 + 29) = v66;
      *(v63 + 31) = 2160;
      *(v63 + 33) = 0x786F626C69616DLL;
      *(v63 + 41) = 2085;
      v67 = *(v65 + 32);
      LODWORD(v65) = *(v65 + 40);

      sub_100011908(v62);
      v197 = v67;
      LODWORD(v198) = v65;
      v68 = sub_1004A5824();
      v70 = sub_10015BA6C(v68, v69, &v201);

      *(v63 + 43) = v70;
      *(v63 + 51) = 2048;
      v71 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (v55[1].isa)(v56, v54);
      *(v63 + 53) = v71;
      *(v63 + 61) = 1024;
      *(v63 + 63) = 393216;
      v72 = v194;
      _os_log_impl(&_mh_execute_header, v194, v187, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Data length %ld > %u (segment length).", v63, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      (v55[1].isa)(v56, v54);
      sub_100011908(v53);

      sub_100011908(v52);
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error, byte_1004D65FC);
    swift_allocError();
    *v82 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    goto LABEL_17;
  }

  v73 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if ((v73 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v74 = v73;
  v36 = v194;
  a2 = v178;
  if (HIDWORD(v73))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v76 = v181;
  if (result >= 393216)
  {
    goto LABEL_32;
  }

  isa = v36[1].isa;
  if (!BYTE4(v36[1].isa))
  {
    if (!v74)
    {
      goto LABEL_32;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error, byte_1004D65FC);
    swift_allocError();
    v84 = v83;
    if (isa <= v76)
    {
      *v83 = isa;
      v83[1] = v76;
      goto LABEL_17;
    }

    v85 = *(sub_10000C9C0(&qword_1005D1108, &qword_1004D65C8) + 48);
    result = sub_100129238(v194->isa);
    if (!__CFADD__(v76, v74))
    {
      v86 = (v84 + v85);
      *v86 = v76;
      v86[1] = v76 + v74;
      goto LABEL_17;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  if (BYTE4(v36[1].isa) == 1)
  {
    if (v74)
    {
      v78 = v181 + v74;
      if (!__CFADD__(v181, v74))
      {
        if (isa < v78)
        {
          type metadata accessor for SegmentResequencer.Error(0);
          sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error, byte_1004D65FC);
          swift_allocError();
          v80 = v79;
          v81 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          *v80 = isa;
          *(v80 + 4) = v76;
          *(v80 + 8) = v81;
          goto LABEL_17;
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_74;
    }

    if (isa <= v181)
    {
      goto LABEL_32;
    }

    v87 = 1;
LABEL_30:
    v78 = v181;
    goto LABEL_31;
  }

  if (!v74)
  {
    v87 = v181 != 0;
    goto LABEL_30;
  }

  v78 = v181 + v74;
  if (__CFADD__(v181, v74))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_26:
  v87 = 0;
LABEL_31:
  LODWORD(v36[1].isa) = v78;
  BYTE4(v36[1].isa) = v87;
LABEL_32:
  v88 = v76 + v74;
  if (__CFADD__(v76, v74))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v33 = sub_1000860B4(0, *(v33 + 2) + 1, 1, v33);
    goto LABEL_38;
  }

  if (!v74)
  {
    goto LABEL_41;
  }

  v33 = v36->isa;
  sub_100129238(v36->isa);
  v89 = v76 + v74;
  if (sub_1004A4604())
  {
    v90 = v173;
    sub_1004A45C4();
    v91 = v177;
    sub_1004A45D4();
    v92 = v180;
    v196 = v88;
    v93 = *(v180 + 8);
    v94 = v90;
    v95 = v179;
    v93(v94, v179);
    v96 = v184;
    sub_1000118A4(v50, v184);
    v97 = v183;
    sub_1000118A4(v50, v183);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v98 = *(v92 + 16);
    v99 = v176;
    v180 = v92 + 16;
    v194 = v98;
    (v98)(v176, v91, v95);
    v100 = sub_1004A4A54();
    v101 = sub_1004A6014();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v201 = v195;
      *v102 = 68159747;
      LODWORD(v193) = v101;
      *(v102 + 4) = 2;
      *(v102 + 8) = 256;
      v103 = v191;
      v104 = v99;
      v105 = v97 + *(v191 + 20);
      *(v102 + 10) = *v105;
      *(v102 + 11) = 2082;
      v106 = *(v103 + 20);
      v192 = v100;
      v107 = v93;
      v108 = v97;
      v109 = v96;
      v110 = v96 + v106;
      *(v102 + 13) = sub_10015BA6C(*(v110 + 8), *(v110 + 16), &v201);
      *(v102 + 21) = 1040;
      *(v102 + 23) = 2;
      *(v102 + 27) = 512;
      v111 = *(v105 + 24);
      v112 = v108;
      v93 = v107;
      sub_100011908(v112);
      *(v102 + 29) = v111;
      *(v102 + 31) = 2160;
      *(v102 + 33) = 0x786F626C69616DLL;
      *(v102 + 41) = 2085;
      v113 = *(v110 + 32);
      LODWORD(v105) = *(v110 + 40);

      sub_100011908(v109);
      v197 = v113;
      LODWORD(v198) = v105;
      v114 = sub_1004A5824();
      v116 = sub_10015BA6C(v114, v115, &v201);

      *(v102 + 43) = v116;
      *(v102 + 51) = 2080;
      LODWORD(v107) = v181;
      v199 = v196;
      v200 = v181;
      v197 = 0;
      v198 = 0xE000000000000000;
      sub_1004A6934();
      v202._countAndFlagsBits = 3943982;
      v202._object = 0xE300000000000000;
      sub_1004A5994(v202);
      v117 = v107;
      sub_1004A6934();
      v118 = sub_10015BA6C(v197, v198, &v201);

      *(v102 + 53) = v118;
      *(v102 + 61) = 2080;
      sub_10012A548(&qword_1005D1110, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v119 = v179;
      v120 = sub_1004A6CE4();
      v122 = v121;
      v93(v104, v119);
      v123 = sub_10015BA6C(v120, v122, &v201);

      *(v102 + 63) = v123;
      v124 = v192;
      _os_log_impl(&_mh_execute_header, v192, v193, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received bytes in range %s -- some of which have previously been received: %s", v102, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v97);

      v93(v99, v179);
      sub_100011908(v96);
      v117 = v181;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error, byte_1004D65FC);
    swift_allocError();
    v151 = v150;
    v152 = (v150 + *(sub_10000C9C0(&qword_1005D1108, &qword_1004D65C8) + 48));
    v153 = v182;
    v154 = v179;
    (v194)(v151, v182, v179);
    v155 = v196;
    *v152 = v117;
    v152[1] = v155;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v93(v177, v154);
    return (v93)(v153, v154);
  }

  v126 = v192;
  v125 = v193;
  v127 = v174;
  (v192[2].isa)(v174, v196, v193);
  (v126[7].isa)(v127, 0, 1, v125);
  v128 = *(v186 + 48);
  v50 = v175;
  *v175 = v76;
  *(v50 + 4) = v89;
  sub_100025FDC(v127, v50 + v128, &qword_1005D05E0, &qword_1004D65C0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_38:
  v129 = v180;
  v130 = v185;
  v132 = *(v33 + 2);
  v131 = *(v33 + 3);
  if (v132 >= v131 >> 1)
  {
    v166 = sub_1000860B4((v131 > 1), v132 + 1, 1, v33);
    v129 = v180;
    v33 = v166;
  }

  (*(v129 + 8))();
  *(v33 + 2) = v132 + 1;
  result = sub_100025FDC(v50, v33 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v132, &qword_1005CE300, &qword_1004D0DE0);
  v36->isa = v33;
LABEL_41:
  if (BYTE4(v36[1].isa) != 1)
  {
    return result;
  }

  v133 = v36[1].isa;
  v134 = v36->isa;
  v135 = *(v36->isa + 2);
  if (!v135)
  {
    v143 = v194;
    if (v133)
    {
      return result;
    }

LABEL_58:
    LODWORD(v143[1].isa) = v133;
    BYTE4(v143[1].isa) = 0;
    return result;
  }

  LODWORD(v196) = v133;
  v136 = 0;
  v137 = v186;
  v138 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v195 = v134;
  v139 = v134 + v138;
  v140 = *(v185 + 72);
  v193 = v139;
  v141 = v172;
  do
  {
    v142 = v140;
    sub_10000E268(v139, v141, &qword_1005CE300, &qword_1004D0DE0);
    sub_100025FDC(v141, a2, &qword_1005CE300, &qword_1004D0DE0);
    if (*(a2 + 4) > v136)
    {
      v136 = *(a2 + 4);
    }

    result = sub_100025F40(a2 + *(v137 + 48), &qword_1005D05E0, &qword_1004D65C0);
    v140 = v142;
    v139 += v142;
    --v135;
  }

  while (v135);
  v133 = v196;
  v143 = v194;
  if (v136 == v196)
  {
    goto LABEL_58;
  }

  v144 = *(v195 + 16);
  if (!v144)
  {
    if (v196)
    {
      return result;
    }

LABEL_61:
    v156 = type metadata accessor for SegmentResequencer.Error(0);
    sub_10012A548(&qword_1005D1100, type metadata accessor for SegmentResequencer.Error, byte_1004D65FC);
    v194 = v156;
    v187 = swift_allocError();
    v192 = v157;
    v158 = *(v195 + 16);
    if (v158)
    {
      v159 = 0;
      v160 = v186;
      v161 = v169;
      v162 = v168;
      v163 = v193;
      do
      {
        sub_10000E268(v163, v162, &qword_1005CE300, &qword_1004D0DE0);
        sub_100025FDC(v162, v161, &qword_1005CE300, &qword_1004D0DE0);
        if (*(v161 + 4) > v159)
        {
          v159 = *(v161 + 4);
        }

        sub_100025F40(v161 + *(v160 + 48), &qword_1005D05E0, &qword_1004D65C0);
        v163 += v142;
        --v158;
      }

      while (v158);
    }

    else
    {
      v159 = 0;
    }

    v164 = v192;
    v165 = v196;
    LODWORD(v192->isa) = v159;
    HIDWORD(v164->isa) = v165;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v145 = 0;
  v146 = v193;
  v147 = v186;
  v148 = v171;
  v149 = v170;
  do
  {
    sub_10000E268(v146, v149, &qword_1005CE300, &qword_1004D0DE0);
    sub_100025FDC(v149, v148, &qword_1005CE300, &qword_1004D0DE0);
    if (*(v148 + 4) > v145)
    {
      v145 = *(v148 + 4);
    }

    result = sub_100025F40(v148 + *(v147 + 48), &qword_1005D05E0, &qword_1004D65C0);
    v146 += v142;
    --v144;
  }

  while (v144);
  if (v145 >= v196)
  {
    goto LABEL_61;
  }

  return result;
}