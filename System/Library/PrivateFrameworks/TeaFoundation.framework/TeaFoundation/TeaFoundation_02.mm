unint64_t sub_1BF0103A4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BF0B6154(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BF0B61C4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

uint64_t sub_1BF010444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = sub_1BF178E2C();
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v67 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF013118(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v74 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v58 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v63 = v58 - v18;
  v19 = sub_1BF178D8C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  v73 = a2;
  v70 = 32;
  v71 = 0xE100000000000000;
  sub_1BF013170();
  if ((sub_1BF17AF8C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v72 = a1;
  v73 = a2;
  v70 = 32;
  v71 = 0xE100000000000000;
  v24 = sub_1BF17AF2C();
  v25 = v24;
  if (v24[2] < 2uLL)
  {

LABEL_8:
    sub_1BF0B62E0();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    return swift_willThrow();
  }

  v26 = v24[7];
  v72 = v24[6];
  v73 = v26;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF178D6C();
  sub_1BF17AF6C();
  v28 = v27;
  (*(v20 + 8))(v23, v19);

  v61 = v25;
  if (!v28)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  v29 = v63;
  v30 = v74;
  sub_1BF178EDC();

  sub_1BF01DBC0(v29, v15);
  v31 = sub_1BF178F0C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
  {
    sub_1BF01F8EC(v15);
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v32 = sub_1BF178EAC();
    v36 = v15;
    v33 = v37;
    (*(*(v31 - 8) + 8))(v36, v31);
  }

  sub_1BF01DBC0(v29, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    result = sub_1BF01F8EC(v30);
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = sub_1BF178E5C();
    result = (*(*(v31 - 8) + 8))(v30, v31);
    v38 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v40 = *(v39 + 16);
      if (v40)
      {
        v59 = v33;
        v60 = v32;
        v72 = MEMORY[0x1E69E7CC0];
        sub_1BF01DC24();
        v38 = v72;
        v41 = *(v69 + 16);
        v42 = *(v69 + 80);
        v58[1] = v39;
        v43 = v39 + ((v42 + 32) & ~v42);
        v65 = *(v69 + 72);
        v66 = v41;
        v69 += 16;
        v64 = (v69 - 8);
        do
        {
          v44 = v67;
          v45 = v68;
          v66(v67, v43, v68);
          v74 = sub_1BF178E0C();
          v47 = v46;
          v48 = sub_1BF178E1C();
          if (v49)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0;
          }

          if (v49)
          {
            v51 = v49;
          }

          else
          {
            v51 = 0xE000000000000000;
          }

          (*v64)(v44, v45);
          v72 = v38;
          v52 = *(v38 + 16);
          if (v52 >= *(v38 + 24) >> 1)
          {
            sub_1BF01DC24();
            v38 = v72;
          }

          *(v38 + 16) = v52 + 1;
          v53 = (v38 + 32 * v52);
          v53[4] = v74;
          v53[5] = v47;
          v53[6] = v50;
          v53[7] = v51;
          v43 += v65;
          --v40;
        }

        while (v40);

        v29 = v63;
        v33 = v59;
        v32 = v60;
      }

      else
      {
      }
    }
  }

  if (v61[2])
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v54 = sub_1BF01DC58();
    v55 = sub_1BF179DAC();
    v56 = sub_1BF179DAC();
    result = sub_1BF01F8EC(v29);
    v57 = v62;
    *v62 = v32;
    v57[1] = v33;
    v57[2] = v38;
    *(v57 + 24) = v54 & 1;
    v57[4] = v55;
    v57[5] = v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF010A20()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_62_0();
  sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_52_0();
  sub_1BF010B10();
  if (OUTLINED_FUNCTION_14_4(v7))
  {
    OUTLINED_FUNCTION_31_3();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_11_2();
    if (!v9)
    {
      goto LABEL_14;
    }

    v5 = v8;
  }

  if (v4)
  {
    v10 = (*(*v3 + 56) + 16 * v5);
    *v10 = v2;
    v10[1] = v1;
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_58_0();
    sub_1BF01FAF4(v13, v14, v0, v2, v1, v15);
    OUTLINED_FUNCTION_26_2();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF010B10()
{
  if (!qword_1ED8EADD0)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADD0);
    }
  }
}

