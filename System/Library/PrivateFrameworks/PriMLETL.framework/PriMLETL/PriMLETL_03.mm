uint64_t sub_25F5ABDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25F5ABDEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F5ABE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 128) >> 9) & 0xFFFFFF80 | (*(a1 + 128) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25F5ABEB8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 200) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 201) = 1;
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
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = (-a2 << 9) & 0x1FFFFFF0000 | (2 * (-a2 & 0x7FLL));
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0;
      return result;
    }

    *(a1 + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5ABF60(uint64_t result, char a2)
{
  v2 = *(result + 168);
  v3 = *(result + 200) & 1 | (32 * a2);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v2;
  *(result + 200) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ExtractSmsParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractSmsParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalizationPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F5AC3FC()
{
  result = qword_27FD9E268;
  if (!qword_27FD9E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E268);
  }

  return result;
}

unint64_t sub_25F5AC454()
{
  result = qword_27FD9E270;
  if (!qword_27FD9E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E270);
  }

  return result;
}

unint64_t sub_25F5AC4AC()
{
  result = qword_27FD9E278;
  if (!qword_27FD9E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E278);
  }

  return result;
}

unint64_t sub_25F5AC504()
{
  result = qword_27FD9E280;
  if (!qword_27FD9E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E280);
  }

  return result;
}

unint64_t sub_25F5AC55C()
{
  result = qword_27FD9E288;
  if (!qword_27FD9E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E288);
  }

  return result;
}

unint64_t sub_25F5AC5B4()
{
  result = qword_27FD9E290;
  if (!qword_27FD9E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E290);
  }

  return result;
}

unint64_t sub_25F5AC60C()
{
  result = qword_27FD9E298;
  if (!qword_27FD9E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E298);
  }

  return result;
}

unint64_t sub_25F5AC664()
{
  result = qword_27FD9E2A0;
  if (!qword_27FD9E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2A0);
  }

  return result;
}

unint64_t sub_25F5AC6BC()
{
  result = qword_27FD9E2A8;
  if (!qword_27FD9E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2A8);
  }

  return result;
}

unint64_t sub_25F5AC714()
{
  result = qword_27FD9E2B0;
  if (!qword_27FD9E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2B0);
  }

  return result;
}

unint64_t sub_25F5AC76C()
{
  result = qword_27FD9E2B8;
  if (!qword_27FD9E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2B8);
  }

  return result;
}

unint64_t sub_25F5AC7C4()
{
  result = qword_27FD9E2C0;
  if (!qword_27FD9E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2C0);
  }

  return result;
}

unint64_t sub_25F5AC81C()
{
  result = qword_27FD9E2C8;
  if (!qword_27FD9E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2C8);
  }

  return result;
}

unint64_t sub_25F5AC874()
{
  result = qword_27FD9E2D0;
  if (!qword_27FD9E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2D0);
  }

  return result;
}

unint64_t sub_25F5AC8CC()
{
  result = qword_27FD9E2D8;
  if (!qword_27FD9E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2D8);
  }

  return result;
}

unint64_t sub_25F5AC924()
{
  result = qword_27FD9E2E0;
  if (!qword_27FD9E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2E0);
  }

  return result;
}

unint64_t sub_25F5AC97C()
{
  result = qword_27FD9E2E8;
  if (!qword_27FD9E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2E8);
  }

  return result;
}

unint64_t sub_25F5AC9D4()
{
  result = qword_27FD9E2F0;
  if (!qword_27FD9E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2F0);
  }

  return result;
}

unint64_t sub_25F5ACA2C()
{
  result = qword_27FD9E2F8;
  if (!qword_27FD9E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2F8);
  }

  return result;
}

unint64_t sub_25F5ACA84()
{
  result = qword_27FD9E300;
  if (!qword_27FD9E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E300);
  }

  return result;
}

unint64_t sub_25F5ACADC()
{
  result = qword_27FD9E308;
  if (!qword_27FD9E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E308);
  }

  return result;
}

unint64_t sub_25F5ACB30()
{
  result = qword_27FD9E310;
  if (!qword_27FD9E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E310);
  }

  return result;
}

unint64_t sub_25F5ACB84()
{
  result = qword_27FD9E318;
  if (!qword_27FD9E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E318);
  }

  return result;
}

