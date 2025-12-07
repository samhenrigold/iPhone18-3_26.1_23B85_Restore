uint64_t sub_24328FFA8()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D088);
  __swift_project_value_buffer(v0, qword_27ED6D088);
  return sub_24329C268();
}

uint64_t sub_243290018(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = 2;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0xC000000000000000;
  v4 = -1.0;
  if (a3)
  {
    v5 = result;
    v6 = log2f(result / a2);
    result = v5;
    v4 = v6 + -0.5;
  }

  v7 = roundf(v4);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 32) = -v7;
  result = sub_243290E88(result, v4);
  *(v3 + 24) = result;
  v8 = result + 7;
  if (__OFADD__(result, 7))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    v8 = result + 14;
  }

  v14 = sub_243290F18(v8 >> 3);
  v15 = v9;
  sub_243290B78(&v14, 0);
  v10 = v14;
  v11 = v15;
  swift_beginAccess();
  v12 = *(v3 + 48);
  v13 = *(v3 + 56);
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  sub_243290718(v12, v13);
  return v3;
}

void sub_24329013C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3[4];
  if (v5 < 1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v6 = 1;
  do
  {
    v7 = v3[3];
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_27;
    }

    sub_2432987E4(a2, a3, v7);
    if (v4)
    {
      return;
    }

    v9 = v8 >> 3;
    swift_beginAccess();
    v10 = v3[6];
    v11 = v3[7];
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_35;
      }

      if (v9 < *(v10 + 16))
      {
        goto LABEL_29;
      }

      if (v9 >= *(v10 + 24))
      {
        goto LABEL_31;
      }

      if (!sub_24329C128())
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v9, sub_24329C158()))
      {
        goto LABEL_33;
      }
    }

    else if (v12)
    {
      if (v9 >= v10 >> 32 || v9 < v10)
      {
        goto LABEL_30;
      }

      if (!sub_24329C128())
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v9, sub_24329C158()))
      {
        goto LABEL_32;
      }
    }

    else if (v9 >= BYTE6(v11))
    {
      goto LABEL_28;
    }

    sub_24329C228();
    swift_endAccess();
    if (v5 == v6)
    {
      return;
    }
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
}

BOOL sub_243290390(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v31 = v3[4];
  if (v31 < 1)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_30;
  }

  v5 = v3;
  swift_beginAccess();
  v6 = 1;
  do
  {
    v7 = v5[3];
    if ((v7 & 0x8000000000000000) != 0)
    {
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
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_35;
    }

    sub_2432987E4(a2, a3, v7);
    if (v4)
    {
      return v9;
    }

    v10 = v5[3];
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v11 = v8;
    if (v10 < v8)
    {
      goto LABEL_29;
    }

    v12 = v8 >> 3;
    v14 = v5[6];
    v13 = v5[7];
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v12 < *(v14 + 16))
      {
        goto LABEL_36;
      }

      if (v12 >= *(v14 + 24))
      {
        goto LABEL_39;
      }

      v17 = sub_24329C128();
      if (!v17)
      {
        goto LABEL_46;
      }

      v18 = v17;
      v19 = sub_24329C158();
      v20 = v12 - v19;
      if (__OFSUB__(v12, v19))
      {
        goto LABEL_41;
      }

LABEL_23:
      v16 = *(v18 + v20);
      sub_243290718(v14, v13);
      goto LABEL_24;
    }

    if (v15)
    {
      if (v12 >= v14 >> 32 || v12 < v14)
      {
        goto LABEL_38;
      }

      v21 = sub_24329C128();
      if (!v21)
      {
        goto LABEL_45;
      }

      v18 = v21;
      v22 = sub_24329C158();
      v20 = v12 - v22;
      if (__OFSUB__(v12, v22))
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    if (v12 >= BYTE6(v13))
    {
      goto LABEL_37;
    }

    v34 = v5[6];
    v35 = BYTE2(v14);
    v36 = BYTE3(v14);
    v37 = BYTE4(v14);
    v38 = BYTE5(v14);
    v39 = BYTE6(v14);
    v40 = HIBYTE(v14);
    v41 = v13;
    v42 = BYTE2(v13);
    v43 = BYTE3(v13);
    v44 = BYTE4(v13);
    v45 = BYTE5(v13);
    v16 = *(&v34 + v12);
LABEL_24:
    v23 = (1 << (v11 & 7)) & v16;
    v9 = v23 != 0;
    if (!v23 || v31 == v6)
    {
      return v9;
    }
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
LABEL_29:
  if (qword_27ED6D080 != -1)
  {
    goto LABEL_43;
  }

LABEL_30:
  v25 = sub_24329C278();
  __swift_project_value_buffer(v25, qword_27ED6D088);
  v26 = sub_24329C258();
  v27 = sub_24329C368();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24328F000, v26, v27, "bit index larger than bit size", v28, 2u);
    MEMORY[0x245D2E7E0](v28, -1, -1);
  }

  sub_243290964();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();
  return v9;
}

void sub_243290718(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t BloomFilter.__deallocating_deinit()
{
  sub_243290718(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t BloomFilterError.hashValue.getter()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

uint64_t sub_24329082C()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

uint64_t sub_2432908A0(uint64_t a1)
{
  v2 = *v1;
  sub_24329C438();
  MEMORY[0x245D2E460](v2);
  return sub_24329C458();
}

unint64_t sub_2432908E8()
{
  result = qword_27ED6D0B8;
  if (!qword_27ED6D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D0B8);
  }

  return result;
}

unint64_t sub_243290964()
{
  result = qword_27ED6D0C0;
  if (!qword_27ED6D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D0C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilterError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BloomFilterError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *sub_243290B78(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_243290718(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_24329C870;
      sub_243290718(0, 0xC000000000000000);
      result = sub_243290DE0(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_243290718(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_243290718(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_24329C870;
  sub_243290718(0, 0xC000000000000000);
  sub_24329C1C8();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_24329C128();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_24329C158();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_24329C148();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_243290DE0(int *a1, int a2)
{
  result = sub_24329C1D8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_24329C128();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_24329C158();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_24329C148();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_243290E88(uint64_t result, float a2)
{
  v2 = roundf((result * a2) / -0.69315);
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.2234e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v2 <= 256)
  {
    return 256;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_243290EF8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_243290F18(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_24329C168();
      swift_allocObject();
      sub_24329C138();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24329C1F8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_243290FB8(uint64_t *a1)
{
  v109[5] = *MEMORY[0x277D85DE8];
  v102 = sub_24329C248();
  MEMORY[0x28223BE20]();
  v101 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D84F90];
  v4 = a1[1];
  v5 = v4 >> 62;
  v98 = *a1;
  v97 = v98 >> 32;
  v103 = BYTE6(v4);
  v100 = (v6 + 8);
  v108 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  v105 = v4 >> 62;
  while (1)
  {
    v8 = a1[2];
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v9 = *(v98 + 24);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = v103;
      if (v5)
      {
        v9 = v97;
      }
    }

    v10 = __OFSUB__(v9, v8);
    v11 = v9 - v8;
    if (v10)
    {
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
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v11 < 1)
    {
      return v7;
    }

    type metadata accessor for BloomFilter();
    v12 = swift_allocObject();
    sub_243290018(1, 1, 1);
    v13 = sub_243292204();
    if ((v13 & 0x100) != 0)
    {

      if (qword_27ED6D080 == -1)
      {
LABEL_66:
        v58 = sub_24329C278();
        __swift_project_value_buffer(v58, qword_27ED6D088);
        v59 = sub_24329C258();
        v60 = sub_24329C368();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_24328F000, v59, v60, "unable to parse bloom hash enumeration", v61, 2u);
          MEMORY[0x245D2E7E0](v61, -1, -1);
        }

        v62 = 2;
        goto LABEL_110;
      }

LABEL_122:
      swift_once();
      goto LABEL_66;
    }

    if ((v13 - 1) >= 3u)
    {
      break;
    }

    *(v12 + 16) = v13 - 1;
    v14 = sub_24329207C();
    if ((v14 & 0x100000000) != 0)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v67 = sub_24329C278();
      __swift_project_value_buffer(v67, qword_27ED6D088);
      v68 = sub_24329C258();
      v69 = sub_24329C368();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_24328F000, v68, v69, "unable to parse bloom filter size", v70, 2u);
        MEMORY[0x245D2E7E0](v70, -1, -1);
      }

      v62 = 3;
      goto LABEL_110;
    }

    *(v12 + 24) = v14;
    v15 = sub_24329207C();
    if ((v15 & 0x100000000) != 0)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v71 = sub_24329C278();
      __swift_project_value_buffer(v71, qword_27ED6D088);
      v72 = sub_24329C258();
      v73 = sub_24329C368();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_24328F000, v72, v73, "unable to parse number of hash functions", v74, 2u);
        MEMORY[0x245D2E7E0](v74, -1, -1);
      }

      v62 = 4;
      goto LABEL_110;
    }

    *(v12 + 32) = v15;
    v16 = sub_243292204();
    if ((v16 & 0x100) != 0)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v75 = sub_24329C278();
      __swift_project_value_buffer(v75, qword_27ED6D088);
      v76 = sub_24329C258();
      v77 = sub_24329C368();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_24328F000, v76, v77, "unable to parse layer number", v78, 2u);
        MEMORY[0x245D2E7E0](v78, -1, -1);
      }

      v62 = 5;
      goto LABEL_110;
    }

    *(v12 + 40) = v16;
    v17 = *(v12 + 24);
    v10 = __OFADD__(v17, 7);
    v18 = v17 + 7;
    if (v10)
    {
      goto LABEL_113;
    }

    v19 = a1[2];
    v20 = v19 + v18 / 8;
    if (__OFADD__(v19, v18 / 8))
    {
      goto LABEL_114;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v23 == 2)
      {
        if (*(v21 + 24) < v20)
        {
          goto LABEL_89;
        }
      }

      else if (v20 > 0)
      {
LABEL_89:

        if (qword_27ED6D080 != -1)
        {
          swift_once();
        }

        v79 = sub_24329C278();
        __swift_project_value_buffer(v79, qword_27ED6D088);
        v80 = sub_24329C258();
        v81 = sub_24329C368();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_24328F000, v80, v81, "unable to parse bloom filter bytes", v82, 2u);
          MEMORY[0x245D2E7E0](v82, -1, -1);
        }

        v62 = 6;
        goto LABEL_110;
      }
    }

    else if (v23)
    {
      if (v21 >> 32 < v20)
      {
        goto LABEL_89;
      }
    }

    else if (BYTE6(v22) < v20)
    {
      goto LABEL_89;
    }

    if (v20 < v19)
    {
      goto LABEL_115;
    }

    v24 = sub_24329C218();
    v26 = v24;
    v27 = v25;
    v28 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_39;
      }

      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      v29 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_119;
      }

      if (!v29)
      {
        goto LABEL_39;
      }
    }

    else if (v28)
    {
      v34 = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_118;
      }

      v29 = v34;
      if (!v34)
      {
LABEL_39:
        sub_243290718(v24, v25);
        v32 = v3;
        goto LABEL_43;
      }
    }

    else
    {
      v29 = BYTE6(v25);
      if (!BYTE6(v25))
      {
        goto LABEL_39;
      }
    }

    v104 = v7;
    if (v29 < 1)
    {
      v32 = v3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
      v32 = swift_allocObject();
      v33 = _swift_stdlib_malloc_size(v32);
      v32[2] = v29;
      v32[3] = 2 * v33 - 64;
    }

    v35 = v101;
    v36 = sub_24329C1E8();
    sub_243290718(v26, v27);
    (*v100)(v35, v102);
    v37 = v36 == v29;
    v7 = v104;
    v3 = MEMORY[0x277D84F90];
    if (!v37)
    {
      goto LABEL_117;
    }

