uint64_t SEP.Identity.string.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FFB2F50;
  v8 = MEMORY[0x277D84CC0];
  v9 = MEMORY[0x277D84D30];
  *(v7 + 56) = MEMORY[0x277D84CC0];
  *(v7 + 64) = v9;
  v10 = MEMORY[0x277D84D38];
  *(v7 + 32) = v1;
  v11 = MEMORY[0x277D84D90];
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  *(v7 + 72) = v2;
  v12 = v5 & 3;
  if (v4)
  {
    v12 = v5 & 3 | 4;
  }

  if (v3)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x277D84BC0];
  *(v7 + 136) = MEMORY[0x277D84B78];
  *(v7 + 144) = v14;
  *(v7 + 112) = v12 | v13;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = v6;

  return sub_22FFB14D8();
}

uint64_t SEP.Identity.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v6 - 8);
  sub_22FFB14E8();
  v7 = sub_22FFB14B8();
  if (!v8)
  {
    result = sub_22FEA55AC(a1, a2);
    goto LABEL_5;
  }

  SEP.Identity.init(string:)(v7, v8, &v11);
  result = sub_22FEA55AC(a1, a2);
  v10 = v12;
  if (v12 == 2)
  {
LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    v10 = 2;
    goto LABEL_6;
  }

  *a3 = v11;
LABEL_6:
  a3[2] = v10;
  return result;
}

