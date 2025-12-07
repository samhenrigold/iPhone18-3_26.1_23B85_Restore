uint64_t sub_1B0C0DD3C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
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
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_1B0C0E0A0(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, unint64_t a7, char a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_11:
    if (a4)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          if ((a8 & 1) != 0 && a7 == 1)
          {
            return 1;
          }
        }

        else if ((a8 & 1) != 0 && a7 > 1)
        {
          return 1;
        }
      }

      else if ((a8 & 1) != 0 && !a7)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C0E18C()
{
  result = qword_1EB6E56C8;
  if (!qword_1EB6E56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E56C8);
  }

  return result;
}

unint64_t sub_1B0C0E1E4()
{
  result = qword_1EB6E56D0;
  if (!qword_1EB6E56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E56D0);
  }

  return result;
}

uint64_t sub_1B0C0E268(uint64_t *a1, int a2)
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

uint64_t sub_1B0C0E2B0(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0C0E304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C0E34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C0E3A0(uint64_t a1, uint64_t a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1B0C0E404(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  if ((sub_1B04520BC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && v4 == v5;
  }

  if (!v4)
  {
    return (*(a2 + 32) & 1) != 0 && !v5;
  }

  if (v4 != 1)
  {
    return (*(a2 + 32) & 1) != 0 && v5 > 1;
  }

  return (*(a2 + 32) & 1) != 0 && v5 == 1;
}

uint64_t sub_1B0C0E4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 80))
  {
    return (*a1 + 7);
  }

  v3 = (((*(a1 + 56) & 0x1000000000000000) != 0) | (*(a1 + 40) >> 59) & 6) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0C0E52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 1) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 1) & 3 | (4 * (-a2 & 7))) << 58) & 0x1000000000000000;
      *(result + 64) = 0;
      *(result + 72) = 0;
    }
  }

  return result;
}

uint64_t sub_1B0C0E5B8(uint64_t result, char a2)
{
  v2 = *(result + 56) & 0xEFFFFFFFFFFFFFFFLL | ((a2 & 1) << 60);
  *(result + 40) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_1B0C0E5E8(double a1)
{
  v2 = *(v1 + 56);
  if ((v2 & 0x1000000000000000) == 0)
  {
    return 0x4E49474F4CLL;
  }

  v4 = (*(v1 + 72) >> 59) & 6 | ((v2 & 0x2000000000000000) != 0);
  if (v4 > 2)
  {
    if ((v4 - 5) >= 2)
    {
      if (v4 == 3)
      {
        if (qword_1EB6E5378 != -1)
        {
          swift_once();
        }

        v5 = &qword_1EB738388;
      }

      else
      {
        if (qword_1EB6E5380 != -1)
        {
          swift_once();
        }

        v5 = &qword_1EB738398;
      }
    }

    else
    {
      if (qword_1EB6E5370 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EB738378;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      if (qword_1EB6DE340 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EB737E98;
    }

    else
    {
      if (qword_1EB6DE338 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EB737E88;
    }
  }

  else
  {
    v5 = AuthenticationMechanism.plain.unsafeMutableAddressor();
  }

  v6 = *v5;
  v7 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v6, v7);

  return 0x204C534153;
}

uint64_t sub_1B0C0E7D4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 56);
  v41 = *v1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    a1[3] = &_s5LoginVN;
    a1[4] = &off_1F271E7A0;
    v6 = swift_allocObject();
    *a1 = v6;
    v7 = *(v1 + 48);
    *(v6 + 48) = *(v1 + 32);
    *(v6 + 64) = v7;
    v8 = *(v1 + 16);
    *(v6 + 16) = *v1;
    *(v6 + 32) = v8;
    *(v6 + 80) = *(v1 + 64);
    *(v6 + 96) = v41;
    *(v6 + 112) = v4;
    *(v6 + 120) = v3;
    *(v6 + 160) = 0;
LABEL_19:
    swift_bridgeObjectRetain_n();
    return swift_bridgeObjectRetain_n();
  }

  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 64);
  v12 = *(v1 + 72);
  v14 = v5 & 0xEFFFFFFFFFFFFFFFLL;
  v15 = (v12 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v35 = v5 & 0xCFFFFFFFFFFFFFFFLL;
        v36 = *(v1 + 72);
        v21 = v12 & 0xCFFFFFFFFFFFFFFFLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB0, &qword_1B0EC9C70);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1B0EC4700;
        *(v22 + 32) = v41;
        *(v22 + 48) = v41;
        *(v22 + 64) = v4;
        *(v22 + 72) = v3;
        *(v22 + 80) = v10;
        *(v22 + 88) = v9;
        v37 = v10;
        *(v22 + 96) = v11;
        *(v22 + 104) = v35;
        *(v22 + 112) = v13;
        *(v22 + 120) = v21;
        sub_1B03B2000(v41, *(&v41 + 1));
        sub_1B03B2000(v41, *(&v41 + 1));
        sub_1B03B2000(v4, v3);
        sub_1B03B2000(v10, v9);
        sub_1B03B2000(v11, v35);
        sub_1B03B2000(v13, v21);
        sub_1B03B2000(v41, *(&v41 + 1));
        sub_1B03B2000(v4, v3);
        sub_1B03B2000(v10, v9);
        sub_1B03B2000(v11, v35);
        sub_1B03B2000(v13, v21);
        v23 = sub_1B0BCD5E0(v22);
        v25 = v24;
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        a1[3] = &_s10AppleTokenVN;
        a1[4] = &off_1F271BE98;
        result = swift_allocObject();
        *a1 = result;
        *(result + 16) = v41;
        *(result + 32) = v4;
        *(result + 40) = v3;
        *(result + 48) = v37;
        *(result + 56) = v9;
        *(result + 64) = v11;
        *(result + 72) = v14;
        *(result + 80) = v13;
        *(result + 88) = v36;
        *(result + 96) = v23;
        *(result + 104) = v25;
      }

      else
      {
        a1[3] = &_s11AppleToken2VN;
        a1[4] = &off_1F271BFE8;
        v31 = swift_allocObject();
        *a1 = v31;
        *(v31 + 16) = v41;
        *(v31 + 32) = v4;
        *(v31 + 40) = v3;
        *(v31 + 48) = v10;
        *(v31 + 56) = v9;
        *(v31 + 64) = v11;
        *(v31 + 72) = v14;
        *(v31 + 80) = v13;
        *(v31 + 88) = v12;
        *(v31 + 96) = v41;
        v32 = *(v1 + 48);
        v43[2] = *(v1 + 32);
        v44 = v32;
        v45 = *(v1 + 64);
        v33 = *(v1 + 16);
        v43[0] = *v1;
        v43[1] = v33;
        *(&v44 + 1) = *(&v32 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        sub_1B0BD6700(v1, v42);
        return sub_1B0BD1224(v43, v42);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4DB0, &qword_1B0EC9C70);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1B0EC1E50;
      v38 = v13;
      *(v27 + 32) = xmmword_1B0ECF4A0;
      *(v27 + 48) = v41;
      v40 = v11;
      *(v27 + 64) = v4;
      *(v27 + 72) = v3;
      sub_1B03B2000(v41, *(&v41 + 1));
      sub_1B03B2000(v4, v3);
      sub_1B03B2000(v41, *(&v41 + 1));
      sub_1B03B2000(v4, v3);
      v28 = sub_1B0BCD5E0(v27);
      v30 = v29;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1[3] = &_s5PlainVN;
      a1[4] = &off_1F271FD10;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v41;
      *(result + 32) = v4;
      *(result + 40) = v3;
      *(result + 48) = v10;
      *(result + 56) = v9;
      *(result + 64) = v40;
      *(result + 72) = v14;
      *(result + 80) = v38;
      *(result + 88) = v12;
      *(result + 96) = v28;
      *(result + 104) = v30;
    }
  }

  else
  {
    if (v15 > 4)
    {
      a1[3] = &_s4NTLMVN;
      a1[4] = &off_1F271F668;
      if (v15 == 5)
      {
        v26 = swift_allocObject();
        *a1 = v26;
        *(v26 + 16) = 0;
      }

      else
      {
        v26 = swift_allocObject();
        *a1 = v26;
        *(v26 + 16) = 1;
      }

      *(v26 + 24) = v41;
      *(v26 + 40) = v4;
      *(v26 + 48) = v3;
      *(v26 + 56) = v41;
      *(v26 + 72) = v4;
      *(v26 + 80) = v3;
      *(v26 + 88) = v10;
      *(v26 + 96) = v9;
      *(v26 + 104) = v11;
      *(v26 + 112) = v14;
      *(v26 + 120) = v13;
      *(v26 + 128) = v12;
      *(v26 + 136) = 0u;
      *(v26 + 152) = 0u;
      *(v26 + 168) = 0u;
      *(v26 + 184) = 0;
      goto LABEL_19;
    }

    v39 = *(v1 + 48);
    if (v15 == 3)
    {
      v16 = *(v1 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v17 = sub_1B0C19A8C(v41, v16, v4, v3);
      v19 = v18;
      a1[3] = &_s10OAuthTokenVN;
      a1[4] = &off_1F271F7D8;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v41;
      *(result + 32) = v4;
      *(result + 40) = v3;
      *(result + 48) = v10;
      *(result + 56) = v9;
      *(result + 64) = v39;
      *(result + 72) = v14;
      *(result + 80) = v13;
      *(result + 88) = v12;
      *(result + 96) = v17;
      *(result + 104) = v19;
    }

    else
    {
      a1[3] = &_s7CRAMMD5VN;
      a1[4] = &off_1F271D928;
      v34 = swift_allocObject();
      *a1 = v34;
      *(v34 + 16) = v41;
      *(v34 + 32) = v4;
      *(v34 + 40) = v3;
      *(v34 + 48) = v10;
      *(v34 + 56) = v9;
      *(v34 + 64) = v39;
      *(v34 + 72) = v14;
      *(v34 + 80) = v13;
      *(v34 + 88) = v12;
      *(v34 + 96) = xmmword_1B0EC58F0;
      *(v34 + 112) = v41;
      *(v34 + 128) = v4;
      *(v34 + 136) = v3;
      sub_1B03B2000(v41, *(&v41 + 1));
      sub_1B03B2000(v4, v3);
      sub_1B03B2000(v41, *(&v41 + 1));

      return sub_1B03B2000(v4, v3);
    }
  }

  return result;
}

BOOL sub_1B0C0EE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a1 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 >= v5;
  }

  v3 = 8;
  v4 = *(a1 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 >= v5;
}

BOOL sub_1B0C0EE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a2 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 >= v5;
  }

  v3 = 8;
  v4 = *(a2 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 >= v5;
}

BOOL sub_1B0C0EED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a1 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 < v5;
  }

  v3 = 8;
  v4 = *(a1 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 < v5;
}

uint64_t sub_1B0C0EF30(uint64_t a1)
{
  v2 = (*(v1 + 72) >> 59) & 6 | ((*(v1 + 56) & 0x2000000000000000) != 0);
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        MEMORY[0x1B2728D70](1);
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
      }

      else
      {
        MEMORY[0x1B2728D70](2);
      }

      goto LABEL_14;
    }

    v4 = 0;
  }

  else
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }

LABEL_18:
      MEMORY[0x1B2728D70](v3);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_18;
    }

    v4 = 4;
  }

  MEMORY[0x1B2728D70](v4);
  sub_1B0E42F48();
LABEL_14:

  return sub_1B0E42F48();
}