LABEL_43:
    a1[2] = v20;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0C8, &qword_24329CA18);
    v109[3] = v38;
    v109[4] = sub_243291F68();
    v109[0] = v32;
    v39 = __swift_project_boxed_opaque_existential_1(v109, v38);
    v40 = *v39;
    v41 = *(*v39 + 16);
    if (v41)
    {
      LODWORD(v5) = v105;
      if (v41 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v107 = v41;
        memcpy(__dst, (v40 + 32), v41);
        v44 = *__dst;
        v45 = v99 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v107 << 16)) << 32);
        v99 = v45;
      }

      else
      {
        sub_24329C168();
        swift_allocObject();
        v42 = sub_24329C118();
        v43 = v42;
        if (v41 >= 0x7FFFFFFF)
        {
          sub_24329C1F8();
          v44 = swift_allocObject();
          *(v44 + 16) = 0;
          *(v44 + 24) = v41;
          v45 = v43 | 0x8000000000000000;
        }

        else
        {
          v44 = v41 << 32;
          v45 = v42 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v44 = 0;
      v45 = 0xC000000000000000;
      LODWORD(v5) = v105;
    }

    __swift_destroy_boxed_opaque_existential_1(v109);
    swift_beginAccess();
    v46 = *(v12 + 48);
    v47 = *(v12 + 56);
    *(v12 + 48) = v44;
    *(v12 + 56) = v45;
    sub_243290718(v46, v47);
    v49 = *(v12 + 48);
    v48 = *(v12 + 56);
    v50 = v48 >> 62;
    if ((v48 >> 62) > 1)
    {
      v51 = 0;
      if (v50 == 2)
      {
        v54 = v49 + 16;
        v53 = *(v49 + 16);
        v52 = *(v54 + 8);
        v10 = __OFSUB__(v52, v53);
        v51 = v52 - v53;
        if (v10)
        {
          goto LABEL_120;
        }
      }
    }

    else if (v50)
    {
      LODWORD(v51) = HIDWORD(v49) - v49;
      if (__OFSUB__(HIDWORD(v49), v49))
      {
        goto LABEL_121;
      }

      v51 = v51;
    }

    else
    {
      v51 = BYTE6(v48);
    }

    v55 = *(v12 + 24);
    v10 = __OFADD__(v55, 7);
    v56 = v55 + 7;
    if (v10)
    {
      goto LABEL_116;
    }

    if (v51 != v56 / 8)
    {

      if (qword_27ED6D080 != -1)
      {
        swift_once();
      }

      v83 = sub_24329C278();
      __swift_project_value_buffer(v83, qword_27ED6D088);

      v84 = sub_24329C258();
      v85 = sub_24329C368();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 134218240;
        v87 = *(v12 + 48);
        v88 = *(v12 + 56);
        v89 = v88 >> 62;
        if ((v88 >> 62) > 1)
        {
          if (v89 == 2)
          {
            v92 = v87 + 16;
            v90 = *(v87 + 16);
            v91 = *(v92 + 8);
            v10 = __OFSUB__(v91, v90);
            v87 = v91 - v90;
            if (v10)
            {
              __break(1u);
              goto LABEL_105;
            }
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {
          if (!v89)
          {
            v87 = BYTE6(v88);
            goto LABEL_108;
          }

LABEL_105:
          v10 = __OFSUB__(HIDWORD(v87), v87);
          LODWORD(v87) = HIDWORD(v87) - v87;
          if (v10)
          {
            __break(1u);
          }

          v87 = v87;
        }

LABEL_108:
        *(v86 + 4) = v87;
        *(v86 + 12) = 2048;
        *(v86 + 14) = *(v12 + 24);
        v93 = v86;

        _os_log_impl(&dword_24328F000, v84, v85, "filter size (%ld) doesn't match encoded filter size (%ld", v93, 0x16u);
        MEMORY[0x245D2E7E0](v93, -1, -1);
      }

      else
      {
      }

      v62 = 1;
      goto LABEL_110;
    }

    MEMORY[0x245D2E330](v57);
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24329C328();
    }

    sub_24329C348();

    v7 = v108;
  }

  if (qword_27ED6D080 != -1)
  {
    swift_once();
  }

  v63 = sub_24329C278();
  __swift_project_value_buffer(v63, qword_27ED6D088);
  v64 = sub_24329C258();
  v65 = sub_24329C368();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_24328F000, v64, v65, "unsupported hash enumeration", v66, 2u);
    MEMORY[0x245D2E7E0](v66, -1, -1);
  }

  v62 = 7;
LABEL_110:
  sub_243290964();
  swift_allocError();
  *v94 = v62;
  swift_willThrow();

  return v7;
}

uint64_t sub_243291B8C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v34 = *MEMORY[0x277D85DE8];
  v32 = MEMORY[0x277CC9318];
  v33 = MEMORY[0x277CC9300];
  v29 = a1;
  v30 = a2;
  v4 = __swift_project_boxed_opaque_existential_1(&v29, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v27, 0, 14);
      sub_243291E48(v3, v2);
      v8 = v27;
      v9 = v27;
      goto LABEL_23;
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_243291E48(v3, v2);
    v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_24329C128();
    if (v3)
    {
      v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = sub_24329C158();
      v5 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v3 += v5;
    }

    v13 = __OFSUB__(v11, v10);
    v14 = v11 - v10;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v27[0] = *v4;
    LOWORD(v27[1]) = v6;
    BYTE2(v27[1]) = BYTE2(v6);
    BYTE3(v27[1]) = BYTE3(v6);
    BYTE4(v27[1]) = BYTE4(v6);
    BYTE5(v27[1]) = BYTE5(v6);
    sub_243291E48(v3, v2);
    v8 = v27;
    v9 = v27 + BYTE6(v6);
    goto LABEL_23;
  }

  v15 = v5;
  v16 = v5 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_30;
  }

  sub_243291E48(v3, v2);
  v3 = sub_24329C128();
  if (v3)
  {
    v17 = sub_24329C158();
    if (!__OFSUB__(v15, v17))
    {
      v3 += v15 - v17;
      goto LABEL_15;
    }

LABEL_31:
    __break(1u);
  }

LABEL_15:
  v18 = sub_24329C148();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v3);
  if (v3)
  {
    v9 = v20;
  }

  else
  {
    v9 = 0;
  }

  v8 = v3;