uint64_t sub_1BF010B6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v25 = a2;
  v26 = a3;
  v6 = *(a4 + 16);
  if (v6)
  {
    v27 = MEMORY[0x1E69E7CC0];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF00DD60();
    v7 = v27;
    v8 = (a4 + 56);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v32 = *(v8 - 3);
      *&v33 = v9;
      swift_bridgeObjectRetain_n();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      MEMORY[0x1BFB52000](61, 0xE100000000000000);
      MEMORY[0x1BFB52000](v10, v11);

      v12 = v32;
      v27 = v7;
      v13 = *(v7 + 16);
      if (v13 >= *(v7 + 24) >> 1)
      {
        sub_1BF00DD60();
        v7 = v27;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
    sub_1BEFF5158(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BF01B738();
    v15 = sub_1BF179F7C();
    v17 = v16;

    v32 = 63;
    *&v33 = 0xE100000000000000;
    MEMORY[0x1BFB52000](v15, v17);

    MEMORY[0x1BFB52000](63, 0xE100000000000000);

    v18 = v25;
    v5 = v26;
  }

  else
  {
    v18 = a2;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  sub_1BF010E70(v18, v5, &v27);
  if (v27)
  {
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v19 = sub_1BF012714(v18, v5);

    v24 = sub_1BF179DAC();
    sub_1BF01D33C(&v27, v23);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v20 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0133B0(v20, &v32, &v24, v19);

    v21 = v24;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF01D3C4(&v27);
  }

  else
  {

    return 0;
  }

  return v21;
}

void *sub_1BF010E70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1BF012714(a1, a2);
  v57 = v6;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v56 = v7;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = 0;
  v51 = (v5 + 40);
  v15 = MEMORY[0x1E69E7CC8];
  v52 = v12;
  v53 = v8;
  v54 = v5;
  if (!v11)
  {
    while (1)
    {
LABEL_4:
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_51;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        v13 = v16;
        goto LABEL_8;
      }
    }

    v48 = v62;
    sub_1BF0131C8(v15, 2u, v62);
    if (!v62[0])
    {
      v48 = v63;
      sub_1BF0131C8(v15, 1u, v63);
    }

    memcpy(__src, v48, sizeof(__src));
    return memcpy(a3, __src, 0x48uLL);
  }

  while (1)
  {
LABEL_8:
    memcpy(__dst, (*(v56 + 56) + 72 * (__clz(__rbit64(v11)) | (v13 << 6))), 0x48uLL);
    v60[0] = v57;
    sub_1BF013314(__dst, __src);
    v58 = v15;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01A558(v60);
    v17 = v60[0];
    v59 = *(&__dst[0] + 1);
    v18 = *&__dst[0];
    v19 = *(v5 + 16);
    if (v19 != *(*&__dst[0] + 16))
    {
      goto LABEL_34;
    }

    if (v19 && v5 != *&__dst[0])
    {
      v20 = (*&__dst[0] + 40);
      v21 = v51;
      while (1)
      {
        v22 = *(v21 - 1) == *(v20 - 1) && *v21 == *v20;
        if (!v22 && (sub_1BF17B86C() & 1) == 0)
        {
          break;
        }

        v21 += 2;
        v20 += 2;
        if (!--v19)
        {
          goto LABEL_18;
        }
      }

LABEL_34:

      goto LABEL_35;
    }

LABEL_18:
    v23 = *(v17 + 16);
    if (v23 != *(v59 + 16))
    {
      goto LABEL_34;
    }

    v50 = a3;
    if (!v23 || v17 == v59)
    {
LABEL_33:

      v33 = *&__dst[4];
      v34 = *(&__dst[1] + 1);
      v35 = 2;
      v37 = __dst[2];
      v36 = __dst[3];
      a3 = v50;
      v14 = v58;
      goto LABEL_36;
    }

    v24 = (v17 + 56);
    v25 = (v59 + 56);
    v55 = v18;
    while (1)
    {
      v26 = v17;
      v27 = *(v24 - 1);
      v28 = *v24;
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *(v24 - 3) == *(v25 - 3) && *(v24 - 2) == *(v25 - 2);
      if (!v31 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v32 = v27 == v29 && v28 == v30;
      if (!v32 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v24 += 4;
      v25 += 4;
      --v23;
      v17 = v26;
      v18 = v55;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    a3 = v50;
    v5 = v54;
    v18 = v55;
LABEL_35:
    v14 = v58;
    v38 = sub_1BF01E178(v18, v5);
    v33 = *&__dst[4];
    v34 = *(&__dst[1] + 1);
    v37 = __dst[2];
    v36 = __dst[3];
    v35 = v38 & 1;
LABEL_36:
    *__src = v18;
    *&__src[8] = v59;
    __src[16] = __dst[1];
    *&__src[24] = v34;
    *&__src[32] = v37;
    *&__src[48] = v36;
    *&__src[64] = v33;
    memcpy(v64, __src, sizeof(v64));
    sub_1BF013314(__dst, v60);
    swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v14;
    v39 = sub_1BF01E288();
    if (__OFADD__(v14[2], (v40 & 1) == 0))
    {
      break;
    }

    v41 = v39;
    v42 = v40;
    sub_1BF01135C(0);
    if (sub_1BF17B43C())
    {
      v43 = sub_1BF01E288();
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_53;
      }

      v41 = v43;
    }

    v15 = v60[0];
    if (v42)
    {
      *(*(v60[0] + 56) + v41) = v35;
      sub_1BF0187DC(__src);
      sub_1BF0187DC(__dst);
    }

    else
    {
      *(v60[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
      memcpy((*(v15 + 48) + 72 * v41), v64, 0x48uLL);
      *(*(v15 + 56) + v41) = v35;
      sub_1BF0187DC(__dst);

      v45 = *(v15 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_52;
      }

      *(v15 + 16) = v47;
    }

    v11 &= v11 - 1;
    v8 = v53;
    v5 = v54;
    v12 = v52;
    v14 = 0;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);

  __break(1u);
LABEL_53:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

void sub_1BF01135C(uint64_t a1)
{
  if (!qword_1ED8EADE0)
  {
    sub_1BF0113C0();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EADE0);
    }
  }
}

unint64_t sub_1BF0113C0()
{
  result = qword_1ED8EB118;
  if (!qword_1ED8EB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB118);
  }

  return result;
}

void *sub_1BF011414(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BF070F14(0, &unk_1ED8EAD48, sub_1BF01366C);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1BF0A90EC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BF01366C();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BF011540(void *result, unsigned int a2)
{
  if (a2 > 2)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 3;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = ((2 * a2) & 2 | 1u) << 60;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

uint64_t sub_1BF011574(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BF014E18(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {

    return sub_1BF014E18(a1, a2);
  }
}

void sub_1BF0115C4(uint64_t a1)
{
  if (!qword_1ED8EAD38)
  {
    sub_1BF179B3C();
    sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
    v1 = sub_1BF17BBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EAD38);
    }
  }
}

void sub_1BF011664()
{
  OUTLINED_FUNCTION_18_1();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_1BEFE4510(0, v5, v2, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 16);
      if (v3)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_23();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1BF011754(uint64_t a1, uint64_t a2)
{
  sub_1BF17BB6C();
  sub_1BF00DD94();
  sub_1BF01A6B4();
  v4 = sub_1BF17BB9C();

  return sub_1BF012D40(a1, a2, v4);
}

BOOL sub_1BF0117D4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1;
  }

  v8 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = v8 | (v7 << 16);
  while (1)
  {
    v11 = ((a4 ^ a3) & 0xFFFFFFFFFFFFC000) != 0;
    if ((a4 ^ a3) < 0x4000)
    {
      break;
    }

    a4 = sub_1BF17AE8C();
    v12 = sub_1BF17AEDC();
    v14 = v13;
    if (v9 < 0x4000)
    {
      goto LABEL_18;
    }

    v15 = v12;
    v9 = sub_1BF17A1DC();
    if (v15 == sub_1BF17A2EC() && v14 == v16)
    {
    }

    else
    {
      v18 = sub_1BF17B86C();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v9 >= 0x4000)
  {
    sub_1BF17A1DC();
    sub_1BF17A2EC();
LABEL_18:

    return v11;
  }

  return 1;
}

void sub_1BF011978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF00DD94();

  sub_1BF01A6B4();
}

uint64_t PromiseDeduper.promise(key:loggingKey:createBlock:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v58 = a2;
  v59 = a5;
  v9 = a1;
  v10 = *v5;
  v11 = *(*v5 + 80);
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v62 = &v55 - v13;
  v14 = v5[6];
  v15 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v14);
  (*(v15 + 8))(v14, v15);
  swift_beginAccess();
  v16 = *(v10 + 88);
  type metadata accessor for Promise(0, v16, v17, v18);
  v19 = *(v10 + 96);
  sub_1BF179EAC();
  v20 = v63;
  if (v63)
  {
    swift_endAccess();
    v21 = v6[6];
    v22 = v6[7];
    __swift_project_boxed_opaque_existential_1(v6 + 3, v21);
    OUTLINED_FUNCTION_4_35();
    v23(v21, v22);
    if (a3)
    {
      if (qword_1ED8EF4B0 != -1)
      {
        OUTLINED_FUNCTION_0_74(&qword_1ED8EF4B0);
      }

      v24 = sub_1BF1797FC();
      __swift_project_value_buffer(v24, qword_1ED8F52B0);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v25 = sub_1BF1797DC();
      v26 = sub_1BF17ACDC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_70();
        v28 = OUTLINED_FUNCTION_44_0();
        v64[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1BF01A7AC(v58, a3, v64);
        _os_log_impl(&dword_1BEFE0000, v25, v26, "Using existing Promise for key: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_28();
      }
    }
  }

  else
  {
    v61 = v19;
    v55 = v16;
    v57 = v12;
    v29 = swift_endAccess();
    v30 = a4;
    v56 = v9;
    if (a3)
    {
      if (qword_1ED8EF4B0 != -1)
      {
        OUTLINED_FUNCTION_0_74(&qword_1ED8EF4B0);
      }

      v31 = sub_1BF1797FC();
      __swift_project_value_buffer(v31, qword_1ED8F52B0);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v32 = sub_1BF1797DC();
      v33 = sub_1BF17ACDC();

      v34 = v32;
      if (os_log_type_enabled(v32, v33))
      {
        v35 = OUTLINED_FUNCTION_70();
        v36 = OUTLINED_FUNCTION_44_0();
        v64[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1BF01A7AC(v58, a3, v64);
        _os_log_impl(&dword_1BEFE0000, v34, v33, "Creating new Promise for key: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_28();
      }

      else
      {
      }

      v9 = v56;
    }

    v37 = v30(v29);
    v38 = v60;
    v39 = *(v60 + 16);
    v40 = v62;
    v39(v62, v9, v11);
    v58 = v39;
    v59 = v37;
    v63 = v37;
    swift_beginAccess();
    sub_1BF179E9C();

    sub_1BF179EBC();
    swift_endAccess();
    v41 = v6[6];
    v42 = v6[7];
    __swift_project_boxed_opaque_existential_1(v6 + 3, v41);
    OUTLINED_FUNCTION_4_35();
    v43(v41, v42);
    v39(v40, v9, v11);
    v44 = v40;
    v45 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v46 = swift_allocObject();
    v47 = v55;
    v46[2] = v11;
    v46[3] = v47;
    v46[4] = v61;
    v46[5] = v6;
    v60 = *(v38 + 32);
    (v60)(v46 + v45, v44, v11);

    v48 = MEMORY[0x1E69E7CA8];
    v49 = sub_1BF014EDC();
    Promise.then<A>(on:closure:)(v49, sub_1BF0123E0, v46, v48 + 8);

    v50 = v62;
    v58(v62, v56, v11);
    v51 = swift_allocObject();
    *(v51 + 2) = v11;
    *(v51 + 3) = v47;
    v52 = v60;
    *(v51 + 4) = v61;
    *(v51 + 5) = v6;
    v52(&v51[v45], v50, v11);
    v53 = qword_1ED8F0210;

    if (v53 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
    }

    sub_1BEFF77FC(off_1ED8F0218, sub_1BF147828, v51);

    return v59;
  }

  return v20;
}

void *Array.mapToDictionary<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BF179CEC();
  sub_1BF17A65C();
  sub_1BF179E9C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  result = sub_1BF17A3EC();
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1BF012104(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a7;
  v23[3] = a1;
  v12 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v23 - v14;
  v16 = *(a5 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v21, a2, a5, v19);
  a3(a2);
  if (v7)
  {
    return (*(v16 + 8))(v21, a5);
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, a6);
  sub_1BF179E9C();
  return sub_1BF179EBC();
}

uint64_t sub_1BF0122D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[6];
  v5 = a2[7];
  v6 = *a2;
  __swift_project_boxed_opaque_existential_1(a2 + 3, v4);
  (*(v5 + 8))(v4, v5);
  if (!a2[8])
  {
    swift_beginAccess();
    type metadata accessor for Promise(255, *(v6 + 88), v7, v8);
    sub_1BF179E9C();
    sub_1BF179D7C();
    swift_endAccess();
  }

  return sub_1BF0304EC(a2);
}

uint64_t sub_1BF012460(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BF1794AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = ((a1 + v14) & ~v12);
    }

    return __swift_getEnumTagSinglePayload(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

uint64_t MockServer.get(path:requestHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1BF01C154(a1, a2, a3, a4, &unk_1F3DC7A90, sub_1BF01B998);
}

{
  return sub_1BF01C154(a1, a2, a3, a4, &unk_1F3DC7A68, sub_1BF16C470);
}

uint64_t sub_1BF0126D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF012714(uint64_t a1, unint64_t a2)
{
  v78 = 63;
  v79 = 0xE100000000000000;
  v75 = &v78;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF014764, v74, a1, a2);
  v7 = v5;
  v76 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  v8 = v5[2];
  if (v8 >= 2)
  {
    v9 = v5[8];
    v10 = v5[9];
    v2 = v5[10];
    v11 = v5[11];
    v78 = 38;
    v79 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v5, v6);
    v71 = &v78;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    a1 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BF012F08, v70, v9, v10, v2, v11);
    sub_1BF012F24(a1, &v77, &v76);

    v8 = v7[2];
  }

  if (!v8)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    sub_1BF01C20C();
    v20 = v69;
    goto LABEL_6;
  }

  v12 = v7[4];
  v13 = v7[5];
  v14 = v7[6];
  v15 = v7[7];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v78 = 47;
  v79 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v16, v17);
  v71 = &v78;
  a1 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BF01C1EC, v70, v12, v13, v14, v15);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1BF179DAC();
  v2 = *(a1 + 16);
  v73 = v19;
  if (!v2)
  {
    v20 = a1;
    goto LABEL_23;
  }

  v20 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v21 = 0;
  v22 = (v20 + 56);
  v72 = a1;
  v23 = (a1 + 56);
  do
  {
    v24 = *(v23 - 3);
    v25 = *(v23 - 2);
    v26 = *(v23 - 1);
    a1 = *v23;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if ((sub_1BF00DC20(123, 0xE100000000000000, v24, v25) & 1) != 0 && sub_1BF0117D4(0x7DuLL, 0xE100000000000000, v24, v25, v26, a1))
    {
      v27 = sub_1BF17AE9C();
      if (v28)
      {
        v27 = v25;
      }

      if (v25 >> 14 < v27 >> 14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v29 = v20;
      v30 = sub_1BF17AEFC();
      v32 = v31;

      if (__OFSUB__(sub_1BF17AECC(), 1))
      {
        goto LABEL_32;
      }

      v33 = sub_1BF17AE9C();
      if (v34)
      {
        v35 = v32;
      }

      else
      {
        v35 = v33;
      }

      if (v35 >> 14 < v30 >> 14)
      {
        goto LABEL_33;
      }

      v36 = sub_1BF17AEFC();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = MEMORY[0x1BFB51F50](v36, v38, v40, v42);
      v45 = v44;

      v46 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v46;
      sub_1BF00E13C(v43, v45, v21, isUniquelyReferenced_nonNull_native, v48, v49, v50, v51, v72, v73);
      a1 = v78;
      v52 = sub_1BF17AEEC();
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (v21 >= *(v29 + 16))
      {
        goto LABEL_35;
      }

      v20 = v29;
      v73 = a1;
      *(v22 - 3) = v52;
      *(v22 - 2) = v53;
      *(v22 - 1) = v54;
      *v22 = v55;
    }

    ++v21;
    v23 += 4;

    v22 += 4;
  }

  while (v2 != v21);
  v18 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v56 = *(v20 + 16);
  if (v56)
  {
    v78 = v18;
    sub_1BF00DD60();
    v57 = v78;
    v58 = (v20 + 56);
    do
    {
      v59 = *(v58 - 3);
      v60 = *(v58 - 2);
      v61 = *(v58 - 1);
      v62 = *v58;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v63 = MEMORY[0x1BFB51F50](v59, v60, v61, v62);
      v65 = v64;

      v78 = v57;
      v66 = *(v57 + 16);
      if (v66 >= *(v57 + 24) >> 1)
      {
        sub_1BF00DD60();
        v57 = v78;
      }

      *(v57 + 16) = v66 + 1;
      v67 = v57 + 16 * v66;
      *(v67 + 32) = v63;
      *(v67 + 40) = v65;
      v58 += 4;
      --v56;
    }

    while (v56);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v57;
}

uint64_t sub_1BF012C4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF0B7088(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF012FDC(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1BF012D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v29 = ~v5;
    v7 = *(a1 + 16);
    v30 = *(v3 + 48);
    v25 = (a1 + 40);
    v26 = (a2 + 56);
    do
    {
      v8 = (v30 + 16 * v6);
      v9 = *v8;
      if (*(*v8 + 16) == v7)
      {
        v10 = v8[1];
        if (!v7 || v9 == a1)
        {
LABEL_13:
          v15 = *(v10 + 16);
          if (v15 == *(a2 + 16))
          {
            if (!v15 || v10 == a2)
            {
              return v6;
            }

            v16 = (v10 + 56);
            for (i = v26; ; i += 4)
            {
              v18 = *(v16 - 1);
              v19 = *v16;
              v20 = *(i - 1);
              v21 = *i;
              v22 = *(v16 - 3) == *(i - 3) && *(v16 - 2) == *(i - 2);
              if (!v22 && (sub_1BF17B86C() & 1) == 0)
              {
                break;
              }

              v23 = v18 == v20 && v19 == v21;
              if (!v23 && (sub_1BF17B86C() & 1) == 0)
              {
                break;
              }

              v16 += 4;
              if (!--v15)
              {
                return v6;
              }
            }
          }
        }

        else
        {
          v11 = (v9 + 40);
          v12 = v25;
          v13 = v7;
          while (1)
          {
            v14 = *(v11 - 1) == *(v12 - 1) && *v11 == *v12;
            if (!v14 && (sub_1BF17B86C() & 1) == 0)
            {
              break;
            }

            v11 += 2;
            v12 += 2;
            if (!--v13)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v6 = (v6 + 1) & v29;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1BF012F24(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v6 = *(result + 16);
  v7 = (result + 56);
  if (v6)
  {
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = v8;
      v12 = v9;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF00DDFC(&v10, a2, a3);
      if (v3)
      {
        break;
      }

      v7 += 4;
      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1BF012FDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
    while (2)
    {
      v19 = v4;
      v20 = a3;
      v6 = (v22 + 32 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v18 = v5;
      do
      {
        v11 = v4[2];
        v12 = v4[3];
        v13 = v7 == *v4 && v8 == v4[1];
        if (v13 || (v21 = v4[2], result = sub_1BF17B86C(), v11 = v21, (result & 1) != 0))
        {
          if (v9 == v11 && v10 == v12)
          {
            break;
          }
        }

        result = sub_1BF17B86C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v22)
        {
          __break(1u);
          return result;
        }

        v7 = v4[4];
        v8 = v4[5];
        v9 = v4[6];
        v10 = v4[7];
        v15 = *(v4 + 1);
        *(v4 + 2) = *v4;
        *(v4 + 3) = v15;
        *v4 = v7;
        v4[1] = v8;
        v4[2] = v9;
        v4[3] = v10;
        v4 -= 4;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v20 + 1;
      v4 = v19 + 4;
      v5 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF013118(uint64_t a1)
{
  if (!qword_1ED8EE420)
  {
    sub_1BF178F0C();
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EE420);
    }
  }
}

unint64_t sub_1BF013170()
{
  result = qword_1ED8EF248[0];
  if (!qword_1ED8EF248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EF248);
  }

  return result;
}

_BYTE *sub_1BF0131C8@<X0>(_BYTE *result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = 0;
  v6 = result + 64;
  v7 = 1 << result[32];
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = a2;
  v10 = v8 & *(result + 8);
  v11 = (v7 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v5;
LABEL_8:
      v13 = __clz(__rbit64(v10)) | (v12 << 6);
      result = memcpy(__dst, (*(v3 + 6) + 72 * v13), sizeof(__dst));
      if (*(*(v3 + 7) + v13) == v9)
      {
        break;
      }

      v10 &= v10 - 1;
      v5 = v12;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v21 = *__dst;
    v22 = *&__dst[16];
    v19 = *&__dst[32];
    v20 = *&__dst[48];
    v14 = *&__dst[64];
    result = sub_1BF013314(__dst, v23);
    v17 = v19;
    v18 = v20;
    v15 = v21;
    v16 = v22;
LABEL_12:
    *a3 = v15;
    *(a3 + 16) = v16;
    *(a3 + 32) = v17;
    *(a3 + 48) = v18;
    *(a3 + 64) = v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v14 = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        goto LABEL_12;
      }

      v10 = *&v6[8 * v12];
      ++v5;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF013370(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0133B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v40 = a4 + 32;
  v12 = 0;
  v37 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  while (v10)
  {
    v13 = v10;
LABEL_10:
    v10 = (v13 - 1) & v13;
    v15 = *(v5 + 40);
    if (*(v15 + 16))
    {
      v16 = *(*(v6 + 48) + 8 * (__clz(__rbit64(v13)) | (v12 << 6)));
      v17 = sub_1BF00088C(v16);
      if (v18)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v16 >= *(v4 + 16))
        {
          goto LABEL_26;
        }

        v41 = v10;
        v19 = (*(v15 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = (v40 + 16 * v16);
        v23 = v22[1];
        v43 = *v22;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        v45 = *a3;
        v42 = v20;
        v24 = sub_1BF014CA8();
        if (__OFADD__(v45[2], (v25 & 1) == 0))
        {
          goto LABEL_27;
        }

        v26 = v24;
        v27 = v25;
        sub_1BF010B10();
        if (sub_1BF17B43C())
        {
          v28 = sub_1BF014CA8();
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_29;
          }

          v26 = v28;
        }

        if (v27)
        {
          v30 = (v45[7] + 16 * v26);
          *v30 = v43;
          v30[1] = v23;
        }

        else
        {
          v45[(v26 >> 6) + 8] |= 1 << v26;
          v31 = (v45[6] + 16 * v26);
          *v31 = v42;
          v31[1] = v21;
          v32 = (v45[7] + 16 * v26);
          *v32 = v43;
          v32[1] = v23;
          v33 = v45[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_28;
          }

          v45[2] = v35;
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }

        *a3 = v45;

        v5 = a2;
        v4 = a4;
        v6 = v37;
        v10 = v41;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      sub_1BF0187DC(v5);
    }

    v13 = *(v7 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

void sub_1BF01366C()
{
  if (!qword_1ED8EAE90)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EAE90);
    }
  }
}

uint64_t sub_1BF0136C8(unint64_t *a1)
{
  v71 = sub_1BF17A12C();
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v2);
  v73 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v72 = a1[3];
  v80 = xmmword_1BF17EBD0;
  v81 = xmmword_1BF17EBD0;
  v75 = 0x312E312F50545448;
  v76 = 0xE900000000000020;
  v70 = v5 & 0x3000000000000000;
  v7 = 200;
  if ((v5 & 0x3000000000000000) == 0x3000000000000000)
  {
    v7 = 404;
  }

  v79 = v7;
  if ((v5 & 0x3000000000000000) == 0x3000000000000000)
  {
    v8 = 0x6E756F4620746F4ELL;
  }

  else
  {
    v8 = 19279;
  }

  if ((v5 & 0x3000000000000000) == 0x3000000000000000)
  {
    v9 = 0xE900000000000064;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  v10 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v10);

  MEMORY[0x1BFB52000](32, 0xE100000000000000);
  MEMORY[0x1BFB52000](v8, v9);

  i = v75;
  v12 = v76;
  sub_1BF0201A4();
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 24) >> 1;
  v17 = (v15 + 1);
  if (v16 > v15)
  {
    goto LABEL_10;
  }

LABEL_43:
  OUTLINED_FUNCTION_0_34();
  v14 = v61;
  v16 = *(v61 + 24) >> 1;
LABEL_10:
  *(v14 + 16) = v17;
  v18 = v14 + 16 * v15;
  *(v18 + 32) = i;
  *(v18 + 40) = v12;
  v19 = v15 + 2;
  if (v16 < (v15 + 2))
  {
    sub_1BF0201A4();
    v14 = v62;
  }

  *(v14 + 16) = v19;
  v20 = v14 + 16 * v17;
  *(v20 + 32) = 0xD000000000000019;
  *(v20 + 40) = 0x80000001BF18D7E0;
  if ((v15 + 3) > *(v14 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_34();
    v14 = v63;
  }

  *(v14 + 16) = v15 + 3;
  v21 = v14 + 16 * v19;
  *(v21 + 32) = 0xD000000000000011;
  *(v21 + 40) = 0x80000001BF18D800;
  v68 = v5;
  v69 = v4;
  v75 = v4;
  v76 = v5;
  v67 = v6;
  v77 = v6;
  v78 = v72;
  v17 = &v75;
  v22 = sub_1BF013D20();
  v6 = v22;
  v5 = 0;
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v4 = v25 & *(v22 + 64);
  for (i = (v24 + 63) >> 6; v4; *(v34 + 40) = v33)
  {
LABEL_21:
    v27 = (v5 << 10) | (16 * __clz(__rbit64(v4)));
    v28 = (*(v6 + 48) + v27);
    v29 = v28[1];
    v30 = (*(v6 + 56) + v27);
    v32 = *v30;
    v31 = v30[1];
    v75 = *v28;
    v76 = v29;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](8250, 0xE200000000000000);
    MEMORY[0x1BFB52000](v32, v31);

    v15 = v75;
    v33 = v76;
    v12 = *(v14 + 16);
    v17 = (v12 + 1);
    if (v12 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_34();
      v14 = v35;
    }

    v4 &= v4 - 1;
    *(v14 + 16) = v17;
    v34 = v14 + 16 * v12;
    *(v34 + 32) = v15;
  }

  while (1)
  {
    v26 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v26 >= i)
    {
      break;
    }

    v4 = *(v23 + 8 * v26);
    ++v5;
    if (v4)
    {
      v5 = v26;
      goto LABEL_21;
    }
  }

  if (v70 == 0x3000000000000000)
  {
    v36 = *(v14 + 16);
    v37 = v36 + 1;
    v38 = v71;
    v39 = 0xD000000000000011;
    if (v36 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_34();
      v14 = v64;
    }

    v40 = 0x80000001BF18D820;
  }

  else
  {
    v38 = v71;
    v41 = v68;
    if ((v68 & 0x2000000000000000) != 0)
    {
      v41 = v68 & 0xDFFFFFFFFFFFFFFFLL;
      v42 = v69;
      sub_1BF014DC0(v69, v68 & 0xDFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v42 = v69;
      sub_1BF0C0E94(v69, v68, v67, v72);
    }

    v43 = v80;
    *&v80 = v42;
    *(&v80 + 1) = v41;
    v44 = v41;
    sub_1BF014DC0(v42, v41);
    sub_1BF014E18(v43, *(&v43 + 1));
    v45 = v73;
    sub_1BF17A10C();
    v46 = sub_1BF17A0BC();
    v48 = v47;
    (*(v74 + 8))(v45, v38);
    if (v48 >> 60 != 15)
    {
      sub_1BF17939C();
      sub_1BF00F5F4(v46, v48);
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1BF17B1EC();

    v75 = 0xD000000000000010;
    v76 = 0x80000001BF18D840;
    v79 = MEMORY[0x1BFB51150](v80, *(&v80 + 1));
    v49 = sub_1BF17B6FC();
    MEMORY[0x1BFB52000](v49);

    v39 = v75;
    v40 = v76;
    v36 = *(v14 + 16);
    v37 = v36 + 1;
    if (v36 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_34();
      v14 = v65;
    }

    sub_1BF014E18(v42, v44);
  }

  *(v14 + 16) = v37;
  v50 = v14 + 16 * v36;
  *(v50 + 32) = v39;
  *(v50 + 40) = v40;
  v75 = v14;
  sub_1BF02027C();
  sub_1BF01B738();
  v51 = sub_1BF179F7C();
  v53 = v52;

  v75 = v51;
  v76 = v53;
  MEMORY[0x1BFB52000](2573, 0xE200000000000000);
  MEMORY[0x1BFB52000](2573, 0xE200000000000000);
  v54 = v73;
  sub_1BF17A10C();
  v55 = sub_1BF17A0BC();
  v57 = v56;

  (*(v74 + 8))(v54, v38);
  if (v57 >> 60 != 15)
  {
    sub_1BF17939C();
    sub_1BF00F5F4(v55, v57);
  }

  v58 = v80;
  if (!sub_1BF0202CC(v80, *(&v80 + 1)))
  {
    sub_1BF17939C();
  }

  v59 = v81;
  sub_1BF014E18(v58, *(&v58 + 1));
  return v59;
}

uint64_t sub_1BF013D20()
{
  v1 = *(v0 + 8);
  v2 = sub_1BF179DAC();
  if ((~v1 & 0x3000000000000000) != 0)
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1BF010A20();
  }

  return v2;
}

uint64_t sub_1BF013E14(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_1BF011574(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF013E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = sub_1BF179B3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v37 - v18;
  sub_1BF00F4E4(a2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1BF00F578(v10, &qword_1ED8EAEA0, MEMORY[0x1E6977D78]);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v20 = sub_1BF1797FC();
    __swift_project_value_buffer(v20, qword_1ED8F5298);

    v21 = sub_1BF1797DC();
    v22 = sub_1BF17ACDC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1BF01A7AC(*(a3 + 40), *(a3 + 48), v40);
      _os_log_impl(&dword_1BEFE0000, v21, v22, "SocketConnection:[%{public}s] handled request", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB547B0](v24, -1, -1);
      MEMORY[0x1BFB547B0](v23, -1, -1);
    }
  }

  else
  {
    v39 = a4;
    (*(v12 + 32))(v19, v10, v11);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v25 = sub_1BF1797FC();
    __swift_project_value_buffer(v25, qword_1ED8F5298);
    v26 = *(v12 + 16);
    v26(v15, v19, v11);

    v27 = sub_1BF1797DC();
    v28 = sub_1BF17ACBC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v29 = 136446466;
      *(v29 + 4) = sub_1BF01A7AC(*(a3 + 40), *(a3 + 48), v40);
      *(v29 + 12) = 2114;
      sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
      swift_allocError();
      v26(v30, v15, v11);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v12 + 8);
      v32(v15, v11);
      *(v29 + 14) = v31;
      v33 = v37;
      *v37 = v31;
      _os_log_impl(&dword_1BEFE0000, v27, v28, "SocketConnection:[%{public}s] failed to handle request with error: %{public}@", v29, 0x16u);
      sub_1BF02F424(v33, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v33, -1, -1);
      v34 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFB547B0](v34, -1, -1);
      MEMORY[0x1BFB547B0](v29, -1, -1);

      v32(v19, v11);
    }

    else
    {

      v35 = *(v12 + 8);
      v35(v15, v11);
      v35(v19, v11);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF01D634();
  }

  return result;
}

unint64_t sub_1BF014364()
{
  result = qword_1ED8F0BE8;
  if (!qword_1ED8F0BE8)
  {
    sub_1BF01A748(255, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0BE8);
  }

  return result;
}

uint64_t sub_1BF0143EC(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1BF17A31C();
    OUTLINED_FUNCTION_6_15();
    sub_1BF0147C8();
    v16 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v31 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v32 = (v16 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1BF0147C8();
    v16 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v42 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v40;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_5_11();
      v18 = sub_1BF17A2EC();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_5_11();
      v17 = sub_1BF17A1CC();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = sub_1BF17A31C();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1BF0147C8();
      v42 = v28;
    }

    v13 = *(v42 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v42 + 24) >> 1)
    {
      sub_1BF0147C8();
      v42 = v29;
    }

    *(v42 + 16) = v12;
    v27 = (v42 + 32 * v13);
    v27[4] = v41;
    v27[5] = v37;
    v27[6] = v36;
    v27[7] = v35;
LABEL_20:
    OUTLINED_FUNCTION_5_11();
    v17 = sub_1BF17A1CC();
    if ((v23 & 1) == 0 && *(v42 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1BF17A31C();
        OUTLINED_FUNCTION_6_15();
        v16 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v31 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_24_0();
      sub_1BF0147C8();
      v16 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF014784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C() & 1;
  }
}

void sub_1BF0147C8()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_33_2(v10);
    OUTLINED_FUNCTION_24_6(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v13[32 * v2] <= v12)
    {
      memmove(v12, v13, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_27_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 120) = &a2 - a1;

  return sub_1BF1794AC();
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_10()
{
  *(v1 - 96) = v0;

  return sub_1BF179F1C();
}

uint64_t sub_1BF014974(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1ED8EFC00);
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF1797EC();
}

uint64_t sub_1BF014A1C(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  v7 = type metadata accessor for Seal.Resolution(0, v5, v5, v6);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16 - v12;
  OUTLINED_FUNCTION_15_15();
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    OUTLINED_FUNCTION_20();
    (*(v14 + 16))(v13, a1, v5);
    swift_storeEnumTagMultiPayload();
    sub_1BF006BE0();
    OUTLINED_FUNCTION_11_16();
    (*(v9 + 8))(v13, v7);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1BF014B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  type metadata accessor for Seal.Handler(0, a4, v7, v8);
  v9 = sub_1BF17A4EC();
  v14 = v9;
  result = sub_1BF17A5AC();
  if (v9 != result)
  {
    do
    {
      v11 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v11)
      {
        v12 = *(a2 + 32 + 8 * v9);
      }

      else
      {
        v12 = sub_1BF17B23C();
      }

      sub_1BF17A62C();
      v13 = *(v12 + 16);

      v13(a3);

      result = sub_1BF17A5AC();
      v9 = v14;
    }

    while (v14 != result);
  }

  return result;
}

unint64_t sub_1BF014CA8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_30_1();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  v0 = OUTLINED_FUNCTION_41_0();

  return sub_1BF014D0C(v0, v1, v2);
}

unint64_t sub_1BF014D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BF17B86C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BF014DC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1BF014E18(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t DeferredPromise.resolve(_:)(uint64_t a1)
{
  if (*(v1 + 24))
  {

    sub_1BF014F34();
  }

  *(v1 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_44_1(char a1)
{

  return sub_1BF17A51C();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
}

uint64_t sub_1BF014F34()
{
  OUTLINED_FUNCTION_124();
  result = swift_weakLoadStrong();
  if (result)
  {

    v2 = sub_1BF014A1C(v0);
    OUTLINED_FUNCTION_121();

    v2(v3);
  }

  return result;
}

void sub_1BF014FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BF015010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF015064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BF0150C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF01511C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BF0151A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  switch(a2 >> 62)
  {
    case 1uLL:
      *(v4 + 32) = a1 >> 32;
      v5 = a1;
      break;
    case 2uLL:
      *(v4 + 32) = *(a1 + 24);
      v5 = *(a1 + 16);
      break;
    case 3uLL:
      v5 = 0;
      *(v4 + 32) = 0;
      break;
    default:
      v5 = 0;
      *(v4 + 32) = BYTE6(a2);
      break;
  }

  *(v4 + 40) = v5;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return v4;
}

uint64_t sub_1BF01522C()
{
  sub_1BF017FD8();
  v3 = v0[4];
  result = v0[5];
  if (result >= v3)
  {
LABEL_26:
    v28 = v0[7];
    v7 = result - v28;
    if (__OFSUB__(result, v28))
    {
      __break(1u);
      goto LABEL_29;
    }

LABEL_21:
    v19 = v0[6];
    sub_1BF053D1C();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = v7;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    v21 = 15;
LABEL_24:
    *(v20 + 48) = v21;
    swift_willThrow();
    return v7;
  }

  result = sub_1BF17931C();
  if (result != 93)
  {
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1BF015ECC(&v29);
      if (v1)
      {

        return v7;
      }

      v8 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF017104(0, *(v7 + 16) + 1, 1, v7);
        v7 = v13;
      }

      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1BF017104(v9 > 1, v10 + 1, 1, v7);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      *(v7 + 8 * v10 + 32) = v8;
      if (v0[5] >= v3)
      {

        v17 = v0[5];
        v18 = v0[7];
        v7 = v17 - v18;
        if (__OFSUB__(v17, v18))
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      result = sub_1BF17931C();
      if (result == 93)
      {
        v15 = v0[5];
        v5 = __OFADD__(v15, 1);
        v16 = v15 + 1;
        if (v5)
        {
          goto LABEL_30;
        }

        v0[5] = v16;
        return v7;
      }

      result = sub_1BF17931C();
      if (result != 44)
      {
        break;
      }

      v11 = v0[5];
      v5 = __OFADD__(v11, 1);
      v12 = v11 + 1;
      if (v5)
      {
        __break(1u);
        goto LABEL_26;
      }

      v0[5] = v12;
    }

    v22 = v0[5];
    v23 = v0[7];
    v24 = v22 - v23;
    if (__OFSUB__(v22, v23))
    {
      goto LABEL_32;
    }

    v25 = v0[6];
    v26 = sub_1BF053B14();
    v7 = v27;
    sub_1BF053D1C();
    swift_allocError();
    *v20 = v25;
    *(v20 + 8) = v24;
    *(v20 + 16) = v26;
    *(v20 + 24) = v7;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    v21 = 4;
    goto LABEL_24;
  }

  v4 = v0[5];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    v0[5] = v6;
    return MEMORY[0x1E69E7CC0];
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1BF015484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v12, v13);
  sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5();
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF0171B4();
  v16 = OUTLINED_FUNCTION_10_7(v15);
  if (v16)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_8_2();
    if (!v20)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    OUTLINED_FUNCTION_22_2(v16, v17, v18, v19, *v10);
    OUTLINED_FUNCTION_55();

    return sub_1BF017214(v21);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF6D1C(v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF015544@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v101 = a5;
  v109 = a3;
  v107 = a1;
  v103 = a6;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v106 = v95 - v12;
  v105 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v98 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v97 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v96 = v95 - v19;
  v108 = sub_1BF1794AC();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v102 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v95 - v27;
  v104 = a4;
  v99 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v34 = *(v7 + 6);
  v33 = *(v7 + 7);
  if (v34)
  {
    v35 = *(v7 + 7);
  }

  else
  {
    v35 = 0;
  }

  type metadata accessor for JSONParser();
  swift_allocObject();
  v36 = v109;
  sub_1BF0151A4(a2, v109, v34, v35);
  sub_1BF009984(v34, v33);
  sub_1BF014DC0(a2, v36);
  v37 = v110;
  sub_1BF015DC4(&v111);
  if (v37)
  {
  }

  v110 = 0;
  v39 = v105;
  v40 = v106;
  v95[0] = v32;
  v95[1] = v28;
  v109 = v23;

  v41 = v111;
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v42 = *(v7 + 2);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v44 = *(v7 + 3);
  v43 = *(v7 + 4);
  v45 = v7[40];
  if (v108 == v107)
  {
    v111 = *(v7 + 3);
    v112 = v43;
    v113 = v45;
    v116 = v41;
    v61 = v44;
    v62 = v45;
    v63 = v43;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v61, v63, v62);
    v51 = v41;
    v64 = v110;
    sub_1BF051984(&v116, MEMORY[0x1E69E7CC0], v42, v100);
    v39 = v64;

    sub_1BF00A8F8(v61, v63, v62);
    if (v64)
    {
      v65 = v41;
      return sub_1BF017214(v65);
    }

    v110 = 0;
    v107 = v7;
    OUTLINED_FUNCTION_5_45();
    v47 = v104;
    v76 = swift_dynamicCast();
    v75 = v102;
    if (v76)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v77 = OUTLINED_FUNCTION_16_21();
    }

    __swift_storeEnumTagSinglePayload(v77, v78, 1, v47);
    v82 = v103;
    v74 = v109;
    OUTLINED_FUNCTION_28_12();
  }

  else
  {
    if (v39 == v107)
    {
      v47 = v104;
      if (v41 >> 61 != 2)
      {
LABEL_22:
        v73 = OUTLINED_FUNCTION_5_45();
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v47);
        v74 = v109;
        v75 = v102;
LABEL_34:
        (*(v75 + 8))(v39, v74);
        v89 = *(v7 + 2);
        v90 = *(v7 + 3);
        v91 = *(v7 + 4);
        v114 = &type metadata for _JSONDecoder;
        v92 = v7[40];
        v115 = sub_1BF0172B8();
        v93 = swift_allocObject();
        v111 = v93;
        *(v93 + 48) = MEMORY[0x1E69E7CC0];
        *(v93 + 56) = v89;
        *(v93 + 16) = v41;
        *(v93 + 24) = v90;
        *(v93 + 32) = v91;
        *(v93 + 40) = v92;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v90, v91, v92);
        return sub_1BF17A8BC();
      }

      v67 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v51 = v39;
      v68 = *(v7 + 3);
      v100 = *(v7 + 4);
      LODWORD(v108) = v45;
      sub_1BF01730C(v68, v100, v45);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v39 = v40;
      sub_1BF1791FC();
      v69 = OUTLINED_FUNCTION_16_21();
      if (__swift_getEnumTagSinglePayload(v69, v70, v51) == 1)
      {
        sub_1BF0F698C(v40);
        v71 = sub_1BF05350C();
        OUTLINED_FUNCTION_26_10(&type metadata for JSONDecodingError, v71);
        *v72 = MEMORY[0x1E69E7CC0];
        *(v72 + 8) = v67;
        *(v72 + 16) = v66;
        *(v72 + 80) = 9;
        swift_willThrow();
        v58 = OUTLINED_FUNCTION_24_14();
        goto LABEL_20;
      }

      v107 = v7;
      v83 = OUTLINED_FUNCTION_24_14();
      sub_1BF00A8F8(v83, v84, v85);

      v86 = *(v98 + 32);
      v7 = v96;
      v86(v96, v40, v51);
      v86(v97, v7, v51);
      OUTLINED_FUNCTION_5_45();
      if (swift_dynamicCast())
      {
        v81 = v40;
        v80 = 0;
      }

      else
      {
        v81 = OUTLINED_FUNCTION_16_21();
      }
    }

    else
    {
      v46 = v107 == MEMORY[0x1E6969080] && (v41 & 0xE000000000000000) == 0x4000000000000000;
      v47 = v104;
      if (!v46)
      {
        goto LABEL_22;
      }

      v49 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v48 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *(v7 + 3);
      v51 = *(v7 + 4);
      v52 = v7[40];
      sub_1BF01730C(v50, v51, v52);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v108 = v49;
      v53 = sub_1BF1792BC();
      if (v54 >> 60 == 15)
      {
        v55 = sub_1BF05350C();
        OUTLINED_FUNCTION_26_10(&type metadata for JSONDecodingError, v55);
        v56 = v108;
        *v57 = MEMORY[0x1E69E7CC0];
        *(v57 + 8) = v56;
        *(v57 + 16) = v48;
        *(v57 + 80) = 6;
        swift_willThrow();
        v58 = v50;
        v59 = v51;
        v60 = v52;
LABEL_20:
        sub_1BF00A8F8(v58, v59, v60);
        v65 = v41;
        return sub_1BF017214(v65);
      }

      v39 = v53;
      v79 = v54;
      v107 = v7;
      sub_1BF00A8F8(v50, v51, v52);

      v111 = v39;
      v112 = v79;
      OUTLINED_FUNCTION_5_45();
      v80 = swift_dynamicCast() ^ 1;
      v81 = v39;
    }

    __swift_storeEnumTagSinglePayload(v81, v80, 1, v47);
    v74 = v109;
    v75 = v102;
    OUTLINED_FUNCTION_28_12();
    v82 = v103;
  }

  v87 = OUTLINED_FUNCTION_16_21();
  if (__swift_getEnumTagSinglePayload(v87, v88, v47) == 1)
  {
    v7 = v107;
    goto LABEL_34;
  }

  sub_1BF017214(v41);
  v94 = *(v7 + 4);
  v94(v51, v39, v47);
  return (v94)(v82, v51, v47);
}