uint64_t sub_25F5ACBF0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E360, &qword_25F5E9D28);
  if (swift_dynamicCast())
  {
    sub_25F573A2C(__src, &v43);
    __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
    sub_25F5E34E4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25F5AEE2C(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25F5E49A4();
  }

  sub_25F5ADF28(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25F5AEB30(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v34[2] = v39;
  v10 = sub_25F5ADFF0(sub_25F5AEE94, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25F5E35A4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25F5D2924(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25F5E4524();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25F5E4554();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25F5E49A4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25F5D2924(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25F5E4534();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_25F5E35B4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25F5E35B4();
    sub_25F5AEEFC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_25F5AEEFC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25F5717CC(*&__src[0], *(&__src[0] + 1));

  sub_25F571820(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_25F5AD100(uint64_t a1, unint64_t a2)
{
  v5 = sub_25F5E40F4();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_25F5E40C4();
  MEMORY[0x28223BE20](v45, v9);
  v10 = sub_25F5E40E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F5AECD0(&unk_287194578);
  v16 = a2 >> 62;
  v42 = v11;
  v43 = v10;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (!v19)
    {
      if (v20 < 7)
      {
        goto LABEL_16;
      }

LABEL_11:
      v47 = v14;
      v48 = v15;
      v21 = sub_25F5E35C4();
      v41 = v2;
      v23 = v22;
      v24 = sub_25F5AE910(v47, v48, v21, v22);
      sub_25F571820(v21, v23);
      v14 = v47;
      v15 = v48;
      if (v24)
      {
        if (qword_27FD9D8B8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_16:
      sub_25F571820(v14, v15);
      sub_25F5717CC(a1, a2);
      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!v16)
    {
      if (BYTE6(a2) < 7uLL)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 7)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_13:
  v26 = qword_27FD9E328;
  v25 = unk_27FD9E330;
  v40 = sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_25F5E40B4();
  sub_25F5717CC(v26, v25);
  v27 = v41;
  sub_25F5AE548(v26, v25, v8);
  v41 = v27;
  sub_25F571820(v26, v25);
  sub_25F5E40A4();
  (*(v44 + 8))(v8, v5);
  sub_25F5AED80(&qword_27FD9E340, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v28 = v46;
  result = sub_25F5E40D4();
  if (v16)
  {
    if (v16 != 2)
    {
      v32 = v43;
      v31 = a1;
      v30 = a1 >> 32;
      if (a1 >> 32 < 7)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
  }

  else
  {
    v31 = 0;
    v30 = BYTE6(a2);
  }

  v32 = v43;
  if (v30 < 7)
  {
    goto LABEL_29;
  }

LABEL_22:
  if (v30 >= v31)
  {
    v33 = sub_25F5E35C4();
    v34 = v41;
    v36 = sub_25F5AD5D0(v33, v35);
    if (v34)
    {
      (*(v42 + 8))(v28, v32);
      sub_25F571820(v47, v48);
    }

    else
    {
      v38 = v36;
      v39 = v37;
      a1 = sub_25F5E4074();
      (*(v42 + 8))(v28, v32);
      sub_25F571820(v47, v48);
      sub_25F571820(v38, v39);
    }

    return a1;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25F5AD5D0(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v29[3] = MEMORY[0x277CC9318];
      v29[4] = MEMORY[0x277CC9300];
      v29[0] = a1;
      v29[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1Tm(v29, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v27, 0, 14);
          v14 = v27;
          v13 = v27;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_25F5E3494();
        if (v17)
        {
          v18 = sub_25F5E34C4();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v27[0] = *v9;
        LOWORD(v27[1]) = v11;
        BYTE2(v27[1]) = BYTE2(v11);
        BYTE3(v27[1]) = BYTE3(v11);
        BYTE4(v27[1]) = BYTE4(v11);
        BYTE5(v27[1]) = BYTE5(v11);
        v13 = v27 + BYTE6(v11);
        v14 = v27;
LABEL_33:
        sub_25F5AE394(v14, v13, &v28);
        v7 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        return v7;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_25F5E3494();
        if (!v17)
        {
LABEL_25:
          v23 = sub_25F5E34B4();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_25F5E34C4();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_25F571820(a1, a2);
  v7 = sub_25F5E4084();
  sub_25F5AED80(&qword_27FD9E348, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
  return v7;
}

uint64_t sub_25F5AD8CC(uint64_t a1)
{
  result = sub_25F5AD8F0(a1);
  qword_27FD9E328 = result;
  unk_27FD9E330 = v2;
  return result;
}

uint64_t sub_25F5AD8F0(uint64_t a1)
{
  v1 = sub_25F5E4514();
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_36:

    v17 = sub_25F5AECD0(v5);

    return v17;
  }

  v3 = v1;
  v4 = v2;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == 2573 && v4 == 0xE200000000000000 || (result = sub_25F5E4B84(), (result & 1) != 0))
    {

      LOBYTE(v6) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    v11 = (v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v3 & 0xFFFFFFFFFFFFLL;
    if (!v11)
    {
      break;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v16 = sub_25F5E44A4();
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v13 = v3;
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_25F5E49A4();
        }

        v13 = *v12;
      }

      v14 = v13;
      v15 = (__clz(~v13) - 24) << 16;
      if (v14 < 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 65541;
      }
    }

    if (v16 >> 14 != 4 * v11)
    {
      goto LABEL_31;
    }

    result = sub_25F5D25A4(v3, v4);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_31:

      LOBYTE(v6) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = sub_25F5D25A4(v3, v4);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      v6 = result;

      if ((v6 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v5 = sub_25F570FAC(0, *(v5 + 2) + 1, 1, v5);
      }
    }

LABEL_6:
    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_25F570FAC((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = v6;
    v3 = sub_25F5E4514();
    v4 = v9;
    if (!v9)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25F5ADB68@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_25F5E3494();
    if (v10)
    {
      v11 = sub_25F5E34C4();
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
      result = sub_25F5E34B4();
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
  v10 = sub_25F5E3494();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25F5E34C4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25F5E34B4();
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

uint64_t sub_25F5ADD98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_25F5AE858(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_25F571820(a3, a4);
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
  sub_25F5ADB68(v13, a3, a4, &v12);
  v10 = v4;
  sub_25F571820(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t *sub_25F5ADF28@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_25F5AEA78(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25F5E34D4();
      swift_allocObject();
      v8 = sub_25F5E3484();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_25F5E3594();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_25F5ADFF0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_25F571820(v7, v6);
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

    sub_25F571820(v7, v6);
    *v4 = xmmword_25F5E9D10;
    sub_25F571820(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25F5E3494() && __OFSUB__(v7, sub_25F5E34C4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25F5E34D4();
      swift_allocObject();
      v14 = sub_25F5E3474();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_25F5AE494(v7, v7 >> 32, a1);

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

    sub_25F571820(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25F5E9D10;
    sub_25F571820(0, 0xC000000000000000);
    sub_25F5E3564();
    result = sub_25F5AE494(*(v17 + 2), *(v17 + 3), a1);
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

_BYTE *sub_25F5AE394@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_25F5AEA78(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25F5AEBD0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25F5AEC4C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25F5AE428(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25F5AE494(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25F5E3494();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25F5E34C4();
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

  v12 = sub_25F5E34B4();
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

uint64_t sub_25F5AE548(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_25F5E40F4();
      sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_25F5E4094();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_25F5AE728(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_25F5AE728(v5, v6);
  }

  sub_25F5E40F4();
  sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_25F5E4094();
}

uint64_t sub_25F5AE728(uint64_t a1, uint64_t a2)
{
  result = sub_25F5E3494();
  if (!result || (result = sub_25F5E34C4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25F5E34B4();
      sub_25F5E40F4();
      sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_25F5E4094();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F5AE808@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25F5E4964();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F5AE858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25F5E3494();
  v11 = result;
  if (result)
  {
    result = sub_25F5E34C4();
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

  sub_25F5E34B4();
  sub_25F5ADB68(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_25F5AE910(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_25F5717CC(a3, a4);
          return sub_25F5ADD98(v13, a2, a3, a4) & 1;
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

uint64_t sub_25F5AEA78(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25F5AEB30(uint64_t result)
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
      sub_25F5E34D4();
      swift_allocObject();
      sub_25F5E34A4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25F5E3594();
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

uint64_t sub_25F5AEBD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F5E34D4();
  swift_allocObject();
  result = sub_25F5E3484();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F5E3594();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25F5AEC4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F5E34D4();
  swift_allocObject();
  result = sub_25F5E3484();
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

uint64_t sub_25F5AECD0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E350, &qword_25F5E9D20);
  v10 = sub_25F5AEDC8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25F5AE394(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_25F5AED80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F5AEDC8()
{
  result = qword_27FD9E358;
  if (!qword_27FD9E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E350, &qword_25F5E9D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E358);
  }

  return result;
}

uint64_t sub_25F5AEE2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E368, &unk_25F5E9D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25F5AEE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25F5AE428(sub_25F5AEF10, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25F5AEEFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F571820(result, a2);
  }

  return result;
}

uint64_t ExtractedItem.init(itemId:text:date:metadata:userInterfaceLanguage:userSetRegionFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a8;
  v52 = a6;
  v59 = a5;
  v57 = a3;
  v53 = a2;
  v14 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v50 = &v48 - v17;
  v18 = sub_25F5E3774();
  v49 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v48 - v24;
  v26 = sub_25F5E3794();
  v55 = *(v26 - 8);
  v56 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ExtractedItem(0);
  *(a9 + v30[6]) = 0;
  v54 = sub_25F571FC4(MEMORY[0x277D84F90]);
  sub_25F5E3754();
  v58 = a1;
  v31 = a1;
  v32 = v52;
  sub_25F573B94(v31, a9, &qword_27FD9DE10, &unk_25F5E7240);
  v33 = (a9 + v30[5]);
  v34 = v57;
  *v33 = v53;
  v33[1] = v34;
  v35 = a9 + v30[7];
  v57 = a4;
  sub_25F573B94(a4, v35, &unk_27FD9E500, &unk_25F5EA410);
  if (!a7)
  {
    v53 = a10;
    sub_25F5E3784();
    sub_25F5E3764();
    (*(v49 + 8))(v21, v18);
    v36 = sub_25F5E3704();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v25, 1, v36) == 1)
    {
      sub_25F57C148(v25, &qword_27FD9DE08, &unk_25F5E7230);
      v32 = 0;
      a7 = 0;
    }

    else
    {
      v32 = sub_25F5E36F4();
      a7 = v38;
      (*(v37 + 8))(v25, v36);
    }

    v14 = v53;
  }

  v39 = (a9 + v30[8]);
  *v39 = v32;
  v39[1] = a7;
  if (v14)
  {
    sub_25F57C148(v57, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v58, &qword_27FD9DE10, &unk_25F5E7240);
    (*(v55 + 8))(v29, v56);

    v41 = v51;
  }

  else
  {
    v42 = v50;
    sub_25F5E3744();
    v43 = sub_25F5E3734();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_25F57C148(v57, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v58, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v55 + 8))(v29, v56);
      sub_25F57C148(v42, &qword_27FD9DE00, &unk_25F5E9D40);

      v41 = 0;
      v14 = 0;
    }

    else
    {
      v41 = sub_25F5E36F4();
      v14 = v45;
      sub_25F57C148(v57, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v58, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v55 + 8))(v29, v56);
      (*(v44 + 8))(v42, v43);
    }
  }

  v46 = v30[10];
  v47 = (a9 + v30[9]);
  *v47 = v41;
  v47[1] = v14;
  *(a9 + v46) = v59;
  return result;
}

uint64_t ExtractedMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F5E3694();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtractedMessage.receiver.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 24));

  return v1;
}

uint64_t ExtractedMessage.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 28));

  return v1;
}

uint64_t ExtractedMessage.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 32));

  return v1;
}

uint64_t ExtractedMessage.autoSubmitted.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 40));

  return v1;
}

uint64_t ExtractedMessage.metadata.getter()
{
  type metadata accessor for ExtractedMessage(0);
}

uint64_t ExtractedMessage.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedMessage(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

int *ExtractedMessage.init(date:sender:receiver:subject:body:conversationId:autoSubmitted:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_25F571FC4(MEMORY[0x277D84F90]);
  v21 = sub_25F5E3694();
  (*(*(v21 - 8) + 32))(a9, a1, v21);

  result = type metadata accessor for ExtractedMessage(0);
  v23 = (a9 + result[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[7]);
  *v25 = a6;
  v25[1] = a7;
  v26 = (a9 + result[8]);
  *v26 = a8;
  v26[1] = a10;
  if (a12)
  {
    v27 = 0;
  }

  else
  {
    v27 = a11;
  }

  v28 = result[11];
  *(a9 + result[9]) = v27;
  v29 = (a9 + result[10]);
  *v29 = a13;
  v29[1] = a14;
  *(a9 + v28) = a15;
  return result;
}

uint64_t sub_25F5AF828()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6D6275536F747561;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 2036625250;
  if (v1 != 4)
  {
    v4 = 0x61737265766E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7265766965636572;
  if (v1 != 2)
  {
    v5 = 0x7463656A627573;
  }

  if (*v0)
  {
    v2 = 0x7265646E6573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F5AF928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5B21D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5AF95C(uint64_t a1)
{
  v2 = sub_25F5B10E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5AF998(uint64_t a1)
{
  v2 = sub_25F5B10E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_25F5E3694();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E370, &qword_25F5E9D50);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ExtractedMessage(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25F571FC4(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5B10E0();
  v42 = v9;
  sub_25F5E4C74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = v40;
    v37 = v13;
    LOBYTE(v46) = 0;
    sub_25F5B13A0(&qword_27FD9E380, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v15 = v41;
    sub_25F5E4AD4();
    v16 = v37;
    (*(v39 + 32))(v37, v15, v4);
    LOBYTE(v46) = 1;
    v17 = sub_25F5E4A94();
    v36 = v4;
    v18 = &v16[v10[5]];
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(v46) = 2;
    v41 = 0;
    v20 = sub_25F5E4A94();
    v21 = &v16[v10[6]];
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v46) = 3;
    v23 = sub_25F5E4A94();
    v24 = &v16[v10[7]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v46) = 4;
    v26 = sub_25F5E4A94();
    v27 = &v16[v10[8]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v46) = 5;
    *&v16[v10[9]] = sub_25F5E4AF4();
    LOBYTE(v46) = 6;
    v29 = sub_25F5E4A44();
    v30 = &v16[v10[10]];
    *v30 = v29;
    v30[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E388, &qword_25F5E9D58);
    v45 = 7;
    sub_25F5B1134();
    sub_25F5E4AD4();
    v32 = v10[11];
    (*(v14 + 8))(v42, v43);

    v34 = v37;
    v33 = v38;
    *&v37[v32] = v46;
    sub_25F5B143C(v34, v33, type metadata accessor for ExtractedMessage);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_25F5B14A4(v34, type metadata accessor for ExtractedMessage);
  }
}

uint64_t ExtractedConversation.conversationText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExtractedConversation.metadata.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ExtractedConversation.init(conversationId:count:messages:conversationText:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_25F571FC4(MEMORY[0x277D84F90]);

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_25F5B0100()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x736567617373656DLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E756F63;
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

uint64_t sub_25F5B01A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5B2470(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5B01D0(uint64_t a1)
{
  v2 = sub_25F5B1298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5B020C(uint64_t a1)
{
  v2 = sub_25F5B1298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedConversation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E3A8, &qword_25F5E9D68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  v22 = sub_25F571FC4(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5B1298();
  sub_25F5E4C74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v24) = 0;
    v10 = sub_25F5E4AF4();
    LOBYTE(v24) = 1;
    v21 = sub_25F5E4AC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E3B8, &qword_25F5E9D70);
    v23 = 2;
    sub_25F5B12EC();
    sub_25F5E4AD4();
    v12 = v24;
    LOBYTE(v24) = 3;
    v19 = sub_25F5E4A94();
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E388, &qword_25F5E9D58);
    v23 = 4;
    sub_25F5B1134();
    sub_25F5E4AD4();
    (*(v6 + 8))(v9, v5);

    v14 = v24;
    v16 = v20;
    v15 = v21;
    *a2 = v10;
    a2[1] = v15;
    v17 = v19;
    a2[2] = v12;
    a2[3] = v17;
    a2[4] = v16;
    a2[5] = v14;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_25F5B05D4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t ExtractedItem.tags.getter()
{
  type metadata accessor for ExtractedItem(0);
}

uint64_t ExtractedItem.tags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedItem(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtractedItem.userInterfaceLanguage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedItem(0) + 32));

  return v1;
}

uint64_t ExtractedItem.userSetRegionFormat.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedItem(0) + 36));

  return v1;
}

uint64_t ExtractedItem.metadata.getter()
{
  type metadata accessor for ExtractedItem(0);
}

uint64_t ExtractedItem.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedItem(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_25F5B085C()
{
  v1 = *v0;
  v2 = 0x64496D657469;
  v3 = 0x617461646174656DLL;
  if (v1 == 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 1702125924;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 1954047348;
  if (v1 != 1)
  {
    v5 = 1936154996;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_25F5B0920@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5B262C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5B0948(uint64_t a1)
{
  v2 = sub_25F5B13E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5B0984(uint64_t a1)
{
  v2 = sub_25F5B13E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E3D0, &unk_25F5E9D78);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ExtractedItem(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_25F571FC4(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5B13E8();
  v40 = v14;
  v19 = v41;
  sub_25F5E4C74();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v41 = v6;
    v20 = v38;
    sub_25F5E36D4();
    LOBYTE(v44) = 0;
    sub_25F5B13A0(&qword_27FD9E3E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v21 = v39;
    sub_25F5E4A84();
    sub_25F57B86C(v10, v18, &qword_27FD9DE10, &unk_25F5E7240);
    LOBYTE(v44) = 1;
    v22 = sub_25F5E4A94();
    v23 = &v18[v15[5]];
    *v23 = v22;
    v23[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    v43 = 2;
    sub_25F574164();
    sub_25F5E4A84();
    v25 = v20;
    v26 = v15[6];
    v36 = v44;
    *&v18[v26] = v44;
    sub_25F5E3694();
    LOBYTE(v44) = 3;
    sub_25F5B13A0(&qword_27FD9E380, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v27 = v41;
    sub_25F5E4A84();
    sub_25F57B86C(v27, &v18[v15[7]], &unk_27FD9E500, &unk_25F5EA410);
    LOBYTE(v44) = 4;
    v28 = sub_25F5E4A44();
    v29 = &v18[v15[8]];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v44) = 5;
    v31 = sub_25F5E4A44();
    v32 = &v18[v15[9]];
    *v32 = v31;
    v32[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E388, &qword_25F5E9D58);
    v43 = 6;
    sub_25F5B1134();
    sub_25F5E4AD4();
    v34 = v15[10];
    (*(v25 + 8))(v40, v21);

    *&v18[v34] = v44;
    sub_25F5B143C(v18, v37, type metadata accessor for ExtractedItem);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_25F5B14A4(v18, type metadata accessor for ExtractedItem);
  }
}

uint64_t sub_25F5B10A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25F5B10E0()
{
  result = qword_27FD9E378;
  if (!qword_27FD9E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E378);
  }

  return result;
}

unint64_t sub_25F5B1134()
{
  result = qword_27FD9E390;
  if (!qword_27FD9E390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E388, &qword_25F5E9D58);
    sub_25F5B11C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E390);
  }

  return result;
}

unint64_t sub_25F5B11C0()
{
  result = qword_27FD9E398;
  if (!qword_27FD9E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD9E540, &qword_25F5E9D60);
    sub_25F5B1244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E398);
  }

  return result;
}

unint64_t sub_25F5B1244()
{
  result = qword_27FD9E3A0;
  if (!qword_27FD9E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3A0);
  }

  return result;
}

unint64_t sub_25F5B1298()
{
  result = qword_27FD9E3B0;
  if (!qword_27FD9E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3B0);
  }

  return result;
}

unint64_t sub_25F5B12EC()
{
  result = qword_27FD9E3C0;
  if (!qword_27FD9E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E3B8, &qword_25F5E9D70);
    sub_25F5B13A0(&qword_27FD9E3C8, type metadata accessor for ExtractedMessage, &protocol conformance descriptor for ExtractedMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3C0);
  }

  return result;
}

uint64_t sub_25F5B13A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F5B13E8()
{
  result = qword_27FD9E3D8;
  if (!qword_27FD9E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3D8);
  }

  return result;
}

uint64_t sub_25F5B143C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5B14A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5B1518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F5E3694();
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

uint64_t sub_25F5B15EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F5E3694();
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

void sub_25F5B16A8(uint64_t a1)
{
  sub_25F5E3694();
  if (v1 <= 0x3F)
  {
    sub_25F5B1760();
    if (v2 <= 0x3F)
    {
      sub_25F5B17B0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F5B1760()
{
  if (!qword_27FD9E620)
  {
    v0 = sub_25F5E47F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E620);
    }
  }
}

void sub_25F5B17B0(uint64_t a1)
{
  if (!qword_27FD9E3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD9E540, &qword_25F5E9D60);
    v1 = sub_25F5E4324();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD9E3F8);
    }
  }
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

uint64_t sub_25F5B1838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F5B1880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5B18F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25F5B1A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25F5B1B84(uint64_t a1)
{
  sub_25F5B1CF4(319, &qword_27FD9E410, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_25F5B1C90(319);
    if (v2 <= 0x3F)
    {
      sub_25F5B1CF4(319, &qword_27FD9E420, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_25F5B1760();
        if (v4 <= 0x3F)
        {
          sub_25F5B17B0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25F5B1C90(uint64_t a1)
{
  if (!qword_27FD9E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DB58, &qword_25F5E5F50);
    v1 = sub_25F5E47F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD9E418);
    }
  }
}

void sub_25F5B1CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F5E47F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExtractedMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExtractedMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F5B1EBC()
{
  result = qword_27FD9E428;
  if (!qword_27FD9E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E428);
  }

  return result;
}

unint64_t sub_25F5B1F14()
{
  result = qword_27FD9E430;
  if (!qword_27FD9E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E430);
  }

  return result;
}

unint64_t sub_25F5B1F6C()
{
  result = qword_27FD9E438;
  if (!qword_27FD9E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E438);
  }

  return result;
}

unint64_t sub_25F5B1FC4()
{
  result = qword_27FD9E440;
  if (!qword_27FD9E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E440);
  }

  return result;
}

unint64_t sub_25F5B201C()
{
  result = qword_27FD9E448;
  if (!qword_27FD9E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E448);
  }

  return result;
}

unint64_t sub_25F5B2074()
{
  result = qword_27FD9E450;
  if (!qword_27FD9E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E450);
  }

  return result;
}

unint64_t sub_25F5B20CC()
{
  result = qword_27FD9E458;
  if (!qword_27FD9E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E458);
  }

  return result;
}

unint64_t sub_25F5B2124()
{
  result = qword_27FD9E460;
  if (!qword_27FD9E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E460);
  }

  return result;
}

unint64_t sub_25F5B217C()
{
  result = qword_27FD9E468;
  if (!qword_27FD9E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E468);
  }

  return result;
}

uint64_t sub_25F5B21D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xE800000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6275536F747561 && a2 == 0xED00006465747469 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_25F5B2470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5EC6E0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25F5B262C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5EC1A0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F5EC1C0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_25F5B2890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25F5B296C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 112) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EmailExtractor(uint64_t a1)
{
  result = qword_27FD9E470;
  if (!qword_27FD9E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5B2A68(uint64_t a1)
{
  sub_25F5B2AE4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F5B2AE4(uint64_t a1)
{
  if (!qword_27FD9E420)
  {
    sub_25F5E3694();
    v1 = sub_25F5E47F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD9E420);
    }
  }
}

uint64_t sub_25F5B2B3C(char a1, char a2)
{
  if (qword_25F5EA278[a1] == qword_25F5EA278[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25F5E4B84();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25F5B2BA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7375656870726F4DLL;
    }

    else
    {
      v5 = 0x676E6967676154;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0x6E65476567616D49;
    v4 = 0xEF6E6F6974617265;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000025F5EC0C0;
    }

    if (a1 == 2)
    {
      v5 = 0x706D6F4374786554;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEE006E6F6974656CLL;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x7375656870726F4DLL;
    }

    else
    {
      v11 = 0x676E6967676154;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6E65476567616D49;
    v8 = 0x800000025F5EC0C0;
    if (a2 == 3)
    {
      v8 = 0xEF6E6F6974617265;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v9 = 0x706D6F4374786554;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEE006E6F6974656CLL;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F5E4B84();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F5B2D60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEE006574616C706DLL;
  v4 = 0x694674706D6F7250;
  if (a1 == 2)
  {
    v4 = 0x655474706D6F7250;
  }

  else
  {
    v3 = 0xEE0068746150656CLL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000025F5EBFB0;
  if (!a1)
  {
    v5 = 0x72506D6574737953;
    v6 = 0xEC00000074706D6FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x655474706D6F7250;
    }

    else
    {
      v11 = 0x694674706D6F7250;
    }

    if (a2 == 2)
    {
      v10 = 0xEE006574616C706DLL;
    }

    else
    {
      v10 = 0xEE0068746150656CLL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x72506D6574737953;
    }

    if (a2)
    {
      v10 = 0x800000025F5EBFB0;
    }

    else
    {
      v10 = 0xEC00000074706D6FLL;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_25F5E4B84();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_25F5B2EDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x686374656B73;
    }

    else
    {
      v5 = 0x696A6F6D65;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x61727473756C6C69;
    }

    else
    {
      v5 = 0x6F6974616D696E61;
    }

    if (v4)
    {
      v6 = 0xEC0000006E6F6974;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x686374656B73;
  if (a2 != 2)
  {
    v8 = 0x696A6F6D65;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x61727473756C6C69;
    v2 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F5E4B84();
  }

  return v11 & 1;
}

uint64_t sub_25F5B3020(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C69616D45;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 7564627;
    }

    else
    {
      v5 = 0x6C69616D45;
    }

    if (v3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x50696A6F6D6E6547;
    v4 = 0xED000074706D6F72;
  }

  else if (a1 == 3)
  {
    v4 = 0xE800000000000000;
    v5 = 0x7375656870726F4DLL;
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x656D6F6942;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE300000000000000;
    v8 = 7564627;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x50696A6F6D6E6547;
    v6 = 0xED000074706D6F72;
    v7 = 0xE800000000000000;
    v8 = 0x7375656870726F4DLL;
    if (a2 != 3)
    {
      v8 = 0x656D6F6942;
      v7 = 0xE500000000000000;
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
    v12 = sub_25F5E4B84();
  }

  return v12 & 1;
}

uint64_t sub_25F5B3198(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  v2[34] = swift_task_alloc();
  v3 = sub_25F5E3774();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  v2[38] = swift_task_alloc();
  v4 = sub_25F5E3794();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v2[42] = swift_task_alloc();
  v5 = type metadata accessor for ExtractedItem(0);
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v6 = sub_25F5E3694();
  v2[47] = v6;
  v2[48] = *(v6 - 8);
  v2[49] = swift_task_alloc();
  v7 = type metadata accessor for ExtractedMessage(0);
  v2[50] = v7;
  v2[51] = *(v7 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v8 = sub_25F5E46B4();
  v2[54] = v8;
  v2[55] = *(v8 - 8);
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E480, &qword_25F5EA270);
  v2[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = type metadata accessor for MessageExtractor(0);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5B35C0, 0, 0);
}

uint64_t sub_25F5B35C0()
{
  v1 = 0;
  v2 = v0[33];
  v53 = *(v2 + 42) & 1;
  v54 = *(v2 + 129) & 1;
  if (v54 && *(v2 + 144))
  {
    sub_25F5E4024();
    v1 = sub_25F5E4014();
  }

  v0[66] = v1;
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[33];
  v52 = *v6;
  v7 = *(v6 + 3);
  v8 = *(v6 + 4);
  v9 = type metadata accessor for EmailExtractor(0);
  sub_25F573B94(v6 + *(v9 + 20), v4, &unk_27FD9E500, &unk_25F5EA410);
  v10 = *(v6 + 14);
  v51 = *(v6 + 13);
  v11 = v6[15];
  v50 = *(v6 + 128);
  *(v3 + v5[13]) = 0;
  *(v3 + v5[14]) = MEMORY[0x277D84F90];
  v49 = v5[15];
  *(v3 + v49) = 2;
  v12 = objc_allocWithZone(MEMORY[0x277D06D78]);

  *v3 = [v12 init];
  v13 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v0[22] = sub_25F5C0E14;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_25F5C0E18;
  v0[21] = &block_descriptor;
  v14 = _Block_copy(v0 + 18);
  v15 = [v13 initWithBuilder_];
  _Block_release(v14);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  v16 = v0[64];
  v17 = v0[61];
  v18 = v0[62];
  *(v16 + 1) = v15;
  *(v16 + 2) = 49;
  *(v16 + 3) = v7;
  *(v16 + v18[10]) = v8;
  v16[4] = v52;
  sub_25F573B94(v17, v16 + v18[9], &unk_27FD9E500, &unk_25F5EA410);
  v19 = v16 + v18[12];
  *v19 = v53;
  v19[1] = v54;
  *(v19 + 1) = v1;
  v20 = (v16 + v18[11]);
  *v20 = v51;
  v20[1] = v10;
  v21 = 30.0;
  if (!v50)
  {
    v21 = v11;
  }

  *(v16 + v18[16]) = v21;
  v0[27] = &type metadata for MailFeatureFlags;
  v0[28] = sub_25F5B6DD0();
  v22 = sub_25F5E3834();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  if ((v22 & 1) == 0)
  {
    sub_25F57C148(v0[61], &unk_27FD9E500, &unk_25F5EA410);
    goto LABEL_13;
  }

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_29;
  }

LABEL_9:
  v23 = sub_25F5E3FB4();
  __swift_project_value_buffer(v23, qword_27FD9EA20);
  v24 = sub_25F5E3F94();
  v25 = sub_25F5E4794();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_25F56A000, v24, v25, "Mail classC data access is enabled, checking if device unlocked since boot.", v26, 2u);
    MEMORY[0x25F8E3B70](v26, -1, -1);
  }

  v27 = v0[61];

  v28 = MKBDeviceUnlockedSinceBoot();
  sub_25F57C148(v27, &unk_27FD9E500, &unk_25F5EA410);
  *(v3 + v49) = v28 == 1;
LABEL_13:
  v29 = v0[65];
  sub_25F5B6E50(v0[64], v29, type metadata accessor for MessageExtractor);
  v30 = *(v29 + v5[15]);
  if (v30 == 2)
  {
    v31 = [*v0[65] messageRepository];
    v0[67] = v31;
    v0[2] = v0;
    v0[7] = v0 + 83;
    v0[3] = sub_25F5B3E18;
    v32 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E510, &qword_25F5EA4B0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25F5BBE00;
    v0[13] = &block_descriptor_6;
    v0[14] = v32;
    [v31 isDataAccessible_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else if (v30)
  {
    v33 = v0[65];
    v34 = v0[63];
    v35 = v0[47];
    v36 = v0[48];
    v37 = v0[32];
    v38 = *(v36 + 56);
    v0[68] = v38;
    v0[69] = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v38(v37, 1, 1, v35);
    sub_25F5B6EB8(v33, v34, type metadata accessor for MessageExtractor);
    *(v0 + 35) = 0u;
    *(v0 + 36) = 0u;
    *(v0 + 37) = 0u;
    v0[76] = 0;
    v0[79] = MEMORY[0x277D84F90];
    *(v0 + 77) = 0u;
    v39 = swift_task_alloc();
    v0[80] = v39;
    *v39 = v0;
    v39[1] = sub_25F5B426C;
    v40 = v0[57];

    return MessageExtractor.next()(v40);
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v41 = sub_25F5E3FB4();
    __swift_project_value_buffer(v41, qword_27FD9EA20);
    v42 = sub_25F5E3F94();
    v43 = sub_25F5E4794();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_25F56A000, v42, v43, "Email interface: data not accessible.", v44, 2u);
      MEMORY[0x25F8E3B70](v44, -1, -1);
    }

    v45 = v0[65];

    sub_25F5A31D0();
    swift_allocError();
    *v46 = 3;
    swift_willThrow();

    sub_25F5B6F20(v45, type metadata accessor for MessageExtractor);

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_25F5B3E18()
{

  return MEMORY[0x2822009F8](sub_25F5B3EF8, 0, 0);
}

uint64_t sub_25F5B3EF8()
{
  v1 = *(v0 + 664);

  if (v1 == 1)
  {
    v2 = *(v0 + 520);
    v3 = *(v0 + 504);
    v4 = *(v0 + 376);
    v5 = *(v0 + 384);
    v6 = *(v0 + 256);
    v7 = *(v5 + 56);
    *(v0 + 544) = v7;
    *(v0 + 552) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v7(v6, 1, 1, v4);
    sub_25F5B6EB8(v2, v3, type metadata accessor for MessageExtractor);
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0;
    *(v0 + 632) = MEMORY[0x277D84F90];
    *(v0 + 616) = 0u;
    v8 = swift_task_alloc();
    *(v0 + 640) = v8;
    *v8 = v0;
    v8[1] = sub_25F5B426C;
    v9 = *(v0 + 456);

    return MessageExtractor.next()(v9);
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v11 = sub_25F5E3FB4();
    __swift_project_value_buffer(v11, qword_27FD9EA20);
    v12 = sub_25F5E3F94();
    v13 = sub_25F5E4794();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25F56A000, v12, v13, "Email interface: data not accessible.", v14, 2u);
      MEMORY[0x25F8E3B70](v14, -1, -1);
    }

    v15 = *(v0 + 520);

    sub_25F5A31D0();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    sub_25F5B6F20(v15, type metadata accessor for MessageExtractor);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_25F5B426C()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_25F5B5820;
  }

  else
  {
    v2 = sub_25F5B4380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5B4380()
{
  v1 = v0[57];
  v2 = v0[50];
  v3 = v0;
  v174 = v0;
  if ((*(v0[51] + 48))(v1, 1, v2) != 1)
  {
    v29 = v0[53];
    sub_25F5B6E50(v1, v29, type metadata accessor for ExtractedMessage);
    v30 = (v29 + *(v2 + 32));
    v32 = *v30;
    v31 = v30[1];
    v33 = v32 & 0xFFFFFFFFFFFFLL;
    if ((v31 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v34 = v33;
    }

    if (!v34)
    {
      v64 = v0[78];
      v45 = v64 + 1;
      if (!__OFADD__(v64, 1))
      {
        sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
        v29 = v0[79];
        v44 = v45;
LABEL_109:
        v3[79] = v29;
        v3[78] = v44;
        v3[77] = v45;
        v157 = swift_task_alloc();
        v3[80] = v157;
        *v157 = v3;
        v157[1] = sub_25F5B426C;
        v158 = v3[57];

        return MessageExtractor.next()(v158);
      }

      __break(1u);
      goto LABEL_117;
    }

    v35 = v0[33];
    v36 = *(v35 + 40);
    if (v36 == 2 || (v36 & 1) == 0)
    {
      goto LABEL_88;
    }

    v37 = v0[53];
    if (*(v37 + *(v0[50] + 40) + 8))
    {
      if (sub_25F5E4464() == 0x6E65672D6F747561 && v38 == 0xEE00646574617265)
      {
      }

      else
      {
        v40 = sub_25F5E4B84();

        if ((v40 & 1) == 0)
        {
          v37 = v0[53];
          goto LABEL_36;
        }
      }

      v126 = v0[76];
      v48 = v126 + 1;
      if (!__OFADD__(v126, 1))
      {
        sub_25F5B6F20(v3[53], type metadata accessor for ExtractedMessage);
        v29 = v3[79];
        v44 = v3[78];
        v46 = v48;
        v45 = v3[77];
LABEL_106:
        v3[76] = v46;
        v3[75] = v48;
        goto LABEL_109;
      }

      goto LABEL_119;
    }

LABEL_36:
    result = filterBySender(_:)(v37);
    if (result)
    {
      v42 = v0[74];
      v43 = v42 + 1;
      if (!__OFADD__(v42, 1))
      {
        sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
        v29 = v0[79];
        v44 = v0[78];
        v45 = v0[77];
        v46 = v0[76];
        v47 = v43;
        v48 = v0[75];
LABEL_105:
        v3[74] = v47;
        v3[73] = v43;
        goto LABEL_106;
      }

      goto LABEL_120;
    }

    v35 = v0[33];
LABEL_88:
    v127 = *(v35 + 64);
    if (v127 < 2)
    {
      goto LABEL_91;
    }

    result = sub_25F5B5FA4(v0[53], v127);
    if (result)
    {
      v35 = v0[33];
      v127 = *(v35 + 64);
LABEL_91:
      if (v127 == 1 || (*(v35 + 80) & 1) != 0 || (*(v35 + 96) & 1) != 0 || (result = sub_25F5B674C(v0[53], *(v35 + 72), *(v35 + 88)), (result & 1) != 0))
      {
        sub_25F5B6EB8(v0[53], v0[52], type metadata accessor for ExtractedMessage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v0[79];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_96:
          v130 = v29[2];
          v129 = v29[3];
          if (v130 >= v129 >> 1)
          {
            v29 = sub_25F57887C((v129 > 1), v130 + 1, 1, v29);
          }

          v131 = v0[60];
          v133 = v3[51];
          v132 = v3[52];
          v134 = v3[47];
          v135 = v3[48];
          v136 = v3[32];
          v29[2] = v130 + 1;
          sub_25F5B6E50(v132, v29 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v130, type metadata accessor for ExtractedMessage);
          sub_25F573B94(v136, v131, &unk_27FD9E500, &unk_25F5EA410);
          if ((*(v135 + 48))(v131, 1, v134) == 1)
          {
            v137 = v3[68];
            v138 = v3[60];
            v139 = v3[53];
            v140 = v174[48];
            v141 = v174[47];
            v142 = v174[32];
            sub_25F57C148(v142, &unk_27FD9E500, &unk_25F5EA410);
            sub_25F57C148(v138, &unk_27FD9E500, &unk_25F5EA410);
            (*(v140 + 16))(v142, v139, v141);
            sub_25F5B6F20(v139, type metadata accessor for ExtractedMessage);
            v137(v142, 0, 1, v141);
            v44 = v174[78];
            v3 = v174;
            v45 = v174[77];
          }

          else
          {
            v143 = v3[32];
            v144 = *(v3[48] + 32);
            v144(v3[49], v3[60], v3[47]);
            sub_25F5B6FF0(&qword_27FD9E490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
            v145 = sub_25F5E4384();
            sub_25F57C148(v143, &unk_27FD9E500, &unk_25F5EA410);
            v146 = v3[59];
            if (v145)
            {
              v147 = v3[53];
              v148 = v3[48];
              v149 = v3[47];
              (*(v148 + 8))(v3[49], v149);
              (*(v148 + 16))(v146, v147, v149);
            }

            else
            {
              v144(v3[59], v3[49], v3[47]);
            }

            v153 = v3[68];
            v154 = v3[59];
            v155 = v3[47];
            v156 = v3[32];
            sub_25F5B6F20(v3[53], type metadata accessor for ExtractedMessage);
            v153(v154, 0, 1, v155);
            sub_25F5B6F80(v154, v156);
            v44 = v3[78];
            v45 = v3[77];
          }

          goto LABEL_109;
        }

LABEL_117:
        v29 = sub_25F57887C(0, v29[2] + 1, 1, v29);
        goto LABEL_96;
      }

      v159 = v0[70];
      v160 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
LABEL_121:
        __break(1u);
        return result;
      }

      sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
      v29 = v0[79];
      v44 = v0[78];
      v45 = v0[77];
      v46 = v0[76];
      v48 = v0[75];
      v47 = v3[74];
      v43 = v3[73];
      v152 = v3[72];
      v151 = v3[71];
      v3[70] = v160;
LABEL_104:
      v3[72] = v152;
      v3[71] = v151;
      goto LABEL_105;
    }

    v150 = v0[72];
    v151 = v150 + 1;
    if (!__OFADD__(v150, 1))
    {
      sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
      v29 = v0[79];
      v44 = v0[78];
      v45 = v0[77];
      v46 = v0[76];
      v48 = v0[75];
      v47 = v3[74];
      v152 = v151;
      v43 = v3[73];
      goto LABEL_104;
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  sub_25F5B6F20(v0[63], type metadata accessor for MessageExtractor);
  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v4 = sub_25F5E3FB4();
    __swift_project_value_buffer(v4, qword_27FD9EA20);
    v5 = sub_25F5E3F94();
    v6 = sub_25F5E4794();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v3[77];
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_25F56A000, v5, v6, "Filtered %ld empty body messages.", v8, 0xCu);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    v9 = v3[33];

    v10 = *(v9 + 40);
    if (v10 != 2 && (v10 & 1) != 0)
    {
      v11 = sub_25F5E3F94();
      v12 = sub_25F5E4794();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = v3[75];
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v13;
        _os_log_impl(&dword_25F56A000, v11, v12, "Filtered %ld auto-generated messages", v14, 0xCu);
        MEMORY[0x25F8E3B70](v14, -1, -1);
      }

      v15 = sub_25F5E3F94();
      v16 = sub_25F5E4794();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v3[73];
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = v17;
        _os_log_impl(&dword_25F56A000, v15, v16, "Filtered %ld group or no-reply apple messages", v18, 0xCu);
        MEMORY[0x25F8E3B70](v18, -1, -1);
      }
    }

    if (v3[71] >= 1)
    {
      v19 = sub_25F5E3F94();
      v20 = sub_25F5E4794();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = v3[71];
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v21;
        _os_log_impl(&dword_25F56A000, v19, v20, "Filtered %ld messages by week days.", v22, 0xCu);
        MEMORY[0x25F8E3B70](v22, -1, -1);
      }
    }

    if (v3[70] >= 1)
    {
      v23 = sub_25F5E3F94();
      v24 = sub_25F5E4794();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v3[70];
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v25;
        _os_log_impl(&dword_25F56A000, v23, v24, "Filtered %ld messages by hours.", v26, 0xCu);
        MEMORY[0x25F8E3B70](v26, -1, -1);
      }
    }

    v27 = *(v3[33] + 41);
    if (v27 != 2 && (v27 & 1) != 0)
    {
      v28 = convertSingleMessagesToConversations(_:)(v3[79]);
      goto LABEL_58;
    }

    v49 = groupAndSortMessages(_:)(v3[79]);
    v50 = *(v49 + 16);
    v51 = 0;
    if (!v50)
    {
      break;
    }

    v52 = (v49 + 72);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      v54 = *(v52 - 3);
      v55 = *(v52 - 2);
      v56 = *(v52 - 1);
      v57 = *v52;
      if ((v10 & 1) == 0 || *(v54 + 16) > 1uLL)
      {
        v175 = *(v52 - 5);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_25F57875C(0, *(v28 + 2) + 1, 1, v28);
        }

        v59 = *(v28 + 2);
        v58 = *(v28 + 3);
        v60 = v28;
        v61 = v175;
        if (v59 >= v58 >> 1)
        {
          v63 = sub_25F57875C((v58 > 1), v59 + 1, 1, v28);
          v61 = v175;
          v60 = v63;
        }

        *(v60 + 2) = v59 + 1;
        v28 = v60;
        v62 = &v60[48 * v59];
        *(v62 + 2) = v61;
        *(v62 + 6) = v54;
        *(v62 + 7) = v55;
        *(v62 + 8) = v56;
        *(v62 + 9) = v57;
        v3 = v174;
        goto LABEL_42;
      }

      if (__OFADD__(v51++, 1))
      {
        break;
      }

LABEL_42:
      v52 += 6;
      if (!--v50)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_115:
    swift_once();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_53:

  if (v10 != 2 && (v10 & 1) != 0)
  {
    v65 = v28;
    v66 = sub_25F5E3F94();
    v67 = sub_25F5E4794();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      *(v68 + 4) = v51;
      _os_log_impl(&dword_25F56A000, v66, v67, "Filtered %ld conversations with a single message.", v68, 0xCu);
      MEMORY[0x25F8E3B70](v68, -1, -1);
    }

    v28 = v65;
  }

LABEL_58:
  v69 = *(v28 + 2);
  if (v69)
  {
    v164 = v3[44];
    v176 = v3[43];
    v70 = v28;
    v71 = v3[40];
    v72 = v3[36];
    v177 = MEMORY[0x277D84F90];
    sub_25F571250(0, v69, 0);
    v73 = v177;
    v163 = (v72 + 8);
    v165 = (v71 + 8);
    v162 = sub_25F5E36D4();
    v161 = *(*(v162 - 8) + 56);
    v74 = v70 + 72;
    do
    {
      v171 = v69;
      v172 = v73;
      v75 = v3[68];
      v76 = v3[58];
      v77 = v3[47];
      v78 = v3[45];
      v79 = v3[42];
      v80 = v3[37];
      v166 = v3[38];
      v167 = v3[35];
      v168 = *(v74 - 2);
      v82 = *(v74 - 1);
      v81 = *v74;
      v170 = v74;
      v161(v79, 1, 1, v162);
      v75(v76, 1, 1, v77);
      *(v78 + v176[6]) = 0;

      swift_bridgeObjectRetain_n();
      v169 = v81;
      swift_bridgeObjectRetain_n();
      sub_25F5E3754();
      sub_25F573B94(v79, v78, &qword_27FD9DE10, &unk_25F5E7240);
      v83 = (v78 + v176[5]);
      *v83 = v168;
      v83[1] = v82;
      sub_25F573B94(v76, v78 + v176[7], &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5E3784();
      sub_25F5E3764();
      (*v163)(v80, v167);
      v84 = sub_25F5E3704();
      v85 = *(v84 - 8);
      v86 = (*(v85 + 48))(v166, 1, v84);
      v3 = v174;
      v87 = v174[38];
      if (v86 == 1)
      {
        sub_25F57C148(v174[38], &qword_27FD9DE08, &unk_25F5E7230);
        v88 = 0;
        v89 = 0;
      }

      else
      {
        v88 = sub_25F5E36F4();
        v89 = v90;
        (*(v85 + 8))(v87, v84);
      }

      v91 = v174[34];
      v92 = (v174[45] + v176[8]);
      *v92 = v88;
      v92[1] = v89;
      sub_25F5E3744();
      v93 = sub_25F5E3734();
      v94 = *(v93 - 8);
      v95 = (*(v94 + 48))(v91, 1, v93);
      v96 = v174[58];
      v97 = v174[41];
      v98 = v174[42];
      v99 = v174[39];
      v100 = v174[34];
      if (v95 == 1)
      {

        v101 = v169;

        (*v165)(v97, v99);
        sub_25F57C148(v96, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v98, &qword_27FD9DE10, &unk_25F5E7240);
        sub_25F57C148(v100, &qword_27FD9DE00, &unk_25F5E9D40);
        v102 = 0;
        v103 = 0;
      }

      else
      {
        v102 = sub_25F5E36F4();
        v103 = v104;

        (*v165)(v97, v99);
        sub_25F57C148(v96, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v98, &qword_27FD9DE10, &unk_25F5E7240);
        v105 = v93;
        v101 = v169;
        v3 = v174;
        (*(v94 + 8))(v100, v105);
      }

      v106 = v3[45];
      v107 = v3[46];
      v108 = v176[10];
      v109 = (v106 + v176[9]);
      *v109 = v102;
      v109[1] = v103;
      *(v106 + v108) = v101;
      sub_25F5B6E50(v106, v107, type metadata accessor for ExtractedItem);
      v73 = v172;
      v111 = *(v172 + 16);
      v110 = *(v172 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_25F571250((v110 > 1), v111 + 1, 1);
        v73 = v172;
      }

      v112 = v3[46];
      *(v73 + 16) = v111 + 1;
      sub_25F5B6E50(v112, v73 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v111, type metadata accessor for ExtractedItem);
      v74 = v170 + 6;
      v69 = v171 - 1;
    }

    while (v171 != 1);
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  v113 = v3[33];
  if (*(v113 + 56))
  {
    v173 = v73;
    sub_25F5B6F20(v3[65], type metadata accessor for MessageExtractor);

    goto LABEL_77;
  }

  v114 = *(v113 + 48);
  if (*(v73 + 16) >= v114)
  {
    v119 = v3[65];
    v120 = sub_25F5C7AF4();

    sub_25F5B6F20(v119, type metadata accessor for MessageExtractor);
    v173 = v120;
LABEL_77:

    v121 = v3[1];

    return v121(v173);
  }

  else
  {

    v115 = sub_25F5E3F94();
    v116 = sub_25F5E47B4();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 134218240;
      v118 = *(v73 + 16);

      *(v117 + 4) = v118;

      *(v117 + 12) = 2048;
      *(v117 + 14) = v114;
      _os_log_impl(&dword_25F56A000, v115, v116, "Extracted items %ld less than required sample size %ld.", v117, 0x16u);
      MEMORY[0x25F8E3B70](v117, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v122 = v3[65];
    v123 = v3[32];
    sub_25F5A31D0();
    swift_allocError();
    *v124 = 7;
    swift_willThrow();

    sub_25F57C148(v123, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5B6F20(v122, type metadata accessor for MessageExtractor);

    v125 = v3[1];

    return v125();
  }
}

uint64_t sub_25F5B5820()
{
  v0[29] = v0[81];
  v0[82] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_25F5B58B8, 0, 0);
}

uint64_t sub_25F5B58B8()
{
  v1 = *(v0 + 648);
  sub_25F5B6F20(*(v0 + 504), type metadata accessor for MessageExtractor);
  *(v0 + 240) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v3 = sub_25F5E3FB4();
    __swift_project_value_buffer(v3, qword_27FD9EA20);

    v4 = sub_25F5E3F94();
    v5 = sub_25F5E4794();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 632);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = *(v7 + 16);

      *(v8 + 4) = v9;

      _os_log_impl(&dword_25F56A000, v4, v5, "Task cancelled at extraction loop. Extracted %ld messages.", v8, 0xCu);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v23 = *(v0 + 520);
    v24 = *(v0 + 440);
    v25 = *(v0 + 448);
    v26 = *(v0 + 432);
    v27 = *(v0 + 256);
    sub_25F5A31D0();
    swift_allocError();
    *v28 = 5;
    swift_willThrow();

    sub_25F57C148(v27, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5B6F20(v23, type metadata accessor for MessageExtractor);
    (*(v24 + 8))(v25, v26);
  }

  else
  {
    v10 = *(v0 + 648);

    *(v0 + 248) = v10;
    v11 = v10;
    if (swift_dynamicCast())
    {

      v12 = *(v0 + 665);
      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v13 = sub_25F5E3FB4();
      __swift_project_value_buffer(v13, qword_27FD9EA20);
      v14 = sub_25F5E3F94();
      v15 = sub_25F5E47B4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        sub_25F5A31D0();
        swift_allocError();
        *v18 = v12;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_25F56A000, v14, v15, "ExtractorError at extraction loop: %@.", v16, 0xCu);
        sub_25F57C148(v17, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v17, -1, -1);
        MEMORY[0x25F8E3B70](v16, -1, -1);
      }

      v20 = *(v0 + 520);
      v21 = *(v0 + 256);

      sub_25F5A31D0();
      swift_allocError();
      *v22 = v12;
      swift_willThrow();

      sub_25F57C148(v21, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5B6F20(v20, type metadata accessor for MessageExtractor);
    }

    else
    {

      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 648);
      v30 = sub_25F5E3FB4();
      __swift_project_value_buffer(v30, qword_27FD9EA20);
      v31 = v29;
      v32 = sub_25F5E3F94();
      v33 = sub_25F5E47B4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 648);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = v34;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_25F56A000, v32, v33, "Other Error at extraction loop: %@.", v35, 0xCu);
        sub_25F57C148(v36, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v36, -1, -1);
        MEMORY[0x25F8E3B70](v35, -1, -1);
      }

      v39 = *(v0 + 648);
      v40 = *(v0 + 520);
      v41 = *(v0 + 256);

      sub_25F5A31D0();
      swift_allocError();
      *v42 = 5;
      swift_willThrow();

      sub_25F57C148(v41, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5B6F20(v40, type metadata accessor for MessageExtractor);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_25F5B5FA4(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v77 = a1;
  v2 = type metadata accessor for ExtractedMessage(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F5E3824();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F5E3794();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_25F5E3804();
  v15 = *(v80 - 8);
  v17 = MEMORY[0x28223BE20](v80, v16);
  v78 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v67 - v20;
  sub_25F5E37C4();
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_25F5E36E4();
  v23 = sub_25F5E3714();
  (*(v11 + 8))(v14, v10);
  v24 = v21;
  [v22 setLocale_];

  sub_25F5E37D4();
  v25 = sub_25F5E3814();
  v26 = *(v6 + 8);
  v71 = v9;
  v72 = v6 + 8;
  v73 = v5;
  v70 = v26;
  v26(v9, v5);
  [v22 setTimeZone_];

  v27 = sub_25F5E43C4();
  [v22 setDateFormat_];

  v28 = v77;
  v29 = sub_25F5E3624();
  v76 = v22;
  v30 = [v22 stringFromDate_];

  v31 = sub_25F5E43F4();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  WeekDay.init(rawValue:)(v34);
  v35 = v82;
  if (v82 == 7)
  {
    (*(v15 + 8))(v24, v80);

    return 0;
  }

  else
  {
    v74 = v24;
    v37 = *(v79 + 16);
    v38 = (v79 + 32);
    do
    {
      v39 = v37;
      v40 = v37-- != 0;
      v36 = v40;
      if (!v40)
      {
        break;
      }

      if (qword_25F5EA278[*v38] == qword_25F5EA278[v35])
      {
        break;
      }

      ++v38;
    }

    while ((sub_25F5E4B84() & 1) == 0);
    v41 = v75;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v42 = sub_25F5E3FB4();
    __swift_project_value_buffer(v42, qword_27FD9EA20);
    sub_25F5B6EB8(v28, v41, type metadata accessor for ExtractedMessage);
    (*(v15 + 16))(v78, v74, v80);

    v43 = sub_25F5E3F94();
    v44 = sub_25F5E47A4();

    LODWORD(v77) = v44;
    if (os_log_type_enabled(v43, v44))
    {
      v68 = v39 != 0;
      v45 = v15;
      v46 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v81 = v69;
      *v46 = 136316162;
      sub_25F5E3694();
      sub_25F5B6FF0(&qword_27FD9E498, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v67 = v43;
      v47 = sub_25F5E4B44();
      v49 = v48;
      sub_25F5B6F20(v41, type metadata accessor for ExtractedMessage);
      v50 = sub_25F570AF8(v47, v49, &v81);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = v71;
      v52 = v78;
      sub_25F5E37D4();
      sub_25F5B6FF0(&qword_27FD9E4A0, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
      v53 = v80;
      v54 = v73;
      v75 = sub_25F5E4B44();
      v56 = v55;
      v70(v51, v54);
      v57 = *(v45 + 8);
      v57(v52, v53);
      v58 = sub_25F570AF8(v75, v56, &v81);

      *(v46 + 14) = v58;
      *(v46 + 22) = 2080;
      *(v46 + 24) = sub_25F570AF8(qword_25F5EA278[v35], 0xE300000000000000, &v81);
      *(v46 + 32) = 2080;
      v59 = MEMORY[0x25F8E2CF0](v79, &type metadata for WeekDay);
      v61 = sub_25F570AF8(v59, v60, &v81);

      *(v46 + 34) = v61;
      *(v46 + 42) = 1024;
      *(v46 + 44) = v68;
      v62 = v67;
      _os_log_impl(&dword_25F56A000, v67, v77, "WeekDays filter | message date: %s, timezone: %s, local week day: %s, week days: %s, is in: %{BOOL}d", v46, 0x30u);
      v63 = v69;
      swift_arrayDestroy();
      MEMORY[0x25F8E3B70](v63, -1, -1);
      MEMORY[0x25F8E3B70](v46, -1, -1);

      v57(v74, v53);
    }

    else
    {

      v64 = *(v15 + 8);
      v65 = v80;
      v64(v78, v80);
      sub_25F5B6F20(v41, type metadata accessor for ExtractedMessage);
      v64(v74, v65);
    }
  }

  return v36;
}

uint64_t sub_25F5B674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v61 = a3;
  v4 = sub_25F5E3824();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ExtractedMessage(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25F5E37E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25F5E3804();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v51[-v23];
  sub_25F5E37C4();
  (*(v12 + 104))(v15, *MEMORY[0x277CC9980], v11);
  v25 = a1;
  v26 = sub_25F5E37F4();
  (*(v12 + 8))(v15, v11);
  v56 = v26;
  v28 = v26 >= v60 && v26 <= v61;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v29 = sub_25F5E3FB4();
  __swift_project_value_buffer(v29, qword_27FD9EA20);
  sub_25F5B6EB8(v25, v10, type metadata accessor for ExtractedMessage);
  (*(v17 + 16))(v21, v24, v16);
  v30 = sub_25F5E3F94();
  v31 = sub_25F5E47A4();
  v32 = v17;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v54 = v24;
    v34 = v33;
    v53 = swift_slowAlloc();
    v62 = v53;
    *v34 = 136316418;
    sub_25F5E3694();
    v55 = v28;
    sub_25F5B6FF0(&qword_27FD9E498, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v52 = v31;
    v35 = sub_25F5E4B44();
    v37 = v36;
    sub_25F5B6F20(v10, type metadata accessor for ExtractedMessage);
    v38 = sub_25F570AF8(v35, v37, &v62);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = v16;
    v40 = v57;
    sub_25F5E37D4();
    sub_25F5B6FF0(&qword_27FD9E4A0, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
    v41 = v59;
    v42 = sub_25F5E4B44();
    v44 = v43;
    (*(v58 + 8))(v40, v41);
    v45 = *(v32 + 8);
    v45(v21, v39);
    v46 = sub_25F570AF8(v42, v44, &v62);
    v28 = v55;

    *(v34 + 14) = v46;
    *(v34 + 22) = 2048;
    *(v34 + 24) = v56;
    *(v34 + 32) = 2048;
    *(v34 + 34) = v60;
    *(v34 + 42) = 2048;
    *(v34 + 44) = v61;
    *(v34 + 52) = 1024;
    *(v34 + 54) = v28;
    _os_log_impl(&dword_25F56A000, v30, v52, "BetweenHours filter | message date: %s, timezone: %s, local hour: %ld,  start hour: %ld, end hour: %ld, is in: %{BOOL}d", v34, 0x3Au);
    v47 = v53;
    swift_arrayDestroy();
    MEMORY[0x25F8E3B70](v47, -1, -1);
    MEMORY[0x25F8E3B70](v34, -1, -1);

    v45(v54, v39);
  }

  else
  {

    v48 = v16;
    v49 = *(v17 + 8);
    v49(v21, v48);
    sub_25F5B6F20(v10, type metadata accessor for ExtractedMessage);
    v49(v24, v48);
  }

  return v28;
}

uint64_t sub_25F5B6D20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5B3198(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F5B6DD0()
{
  result = qword_27FD9E488;
  if (!qword_27FD9E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E488);
  }

  return result;
}

uint64_t sub_25F5B6E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5B6EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5B6F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5B6F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5B6FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

PriMLETL::ExtractorError_optional __swiftcall ExtractorError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 21;
  if ((rawValue - 20501) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25F5B7068()
{
  result = qword_27FD9E4A8;
  if (!qword_27FD9E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E4A8);
  }

  return result;
}

uint64_t sub_25F5B70BC()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20501);
  return sub_25F5E4C54();
}

uint64_t sub_25F5B713C()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20501);
  return sub_25F5E4C54();
}

uint64_t sub_25F5B71A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5B7348();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for ExtractorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F5B7348()
{
  result = qword_27FD9E4B0;
  if (!qword_27FD9E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E4B0);
  }

  return result;
}

uint64_t dispatch thunk of Extractor.extract()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return v9(a1, a2, a3);
}

uint64_t sub_25F5B74DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 144);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F5B75AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 144) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GenmojiPromptExtractor(uint64_t a1)
{
  result = qword_27FD9E4B8;
  if (!qword_27FD9E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5B76A8(uint64_t a1)
{
  sub_25F5B2AE4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F5B772C(uint64_t *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t (*a6)(char *, unint64_t, uint64_t), int a7, uint64_t a8, char a9)
{
  v203 = a4;
  v204 = a8;
  LODWORD(v205) = a7;
  v206 = a6;
  LODWORD(v202) = a3;
  v199 = a2;
  v195 = sub_25F5E3E24();
  v197 = *(v195 - 8);
  v12 = MEMORY[0x28223BE20](v195, v11);
  v190 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v194 = &v151 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v163 = &v151 - v18;
  v166 = sub_25F5E3DD4();
  v189 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v19);
  v165 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_25F5E3E64();
  v193 = *(v178 - 8);
  MEMORY[0x28223BE20](v178, v21);
  v177 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25F5E3694();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v187 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v188 = &v151 - v29;
  v30 = sub_25F5E3E94();
  v31 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v191 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v172 = &v151 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v169 = &v151 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v151 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v48 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v46, v49);
  v201 = &v151 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v151 - v53;
  v55 = a1[1];
  v171 = *a1;
  v198 = v55;
  v56 = a1[3];
  v167 = a1[2];
  v57 = a1[5];
  v176 = a1[4];
  v175 = v57;
  v192 = a1[6];
  (*(v24 + 56))(&v151 - v53, 1, 1, v23);
  if (v205)
  {
    v58 = 0;
  }

  else
  {
    v58 = v206;
  }

  if (v58 < 0)
  {
    goto LABEL_83;
  }

  if (a9)
  {
    v59 = 0;
  }

  else
  {
    v59 = v204;
  }

  if ((v59 & 0x8000000000000000) != 0)
  {
LABEL_84:
    __break(1u);
  }

  else
  {
    v60 = sub_25F5B8950(v199, v54, v202 & 1, v203, a5, v58, v59);
    sub_25F57C148(v54, &unk_27FD9E500, &unk_25F5EA410);
    if (v60)
    {
      v204 = *(v60 + 16);
      v162 = v60;
      if (v204)
      {
        v196 = v23;
        v168 = v56;
        v62 = 0;
        v64 = *(v31 + 16);
        v63 = v31 + 16;
        v206 = v64;
        v180 = (*(v63 + 64) + 32) & ~*(v63 + 64);
        v202 = v60 + v180;
        v200 = (v24 + 48);
        v205 = *(v63 + 56);
        v184 = (v24 + 32);
        v183 = (v24 + 8);
        v65 = (v63 - 8);
        v174 = v193 + 1;
        v173 = (v192 + 32);
        v161 = (v189 + 1);
        v160 = (v176 + 32);
        v193 = (v197 + 8);
        v152 = (v175 + 32);
        v181 = *MEMORY[0x277D20750];
        v189 = (v197 + 104);
        v170 = *MEMORY[0x277D20758];
        v203 = MEMORY[0x277D84F90];
        v185 = v48;
        v179 = (v63 + 16);
        *&v61 = 138412546;
        v153 = v61;
        v197 = v63 - 8;
        v66 = v30;
        v182 = v63;
        v186 = v30;
        v64(v43, v60 + v180, v30);
        while (1)
        {
          sub_25F5E3E34();
          if (!v67)
          {
            goto LABEL_12;
          }

          v68 = v63;

          v69 = v201;
          sub_25F573B94(v199, v201, &unk_27FD9E500, &unk_25F5EA410);
          v70 = *v200;
          v71 = v196;
          if ((*v200)(v69, 1, v196) == 1)
          {
            goto LABEL_19;
          }

          v72 = *v184;
          v73 = v188;
          (*v184)(v188, v201, v71);
          v74 = v185;
          sub_25F5E3E84();
          if (v70(v74, 1, v71) == 1)
          {
            break;
          }

          v72(v187, v74, v71);
          sub_25F5E3654();
          v98 = v97;
          if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
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
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v97 <= -9.22337204e18)
          {
            goto LABEL_78;
          }

          if (v97 >= 9.22337204e18)
          {
            goto LABEL_79;
          }

          v66 = v186;
          sub_25F5E3654();
          v100 = v99;
          v101 = v99;
          v102 = v73;
          v103 = *v183;
          (*v183)(v187, v71);
          v103(v102, v71);
          if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_80;
          }

          if (v100 <= -9.22337204e18)
          {
            goto LABEL_81;
          }

          if (v100 >= 9.22337204e18)
          {
            goto LABEL_82;
          }

          v65 = v197;
          v75 = v198;
          if (v100 >= v98)
          {
            (*v197)(v43, v66);
            v63 = v68;
            goto LABEL_13;
          }

LABEL_20:
          if (v75 != 1)
          {
            v63 = v68;
            if (v192)
            {
              v90 = v177;
              sub_25F5E3E74();
              v91 = sub_25F5E3DC4();
              (*v174)(v90, v178);
              v92 = *(v192 + 16);
              v93 = v173;
              while (v92)
              {
                v94 = *v93++;
                --v92;
                if (v94 == v91)
                {
                  goto LABEL_32;
                }
              }

              goto LABEL_12;
            }

LABEL_32:
            if (v75)
            {

              v95 = sub_25F5E3E04();
              if (!v96)
              {
                goto LABEL_58;
              }

              if (v171 == v95 && v75 == v96)
              {
              }

              else
              {
                v122 = sub_25F5E4B84();

                if ((v122 & 1) == 0)
                {
                  goto LABEL_12;
                }
              }
            }

            v123 = v168;
            if (v168)
            {

              v124 = sub_25F5E3DF4();
              if (!v125)
              {
LABEL_58:

LABEL_12:
                (*v65)(v43, v66);
                goto LABEL_13;
              }

              if (v167 == v124 && v123 == v125)
              {
              }

              else
              {
                v126 = sub_25F5E4B84();

                if ((v126 & 1) == 0)
                {
                  goto LABEL_12;
                }
              }
            }

            if (v176)
            {
              v127 = v165;
              sub_25F5E3DE4();
              v128 = sub_25F5E3DC4();
              (*v161)(v127, v166);
              v129 = *(v176 + 16);
              v130 = v160;
              while (v129)
              {
                v131 = *v130++;
                --v129;
                if (v131 == v128)
                {
                  goto LABEL_65;
                }
              }

              goto LABEL_12;
            }

LABEL_65:
            if (v175)
            {
              v132 = v163;
              sub_25F5E3E44();
              v133 = sub_25F5E3DC4();
              (*v193)(v132, v195);
              v134 = *(v175 + 16);
              v135 = v152;
              while (v134)
              {
                v136 = *v135++;
                --v134;
                if (v136 == v133)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_12;
            }
          }

LABEL_21:
          v76 = v66;
          v77 = v194;
          sub_25F5E3E44();
          v78 = *v189;
          v79 = v190;
          v80 = v195;
          (*v189)(v190, v181, v195);
          sub_25F5BA8E8(&qword_27FD9E4D8, MEMORY[0x277D20760], MEMORY[0x277D20768]);
          sub_25F5E45D4();
          sub_25F5E45D4();
          v81 = *v193;
          (*v193)(v79, v80);
          v81(v77, v80);
          if (v208 == v207 || (v82 = v194, sub_25F5E3E44(), v83 = v190, v84 = v195, v78(v190, v170, v195), sub_25F5E45D4(), sub_25F5E45D4(), v81(v83, v84), v81(v82, v84), v208 == v207))
          {
            v66 = v76;
            v85 = v76;
            v63 = v182;
            v206(v191, v43, v85);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v65 = v197;
              v86 = v203;
            }

            else
            {
              v86 = sub_25F5788A4(0, v203[2] + 1, 1, v203);
              v65 = v197;
            }

            v88 = v86[2];
            v87 = v86[3];
            if (v88 >= v87 >> 1)
            {
              v203 = sub_25F5788A4((v87 > 1), v88 + 1, 1, v86);
            }

            else
            {
              v203 = v86;
            }

            (*v65)(v43, v66);
            v89 = v203;
            v203[2] = v88 + 1;
            (*v179)(&v89[v180 + v88 * v205], v191, v66);
          }

          else
          {
            if (qword_27FD9D8B0 != -1)
            {
              swift_once();
            }

            v104 = sub_25F5E3FB4();
            __swift_project_value_buffer(v104, qword_27FD9EA20);
            v105 = v169;
            v66 = v76;
            v106 = v76;
            v63 = v182;
            v107 = v206;
            v206(v169, v43, v106);
            v108 = v172;
            v107(v172, v43, v66);
            v109 = sub_25F5E3F94();
            v110 = sub_25F5E47A4();
            if (os_log_type_enabled(v109, v110))
            {
              v156 = v110;
              v159 = v109;
              v111 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v208 = v155;
              v158 = v111;
              *v111 = v153;
              v112 = sub_25F5E3E34();
              v114 = v197;
              v157 = v197 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              if (v113)
              {
                v115 = v112;
                v116 = v113;
                sub_25F5BA894();
                swift_allocError();
                *v117 = v115;
                v117[1] = v116;
                v118 = _swift_stdlib_bridgeErrorToNSError();
                v154 = *v114;
                v154(v105, v66);
              }

              else
              {
                v154 = *v197;
                v154(v105, v66);
                v118 = 0;
              }

              v137 = v158;
              *(v158 + 1) = v118;
              *v164 = v118;
              *(v137 + 6) = 2080;
              v138 = v194;
              v139 = v172;
              sub_25F5E3E44();
              sub_25F5BA8E8(&qword_27FD9E4E0, MEMORY[0x277D20760], MEMORY[0x277D20770]);
              v140 = v195;
              v141 = sub_25F5E4B44();
              v143 = v142;
              v81(v138, v140);
              v144 = v139;
              v145 = v186;
              v146 = v154;
              v154(v144, v186);
              v147 = sub_25F570AF8(v141, v143, &v208);

              *(v137 + 14) = v147;
              v148 = v159;
              _os_log_impl(&dword_25F56A000, v159, v156, "Skipping prompt: %@ with invalid result: %s", v137, 0x16u);
              v149 = v164;
              sub_25F57C148(v164, &qword_27FD9DEF0, &qword_25F5E8550);
              MEMORY[0x25F8E3B70](v149, -1, -1);
              v150 = v155;
              __swift_destroy_boxed_opaque_existential_1Tm(v155);
              MEMORY[0x25F8E3B70](v150, -1, -1);
              MEMORY[0x25F8E3B70](v137, -1, -1);

              v146(v43, v145);
              v66 = v145;
              v65 = v197;
            }

            else
            {

              v119 = v197;
              v120 = *v197;
              (*v197)(v108, v66);
              v121 = v105;
              v65 = v119;
              v120(v121, v66);
              v120(v43, v66);
            }
          }

LABEL_13:
          if (++v62 == v204)
          {
            goto LABEL_76;
          }

          v206(v43, v202 + v205 * v62, v66);
        }

        (*v183)(v73, v71);
        v69 = v74;
        v65 = v197;
        v66 = v186;
LABEL_19:
        sub_25F57C148(v69, &unk_27FD9E500, &unk_25F5EA410);
        v75 = v198;
        goto LABEL_20;
      }

      v203 = MEMORY[0x277D84F90];
LABEL_76:
    }
  }
}

uint64_t sub_25F5B8950(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v41 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v40 - v18;
  sub_25F573B94(a1, &v40 - v18, &unk_27FD9E500, &unk_25F5EA410);
  sub_25F573B94(a2, v16, &unk_27FD9E500, &unk_25F5EA410);
  if (((a7 | a6) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v40 = a4;
  v20 = sub_25F5E3694();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = 0;
  if (v22(v19, 1, v20) != 1)
  {
    v23 = sub_25F5E3624();
    (*(v21 + 8))(v19, v20);
  }

  if (v22(v16, 1, v20) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_25F5E3624();
    (*(v21 + 8))(v16, v20);
  }

  v25 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  a7 = [v25 initWithStartDate:v23 endDate:v24 maxEvents:a6 lastN:a7 reversed:v41 & 1];

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v26 = sub_25F5E3FB4();
  __swift_project_value_buffer(v26, qword_27FD9EA20);
  v27 = a7;
  v28 = sub_25F5E3F94();
  v29 = sub_25F5E47A4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_25F56A000, v28, v29, "Querying GeneratedImageFeatures UserInteractions events with %@.", v30, 0xCu);
    sub_25F57C148(v31, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v31, -1, -1);
    MEMORY[0x25F8E3B70](v30, -1, -1);
  }

  sub_25F5E3D84();
  sub_25F5BA8E8(&unk_27FD9E4F0, MEMORY[0x277D20428], MEMORY[0x277D20420]);
  v33 = v27;
  sub_25F5E3DA4();

  sub_25F573A2C(&v42, v43);
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1Tm(v43, v43[3]);

  sub_25F5E3FC4();

  v35 = sub_25F5E3F94();
  v36 = sub_25F5E4794();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    swift_beginAccess();
    *(v37 + 4) = *(*(v34 + 16) + 16);

    _os_log_impl(&dword_25F56A000, v35, v36, "Loaded %ld GeneratedImageFeatures UserInteractions events.", v37, 0xCu);
    MEMORY[0x25F8E3B70](v37, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v38 = *(v34 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v38;
}

uint64_t sub_25F5B8F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  swift_beginAccess();
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_25F5788A4(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_25F5788A4((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_25F5B90C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F5E3694();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  v2[9] = swift_task_alloc();
  v4 = sub_25F5E3774();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  v2[13] = swift_task_alloc();
  v5 = sub_25F5E3794();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for ExtractedItem(0);
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v7 = sub_25F5E3E94();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E4C8, &qword_25F5EA460);
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E4D0, &qword_25F5EA468);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v9 = sub_25F5E3E64();
  v2[38] = v9;
  v2[39] = *(v9 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5B9550, 0, 0);
}

uint64_t sub_25F5B9550()
{
  v190 = v0;
  v1 = v0[3];
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v139 = v4;
  v141 = v5;
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v136 = v6;
  v128 = v2;
  v132 = v7;
  v8 = *(v1 + 112);
  v180 = *(type metadata accessor for GenmojiPromptExtractor(0) + 24);
  v183 = *(v1 + 144);
  v186 = *(v1 + 136);
  v177 = *(v1 + 16);
  v175 = *(v1 + 24);
  v172 = *v1;
  oslog = *(v1 + 8);
  if (v3 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  if (v3 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v152 = v10;
  v159 = v9;
  if (v3 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  if (v3 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v2;
  }

  if (v3 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  if (v3 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v146 = v12;
  v149 = v14;
  v15 = v0[39];
  v16 = v0[40];
  v17 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E320, &unk_25F5EA470);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F5E5EE0;
  (*(v15 + 104))(v16, *MEMORY[0x277D20778], v17);
  sub_25F5BA820(v128, v3, v139, v141, v136, v132, v8);
  v19 = sub_25F5E3DC4();
  (*(v15 + 8))(v16, v17);
  *(v18 + 32) = v19;

  v189[0] = v146;
  v189[1] = v11;
  v20 = v152;
  v189[2] = v152;
  v189[3] = v159;
  v189[4] = v13;
  v189[5] = v149;
  v189[6] = v18;

  sub_25F5B772C(v189, v1 + v180, 0, v186, v183, v177, v175, v172, oslog);
  v22 = v21;
  sub_25F5A99B4(v146, v11, v152, v159, v13, v149, v18);

  if (!v22)
  {
    v82 = 5;
LABEL_82:
    sub_25F5A31D0();
    swift_allocError();
    *v122 = v82;
    swift_willThrow();

    v123 = v0[1];

    return v123();
  }

  i = 0;
  v24 = v0[31];
  v25 = v0[34];
  v184 = (v25 + 56);
  v187 = v0[33];
  v26 = (v25 + 48);
  v181 = (v24 + 32);
  v124 = (v0[11] + 8);
  v150 = v0[25];
  v173 = v0[24];
  v144 = (v0[15] + 8);
  v27 = *(v22 + 16);
  v178 = v24;
  v28 = (v24 + 8);
  v147 = MEMORY[0x277D84F90];
  if (v27)
  {
    goto LABEL_22;
  }

LABEL_21:
  v29 = 1;
  for (i = v27; ; ++i)
  {
    v35 = v0[36];
    v36 = v0[37];
    v37 = v0[33];
    (*v184)(v35, v29, 1, v37);
    sub_25F57B86C(v35, v36, &qword_27FD9E4D0, &qword_25F5EA468);
    if ((*v26)(v36, 1, v37) == 1)
    {
      break;
    }

    v20 = v22;
    v38 = v0[37];
    v39 = *v38;
    (*v181)(v0[32], &v38[*(v187 + 48)], v0[30]);
    v40 = sub_25F5E3E34();
    if (!v41)
    {
      v42 = v0[30];
      v43 = *v28;
      v44 = v0[32];
      goto LABEL_27;
    }

    v45 = v40;
    v46 = v41;
    v129 = v0[23];
    v160 = v0[22];
    v125 = v0[28];
    sub_25F5E3DB4();

    sub_25F5E3E84();
    v133 = sub_25F5E3E04();
    v153 = v47;
    v137 = sub_25F5E3DF4();
    osloga = v48;
    v142 = sub_25F571FC4(MEMORY[0x277D84F90]);
    *(v125 + v173[6]) = 0;
    sub_25F571FC4(MEMORY[0x277D84F90]);
    sub_25F5E3754();
    sub_25F573B94(v129, v125, &qword_27FD9DE10, &unk_25F5E7240);
    v49 = (v125 + v173[5]);
    *v49 = v45;
    v49[1] = v46;
    sub_25F573B94(v160, v125 + v173[7], &unk_27FD9E500, &unk_25F5EA410);
    v50 = v153;
    if (!v153)
    {
      v154 = v0[12];
      v161 = v0[13];
      v134 = v0[10];
      sub_25F5E3784();
      sub_25F5E3764();
      (*v124)(v154, v134);
      v51 = sub_25F5E3704();
      v130 = *(v51 - 8);
      v52 = v161;
      v162 = v51;
      v53 = (*(v130 + 48))(v52, 1);
      v54 = v0[13];
      if (v53 == 1)
      {
        sub_25F57C148(v0[13], &qword_27FD9DE08, &unk_25F5E7230);
        v55 = 0;
        v50 = 0;
        goto LABEL_34;
      }

      v133 = sub_25F5E36F4();
      v155 = v56;
      (*(v130 + 8))(v54, v162);
      v50 = v155;
    }

    v55 = v133;
LABEL_34:
    v57 = (v0[28] + v173[8]);
    *v57 = v55;
    v57[1] = v50;
    if (osloga)
    {
      v58 = v0[22];
      v163 = v0[23];
      (*v144)(v0[16], v0[14]);
      sub_25F57C148(v58, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v163, &qword_27FD9DE10, &unk_25F5E7240);
LABEL_39:

      v63 = osloga;
      v62 = v137;
      goto LABEL_40;
    }

    oslogc = v0[9];
    sub_25F5E3744();
    v59 = sub_25F5E3734();
    v131 = *(v59 - 8);
    v135 = v59;
    v60 = (*(v131 + 48))(oslogc, 1);
    v156 = v0[22];
    v164 = v0[23];
    v61 = v0[9];
    if (v60 != 1)
    {
      v126 = v0[16];
      v127 = v0[14];
      v137 = sub_25F5E36F4();
      osloga = v64;
      (*v144)(v126, v127);
      sub_25F57C148(v156, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v164, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v131 + 8))(v61, v135);
      goto LABEL_39;
    }

    (*v144)(v0[16], v0[14]);
    sub_25F57C148(v156, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v164, &qword_27FD9DE10, &unk_25F5E7240);
    sub_25F57C148(v61, &qword_27FD9DE00, &unk_25F5E9D40);

    v62 = 0;
    v63 = 0;
LABEL_40:
    v65 = v0[28];
    v66 = v0[29];
    oslogd = v0[27];
    v67 = v173[10];
    v68 = (v65 + v173[9]);
    *v68 = v62;
    v68[1] = v63;
    *(v65 + v67) = v142;
    sub_25F57B6DC(v65, v66);
    sub_25F57B808(v66, oslogd);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_25F57851C(0, v147[2] + 1, 1, v147);
    }

    v70 = v147[2];
    v69 = v147[3];
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      v79 = sub_25F57851C((v69 > 1), v70 + 1, 1, v147);
      v71 = v70 + 1;
      v147 = v79;
    }

    v72 = v0[27];
    v147[2] = v71;
    sub_25F57B6DC(v72, v147 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v70);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v73 = sub_25F5E3FB4();
    __swift_project_value_buffer(v73, qword_27FD9EA20);

    oslogb = sub_25F5E3F94();
    v74 = sub_25F5E47A4();

    v143 = v74;
    v75 = os_log_type_enabled(oslogb, v74);
    v76 = v0[32];
    v157 = v0[29];
    v165 = v0[30];
    if (v75)
    {
      v140 = v0[32];
      v77 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v189[0] = v138;
      *v77 = 134218242;
      *(v77 + 4) = v39;
      *(v77 + 12) = 2080;
      v78 = sub_25F570AF8(v45, v46, v189);

      *(v77 + 14) = v78;
      _os_log_impl(&dword_25F56A000, oslogb, v143, "Extracted Genmoji prompt #%ld: %s", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      MEMORY[0x25F8E3B70](v138, -1, -1);
      MEMORY[0x25F8E3B70](v77, -1, -1);

      sub_25F57B8D4(v157);
      v43 = *v28;
      v44 = v140;
    }

    else
    {

      sub_25F57B8D4(v157);
      v43 = *v28;
      v44 = v76;
    }

    v42 = v165;
LABEL_27:
    v43(v44, v42);
    v22 = v20;
    if (i == v27)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (i >= *(v22 + 16))
    {
      __break(1u);
LABEL_86:
      swift_once();
LABEL_55:
      v83 = sub_25F5E3FB4();
      __swift_project_value_buffer(v83, qword_27FD9EA20);

      v84 = sub_25F5E3F94();
      v85 = sub_25F5E47B4();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 134218240;
        v87 = v26[2];

        *(v86 + 4) = v87;

        *(v86 + 12) = 2048;
        *(v86 + 14) = v20;
        _os_log_impl(&dword_25F56A000, v84, v85, "Extracted items %ld less than required sample size %ld.", v86, 0x16u);
        MEMORY[0x25F8E3B70](v86, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v82 = 7;
      goto LABEL_82;
    }

    v30 = v0[35];
    v31 = v0[36];
    v32 = v0[30];
    v33 = v22 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * i;
    v34 = *(v187 + 48);
    *v30 = i;
    (*(v178 + 16))(&v30[v34], v33, v32);
    sub_25F57B86C(v30, v31, &qword_27FD9E4C8, &qword_25F5EA460);
    v29 = 0;
  }

  v80 = v0[3];

  if (*(v80 + 56))
  {
    v81 = v147;
  }

  else
  {
    v20 = *(v80 + 48);
    v26 = v147;
    if (v147[2] < v20)
    {
      if (qword_27FD9D8B0 != -1)
      {
        goto LABEL_86;
      }

      goto LABEL_55;
    }

    v81 = sub_25F5C7AF4();
  }

  v166 = *(v0[5] + 56);
  v166(v0[2], 1, 1, v0[4]);
  v88 = *(v81 + 16);
  v148 = v81;
  if (v88)
  {
    v89 = v0[26];
    v90 = v0[5];
    v185 = v173[7];
    v91 = v81 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v179 = (v90 + 48);
    v182 = *(v150 + 72);
    v188 = (v90 + 32);
    v145 = (v90 + 8);

    v92 = &unk_27FD9E500;
    v158 = v89;
    do
    {
      v93 = v0[26];
      v94 = v0[21];
      v95 = v0[4];
      sub_25F57B808(v91, v93);
      sub_25F573B94(v89 + v185, v94, v92, &unk_25F5EA410);
      sub_25F57B8D4(v93);
      v96 = *v179;
      if ((*v179)(v94, 1, v95) == 1)
      {
        sub_25F57C148(v0[21], v92, &unk_25F5EA410);
      }

      else
      {
        v97 = v92;
        v98 = v0[20];
        v99 = v0[4];
        v100 = v0[2];
        v176 = *v188;
        (*v188)(v0[8], v0[21], v99);
        sub_25F573B94(v100, v98, v92, &unk_25F5EA410);
        v101 = v96(v98, 1, v99);
        v102 = v0[20];
        if (v101 == 1)
        {
          v103 = v0[8];
          v104 = v0[4];
          v105 = v0[2];
          sub_25F57C148(v105, v92, &unk_25F5EA410);
          sub_25F57C148(v102, v92, &unk_25F5EA410);
          v176(v105, v103, v104);
          v166(v105, 0, 1, v104);
        }

        else
        {
          v151 = v0[19];
          v107 = v0[7];
          v106 = v0[8];
          v108 = v0[4];
          v174 = v0[2];
          v176(v107, v102, v108);
          sub_25F5BA8E8(&qword_27FD9E490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v109 = sub_25F5E4384();
          sub_25F57C148(v174, v97, &unk_25F5EA410);
          if (v109)
          {
            v110 = v106;
          }

          else
          {
            v110 = v107;
          }

          if (v109)
          {
            v111 = v107;
          }

          else
          {
            v111 = v106;
          }

          (*v145)(v110, v108);
          v176(v151, v111, v108);
          v166(v151, 0, 1, v108);
          sub_25F57B86C(v151, v174, v97, &unk_25F5EA410);
        }

        v92 = v97;
        v89 = v158;
      }

      v91 += v182;
      --v88;
    }

    while (v88);
  }

  else
  {
  }

  v112 = v0[18];
  v113 = v0[4];
  v114 = v0[5];
  sub_25F573B94(v0[2], v112, &unk_27FD9E500, &unk_25F5EA410);
  if ((*(v114 + 48))(v112, 1, v113) == 1)
  {
    sub_25F57C148(v0[18], &unk_27FD9E500, &unk_25F5EA410);
  }

  else
  {
    v115 = v0[17];
    v117 = v0[5];
    v116 = v0[6];
    v118 = v0[4];
    v119 = v0[2];
    (*(v117 + 32))(v116, v0[18], v118);
    sub_25F5E3654();
    sub_25F5E3644();
    (*(v117 + 8))(v116, v118);
    sub_25F57C148(v119, &unk_27FD9E500, &unk_25F5EA410);
    v166(v115, 0, 1, v118);
    sub_25F57B86C(v115, v119, &unk_27FD9E500, &unk_25F5EA410);
  }

  v120 = v0[1];

  return v120(v148);
}

uint64_t sub_25F5BA788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5B90C0(a1);
}

void sub_25F5BA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_25F5BA894()
{
  result = qword_27FD9E4E8;
  if (!qword_27FD9E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E4E8);
  }

  return result;
}

uint64_t sub_25F5BA8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F5BA930()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F5BA970(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v39 = MEMORY[0x277D84F90];
  sub_25F571290(0, v3, 0);
  v4 = v39;
  v6 = v5 + 64;
  v7 = sub_25F5E48E4();
  v8 = 0;
  v9 = *(v5 + 36);
  v30 = v5 + 72;
  v31 = v3;
  v32 = v9;
  v33 = v5 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(v5 + 36))
    {
      goto LABEL_24;
    }

    v34 = v8;
    v12 = *(v5 + 56);
    v13 = v5;
    v14 = *(*(v5 + 48) + 8 * v7);
    v15 = *(v12 + 8 * v7);
    v38._rawValue = v15;
    swift_bridgeObjectRetain_n();
    sub_25F5C1418(&v38);
    v35 = v2;
    if (v2)
    {
      goto LABEL_28;
    }

    rawValue = v38._rawValue;
    v17 = joinMessages(_:)(v38);
    v18 = joinMetadata(_:)(rawValue);
    v36 = v15[2];
    v37 = v18;
    sub_25F571FC4(MEMORY[0x277D84F90]);

    v39 = v4;
    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_25F571290((v19 > 1), v20 + 1, 1);
      v4 = v39;
    }

    *(v4 + 16) = v20 + 1;
    v21 = v4 + 48 * v20;
    *(v21 + 32) = v14;
    *(v21 + 40) = v36;
    *(v21 + 48) = rawValue;
    *(v21 + 56) = v17;
    *(v21 + 72) = v37;
    v10 = 1 << *(v13 + 32);
    if (v7 >= v10)
    {
      goto LABEL_25;
    }

    v6 = v33;
    v22 = *(v33 + 8 * v11);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    v5 = v13;
    v9 = v32;
    if (v32 != *(v13 + 36))
    {
      goto LABEL_27;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (v30 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_25F5C33BC(v7, v32, 0);
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      sub_25F5C33BC(v7, v32, 0);
    }

LABEL_4:
    v8 = v34 + 1;
    v7 = v10;
    v2 = 0;
    if (v34 + 1 == v31)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

uint64_t MessageCleanupParameters.init(cleanup:useMorpheus:morpheusProgram:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = result;
  if ((a2 & 1) == 0)
  {

    goto LABEL_5;
  }

  if (!a4)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  sub_25F5E4024();
  v6 = sub_25F5E4014();

LABEL_6:
  *a5 = v8;
  *(a5 + 1) = a2;
  *(a5 + 8) = v6;
  return result;
}

uint64_t MessageExtractor.init(lastDays:maxMessages:maxLength:cleanupParameters:earliestDate:customPredicateFormat:queryTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double a8@<X7>, void *a9@<X8>, char a10)
{
  v32 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 1);
  v17 = type metadata accessor for MessageExtractor(0);
  *(a9 + v17[13]) = 0;
  *(a9 + v17[14]) = MEMORY[0x277D84F90];
  v31 = v17[15];
  *(a9 + v31) = 2;
  *a9 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
  v18 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v38 = sub_25F5C0E14;
  v39 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F5C0E18;
  v37 = &block_descriptor_0;
  v19 = _Block_copy(aBlock);
  v20 = [v18 initWithBuilder_];
  _Block_release(v19);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  a9[1] = v20;
  a9[2] = 49;
  a9[3] = a2;
  *(a9 + v17[10]) = a3;
  a9[4] = a1;
  sub_25F5AB47C(a5, a9 + v17[9]);
  v21 = a9 + v17[12];
  *v21 = v32;
  v21[1] = v15;
  *(v21 + 1) = v16;
  v22 = (a9 + v17[11]);
  *v22 = a6;
  v22[1] = a7;
  v23 = a8;
  if (a10)
  {
    v23 = 30.0;
  }

  *(a9 + v17[16]) = v23;
  v37 = &type metadata for MailFeatureFlags;
  v38 = sub_25F5B6DD0();
  v24 = sub_25F5E3834();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v16 = a5;
  if ((v24 & 1) == 0)
  {
    return sub_25F57C148(a5, &unk_27FD9E500, &unk_25F5EA410);
  }

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v25 = sub_25F5E3FB4();
  __swift_project_value_buffer(v25, qword_27FD9EA20);
  v26 = sub_25F5E3F94();
  v27 = sub_25F5E4794();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25F56A000, v26, v27, "Mail classC data access is enabled, checking if device unlocked since boot.", v28, 2u);
    MEMORY[0x25F8E3B70](v28, -1, -1);
  }

  v29 = MKBDeviceUnlockedSinceBoot();
  result = sub_25F57C148(v16, &unk_27FD9E500, &unk_25F5EA410);
  *(a9 + v31) = v29 == 1;
  return result;
}

uint64_t type metadata accessor for MessageExtractor(uint64_t a1)
{
  result = qword_27FD9E5F8;
  if (!qword_27FD9E5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F5BB070()
{
  v1 = v0[18];
  v2 = *(v1 + *(type metadata accessor for MessageExtractor(0) + 60));
  if (v2 == 2)
  {
    v3 = [*v1 messageRepository];
    v0[19] = v3;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_25F5BB1F8;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E510, &qword_25F5EA4B0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25F5BBE00;
    v0[13] = &block_descriptor_3;
    v0[14] = v4;
    [v3 isDataAccessible_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5(v2 & 1);
  }
}

uint64_t sub_25F5BB1F8()
{

  return MEMORY[0x2822009F8](sub_25F5BB2D8, 0, 0);
}

uint64_t sub_25F5BB2D8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t filterBySender(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E518, &qword_25F5EA4B8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - v4;
  sub_25F5E3C04();
  type metadata accessor for ExtractedMessage(0);
  v9[1] = sub_25F5E4464();
  v9[2] = v6;
  sub_25F5C0EB0();
  sub_25F5AB824(&qword_27FD9E528, &qword_27FD9E518, &qword_25F5EA4B8, MEMORY[0x277D85AC0]);
  v7 = sub_25F5E4354();

  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

char *convertSingleMessagesToConversations(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v4[9];
  v28 = &v7[v4[8]];
  v29 = v9;
  v10 = v4[11];
  v26 = *(v5 + 80);
  v27 = v10;
  v25 = (v26 + 32) & ~v26;
  v11 = a1 + v25;
  v12 = *(v5 + 72);
  v13 = MEMORY[0x277D84F90];
  v23 = xmmword_25F5E5EE0;
  v24 = v12;
  do
  {
    sub_25F5B6EB8(v11, v7, type metadata accessor for ExtractedMessage);
    v30 = *&v7[v29];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E530, &qword_25F5EA4C0);
    v14 = v25;
    v15 = swift_allocObject();
    *(v15 + 16) = v23;
    sub_25F5B6EB8(v7, v15 + v14, type metadata accessor for ExtractedMessage);
    v16 = *v28;
    v17 = *(v28 + 1);
    v18 = *&v7[v27];

    sub_25F5C2F24(v7, type metadata accessor for ExtractedMessage);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_25F57875C(0, *(v13 + 2) + 1, 1, v13);
    }

    v20 = *(v13 + 2);
    v19 = *(v13 + 3);
    if (v20 >= v19 >> 1)
    {
      v13 = sub_25F57875C((v19 > 1), v20 + 1, 1, v13);
    }

    *(v13 + 2) = v20 + 1;
    v21 = &v13[48 * v20];
    *(v21 + 4) = v30;
    *(v21 + 5) = 1;
    *(v21 + 6) = v15;
    *(v21 + 7) = v16;
    *(v21 + 8) = v17;
    *(v21 + 9) = v18;
    v11 += v24;
    --v8;
  }

  while (v8);
  return v13;
}

uint64_t groupAndSortMessages(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v11 = &v38 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    v13 = 0;
    v16 = MEMORY[0x277D84F98];
LABEL_21:
    v36 = sub_25F5BA970(v16);

    sub_25F5C0F04(v13, 0);
    return v36;
  }

  v13 = 0;
  v41 = *(v8 + 36);
  v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v39;
  v15 = *(v9 + 72);
  v16 = MEMORY[0x277D84F98];
  v40 = v6;
  while (1)
  {
    sub_25F5B6EB8(v14, v11, type metadata accessor for ExtractedMessage);
    v17 = *&v11[v41];
    sub_25F5C2E68(v11, v6, type metadata accessor for ExtractedMessage);
    sub_25F5C0F04(v13, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v16;
    v20 = sub_25F57A9CC(v17);
    v21 = v16[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v16[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_25F57B0F8();
        v16 = v42;
        if (v24)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_25F579B14(v23, isUniquelyReferenced_nonNull_native);
      v16 = v42;
      v25 = sub_25F57A9CC(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

      v20 = v25;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    v16[(v20 >> 6) + 8] |= 1 << v20;
    *(v16[6] + 8 * v20) = v17;
    *(v16[7] + 8 * v20) = MEMORY[0x277D84F90];
    v27 = v16[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v16[2] = v29;
LABEL_12:
    v30 = v16[7];
    v31 = *(v30 + 8 * v20);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8 * v20) = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_25F57887C(0, v31[2] + 1, 1, v31);
      *(v30 + 8 * v20) = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_25F57887C((v33 > 1), v34 + 1, 1, v31);
      *(v30 + 8 * v20) = v31;
    }

    v31[2] = v34 + 1;
    v35 = v31 + v39 + v34 * v15;
    v6 = v40;
    sub_25F5C2E68(v40, v35, type metadata accessor for ExtractedMessage);
    v14 += v15;
    v13 = sub_25F5C0E04;
    if (!--v12)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F5E4BC4();
  __break(1u);
  return result;
}

uint64_t sub_25F5BBB90()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DEE8, &unk_25F5E7910);
  sub_25F5E4C64();
  v2 = sub_25F5E47F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  sub_25F5E46A4();
  v4 = sub_25F5E47F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25F5BBCC8()
{
  v0 = sub_25F5BBB90();

  return MEMORY[0x282200960](v0);
}

void sub_25F5BBD00(void *a1)
{
  [a1 setRequestedRepresentation_];
  [a1 setNetworkUsage_];
  [a1 setRequestAllHeaders_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6D0, &unk_25F5EA7C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25F5E5EE0;
  v3 = *MEMORY[0x277D06F40];
  *(v2 + 32) = *MEMORY[0x277D06F40];
  type metadata accessor for ECMessageHeaderKey(0);
  v4 = v3;
  v5 = sub_25F5E4614();

  [a1 setRequestedHeaderKeys_];
}

uint64_t sub_25F5BBE00(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_25F5BBE5C()
{
  v1[4] = v0;
  v2 = sub_25F5E3D24();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for MessageExtractor(0);
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_25F5E37E4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v6 = sub_25F5E3804();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v7 = sub_25F5E3694();
  v1[22] = v7;
  v1[23] = *(v7 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5BC120, 0, 0);
}

uint64_t sub_25F5BC120()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[4];
  v5 = [objc_opt_self() currentCalendar];
  sub_25F5E37A4();

  (*(v2 + 104))(v1, *MEMORY[0x277CC9968], v3);
  v6 = *(v4 + 32);
  v7 = -v6;
  if (__OFSUB__(0, v6))
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  v8 = v0[27];
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v77 = v0[14];
  v78 = v0[17];
  sub_25F5E3684();
  sub_25F5E37B4();
  v16 = *(v10 + 8);
  v0[29] = v16;
  v0[30] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76 = v16;
  v16(v8, v9);
  (*(v15 + 8))(v14, v77);
  (*(v13 + 8))(v12, v78);
  v17 = *(v10 + 48);
  if (v17(v11, 1, v9) == 1)
  {
    sub_25F57C148(v0[21], &unk_27FD9E500, &unk_25F5EA410);

    v18 = v0[1];

    return v18(0);
  }

  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[22];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[8];
  v79 = v0[4];
  v75 = *(v23 + 32);
  v75(v20, v0[21], v22);
  v74 = *(v23 + 16);
  v74(v21, v20, v22);
  sub_25F5AB47C(v79 + *(v25 + 36), v24);
  if (v17(v24, 1, v22) == 1)
  {
    sub_25F57C148(v0[20], &unk_27FD9E500, &unk_25F5EA410);
  }

  else
  {
    v26 = v0[26];
    v27 = v0[22];
    v75(v0[25], v0[20], v27);
    sub_25F5C320C(&qword_27FD9E490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v28 = sub_25F5E4384();
    v76(v26, v27);
    if (v28)
    {
      v75(v0[24], v0[25], v0[22]);
    }

    else
    {
      v29 = v0[28];
      v30 = v0[24];
      v31 = v0[22];
      v76(v0[25], v31);
      v74(v30, v29, v31);
    }

    v75(v0[26], v0[24], v0[22]);
  }

  v32 = v0[8];
  v33 = v0[4];
  v34 = objc_opt_self();
  v35 = sub_25F5E3624();
  v36 = [v34 predicateForMessagesNewerThanDate_];
  v0[31] = v36;

  if (*(v33 + *(v32 + 44) + 8))
  {
    sub_25F5C3254(0, &unk_27FD9E680, 0x277CCAC30);
    v37 = sub_25F5E4764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E658, &qword_25F5EA758);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_25F5EA480;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    v39 = v36;
    v40 = v37;
    v41 = sub_25F5E4614();

    v42 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v42 = v36;
  }

  v0[32] = v42;
  v43 = v42;
  v44 = [v34 sortDescriptorForDateAscending_];
  v0[33] = v44;
  sub_25F5C3254(0, &qword_27FD9E650, 0x277D06ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E658, &qword_25F5EA758);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_25F5EA490;
  *(v45 + 32) = v44;
  v46 = objc_allocWithZone(MEMORY[0x277D06E80]);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_25F5C3254(0, &qword_27FD9E660, 0x277CCAC98);
  v7 = v43;
  v48 = v44;
  v49 = sub_25F5E4614();

  v1 = [v46 initWithTargetClass:ObjCClassFromMetadata predicate:v7 sortDescriptors:v49];
  v0[34] = v1;

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_23;
  }

LABEL_16:
  v50 = v0[13];
  v51 = v0[4];
  v52 = sub_25F5E3FB4();
  v0[35] = __swift_project_value_buffer(v52, qword_27FD9EA20);
  sub_25F5B6EB8(v51, v50, type metadata accessor for MessageExtractor);
  v53 = v7;
  v54 = sub_25F5E3F94();
  v55 = sub_25F5E47A4();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v0[13];
  if (v56)
  {
    v58 = v0[8];
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 134218242;
    v61 = *(v57 + *(v58 + 64));
    sub_25F5C2F24(v57, type metadata accessor for MessageExtractor);
    *(v59 + 4) = v61;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v53;
    *v60 = v53;
    _os_log_impl(&dword_25F56A000, v54, v55, "Try to query maild for messages with timeout=%f and predicate=%@", v59, 0x16u);
    sub_25F57C148(v60, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v60, -1, -1);
    MEMORY[0x25F8E3B70](v59, -1, -1);
  }

  else
  {

    sub_25F5C2F24(v57, type metadata accessor for MessageExtractor);
  }

  v62 = v0[12];
  v64 = v0[9];
  v63 = v0[10];
  v65 = v0[4];
  v66 = *(v65 + *(v0[8] + 64));
  sub_25F5B6EB8(v65, v62, type metadata accessor for MessageExtractor);
  v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v68 = (v63 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v0[36] = v69;
  sub_25F5C2E68(v62, v69 + v67, type metadata accessor for MessageExtractor);
  *(v69 + v68) = v1;
  v70 = v1;
  v71 = swift_task_alloc();
  v0[37] = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E668, &unk_25F5EA770);
  *v71 = v0;
  v71[1] = sub_25F5BCA48;
  v73.n128_u64[0] = v66;

  return MEMORY[0x2821A2078](v0 + 2, &unk_25F5EA768, v69, v72, v73);
}

uint64_t sub_25F5BCA48()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_25F5BCCB8;
  }

  else
  {

    v2 = sub_25F5BCB64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5BCB64()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 176);

  v4(v6, v7);
  v4(v5, v7);
  v10 = *(v0 + 16);

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_25F5BCCB8()
{
  v1 = *(v0 + 304);

  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D413F0])
    {
      v3 = *(v0 + 88);
      v4 = *(v0 + 32);

      sub_25F5B6EB8(v4, v3, type metadata accessor for MessageExtractor);
      v5 = sub_25F5E3F94();
      v6 = sub_25F5E47B4();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 88);
      if (v7)
      {
        v9 = *(v0 + 64);
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        v11 = *(v8 + *(v9 + 64));
        sub_25F5C2F24(v8, type metadata accessor for MessageExtractor);
        *(v10 + 4) = v11;
        _os_log_impl(&dword_25F56A000, v5, v6, "Query maild timed out after %f", v10, 0xCu);
        MEMORY[0x25F8E3B70](v10, -1, -1);
      }

      else
      {

        sub_25F5C2F24(v8, type metadata accessor for MessageExtractor);
      }

      v29 = *(v0 + 264);
      v28 = *(v0 + 272);
      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = *(v0 + 232);
      v41 = *(v0 + 224);
      v33 = *(v0 + 208);
      v34 = *(v0 + 176);
      sub_25F5A31D0();
      swift_allocError();
      *v35 = 9;
      swift_willThrow();

      v32(v33, v34);
      v32(v41, v34);

      goto LABEL_11;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v12 = *(v0 + 304);

  v13 = v12;
  v14 = sub_25F5E3F94();
  v15 = sub_25F5E47B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 304);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v16;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_25F56A000, v14, v15, "Failed to extract data from maild: %@", v17, 0xCu);
    sub_25F57C148(v18, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v18, -1, -1);
    MEMORY[0x25F8E3B70](v17, -1, -1);
  }

  v21 = *(v0 + 304);
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v24 = *(v0 + 256);
  v25 = *(v0 + 232);
  v39 = *(v0 + 248);
  v40 = *(v0 + 224);
  v38 = *(v0 + 208);
  v26 = *(v0 + 176);

  sub_25F5A31D0();
  swift_allocError();
  *v27 = 5;
  swift_willThrow();

  v25(v38, v26);
  v25(v40, v26);
LABEL_11:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_25F5BD150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_25F5BD174, 0, 0);
}

uint64_t sub_25F5BD174()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = [*v2 messageRepository];
  v0[22] = v3;
  v4 = *(v2 + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25F5BD2C4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E690, &unk_25F5EA780);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25F5BD4B0;
  v0[13] = &block_descriptor_27;
  v0[14] = v5;
  [v3 performQuery:v1 limit:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25F5BD2C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_25F5BD440;
  }

  else
  {
    v2 = sub_25F5BD3D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5BD3D4()
{
  v1 = *(v0 + 176);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F5BD440(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_25F5BD4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_25F5C3254(0, &qword_27FD9E630, 0x277D06DB8);
    **(*(v4 + 64) + 40) = sub_25F5E4624();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_25F5BD5A0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25F5E5EF0;
  *(v2 + 32) = 0x65786F426C69616DLL;
  v141 = v2;
  *(v2 + 40) = 0xE900000000000073;
  v3 = [a1 mailboxes];
  sub_25F5C3254(0, &unk_27FD9E6A0, 0x277D06DB0);
  v4 = sub_25F5E4624();

  if (v4 >> 62)
  {
    v5 = sub_25F5E49C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D83B88];
  v142 = a1;
  if (v5)
  {
    v7 = [a1 mailboxes];
    v8 = sub_25F5E4624();

    if (v8 >> 62)
    {
      v9 = sub_25F5E49C4();
      v10 = v141;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v141;
      if (v9)
      {
LABEL_6:
        *&v144 = MEMORY[0x277D84F90];
        result = sub_25F571270(0, v9 & ~(v9 >> 63), 0);
        if (v9 < 0)
        {
          goto LABEL_47;
        }

        v12 = 0;
        v13 = v144;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x25F8E3030](v12, v8);
          }

          else
          {
            v14 = *(v8 + 8 * v12 + 32);
          }

          v15 = v14;
          v16 = [v14 type];

          *&v144 = v13;
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_25F571270((v17 > 1), v18 + 1, 1);
            v13 = v144;
          }

          ++v12;
          *(v13 + 16) = v18 + 1;
          *(v13 + 8 * v18 + 32) = v16;
        }

        while (v9 != v12);

        v10 = v141;
        a1 = v142;
        goto LABEL_19;
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_19:
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E190, qword_25F5EA790);
    goto LABEL_20;
  }

  v13 = -1;
  v10 = v141;
LABEL_20:
  *(v10 + 48) = v13;
  *(v10 + 72) = v6;
  *(v10 + 80) = 0x616D6D7553736168;
  *(v10 + 88) = 0xEA00000000007972;
  v19 = [a1 summary];
  v20 = v19;
  if (v19)
  {
  }

  v21 = MEMORY[0x277D839B0];
  *(v10 + 96) = v20 != 0;
  *(v10 + 120) = v21;
  *(v10 + 128) = 0xD000000000000013;
  *(v10 + 136) = 0x800000025F5EC8B0;
  v22 = [a1 generatedSummary];
  v23 = v22;
  if (v22)
  {
  }

  *(v10 + 168) = v21;
  *(v10 + 144) = v23 != 0;
  v24 = sub_25F571A78(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B0, &unk_25F5E85A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = [v142 category];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 type];
    v28 = MEMORY[0x277D83E88];
    v145 = MEMORY[0x277D83E88];
    *&v144 = v27;
    sub_25F571D88(&v144, v143);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v24;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
    v30 = v146;
    v31 = [v26 subtype];
    v145 = v28;
    *&v144 = v31;
    sub_25F571D88(&v144, v143);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v30;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEF65707974627553, v32);
    v33 = v146;
    v34 = [v26 isHighImpact];
    v145 = v21;
    LOBYTE(v144) = v34;
    sub_25F571D88(&v144, v143);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v33;
    sub_25F5710A0(v143, 0x6D49686769487369, 0xEC00000074636170, v35);

    v36 = v146;
    v37 = MEMORY[0x277D83B88];
  }

  else
  {
    v37 = MEMORY[0x277D83B88];
    v145 = MEMORY[0x277D83B88];
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v24;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEC00000065707954, v38);
    v39 = v146;
    v145 = v37;
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v39;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEF65707974627553, v40);
    v41 = v146;
    v145 = v37;
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v41;
    sub_25F5710A0(v143, 0x6D49686769487369, 0xEC00000074636170, v42);
    v36 = v146;
  }

  v145 = v21;
  LOBYTE(v144) = 0;
  sub_25F571D88(&v144, v143);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v36;
  sub_25F5710A0(v143, 0xD000000000000011, 0x800000025F5EC890, v43);
  v44 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v44;
  sub_25F5710A0(v143, 0xD000000000000014, 0x800000025F5EC870, v45);
  v46 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v46;
  sub_25F5710A0(v143, 0xD000000000000019, 0x800000025F5EC850, v47);
  v48 = v146;
  v145 = v21;
  LOBYTE(v144) = 0;
  sub_25F571D88(&v144, v143);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v48;
  sub_25F5710A0(v143, 0xD000000000000012, 0x800000025F5EC830, v49);
  v50 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v50;
  sub_25F5710A0(v143, 0xD000000000000015, 0x800000025F5EC810, v51);
  v52 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v52;
  sub_25F5710A0(v143, 0xD00000000000001ALL, 0x800000025F5EC7F0, v53);
  v54 = v146;
  v55 = v142;
  v56 = [v142 generatedSummary];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 topLine];
    if (v58)
    {
      v59 = v58;
      v145 = MEMORY[0x277D839B0];
      LOBYTE(v144) = 1;
      sub_25F571D88(&v144, v143);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v54;
      sub_25F5710A0(v143, 0xD000000000000011, 0x800000025F5EC890, v60);
      v61 = v146;
      v62 = [v59 string];
      v63 = sub_25F5E43F4();
      v65 = v64;

      v66 = sub_25F5D1470(0, 0, 0x7FFFFFFFFFFFFFFFLL, v63, v65);

      v145 = MEMORY[0x277D83B88];
      *&v144 = v66;
      sub_25F571D88(&v144, v143);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v61;
      sub_25F5710A0(v143, 0xD000000000000014, 0x800000025F5EC870, v67);
      v68 = v146;
      v69 = [v59 &selRef_rangeAtIndex_];
      sub_25F5E43F4();

      v70 = sub_25F5E44C4();

      v145 = MEMORY[0x277D83B88];
      *&v144 = v70;
      sub_25F571D88(&v144, v143);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v68;
      sub_25F5710A0(v143, 0xD000000000000019, 0x800000025F5EC850, v71);

      v54 = v146;
    }

    v72 = [v57 synopsis];
    if (v72)
    {
      v73 = v72;
      v145 = MEMORY[0x277D839B0];
      LOBYTE(v144) = 1;
      sub_25F571D88(&v144, v143);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v54;
      sub_25F5710A0(v143, 0xD000000000000012, 0x800000025F5EC830, v74);
      v75 = v146;
      v76 = [v73 string];
      v77 = sub_25F5E43F4();
      v79 = v78;

      v80 = sub_25F5D1470(0, 0, 0x7FFFFFFFFFFFFFFFLL, v77, v79);

      v37 = MEMORY[0x277D83B88];
      v145 = MEMORY[0x277D83B88];
      *&v144 = v80;
      sub_25F571D88(&v144, v143);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v75;
      sub_25F5710A0(v143, 0xD000000000000015, 0x800000025F5EC810, v81);
      v82 = v146;
      v83 = [v73 &selRef_rangeAtIndex_];
      sub_25F5E43F4();

      v84 = sub_25F5E44C4();

      v145 = v37;
      *&v144 = v84;
      sub_25F571D88(&v144, v143);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v82;
      sub_25F5710A0(v143, 0xD00000000000001ALL, 0x800000025F5EC7F0, v85);

      v54 = v146;
      v55 = v142;
    }

    else
    {
      v55 = v142;
      v37 = MEMORY[0x277D83B88];
    }

    v87 = [v57 urgent];
    v145 = v37;
    *&v144 = v87;
    sub_25F571D88(&v144, v143);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v54;
    sub_25F5710A0(v143, 0x746E656772557369, 0xE800000000000000, v88);
  }

  else
  {
    v145 = v37;
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v54;
    sub_25F5710A0(v143, 0x746E656772557369, 0xE800000000000000, v86);
  }

  v89 = v146;
  v90 = [v55 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B8, &qword_25F5EA7A8);
  v91 = sub_25F5E4624();

  if (v91 >> 62)
  {
    v92 = sub_25F5E49C4();
  }

  else
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v37;
  *&v144 = v92;
  sub_25F571D88(&v144, v143);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v89;
  sub_25F5710A0(v143, 0x664F7265626D756ELL, 0xEF737265646E6553, v93);
  v94 = v146;
  v95 = [v55 toList];
  v96 = sub_25F5E4624();

  if (v96 >> 62)
  {
    v97 = sub_25F5E49C4();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = [v55 ccList];
  v99 = sub_25F5E4624();

  if (v99 >> 62)
  {
    v100 = sub_25F5E49C4();
  }

  else
  {
    v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = MEMORY[0x277D839B0];

  if (!__OFADD__(v97, v100))
  {
    v145 = v37;
    *&v144 = v97 + v100;
    sub_25F571D88(&v144, v143);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v94;
    sub_25F5710A0(v143, 0xD000000000000012, 0x800000025F5EC7D0, v102);
    v103 = v146;
    v104 = [v55 isToMe];
    v145 = v101;
    LOBYTE(v144) = v104;
    sub_25F571D88(&v144, v143);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v103;
    sub_25F5710A0(v143, 0x654D6F547369, 0xE600000000000000, v105);
    v106 = v146;
    v107 = [v55 isCCMe];
    v145 = v101;
    LOBYTE(v144) = v107;
    sub_25F571D88(&v144, v143);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v106;
    sub_25F5710A0(v143, 0x654D43437369, 0xE600000000000000, v108);
    v109 = v146;
    v110 = [v55 isVIP];
    v145 = v101;
    LOBYTE(v144) = v110;
    sub_25F571D88(&v144, v143);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v109;
    sub_25F5710A0(v143, 0x5049567369, 0xE500000000000000, v111);
    v112 = v146;
    v113 = [v55 isBlocked];
    v145 = v101;
    LOBYTE(v144) = v113;
    sub_25F571D88(&v144, v143);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v112;
    sub_25F5710A0(v143, 0x656B636F6C427369, 0xE900000000000064, v114);
    v115 = v146;
    v116 = [v55 isGroupedSender];
    v145 = v101;
    LOBYTE(v144) = v116;
    sub_25F571D88(&v144, v143);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v115;
    sub_25F5710A0(v143, 0x6570756F72477369, 0xEF7265646E655364, v117);
    v118 = v146;
    v119 = [v55 flags];
    v120 = [v119 read];
    v145 = v101;
    LOBYTE(v144) = v120;
    sub_25F571D88(&v144, v143);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v118;
    sub_25F5710A0(v143, 0x646165527369, 0xE600000000000000, v121);
    v122 = v146;
    v123 = [v119 flagged];
    v145 = v101;
    LOBYTE(v144) = v123;
    sub_25F571D88(&v144, v143);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v122;
    sub_25F5710A0(v143, 0x656767616C467369, 0xE900000000000064, v124);
    v125 = v146;
    v126 = [v119 deleted];
    v145 = v101;
    LOBYTE(v144) = v126;
    sub_25F571D88(&v144, v143);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v125;
    sub_25F5710A0(v143, 0x6574656C65447369, 0xE900000000000064, v127);
    v128 = v146;
    v129 = [v119 replied];
    v145 = v101;
    LOBYTE(v144) = v129;
    sub_25F571D88(&v144, v143);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v128;
    sub_25F5710A0(v143, 0x65696C7065527369, 0xE900000000000064, v130);
    v131 = v146;
    v132 = [v119 forwarded];
    v145 = v101;
    LOBYTE(v144) = v132;
    sub_25F571D88(&v144, v143);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v131;
    sub_25F5710A0(v143, 0x726177726F467369, 0xEB00000000646564, v133);
    v134 = v146;
    v135 = [v119 redirected];
    v145 = v101;
    LOBYTE(v144) = v135;
    sub_25F571D88(&v144, v143);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v134;
    sub_25F5710A0(v143, 0x6572696465527369, 0xEC00000064657463, v136);
    v137 = v146;
    v138 = [v119 isJunk];
    v145 = v101;
    LOBYTE(v144) = v138;
    sub_25F571D88(&v144, v143);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v137;
    sub_25F5710A0(v143, 0x6B6E754A7369, 0xE600000000000000, v139);
    v140 = sub_25F5701E8(v146);

    return v140;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t MessageExtractor.next()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_25F5BE778, 0, 0);
}

uint64_t sub_25F5BE778()
{
  sub_25F5E46D4();
  *(v0 + 64) = 0;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_25F5BE858;

  return MessageExtractor.isDataAccessible()();
}

uint64_t sub_25F5BE858(char a1)
{
  *(*v1 + 156) = a1;

  return MEMORY[0x2822009F8](sub_25F5BE958, 0, 0);
}

uint64_t sub_25F5BE958()
{
  if (*(v0 + 156) != 1)
  {
LABEL_16:
    v21 = *(v0 + 48);
    v22 = type metadata accessor for ExtractedMessage(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = *(v0 + 8);

    return v23();
  }

  v1 = *(v0 + 56);
  v9 = type metadata accessor for MessageExtractor(0);
  *(v0 + 80) = v9;
  v10 = *(v9 + 52);
  *(v0 + 152) = v10;
  v11 = *(v1 + v10);
  *(v0 + 88) = v11;
  if (v11)
  {
    *(v0 + 120) = *(v0 + 64);
    v12 = *(v1 + *(v9 + 56));
    if (v12 >> 62)
    {
      v20 = sub_25F5E49C4();
      v11 = *(v0 + 88);
      if (v11 < v20)
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (v11 < 0)
          {
            __break(1u);
          }

          else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v12 + 8 * v11 + 32);
            goto LABEL_9;
          }

          __break(1u);
          return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
        }

        v13 = MEMORY[0x25F8E3030]();
LABEL_9:
        v14 = v13;
        *(v0 + 128) = v13;
        v15 = *(v0 + 56);
        v16 = swift_task_alloc();
        *(v0 + 136) = v16;
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        v17 = swift_task_alloc();
        *(v0 + 144) = v17;
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E538, &unk_25F5EA4D0);
        *v17 = v0;
        v17[1] = sub_25F5BF08C;
        v6 = sub_25F5C10C4;
        v4 = 0x29287478656ELL;
        v11 = v0 + 16;
        v2 = 0;
        v3 = 0;
        v5 = 0xE600000000000000;
        v7 = v16;

        return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
      }
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  *v18 = v0;
  v18[1] = sub_25F5BEC00;

  return sub_25F5BBE5C();
}