LABEL_23:
  sub_243296E9C(v8, v9, v28);
  v21 = v28[0];
  v22 = v28[1];
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v23 = 0;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v23 = *(v21 + 16);
    }
  }

  else if (v24)
  {
    v23 = v21;
  }

  v29 = v21;
  v30 = v22;
  v31 = v23;
  v25 = sub_243290FB8(&v29);
  sub_243290718(v29, v30);
  return v25;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243291E48(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_243291F68()
{
  result = qword_27ED6D0D0;
  if (!qword_27ED6D0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6D0C8, &qword_24329CA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D0D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_24329207C()
{
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return v7 << 32;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_243291E48(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D150, &unk_24329CCA0);
  sub_243297E20();
  sub_243297E74(&qword_27ED6D160, &qword_27ED6D150, &unk_24329CCA0, MEMORY[0x277D83D30]);
  sub_24329C108();
  sub_243290718(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return v7 << 32;
}

uint64_t sub_243292204()
{
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 8);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_243291E48(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D150, &unk_24329CCA0);
  sub_243297E20();
  sub_243297E74(&qword_27ED6D160, &qword_27ED6D150, &unk_24329CCA0, MEMORY[0x277D83D30]);
  sub_24329C108();
  sub_243290718(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 8);
}

uint64_t sub_243292384()
{
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    return (v7 << 16);
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_243291E48(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D150, &unk_24329CCA0);
  sub_243297E20();
  sub_243297E74(&qword_27ED6D160, &qword_27ED6D150, &unk_24329CCA0, MEMORY[0x277D83D30]);
  sub_24329C108();
  sub_243290718(v9, v10);
  v7 = 0;
  v0[2] = v2;
  return (v7 << 16);
}

CascadingFilters::HashAlgorithmEnum_optional __swiftcall HashAlgorithmEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_243292528()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D0E0);
  __swift_project_value_buffer(v0, qword_27ED6D0E0);
  return sub_24329C268();
}

uint64_t sub_243292598()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2432925DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24329268C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_2432926E0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_243292794()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    goto LABEL_12;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (v4 >= 1)
    {

      v5 = 0;
      v6 = 0;
      while (1)
      {

        v8 = *(v7 + 24);

        v9 = __OFADD__(v5, v8);
        v5 += v8;
        if (v9)
        {
          break;
        }

        if (v4 == ++v6)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_12:
      result = sub_24329C3E8();
      v4 = result;
      if (!result)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_243292888()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2432928CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24329297C()
{
  v1 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2432929C0(char a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243292A70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_243291E48(v4, v5);
}

void sub_243292AC8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243291E48(v2, v3);
  sub_243290718(v5, v6);
}

uint64_t sub_243292B44()
{
  v1 = v0 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt;
  swift_beginAccess();
  v2 = *v1;
  sub_243291E48(*v1, *(v1 + 8));
  return v2;
}

void sub_243292BA0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_243290718(v6, v7);
}

uint64_t sub_243292C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_243292D10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_243292DC8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v94 = *MEMORY[0x277D85DE8];
  v90[3] = MEMORY[0x277CC9318];
  v90[4] = MEMORY[0x277CC9300];
  v90[0] = a1;
  v90[1] = a2;
  v6 = __swift_project_boxed_opaque_existential_1(v90, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v88, 0, 14);
      sub_243291E48(v5, v4);
      v10 = v88;
      v11 = v88;
      goto LABEL_23;
    }

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
    sub_243291E48(v5, v4);
    v4 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = sub_24329C128();
    if (v5)
    {
      v4 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = sub_24329C158();
      v7 = v12 - v14;
      if (__OFSUB__(v12, v14))
      {
        __break(1u);
        goto LABEL_99;
      }

      v5 += v7;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v88[0] = *v6;
    LOWORD(v88[1]) = v8;
    BYTE2(v88[1]) = BYTE2(v8);
    BYTE3(v88[1]) = BYTE3(v8);
    BYTE4(v88[1]) = BYTE4(v8);
    BYTE5(v88[1]) = BYTE5(v8);
    sub_243291E48(v5, v4);
    v10 = v88;
    v11 = v88 + BYTE6(v8);
    goto LABEL_23;
  }

  v17 = v7;
  v18 = v7 >> 32;
  v16 = v18 - v17;
  if (v18 < v17)
  {
    __break(1u);
    goto LABEL_97;
  }

  sub_243291E48(v5, v4);
  v5 = sub_24329C128();
  if (!v5)
  {
    goto LABEL_15;
  }

  v19 = sub_24329C158();
  if (__OFSUB__(v17, v19))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v5 += v17 - v19;
LABEL_15:
  v20 = sub_24329C148();
  if (v20 >= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  v22 = (v21 + v5);
  if (v5)
  {
    v11 = v22;
  }

  else
  {
    v11 = 0;
  }

  v10 = v5;
LABEL_23:
  sub_243296E9C(v10, v11, v89);
  v23 = v89[0];
  v24 = v89[1];
  __swift_destroy_boxed_opaque_existential_1(v90);
  v25 = 0;
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v25 = *(v23 + 16);
    }
  }

  else if (v26)
  {
    v25 = v23;
  }

  v91 = v23;
  v92 = v24;
  v93 = v25;
  v27 = sub_243292384();
  if ((v27 & 0x10000) != 0)
  {
    if (qword_27ED6D0A0 != -1)
    {
      swift_once();
    }

    v37 = sub_24329C278();
    __swift_project_value_buffer(v37, qword_27ED6D0E0);
    v38 = sub_24329C258();
    v39 = sub_24329C368();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24328F000, v38, v39, "unable to parse filter version", v40, 2u);
      MEMORY[0x245D2E7E0](v40, -1, -1);
    }

    sub_243296594();
    swift_allocError();
    v42 = 2;
    goto LABEL_94;
  }

  if (v27 != 2)
  {
    if (qword_27ED6D0A0 == -1)
    {
LABEL_45:
      v43 = sub_24329C278();
      __swift_project_value_buffer(v43, qword_27ED6D0E0);
      v44 = sub_24329C258();
      v45 = sub_24329C368();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_24328F000, v44, v45, "unsupported filter version", v46, 2u);
        MEMORY[0x245D2E7E0](v46, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v42 = 7;
      goto LABEL_94;
    }

LABEL_97:
    swift_once();
    goto LABEL_45;
  }

  v28 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
  swift_beginAccess();
  *(v3 + v28) = 2;
  v29 = sub_243292204();
  if ((v29 & 0x100) != 0)
  {
    if (qword_27ED6D0A0 == -1)
    {
LABEL_49:
      v47 = sub_24329C278();
      __swift_project_value_buffer(v47, qword_27ED6D0E0);
      v48 = sub_24329C258();
      v49 = sub_24329C368();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_24328F000, v48, v49, "unable to parse filter inverted indicator", v50, 2u);
        MEMORY[0x245D2E7E0](v50, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v42 = 3;
      goto LABEL_94;
    }

LABEL_100:
    swift_once();
    goto LABEL_49;
  }

  if (v29 == 1)
  {
    v30 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
    swift_beginAccess();
    *(v3 + v30) = 1;
  }

  v31 = sub_243292204();
  if ((v31 & 0x100) != 0)
  {
    if (qword_27ED6D0A0 != -1)
    {
      swift_once();
    }

    v51 = sub_24329C278();
    __swift_project_value_buffer(v51, qword_27ED6D0E0);
    v52 = sub_24329C258();
    v53 = sub_24329C368();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_24328F000, v52, v53, "unable to parse salt length", v54, 2u);
      MEMORY[0x245D2E7E0](v54, -1, -1);
    }

    sub_243296594();
    swift_allocError();
    v42 = 4;
    goto LABEL_94;
  }

  if (v31 - 1 >= 0x20)
  {
    if (qword_27ED6D0A0 == -1)
    {
LABEL_58:
      v55 = sub_24329C278();
      __swift_project_value_buffer(v55, qword_27ED6D0E0);
      v56 = sub_24329C258();
      v57 = sub_24329C368();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_24328F000, v56, v57, "invalid salt length", v58, 2u);
        MEMORY[0x245D2E7E0](v58, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v42 = 1;
      goto LABEL_94;
    }

LABEL_102:
    swift_once();
    goto LABEL_58;
  }

  v32 = v93 + v31;
  if (__OFADD__(v93, v31))
  {
    __break(1u);
    goto LABEL_102;
  }

  v33 = v91;
  v34 = v92;
  v35 = v92 >> 62;
  if ((v92 >> 62) <= 1)
  {
    if (v35)
    {
      v36 = v91 >> 32;
    }

    else
    {
      v36 = BYTE6(v92);
    }

LABEL_64:
    if (v36 >= v32)
    {
      goto LABEL_65;
    }

LABEL_70:
    if (qword_27ED6D0A0 != -1)
    {
      swift_once();
    }

    v69 = sub_24329C278();
    __swift_project_value_buffer(v69, qword_27ED6D0E0);
    v70 = sub_24329C258();
    v71 = sub_24329C368();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_24328F000, v70, v71, "unable to parse salt", v72, 2u);
      MEMORY[0x245D2E7E0](v72, -1, -1);
    }

    sub_243296594();
    swift_allocError();
    v42 = 5;
    goto LABEL_94;
  }

  if (v35 == 2)
  {
    v36 = *(v91 + 24);
    goto LABEL_64;
  }

  if (v32 > 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  if (v32 < v93)
  {
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v59 = sub_24329C218();
  v61 = sub_243296418(v59, v60);
  v93 = v32;
  v62 = sub_24329721C(v61);
  v64 = v63;

  v65 = (v3 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  *v65 = v62;
  v65[1] = v64;
  sub_243290718(v66, v67);
  if (v35 > 1)
  {
    v68 = 0;
    if (v35 == 2)
    {
      v68 = *(v33 + 24);
    }
  }

  else if (v35)
  {
    v68 = v33 >> 32;
  }

  else
  {
    v68 = BYTE6(v34);
  }

  v15 = __OFSUB__(v68, v32);
  v73 = v68 - v32;
  if (v15)
  {
    goto LABEL_104;
  }

  v74 = v32 + v73;
  if (__OFADD__(v32, v73))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      if (v74 <= 0)
      {
        goto LABEL_87;
      }

LABEL_90:
      if (qword_27ED6D0A0 == -1)
      {
LABEL_91:
        v84 = sub_24329C278();
        __swift_project_value_buffer(v84, qword_27ED6D0E0);
        v85 = sub_24329C258();
        v86 = sub_24329C368();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_24328F000, v85, v86, "unable to parse filters", v87, 2u);
          MEMORY[0x245D2E7E0](v87, -1, -1);
        }

        sub_243296594();
        swift_allocError();
        v42 = 6;
LABEL_94:
        *v41 = v42;
        swift_willThrow();
        v82 = v91;
        v83 = v92;
        goto LABEL_95;
      }

LABEL_106:
      swift_once();
      goto LABEL_91;
    }

    v75 = *(v33 + 24);
  }

  else if (v35)
  {
    v75 = v33 >> 32;
  }

  else
  {
    v75 = BYTE6(v34);
  }

  if (v75 < v74)
  {
    goto LABEL_90;
  }

LABEL_87:
  if (v74 < v32)
  {
    __break(1u);
  }

  v76 = sub_24329C218();
  v78 = sub_243296418(v76, v77);
  v79 = sub_24329721C(v78);
  v81 = v80;

  sub_243293878(v79, v81);
  sub_243290718(v33, v34);
  v82 = v79;
  v83 = v81;
LABEL_95:
  sub_243290718(v82, v83);
}

uint64_t sub_243293878(uint64_t a1, unint64_t a2)
{
  result = sub_243291B8C(a1, a2);
  if (v3)
  {
    return result;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  *(v2 + v6) = v5;

  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    if (sub_24329C3E8())
    {
      goto LABEL_4;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v8 = *(v2 + v6);
    if (v8 >> 62)
    {
      v9 = sub_24329C3E8();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
    result = swift_beginAccess();
    *(v2 + v10) = v9;
    return result;
  }

  if (qword_27ED6D0A0 != -1)
  {
    swift_once();
  }

  v11 = sub_24329C278();
  __swift_project_value_buffer(v11, qword_27ED6D0E0);
  v12 = sub_24329C258();
  v13 = sub_24329C368();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24328F000, v12, v13, "no filters found", v14, 2u);
    MEMORY[0x245D2E7E0](v14, -1, -1);
  }

  sub_243296594();
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

uint64_t sub_243293A40(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  type metadata accessor for IndexGenerator();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  sub_243291E48(a1, a2);
  v9 = sub_24329C338();
  *(v9 + 16) = 32;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(inited + 40) = v9;
  v25 = inited;
  *(inited + 48) = 0;
  v10 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11 >> 62)
  {
LABEL_21:
    v12 = sub_24329C3E8();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);

  swift_beginAccess();
  if (v12)
  {
    v14 = 0;
    v24 = v11 & 0xC000000000000001;
    v22 = v2;
    v23 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v24)
      {
        v2 = MEMORY[0x245D2E3A0](v14, v11);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          sub_243290718(v4, v11);

          swift_setDeallocating();
          sub_243290718(*(v25 + 16), *(v25 + 24));

          return v19 & 1;
        }
      }

      else
      {
        if (v14 >= *(v23 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v2 = *(v11 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_14;
        }
      }

      v16 = v11;
      v4 = *v13;
      v11 = v13[1];
      sub_243291E48(*v13, v11);
      v17 = sub_243290390(v25, v4, v11);
      if (v5)
      {
        goto LABEL_15;
      }

      v18 = v17;

      sub_243290718(v4, v11);
      if (!v18)
      {

        LOBYTE(v12) = v14;
        v2 = v22;
        goto LABEL_18;
      }

      ++v14;
      v11 = v16;
      if (v15 == v12)
      {
        v2 = v22;
        break;
      }
    }
  }

LABEL_18:
  swift_setDeallocating();
  sub_243290718(*(v25 + 16), *(v25 + 24));

  v20 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  v19 = v12 ^ *(v2 + v20);
  return v19 & 1;
}

uint64_t sub_243293CC8(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  type metadata accessor for IndexGenerator();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  sub_243291E48(a1, a2);
  v8 = sub_24329C338();
  *(v8 + 16) = 32;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(inited + 40) = v8;
  v26 = inited;
  *(inited + 48) = 0;
  v9 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (v10 >> 62)
  {
LABEL_22:
    v11 = sub_24329C3E8();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v2;
  v12 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);

  swift_beginAccess();
  if (v11)
  {
    v13 = 0;
    v24 = v10 & 0xFFFFFFFFFFFFFF8;
    v25 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v25)
      {
        v2 = MEMORY[0x245D2E3A0](v13, v10);
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v2 = *(v10 + 8 * v13 + 32);

        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      v15 = v10;
      v17 = *v12;
      v16 = v12[1];
      sub_243291E48(*v12, v16);
      v18 = sub_243290390(v26, v17, v16);
      if (v4)
      {

        sub_243290718(v17, v16);
        swift_setDeallocating();
        sub_243290718(*(v26 + 16), *(v26 + 24));

        return v20 & 1;
      }

      v19 = v18;
      sub_243290718(v17, v16);
      if (!v19)
      {

        goto LABEL_19;
      }

      ++v13;
      v10 = v15;
      if (v14 == v11)
      {
        LOBYTE(v13) = v11;
        goto LABEL_18;
      }
    }
  }

  LOBYTE(v13) = 0;
LABEL_18:

LABEL_19:
  v21 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  swift_beginAccess();
  v20 = v13 ^ *(v23 + v21);
  return v20 & 1;
}