void SEP.Identity.archBits.getter(_BYTE *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t SEP.Identity.ArchBits.rawValue.getter()
{
  if (v0[1])
  {
    v1 = v0[2] & 3 | 4;
  }

  else
  {
    v1 = v0[2] & 3;
  }

  if (*v0)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v1 | v2;
}

uint64_t sub_22FF568F4()
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF56968()
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t SEP.Identity.ArchBits.init(rawValue:)@<X0>(int a1@<W0>, BOOL *a2@<X8>)
{
  v2 = a1;
  result = sub_22FEB1BA8(0, 2uLL, a1);
  if (result > 3u)
  {
    __break(1u);
  }

  else
  {
    *a2 = (v2 & 8) != 0;
    a2[1] = (v2 & 4) != 0;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_22FF56A18()
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF56AE8()
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF56B5C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = SEP.Identity.ArchBits.init(rawValue:)(*a1, v6);
  v4 = v6[0];
  if (v6[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 2) = v6[2];
  *a2 = v5 | v4;
  return result;
}

void sub_22FF56BB4(_BYTE *a1@<X8>)
{
  if (v1[1])
  {
    v2 = v1[2] & 3 | 4;
  }

  else
  {
    v2 = v1[2] & 3;
  }

  if (*v1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v2 | v3;
}

BOOL sub_22FF56BEC(_BYTE *a1, _BYTE *a2)
{
  v2 = a2[2];
  v3 = a1[2] & 3;
  if (a1[1])
  {
    v3 |= 4u;
  }

  if (a2[1])
  {
    v4 = v2 & 3 | 4;
  }

  else
  {
    v4 = v2 & 3;
  }

  if (*a1)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if (*a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  return v6 == (v4 | v7);
}

uint64_t SEP.Identity.init(string:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v39[0] = 45;
  v39[1] = 0xE100000000000000;
  v38[2] = v39;
  v4 = sub_22FF571C8(4, 1, sub_22FF592B8, v38, a1, a2, v39);
  v5 = v4;
  if (v4[2] != 4)
  {
    goto LABEL_28;
  }

  v6 = v4[4];
  v7 = v4[5];
  if (!((v7 ^ v6) >> 14))
  {
    goto LABEL_28;
  }

  v9 = v4[6];
  v8 = v4[7];
  v10 = sub_22FF591F0(v4[4], v4[5], v9, v8, 16);
  if ((v10 & 0x10000000000) != 0)
  {

    v11 = sub_22FF586D4(v6, v7, v9, v8, 16);

    LODWORD(v10) = v11;
    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_28;
  }

  if (v5[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  v12 = v5[8];
  v13 = v5[9];
  if (!((v13 ^ v12) >> 14))
  {
    goto LABEL_28;
  }

  v14 = v10;
  v16 = v5[10];
  v15 = v5[11];
  v17 = sub_22FF59124(v5[8], v5[9], v16, v15, 16);
  if ((v18 & 0x100) != 0)
  {

    v19 = sub_22FF58144(v12, v13, v16, v15, 16);
    v21 = v20;

    if (v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_28;
    }

    v19 = v17;
  }

  if (v5[2] < 3uLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v5[12];
  v23 = v5[13];
  if (!((v23 ^ v22) >> 14))
  {
    goto LABEL_28;
  }

  v25 = v5[14];
  v24 = v5[15];
  v26 = sub_22FF59054(v5[12], v5[13], v25, v24, 16);
  if ((v26 & 0x10000) != 0)
  {

    v27 = sub_22FF57B64(v22, v23, v25, v24, 16);

    if ((v27 & 0x100) == 0)
    {
      v26 = v27;
      goto LABEL_20;
    }

LABEL_28:

LABEL_29:
    *a3 = 0;
    a3[1] = 0;
    v37 = 2;
    goto LABEL_30;
  }

  if ((v26 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v5[2] < 4uLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v26;
  v29 = v5[16];
  v30 = v5[17];
  v32 = v5[18];
  v31 = v5[19];

  if (!((v30 ^ v29) >> 14))
  {
    goto LABEL_28;
  }

  v33 = sub_22FF591F0(v29, v30, v32, v31, 16);
  if ((v33 & 0x10000000000) != 0)
  {
    v33 = sub_22FF586D4(v29, v30, v32, v31, 16);
  }

  v34 = v33;

  if ((v34 & 0x100000000) != 0)
  {
    goto LABEL_29;
  }

  result = SEP.Identity.ArchBits.init(rawValue:)(v28, v39);
  v36 = 256;
  if (!BYTE1(v39[0]))
  {
    v36 = 0;
  }

  v37 = v36 | LOBYTE(v39[0]) | (BYTE2(v39[0]) << 16) | (v34 << 32);
  *a3 = v14;
  a3[1] = v19;
LABEL_30:
  a3[2] = v37;
  return result;
}

uint64_t SEP.Identity.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  return sub_22FFB1CD8();
}

uint64_t SEP.Identity.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF57080()
{
  v1 = *(v0 + 8);
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  return sub_22FFB1CD8();
}

uint64_t sub_22FF57110()
{
  v1 = *(v0 + 8);
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v1);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF571C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22FFB15F8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22FEC3458(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_22FEC3458((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
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
        v19 = sub_22FFB15D8();
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

        v14 = sub_22FFB1558();
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
        v18 = sub_22FFB1558();
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
          v7 = sub_22FFB15F8();
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

        v14 = sub_22FEC3458(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22FFB15F8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22FEC3458(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22FEC3458((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22FFB1558();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF57588(uint64_t result, int a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v57 = *MEMORY[0x277D85DE8];
  if (result < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v6 = a6;
  v9 = a5;
  v13 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(a5 + 16);
    }
  }

  else
  {
    v11 = a5;
    if (v13)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }
  }

  if (!result)
  {
    goto LABEL_18;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_25;
    }

    v11 = *(a5 + 16);
    if (v11 != *(a5 + 24))
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v13 <= 1)
    {
      if (v13)
      {
        v16 = a5 >> 32;
        if (v14 != a5 >> 32)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (a2)
        {
          sub_22FEA55AC(a5, a6);
          return MEMORY[0x277D84F90];
        }

LABEL_30:
        if (v16 >= v14)
        {
          v7 = sub_22FFB0788();
          v10 = v17;
          sub_22FEA55AC(v9, v6);
          result = sub_22FEC334C(0, 1, 1, MEMORY[0x277D84F90]);
          v9 = *(result + 16);
          v11 = *(result + 24);
          v6 = v9 + 1;
          if (v9 < v11 >> 1)
          {
LABEL_32:
            *(result + 16) = v6;
            v18 = result + 16 * v9;
            *(v18 + 32) = v7;
            *(v18 + 40) = v10;
            return result;
          }

LABEL_87:
          result = sub_22FEC334C((v11 > 1), v6, 1, result);
          goto LABEL_32;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_20:
      v16 = BYTE6(a6);
      if (v14 != BYTE6(a6))
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (v13 == 2)
    {
      v16 = *(a5 + 24);
      if (v14 != v16)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_25:
    v16 = 0;
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    if ((a6 & 0xFF000000000000) != 0)
    {
      v15 = BYTE6(a6);
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v11 = a5;
  if (a5 == a5 >> 32)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v13 == 2)
  {
    v15 = *(a5 + 24);
  }

  else
  {
    v15 = a5 >> 32;
  }

LABEL_34:
  v46 = a5;
  v42 = -v15;
  v43 = a5 >> 32;
  v19 = MEMORY[0x277D84F90];
  v44 = BYTE6(a6);
  while (2)
  {
    if (v14 == v15)
    {
      v14 = v15;
      goto LABEL_70;
    }

    v38 = result;
    v40 = a2;
    if (v13 == 3)
    {
      __break(1u);
      return result;
    }

    v41 = v19;
    v45 = &v51[v14];
    v39 = v15;
LABEL_38:
    v20 = 0;
    v21 = v42 + v14;
    v47 = v14;
    while (1)
    {
      v22 = v14 + v20;
      if (v13 == 1)
      {
        v11 = v46;
        if (v22 < v46)
        {
          goto LABEL_81;
        }

        v11 = v43;
        if (v22 >= v43)
        {
          goto LABEL_81;
        }

        v24 = v8;
        v25 = sub_22FFB0588();
        if (!v25)
        {
          goto LABEL_91;
        }

        v10 = v25;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = sub_22FFB05B8();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_83;
        }

LABEL_53:
        v23 = *(v10 + v11);
        v8 = v24;
        v14 = v47;
        goto LABEL_54;
      }

      if (v13)
      {
        v11 = *(v9 + 16);
        if (v22 < v11)
        {
          goto LABEL_80;
        }

        v11 = *(v9 + 24);
        if (v22 >= v11)
        {
          goto LABEL_82;
        }

        v24 = v8;
        v26 = sub_22FFB0588();
        if (!v26)
        {
          goto LABEL_92;
        }

        v10 = v26;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = sub_22FFB05B8();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_84;
        }

        goto LABEL_53;
      }

      v11 = v44;
      if (v22 >= v44)
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v51[0] = v46;
      v51[1] = BYTE1(v9);
      v51[2] = BYTE2(v9);
      v51[3] = BYTE3(v9);
      v51[4] = BYTE4(v9);
      v51[5] = BYTE5(v9);
      v51[6] = BYTE6(v9);
      v51[7] = HIBYTE(v9);
      v52 = v6;
      v53 = BYTE2(v6);
      v54 = BYTE3(v6);
      v55 = BYTE4(v6);
      v56 = BYTE5(v6);
      v23 = v45[v20];
LABEL_54:
      v51[0] = v23;
      v7 = a4;
      result = a3(v51);
      if (v8)
      {
        sub_22FEA55AC(v9, v6);
      }

      if (result)
      {
        break;
      }

      ++v20;
      if (!(v21 + v20))
      {
        LOBYTE(a2) = v40;
        v19 = v41;
        v15 = v39;
        goto LABEL_70;
      }
    }

    if (v20 || (v40 & 1) == 0)
    {
      v27 = v41;
      if (v14 + v20 < v14)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      v10 = 0;
      v48 = sub_22FFB0788();
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22FEC334C(0, *(v41 + 2) + 1, 1, v41);
      }

      v31 = *(v27 + 2);
      v30 = *(v27 + 3);
      v32 = v27;
      v7 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v32 = sub_22FEC334C((v30 > 1), v31 + 1, 1, v32);
      }

      *(v32 + 2) = v7;
      v33 = &v32[16 * v31];
      v19 = v32;
      *(v33 + 4) = v48;
      *(v33 + 5) = v29;
      v14 += v20 + 1;
      result = v38;
      v15 = v39;
      a2 = v40;
      if (v7 == v38)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  ++v14;
  ++v45;
  v15 = v39;
  if (v14 != v39)
  {
    goto LABEL_38;
  }

  v14 = v39;
  LOBYTE(a2) = v40;
  v19 = v41;
LABEL_70:
  if (v14 == v15 && (a2 & 1) != 0)
  {
    sub_22FEA55AC(v9, v6);
    return v19;
  }

  if (v15 < v14)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_22FFB0788();
    v10 = v34;
    sub_22FEA55AC(v9, v6);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_75;
    }
  }

  v19 = sub_22FEC334C(0, *(v19 + 2) + 1, 1, v19);
LABEL_75:
  result = v19;
  v36 = *(v19 + 2);
  v35 = *(v19 + 3);
  if (v36 >= v35 >> 1)
  {
    result = sub_22FEC334C((v35 > 1), v36 + 1, 1, v19);
  }

  *(result + 16) = v36 + 1;
  v37 = result + 16 * v36;
  *(v37 + 32) = v7;
  *(v37 + 40) = v10;
  return result;
}

unsigned __int8 *sub_22FF57B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_22FF59684();

  result = sub_22FFB15E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22FF58C5C(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_22FFB19F8();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
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
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
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
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22FF58144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_22FF59684();

  result = sub_22FFB15E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22FF58C5C(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_22FFB19F8();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22FF586D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_22FF59684();

  result = sub_22FFB15E8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22FF58C5C(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
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
      result = sub_22FFB19F8();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
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

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_22FF58C5C(uint64_t a1, unint64_t a2)
{
  v2 = sub_22FFB15F8();
  v6 = sub_22FF58CDC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22FF58CDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22FFB1898();
    if (!v9 || (v10 = v9, v11 = sub_22FF6BE0C(v9, 0), v12 = sub_22FF58E34(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22FFB1538();

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
      return sub_22FFB1538();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22FFB19F8();
LABEL_4:

  return sub_22FFB1538();
}

unint64_t sub_22FF58E34(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22FF5B770(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22FFB15B8();
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
          result = sub_22FFB19F8();
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

    result = sub_22FF5B770(v12, a6, a7);
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

    result = sub_22FFB1588();
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

uint64_t sub_22FF59054(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
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
    v11 = sub_22FFB19F8();
  }

  result = sub_22FF59FB0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t sub_22FF59124(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
    v11 = sub_22FFB19F8();
  }

  result = sub_22FF59B44(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22FF591F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
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
    v11 = sub_22FFB19F8();
  }

  result = sub_22FF596D8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_22FF592B8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8() & 1;
  }
}

BOOL _s16CloudAttestation3SEPO8IdentityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 18);
  v5 = *(a1 + 18) & 3;
  if (*(a1 + 17))
  {
    v5 |= 4u;
  }

  if (*(a2 + 17))
  {
    v6 = v4 & 3 | 4;
  }

  else
  {
    v6 = v4 & 3;
  }

  if (*(a1 + 16))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5;
  if (*(a2 + 16))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  return v8 == (v6 | v9) && *(a1 + 20) == *(a2 + 20);
}

unint64_t sub_22FF593AC()
{
  result = qword_27DAF36A8;
  if (!qword_27DAF36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36A8);
  }

  return result;
}

unint64_t sub_22FF59404()
{
  result = qword_27DAF36B0;
  if (!qword_27DAF36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36B0);
  }

  return result;
}

unint64_t sub_22FF5945C()
{
  result = qword_27DAF36B8;
  if (!qword_27DAF36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36B8);
  }

  return result;
}

uint64_t _s8IdentityVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s8IdentityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s8IdentityV8ArchBitsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s8IdentityV8ArchBitsVwst(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
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

unint64_t sub_22FF59684()
{
  result = qword_27DAF36C0;
  if (!qword_27DAF36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36C0);
  }

  return result;
}

uint64_t sub_22FF596D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_22FF5B770(a2, a4, a5);
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
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22FFB15A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22FF5B770(a3, a4, a5);
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
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_22FFB15A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
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
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
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

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
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

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_22FF59B44(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
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
    result = sub_22FF5B770(a2, a4, a5);
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
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22FFB15A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22FF5B770(a3, a4, a5);
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
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_22FFB15A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
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
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
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

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
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

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
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

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_22FF59FB0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_22FF5B770(a2, a4, a5);
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
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22FFB15A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22FF5B770(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22FF5B770(a3, a4, a5);
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
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_22FFB15A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
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
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
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

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
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

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_22FF5A448()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A68);
  __swift_project_value_buffer(v0, qword_27DB05A68);
  return sub_22FFB12E8();
}

void SEP.PhysicalDevice.attest(key:using:)(__SecKey *a2@<X1>, _OWORD *a3@<X8>)
{
  Attestation = SecKeyCreateAttestation();
  if (Attestation)
  {
    v6 = Attestation;
    v7 = SecKeyCopyPublicKey(a2);
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = sub_22FFB07E8();
      v12 = v11;

      SEP.Attestation.init(from:signer:)(v10, v12, v8, a3);
    }

    else
    {
      if (qword_27DAF1480 != -1)
      {
        swift_once();
      }

      v13 = sub_22FFB12F8();
      __swift_project_value_buffer(v13, qword_27DB05A68);
      v14 = sub_22FFB12D8();
      v15 = sub_22FFB1838();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_22FE99000, v14, v15, "Failed to copy public key from DCIK, parsing attestation without checking signature", v16, 2u);
        MEMORY[0x23190EFF0](v16, -1, -1);
      }

      v9 = v6;
      v17 = sub_22FFB07E8();
      v19 = v18;

      SEP.Attestation.init(from:)(v17, v19, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SEP.SealData.digest.getter()
{
  v1 = v0[2];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = v0[1];
  }

  else
  {
    v2 = *v0;
  }

  sub_22FF5C5B8(*v0, v0[1], v1, sub_22FEA5608);
  return v2;
}

uint64_t SEP.SealData.init(for:data:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_22FEA5608(a1, a2);
  result = sub_22FEC3DC8(a1, a2, a1, a2);
  if (result)
  {
    v7 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v7)
      {
        v8 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_9:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        return result;
      }

      v8 = HIDWORD(a1) - a1;
      goto LABEL_12;
    }

    if (v7 == 2)
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_12:
    if (qword_28148F5C8 != -1)
    {
      swift_once();
    }

    if (v8 == qword_281491370)
    {
      sub_22FF5AC34(a1, a2, &v23);
      sub_22FEA55AC(a1, a2);
      result = sub_22FEA55AC(a1, a2);
      v11 = v24;
      *a3 = v23;
LABEL_30:
      *(a3 + 16) = v11;
      return result;
    }
  }

  v12 = sub_22FEC3DC8(a1, a2, a1, a2);
  sub_22FEA55AC(a1, a2);
  if (v12)
  {
    v13 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v13 != 2 || *(a1 + 16) == *(a1 + 24))
      {
        goto LABEL_29;
      }
    }

    else if (v13)
    {
      if (a1 == a1 >> 32)
      {
LABEL_29:
        result = sub_22FEA55AC(a1, a2);
        *a3 = 0;
        *(a3 + 8) = 0;
        v11 = 0x3000000000000000;
        goto LABEL_30;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

  if (qword_27DAF1488 != -1)
  {
    swift_once();
  }

  v14 = sub_22FFB12F8();
  __swift_project_value_buffer(v14, qword_27DB05A80);
  sub_22FEA5608(a1, a2);
  v15 = sub_22FFB12D8();
  v16 = sub_22FFB1838();
  sub_22FEA55AC(a1, a2);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v23 = v18;
    *v17 = 136446210;
    v19 = sub_22FFB07C8();
    v21 = sub_22FF9E448(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22FE99000, v15, v16, "unknown SealDataA format: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x23190EFF0](v18, -1, -1);
    MEMORY[0x23190EFF0](v17, -1, -1);
  }

  result = sub_22FF96214(a1, a2);
  *a3 = result;
  *(a3 + 8) = v22;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_22FF5AB7C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A80);
  __swift_project_value_buffer(v0, qword_27DB05A80);
  return sub_22FFB12E8();
}

double SEP.SealData.init(for:data:)@<D0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  SEP.SealData.init(for:data:)(a1, a2, &v6);
  v4 = v7;
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v4;
  return result;
}

unint64_t sub_22FF5AC34@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = BYTE6(a2);
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  if (qword_28148F5C8 != -1)
  {
    result = swift_once();
  }

  if (v7 != qword_281491370)
  {
    __break(1u);
    goto LABEL_28;
  }

  v10 = sub_22FFB0798();
  v11 = sub_22FFB0798();
  v12 = sub_22FFB0798();
  result = sub_22FFB0798();
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_29;
    }

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v13 < 4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v6)
    {
      v13 = v4 >> 32;
    }

    else
    {
      v13 = v3;
    }

    if (v6)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    if (v13 < 4)
    {
      goto LABEL_29;
    }
  }

  if (v13 >= v14)
  {
    v15 = (v10 << 24) | (v11 << 16) | (v12 << 8) | result;
    v16 = sub_22FFB0788();
    result = sub_22FF96214(v16, v17);
    *a3 = v15;
    a3[1] = result;
    a3[2] = v18 | 0x2000000000000000;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22FF5ADD0()
{
  result = sub_22FFB13A8();
  if (__OFADD__(result, 4))
  {
    __break(1u);
  }

  else
  {
    qword_281491370 = result + 4;
  }

  return result;
}

uint64_t SEP.SealData.serializedBytes.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if ((v3 & 0x2000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22FFB2F50;
    *(v5 + 32) = BYTE3(v1);
    *(v5 + 33) = BYTE2(v1);
    *(v5 + 34) = BYTE1(v1);
    *(v5 + 35) = v1;
    v6 = sub_22FF9F990();
    v8 = v7;

    sub_22FF5C5B8(v1, v2, v3, sub_22FEA5608);
    sub_22FEA5608(v6, v8);
    sub_22FF5B8A0(v2, v3 & 0xDFFFFFFFFFFFFFFFLL);
    sub_22FF5C5B8(v1, v2, v3, sub_22FEA55AC);
    sub_22FEA55AC(v6, v8);
    return v6;
  }

  else
  {
    sub_22FEA5608(*v0, v0[1]);
    return sub_22FF96214(v1, v2);
  }
}

uint64_t sub_22FF5AF38(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_22FEA55AC(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_22FFB33B0;
      sub_22FEA55AC(0, 0xC000000000000000);
      result = sub_22FF5B5E0(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_22FEA55AC(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_22FEA55AC(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_22FFB33B0;
  sub_22FEA55AC(0, 0xC000000000000000);
  sub_22FFB06C8();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_22FFB0588();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_22FFB05B8();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_22FFB05A8();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

char *sub_22FF5B1E8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_22FEA55AC(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22FEA55AC(v7, v6);
    *v4 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22FFB0588() && __OFSUB__(v7, sub_22FFB05B8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_22FFB05D8();
      swift_allocObject();
      v14 = sub_22FFB0568();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_22FF5B6BC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_22FEA55AC(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    sub_22FFB06C8();
    result = sub_22FF5B6BC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_22FF5B58C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_22FF5B5E0(void (*a1)(uint64_t, uint64_t))
{
  result = sub_22FFB0708();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_22FFB0588();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_22FFB05B8();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_22FFB05A8();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_22FF5B6BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22FFB0588();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22FFB05B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22FFB05A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_22FF5B770(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22FFB15C8();
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
    v5 = MEMORY[0x23190DD40](15, a1 >> 16);
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

uint64_t sub_22FF5B7EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FF5B8A0(uint64_t a1, unint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = a1;
  v52 = a2;
  v46 = a1;
  v47 = a2;
  sub_22FEA5608(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36D0, &qword_22FFBE480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v44, &v48);
    v3 = __swift_project_boxed_opaque_existential_1(&v48, v50);
    MEMORY[0x28223BE20](v3);
    v37 = v2;
    sub_22FFB0618();
    return __swift_destroy_boxed_opaque_existential_1(&v48);
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_22FEC4CC8(v44);
  v5 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    v6 = 0;
    v7 = 0;
    if (v5 == 2)
    {
      v6 = *(v51 + 16);
      v7 = *(v51 + 24);
    }
  }

  else
  {
    if (v5)
    {
      v6 = v51;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v51 >> 32;
    }

    else
    {
      v7 = BYTE6(v52);
    }
  }

  v8 = sub_22FF5B7EC(v6, v7, v51, v52);
  v9 = *v2;
  v10 = v2[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v10);
      v13 = BYTE6(v10);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v11 != 2)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v14 = v9 + 16;
  v9 = *(v9 + 16);
  v12 = *(v14 + 8);
  v13 = v12 - v9;
  if (__OFSUB__(v12, v9))
  {
    __break(1u);
LABEL_19:
    if (__OFSUB__(HIDWORD(v9), v9))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
    }

    v13 = HIDWORD(v9) - v9;
    v12 = v9 >> 32;
  }

LABEL_22:
  if (__OFADD__(v12, v8))
  {
    goto LABEL_82;
  }

  if (v12 + v8 < v12)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v12 < 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v15 = sub_22FFB0748();
  MEMORY[0x28223BE20](v15);
  v36[2] = v13;
  v36[3] = v8;
  v37 = &v51;
  sub_22FF5AF38(sub_22FF5C7B0, v36);
  v16 = *(&v48 + 1);
  v17 = v48;
  if (v50 != v8)
  {
    v30 = 0;
    v31 = *v2;
    v32 = v2[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v30 = *(v31 + 16);
      }
    }

    else if (v33)
    {
      v30 = v31;
    }

    v22 = __OFADD__(v30, v13);
    v34 = v30 + v13;
    if (!v22)
    {
      if (!__OFADD__(v34, v50))
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v35 = *(v31 + 24);
          }

          else
          {
            v35 = 0;
          }
        }

        else if (v33)
        {
          v35 = v31 >> 32;
        }

        else
        {
          v35 = BYTE6(v32);
        }

        if (v35 >= v34 + v50)
        {
          sub_22FFB0758();
          return sub_22FEA55AC(v17, v16);
        }

        goto LABEL_87;
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  LOBYTE(v18) = 0;
  v19 = *(&v48 + 1) >> 62;
  v20 = v49;
  v42 = v48 >> 32;
  v43 = BYTE14(v48);
  *(&v48 + 7) = 0;
  *&v48 = 0;
  v40 = v17 >> 16;
  v41 = v17 >> 8;
  v39 = v17 >> 24;
  v38 = HIDWORD(v17);
  while (v19 <= 1)
  {
    v21 = v17;
    if (!v19)
    {
      goto LABEL_34;
    }

LABEL_32:
    if (v20 == v21)
    {
      goto LABEL_72;
    }

LABEL_35:
    v22 = __OFSUB__(v20--, 1);
    if (v22)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_89;
      }

      if (v20 < *(v17 + 16))
      {
        goto LABEL_76;
      }

      if (v20 >= *(v17 + 24))
      {
        goto LABEL_79;
      }

      v24 = sub_22FFB0588();
      if (!v24)
      {
        goto LABEL_91;
      }

      v25 = v24;
      v26 = sub_22FFB05B8();
      v27 = v20 - v26;
      if (__OFSUB__(v20, v26))
      {
        goto LABEL_81;
      }

      goto LABEL_51;
    }

    if (v19)
    {
      if (v20 < v17 || v20 >= v42)
      {
        goto LABEL_78;
      }

      v28 = sub_22FFB0588();
      if (!v28)
      {
        goto LABEL_90;
      }

      v25 = v28;
      v29 = sub_22FFB05B8();
      v27 = v20 - v29;
      if (__OFSUB__(v20, v29))
      {
        goto LABEL_80;
      }

LABEL_51:
      v23 = *(v25 + v27);
      goto LABEL_52;
    }

    if (v20 >= v43)
    {
      goto LABEL_77;
    }

    LOBYTE(v44[0]) = v17;
    BYTE1(v44[0]) = v41;
    BYTE2(v44[0]) = v40;
    BYTE3(v44[0]) = v39;
    BYTE4(v44[0]) = v38;
    BYTE5(v44[0]) = BYTE5(v17);
    BYTE6(v44[0]) = BYTE6(v17);
    BYTE7(v44[0]) = HIBYTE(v17);
    WORD4(v44[0]) = v16;
    BYTE10(v44[0]) = BYTE2(v16);
    BYTE11(v44[0]) = BYTE3(v16);
    BYTE12(v44[0]) = BYTE4(v16);
    BYTE13(v44[0]) = BYTE5(v16);
    v23 = *(v44 + v20);
LABEL_52:
    *(&v48 + v18) = v23;
    v18 = v18 + 1;
    if ((v18 >> 8))
    {
      goto LABEL_75;
    }

    if (v18 == 14)
    {
      *&v44[0] = v48;
      *(v44 + 6) = *(&v48 + 6);
      sub_22FFB0778();
      LOBYTE(v18) = 0;
    }
  }

  if (v19 == 2)
  {
    v21 = *(v17 + 16);
    goto LABEL_32;
  }

LABEL_34:
  if (v20)
  {
    goto LABEL_35;
  }

LABEL_72:
  if (v18)
  {
    *&v44[0] = v48;
    *(v44 + 6) = *(&v48 + 6);
    sub_22FFB0778();
  }

  return sub_22FEA55AC(v17, v16);
}

unint64_t sub_22FF5BE00(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v44[0] = a1;
  v44[1] = a2;
  v42 = a1;
  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v45, &v47);
    v5 = __swift_project_boxed_opaque_existential_1(&v47, v48);
    MEMORY[0x28223BE20](v5);
    v39 = v2;
    sub_22FFB0618();
    return __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_22FEC4CC8(v45);
  result = sub_22FF5C3A4(a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_8:
  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v10 != 2)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  v13 = v8 + 16;
  v8 = *(v8 + 16);
  v11 = *(v13 + 8);
  v12 = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
  }

LABEL_18:
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_74;
  }

  if ((v11 + v7) < v11)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v14 = sub_22FFB0748();
  MEMORY[0x28223BE20](v14);
  v38[2] = v12;
  v38[3] = v7;
  v39 = v44;
  v15 = sub_22FF5B1E8(sub_22FF5C6BC, v38);
  v19 = v16;
  if (v18 != v7)
  {
    v31 = 0;
    v32 = *v2;
    v33 = v2[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v31 = *(v32 + 16);
      }
    }

    else if (v34)
    {
      v31 = v32;
    }

    v35 = __OFADD__(v31, v12);
    v36 = v31 + v12;
    if (!v35)
    {
      if (!__OFADD__(v36, v18))
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v37 = *(v32 + 24);
          }

          else
          {
            v37 = 0;
          }
        }

        else if (v34)
        {
          v37 = v32 >> 32;
        }

        else
        {
          v37 = BYTE6(v33);
        }

        if (v37 >= v36 + v18)
        {
          sub_22FFB0758();
        }

        goto LABEL_78;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v20 = v15;
  v21 = v17;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  *(v45 + 7) = 0;
  *&v45[0] = 0;
  if (4 * v22 != v17 >> 14)
  {
    LOBYTE(v23) = 0;
    v24 = (v15 >> 59) & 1;
    if ((v16 & 0x1000000000000000) == 0)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 4 << v24;
    v40 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v41 = v16 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = v21 & 0xC;
      v27 = v21;
      if (v26 == v25)
      {
        v27 = sub_22FF5B770(v21, v20, v19);
      }

      v28 = v27 >> 16;
      if (v27 >> 16 >= v22)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v7 = sub_22FFB1578();
        goto LABEL_8;
      }

      if ((v19 & 0x1000000000000000) != 0)
      {
        v30 = sub_22FFB15B8();
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else if ((v19 & 0x2000000000000000) != 0)
      {
        *&v47 = v20;
        *(&v47 + 1) = v41;
        v30 = *(&v47 + v28);
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v29 = v40;
        if ((v20 & 0x1000000000000000) == 0)
        {
          v29 = sub_22FFB19F8();
        }

        v30 = *(v29 + v28);
        if (v26 != v25)
        {
LABEL_40:
          if ((v19 & 0x1000000000000000) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        }
      }

      v21 = sub_22FF5B770(v21, v20, v19);
      if ((v19 & 0x1000000000000000) != 0)
      {
LABEL_44:
        if (v22 <= v21 >> 16)
        {
          goto LABEL_71;
        }

        v21 = sub_22FFB1588();
        goto LABEL_46;
      }

LABEL_41:
      v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
      *(v45 + v23) = v30;
      v23 = v23 + 1;
      if ((v23 >> 8))
      {
        goto LABEL_70;
      }

      if (v23 == 14)
      {
        *&v47 = *&v45[0];
        *(&v47 + 6) = *(v45 + 6);
        sub_22FFB0778();
        LOBYTE(v23) = 0;
      }

      if (4 * v22 == v21 >> 14)
      {
        if (v23)
        {
          *&v47 = *&v45[0];
          *(&v47 + 6) = *(v45 + 6);
          sub_22FFB0778();
        }
      }
    }
  }
}

uint64_t sub_22FF5C2CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  if (!result)
  {
    v12 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        goto LABEL_12;
      }

      v13 = *(a4 + 24);
    }

    else
    {
      if (!v12)
      {
        v13 = BYTE6(a5);
LABEL_12:
        *a6 = a4;
        a6[1] = a5;
        a6[2] = v13;
        a6[3] = 0;
        return result;
      }

      v13 = a4 >> 32;
    }

    result = sub_22FEA5608(a4, a5);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result - a3;
  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
  }

  else
  {
    sub_22FEA5608(a4, a5);
    result = sub_22FF8FC7C(a6, a3 + v10, v11, a4, a5);
    a6[3] = result;
  }

  return result;
}

unint64_t sub_22FF5C3A4(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_22FFB19F8();
    }

    sub_22FFB0778();
  }

  return v2 >> 60;
}

BOOL _s16CloudAttestation3SEPO8SealDataO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) != 0 && v2 == v5)
    {
      sub_22FF5C5B8(*a2, a2[1], v7, sub_22FEA5608);
      sub_22FF5C5B8(v2, v3, v4, sub_22FEA5608);
      v9 = v4 & 0xDFFFFFFFFFFFFFFFLL;
      v11 = v7 & 0xDFFFFFFFFFFFFFFFLL;
      v8 = v3;
      v10 = v6;
      goto LABEL_7;
    }

LABEL_8:
    sub_22FF5C5B8(*a2, a2[1], v7, sub_22FEA5608);
    sub_22FF5C5B8(v2, v3, v4, sub_22FEA5608);
    v12 = 0;
    goto LABEL_9;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    goto LABEL_8;
  }

  sub_22FF5C5B8(*a2, a2[1], v7, sub_22FEA5608);
  sub_22FF5C5B8(v2, v3, v4, sub_22FEA5608);
  v8 = v2;
  v9 = v3;
  v10 = v5;
  v11 = v6;
LABEL_7:
  v12 = sub_22FEC3DC8(v8, v9, v10, v11);
LABEL_9:
  sub_22FF5C5B8(v2, v3, v4, sub_22FEA55AC);
  sub_22FF5C5B8(v5, v6, v7, sub_22FEA55AC);
  return v12;
}