uint64_t sub_1B0C0F0F4()
{
  sub_1B0E46C28();
  sub_1B0C0EF30(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F138(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0C0EF30(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F174(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0FEBC(v8, v9) & 1;
}

uint64_t sub_1B0C0F1D0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_1B0E46C28();
  if ((v8 & 0x1000000000000000) != 0)
  {
    v12[9] = v2;
    v12[10] = v1;
    v12[11] = v4;
    v12[12] = v3;
    v12[13] = v5;
    v12[14] = v6;
    v12[15] = v7;
    v12[16] = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v12[17] = v10;
    v12[18] = v9;
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30(v12);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F2A0(uint64_t a1)
{
  if ((*(v1 + 56) & 0x1000000000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);
    return sub_1B0C0EF30(a1);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

uint64_t sub_1B0C0F374(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  sub_1B0E46C28();
  if ((v9 & 0x1000000000000000) != 0)
  {
    v13[9] = v3;
    v13[10] = v2;
    v13[11] = v5;
    v13[12] = v4;
    v13[13] = v6;
    v13[14] = v7;
    v13[15] = v8;
    v13[16] = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v13[17] = v11;
    v13[18] = v10;
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30(v13);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0F440(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[7];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 3);
  v13 = a2[7];
  if ((v8 & 0x1000000000000000) != 0)
  {
    v16 = *(a2 + 5);
    v17 = *(a2 + 4);
    v18 = a1[6];
    v21[0] = v4;
    v21[1] = v5;
    v21[2] = v6;
    v21[3] = v7;
    v22 = *(a1 + 2);
    v23 = v18;
    v24 = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v25 = *(a1 + 4);
    if ((v13 & 0x1000000000000000) != 0)
    {
      v26[0] = v9;
      v26[1] = v10;
      v26[2] = v11;
      v27 = v12;
      v28 = v16;
      v29 = v13 & 0xEFFFFFFFFFFFFFFFLL;
      v30 = v17;
      v15 = sub_1B0C0FEBC(v21, v26);
      return v15 & 1;
    }

    goto LABEL_10;
  }

  if ((v13 & 0x1000000000000000) != 0 || (v4 != v9 || v5 != v10) && (v20 = *(a2 + 3), v14 = sub_1B0E46A78(), *&v12 = v20, (v14 & 1) == 0))
  {
LABEL_10:
    v15 = 0;
    return v15 & 1;
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
    return v15 & 1;
  }

  return sub_1B0E46A78();
}

BOOL sub_1B0C0F574(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C101A0(v8, v9);
}

BOOL sub_1B0C0F5D0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0EE10(v8, v9);
}

BOOL sub_1B0C0F62C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0EE70(v8, v9);
}

BOOL sub_1B0C0F688(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0C0EED0(v8, v9);
}

void sub_1B0C0F6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = v2[3];
    v16[2] = v2[2];
    v16[3] = v4;
    v16[4] = v2[4];
    v5 = v2[1];
    v16[0] = *v2;
    v16[1] = v5;
    sub_1B069506C(v16, v15);
    v6 = sub_1B0C10500(v16);
    sub_1B070BB30(v16);
    v7 = *(v6 + 2);
    v8 = *(v3 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v3 + 3) >> 1)
    {
      if (*(v6 + 2))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v3 = sub_1B0C0C208(isUniquelyReferenced_nonNull_native, v11, 1, v3);
      if (*(v6 + 2))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v7)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_4:
    v2 += 5;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1B0C0F858(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v58 = *(a2 + 16);
    v59 = result;
    v56 = a2 + 32;
    while (1)
    {
      v57 = v6;
      v7 = (v5 + 80 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v14 = v7[3];
        v69 = v7[2];
        v70 = v14;
        v71 = v7[4];
        v15 = v7[1];
        v67 = *v7;
        v68 = v15;
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }

        v60 = i + 1;
        if ((*(&v70 + 1) & 0x1000000000000000) != 0)
        {
          break;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v9 = Capability.loginDisabled.unsafeMutableAddressor();
        v10 = v9[1];
        v11 = v9[2];
        v12 = *(v9 + 24);
        *&v62 = *v9;
        *(&v62 + 1) = v10;
        *&v63 = v11;
        BYTE8(v63) = v12;
        MEMORY[0x1EEE9AC00](v9);
        v55 = &v62;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0C32414(sub_1B0C10BD0, v54, v3);

        if ((v13 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_5:
        result = sub_1B0BD2F90(&v67);
        v7 += 5;
        if (v60 == v2)
        {
          return v57;
        }
      }

      v16 = (*(&v71 + 1) >> 59) & 6 | ((*(&v70 + 1) & 0x2000000000000000) != 0);
      if (v16 > 2)
      {
        if ((v16 - 5) >= 2)
        {
          if (v16 == 3)
          {
            v24 = v7[2];
            v25 = v7[4];
            v65 = v7[3];
            v66 = v25;
            v26 = *v7;
            v63 = v7[1];
            v64 = v24;
            v62 = v26;
            *(&v65 + 1) &= ~0x1000000000000000uLL;
            sub_1B0BD1224(&v62, v61);
            if (qword_1EB6E5378 != -1)
            {
              swift_once();
            }

            v20 = &qword_1EB738388;
          }

          else
          {
            v36 = v7[2];
            v37 = v7[4];
            v65 = v7[3];
            v66 = v37;
            v38 = *v7;
            v63 = v7[1];
            v64 = v36;
            v62 = v38;
            *(&v65 + 1) &= ~0x1000000000000000uLL;
            sub_1B0BD1224(&v62, v61);
            if (qword_1EB6E5380 != -1)
            {
              swift_once();
            }

            v20 = &qword_1EB738398;
          }
        }

        else
        {
          v21 = v7[2];
          v22 = v7[4];
          v65 = v7[3];
          v66 = v22;
          v23 = *v7;
          v63 = v7[1];
          v64 = v21;
          v62 = v23;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          if (qword_1EB6E5370 != -1)
          {
            swift_once();
          }

          v20 = &qword_1EB738378;
        }
      }

      else
      {
        if (!v16)
        {
          v27 = v7[2];
          v28 = v7[4];
          v65 = v7[3];
          v66 = v28;
          v29 = *v7;
          v63 = v7[1];
          v64 = v27;
          v62 = v29;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          v30 = AuthenticationMechanism.plain.unsafeMutableAddressor();
          v32 = *v30;
          v31 = v30[1];
          goto LABEL_31;
        }

        if (v16 == 1)
        {
          v17 = v7[2];
          v18 = v7[4];
          v65 = v7[3];
          v66 = v18;
          v19 = *v7;
          v63 = v7[1];
          v64 = v17;
          v62 = v19;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          if (qword_1EB6DE340 != -1)
          {
            swift_once();
          }

          v20 = &qword_1EB737E98;
        }

        else
        {
          v33 = v7[2];
          v34 = v7[4];
          v65 = v7[3];
          v66 = v34;
          v35 = *v7;
          v63 = v7[1];
          v64 = v33;
          v62 = v35;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1B0BD1224(&v62, v61);
          if (qword_1EB6DE338 != -1)
          {
            swift_once();
          }

          v20 = &qword_1EB737E88;
        }
      }

      v32 = *v20;
      v31 = v20[1];
LABEL_31:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v39 = static Capability.authenticate(_:)(v32, v31);
      v41 = v40;
      v43 = v42;
      v45 = v44;

      *&v62 = v39;
      *(&v62 + 1) = v41;
      *&v63 = v43;
      BYTE8(v63) = v45 & 1;
      MEMORY[0x1EEE9AC00](v46);
      v55 = &v62;
      v3 = v59;
      v47 = sub_1B0C32414(sub_1B0BD6614, v54, v59);

      v2 = v58;
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      v6 = v57;
      result = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0BFE574(0, *(v6 + 16) + 1, 1);
        v6 = v72;
      }

      v5 = v56;
      v49 = *(v6 + 16);
      v48 = *(v6 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_1B0BFE574((v48 > 1), v49 + 1, 1);
        v6 = v72;
      }

      *(v6 + 16) = v49 + 1;
      v50 = (v6 + 80 * v49);
      v50[2] = v67;
      v51 = v68;
      v52 = v69;
      v53 = v71;
      v50[5] = v70;
      v50[6] = v53;
      v50[3] = v51;
      v50[4] = v52;
      v4 = v60;
      if (v60 == v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B0C0FDB0()
{
  result = sub_1B0E44BB8();
  qword_1EB737E98 = result;
  unk_1EB737EA0 = v1;
  return result;
}

uint64_t sub_1B0C0FDE4()
{
  result = sub_1B0E44BB8();
  qword_1EB737E88 = result;
  unk_1EB737E90 = v1;
  return result;
}

uint64_t sub_1B0C0FE1C()
{
  result = sub_1B0E44BB8();
  qword_1EB738378 = result;
  unk_1EB738380 = v1;
  return result;
}

uint64_t sub_1B0C0FE4C()
{
  result = sub_1B0E44BB8();
  qword_1EB738388 = result;
  unk_1EB738390 = v1;
  return result;
}

uint64_t sub_1B0C0FE84()
{
  result = sub_1B0E44BB8();
  qword_1EB738398 = result;
  unk_1EB7383A0 = v1;
  return result;
}

uint64_t sub_1B0C0FEBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[7];
  v9 = a1[9];
  v10 = (v9 >> 59) & 6 | ((v8 & 0x2000000000000000) != 0);
  if (v10 > 2)
  {
    if (v10 > 4)
    {
      if (v10 == 5)
      {
        if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 5)
        {
          return 0;
        }
      }

      else if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 6)
      {
        return 0;
      }

LABEL_28:
      v22 = a2[2];
      v23 = a2[3];
      if (v4 == *a2 && v5 == a2[1] || (sub_1B0E46A78() & 1) != 0)
      {
        if (v6 == v22 && v7 == v23)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }

      return 0;
    }

    if (v10 == 3)
    {
      if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10)
  {
    if ((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0))
    {
      return 0;
    }

LABEL_22:
    v19 = a2[2];
    v20 = a2[3];
    if (!sub_1B0AB8858(v4, v5, *a2, a2[1]))
    {
      return 0;
    }

    v4 = v6;
    v5 = v7;
    v18 = v19;
    v17 = v20;
    goto LABEL_24;
  }

  if (v10 == 1)
  {
    v11 = a2[7];
    v12 = a2[9];
    if (((v12 >> 59) & 6 | ((v11 & 0x2000000000000000) != 0)) != 1)
    {
      return 0;
    }

    v28 = a1[5];
    v29 = a1[4];
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[4];
    v16 = a2[5];
    v26 = a2[6];
    v27 = a1[6];
    v24 = a2[8];
    v25 = a1[8];
    if (!sub_1B0AB8858(v4, v5, *a2, a2[1]) || !sub_1B0AB8858(v6, v7, v13, v14) || !sub_1B0AB8858(v29, v28, v15, v16) || !sub_1B0AB8858(v27, v8 & 0xDFFFFFFFFFFFFFFFLL, v26, v11 & 0xDFFFFFFFFFFFFFFFLL))
    {
      return 0;
    }

    v5 = v9 & 0xCFFFFFFFFFFFFFFFLL;
    v17 = v12 & 0xCFFFFFFFFFFFFFFFLL;
    v18 = v24;
    v4 = v25;
  }

  else
  {
    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 2)
    {
      return 0;
    }

    v18 = *a2;
    v17 = a2[1];
  }

LABEL_24:

  return sub_1B0AB8858(v4, v5, v18, v17);
}

BOOL sub_1B0C101A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1B0ED6968[(*(a1 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a2 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 < v5;
  }

  v3 = 8;
  v4 = *(a2 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1B0ED6968[(*(a2 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 < v5;
}

uint64_t sub_1B0C10200(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v12 = (a10 >> 59) & 6 | ((a8 & 0x2000000000000000) != 0);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        return result;
      }
    }

    else if (v12 == 4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        sub_1B0391D50(result, a2);
        sub_1B0391D50(a3, a4);
        sub_1B0391D50(a5, a6);
        sub_1B0391D50(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        a2 = a10 & 0xCFFFFFFFFFFFFFFFLL;
        result = a9;
LABEL_9:

        return sub_1B0391D50(result, a2);
      }

LABEL_7:
      sub_1B0391D50(result, a2);
      result = a3;
      a2 = a4;
      goto LABEL_9;
    }

    if (v12 == 2)
    {
      goto LABEL_9;
    }
  }
}

uint64_t objectdestroy_10Tm()
{
  sub_1B0C10200(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);
  v1 = v0[13];
  if (v1 >> 60 != 15)
  {
    sub_1B0391D50(v0[12], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B0C103A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if ((a8 & 0x1000000000000000) != 0)
  {
    v11 = a8 & 0xEFFFFFFFFFFFFFFFLL;

    return sub_1B0C10200(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
  }
}

uint64_t sub_1B0C1040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 1u)
  {
    if (!a9)
    {
      goto LABEL_13;
    }

    if (a9 != 1)
    {
      return result;
    }
  }

  else
  {
    if (a9 != 2)
    {
      if (a9 == 3)
      {
LABEL_14:
      }

      if (a9 != 4)
      {
        return result;
      }

LABEL_13:

      goto LABEL_14;
    }
  }
}

char *sub_1B0C10500(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[7];
  v8 = a1[9];
  v9 = (v8 >> 59) & 6 | ((v7 & 0x2000000000000000) != 0);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1B0EC1E70;
      *(v10 + 32) = v3;
      *(v10 + 40) = v2;
      *(v10 + 72) = 0;
      *(v10 + 88) = 0x1000000000000000;
      *(v10 + 104) = 0x1000000000000000;
      sub_1B03B2000(v3, v2);
    }

    else if (v9 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1B0EC1E70;
      *(v10 + 32) = v3;
      *(v10 + 40) = v2;
      *(v10 + 48) = v6;
      *(v10 + 56) = v5;
      *(v10 + 72) = 0;
      *(v10 + 88) = 0x3000000000000000;
      *(v10 + 104) = 0x1000000000000000;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }

    return v10;
  }

  if (v9)
  {
    v21 = a1[8];
    v22 = a1[5];
    v51 = a1[6];
    v23 = a1[2];
    v24 = v8 & 0xCFFFFFFFFFFFFFFFLL;
    v25 = a1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B0EC1E70;
    *(v10 + 32) = v3;
    *(v10 + 40) = v2;
    *(v10 + 48) = v23;
    *(v10 + 56) = v5;
    *(v10 + 64) = v25;
    *(v10 + 72) = v22 & 0xCFFFFFFFFFFFFFFFLL;
    *(v10 + 80) = v51;
    *(v10 + 88) = v7 | 0x3000000000000000;
    *(v10 + 96) = v21;
    *(v10 + 104) = v24;
    sub_1B03B2000(v3, v2);
    sub_1B03B2000(v23, v5);
    sub_1B03B2000(v25, v22);
    sub_1B03B2000(v51, v7 & 0xDFFFFFFFFFFFFFFFLL);
    sub_1B03B2000(v21, v24);
    return v10;
  }

  sub_1B0E44B38();
  v11 = sub_1B0E44AF8();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_1B0E44B38();
    v15 = sub_1B0E44AF8();
    if (v16)
    {
      v17 = v16;
      v49 = v15;
      v50 = v13;
      v10 = sub_1B0C0C208(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_1B0C0C208((v18 > 1), v19 + 1, 1, v10);
      }

      *(v10 + 16) = v19 + 1;
      v20 = (v10 + 80 * v19);
      v20[4] = v50;
      v20[5] = v14;
      v20[6] = v49;
      v20[7] = v17;
      v20[9] = 0;
      v20[11] = 0;
      goto LABEL_16;
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_16:
  sub_1B03B2000(v3, v2);
  sub_1B03B2000(v6, v5);
  sub_1B03B2000(v3, v2);
  sub_1B03B2000(v6, v5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1B0C0C208(0, *(v10 + 16) + 1, 1, v10);
  }

  v27 = *(v10 + 16);
  v26 = *(v10 + 24);
  v28 = v26 >> 1;
  v29 = v27 + 1;
  if (v26 >> 1 <= v27)
  {
    v10 = sub_1B0C0C208((v26 > 1), v27 + 1, 1, v10);
    v26 = *(v10 + 24);
    v28 = v26 >> 1;
  }

  *(v10 + 16) = v29;
  v30 = (v10 + 80 * v27);
  v30[4] = v3;
  v30[5] = v2;
  v30[6] = v6;
  v30[7] = v5;
  v30[9] = 0;
  v30[11] = 0x1000000000000000;
  v30[13] = 0x2000000000000000;
  v31 = v27 + 2;
  if (v28 < v31)
  {
    v10 = sub_1B0C0C208((v26 > 1), v31, 1, v10);
  }

  *(v10 + 16) = v31;
  v32 = (v10 + 80 * v29);
  v32[4] = v3;
  v32[5] = v2;
  v32[6] = v6;
  v32[7] = v5;
  v32[9] = 0;
  v32[11] = 0x1000000000000000;
  v32[13] = 0;
  sub_1B0E44B48();
  v33 = sub_1B0E44AF8();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    sub_1B0E44B48();
    v37 = sub_1B0E44AF8();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = *(v10 + 16);
      v42 = *(v10 + 24);
      v43 = v42 >> 1;
      v44 = v41 + 1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v42 >> 1 <= v41)
      {
        v10 = sub_1B0C0C208((v42 > 1), v41 + 1, 1, v10);
        v42 = *(v10 + 24);
        v43 = v42 >> 1;
      }

      *(v10 + 16) = v44;
      v45 = (v10 + 80 * v41);
      v45[4] = v35;
      v45[5] = v36;
      v45[6] = v39;
      v45[7] = v40;
      v45[9] = 0;
      v45[11] = 0x3000000000000000;
      v45[13] = 0x2000000000000000;
      v46 = v41 + 2;
      if (v43 < v46)
      {
        v10 = sub_1B0C0C208((v42 > 1), v46, 1, v10);
      }

      *(v10 + 16) = v46;
      v47 = (v10 + 80 * v44);
      v47[4] = v35;
      v47[5] = v36;
      v47[6] = v39;
      v47[7] = v40;
      v47[9] = 0;
      v47[11] = 0x1000000000000000;
      v47[13] = 0x3000000000000000;
    }

    else
    {
    }
  }

  return v10;
}

uint64_t sub_1B0C10A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 80))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0C10A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0C10B18(uint64_t result)
{
  v1 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) &= ~0x2000000000000000uLL;
  *(result + 72) = v1;
  return result;
}

void *sub_1B0C10B34(void *result, char a2)
{
  v2 = result[9];
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  result[5] &= 0xCFFFFFFFFFFFFFFFLL;
  result[7] = v3;
  result[9] = v2 & 0xCFFFFFFFFFFFFFFFLL | ((((a2 & 7) >> 1) & 3) << 60);
  return result;
}

unint64_t sub_1B0C10B7C()
{
  result = qword_1EB6E5720;
  if (!qword_1EB6E5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5720);
  }

  return result;
}

uint64_t sub_1B0C10BEC()
{
  v1 = sub_1B0E45278();
  *(v1 + 16) = 32;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  sub_1B0C12FFC((v1 + 32));
  v15 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1B0C0DF68(v1);
  }

  if (*(v1 + 16) <= 0xBuLL)
  {
    goto LABEL_20;
  }

  *(v1 + 40) = 1;
  v2 = *(v0 + 32);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1B0C0DF68(v1);
  }

  if (*(v1 + 16) <= 0xFuLL)
  {
LABEL_20:
    result = sub_1B0E465B8();
    __break(1u);
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v4) & 0xF;
    }

    if (v2)
    {
      v8 = 524807;
    }

    else
    {
      v8 = 519;
    }

    v9 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      v10 = v8 | 0x1000;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v10 |= 0x2000u;
    }

    *(v1 + 44) = v10;
    v11 = sub_1B0C12C10(v3, v4);
    sub_1B0C12034(v11, 16);

    v12 = sub_1B0C12C10(v5, v6);
    sub_1B0C12034(v12, 24);

    sub_1B0C31A28(v15);
    v13 = sub_1B0C05480(v1);

    return v13;
  }

  return result;
}