void sub_243293F58(uint64_t a1, uint64_t a2)
{
  v151 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_49:
    v40 = *(a2 + 16);
    if (!v40)
    {
      return;
    }

    v41 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
    v119 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
    v42 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
    v43 = a2 + 32;
    swift_beginAccess();
    v109 = v42;
    swift_beginAccess();
    v44 = 0;
    v107 = a2 + 32;
    type metadata accessor for IndexGenerator();
    v97 = v41;
    v113 = v2;
    v98 = v40;
    while (1)
    {
      v117 = v44;
      v45 = (v43 + 16 * v44);
      v11 = *v45;
      v10 = v45[1];
      inited = swift_initStackObject();
      *(inited + 16) = v11;
      *(inited + 24) = v10;
      *(inited + 32) = 0;
      sub_243291E48(v11, v10);
      sub_243291E48(v11, v10);
      v47 = sub_24329C338();
      *(v47 + 16) = 32;
      *(v47 + 32) = 0u;
      *(v47 + 48) = 0u;
      *(inited + 40) = v47;
      *(inited + 48) = 0;
      v48 = *(v2 + v41);
      if (v48 >> 62)
      {
        v49 = sub_24329C3E8();
        if (v49)
        {
LABEL_53:
          v110 = v10;
          v95 = v49;
          v50 = v48 & 0xC000000000000001;

          swift_beginAccess();
          v51 = 0;
          v100 = v48 + 32;
          v102 = v48 & 0xFFFFFFFFFFFFFF8;
          v121 = inited;
          v115 = v11;
          v111 = v48;
          v93 = v48 & 0xC000000000000001;
          while (2)
          {
            if (v50)
            {
              v12 = MEMORY[0x245D2E3A0](v51, v48);
              v52 = v51 + 1;
              if (!__OFADD__(v51, 1))
              {
LABEL_60:
                v123 = v12[4];
                if (v123 < 1)
                {
                  goto LABEL_143;
                }

                v103 = v52;
                v105 = v51;
                v124 = *v119;
                v125 = v119[1];
                sub_243291E48(*v119, v125);
                swift_beginAccess();
                v53 = 1;
                v54 = v126;
LABEL_62:
                v55 = v12[3];
                if ((v55 & 0x8000000000000000) != 0)
                {
                  goto LABEL_125;
                }

                if (HIDWORD(v55))
                {
                  goto LABEL_126;
                }

                sub_2432987E4(v124, v125, v55);
                if (v54)
                {
                  sub_243290718(v115, v110);

                  goto LABEL_108;
                }

                v57 = v12[3];
                if ((v57 & 0x8000000000000000) != 0 || (v58 = v56, v57 < v56))
                {

                  if (qword_27ED6D080 == -1)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_147;
                }

                v59 = v56 >> 3;
                v61 = v12[6];
                v60 = v12[7];
                v62 = v60 >> 62;
                if ((v60 >> 62) > 1)
                {
                  if (v62 != 2)
                  {
                    goto LABEL_151;
                  }

                  if (v59 < *(v61 + 16))
                  {
                    goto LABEL_134;
                  }

                  if (v59 >= *(v61 + 24))
                  {
                    goto LABEL_137;
                  }

                  v64 = sub_24329C128();
                  if (!v64)
                  {
                    goto LABEL_153;
                  }

                  v65 = v64;
                  v66 = sub_24329C158();
                  v67 = v59 - v66;
                  if (__OFSUB__(v59, v66))
                  {
                    goto LABEL_139;
                  }
                }

                else
                {
                  if (!v62)
                  {
                    if (v59 >= BYTE6(v60))
                    {
                      goto LABEL_135;
                    }

                    v127 = v12[6];
                    v128 = BYTE2(v61);
                    v129 = BYTE3(v61);
                    v130 = BYTE4(v61);
                    v131 = BYTE5(v61);
                    v132 = BYTE6(v61);
                    v133 = HIBYTE(v61);
                    v134 = v60;
                    v135 = BYTE2(v60);
                    v136 = BYTE3(v60);
                    v137 = BYTE4(v60);
                    v138 = BYTE5(v60);
                    v63 = *(&v127 + v59);
                    goto LABEL_83;
                  }

                  if (v59 >= v61 >> 32 || v59 < v61)
                  {
                    goto LABEL_136;
                  }

                  v68 = sub_24329C128();
                  if (!v68)
                  {
                    goto LABEL_152;
                  }

                  v65 = v68;
                  v69 = sub_24329C158();
                  v67 = v59 - v69;
                  if (__OFSUB__(v59, v69))
                  {
                    goto LABEL_138;
                  }
                }

                v63 = *(v65 + v67);
                sub_243290718(v61, v60);
                inited = v121;
                v54 = 0;
LABEL_83:
                if (((1 << (v58 & 7)) & v63) == 0)
                {
                  v126 = v54;

                  sub_243290718(v124, v125);
                  v10 = v110;
                  v11 = v115;
                  v41 = v97;
                  v40 = v98;
                  v70 = v105;
LABEL_91:

                  goto LABEL_94;
                }

                if (v123 == v53)
                {
                  v126 = v54;

                  sub_243290718(v124, v125);
                  v51 = v103;
                  v11 = v115;
                  v48 = v111;
                  v50 = v93;
                  if (v103 != v95)
                  {
                    continue;
                  }

                  v70 = v95;
                  v40 = v98;
                  v41 = v97;
                  v10 = v110;
                  goto LABEL_91;
                }

                v39 = __OFADD__(v53++, 1);
                if (v39)
                {
                  goto LABEL_127;
                }

                goto LABEL_62;
              }
            }

            else
            {
              if (v51 >= *(v102 + 16))
              {
                __break(1u);
LABEL_147:
                swift_once();
LABEL_105:
                v76 = sub_24329C278();
                __swift_project_value_buffer(v76, qword_27ED6D088);
                v77 = sub_24329C258();
                v78 = sub_24329C368();
                if (os_log_type_enabled(v77, v78))
                {
                  v79 = swift_slowAlloc();
                  *v79 = 0;
                  _os_log_impl(&dword_24328F000, v77, v78, "bit index larger than bit size", v79, 2u);
                  MEMORY[0x245D2E7E0](v79, -1, -1);
                }

                sub_243290964();
                swift_allocError();
                *v80 = 0;
                swift_willThrow();
                sub_243290718(v115, v110);

LABEL_108:
                sub_243290718(v124, v125);
                swift_setDeallocating();
                sub_243290718(*(inited + 16), *(inited + 24));
                goto LABEL_109;
              }

              v12 = *(v100 + 8 * v51);

              v52 = v51 + 1;
              if (!__OFADD__(v51, 1))
              {
                goto LABEL_60;
              }
            }

            break;
          }

LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          swift_once();
          goto LABEL_99;
        }
      }

      else
      {
        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v49)
        {
          goto LABEL_53;
        }
      }

      v70 = 0;
LABEL_94:
      swift_setDeallocating();
      sub_243290718(*(inited + 16), *(inited + 24));

      if ((v70 & 1) != *(v113 + v109))
      {
        if (qword_27ED6D0A0 != -1)
        {
          swift_once();
        }

        v87 = sub_24329C278();
        __swift_project_value_buffer(v87, qword_27ED6D0E0);
        v88 = sub_24329C258();
        v89 = sub_24329C368();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_24328F000, v88, v89, "verify failed: false positive", v90, 2u);
          MEMORY[0x245D2E7E0](v90, -1, -1);
        }

        sub_243296594();
        swift_allocError();
        v86 = 10;
        goto LABEL_121;
      }

      v44 = v117 + 1;
      sub_243290718(v11, v10);
      v2 = v113;
      v43 = v107;
      if (v117 + 1 == v40)
      {
        return;
      }
    }
  }

  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  v116 = (v2 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
  v5 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  v6 = a1 + 32;
  swift_beginAccess();
  v108 = v5;
  swift_beginAccess();
  type metadata accessor for IndexGenerator();
  v7 = 0;
  v8 = MEMORY[0x277D84B78];
  v112 = v2;
  v94 = v4;
  v96 = v3;
  v104 = v6;
  while (1)
  {
    v114 = v7;
    v9 = (v6 + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
    v12 = swift_initStackObject();
    v12[2] = v11;
    v12[3] = v10;
    *(v12 + 8) = 0;
    sub_243291E48(v11, v10);
    sub_243291E48(v11, v10);
    v13 = sub_24329C338();
    *(v13 + 16) = 32;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    v12[5] = v13;
    *(v12 + 48) = 0;
    v14 = *(v2 + v4);
    v15 = v8;
    v118 = v14;
    if (v14 >> 62)
    {
      break;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_44:
    swift_setDeallocating();
    sub_243290718(v12[2], v12[3]);

    if ((v16 & 1) == *(v2 + v108))
    {
      if (qword_27ED6D0A0 != -1)
      {
        swift_once();
      }

      v81 = sub_24329C278();
      __swift_project_value_buffer(v81, qword_27ED6D0E0);
      v82 = sub_24329C258();
      v83 = sub_24329C368();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_24328F000, v82, v83, "verify failed: false negative", v84, 2u);
        MEMORY[0x245D2E7E0](v84, -1, -1);
      }

      sub_243296594();
      swift_allocError();
      v86 = 9;
LABEL_121:
      *v85 = v86;
      swift_willThrow();
      sub_243290718(v11, v10);
      return;
    }

    v8 = v15;
    v7 = v114 + 1;
    sub_243290718(v11, v10);
    v6 = v104;
    if (v114 + 1 == v3)
    {
      goto LABEL_49;
    }
  }

  v16 = sub_24329C3E8();
  v14 = v118;
  if (!v16)
  {
    goto LABEL_44;
  }

LABEL_5:
  v110 = v10;
  v17 = v14 & 0xC000000000000001;

  swift_beginAccess();
  v18 = v118;
  v19 = 0;
  v120 = v12;
  v111 = v11;
  v91 = v17;
  v92 = v16;
LABEL_6:
  if (v17)
  {
    v20 = MEMORY[0x245D2E3A0](v19, v18);
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_140;
    }
  }

  else
  {
    if (v19 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_144;
    }

    v20 = *(v118 + 32 + 8 * v19);

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_140;
    }
  }

  v122 = v20[4];
  if (v122 < 1)
  {
    goto LABEL_141;
  }

  v99 = v21;
  v101 = v19;
  v124 = *v116;
  v125 = v116[1];
  sub_243291E48(*v116, v125);
  swift_beginAccess();
  v22 = 1;
  v23 = v126;
  while (1)
  {
    v24 = v20[3];
    if ((v24 & 0x8000000000000000) != 0)
    {
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
      goto LABEL_142;
    }

    if (HIDWORD(v24))
    {
      goto LABEL_123;
    }

    sub_2432987E4(v124, v125, v24);
    v126 = v23;
    if (v23)
    {
      sub_243290718(v111, v110);

      goto LABEL_102;
    }

    v26 = v20[3];
    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    v27 = v25;
    if (v26 < v25)
    {
      break;
    }

    v28 = v15;
    v29 = v25 >> 3;
    v31 = v20[6];
    v30 = v20[7];
    v32 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v32 != 2)
      {
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
      }

      if (v29 < *(v31 + 16))
      {
        goto LABEL_128;
      }

      if (v29 >= *(v31 + 24))
      {
        goto LABEL_131;
      }

      v34 = sub_24329C128();
      if (!v34)
      {
        goto LABEL_150;
      }

      v12 = v34;
      v35 = sub_24329C158();
      v36 = v29 - v35;
      if (__OFSUB__(v29, v35))
      {
        goto LABEL_133;
      }

LABEL_34:
      v33 = *(v12 + v36);
      sub_243290718(v31, v30);
      v12 = v120;
      goto LABEL_35;
    }

    if (v32)
    {
      if (v29 >= v31 >> 32 || v29 < v31)
      {
        goto LABEL_130;
      }

      v37 = sub_24329C128();
      if (!v37)
      {
        goto LABEL_149;
      }

      v12 = v37;
      v38 = sub_24329C158();
      v36 = v29 - v38;
      if (__OFSUB__(v29, v38))
      {
        goto LABEL_132;
      }

      goto LABEL_34;
    }

    if (v29 >= BYTE6(v30))
    {
      goto LABEL_129;
    }

    v139 = v20[6];
    v140 = BYTE2(v31);
    v141 = BYTE3(v31);
    v142 = BYTE4(v31);
    v143 = BYTE5(v31);
    v144 = BYTE6(v31);
    v145 = HIBYTE(v31);
    v146 = v30;
    v147 = BYTE2(v30);
    v148 = BYTE3(v30);
    v149 = BYTE4(v30);
    v150 = BYTE5(v30);
    v33 = *(&v139 + v29);
LABEL_35:
    v15 = v28;
    if (((1 << (v27 & 7)) & v33) == 0)
    {

      sub_243290718(v124, v125);
      v11 = v111;
      v2 = v112;
      v10 = v110;
      v4 = v94;
      v3 = v96;
      LOBYTE(v16) = v101;
      goto LABEL_43;
    }

    v23 = 0;
    if (v122 == v22)
    {

      sub_243290718(v124, v125);
      v19 = v99;
      LOBYTE(v16) = v92;
      v11 = v111;
      v2 = v112;
      v18 = v118;
      v17 = v91;
      if (v99 == v92)
      {
        v4 = v94;
        v3 = v96;
        v10 = v110;
LABEL_43:

        goto LABEL_44;
      }

      goto LABEL_6;
    }

    v39 = __OFADD__(v22++, 1);
    if (v39)
    {
      goto LABEL_124;
    }
  }

  if (qword_27ED6D080 != -1)
  {
    goto LABEL_145;
  }