uint64_t sub_1BF015D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BF017214(*(v8 + 16));
  sub_1BF00A8F8(*(v8 + 24), *(v8 + 32), *(v8 + 40));

  v9 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

void sub_1BF015DC4(unint64_t *a1@<X8>)
{
  sub_1BF015ECC(&v16);
  if (!v2)
  {
    v4 = v16;
    v5 = v1[5];
    if (v5 == v1[4])
    {
      *a1 = v16;
    }

    else
    {
      v6 = v1[7];
      v7 = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
        __break(1u);
      }

      else
      {
        v8 = v1[6];
        v9 = sub_1BF163F94(v5, v1[2], v1[3]);
        v11 = v10;
        v12 = sub_1BF016E04(v9, v10);
        v14 = v13;
        sub_1BF014E18(v9, v11);
        sub_1BF053D1C();
        swift_allocError();
        *v15 = v8;
        *(v15 + 8) = v7;
        *(v15 + 16) = v12;
        *(v15 + 24) = v14;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 48) = 1;
        swift_willThrow();
        sub_1BF017214(v4);
      }
    }
  }
}

void sub_1BF015ECC(uint64_t *a1@<X8>)
{
  sub_1BF017FD8();
  v5 = v1[4];
  v4 = v1[5];
  if (v4 == v5)
  {
    v43 = v1[7];
    v44 = v4 - v43;
    if (__OFSUB__(v4, v43))
    {
      __break(1u);
      return;
    }

    v45 = v1[6];
    sub_1BF053D1C();
    swift_allocError();
    *v27 = v45;
    *(v27 + 8) = v44;
    *(v27 + 16) = xmmword_1BF18A600;
LABEL_50:
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    v28 = 4;
    goto LABEL_51;
  }

  v6 = sub_1BF17931C();
  switch(v6)
  {
    case '""':
      v16 = v1[5];
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (!v8)
      {
        v1[5] = v17;
        v18 = swift_allocObject();
        v19 = sub_1BF016A60(v18);
        if (!v2)
        {
          *(v18 + 16) = v19;
          *(v18 + 24) = v20;
          v10 = v18 | 0x4000000000000000;
          goto LABEL_23;
        }

LABEL_20:
        swift_deallocUninitializedObject();
        return;
      }

      goto LABEL_55;
    case '[':
      v12 = v1[5];
      v8 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (!v8)
      {
        v1[5] = v13;
        v14 = swift_allocObject();
        v15 = sub_1BF01522C();
        if (!v2)
        {
          *(v14 + 16) = v15;
          v10 = v14 | 0x2000000000000000;
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    case '{':
      v7 = v1[5];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        v1[5] = v9;
        v10 = swift_allocObject();
        v11 = sub_1BF016408();
        if (!v2)
        {
          *(v10 + 16) = v11;
LABEL_23:
          sub_1BF017FD8();
          *a1 = v10;
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_56;
  }

  if ((v6 - 58) > 0xF5u)
  {
LABEL_19:
    v21 = swift_allocObject();
    v22 = sub_1BF018E80();
    if (!v2)
    {
      *(v21 + 16) = v22;
      *(v21 + 24) = v23;
      v10 = v21 | 0x6000000000000000;
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v6 == 116)
  {
    v32 = v1[5];
    if (__OFADD__(v32, 4))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v5 >= v32 + 4)
    {
      v1[5] = v32 + 1;
      if (qword_1ED8EE5C0 == -1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v33 = v1[7];
      a1 = (v32 - v33);
      if (!__OFSUB__(v32, v33))
      {
        v34 = v1[6];
        sub_1BF053D1C();
        swift_allocError();
        *v27 = v34;
        *(v27 + 8) = a1;
        *(v27 + 16) = 0u;
        *(v27 + 32) = 0u;
        v28 = 7;
        goto LABEL_51;
      }

      __break(1u);
    }

    swift_once();
LABEL_47:
    sub_1BF0199B4(qword_1ED8EE5C8, *algn_1ED8EE5D0);
    if (!v2)
    {
      v10 = 0x8000000000000000;
      goto LABEL_23;
    }

    return;
  }

  if (v6 != 102)
  {
    if (v6 != 110)
    {
      if (v6 == 45)
      {
        goto LABEL_19;
      }

      v35 = v1[5];
      v36 = v1[7];
      v37 = v35 - v36;
      if (__OFSUB__(v35, v36))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v38 = v1[6];
      v39 = sub_1BF053B14();
      if (v2)
      {
        return;
      }

      v41 = v39;
      v42 = v40;
      sub_1BF053D1C();
      swift_allocError();
      *v27 = v38;
      *(v27 + 8) = v37;
      *(v27 + 16) = v41;
      *(v27 + 24) = v42;
      goto LABEL_50;
    }

    v29 = v1[5];
    if (__OFADD__(v29, 4))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v5 >= v29 + 4)
    {
      v1[5] = v29 + 1;
      if (qword_1ED8EE5E0 == -1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v30 = v1[7];
      a1 = (v29 - v30);
      if (!__OFSUB__(v29, v30))
      {
        v31 = v1[6];
        sub_1BF053D1C();
        swift_allocError();
        *v27 = v31;
        *(v27 + 8) = a1;
        *(v27 + 16) = 0u;
        *(v27 + 32) = 0u;
        v28 = 6;
        goto LABEL_51;
      }

      __break(1u);
    }

    swift_once();
LABEL_44:
    sub_1BF0199B4(qword_1ED8EE5E8, qword_1ED8EE5F0);
    if (!v2)
    {
      v10 = 0x8000000000000010;
      goto LABEL_23;
    }

    return;
  }

  v24 = v1[5];
  if (__OFADD__(v24, 5))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 >= v24 + 5)
  {
    v1[5] = v24 + 1;
    if (qword_1ED8ED828 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_62;
  }

  v25 = v1[7];
  a1 = (v24 - v25);
  if (!__OFSUB__(v24, v25))
  {
    v26 = v1[6];
    sub_1BF053D1C();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = a1;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    v28 = 5;
LABEL_51:
    *(v27 + 48) = v28;
    swift_willThrow();
    return;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_41:
  sub_1BF0199B4(qword_1ED8ED830, qword_1ED8ED838[0]);
  if (!v2)
  {
    v10 = 0x8000000000000008;
    goto LABEL_23;
  }
}

uint64_t sub_1BF016394()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF0163CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF016408()
{
  v5 = v0;
  sub_1BF017FD8();
  v7 = v0[4];
  result = v0[5];
  if (result >= v7)
  {
    v42 = v0[7];
    v43 = result - v42;
    if (!__OFSUB__(result, v42))
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_27;
  }

  result = sub_1BF17931C();
  if (result == 125)
  {
LABEL_27:
    v44 = v5[5];
    v10 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (!v10)
    {
      v5[5] = v45;
      return sub_1BF179DAC();
    }

    __break(1u);
    goto LABEL_49;
  }

  sub_1BF017FD8();
  result = v0[5];
  if (result >= v7)
  {
    v46 = v0[7];
    v43 = result - v46;
    if (!__OFSUB__(result, v46))
    {
LABEL_30:
      v47 = v5[6];
      sub_1BF053D1C();
      swift_allocError();
      *v48 = v47;
      *(v48 + 8) = v43;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      v49 = 18;
LABEL_31:
      *(v48 + 48) = v49;
      swift_willThrow();
      return v2;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  result = sub_1BF17931C();
  if (result == 34)
  {
    v9 = v0[5];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v0[5] = v11;
      v12 = sub_1BF016A60(result);
      if (v1)
      {
        return v2;
      }

      v14 = v12;
      v2 = v13;
      v15 = v0[8];
      if (v15)
      {
        v16 = v0[9];

        v14 = v15(v14, v2);
        v18 = v17;
        sub_1BEFE52DC(v15, v16);

        v2 = v18;
      }

      sub_1BF017FD8();
      sub_1BF016F04(58);
      sub_1BF017FD8();
      sub_1BF015ECC(&v80);
      v19 = v80;
      sub_1BF017FD8();
      if (v5[5] < v7)
      {
        if (sub_1BF017118(0x7Du))
        {
          sub_1BF019BB4(0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BF17DEF0;
          *(inited + 32) = v14;
          *(inited + 40) = v2;
          *(inited + 48) = v19;
          return sub_1BF179DAC();
        }

        sub_1BF016F04(44);
        v21 = MEMORY[0x1BFB51B60](4, MEMORY[0x1E69E6158], &type metadata for JSON, MEMORY[0x1E69E6168]);
        sub_1BF01716C(v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v21;
        sub_1BF015484(v19, v14, v2, isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v76, v78);

        v2 = v80;
        v77 = v19;
        while (1)
        {
          sub_1BF017FD8();
          if (v5[5] >= v7)
          {
            v54 = v19;

            v55 = v5[5];
            v56 = v5[7];
            v57 = v55 - v56;
            if (!__OFSUB__(v55, v56))
            {
              goto LABEL_46;
            }

            __break(1u);
LABEL_40:
            v54 = v19;

            v58 = v5[5];
            v59 = v5[7];
            v60 = v58 - v59;
            if (__OFSUB__(v58, v59))
            {
              goto LABEL_51;
            }

            v2 = v5[6];
            v71 = sub_1BF053B14();
            v73 = v72;
            sub_1BF053D1C();
            swift_allocError();
            *v74 = v2;
            *(v74 + 8) = v60;
            *(v74 + 16) = v71;
            *(v74 + 24) = v73;
            *(v74 + 32) = 0;
            *(v74 + 40) = 0;
            v75 = 2;
            goto LABEL_47;
          }

          v27 = sub_1BF17931C();
          if (v27 != 34)
          {
            goto LABEL_40;
          }

          v28 = v5[5];
          v10 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v10)
          {
            break;
          }

          v5[5] = v29;
          v30 = sub_1BF016A60(v27);
          v32 = v31;
          v33 = v5[8];
          if (v33)
          {
            v34 = v5[9];

            v30 = v33(v30, v32);
            v36 = v35;
            sub_1BEFE52DC(v33, v34);

            v32 = v36;
            v19 = v77;
          }

          sub_1BF017FD8();
          sub_1BF016F04(58);
          sub_1BF017FD8();
          sub_1BF015ECC(&v80);
          v4 = v80;
          sub_1BF01716C(v80);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v80 = v2;
          sub_1BF015484(v4, v30, v32, v37, v38, v39, v40, v41, v77, v79);

          v2 = v80;
          if (v5[5] >= v7)
          {
            goto LABEL_43;
          }

          sub_1BF017214(v4);
          if ((sub_1BF017118(0x2Cu) & 1) == 0)
          {
            sub_1BF016F04(125);
            sub_1BF017214(v19);
            return v2;
          }
        }

        __break(1u);
LABEL_43:
        v61 = v19;

        v62 = v5[5];
        v63 = v5[7];
        v64 = v62 - v63;
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_52;
        }

        v65 = v5[6];
        sub_1BF053D1C();
        swift_allocError();
        *v66 = v65;
        *(v66 + 8) = v64;
        *(v66 + 16) = 0u;
        *(v66 + 32) = 0u;
        *(v66 + 48) = 18;
        swift_willThrow();
        sub_1BF017214(v61);
        v67 = v4;
LABEL_23:
        sub_1BF017214(v67);
        return v2;
      }

      v54 = v19;

      v68 = v5[5];
      v69 = v5[7];
      v57 = v68 - v69;
      if (!__OFSUB__(v68, v69))
      {
LABEL_46:
        v70 = v5[6];
        sub_1BF053D1C();
        swift_allocError();
        *v74 = v70;
        *(v74 + 8) = v57;
        *(v74 + 16) = 0u;
        *(v74 + 32) = 0u;
        v75 = 18;
LABEL_47:
        *(v74 + 48) = v75;
        swift_willThrow();
        v67 = v54;
        goto LABEL_23;
      }

      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_36;
  }

  v50 = v0[5];
  v51 = v0[7];
  v2 = v50 - v51;
  if (!__OFSUB__(v50, v51))
  {
    v3 = v0[6];
    result = sub_1BF053B14();
    if (v1)
    {
      return v2;
    }

LABEL_36:
    v52 = result;
    v53 = v8;
    sub_1BF053D1C();
    swift_allocError();
    *v48 = v3;
    *(v48 + 8) = v2;
    *(v48 + 16) = v52;
    *(v48 + 24) = v53;
    *(v48 + 32) = 0;
    *(v48 + 40) = 0;
    v49 = 2;
    goto LABEL_31;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1BF016A60(uint64_t a1)
{
  v3 = v1;
  v51 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0xE000000000000000;
  v4 = v1[4];
LABEL_2:
  v5 = v1[5];
  v6 = v5;
  while (2)
  {
    if (v6 >= v4)
    {

      v32 = v1[5];
      v33 = v1[7];
      v34 = v32 - v33;
      if (__OFSUB__(v32, v33))
      {
        goto LABEL_53;
      }

      v35 = v3[6];
      sub_1BF053D1C();
      swift_allocError();
      *v36 = v35;
      *(v36 + 8) = v34;
      *(v36 + 16) = 0u;
      *(v36 + 32) = 0u;
      *(v36 + 48) = 19;
      return swift_willThrow();
    }

    v7 = v1[2];
    v8 = v1[3];
    switch(v8 >> 62)
    {
      case 1uLL:
        if (v6 >= v7 >> 32 || v6 < v7)
        {
          goto LABEL_43;
        }

        v15 = sub_1BF178F3C();
        if (!v15)
        {
          goto LABEL_51;
        }

        v11 = v15;
        v16 = sub_1BF178F5C();
        v13 = v6 - v16;
        if (!__OFSUB__(v6, v16))
        {
          goto LABEL_19;
        }

        goto LABEL_45;
      case 2uLL:
        if (v6 < *(v7 + 16))
        {
          goto LABEL_41;
        }

        if (v6 >= *(v7 + 24))
        {
          goto LABEL_44;
        }

        v10 = sub_1BF178F3C();
        if (!v10)
        {
          goto LABEL_52;
        }

        v11 = v10;
        v12 = sub_1BF178F5C();
        v13 = v6 - v12;
        if (__OFSUB__(v6, v12))
        {
          goto LABEL_46;
        }

LABEL_19:
        v9 = *(v11 + v13);
LABEL_20:
        v17 = v1[5];
        if (v9 == 34)
        {
          if (v5 == v17)
          {
            goto LABEL_35;
          }

          if (v17 >= v5)
          {
            v18 = sub_1BF17930C();
            v20 = v26;
            v27 = sub_1BF016E04(v18, v26);
            if (v2)
            {
LABEL_33:

              return sub_1BF014E18(v18, v20);
            }

            v30 = v27;
            v31 = v28;
            sub_1BF014E18(v18, v20);
            MEMORY[0x1BFB52000](v30, v31);

            v5 = v1[5];
LABEL_35:
            if (!__OFADD__(v5, 1))
            {
              v1[5] = v5 + 1;
              return v49;
            }

LABEL_47:
            __break(1u);
          }

          __break(1u);
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
        }

        if (v9 != 92)
        {
          v6 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
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
            goto LABEL_47;
          }

          v1[5] = v6;
          continue;
        }

        if (v5 != v17)
        {
          if (v17 < v5)
          {
            goto LABEL_49;
          }

          v18 = sub_1BF17930C();
          v20 = v19;
          v21 = sub_1BF016E04(v18, v19);
          if (v2)
          {
            goto LABEL_33;
          }

          v23 = v21;
          v24 = v22;
          sub_1BF014E18(v18, v20);
          MEMORY[0x1BFB52000](v23, v24);
        }

        v25 = sub_1BF0250CC();
        if (!v2)
        {
          MEMORY[0x1BFB51FF0](v25);

          goto LABEL_2;
        }

      case 3uLL:
        goto LABEL_50;
      default:
        if (v6 >= BYTE6(v8))
        {
          goto LABEL_42;
        }

        v37 = v1[2];
        v38 = BYTE2(v7);
        v39 = BYTE3(v7);
        v40 = BYTE4(v7);
        v41 = BYTE5(v7);
        v42 = BYTE6(v7);
        v43 = HIBYTE(v7);
        v44 = v8;
        v45 = BYTE2(v8);
        v46 = BYTE3(v8);
        v47 = BYTE4(v8);
        v48 = BYTE5(v8);
        v9 = *(&v37 + v6);
        goto LABEL_20;
    }
  }
}

uint64_t sub_1BF016E04(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1BF17A10C();
  result = sub_1BF17A0CC();
  if (!v8)
  {
    v9 = v2[5];
    v10 = v2[7];
    v11 = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      __break(1u);
    }

    else
    {
      v12 = v2[6];
      sub_1BF053D1C();
      swift_allocError();
      *v13 = v12;
      *(v13 + 8) = v11;
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 12;
      swift_willThrow();
      return sub_1BF014DC0(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1BF016F04(uint64_t a1)
{
  result = v1[5];
  if (result >= v1[4])
  {
    v12 = v1[7];
    v13 = result - v12;
    if (!__OFSUB__(result, v12))
    {
      v14 = v1[6];
      sub_1BF164358(0, &qword_1ED8EF478, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1BF17DEF0;
      *(v15 + 32) = a1;
      v16 = sub_1BF16422C(v15);
      v18 = v17;

      if (!v2)
      {
        sub_1BF053D1C();
        swift_allocError();
        *v19 = v14;
        *(v19 + 8) = v13;
        *(v19 + 16) = v16;
        *(v19 + 24) = v18;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
        *(v19 + 48) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_1BF17931C();
  if (result == a1)
  {
    v9 = v1[5];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v1[5] = v11;
      return result;
    }

    __break(1u);
    goto LABEL_13;
  }

  v20 = v1[5];
  v21 = v1[7];
  v4 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    goto LABEL_16;
  }

  v5 = v1[6];
  sub_1BF164358(0, &qword_1ED8EF478, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BF17DEF0;
  *(v22 + 32) = a1;
  v3 = sub_1BF16422C(v22);
  a1 = v23;

  if (!v2)
  {
    result = sub_1BF053B14();
LABEL_13:
    v24 = result;
    v25 = v8;
    sub_1BF053D1C();
    swift_allocError();
    *v26 = v5;
    *(v26 + 8) = v4;
    *(v26 + 16) = v3;
    *(v26 + 24) = a1;
    *(v26 + 32) = v24;
    *(v26 + 40) = v25;
    *(v26 + 48) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF017118(unsigned __int8 a1)
{
  result = sub_1BF17931C();
  if (result != a1)
  {
    return result == a1;
  }

  v4 = *(v1 + 40);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    *(v1 + 40) = v6;
    return result == a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF01716C(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1BF0171B4()
{
  if (!qword_1ED8EF720)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF720);
    }
  }
}

unint64_t sub_1BF017214(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF01725C()
{
  sub_1BF014E18(*(v0 + 16), *(v0 + 24));
  sub_1BEFE52DC(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_1BF017284()
{
  sub_1BF01725C();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

unint64_t sub_1BF0172B8()
{
  result = qword_1ED8EF9B0;
  if (!qword_1ED8EF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF9B0);
  }

  return result;
}

id sub_1BF01730C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1BF017344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[4];
  v6 = *v3 >> 61;
  if (v6)
  {
    sub_1BF05350C();
    swift_allocError();
    v12 = 0xE500000000000000;
    v13 = 0x7961727261;
    switch(v6)
    {
      case 2:
        v12 = 0xE600000000000000;
        v13 = 0x676E69727473;
        break;
      case 3:
        v12 = 0xE600000000000000;
        v13 = 0x7265626D756ELL;
        break;
      case 4:
        v12 = 0xE400000000000000;
        v13 = 1702195828;
        v14 = 0xE500000000000000;
        v15 = 0x65736C6166;
        if (v4 != 0x8000000000000008)
        {
          v15 = 1819047278;
          v14 = 0xE400000000000000;
        }

        if (v4 != 0x8000000000000000)
        {
          v13 = v15;
          v12 = v14;
        }

        break;
      default:
        break;
    }

    *v11 = v5;
    *(v11 + 8) = v13;
    *(v11 + 16) = v12;
    *(v11 + 80) = 1;
    swift_willThrow();
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    v16 = v3[1];
    v17 = v3[2];
    v18 = *(v3 + 24);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v16, v17, v18);
    type metadata accessor for JSONKeyedDecodingContainer(0, a2, a3, v9);
    swift_getWitnessTable();
    return sub_1BF17B64C();
  }
}

uint64_t sub_1BF017550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation01_A11JSONDecoderC20DateDecodingStrategyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void *sub_1BF0175BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a5;
  v107 = a1;
  v103 = a6;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v96 = &v85 - v12;
  v106 = sub_1BF17923C();
  v95 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v13);
  v94 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v93 = &v85 - v17;
  v105 = sub_1BF1794AC();
  MEMORY[0x1EEE9AC00](v105, v18);
  v98 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BF17AE6C();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v20);
  v101 = &v85 - v21;
  v104 = a4;
  v97 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v6 + 8);
  v28 = *(v6 + 16);
  v27 = *(v6 + 24);
  v29 = *(v6 + 32);
  v30 = *(v6 + 40);
  v109 = *v6;
  v110 = v26;
  v111 = v28;
  v112 = v27;
  LOBYTE(v113) = v29;
  v114 = v30;
  v31 = v108;
  result = sub_1BF018248(a2, a3, &v115);
  if (!v31)
  {
    v86 = v25;
    v91 = v28;
    v90 = 0;
    v92 = v29;
    v108 = v26;
    v33 = v30;
    v89 = a3;
    v88 = a2;
    v34 = v115;
    if (v105 == v107)
    {
      v47 = v91;
      v109 = v91;
      v110 = v27;
      v48 = v92;
      LOBYTE(v111) = v92;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v49 = v108;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01730C(v47, v27, v48);
      v50 = v90;
      sub_1BF051984(&v115, MEMORY[0x1E69E7CC0], v49, v98);
      v51 = v50;
      if (!v50)
      {
        v87 = v27;
        v107 = v34;
        v64 = v101;
        v65 = v104;
        if (swift_dynamicCast())
        {
          v66 = v64;
          v67 = 0;
        }

        else
        {
          v66 = v64;
          v67 = 1;
        }

        __swift_storeEnumTagSinglePayload(v66, v67, 1, v65);
        v62 = v88;
        v40 = v91;
        v60 = v64;
        goto LABEL_27;
      }

      sub_1BF00A8F8(v47, v27, v48);
    }

    else
    {
      v35 = v92;
      v36 = v27;
      if (v106 != v107)
      {
        if (v107 != MEMORY[0x1E6969080] || (v115 & 0xE000000000000000) != 0x4000000000000000)
        {
          goto LABEL_17;
        }

        v39 = *((v115 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v38 = *((v115 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v40 = v91;
        sub_1BF01730C(v91, v27, v35);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v41 = sub_1BF1792BC();
        v43 = v35;
        v44 = v34;
        if (v42 >> 60 == 15)
        {
          sub_1BF00A8F8(v40, v27, v43);

          sub_1BF05350C();
          swift_allocError();
          *v45 = v30;
          *(v45 + 8) = v39;
          *(v45 + 16) = v38;
          *(v45 + 80) = 6;
          swift_willThrow();
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          v46 = v34;
          return sub_1BF017214(v46);
        }

        v68 = v41;
        v69 = v42;
        v87 = v36;
        v107 = v44;

        v109 = v68;
        v110 = v69;
        v60 = v101;
        v65 = v104;
        v70 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v60, v70 ^ 1u, 1, v65);
        v62 = v88;
        v51 = v90;
LABEL_27:
        v75 = v97;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v65);
        v63 = v89;
        if (EnumTagSinglePayload != 1)
        {
          sub_1BF00A8F8(v40, v87, v92);

          sub_1BF017214(v107);
          v83 = *(v75 + 32);
          v84 = v86;
          v83(v86, v60, v65);
          return (v83)(v103, v84, v65);
        }

        v90 = v51;
        v61 = v108;
        goto LABEL_29;
      }

      if (v115 >> 61 != 2)
      {
LABEL_17:
        v107 = v115;
        v60 = v101;
        __swift_storeEnumTagSinglePayload(v101, 1, 1, v104);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v61 = v108;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v40 = v91;
        v87 = v27;
        sub_1BF01730C(v91, v27, v35);
        v62 = v88;
        v63 = v89;
LABEL_29:
        (*(v99 + 8))(v60, v100);
        sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BF17DEF0;
        v78 = *(v63 + 16);
        *(inited + 56) = v78;
        *(inited + 64) = *(v63 + 24);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(*(v78 - 8) + 16))(boxed_opaque_existential_0, v62, v78);
        v109 = v30;
        v80 = v107;
        sub_1BF01716C(v107);
        sub_1BF02967C(inited);
        v81 = v109;
        v112 = &type metadata for _JSONDecoder;
        v113 = sub_1BF0172B8();
        v82 = swift_allocObject();
        v109 = v82;
        *(v82 + 16) = v80;
        *(v82 + 24) = v40;
        *(v82 + 32) = v87;
        *(v82 + 40) = v92;
        *(v82 + 48) = v81;
        *(v82 + 56) = v61;
        sub_1BF17A8BC();
        v46 = v80;
        return sub_1BF017214(v46);
      }

      v53 = *((v115 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v52 = *((v115 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = v106;
      v107 = v33;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v55 = v91;
      sub_1BF01730C(v91, v36, v35);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v56 = v96;
      v105 = v53;
      sub_1BF1791FC();
      if (__swift_getEnumTagSinglePayload(v56, 1, v54) != 1)
      {
        v87 = v36;
        v107 = v34;

        v71 = *(v95 + 32);
        v72 = v93;
        v71(v93, v56, v54);
        v71(v94, v72, v54);
        v60 = v101;
        v65 = v104;
        if (swift_dynamicCast())
        {
          v73 = v60;
          v74 = 0;
        }

        else
        {
          v73 = v60;
          v74 = 1;
        }

        __swift_storeEnumTagSinglePayload(v73, v74, 1, v65);
        v62 = v88;
        v30 = v33;
        v51 = v90;
        v40 = v91;
        goto LABEL_27;
      }

      sub_1BF00A8F8(v55, v36, v35);
      v57 = v107;

      sub_1BF0F698C(v56);
      sub_1BF05350C();
      swift_allocError();
      v58 = v105;
      *v59 = v57;
      *(v59 + 8) = v58;
      *(v59 + 16) = v52;
      *(v59 + 80) = 9;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v46 = v34;
    return sub_1BF017214(v46);
  }

  return result;
}

void sub_1BF017FD8()
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  v2 = v0[5];
  while (v2 < v1)
  {
    v3 = v0[2];
    v4 = v0[3];
    switch(v4 >> 62)
    {
      case 1uLL:
        if (v2 >= v3 >> 32 || v2 < v3)
        {
          goto LABEL_32;
        }

        v11 = sub_1BF178F3C();
        if (!v11)
        {
          goto LABEL_39;
        }

        v7 = v11;
        v12 = sub_1BF178F5C();
        v9 = v2 - v12;
        if (!__OFSUB__(v2, v12))
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      case 2uLL:
        if (v2 < *(v3 + 16))
        {
          goto LABEL_31;
        }

        if (v2 >= *(v3 + 24))
        {
          goto LABEL_33;
        }

        v6 = sub_1BF178F3C();
        if (!v6)
        {
          goto LABEL_40;
        }

        v7 = v6;
        v8 = sub_1BF178F5C();
        v9 = v2 - v8;
        if (__OFSUB__(v2, v8))
        {
          goto LABEL_35;
        }

LABEL_18:
        v5 = *(v7 + v9);
LABEL_19:
        switch(v5)
        {
          case 9:
            goto LABEL_23;
          case 10:
            v14 = v0[5];
            v0[7] = v14;
            v2 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_36;
            }

            v0[5] = v2;
            v15 = v0[6];
            v16 = __OFADD__(v15, 1);
            v17 = v15 + 1;
            if (v16)
            {
              goto LABEL_37;
            }

            v0[6] = v17;
            break;
          case 13:
          case 32:
LABEL_23:
            v13 = v0[5];
            v2 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
            }

            v0[5] = v2;
            break;
          default:
            return;
        }

        break;
      case 3uLL:
        goto LABEL_38;
      default:
        if (v2 >= BYTE6(v4))
        {
          goto LABEL_30;
        }

        v18 = v0[2];
        v19 = BYTE2(v3);
        v20 = BYTE3(v3);
        v21 = BYTE4(v3);
        v22 = BYTE5(v3);
        v23 = BYTE6(v3);
        v24 = HIBYTE(v3);
        v25 = v4;
        v26 = BYTE2(v4);
        v27 = BYTE3(v4);
        v28 = BYTE4(v4);
        v29 = BYTE5(v4);
        v5 = *(&v18 + v2);
        goto LABEL_19;
    }
  }
}

unint64_t get_enum_tag_for_layout_string_13TeaFoundation4JSONO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

unint64_t sub_1BF018248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[5];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1BF17BCBC();
  if (*(v6 + 16))
  {
    v10 = sub_1BF014CA8();
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v6 + 56) + 8 * v10);
      *a3 = v13;
      return sub_1BF01716C(v13);
    }
  }

  else
  {
  }

  sub_1BF05350C();
  swift_allocError();
  v16 = v15;
  v15[3] = v8;
  v15[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  v16[5] = v7;
  *(v16 + 80) = 3;
  swift_willThrow();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OnlyOnceDeferredPromise.__deallocating_deinit()
{
  OnlyOnceDeferredPromise.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *OnlyOnceDeferredPromise.deinit()
{

  return v0;
}

double sub_1BF0183E0(uint64_t a1)
{
  v1 = sub_1BF1794AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  sub_1BF1793DC();
  v7 = v6;
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t ShortDescription.init(name:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  if (!a2)
  {
    result = sub_1BF17BD4C();
  }

  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_1BF01855C(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1BEFE90AC(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          LOBYTE(v17) = a2;
          v16 = a3;
          (*(v11 + 8))(&v17, &v16, ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v14 = sub_1BEFE90AC(v13);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      *(a1 + 16) = v17;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF018790(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BF17A65C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void Cache.subscript.setter()
{
  OUTLINED_FUNCTION_32();
  v3 = v1;
  v67 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_5_27();
  v63 = v7;
  v8 = *(v0 + 88);
  v11 = type metadata accessor for CacheEntry(255, v8, v9, v10);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v57 = v13;
  v58 = v12;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_6_30();
  v64 = v16;
  v17 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v65 = v18;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_6_30();
  v60 = v21;
  v61 = v11;
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_4_3();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v57 - v28;
  OUTLINED_FUNCTION_2_3();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_4_1();
  v36 = v34 - v35;
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v57 - v40;
  v59 = v42;
  v43 = *(v42 + 16);
  v66 = v6;
  v62 = v44;
  v43(v29, v6, v39);
  if (__swift_getEnumTagSinglePayload(v29, 1, v8) == 1)
  {
    v45 = *(v59 + 8);
    v46 = v62;
    v45(v29, v62);
    v47 = *(v3 + 24);
    UnfairLock.lock()();
    OUTLINED_FUNCTION_7_2(v3 + 16, v68);
    OUTLINED_FUNCTION_25_9();
    sub_1BF179E9C();
    v48 = v64;
    v49 = v67;
    sub_1BF179D7C();
    swift_endAccess();
    (*(v57 + 8))(v48, v58);
    os_unfair_lock_unlock(*(v47 + 16));
    (*(v65 + 8))(v49, v17);
    v45(v66, v46);
  }

  else
  {
    (*(v31 + 32))(v41, v29, v8);
    (*(v31 + 16))(v36, v41, v8);
    sub_1BF01BEC4(v36, v8, v2);
    v57 = *(v3 + 24);
    UnfairLock.lock()();
    v50 = v65;
    (*(v65 + 16))(v60, v67, v17);
    v51 = *(v23 + 16);
    v52 = v2;
    v58 = v2;
    v53 = v61;
    v51(v64, v52, v61);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
    OUTLINED_FUNCTION_7_2(v3 + 16, v68);
    OUTLINED_FUNCTION_25_9();
    sub_1BF179E9C();
    sub_1BF179EBC();
    swift_endAccess();
    os_unfair_lock_unlock(*(v57 + 16));
    (*(v50 + 8))(v67, v17);
    (*(v59 + 8))(v66, v62);
    (*(v23 + 8))(v58, v53);
    (*(v31 + 8))(v41, v8);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF018D68(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF01A558(&v4);
  return a1;
}

uint64_t sub_1BF018DD8()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1ED8F5298);
  OUTLINED_FUNCTION_3_24();
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1ED8EFC00);
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_1_39();
}

void *sub_1BF018E60(void *a1, int64_t a2, char a3)
{
  result = sub_1BF011414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BF018E80()
{
  v1 = v0;
  v109 = *MEMORY[0x1E69E9840];
  v2 = v0[5];
  v3 = MEMORY[0x1BFB51150](v0[2], v0[3]);
  v4 = v0[5];
  if (v2 < v3)
  {
    v5 = sub_1BF17931C();
    v4 = v1[5];
    if (v5 == 45)
    {
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_147;
      }

      v1[5] = v4;
    }
  }

  v7 = MEMORY[0x1BFB51150](v1[2], v1[3]);
  v8 = v1[5];
  if (v4 >= v7)
  {
    goto LABEL_17;
  }

  if (sub_1BF17931C() != 48)
  {
    v19 = sub_1BF17931C();
    v10 = v1[5];
    if ((v19 - 58) >= 0xF7u)
    {
      v27 = v1[2];
      v26 = v1[3];
      v28 = __OFSUB__(HIDWORD(v27), v27);
      v94 = v28;
      v29 = BYTE6(v26);
      v30 = v26 >> 62;
      while (1)
      {
        v31 = v29;
        switch(v30)
        {
          case 1uLL:
            v31 = HIDWORD(v27) - v27;
            if (v94)
            {
              goto LABEL_144;
            }

            goto LABEL_32;
          case 2uLL:
            v33 = *(v27 + 16);
            v32 = *(v27 + 24);
            v6 = __OFSUB__(v32, v33);
            v31 = v32 - v33;
            if (!v6)
            {
              goto LABEL_32;
            }

            goto LABEL_143;
          case 3uLL:
            if (v10 < 0)
            {
              break;
            }

            goto LABEL_9;
          default:
LABEL_32:
            if (v10 >= v31)
            {
              goto LABEL_9;
            }

            break;
        }

        v34 = v1[2];
        v35 = v1[3];
        switch(v35 >> 62)
        {
          case 1uLL:
            if (v10 >= v34 >> 32 || v10 < v34)
            {
              goto LABEL_137;
            }

            v42 = sub_1BF178F3C();
            if (!v42)
            {
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
LABEL_182:
              __break(1u);
              JUMPOUT(0x1BF019824);
            }

            v38 = v42;
            v43 = sub_1BF178F5C();
            v40 = v10 - v43;
            if (!__OFSUB__(v10, v43))
            {
              goto LABEL_50;
            }

            goto LABEL_139;
          case 2uLL:
            if (v10 < *(v34 + 16))
            {
              goto LABEL_135;
            }

            if (v10 >= *(v34 + 24))
            {
              goto LABEL_138;
            }

            v37 = sub_1BF178F3C();
            if (!v37)
            {
              goto LABEL_176;
            }

            v38 = v37;
            v39 = sub_1BF178F5C();
            v40 = v10 - v39;
            if (__OFSUB__(v10, v39))
            {
              goto LABEL_140;
            }

LABEL_50:
            v36 = *(v38 + v40);
LABEL_51:
            v10 = v1[5];
            if ((v36 - 58) < 0xFFFFFFF6)
            {
              goto LABEL_9;
            }

            v6 = __OFADD__(v10++, 1);
            if (v6)
            {
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
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
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
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
            }

            v1[5] = v10;
            break;
          case 3uLL:
            __break(1u);
            goto LABEL_175;
          default:
            if (v10 >= BYTE6(v35))
            {
              goto LABEL_136;
            }

            v97 = v1[2];
            v98 = BYTE2(v34);
            v99 = BYTE3(v34);
            v100 = BYTE4(v34);
            v101 = BYTE5(v34);
            v102 = BYTE6(v34);
            v103 = HIBYTE(v34);
            v104 = v35;
            v105 = BYTE2(v35);
            v106 = BYTE3(v35);
            v107 = BYTE4(v35);
            v108 = BYTE5(v35);
            v36 = *(&v97 + v10);
            goto LABEL_51;
        }
      }
    }

    v20 = v1[7];
    v16 = v10 - v20;
    if (__OFSUB__(v10, v20))
    {
      goto LABEL_156;
    }

    if (v10 < v2)
    {
      goto LABEL_157;
    }

    v21 = v1[6];
    v22 = sub_1BF17930C();
    v24 = v23;
    sub_1BF053D1C();
    swift_allocError();
    *v25 = v21;
    goto LABEL_100;
  }

  v9 = v1[5];
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_148;
  }

  v1[5] = v10;
LABEL_9:
  v11 = MEMORY[0x1BFB51150](v1[2], v1[3]);
  v12 = v1[5];
  if (v10 < v11)
  {
    v13 = sub_1BF17931C();
    v12 = v1[5];
    if (v13 == 46)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_167;
      }

      v1[5] = v14;
      if (v14 < MEMORY[0x1BFB51150](v1[2], v1[3]) && (sub_1BF17931C() - 58) >= 0xF6u)
      {
        v45 = v1[2];
        v44 = v1[3];
        v12 = v1[5];
        v46 = __OFSUB__(HIDWORD(v45), v45);
        v95 = v46;
        v47 = BYTE6(v44);
        v48 = v44 >> 62;
        while (1)
        {
          v49 = v47;
          switch(v48)
          {
            case 1uLL:
              v49 = HIDWORD(v45) - v45;
              if (v95)
              {
                goto LABEL_169;
              }

              goto LABEL_62;
            case 2uLL:
              v51 = *(v45 + 16);
              v50 = *(v45 + 24);
              v6 = __OFSUB__(v50, v51);
              v49 = v50 - v51;
              if (!v6)
              {
                goto LABEL_62;
              }

              goto LABEL_168;
            case 3uLL:
              if (v12 < 0)
              {
                goto LABEL_65;
              }

              goto LABEL_84;
            default:
LABEL_62:
              if (v12 >= v49)
              {
                goto LABEL_84;
              }

LABEL_65:
              v52 = v1[2];
              v53 = v1[3];
              switch(v53 >> 62)
              {
                case 1uLL:
                  if (v12 >= v52 >> 32 || v12 < v52)
                  {
                    goto LABEL_160;
                  }

                  v60 = sub_1BF178F3C();
                  if (!v60)
                  {
                    goto LABEL_181;
                  }

                  v56 = v60;
                  v61 = sub_1BF178F5C();
                  v58 = v12 - v61;
                  if (!__OFSUB__(v12, v61))
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_162;
                case 2uLL:
                  if (v12 < *(v52 + 16))
                  {
                    goto LABEL_158;
                  }

                  if (v12 >= *(v52 + 24))
                  {
                    goto LABEL_161;
                  }

                  v55 = sub_1BF178F3C();
                  if (!v55)
                  {
                    goto LABEL_182;
                  }

                  v56 = v55;
                  v57 = sub_1BF178F5C();
                  v58 = v12 - v57;
                  if (__OFSUB__(v12, v57))
                  {
                    goto LABEL_163;
                  }

LABEL_80:
                  v54 = *(v56 + v58);
LABEL_81:
                  v12 = v1[5];
                  if ((v54 - 58) < 0xFFFFFFF6)
                  {
                    goto LABEL_84;
                  }

                  v6 = __OFADD__(v12++, 1);
                  if (v6)
                  {
                    goto LABEL_146;
                  }

                  v1[5] = v12;
                  break;
                case 3uLL:
                  goto LABEL_180;
                default:
                  if (v12 >= BYTE6(v53))
                  {
                    goto LABEL_159;
                  }

                  v97 = v1[2];
                  v98 = BYTE2(v52);
                  v99 = BYTE3(v52);
                  v100 = BYTE4(v52);
                  v101 = BYTE5(v52);
                  v102 = BYTE6(v52);
                  v103 = HIBYTE(v52);
                  v104 = v53;
                  v105 = BYTE2(v53);
                  v106 = BYTE3(v53);
                  v107 = BYTE4(v53);
                  v108 = BYTE5(v53);
                  v54 = *(&v97 + v12);
                  goto LABEL_81;
              }

              break;
          }
        }
      }

      v15 = v1[5];
      v8 = v1[7];
      v16 = v15 - v8;
      if (__OFSUB__(v15, v8))
      {
        goto LABEL_172;
      }

      if (v15 < v2)
      {
        __break(1u);
LABEL_17:
        v17 = v1[7];
        v16 = v8 - v17;
        if (__OFSUB__(v8, v17))
        {
          goto LABEL_141;
        }

        if (v8 < v2)
        {
          goto LABEL_142;
        }

        v18 = v1[6];
        goto LABEL_99;
      }

LABEL_98:
      v18 = v1[6];
LABEL_99:
      v22 = sub_1BF17930C();
      v24 = v69;
      sub_1BF053D1C();
      swift_allocError();
      *v25 = v18;
LABEL_100:
      *(v25 + 8) = v16;
      *(v25 + 16) = v22;
      *(v25 + 24) = v24;
      *(v25 + 32) = 0;
      *(v25 + 40) = 0;
      *(v25 + 48) = 10;
      swift_willThrow();
      return v22;
    }
  }

LABEL_84:
  if (v12 < MEMORY[0x1BFB51150](v1[2], v1[3]) && (sub_1BF17931C() == 101 || sub_1BF17931C() == 69))
  {
    v62 = v1[5];
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_164;
    }

    v1[5] = v63;
    v64 = MEMORY[0x1BFB51150](v1[2], v1[3]);
    v65 = v1[5];
    if (v63 < v64)
    {
      if (sub_1BF17931C() == 45 || sub_1BF17931C() == 43)
      {
        v66 = v1[5];
        v65 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_173;
        }

        v1[5] = v65;
      }

      else
      {
        v65 = v1[5];
      }
    }

    if (v65 < MEMORY[0x1BFB51150](v1[2], v1[3]) && (sub_1BF17931C() - 58) >= 0xF6u)
    {
      v72 = v1[2];
      v71 = v1[3];
      v73 = v1[5];
      v74 = __OFSUB__(HIDWORD(v72), v72);
      v96 = v74;
      v75 = BYTE6(v71);
      v76 = v71 >> 62;
      while (1)
      {
        v77 = v75;
        switch(v76)
        {
          case 1uLL:
            v77 = HIDWORD(v72) - v72;
            if (v96)
            {
              goto LABEL_166;
            }

            goto LABEL_110;
          case 2uLL:
            v79 = *(v72 + 16);
            v78 = *(v72 + 24);
            v6 = __OFSUB__(v78, v79);
            v77 = v78 - v79;
            if (!v6)
            {
              goto LABEL_110;
            }

            goto LABEL_165;
          case 3uLL:
            if (v73 < 0)
            {
              goto LABEL_113;
            }

            goto LABEL_132;
          default:
LABEL_110:
            if (v73 >= v77)
            {
              goto LABEL_132;
            }

LABEL_113:
            v80 = v1[2];
            v81 = v1[3];
            switch(v81 >> 62)
            {
              case 1uLL:
                if (v73 >= v80 >> 32 || v73 < v80)
                {
                  goto LABEL_152;
                }

                v88 = sub_1BF178F3C();
                if (!v88)
                {
                  goto LABEL_178;
                }

                v84 = v88;
                v89 = sub_1BF178F5C();
                v86 = v73 - v89;
                if (!__OFSUB__(v73, v89))
                {
                  goto LABEL_128;
                }

                goto LABEL_154;
              case 2uLL:
                if (v73 < *(v80 + 16))
                {
                  goto LABEL_150;
                }

                if (v73 >= *(v80 + 24))
                {
                  goto LABEL_153;
                }

                v83 = sub_1BF178F3C();
                if (!v83)
                {
                  goto LABEL_179;
                }

                v84 = v83;
                v85 = sub_1BF178F5C();
                v86 = v73 - v85;
                if (__OFSUB__(v73, v85))
                {
                  goto LABEL_155;
                }

LABEL_128:
                v82 = *(v84 + v86);
LABEL_129:
                if ((v82 - 58) < 0xFFFFFFF6)
                {
                  goto LABEL_132;
                }

                v90 = v1[5];
                v73 = v90 + 1;
                if (__OFADD__(v90, 1))
                {
                  goto LABEL_145;
                }

                v1[5] = v73;
                break;
              case 3uLL:
                goto LABEL_177;
              default:
                if (v73 >= BYTE6(v81))
                {
                  goto LABEL_151;
                }

                v97 = v1[2];
                v98 = BYTE2(v80);
                v99 = BYTE3(v80);
                v100 = BYTE4(v80);
                v101 = BYTE5(v80);
                v102 = BYTE6(v80);
                v103 = HIBYTE(v80);
                v104 = v81;
                v105 = BYTE2(v81);
                v106 = BYTE3(v81);
                v107 = BYTE4(v81);
                v108 = BYTE5(v81);
                v82 = *(&v97 + v73);
                goto LABEL_129;
            }

            break;
        }
      }
    }

    v67 = v1[5];
    v68 = v1[7];
    v16 = v67 - v68;
    if (__OFSUB__(v67, v68))
    {
      goto LABEL_170;
    }

    if (v67 < v2)
    {
      goto LABEL_171;
    }

    goto LABEL_98;
  }

LABEL_132:
  if (v1[5] < v2)
  {
    goto LABEL_149;
  }

  v91 = sub_1BF17930C();
  v93 = v92;
  v22 = sub_1BF016E04(v91, v92);
  sub_1BF014E18(v91, v93);
  return v22;
}

uint64_t sub_1BF019884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v7 = sub_1BF17A12C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A10C();
  v12 = sub_1BF17A0BC();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a4 = v12;
    *a5 = v14;
  }

  return result;
}

uint64_t sub_1BF0199B4(uint64_t a1, uint64_t a2)
{
  v6 = sub_1BF17A12C();
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v2[5];
  result = MEMORY[0x1BFB51150](a1, a2, v8);
  if (__OFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 + result < v9)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = sub_1BF17930C();
  v13 = v12;
  v14 = MEMORY[0x1BFB51120]();
  sub_1BF014E18(v11, v13);
  if (v14)
  {
    result = MEMORY[0x1BFB51150](a1, a2);
    v15 = v2[5];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (!v16)
    {
      v2[5] = v17;
      return result;
    }

    goto LABEL_15;
  }

  v18 = v2[5];
  result = MEMORY[0x1BFB51150](a1, a2);
  if (__OFADD__(v18, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 + result < v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = sub_1BF17930C();
  v21 = v20;
  v22 = sub_1BF016E04(v19, v20);
  v24 = v23;
  result = sub_1BF014E18(v19, v21);
  if (!v3)
  {
    v25 = v2[5];
    v26 = v2[7];
    v27 = v25 - v26;
    if (__OFSUB__(v25, v26))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v28 = v2[6];
    sub_1BF17A10C();
    result = sub_1BF17A0CC();
    if (!v29)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v30 = result;
    v31 = v29;
    sub_1BF053D1C();
    swift_allocError();
    *v32 = v28;
    *(v32 + 8) = v27;
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    *(v32 + 32) = v22;
    *(v32 + 40) = v24;
    *(v32 + 48) = 3;
    return swift_willThrow();
  }

  return result;
}

void sub_1BF019BB4(uint64_t a1)
{
  if (!qword_1ED8EF878)
  {
    sub_1BF019C0C();
    v1 = sub_1BF17B70C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EF878);
    }
  }
}

void sub_1BF019C0C()
{
  if (!qword_1ED8EF898[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED8EF898);
    }
  }
}

void Cache.subscript.getter()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v22 = v3;
  v4 = *(*v0 + 88);
  v7 = type metadata accessor for CacheEntry(255, v4, v5, v6);
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_4_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_13();
  v18 = 1;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  v19 = v0[3];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_10_9((v2 + 2), &v23);
  sub_1BF179EAC();
  swift_endAccess();
  (*(v10 + 40))(v1, v15, v8);
  os_unfair_lock_unlock(*(v19 + 16));
  if (!__swift_getEnumTagSinglePayload(v1, 1, v7))
  {
    (*(*(v4 - 8) + 16))(v22, v1, v4);
    v18 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v18, 1, v4);
  v20 = OUTLINED_FUNCTION_17_2();
  v21(v20);
  OUTLINED_FUNCTION_26_2();
}

{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_27();
  v3 = *(v2 + 88);
  v4 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_68(v4);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_6_30();
  v60 = v7;
  v10 = type metadata accessor for CacheEntry(255, v3, v8, v9);
  v59 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v52 = v11;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_3();
  v64 = v10;
  v15 = *(v10 - 8);
  v14 = v10 - 8;
  v62 = v15;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_6_30();
  v58 = v18;
  OUTLINED_FUNCTION_2_43();
  v20 = *(v19 + 80);
  OUTLINED_FUNCTION_2_3();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_10_21();
  v61 = v31;
  OUTLINED_FUNCTION_2_43();
  v66 = *(v32 + 96);
  v70 = sub_1BF179CEC();
  v65 = v0;
  v33 = *(v0 + 24);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_8_25();
  v34 = sub_1BF17A4EC();
  v69 = v34;
  OUTLINED_FUNCTION_8_25();
  if (v34 == sub_1BF17A5AC())
  {
LABEL_12:
    os_unfair_lock_unlock(*(v33 + 16));
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v51 = v33;
  v50 = v24;
  v67 = (v22 + 16);
  v35 = v61;
  v55 = v62 + 4;
  v56 = v3;
  v53 = v62 + 1;
  v54 = v3 - 8;
  v62 = (v22 + 8);
  v63 = (v22 + 32);
  ++v52;
  while (1)
  {
    OUTLINED_FUNCTION_8_25();
    v36 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v36 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_21_9();
    v39 = *(v22 + 16);
    v39(v35, v37 + v38 * v34, v20);
LABEL_5:
    v40 = v64;
    OUTLINED_FUNCTION_28_8();
    sub_1BF17A62C();
    (*v63)(v14, v35, v20);
    OUTLINED_FUNCTION_10_9(v65 + 16, v68);
    OUTLINED_FUNCTION_19_11();
    sub_1BF179EAC();
    if (__swift_getEnumTagSinglePayload(v1, 1, v40) == 1)
    {
      (*v52)(v1, v59);
      swift_endAccess();
    }

    else
    {
      v41 = v58;
      OUTLINED_FUNCTION_17_11();
      v42();
      swift_endAccess();
      v39(v57, v14, v20);
      v43 = v56;
      (*(*(v56 - 8) + 16))(v60, v41, v56);
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
      OUTLINED_FUNCTION_25_9();
      sub_1BF179E9C();
      sub_1BF179EBC();
      v47 = v41;
      v35 = v61;
      (*v53)(v47, v40);
    }

    (*v62)(v14, v20);
    OUTLINED_FUNCTION_8_25();
    v48 = sub_1BF17A5AC();
    v34 = v69;
    if (v69 == v48)
    {
      v33 = v51;
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_28_8();
  v49 = sub_1BF17B23C();
  if (v50 == 8)
  {
    v68[0] = v49;
    v39 = *v67;
    (*v67)(v35, v68, v20);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void *sub_1BF019E60()
{
  type metadata accessor for MockServer();
  v0 = swift_allocObject();
  result = MockServer.init()();
  qword_1ED8EC858 = v0;
  return result;
}

void *MockServer.init()()
{
  v1 = v0;
  v15 = sub_1BF17AD4C();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17AD1C();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v9 = sub_1BF179BBC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  OUTLINED_FUNCTION_2_0();
  v11 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v0[3] = v11;
  v12 = v11;
  sub_1BEFF6E88();
  sub_1BF179B9C();
  v16 = v12;
  sub_1BF01A150();
  sub_1BF00D358(0, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BF014364();
  sub_1BF17B0BC();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v15);
  v0[4] = sub_1BF17AD9C();
  type metadata accessor for HttpParser();
  v0[5] = swift_allocObject();
  type metadata accessor for HttpRouter();
  v13 = swift_allocObject();
  sub_1BF01C0AC();
  *(v13 + 16) = sub_1BF179DAC();
  v1[6] = v13;
  v1[7] = dispatch_semaphore_create(0);
  v16 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v1[8] = UnfairLock.init(options:)(&v16);
  return v1;
}

unint64_t sub_1BF01A150()
{
  result = qword_1ED8F0BE0;
  if (!qword_1ED8F0BE0)
  {
    sub_1BF17AD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0BE0);
  }

  return result;
}

uint64_t sub_1BF01A1B0(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v46[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v44 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v42 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v42;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1BF17AEDC();
        v20 = v19;
        v46[0] = v18;
        v46[1] = v19;
        v21 = a3(v46);
        if (v9)
        {

          return v20;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1BF17AE7C();
      }

      v24 = (v42 >> 14 == v17) & a2;
      a8 = v12;
      if (!v24)
      {
        if (v17 < v42 >> 14)
        {
          __break(1u);
          return result;
        }

        v43 = sub_1BF17AEFC();
        v38 = v26;
        v39 = v25;
        v37 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1BF0147C8();
          v44 = v30;
        }

        v28 = *(v44 + 16);
        if (v28 >= *(v44 + 24) >> 1)
        {
          sub_1BF0147C8();
          v44 = v31;
        }

        *(v44 + 16) = v28 + 1;
        v29 = (v44 + 32 * v28);
        v29[4] = v43;
        v29[5] = v39;
        v29[6] = v38;
        v29[7] = v37;
        a8 = v12;
      }

      v10 = sub_1BF17AE7C();
    }

    while (v24 || *(v44 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v44;
    }

    v20 = v44;
    if (v13 >= v10 >> 14)
    {
      sub_1BF17AEFC();
      OUTLINED_FUNCTION_12_10();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(v20 + 16);
      v33 = *(v20 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v33 >> 1)
      {
LABEL_34:
        *(v20 + 16) = v11;
        v34 = (v20 + 32 * v14);
        v34[4] = v8;
        v34[5] = v10;
        v34[6] = v12;
        v34[7] = v13;
        return v20;
      }

LABEL_37:
      sub_1BF0147C8();
      v20 = v35;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_24_0();
    sub_1BF0147C8();
    v20 = v36;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      sub_1BF17AEFC();
      OUTLINED_FUNCTION_12_10();

      sub_1BF0147C8();
      v20 = v32;
      v14 = *(v32 + 16);
      v33 = *(v32 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF01A558(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF012C38(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF012C4C(v6);
  *a1 = v2;
  return result;
}

void sub_1BF01A5C4()
{
  OUTLINED_FUNCTION_18_1();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_1BEFE4510(0, v5, v2, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v3)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_23();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF01A6B4()
{
  OUTLINED_FUNCTION_1_21();
  if (v0)
  {
    v2 = v1 + 56;
    do
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF179F3C();
      sub_1BF179F3C();

      v2 += 32;
      --v0;
    }

    while (v0);
  }
}

void sub_1BF01A748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BF01A7AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_62_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF00EFCC(v11, 0, 0, 1, v4, v3);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = v4;
    v11[1] = v3;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BF0075BC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *sub_1BF01A86C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BF01A91C(a1, a2);
  sub_1BF01C5C8(&unk_1F3DB64D0);
  return v3;
}

void *sub_1BF01A8B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BF01C578();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1BF01A91C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BF17A24C())
  {
    result = sub_1BF01A8B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BF17B1AC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          OUTLINED_FUNCTION_49();
          result = sub_1BF17B2FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_49();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF01AA2C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v98 = a5;
  v100 = a1;
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  v95 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v97 = &v86[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v86[-v15];
  v17 = sub_1BF179B3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v86[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v86[-v24];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v99 = result;
  sub_1BF00F4E4(v98, v16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v94 = a3;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00F578(v16, &qword_1ED8EAEA0, MEMORY[0x1E6977D78]);
  }

  else
  {
    LODWORD(v92) = a4;
    (*(v18 + 32))(v25, v16, v17);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v28 = sub_1BF1797FC();
    __swift_project_value_buffer(v28, qword_1ED8F5298);
    v90 = *(v18 + 16);
    v90(v21, v25, v17);
    v29 = v99;

    v30 = sub_1BF1797DC();
    v31 = sub_1BF17ACBC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v93 = a2;
      v33 = v32;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v105[0] = v89;
      *v33 = 136446466;
      v87 = v31;
      v91 = a6;
      v35 = *(v29 + 40);
      v34 = *(v29 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v36 = sub_1BF01A7AC(v35, v34, v105);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2114;
      sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
      swift_allocError();
      v90(v37, v21, v17);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v18 + 8);
      v39(v21, v17);
      *(v33 + 14) = v38;
      v40 = v88;
      *v88 = v38;
      a6 = v91;
      _os_log_impl(&dword_1BEFE0000, v30, v87, "SocketConnection:[%{public}s] receive data with error: %{public}@", v33, 0x16u);
      sub_1BF02F424(v40, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v40, -1, -1);
      v41 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1BFB547B0](v41, -1, -1);
      v42 = v33;
      a2 = v93;
      MEMORY[0x1BFB547B0](v42, -1, -1);

      v39(v25, v17);
    }

    else
    {

      v43 = *(v18 + 8);
      v43(v21, v17);
      v43(v25, v17);
    }

    a4 = v92;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v44 = sub_1BF1797FC();
    __swift_project_value_buffer(v44, qword_1ED8F5298);
    v45 = v99;

    v46 = sub_1BF1797DC();
    v47 = sub_1BF17ACBC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v105[0] = v49;
      *v48 = 136446466;
      v50 = *(v45 + 40);
      v51 = *(v45 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v52 = sub_1BF01A7AC(v50, v51, v105);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2082;
      if (a4)
      {
        v53 = 1702195828;
      }

      else
      {
        v53 = 0x65736C6166;
      }

      if (a4)
      {
        v54 = 0xE400000000000000;
      }

      else
      {
        v54 = 0xE500000000000000;
      }

      v55 = sub_1BF01A7AC(v53, v54, v105);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_1BEFE0000, v46, v47, "SocketConnection:[%{public}s] receive data with empty data, isComplete:[%{public}s]", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v49, -1, -1);
      MEMORY[0x1BFB547B0](v48, -1, -1);
    }

    goto LABEL_42;
  }

  sub_1BF014DC0(v100, a2);
  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v56 = sub_1BF1797FC();
  __swift_project_value_buffer(v56, qword_1ED8F5298);
  v57 = v99;

  v58 = v100;
  sub_1BF00F5E0(v100, a2);
  v59 = sub_1BF1797DC();
  v60 = sub_1BF17ACDC();

  sub_1BF00F5F4(v58, a2);
  if (os_log_type_enabled(v59, v60))
  {
    v91 = a6;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v107 = v62;
    *v61 = 136446722;
    v63 = *(v57 + 40);
    v64 = *(v57 + 48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v65 = sub_1BF01A7AC(v63, v64, &v107);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2082;
    if (a4)
    {
      v66 = 1702195828;
    }

    else
    {
      v66 = 0x65736C6166;
    }

    if (a4)
    {
      v67 = 0xE400000000000000;
    }

    else
    {
      v67 = 0xE500000000000000;
    }

    v68 = sub_1BF01A7AC(v66, v67, &v107);

    *(v61 + 14) = v68;
    *(v61 + 22) = 2082;
    v69 = v100;
    sub_1BF014DC0(v100, a2);
    v70 = sub_1BF01C6AC(v69, a2);
    if (v71)
    {
      v72 = v70;
      v73 = v71;
      sub_1BF00F5F4(v100, a2);
LABEL_41:
      v76 = sub_1BF01A7AC(v72, v73, &v107);

      *(v61 + 24) = v76;
      _os_log_impl(&dword_1BEFE0000, v59, v60, "SocketConnection:[%{public}s] receive data, isComplete:[%{public}s], content:[%{public}s]", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v62, -1, -1);
      MEMORY[0x1BFB547B0](v61, -1, -1);
      sub_1BF00F5F4(v100, a2);

      goto LABEL_42;
    }

    LODWORD(v92) = a4;
    v103 = v100;
    v104 = a2;
    sub_1BF014DC0(v100, a2);
    sub_1BF086BDC();
    if (swift_dynamicCast())
    {
      sub_1BEFE87B0(v101, v105);
      __swift_project_boxed_opaque_existential_1(v105, v106);
      if (sub_1BF17B55C())
      {
        sub_1BF00F5F4(v100, a2);
        __swift_project_boxed_opaque_existential_1(v105, v106);
        sub_1BF17B54C();
        v73 = *(&v101[0] + 1);
        v72 = *&v101[0];
        __swift_destroy_boxed_opaque_existential_1(v105);
LABEL_40:
        LOBYTE(a4) = v92;
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_1(v105);
    }

    else
    {
      v102 = 0;
      memset(v101, 0, sizeof(v101));
      sub_1BF00F578(v101, &qword_1ED8EAD98, sub_1BF086BDC);
    }

    v74 = v100;
    v72 = sub_1BF0869B0(v100, a2);
    v73 = v75;
    sub_1BF00F5F4(v74, a2);
    goto LABEL_40;
  }

  sub_1BF00F5F4(v100, a2);
LABEL_42:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v78 = *(Strong + 56);
    if (v78)
    {
      v92 = *(Strong + 64);
      sub_1BF009984(v78, v92);

      v79 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v80 = v97;
      v81 = v98;
      sub_1BF00F4E4(v98, v97);
      v82 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v83 = (v96 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = a2;
      v84 = swift_allocObject();
      sub_1BF00F608(v80, v84 + v82);
      *(v84 + v83) = v99;
      *(v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;

      v85 = v92;
      v78(v100, v93, v94, a4 & 1, v81, sub_1BF02F2C8, v84);

      sub_1BEFE52DC(v78, v85);
    }
  }
}

uint64_t sub_1BF01B600()
{
  OUTLINED_FUNCTION_1_7();
  sub_1BF01A748(0, v1, v2, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = sub_1BF179B3C();
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v5, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

unint64_t sub_1BF01B738()
{
  result = qword_1ED8EE9C0;
  if (!qword_1ED8EE9C0)
  {
    sub_1BF018790(255, &qword_1ED8EE9D0, MEMORY[0x1E69E6158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EE9C0);
  }

  return result;
}

unint64_t sub_1BF01B7A0()
{
  result = qword_1ED8EB110;
  if (!qword_1ED8EB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB110);
  }

  return result;
}

uint64_t sub_1BF01B7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF01B844(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 2);
  v8 = *(a3 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v20 = *(a1 + 24);
    v21 = *a1;
    v22 = *(a1 + 2);
    v23 = *(a1 + 1);
    v24 = a2;
    v25 = a4;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BF018E60(0, v8, 0);
    v9 = v26;
    v11 = (a3 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v26 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v17 >= v16 >> 1)
      {
        sub_1BF018E60((v16 > 1), v17 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v17 + 1;
      v18 = (v9 + 32 * v17);
      v18[4] = v12;
      v18[5] = v13;
      v18[6] = v14;
      v18[7] = v15;
      v11 += 4;
      --v8;
    }

    while (v8);
    a4 = v25;
    a2 = v24;
    v7 = v22;
    v5 = v23;
    v4 = v21;
    v6 = v20;
  }

  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  a4(&v26, a2, v9);
}

uint64_t sub_1BF01B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a5;
  return Array.sorting<A>(on:by:)(a1, a2, a7, v8, a3, a4, a5, a6);
}

uint64_t Array.sorting<A>(on:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  return sub_1BF17A40C();
}

uint64_t sub_1BF01BA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v24 - v18;
  v20(v17);
  a5(a2);
  v21 = a3(v19, v14);
  v22 = *(v12 + 8);
  v22(v14, a8);
  v22(v19, a8);
  return v21 & 1;
}

void sub_1BF01BBF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1BF1794AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 < a2)
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        return;
      case 2:
        *&a1[v16] = v20;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1BF01BE9CLL);
    case 4:
      *&a1[v16] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 >= v12)
        {
          v24 = a1;
          v25 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v24 = (&a1[v15] & ~v14);
          v25 = a2;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v12, v10);
      }

      return;
  }
}

uint64_t sub_1BF01BEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(a2 - 8);
  (*(v9 + 16))(a3, a1, a2);
  type metadata accessor for CacheEntry(0, a2, v5, v6);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t ReferenceCountedLazy.init(options:loadBlock:)()
{
  OUTLINED_FUNCTION_29_10();
  v4 = *v3;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v9 + 120)) = 0;
  v16 = 1;
  v10 = type metadata accessor for UnfairLock();
  swift_allocObject();
  UnfairLock.init(options:)(&v16);
  OUTLINED_FUNCTION_4_0();
  v12 = (v0 + *(v11 + 104));
  v12[3] = v10;
  v12[4] = &protocol witness table for UnfairLock;
  *v12 = v13;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v14 + 112)) = v4;
  return v0;
}

unint64_t sub_1BF01C0AC()
{
  result = qword_1ED8EAFF0;
  if (!qword_1ED8EAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAFF0);
  }

  return result;
}

unint64_t sub_1BF01C100()
{
  result = qword_1ED8EAFE8;
  if (!qword_1ED8EAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAFE8);
  }

  return result;
}

uint64_t sub_1BF01C154(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  sub_1BF00DAA8(1, a1, a2, a6, v11);
}

uint64_t sub_1BF01C248()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_62_0();
  v6 = OUTLINED_FUNCTION_6_4(v4, v5);
  sub_1BF011754(v6, v7);
  OUTLINED_FUNCTION_1_5();
  if (v9)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v10 = v8;
  sub_1BF01C340(0);
  if (OUTLINED_FUNCTION_10_7(v11))
  {
    sub_1BF011754(v0, v3);
    OUTLINED_FUNCTION_11_2();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v10)
  {
    OUTLINED_FUNCTION_55();

    return sub_1BF00E310(v13, v14);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_40_1();
    sub_1BF01C3A4(v17, v18, v3, v1, v19);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF01C340(uint64_t a1)
{
  if (!qword_1ED8EADD8)
  {
    sub_1BF01C0AC();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EADD8);
    }
  }
}

void sub_1BF01C3A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  memcpy((v7 + 72 * v6), v8, 0x48uLL);
  OUTLINED_FUNCTION_12_11();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_1BF01C404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BF01C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  type metadata accessor for HttpResponseConverter();
  v4[5] = swift_allocObject();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 56) = sub_1BF01B730;
  *(a1 + 64) = v6;

  sub_1BEFE52DC(v7, v8);

  sub_1BF01EBA0();

  return v4;
}

uint64_t sub_1BF01C540()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF01C578()
{
  if (!qword_1ED8EF478)
  {
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF478);
    }
  }
}

uint64_t sub_1BF01C5C8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1BF081F5C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF01C6AC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1BF178F3C() && __OFSUB__(v4, sub_1BF178F5C()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1BF178F4C();
      return sub_1BF17A18C();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1BF178F3C() && __OFSUB__(v2, sub_1BF178F5C()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return sub_1BF17A18C();
  }
}

uint64_t sub_1BF01C888(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  *(v13 + 24) = a8;
  if (a2 >> 60 == 15)
  {
    v14 = qword_1ED8EE9F0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF1797FC();
    __swift_project_value_buffer(v15, qword_1ED8F5298);

    v16 = sub_1BF1797DC();
    v17 = sub_1BF17ACBC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v71 = v19;
      *v18 = 136446210;
      v20 = *(a6 + 16);
      v21 = *(v20 + 40);
      v22 = *(v20 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v23 = sub_1BF01A7AC(v21, v22, &v71);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1BEFE0000, v16, v17, "HttpConnectionHandler:[%{public}s] no data", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFB547B0](v19, -1, -1);
      MEMORY[0x1BFB547B0](v18, -1, -1);
    }

    a7(258);

    goto LABEL_7;
  }

  sub_1BF00F5E0(a1, a2);
  sub_1BF00F750(a1, a2, &v71);
  v67 = a7;
  v63 = a2;
  v66 = v13;
  v25 = v71;
  v26 = v72;
  v27 = v73;
  v28 = v74;
  v30 = v75;
  v29 = v76;
  v31 = sub_1BF010B6C(v74, v71, v72, v73);
  if (v31)
  {
    v71 = v25;
    v72 = v26;
    v73 = v27;
    v74 = v28;
    v57 = v30;
    v75 = v30;
    v76 = v29;
    v34 = v31;
    v35 = v32;
    v60 = v33;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v60(&v68, &v71, v34, v35);

    v36 = v68;
    v71 = v25;
    v72 = v26;
    v73 = v27;
    v74 = v28;
    v75 = v57;
    v76 = v29;
    v58 = sub_1BF0136C8(&v68);
    v38 = v37;

    if (v38 >> 60 != 15)
    {
      v65 = a1;
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = v58;
      v54[4] = v38;
      v54[5] = sub_1BF020680;
      v54[6] = v66;

      sub_1BF00F5E0(v58, v38);

      sub_1BF01D444(v58, v38, sub_1BF02060C, v54);
      sub_1BF00F5F4(v65, v63);

      sub_1BF00F5F4(v58, v38);
      sub_1BF013E14(v36, *(&v36 + 1));
    }

    v67(257);
    sub_1BF013E14(v36, *(&v36 + 1));
  }

  else
  {
    v59 = v28;
    v61 = v25;
    v62 = v26;
    v39 = v29;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v40 = sub_1BF1797FC();
    __swift_project_value_buffer(v40, qword_1ED8F5298);

    v41 = sub_1BF1797DC();
    v42 = sub_1BF17ACDC();

    v64 = a1;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v71 = v44;
      *v43 = 136446210;
      v45 = *(a6 + 16);
      v46 = *(v45 + 40);
      v47 = *(v45 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v48 = sub_1BF01A7AC(v46, v47, &v71);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1BEFE0000, v41, v42, "HttpConnectionHandler:[%{public}s] no route", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1BFB547B0](v44, -1, -1);
      v49 = v43;
      a1 = v64;
      MEMORY[0x1BFB547B0](v49, -1, -1);
    }

    v68 = xmmword_1BF18AA40;
    v69 = 0;
    v70 = 0;
    v71 = v61;
    v72 = v62;
    v73 = v27;
    v74 = v59;
    v75 = v30;
    v76 = v39;
    v50 = sub_1BF0136C8(&v68);
    v52 = v51;

    if (v52 >> 60 != 15)
    {
      v55 = swift_allocObject();
      swift_weakInit();
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = sub_1BF020680;
      v56[4] = v66;

      sub_1BF01D444(v50, v52, sub_1BF032E00, v56);
      sub_1BF00F5F4(v64, v63);

      sub_1BF00F5F4(v50, v52);

      goto LABEL_7;
    }

    v67(257);
  }

  sub_1BF00F5F4(a1, v63);

