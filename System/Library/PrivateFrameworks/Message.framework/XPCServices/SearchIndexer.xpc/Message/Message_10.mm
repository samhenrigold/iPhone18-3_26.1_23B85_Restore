uint64_t sub_1000B2710(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v89 = v8 + 2;
    v90 = v8[2];
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v8[2 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1000B2CEC((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
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
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
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
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v42 = v8[2];
    v41 = v8[3];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_100085288((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v43;
    v44 = v8 + 4;
    v45 = &v8[2 * v42 + 4];
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
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
          v47 = v8[4];
          v48 = v8[5];
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[2 * v43];
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[2 * v46];
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v8[2 * v43];
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
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

        v84 = &v44[2 * v46 - 2];
        v85 = *v84;
        v86 = &v44[2 * v46];
        v87 = v86[1];
        sub_1000B2CEC((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > v8[2])
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = v8[2];
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove(&v44[2 * v46], v86 + 2, 16 * (v88 - 1 - v46));
        v8[2] = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[2 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[2 * v43];
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[2 * v46];
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
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

uint64_t sub_1000B2CEC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_1000B2F2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16) | (*(result + 18) << 16);
  if ((*(result + 16) & 0xFF00) == 0x200)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 8);
    *a2 = *result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v2 & 1;
    *(a2 + 17) = BYTE1(v2) & 1;
    *(a2 + 18) = BYTE2(v2);
  }

  return result;
}

uint64_t sub_1000B2F70(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v72 = a1 + 32;
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v7)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v33 = (v72 + 192 * v5);
    v34 = v33[9];
    v35 = v33[7];
    v68 = v33[8];
    v69 = v34;
    v36 = v33[9];
    v70[0] = v33[10];
    *(v70 + 9) = *(v33 + 169);
    v37 = v33[5];
    v38 = v33[3];
    v64 = v33[4];
    v65 = v37;
    v39 = v33[5];
    v40 = v33[7];
    v66 = v33[6];
    v67 = v40;
    v41 = v33[1];
    v60 = *v33;
    v61 = v41;
    v42 = v33[3];
    v44 = *v33;
    v43 = v33[1];
    v62 = v33[2];
    v63 = v42;
    *&v71[128] = v68;
    *&v71[144] = v36;
    *&v71[160] = v33[10];
    *&v71[169] = *(v33 + 169);
    *&v71[64] = v64;
    *&v71[80] = v39;
    *&v71[96] = v66;
    *&v71[112] = v35;
    *v71 = v44;
    *&v71[16] = v43;
    *&v71[32] = v62;
    *&v71[48] = v38;
    v14 = __OFADD__(v5++, 1);
    if (!v14)
    {
      UInt32.init(_:)(v71);
      sub_10000E268(&v60, &v48, &qword_1005CEF20, &qword_1004D1DF0);
      while (1)
      {
        v68 = *&v71[128];
        v69 = *&v71[144];
        v70[0] = *&v71[160];
        *(v70 + 9) = *&v71[169];
        v64 = *&v71[64];
        v65 = *&v71[80];
        v66 = *&v71[96];
        v67 = *&v71[112];
        v60 = *v71;
        v61 = *&v71[16];
        v62 = *&v71[32];
        v63 = *&v71[48];
        result = sub_1000B3948(&v60);
        if (result == 1)
        {
          return result;
        }

        v8 = *v71;
        v56 = *&v71[136];
        v57 = *&v71[152];
        v58 = *&v71[168];
        v59 = v71[184];
        v52 = *&v71[72];
        v53 = *&v71[88];
        v54 = *&v71[104];
        v55 = *&v71[120];
        v48 = *&v71[8];
        v49 = *&v71[24];
        v50 = *&v71[40];
        v51 = *&v71[56];
        v9 = *a3;
        v10 = sub_100067004();
        v12 = *(v9 + 16);
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = v11;
        if (*(v9 + 24) < v15)
        {
          break;
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v28 = v10;
        sub_10013A934();
        v10 = v28;
        if (v16)
        {
LABEL_9:
          v18 = *(*a3 + 56) + 184 * v10;
          v19 = *(v18 + 48);
          v21 = *v18;
          v20 = *(v18 + 16);
          v46[2] = *(v18 + 32);
          v46[3] = v19;
          v46[0] = v21;
          v46[1] = v20;
          v22 = *(v18 + 112);
          v24 = *(v18 + 64);
          v23 = *(v18 + 80);
          v46[6] = *(v18 + 96);
          v46[7] = v22;
          v46[4] = v24;
          v46[5] = v23;
          v26 = *(v18 + 144);
          v25 = *(v18 + 160);
          v27 = *(v18 + 128);
          v47 = *(v18 + 176);
          v46[9] = v26;
          v46[10] = v25;
          v46[8] = v27;
          *(v18 + 128) = v56;
          *(v18 + 144) = v57;
          *(v18 + 160) = v58;
          *(v18 + 176) = v59;
          *(v18 + 64) = v52;
          *(v18 + 80) = v53;
          *(v18 + 96) = v54;
          *(v18 + 112) = v55;
          *v18 = v48;
          *(v18 + 16) = v49;
          *(v18 + 32) = v50;
          *(v18 + 48) = v51;
          sub_10003E730(v46);
          goto LABEL_13;
        }

LABEL_11:
        v29 = *a3;
        *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v29[6] + 4 * v10) = v8;
        v30 = v29[7] + 184 * v10;
        *(v30 + 112) = v55;
        *(v30 + 96) = v54;
        *(v30 + 80) = v53;
        *(v30 + 64) = v52;
        *(v30 + 176) = v59;
        *(v30 + 160) = v58;
        *(v30 + 144) = v57;
        *(v30 + 128) = v56;
        *v30 = v48;
        *(v30 + 16) = v49;
        *(v30 + 32) = v50;
        *(v30 + 48) = v51;
        v31 = v29[2];
        v14 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v14)
        {
          goto LABEL_23;
        }

        v29[2] = v32;
LABEL_13:
        a2 = 1;
        v7 = v5 >= v6;
        if (v5 != v6)
        {
          goto LABEL_14;
        }

LABEL_17:
        sub_1000B395C(&v60);
        *&v71[128] = v68;
        *&v71[144] = v69;
        *&v71[160] = v70[0];
        *&v71[169] = *(v70 + 9);
        *&v71[64] = v64;
        *&v71[80] = v65;
        *&v71[96] = v66;
        *&v71[112] = v67;
        *v71 = v60;
        *&v71[16] = v61;
        v5 = v6;
        *&v71[32] = v62;
        *&v71[48] = v63;
      }

      sub_1000C3B80(v15, a2 & 1);
      v10 = sub_100067004();
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000B3374()
{

  sub_1000197E0((v0 + 72));

  return _swift_deallocObject(v0, 152, 7);
}

Swift::Int sub_1000B33E4(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = result;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(result + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v12 = a3 + 56;
LABEL_5:
  while (v9)
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

LABEL_7:
    v13 = *(*(v21 + 48) + (__clz(__rbit64(v9)) | (v5 << 6)));
    sub_1004A6E94();
    sub_1004A6EB4(v13);
    result = sub_1004A6F14();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v9 &= v9 - 1;
    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a3 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(v13);
      result = sub_1004A6F14();
      v18 = -1 << *(a3 + 32);
      v19 = result & ~v18;
      if ((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (*(*(a3 + 48) + v19) != v13)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }
  }

  do
  {
    v17 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v10)
    {
      return 1;
    }

    v9 = *(v6 + 8 * v17);
    ++v5;
  }

  while (!v9);
  v5 = v17;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1000B35D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B364C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1000B3664(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_1000B3720()
{
  result = qword_1005CF330;
  if (!qword_1005CF330)
  {
    result = swift_getWitnessTable(byte_1004D6434, &type metadata for SearchMailbox.SearchID, v0, v1);
    atomic_store(result, &qword_1005CF330);
  }

  return result;
}

uint64_t *sub_1000B3774(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000B37D8(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0x1FuLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1000B3894()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B38F4()
{
  result = qword_1005CF348;
  if (!qword_1005CF348)
  {
    result = swift_getWitnessTable(byte_1004CFF70, &_s11TaskIDValueVN, v0, v1);
    atomic_store(result, &qword_1005CF348);
  }

  return result;
}

uint64_t sub_1000B3948(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

double sub_1000B395C(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -2;
  return result;
}

uint64_t sub_1000B3A5C()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 160, 7);
}

void sub_1000B3ABC(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 39))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if (!*(v1 + 36))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 35))
  {
    v6 = 0;
  }

  sub_1000AEE38(*(v1 + 16), *(v1 + 24), ((v6 | (*(v1 + 33) << 8) | (*(v1 + 34) << 16) | v5 | v4 | v3) + v2) | *(v1 + 32), a1);
}

uint64_t sub_1000B3B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 47))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 46))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 45))
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if (!*(v1 + 44))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 43))
  {
    v6 = 0;
  }

  return sub_1000ABD5C(*(v1 + 16), *(v1 + 24), *(v1 + 32), ((v6 | (*(v1 + 41) << 8) | (*(v1 + 42) << 16) | v5 | v4 | v3) + v2) | *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1000B3BDC(uint64_t (*a1)(void, void, void, void, unint64_t))
{
  v2 = 0x100000000000000;
  if (!*(v1 + 55))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 54))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if (!*(v1 + 52))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 51))
  {
    v6 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), ((v6 | (*(v1 + 49) << 8) | (*(v1 + 50) << 16) | v5 | v4 | v3) + v2) | *(v1 + 48));
}

uint64_t sub_1000B3C78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v23 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 56) + 24 * v15);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 16);
    if (*(v16 + 17))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    result = a4(*(*(a3 + 48) + 4 * v15), v17, v18, v20 | v19);
    if (result)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_1000B1C78(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1000B1C78(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000B3DD8(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t, void))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000B3C78(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000B1710(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1000B4008()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 168, 7);
}

unint64_t sub_1000B4088()
{
  result = qword_1005CF3F0;
  if (!qword_1005CF3F0)
  {
    result = swift_getWitnessTable(byte_1004D1A74, &type metadata for FindPendingDownload.TaskIDValue, v0, v1);
    atomic_store(result, &qword_1005CF3F0);
  }

  return result;
}

uint64_t sub_1000B418C()
{

  sub_1000197E0((v0 + 72));

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_1000B422C()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 176, 7);
}