LABEL_99:
  v71 = sub_24329C278();
  __swift_project_value_buffer(v71, qword_27ED6D088);
  v72 = sub_24329C258();
  v73 = sub_24329C368();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_24328F000, v72, v73, "bit index larger than bit size", v74, 2u);
    MEMORY[0x245D2E7E0](v74, -1, -1);
  }

  sub_243290964();
  swift_allocError();
  *v75 = 0;
  swift_willThrow();
  sub_243290718(v111, v110);

LABEL_102:
  sub_243290718(v124, v125);
  swift_setDeallocating();
  sub_243290718(v12[2], v12[3]);
LABEL_109:
}

void sub_243294D68()
{
  v2 = v0;
  if (qword_27ED6D0A0 == -1)
  {
    goto LABEL_2;
  }

LABEL_67:
  swift_once();
LABEL_2:
  v3 = sub_24329C278();
  v4 = __swift_project_value_buffer(v3, qword_27ED6D0E0);
  v5 = sub_24329C258();
  v6 = sub_24329C358();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24328F000, v5, v6, "Cascading bloom filter details:", v7, 2u);
    MEMORY[0x245D2E7E0](v7, -1, -1);
  }

  v2 = v2;
  v8 = sub_24329C258();
  v9 = sub_24329C358();

  v10 = &loc_24329C000;
  v11 = 0x27ED6D000uLL;
  v99 = v4;
  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_18;
  }

  v12 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v102[0] = v100;
  *v12 = 136315138;
  v13 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  v1 = *(v2 + v13);
  if (v1 >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    while (1)
    {
      v20 = 7;
LABEL_15:
      v21 = v20 / 8;
      v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v1 setNumberStyle_];
      v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v23 = [v1 stringFromNumber_];

      if (!v23)
      {
        goto LABEL_79;
      }

      v24 = sub_24329C2E8();
      v26 = v25;

      v27 = sub_243296944(v24, v26, v102);

      *(v12 + 4) = v27;
      _os_log_impl(&dword_24328F000, v8, v9, "Size: %s bytes", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x245D2E7E0](v100, -1, -1);
      MEMORY[0x245D2E7E0](v12, -1, -1);

      v4 = v99;
      v10 = &loc_24329C000;
LABEL_18:
      v28 = v2;
      v29 = sub_24329C258();
      v30 = sub_24329C358();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        v32 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version;
        swift_beginAccess();
        *(v31 + 4) = *(v28 + v32);

        _os_log_impl(&dword_24328F000, v29, v30, "Version: %ld", v31, 0xCu);
        MEMORY[0x245D2E7E0](v31, -1, -1);
      }

      else
      {

        v29 = v28;
      }

      v33 = v28;
      v34 = sub_24329C258();
      v35 = sub_24329C358();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        v37 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
        swift_beginAccess();
        *(v36 + 4) = *(&v33->isa + v37);

        _os_log_impl(&dword_24328F000, v34, v35, "Inverted: %{BOOL}d", v36, 8u);
        MEMORY[0x245D2E7E0](v36, -1, -1);
      }

      else
      {

        v34 = v33;
      }

      v38 = v33;
      v39 = sub_24329C258();
      v40 = sub_24329C358();
      if (os_log_type_enabled(v39, v40))
      {
        break;
      }

      v39 = v38;
LABEL_37:

      v49 = v38;
      v12 = sub_24329C258();
      v50 = sub_24329C358();

      if (os_log_type_enabled(v12, v50))
      {
        v1 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v102[0] = v100;
        *v1 = v10[325];
        v51 = (v49 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
        swift_beginAccess();
        v53 = *v51;
        v52 = v51[1];
        sub_243291E48(v53, v52);
        sub_2432965E8(v53, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D130, &qword_24329CA60);
        sub_243297E74(&qword_27ED6D138, &qword_27ED6D130, &qword_24329CA60, MEMORY[0x277D83958]);
        v54 = sub_24329C2D8();
        v56 = v55;
        v57 = v53;
        v4 = v99;
        sub_243290718(v57, v52);

        v58 = v54;
        v11 = 0x27ED6D000uLL;
        v59 = sub_243296944(v58, v56, v102);

        *(v1 + 4) = v59;
        _os_log_impl(&dword_24328F000, v12, v50, "Salt (hex): %s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        MEMORY[0x245D2E7E0](v100, -1, -1);
        MEMORY[0x245D2E7E0](v1, -1, -1);
      }

      v60 = v49;
      v61 = sub_24329C258();
      v62 = sub_24329C358();

      if (os_log_type_enabled(v61, v62))
      {
        v12 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v102[0] = v63;
        *v12 = 136315138;
        v64 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
        swift_beginAccess();
        if (v60[v64])
        {
          if (v60[v64] == 1)
          {
            v1 = 0xE900000000000032;
            v65 = 0x336C363532616853;
          }

          else
          {
            v1 = 0xE600000000000000;
            v65 = 0x363532616853;
          }
        }

        else
        {
          v1 = 0xEB00000000336873;
          v65 = 0x614872756D72754DLL;
        }

        v66 = sub_243296944(v65, v1, v102);

        *(v12 + 4) = v66;
        _os_log_impl(&dword_24328F000, v61, v62, "Hash Algorithm: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x245D2E7E0](v63, -1, -1);
        MEMORY[0x245D2E7E0](v12, -1, -1);
      }

      v67 = v60;
      v9 = v4;
      v68 = sub_24329C258();
      v8 = sub_24329C358();
      if (os_log_type_enabled(v68, v8))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        v12 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
        swift_beginAccess();
        *(v69 + 4) = *(v67 + v12);

        _os_log_impl(&dword_24328F000, v68, v8, "Number of bloom filters: %ld", v69, 0xCu);
        MEMORY[0x245D2E7E0](v69, -1, -1);
      }

      else
      {

        v68 = v67;
      }

      v70 = *(v11 + 264);
      swift_beginAccess();
      v71 = *(&v67->isa + v70);
      if (v71 >> 62)
      {
        v2 = sub_24329C3E8();
        if (!v2)
        {
          return;
        }
      }

      else
      {
        v2 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          return;
        }
      }

      if (v2 >= 1)
      {
        v72 = v71 & 0xC000000000000001;

        v73 = 0;
        v97 = v71 & 0xC000000000000001;
        v98 = v2;
        v96 = v71;
        while (1)
        {
          if (v72)
          {
            v74 = MEMORY[0x245D2E3A0](v73, v71);
          }

          else
          {
            v74 = *(v71 + 8 * v73 + 32);
          }

          swift_retain_n();
          v75 = sub_24329C258();
          v76 = sub_24329C358();
          if (os_log_type_enabled(v75, v76))
          {
            LODWORD(v100) = v76;
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v101 = v78;
            *v77 = 134218754;
            *(v77 + 4) = v74[5];

            *(v77 + 12) = 2080;
            v79 = v74[3];
            v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
            [v1 setNumberStyle_];
            v80 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v81 = [v1 stringFromNumber_];

            if (!v81)
            {
              goto LABEL_77;
            }

            v82 = sub_24329C2E8();
            v2 = v83;

            v84 = sub_243296944(v82, v2, &v101);

            *(v77 + 14) = v84;
            *(v77 + 22) = 2080;
            v85 = v74[3];
            v19 = __OFADD__(v85, 7);
            v86 = v85 + 7;
            if (v19)
            {
              __break(1u);
              goto LABEL_66;
            }

            v87 = v86 / 8;
            v88 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
            [v88 setNumberStyle_];
            v89 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v90 = [v88 stringFromNumber_];

            if (!v90)
            {
              goto LABEL_78;
            }

            v91 = sub_24329C2E8();
            v93 = v92;

            v94 = sub_243296944(v91, v93, &v101);

            *(v77 + 24) = v94;
            *(v77 + 32) = 2048;
            v95 = v74[4];

            *(v77 + 34) = v95;

            _os_log_impl(&dword_24328F000, v75, v76, "filter %ld bit size: %s, size: %s bytes, number of hash functions: %ld", v77, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x245D2E7E0](v78, -1, -1);
            MEMORY[0x245D2E7E0](v77, -1, -1);

            v71 = v96;
            v72 = v97;
            v2 = v98;
          }

          else
          {
          }

          if (v2 == ++v73)
          {

            return;
          }
        }
      }

      __break(1u);
LABEL_71:
      v14 = sub_24329C3E8();
      if (v14)
      {
        goto LABEL_7;
      }
    }

    v41 = swift_slowAlloc();
    *v41 = 134217984;
    v42 = (v38 + OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt);
    swift_beginAccess();
    v44 = *v42;
    v43 = v42[1];
    v45 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      v46 = 0;
      if (v45 != 2)
      {
LABEL_36:
        *(v41 + 4) = 8 * v46;

        _os_log_impl(&dword_24328F000, v39, v40, "Salt length: %ld bits", v41, 0xCu);
        MEMORY[0x245D2E7E0](v41, -1, -1);
        goto LABEL_37;
      }

      v48 = v44 + 16;
      v44 = *(v44 + 16);
      v47 = *(v48 + 8);
      v19 = __OFSUB__(v47, v44);
      v46 = v47 - v44;
      if (!v19)
      {
LABEL_35:
        if ((v46 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_74;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v45)
    {
      v46 = BYTE6(v43);
      goto LABEL_35;
    }

    LODWORD(v46) = HIDWORD(v44) - v44;
    if (__OFSUB__(HIDWORD(v44), v44))
    {
      goto LABEL_76;
    }

    v46 = v46;
    goto LABEL_35;
  }

LABEL_7:
  if (v14 >= 1)
  {

    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x245D2E3A0](i, v1);
      }

      else
      {
      }

      v18 = *(v17 + 24);

      v19 = __OFADD__(v15, v18);
      v15 += v18;
      if (v19)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v11 = 0x27ED6D000;
    v20 = v15 + 7;
    if (!__OFADD__(v15, 7))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:

  __break(1u);
LABEL_78:

  __break(1u);
LABEL_79:
  __break(1u);
}

id static CascadingBloomFilters.fromBytes(_:)(uint64_t a1, unint64_t a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for CascadingBloomFilters()) init];
  sub_243292DC8(a1, a2);
  if (v2)
  {
  }

  return v5;
}

id CascadingBloomFilters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static CascadingBloomFilters.getBloomFiltersBytes(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v51[3] = MEMORY[0x277CC9318];
  v51[4] = MEMORY[0x277CC9300];
  v51[0] = a1;
  v51[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v51, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v49, 0, 14);
      sub_243291E48(v3, v2);
      v8 = v49;
      v9 = v49;
      goto LABEL_23;
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    sub_243291E48(v3, v2);
    v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_24329C128();
    if (v3)
    {
      v2 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = sub_24329C158();
      v5 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
        goto LABEL_91;
      }

      v3 += v5;
    }

    v13 = __OFSUB__(v11, v10);
    v14 = v11 - v10;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v49[0] = *v4;
    LOWORD(v49[1]) = v6;
    BYTE2(v49[1]) = BYTE2(v6);
    BYTE3(v49[1]) = BYTE3(v6);
    BYTE4(v49[1]) = BYTE4(v6);
    BYTE5(v49[1]) = BYTE5(v6);
    v6 = v49 + BYTE6(v6);
    sub_243291E48(v3, v2);
    v8 = v49;
    v9 = v6;
    goto LABEL_23;
  }

  v15 = v5;
  v16 = v5 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_89;
  }

  sub_243291E48(v3, v2);
  v3 = sub_24329C128();
  if (!v3)
  {
    goto LABEL_15;
  }

  v17 = sub_24329C158();
  if (__OFSUB__(v15, v17))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v3 += v15 - v17;