uint64_t sub_1B0C10E04(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

BOOL sub_1B0C10EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1B0C14F44(v5, v7);
}

uint64_t sub_1B0C10EFC@<X0>(size_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0C1126C(a1, a2);
  if (!v3)
  {
    if (a1)
    {
      v10 = a2 - a1;
    }

    else
    {
      v10 = 0;
    }

    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      if (sub_1B0C11688(8, 0, v10, a1, a2) != 2)
      {
        sub_1B0C16BB4();
        swift_allocError();
        *v11 = 2;
        *(v11 + 8) = 2;
        return swift_willThrow();
      }

      v4 = sub_1B0C11688(20, 0, v10, a1, a2);
      v5 = sub_1B0C13148(0x18, 8, a1, a2);
      if ((v4 & 0x800000) != 0)
      {
        v12 = sub_1B0C11504(40, 0, v10, a1, a2);
        if (v12)
        {
          v17 = v12;
          v18 = sub_1B0C11504(44, 0, v10, a1, a2);
          v10 = 0;
          if (v17 <= 0x7CFu && v18 < 0x7D0u)
          {
            v10 = 0;
            if (a1)
            {
              v29 = 0;
              v19 = (v18 + v17);
              if ((a2 - a1) >= v19)
              {
                v20 = v18;
                v21 = v19 - v18;
                v10 = sub_1B0C0C9F0(v21, 0);
                result = sub_1B0C14C80(v28, (v10 + 32), v21, v20, v19, a1, a2);
                if (result != v21)
                {
                  __break(1u);
                  return result;
                }
              }

              v3 = v29;
            }
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v10 = 0;
      }

      if ((v4 & 0x2000000) == 0)
      {
        v13 = 0;
LABEL_16:
        v15 = 1;
        goto LABEL_17;
      }

      v14 = sub_1B0C13148(0x30, 8, a1, a2);
      if (v3)
      {

        v13 = 0;
        v3 = 0;
        goto LABEL_16;
      }

      v22 = *(v14 + 2);
      v29 = v14;
      if (v22 != 8)
      {
        sub_1B0C16DE4();
        v24 = swift_allocError();
        swift_willThrow();

        v13 = 0;
        v15 = 1;
        v3 = 0;
        goto LABEL_17;
      }

      v23 = (v14 + 32);
      v27 = sub_1B0C1180C(0, 0, 8, (v14 + 32), (v14 + 40));
      v26 = sub_1B0C1180C(1, 0, 8, v23, v23 + 8);
      v3 = 0;
      LODWORD(result) = sub_1B0C11504(2, 0, 8, v23, v23 + 8);
    }

    v25 = result;

    v15 = 0;
    v13 = v27 | (v26 << 8) | (v25 << 16);
LABEL_17:
    result = sub_1B0C113A8(12, v4 & 1, a1, a2);
    if (v3)
    {
    }

    else
    {
      *a3 = v4;
      *(a3 + 8) = v5;
      *(a3 + 16) = result;
      *(a3 + 24) = v16;
      *(a3 + 32) = v10;
      *(a3 + 40) = v13;
      *(a3 + 44) = v15;
    }
  }

  return result;
}

uint64_t sub_1B0C1126C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || (v3 = v2, v2 > 6))
  {
    v3 = 7;
  }

  *&v12 = 0;
  *(&v12 + 1) = v3;
  *&v13 = a1;
  *(&v13 + 1) = v2;
  v14 = xmmword_1B0ED69A0;
  *&v15 = 0xE700000000000000;
  *(&v15 + 1) = 15;
  v16 = 0;
  while (1)
  {
    v4 = sub_1B0C14AD0();
    if ((v4 & 0x10000) != 0)
    {
      break;
    }

    if ((v4 & 0x80) != 0 || v4 != BYTE1(v4))
    {
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v7 = v12;
      v8 = v13;
      sub_1B0398EFC(&v7, &qword_1EB6E5788, &qword_1B0ED6C48);
      sub_1B0C16BB4();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 2;
      return swift_willThrow();
    }
  }

  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  return sub_1B0398EFC(&v7, &qword_1EB6E5788, &qword_1B0ED6C48);
}

uint64_t sub_1B0C113A8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (a3)
  {
    v6 = a4 - a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_1B0C11504(result, 0, v6, a3, a4);
  if (v4)
  {
    return result;
  }

  if (!result)
  {
    return 0;
  }

  v11 = result;
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
    goto LABEL_20;
  }

  v12 = sub_1B0C11504(result, 0, v6, a3, a4);
  v13 = 2;
  v14 = 3;
  if (v11 <= 0x7CFu && v12 <= 0x7CFu)
  {
    v14 = 3;
    if (a3)
    {
      v15 = (v12 + v11);
      if (v5 >= v15)
      {
        v14 = v15 - v12;
        if ((a2 & 1) == 0)
        {
          return sub_1B0C15EEC((v12 + a3), v14);
        }

        if ((v14 & 1) == 0)
        {
          return sub_1B0C15FC4(v12 + a3, v11 >> 1);
        }

        v13 = 1;
      }
    }
  }

  sub_1B0C16BB4();
  swift_allocError();
  *v16 = v14;
  *(v16 + 8) = v13;
  return swift_willThrow();
}