double sub_1000B4298(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000B4328()
{

  sub_1000197E0((v0 + 64));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_1000B4388()
{

  sub_1000197E0((v0 + 64));

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1000B4444()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1000B44AC()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_1000B451C()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_1000B458C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable(asc_1004D31B4, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B45E0()
{

  sub_1000197E0((v0 + 80));

  return _swift_deallocObject(v0, 184, 7);
}

void sub_1000B4658(uint64_t a1)
{
  if (!qword_1005CF5B0)
  {
    sub_10000DEFC(&unk_1005CF5B8, &unk_1004D27C0);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CF5B0);
    }
  }
}

void sub_1000B46DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_1000B4658(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000B4760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B479C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B47E8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1000B4820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B4888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B4940()
{
  result = qword_1005CF6A0;
  if (!qword_1005CF6A0)
  {
    result = swift_getWitnessTable(byte_1004D28E0, &_s12PriorityInfoVN, v0, v1);
    atomic_store(result, &qword_1005CF6A0);
  }

  return result;
}

Swift::Int sub_1000B4998()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000B4A10(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6ED4(v2);
  return sub_1004A6F14();
}

uint64_t sub_1000B4A68(__int16 a1)
{
  v2 = sub_1004A6F44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005CF6A8, &qword_1004D2958);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v14[7] = a1;
  sub_10000C9C0(&qword_1005CF6B0, &qword_1004D2960);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004D01D0;
  *(v9 + 32) = 0x696C696269736976;
  *(v9 + 40) = 0xEA00000000007974;
  *(v9 + 48) = a1 < 0;
  *(v9 + 72) = &_s11UserVisibleON;
  *(v9 + 80) = 0x797469726F697270;
  *(v9 + 88) = 0xE800000000000000;
  *(v9 + 120) = &_s12PriorityInfoV5OrderVN;
  *(v9 + 96) = a1 & 0x3FFF;
  v10 = enum case for Mirror.DisplayStyle.struct(_:);
  v11 = sub_1004A6F34();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return sub_1004A6F54();
}

uint64_t sub_1000B4CD4()
{
  if (*v0 == 0x3FFF)
  {
    return 0x656E6F6E2ELL;
  }

  else
  {
    return sub_1004A6CE4();
  }
}

void *sub_1000B4D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001638E4(_swiftEmptyArrayStorage);
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
LABEL_2:
  v8 = (v7 + 16 * v5);
  v9 = v5;
  while (v6 != v9)
  {
    v10 = v9;
    if (v9 >= v6)
    {
      goto LABEL_45;
    }

    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_46;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    if (v4[2])
    {
      sub_100063C84(*(v8 - 1), *v8);
      v9 = v10 + 1;
      v8 += 2;
      if (v13)
      {
        continue;
      }
    }

    v14 = v10;
    if (v10 >= 0x3FFFu)
    {
      v14 = 0x3FFF;
    }

    v15 = v14 | 0x8000;
    if (v10 < 0x10000)
    {
      v16 = v15;
    }

    else
    {
      v16 = -16385;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_100063C84(v11, v12);
    v20 = v4[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_49;
    }

    v24 = v19;
    if (v4[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v27 = v18;
      sub_10013B0F4();
      v18 = v27;
      if (v24)
      {
LABEL_19:
        v26 = v18;

        *(v4[7] + 2 * v26) = v16;
        goto LABEL_2;
      }
    }

    else
    {
      sub_1000C4A0C(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100063C84(v11, v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_51;
      }

LABEL_18:
      if (v24)
      {
        goto LABEL_19;
      }
    }

    v4[(v18 >> 6) + 8] |= 1 << v18;
    v28 = (v4[6] + 16 * v18);
    *v28 = v11;
    v28[1] = v12;
    *(v4[7] + 2 * v18) = v16;
    v29 = v4[2];
    v22 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v22)
    {
      goto LABEL_50;
    }

    v4[2] = v30;
    goto LABEL_2;
  }

  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v36 = 0;
  while (v33)
  {
LABEL_33:
    v40 = (*(a1 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
    v41 = *v40;
    v42 = v40[1];

    sub_1000B5158(v35, 0);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v38 = sub_100063C84(v41, v42);
    v45 = v4[2];
    v46 = (v44 & 1) == 0;
    v22 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v22)
    {
      goto LABEL_47;
    }

    v48 = v44;
    if (v4[3] < v47)
    {
      sub_1000C4A0C(v47, v43);
      v38 = sub_100063C84(v41, v42);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      if (v48)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v43)
    {
      goto LABEL_38;
    }

    v53 = v38;
    sub_10013B0F4();
    v38 = v53;
    if (v48)
    {
LABEL_26:
      v37 = v38;

      v38 = v37;
      goto LABEL_27;
    }

LABEL_39:
    v4[(v38 >> 6) + 8] |= 1 << v38;
    v50 = (v4[6] + 16 * v38);
    *v50 = v41;
    v50[1] = v42;
    *(v4[7] + 2 * v38) = -16385;
    v51 = v4[2];
    v22 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v22)
    {
      goto LABEL_48;
    }

    v4[2] = v52;
LABEL_27:
    v33 &= v33 - 1;
    *(v4[7] + 2 * v38) &= ~0x8000u;
    v35 = sub_1000B4D88;
  }

  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v34)
    {

      sub_1000B5158(v35, 0);
      return v4;
    }

    v33 = *(a1 + 56 + 8 * v39);
    ++v36;
    if (v33)
    {
      v36 = v39;
      goto LABEL_33;
    }
  }

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
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000B5158(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000B5190()
{
  result = qword_1005CF6B8;
  if (!qword_1005CF6B8)
  {
    result = swift_getWitnessTable(byte_1004D29D4, &_s12PriorityInfoV5OrderVN, v0, v1);
    atomic_store(result, &qword_1005CF6B8);
  }

  return result;
}

__n128 sub_1000B5204(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000B5228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_1000B5270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000B52D4()
{
  result = _swiftEmptySetSingleton;
  if (v0[3])
  {
    v2 = *v0;
    v8 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 184;
      do
      {
        if (*(*v4 + 16))
        {
          v5 = *(v4 - 128);
          v6 = *(v4 - 136);

          sub_100088220(&v7, v6, v5);
        }

        v4 += 176;
        --v3;
      }

      while (v3);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1000B537C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = *(a1 + 16);
  sub_1000920E8(0, v1, 0);
  v3 = a1 + 64;
  result = sub_1004A6554();
  v5 = v22;
  v6 = 0;
  v7 = *(a1 + 36);
  v23 = v7;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = result;
      sub_1000920E8((v12 > 1), v13 + 1, 1);
      v5 = v22;
      v7 = v23;
      result = v21;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_24;
    }

    v14 = *(v3 + 8 * v9);
    if ((v14 & v10) == 0)
    {
      goto LABEL_25;
    }

    if (v7 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 72 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_100020944(result, v23, 0);
          v5 = v22;
          v7 = v23;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v23, 0);
      v5 = v22;
      v7 = v23;
    }

LABEL_4:
    ++v6;
    result = v8;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000B55B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  if (*(v5 + 24) != 1)
  {
    goto LABEL_17;
  }

  v16 = *(*v5 + 16);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = 0;
  while (1)
  {
    v18 = (*v5 + 32 + 176 * v17);
    if (v18[1] == a2)
    {
      v19 = *v18;
      v20 = *(*v18 + 16);
      if (v20 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v17 == v16)
    {
      goto LABEL_17;
    }
  }

  if (v20)
  {
    v21 = v19 == a1;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
LABEL_15:
    v24 = v18[12];
    if (v24)
    {
      v25 = v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v26 = _s13SelectedStateV7WrappedVMa(0);
      v27 = v25 + *(v26 + 20);
      if ((*(v27 + 20) & 1) == 0)
      {
        v37 = *(v27 + 16);
        v38 = v5[3];
        v67 = v5[2];
        v68[0] = v38;
        *(v68 + 12) = *(v5 + 60);
        v39 = v5[1];
        v65 = *v5;
        v66 = v39;
        __chkstk_darwin(v26);
        *(&v53 - 2) = a3;
        v40 = sub_1000B7718(a1, a2, sub_1000CBAF8);
        v41 = sub_10000C9C0(&qword_1005CF7A0, &qword_1004D2CB8);
        v59[3] = v41;
        v42 = sub_1000CBB00(&qword_1005CF7A8, &qword_1005CF7A0, &qword_1004D2CB8);
        v43 = _swiftEmptyArrayStorage;
        if (v40)
        {
          v43 = v40;
        }

        v59[4] = v42;
        v59[0] = v43;
        v44 = sub_10002587C(v59, v41);
        v45 = __chkstk_darwin(v44);
        v47 = (&v53 - v46);
        (*(v48 + 16))(&v53 - v46, v45);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v49 = sub_1000B3774(v56);
        *v49 = *v47;
        v49[1] = 0;
        sub_100025928(v56, AssociatedTypeWitness);
        sub_1004A6414();
        v50 = v55;
        if (v55 >> 60 != 15)
        {
          v51 = v54;
          do
          {
            v52 = static MonotonicTime.now()();
            v60[0] = v51;
            v60[1] = v50;
            v61 = v37;
            v62 = a1;
            v63 = a2;
            v64 = v52;

            sub_1000CBB54(v51, v50);
            sub_1000391F0(v60);
            sub_100014D40(v51, v50);

            sub_1000CBB68(v51, v50);
            sub_100025928(v56, AssociatedTypeWitness);
            sub_1004A6414();
            v51 = v54;
            v50 = v55;
          }

          while (v55 >> 60 != 15);
        }

        sub_1000197E0(v56);
        sub_1000197E0(v59);
        return;
      }
    }

LABEL_17:
    sub_1000CBB98(a4, v15, type metadata accessor for MailboxTaskLogger);
    sub_1000CBB98(a4, v12, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v28 = sub_1004A4A54();
    v29 = sub_1004A6014();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v30 = 0x204100703;
      *(v30 + 8) = 256;
      v31 = &v12[*(v10 + 20)];
      *(v30 + 10) = *v31;
      *(v30 + 11) = 2082;
      v32 = &v15[*(v10 + 20)];
      *(v30 + 13) = sub_10015BA6C(*(v32 + 1), *(v32 + 2), v60);
      *(v30 + 21) = 1040;
      *(v30 + 23) = 2;
      *(v30 + 27) = 512;
      LOWORD(v31) = *(v31 + 12);
      sub_1000CBC00(v12, type metadata accessor for MailboxTaskLogger);
      *(v30 + 29) = v31;
      *(v30 + 31) = 2160;
      *(v30 + 33) = 0x786F626C69616DLL;
      *(v30 + 41) = 2085;
      v33 = *(v32 + 4);
      LODWORD(v31) = *(v32 + 10);

      sub_1000CBC00(v15, type metadata accessor for MailboxTaskLogger);
      *&v65 = v33;
      DWORD2(v65) = v31;
      v34 = sub_1004A5824();
      v36 = sub_10015BA6C(v34, v35, v60);

      *(v30 + 43) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Trying to add message-to-skip, but mailbox has no UID validity.", v30, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000CBC00(v12, type metadata accessor for MailboxTaskLogger);

      sub_1000CBC00(v15, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  v22 = (v19 + 32);
  v23 = (a1 + 32);
  while (v20)
  {
    if (*v22 != *v23)
    {
      goto LABEL_4;
    }

    ++v22;
    ++v23;
    if (!--v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1000B5C3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v25 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v25);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(a1 + 48) + (v12 | (v10 << 6)));
      v15 = sub_10012CCA4(v28, v26);
      if (*(v14 + 96))
      {
        break;
      }

      v15(v28, 0);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v16 = v14;
    v29 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = *(v16 + 96);
      v18 = a1;
      v19 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v20 = v17 + v19;
      a1 = v18;
      v21 = v24;
      sub_1000CBB98(v20, v24, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v22 = swift_allocObject();
      sub_1000CBC60(v21, v22 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      *(v16 + 96) = v22;
    }

    swift_beginAccess();
    sub_10013FC9C(v13);
    swift_endAccess();
    v29(v28, 0);
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1000B5EB4(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0;

LABEL_4:
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(v3 + 48) + ((v9 << 10) | (16 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = v2[1];
    v16 = v15 + 32;
    v17 = *(v15 + 16);
    if (*v2)
    {
      v18 = sub_10015C0B4(v13, v14, v16, v17, (*v2 + 16), *v2 + 32);
      if ((v20 & 1) == 0)
      {
        v21 = v18;
        v58 = v14;
        v66 = v13;
        v24 = v2;
        v23 = *v2;
        v22 = v24[1];
        v25 = *(v22 + 16);
        if (v23)
        {
          v26 = v19;
          swift_beginAccess();
          if ((*(v23 + 16) & 0x3FLL) == (*(v23 + 24) & 0x3FLL))
          {
            v2 = a2;
            if (v25)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v2 = a2;
            if (v25 > sub_1004A4764())
            {
LABEL_14:

              isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
              v28 = *v2;
              if ((isUniquelyReferenced_native & 1) == 0)
              {
                if (!v28)
                {
                  goto LABEL_60;
                }

                v29 = sub_1004A4774();

                *a2 = v29;
                v28 = v29;
                v2 = a2;
              }

              if (!v28)
              {
                goto LABEL_59;
              }

              sub_100189788(v26, (v28 + 16), v28 + 32, v2);
              v30 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_57;
              }

              if (v30 < v21)
              {
                goto LABEL_58;
              }

              sub_100189B48(v21, v30, v22, (v28 + 16), v28 + 32);
              sub_100189494(v21);
              goto LABEL_46;
            }
          }

          v13 = v66;
        }

        else
        {
          v2 = a2;
          v13 = v66;
          if (v25)
          {
LABEL_33:
            v66 = v13;

            sub_100189494(v21);
            goto LABEL_47;
          }
        }

        v66 = v13;

        sub_100189494(v21);
        v36 = *v2;
        if (*v2)
        {
          swift_beginAccess();
          v37 = *(v36 + 24) & 0x3FLL;
        }

        else
        {
          v37 = 0;
        }

        v38 = v2[1];
        if (v37 || *(v38 + 16) >= 0x10uLL)
        {
          v39 = sub_1004A4784();
          if (v37 <= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v37;
          }

          v41 = sub_1001882D4(v38, v40, 0, v37);

          v2 = a2;
          *a2 = v41;
        }

        else
        {

          v2 = a2;
          *a2 = 0;
        }

LABEL_46:
        v3 = v56;
LABEL_47:

        v42 = v2[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_100141AFC(v42);
        }

        v43 = *(v42 + 2);
        if (v21 >= v43)
        {
          goto LABEL_56;
        }

        v44 = v43 - 1;
        v45 = &v42[176 * v21];
        v46 = *(v45 + 2);
        v47 = *(v45 + 4);
        v60[1] = *(v45 + 3);
        v60[2] = v47;
        v60[0] = v46;
        v48 = *(v45 + 5);
        v49 = *(v45 + 6);
        v50 = *(v45 + 8);
        v60[5] = *(v45 + 7);
        v61 = v50;
        v60[3] = v48;
        v60[4] = v49;
        v51 = *(v45 + 9);
        v52 = *(v45 + 10);
        v53 = *(v45 + 12);
        v64 = *(v45 + 11);
        v65 = v53;
        v62 = v51;
        v63 = v52;
        memmove(v45 + 32, v45 + 208, 176 * (v44 - v21));
        *(v42 + 2) = v44;
        v2[2] = v42;
        v54 = v61;

        sub_10000E0E8(v60);
        if (v54)
        {

          v55 = v66;

          sub_100088220(&v59, v55, v58);
        }
      }
    }

    else if (v17)
    {
      v21 = 0;
      while (1)
      {
        v31 = (v16 + 16 * v21);
        if ((v31[2] | (v31[2] << 32)) == (v14 | (v14 << 32)))
        {
          v32 = *v31;
          v33 = *(*v31 + 16);
          if (v33 == *(v13 + 16))
          {
            if (!v33 || v32 == v13)
            {
LABEL_31:
              v58 = *(v12 + 8);
              goto LABEL_33;
            }

            v34 = (v32 + 32);
            v35 = (v13 + 32);
            while (*v34 == *v35)
            {
              ++v34;
              ++v35;
              if (!--v33)
              {
                goto LABEL_31;
              }
            }
          }
        }

        if (++v21 == v17)
        {
          goto LABEL_4;
        }
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
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
}

uint64_t sub_1000B631C(uint64_t result, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == result;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = a3;
      sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v4(v16 + 176 * v8 + 72);
        result = sub_100020D58(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (result + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B649C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = *(*v3 + 16);
    if (!v6)
    {
LABEL_19:
      *v3 = v4;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v7 = result;
    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = (v4 + 32 + 176 * v8);
      if (v10[1] == a3)
      {
        v11 = *v10;
        v12 = *(*v10 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v6)
      {
        goto LABEL_19;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v4);
    v16 = result;
LABEL_16:
    if (v8 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = v16 + 176 * v8;

      v18 = sub_1000CA1B0((v17 + 184), v7);

      v19 = *(*(v17 + 184) + 16);
      if (v19 >= v18)
      {
        sub_1001649C0(v18, v19);

        result = sub_100020D58(v4, v5, v9, 1);
        v4 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6658(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a2)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(result + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == result;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = a3;
      v5 = a4;
      sub_100020D10(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10009C364(v6, v5);
        result = sub_100020D58(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (result + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B67CC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(*v3 + 16);
    if (!v7)
    {
LABEL_18:
      *v3 = v5;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      return result;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = v5 + 32 + 176 * v8;
      if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v8 == v7)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
      v13 = v11 == a2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_15:
      v4 = result;
      sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if (result)
      {
LABEL_16:
        if (v8 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10009C45C(v4);
        result = sub_100020D58(v5, v6, v9, 1);
        v5 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = (v11 + 32);
      v15 = (a2 + 32);
      while (v12)
      {
        if (*v14 != *v15)
        {
          goto LABEL_4;
        }

        ++v14;
        ++v15;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v5);
    v16 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B693C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (a1[3])
  {
    if (a2[3])
    {

      return sub_1000FFEE8(v4, v5);
    }

    return 0;
  }

  if (a2[3])
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2[2];
  v10 = a1[1];
  v9 = a1[2];
  if ((sub_10011442C(v4, v5) & 1) == 0 || (sub_1000FFCF4(v10, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_1000FFDEC(v9, v7);
}

uint64_t sub_1000B69F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 12) = *(a1 + 60);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 12) = *(a2 + 60);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1000C9B9C(v7, v9) & 1;
}

void *sub_1000B6A4C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = sub_100163C74(_swiftEmptyArrayStorage);
  if ((v2 & 1) == 0)
  {
    return v3;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  v6 = v1 + 32;
  while (2)
  {
    v7 = (v6 + 176 * v5);
    for (i = v5; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = *v7;
      v10 = v7[2];
      v49 = v7[1];
      v50 = v10;
      v48 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v53 = v7[5];
      v54 = v13;
      v51 = v11;
      v52 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v57 = v7[9];
      v58 = v16;
      v55 = v14;
      v56 = v15;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      v17 = *(v57 + 16);
      if (v17)
      {
        break;
      }

      v7 += 11;
      if (v5 == v4)
      {
        return v3;
      }
    }

    LOBYTE(v18) = *(v57 + 64);
    v19 = v17 - 1;
    if (v17 != 1)
    {
      if (v17 < 3)
      {
        v20 = 1;
        goto LABEL_23;
      }

      v20 = v19 | 1;
      v21 = (v57 + 144);
      v22 = v19 & 0xFFFFFFFFFFFFFFFELL;
      LOBYTE(v23) = *(v57 + 64);
      do
      {
        v24 = *(v21 - 40);
        v26 = *v21;
        v21 += 80;
        v25 = v26;
        if (v18 <= v24)
        {
          v18 = v24;
        }

        else
        {
          v18 = v18;
        }

        v23 = v23;
        if (v23 <= v25)
        {
          v23 = v25;
        }

        v22 -= 2;
      }

      while (v22);
      if (v18 <= v23)
      {
        LOBYTE(v18) = v23;
      }

      if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_23:
        v27 = v17 - v20;
        v28 = (v57 + 40 * v20 + 64);
        do
        {
          v30 = *v28;
          v28 += 40;
          v29 = v30;
          if (v18 <= v30)
          {
            LOBYTE(v18) = v29;
          }

          --v27;
        }

        while (v27);
      }
    }

    v31 = v49;
    v32 = DWORD2(v49);
    sub_10000E08C(&v48, &v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    v34 = sub_100063B5C(v31, v32);
    v36 = v3[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_41;
    }

    v40 = v35;
    if (v3[3] < v39)
    {
      sub_1000C4CA8(v39, isUniquelyReferenced_nonNull_native, &qword_1005CF6C0, &qword_1004D2B18);
      v34 = sub_100063B5C(v31, v32);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_43;
      }

LABEL_32:
      v3 = v47;
      if (v40)
      {
        goto LABEL_33;
      }

LABEL_35:
      v3[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v3[6] + 16 * v34;
      *v43 = v31;
      *(v43 + 8) = v32;
      *(v3[7] + v34) = v18;
      v44 = v3[2];
      v38 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v38)
      {
        v3[2] = v45;

        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v42 = v34;
    sub_10013B25C();
    v34 = v42;
    v3 = v47;
    if ((v40 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    *(v3[7] + v34) = v18;
LABEL_37:
    sub_10000E0E8(&v48);
    if (v5 != v4)
    {
      continue;
    }

    return v3;
  }
}

void *sub_1000B6D14(uint64_t a1)
{
  if ((v1[24] & 1) == 0)
  {

    return sub_100163DA8(_swiftEmptyArrayStorage);
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = 0;
  v5 = v2 + 32;
  v6 = _swiftEmptyDictionarySingleton;
  v39 = v2 + 32;
  while (2)
  {
    v40 = v6;
    v7 = (v5 + 176 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 = *v7;
      v10 = v7[2];
      v44 = v7[1];
      v45 = v10;
      v43 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v48 = v7[5];
      v49 = v13;
      v46 = v11;
      v47 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v52 = v7[9];
      v53 = v16;
      v50 = v14;
      v51 = v15;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v17 = DWORD2(v44);
      v19 = *(&v43 + 1);
      v18 = v44;
      v20 = v43;
      v21 = v48;
      v22 = *(&v47 + 1);
      sub_10000E08C(&v43, &v42);
      if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v22, v21, a1, 0))
      {
        break;
      }

      sub_10000E0E8(&v43);
      v7 += 11;
      if (v4 == v3)
      {
        return v40;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v40;
    v24 = sub_100063C84(v20, v19);
    v26 = v40[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = v25;
    if (v40[3] < v29)
    {
      sub_1000C2A74(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_100063C84(v20, v19);
      v5 = v39;
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }

LABEL_15:
      v6 = v42;
      if (v30)
      {
        goto LABEL_16;
      }

LABEL_18:
      v6[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v6[6] + 16 * v24);
      *v34 = v20;
      v34[1] = v19;
      v35 = v6[7] + 16 * v24;
      *v35 = v18;
      *(v35 + 8) = v17;

      sub_10000E0E8(&v43);
      v36 = v6[2];
      v28 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v28)
      {
        v6[2] = v37;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v5 = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v33 = v24;
    sub_100139FEC();
    v24 = v33;
    v6 = v42;
    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v32 = v6[7] + 16 * v24;
    *v32 = v18;
    *(v32 + 8) = v17;

    sub_10000E0E8(&v43);
LABEL_20:
    if (v4 != v3)
    {
      continue;
    }

    return v6;
  }
}

void *sub_1000B6FCC()
{
  if ((v0[24] & 1) == 0)
  {

    return sub_100163EF4(_swiftEmptyArrayStorage);
  }

  v1 = *(*v0 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v3 = *v0 + 32;
  v4 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    v5 = (v3 + 176 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *v5;
      v8 = v5[2];
      v42 = v5[1];
      v43 = v8;
      v41 = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v46 = v5[5];
      v47 = v11;
      v44 = v9;
      v45 = v10;
      v12 = v5[7];
      v13 = v5[8];
      v14 = v5[10];
      v50 = v5[9];
      v51 = v14;
      v48 = v12;
      v49 = v13;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v15 = *(&v45 + 1);
      if (*(&v45 + 1) >= 3uLL)
      {
        break;
      }

      v5 += 11;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v38 = v3;
    v16 = v46;
    v39 = DWORD2(v42);
    v17 = *(&v41 + 1);
    v18 = v42;
    v19 = v41;
    sub_10000E08C(&v41, &v40);
    v20 = v16;
    sub_1000CA1A0(v15);
    v21 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v4;
    v23 = sub_100063C84(v19, v17);
    v25 = v4[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v23;
        sub_10013B3D0();
        v23 = v36;
      }
    }

    else
    {
      sub_1000C4F48(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_100063C84(v19, v17);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_31;
      }
    }

    v4 = v40;
    if ((v29 & 1) == 0)
    {
      v40[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v4[6] + 16 * v23);
      *v32 = v19;
      v32[1] = v17;
      v33 = v4[7] + 32 * v23;
      *v33 = v15;
      *(v33 + 8) = v20;
      *(v33 + 16) = v21;
      *(v33 + 24) = v39;

      sub_10000E0E8(&v41);
      v34 = v4[2];
      v27 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v27)
      {
        v4[2] = v35;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v31 = v40[7] + 32 * v23;
    *v31 = v15;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(v31 + 24) = v39;

    sub_10000E0E8(&v41);
LABEL_20:
    v3 = v38;
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_1000B7288(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = (v5 + 32 + 176 * v7);
    if (v10[1] == a2)
    {
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_100020D58(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000B7400(uint64_t a1, unsigned int a2, void (*a3)(uint64_t))
{
  if (*(v3 + 24) != 1)
  {
    return 1;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (1)
  {
    v10 = v5 + 32 + 176 * v7;
    if ((*(v10 + 24) | (*(v10 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v11 = *(v10 + 16);
      v12 = *(v11 + 16);
      if (v12 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 1;
    }
  }

  if (v12)
  {
    v13 = v11 == a1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_15:
    v4 = a3;
    sub_100020D10(*v3, *(v3 + 8), *(v3 + 16), 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = v5;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = (v11 + 32);
    v15 = (a1 + 32);
    while (v12)
    {
      if (*v14 != *v15)
      {
        goto LABEL_4;
      }

      ++v14;
      ++v15;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v5);
  v17 = result;
LABEL_16:
  if (v7 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v4(v17 + 176 * v7 + 32);
    sub_100020D58(v5, v8, v9, 1);
    result = 0;
    *v3 = v17;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000B7584(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 24) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[2];
  while (1)
  {
    v12 = v6 + 32 + 176 * v8;
    if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      return 0;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_15:
    v5 = a4;
    v4 = a3;
    sub_100020D10(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_4;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = v19 + 176 * v8;
    v21 = *(v5 + 16);
    *(v20 + 64) = *v5;
    *(v20 + 80) = v21;
    *(v20 + 96) = *(v5 + 32);
    v22 = *(v20 + 32);

    sub_100020D58(v6, v9, v11, 1);
    result = v22;
    *v4 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v4 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000B7718(uint64_t result, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  if ((v3[24] & 1) == 0)
  {
    return 0;
  }

  v4 = *(*v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3 + 32 + 176 * v5;
    if (*(v6 + 8) == a2)
    {
      v7 = *v6;
      v8 = *(*v6 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *v6;
    v13 = *(v6 + 32);
    v22[1] = *(v6 + 16);
    v22[2] = v13;
    v22[0] = v12;
    v14 = *(v6 + 48);
    v15 = *(v6 + 64);
    v16 = *(v6 + 96);
    v22[5] = *(v6 + 80);
    v22[6] = v16;
    v22[3] = v14;
    v22[4] = v15;
    v17 = *(v6 + 112);
    v18 = *(v6 + 128);
    v19 = *(v6 + 160);
    v22[9] = *(v6 + 144);
    v22[10] = v19;
    v22[7] = v17;
    v22[8] = v18;
    sub_10000E08C(v22, v21);
    a3(v21, v22);
    sub_10000E0E8(v22);
    return v21[0];
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B7840(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 | (a2 << 32);
  while (1)
  {
    v6 = *a3 + 32 + 176 * v4;
    if ((*(v6 + 24) | (*(v6 + 24) << 32)) == v5)
    {
      v7 = *(v6 + 16);
      v8 = *(v7 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *(v6 + 172);

    return v12;
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B7930(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *a3 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_15:
    if (*(v5 + 168) > 1u)
    {
      return 0;
    }

    else
    {
      return *(v5 + 160);
    }
  }

  else
  {
    v9 = (v6 + 32);
    v10 = (result + 32);
    while (v7)
    {
      if (*v9 != *v10)
      {
        goto LABEL_4;
      }

      ++v9;
      ++v10;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000B7A20()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 168;
      do
      {
        v3 += 176;

        sub_1000809B8(v4);
        --v2;
      }

      while (v2);
    }

    v6 = v0[4];
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    if (v9)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        do
        {
LABEL_17:
          v9 &= v9 - 1;

          sub_1000809B8(v13);
        }

        while (v9);
        continue;
      }
    }

    sub_100155648(_swiftEmptySetSingleton, _swiftEmptySetSingleton);
  }

  else
  {

    sub_1000CC16C(v5);
  }
}

BOOL sub_1000B7BA4()
{
  v1 = *v0;
  if ((v0[3] & 1) == 0)
  {
    return *(v1 + 16) != 0;
  }

  if (*(v0[4] + 16))
  {
    return 1;
  }

  v3 = (v1 + 168);
  v4 = *(v1 + 16) + 1;
  do
  {
    result = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v5 = *v3;
    v3 += 22;
  }

  while (!*(v5 + 16));
  return result;
}

uint64_t sub_1000B7BFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v63 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v63);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  sub_1000CBB98(a2, &v60 - v17, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v19 = sub_1004A4A54();
  v20 = sub_1004A6034();
  v21 = os_log_type_enabled(v19, v20);
  v61 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 68158208;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v23 = v18[*(v63 + 20)];
    sub_1000CBC00(v18, type metadata accessor for State.Logger);
    *(v22 + 10) = v23;
    *(v22 + 11) = 2048;
    *(v22 + 13) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, "[%.*hhx] Received %ld locally known mailboxes.", v22, 0x15u);
  }

  else
  {
    sub_1000CBC00(v18, type metadata accessor for State.Logger);
  }

  sub_1000B851C(a1, a2);
  v25 = sub_1000B8780(v24, a2);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = sub_100163B3C(_swiftEmptyArrayStorage);

  *(v3 + 32) = v32;
  v33 = v62;
  if (v25[2])
  {
    sub_1000CBB98(a2, v15, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v34 = sub_1004A4A54();
    v35 = sub_1004A6034();
    if (!os_log_type_enabled(v34, v35))
    {
      sub_1000CBC00(v15, type metadata accessor for State.Logger);

      if (!*(v27 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v36 = swift_slowAlloc();
    v60 = v31;
    v37 = v36;
    *v36 = 68158208;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v38 = v12;
    v39 = v15[*(v63 + 20)];
    sub_1000CBC00(v15, type metadata accessor for State.Logger);
    *(v37 + 10) = v39;
    v12 = v38;
    v33 = v62;
    *(v37 + 11) = 2048;
    *(v37 + 13) = v25[2];

    _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx] Added %ld locally known mailboxes.", v37, 0x15u);
    v31 = v60;
  }

  if (!*(v27 + 16))
  {
LABEL_12:
    if (!*(v29 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_10:
  sub_1000CBB98(a2, v12, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v40 = sub_1004A4A54();
  v41 = sub_1004A6034();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 68158208;
    *(v42 + 4) = 2;
    *(v42 + 8) = 256;
    v43 = v12;
    v44 = v33;
    v45 = v31;
    v46 = *(v43 + *(v63 + 20));
    sub_1000CBC00(v43, type metadata accessor for State.Logger);
    *(v42 + 10) = v46;
    v31 = v45;
    v33 = v44;
    *(v42 + 11) = 2048;
    *(v42 + 13) = *(v27 + 16);

    _os_log_impl(&_mh_execute_header, v40, v41, "[%.*hhx] Removed %ld locally known mailboxes.", v42, 0x15u);

    goto LABEL_12;
  }

  sub_1000CBC00(v12, type metadata accessor for State.Logger);

  if (!*(v29 + 16))
  {
    goto LABEL_17;
  }

LABEL_15:
  v47 = v61;
  sub_1000CBB98(a2, v61, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v48 = sub_1004A4A54();
  v49 = sub_1004A6034();
  if (!os_log_type_enabled(v48, v49))
  {
    sub_1000CBC00(v47, type metadata accessor for State.Logger);

    if (!*(v31 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v50 = swift_slowAlloc();
  *v50 = 68158208;
  *(v50 + 4) = 2;
  *(v50 + 8) = 256;
  v51 = *(v63 + 20);
  v62 = a2;
  v52 = v33;
  v53 = v31;
  v54 = *(v47 + v51);
  sub_1000CBC00(v47, type metadata accessor for State.Logger);
  *(v50 + 10) = v54;
  v31 = v53;
  v33 = v52;
  a2 = v62;
  *(v50 + 11) = 2048;
  *(v50 + 13) = *(v29 + 16);

  _os_log_impl(&_mh_execute_header, v48, v49, "[%.*hhx] Updated %ld locally known mailboxes.", v50, 0x15u);

LABEL_17:
  if (!*(v31 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_1000CBB98(a2, v33, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v55 = sub_1004A4A54();
  v56 = sub_1004A6034();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 68158208;
    *(v57 + 4) = 2;
    *(v57 + 8) = 256;
    v58 = *(v33 + *(v63 + 20));
    sub_1000CBC00(v33, type metadata accessor for State.Logger);
    *(v57 + 10) = v58;
    *(v57 + 11) = 2048;
    *(v57 + 13) = *(v29 + 16);

    _os_log_impl(&_mh_execute_header, v55, v56, "[%.*hhx] Need to de-select %ld locally known mailboxes.", v57, 0x15u);
  }

  else
  {
    sub_1000CBC00(v33, type metadata accessor for State.Logger);
  }

LABEL_23:

  return v31;
}

void sub_1000B851C(uint64_t a1, uint64_t a2)
{
  v33 = _swiftEmptySetSingleton;
  v34 = _swiftEmptySetSingleton;
  v2 = *(a1 + 16);

  v25 = v3;
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    v6 = _swiftEmptyArrayStorage;
    v23 = v3 + 32;
    do
    {
      v7 = (v5 + 96 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v9 = v7[3];
        v29 = v7[2];
        v30 = v9;
        v31[0] = v7[4];
        *(v31 + 9) = *(v7 + 73);
        v10 = v7[1];
        v27 = *v7;
        v28 = v10;
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v11 = v27;
        v12 = v28;
        v13 = DWORD2(v28);
        v14 = (sub_100011B00(v28, DWORD2(v28), v34) & 1) != 0 ? 0 : sub_10001284C(v11, *(&v11 + 1), v33) ^ 1;
        sub_100099FE4(&v27, v26);

        sub_100088220(v26, v12, v13);

        sub_1000883C4(v26, v11, *(&v11 + 1));

        if (v14)
        {
          break;
        }

        sub_10009A040(&v27);
        ++v8;
        v7 += 6;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100092088(0, v6[2] + 1, 1);
        v6 = v32;
      }

      v5 = v23;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        sub_100092088((v16 > 1), v17 + 1, 1);
        v6 = v32;
      }

      v6[2] = v17 + 1;
      v18 = &v6[12 * v17];
      v19 = v28;
      v18[2] = v27;
      v18[3] = v19;
      v20 = v29;
      v21 = v30;
      v22 = v31[0];
      *(v18 + 105) = *(v31 + 9);
      v18[5] = v21;
      v18[6] = v22;
      v18[4] = v20;
    }

    while (v4 != v2);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_19:

  if (v6[2] != v2)
  {
    sub_1000C1EA4(v25, v6, a2);
  }
}

void *sub_1000B8780(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v148 = (v2 + 8);
  v6 = *(v2 + 16);
  v7 = _swiftEmptySetSingleton;
  if ((*(v2 + 24) & 1) == 0)
  {
    *__dst = _swiftEmptySetSingleton;
    v30 = *(a1 + 16);

    if (v30)
    {
      v31 = (v3 + 56);
      do
      {
        v32 = *v31;
        v33 = *(v31 - 1);

        sub_100088220(v188, v33, v32);

        v31 += 24;
        --v30;
      }

      while (v30);
      v7 = *__dst;
    }

    v34 = sub_1000CAB7C(v3, v4, v151);
    swift_bridgeObjectRelease_n();
    sub_100020D58(v4, v5, v6, 0);
    *v151 = v34;
    *v148 = 0;
    *(v2 + 16) = 0;
    *(v151 + 24) = 1;
    v35 = sub_10016407C(_swiftEmptyArrayStorage);
    sub_1000B97B0(v5, v35);

    sub_1000B9C38(v6, a2);

    return v7;
  }

  v200 = _swiftEmptySetSingleton;
  v201 = _swiftEmptySetSingleton;
  v202 = _swiftEmptySetSingleton;
  v203 = _swiftEmptySetSingleton;
  v8 = *(v4 + 16);
  v146 = v5;
  v147 = v6;
  v144 = v8;
  v145 = v4;
  if (v8)
  {
    *&v156 = _swiftEmptyArrayStorage;

    sub_1000920C8(0, v8, 0);
    v9 = v8;
    v10 = _swiftEmptyArrayStorage;
    v11 = (v4 + 32);
    do
    {
      v12 = v11[1];
      v178 = *v11;
      v179 = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[4];
      *&v182[9] = *(v11 + 73);
      v181 = v14;
      *v182 = v15;
      v180 = v13;
      v16 = v179;
      v17 = DWORD2(v179);
      v18 = *v11;
      *&__dst[20] = v11[1];
      *&__dst[4] = v18;
      v19 = v11[2];
      v20 = v11[3];
      v21 = v11[4];
      *&__dst[77] = *(v11 + 73);
      *&__dst[68] = v21;
      *&__dst[52] = v20;
      *&__dst[36] = v19;
      *v188 = *__dst;
      *&v188[16] = *&__dst[16];
      *&v191[13] = *&__dst[77];
      *v191 = *&__dst[64];
      v190 = *&__dst[48];
      v189 = *&__dst[32];
      sub_100099FE4(&v178, &v166);
      *&v156 = v10;
      v23 = v10[2];
      v22 = v10[3];

      if (v23 >= v22 >> 1)
      {
        sub_1000920C8((v22 > 1), v23 + 1, 1);
        v10 = v156;
      }

      v10[2] = v23 + 1;
      v24 = &v10[14 * v23];
      v24[4] = v16;
      *(v24 + 10) = v17;
      v25 = *v188;
      *(v24 + 60) = *&v188[16];
      *(v24 + 44) = v25;
      v26 = v189;
      v27 = v190;
      v28 = *v191;
      *(v24 + 121) = *&v191[13];
      *(v24 + 108) = v28;
      *(v24 + 92) = v27;
      *(v24 + 76) = v26;
      v11 += 11;
      --v9;
    }

    while (v9);
    v5 = v146;
    v4 = v145;
    v3 = a1;
    if (v10[2])
    {
      goto LABEL_14;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_14:
      sub_10000C9C0(&qword_1005CF6F8, &qword_1004D2B70);
      v36 = sub_1004A6A74();
      goto LABEL_17;
    }
  }

  v36 = _swiftEmptyDictionarySingleton;
LABEL_17:
  *v188 = v36;
  sub_1000CAEA8(v10, 1, v188);

  v37 = *v188;
  if (v144)
  {
    v149 = *v188;
    *&v156 = _swiftEmptyArrayStorage;
    sub_1000920A8(0, v144, 0);
    v38 = _swiftEmptyArrayStorage;
    v39 = (v4 + 32);
    for (i = v144 - 1; ; --i)
    {
      v41 = *v39;
      v42 = v39[2];
      v179 = v39[1];
      v180 = v42;
      v178 = v41;
      v43 = v39[3];
      v44 = v39[4];
      v45 = v39[6];
      *&v182[16] = v39[5];
      v183 = v45;
      v181 = v43;
      *v182 = v44;
      v46 = v39[7];
      v47 = v39[8];
      v48 = v39[10];
      v186 = v39[9];
      v187 = v48;
      v184 = v46;
      v185 = v47;
      v49 = v179;
      v50 = DWORD2(v179);
      *&__dst[100] = v39[6];
      *&__dst[84] = v39[5];
      *&__dst[68] = v39[4];
      *&__dst[52] = v39[3];
      *&__dst[164] = v39[10];
      *&__dst[148] = v39[9];
      *&__dst[132] = v39[8];
      *&__dst[116] = v39[7];
      *&__dst[4] = *v39;
      *&__dst[20] = v39[1];
      *&__dst[36] = v39[2];
      v194 = *&__dst[128];
      v195 = *&__dst[144];
      v196 = *&__dst[160];
      v197 = *&__dst[176];
      *v191 = *&__dst[64];
      *&v191[16] = *&__dst[80];
      v192 = *&__dst[96];
      v193 = *&__dst[112];
      *v188 = *__dst;
      *&v188[16] = *&__dst[16];
      v189 = *&__dst[32];
      v190 = *&__dst[48];
      sub_10000E08C(&v178, &v166);
      *&v156 = v38;
      v52 = v38[2];
      v51 = v38[3];

      if (v52 >= v51 >> 1)
      {
        sub_1000920A8((v51 > 1), v52 + 1, 1);
        v38 = v156;
      }

      v38[2] = v52 + 1;
      v53 = &v38[24 * v52];
      v53[4] = v49;
      *(v53 + 10) = v50;
      v54 = *v188;
      v55 = *&v188[16];
      v56 = v189;
      *(v53 + 92) = v190;
      *(v53 + 76) = v56;
      *(v53 + 60) = v55;
      *(v53 + 44) = v54;
      v57 = *v191;
      v58 = *&v191[16];
      v59 = v192;
      *(v53 + 156) = v193;
      *(v53 + 140) = v59;
      *(v53 + 124) = v58;
      *(v53 + 108) = v57;
      v60 = v194;
      v61 = v195;
      v62 = v196;
      *(v53 + 55) = v197;
      *(v53 + 204) = v62;
      *(v53 + 188) = v61;
      *(v53 + 172) = v60;
      if (!i)
      {
        break;
      }

      v39 += 11;
    }

    sub_100020D58(v145, v146, v147, 1);
    v37 = v149;
    v3 = a1;
  }

  else
  {
    sub_100020D58(v4, v5, v6, 1);
  }

  *v188 = 0;
  *&v188[8] = _swiftEmptyArrayStorage;
  *&v188[16] = _swiftEmptyArrayStorage;

  sub_1000CB144(v63, sub_1000C9A9C, 0, v188);
  swift_bridgeObjectRelease_n();
  v198 = *v188;
  v199 = *&v188[8];
  v64 = *(v3 + 16);
  if (!v64)
  {
LABEL_70:

    sub_1000809D4(v138);

    sub_1000B5EB4(v139, &v198);

    v140 = v198;
    v141 = v199;

    v142 = sub_1000B1644(v140, v141, *(&v141 + 1));

    sub_100020D58(v145, v146, v147, 1);
    *v151 = v142;
    *v148 = 0;
    v148[1] = 0;
    *(v151 + 24) = 1;
    v7 = v200;

    return v7;
  }

  v65 = v3 + 69;
  while (1)
  {
    v153 = v64;
    v70 = *(v65 - 5);
    *(v208 + 9) = *(v65 + 36);
    v208[0] = *(v65 + 27);
    v71 = *(v65 + 11);
    v206 = v70;
    v207 = v71;
    v72 = *(v65 - 21);
    v204 = *(v65 - 37);
    v205 = v72;
    v73 = BYTE4(v70);
    *(v224 + 15) = *(v65 + 15);
    v224[0] = *v65;
    v67 = *(&v207 + 1);
    v74 = v208[0];
    v75 = v72;
    v66 = v70;
    v76 = DWORD2(v72);
    if (!*(v37 + 16) || (v77 = sub_100063B5C(v205, DWORD2(v205)), (v78 & 1) == 0))
    {
      sub_100099FE4(&v204, __dst);

      sub_100088220(__dst, v75, v76);

      v93 = *(v151 + 32);
      if (*(v93 + 16))
      {
        v94 = v37;
        v95 = sub_100063C84(v204, *(&v204 + 1));
        if (v96)
        {
          v97 = *(*(v93 + 56) + 8 * v95);

LABEL_42:

          Set<>.makeNonEmpty()(v97);
          v99 = v98;

          v100 = *(v151 + 72);
          *(v151 + 72) = (v100 + 1) & 0xFFFFFF;
          v158 = v206;
          v159 = v207;
          *v160 = v208[0];
          *&v160[9] = *(v208 + 9);
          v156 = v204;
          v157 = v205;
          if (v73)
          {
            v66 = 0;
            v67 = 0;
            v68 = 1;
            v37 = v94;
          }

          else
          {
            v37 = v94;
            if (v74)
            {
              v66 = 0;
              v67 = 0;
              v68 = 1;
            }

            else
            {
              v68 = 0;
            }
          }

          v168 = v158;
          v169 = v159;
          v170 = *v160;
          v171 = *&v160[16];
          v166 = v156;
          v167 = v157;
          v180 = v158;
          v181 = v159;
          *v182 = *v160;
          *&v182[16] = *&v160[16];
          LOBYTE(v155[0]) = 1;
          LOBYTE(v154[0]) = v68;
          *&v172 = 0;
          DWORD2(v172) = 0;
          BYTE12(v172) = 1;
          *&v173 = v66;
          *(&v173 + 1) = v67;
          LOBYTE(v174) = v68;
          *(&v174 + 1) = v99;
          *&v175 = _swiftEmptyArrayStorage;
          *(&v175 + 1) = _swiftEmptyArrayStorage;
          *&v176 = 0;
          BYTE8(v176) = 2;
          HIDWORD(v176) = v100;
          v178 = v156;
          v179 = v157;
          *&v183 = 0;
          DWORD2(v183) = 0;
          BYTE12(v183) = 1;
          *&v184 = v66;
          *(&v184 + 1) = v67;
          LOBYTE(v185) = v68;
          *(&v185 + 1) = v99;
          *&v186 = _swiftEmptyArrayStorage;
          *(&v186 + 1) = _swiftEmptyArrayStorage;
          *&v187 = 0;
          BYTE8(v187) = 2;
          HIDWORD(v187) = v100;
          sub_100099FE4(&v204, __dst);
          sub_10000E08C(&v166, __dst);
          sub_10000E0E8(&v178);
          *&__dst[128] = v174;
          *&__dst[144] = v175;
          *&__dst[160] = v176;
          *&__dst[64] = v170;
          *&__dst[80] = v171;
          *&__dst[96] = v172;
          *&__dst[112] = v173;
          *__dst = v166;
          *&__dst[16] = v167;
          *&__dst[32] = v168;
          *&__dst[48] = v169;
          UInt32.init(_:)(__dst);
          v194 = *&__dst[128];
          v195 = *&__dst[144];
          v196 = *&__dst[160];
          *v191 = *&__dst[64];
          *&v191[16] = *&__dst[80];
          v193 = *&__dst[112];
          v192 = *&__dst[96];
          *v188 = *__dst;
          *&v188[16] = *&__dst[16];
          v190 = *&__dst[48];
          v189 = *&__dst[32];
          sub_10018682C(v188, v75, v76);
          sub_10009A040(&v204);
          goto LABEL_29;
        }
      }

      else
      {
        v94 = v37;
      }

      v97 = _swiftEmptySetSingleton;
      goto LABEL_42;
    }

    v79 = (*(v37 + 56) + 96 * v77);
    v80 = v79[1];
    v217 = *v79;
    v218 = v80;
    v82 = v79[3];
    v81 = v79[4];
    v83 = v79[2];
    *(v221 + 9) = *(v79 + 73);
    v220 = v82;
    v221[0] = v81;
    v219 = v83;
    sub_100099FE4(&v204, __dst);
    sub_100099FE4(&v217, __dst);
    if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(&v217, &v204) & 1) == 0)
    {
      break;
    }

    sub_10009A040(&v217);
    v84 = sub_100063B5C(v75, v76);
    if (v85)
    {
      v86 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v178 = v37;
      v69 = v153;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

LABEL_68:
      sub_10013B574();
      v37 = v178;
LABEL_36:

      v88 = (*(v37 + 56) + 96 * v86);
      v89 = v88[1];
      *__dst = *v88;
      *&__dst[16] = v89;
      v91 = v88[3];
      v90 = v88[4];
      v92 = v88[2];
      *&__dst[73] = *(v88 + 73);
      *&__dst[48] = v91;
      *&__dst[64] = v90;
      *&__dst[32] = v92;
      sub_10009A040(__dst);
      sub_10013D710(v86, v37);
      goto LABEL_69;
    }

    sub_10009A040(&v204);
LABEL_29:
    v69 = v153;
LABEL_30:
    v65 += 96;
    v64 = v69 - 1;
    if (!v64)
    {
      goto LABEL_70;
    }
  }

  v150 = v37;
  v222 = DWORD1(v208[1]);
  v223 = BYTE8(v208[1]);

  sub_100088220(__dst, v75, v76);

  v209[0] = v217;
  v209[1] = v218;
  *&__dst[16] = *(&v221[1] + 1);
  *__dst = *(v221 + 1);
  __dst[23] = v223;
  *&__dst[19] = v222;
  v210 = v66;
  v211 = v73;
  *&v212[15] = *(v224 + 15);
  *v212 = v224[0];
  v213 = v67;
  v214 = v74;
  v215 = *(v221 + 1);
  v216 = *&__dst[16];
  v101 = static MailboxOfInterest.__derived_struct_equals(_:_:)(&v204, v209);
  sub_10009A040(v209);
  if (v101)
  {

    v102 = sub_1000B9DA0(&v178, v75, v76);
    v104 = v103;
    memmove(__dst, v103, 0xB0uLL);
    if (sub_100021348(__dst) != 1)
    {
      v104[21] = v222;
      *(v104 + 88) = v223;
    }

    v102(&v178, 0);

    v37 = v150;
    v69 = v153;
    goto LABEL_66;
  }

  v105 = sub_1000B9DA0(&v156, v75, v76);
  v107 = v106;
  memmove(__dst, v106, 0xB0uLL);
  if (sub_100021348(__dst) != 1)
  {
    v108 = v107[1];
    v178 = *v107;
    v179 = v108;
    v109 = v107[2];
    v110 = v107[3];
    v111 = v107[4];
    *&v182[9] = *(v107 + 73);
    v181 = v110;
    *v182 = v111;
    v180 = v109;
    v112 = v208[0];
    v113 = v207;
    v114 = v206;
    *(v107 + 73) = *(v208 + 9);
    v107[3] = v113;
    v107[4] = v112;
    v107[2] = v114;
    v115 = v205;
    *v107 = v204;
    v107[1] = v115;
    sub_100099FE4(&v204, &v166);
    sub_10009A040(&v178);
  }

  v105(&v156, 0);

  v116 = *(&v199 + 1);
  v117 = *(v199 + 16);
  v37 = v150;
  v118 = v199 + 32;
  if (!v198)
  {
    v119 = sub_10015C014(v75, v76, v118, v117);
    if ((v121 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_55:
    sub_1000CB6B4(&v166);
    v185 = v174;
    v186 = v175;
    v187 = v176;
    *v182 = v170;
    *&v182[16] = v171;
    v183 = v172;
    v184 = v173;
    v178 = v166;
    v179 = v167;
    v180 = v168;
    v181 = v169;
LABEL_60:
    v174 = v185;
    v175 = v186;
    v176 = v187;
    v170 = *v182;
    v171 = *&v182[16];
    v172 = v183;
    v173 = v184;
    v166 = v178;
    v167 = v179;
    v168 = v180;
    v169 = v181;
    v69 = v153;
    if (sub_100021348(&v166) == 1)
    {
      v163 = v185;
      v164 = v186;
      v165 = v187;
      *v160 = *v182;
      *&v160[16] = *&v182[16];
      v161 = v183;
      v162 = v184;
      v156 = v178;
      v157 = v179;
      v158 = v180;
      v159 = v181;
      sub_100025F40(&v156, &qword_1005CF700, &qword_1004D2B78);
    }

    else
    {
      v131 = v183;
      v163 = v185;
      v164 = v186;
      v165 = v187;
      *v160 = *v182;
      *&v160[16] = *&v182[16];
      v161 = v183;
      v162 = v184;
      v156 = v178;
      v157 = v179;
      v158 = v180;
      v159 = v181;

      sub_100025F40(&v156, &qword_1005CF700, &qword_1004D2B78);
      if (v131)
      {

        v132 = sub_1000B9DA0(v154, v75, v76);
        v134 = v133;
        memmove(v155, v133, 0xB0uLL);
        if (sub_100021348(v155) != 1)
        {
          v134[12] = 0;
        }

        v132(v154, 0);
        v37 = v150;

        sub_100088220(v154, v75, v76);
      }
    }

LABEL_66:
    v135 = sub_100063B5C(v75, v76);
    if (v136)
    {
      v86 = v135;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      *&v178 = v37;
      if ((v137 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_36;
    }

LABEL_69:
    sub_10009A040(&v204);
    goto LABEL_30;
  }

  v119 = sub_10015C0B4(v75, v76, v118, v117, (v198 + 16), v198 + 32);
  if (v120)
  {
    goto LABEL_55;
  }

LABEL_57:
  if ((v119 & 0x8000000000000000) == 0)
  {
    if (v119 >= *(v116 + 16))
    {
      goto LABEL_73;
    }

    v122 = (v116 + 176 * v119);
    v123 = v122[2];
    v124 = v122[4];
    v167 = v122[3];
    v168 = v124;
    v166 = v123;
    v125 = v122[5];
    v126 = v122[6];
    v127 = v122[8];
    v171 = v122[7];
    v172 = v127;
    v169 = v125;
    v170 = v126;
    v128 = v122[9];
    v129 = v122[10];
    v130 = v122[12];
    v175 = v122[11];
    v176 = v130;
    v173 = v128;
    v174 = v129;
    memmove(&v178, v122 + 2, 0xB0uLL);
    UInt32.init(_:)(&v178);
    sub_10000E08C(&v166, &v156);
    goto LABEL_60;
  }

  __break(1u);
LABEL_73:
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000B97B0(unint64_t *a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005CF708, &qword_1004D2B80);
  __chkstk_darwin(v5 - 8);
  v7 = (&v32 - v6);
  v48 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v32 - v10;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  if (v14)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    for (i = *(v11 + 2); i; i = *(v11 + 2))
    {
      v32 = v13;
      v33 = v14;
      v34 = v2;
      v17 = 0;
      v14 = 0;
      v18 = a1[2];
      v13 = (v45 + 48);
      v36 = a1 + 6;
      v37 = v11 + 32;
      v38 = v18;
      v39 = v11;
      v40 = v12;
      v41 = a2;
      while (v17 < i)
      {
        v20 = &v37[176 * v17];
        v2 = *(v20 + 2);
        v42 = v20;
        v43 = v17;
        v21 = *(v20 + 6);
        v22 = *(a2 + 16);
        v46 = v2;
        if (v22)
        {
          v23 = sub_100063B5C(v2, v21);
          if (v24)
          {
            v50 = 0;
            v49 = *(*(a2 + 56) + 8 * v23);
          }

          else
          {
            v49 = 0;
            v50 = 1;
          }

          v2 = v46;
        }

        else
        {
          v49 = 0;
          v50 = 1;
        }

        if (v18)
        {
          a1 = v36;
          v25 = v18;
          v19 = _swiftEmptyArrayStorage;
          do
          {
            v26 = *(a1 - 1);
            v27 = *a1;
            v51 = *(a1 - 4);
            v52 = v26;
            v53 = v27;
            sub_1000C9E18(v26, v27);
            sub_1000BB57C(&v51, v2, v21, v49, v50, v7);
            sub_1000C9EF0(v26, v27);
            if ((*v13)(v7, 1, v48) == 1)
            {
              sub_100025F40(v7, &qword_1005CF708, &qword_1004D2B80);
            }

            else
            {
              v28 = v44;
              sub_100025FDC(v7, v44, &qword_1005CEF88, &qword_1004D1E68);
              sub_100025FDC(v28, v47, &qword_1005CEF88, &qword_1004D1E68);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_100086834(0, v19[2] + 1, 1, v19);
              }

              v30 = v19[2];
              v29 = v19[3];
              v2 = v46;
              if (v30 >= v29 >> 1)
              {
                v19 = sub_100086834((v29 > 1), v30 + 1, 1, v19);
              }

              v19[2] = v30 + 1;
              sub_100025FDC(v47, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, &qword_1005CEF88, &qword_1004D1E68);
            }

            a1 += 3;
            --v25;
          }

          while (v25);
        }

        else
        {
          v19 = _swiftEmptyArrayStorage;
        }

        sub_1000C9458(v19, v42 + 19);

        v17 = v43 + 1;
        v11 = v39;
        v12 = v40;
        i = *(v39 + 2);
        a2 = v41;
        v18 = v38;
        if (v43 + 1 == i)
        {
          result = sub_100020D58(v35, v40, v32, 1);
          v2 = v34;
          LOBYTE(v14) = v33;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      v11 = sub_100139804(v35);
    }

    result = sub_100020D58(v35, v12, v13, 1);
LABEL_29:
    a1 = 0;
    v13 = 0;
  }

  else
  {

    result = sub_100020D58(v11, v12, v13, 0);
  }

  *v2 = v11;
  *(v2 + 8) = a1;
  *(v2 + 16) = v13;
  *(v2 + 24) = v14;
  return result;
}

uint64_t sub_1000B9C38(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 24);
  if (v5)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v4 + 16); i; i = *(isUniquelyReferenced_nonNull_native + 16))
    {
      v9 = 0;
      v10 = (v4 + 176);
      while (v9 < i)
      {
        __chkstk_darwin(isUniquelyReferenced_nonNull_native);
        v15[2] = v11;
        v15[3] = v2;
        v15[4] = a2;
        *v10 = sub_1000D7758(sub_1000CB6D4, v15, a1);
        v10 += 22;

        ++v9;
        i = *(v4 + 16);
        if (v9 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_11:
      isUniquelyReferenced_nonNull_native = sub_100139804(v4);
      v4 = isUniquelyReferenced_nonNull_native;
    }

LABEL_7:
    result = sub_100020D58(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    v13 = 0;
    a1 = 0;
  }

  else
  {
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);

    result = sub_100020D58(v4, v13, v14, 0);
  }

  *v2 = v4;
  *(v2 + 8) = v13;
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return result;
}

void (*sub_1000B9DA0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x448uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 1064) = v3;
  *(v7 + 1088) = a3;
  *(v7 + 1056) = a2;
  sub_1000CB6B4(v7);
  v9 = *(v8 + 144);
  *(v8 + 304) = *(v8 + 128);
  *(v8 + 320) = v9;
  *(v8 + 336) = *(v8 + 160);
  v10 = *(v8 + 80);
  *(v8 + 240) = *(v8 + 64);
  *(v8 + 256) = v10;
  v11 = *(v8 + 112);
  *(v8 + 272) = *(v8 + 96);
  *(v8 + 288) = v11;
  v12 = *(v8 + 16);
  *(v8 + 176) = *v8;
  *(v8 + 192) = v12;
  v13 = *(v8 + 48);
  *(v8 + 208) = *(v8 + 32);
  *(v8 + 224) = v13;
  *(v8 + 1072) = sub_1000C9048(a2, a3, (v8 + 176), v13);
  *(v8 + 1092) = v14;
  *(v8 + 1080) = v15;
  return sub_1000B9E78;
}

void sub_1000B9E78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 880);
  v4 = *(*a1 + 1092);
  if (a2)
  {
    v5 = *(v2 + 288);
    v7 = *(v2 + 304);
    v6 = *(v2 + 320);
    *(v2 + 480) = v7;
    *(v2 + 496) = v6;
    v8 = *(v2 + 224);
    v10 = *(v2 + 240);
    v9 = *(v2 + 256);
    *(v2 + 416) = v10;
    *(v2 + 432) = v9;
    v11 = *(v2 + 256);
    v13 = *(v2 + 272);
    v12 = *(v2 + 288);
    *(v2 + 448) = v13;
    *(v2 + 464) = v12;
    v14 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v14;
    v15 = *(v2 + 224);
    v17 = *(v2 + 176);
    v16 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v15;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v18 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v18;
    v116 = *(v2 + 224);
    *(v2 + 640) = v5;
    *(v2 + 656) = v7;
    v19 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v19;
    *(v2 + 576) = v8;
    *(v2 + 592) = v10;
    *(v2 + 608) = v11;
    *(v2 + 624) = v13;
    *(v2 + 512) = v19;
    *(v2 + 528) = v17;
    *(v2 + 544) = v16;
    *(v2 + 560) = v18;
    v20 = sub_100021348((v2 + 528));
    v21 = v20 == 1;
    if (v4)
    {
      if (v20 != 1)
      {
LABEL_4:
        v22 = *(v2 + 1080);
        v23 = *(v2 + 1064);
        v24 = *(v2 + 1088);
        v25 = *(v2 + 1056);
        sub_10000E268(v2 + 352, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
        sub_100187EA0(v25, v24, v22);
        v28 = *(v23 + 16);
        v26 = (v23 + 16);
        v27 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000919E8(0, *(v27 + 16) + 1, 1);
          v27 = *v26;
        }

        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1000919E8((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v27 = *v26;
        }

        v128 = v117;
        v129 = v118;
        v126 = v115;
        v127 = v116;
        v133 = v122;
        v134 = v123;
        v131 = v120;
        v132 = v121;
        v130 = v119;
        v124 = v113;
        v125 = v114;
        *(v27 + 16) = v32;
        v33 = (v27 + 176 * v31);
        v34 = v124;
        v35 = v126;
        v33[3] = v125;
        v33[4] = v35;
        v33[2] = v34;
        v36 = v127;
        v37 = v128;
        v38 = v130;
        v33[7] = v129;
        v33[8] = v38;
        v33[5] = v36;
        v33[6] = v37;
        v39 = v131;
        v40 = v132;
        v41 = v134;
        v33[11] = v133;
        v33[12] = v41;
        v33[9] = v39;
        v33[10] = v40;
        *v26 = v27;
        goto LABEL_27;
      }

LABEL_11:
      sub_10000E268(v2 + 352, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
      goto LABEL_27;
    }
  }

  else
  {
    v42 = *(v2 + 288);
    v44 = *(v2 + 304);
    v43 = *(v2 + 320);
    *(v2 + 480) = v44;
    *(v2 + 496) = v43;
    v45 = *(v2 + 224);
    v47 = *(v2 + 240);
    v46 = *(v2 + 256);
    *(v2 + 416) = v47;
    *(v2 + 432) = v46;
    v48 = *(v2 + 256);
    v50 = *(v2 + 272);
    v49 = *(v2 + 288);
    *(v2 + 448) = v50;
    *(v2 + 464) = v49;
    v51 = *(v2 + 192);
    *(v2 + 352) = *(v2 + 176);
    *(v2 + 368) = v51;
    v52 = *(v2 + 224);
    v54 = *(v2 + 176);
    v53 = *(v2 + 192);
    *(v2 + 384) = *(v2 + 208);
    *(v2 + 400) = v52;
    v121 = *(v2 + 304);
    v122 = *(v2 + 320);
    v123 = *(v2 + 336);
    v55 = *(v2 + 208);
    v117 = *(v2 + 240);
    v118 = *(v2 + 256);
    v119 = *(v2 + 272);
    v120 = *(v2 + 288);
    v113 = *(v2 + 176);
    v114 = *(v2 + 192);
    v115 = v55;
    v116 = *(v2 + 224);
    *(v2 + 640) = v42;
    *(v2 + 656) = v44;
    v56 = *(v2 + 336);
    *(v2 + 672) = *(v2 + 320);
    *(v2 + 688) = v56;
    *(v2 + 576) = v45;
    *(v2 + 592) = v47;
    *(v2 + 608) = v48;
    *(v2 + 624) = v50;
    *(v2 + 512) = v56;
    *(v2 + 528) = v54;
    *(v2 + 544) = v53;
    *(v2 + 560) = v55;
    v57 = sub_100021348((v2 + 528));
    v21 = v57 == 1;
    if (v4)
    {
      if (v57 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  if (v21)
  {
    v58 = *(v2 + 1072);
    v59 = *(v2 + 1064);
    v61 = *(v59 + 16);
    v60 = (v59 + 16);
    v62 = v2 + 352;
    if (v58 >= *(v61 + 16))
    {
      sub_10000E268(v62, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
    }

    else
    {
      sub_10000E268(v62, v3, &qword_1005CF700, &qword_1004D2B78);
      sub_10018964C(v58, &v124);
      v63 = v133;
      *(v2 + 832) = v132;
      *(v2 + 848) = v63;
      *(v2 + 864) = v134;
      v64 = v129;
      *(v2 + 768) = v128;
      *(v2 + 784) = v64;
      v65 = v131;
      *(v2 + 800) = v130;
      *(v2 + 816) = v65;
      v66 = v125;
      *(v2 + 704) = v124;
      *(v2 + 720) = v66;
      v67 = v127;
      *(v2 + 736) = v126;
      *(v2 + 752) = v67;
      v68 = *v60;
      sub_10000E08C(v2 + 704, v3);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *v60 = v68;
      if ((v69 & 1) == 0)
      {
        sub_1000919E8(0, *(v68 + 16) + 1, 1);
        v68 = *v60;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1000919E8((v70 > 1), v71 + 1, 1);
      }

      v72 = v133;
      v3[8] = v132;
      v3[9] = v72;
      v3[10] = v134;
      v73 = v129;
      v3[4] = v128;
      v3[5] = v73;
      v74 = v131;
      v3[6] = v130;
      v3[7] = v74;
      v75 = v125;
      *v3 = v124;
      v3[1] = v75;
      v76 = v127;
      v3[2] = v126;
      v3[3] = v76;
      sub_10000E0E8(v3);
      v77 = *v60;
      *(v77 + 16) = v71 + 1;
      v78 = (v77 + 176 * v71);
      v79 = *(v2 + 816);
      v80 = *(v2 + 832);
      v81 = *(v2 + 864);
      v78[11] = *(v2 + 848);
      v78[12] = v81;
      v78[9] = v79;
      v78[10] = v80;
      v82 = *(v2 + 752);
      v83 = *(v2 + 768);
      v84 = *(v2 + 800);
      v78[7] = *(v2 + 784);
      v78[8] = v84;
      v78[5] = v82;
      v78[6] = v83;
      v86 = *(v2 + 704);
      v85 = *(v2 + 720);
      v87 = *(v2 + 736);
      v78[3] = v85;
      v78[4] = v87;
      v78[2] = v86;
      *v60 = v77;
    }

    sub_1001891EC(*(v2 + 1072), *(v2 + 1080), v85);
  }

  else
  {
    v88 = *(v2 + 1064);
    v91 = *(v88 + 16);
    v89 = (v88 + 16);
    v90 = v91;
    sub_10000E268(v2 + 352, v2 + 704, &qword_1005CF700, &qword_1004D2B78);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    *v89 = v90;
    if ((v92 & 1) == 0)
    {
      sub_1000919E8(0, *(v90 + 16) + 1, 1);
      v90 = *v89;
    }

    v93 = *(v90 + 16);
    v94 = *(v90 + 24);
    v95 = v93 + 1;
    if (v93 >= v94 >> 1)
    {
      v111 = *(v90 + 16);
      v112 = v93 + 1;
      sub_1000919E8((v94 > 1), v93 + 1, 1);
      v95 = v112;
      v93 = v111;
      v90 = *v89;
    }

    v96 = *(v2 + 1072);
    v128 = v117;
    v129 = v118;
    v126 = v115;
    v127 = v116;
    v133 = v122;
    v134 = v123;
    v131 = v120;
    v132 = v121;
    v130 = v119;
    v124 = v113;
    v125 = v114;
    *(v90 + 16) = v95;
    v97 = (v90 + 176 * v93);
    v98 = v124;
    v99 = v126;
    v97[3] = v125;
    v97[4] = v99;
    v97[2] = v98;
    v100 = v127;
    v101 = v128;
    v102 = v130;
    v97[7] = v129;
    v97[8] = v102;
    v97[5] = v100;
    v97[6] = v101;
    v103 = v131;
    v104 = v132;
    v105 = v134;
    v97[11] = v133;
    v97[12] = v105;
    v97[9] = v103;
    v97[10] = v104;
    *v89 = v90;
    sub_1000C9130(v96, v93);
  }

LABEL_27:
  v106 = *(v2 + 320);
  *(v2 + 656) = *(v2 + 304);
  *(v2 + 672) = v106;
  *(v2 + 688) = *(v2 + 336);
  v107 = *(v2 + 256);
  *(v2 + 592) = *(v2 + 240);
  *(v2 + 608) = v107;
  v108 = *(v2 + 288);
  *(v2 + 624) = *(v2 + 272);
  *(v2 + 640) = v108;
  v109 = *(v2 + 192);
  *(v2 + 528) = *(v2 + 176);
  *(v2 + 544) = v109;
  v110 = *(v2 + 224);
  *(v2 + 560) = *(v2 + 208);
  *(v2 + 576) = v110;
  sub_100025F40(v2 + 528, &qword_1005CF700, &qword_1004D2B78);

  free(v2);
}

void sub_1000BA414(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 24) == 1)
  {
    v14 = (v4 + 8);
    v13 = *(v4 + 8);
    v15 = *(v4 + 16);
    v38 = *v4;
    v12 = v38;
    v16 = *(v38 + 2);
    if (!v16)
    {
LABEL_23:
      *v4 = v38;
      *v14 = 0;
      v14[1] = 0;
      *(v4 + 24) = 1;
      return;
    }

    v17 = 0;
    while (1)
    {
      v18 = &v38[176 * v17 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a1 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v17 == v16)
      {
        goto LABEL_23;
      }
    }

    if (v20)
    {
      v21 = v19 == a1;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_15:
      v33[1] = v9;
      v35 = v13;
      sub_100020D10(v38, v13, v15, 1);
      v24 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_16:
        if (v17 >= *(v24 + 2))
        {
          __break(1u);
          return;
        }

        v34 = v4;
        v25 = &v24[176 * v17];

        sub_1000809B8(v26);
        Set<>.formNonEmpty()();
        *(v25 + 34) = 0;
        v25[140] = 1;
        v38 = v24;
        v28 = sub_10012CCA4(v37, v17);
        if (*(v27 + 96))
        {
          v29 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v29 + 96);
            v31 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            sub_1000CBB98(v30 + v31, v11, _s13SelectedStateV7WrappedVMa);
            _s13SelectedStateV8_StorageCMa(0);
            v32 = swift_allocObject();
            sub_1000CBC60(v11, v32 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
            *(v29 + 96) = v32;
          }

          swift_beginAccess();
          sub_10013FC9C(a3);
          sub_100088568(&v36, a3);
          swift_endAccess();
          v28(v37, 0);
        }

        else
        {
          v28(v37, 0);
        }

        sub_100020D58(v12, v35, v15, 1);
        v4 = v34;
        goto LABEL_23;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a1 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_4;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    v24 = sub_100139804(v12);
    goto LABEL_16;
  }
}

void sub_1000BA740(char **a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v35 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v35);
  __chkstk_darwin(v5);
  v8 = &v34 - v6;
  v9 = *a1;
  v44 = *(*a1 + 2);
  if (v44)
  {
    v34 = v7;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v39 = &v34 - v6;
    v40 = a1;
    v41 = a2;
    do
    {
      if (v13 >= *(v9 + 2))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v14 = *&v9[v10 + 48];
      v15 = *&v9[v10 + 56];
      if ((sub_100011B00(v14, v15, a2) & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100139804(v9);
        }

        if (v13 >= *(v9 + 2))
        {
          goto LABEL_30;
        }

        if (*(*&v9[v10 + 168] + 16))
        {
          *&v9[v10 + 168] = _swiftEmptySetSingleton;

          *a1 = v9;
          if (v12 > 4)
          {

            v27 = __OFADD__(v11++, 1);
            if (v27)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v13 >= *(v9 + 2))
            {
              goto LABEL_32;
            }

            v43 = *&v9[v10 + 204];
            sub_1000CBB98(v42, v8, type metadata accessor for State.Logger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();

            v16 = sub_1004A4A54();
            v17 = sub_1004A6034();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v38 = v12;
              v19 = v18;
              v20 = swift_slowAlloc();
              v36 = v16;
              v37 = v20;
              v47 = v20;
              *v19 = 0x204100603;
              *(v19 + 8) = 256;
              v21 = v8[*(v35 + 20)];
              sub_1000CBC00(v8, type metadata accessor for State.Logger);
              *(v19 + 10) = v21;
              *(v19 + 11) = 1040;
              *(v19 + 13) = 2;
              *(v19 + 17) = 512;
              *(v19 + 19) = v43;
              *(v19 + 21) = 2160;
              *(v19 + 23) = 0x786F626C69616DLL;
              *(v19 + 31) = 2085;
              v45 = v14;
              v46 = v15;
              v22 = sub_1004A5824();
              v24 = sub_10015BA6C(v22, v23, &v47);

              *(v19 + 33) = v24;
              v25 = v17;
              v26 = v36;
              _os_log_impl(&_mh_execute_header, v36, v25, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark as sync complete.", v19, 0x29u);
              sub_1000197E0(v37);

              v12 = v38;
            }

            else
            {
              sub_1000CBC00(v8, type metadata accessor for State.Logger);
            }

            a1 = v40;
            a2 = v41;
            ++v12;
            v8 = v39;
            v27 = __OFADD__(v11++, 1);
            if (v27)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {

          *a1 = v9;
        }
      }

      ++v13;
      v10 += 176;
    }

    while (v44 != v13);
    v28 = v34;
    if (v12 >= v11)
    {
      return;
    }

    sub_1000CBB98(v42, v34, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v29 = sub_1004A4A54();
    v30 = sub_1004A6034();
    if (!os_log_type_enabled(v29, v30))
    {
      sub_1000CBC00(v28, type metadata accessor for State.Logger);
      goto LABEL_27;
    }

    v31 = v12;
    v32 = swift_slowAlloc();
    *v32 = 68158208;
    *(v32 + 4) = 2;
    *(v32 + 8) = 256;
    v33 = *(v28 + *(v35 + 20));
    sub_1000CBC00(v28, type metadata accessor for State.Logger);
    *(v32 + 10) = v33;
    *(v32 + 11) = 2048;
    if (!__OFSUB__(v11, v31))
    {
      *(v32 + 13) = v11 - v31;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%.*hhx] Did mark %ld more mailboxes as sync complete.", v32, 0x15u);

LABEL_27:

      return;
    }

LABEL_33:
    __break(1u);
  }
}

void sub_1000BAC28(uint64_t a1, unsigned int a2)
{
  if (v2[24])
  {
    v3 = *(*v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = a2 | (a2 << 32);
      while (1)
      {
        v6 = *v2 + 32 + 176 * v4;
        if ((*(v6 + 24) | (*(v6 + 24) << 32)) == v5)
        {
          v7 = *(v6 + 16);
          v8 = *(v7 + 16);
          if (v8 == *(a1 + 16))
          {
            break;
          }
        }

LABEL_4:
        if (++v4 == v3)
        {
          return;
        }
      }

      if (v8)
      {
        v9 = v7 == a1;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
LABEL_15:
      }

      else
      {
        v10 = (v7 + 32);
        v11 = (a1 + 32);
        while (v8)
        {
          if (*v10 != *v11)
          {
            goto LABEL_4;
          }

          ++v10;
          ++v11;
          if (!--v8)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1000BAD00(uint64_t result, unsigned int a2)
{
  if ((v2[24] & 1) == 0)
  {
    return 0xFFFFLL;
  }

  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 0xFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v5 = *v2 + 32 + 176 * v4;
    if ((*(v5 + 24) | (*(v5 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0xFFFFLL;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return *(v5 + 172);
  }

  v9 = (v6 + 32);
  v10 = (result + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      goto LABEL_4;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      return *(v5 + 172);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BADB0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(v3 + 24) != 1)
  {
    return result;
  }

  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v16 = v4;
  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_16:
    *v3 = v4;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    return result;
  }

  v8 = 0;
  while (1)
  {
    v9 = v4 + 32 + 176 * v8;
    if ((*(v9 + 24) | (*(v9 + 24) << 32)) == (a3 | (a3 << 32)))
    {
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      goto LABEL_16;
    }
  }

  if (v11)
  {
    v12 = v10 == a2;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_15:
    v15 = result;
    sub_100020D10(v4, v5, v6, 1);
    sub_1000B5C3C(v15, &v16, v8);
    result = sub_100020D58(v4, v5, v6, 1);
    v4 = v16;
    goto LABEL_16;
  }

  v13 = (v10 + 32);
  v14 = (a2 + 32);
  while (v11)
  {
    if (*v13 != *v14)
    {
      goto LABEL_4;
    }

    ++v13;
    ++v14;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v25 = a5;
  v9 = type metadata accessor for Task.Logger(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MailboxTaskLogger(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000CBB98(a3, v12, type metadata accessor for Task.Logger);
  LODWORD(a3) = *(a1 + 172);
  v17 = sub_1004A4A74();
  (*(*(v17 - 8) + 16))(v16, v12, v17);
  v18 = &v12[*(v10 + 28)];
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];

  sub_1000CBC00(v12, type metadata accessor for Task.Logger);
  v22 = &v16[*(v14 + 28)];
  *v22 = v20;
  *(v22 + 1) = v19;
  *(v22 + 2) = v21;
  *(v22 + 12) = a3;
  *(v22 + 4) = a4;
  *(v22 + 10) = v25;
  sub_10009C748(a2, v16);
  return sub_1000CBC00(v16, type metadata accessor for MailboxTaskLogger);
}

unint64_t sub_1000BB0C0(void *a1)
{
  v2 = sub_1000BB18C();
  if (v2[2] <= a1[2] >> 3)
  {

    sub_10015CA00(v2);

    v3 = a1;
    if (a1[2])
    {
      goto LABEL_3;
    }
  }

  else
  {

    v3 = sub_10015F1CC(v2, a1);

    if (v3[2])
    {
LABEL_3:
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      return v4 | 0xA000000000000000;
    }
  }

  return 0xF000000000000007;
}

void *sub_1000BB18C()
{
  v1 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[3])
  {
    v5 = *v0;
    result = _swiftEmptySetSingleton;
    v36 = _swiftEmptySetSingleton;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 0;
      v31 = v5 + 32;
      do
      {
        v9 = (v31 + 176 * v8);
        v10 = *v9;
        v11 = v9[2];
        v33[1] = v9[1];
        v33[2] = v11;
        v33[0] = v10;
        v12 = v9[3];
        v13 = v9[4];
        v14 = v9[6];
        v33[5] = v9[5];
        v33[6] = v14;
        v33[3] = v12;
        v33[4] = v13;
        v15 = v9[7];
        v16 = v9[8];
        v17 = v9[10];
        v34 = v9[9];
        v35 = v17;
        v33[7] = v15;
        v33[8] = v16;
        v18 = *(*(&v34 + 1) + 16);
        if (v18)
        {
          v19 = *(&v34 + 1) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          sub_10000E08C(v33, v32);

          v20 = *(v2 + 72);
          do
          {
            sub_1000CBB98(v19, v4, _s19UserInitiatedSearchVMa);
            sub_100088660(v32, *v4);
            sub_1000CBC00(v4, _s19UserInitiatedSearchVMa);
            v19 += v20;
            --v18;
          }

          while (v18);
          sub_10000E0E8(v33);
        }

        ++v8;
      }

      while (v8 != v7);
      return v36;
    }
  }

  else
  {
    v21 = v0[1];
    v22 = *(v21 + 16);
    v23 = _swiftEmptyArrayStorage;
    if (v22)
    {
      *&v33[0] = _swiftEmptyArrayStorage;
      sub_100092108(0, v22, 0);
      v23 = *&v33[0];
      v24 = (v21 + 32);
      v25 = *(*&v33[0] + 16);
      do
      {
        v27 = *v24;
        v24 += 6;
        v26 = v27;
        *&v33[0] = v23;
        v28 = v23[3];
        if (v25 >= v28 >> 1)
        {
          sub_100092108((v28 > 1), v25 + 1, 1);
          v23 = *&v33[0];
        }

        v23[2] = v25 + 1;
        *(v23 + v25++ + 8) = v26;
        --v22;
      }

      while (v22);
    }

    v29 = sub_1000CE74C(v23);

    return v29;
  }

  return result;
}

uint64_t sub_1000BB408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = (v7 + 32 + 176 * v10);
      if (v12[1] == a3)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = result;
      v5 = a4;
      sub_100020D10(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10009BE74(v6, v5);
        result = sub_100020D58(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000BB57C@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  v50 = a6;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = *a1;
  v23 = *(a1 + 1);
  v24 = *(a1 + 2);
  v25 = *(v23 + 16);
  if ((v24 & 4) != 0)
  {
    if (v25)
    {
      v38 = v22;
      v39 = sub_100063B5C(a2, a3);
      if (v40)
      {
        sub_10000E268(*(v23 + 56) + *(v13 + 72) * v39, v18, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025FDC(v18, v21, &qword_1005CD1D0, &unk_1004CF2C0);
        v35 = v50;
        *v50 = v38;
        sub_10000E268(v21, v15, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100016D2C();
        sub_1004A7114();
        v34 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
        v41 = v35 + *(v34 + 48);
        sub_100025F40(v21, &qword_1005CD1D0, &unk_1004CF2C0);
        MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
        (*(v48 + 56))(v41 + *(MessagesVMa + 24), 1, 1, v49);
        sub_100025FDC(v15, v41, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025FDC(v11, v41 + *(MessagesVMa + 20), &unk_1005D91B0, &unk_1004CF400);
        _s19UserInitiatedSearchV5StateOMa(0);
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (v25)
    {
      v26 = v22;
      v27 = sub_100063B5C(a2, a3);
      if (v28)
      {
        v29 = *(v23 + 56) + 24 * v27;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        if (v47 & 1) != 0 || (v31 != v46 ? (v33 = 1) : (v33 = *(v29 + 16)), v46 && (v33))
        {
          v34 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
          v35 = v50;
          v36 = v50 + *(v34 + 48);
          *v50 = v26;
          sub_1000C9E18(v23, v24);

          sub_1000C9E60(v24);
          v37 = sub_100127300(v24);

          sub_1000C9F38(v24);
          *v36 = v37;
          *(v36 + 1) = v30;
          *(v36 + 2) = v31;
          v36[24] = v32;
          _s19UserInitiatedSearchV5StateOMa(0);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          return (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
        }
      }

      sub_1000C9E18(v23, v24);
    }

    else
    {

      sub_1000C9E60(v24);
    }

    sub_1000C9F38(v24);
  }

  v44 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
  return (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
}

void *sub_1000BBA58()
{
  result = _swiftEmptySetSingleton;
  if (v0[3])
  {
    v2 = *v0;
    v23 = _swiftEmptySetSingleton;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 32;
      do
      {
        v6 = (v5 + 176 * v4);
        v7 = *v6;
        v8 = v6[2];
        v20[1] = v6[1];
        v20[2] = v8;
        v20[0] = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v20[5] = v6[5];
        v20[6] = v11;
        v20[3] = v9;
        v20[4] = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v21 = v6[9];
        v22 = v14;
        v20[7] = v12;
        v20[8] = v13;
        v15 = v21;
        v16 = *(v21 + 16);
        sub_10000E08C(v20, v19);

        if (v16)
        {
          v17 = (v15 + 32);
          do
          {
            v18 = *v17;
            v17 += 10;
            sub_100089758(v19, v18);
            --v16;
          }

          while (v16);
        }

        ++v4;
        sub_10000E0E8(v20);
      }

      while (v4 != v3);
      return v23;
    }
  }

  return result;
}

void sub_1000BBB60(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v10 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[4] | (a1[4] << 32)) == (*(a2 + 24) | (*(a2 + 24) << 32)))
  {
    v35 = *a1;
    v14 = *(a1 + 3);
    v13 = *(a1 + 4);
    v15 = *(a1 + 5);
    v36 = *(a1 + 1);
    v37 = v15;
    v16 = *(a1 + 48);
    if (sub_1000FFC98(v36, *(a2 + 16)))
    {
      v32 = v16;
      v34 = v5;
      v17 = *(a3 + 48);
      v33 = *(a3 + 64);
      v19 = *a2;
      v18 = *(a2 + 8);
      sub_100014CEC(v14, v13);
      sub_100014CEC(v14, v13);

      LOBYTE(v18) = sub_10003882C(v14, v13, v19, v18, v17);

      sub_100014D40(v14, v13);
      if ((v18 & 1) == 0)
      {
        *a5 = v35;
        *(a5 + 8) = v14;
        v30 = v37;
        *(a5 + 16) = v13;
        *(a5 + 24) = v30;
        *(a5 + 32) = v32;

        return;
      }

      sub_1000CBB98(v38, v12, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      sub_100014CEC(v14, v13);

      v20 = sub_1004A4A54();
      v21 = sub_1004A6014();

      sub_100014D40(v14, v13);

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        LODWORD(v38) = v21;
        v24 = v23;
        v39 = v23;
        *v22 = 68158210;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v25 = v12[*(v10 + 20)];
        sub_1000CBC00(v12, type metadata accessor for State.Logger);
        *(v22 + 10) = v25;
        *(v22 + 11) = 2080;
        v26 = OpaquePersistedMessageIdentifier.description.getter(v14, v13);
        v28 = v27;
        sub_100014D40(v14, v13);
        v29 = sub_10015BA6C(v26, v28, &v39);

        *(v22 + 13) = v29;
        _os_log_impl(&_mh_execute_header, v20, v38, "[%.*hhx] Skipping download request for %s. Did previously not request any sections.", v22, 0x15u);
        sub_1000197E0(v24);
      }

      else
      {
        sub_1000CBC00(v12, type metadata accessor for State.Logger);
        sub_100014D40(v14, v13);
      }
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
}

void sub_1000BBECC(char **a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v14[176 * v16 + 32];
      if ((*(v17 + 24) | (*(v17 + 24) << 32)) == (a3 | (a3 << 32)))
      {
        v18 = *(v17 + 16);
        v19 = *(v18 + 16);
        if (v19 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v19)
    {
      v20 = v18 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_14:
      v23 = *(v17 + 96);
      if (!v23)
      {
        return;
      }

      v24 = v23 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v25 = _s13SelectedStateV7WrappedVMa(0);
      sub_1000CBB98(v24 + *(v25 + 20), v10, type metadata accessor for MailboxSyncState);
      v26 = sub_1000CBC60(v10, v13, type metadata accessor for MailboxSyncState);
      __chkstk_darwin(v26);
      *(&v29 - 2) = a4;
      sub_1000D7954(sub_1000CBB7C, (&v29 - 4), v27);
      v10 = sub_1000CE67C(v28);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a2 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_3;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = sub_100139804(v14);
LABEL_16:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
    }

    else
    {
      sub_10009C45C(v10);

      sub_1000CBC00(v13, type metadata accessor for MailboxSyncState);
      *a1 = v14;
    }
  }
}

uint64_t sub_1000BC15C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  result = MessageIdentifierSet.contains(_:)(&v7, v5);
  if (result)
  {
    result = sub_100014CEC(v3, v4);
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000BC1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v42);
  v7 = &v40 - v6;
  sub_10000E268(a2, &v40 - v6, &unk_1005D91B0, &unk_1004CF400);
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = MessageIdentifierSet.startIndex.getter(v8);
  v11 = v10;
  if (v9 == MessageIdentifierSet.endIndex.getter(v8) && v11 == v12)
  {
    v43 = _swiftEmptyArrayStorage;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
    v41 = a3;
    do
    {
      do
      {
        while (1)
        {
          MessageIdentifierSet.subscript.getter(v11, v8, &v44);
          v15 = v44;
          MessageIdentifierSet.index(_:offsetBy:)(v9, v11, 1);
          v9 = v16;
          v11 = v17;
          v18 = *(a1 + 96);
          if (!v18)
          {
            break;
          }

          v19 = v18 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v20 = v19 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
          result = type metadata accessor for MailboxSyncState(0);
          v22 = 0;
          v23 = *(v20 + *(result + 56));
          v24 = 1 << *(v23 + 32);
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v26 = v25 & *(v23 + 64);
          v27 = (v24 + 63) >> 6;
          do
          {
            if (!v26)
            {
              while (1)
              {
                v28 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v28 >= v27)
                {
                  goto LABEL_6;
                }

                v26 = *(v23 + 64 + 8 * v28);
                ++v22;
                if (v26)
                {
                  v22 = v28;
                  goto LABEL_19;
                }
              }

              __break(1u);
              return result;
            }

            v28 = v22;
LABEL_19:
            v29 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
            v30 = v29 | (v28 << 6);
          }

          while (v15 != *(*(v23 + 56) + 24 * v30));
          v31 = (*(v23 + 48) + 16 * v30);
          v33 = *v31;
          v32 = v31[1];

          sub_100014CEC(v33, v32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100086B4C(0, *(v43 + 2) + 1, 1, v43);
          }

          v35 = *(v43 + 2);
          v34 = *(v43 + 3);
          if (v35 >= v34 >> 1)
          {
            v43 = sub_100086B4C((v34 > 1), v35 + 1, 1, v43);
          }

          v36 = v43;
          *(v43 + 2) = v35 + 1;
          v37 = &v36[16 * v35];
          *(v37 + 4) = v33;
          *(v37 + 5) = v32;
          v38 = MessageIdentifierSet.endIndex.getter(v8);
          a3 = v41;
          if (v9 == v38)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        ;
      }

      while (v9 != MessageIdentifierSet.endIndex.getter(v8));
LABEL_7:
      ;
    }

    while (v11 != v14);
  }

  v39 = &v7[*(v42 + 36)];
  *v39 = v9;
  v39[1] = v11;
  result = sub_100025F40(v7, &qword_1005CDA38, &unk_1004D14C0);
  *a3 = v43;
  return result;
}

void *sub_1000BC508@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >> 62 == 1 && *((*result & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1)
  {
    v2 = *((*result & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0x14)
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = a2;

        sub_100092128(0, v4, 0);
        v6 = _swiftEmptyArrayStorage[2];
        v7 = 32;
        do
        {
          v8 = *(v3 + v7);
          v9 = _swiftEmptyArrayStorage[3];
          if (v6 >= v9 >> 1)
          {
            sub_100092128((v9 > 1), v6 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v6 + 1;
          *(&_swiftEmptyArrayStorage[4] + v6) = v8;
          v7 += 56;
          ++v6;
          --v4;
        }

        while (v4);

        a2 = v5;
      }
    }
  }

  *a2 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000BC63C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, NSObject *a5, uint64_t a6)
{
  v7 = v6;
  v64 = a4;
  v11 = a2;
  v13 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v18 = &v55 - v16;
  v20 = *v7;
  v19 = *(v7 + 8);
  v21 = *(v7 + 16);
  v63 = *(v7 + 24);
  v65 = v20;
  if (v63)
  {
    v61 = v21;
    v62 = v19;
    if (a3)
    {
      v22 = v65;

      v23 = v64;
    }

    else
    {
      v60 = v15;
      v42 = v17;
      sub_1000CBB98(a6, v17, type metadata accessor for State.Logger);
      v22 = v65;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v43 = sub_1004A4A54();
      v58 = sub_1004A6034();
      v44 = os_log_type_enabled(v43, v58);
      v23 = v64;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v57 = v43;
        v46 = v45;
        v56 = swift_slowAlloc();
        v66[0] = v56;
        *v46 = 68158466;
        *(v46 + 4) = 2;
        *(v46 + 8) = 256;
        v47 = v7;
        v48 = *(v42 + *(v60 + 20));
        sub_1000CBC00(v42, type metadata accessor for State.Logger);
        *(v46 + 10) = v48;
        v7 = v47;
        *(v46 + 11) = 2082;
        v49 = sub_1004A6754();
        v51 = sub_10015BA6C(v49, v50, v66);
        v22 = v65;

        *(v46 + 13) = v51;
        *(v46 + 21) = 1024;
        *(v46 + 23) = a1;
        _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx] Adding %{public}s sync #%u.", v46, 0x1Bu);
        sub_1000197E0(v56);
      }

      else
      {
        sub_1000CBC00(v42, type metadata accessor for State.Logger);
      }
    }

    v59 = v7;
    v41 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

    for (i = *(v22 + 16); i; i = *(v41 + 2))
    {
      v53 = 0;
      v22 = 0;
      v54 = (v41 + 32);
      while (v53 < i)
      {
        sub_1000BCC28(v54, v11, a3, v23 & 1, a5, a6, a1);
        ++v53;
        i = *(v41 + 2);
        v54 += 22;
        if (v53 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      v41 = sub_100139804(v22);
    }

LABEL_16:
    result = sub_100020D58(v65, v62, v61, 1);
    v26 = 0;
    v21 = 0;
    v7 = v59;
    v37 = v63;
  }

  else
  {
    v60 = v15;
    sub_1000CBB98(a6, &v55 - v16, type metadata accessor for State.Logger);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();

    v26 = v19;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v62 = v19;
      v28 = v27;
      v29 = swift_slowAlloc();
      v61 = v21;
      v30 = v29;
      v66[0] = v29;
      *v28 = 68158466;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v31 = v7;
      v32 = v18[*(v60 + 20)];
      sub_1000CBC00(v18, type metadata accessor for State.Logger);
      *(v28 + 10) = v32;
      v7 = v31;
      *(v28 + 11) = 2082;
      v33 = sub_1004A6754();
      v35 = sub_10015BA6C(v33, v34, v66);

      *(v28 + 13) = v35;
      *(v28 + 21) = 1024;
      *(v28 + 23) = a1;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx] Adding %{public}s sync #%u (while local mailboxes are unknown).", v28, 0x1Bu);
      sub_1000197E0(v30);
      v21 = v61;

      v26 = v62;
    }

    else
    {
      sub_1000CBC00(v18, type metadata accessor for State.Logger);
    }

    v37 = v63;
    v36 = v64;

    v38 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = v38;
    sub_10001D018(v11, a3, v36 & 1, a1, isUniquelyReferenced_nonNull_native);
    result = sub_100020D58(v38, v26, v21, 0);
    v41 = v66[0];
  }

  *v7 = v41;
  *(v7 + 8) = v26;
  *(v7 + 16) = v21;
  *(v7 + 24) = v37;
  return result;
}

uint64_t sub_1000BCC28(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, unsigned int a7)
{
  v65 = a5;
  v63 = a7;
  v56 = a6;
  v10 = sub_1004A4A74();
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(v60);
  v59 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = v55 - v18;
  __chkstk_darwin(v19);
  v61 = v55 - v20;
  __chkstk_darwin(v21);
  v62 = v55 - v22;
  v64 = a1;
  v24 = *a1;
  v23 = a1[1];

  v25.hashValue = v23;
  v55[1] = a2;
  v26 = SyncRequest.includes(_:)(v25);

  if (v26)
  {
    if (!v65 || (result = sub_10001284C(v24, v23, v65), (result & 1) != 0))
    {
      if (a3)
      {
        sub_1000CBB98(v56, v15, type metadata accessor for State.Logger);
        v28 = v64[2];
        v29 = *(v64 + 6);
        v30 = *(v64 + 43);
        v31 = v57;
        (*(v57 + 16))(v12, v15, v10);
        v32 = v15[*(v13 + 20)];
        sub_1000CBC00(v15, type metadata accessor for State.Logger);
        v33 = v62;
        (*(v31 + 32))();
        v34 = v60;
        v35 = v33 + *(v60 + 20);
        *v35 = v32;
        *(v35 + 2) = v30;
        *(v35 + 8) = v28;
        *(v35 + 16) = v29;
        v36 = v61;
        sub_1000CBB98(v33, v61, _s12LocalMailboxV6LoggerVMa);
        v37 = v58;
        sub_1000CBB98(v33, v58, _s12LocalMailboxV6LoggerVMa);
        v38 = v59;
        sub_1000CBB98(v33, v59, _s12LocalMailboxV6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v39 = sub_1004A4A54();
        v40 = sub_1004A6034();

        if (os_log_type_enabled(v39, v40))
        {
          LODWORD(v57) = v40;
          v65 = v39;
          v41 = v34;
          v42 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v68 = v56;
          *v42 = 68159491;
          *(v42 + 4) = 2;
          *(v42 + 8) = 256;
          v43 = *(v37 + *(v34 + 20));
          sub_1000CBC00(v37, _s12LocalMailboxV6LoggerVMa);
          *(v42 + 10) = v43;
          *(v42 + 11) = 1040;
          *(v42 + 13) = 2;
          *(v42 + 17) = 512;
          v44 = *(v38 + *(v41 + 20) + 2);
          sub_1000CBC00(v38, _s12LocalMailboxV6LoggerVMa);
          *(v42 + 19) = v44;
          *(v42 + 21) = 2160;
          *(v42 + 23) = 0x786F626C69616DLL;
          *(v42 + 31) = 2085;
          v45 = v36 + *(v41 + 20);
          v46 = *(v45 + 8);
          v47 = *(v45 + 16);

          sub_1000CBC00(v36, _s12LocalMailboxV6LoggerVMa);
          v66 = v46;
          v67 = v47;
          v48 = sub_1004A5824();
          v50 = sub_10015BA6C(v48, v49, &v68);

          *(v42 + 33) = v50;
          *(v42 + 41) = 2082;
          v51 = sub_1004A6754();
          v53 = sub_10015BA6C(v51, v52, &v68);

          *(v42 + 43) = v53;
          *(v42 + 51) = 1024;
          *(v42 + 53) = v63;
          v54 = v65;
          _os_log_impl(&_mh_execute_header, v65, v57, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s sync #%u.", v42, 0x39u);
          swift_arrayDestroy();
        }

        else
        {
          sub_1000CBC00(v38, _s12LocalMailboxV6LoggerVMa);
          sub_1000CBC00(v37, _s12LocalMailboxV6LoggerVMa);

          sub_1000CBC00(v36, _s12LocalMailboxV6LoggerVMa);
        }

        sub_1000CBC00(v33, _s12LocalMailboxV6LoggerVMa);
      }

      return sub_10009B464(v63);
    }
  }

  return result;
}

uint64_t sub_1000BD254(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v6 = (v1 + 8);
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (*(v1 + 24))
  {

    v8 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    for (i = *(v4 + 16); i; i = *(v8 + 2))
    {
      v10 = 0;
      v11 = v8 + 168;
      while (v10 < i)
      {
        sub_10013FDA4(a1);
        ++v10;
        i = *(v8 + 2);
        v11 += 176;
        if (v10 == i)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      v8 = sub_100139804(v4);
    }

LABEL_7:
    result = sub_100020D58(v4, v5, v7, 1);
    *v2 = v8;
    *v6 = 0;
    v6[1] = 0;
    *(v2 + 24) = 1;
  }

  else
  {
    v15 = *v1;

    v13 = sub_10013CF00();
    sub_1000C9FC8(v13, v14);
    result = sub_100020D58(v4, v5, v7, 0);
    *v1 = v15;
    *(v1 + 8) = v5;
    *(v1 + 16) = v7;
    *(v1 + 24) = 0;
  }

  return result;
}

void sub_1000BD394(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v26 = v7;
LABEL_4:
  while (v5)
  {
    v9 = v5;
LABEL_10:
    v5 = (v9 - 1) & v9;
    if (*(v1 + 24) == 1)
    {
      v11 = *v1;
      v12 = *(*v1 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = *(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v9))));
        v15 = *v14;
        v16 = *(v1 + 8);
        v27 = *(v1 + 16);
        v17 = *(v14 + 8) | (*(v14 + 8) << 32);
        while (1)
        {
          v18 = v11 + 32 + 176 * v13;
          if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
          {
            v19 = *(v18 + 16);
            v20 = *(v19 + 16);
            if (v20 == *(v15 + 16))
            {
              break;
            }
          }

LABEL_13:
          if (++v13 == v12)
          {
            goto LABEL_4;
          }
        }

        if (v20)
        {
          v21 = v19 == v15;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = (v19 + 32);
          v23 = (v15 + 32);
          while (v20)
          {
            if (*v22 != *v23)
            {
              goto LABEL_13;
            }

            ++v22;
            ++v23;
            if (!--v20)
            {
              goto LABEL_24;
            }
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

LABEL_24:

        v24 = v16;
        sub_100020D10(v11, v16, v27, 1);
        v25 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100139804(v11);
        }

        if (v13 >= *(v25 + 2))
        {
          goto LABEL_33;
        }

        *&v25[176 * v13 + 168] = _swiftEmptySetSingleton;
        sub_100020D58(v11, v24, v27, 1);

        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *v1 = v25;
        *(v1 + 24) = 1;
        v7 = v26;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v6)
    {
      break;
    }

    v9 = *(v2 + 8 * v10);
    ++v8;
    if (v9)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }
}

char **sub_1000BD5C8(char **result)
{
  v1 = *result;
  v2 = *(*result + 2);
  if (v2)
  {
    v3 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v1 = sub_100139804(v1);
    }

    v4 = 0;
    v5 = 168;
    do
    {
      if (v4 >= *(v1 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v4;

      *&v1[v5] = _swiftEmptySetSingleton;
      v5 += 176;
    }

    while (v2 != v4);
    *v3 = v1;
  }

  return result;
}

void sub_1000BD660(char **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v14[176 * v16 + 32];
      if (*(v17 + 1) == a3)
      {
        v18 = *v17;
        v19 = *(*v17 + 16);
        if (v19 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v19)
    {
      v20 = v18 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_14:
      a3 = *(v17 + 12);
      if (!a3)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v23 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a3 + v24, v13, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v25 = swift_allocObject();
        sub_1000CBC60(v13, v25 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a3 = v25;
      }

      v26 = (a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v27 = *(v23 + 20);
      v28 = type metadata accessor for MailboxSyncState(0);
      a5(&v26[v27 + *(v28 + 52)]);
      swift_endAccess();
      if (v16 < *(v14 + 2))
      {
        v29 = *(v17 + 12);
        if (!v29 || (v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v29 + v30) != *v26))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v21 = (v18 + 32);
      v22 = (a2 + 32);
      while (v19)
      {
        if (*v21 != *v22)
        {
          goto LABEL_3;
        }

        ++v21;
        ++v22;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v14 = sub_100139804(v14);
LABEL_21:
    if (v16 < *(v14 + 2))
    {
      *&v14[176 * v16 + 128] = a3;

LABEL_28:
      *a1 = v14;
      return;
    }

    __break(1u);
LABEL_34:
    v14 = sub_100139804(v14);
LABEL_26:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      return;
    }

    v31 = &v14[176 * v16];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v31 + 34) = 0;
    v31[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BD984(char **a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = *(*a1 + 2);
  if (v13)
  {
    v14 = 0;
    v15 = a3 | (a3 << 32);
    while (1)
    {
      v16 = &v12[176 * v14 + 32];
      if ((*(v16 + 24) | (*(v16 + 24) << 32)) == v15)
      {
        v17 = *(v16 + 16);
        v18 = *(v17 + 16);
        if (v18 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v14 == v13)
      {
        return;
      }
    }

    if (v18)
    {
      v19 = v17 == a2;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
LABEL_14:
      a2 = *(v16 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v22 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v23, v11, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v24 = swift_allocObject();
        sub_1000CBC60(v11, v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v24;
      }

      v25 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      sub_100016B08(v25 + *(v22 + 20));
      swift_endAccess();
      if (v14 < *(v12 + 2))
      {
        v26 = *(v16 + 96);
        if (!v26 || (v27 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v26 + v27) != *v25))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v20 = (v17 + 32);
      v21 = (a2 + 32);
      while (v18)
      {
        if (*v20 != *v21)
        {
          goto LABEL_3;
        }

        ++v20;
        ++v21;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v12 = sub_100139804(v12);
LABEL_21:
    if (v14 < *(v12 + 2))
    {
      *&v12[176 * v14 + 128] = a2;

LABEL_28:
      *a1 = v12;
      return;
    }

    __break(1u);
LABEL_34:
    v12 = sub_100139804(v12);
LABEL_26:
    if (v14 >= *(v12 + 2))
    {
      __break(1u);
      return;
    }

    v28 = &v12[176 * v14];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v28 + 34) = 0;
    v28[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BDC8C(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v14 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = a3 | (a3 << 32);
    while (1)
    {
      v22 = &v18[176 * v20 + 32];
      if ((*(v22 + 24) | (*(v22 + 24) << 32)) == v21)
      {
        v23 = *(v22 + 16);
        v24 = *(v23 + 16);
        if (v24 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v20 == v19)
      {
        return;
      }
    }

    if (v24)
    {
      v25 = v23 == a2;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
LABEL_14:
      a2 = *(v22 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v36[1] = a6;
      v28 = v15;

      v29 = &off_1005D1000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v30, v17, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v31 = swift_allocObject();
        sub_1000CBC60(v17, v31 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v31;
        v29 = &off_1005D1000;
      }

      v32 = v29[85] + a2;
      swift_beginAccess();
      a5(&v32[*(v28 + 20)], a7 & 0x101010101FFFF01);
      swift_endAccess();
      if (v20 < *(v18 + 2))
      {
        v33 = *(v22 + 96);
        if (!v33 || (v34 = v29[85], swift_beginAccess(), *(&v34->Flags + v33) != *v32))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v26 = (v23 + 32);
      v27 = (a2 + 32);
      while (v24)
      {
        if (*v26 != *v27)
        {
          goto LABEL_3;
        }

        ++v26;
        ++v27;
        if (!--v24)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v18 = sub_100139804(v18);
LABEL_21:
    if (v20 < *(v18 + 2))
    {
      *&v18[176 * v20 + 128] = a2;

LABEL_28:
      *a1 = v18;
      return;
    }

    __break(1u);
LABEL_34:
    v18 = sub_100139804(v18);
LABEL_26:
    if (v20 >= *(v18 + 2))
    {
      __break(1u);
      return;
    }

    v35 = &v18[176 * v20];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v35 + 34) = 0;
    v35[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BDFC4(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    v17 = a3 | (a3 << 32);
    while (1)
    {
      v18 = &v14[176 * v16 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v20)
    {
      v21 = v19 == a2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_14:
      a2 = *(v18 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v24 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v25, v13, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v26 = swift_allocObject();
        sub_1000CBC60(v13, v26 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v26;
      }

      v27 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      v28 = *(v24 + 20);
      v29 = type metadata accessor for MailboxSyncState(0);
      a5(&v27[v28 + *(v29 + 52)]);
      swift_endAccess();
      if (v16 < *(v14 + 2))
      {
        v30 = *(v18 + 96);
        if (!v30 || (v31 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v30 + v31) != *v27))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a2 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_3;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v14 = sub_100139804(v14);
LABEL_21:
    if (v16 < *(v14 + 2))
    {
      *&v14[176 * v16 + 128] = a2;

LABEL_28:
      *a1 = v14;
      return;
    }

    __break(1u);
LABEL_34:
    v14 = sub_100139804(v14);
LABEL_26:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      return;
    }

    v32 = &v14[176 * v16];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v32 + 34) = 0;
    v32[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BE2F4(char **a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = a3 | (a3 << 32);
    while (1)
    {
      v15 = &v11[176 * v13 + 32];
      if ((*(v15 + 24) | (*(v15 + 24) << 32)) == v14)
      {
        v16 = *(v15 + 16);
        v17 = *(v16 + 16);
        if (v17 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v13 == v12)
      {
        return;
      }
    }

    if (v17)
    {
      v18 = v16 == a2;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
LABEL_14:
      a2 = *(v15 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v21, v10, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v22 = swift_allocObject();
        sub_1000CBC60(v10, v22 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v22;
      }

      v23 = (a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped);
      swift_beginAccess();
      sub_10013FC9C(8u);
      sub_100088568(&v28, 8);
      swift_endAccess();
      if (v13 < *(v11 + 2))
      {
        v24 = *(v15 + 96);
        if (!v24 || (v25 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, swift_beginAccess(), *(v24 + v25) != *v23))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v19 = (v16 + 32);
      v20 = (a2 + 32);
      while (v17)
      {
        if (*v19 != *v20)
        {
          goto LABEL_3;
        }

        ++v19;
        ++v20;
        if (!--v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v11 = sub_100139804(v11);
LABEL_21:
    if (v13 < *(v11 + 2))
    {
      *&v11[176 * v13 + 128] = a2;

LABEL_28:
      *a1 = v11;
      return;
    }

    __break(1u);
LABEL_34:
    v11 = sub_100139804(v11);
LABEL_26:
    if (v13 >= *(v11 + 2))
    {
      __break(1u);
      return;
    }

    v26 = &v11[176 * v13];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v26 + 34) = 0;
    v26[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BE614(char **a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v12);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v16 = *(*a1 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = a3 | (a3 << 32);
    while (1)
    {
      v19 = &v15[176 * v17 + 32];
      if ((*(v19 + 24) | (*(v19 + 24) << 32)) == v18)
      {
        v20 = *(v19 + 16);
        v21 = *(v20 + 16);
        if (v21 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v17 == v16)
      {
        return;
      }
    }

    if (v21)
    {
      v22 = v20 == a2;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
LABEL_14:
      a2 = *(v19 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v25 = &off_1005D1000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v26, v14, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v27 = swift_allocObject();
        sub_1000CBC60(v14, v27 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v27;
        v25 = &off_1005D1000;
      }

      v28 = (&v25[85]->Flags + a2);
      swift_beginAccess();
      sub_1000D2F44(a5 & 0x101010101FFFF01, a6 & 0x101010101FFFF01);
      swift_endAccess();
      if (v17 < *(v15 + 2))
      {
        v29 = *(v19 + 96);
        if (!v29 || (v30 = v25[85], swift_beginAccess(), *(&v30->Flags + v29) != *v28))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v23 = (v20 + 32);
      v24 = (a2 + 32);
      while (v21)
      {
        if (*v23 != *v24)
        {
          goto LABEL_3;
        }

        ++v23;
        ++v24;
        if (!--v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v15 = sub_100139804(v15);
LABEL_21:
    if (v17 < *(v15 + 2))
    {
      *&v15[176 * v17 + 128] = a2;

LABEL_28:
      *a1 = v15;
      return;
    }

    __break(1u);
LABEL_34:
    v15 = sub_100139804(v15);
LABEL_26:
    if (v17 >= *(v15 + 2))
    {
      __break(1u);
      return;
    }

    v31 = &v15[176 * v17];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v31 + 34) = 0;
    v31[140] = 1;
    goto LABEL_28;
  }
}

void sub_1000BE940(char **a1, uint64_t a2, unsigned int a3, char a4, void (*a5)(char *))
{
  v10 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v10);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(*a1 + 2);
  if (v15)
  {
    v16 = 0;
    v17 = a3 | (a3 << 32);
    while (1)
    {
      v18 = &v14[176 * v16 + 32];
      if ((*(v18 + 24) | (*(v18 + 24) << 32)) == v17)
      {
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        if (v20 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v16 == v15)
      {
        return;
      }
    }

    if (v20)
    {
      v21 = v19 == a2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
LABEL_14:
      a2 = *(v18 + 96);
      if (!a2)
      {
        if ((a4 & 1) == 0)
        {
          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

      v24 = v11;

      v25 = &off_1005D1000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        sub_1000CBB98(a2 + v26, v13, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v27 = swift_allocObject();
        sub_1000CBC60(v13, v27 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        a2 = v27;
        v25 = &off_1005D1000;
      }

      v28 = v25[85] + a2;
      swift_beginAccess();
      a5(&v28[*(v24 + 20)]);
      swift_endAccess();
      if (v16 < *(v14 + 2))
      {
        v29 = *(v18 + 96);
        if (!v29 || (v30 = v25[85], swift_beginAccess(), *(&v30->Flags + v29) != *v28))
        {

          return;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v22 = (v19 + 32);
      v23 = (a2 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_3;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    v14 = sub_100139804(v14);
LABEL_21:
    if (v16 < *(v14 + 2))
    {
      *&v14[176 * v16 + 128] = a2;

LABEL_28:
      *a1 = v14;
      return;
    }

    __break(1u);
LABEL_34:
    v14 = sub_100139804(v14);
LABEL_26:
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      return;
    }

    v31 = &v14[176 * v16];
    sub_1000809B8(_swiftEmptySetSingleton);
    Set<>.formNonEmpty()();
    *(v31 + 34) = 0;
    v31[140] = 1;
    goto LABEL_28;
  }
}

uint64_t sub_1000BEC60(uint64_t result, char a2, uint64_t a3, unsigned int a4)
{
  if (*(v4 + 24) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(*v4 + 16);
    if (!v9)
    {
LABEL_18:
      *v4 = v7;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 1;
      return result;
    }

    v10 = 0;
    v11 = *(v4 + 16);
    while (1)
    {
      v12 = v7 + 32 + 176 * v10;
      if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a4 | (a4 << 32)))
      {
        v13 = *(v12 + 16);
        v14 = *(v13 + 16);
        if (v14 == *(a3 + 16))
        {
          break;
        }
      }

LABEL_4:
      if (++v10 == v9)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v15 = v13 == a3;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_15:
      v6 = result;
      v5 = a2;
      sub_100020D10(*v4, *(v4 + 8), *(v4 + 16), 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if (result)
      {
LABEL_16:
        if (v10 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = v18 + 176 * v10;
        *(v19 + 88) = v6;
        *(v19 + 96) = v5 & 1;
        result = sub_100020D58(v7, v8, v11, 1);
        v7 = v18;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a3 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_4;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    result = sub_100139804(v7);
    v18 = result;
    goto LABEL_16;
  }

  return result;
}

void sub_1000BEDD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v220 = a7;
  v203 = a4;
  v204 = a6;
  v202 = a5;
  v205 = a3;
  v216 = a2;
  v218 = a1;
  v207 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v207);
  v206 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1004A4A74();
  v210 = *(v219 - 8);
  __chkstk_darwin(v219);
  v215 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = (&v191 - v10);
  __chkstk_darwin(v11);
  v208 = &v191 - v12;
  __chkstk_darwin(v13);
  v209 = &v191 - v14;
  v217 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v217);
  v16 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v191 - v18;
  __chkstk_darwin(v20);
  v22 = &v191 - v21;
  __chkstk_darwin(v23);
  v25 = &v191 - v24;
  v26 = _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(v26);
  v28 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = (&v191 - v30);
  __chkstk_darwin(v32);
  v34 = &v191 - v33;
  __chkstk_darwin(v35);
  v37 = (&v191 - v36);
  v38 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  v44 = (&v191 - v43);
  if (v42 >> 62)
  {
    if (v42 >> 62 == 1)
    {
      v45 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v46 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1000CB7A0(v45, v46);
      sub_1000C0358(v45, v46, v220);

      sub_1000CB7B4(v45, v46);
    }

    return;
  }

  v47 = v19;
  v196 = v22;
  v197 = v25;
  v200 = v28;
  v201 = v16;
  v194 = v37;
  v195 = v31;
  v48 = v212;
  v193 = v34;
  v211 = v26;
  LODWORD(v213) = *(v42 + 16);
  v49 = *(v42 + 24);
  LODWORD(v31) = *(v42 + 32);
  v50 = *(v42 + 48);
  v198 = *(v42 + 40);
  v199 = v49;
  v51 = v49 >> 60;
  if ((v49 >> 60) <= 3)
  {
    if (v51 <= 1)
    {
      v92 = v216;
      if (!v51)
      {
        return;
      }

LABEL_45:
      v150 = *v214;
      v151 = (v214 + 8);
      v152 = *(v214 + 8);
      v153 = *(v214 + 16);
      if ((*(v214 + 24) & 1) == 0)
      {
LABEL_53:

        v174 = v199;
        sub_1000CB7C8(v199);
        sub_100020D10(v150, v152, v153, 0);

        goto LABEL_57;
      }

      sub_1000CB7C8(v199);
      sub_100020D10(v150, v152, v153, 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v150;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v155 = sub_100139804(v150);
      }

      v156 = v155[2];
      v157 = v215;
      v158 = v201;
      v218 = v155;
      if (v156)
      {
        v206 = v153;
        v207 = v152;
        v208 = v150;
        v209 = v151;
        v192 = v50;
        v159 = 0;
        v243 = 0u;
        memset(v244, 0, 27);
        v241 = 0u;
        v242 = 0u;
        v160 = (v155 + 4);
        v216 = v210 + 16;
        v212 = (v210 + 32);
        v153 = v219;
        while (1)
        {
          sub_1000CBB98(v220, v158, type metadata accessor for State.Logger);
          v162 = v160[1];
          v161 = v160[2];
          v230 = *v160;
          v231 = v162;
          v232 = v161;
          v163 = v160[6];
          v165 = v160[3];
          v164 = v160[4];
          v235 = v160[5];
          v236 = v163;
          v233 = v165;
          v234 = v164;
          v166 = v160[10];
          v168 = v160[7];
          v167 = v160[8];
          v239 = v160[9];
          v240 = v166;
          v237 = v168;
          v238 = v167;
          (*v216)(v157, v158, v153);
          v152 = *(v158 + *(v217 + 20));
          sub_10000E08C(&v230, &v225);
          sub_1000CBC00(v158, type metadata accessor for State.Logger);
          v169 = v231;
          v170 = WORD6(v240);
          v150 = DWORD2(v231);

          sub_10000E0E8(&v230);
          v171 = v200;
          (*v212)();
          v172 = v171 + *(v211 + 20);
          *v172 = v152;
          *(v172 + 1) = v170;
          *(v172 + 1) = v169;
          *(v172 + 4) = v150;
          sub_10009B724(&v241, v213, v92, v171);
          sub_1000CBC00(v171, _s12LocalMailboxV6LoggerVMa);
          ++v159;
          v173 = v218[2];
          if (v159 == v173)
          {
            break;
          }

          v160 += 11;
          v157 = v215;
          v158 = v201;
          if (v159 >= v173)
          {
            __break(1u);
            goto LABEL_53;
          }
        }

        sub_100020D58(v208, v207, v206, 1);
        sub_1000CB848(v199);

        v95 = v214;
        v151 = v209;
      }

      else
      {
        sub_100020D58(v150, v152, v153, 1);
        sub_1000CB848(v199);

        v95 = v214;
      }

      *v95 = v218;
      *v151 = 0;
      *(v151 + 1) = 0;
LABEL_69:
      *(v95 + 24) = 1;
      return;
    }

    if (v51 == 2)
    {
      v93 = v199;
      v94 = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v222 = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v223 = v94;
      v224[0] = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *(v224 + 11) = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v221 = *((v199 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v95 = v214;
      v96 = *v214;
      v97 = *(v214 + 8);
      v98 = *(v214 + 16);
      if (*(v214 + 24))
      {
        v207 = v214 + 8;
        v215 = v47;

        sub_1000CB7C8(v93);
        sub_1000CB914(&v221, &v230);
        v208 = v98;
        sub_100020D10(v96, v97, v98, 1);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v96;
        if ((v99 & 1) == 0)
        {
          v100 = sub_100139804(v96);
        }

        v101 = v100[2];
        v102 = v217;
        v218 = v100;
        if (v101)
        {
          v103 = v48;
          v205 = v97;
          v206 = v96;
          v192 = v50;
          v104 = 0;
          v243 = v223;
          v244[0] = v224[0];
          *(v244 + 11) = *(v224 + 11);
          v241 = v221;
          v242 = v222;
          v31 = v100 + 4;
          v209 = (v210 + 16);
          v210 += 32;
          v105 = v195;
          while (1)
          {
            v106 = v215;
            sub_1000CBB98(v220, v215, type metadata accessor for State.Logger);
            v108 = v31[1];
            v107 = v31[2];
            v230 = *v31;
            v231 = v108;
            v232 = v107;
            v109 = v31[6];
            v111 = v31[3];
            v110 = v31[4];
            v235 = v31[5];
            v236 = v109;
            v233 = v111;
            v234 = v110;
            v112 = v31[10];
            v114 = v31[7];
            v113 = v31[8];
            v239 = v31[9];
            v240 = v112;
            v237 = v114;
            v238 = v113;
            v115 = v219;
            (*v209)(v103, v106, v219);
            v116 = *(v106 + *(v102 + 20));
            sub_10000E08C(&v230, &v225);
            sub_1000CBC00(v106, type metadata accessor for State.Logger);
            v50 = v231;
            LOWORD(v106) = WORD6(v240);
            v117 = DWORD2(v231);

            sub_10000E0E8(&v230);
            (*v210)(v105, v103, v115);
            v118 = v105 + *(v211 + 20);
            *v118 = v116;
            *(v118 + 1) = v106;
            *(v118 + 1) = v50;
            *(v118 + 4) = v117;
            sub_10009B724(&v241, v213, v216, v105);
            v40 = sub_1000CBC00(v105, _s12LocalMailboxV6LoggerVMa);
            ++v104;
            v119 = v218[2];
            if (v104 == v119)
            {
              break;
            }

            v31 += 11;
            v102 = v217;
            if (v104 >= v119)
            {
              __break(1u);
              goto LABEL_33;
            }
          }

          sub_1000CB970(&v221);
          sub_100020D58(v206, v205, v208, 1);
          v95 = v214;
          v93 = v199;
        }

        else
        {
          sub_1000CB970(&v221);
          sub_100020D58(v96, v97, v208, 1);
        }

        sub_1000CB848(v93);

        *v95 = v218;
        v175 = v207;
        *v207 = 0;
        *(v175 + 8) = 0;
        goto LABEL_69;
      }

      sub_1000CB7C8(v93);
      sub_1000CB914(&v221, &v230);
      sub_100020D10(v96, v97, v98, 0);

      sub_1000CB970(&v221);
      sub_1000CB848(v93);

LABEL_83:

      return;
    }

LABEL_33:
    v212 = v40;
    v215 = v41;
    v192 = v50;
    v120 = v199;
    v121 = v44;
    v122 = swift_projectBox();
    v218 = v121;
    sub_1000CBB98(v122, v121, type metadata accessor for UntaggedResponse);
    v61 = v214;
    v60 = *v214;
    v58 = (v214 + 8);
    v123 = *(v214 + 8);
    v124 = *(v214 + 16);
    if ((*(v214 + 24) & 1) == 0)
    {

      sub_1000CB7C8(v120);
      sub_100020D10(v60, v123, v124, 0);

LABEL_79:
      v184 = v215;
      sub_1000CBB98(v218, v215, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v185 = *v184;
        v186 = *(v184 + 8);
        v187 = *(v184 + 96);
        v234 = *(v184 + 80);
        v235 = v187;
        v188 = *(v184 + 128);
        v236 = *(v184 + 112);
        v237 = v188;
        v189 = *(v184 + 32);
        v230 = *(v184 + 16);
        v231 = v189;
        v190 = *(v184 + 64);
        v232 = *(v184 + 48);
        v233 = v190;
        sub_1000CB8B8(&v230, &v225);
        sub_1000CA524(v185, v186, v61, &v230);
        sub_10009A0FC(&v230);
        sub_10009A0FC(&v230);
      }

      else
      {
        sub_1000CBC00(v184, type metadata accessor for UntaggedResponse);
      }

      sub_1000CBC00(v218, type metadata accessor for UntaggedResponse);
      sub_1000CB848(v120);

      goto LABEL_83;
    }

    LODWORD(v201) = v31;
    v125 = v60[2];
    if (!v125)
    {

LABEL_71:
      sub_1000CB7C8(v120);
LABEL_78:
      *v61 = v60;
      *v58 = 0;
      v58[1] = 0;
      *(v61 + 24) = 1;
      goto LABEL_79;
    }

    v200 = v124;
    v208 = v123;
    v66 = 0;
    v53 = 128;
    v54 = &off_1005D1000;
    while (1)
    {
      v126 = *(v60 + v53);
      if (v126)
      {
        v127 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        if (*(v126 + v127) == v213)
        {
          break;
        }
      }

      ++v66;
      v53 += 176;
      if (v125 == v66)
      {

        v120 = v199;
        goto LABEL_71;
      }
    }

    v128 = v197;
    sub_1000CBB98(v220, v197, type metadata accessor for State.Logger);
    v59 = v60 + v53;
    v130 = *(v60 + v53 - 80);
    v129 = *(v60 + v53 - 64);
    v230 = *(v60 + v53 - 96);
    v231 = v130;
    v232 = v129;
    v131 = *(v60 + v53);
    v133 = *(v60 + v53 - 48);
    v132 = *(v60 + v53 - 32);
    v235 = *(v60 + v53 - 16);
    v236 = v131;
    v233 = v133;
    v234 = v132;
    v134 = *(v60 + v53 + 64);
    v136 = *(v60 + v53 + 16);
    v135 = *(v60 + v53 + 32);
    v239 = *(v60 + v53 + 48);
    v240 = v134;
    v237 = v136;
    v238 = v135;
    LODWORD(v220) = HIDWORD(v134);
    v137 = v210;
    (*(v210 + 16))(v209, v128, v219);
    LODWORD(v217) = *(v128 + *(v217 + 20));

    sub_1000CB7C8(v199);
    sub_100020D10(v60, v208, v200, 1);
    v196 = v126;

    sub_10000E08C(&v230, &v225);
    sub_1000CBC00(v128, type metadata accessor for State.Logger);
    v138 = v231;
    LODWORD(v213) = DWORD2(v231);

    sub_10000E0E8(&v230);
    v76 = v194;
    (*(v137 + 32))(v194, v209, v219);
    v139 = v76 + *(v211 + 20);
    *v139 = v217;
    *(v139 + 1) = v220;
    *(v139 + 1) = v138;
    *(v139 + 4) = v213;
    v213 = v60;
    if (v66 >= v60[2])
    {
      __break(1u);
LABEL_86:
      __break(1u);
    }

    else
    {
      v140 = *(v59 - 96);
      v141 = *(v59 - 80);
      v219 = *(v59 - 24);
      v220 = v141;
      LODWORD(v217) = *(v59 - 16);
      v142 = v204;
      v143 = v205;
      if (v204 && *(v204 + 16) && (v144 = sub_100063B5C(v220, *(v59 - 72)), (v145 & 1) != 0))
      {
        v146 = *(v142 + 56) + 72 * v144;
        v221 = *v146;
        v148 = *(v146 + 32);
        v147 = *(v146 + 48);
        v149 = *(v146 + 64);
        v222 = *(v146 + 16);
        v223 = v148;
        LOWORD(v224[1]) = v149;
        v224[0] = v147;
        v242 = *(v146 + 16);
        v243 = *(v146 + 32);
        v244[0] = *(v146 + 48);
        LOWORD(v244[1]) = *(v146 + 64);
        v241 = *v146;
        sub_100063BD4(&v221, &v225);
        v227 = v243;
        v228 = v244[0];
        v229 = v244[1];
        v225 = v241;
        v226 = v242;
      }

      else
      {
        v229 = 0;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
      }

      v176 = v203;
      v59 = v202;
      v243 = v227;
      v244[0] = v228;
      LOWORD(v244[1]) = v229;
      v241 = v225;
      v242 = v226;
      LODWORD(v211) = *(v216 + 3);
      v216 = v140;

      sub_1000CA1A0(v219);
      v177 = WindowOfInterestSizes.subscript.getter(&v241, v143, v176);
      v179 = v178;
      sub_100025F40(&v225, &qword_1005CF248, &qword_1004D22C0);
      v76 = v196;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v59 = v206;
        sub_1000CBB98(v76 + v180, v206, _s13SelectedStateV7WrappedVMa);
        _s13SelectedStateV8_StorageCMa(0);
        v181 = swift_allocObject();
        sub_1000CBC60(v59, v181 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

        v76 = v181;
      }

      swift_beginAccess();
      v54 = v194;
      sub_1000D17D0(v218, v201, v198, v192, v211, v177, v179 & 1, v194);
      swift_endAccess();

      sub_1000CB838(v219);

      v60 = v213;
      v182 = v213;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_76;
      }
    }

    v182 = sub_100139804(v60);
LABEL_76:
    sub_1000CBC00(v54, _s12LocalMailboxV6LoggerVMa);

    v183 = v66 >= *(v182 + 2);
    v61 = v214;
    v120 = v199;
    if (v183)
    {
      __break(1u);
      goto LABEL_89;
    }

    *&v182[v53] = v76;

    sub_100020D58(v60, v208, v200, 1);
    v60 = v182;
    goto LABEL_78;
  }

  if ((v51 - 5) < 3)
  {
    return;
  }

  if (v51 != 4)
  {
    v92 = v216;
    if (v199 != 0x8000000000000000)
    {
      return;
    }

    goto LABEL_45;
  }

  v52 = v214;
  v53 = *v214;
  v54 = (v214 + 8);
  v55 = *(v214 + 8);
  v56 = *(v214 + 16);
  if (*(v214 + 24))
  {
    v57 = *(v53 + 16);
    if (!v57)
    {
      goto LABEL_66;
    }

    v216 = *(v214 + 16);
    v218 = v55;
    v192 = v50;
    v58 = 0;
    v59 = 128;
    v60 = &off_1005D1000;
    while (1)
    {
      v61 = *(v53 + v59);
      if (v61)
      {
        v62 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v63 = *(v61 + v62);
        v64 = v219;
        if (v63 == v213)
        {
          break;
        }
      }

      v58 = (v58 + 1);
      v59 += 176;
      if (v57 == v58)
      {
        v52 = v214;
        goto LABEL_66;
      }
    }

    LODWORD(v201) = v31;
    v65 = v196;
    sub_1000CBB98(v220, v196, type metadata accessor for State.Logger);
    v66 = v53 + v59;
    v68 = *(v53 + v59 - 80);
    v67 = *(v53 + v59 - 64);
    v230 = *(v53 + v59 - 96);
    v231 = v68;
    v232 = v67;
    v69 = *(v53 + v59);
    v71 = *(v53 + v59 - 48);
    v70 = *(v53 + v59 - 32);
    v235 = *(v53 + v59 - 16);
    v236 = v69;
    v233 = v71;
    v234 = v70;
    v72 = *(v53 + v59 + 64);
    v74 = *(v53 + v59 + 16);
    v73 = *(v53 + v59 + 32);
    v239 = *(v53 + v59 + 48);
    v240 = v72;
    v237 = v74;
    v238 = v73;
    LODWORD(v220) = HIDWORD(v72);
    (*(v210 + 16))(v208, v65, v64);
    LODWORD(v217) = *(v65 + *(v217 + 20));

    sub_1000CB7C8(v199);
    sub_100020D10(v53, v218, v216, 1);

    sub_10000E08C(&v230, &v225);
    sub_1000CBC00(v65, type metadata accessor for State.Logger);
    v75 = v231;
    LODWORD(v215) = DWORD2(v231);

    sub_10000E0E8(&v230);
    v76 = v193;
    (*(v210 + 32))();
    v77 = v76 + *(v211 + 20);
    *v77 = v217;
    *(v77 + 1) = v220;
    *(v77 + 1) = v75;
    *(v77 + 4) = v215;
    if (v58 >= *(v53 + 16))
    {
      goto LABEL_86;
    }

    v78 = *(v66 - 96);
    v79 = *(v66 - 80);
    v80 = *(v66 - 24);
    v81 = *(v66 - 16);
    v220 = v78;

    v215 = v79;

    v219 = v80;
    LODWORD(v217) = v81;
    sub_1000CA1A0(v80);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v206;
    if ((v82 & 1) == 0)
    {
      v84 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1000CBB98(v61 + v84, v83, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v85 = swift_allocObject();
      sub_1000CBC60(v83, v85 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      v61 = v85;
    }

    v86 = v61 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v87 = *(v207 + 20);
    v88 = v86 + v87 + *(type metadata accessor for MailboxSyncState(0) + 48);
    v89 = *(v88 + 24);
    v90 = *(v88 + 32);
    sub_100025928(v88, v89);
    (*(v90 + 56))(v201, v198, v192, v89, v90);
    swift_endAccess();

    sub_1000CB838(v219);

    v91 = v53;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_19:
      sub_1000CBC00(v193, _s12LocalMailboxV6LoggerVMa);

      v52 = v214;
      if (v58 >= *(v91 + 2))
      {
        __break(1u);
        return;
      }

      *&v91[v59] = v61;

      sub_100020D58(v53, v218, v216, 1);
      sub_1000CB848(v199);

      v53 = v91;
LABEL_66:
      *v52 = v53;
      *v54 = 0;
      v54[1] = 0;
      *(v52 + 24) = 1;
      return;
    }

LABEL_89:
    v91 = sub_100139804(v53);
    goto LABEL_19;
  }

  v174 = v199;
  sub_1000CB7C8(v199);
  sub_100020D10(v53, v55, v56, 0);

LABEL_57:

  sub_1000CB848(v174);
}