uint64_t sub_25F5BEC00(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25F5BED34, 0, 0);
  }
}

uint64_t sub_25F5BED34()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[7];
    v3 = *(v0[10] + 56);

    *(v2 + v3) = v1;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v4 = sub_25F5E3FB4();
    __swift_project_value_buffer(v4, qword_27FD9EA20);

    v5 = sub_25F5E3F94();
    v6 = sub_25F5E4794();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[13];
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = v7 >> 62 ? sub_25F5E49C4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v8 + 4) = v9;

      _os_log_impl(&dword_25F56A000, v5, v6, "Queried %ld messages.", v8, 0xCu);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v0[15] = v0[14];
    v17 = *(v0[7] + *(v0[10] + 56));
    v18 = v17 >> 62 ? sub_25F5E49C4() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v0[11];
    if (v19 < v18)
    {
      if ((v17 & 0xC000000000000001) == 0)
      {
        if (v19 < 0)
        {
          __break(1u);
        }

        else if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v20 = *(v17 + 8 * v19 + 32);
          goto LABEL_16;
        }

        __break(1u);
        return MEMORY[0x2822007B8](v19, v10, v11, v12, v13, v14, v15, v16);
      }

      v20 = MEMORY[0x25F8E3030]();
LABEL_16:
      v21 = v20;
      v0[16] = v20;
      v22 = v0[7];
      v23 = swift_task_alloc();
      v0[17] = v23;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      v24 = swift_task_alloc();
      v0[18] = v24;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E538, &unk_25F5EA4D0);
      *v24 = v0;
      v24[1] = sub_25F5BF08C;
      v14 = sub_25F5C10C4;
      v12 = 0x29287478656ELL;
      v19 = (v0 + 2);
      v10 = 0;
      v11 = 0;
      v13 = 0xE600000000000000;
      v15 = v23;

      return MEMORY[0x2822007B8](v19, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v25 = v0[6];
  v26 = type metadata accessor for ExtractedMessage(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = v0[1];

  return v27();
}

uint64_t sub_25F5BF08C()
{

  return MEMORY[0x2822009F8](sub_25F5BF1A4, 0, 0);
}

void sub_25F5BF1A4()
{
  v81 = v0;
  if (!*(v0 + 24))
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v4 = sub_25F5E3FB4();
    __swift_project_value_buffer(v4, qword_27FD9EA20);
    v5 = sub_25F5E3F94();
    v6 = sub_25F5E47B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25F56A000, v5, v6, "Failed to extract message content. Terminated extraction loop.", v7, 2u);
      MEMORY[0x25F8E3B70](v7, -1, -1);
    }

    v8 = *(v0 + 48);

    v9 = type metadata accessor for ExtractedMessage(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_34:
    v35 = *(v0 + 8);
    goto LABEL_35;
  }

  v76 = *(v0 + 32);
  v79 = *(v0 + 40);
  v1 = [*(v0 + 128) senderAddress];
  if (v1)
  {
    v2 = [v1 stringValue];
    swift_unknownObjectRelease();
    v74 = sub_25F5E43F4();
    v77 = v3;
  }

  else
  {
    v74 = 0x6E776F6E6B6E753CLL;
    v77 = 0xE90000000000003ELL;
  }

  v10 = [*(v0 + 128) subject];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 subjectString];

    v75 = sub_25F5E43F4();
    v78 = v13;
  }

  else
  {
    v75 = 0x6E776F6E6B6E753CLL;
    v78 = 0xE90000000000003ELL;
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 152);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = objc_opt_self();
  v20 = sub_25F5E43C4();

  v21 = [v19 snippetFromHTMLBody:v20 options:*(v18 + 16) maxLength:*(v18 + *(v17 + 40)) preservingQuotedForwardedContent:0];

  v22 = sub_25F5E43F4();
  v24 = v23;

  v25 = (v18 + *(v17 + 48));
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 1);
  LOBYTE(v80[0]) = *v25;
  BYTE1(v80[0]) = v27;
  v80[1] = v28;

  v29 = sub_25F5D49F4(v22, v24, v80);
  v31 = v30;

  v32 = *(v18 + v16);
  v33 = sub_25F5BD5A0(v15);
  if (!v14)
  {
    v36 = v33;
    v71 = v22;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v37 = sub_25F5E3FB4();
    __swift_project_value_buffer(v37, qword_27FD9EA20);

    v38 = sub_25F5E3F94();
    v39 = sub_25F5E47A4();

    v72 = v32;
    v73 = v29;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v32;
      v41 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80[0] = v70;
      *v41 = 134218242;
      *(v41 + 4) = v40;
      *(v41 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E540, &qword_25F5E9D60);
      v42 = sub_25F5E4314();
      v44 = v31;
      v45 = sub_25F570AF8(v42, v43, v80);

      *(v41 + 14) = v45;
      v31 = v44;
      v29 = v73;
      _os_log_impl(&dword_25F56A000, v38, v39, "Message metadata %ld:%s", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x25F8E3B70](v70, -1, -1);
      MEMORY[0x25F8E3B70](v41, -1, -1);
    }

    if (v26)
    {
      v46 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v46 = v29 & 0xFFFFFFFFFFFFLL;
      }

      v47 = v72;
      if (!v46)
      {

LABEL_32:
        if (__OFADD__(v47, 1))
        {
          __break(1u);
          return;
        }

        v59 = *(v0 + 128);
        v60 = *(v0 + 48);
        *(*(v0 + 56) + *(v0 + 152)) = v47 + 1;
        v61 = [v59 date];
        sub_25F5E3674();

        v62 = [v59 conversationID];
        v63 = type metadata accessor for ExtractedMessage(0);
        v64 = v63[11];
        sub_25F571FC4(MEMORY[0x277D84F90]);

        v65 = (v60 + v63[5]);
        *v65 = v74;
        v65[1] = v77;
        v66 = (v60 + v63[6]);
        *v66 = 25965;
        v66[1] = 0xE200000000000000;
        v67 = (v60 + v63[7]);
        *v67 = v75;
        v67[1] = v78;
        v68 = (v60 + v63[8]);
        *v68 = v73;
        v68[1] = v31;
        *(v60 + v63[9]) = v62;
        v69 = (v60 + v63[10]);
        *v69 = v76;
        v69[1] = v79;
        *(v60 + v64) = v36;
        (*(*(v63 - 1) + 56))(v60, 0, 1, v63);
        goto LABEL_34;
      }

      v48 = sub_25F5E3F94();
      v49 = sub_25F5E47A4();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = v36;
        v52 = swift_slowAlloc();
        v80[0] = v52;
        *v50 = 134218242;
        *(v50 + 4) = v72;
        *(v50 + 12) = 2080;
        v53 = sub_25F570AF8(v71, v24, v80);

        *(v50 + 14) = v53;
        _os_log_impl(&dword_25F56A000, v48, v49, "Parsed body %ld: %s", v50, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v54 = v52;
        v36 = v51;
        MEMORY[0x25F8E3B70](v54, -1, -1);
        MEMORY[0x25F8E3B70](v50, -1, -1);
      }

      else
      {
      }

      v55 = sub_25F5E3F94();
      v56 = sub_25F5E47A4();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v80[0] = v58;
        *v57 = 134218242;
        *(v57 + 4) = v72;
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_25F570AF8(v73, v31, v80);
        _os_log_impl(&dword_25F56A000, v55, v56, "Cleaned body %ld: %s", v57, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x25F8E3B70](v58, -1, -1);
        MEMORY[0x25F8E3B70](v57, -1, -1);

        v47 = v72;
        goto LABEL_32;
      }
    }

    else
    {
    }

    v47 = v72;
    goto LABEL_32;
  }

  v34 = *(v0 + 128);

  v35 = *(v0 + 8);
LABEL_35:

  v35();
}

void sub_25F5BF9E8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - v9;
  v11 = *(a3 + 8);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_25F5C3330;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F5BFE90;
  aBlock[3] = &block_descriptor_34;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  v16 = [a2 requestRepresentationWithOptions:v15 completionHandler:v14];
  _Block_release(v14);
}