LABEL_15:
  v18 = sub_24329C148();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v3);
  if (v3)
  {
    v9 = v20;
  }

  else
  {
    v9 = 0;
  }

  v8 = v3;
LABEL_23:
  sub_243296E9C(v8, v9, v50);
  v21 = v50[0];
  v22 = v50[1];
  result = __swift_destroy_boxed_opaque_existential_1(v51);
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v26 = *(v21 + 16);
      v52 = v21;
      v53 = v22;
      v54 = v26;
      v25 = *(v21 + 16);
      goto LABEL_32;
    }
  }

  else if (v24)
  {
    v25 = v21;
    v52 = v21;
    v53 = v22;
    v54 = v21;
    goto LABEL_32;
  }

  v52 = v21;
  v53 = v22;
  v54 = 0;
  if (v24 > 1 || !v24)
  {
    goto LABEL_34;
  }

  v25 = v21;
LABEL_32:
  if (v25 > 3)
  {
    __break(1u);
  }

LABEL_34:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_99;
    }

    v27 = *(v21 + 24);
  }

  else if (v24)
  {
    v27 = v21 >> 32;
  }

  else
  {
    v27 = BYTE6(v22);
  }

  if (v27 >= 3)
  {
    v54 = 3;
    v28 = sub_243292204();
    if ((v28 & 0x100) != 0)
    {
      goto LABEL_81;
    }

    v6 = v28;
    if (v28 - 1 >= 0x20)
    {
      if (qword_27ED6D0A0 == -1)
      {
LABEL_48:
        v34 = sub_24329C278();
        __swift_project_value_buffer(v34, qword_27ED6D0E0);
        v35 = sub_24329C258();
        v36 = sub_24329C368();
        if (!os_log_type_enabled(v35, v36))
        {
          v38 = 1;
LABEL_86:

          sub_243296594();
          swift_allocError();
          *v48 = v38;
          swift_willThrow();
          sub_243290718(v52, v53);
          return v6;
        }

        v6 *= 8;
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v6;
        _os_log_impl(&dword_24328F000, v35, v36, "invalid salt length (%ld)", v37, 0xCu);
        v38 = 1;
LABEL_84:
        MEMORY[0x245D2E7E0](v37, -1, -1);
        goto LABEL_86;
      }

LABEL_93:
      swift_once();
      goto LABEL_48;
    }

    v29 = v54 + v28;
    if (!__OFADD__(v54, v6))
    {
      v30 = 0;
      v31 = v52;
      v32 = v53;
      v33 = v53 >> 62;
      if ((v53 >> 62) > 1)
      {
        if (v33 == 2)
        {
          v30 = *(v52 + 16);
        }
      }

      else if (v33)
      {
        v30 = v52;
      }

      if (v29 < v30)
      {
        __break(1u);
      }

      else
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v39 = *(v52 + 24);
          }

          else
          {
            v39 = 0;
          }
        }

        else if (v33)
        {
          v39 = v52 >> 32;
        }

        else
        {
          v39 = BYTE6(v53);
        }

        if (v39 >= v29)
        {
          v54 += v6;
          if (v33 > 1)
          {
            if (v33 == 2)
            {
              v40 = *(v52 + 24);
            }

            else
            {
              v40 = 0;
            }
          }

          else if (v33)
          {
            v40 = v52 >> 32;
          }

          else
          {
            v40 = BYTE6(v53);
          }

          v13 = __OFSUB__(v40, v29);
          v41 = v40 - v29;
          if (!v13)
          {
            v6 = v29 + v41;
            if (!__OFADD__(v29, v41))
            {
              if (v33 > 1)
              {
                if (v33 != 2)
                {
                  if (v6 <= 0)
                  {
LABEL_78:
                    if (v6 >= v29)
                    {
                      v43 = sub_24329C218();
                      v45 = sub_243296418(v43, v44);
                      v54 = v6;
                      v6 = sub_24329721C(v45);

                      sub_243290718(v31, v32);
                      return v6;
                    }

LABEL_98:
                    __break(1u);
                  }

LABEL_81:
                  if (qword_27ED6D0A0 == -1)
                  {
LABEL_82:
                    v46 = sub_24329C278();
                    __swift_project_value_buffer(v46, qword_27ED6D0E0);
                    v35 = sub_24329C258();
                    v47 = sub_24329C368();
                    if (!os_log_type_enabled(v35, v47))
                    {
                      v38 = 6;
                      goto LABEL_86;
                    }

                    v37 = swift_slowAlloc();
                    *v37 = 0;
                    _os_log_impl(&dword_24328F000, v35, v47, "unable to parse filters", v37, 2u);
                    v38 = 6;
                    goto LABEL_84;
                  }

LABEL_89:
                  swift_once();
                  goto LABEL_82;
                }

                v42 = *(v52 + 24);
              }

              else if (v33)
              {
                v42 = v52 >> 32;
              }

              else
              {
                v42 = BYTE6(v53);
              }

              if (v42 >= v6)
              {
                goto LABEL_78;
              }

              goto LABEL_81;
            }

LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_99:
  __break(1u);
  return result;
}

id CascadingBloomFilters.init()()
{
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_version] = 2;
  v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm] = 2;
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers] = 0;
  v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic] = 0;
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt] = xmmword_24329C870;
  *&v0[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CascadingBloomFilters();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CascadingBloomFilters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CascadingBloomFilters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CascadingFiltersError.hashValue.getter()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

uint64_t sub_243296344()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1 + 1);
  return sub_24329C458();
}

uint64_t sub_2432963BC(uint64_t a1)
{
  v2 = *v1;
  sub_24329C438();
  MEMORY[0x245D2E460](v2 + 1);
  return sub_24329C458();
}

void *sub_243296418(uint64_t a1, unint64_t a2)
{
  v4 = sub_24329C248();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_243290718(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_243299EB8(v10, 0);
      v14 = sub_24329C1E8();
      sub_243290718(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_243296594()
{
  result = qword_27ED6D128;
  if (!qword_27ED6D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D128);
  }

  return result;
}

uint64_t sub_2432965E8(unint64_t a1, unint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v27 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v41 = MEMORY[0x277D84F90];
    v9 = v5 & ~(v5 >> 63);
    sub_243296F30(0, v9, 0);
    v8 = v41;
    if (v4 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v28 = v4;
      while (1)
      {
        if (!v9)
        {
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
        }

        if (v4 == 2)
        {
          if (v10 < *(a1 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(a1 + 24))
          {
            goto LABEL_45;
          }

          v15 = sub_24329C128();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = sub_24329C158();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v4 != 1)
          {
            if (v10 >= BYTE6(a2))
            {
              goto LABEL_43;
            }

            v29 = a1;
            v30 = BYTE2(a1);
            v31 = BYTE3(a1);
            v32 = v27;
            v33 = BYTE5(a1);
            v34 = BYTE6(a1);
            v35 = HIBYTE(a1);
            v36 = a2;
            v37 = BYTE2(a2);
            v38 = BYTE3(a2);
            v39 = BYTE4(a2);
            v40 = BYTE5(a2);
            v17 = *(&v29 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = sub_24329C128();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = sub_24329C158();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
LABEL_37:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D168, &qword_24329CCB0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_24329CA50;
        *(v18 + 56) = MEMORY[0x277D84B78];
        *(v18 + 64) = MEMORY[0x277D84BC0];
        *(v18 + 32) = v17;
        v19 = sub_24329C2F8();
        v41 = v8;
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          v26 = v19;
          v24 = v20;
          sub_243296F30((v21 > 1), v22 + 1, 1);
          v20 = v24;
          v19 = v26;
          v8 = v41;
        }

        *(v8 + 16) = v22 + 1;
        v23 = v8 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        ++v10;
        --v9;
        --v5;
        LODWORD(v4) = v28;
        if (!v5)
        {
          return v8;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

  return v8;
}

unint64_t sub_243296944(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243296A10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_243297EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243296A10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243296B1C(a5, a6);
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
    result = sub_24329C398();
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

void *sub_243296B1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_243296B68(a1, a2);
  sub_243296C98(&unk_2855FB5D8);
  return v3;
}

void *sub_243296B68(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243299EB8(v5, 0);
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

  result = sub_24329C398();
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
        v10 = sub_24329C308();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243299EB8(v10, 0);
        result = sub_24329C378();
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

uint64_t sub_243296C98(uint64_t result)
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

  result = sub_243296D84(result, v11, 1, v3);
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

char *sub_243296D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE *sub_243296E9C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24329705C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24329711C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_243297198(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_243296F30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243296F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243296F50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D170, &qword_24329CCB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_24329705C(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_243290EF8(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_24329711C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24329C168();
  swift_allocObject();
  result = sub_24329C118();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24329C1F8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_243297198(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24329C168();
  swift_allocObject();
  result = sub_24329C118();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24329721C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0C8, &qword_24329CA18);
  v10 = sub_243297E74(&qword_27ED6D0D0, &qword_27ED6D0C8, &qword_24329CA18, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_243296E9C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_2432972FC()
{
  result = qword_27ED6D140;
  if (!qword_27ED6D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D140);
  }

  return result;
}

unint64_t sub_243297358()
{
  result = qword_27ED6D148;
  if (!qword_27ED6D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D148);
  }

  return result;
}

uint64_t sub_2432973C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24329741C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_24329752C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_243297584(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_2432975E0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t getEnumTagSinglePayload for CascadingFiltersError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CascadingFiltersError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashAlgorithmEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HashAlgorithmEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243297E20()
{
  result = qword_27ED6D158;
  if (!qword_27ED6D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D158);
  }

  return result;
}

uint64_t sub_243297E74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243297EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ByteBuffer.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v4 = result;
    if (!v3)
    {
      v4 = 0;
    }

    goto LABEL_4;
  }

  v4 = 0;
  if (v3 != 2)
  {
LABEL_4:
    a3[2] = v4;
    return result;
  }

  a3[2] = *(result + 16);
  return result;
}

uint64_t ByteBuffer.readableBytesView.getter()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 >= result)
  {
    return sub_24329C218();
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  sub_24329C208();
  return *(a1._rawValue + 2);
}

void ByteBuffer.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  if (v5 < v1[2])
  {
    __break(1u);
  }

  else
  {
    v6 = sub_24329C218();
    v8 = v7;
    sub_24329C238();

    sub_243290718(v6, v8);
  }
}

void *ByteBuffer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_24329C438();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_24329C218();
    v9 = v8;
    sub_24329C238();
    sub_243290718(v7, v9);
    return sub_24329C458();
  }

  return result;
}

void sub_243298158(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  if (v5 < v1[2])
  {
    __break(1u);
  }

  else
  {
    v6 = sub_24329C218();
    v8 = v7;
    sub_24329C238();

    sub_243290718(v6, v8);
  }
}

void *sub_2432981FC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  result = sub_24329C438();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_24329C218();
    v10 = v9;
    sub_24329C238();
    sub_243290718(v8, v10);
    return sub_24329C458();
  }

  return result;
}

uint64_t ByteBufferError.hashValue.getter()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t sub_243298334()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t sub_2432983A0(uint64_t a1)
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

uint64_t _s16CascadingFilters10ByteBufferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    result = sub_24329C218();
    v10 = result;
    v12 = v11;
    v13 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v7 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v7 >> 32;
    }

    else
    {
      v14 = BYTE6(v8);
    }

    if (v14 >= v9)
    {
      v15 = sub_24329C218();
      v17 = v16;
      v18 = sub_243299948(v10, v12, v15, v16);
      sub_243290718(v10, v12);
      sub_243290718(v15, v17);
      return v18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2432984FC()
{
  result = qword_27ED6D178;
  if (!qword_27ED6D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D178);
  }

  return result;
}

unint64_t sub_243298554()
{
  result = qword_27ED6D180;
  if (!qword_27ED6D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D180);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2432985D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24329862C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ByteBufferError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ByteBufferError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_243298774()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D188);
  __swift_project_value_buffer(v0, qword_27ED6D188);
  return sub_24329C268();
}