uint64_t sub_1B0C11504(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 2;
  if (__OFADD__(a1, 2))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if (a3 - a2 < v5)
  {
    sub_1B0C16BB4();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
  sub_1B0C16D0C();
  sub_1B0E429B8();
  return 0;
}

uint64_t sub_1B0C11688(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 4;
  if (__OFADD__(a1, 4))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if (a3 - a2 < v5)
  {
    sub_1B0C16BB4();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
  sub_1B0C16D0C();
  sub_1B0E429B8();
  return 0;
}

uint64_t sub_1B0C1180C(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if (a3 - a2 < v5)
  {
    sub_1B0C16BB4();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
  sub_1B0C16D0C();
  sub_1B0E429B8();
  return 0;
}

uint64_t sub_1B0C11990(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v2, v3);
}

uint64_t sub_1B0C119EC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 12);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_1B0E46A78()) && (v2 == v7 && v4 == v8 || (sub_1B0E46A78()) && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v3, v10))
  {
    return _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v5, v9) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C11ACC()
{
  v1 = v0;
  v2 = sub_1B0E45278();
  *(v2 + 16) = 64;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  sub_1B0C12FFC((v2 + 32));
  v10 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0DF68(v2);
  }

  if (*(v2 + 16) > 0xBuLL)
  {
    *(v2 + 40) = 3;
    v3 = sub_1B0C12C10(*(v1 + 16), *(v1 + 24));
    sub_1B0C12034(v3, 28);

    v4 = sub_1B0C12C10(*(v1 + 32), *(v1 + 40));
    sub_1B0C12034(v4, 36);

    v5 = sub_1B0C12C10(*(v1 + 48), *(v1 + 56));
    sub_1B0C12034(v5, 44);

    sub_1B0C11D00(*v1, 12);
    sub_1B0C11D00(*(v1 + 8), 20);
    v6 = *(v1 + 64);
    if (v6)
    {
      sub_1B0C11E9C((v6 + 32), *(v6 + 16), 52);
    }

    else
    {
      sub_1B0C11D00(MEMORY[0x1E69E7CC0], 52);
    }

    if (*(v1 + 76))
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0C0DF68(v2);
    }

    if (*(v2 + 16) > 0x3FuLL)
    {
      *(v2 + 92) = v7;
LABEL_12:
      sub_1B0C31A28(v10);
      v8 = sub_1B0C05480(v2);

      return v8;
    }
  }

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C11D00(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;
  v11 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v11);
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1B0C0DF68(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v8 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v3)
  {
    goto LABEL_25;
  }

  v15 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v5;
  v17 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v3 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v10;
      *v4 = v8;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C11E9C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = v3[1];
  v6 = v3 + 1;
  v8 = *(v7 + 16);
  v9 = *v5;
  v10 = *(*v5 + 16);
  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v11))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = a3;
  sub_1B0C32170(a1, a2, 0);
  v6 = (*(*v6 + 16) - v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1B0C0DF68(v9);
  v9 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v6 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v9 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v4)
  {
    goto LABEL_25;
  }

  v15 = v9 + 32;
  *(v9 + 32 + v4) = v6;
  v16 = v4 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v6;
  v17 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v4 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v11;
      *v5 = v9;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C12034(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;

  sub_1B0C31B14();
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1B0C0DF68(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v8 + 16);
  if (v13 < v12)
  {
    goto LABEL_31;
  }

  if (v12 < v3)
  {
    goto LABEL_25;
  }

  v14 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v15 = v3 + 4;
  if (__OFADD__(v12, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 < v15)
  {
    goto LABEL_31;
  }

  if (v15 < v12)
  {
    goto LABEL_27;
  }

  *(v14 + v12) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v3 + 8;
  if (__OFADD__(v16, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 >= v17)
  {
    if (v17 >= v16)
    {
      *(v14 + v16) = v10;
      *v4 = v8;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0C121D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2(a1);
  v3 = *(v2 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_2:
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1B0C0C114((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v6;
  v2[v5 + 32] = 0x80;
  v23 = v2;
  if (v5 > 0xFFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v6 & 0x100000000000003FLL) == 0x38)
  {
    goto LABEL_12;
  }

  v7 = v5 + 33;
  do
  {
    v8 = *(v2 + 3);
    v9 = v7 - 31;
    if (v7 - 32 >= v8 >> 1)
    {
      v2 = sub_1B0C0C114((v8 > 1), v7 - 31, 1, v2);
    }

    *(v2 + 2) = v9;
    v2[v7] = 0;
    if (v7 - 32 > 0xFFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v2 = sub_1B0C0C114(0, v3 + 1, 1, v2);
      goto LABEL_2;
    }

    ++v7;
  }

  while ((v9 & 0x100000000000003FLL) != 0x38);
  v23 = v2;
LABEL_12:
  if (v3 >> 60)
  {
LABEL_26:
    __break(1u);
  }

  v22 = 8 * v3;
  sub_1B0C31CE8(&v22, &v23);
  v22 = v3 >> 29;
  sub_1B0C31CE8(&v22, &v23);
  v10 = 1732584193;
  v11 = -271733879;
  v21 = -271733879;
  v22 = 1732584193;
  v12 = -1732584194;
  v13 = 271733878;
  v19 = 271733878;
  v20 = -1732584194;
  v2 = v23;
  v14 = *(v23 + 2);
  if (v14 >= 4)
  {
    v15 = 0;
    v3 = v14 >> 2;
    do
    {
      v16 = &v2[4 * v15 + 32];
      v24[0] = *v16;
      v24[1] = v16[1];
      v24[2] = v16[2];
      v24[3] = v16[3];
      v24[4] = v16[4];
      v24[5] = v16[5];
      v24[6] = v16[6];
      v24[7] = v16[7];
      v24[8] = v16[8];
      v24[9] = v16[9];
      v24[10] = v16[10];
      v24[11] = v16[11];
      v24[12] = v16[12];
      v24[13] = v16[13];
      v24[14] = v16[14];
      v24[15] = v16[15];
      sub_1B0C174B8(&v22, &v21, &v20, &v19, v24);
      if (v3 - v15 >= 0x10)
      {
        v15 += 16;
      }

      else
      {
        v15 = v3;
      }

      if (v3 < v15)
      {
        goto LABEL_23;
      }
    }

    while (v15 != v3);
    v11 = v21;
    v10 = v22;
    v13 = v19;
    v12 = v20;
  }

  v17 = sub_1B0E45278();
  *(v17 + 16) = 16;
  *(v17 + 32) = v10;
  *(v17 + 36) = v11;
  *(v17 + 40) = v12;
  *(v17 + 44) = v13;

  return v17;
}

uint64_t sub_1B0C124B8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != 16)
  {
LABEL_9:
    __break(1u);
  }

  swift_bridgeObjectRetain_n();
  sub_1B0C14438(a1, a1 + 32, 0, 0xFuLL);
  v6 = v5;
  v20 = v5;
  sub_1B0C14438(a1, a1 + 32, 7, 0x1DuLL);
  v8 = v7;

  v21 = v8;
  sub_1B0C14438(a1, a1 + 32, 14, 0x21uLL);
  v10 = v9;

  sub_1B0C31A28(&unk_1F271B6D8);
  v22 = v10;
  v18 = MEMORY[0x1E69E7CC0];
  if (*(v6 + 16) != 7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C12730(&v17, key, 8uLL, v6, a2);
  if (!v2)
  {
    v11 = v17;

    sub_1B0C31A28(v11);
    v12 = v21;
    if (*(v21 + 16) == 7)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C12730(&v17, key, 8uLL, v12, a2);
      v13 = v17;

      sub_1B0C31A28(v13);
      v14 = v22;
      if (*(v22 + 16) == 7)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C12730(&v17, key, 8uLL, v14, a2);
        v15 = v17;

        sub_1B0C31A28(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
        swift_arrayDestroy();
        return v18;
      }
    }

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  swift_arrayDestroy();

  swift_willThrow();
}

uint64_t *sub_1B0C12730@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *key@<X0>, size_t keyLength@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a4 + 32);
  *key = v8;
  if (v7 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(a4 + 33);
  HIDWORD(v10) = v8;
  LODWORD(v10) = v9 << 24;
  key[1] = v10 >> 25;
  if (v7 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(a4 + 34);
  HIDWORD(v12) = v9;
  LODWORD(v12) = v11 << 24;
  key[2] = v12 >> 26;
  if (v7 == 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(a4 + 35);
  HIDWORD(v14) = v11;
  LODWORD(v14) = v13 << 24;
  key[3] = v14 >> 27;
  if (v7 < 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(a4 + 36);
  HIDWORD(v16) = v13;
  LODWORD(v16) = v15 << 24;
  key[4] = v16 >> 28;
  if (v7 == 5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v17 = *(a4 + 37);
  HIDWORD(v18) = v15;
  LODWORD(v18) = v17 << 24;
  key[5] = v18 >> 29;
  if (v7 < 7)
  {
    goto LABEL_18;
  }

  v19 = *(a4 + 38);
  HIDWORD(v20) = v17;
  LODWORD(v20) = v19 << 24;
  key[6] = v20 >> 30;
  key[7] = 2 * v19;
  result = sub_1B0C1288C(&v22, dataOut, key, keyLength, (a5 + 32), &v24, a5 + 32 + *(a5 + 16));
  if (v5)
  {
    return swift_willThrow();
  }

  *a1 = v22;
  return result;
}

uint64_t *sub_1B0C1288C@<X0>(uint64_t *__return_ptr a1@<X8>, void *dataOut@<X0>, void *key@<X2>, size_t keyLength@<X3>, void *dataIn@<X4>, size_t a6@<X1>, uint64_t a7@<X5>)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (dataIn)
  {
    v10 = a7 - dataIn;
  }

  else
  {
    v10 = 0;
  }

  if (dataOut)
  {
    v11 = a6 - dataOut;
  }

  else
  {
    v11 = 0;
  }

  dataOutMoved = 0;
  result = CCCrypt(0, 1u, 2u, key, keyLength, 0, dataIn, v10, dataOut, v11, &dataOutMoved);
  if (result)
  {
    v13 = result;
    sub_1B0C16E48();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  if ((dataOutMoved & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v11 >= dataOutMoved)
  {
    v11 = dataOutMoved;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v15 = sub_1B0C0C9F0(v11, 0);
  result = sub_1B0C14C80(v17, v15 + 4, v11, 0, v11, dataOut, a6);
  if (result != v11)
  {
    __break(1u);
LABEL_16:
    v15 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1B0C129E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1B0E44508();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0C12C10(a3, a4);
  v15 = sub_1B0C121D0(v14, sub_1B0BE9024);

  v21 = sub_1B0E44BB8();
  v22 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](a5, a6);

  sub_1B0C12C10(v21, v22);

  v21 = sub_1B0C00F18(v17);
  v22 = v18;
  v20[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B039E3F8(&qword_1EB6DAE08, &qword_1EB6E21D0, &unk_1B0EA2E70, MEMORY[0x1E6969E08]);
  sub_1B0E444F8();
  sub_1B0E44568();
  sub_1B0BF8F04();
  sub_1B08DEFE0();
  sub_1B0E44518();

  (*(v11 + 8))(v13, v10);
  return sub_1B0391D50(v21, v22);
}

uint64_t sub_1B0C12C10(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  *(v6 + 50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5760, &qword_1B0ED6C38);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B0C16E38;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5790, &unk_1B0ED6C50);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B0C16E40;
  *(v9 + 24) = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v9;
}

uint64_t sub_1B0C12D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E45278();
  v7 = v6;
  *(v6 + 16) = 28;
  *(v6 + 34) = 0;
  *(v6 + 42) = 0;
  *(v6 + 50) = 0;
  *(v6 + 58) = 0;
  *(v6 + 32) = 257;
  *(v6 + 40) = a1;
  if (*(a2 + 16) >= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  memmove((v6 + 48), (a2 + 32), v8);
  if (a3)
  {
    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C31A28(v9);
  }

  v10 = sub_1B0E45278();
  *(v10 + 16) = 4;
  *(v10 + 32) = 0;
  sub_1B0C31A28(v10);
  return v7;
}

uint64_t sub_1B0C12E70()
{
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v0 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v0);

  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v1 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v1);

  return v3;
}

uint64_t sub_1B0C12F58(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B0E46A78(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B0E46A78();
    }
  }

  return result;
}

uint64_t sub_1B0C12FFC(void *a1)
{
  v2 = sub_1B0E44BC8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v4 = v2;
    sub_1B03A4BAC(0, v3, 0);
    result = v4;
    v6 = 0;
    v7 = v11;
    do
    {
      if (v6 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v8 = aNtlmssp[v6];
      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B03A4BAC((v9 > 1), v10 + 1, 1);
        result = v4;
      }

      ++v6;
      *(v11 + 16) = v10 + 1;
      *(v11 + v10 + 32) = v8;
    }

    while (v3 != v6);

    if (!a1)
    {
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
    if (!a1)
    {
    }
  }

  memmove(a1, (v7 + 32), *(v7 + 16));
}

char *sub_1B0C13148(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    if (result <= 0)
    {
      v5 = &result[a2];
      if (__OFADD__(result, a2))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v5 <= 0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    sub_1B0C16BB4();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 2;
    swift_willThrow();
    return v4;
  }

  if (a4 - a3 < result)
  {
    goto LABEL_9;
  }

  v5 = &result[a2];
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a4 - a3 < v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v7 = v5 - result;
  if (v5 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = result;
  result = sub_1B0C0C9F0(v5 - result, 0);
  v10 = (v9 + v7);
  if (__OFADD__(v9, v7))
  {
    goto LABEL_28;
  }

  if (v10 >= v9)
  {
    v4 = result;
    if (v10 == v9)
    {
      if (v7)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      if (a3)
      {
        v11 = v9 + a3;
      }

      else
      {
        v11 = 0;
      }

      memcpy(result + 32, v11, v7);
    }

    return v4;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B0C1328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    if (v6 == *(a1 + 24))
    {
      LOWORD(v6) = 0;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *(a1 + 16) = v6 + 1;
      LOWORD(v6) = *v6;
    }
  }

  *a2 = v6;
  *(a2 + 2) = v4;
  return result;
}

void (*sub_1B0C13310())()
{
  LODWORD(v1) = *v0;
  v2 = *(v0 + 4);
  v17 = *v0;
  v18 = v2;
  if (!v2)
  {
    sub_1B0E466E8();
    if (v16)
    {
LABEL_3:
      v3 = 0;
      *v0 = v1;
      *(v0 + 4) = 0;
      v4 = 1;
LABEL_27:
      LOBYTE(v15) = v4;
      return (v3 | (v4 << 32));
    }

    LODWORD(v3) = v15;
    if ((v15 & 0xF800) != 0xD800)
    {
      v7 = 0;
      goto LABEL_26;
    }

    LODWORD(v1) = v1 & 0xFFFF0000 | v15;
    v2 = 16;
LABEL_6:
    sub_1B0E466E8();
    if (v16)
    {
      v5 = v2;
      goto LABEL_8;
    }

    LODWORD(v1) = ((-65535 << v2) - 1) & v1 | (v15 << v2);
    v5 = v2 + 16;
    if ((v2 + 16) <= 0x1Fu)
    {
      sub_1B0E466E8();
      if (v16)
      {
        goto LABEL_8;
      }

      LODWORD(v1) = ((-65535 << v5) - 1) & v1 | (v15 << v5);
      v5 = v2 + 32;
      if (v2 >= 0xE0)
      {
        sub_1B0E466E8();
        if ((v16 & 1) == 0)
        {
          v6 = ((-65535 << v2) - 1) & v1 | (v15 << v2);
          v5 = v2 + 48;
LABEL_17:
          v8 = v6 & 0xFC00FC00;
          if ((v6 & 0xFC00FC00) == 0xDC00D800)
          {
            v9 = 32;
          }

          else
          {
            v9 = 16;
          }

          v7 = v5 - v9;
          v10 = v8 == -603924480;
          if (v8 == -603924480)
          {
            v11 = 32;
          }

          else
          {
            v11 = 16;
          }

          v1 = v6 >> v11;
          if (!v10)
          {
            *v0 = v1;
            *(v0 + 4) = v7;
            v3 = 1;
            v4 = 1;
            goto LABEL_27;
          }

          LODWORD(v3) = (HIWORD(v6) & 0x3FF | ((v6 & 0x3FF) << 10)) + 0x10000;
LABEL_26:
          v4 = 0;
          *v0 = v1;
          *(v0 + 4) = v7;
          v3 = v3;
          goto LABEL_27;
        }

LABEL_8:
        v6 = v1;
        if (!v5)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v6 = v1;
    goto LABEL_17;
  }

  if ((v1 & 0xF800) == 0xD800)
  {
    goto LABEL_6;
  }

  sub_1B0C16CB8();
  result = sub_1B0C14AB0();
  v14 = *(v13 + 4);
  if (v14)
  {
    *v13 = *(v13 + 2);
    *(v13 + 4) = v14 - 16;
    (result)(&v15, 0);
    LODWORD(v3) = v1;
    LODWORD(v1) = v17;
    v7 = v18;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void *sub_1B0C13558@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 17) == 1)
  {
    result = sub_1B0E466E8();
    if (v9)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = v7;
      result = swift_beginAccess();
      v6 = 0;
      *(a1 + 16) = v8;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    result = swift_beginAccess();
    v6 = 0;
    *(a1 + 16) = 256;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B0C13624@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  v3 = sub_1B0E44E48();
  result = swift_endAccess();
  *a2 = v3;
  *(a2 + 2) = BYTE2(v3) & 1;
  return result;
}

BOOL sub_1B0C136D0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B0C13700@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B0C1372C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1B0C137EC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B0C137FC@<X0>(_DWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1B0C16EB4(a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1B0C1383C(int a1)
{
  if (a1)
  {
    v2 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1B0AFF0E8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0xD000000000000010;
    *(v5 + 5) = 0x80000001B0F2D290;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B0AFF0E8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "negotiateOEM");
    v8[45] = 0;
    *(v8 + 23) = -5120;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1B0AFF0E8((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  strcpy(v11 + 32, "requestTarget");
  *(v11 + 23) = -4864;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1B0AFF0E8((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "negotiateSign");
  *(v14 + 23) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1B0AFF0E8((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "negotiateSeal");
  *(v17 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_11:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1B0AFF0E8((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000016;
  *(v20 + 5) = 0x80000001B0F2D270;
  if ((a1 & 0x80) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1B0AFF0E8((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000016;
  *(v23 + 5) = 0x80000001B0F2D250;
  if ((a1 & 0x200) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1B0AFF0E8((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "negotiateNTLM");
  *(v26 + 23) = -4864;
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1B0AFF0E8((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000012;
  *(v29 + 5) = 0x80000001B0F2D230;
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1B0AFF0E8((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0xD000000000000017;
  *(v32 + 5) = 0x80000001B0F2D210;
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1B0AFF0E8((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD00000000000001CLL;
  *(v35 + 5) = 0x80000001B0F2D1F0;
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1B0AFF0E8((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000013;
  *(v38 + 5) = 0x80000001B0F2D1D0;
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1B0AFF0E8((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD000000000000010;
  *(v41 + 5) = 0x80000001B0F2D1B0;
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1B0AFF0E8((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000010;
  *(v44 + 5) = 0x80000001B0F2D190;
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_1B0AFF0E8((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000011;
  *(v47 + 5) = 0x80000001B0F2D170;
  if ((a1 & 0x100000) == 0)
  {
LABEL_21:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_103;
  }

LABEL_98:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_1B0AFF0E8((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000011;
  *(v50 + 5) = 0x80000001B0F2D150;
  if ((a1 & 0x400000) == 0)
  {
LABEL_22:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_108;
  }

LABEL_103:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_1B0AFF0E8((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000016;
  *(v53 + 5) = 0x80000001B0F2D130;
  if ((a1 & 0x800000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_113;
  }

LABEL_108:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_1B0AFF0E8((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000013;
  *(v56 + 5) = 0x80000001B0F2D110;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_118;
  }

LABEL_113:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_1B0AFF0E8((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000010;
  *(v59 + 5) = 0x80000001B0F2D0F0;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_123;
  }

LABEL_118:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_1B0AFF0E8((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "negotiate128");
  v62[45] = 0;
  *(v62 + 23) = -5120;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_123:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_1B0AFF0E8((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000014;
  *(v65 + 5) = 0x80000001B0F2D0D0;
  if (a1 < 0)
  {
LABEL_128:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_1B0AFF0E8((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 0x746169746F67656ELL;
    *(v68 + 5) = 0xEB00000000363565;
  }

LABEL_133:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v69 = sub_1B0E448E8();

  return v69;
}

void sub_1B0C14438(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s9OSVersionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9OSVersionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1B0C14570()
{
  result = qword_1EB6E5728;
  if (!qword_1EB6E5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5728);
  }

  return result;
}

unint64_t sub_1B0C145C8()
{
  result = qword_1EB6E5730;
  if (!qword_1EB6E5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5730);
  }

  return result;
}

unint64_t sub_1B0C14620()
{
  result = qword_1EB6E5738;
  if (!qword_1EB6E5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5738);
  }

  return result;
}

unint64_t sub_1B0C14678()
{
  result = qword_1EB6E5740;
  if (!qword_1EB6E5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5740);
  }

  return result;
}

uint64_t sub_1B0C146CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1B0E44568();
      sub_1B0BF8F04();
      return sub_1B0E44498();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B0C1496C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1B0C1496C(v5, v6);
  }

  sub_1B0E44568();
  sub_1B0BF8F04();
  return sub_1B0E44498();
}

size_t sub_1B0C1484C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1B0C10EFC(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1B0C14A1C(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B0C14A1C(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1B0C10EFC(v8, v4, a3);
}

uint64_t sub_1B0C1496C(uint64_t a1, uint64_t a2)
{
  result = sub_1B0E42A98();
  if (!result || (result = sub_1B0E42AC8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B0E42AB8();
      sub_1B0E44568();
      sub_1B0BF8F04();
      return sub_1B0E44498();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1B0C14A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0E42A98();
  v7 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1B0E42AB8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1B0C10EFC(v7, v13, a3);
}

uint64_t sub_1B0C14AD0()
{
  if (*(v0 + 64))
  {
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v3 = *(v0 + 32);
  if (v3 == *(v0 + 8) || ((v4 = *(*(v0 + 16) + v3), *(v0 + 32) = v3 + 1, v5 = *(v0 + 40), v6 = *(v0 + 48), (v6 & 0x2000000000000000) != 0) ? (v7 = HIBYTE(v6) & 0xF) : (v7 = v5 & 0xFFFFFFFFFFFFLL), v8 = *(v0 + 56), v8 >> 14 == 4 * v7))
  {
    v1 = 0;
    v2 = 1;
    *(v0 + 64) = 1;
    return v1 | (v2 << 16);
  }

  v9 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = *(v0 + 56) & 0xCLL;
  v11 = 4 << v9;
  v12 = *(v0 + 56);
  if (v10 == v11)
  {
    v24 = *(v0 + 56);
    v27 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_1B0A6D6C4(v8, v5, v6);
    v6 = v16;
    v12 = v17;
    v8 = v24;
    v5 = v27;
  }

  v13 = v12 >> 16;
  if (v12 >> 16 >= v7)
  {
    __break(1u);
LABEL_23:
    v25 = v8;
    v28 = v5;
    v18 = v6;
    v19 = sub_1B0E44E08();
    v6 = v18;
    v13 = v19;
    v8 = v25;
    v5 = v28;
    if (v10 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v31[0] = v5;
    v31[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    v14 = v31;
  }

  else
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v14 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  while (1)
  {
    LOBYTE(v13) = *(v14 + v13);
    if (v10 == v11)
    {
LABEL_24:
      v29 = v5;
      v22 = v6;
      v8 = sub_1B0A6D6C4(v8, v5, v6);
      v6 = v22;
      v5 = v29;
      if ((v22 & 0x1000000000000000) == 0)
      {
LABEL_21:
        v15 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_27;
      }
    }

    else
    {
LABEL_20:
      if ((v6 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v7 > v8 >> 16)
    {
      break;
    }

    __break(1u);
LABEL_30:
    v26 = v8;
    v30 = v5;
    v23 = v6;
    v21 = sub_1B0E46368();
    v5 = v30;
    v14 = v21;
    v6 = v23;
    v8 = v26;
  }

  v15 = sub_1B0E44DD8();
LABEL_27:
  v2 = 0;
  *(v0 + 56) = v15;
  v1 = v4 & 0xFFFF00FF | (v13 << 8);
  return v1 | (v2 << 16);
}

size_t *sub_1B0C14C80(size_t *result, void *__dst, int64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if (a5 - a4 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0C14D88(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          if (a1 == a4 && a2 == a5)
          {
            return 1;
          }

          return sub_1B0E46A78();
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 == 5)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 6 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 6 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 6 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 6 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1B0E46A78();
  }

  return 0;
}

BOOL sub_1B0C14F44(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v5 == 255)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  if (!v4)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_16:
    if ((v9 != v10 || a1[1] != v11) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (sub_1B0BF7BC0(a1[3], a2[3]))
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (!v7 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v6, v7) & 1) == 0)
        {
          return 0;
        }

LABEL_24:
        if (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(a1[5], a2[5]))
        {
          return *(a1 + 12) == *(a2 + 12);
        }

        return 0;
      }

      if (!v7)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 != 1)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if (v5 == 2 && !(v11 | v10))
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1B0C1503C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v43 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a9;
  v16 = sub_1B0E44568();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54C8, &unk_1B0ED0780);
  MEMORY[0x1EEE9AC00](v45);
  v20 = &v38 - v19;
  v21 = *(a5 + 16);
  if (v21)
  {
    v22 = (a5 + 48);
    while (*v22 != 1)
    {
      v22 += 24;
      if (!--v21)
      {
        goto LABEL_5;
      }
    }

    v23 = *(v22 - 1);
    v39 = *(v22 - 2);
    v46 = v23;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
LABEL_5:
    v39 = 0;
    v46 = 0xE000000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = sub_1B0C12C10(a3, a4);
  v25 = sub_1B0C121D0(v24, sub_1B0BE9024);

  v26 = sub_1B0E45278();
  v26[2] = 16;
  v26[4] = 0;
  v26[5] = 0;
  v48 = a8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v26);
  v44 = v48;
  v48 = a6;
  v27 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v27);
  v28 = sub_1B0C05480(v48);
  v30 = v29;

  sub_1B0BF8F04();
  sub_1B0E444C8();
  sub_1B03B2000(v28, v30);
  sub_1B0C146CC(v28, v30, v18);
  sub_1B0391D50(v28, v30);
  sub_1B0E444A8();
  sub_1B0391D50(v28, v30);
  (*(v47 + 8))(v18, v16);
  *&v20[*(v45 + 36)] = 8;
  v31 = sub_1B0BE8BE0(v20);
  sub_1B0398EFC(v20, &qword_1EB6E54C8, &unk_1B0ED0780);
  v32 = sub_1B0C124B8(v25, v31);
  if (v10)
  {
  }

  else
  {
    v33 = v32;

    v34 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = v42;
    v36 = v39;
    *v42 = v40;
    v35[1] = v34;
    v37 = v46;
    v35[2] = v36;
    v35[3] = v37;
    v35[4] = v44;
    v35[5] = v33;
    *(v35 + 12) = v43;
  }
}

double sub_1B0C15398@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W6>, uint64_t a7@<X8>, uint64_t a8@<X5>)
{
  v15 = sub_1B0C12C10(a3, a4);
  v16 = sub_1B0C121D0(v15, sub_1B0BE9024);

  v17 = sub_1B0C124B8(v16, a8);

  if (!v8)
  {
    v19 = *(a5 + 16);
    if (v19)
    {
      v20 = (a5 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_6;
        }
      }

      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      sub_1B0C16E9C(v21, v22, 1u);
    }

    else
    {
LABEL_6:
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = v21;
    *(a7 + 24) = v22;
    *(a7 + 32) = v17;
    *(a7 + 40) = v17;
    *(a7 + 48) = a6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

void sub_1B0C154B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v124 = a7;
  v114 = a6;
  v17 = sub_1B0E44508();
  v18 = *(v17 - 8);
  v120 = v17;
  v121 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55B0, &qword_1B0ED3120);
  v20 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v112 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v92 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v92 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v92 - v29;
  v30 = sub_1B0E43108();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  if ((a8 & 0x80000) != 0)
  {
    v47 = sub_1B0E45278();
    *(v47 + 16) = 8;
    *(v47 + 32) = 0;
    CCRandomGenerateBytes((v47 + 32), 8uLL);
    v48 = v123;
    sub_1B0C1503C(a1, a2, a3, a4, a5, v124, a8, v47, v127);

    if (v48)
    {
      return;
    }

    v49 = v128;
    v51 = v127[4];
    v50 = v127[5];
    v52 = v127[2];
    v53 = v127[3];
    v54 = v127[0];
    v55 = v127[1];
    goto LABEL_20;
  }

  v110 = a3;
  v111 = a4;
  v113 = a2;
  v109 = a8;
  if (a10)
  {
    v37 = v36;
    v107 = v34;
    v108 = v20;
    v106 = &v92 - v35;
    sub_1B0E430F8();
    v38 = sub_1B0E45278();
    *(v38 + 16) = 8;
    v39 = v38;
    *(v38 + 32) = 0;
    CCRandomGenerateBytes((v38 + 32), 8uLL);
    v40 = *(a5 + 16);
    if (v40)
    {
      v41 = (a5 + 48);
      v42 = v118;
      v43 = v111;
      v44 = v110;
      while (*v41 != 1)
      {
        v41 += 24;
        if (!--v40)
        {
          v45 = 0;
          v46 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      v57 = *(v41 - 2);
      v58 = v111;
      v59 = v110;
      v46 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v45 = v57;
      v44 = v59;
      v43 = v58;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      v42 = v118;
      v43 = v111;
      v44 = v110;
    }

LABEL_14:
    v105 = a1;
    v104 = v45;
    v103 = v46;
    sub_1B0C129E4(a1, v113, v44, v43, v45, v46);
    v60 = v107;
    (*(v37 + 16))(v32, v106, v107);
    sub_1B0E430B8();
    v62 = round((v61 + 1.16444736e10) * 10000000.0);
    v63 = *(v37 + 8);
    v102 = v37 + 8;
    v63(v32, v60);
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v62 > -1.0)
    {
      if (v62 < 1.84467441e19)
      {
        v93 = v63;
        v94 = a9;
        v101 = v39;
        v64 = sub_1B0C12D38(v62, v39, v114);
        v125 = v124;
        swift_bridgeObjectRetain_n();
        v65 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0C31A28(v65);
        v66 = sub_1B0C05480(v125);
        v68 = v67;

        v125 = v66;
        v126 = v68;
        v69 = v108;
        v70 = *(v108 + 16);
        v71 = v117;
        v118 = v108 + 16;
        v114 = v70;
        v70(v117, v122, v42);
        v72 = sub_1B039E3F8(&qword_1EB6E55C0, &qword_1EB6E55B0, &qword_1B0ED3120, MEMORY[0x1E69664B0]);
        v73 = v116;
        v100 = v72;
        sub_1B0E444F8();
        v74 = sub_1B0E44568();
        v75 = sub_1B0BF8F04();
        v76 = sub_1B08DEFE0();
        v77 = v115;
        v99 = v74;
        v98 = v75;
        v97 = v76;
        sub_1B0E44518();
        v78 = v121 + 8;
        v96 = *(v121 + 8);
        v96(v73, v120);
        sub_1B0391D50(v125, v126);
        v79 = *(v64 + 16);
        v95 = sub_1B039E3F8(&qword_1EB6E5798, &qword_1EB6E55B0, &qword_1B0ED3120, MEMORY[0x1E69664C0]);
        v80 = sub_1B0E44F28();
        if (!__OFADD__(v79, v80))
        {
          v125 = sub_1B0C0C114(0, (v79 + v80) & ~((v79 + v80) >> 63), 0, MEMORY[0x1E69E7CC0]);
          v114(v71, v77, v42);
          sub_1B0C31E98(v71);
          sub_1B0C31A28(v64);
          v121 = v78;
          v81 = *(v69 + 8);
          v81(v77, v42);
          v108 = v69 + 8;
          v115 = v81;
          v81(v122, v42);
          v122 = v125;
          v82 = v119;
          v83 = v73;
          v55 = v113;
          sub_1B0C129E4(v105, v113, v110, v111, v104, v103);
          v125 = v124;
          v84 = v101;
          swift_bridgeObjectRetain_n();
          sub_1B0C31A28(v84);
          v85 = sub_1B0C05480(v125);
          v87 = v86;

          v125 = v85;
          v126 = v87;
          v114(v71, v82, v42);
          sub_1B0E444F8();
          v88 = v112;
          sub_1B0E44518();
          v96(v83, v120);
          sub_1B0391D50(v125, v126);
          v89 = *(v84 + 16);
          v90 = sub_1B0E44F28();
          if (!__OFADD__(v89, v90))
          {
            v125 = sub_1B0C0C114(0, (v89 + v90) & ~((v89 + v90) >> 63), 0, MEMORY[0x1E69E7CC0]);
            v114(v71, v88, v42);
            sub_1B0C31E98(v71);
            sub_1B0C31A28(v84);
            v91 = v115;
            (v115)(v88, v42);
            (v91)(v119, v42);
            v51 = v125;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v93(v106, v107);

            v50 = v122;
            a9 = v94;
            v49 = v109;
            v54 = v105;
            v52 = v104;
            v53 = v103;
            goto LABEL_20;
          }

LABEL_26:
          __break(1u);
          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  v56 = v123;
  sub_1B0C15398(a1, v113, v110, v111, a5, v109, v129, v124);
  if (v56)
  {
    return;
  }

  v49 = v130;
  v51 = v129[4];
  v50 = v129[5];
  v52 = v129[2];
  v53 = v129[3];
  v54 = v129[0];
  v55 = v129[1];
LABEL_20:
  *a9 = v54;
  *(a9 + 8) = v55;
  *(a9 + 16) = v52;
  *(a9 + 24) = v53;
  *(a9 + 32) = v51;
  *(a9 + 40) = v50;
  *(a9 + 48) = v49;
}

uint64_t sub_1B0C15EEC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  MEMORY[0x1B2726D20](a2);
  if (!a1)
  {
    return 0;
  }

  result = 0;
  v5 = 0xE000000000000000;
  if (v2)
  {
    while (*a1 - 127 >= 0xFFFFFFA1)
    {
      ++a1;
      v7 = result;
      v8 = v5;
      sub_1B0E44C58();
      result = v7;
      v5 = v8;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1B0C16BB4();
    swift_allocError();
    *v6 = 5;
    *(v6 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0C15FC4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B2726D20](a2);
  if (a1)
  {
    v4 = a1 + 2 * a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5760, &qword_1B0ED6C38);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B0C16CB0;
  *(v6 + 24) = v5;

  while (1)
  {
    v7 = sub_1B0C13310();
    if ((v7 & 0x100000000) != 0)
    {
      break;
    }

    sub_1B0E44C58();
  }

  if (v7)
  {

    sub_1B0C16BB4();
    swift_allocError();
    *v8 = 4;
    *(v8 + 8) = 2;
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1B0C16128@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v11 = 0;
      goto LABEL_21;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 32)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 32)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v6 == 2)
      {
        v19 = *(result + 16);
        v18 = *(result + 24);
        v11 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (v6 == 1)
      {
        if (!__OFSUB__(HIDWORD(result), result))
        {
          v11 = HIDWORD(result) - result;
LABEL_21:
          sub_1B0C16BB4();
          swift_allocError();
          *v20 = v11;
          *(v20 + 8) = 0;
          swift_willThrow();
          return sub_1B0391D50(v5, a2);
        }

LABEL_25:
        __break(1u);
        return result;
      }

      v11 = BYTE6(a2);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 0x20uLL)
  {
    goto LABEL_8;
  }

LABEL_14:
  sub_1B0C1484C(result, a2, &v21);
  result = sub_1B0391D50(v5, a2);
  if (!v3)
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    *a3 = v21;
    *(a3 + 8) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    *(a3 + 44) = v17;
  }

  return result;
}

uint64_t sub_1B0C16290(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0C162A4(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = v4 - v3;
  v6 = v3 == 0;
  if (v3)
  {
    v7 = v4 - v3;
  }

  else
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) == 0 && v7 >= v2)
  {
    v8 = result;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8[1];
      if ((v11 & 0x8000000000000000) != 0 || v7 < v11)
      {
        goto LABEL_120;
      }

      if ((v11 - v2) < 4)
      {

        sub_1B0C16C5C();
        goto LABEL_115;
      }

      v63 = v9;
      v12 = sub_1B0C11504(0, v2, v11, v3, v4);
      if (v1)
      {

        return v9;
      }

      v13 = v12;
      result = sub_1B0C11504(2, v2, v11, v3, v4);
      if (!(v13 | result))
      {
        return v63;
      }

      if (v6)
      {
        if (v2)
        {
          goto LABEL_135;
        }

        v14 = 0;
      }

      else
      {
        v14 = v5;
        if (v5 < v2)
        {
          goto LABEL_134;
        }
      }

      if (v14 < v11)
      {
        goto LABEL_121;
      }

      v15 = v6;
      v16 = v2 + 4;
      if (__OFADD__(v2, 4))
      {
        goto LABEL_122;
      }

      if ((v16 & 0x8000000000000000) != 0 || v7 < v16)
      {
        goto LABEL_123;
      }

      if (v11 < v16)
      {
        goto LABEL_124;
      }

      if (v16 < v2)
      {
        goto LABEL_125;
      }

      *v10 = v16;
      v10[1] = v11;
      v10[2] = v3;
      v10[3] = v4;
      if (v15)
      {
        goto LABEL_136;
      }

      if (v5 < v16)
      {
        goto LABEL_126;
      }

      if (v5 < v11)
      {
        goto LABEL_127;
      }

      if ((v11 - v16) < result)
      {
        v9 = v63;

        sub_1B0C16C08();
LABEL_115:
        swift_allocError();
        swift_willThrow();
        return v9;
      }

      v17 = v16 + result;
      if (__OFADD__(v16, result))
      {
        goto LABEL_128;
      }

      if ((v17 & 0x8000000000000000) != 0 || v5 < v17)
      {
        goto LABEL_129;
      }

      v18 = result;
      if (v17 < v16)
      {
        goto LABEL_130;
      }

      if (v11 < v17)
      {
        goto LABEL_131;
      }

      if (!result)
      {
        v17 = v16;
      }

      if (v5 < v17)
      {
        goto LABEL_132;
      }

      if (v11 < v17)
      {
        goto LABEL_119;
      }

      if (v17 < v16)
      {
        goto LABEL_133;
      }

      v8 = v10;
      *v10 = v17;
      v10[2] = v3;
      v10[3] = v4;
      result = sub_1B0C16290(v13);
      if (result > 4u)
      {
        break;
      }

      v1 = 0;
      v9 = v63;
      if (result <= 1u)
      {
        if (result)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v34 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v36 = v35;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v38 = *(v9 + 16);
          v37 = *(v9 + 24);
          if (v38 >= v37 >> 1)
          {
            result = sub_1B0C0C8D4((v37 > 1), v38 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v38 + 1;
          v39 = v9 + 24 * v38;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
          *(v39 + 48) = 0;
        }
      }

      else
      {
        if (result == 2)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v40 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v42 = v41;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v44 = *(v9 + 16);
          v43 = *(v9 + 24);
          if (v44 >= v43 >> 1)
          {
            result = sub_1B0C0C8D4((v43 > 1), v44 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v44 + 1;
          v21 = v9 + 24 * v44;
          *(v21 + 32) = v40;
          *(v21 + 40) = v42;
          v33 = 1;
          goto LABEL_104;
        }

        if (result != 3)
        {
          if (v18)
          {
LABEL_116:
            sub_1B0C16BB4();
            swift_allocError();
            *v62 = v18;
            *(v62 + 8) = 1;
            swift_willThrow();

            return v9;
          }

          v53 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v55 = v54;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v57 = *(v9 + 16);
          v56 = *(v9 + 24);
          if (v57 >= v56 >> 1)
          {
            result = sub_1B0C0C8D4((v56 > 1), v57 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v57 + 1;
          v21 = v9 + 24 * v57;
          *(v21 + 32) = v53;
          *(v21 + 40) = v55;
          v33 = 3;
          goto LABEL_104;
        }

        if (v18)
        {
          goto LABEL_116;
        }

        v22 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
        v24 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v26 = *(v9 + 16);
        v25 = *(v9 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1B0C0C8D4((v25 > 1), v26 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v26 + 1;
        v27 = v9 + 24 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        *(v27 + 48) = 2;
      }

LABEL_105:
      v2 = *v8;
      v3 = v8[2];
      v4 = v8[3];
      v5 = v4 - v3;
      v6 = v3 == 0;
      if (v3)
      {
        v7 = v4 - v3;
      }

      else
      {
        v7 = 0;
      }

      if (v2 < 0 || v7 < v2)
      {
        goto LABEL_118;
      }
    }

    v1 = 0;
    v9 = v63;
    if (result > 7u)
    {
      if (result == 8)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v51 = *(v9 + 16);
        v50 = *(v9 + 24);
        v1 = 0;
        if (v51 >= v50 >> 1)
        {
          result = sub_1B0C0C8D4((v50 > 1), v51 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 16) = v51 + 1;
        v21 = v9 + 24 * v51;
        v52 = xmmword_1B0ED69B0;
      }

      else
      {
        if (result == 9)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v28 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
          v30 = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
            v9 = result;
          }

          v32 = *(v9 + 16);
          v31 = *(v9 + 24);
          if (v32 >= v31 >> 1)
          {
            result = sub_1B0C0C8D4((v31 > 1), v32 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v32 + 1;
          v21 = v9 + 24 * v32;
          *(v21 + 32) = v28;
          *(v21 + 40) = v30;
          v33 = 5;
          goto LABEL_104;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v61 = *(v9 + 16);
        v60 = *(v9 + 24);
        v1 = 0;
        if (v61 >= v60 >> 1)
        {
          result = sub_1B0C0C8D4((v60 > 1), v61 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 16) = v61 + 1;
        v21 = v9 + 24 * v61;
        v52 = xmmword_1B0ED69C0;
      }
    }

    else
    {
      if (result == 5)
      {
        if (v18)
        {
          goto LABEL_116;
        }

        v45 = sub_1B0C15FC4(v3 + v16, v18 >> 1);
        v47 = v46;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v49 = *(v9 + 16);
        v48 = *(v9 + 24);
        if (v49 >= v48 >> 1)
        {
          result = sub_1B0C0C8D4((v48 > 1), v49 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v49 + 1;
        v21 = v9 + 24 * v49;
        *(v21 + 32) = v45;
        *(v21 + 40) = v47;
        v33 = 4;
        goto LABEL_104;
      }

      if (result == 6)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
          v9 = result;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        v1 = 0;
        if (v20 >= v19 >> 1)
        {
          result = sub_1B0C0C8D4((v19 > 1), v20 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 16) = v20 + 1;
        v21 = v9 + 24 * v20;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        goto LABEL_103;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C0C8D4(0, *(v63 + 16) + 1, 1, v63);
        v9 = result;
      }

      v59 = *(v9 + 16);
      v58 = *(v9 + 24);
      v1 = 0;
      if (v59 >= v58 >> 1)
      {
        result = sub_1B0C0C8D4((v58 > 1), v59 + 1, 1, v9);
        v1 = 0;
        v9 = result;
      }

      *(v9 + 16) = v59 + 1;
      v21 = v9 + 24 * v59;
      v52 = xmmword_1B0ECE570;
    }

    *(v21 + 32) = v52;
LABEL_103:
    v33 = 6;
LABEL_104:
    *(v21 + 48) = v33;
    goto LABEL_105;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
  return result;
}

unint64_t sub_1B0C16BB4()
{
  result = qword_1EB6E5748;
  if (!qword_1EB6E5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5748);
  }

  return result;
}

unint64_t sub_1B0C16C08()
{
  result = qword_1EB6E5750;
  if (!qword_1EB6E5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5750);
  }

  return result;
}

unint64_t sub_1B0C16C5C()
{
  result = qword_1EB6E5758;
  if (!qword_1EB6E5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5758);
  }

  return result;
}

unint64_t sub_1B0C16CB8()
{
  result = qword_1EB6E5768;
  if (!qword_1EB6E5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5768);
  }

  return result;
}

unint64_t sub_1B0C16D0C()
{
  result = qword_1EB6E5778;
  if (!qword_1EB6E5778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5770, &qword_1B0ED6C40);
    sub_1B0C16D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5778);
  }

  return result;
}

unint64_t sub_1B0C16D90()
{
  result = qword_1EB6DB880;
  if (!qword_1EB6DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB880);
  }

  return result;
}

unint64_t sub_1B0C16DE4()
{
  result = qword_1EB6E5780;
  if (!qword_1EB6E5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5780);
  }

  return result;
}

unint64_t sub_1B0C16E48()
{
  result = qword_1EB6E57A0;
  if (!qword_1EB6E57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57A0);
  }

  return result;
}

double sub_1B0C16E9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0C16EB4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B0C16F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C16F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B0C16FE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t sub_1B0C1702C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV16ChallengeMessageV6TargetO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV16ChallengeMessageV6TargetOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C170D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1B0C1711C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV16ChallengeMessageV17TargetInformationO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1B0C17198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C171E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1B0C17224(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1B0C1727C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C172C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C17348()
{
  result = qword_1EB6E57A8;
  if (!qword_1EB6E57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57A8);
  }

  return result;
}

uint64_t _s5StateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B0C17468(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

int *sub_1B0C174B8(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *a3;
  v8 = *a5;
  v72 = *a4;
  v7 = *a4;
  v73 = *result;
  HIDWORD(v10) = *a5 + *result + (*a3 & *a2 | *a4 & ~*a2);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 29;
  *result = v9;
  v11 = a5[1];
  HIDWORD(v10) = v11 + v7 + (v5 & v9 | v6 & ~v9);
  LODWORD(v10) = HIDWORD(v10);
  v12 = v10 >> 25;
  *a4 = v12;
  v13 = a5[2];
  HIDWORD(v10) = v13 + v6 + (v9 & v12 | v5 & ~v12);
  LODWORD(v10) = HIDWORD(v10);
  v14 = v10 >> 21;
  *a3 = v14;
  v15 = a5[3];
  HIDWORD(v10) = v15 + v5 + (v12 & v14 | v9 & ~v14);
  LODWORD(v10) = HIDWORD(v10);
  v16 = v10 >> 13;
  *a2 = v16;
  v17 = a5[4];
  HIDWORD(v10) = v17 + v9 + (v14 & v16 | v12 & ~v16);
  LODWORD(v10) = HIDWORD(v10);
  v18 = v10 >> 29;
  *result = v18;
  v19 = a5[5];
  HIDWORD(v10) = v12 + v19 + (v16 & v18 | v14 & ~v18);
  LODWORD(v10) = HIDWORD(v10);
  v20 = v10 >> 25;
  *a4 = v20;
  v21 = a5[6];
  HIDWORD(v10) = v14 + v21 + (v18 & v20 | v16 & ~v20);
  LODWORD(v10) = HIDWORD(v10);
  v22 = v10 >> 21;
  *a3 = v22;
  v23 = a5[7];
  HIDWORD(v10) = v16 + v23 + (v20 & v22 | v18 & ~v22);
  LODWORD(v10) = HIDWORD(v10);
  v24 = v10 >> 13;
  *a2 = v24;
  v25 = a5[8];
  HIDWORD(v10) = v18 + v25 + (v22 & v24 | v20 & ~v24);
  LODWORD(v10) = HIDWORD(v10);
  v26 = v10 >> 29;
  *result = v26;
  v27 = a5[9];
  HIDWORD(v10) = v20 + v27 + (v24 & v26 | v22 & ~v26);
  LODWORD(v10) = HIDWORD(v10);
  v28 = v10 >> 25;
  *a4 = v28;
  v29 = a5[10];
  HIDWORD(v10) = v22 + v29 + (v26 & v28 | v24 & ~v28);
  LODWORD(v10) = HIDWORD(v10);
  v30 = v10 >> 21;
  *a3 = v30;
  v31 = a5[11];
  HIDWORD(v10) = v24 + v31 + (v28 & v30 | v26 & ~v30);
  LODWORD(v10) = HIDWORD(v10);
  v32 = v10 >> 13;
  *a2 = v32;
  v33 = a5[12];
  HIDWORD(v10) = v26 + v33 + (v30 & v32 | v28 & ~v32);
  LODWORD(v10) = HIDWORD(v10);
  v34 = v10 >> 29;
  *result = v34;
  v35 = a5[13];
  HIDWORD(v10) = v28 + v35 + (v32 & v34 | v30 & ~v34);
  LODWORD(v10) = HIDWORD(v10);
  v36 = v10 >> 25;
  *a4 = v36;
  v37 = a5[14];
  HIDWORD(v10) = v30 + v37 + (v34 & v36 | v32 & ~v36);
  LODWORD(v10) = HIDWORD(v10);
  v38 = v10 >> 21;
  *a3 = v38;
  v39 = a5[15];
  HIDWORD(v10) = v32 + v39 + (v38 & v36 | v34 & ~v38);
  LODWORD(v10) = HIDWORD(v10);
  v40 = v10 >> 13;
  HIDWORD(v10) = v8 + v34 + 1518500249 + (v40 & (v38 | v36) | v38 & v36);
  LODWORD(v10) = HIDWORD(v10);
  v41 = v10 >> 29;
  HIDWORD(v10) = v17 + v36 + 1518500249 + (v41 & (v40 | v38) | v40 & v38);
  LODWORD(v10) = HIDWORD(v10);
  v42 = v10 >> 27;
  HIDWORD(v10) = v25 + v38 + 1518500249 + (v42 & (v41 | v40) | v41 & v40);
  LODWORD(v10) = HIDWORD(v10);
  v43 = v10 >> 23;
  HIDWORD(v10) = v33 + v40 + 1518500249 + (v43 & (v42 | v41) | v42 & v41);
  LODWORD(v10) = HIDWORD(v10);
  v44 = v10 >> 19;
  HIDWORD(v10) = v11 + v41 + 1518500249 + (v44 & (v43 | v42) | v43 & v42);
  LODWORD(v10) = HIDWORD(v10);
  v45 = v10 >> 29;
  HIDWORD(v10) = v19 + v42 + 1518500249 + (v45 & (v44 | v43) | v44 & v43);
  LODWORD(v10) = HIDWORD(v10);
  v46 = v10 >> 27;
  HIDWORD(v10) = v27 + v43 + 1518500249 + (v46 & (v45 | v44) | v45 & v44);
  LODWORD(v10) = HIDWORD(v10);
  v47 = v10 >> 23;
  HIDWORD(v10) = v35 + v44 + 1518500249 + (v47 & (v46 | v45) | v46 & v45);
  LODWORD(v10) = HIDWORD(v10);
  v48 = v10 >> 19;
  HIDWORD(v10) = v13 + v45 + 1518500249 + (v48 & (v47 | v46) | v47 & v46);
  LODWORD(v10) = HIDWORD(v10);
  v49 = v10 >> 29;
  HIDWORD(v10) = v21 + v46 + 1518500249 + (v49 & (v48 | v47) | v48 & v47);
  LODWORD(v10) = HIDWORD(v10);
  v50 = v10 >> 27;
  HIDWORD(v10) = v29 + v47 + 1518500249 + (v50 & (v49 | v48) | v49 & v48);
  LODWORD(v10) = HIDWORD(v10);
  v51 = v10 >> 23;
  HIDWORD(v10) = v37 + v48 + 1518500249 + (v51 & (v50 | v49) | v50 & v49);
  LODWORD(v10) = HIDWORD(v10);
  v52 = v10 >> 19;
  HIDWORD(v10) = v15 + v49 + 1518500249 + (v52 & (v51 | v50) | v51 & v50);
  LODWORD(v10) = HIDWORD(v10);
  v53 = v10 >> 29;
  HIDWORD(v10) = v23 + v50 + 1518500249 + (v53 & (v52 | v51) | v52 & v51);
  LODWORD(v10) = HIDWORD(v10);
  v54 = v10 >> 27;
  HIDWORD(v10) = v31 + v51 + 1518500249 + (v54 & (v53 | v52) | v53 & v52);
  LODWORD(v10) = HIDWORD(v10);
  v55 = v10 >> 23;
  HIDWORD(v10) = v39 + v52 + 1518500249 + (v55 & (v54 | v53) | v54 & v53);
  LODWORD(v10) = HIDWORD(v10);
  v56 = v10 >> 19;
  HIDWORD(v10) = v8 + v53 + 1859775393 + (v56 ^ v55 ^ v54);
  LODWORD(v10) = HIDWORD(v10);
  v57 = v10 >> 29;
  HIDWORD(v10) = v25 + v54 + 1859775393 + (v56 ^ v55 ^ v57);
  LODWORD(v10) = HIDWORD(v10);
  v58 = v10 >> 23;
  HIDWORD(v10) = v17 + v55 + 1859775393 + (v57 ^ v56 ^ v58);
  LODWORD(v10) = HIDWORD(v10);
  v59 = v10 >> 21;
  HIDWORD(v10) = v33 + v56 + 1859775393 + (v58 ^ v57 ^ v59);
  LODWORD(v10) = HIDWORD(v10);
  v60 = v10 >> 17;
  HIDWORD(v10) = v13 + v57 + 1859775393 + (v59 ^ v58 ^ v60);
  LODWORD(v10) = HIDWORD(v10);
  v61 = v10 >> 29;
  HIDWORD(v10) = v29 + v58 + 1859775393 + (v60 ^ v59 ^ v61);
  LODWORD(v10) = HIDWORD(v10);
  v62 = v10 >> 23;
  HIDWORD(v10) = v21 + v59 + 1859775393 + (v61 ^ v60 ^ v62);
  LODWORD(v10) = HIDWORD(v10);
  v63 = v10 >> 21;
  HIDWORD(v10) = v37 + v60 + 1859775393 + (v62 ^ v61 ^ v63);
  LODWORD(v10) = HIDWORD(v10);
  v64 = v10 >> 17;
  HIDWORD(v10) = v11 + v61 + 1859775393 + (v63 ^ v62 ^ v64);
  LODWORD(v10) = HIDWORD(v10);
  v65 = v10 >> 29;
  HIDWORD(v10) = v27 + v62 + 1859775393 + (v64 ^ v63 ^ v65);
  LODWORD(v10) = HIDWORD(v10);
  v66 = v10 >> 23;
  HIDWORD(v10) = v19 + v63 + 1859775393 + (v65 ^ v64 ^ v66);
  LODWORD(v10) = HIDWORD(v10);
  v67 = v10 >> 21;
  HIDWORD(v10) = v35 + v64 + 1859775393 + (v66 ^ v65 ^ v67);
  LODWORD(v10) = HIDWORD(v10);
  v68 = v10 >> 17;
  HIDWORD(v10) = v15 + v65 + 1859775393 + (v67 ^ v66 ^ v68);
  LODWORD(v10) = HIDWORD(v10);
  v69 = v10 >> 29;
  HIDWORD(v10) = v31 + v66 + 1859775393 + (v68 ^ v67 ^ v69);
  LODWORD(v10) = HIDWORD(v10);
  v70 = v10 >> 23;
  HIDWORD(v10) = v23 + v67 + 1859775393 + (v69 ^ v68 ^ v70);
  LODWORD(v10) = HIDWORD(v10);
  v71 = v10 >> 21;
  HIDWORD(v10) = v39 + v68 + 1859775393 + (v70 ^ v69 ^ v71);
  LODWORD(v10) = HIDWORD(v10);
  *result = v69 + v73;
  *a2 = (v10 >> 17) + v5;
  *a3 = v71 + v6;
  *a4 = v70 + v72;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO4NTLMV5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy172_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B0C17B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C17B54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C17BD0()
{
  v2 = (v0 + 120);
  v3 = *(v0 + 120);
  v4 = *(v0 + 144);
  if ((v4 - 1) < 2)
  {
    return 0;
  }

  v6 = (v0 + 152);
  v7 = *(v0 + 152);
  if (v4)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 168);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 2;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    sub_1B0C154B8(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v4, v7, v11, v10, &v16, *v0);
    sub_1B0BD1280(v3, v9, v12);

    if (v1)
    {
    }

    else
    {

      v14[0] = v18;
      v14[1] = v17;
      v14[2] = v16;
      *v15 = 0;
      *&v15[8] = 0xE000000000000000;
      *&v15[16] = 0;
      *&v15[24] = v19 & 0x80201;
      v15[28] = 0;
      v27 = v16;
      v28[0] = *v15;
      v25 = v18;
      v26 = v17;
      *(v28 + 13) = *&v15[13];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = sub_1B0C11ACC();
      sub_1B0BD12AC(v14);
      sub_1B0BD1300(&v16);
      return v13;
    }
  }

  else
  {
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 1;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    v8 = *v0;
    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = (v8 & 1) == 0;
    return sub_1B0C10BEC();
  }
}

uint64_t sub_1B0C17DC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v106 = a3;
  v7 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v98 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v98 - v27;
  v105 = v3;
  if (*(v3 + 144) == 1)
  {
    v101 = v25;
    v102 = v26;
    v103 = v24;
    v104 = v23;
    sub_1B03B2000(a1, a2);
    result = sub_1B0C16128(a1, a2, &v108);
    if (!v4)
    {
      v30 = v106;
      sub_1B041C97C(v106, v28);
      sub_1B041C97C(v30, v21);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0C18A20(&v108, v107);
      v31 = sub_1B0E43988();
      v32 = sub_1B0E458C8();
      sub_1B0C18A7C(&v108);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v99 = v31;
        v34 = v33;
        v100 = swift_slowAlloc();
        v107[0] = v100;
        *v34 = 68158722;
        *(v34 + 4) = 2;
        *(v34 + 8) = 256;
        v35 = v104;
        v36 = *(v104 + 20);
        v115 = v32;
        v37 = v21[v36];
        sub_1B041C9E0(v21);
        *(v34 + 10) = v37;
        *(v34 + 11) = 2082;
        v38 = *&v28[*(v35 + 20) + 4];
        sub_1B041C9E0(v28);
        v39 = ConnectionID.debugDescription.getter(v38);
        v41 = sub_1B0399D64(v39, v40, v107);

        *(v34 + 13) = v41;
        *(v34 + 21) = 2080;
        v43 = v110;
        v42 = v111;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v44 = sub_1B0399D64(v43, v42, v107);

        *(v34 + 23) = v44;
        *(v34 + 31) = 2082;
        v116 = v108;
        v45 = sub_1B0E44BA8();
        v47 = sub_1B0399D64(v45, v46, v107);

        *(v34 + 33) = v47;
        v48 = v99;
        _os_log_impl(&dword_1B0389000, v99, v115, "[%.*hhx-%{public}s] NTLM: Received challenge with target: '%s', flags: {%{public}s}", v34, 0x29u);
        v49 = v100;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v49, -1, -1);
        MEMORY[0x1B272C230](v34, -1, -1);

        if (v114)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B041C9E0(v21);

        sub_1B041C9E0(v28);
        if (v114)
        {
          goto LABEL_12;
        }
      }

      v50 = v113;
      v51 = v106;
      sub_1B041C97C(v106, v18);
      sub_1B041C97C(v51, v15);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v52 = sub_1B0E43988();
      v53 = sub_1B0E458C8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v107[0] = v100;
        *v54 = 68158978;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v55 = v104;
        v56 = *(v104 + 20);
        LODWORD(v99) = v53;
        v57 = v15[v56];
        sub_1B041C9E0(v15);
        *(v54 + 10) = v57;
        *(v54 + 11) = 2082;
        v58 = *&v18[*(v55 + 20) + 4];
        sub_1B041C9E0(v18);
        v59 = ConnectionID.debugDescription.getter(v58);
        v61 = sub_1B0399D64(v59, v60, v107);

        *(v54 + 13) = v61;
        *(v54 + 21) = 256;
        *(v54 + 23) = v50;
        *(v54 + 24) = 256;
        *(v54 + 26) = BYTE1(v50);
        *(v54 + 27) = 512;
        *(v54 + 29) = HIWORD(v50);
        _os_log_impl(&dword_1B0389000, v52, v99, "[%.*hhx-%{public}s] NTLM: Received challenge with OS version %hhu.%hhu.%hu", v54, 0x1Fu);
        v62 = v100;
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x1B272C230](v62, -1, -1);
        MEMORY[0x1B272C230](v54, -1, -1);
      }

      else
      {
        sub_1B041C9E0(v15);

        sub_1B041C9E0(v18);
      }

LABEL_12:
      v63 = v108;
      v64 = v102;
      if ((v108 & 0x200) == 0)
      {
        v65 = v103;
        if ((v108 & 0x80000) == 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v81 = v106;
        sub_1B041C97C(v106, v65);
        v82 = v101;
        sub_1B041C97C(v81, v101);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v83 = sub_1B0E43988();
        v84 = sub_1B0E45908();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          LODWORD(v100) = v63;
          v87 = v86;
          v107[0] = v86;
          *v85 = 68158210;
          *(v85 + 4) = 2;
          *(v85 + 8) = 256;
          v88 = v104;
          v89 = *(v82 + *(v104 + 20));
          sub_1B041C9E0(v82);
          *(v85 + 10) = v89;
          *(v85 + 11) = 2082;
          v90 = *(v65 + *(v88 + 20) + 4);
          sub_1B041C9E0(v65);
          v91 = ConnectionID.debugDescription.getter(v90);
          v93 = sub_1B0399D64(v91, v92, v107);

          *(v85 + 13) = v93;
          _os_log_impl(&dword_1B0389000, v83, v84, "[%.*hhx-%{public}s] NTLM: NTLM2 Session Response flag set", v85, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v87);
          v94 = v87;
          v63 = v100;
          MEMORY[0x1B272C230](v94, -1, -1);
          MEMORY[0x1B272C230](v85, -1, -1);

          v66 = v112;
          if (v112)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1B041C9E0(v82);

          sub_1B041C9E0(v65);
          v66 = v112;
          if (v112)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_24;
      }

      v68 = v106;
      sub_1B041C97C(v106, v102);
      sub_1B041C97C(v68, v11);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v69 = sub_1B0E43988();
      v70 = sub_1B0E458C8();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        LODWORD(v100) = v63;
        v73 = v72;
        v107[0] = v72;
        *v71 = 68158210;
        *(v71 + 4) = 2;
        *(v71 + 8) = 256;
        v74 = v104;
        v75 = v11[*(v104 + 20)];
        sub_1B041C9E0(v11);
        *(v71 + 10) = v75;
        *(v71 + 11) = 2082;
        v76 = *(v64 + *(v74 + 20) + 4);
        sub_1B041C9E0(v64);
        v77 = ConnectionID.debugDescription.getter(v76);
        v79 = sub_1B0399D64(v77, v78, v107);

        *(v71 + 13) = v79;
        _os_log_impl(&dword_1B0389000, v69, v70, "[%.*hhx-%{public}s] NTLM: NTLM Authentication flag set", v71, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v73);
        v80 = v73;
        v63 = v100;
        MEMORY[0x1B272C230](v80, -1, -1);
        MEMORY[0x1B272C230](v71, -1, -1);

        v65 = v103;
        if ((v63 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1B041C9E0(v11);

        sub_1B041C9E0(v64);
        v65 = v103;
        if ((v63 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_14:
      v66 = v112;
      if (v112)
      {
LABEL_15:
        v67 = *(v66 + 16);
        v107[0] = 0;
        v107[1] = v67;
        v107[2] = v66 + 32;
        v107[3] = v66 + 32 + v67;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v95 = sub_1B0C162A4(v107);

LABEL_25:
        v96 = v109;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B0C18A7C(&v108);
        v97 = v105;
        *(v105 + 120) = 0;
        *(v97 + 128) = 0;
        *(v97 + 136) = 255;
        *(v97 + 144) = v95;
        *(v97 + 152) = v66;
        *(v97 + 160) = v96;
        *(v97 + 168) = v63;
        return result;
      }

LABEL_24:
      v95 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }
  }

  else
  {
    sub_1B0C18828();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

BOOL sub_1B0C1869C(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 2)
      {
        v5 = *a2;
        v6 = *(a2 + 2);
        v7 = *(a2 + 4);
        v8 = *(a2 + 5);
        v9 = *(a2 + 12);
        v10 = *(a1 + 12);
        v12 = *(a1 + 4);
        v11 = *(a1 + 5);
        v13 = *(a1 + 2);
        v15 = *a1;
        v16 = v13;
        v17 = v2;
        v18 = v12;
        v19 = v11;
        v20 = v10;
        if (v3 >= 3)
        {
          v21 = v5;
          v22 = v6;
          v23 = v3;
          v24 = v7;
          v25 = v8;
          v26 = v9;
          return sub_1B0C14F44(&v15, &v21);
        }

        return 0;
      }

      if (v3 != 2)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1B0C18760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v14[0] = v2;
  *(v14 + 12) = *(a1 + 156);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v16[0] = v7;
  *(v16 + 12) = *(a2 + 156);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1B0C1887C(v13, v15);
}

unint64_t sub_1B0C18828()
{
  result = qword_1EB6E57B0;
  if (!qword_1EB6E57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57B0);
  }

  return result;
}

BOOL sub_1B0C1887C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v33 = v2;
  v34 = v3;
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v11 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v12 = v7 == v9 && v8 == v10;
  if (!v12 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 88);
  v22[2] = *(a1 + 72);
  v22[3] = v14;
  v22[4] = *(a1 + 104);
  v22[0] = *(a1 + 40);
  v22[1] = v13;
  v15 = *(a2 + 56);
  v16 = *(a2 + 88);
  v21[2] = *(a2 + 72);
  v21[3] = v16;
  v21[4] = *(a2 + 104);
  v21[0] = *(a2 + 40);
  v21[1] = v15;
  if ((sub_1B0C0FEBC(v22, v21) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 18);
  v18 = *(a2 + 18);
  if (v17 == 2)
  {
    return v18 == 2;
  }

  if (v17 == 1)
  {
    return v18 == 1;
  }

  if (v17)
  {
    v23 = *(a1 + 120);
    v19 = *(a1 + 17);
    v26 = *(a1 + 152);
    v27 = *(a1 + 42);
    v24 = v19;
    v25 = v17;
    if (v18 >= 3)
    {
      v28 = *(a2 + 120);
      v20 = *(a2 + 17);
      v31 = *(a2 + 152);
      v32 = *(a2 + 42);
      v29 = v20;
      v30 = v18;
      if (sub_1B0C14F44(&v23, &v28))
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0C18AE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 52))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C18B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_1B0C18B98(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1B0C18BDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v76 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v76);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - v18;
  v20 = a2 >> 62;
  v78 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      goto LABEL_8;
    }

    LODWORD(v21) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v21 = v21;
      goto LABEL_7;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v20 != 2)
  {
    goto LABEL_8;
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    goto LABEL_47;
  }

LABEL_7:
  if (v21 > 499)
  {
    if (v20 > 1)
    {
      if (v20 != 2)
      {
LABEL_34:
        MEMORY[0x1EEE9AC00](v17);
        *(&v72 - 2) = v57;
        sub_1B0BB5F90(sub_1B0C19D3C, (&v72 - 4), a1, a2);
        return;
      }

      v56 = *(a1 + 16);
      v55 = *(a1 + 24);
      v24 = __OFSUB__(v55, v56);
      v54 = v55 - v56;
      if (!v24)
      {
        goto LABEL_33;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    LODWORD(v54) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v54 = v54;
LABEL_33:
      if (v54 <= 4999)
      {
        goto LABEL_34;
      }

      sub_1B041C97C(a3, v12);
      sub_1B041C97C(a3, v9);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B2000(a1, a2);
      sub_1B03B2000(a1, a2);
      v19 = v9;
      v58 = sub_1B0E43988();
      v59 = sub_1B0E458E8();
      if (!os_log_type_enabled(v58, v59))
      {
        sub_1B0391D50(a1, a2);
        sub_1B041C9E0(v19);
        sub_1B0391D50(a1, a2);

        v71 = v12;
        goto LABEL_42;
      }

      v60 = v12;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = v76;
      v15 = v62;
      v79[0] = v62;
      *v61 = 68158466;
      *(v61 + 4) = 2;
      *(v61 + 8) = 256;
      v64 = v19[*(v63 + 20)];
      sub_1B041C9E0(v19);
      *(v61 + 10) = v64;
      *(v61 + 11) = 2082;
      v65 = *(v60 + *(v63 + 20) + 4);
      sub_1B041C9E0(v60);
      v66 = ConnectionID.debugDescription.getter(v65);
      v68 = sub_1B0399D64(v66, v67, v79);

      *(v61 + 13) = v68;
      *(v61 + 21) = 2048;
      if (v78 == 2)
      {
        v69 = *(a1 + 16);
        v32 = *(a1 + 24);
        sub_1B0391D50(a1, a2);
        v70 = v32 - v69;
        if (__OFSUB__(v32, v69))
        {
          __break(1u);
          goto LABEL_40;
        }

LABEL_45:
        *(v61 + 23) = v70;
        sub_1B0391D50(a1, a2);
        _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx-%{public}s] XOAUTH2 error (%{iec-bytes}ld)", v61, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x1B272C230](v15, -1, -1);
        MEMORY[0x1B272C230](v61, -1, -1);

        return;
      }

      sub_1B0391D50(a1, a2);
      LODWORD(v70) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v70 = v70;
        goto LABEL_45;
      }

LABEL_50:
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_8:
  v74 = v9;
  v75 = v12;
  sub_1B0E428A8();
  swift_allocObject();
  v25 = sub_1B0E42898();
  sub_1B0C19D58();
  v77 = v25;
  sub_1B0E42878();
  v27 = v79[0];
  v26 = v79[1];
  v29 = v79[2];
  v28 = v79[3];
  v31 = v79[4];
  v30 = v79[5];
  sub_1B041C97C(a3, v19);
  sub_1B041C97C(a3, v15);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = sub_1B0E43988();
  v33 = sub_1B0E458E8();

  if (!os_log_type_enabled(v32, v33))
  {
LABEL_40:
    sub_1B041C9E0(v15);

    v71 = v19;
LABEL_42:
    sub_1B041C9E0(v71);
    return;
  }

  v34 = swift_slowAlloc();
  v73 = v27;
  v35 = v76;
  v75 = v31;
  v36 = v34;
  v78 = swift_slowAlloc();
  v79[0] = v78;
  *v36 = 68158978;
  *(v36 + 4) = 2;
  *(v36 + 8) = 256;
  v37 = *(v35 + 20);
  v74 = v29;
  v38 = v15[v37];
  sub_1B041C9E0(v15);
  *(v36 + 10) = v38;
  *(v36 + 11) = 2082;
  v39 = v30;
  v40 = *&v19[*(v35 + 20) + 4];
  sub_1B041C9E0(v19);
  v41 = ConnectionID.debugDescription.getter(v40);
  v43 = sub_1B0399D64(v41, v42, v79);

  *(v36 + 13) = v43;
  *(v36 + 21) = 2082;
  if (v26)
  {
    v44 = v73;
  }

  else
  {
    v44 = 0;
  }

  if (v26)
  {
    v45 = v26;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = sub_1B0399D64(v44, v45, v79);

  *(v36 + 23) = v46;
  *(v36 + 31) = 2082;
  if (v28)
  {
    v47 = v74;
  }

  else
  {
    v47 = 0;
  }

  if (v28)
  {
    v48 = v28;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = sub_1B0399D64(v47, v48, v79);

  *(v36 + 33) = v49;
  *(v36 + 41) = 2082;

  if (v39)
  {
    v50 = v75;
  }

  else
  {
    v50 = 0;
  }

  if (v39)
  {
    v51 = v39;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v52 = sub_1B0399D64(v50, v51, v79);

  *(v36 + 43) = v52;
  _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx-%{public}s] XOAUTH2 error: status '%{public}s',  schemes '%{public}s',  scope '%{public}s'", v36, 0x33u);
  v53 = v78;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v53, -1, -1);
  MEMORY[0x1B272C230](v36, -1, -1);
}

BOOL sub_1B0C19464(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_1B0AB8858(*a1, v3, *a2, v4);
}

BOOL sub_1B0C194C8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1B0C0FEBC(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 11)
  {
    return v9 >> 60 == 11;
  }

  if (v6 >> 60 != 15)
  {
    return ((v9 >> 60) | 4) != 0xF && sub_1B0AB8858(v5, v6, v10, v9);
  }

  return v9 >> 60 == 15;
}

uint64_t sub_1B0C195A4()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 11)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_1B03B2000(v1, *(v0 + 88));
    sub_1B0BD1354(v1, v2);
    *(v0 + 80) = xmmword_1B0EC58F0;
  }

  return v1;
}

uint64_t sub_1B0C19668(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(v3 + 88) >> 60 == 15)
  {
    sub_1B0C18BDC(a1, a2, a3);
    result = sub_1B0BD1354(*(v3 + 80), *(v3 + 88));
    *(v3 + 80) = xmmword_1B0ECD820;
  }

  else
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v5 = xmmword_1B0ECE570;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1B0C196F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  sub_1B041C97C(a3, &v24 - v11);
  sub_1B041C97C(a3, v9);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E458E8();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_1B041C9E0(v9);

    sub_1B041C9E0(v12);
    return;
  }

  v24 = v3;
  v15 = swift_slowAlloc();
  v25 = a2;
  v16 = v15;
  v17 = swift_slowAlloc();
  v26 = v17;
  *v16 = 68158722;
  *(v16 + 4) = 2;
  *(v16 + 8) = 256;
  v18 = v9[*(v7 + 20)];
  sub_1B041C9E0(v9);
  *(v16 + 10) = v18;
  *(v16 + 11) = 2082;
  v19 = *&v12[*(v7 + 20) + 4];
  sub_1B041C9E0(v12);
  v20 = ConnectionID.debugDescription.getter(v19);
  v22 = sub_1B0399D64(v20, v21, &v26);

  *(v16 + 13) = v22;
  *(v16 + 21) = 1040;
  v23 = v25 - a1;
  if (!a1)
  {
    v23 = 0;
  }

  if (v23 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v23 <= 0x7FFFFFFF)
  {
    *(v16 + 23) = v23;
    *(v16 + 27) = 2098;
    if (a1)
    {
      *(v16 + 29) = a1;
      _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx-%{public}s] XOAUTH2 error: %{public}.*P", v16, 0x25u);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1B272C230](v17, -1, -1);
      MEMORY[0x1B272C230](v16, -1, -1);

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1B0C19954()
{
  v1 = 0x73656D65686373;
  if (*v0 != 1)
  {
    v1 = 0x65706F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1B0C199A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0C19E88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0C199D0(uint64_t a1)
{
  sub_1B0C1A19C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0C19A0C(uint64_t a1)
{
  sub_1B0C1A19C();

  return sub_1B0E46F38();
}

double sub_1B0C19A48@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1B0C19F98(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1B0C19A8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1B0ECF4A0;
  v8 = sub_1B0C01268(0x3D72657375, 0xE500000000000000);
  v10 = v9;
  sub_1B0E42FA8();
  sub_1B0391D50(v8, v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0C01268(a1, a2);
  v13 = v12;
  sub_1B0E42FA8();
  sub_1B0391D50(v11, v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E57B8, &qword_1B0ED7C28);
  v26 = sub_1B0C19CA0();
  LOBYTE(v24[0]) = 1;
  __swift_project_boxed_opaque_existential_0(v24, v25);
  sub_1B0E42ED8();
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  v14 = sub_1B0C01268(0x6165423D68747561, 0xEC00000020726572);
  v16 = v15;
  sub_1B0E42FA8();
  sub_1B0391D50(v14, v16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0C01268(a3, a4);
  v19 = v18;
  sub_1B0E42FA8();
  sub_1B0391D50(v17, v19);
  v20 = sub_1B0C05480(&unk_1F271B700);
  v22 = v21;
  sub_1B0E42FA8();
  sub_1B0391D50(v20, v22);
  return v27;
}

unint64_t sub_1B0C19CA0()
{
  result = qword_1EB6E57C0;
  if (!qword_1EB6E57C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E57B8, &qword_1B0ED7C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO10OAuthTokenV5StateO(uint64_t a1)
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

unint64_t sub_1B0C19D58()
{
  result = qword_1EB6E57C8;
  if (!qword_1EB6E57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57C8);
  }

  return result;
}

uint64_t sub_1B0C19DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1B0C19E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0C19E88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D65686373 && a2 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0C19F98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E57D0, &qword_1B0ED8390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0C1A19C();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v9 = sub_1B0E46818();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = sub_1B0E46818();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_1B0E46818();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_1B0C1A19C()
{
  result = qword_1EB6E57D8;
  if (!qword_1EB6E57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57D8);
  }

  return result;
}

unint64_t sub_1B0C1A204()
{
  result = qword_1EB6E57E0;
  if (!qword_1EB6E57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57E0);
  }

  return result;
}

unint64_t sub_1B0C1A25C()
{
  result = qword_1EB6E57E8;
  if (!qword_1EB6E57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57E8);
  }

  return result;
}

unint64_t sub_1B0C1A2B4()
{
  result = qword_1EB6E57F0;
  if (!qword_1EB6E57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57F0);
  }

  return result;
}

uint64_t PathAttribute.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C1A3BC()
{
  result = qword_1EB6DCE80;
  if (!qword_1EB6DCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE80);
  }

  return result;
}

unint64_t sub_1B0C1A414()
{
  result = qword_1EB6E57F8;
  if (!qword_1EB6E57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E57F8);
  }

  return result;
}

unint64_t sub_1B0C1A46C()
{
  result = qword_1EB6E5800;
  if (!qword_1EB6E5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5800);
  }

  return result;
}

uint64_t sub_1B0C1A4FC()
{
  v1 = v0;
  v2 = sub_1B0E43C38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6977B98])
  {
    (*(v3 + 96))(v6, v2);
    v2 = sub_1B0E43C08();
    v3 = *(v2 - 8);
    v8 = (*(v3 + 88))(v6, v2);
    if (v8 == *MEMORY[0x1E6977B68])
    {
      return 98;
    }

    if (v8 == *MEMORY[0x1E6977B60])
    {
      return 97;
    }

    if (v8 == *MEMORY[0x1E6977B70])
    {
      return 103;
    }

    if (v8 == *MEMORY[0x1E6977B78])
    {
      return 110;
    }

    if (v8 == *MEMORY[0x1E6977B80])
    {
      return 25441;
    }

    if (v8 == *MEMORY[0x1E6977B88])
    {
      return 30817;
    }

    goto LABEL_33;
  }

  if (v7 != *MEMORY[0x1E6977B90])
  {
LABEL_33:
    v13 = 63;
    goto LABEL_34;
  }

  (*(v3 + 96))(v6, v2);
  v2 = sub_1B0E43C28();
  v3 = *(v2 - 8);
  v10 = (*(v3 + 88))(v6, v2);
  if (v10 == *MEMORY[0x1E6977BB8])
  {
    (*(v3 + 96))(v6, v2);
    v2 = sub_1B0E43C18();
    v3 = *(v2 - 8);
    v11 = (*(v3 + 88))(v6, v2);
    if (v11 == *MEMORY[0x1E6977BB0])
    {
      return 0x732E47356C617564;
    }

    if (v11 == *MEMORY[0x1E6977BA8])
    {
      return 0x6D2E47356C617564;
    }

    v13 = 0x47356C617564;
  }

  else if (v10 == *MEMORY[0x1E6977BA0])
  {
    (*(v3 + 96))(v6, v2);
    v2 = sub_1B0E43C18();
    v3 = *(v2 - 8);
    v12 = (*(v3 + 88))(v6, v2);
    if (v12 == *MEMORY[0x1E6977BB0])
    {
      return 0x47366275732E4735;
    }

    if (v12 == *MEMORY[0x1E6977BA8])
    {
      return 0x7661576D6D2E4735;
    }

    v13 = 18229;
  }

  else
  {
    if (v10 == *MEMORY[0x1E6977BC8])
    {
      return 6648940;
    }

    if (v10 == *MEMORY[0x1E6977BE0])
    {
      return 0x616D646377;
    }

    if (v10 == *MEMORY[0x1E6977BC0])
    {
      return 7172967;
    }

    if (v10 == *MEMORY[0x1E6977BD0])
    {
      return 1634559075;
    }

    if (v10 == *MEMORY[0x1E6977BD8])
    {
      return 1868854885;
    }

    v13 = 1819043171;
  }

LABEL_34:
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_1B0C1AA74(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B0C1FA20(v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C1AB54(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1B0C1FE1C(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C1AC30(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1B0C1FE00(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0C1AD1C()
{
  v1 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BD6A44(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if ((EnumCaseMultiPayload - 6) < 2 || EnumCaseMultiPayload == 3)
      {
        sub_1B0BB439C(v3);
        return sub_1B0BF58D0(&unk_1F271B8F8);
      }

LABEL_25:
      sub_1B0BB439C(v3);
      return MEMORY[0x1E69E7CD0];
    }

    if (EnumCaseMultiPayload != 11)
    {
      v12 = *v3;

      v13 = sub_1B0C1AF90(v12);
      sub_1B0B239C8(v12);
      return v13;
    }

    v14 = *v3;
    v19 = sub_1B0C1AF90(v14);
    v15 = 5;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 14)
  {
    if (EnumCaseMultiPayload != 13)
    {
      v7 = *v3;

      v19 = sub_1B0C1AF90(v7);
      sub_1B0C1FE00(&v18 + 7, 1);
      v8 = v7;
LABEL_24:
      sub_1B0B239C8(v8);
      return v19;
    }

    v14 = *v3;
    v19 = sub_1B0C1AF90(v14);
    sub_1B0C1FE00(&v18 + 7, 5);
    v15 = 1;
LABEL_23:
    sub_1B0C1FE00(&v18 + 7, v15);
    v8 = v14;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);
    v17 = sub_1B0C1B00C(*(v3 + *(v16 + 48)));

    sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v17;
  }

  if (EnumCaseMultiPayload != 16)
  {
    goto LABEL_25;
  }

  v9 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48) + 1);

  if (v9)
  {
    v10 = &unk_1F271B920;
  }

  else
  {
    v10 = &unk_1F271B948;
  }

  v11 = sub_1B0BF58D0(v10);
  sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v11;
}

uint64_t sub_1B0C1AF90(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CD0];
  sub_1B0C1B6C4(a1);
  if (v2)
  {
    sub_1B0C1FE00(&v6, 1);
    sub_1B0C1FE00(&v5, 2);
  }

  sub_1B0C1B80C(a1);
  if (v3)
  {
    sub_1B0C1FE00(&v7, 3);
  }

  return v8;
}

uint64_t sub_1B0C1B00C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = (a1 + 64); ; i += 10)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *(i + 4);
      v10 = *i | (*(i + 4) << 32);
      v16 = v1;
      v11 = v9 >> 5;
      if (v11 <= 2)
      {
        if (v11)
        {
          v12 = v11 == 1;
        }

        else
        {
          v12 = 0;
        }

        v4 = v1;
        if (!v12)
        {
          goto LABEL_4;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE964(v7, v8);
      }

      else if (v11 > 4)
      {
        v4 = v1;
        if (v11 == 5)
        {
          goto LABEL_4;
        }

        if (v7 | v6 | v5 | v8)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == 0xC000000000;
        }

        if (!v13 && v10 == 0xC000000000 && v5 == 1 && !(v7 | v6 | v8))
        {
          sub_1B0C1FE00(&v15, 3);
          v4 = v16;
          goto LABEL_4;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v4 = v1;
LABEL_4:
      sub_1B0C1AC30(v4);
      sub_1B0C1BB38(v5, v6, v7, v8, v10);
      if (!--v2)
      {
        return v17;
      }
    }
  }

  return v1;
}

uint64_t sub_1B0C1B22C()
{
  v1 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BD6A44(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0x14u:
      sub_1B0BB439C(v3);
      goto LABEL_3;
    case 3u:
      sub_1B0BB439C(v3);
      v4 = &unk_1F271B970;
      return sub_1B0BF58E4(v4);
    case 0xAu:

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v10 = *(v9 + 64);
      sub_1B0391D50(*(v3 + *(v9 + 80)), *(v3 + *(v9 + 80) + 8));
      sub_1B0398EFC(v3 + v10, &unk_1EB6E2990, &qword_1B0E9B060);
      goto LABEL_3;
    case 0xBu:
      v28 = *v3;
      v29 = &unk_1F271BA38;
      goto LABEL_40;
    case 0xCu:
      v7 = *v3;

      v8 = &unk_1F271BA88;
      goto LABEL_15;
    case 0xDu:
      v28 = *v3;
      v29 = &unk_1F271BA60;
LABEL_40:
      v30 = sub_1B0BF58E4(v29);
      v36 = MEMORY[0x1E69E7CD0];
      sub_1B0C1B80C(v28);
      if (v31)
      {
        sub_1B0C1FE1C(&v35 + 7, 5);
      }

      sub_1B0C1B968(v28);
      if (v32)
      {
        sub_1B0C1FE1C(&v35 + 7, 3);
      }

      v33 = sub_1B0C1AB54(v36, v30);
      sub_1B0B239C8(v28);
      return v33;
    case 0xEu:
      v7 = *v3;

      v8 = &unk_1F271BAB0;
LABEL_15:
      v11 = sub_1B0BF58E4(v8);
      v36 = MEMORY[0x1E69E7CD0];
      sub_1B0C1B80C(v7);
      if (v12)
      {
        sub_1B0C1FE1C(&v35 + 7, 5);
      }

      sub_1B0C1B968(v7);
      if (v13)
      {
        sub_1B0C1FE1C(&v35 + 7, 3);
      }

      v14 = sub_1B0C1AB54(v36, v11);
      sub_1B0B239C8(v7);
      return v14;
    case 0xFu:
      v16 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (v16 + 64);
        v19 = &unk_1F271B9C0;
        while (1)
        {
          if (*(v18 + 4) >> 5 >= 6u)
          {
            v20 = *v18 | (*(v18 + 4) << 32);
            v21 = *(v18 - 1);
            v22 = *(v18 - 4);
            v23 = *(v18 - 2) | *(v18 - 3);
            if (v23 | v22 | v21 || v20 != 0xC000000000)
            {
              v25 = v23 | v21;
              v26 = v20 == 0xC000000000 && v22 == 1;
              if (v26 && v25 == 0)
              {
                break;
              }
            }
          }

          v18 += 10;
          if (!--v17)
          {
            v19 = &unk_1F271B9E8;
            break;
          }
        }
      }

      else
      {
        v19 = &unk_1F271B9E8;
      }

      v6 = v19;
LABEL_48:
      v34 = sub_1B0BF58E4(v6);
      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return v34;
    case 0x10u:
      v5 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48) + 1);

      if (v5)
      {
        v6 = &unk_1F271BAD8;
      }

      else
      {
        v6 = &unk_1F271BB00;
      }

      goto LABEL_48;
    case 0x11u:
    case 0x12u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v4 = &unk_1F271BA10;
      return sub_1B0BF58E4(v4);
    case 0x13u:
      v4 = &unk_1F271BB50;
      return sub_1B0BF58E4(v4);
    case 0x16u:
    case 0x17u:
    case 0x19u:
    case 0x1Bu:
LABEL_3:
      v4 = &unk_1F271BB78;
      return sub_1B0BF58E4(v4);
    case 0x18u:
    case 0x1Du:
      goto LABEL_5;
    case 0x1Au:
    case 0x1Cu:
      v4 = &unk_1F271B998;
      return sub_1B0BF58E4(v4);
    default:
      sub_1B0BB439C(v3);
LABEL_5:
      v4 = &unk_1F271BB28;
      return sub_1B0BF58E4(v4);
  }
}