LABEL_7:
}

uint64_t sub_1BF01D27C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF01D2B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF01D2F4()
{

  sub_1BF014E18(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF01D33C(uint64_t a1, uint64_t a2)
{
  sub_1BEFF5158(0, &qword_1ED8EB108, &type metadata for Route, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF01D3C4(uint64_t a1)
{
  sub_1BEFF5158(0, &qword_1ED8EB108, &type metadata for Route, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF01D444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF1799BC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = (v12 - v11);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 2) = v14;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *v13 = sub_1BF02F2BC;
  v13[1] = v15;
  (*(v8 + 104))(v13, *MEMORY[0x1E6977BF8], v6);
  sub_1BF1799AC();

  sub_1BF17999C();
  sub_1BF1799DC();

  (*(v8 + 8))(v13, v6);
}

uint64_t sub_1BF01D5F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF01D634()
{
  v1 = v0;
  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF1797FC();
  __swift_project_value_buffer(v2, qword_1ED8F5298);

  v3 = sub_1BF1797DC();
  v4 = sub_1BF17ACDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BF01A7AC(*(v1 + 40), *(v1 + 48), &v8);
    _os_log_impl(&dword_1BEFE0000, v3, v4, "SocketConnection:[%{public}s] stop", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB547B0](v6, -1, -1);
    MEMORY[0x1BFB547B0](v5, -1, -1);
  }

  return sub_1BF179A0C();
}

uint64_t (*sub_1BF01D77C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0554AC;
}

void *sub_1BF01D7F4(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v29 = v5;
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  sub_1BF17AD1C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v12 = sub_1BF179BBC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  OUTLINED_FUNCTION_2_0();
  v14 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v3[4] = 0x10000;
  sub_1BF1794EC();
  v22 = sub_1BF1794BC();
  v24 = v23;
  (*(v16 + 8))(v21, v14);
  v3[5] = v22;
  v3[6] = v24;
  v3[7] = 0;
  v3[8] = 0;
  v3[2] = a1;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);

  v25 = a2;
  sub_1BF179B8C();
  sub_1BF01C404(&qword_1ED8F0BE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BF01A748(0, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BF014364();
  sub_1BF17B0BC();
  (*(v29 + 104))(v9, *MEMORY[0x1E69E8090], v30);
  v26 = sub_1BF17AD9C();

  v3[3] = v26;
  return v3;
}

uint64_t sub_1BF01DB38()
{
  swift_allocObject();
  swift_weakInit();

  sub_1BF179A1C();
}

uint64_t sub_1BF01DBC0(uint64_t a1, uint64_t a2)
{
  sub_1BF013118(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF01DC24()
{
  OUTLINED_FUNCTION_6_0();
  sub_1BF01A5C4();
  *v0 = v1;
}

uint64_t sub_1BF01DC58()
{
  v0 = sub_1BF17A15C();
  v2 = v1;

  if (v0 == 7628135 && v2 == 0xE300000000000000)
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1BF17B86C();
  }

  return v4 & 1;
}

uint64_t sub_1BF01DCE8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1BF01DDD4(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_1BF01DD68(result, v3, a2);
      OUTLINED_FUNCTION_7_11();
      return OUTLINED_FUNCTION_10_15();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF01DD68(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BF01DDD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1BF01DE20(unint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1BF178D8C();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v37 = 58;
  v38 = 0xE100000000000000;
  v36 = &v37;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v13 = sub_1BF01A1B0(1, 1u, sub_1BF01C1EC, v35, v9, v10, v12, v11);
  v39 = v3;
  v14 = *(v13 + 16);
  if (v14)
  {
    v31 = v6;
    v32 = a2;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v15 = 0;
    v16 = v37;
    v17 = (v13 + 56);
    while (v15 < *(v13 + 16))
    {
      v19 = *(v17 - 3);
      v18 = *(v17 - 2);
      v21 = *(v17 - 1);
      v20 = *v17;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v22 = MEMORY[0x1BFB51F50](v19, v18, v21, v20);
      v24 = v23;

      v37 = v16;
      v25 = *(v16 + 16);
      if (v25 >= *(v16 + 24) >> 1)
      {
        sub_1BF00DD60();
        v16 = v37;
      }

      ++v15;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v24;
      v17 += 4;
      if (v14 == v15)
      {

        v6 = v31;
        a2 = v32;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_9:
    if (*(v16 + 16))
    {
      v27 = sub_1BF01E130(v16);
      v29 = v28;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      if (v29)
      {
        sub_1BF17A15C();

        v37 = v27;
        v38 = v29;
        v30 = v33;
        sub_1BF178D5C();
        sub_1BF013170();
        sub_1BF17AF4C();
        (*(v34 + 8))(v30, v6);

        swift_isUniquelyReferenced_nonNull_native();
        v37 = *a2;
        sub_1BF010A20();
        *a2 = v37;
      }
    }
  }
}

uint64_t sub_1BF01E130(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v4;
}

uint64_t sub_1BF01E178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      if (v5 != 8202875 || v6 != 0xE300000000000000)
      {
        v8 = *(i - 1);
        v9 = *i;
        if ((sub_1BF17B86C() & 1) == 0)
        {
          v10 = v8 == 8202875 && v9 == 0xE300000000000000;
          if (!v10 && (sub_1BF17B86C() & 1) == 0)
          {
            v11 = v5 == v8 && v6 == v9;
            if (!v11 && (sub_1BF17B86C() & 1) == 0)
            {
              break;
            }
          }
        }
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1BF01E288()
{
  OUTLINED_FUNCTION_34_0();
  sub_1BF00DD94();
  sub_1BF01A6B4();
  MEMORY[0x1BFB53950](*(v0 + 16));
  sub_1BF179F3C();
  sub_1BF01FC04(v4, *(v0 + 40));
  sub_1BF01A6B4();
  sub_1BF17BB9C();
  v1 = OUTLINED_FUNCTION_75();

  return sub_1BF01FD48(v1, v2);
}

void sub_1BF01E31C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_1BF0115C4(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - v11;
  v13 = sub_1BF179B3C();
  v49 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v46 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_1BF00F4E4(a1, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1BF00F578(v12, &qword_1ED8EAEA0, MEMORY[0x1E6977D78]);
      swift_storeEnumTagMultiPayload();
      a3(v8);
      sub_1BF02F424(v8, sub_1BF0115C4);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v23 = sub_1BF1797FC();
      __swift_project_value_buffer(v23, qword_1ED8F5298);

      v24 = sub_1BF1797DC();
      v25 = sub_1BF17ACDC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v50 = v27;
        *v26 = 136446210;
        v28 = *(v22 + 40);
        v29 = *(v22 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v30 = sub_1BF01A7AC(v28, v29, &v50);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1BEFE0000, v24, v25, "SocketConnection:[%{public}s] sent data successfully", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1BFB547B0](v27, -1, -1);
        MEMORY[0x1BFB547B0](v26, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v31 = v49;
      (*(v49 + 32))(v20, v12, v13);
      v32 = *(v31 + 16);
      v32(v8, v20, v13);
      swift_storeEnumTagMultiPayload();
      a3(v8);
      sub_1BF02F424(v8, sub_1BF0115C4);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v33 = sub_1BF1797FC();
      __swift_project_value_buffer(v33, qword_1ED8F5298);
      v32(v16, v20, v13);

      v34 = sub_1BF1797DC();
      v35 = sub_1BF17ACBC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v36 = 136446466;
        v46 = v32;
        v38 = *(v22 + 40);
        v37 = *(v22 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v39 = sub_1BF01A7AC(v38, v37, &v50);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2114;
        sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
        swift_allocError();
        v46(v40, v16, v13);
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = *(v49 + 8);
        v42(v16, v13);
        *(v36 + 14) = v41;
        v43 = v47;
        *v47 = v41;
        _os_log_impl(&dword_1BEFE0000, v34, v35, "SocketConnection:[%{public}s] failed to send data with error: %{public}@", v36, 0x16u);
        sub_1BF02F424(v43, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v43, -1, -1);
        v44 = v48;
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1BFB547B0](v44, -1, -1);
        MEMORY[0x1BFB547B0](v36, -1, -1);

        v42(v20, v13);
      }

      else
      {

        v45 = *(v49 + 8);
        v45(v16, v13);
        v45(v20, v13);
      }
    }
  }
}

void (*sub_1BF01E9A0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t sub_1BF01EA18(uint64_t a1)
{
  v2 = v1;
  v3 = v1[4];
  type metadata accessor for SocketConnection();
  swift_allocObject();
  v4 = v3;

  v6 = sub_1BF01D7F4(v5, v4);
  v7 = v1[5];
  v8 = v2[6];
  type metadata accessor for HttpConnectionHandler();
  swift_allocObject();

  sub_1BF01C44C(v6, v7, v8);
  v9 = v2[8];
  UnfairLock.lock()();
  swift_beginAccess();

  MEMORY[0x1BFB52290](v10);
  sub_1BF005F5C(*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  swift_endAccess();
  os_unfair_lock_unlock(*(v9 + 16));
}

uint64_t sub_1BF01EBA0()
{
  v0 = swift_allocObject();
  swift_weakInit();

  sub_1BF009984(sub_1BF01EC80, v0);
  sub_1BF1799CC();

  sub_1BF01DB38();
  return sub_1BF1799FC();
}

uint64_t sub_1BF01EC48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF01EC88(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF179B3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v94 = (&v89 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v89 - v17;
  v19 = sub_1BF1799EC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    (*(v20 + 16))(v23, a1, v19);
    v26 = (*(v20 + 88))(v23, v19);
    if (v26 == *MEMORY[0x1E6977C18])
    {
      (*(v20 + 96))(v23, v19);
      v27 = v4;
      v28 = *(v4 + 32);
      v29 = v3;
      v28(v11, v23, v3);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v30 = sub_1BF1797FC();
      __swift_project_value_buffer(v30, qword_1ED8F5298);
      v31 = *(v27 + 16);
      v31(v7, v11, v3);

      v32 = sub_1BF1797DC();
      v33 = sub_1BF17ACBC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v95 = v94;
        *v34 = 136446466;
        v92 = v25;
        v93 = v27;
        v36 = *(v25 + 40);
        v35 = *(v25 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v37 = sub_1BF01A7AC(v36, v35, &v95);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2114;
        sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
        swift_allocError();
        v31(v38, v7, v29);
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = *(v93 + 8);
        v40(v7, v29);
        *(v34 + 14) = v39;
        v41 = v91;
        *v91 = v39;
        _os_log_impl(&dword_1BEFE0000, v32, v33, "SocketConnection:[%{public}s] waiting with error %{public}@", v34, 0x16u);
        sub_1BF02F424(v41, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v41, -1, -1);
        v42 = v94;
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x1BFB547B0](v42, -1, -1);
        MEMORY[0x1BFB547B0](v34, -1, -1);

        v40(v11, v29);
        return;
      }

      v60 = *(v27 + 8);
      v60(v7, v3);
      v61 = v11;
LABEL_19:
      v60(v61, v29);
      return;
    }

    if (v26 == *MEMORY[0x1E6977C10])
    {
      (*(v20 + 96))(v23, v19);
      v43 = v4;
      v44 = *(v4 + 32);
      v29 = v3;
      v44(v18, v23, v3);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v45 = sub_1BF1797FC();
      __swift_project_value_buffer(v45, qword_1ED8F5298);
      v46 = *(v43 + 16);
      v47 = v94;
      v46(v94, v18, v29);

      v48 = sub_1BF1797DC();
      v49 = sub_1BF17ACBC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v91 = v18;
        v51 = v50;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v95 = v90;
        *v51 = 136446466;
        v93 = v43;
        v53 = *(v25 + 40);
        v52 = *(v25 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v54 = sub_1BF01A7AC(v53, v52, &v95);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2114;
        sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
        swift_allocError();
        v46(v55, v47, v29);
        v56 = _swift_stdlib_bridgeErrorToNSError();
        v57 = *(v93 + 8);
        v57(v47, v29);
        *(v51 + 14) = v56;
        v58 = v89;
        *v89 = v56;
        _os_log_impl(&dword_1BEFE0000, v48, v49, "SocketConnection:[%{public}s] failed with error %{public}@", v51, 0x16u);
        sub_1BF02F424(v58, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v58, -1, -1);
        v59 = v90;
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x1BFB547B0](v59, -1, -1);
        MEMORY[0x1BFB547B0](v51, -1, -1);

        v57(v91, v29);
        return;
      }

      v60 = *(v43 + 8);
      v60(v47, v29);
      v61 = v18;
      goto LABEL_19;
    }

    if (v26 == *MEMORY[0x1E6977C08])
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v62 = sub_1BF1797FC();
      __swift_project_value_buffer(v62, qword_1ED8F5298);

      v63 = sub_1BF1797DC();
      v64 = sub_1BF17ACDC();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = v25;
        v67 = swift_slowAlloc();
        v95 = v67;
        *v65 = 136446210;
        v68 = *(v66 + 40);
        v69 = *(v66 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v70 = sub_1BF01A7AC(v68, v69, &v95);

        *(v65 + 4) = v70;
        v71 = "SocketConnection:[%{public}s] connection setup";
LABEL_25:
        _os_log_impl(&dword_1BEFE0000, v63, v64, v71, v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1BFB547B0](v67, -1, -1);
        MEMORY[0x1BFB547B0](v65, -1, -1);

LABEL_26:

        return;
      }

      goto LABEL_38;
    }

    if (v26 == *MEMORY[0x1E6977C28])
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v72 = sub_1BF1797FC();
      __swift_project_value_buffer(v72, qword_1ED8F5298);

      v63 = sub_1BF1797DC();
      v64 = sub_1BF17ACDC();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v73 = v25;
        v67 = swift_slowAlloc();
        v95 = v67;
        *v65 = 136446210;
        v74 = *(v73 + 40);
        v75 = *(v73 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v76 = sub_1BF01A7AC(v74, v75, &v95);

        *(v65 + 4) = v76;
        v71 = "SocketConnection:[%{public}s] preparing setup";
        goto LABEL_25;
      }

      goto LABEL_38;
    }

    if (v26 == *MEMORY[0x1E6977C00])
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v77 = sub_1BF1797FC();
      __swift_project_value_buffer(v77, qword_1ED8F5298);

      v63 = sub_1BF1797DC();
      v78 = sub_1BF17ACDC();

      if (!os_log_type_enabled(v63, v78))
      {
LABEL_38:

        return;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v95 = v80;
      *v79 = 136446210;
      v81 = *(v25 + 40);
      v82 = *(v25 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v83 = sub_1BF01A7AC(v81, v82, &v95);

      *(v79 + 4) = v83;
      v84 = "SocketConnection:[%{public}s] connection ready";
    }

    else
    {
      if (v26 != *MEMORY[0x1E6977C20])
      {

        (*(v20 + 8))(v23, v19);
        return;
      }

      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v85 = sub_1BF1797FC();
      __swift_project_value_buffer(v85, qword_1ED8F5298);

      v63 = sub_1BF1797DC();
      v78 = sub_1BF17ACDC();

      if (!os_log_type_enabled(v63, v78))
      {
        goto LABEL_38;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v95 = v80;
      *v79 = 136446210;
      v86 = *(v25 + 40);
      v87 = *(v25 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v88 = sub_1BF01A7AC(v86, v87, &v95);

      *(v79 + 4) = v88;
      v84 = "SocketConnection:[%{public}s] connection cancelled";
    }

    _os_log_impl(&dword_1BEFE0000, v63, v78, v84, v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x1BFB547B0](v80, -1, -1);
    MEMORY[0x1BFB547B0](v79, -1, -1);

    goto LABEL_26;
  }
}

uint64_t sub_1BF01F8EC(uint64_t a1)
{
  sub_1BF013118(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF01F948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1BF01FA0C();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 32);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1BF01FA0C()
{
  if (!qword_1ED8EDD00)
  {
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EDD00);
    }
  }
}

uint64_t sub_1BF01FA5C(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = (result + 56);
  if (v4)
  {
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 3);
      v9 = v6;
      v10 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01DE20(&v8, a2);
      if (v2)
      {
        break;
      }

      v5 += 4;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1BF01FAF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = OUTLINED_FUNCTION_3_14(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * v6);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_16(v7, v16);
  }
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2)
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_1BF17BB6C();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return sub_1BF17941C();
}

unint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return sub_1BEFE81F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1, uint64_t a2)
{

  return sub_1BF17A2AC();
}

uint64_t sub_1BF01FC04(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(*(a2 + 48) + 8 * (v12 | (v11 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    MEMORY[0x1BFB53950](v13);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();

    result = sub_1BF17BB9C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1BFB53950](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF01FD48(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v38 = ~v3;
    v35 = *a1;
    v5 = *(*a1 + 16);
    v37 = a1[1];
    v34 = *a1 + 40;
    do
    {
      memcpy(__dst, (*(v2 + 48) + 72 * v4), 0x48uLL);
      if (*(__dst[0] + 16) == v5)
      {
        v6 = __dst[1];
        if (!v5 || __dst[0] == v35)
        {
LABEL_13:
          v11 = *(v6 + 16);
          if (v11 == *(v37 + 16))
          {
            if (!v11 || v6 == v37)
            {
LABEL_28:
              if (LOBYTE(__dst[2]) == *(a1 + 16))
              {
                v20 = __dst[3] == a1[3] && __dst[4] == a1[4];
                if (v20 || (sub_1BF17B86C() & 1) != 0)
                {
                  v21 = __dst[5];
                  v22 = a1[5];
                  sub_1BF013314(__dst, v39);
                  if (sub_1BF073DD0(v21, v22))
                  {
                    v23 = a1[6];
                    v24 = *(__dst[6] + 16);
                    if (v24 == *(v23 + 16))
                    {
                      if (!v24 || __dst[6] == v23)
                      {
LABEL_54:
                        sub_1BF0187DC(__dst);
                        return v4;
                      }

                      v25 = (__dst[6] + 56);
                      v26 = (v23 + 56);
                      while (1)
                      {
                        v27 = *(v25 - 1);
                        v28 = *v25;
                        v29 = *(v26 - 1);
                        v30 = *v26;
                        v31 = *(v25 - 3) == *(v26 - 3) && *(v25 - 2) == *(v26 - 2);
                        if (!v31 && (sub_1BF17B86C() & 1) == 0)
                        {
                          break;
                        }

                        v32 = v27 == v29 && v28 == v30;
                        if (!v32 && (sub_1BF17B86C() & 1) == 0)
                        {
                          break;
                        }

                        v25 += 4;
                        v26 += 4;
                        if (!--v24)
                        {
                          goto LABEL_54;
                        }
                      }
                    }
                  }

                  sub_1BF0187DC(__dst);
                }
              }
            }

            else
            {
              v12 = (v6 + 56);
              v13 = (v37 + 56);
              while (1)
              {
                v14 = *(v12 - 1);
                v15 = *v12;
                v16 = *(v13 - 1);
                v17 = *v13;
                v18 = *(v12 - 3) == *(v13 - 3) && *(v12 - 2) == *(v13 - 2);
                if (!v18 && (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                v19 = v14 == v16 && v15 == v17;
                if (!v19 && (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                v12 += 4;
                v13 += 4;
                if (!--v11)
                {
                  goto LABEL_28;
                }
              }
            }
          }
        }

        else
        {
          v7 = (__dst[0] + 40);
          v8 = v34;
          v9 = v5;
          while (1)
          {
            v10 = *(v7 - 1) == *(v8 - 1) && *v7 == *v8;
            if (!v10 && (sub_1BF17B86C() & 1) == 0)
            {
              break;
            }

            v7 += 2;
            v8 += 2;
            if (!--v9)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v4 = (v4 + 1) & v38;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1BF02002C(const void *a1)
{
  v2 = v1;
  sub_1BF00DD94();
  sub_1BF01A6B4();
  MEMORY[0x1BFB53950](*(v2 + 16));
  sub_1BF179F3C();
  sub_1BF01FC04(a1, *(v2 + 40));

  sub_1BF01A6B4();
}

uint64_t sub_1BF0200A4(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF02002C(v2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0200E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if ((sub_1BF00E380(*a1, *a2) & 1) == 0 || (sub_1BF074078(v4, v5) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v6 && (sub_1BF17B86C() & 1) == 0 || (sub_1BF073DD0(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);

  return sub_1BF074078(v7, v8);
}

void sub_1BF0201A4()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_15_4();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v10 != v0 || &v13[16 * v2] <= v12)
    {
      memmove(v12, v13, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF02027C()
{
  if (!qword_1ED8EE9D0)
  {
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE9D0);
    }
  }
}

BOOL sub_1BF0202CC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1BF020330(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t))
{
  sub_1BF0115C4(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1BF02061C(a1, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a5(256);

      return sub_1BF02F47C(v12, sub_1BF0115C4);
    }

    else
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v15 = sub_1BF1797FC();
      __swift_project_value_buffer(v15, qword_1ED8F5298);

      sub_1BF014DC0(a3, a4);
      v16 = sub_1BF1797DC();
      v17 = sub_1BF17ACDC();

      sub_1BF014E18(a3, a4);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30[0] = v28;
        *v18 = 136446466;
        v19 = *(v14 + 16);
        v20 = *(v19 + 40);
        v21 = *(v19 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v22 = sub_1BF01A7AC(v20, v21, v30);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v29 = MEMORY[0x1BFB51150](a3, a4);
        v23 = sub_1BF17B6FC();
        v25 = sub_1BF01A7AC(v23, v24, v30);

        *(v18 + 14) = v25;
        _os_log_impl(&dword_1BEFE0000, v16, v17, "HttpConnectionHandler:[%{public}s] send data with size: %{public}s", v18, 0x16u);
        v26 = v28;
        swift_arrayDestroy();
        MEMORY[0x1BFB547B0](v26, -1, -1);
        MEMORY[0x1BFB547B0](v18, -1, -1);
      }

      a5(0);
    }
  }

  return result;
}

uint64_t sub_1BF02061C(uint64_t a1, uint64_t a2)
{
  sub_1BF0115C4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OnlyOnceDeferredPromise.resolve(_:)()
{
  UnfairLock.lock()();
  if (*(v0 + 24))
  {

    sub_1BF014F34();

    OUTLINED_FUNCTION_6_44();
  }

  sub_1BF02075C(v0);
}

Swift::Void __swiftcall OnlyOnceDeferredPromise.cancel()()
{
  UnfairLock.lock()();
  if (*(v0 + 24))
  {

    sub_1BF094280();

    OUTLINED_FUNCTION_6_44();
  }

  sub_1BF02075C(v0);
}

uint64_t SyncObservable.next(value:quiet:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15[-v11];
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v13 = *(v2 + 16);
  v16 = v6;
  v17 = a1;
  sub_1BEFFB4E8(sub_1BF020960, v15, v13, v6, v6);
  if ((a2 & 1) == 0)
  {
    sub_1BF02097C(v12, a1);
  }

  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_1BF0208A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  (*(v7 + 32))(a4, a1);
  return (*(v7 + 16))(a1, a2, a3);
}

uint64_t sub_1BF02097C(uint64_t a1, uint64_t a2)
{
  sub_1BF028388(a2);

  return sub_1BF0285A4(a1, a2);
}

uint64_t SyncObservable.onChange(block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v8 = *(v7 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Observer(0, TupleTypeMetadata2, v10, v11);
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = a1;
  v13[4] = a2;

  v16 = sub_1BEFFB654(v14, sub_1BF0547E0, v13);
  swift_beginAccess();
  sub_1BF17A65C();

  sub_1BF17A5DC();
  result = swift_endAccess();
  a3[3] = v12;
  a3[4] = &off_1F3DBCCA8;
  *a3 = v16;
  return result;
}

uint64_t sub_1BF020B30()
{

  v0 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void *URLHandlerManager.init()()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for AnyURLHandler(v1, v2, v3, v4);
  OUTLINED_FUNCTION_12_1();
  v0[2] = sub_1BF17A56C();
  v5 = OUTLINED_FUNCTION_40();
  type metadata accessor for AnyAsyncURLHandler(v5, v6, v7, v8);
  OUTLINED_FUNCTION_12_1();
  v0[3] = sub_1BF17A56C();
  v9 = OUTLINED_FUNCTION_40();
  type metadata accessor for AnyURLHandlerProcessor(v9, v10, v11, v12);
  OUTLINED_FUNCTION_12_1();
  v0[4] = sub_1BF17A56C();
  return v0;
}

uint64_t sub_1BF020BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF020C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF020C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t URLHandlerManager.add<A>(processor:)()
{
  OUTLINED_FUNCTION_5_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = OUTLINED_FUNCTION_0_49(v4, v18);
  v6(v5);
  v7 = *(v1 + 80);
  v8 = OUTLINED_FUNCTION_4_19();
  v11 = sub_1BF020DA8(v8, v9, v10);
  OUTLINED_FUNCTION_2_29(v11, v12, v13);
  type metadata accessor for AnyURLHandlerProcessor(255, v7, v14, v15);
  OUTLINED_FUNCTION_12_1();
  v16 = sub_1BF17A65C();
  OUTLINED_FUNCTION_7_20(v16);
  return swift_endAccess();
}

uint64_t sub_1BF020DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_65(a1, a2, a3);
  v6(v5);
  v7 = OUTLINED_FUNCTION_2_51();
  sub_1BF020E44(v7, v8, v9, v10);
  OUTLINED_FUNCTION_3_37();
  (*(v11 + 8))(v3, v4);
  return OUTLINED_FUNCTION_5_31();
}

uint64_t URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  return sub_1BF020F74(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  return URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t (*sub_1BF020E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1BF10EC24;
}