void sub_2432987E4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = v4;
  v6 = v3;
  v77 = a1;
  v78 = a2;
  v88 = *MEMORY[0x277D85DE8];
  v66 = sub_24329C248();
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20]();
  v65 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_24329C298();
  v10 = *(v76 - 8);
  MEMORY[0x28223BE20]();
  v75 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_24329C2C8();
  v12 = *(v74 - 8);
  MEMORY[0x28223BE20]();
  v80 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = a3;
  v14 = ceil(log2(a3));
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v14 <= -1.0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v14 >= 4294967300.0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v15 = v14 + 7;
  if (v14 >= 0xFFFFFFF9)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v15 >= 8)
  {
    v17 = v15 >> 3;
    v16 = sub_24329C338();
    *(v16 + 16) = v17;
    v18 = (v16 + 16);
    bzero((v16 + 32), v17);
    v82[0] = v16;
    goto LABEL_9;
  }

  v16 = MEMORY[0x277D84F90];
  v18 = (MEMORY[0x277D84F90] + 16);
  v17 = *(MEMORY[0x277D84F90] + 16);
  v82[0] = MEMORY[0x277D84F90];
  if (v17)
  {
LABEL_9:
    v20 = 0;
    v21 = *(v6 + 48);
    v72 = (v10 + 8);
    v73 = (v10 + 16);
    v64 = (v8 + 8);
    v68 = (v12 + 8);
    v70 = v17;
    v71 = v16;
    v69 = v18;
    while (v21)
    {
LABEL_30:
      if (!v21 || (v49 = *(v6 + 40), v50 = *(v49 + 16) - v21, v50 < 0))
      {
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
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v20 >= *v18)
      {
        goto LABEL_49;
      }

      *(v16 + v20 + 32) = *(v49 + v50 + 32);
      v82[0] = v16;
      *(v6 + 48) = --v21;
      if (v17 == ++v20)
      {
        v19 = *v18;
        if (*v18 > 3)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v81 = *(v6 + 32);
    v22 = sub_24329705C(&v81, v82);
    v24 = v23;
    v25 = v80;
    sub_24329C2B8();
    sub_243291E48(v22, v24 & 0xFFFFFFFFFFFFFFLL);
    sub_2432995D0(v22, v24 & 0xFFFFFFFFFFFFFFLL, v25);
    v79 = v22;
    sub_243290718(v22, v24 & 0xFFFFFFFFFFFFFFLL);
    v27 = v77;
    v26 = v78;
    sub_243291E48(v77, v78);
    sub_2432995D0(v27, v26, v25);
    sub_243290718(v27, v26);
    v28 = *(v6 + 16);
    v29 = *(v6 + 24);
    sub_243291E48(v28, v29);
    sub_2432995D0(v28, v29, v25);
    sub_243290718(v28, v29);
    v30 = v75;
    sub_24329C2A8();
    v31 = v76;
    v86 = v76;
    v87 = sub_243299C10(&qword_27ED6D1B0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v32 = __swift_allocate_boxed_opaque_existential_1(&v83);
    (*v73)(v32, v30, v31);
    __swift_project_boxed_opaque_existential_1(&v83, v86);
    sub_24329C1B8();
    (*v72)(v30, v31);
    v34 = v82[1];
    v33 = v82[2];
    __swift_destroy_boxed_opaque_existential_1(&v83);
    v35 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v35 != 2)
      {
LABEL_23:
        sub_243290718(v79, v24 & 0xFFFFFFFFFFFFFFLL);
        v39 = MEMORY[0x277D84F90];
LABEL_27:
        *(v6 + 40) = v39;

        v45 = *(*(v6 + 40) + 16);
        if (v45 > 0xFF)
        {
          goto LABEL_50;
        }

        *(v6 + 48) = v45;
        v46 = *(v6 + 32);
        v47 = __CFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_51;
        }

        *(v6 + 32) = v48;
        (*v68)(v80, v74);
        v21 = *(v6 + 48);
        v17 = v70;
        v16 = v71;
        v18 = v69;
        goto LABEL_30;
      }

      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      v36 = v37 - v38;
      if (__OFSUB__(v37, v38))
      {
        goto LABEL_54;
      }

      if (!v36)
      {
LABEL_22:
        sub_243290718(v34, v33);
        goto LABEL_23;
      }
    }

    else if (v35)
    {
      v41 = HIDWORD(v34) - v34;
      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_53;
      }

      v36 = v41;
      if (!v41)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v36 = BYTE6(v33);
      if (!BYTE6(v33))
      {
        goto LABEL_22;
      }
    }

    v67 = v5;
    if (v36 < 1)
    {
      v39 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
      v39 = swift_allocObject();
      v40 = _swift_stdlib_malloc_size(v39);
      v39[2] = v36;
      v39[3] = 2 * v40 - 64;
    }

    v42 = v65;
    v43 = sub_24329C1E8();
    sub_243290718(v34, v33);
    sub_243290718(v79, v24 & 0xFFFFFFFFFFFFFFLL);
    (*v64)(v42, v66);
    v44 = v43 == v36;
    v5 = v67;
    if (!v44)
    {
      goto LABEL_52;
    }

    goto LABEL_27;
  }

  v19 = 0;
LABEL_35:
  v51 = 4 - v19;
  v52 = sub_24329C338();
  *(v52 + 16) = v51;
  bzero((v52 + 32), v51);
  sub_243296C98(v52);
  v16 = v82[0];
LABEL_36:
  v53 = sub_24329721C(v16);
  v55 = v54;

  v56 = 0;
  v57 = v55 >> 62;
  if ((v55 >> 62) > 1)
  {
    if (v57 == 2)
    {
      v56 = *(v53 + 16);
    }
  }

  else if (v57)
  {
    v56 = v53;
  }

  v83 = v53;
  v84 = v55;
  v85 = v56;
  if ((sub_24329207C() & 0x100000000) == 0)
  {
    sub_243290718(v83, v84);
    if (v63)
    {
      return;
    }

    goto LABEL_59;
  }

  if (qword_27ED6D0A8 != -1)
  {
LABEL_60:
    swift_once();
  }

  v58 = sub_24329C278();
  __swift_project_value_buffer(v58, qword_27ED6D188);
  v59 = sub_24329C258();
  v60 = sub_24329C368();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_24328F000, v59, v60, "error unable to convert index bytes to int", v61, 2u);
    MEMORY[0x245D2E7E0](v61, -1, -1);
  }

  sub_243299B0C();
  swift_allocError();
  swift_willThrow();
  sub_243290718(v83, v84);
}