uint64_t sub_22FF5C5B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    return a4(a2, a3 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return a4(a1, a2);
  }
}

uint64_t sub_22FF5C5E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
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

uint64_t sub_22FF5C634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_22FF5C6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22FF5C714(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t sub_22FF5C714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_22FFB19C8();
  if ((v5 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22FF5C7EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22FF5C844@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SEP.SealedHash.init(digest:flags:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_22FFB13F8();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v15 = 0;
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v15 = HIDWORD(a1) - a1;
LABEL_10:
  if (sub_22FFB13A8() >= v15)
  {
    *a4 = v13;
    if ((v13 & 2) != 0)
    {
      sub_22FFB13E8();
      sub_22FEA5608(a1, a2);
      sub_22FED5478(a1, a2, v12);
      sub_22FEA55AC(a1, a2);
      sub_22FEA55AC(a1, a2);
      v20 = type metadata accessor for SEP.SealedHash(0);
      (*(v9 + 32))(&a4[*(v20 + 20)], v12, v8);
    }

    else
    {
      v19 = &a4[*(type metadata accessor for SEP.SealedHash(0) + 20)];
      *v19 = a1;
      v19[1] = a2;
    }

    type metadata accessor for SEP.SealedHash.Value(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_22FF5FE1C();
    swift_allocError();
    *v18 = 1;
    *(v18 + 4) = 1;
    swift_willThrow();
    return sub_22FEA55AC(a1, a2);
  }
}

uint64_t SEP.SealedHash.Flags.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

uint64_t SEP.SealedHash.init(from:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a3;
  v8 = &a4[*(type metadata accessor for SEP.SealedHash(0) + 20)];
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for SEP.SealedHash.Value(0);
  result = swift_storeEnumTagMultiPayload();
  *a4 = v7;
  return result;
}

uint64_t SEP.SealedHash.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEP.SealedHash(0) + 20);

  return sub_22FF5FE70(v3, a1);
}

uint64_t SEP.SealedHash.data.getter()
{
  v1 = sub_22FFB13B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFB13F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEP.SealedHash.Value(0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SEP.SealedHash(0);
  sub_22FF5FE70(v0 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload())
  {
    return *v11;
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_22FFB13D8();
  v18 = v1;
  v19 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_22FFB0618();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v15 = v16[1];
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

uint64_t sub_22FF5CE54()
{
  v1 = sub_22FFB13B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFB13F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEP.SealedHash.Value(0);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF5FE70(v0, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    return *v11;
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_22FFB13D8();
  v17 = v1;
  v18 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_22FFB0618();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v14 = v15[1];
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_22FF5D114@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for SEP.SealedHash.Value(0);
  MEMORY[0x28223BE20](v5);
  v51 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22FFB13F8();
  v7 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 2;
  v9 = *(type metadata accessor for SEP.SealedHash(0) + 20);
  sub_22FFB13E8();
  v56 = v5;
  swift_storeEnumTagMultiPayload();
  v49 = *(a1 + 16);
  if (!v49)
  {

    sub_22FF5FE1C();
    swift_allocError();
    *v40 = 2;
    *(v40 + 4) = 1;
    swift_willThrow();
    return sub_22FED82C8(a2, type metadata accessor for SEP.SealedHash);
  }

  v44[1] = v2;
  v10 = 0;
  v54 = (v7 + 32);
  v48 = a2;
  v11 = v51;
  v50 = a1;
  do
  {
    if (v10 >= *(a1 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v66 = MEMORY[0x277CC9318];
    v67 = MEMORY[0x277CC9300];
    v55 = *(a1 + 16 * v10 + 32);
    v65 = v55;
    v12 = __swift_project_boxed_opaque_existential_1(&v65, MEMORY[0x277CC9318]);
    v14 = *v12;
    v13 = v12[1];
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_23;
      }

      v18 = *(v14 + 16);
      v19 = *(v14 + 24);
      sub_22FEA5608(v55, *(&v55 + 1));
      v20 = sub_22FFB0588();
      if (v20)
      {
        v21 = v20;
        v22 = sub_22FFB05B8();
        if (__OFSUB__(v18, v22))
        {
          goto LABEL_72;
        }

        v23 = (v18 - v22 + v21);
        v24 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v23 = 0;
        v24 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_69;
        }
      }

      v36 = sub_22FFB05A8();
      v14 = 0;
      if (v36 >= v24)
      {
        v16 = v24;
      }

      else
      {
        v16 = v36;
      }

      v13 = 0xC000000000000000;
      if (!v23)
      {
        a2 = v48;
        v11 = v51;
        goto LABEL_24;
      }

      a2 = v48;
      v11 = v51;
      if (!v16)
      {
        goto LABEL_24;
      }

      if (v16 < 15)
      {
        memset(__dst, 0, sizeof(__dst));
        v64 = v16;
        memcpy(__dst, v23, v16);
        v14 = *__dst;
        v16 = v64;
        v13 = v46 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v64 << 48);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v46 = v13;
        goto LABEL_25;
      }

LABEL_54:
      sub_22FFB05D8();
      swift_allocObject();
      v17 = sub_22FFB0578();
      if (v16 < 0x7FFFFFFF)
      {
        goto LABEL_55;
      }

      sub_22FFB0738();
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = v16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v39 = *(v14 + 16);
      v38 = *(v14 + 24);
      v16 = v38 - v39;
      if (__OFSUB__(v38, v39))
      {
        goto LABEL_76;
      }

      v13 = v17 | 0x8000000000000000;
      goto LABEL_25;
    }

    if (v15)
    {
      v25 = (v14 >> 32) - v14;
      if (v14 >> 32 < v14)
      {
        goto LABEL_68;
      }

      sub_22FEA5608(v55, *(&v55 + 1));
      v26 = sub_22FFB0588();
      if (v26)
      {
        v27 = v26;
        v28 = sub_22FFB05B8();
        if (__OFSUB__(v14, v28))
        {
          goto LABEL_73;
        }

        v29 = (v14 - v28 + v27);
      }

      else
      {
        v29 = 0;
      }

      v37 = sub_22FFB05A8();
      v14 = 0;
      if (v37 >= v25)
      {
        v16 = v25;
      }

      else
      {
        v16 = v37;
      }

      v13 = 0xC000000000000000;
      v11 = v51;
      if (!v29)
      {
        a2 = v48;
        goto LABEL_24;
      }

      a2 = v48;
      if (!v16)
      {
        goto LABEL_24;
      }

      if (v16 < 15)
      {
        memset(__dst, 0, sizeof(__dst));
        v64 = v16;
        memcpy(__dst, v29, v16);
        v14 = *__dst;
        v16 = v64;
        v13 = v45 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v64 << 48);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v45 = v13;
        goto LABEL_25;
      }

      goto LABEL_54;
    }

    __src = *v12;
    v58 = v13;
    v59 = BYTE2(v13);
    v60 = BYTE3(v13);
    v61 = BYTE4(v13);
    v16 = BYTE6(v13);
    v62 = BYTE5(v13);
    if (!BYTE6(v13))
    {
      v14 = 0;
      v13 = 0xC000000000000000;
LABEL_23:
      sub_22FEA5608(v55, *(&v55 + 1));
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v16 = 0;
      goto LABEL_25;
    }

    if (BYTE6(v13) > 0xEuLL)
    {
      sub_22FFB05D8();
      swift_allocObject();
      sub_22FEA5608(v55, *(&v55 + 1));
      v17 = sub_22FFB0578();
LABEL_55:
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v13 = v17 | 0x4000000000000000;
      v14 = v16 << 32;
      goto LABEL_25;
    }

    memset(__dst, 0, sizeof(__dst));
    v64 = BYTE6(v13);
    memcpy(__dst, &__src, BYTE6(v13));
    v14 = *__dst;
    v16 = v64;
    v13 = v47 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v64 << 48);
    sub_22FEA5608(v55, *(&v55 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v65);
    v47 = v13;
LABEL_25:
    if (sub_22FFB13A8() < v16)
    {
      v42 = 1;
LABEL_65:
      sub_22FF5FE1C();
      swift_allocError();
      *v43 = v42;
      *(v43 + 4) = 1;
      swift_willThrow();
      sub_22FED82C8(a2, type metadata accessor for SEP.SealedHash);
      sub_22FEA55AC(v14, v13);
    }

    sub_22FF5FE70(&a2[v9], v11);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22FED82C8(v11, type metadata accessor for SEP.SealedHash.Value);
      v42 = 0;
      goto LABEL_65;
    }

    v30 = v53;
    v31 = *v54;
    v32 = v52;
    (*v54)(v52, v11, v53);
    v33 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v33 != 2)
      {
        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
        *&v65 = 0;
        *(&v65 + 6) = 0;
LABEL_4:
        sub_22FFB1358();
        goto LABEL_5;
      }

      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      sub_22FEA5608(v14, v13);
      if (sub_22FFB0588() && __OFSUB__(v35, sub_22FFB05B8()))
      {
        goto LABEL_74;
      }

      if (__OFSUB__(v34, v35))
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (!v33)
      {
        *&v65 = v14;
        WORD4(v65) = v13;
        BYTE10(v65) = BYTE2(v13);
        BYTE11(v65) = BYTE3(v13);
        BYTE12(v65) = BYTE4(v13);
        BYTE13(v65) = BYTE5(v13);
        *&v55 = v10;
        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
        v10 = v55;
        goto LABEL_4;
      }

      if (v14 >> 32 < v14)
      {
        goto LABEL_70;
      }

      sub_22FEA5608(v14, v13);
      if (sub_22FFB0588() && __OFSUB__(v14, sub_22FFB05B8()))
      {
        goto LABEL_75;
      }
    }

    sub_22FFB05A8();
    sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v32 = v52;
    v30 = v53;
    sub_22FFB1358();
    sub_22FEA55AC(v14, v13);
    a2 = v48;
    v11 = v51;
LABEL_5:
    ++v10;
    sub_22FED82C8(&a2[v9], type metadata accessor for SEP.SealedHash.Value);
    v31(&a2[v9], v32, v30);
    swift_storeEnumTagMultiPayload();
    sub_22FEA55AC(v14, v13);
    a1 = v50;
  }

  while (v49 != v10);
}

uint64_t SEP.SealedHash.init<A, B>(ratchet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v79 = a5;
  v88 = a4;
  v67 = a1;
  v89[2] = *MEMORY[0x277D85DE8];
  v68 = type metadata accessor for SEP.SealedHash.Value(0);
  MEMORY[0x28223BE20](v68);
  v77 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FFB13F8();
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v78 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22FFB1888();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v64 - v17;
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v64 - v23;
  *a6 = 2;
  v25 = *(type metadata accessor for SEP.SealedHash(0) + 20);
  sub_22FFB13E8();
  v86 = v25;
  v87 = a6;
  v26 = v81;
  swift_storeEnumTagMultiPayload();
  v82 = v19;
  (*(v19 + 16))(v21, v67, a2);
  sub_22FFB1608();
  v27 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22FFB18A8();
  v28 = *(v26 + 48);
  v80 = v18;
  v74 = v28;
  v75 = v26 + 48;
  if (v28(v18, 1, a3) != 1)
  {
    v30 = v83;
    v73 = v24;
    v65 = a2;
    v32 = *(v26 + 32);
    v31 = v26 + 32;
    v71 = (v31 - 24);
    v72 = v32;
    v84 += 4;
    v33 = v68;
    v81 = v31;
    v34 = v80;
    v70 = v27;
    v69 = a3;
    while (1)
    {
      v42 = v78;
      v72(v78, v34, a3);
      v43 = sub_22FEC4190(v42, a3, v79);
      v45 = v44;
      (*v71)(v42, a3);
      v46 = v45 >> 62;
      v88 = v43;
      if ((v45 >> 62) > 1)
      {
        v47 = v33;
        if (v46 == 2)
        {
          v50 = *(v43 + 16);
          v49 = *(v43 + 24);
          v48 = v49 - v50;
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        v47 = v33;
        if (v46)
        {
          if (__OFSUB__(HIDWORD(v43), v43))
          {
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
          }

          v48 = HIDWORD(v43) - v43;
        }

        else
        {
          v48 = BYTE6(v45);
        }
      }

      if (sub_22FFB13A8() < v48)
      {
        v61 = 1;
        v53 = v82;
LABEL_39:
        sub_22FF5FE1C();
        swift_allocError();
        *v62 = v61;
        *(v62 + 4) = 1;
        swift_willThrow();
        sub_22FEA55AC(v88, v45);
        (*(v53 + 8))(v67, v65);
        (*(v66 + 8))(v73, v27);
        return sub_22FED82C8(v87, type metadata accessor for SEP.SealedHash);
      }

      v51 = v77;
      sub_22FF5FE70(&v87[v86], v77);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v53 = v82;
      if (EnumCaseMultiPayload)
      {
        sub_22FED82C8(v51, type metadata accessor for SEP.SealedHash.Value);
        v61 = 0;
        v27 = v70;
        goto LABEL_39;
      }

      v54 = *v84;
      (*v84)(v85, v51, v30);
      v83 = v54;
      if (v46 > 1)
      {
        if (v46 == 2)
        {
          v55 = *(v88 + 16);
          v56 = *(v88 + 24);

          v57 = v30;
          if (sub_22FFB0588())
          {
            v58 = sub_22FFB05B8();
            v36 = v85;
            if (__OFSUB__(v55, v58))
            {
              goto LABEL_46;
            }

            if (__OFSUB__(v56, v55))
            {
              goto LABEL_45;
            }
          }

          else
          {
            v36 = v85;
            if (__OFSUB__(v56, v55))
            {
              goto LABEL_45;
            }
          }

          goto LABEL_36;
        }

        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
        memset(v89, 0, 14);
        v35 = v30;
        v36 = v85;
        sub_22FFB1358();
        v37 = v87;
        v38 = v88;
        v39 = v47;
      }

      else
      {
        if (v46)
        {
          v59 = v88;
          if (v88 >> 32 < v88)
          {
            goto LABEL_44;
          }

          v57 = v30;

          if (sub_22FFB0588())
          {
            v60 = sub_22FFB05B8();
            v36 = v85;
            if (__OFSUB__(v59, v60))
            {
              goto LABEL_47;
            }
          }

          else
          {
            v36 = v85;
          }

LABEL_36:
          sub_22FFB05A8();
          sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
          v35 = v57;
          sub_22FFB1358();
          v38 = v88;
          sub_22FEA55AC(v88, v45);
          v37 = v87;
          v53 = v82;
          v39 = v68;
          goto LABEL_6;
        }

        v37 = v87;
        v38 = v88;
        v39 = v47;
        v89[0] = v88;
        LOWORD(v89[1]) = v45;
        BYTE2(v89[1]) = BYTE2(v45);
        BYTE3(v89[1]) = BYTE3(v45);
        BYTE4(v89[1]) = BYTE4(v45);
        BYTE5(v89[1]) = BYTE5(v45);
        sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
        v35 = v30;
        v36 = v85;
        sub_22FFB1358();
      }

      sub_22FEA55AC(v38, v45);
LABEL_6:
      v40 = v86;
      sub_22FED82C8(&v37[v86], type metadata accessor for SEP.SealedHash.Value);
      v41 = v36;
      v30 = v35;
      v83(&v37[v40], v41, v35);
      v33 = v39;
      swift_storeEnumTagMultiPayload();
      sub_22FEA55AC(v38, v45);
      v34 = v80;
      v27 = v70;
      sub_22FFB18A8();
      a3 = v69;
      if (v74(v34, 1, v69) == 1)
      {
        (*(v66 + 8))(v73, v27);
        return (*(v53 + 8))(v67, v65);
      }
    }
  }

  (*(v66 + 8))(v24, AssociatedTypeWitness);
  sub_22FF5FE1C();
  swift_allocError();
  *v29 = 2;
  *(v29 + 4) = 1;
  swift_willThrow();
  (*(v82 + 8))(v67, a2);
  return sub_22FED82C8(v87, type metadata accessor for SEP.SealedHash);
}

uint64_t SEP.SealedHash.ratchet(digest:flags:)(uint64_t a1, unint64_t a2, char *a3)
{
  v8 = type metadata accessor for SEP.SealedHash.Value(0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FFB13F8();
  v32 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = a2 >> 62;
  v31 = v4;
  if ((a2 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v17 = HIDWORD(a1) - a1;
LABEL_10:
  if (sub_22FFB13A8() < v17)
  {
    sub_22FF5FE1C();
    swift_allocError();
    v21 = 1;
LABEL_16:
    *v20 = v21;
    *(v20 + 4) = 1;
    return swift_willThrow();
  }

  v22 = *v3;
  if ((*v3 & 6) != 2)
  {
LABEL_15:
    sub_22FF5FE1C();
    swift_allocError();
    v21 = 0;
    goto LABEL_16;
  }

  v30 = a1;
  v23 = v8;
  v24 = *(type metadata accessor for SEP.SealedHash(0) + 20);
  sub_22FF5FE70(&v3[v24], v10);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22FED82C8(v10, type metadata accessor for SEP.SealedHash.Value);
    goto LABEL_15;
  }

  v28[1] = v23;
  v29 = v24;
  v25 = *(v32 + 32);
  v25(v14, v10, v11);
  if ((v15 & 4) != 0)
  {
    *v3 = v22 | 4;
  }

  v26 = v30;
  sub_22FEA5608(v30, a2);
  sub_22FED5478(v26, a2, v14);
  sub_22FEA55AC(v26, a2);
  v27 = v29;
  sub_22FED82C8(&v3[v29], type metadata accessor for SEP.SealedHash.Value);
  v25(&v3[v27], v14, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SEP.SealedHash.init(entry:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_22FEA5608(v3, v4);
  SEP.SealedHash.init(digest:flags:)(v3, v4, &v8, a2);
  sub_22FEA55AC(v3, v4);
  sub_22FEA56EC(v5, v6);
}

uint64_t SEP.SealedHash.init<A>(entries:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = type metadata accessor for SEP.SealedHash(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22FF5EA44(sub_22FF5EA10, 0, a2, MEMORY[0x277CC9318], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v12);
  sub_22FF5D114(v13, v11);
  if (v4)
  {
    return (*(*(a2 - 1) + 8))(a1, a2);
  }

  sub_22FF5FF1C(v11, a4);
  v15[14] = 0;
  sub_22FFB1658();
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a4 = v15[15];
  return result;
}

uint64_t sub_22FF5EA10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_22FEA5608(v3, v2);
}

void *sub_22FF5EA44(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_22FFB1888();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_22FFB1628();
  v63 = sub_22FFB1A78();
  v58 = sub_22FFB1A88();
  sub_22FFB1A28();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_22FFB1608();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_22FFB18A8();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_22FFB1A68();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_22FFB18A8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_22FFB1A68();
      sub_22FFB18A8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

BOOL sub_22FF5F1CC(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_22FF5F1FC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_22FF5F228@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t SEP.SealedHash.Value.description.getter()
{
  v0 = sub_22FF5CE54();
  v2 = v1;
  v3 = sub_22FEB0B54(v0, v1);
  sub_22FEA55AC(v0, v2);
  return v3;
}

uint64_t sub_22FF5F350()
{
  v0 = sub_22FF5CE54();
  v2 = v1;
  v3 = sub_22FEB0B54(v0, v1);
  sub_22FEA55AC(v0, v2);
  return v3;
}

BOOL static SEP.SealedHash.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for SEP.SealedHash(0) + 20);

  return _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(&a1[v5], &a2[v5]);
}

uint64_t sub_22FF5F400(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return static SEP.SealedHash.Value.== infix(_:_:)(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

uint64_t SEP.SealedHash.Entry.digest.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t SEP.SealedHash.Entry.data.getter()
{
  v1 = *(v0 + 16);
  sub_22FEBF8F0(v1, *(v0 + 24));
  return v1;
}

uint64_t SEP.SealedHash.Entry.metadata.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t SEP.SealedHash.Entry.init<A>(data:flags:algorithm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v22 - v15;
  v23 = *a3;
  *(a7 + 56) = 0;
  v24 = a1;
  v25 = a2;
  sub_22FEB0E54();
  sub_22FFB1378();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_22FEC4190(v16, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
  v20 = v19;
  result = (*(v14 + 8))(v16, AssociatedTypeWitness);
  *a7 = v18;
  *(a7 + 8) = v20;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = v23;
  *(a7 + 40) = a4;
  *(a7 + 48) = a6;
  return result;
}

double SEP.SealedHash.Entry.init<A>(digest:flags:algorithm:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  *(a6 + 56) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_22FEC4190(a1, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
  v15 = v14;
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  *a6 = v13;
  *(a6 + 8) = v15;
  result = 0.0;
  *(a6 + 16) = xmmword_22FFB2D00;
  *(a6 + 32) = v10;
  *(a6 + 40) = a3;
  *(a6 + 48) = a5;
  return result;
}

double SEP.SealedHash.Entry.init<A>(digest:flags:algorithm:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *(a6 + 48) = a5;
  *(a6 + 56) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  result = 0.0;
  *(a6 + 16) = xmmword_22FFB2D00;
  *(a6 + 32) = v6;
  *(a6 + 40) = a4;
  return result;
}

BOOL static SEP.SealedHash.Error.== infix(_:_:)(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 4);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 4);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 4) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_22FF5F838(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_22FF5F89C(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      sub_22FFB13F8();
      sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return sub_22FFB1358();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB13B8();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FFB13F8();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEP.SealedHash.Value(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - v15);
  sub_22FF5FE70(a1, &v31 - v15);
  if (swift_getEnumCaseMultiPayload())
  {
    v17 = *v16;
    v18 = v16[1];
  }

  else
  {
    v19 = *(v34 + 32);
    v31 = a2;
    v20 = v33;
    v19(v10, v16, v33);
    sub_22FFB13D8();
    v38 = v4;
    v39 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v22 = v32;
    (*(v32 + 16))(boxed_opaque_existential_1, v6, v4);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_22FFB0618();
    (*(v22 + 8))(v6, v4);
    v23 = v20;
    a2 = v31;
    (*(v34 + 8))(v10, v23);
    v17 = v35;
    v18 = v36;
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  sub_22FF5FE70(a2, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    v24 = *v14;
    v25 = v14[1];
  }

  else
  {
    v26 = v34;
    (*(v34 + 32))(v10, v14, v33);
    sub_22FFB13D8();
    v38 = v4;
    v39 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
    v27 = __swift_allocate_boxed_opaque_existential_1(v37);
    v28 = v32;
    (*(v32 + 16))(v27, v6, v4);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_22FFB0618();
    (*(v28 + 8))(v6, v4);
    (*(v26 + 8))(v10, v33);
    v24 = v35;
    v25 = v36;
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v29 = sub_22FEC3DC8(v17, v18, v24, v25);
  sub_22FEA55AC(v24, v25);
  sub_22FEA55AC(v17, v18);
  return v29;
}

unint64_t sub_22FF5FE1C()
{
  result = qword_27DAF36D8;
  if (!qword_27DAF36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36D8);
  }

  return result;
}

uint64_t sub_22FF5FE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEP.SealedHash.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF5FED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF5FF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEP.SealedHash(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FF5FF84()
{
  result = qword_27DAF36E0;
  if (!qword_27DAF36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36E0);
  }

  return result;
}

unint64_t sub_22FF5FFDC()
{
  result = qword_27DAF36E8;
  if (!qword_27DAF36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36E8);
  }

  return result;
}

unint64_t sub_22FF60034()
{
  result = qword_27DAF36F0;
  if (!qword_27DAF36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36F0);
  }

  return result;
}

unint64_t sub_22FF6008C()
{
  result = qword_27DAF36F8;
  if (!qword_27DAF36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36F8);
  }

  return result;
}

uint64_t sub_22FF60108(uint64_t a1)
{
  result = type metadata accessor for SEP.SealedHash.Value(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s10SealedHashV5FlagsVwet(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t _s10SealedHashV5FlagsVwst(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void sub_22FF60298(uint64_t a1)
{
  sub_22FF6030C();
  if (v1 <= 0x3F)
  {
    sub_22FF60354();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22FF6030C()
{
  if (!qword_28148F190)
  {
    v0 = sub_22FFB13F8();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F190);
    }
  }
}

uint64_t sub_22FF60354()
{
  result = qword_281491360;
  if (!qword_281491360)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_281491360);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22FF603C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FF60408(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t _s10SealedHashV5ErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10SealedHashV5ErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_22FF604B4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FF604D0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_22FF60504()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A98);
  __swift_project_value_buffer(v0, qword_27DB05A98);
  return sub_22FFB12E8();
}

id SWTransparencyLog.init(environment:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  if (MEMORY[0x277D73580])
  {
    result = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    result = 0;
  }

  *(a2 + 8) = result;
  return result;
}

uint64_t SWTransparencyLog.proveInclusion(of:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3700, &qword_22FFBE8B8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *(type metadata accessor for TransparencyLogProofs(0) - 8);
  *(v2 + 120) = swift_task_alloc();
  sub_22FFB0FE8();
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse(0);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest(0);
  *(v2 + 160) = swift_task_alloc();
  v3 = sub_22FFB0658();
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();
  v4 = sub_22FFB04A8();
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  v5 = sub_22FFB06B8();
  *(v2 + 216) = v5;
  *(v2 + 224) = *(v5 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v6 = sub_22FFB0818();
  *(v2 + 272) = v6;
  *(v2 + 280) = *(v6 - 8);
  v7 = swift_task_alloc();
  *(v2 + 394) = *v1;
  v8 = *(v1 + 8);
  *(v2 + 288) = v7;
  *(v2 + 296) = v8;

  return MEMORY[0x2822009F8](sub_22FF60970, 0, 0);
}

uint64_t sub_22FF60970()
{
  v88 = v0;
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 304) = v1;
  if (!v1)
  {

    v28 = *(v0 + 8);
    v29 = MEMORY[0x277D84F90];

    return v28(v29);
  }

  if (qword_27DAF1490 != -1)
  {
    goto LABEL_36;
  }

LABEL_3:
  v2 = sub_22FFB12F8();
  *(v0 + 312) = __swift_project_value_buffer(v2, qword_27DB05A98);

  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1848();

  if (os_log_type_enabled(v3, v4))
  {
    v72 = v4;
    log = v3;
    v5 = *(v0 + 280);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v86 = v70;
    buf = v7;
    *v7 = 136446210;
    v87 = MEMORY[0x277D84F90];
    sub_22FECDAB4(0, v1, 0);
    v8 = 0;
    v9 = v87;
    v74 = v6 + 32;
    v75 = v1;
    while (1)
    {
      if (v8 == v1)
      {
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_3;
      }

      v10 = (v74 + 16 * v8);
      v11 = *v10;
      v78 = v9;
      v81 = v10[1];
      v12 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v12 == 2)
        {
LABEL_10:
          sub_22FEA5608(v11, v81);
        }
      }

      else if (v12)
      {
        goto LABEL_10;
      }

      sub_22FEA5608(v11, v81);
      v76 = v11;
      sub_22FFB0828();
      sub_22FF63904(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
      sub_22FFB18A8();
      v13 = MEMORY[0x277D84F90];
      if ((*(v0 + 393) & 1) == 0)
      {
        do
        {
          v20 = *(v0 + 392);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_22FFB2D10;
          *(v21 + 56) = MEMORY[0x277D84B78];
          *(v21 + 64) = MEMORY[0x277D84BC0];
          *(v21 + 32) = v20;
          v22 = sub_22FFB14D8();
          v24 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_22FEC2E8C(0, *(v13 + 2) + 1, 1, v13);
          }

          v26 = *(v13 + 2);
          v25 = *(v13 + 3);
          if (v26 >= v25 >> 1)
          {
            v13 = sub_22FEC2E8C((v25 > 1), v26 + 1, 1, v13);
          }

          *(v13 + 2) = v26 + 1;
          v27 = &v13[16 * v26];
          *(v27 + 4) = v22;
          *(v27 + 5) = v24;
          sub_22FFB18A8();
        }

        while (*(v0 + 393) != 1);
      }

      (*(v5 + 8))(*(v0 + 288), *(v0 + 272));
      *(v0 + 72) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
      sub_22FEB0F00();
      v14 = sub_22FFB1458();
      v16 = v15;
      sub_22FEA55AC(v76, v81);

      v9 = v78;
      v87 = v78;
      v18 = *(v78 + 16);
      v17 = *(v78 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22FECDAB4((v17 > 1), v18 + 1, 1);
        v9 = v87;
      }

      ++v8;
      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v1 = v75;
      if (v8 == v75)
      {
        v31 = MEMORY[0x23190DEA0](v9, MEMORY[0x277D837D0]);
        v33 = v32;

        v34 = sub_22FF9E448(v31, v33, &v86);

        *(buf + 4) = v34;
        _os_log_impl(&dword_22FE99000, log, v72, "Fetching inclusion proofs for digests %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x23190EFF0](v70, -1, -1);
        MEMORY[0x23190EFF0](buf, -1, -1);

        goto LABEL_26;
      }
    }
  }

LABEL_26:
  v35 = sub_22FF625A0();
  v36 = *(v0 + 264);
  v37 = *(v0 + 216);
  v38 = *(v0 + 224);
  v39 = *(v0 + 256);
  LOBYTE(v87) = *(v0 + 394);
  v40 = v35;
  sub_22FEB20A0(0xD000000000000029, 0x800000022FFC9AE0, v36);
  v41 = type metadata accessor for SWTransparencyLog.Delegate();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtCFV16CloudAttestation17SWTransparencyLog14proveInclusionFzZT2ofGSaV10Foundation4Data__GSaVS_21TransparencyLogProofs_L_8Delegate_credential] = v40;
  *(v0 + 48) = v42;
  *(v0 + 56) = v41;
  v43 = v40;
  v44 = objc_msgSendSuper2((v0 + 48), sel_init);
  v45 = *(v38 + 16);
  v45(v39, v36, v37);
  v46 = sub_22FFB12D8();
  v47 = sub_22FFB1848();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 256);
  v51 = *(v0 + 216);
  v50 = *(v0 + 224);
  if (v48)
  {
    v52 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v87 = v82;
    *v52 = 136446210;
    sub_22FF63904(&qword_27DAF3728, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v77 = v47;
    v53 = v44;
    v54 = sub_22FFB1BA8();
    v84 = v45;
    v56 = v55;
    v79 = v43;
    v57 = *(v50 + 8);
    v57(v49, v51);
    v58 = v54;
    v44 = v53;
    v59 = sub_22FF9E448(v58, v56, &v87);
    v45 = v84;

    *(v52 + 4) = v59;
    _os_log_impl(&dword_22FE99000, v46, v77, "Using authenticating transparency log url: %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x23190EFF0](v82, -1, -1);
    MEMORY[0x23190EFF0](v52, -1, -1);
  }

  else
  {

    v57 = *(v50 + 8);
    v57(v49, v51);
  }

  *(v0 + 328) = v45;
  *(v0 + 336) = v44;
  *(v0 + 320) = v57;
  v83 = *(v0 + 296);
  v85 = v44;
  v80 = *(v0 + 394);
  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  v63 = *(v0 + 80);
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x800000022FFCB370;
  (*(v60 + 104))(v61, *MEMORY[0x277CC91D8], v62);
  sub_22FEB2CAC();
  sub_22FFB0698();
  (*(v60 + 8))(v61, v62);
  sub_22FFB0478();
  sub_22FFB0468();
  sub_22FFB0498();
  v64 = swift_task_alloc();
  *(v64 + 16) = v63;
  *(v64 + 24) = v80;
  *(v64 + 32) = v83;
  sub_22FF63904(&unk_27DAF3710, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
  sub_22FFB11B8();

  sub_22FFB1178();
  sub_22FFB0488();
  if (v85)
  {
    v65 = objc_opt_self();
    swift_unknownObjectRetain();
    v66 = [v65 defaultSessionConfiguration];
    v67 = [objc_opt_self() sessionWithConfiguration:v66 delegate:v85 delegateQueue:0];

    swift_unknownObjectRelease();
  }

  else
  {
    v67 = [objc_opt_self() sharedSession];
  }

  *(v0 + 344) = v67;
  v67;
  v68 = swift_task_alloc();
  *(v0 + 352) = v68;
  *v68 = v0;
  v68[1] = sub_22FF61714;
  v69 = *(v0 + 208);

  return MEMORY[0x28211ECF8](v69, 0);
}

uint64_t sub_22FF61714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 360) = a1;
  *(v5 + 368) = a2;
  *(v5 + 376) = a3;
  *(v5 + 384) = v3;

  if (v3)
  {
    v6 = sub_22FF623E0;
  }

  else
  {

    v6 = sub_22FF61834;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FF61834()
{
  v101 = v0;
  v1 = *(v0 + 376);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = v1;
  v4 = sub_22FFB1488();
  v5 = [v2 valueForHTTPHeaderField_];

  v6 = &unk_2788BA000;
  if (v5)
  {
    v98 = v2;
    v7 = *(v0 + 376);
    v8 = *(v0 + 328);
    v9 = *(v0 + 264);
    v10 = *(v0 + 232);
    v11 = *(v0 + 216);
    v97 = sub_22FFB1498();
    v13 = v12;

    v8(v10, v9, v11);
    v14 = v7;

    v15 = sub_22FFB12D8();
    v16 = sub_22FFB1848();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 376);
    v19 = *(v0 + 320);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    if (v17)
    {
      v95 = v16;
      v22 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v99[0] = v96;
      *v22 = 136446722;
      sub_22FF63904(&qword_27DAF3728, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      log = v15;
      v23 = sub_22FFB1BA8();
      v25 = v24;
      v19(v20, v21);
      v26 = sub_22FF9E448(v23, v25, v99);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2050;
      v6 = &unk_2788BA000;
      v2 = v98;
      v27 = [v98 statusCode];

      *(v22 + 14) = v27;
      *(v22 + 22) = 2082;
      v28 = sub_22FF9E448(v97, v13, v99);

      *(v22 + 24) = v28;
      _os_log_impl(&dword_22FE99000, log, v95, "Transparency server %{public}s responded with status %{public}ld, server hint %{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v96, -1, -1);
      MEMORY[0x23190EFF0](v22, -1, -1);
    }

    else
    {

      v19(v20, v21);
      v2 = v98;
      v6 = &unk_2788BA000;
    }
  }

  if ([v2 v6[458]] != 200)
  {
    v38 = *(v0 + 368);
    v37 = *(v0 + 376);
    v39 = *(v0 + 360);
    v34 = *(v0 + 336);
    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    *v40 = [v2 v6[458]];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v35 = v39;
    v36 = v38;
LABEL_9:
    sub_22FEA55AC(v35, v36);
    v41 = *(v0 + 344);
    if (v34)
    {
LABEL_10:
      [v41 finishTasksAndInvalidate];

      swift_unknownObjectRelease();
LABEL_27:
      v70 = *(v0 + 320);
      v71 = *(v0 + 264);
      v73 = *(v0 + 208);
      v72 = *(v0 + 216);
      v75 = *(v0 + 192);
      v74 = *(v0 + 200);
      sub_22FF63A78(*(v0 + 160), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
      (*(v74 + 8))(v73, v75);
      v70(v71, v72);

      v76 = *(v0 + 8);

      return v76();
    }

LABEL_26:

    goto LABEL_27;
  }

  v29 = *(v0 + 384);
  v30 = *(v0 + 360);
  v31 = *(v0 + 368);

  *(v0 + 32) = v30;
  *(v0 + 40) = v31;
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  sub_22FEA5608(v30, v31);
  sub_22FFB0FD8();
  sub_22FF63904(&qword_27DAF3720, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
  sub_22FFB1188();
  if (v29)
  {
    v32 = *(v0 + 368);
    v33 = *(v0 + 360);
    v34 = *(v0 + 336);

    v35 = v33;
    v36 = v32;
    goto LABEL_9;
  }

  v42 = *(v0 + 144);
  v43 = *(v42 + 8);
  if (v43 != 1 || *v42 != 1)
  {
    v58 = *(v0 + 88);
    *&v99[0] = *v42;
    BYTE8(v99[0]) = v43;
    sub_22FF631BC(v58);
    v59 = type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    v61 = v60;
    v62 = *(*(v59 - 8) + 48);
    v63 = v62(v58, 1, v59);
    v64 = *(v0 + 88);
    if (v63 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v62(v64, 1, v59) != 1)
      {
        sub_22FEAEA34(*(v0 + 88), &unk_27DAF3700, &qword_22FFBE8B8);
      }
    }

    else
    {
      sub_22FF63B40(*(v0 + 88), v61, type metadata accessor for TransparencyLogError);
    }

    v65 = *(v0 + 368);
    v66 = *(v0 + 376);
    v67 = *(v0 + 360);
    v68 = *(v0 + 336);
    v69 = *(v0 + 144);
    swift_willThrow();

    sub_22FEA55AC(v67, v65);
    sub_22FF63A78(v69, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
    v41 = *(v0 + 344);
    if (v68)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v44 = *(v0 + 304);
  v45 = *(v42 + 16);
  if (*(v45 + 16) != v44)
  {
    v77 = *(v0 + 368);
    v78 = *(v0 + 376);
    v79 = *(v0 + 360);
    v80 = *(v0 + 336);
    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    *v81 = v44;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_22FEA55AC(v79, v77);
    sub_22FF63A78(v42, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
    v41 = *(v0 + 344);
    if (v80)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v46 = *(v0 + 112);
  v47 = *(v0 + 96);
  *&v99[0] = MEMORY[0x277D84F90];
  result = sub_22FECDA70(0, v44, 0);
  v49 = 0;
  v50 = *&v99[0];
  v51 = v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  do
  {
    if (v49 == *(v0 + 304))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (v49 >= *(v45 + 16))
    {
      goto LABEL_39;
    }

    v52 = *(v0 + 120);
    v53 = *(v0 + 104);
    sub_22FF63AD8(v51 + *(v47 + 72) * v49, v53, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    sub_22FF629C0(v53, (v0 + 64), v52);
    sub_22FF63A78(*(v0 + 104), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    *&v99[0] = v50;
    v55 = *(v50 + 16);
    v54 = *(v50 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_22FECDA70((v54 > 1), v55 + 1, 1);
      v50 = *&v99[0];
    }

    ++v49;
    v56 = *(v0 + 304);
    v57 = *(v0 + 120);
    *(v50 + 16) = v55 + 1;
    result = sub_22FF63B40(v57, v50 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v55, type metadata accessor for TransparencyLogProofs);
  }

  while (v49 != v56);
  v82 = *(v0 + 368);
  v83 = *(v0 + 360);
  v84 = *(v0 + 336);
  v85 = *(v0 + 144);

  sub_22FEA55AC(v83, v82);
  sub_22FF63A78(v85, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
  v86 = *(v0 + 344);
  if (v84)
  {
    [*(v0 + 344) finishTasksAndInvalidate];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v87 = *(v0 + 320);
  v88 = *(v0 + 264);
  v89 = *(v0 + 216);
  v91 = *(v0 + 200);
  v90 = *(v0 + 208);
  v92 = *(v0 + 192);
  sub_22FF63A78(*(v0 + 160), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
  (*(v91 + 8))(v90, v92);
  v87(v88, v89);

  v93 = *(v0 + 8);

  return v93(v50);
}

uint64_t sub_22FF623E0()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 344);
  if (v1)
  {
    [*(v0 + 344) finishTasksAndInvalidate];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v3 = *(v0 + 320);
  v4 = *(v0 + 264);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  sub_22FF63A78(*(v0 + 160), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
  (*(v7 + 8))(v6, v8);
  v3(v4, v5);

  v9 = *(v0 + 8);

  return v9();
}

void *sub_22FF625A0()
{
  if (MEMORY[0x277D81728])
  {
    v0 = MEMORY[0x277D81718] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x277D81720] == 0 || MEMORY[0x277D81730] == 0)
  {
    if (qword_27DAF1490 != -1)
    {
      swift_once();
    }

    v8 = sub_22FFB12F8();
    __swift_project_value_buffer(v8, qword_27DB05A98);
    v9 = sub_22FFB12D8();
    v10 = sub_22FFB1838();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22FE99000, v9, v10, "Narrative is not available on this OS", v11, 2u);
      MEMORY[0x23190EFF0](v11, -1, -1);
    }

    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    v7 = v12;
    sub_22FF63BA8();
    v13 = swift_allocError();
    *v14 = 0;
    *v7 = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v3 = sub_22FFB0B38();
    v4 = objc_allocWithZone(v3);
    v5 = sub_22FFB0B28();
    v6 = sub_22FFB0B18();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v16 = objc_allocWithZone(v3);
      v17 = sub_22FFB0B28();
      v18 = sub_22FFB0B18();
      if (v18)
      {
        v7 = v18;
      }

      else
      {
        if (qword_27DAF1490 != -1)
        {
          swift_once();
        }

        v19 = sub_22FFB12F8();
        __swift_project_value_buffer(v19, qword_27DB05A98);
        v20 = sub_22FFB12D8();
        v21 = sub_22FFB1838();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_22FE99000, v20, v21, "Unable to load acdc or adb narrative identity", v22, 2u);
          MEMORY[0x23190EFF0](v22, -1, -1);
        }

        v7 = type metadata accessor for TransparencyLogError(0);
        sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
        swift_allocError();
        v24 = v23;
        sub_22FF63BA8();
        v25 = swift_allocError();
        *v26 = 1;
        *v24 = v25;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  return v7;
}

uint64_t sub_22FF62928(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = 3;
  *(a1 + 8) = 1;

  *(a1 + 64) = a2;
  if ((a3 - 5) > 5u)
  {
    v7 = 6;
  }

  else
  {
    v7 = qword_22FFBE940[(a3 - 5)];
  }

  *(a1 + 16) = v7;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_22FF629C0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3700, &qword_22FFBE8B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v65 - v6);
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v65 - v23;
  v25 = *a1;
  if (*a1 != 1)
  {
    v36 = a1;
    v37 = a2;
    LOBYTE(v36) = *(v36 + 8);
    v76 = v25;
    v77 = v36;
    sub_22FF631BC(v7);
    v38 = type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    v39 = swift_allocError();
    v41 = v40;
    v42 = *(*(v38 - 8) + 48);
    if (v42(v7, 1, v38) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v42(v7, 1, v38) != 1)
      {
        sub_22FEAEA34(v7, &unk_27DAF3700, &qword_22FFBE8B8);
      }
    }

    else
    {
      sub_22FF63B40(v7, v41, type metadata accessor for TransparencyLogError);
    }

    a2 = v37;
    goto LABEL_14;
  }

  v72 = v14;
  v73 = v16;
  v71 = v22;
  v26 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 32);
  sub_22FF63A08(a1 + v26, v24);
  v27 = a1;
  v28 = *(v9 + 48);
  v29 = v28(v24, 1, v8);
  sub_22FEAEA34(v24, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v29 == 1)
  {
    goto LABEL_13;
  }

  v70 = v27;
  sub_22FF63A08(v27 + v26, v21);
  v30 = v28(v21, 1, v8);
  v68 = v28;
  v69 = a2;
  v67 = v26;
  if (v30 == 1)
  {
    v31 = v73;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v32 = *(v8 + 20);
    v33 = type metadata accessor for LogEntry(0);
    (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
    v34 = *(v8 + 24);
    v35 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v35 - 8) + 56))(v31 + v34, 1, 1, v35);
    if (v28(v21, 1, v8) != 1)
    {
      sub_22FEAEA34(v21, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    v31 = v73;
    sub_22FF63B40(v21, v73, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  v43 = v72;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v44 = *(v8 + 20);
  v45 = type metadata accessor for LogEntry(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v73 = (v46 + 56);
  v47(v43 + v44, 1, 1, v45);
  v48 = *(v8 + 24);
  v49 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v65 = v50 + 56;
  v66 = v51;
  v51(v43 + v48, 1, 1, v49);
  LOBYTE(v48) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v31, v43);
  sub_22FF63A78(v43, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF63A78(v31, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v52 = v68;
  a2 = v69;
  if (v48)
  {
LABEL_13:
    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    v39 = swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_14:
    result = swift_willThrow();
    *a2 = v39;
    return result;
  }

  v54 = v71;
  sub_22FF63A08(v70 + v67, v71);
  if (v52(v54, 1, v8) == 1)
  {
    v55 = v8;
    v56 = v47;
    v57 = v75;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v56(v57 + *(v55 + 20), 1, 1, v45);
    v66(v57 + *(v55 + 24), 1, 1, v49);
    result = v52(v54, 1, v55);
    if (result != 1)
    {
      result = sub_22FEAEA34(v54, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    v57 = v75;
    result = sub_22FF63B40(v54, v75, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  if ((v70[4] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v58 = v70[2];
    v59 = v70[3];
    v60 = v74;
    sub_22FF63AD8(v57, v74, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v61 = type metadata accessor for TransparencyLogProofs(0);
    v62 = *(v61 + 20);
    sub_22FEA5608(v58, v59);
    sub_22FFB08B8();
    sub_22FF63A78(v57, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v63 = sub_22FFB0908();
    result = (*(*(v63 - 8) + 56))(v60 + v62, 0, 1, v63);
    v64 = (v60 + *(v61 + 24));
    *v64 = v58;
    v64[1] = v59;
  }

  return result;
}

uint64_t sub_22FF631BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) != 1)
  {
    *a1 = v3;
    v5 = type metadata accessor for TransparencyLogError(0);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v6 = *(*(v5 - 8) + 56);
    v7 = a1;
    v8 = 0;
    goto LABEL_6;
  }

  v4 = type metadata accessor for TransparencyLogError(0);
  v5 = v4;
  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v6 = *(*(v4 - 8) + 56);
  v7 = a1;
  v8 = 1;
LABEL_6:

  return v6(v7, v8, 1, v5);
}

uint64_t SWTransparencyLog.verifyExpiringInclusion(of:proofs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 8);
  *(v5 + 16) = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_22FF633D4;

  return SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(a1, a2, a3, a4);
}

uint64_t sub_22FF633D4()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FEABB60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FF63510(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FEABC3C;

  return SWTransparencyLog.proveInclusion(of:)(a1);
}

uint64_t sub_22FF635A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 8);
  *(v5 + 16) = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_22FF6367C;

  return SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(a1, a2, a3, a4);
}

uint64_t sub_22FF6367C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FEAEC1C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

id sub_22FF63874()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FF63904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF6394C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_22FF639A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FF63A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF63A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF63AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF63B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FF63BA8()
{
  result = qword_27DAF37C8;
  if (!qword_27DAF37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37C8);
  }

  return result;
}

unint64_t sub_22FF63C10()
{
  if (*v0)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000035;
  }
}

unint64_t sub_22FF63C5C()
{
  result = qword_27DAF37D0;
  if (!qword_27DAF37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37D0);
  }

  return result;
}

id SWTransparencyVerifier.init()@<X0>(void *a1@<X8>)
{
  if (MEMORY[0x277D73580])
  {
    result = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a3;
  v5[27] = a4;
  v5[24] = a1;
  v5[25] = a2;
  v6 = sub_22FFB0908();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_22FFB0818();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v4;
  v5[35] = v8;
  v5[36] = v9;
  v10 = v9;

  return MEMORY[0x2822009F8](sub_22FF63E48, 0, 0);
}

uint64_t sub_22FF63E48()
{
  if (v0[36])
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
    sub_22FF662F8(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v1 = sub_22FFB1178();
    v13 = v0[36];
    v2 = v1;
    v4 = v3;
    v12 = sub_22FFB07B8();
    v0[37] = v12;
    sub_22FEA55AC(v2, v4);
    v5 = sub_22FFB07B8();
    v0[38] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22FF646E4;
    swift_continuation_init();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37E8, &qword_22FFBEA78);
    v0[17] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    v8 = *(v6 - 8);
    v9 = swift_task_alloc();
    sub_22FF66298(0, &qword_28148F0D0, 0x277D73578);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    sub_22FFB1778();
    (*(v8 + 32))(boxed_opaque_existential_1, v9, v6);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22FF660DC;
    v0[13] = &block_descriptor_2;
    [v13 verifyExpiringProofs:v12 forDigest:v5 configuration:0 completion:?];
    (*(v8 + 8))(boxed_opaque_existential_1, v6);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22FF66244();
    swift_allocError();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22FF646E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_22FF65A84;
  }

  else
  {
    v2 = sub_22FF647F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FF647F4()
{
  v132 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 144);

  v3 = [v2 result];
  p_base_meths = &PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass.base_meths;
  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_28148F8D8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 200);
      v5 = *(v0 + 208);
      v7 = sub_22FFB12F8();
      __swift_project_value_buffer(v7, qword_281491388);
      sub_22FEA5608(v6, v5);
      v8 = sub_22FFB12D8();
      v9 = sub_22FFB1838();
      sub_22FEA55AC(v6, v5);
      if (os_log_type_enabled(v8, v9))
      {
        log = v8;
        v10 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v131[0] = v117;
        buf = v10;
        *v10 = 136446210;
        v125 = v9;
        sub_22FEA5608(*(v0 + 200), *(v0 + 208));
        sub_22FFB0828();
        sub_22FF662F8(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        sub_22FFB18A8();
        if (*(v0 + 325))
        {
          v27 = MEMORY[0x277D84F90];
        }

        else
        {
          v27 = MEMORY[0x277D84F90];
          v33 = MEMORY[0x277D84B78];
          v34 = MEMORY[0x277D84BC0];
          do
          {
            v35 = *(v0 + 324);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_22FFB2D10;
            *(v36 + 56) = v33;
            *(v36 + 64) = v34;
            *(v36 + 32) = v35;
            v37 = sub_22FFB14D8();
            v39 = v38;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_22FEC2E8C(0, *(v27 + 2) + 1, 1, v27);
            }

            v41 = *(v27 + 2);
            v40 = *(v27 + 3);
            if (v41 >= v40 >> 1)
            {
              v27 = sub_22FEC2E8C((v40 > 1), v41 + 1, 1, v27);
            }

            *(v27 + 2) = v41 + 1;
            v42 = &v27[16 * v41];
            *(v42 + 4) = v37;
            *(v42 + 5) = v39;
            sub_22FFB18A8();
          }

          while (*(v0 + 325) != 1);
        }

        (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
        *(v0 + 184) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
        sub_22FEB0F00();
        v28 = sub_22FFB1458();
        v30 = v29;

        v31 = sub_22FF9E448(v28, v30, v131);

        *(buf + 4) = v31;
        _os_log_impl(&dword_22FE99000, log, v125, "Invalid transparency proof for digest %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v117);
        MEMORY[0x23190EFF0](v117, -1, -1);
        MEMORY[0x23190EFF0](buf, -1, -1);

        p_base_meths = (&PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass + 32);
      }

      else
      {
      }

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
      v32 = swift_allocError();
    }

    else
    {
      if (qword_28148F8D8 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 200);
      v19 = *(v0 + 208);
      v21 = sub_22FFB12F8();
      __swift_project_value_buffer(v21, qword_281491388);
      v22 = v2;
      sub_22FEA5608(v20, v19);
      v23 = v22;
      v24 = sub_22FFB12D8();
      v25 = sub_22FFB1838();
      sub_22FEA55AC(v20, v19);
      if (os_log_type_enabled(v24, v25))
      {
        v124 = v24;
        v26 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v131[0] = v116;
        v119 = v26;
        *v26 = 136446466;
        v129 = v2;
        bufb = v25;
        logb = v23;
        sub_22FEA5608(*(v0 + 200), *(v0 + 208));
        sub_22FFB0828();
        sub_22FF662F8(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        sub_22FFB18A8();
        if (*(v0 + 321))
        {
          v69 = MEMORY[0x277D84F90];
        }

        else
        {
          v69 = MEMORY[0x277D84F90];
          v92 = MEMORY[0x277D84B78];
          v93 = MEMORY[0x277D84BC0];
          do
          {
            v94 = *(v0 + 320);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
            v95 = swift_allocObject();
            *(v95 + 16) = xmmword_22FFB2D10;
            *(v95 + 56) = v92;
            *(v95 + 64) = v93;
            *(v95 + 32) = v94;
            v96 = sub_22FFB14D8();
            v98 = v97;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_22FEC2E8C(0, *(v69 + 2) + 1, 1, v69);
            }

            v100 = *(v69 + 2);
            v99 = *(v69 + 3);
            if (v100 >= v99 >> 1)
            {
              v69 = sub_22FEC2E8C((v99 > 1), v100 + 1, 1, v69);
            }

            *(v69 + 2) = v100 + 1;
            v101 = &v69[16 * v100];
            *(v101 + 4) = v96;
            *(v101 + 5) = v98;
            sub_22FFB18A8();
          }

          while (*(v0 + 321) != 1);
        }

        (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
        *(v0 + 168) = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
        sub_22FEB0F00();
        v70 = sub_22FFB1458();
        v72 = v71;

        v73 = sub_22FF9E448(v70, v72, v131);

        *(v119 + 1) = v73;
        *(v119 + 6) = 2050;
        v23 = logb;
        v74 = [logb result];

        *(v119 + 14) = v74;
        _os_log_impl(&dword_22FE99000, v124, bufb, "Unknown transparency proof validation result for digest %{public}s: %{public}lu", v119, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x23190EFF0](v116, -1, -1);
        MEMORY[0x23190EFF0](v119, -1, -1);

        p_base_meths = &PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass.base_meths;
        v2 = v129;
      }

      else
      {
      }

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
      v32 = swift_allocError();
      v76 = v75;
      v77 = [v23 result];
      if ((v77 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_79:
        swift_once();
LABEL_51:
        v85 = sub_22FFB12F8();
        __swift_project_value_buffer(v85, qword_281491388);
        v86 = v76;
        v87 = sub_22FFB12D8();
        v88 = sub_22FFB1838();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v89 = 138543362;
          *(v89 + 4) = v86;
          *v90 = v86;
          v91 = v86;
          _os_log_impl(&dword_22FE99000, v87, v88, "Inclusion proof has expired: %{public}@", v89, 0xCu);
          sub_22FEAA1C8(v90);
          MEMORY[0x23190EFF0](v90, -1, -1);
          MEMORY[0x23190EFF0](v89, -1, -1);
        }

LABEL_71:
        v112 = *(v0 + 288);

        type metadata accessor for TransparencyLogError(0);
        sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_74:

        v58 = *(v0 + 8);
        goto LABEL_75;
      }

      *v76 = v77;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    *(v0 + 152) = v32;
    v78 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    sub_22FF66298(0, &qword_27DAF37E0, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
LABEL_73:
      v113 = *(v0 + 288);

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
      swift_allocError();
      *v114 = v32;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_74;
    }

    v76 = *(v0 + 160);
    v79 = [v76 domain];
    v80 = sub_22FFB1498();
    v82 = v81;

    if (v80 == 0xD00000000000001CLL && 0x800000022FFCB530 == v82)
    {
    }

    else
    {
      v83 = sub_22FFB1BC8();

      if ((v83 & 1) == 0)
      {

        goto LABEL_62;
      }
    }

    v84 = [v76 code];

    if (v84 == 5)
    {

      if (p_base_meths[283] == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_79;
    }

LABEL_62:
    v102 = [v76 domain];
    v103 = sub_22FFB1498();
    v105 = v104;

    if (v103 == 0xD00000000000001DLL && 0x800000022FFCB550 == v105)
    {
    }

    else
    {
      v106 = sub_22FFB1BC8();

      if ((v106 & 1) == 0)
      {
LABEL_72:

        goto LABEL_73;
      }
    }

    if ([v76 code] == 7)
    {

      if (p_base_meths[283] != -1)
      {
        swift_once();
      }

      v107 = sub_22FFB12F8();
      __swift_project_value_buffer(v107, qword_281491388);
      v86 = v76;
      v87 = sub_22FFB12D8();
      v108 = sub_22FFB1838();

      if (os_log_type_enabled(v87, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *v109 = 138543362;
        *(v109 + 4) = v86;
        *v110 = v86;
        v111 = v86;
        _os_log_impl(&dword_22FE99000, v87, v108, "Inclusion proof verification failed: %{public}@", v109, 0xCu);
        sub_22FEAA1C8(v110);
        MEMORY[0x23190EFF0](v110, -1, -1);
        MEMORY[0x23190EFF0](v109, -1, -1);
      }

      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (qword_28148F8D8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = sub_22FFB12F8();
  __swift_project_value_buffer(v13, qword_281491388);
  sub_22FEA5608(v12, v11);
  v14 = v2;
  v15 = sub_22FFB12D8();
  v16 = sub_22FFB1818();
  sub_22FEA55AC(v12, v11);

  v17 = &unk_2788BA000;
  if (os_log_type_enabled(v15, v16))
  {
    v123 = v16;
    loga = v15;
    v18 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v131[0] = v118;
    bufa = v18;
    *v18 = 136446466;
    v130 = v14;
    sub_22FEA5608(*(v0 + 200), *(v0 + 208));
    sub_22FFB0828();
    sub_22FF662F8(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    sub_22FFB18A8();
    if (*(v0 + 323))
    {
      v43 = MEMORY[0x277D84F90];
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
      v59 = MEMORY[0x277D84B78];
      v60 = MEMORY[0x277D84BC0];
      do
      {
        v61 = *(v0 + 322);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_22FFB2D10;
        *(v62 + 56) = v59;
        *(v62 + 64) = v60;
        *(v62 + 32) = v61;
        v63 = sub_22FFB14D8();
        v65 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22FEC2E8C(0, *(v43 + 2) + 1, 1, v43);
        }

        v67 = *(v43 + 2);
        v66 = *(v43 + 3);
        if (v67 >= v66 >> 1)
        {
          v43 = sub_22FEC2E8C((v66 > 1), v67 + 1, 1, v43);
        }

        *(v43 + 2) = v67 + 1;
        v68 = &v43[16 * v67];
        *(v68 + 4) = v63;
        *(v68 + 5) = v65;
        sub_22FFB18A8();
      }

      while (*(v0 + 323) != 1);
    }

    v44 = *(v0 + 240);
    v46 = *(v0 + 224);
    v45 = *(v0 + 232);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    *(v0 + 176) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FEB0F00();
    v47 = sub_22FFB1458();
    v49 = v48;

    v50 = sub_22FF9E448(v47, v49, v131);

    *(bufa + 4) = v50;
    *(bufa + 6) = 2082;
    v17 = &unk_2788BA000;
    v14 = v130;
    v51 = [v130 expiry];
    sub_22FFB08D8();

    sub_22FF662F8(&qword_281491330, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v52 = sub_22FFB1BA8();
    v54 = v53;
    (*(v45 + 8))(v44, v46);
    v55 = sub_22FF9E448(v52, v54, v131);

    *(bufa + 14) = v55;
    v15 = loga;
    _os_log_impl(&dword_22FE99000, loga, v123, "Valid transparency proof for digest %{public}s (expires %{public}s", bufa, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v118, -1, -1);
    MEMORY[0x23190EFF0](bufa, -1, -1);
  }

  v56 = *(v0 + 288);
  v57 = [v14 v17[466]];
  sub_22FFB08D8();

  v58 = *(v0 + 8);
LABEL_75:

  return v58();
}