void *IndexGenerator.deinit()
{
  sub_243290718(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t IndexGenerator.__deallocating_deinit()
{
  sub_243290718(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t IndexGeneratorError.hashValue.getter()
{
  sub_24329C438();
  MEMORY[0x245D2E460](0);
  return sub_24329C458();
}

BOOL static IndexGenerator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_243291E48(v2, v3);
  sub_243291E48(v4, v5);
  v6 = sub_243299948(v2, v3, v4, v5);
  sub_243290718(v4, v5);
  sub_243290718(v2, v3);
  return v6;
}

BOOL sub_243299188(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_243291E48(v2, v3);
  sub_243291E48(v4, v5);
  v6 = sub_243299948(v2, v3, v4, v5);
  sub_243290718(v4, v5);
  sub_243290718(v2, v3);
  return v6;
}

uint64_t sub_243299210@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24329C128();
    if (v10)
    {
      v11 = sub_24329C158();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24329C148();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24329C128();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24329C158();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24329C148();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_243299440(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_243299890(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_243290718(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_243299210(v13, a3, a4, &v12);
  v10 = v4;
  sub_243290718(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2432995D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_24329C2C8();
      sub_243299C10(&qword_27ED6D1B8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_24329C288();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2432997B0(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2432997B0(v5, v6);
  }

  sub_24329C2C8();
  sub_243299C10(&qword_27ED6D1B8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_24329C288();
}

uint64_t sub_2432997B0(uint64_t a1, uint64_t a2)
{
  result = sub_24329C128();
  if (!result || (result = sub_24329C158(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24329C148();
      sub_24329C2C8();
      sub_243299C10(&qword_27ED6D1B8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_24329C288();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_243299890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24329C128();
  v11 = result;
  if (result)
  {
    result = sub_24329C158();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24329C148();
  sub_243299210(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_243299948(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_243291E48(a3, a4);
          return sub_243299440(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_243299AB4()
{
  result = qword_27ED6D1A0;
  if (!qword_27ED6D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1A0);
  }

  return result;
}

unint64_t sub_243299B0C()
{
  result = qword_27ED6D1A8;
  if (!qword_27ED6D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1A8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_243299C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Data.hexString.getter(unint64_t a1, unint64_t a2)
{
  sub_2432965E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D130, &qword_24329CA60);
  sub_243299E44();
  v2 = sub_24329C2D8();

  return v2;
}

void *Data.bytes.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_24329C248();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    while (1)
    {
      v13 = sub_243299EB8(v10, 0);
      v14 = sub_24329C1E8();
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return result;
}

unint64_t sub_243299E44()
{
  result = qword_27ED6D138;
  if (!qword_27ED6D138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6D130, &qword_24329CA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D138);
  }

  return result;
}

void *sub_243299EB8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6D0D8, &qword_24329CA20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_243299F50()
{
  v0 = sub_24329C278();
  __swift_allocate_value_buffer(v0, qword_27ED6D1C0);
  __swift_project_value_buffer(v0, qword_27ED6D1C0);
  return sub_24329C268();
}

uint64_t sub_243299FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

double sub_24329A020()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24329A058(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t CascadeBuilder.salt.getter()
{
  v1 = *(v0 + 24);
  sub_243291E48(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_24329A130(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

double sub_24329A190()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24329A1C8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_24329A260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

double sub_24329A2C0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24329A2F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

__n128 sub_24329A390@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[4];
  *a1 = result;
  return result;
}

uint64_t sub_24329A3D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t CascadeBuilder.__allocating_init(hashAlgorithm:salt:includeCount:excludeCount:)(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 40) = *a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v11 = MEMORY[0x277D84F90];
  *(v10 + 48) = MEMORY[0x277D84F90];
  *(v10 + 56) = v11;
  *(v10 + 64) = a4;
  *(v10 + 72) = a5;
  *(v10 + 16) = v11;
  type metadata accessor for BloomFilter();
  swift_allocObject();
  sub_243291E48(a2, a3);
  *(sub_243290018(a4, a5, 1) + 40) = 1;
  swift_beginAccess();

  MEMORY[0x245D2E330](v12);
  if (*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24329C328();
  }

  sub_24329C348();
  swift_endAccess();
  sub_243290718(a2, a3);

  return v10;
}

uint64_t CascadeBuilder.init(hashAlgorithm:salt:includeCount:excludeCount:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a1;
  v12 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v6 + 40) = v11;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 48) = v12;
  *(v6 + 56) = v12;
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  type metadata accessor for BloomFilter();
  swift_allocObject();
  sub_243291E48(a2, a3);
  *(sub_243290018(a4, a5, 1) + 40) = 1;
  swift_beginAccess();

  MEMORY[0x245D2E330](v13);
  if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24329C328();
  }

  sub_24329C348();
  swift_endAccess();
  sub_243290718(a2, a3);

  return v6;
}

uint64_t sub_24329A704(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (v4[8])
  {
    type metadata accessor for IndexGenerator();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    *(v7 + 32) = 0;
    sub_243291E48(a1, a2);
    v8 = sub_24329C338();
    *(v8 + 16) = 32;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v7 + 40) = v8;
    *(v7 + 48) = 0;
    swift_beginAccess();
    v9 = v4[2];
    if ((v9 & 0xC000000000000001) != 0)
    {

      MEMORY[0x245D2E3A0](0, v9);

LABEL_5:
      sub_24329013C(v7, v4[3], v4[4]);

      if (v3)
      {
      }

      swift_beginAccess();

      MEMORY[0x245D2E330](v16);
      if (*((v4[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24329C328();
      }

      sub_24329C348();
      swift_endAccess();

      v17 = v4[8];
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        v4[8] = v19;
      }

      return result;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27ED6D0B0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v11 = sub_24329C278();
  __swift_project_value_buffer(v11, qword_27ED6D1C0);
  v12 = sub_24329C258();
  v13 = sub_24329C368();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24328F000, v12, v13, "no more include capacity", v14, 2u);
    MEMORY[0x245D2E7E0](v14, -1, -1);
  }

  sub_24329A9C0();
  swift_allocError();
  *v15 = 3;
  return swift_willThrow();
}

unint64_t sub_24329A9C0()
{
  result = qword_27ED6D1D8;
  if (!qword_27ED6D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1D8);
  }

  return result;
}

unint64_t sub_24329AA14(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  if (!v4[9])
  {
    if (qword_27ED6D0B0 == -1)
    {
LABEL_8:
      v12 = sub_24329C278();
      __swift_project_value_buffer(v12, qword_27ED6D1C0);
      v13 = sub_24329C258();
      v14 = sub_24329C368();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24328F000, v13, v14, "no more exclude capacity", v15, 2u);
        MEMORY[0x245D2E7E0](v15, -1, -1);
      }

      sub_24329A9C0();
      swift_allocError();
      *v16 = 1;
      return swift_willThrow();
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  type metadata accessor for IndexGenerator();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  sub_243291E48(a1, a2);
  v8 = sub_24329C338();
  *(v8 + 16) = 32;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v7 + 40) = v8;
  *(v7 + 48) = 0;
  swift_beginAccess();
  v9 = v4[2];
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x245D2E3A0](0, v9);

LABEL_5:
  v10 = sub_243290390(v7, v4[3], v4[4]);

  if (v3)
  {
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  swift_beginAccess();

  MEMORY[0x245D2E330](v17);
  if (*((v4[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_24329C348();
    swift_endAccess();
LABEL_14:

    v18 = v4[9];
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (!v19)
    {
      break;
    }

    __break(1u);
LABEL_20:
    sub_24329C328();
  }

  v4[9] = v20;
  return result;
}

uint64_t sub_24329ACD8()
{
  v2 = v0;
  swift_beginAccess();
  v3 = v0[2];
  if (v3 >> 62)
  {
    v4 = sub_24329C3E8();
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    swift_beginAccess();
    v5 = v0[7];
    v6 = v0 + 6;
    goto LABEL_6;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_beginAccess();
  v5 = v0[6];
  v6 = v0 + 7;
LABEL_6:
  swift_beginAccess();
  v7 = *v6;
  swift_bridgeObjectRetain_n();
  v8 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_77;
  }

  v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v41 = (v7 >> 62);
  if (v7 >> 62)
  {
    v10 = sub_24329C3E8();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for BloomFilter();
  swift_allocObject();
  v40 = v7;

  v11 = sub_243290018(v9, v10, 0);
  v12 = *(v2 + 16);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_12;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    if (v40 < 0)
    {
      v5 = v40;
    }

    else
    {
      v5 = v40 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = sub_24329C3E8();
    v44 = v10;
    v19 = sub_24329C3E8();
    v41 = v2;
    v42 = v11;
    if (!v19)
    {
      goto LABEL_44;
    }

    goto LABEL_29;
  }

  v30 = sub_24329C3E8();
  v14 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    goto LABEL_81;
  }

LABEL_12:
  v38 = v8;
  v39 = v4;
  *(v11 + 40) = v14;
  if (v8)
  {
    v8 = sub_24329C3E8();
    v45 = v5;
    if (!v8)
    {
      goto LABEL_27;
    }

LABEL_16:
    v7 = 0;
    v15 = v5 & 0xC000000000000001;
    v4 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x245D2E3A0](v7, v5);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v9 = sub_24329C3E8();
          goto LABEL_8;
        }

        v16 = *(v5 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }
      }

      sub_24329013C(v16, *(v2 + 24), *(v2 + 32));
      if (v1)
      {
LABEL_41:

        return swift_bridgeObjectRelease_n();
      }

      ++v7;
      v17 = v5 == v8;
      v5 = v45;
      if (v17)
      {
        goto LABEL_27;
      }
    }
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v5;
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_27:

  v10 = MEMORY[0x277D84F90];
  if (v41)
  {
    goto LABEL_82;
  }

  v18 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = MEMORY[0x277D84F90];
  v19 = v18;
  v41 = v2;
  v42 = v11;
  if (!v18)
  {
    goto LABEL_44;
  }

LABEL_29:
  v37 = v18;
  v8 = 0;
  v20 = v40;
  v2 = v40 & 0xC000000000000001;
  v4 = v40 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v2)
    {
      v7 = MEMORY[0x245D2E3A0](v8, v20);
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v8 >= *(v4 + 16))
      {
        goto LABEL_75;
      }

      v7 = *(v20 + 8 * v8 + 32);

      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v21 = sub_243290390(v7, v41[3], v41[4]);
    if (v1)
    {
    }

    if (v21)
    {
      sub_24329C3A8();
      sub_24329C3C8();
      v20 = v40;
      sub_24329C3D8();
      sub_24329C3B8();
    }

    else
    {
    }

    ++v8;
  }

  while (v5 != v19);
  v10 = v44;
  v2 = v41;
  v18 = v37;
LABEL_44:

  v5 = v45;
  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v23 = *(v10 + 16);
    if (!__OFSUB__(v18, v23))
    {
      goto LABEL_47;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    if (sub_24329C3E8() < 255)
    {
      goto LABEL_70;
    }

LABEL_91:
    if (qword_27ED6D0B0 != -1)
    {
      swift_once();
    }

    v31 = sub_24329C278();
    __swift_project_value_buffer(v31, qword_27ED6D1C0);
    v32 = sub_24329C258();
    v33 = sub_24329C368();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24328F000, v32, v33, "filter count exceeded limit (255)", v34, 2u);
      MEMORY[0x245D2E7E0](v34, -1, -1);
    }

    sub_24329A9C0();
    swift_allocError();
    *v35 = 4;
    swift_willThrow();
  }

  v23 = sub_24329C3E8();
  if (__OFSUB__(v18, v23))
  {
    goto LABEL_89;
  }

LABEL_47:
  if (v39)
  {
    v24 = (v2 + 48);
  }

  else
  {
    v24 = (v2 + 56);
  }

  swift_beginAccess();
  *v24 = v10;

  if (v18 != v23)
  {

    goto LABEL_68;
  }

  if (!v38)
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_67;
    }

LABEL_56:
    v2 = 0;
    v25 = v5 & 0xC000000000000001;
    v4 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25)
      {
        v7 = MEMORY[0x245D2E3A0](v2, v5);
        v26 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_76;
        }

        v7 = *(v5 + 8 * v2 + 32);

        v26 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      v43 = v7;
      MEMORY[0x28223BE20]();
      v36[2] = &v43;
      if (sub_24329BF1C(sub_24329C0E8, v36, v10))
      {
        break;
      }

      ++v2;
      v17 = v26 == v8;
      v5 = v45;
      if (v17)
      {
        goto LABEL_67;
      }
    }

    sub_24329A9C0();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  v8 = sub_24329C3E8();
  if (v8)
  {
    goto LABEL_56;
  }

LABEL_67:

LABEL_68:
  v18 = v41;
  v27 = v41[2];
  if (v27 >> 62)
  {
    goto LABEL_90;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 255)
  {
    goto LABEL_91;
  }

LABEL_70:
  swift_beginAccess();

  MEMORY[0x245D2E330](v28);
  if (*((*(v18 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24329C328();
  }

  sub_24329C348();
  swift_endAccess();
}

uint8_t *sub_24329B464()
{
  swift_beginAccess();
  if (!*(v0 + 64) || !*(v0 + 72))
  {
    swift_beginAccess();
    swift_beginAccess();
    while (1)
    {
      v7 = *(v0 + 56);
      if (v7 >> 62)
      {
        if (!sub_24329C3E8())
        {
          goto LABEL_18;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      sub_24329ACD8();
      if (v1)
      {
        return v2;
      }

      v8 = *(v0 + 48);
      if (v8 >> 62)
      {
        if (!sub_24329C3E8())
        {
LABEL_18:
          v2 = [objc_allocWithZone(type metadata accessor for CascadingBloomFilters()) init];
          swift_beginAccess();
          v9 = *(v0 + 16);
          v10 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_filters;
          swift_beginAccess();
          *&v2[v10] = v9;

          v11 = *(v0 + 24);
          v12 = *(v0 + 32);
          v13 = &v2[OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_salt];
          swift_beginAccess();
          v14 = *v13;
          v15 = v13[1];
          *v13 = v11;
          v13[1] = v12;
          sub_243291E48(v11, v12);
          sub_243290718(v14, v15);
          LOBYTE(v11) = *(v0 + 40);
          v16 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_hashAlgorithm;
          swift_beginAccess();
          v2[v16] = v11;
          v17 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_invertedLogic;
          swift_beginAccess();
          v2[v17] = 0;
          v18 = *(v0 + 16);
          if (v18 >> 62)
          {
            v19 = sub_24329C3E8();
          }

          else
          {
            v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v20 = OBJC_IVAR____TtC16CascadingFilters21CascadingBloomFilters_numberOfLayers;
          swift_beginAccess();
          *&v2[v20] = v19;
          return v2;
        }
      }

      else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      sub_24329ACD8();
    }
  }

  if (qword_27ED6D0B0 != -1)
  {
    swift_once();
  }

  v3 = sub_24329C278();
  __swift_project_value_buffer(v3, qword_27ED6D1C0);
  v4 = sub_24329C258();
  v5 = sub_24329C368();
  if (os_log_type_enabled(v4, v5))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24328F000, v4, v5, "includeCount and excludeCount not empty", v2, 2u);
    MEMORY[0x245D2E7E0](v2, -1, -1);
  }

  sub_24329A9C0();
  swift_allocError();
  *v6 = 2;
  swift_willThrow();
  return v2;
}

void *CascadeBuilder.deinit()
{

  sub_243290718(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t CascadeBuilder.__deallocating_deinit()
{

  sub_243290718(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t CascadeBuilderError.hashValue.getter()
{
  v1 = *v0;
  sub_24329C438();
  MEMORY[0x245D2E460](v1);
  return sub_24329C458();
}

unint64_t sub_24329B8DC()
{
  result = qword_27ED6D1E0;
  if (!qword_27ED6D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6D1E0);
  }

  return result;
}

double sub_24329B934@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

double sub_24329B984@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);

  return result;
}

double sub_24329B9D4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);

  return result;
}

__n128 sub_24329BA24@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[4];
  *a2 = result;
  return result;
}

uint64_t sub_24329BA6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BuildStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BuildStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CascadeBuilderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CascadeBuilderError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24329BF1C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x245D2E3A0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_24329C3E8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

BOOL sub_24329C058(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  sub_243291E48(v2, v3);
  sub_243291E48(v4, v5);
  v6 = sub_243299948(v2, v3, v4, v5);
  sub_243290718(v4, v5);
  sub_243290718(v2, v3);
  return v6;
}