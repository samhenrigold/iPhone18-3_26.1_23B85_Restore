uint64_t sub_19163DBCC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_19166B0B8();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_19163E3AC(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_19163E3AC(v4, v5);
  }

  return sub_19166B0B8();
}

uint64_t sub_19163DD0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635028(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163DDD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635364(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163DE9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_1916356F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163DF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635364(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19163E074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_1916361B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163E13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D4F90;

  return sub_191636650(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19163E230(const char *a1)
{
  v2 = *(v1 + 16);
  result = execve(a1, (**(v1 + 24) + 32), (**(v1 + 32) + 32));
  *v2 = result;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19163E2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19163E32C()
{
  result = qword_1EADB0010;
  if (!qword_1EADB0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0010);
  }

  return result;
}

uint64_t sub_19163E3AC(uint64_t a1, uint64_t a2)
{
  result = sub_19166AF88();
  if (!result || (result = sub_19166AFA8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_19166AF98();
      return sub_19166B0B8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19163E440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_19166C5E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E726177 && a2 == 0xE700000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_19166C5E8();

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

unint64_t sub_19163E5E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_19166B848();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_19166B958();
}

unint64_t sub_19163E698()
{
  result = qword_1EADAE858;
  if (!qword_1EADAE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE858);
  }

  return result;
}

unint64_t sub_19163E6F0()
{
  result = qword_1EADB0020;
  if (!qword_1EADB0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0020);
  }

  return result;
}

unint64_t sub_19163E744()
{
  result = qword_1EADB0028;
  if (!qword_1EADB0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0028);
  }

  return result;
}

unint64_t sub_19163E79C()
{
  result = qword_1EADB0030;
  if (!qword_1EADB0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0030);
  }

  return result;
}

unint64_t sub_19163E838()
{
  result = qword_1EADB0048;
  if (!qword_1EADB0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0048);
  }

  return result;
}

uint64_t sub_19163E8E8(uint64_t a1)
{
  result = sub_19166B088();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of AXCTLCommandProtocol.axctl_run()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D4F90;

  return v7(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities12AXCTLSupportO14ToolingMessageV0E0OSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19163EAA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_19163EAFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_19163EB78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19163EBC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_19163EC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19163ECB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19163ED24(uint64_t a1)
{
  sub_19166B088();
  if (v1 <= 0x3F)
  {
    sub_19163EDC0();
    if (v2 <= 0x3F)
    {
      sub_19163EE10();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19163EDC0()
{
  if (!qword_1EADB0070)
  {
    v0 = sub_19166BA68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADB0070);
    }
  }
}

void sub_19163EE10()
{
  if (!qword_1EADB0078)
  {
    v0 = sub_19166B688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADB0078);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19163EED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_19163EF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities8SWEAXErrO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19163EFB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19163F018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_19163F070(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

uint64_t sub_19163F160(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_19163F4EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19163F1D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_19163F318(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

unint64_t sub_19163F4EC()
{
  result = qword_1EADB0100;
  if (!qword_1EADB0100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADB0100);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities25SWEAXTextFileHandleReaderC5EventO(uint64_t a1)
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

uint64_t sub_19163F5BC(uint64_t a1, unsigned int a2)
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

uint64_t sub_19163F604(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19163F648(uint64_t result, unsigned int a2)
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

uint64_t sub_19163F670(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_19163F700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19163F824()
{
  result = qword_1EADB0108;
  if (!qword_1EADB0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0108);
  }

  return result;
}

unint64_t sub_19163F87C()
{
  result = qword_1EADB0110;
  if (!qword_1EADB0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0110);
  }

  return result;
}

unint64_t sub_19163F8D4()
{
  result = qword_1EADB0118;
  if (!qword_1EADB0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0118);
  }

  return result;
}

unint64_t sub_19163F92C()
{
  result = qword_1EADB0120;
  if (!qword_1EADB0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0120);
  }

  return result;
}

unint64_t sub_19163F984()
{
  result = qword_1EADB0128;
  if (!qword_1EADB0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0128);
  }

  return result;
}

unint64_t sub_19163F9DC()
{
  result = qword_1EADB0130;
  if (!qword_1EADB0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0130);
  }

  return result;
}

unint64_t sub_19163FA34()
{
  result = qword_1EADB0138;
  if (!qword_1EADB0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0138);
  }

  return result;
}

unint64_t sub_19163FA8C()
{
  result = qword_1EADB0140;
  if (!qword_1EADB0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0140);
  }

  return result;
}

unint64_t sub_19163FAE4()
{
  result = qword_1EADB0148;
  if (!qword_1EADB0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0148);
  }

  return result;
}

unint64_t sub_19163FB3C()
{
  result = qword_1EADB0150;
  if (!qword_1EADB0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0150);
  }

  return result;
}

unint64_t sub_19163FB94()
{
  result = qword_1EADB0158;
  if (!qword_1EADB0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0158);
  }

  return result;
}

unint64_t sub_19163FBEC()
{
  result = qword_1EADB0160;
  if (!qword_1EADB0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0160);
  }

  return result;
}

unint64_t sub_19163FC44()
{
  result = qword_1EADB0168;
  if (!qword_1EADB0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0168);
  }

  return result;
}

unint64_t sub_19163FC9C()
{
  result = qword_1EADB0170;
  if (!qword_1EADB0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0170);
  }

  return result;
}

unint64_t sub_19163FCF4()
{
  result = qword_1EADB0178;
  if (!qword_1EADB0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0178);
  }

  return result;
}

unint64_t sub_19163FD4C()
{
  result = qword_1EADB0180;
  if (!qword_1EADB0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0180);
  }

  return result;
}

unint64_t sub_19163FDA4()
{
  result = qword_1EADB0188;
  if (!qword_1EADB0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0188);
  }

  return result;
}

unint64_t sub_19163FDFC()
{
  result = qword_1EADB0190;
  if (!qword_1EADB0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0190);
  }

  return result;
}

unint64_t sub_19163FE54()
{
  result = qword_1EADB0198;
  if (!qword_1EADB0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0198);
  }

  return result;
}

unint64_t sub_19163FEAC()
{
  result = qword_1EADB01A0;
  if (!qword_1EADB01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01A0);
  }

  return result;
}

unint64_t sub_19163FF04()
{
  result = qword_1EADB01A8;
  if (!qword_1EADB01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01A8);
  }

  return result;
}

unint64_t sub_19163FF58()
{
  result = qword_1EADB01B0;
  if (!qword_1EADB01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01B0);
  }

  return result;
}

uint64_t sub_191640024(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event(255, v3, v4, v5);
  v6 = *(sub_19166BBC8() - 8);
  return sub_19163B334(a1, v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80)), v3, v4, v5);
}

uint64_t sub_1916400CC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);

  return sub_19163996C(a1);
}

unint64_t sub_191640148()
{
  result = qword_1EADB01D0;
  if (!qword_1EADB01D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADB01D0);
  }

  return result;
}

uint64_t sub_191640194(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1916401D0()
{
  result = qword_1EADB01D8;
  if (!qword_1EADB01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01D8);
  }

  return result;
}

uint64_t objectdestroy_231Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1916402A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01E0, &qword_191674CE8);
  [a1 setWriteabilityHandler_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01E0, &qword_191674CE8);
  return sub_19166BA98();
}

__n128 AXConcreteKey.init(key:domain:objcMode:traits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a5 + 32);
  v8 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  result = *a5;
  v10 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v10;
  *(a7 + 64) = v7;
  *(a7 + 72) = v8;
  return result;
}

uint64_t AXSettingsStore.observeWithToken(key:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_19166B1B8();
  (*(a5 + 24))(a1, a2, a3, a4, a5);
  v12 = sub_19166B1C8();
  v13 = *(*(v12 - 8) + 56);

  return v13(a6, 0, 1, v12);
}

uint64_t sub_1916404F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

double AXSettingsKey.watchKey.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_19164061C(void *a1, uint64_t *a2)
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

void *sub_19164064C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_191640678@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t AXConcreteKey.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AXConcreteKey.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AXConcreteKey.domain.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AXConcreteKey.domain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void AXConcreteKey.objcMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  sub_191640880(v2, v3, v4, v5, v6);
}

void sub_191640880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

__n128 AXConcreteKey.objcMode.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1915DB1C0(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

__n128 AXConcreteKey.init(key:domain:objcMode:traits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a4 + 32);
  v9 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = AXCDomain.suiteName.getter(a3);
  *(a6 + 24) = v10;
  result = *a4;
  v12 = *(a4 + 16);
  *(a6 + 32) = *a4;
  *(a6 + 48) = v12;
  *(a6 + 64) = v8;
  *(a6 + 72) = v9;
  return result;
}

uint64_t AXCDomain.suiteName.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = MEMORY[0x1E69E4BA8];
      v2 = *MEMORY[0x1E69E4BA8];
      if (!*MEMORY[0x1E69E4BA8])
      {
        __break(1u);
        goto LABEL_39;
      }

      v3 = AXCPCopySharedResourcesPreferencesDomainForDomain();

      if (v3)
      {
        goto LABEL_28;
      }

      v4 = *v1;
      if (!*v1)
      {
        __break(1u);
        goto LABEL_6;
      }

      goto LABEL_27;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_16;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_10;
    case 6:
      goto LABEL_24;
    case 7:
      goto LABEL_31;
    case 8:
      goto LABEL_20;
    case 9:
      goto LABEL_35;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_33;
    case 12:
      goto LABEL_8;
    case 13:
      goto LABEL_12;
    case 14:
      v5 = *MEMORY[0x1E69E4D40];
      if (*MEMORY[0x1E69E4D40])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_31:
      v5 = *MEMORY[0x1E69E4D98];
      if (*MEMORY[0x1E69E4D98])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_33:
      v5 = *MEMORY[0x1E69E4E10];
      if (*MEMORY[0x1E69E4E10])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_35:
      v5 = *MEMORY[0x1E69E4F38];
      if (*MEMORY[0x1E69E4F38])
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    case 15:
LABEL_6:
      v5 = *MEMORY[0x1E69E4BC0];
      if (*MEMORY[0x1E69E4BC0])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_8:
      v5 = *MEMORY[0x1E69E4F08];
      if (*MEMORY[0x1E69E4F08])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_10:
      v5 = *MEMORY[0x1E69E4D70];
      if (*MEMORY[0x1E69E4D70])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_12:
      v5 = *MEMORY[0x1E69E4F68];
      if (*MEMORY[0x1E69E4F68])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_14:
      v5 = *MEMORY[0x1E69E4F18];
      if (*MEMORY[0x1E69E4F18])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_16:
      v5 = *MEMORY[0x1E69E4FB0];
      if (*MEMORY[0x1E69E4FB0])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_18:
      v5 = *MEMORY[0x1E69E4C68];
      if (*MEMORY[0x1E69E4C68])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_20:
      v5 = *MEMORY[0x1E69E4EE0];
      if (*MEMORY[0x1E69E4EE0])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_22:
      v5 = *MEMORY[0x1E69E4F70];
      if (*MEMORY[0x1E69E4F70])
      {
LABEL_36:
        v7 = v5;
        goto LABEL_37;
      }

      __break(1u);
LABEL_24:
      v6 = *MEMORY[0x1E69E4E98];
      if (*MEMORY[0x1E69E4E98])
      {
        v3 = AXCPCopySharedResourcesPreferencesDomainForDomain();

        if (v3)
        {
LABEL_28:
          v7 = v3;
LABEL_37:
          v8 = sub_19166B748();

          return v8;
        }

        v4 = *MEMORY[0x1E69E4BA8];
        if (*MEMORY[0x1E69E4BA8])
        {
LABEL_27:
          v3 = v4;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000010, 0x800000019167D6D0, "AXCoreUtilities/CoreSettingsTypes.swift", 39, 2, 167, 0);
      __break(1u);
      return result;
    default:
      goto LABEL_42;
  }
}

uint64_t sub_191640C14()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_191640C44(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  sub_191640880(v2, v3, v4, v5, v6);
}

uint64_t AXSettingsGroup.enumerateSettings(_:requiredTraits:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = *a3;
  v6 = AXSettingsGroup.settings(traits:)(v10, a4, a5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      sub_1915DB15C(v8, v10);
      a1(v10);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t AXSettingsGroup.settings(traits:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  *&v30 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF3F0, &unk_191674CF0);
  v9 = *(*(a3 + 8) + 8);
  v10 = sub_19164AB68(v8, 0, a2, v8, v9);
  *&v30 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E8, &qword_1916721B0);
  result = sub_19164AB68(v11, 0, a2, v11, v9);
  v13 = result;
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v10 + 40);
    while (v15 < *(v10 + 16))
    {
      ++v15;
      v17 = *v16;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1915DAB60(ObjectType, v17);
      *&v30 = v13;

      sub_1915E3FD0(v19);

      result = swift_unknownObjectRelease();
      v16 += 2;
      if (v14 == v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_5:

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v13 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    while (v21 < *(v13 + 16))
    {
      sub_1915DB15C(v22, &v30);
      if (v7 && (v25 = v31, v24 = v32, __swift_project_boxed_opaque_existential_1(&v30, v31), (*(*(v24 + 8) + 32))(v29, v25), (v7 & ~*&v29[0]) != 0))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v30);
      }

      else
      {
        sub_1915A04D0(&v30, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1915F4F74(0, *(v23 + 16) + 1, 1);
          v23 = v33;
        }

        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1915F4F74((v27 > 1), v28 + 1, 1);
          v23 = v33;
        }

        *(v23 + 16) = v28 + 1;
        result = sub_1915A04D0(v29, v23 + 40 * v28 + 32);
      }

      ++v21;
      v22 += 40;
      if (v20 == v21)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v23;
}

uint64_t static AXPreferenceContext.store.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }

  sub_191641260(a1);
}

uint64_t sub_19164102C()
{
  v3 = type metadata accessor for AXCoreSettingsStore();
  v4 = &protocol witness table for AXCoreSettingsStore;
  *&v2 = [objc_allocWithZone(v3) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0208, &qword_191675078);
  v0 = swift_allocObject();
  sub_19166B1B8();
  result = sub_1915A04D0(&v2, v0 + 16);
  qword_1ED5A8280 = v0;
  return result;
}

uint64_t static AXPreferenceContext.$store.getter()
{
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19164115C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v6 = sub_1916413DC(1, a1, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = a3(v6, v8, v10, v12);

  sub_19163E5E8(1uLL, a1, a2);

  sub_191641478();
  sub_19166B858();

  return v13;
}

uint64_t sub_191641260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 threadDictionary];

  *&v9[0] = sub_19166B178();
  *(&v9[0] + 1) = v6;
  v7 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v7)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
    sub_1915E4370(v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0200, &qword_191675070);
  if (swift_dynamicCast())
  {
    return sub_1915A04D0(v9, a1);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  return sub_1915DB15C(v2 + 16, a1);
}

uint64_t sub_1916413DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_19166B848();

    return sub_19166B958();
  }

  return result;
}

unint64_t sub_191641478()
{
  result = qword_1EADB01E8;
  if (!qword_1EADB01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01E8);
  }

  return result;
}

unint64_t sub_1916414D0()
{
  result = qword_1EADB01F0;
  if (!qword_1EADB01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01F0);
  }

  return result;
}

unint64_t sub_191641528()
{
  result = qword_1EADB01F8;
  if (!qword_1EADB01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01F8);
  }

  return result;
}

unint64_t sub_191641580()
{
  result = qword_1EADAE5C8;
  if (!qword_1EADAE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE5C8);
  }

  return result;
}

unint64_t sub_1916415D8()
{
  result = qword_1EADAE5C0;
  if (!qword_1EADAE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE5C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXSettingsTrait(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AXSettingsTrait(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities18AXSettingsObjCModeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_191641704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_19164174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_191641794(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1916417DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_191641824(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id AXCoreSettingsStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_191641934()
{

  return swift_deallocClassInstance();
}

id sub_19164196C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_suiteLock);
  os_unfair_lock_lock(v1 + 4);
  sub_191643530(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = *(v4 + 16);

  return v2;
}

uint64_t sub_191641A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_cachedSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_1915DB0E4(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      goto LABEL_8;
    }
  }

  v13 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v14 = sub_19166B718();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  swift_beginAccess();

  v12 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1915E2808(v12, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v18;
  swift_endAccess();
LABEL_8:
  type metadata accessor for AXCoreSettingsStore.SuiteSmuggler();
  result = swift_allocObject();
  *(result + 16) = v12;
  *a4 = result;
  return result;
}

double sub_191641BD8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v3, v4);
  (*(v4 + 16))(v3, v4);
  v5 = sub_19164196C();
  if (v5)
  {
    v6 = v5;
    v7 = sub_19166B718();

    v8 = [v6 valueForKey_];

    if (v8)
    {
      sub_19166BFC8();

      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return result;
      }
    }

    else
    {
      sub_19159E780(v12, &unk_1EADB0270, &unk_191672C20);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;

  return result;
}

id sub_191641D9C(void (*a1)(uint64_t))
{
  if (geteuid())
  {
    return (a1)();
  }

  v2 = getpwnam("mobile");
  if (!v2 || (pw_uid = v2->pw_uid) == 0)
  {
    v6 = sub_19166BD78();
    result = AXLogSettings(v6);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    sub_19166B528();

    return (a1)();
  }

  v4 = seteuid(pw_uid);
  a1(v4);

  return seteuid(0);
}

void sub_191641F08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  (*(v6 + 16))(v5, v6);
  v10 = sub_19164196C();
  if (v10)
  {
    v11 = v10;
    sub_1915E0A90(a3, v20, &qword_1EADAF4A8, &qword_191672420);
    if (v20[3])
    {
      v12 = sub_19166C018();
      sub_1915E0AF8(v20);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_19166B718();
    [v11 setObject:v12 forKey:v13];
    swift_unknownObjectRelease();

    v20[0] = 0xD000000000000010;
    v20[1] = 0x800000019167D6F0;
    MEMORY[0x193AFC710](v7, v9);
    v14 = sub_19166B7D8();

    notify_post((v14 + 32));

    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 32))(v20, v15, v16);
    if ((v20[0] & 4) == 0)
    {

LABEL_12:

      return;
    }

    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    if (*MEMORY[0x1E69E4B88])
    {
      v18 = v17;
      v19 = *MEMORY[0x1E69E4B88];

      CFNotificationCenterPostNotification(v18, v19, 0, 0, 1u);

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_191642164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  v14 = (*(v10 + 16))(v9, v10);
  v16 = v15;
  v17 = sub_19164196C();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = type metadata accessor for AXCoreSettingsStore.Observation(0);
    v43 = v5;
    v44 = a4;
    v21 = objc_allocWithZone(v20);
    v22 = v18;

    sub_19166B1B8();
    v23 = &v21[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key];
    *v23 = v11;
    v23[1] = v13;
    v23[2] = v14;
    v23[3] = v16;
    v24 = &v21[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block];
    *v24 = sub_1915E4118;
    v24[1] = v19;
    *&v21[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_suite] = v22;
    v45.receiver = v21;
    v45.super_class = v20;
    v25 = v22;

    v26 = objc_msgSendSuper2(&v45, sel_init);
    v27 = *(v26 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_suite);
    v28 = (v26 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key);
    v29 = v26;
    v30 = sub_19166B718();
    [v27 addObserver:v29 forKeyPath:v30 options:3 context:v29];

    MEMORY[0x193AFC710](*v28, v28[1]);
    v31 = CFNotificationCenterGetDarwinNotifyCenter();
    v32 = sub_19166B718();

    CFNotificationCenterAddObserver(v31, v29, sub_191642820, v32, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v33 = *(v43 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock);
    v36 = MEMORY[0x1EEE9AC00](v34, v35);
    MEMORY[0x1EEE9AC00](v36, v37);
    os_unfair_lock_lock(v33 + 4);
    sub_191643120();
    os_unfair_lock_unlock(v33 + 4);

    v38 = OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_id;
    v39 = sub_19166B1C8();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v44, v29 + v38, v39);

    return (*(v40 + 56))(v44, 0, 1, v39);
  }

  else
  {
    v42 = sub_19166B1C8();
    (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
  }
}

uint64_t sub_191642548(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_id;
  v5 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observations;
  swift_beginAccess();
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v5);
  *(a1 + v5) = 0x8000000000000000;
  sub_1915E2980(v6, a2 + v4, isUniquelyReferenced_nonNull_native);
  *(a1 + v5) = v9;
  return swift_endAccess();
}

void sub_1916425F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock);
  os_unfair_lock_lock(v1 + 4);
  sub_191643590();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_191642664(uint64_t a1, uint64_t a2)
{
  v3 = sub_19166B1C8();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  swift_beginAccess();
  sub_1915E0F84(0, v6);
  return swift_endAccess();
}

uint64_t sub_191642764(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v11 - v8;
  sub_191642164(a1, a2, a3, &v11 - v8);
  return sub_19159E780(v9, &qword_1EADAF4A0, &qword_191673940);
}

void sub_191642820(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block);

    v2(v3);
  }
}

id sub_191642878()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = *&v0[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_suite];
  v3 = v0;

  v4 = sub_19166B718();

  [v2 removeObserver:v3 forKeyPath:v4];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AXCoreSettingsStore.Observation(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_191642B88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_id;
  v5 = sub_19166B1C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id AXCoreSettingsStore.init()()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_cachedSuites;
  *&v0[v1] = sub_1916534BC(MEMORY[0x1E69E7CC0]);
  v2 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_suiteLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observations] = MEMORY[0x1E69E7CC8];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AXCoreSettingsStore();
  return objc_msgSendSuper2(&v7, sel_init);
}

id AXCoreSettingsStore.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AXCoreSettingsStore();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_191642E10(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v11 - v8;
  sub_191642164(a1, a2, a3, &v11 - v8);
  return sub_19159E780(v9, &qword_1EADAF4A0, &qword_191673940);
}

void sub_191642EF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock);
  os_unfair_lock_lock(v1 + 4);
  sub_191643590();
  os_unfair_lock_unlock(v1 + 4);
}

id axSwitchFromRoot<A>(_:)(uint64_t (*a1)(uint64_t))
{
  if (geteuid())
  {
    return a1(0);
  }

  v2 = getpwnam("mobile");
  if (!v2 || (pw_uid = v2->pw_uid) == 0)
  {
    v5 = sub_19166BD78();
    result = AXLogSettings(v5);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    sub_19166B528();

    return a1(0);
  }

  seteuid(pw_uid);
  a1(1);

  return seteuid(0);
}

uint64_t type metadata accessor for AXCoreSettingsStore.Observation(uint64_t a1)
{
  result = qword_1EADAE9C8;
  if (!qword_1EADAE9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1916432D0(uint64_t a1)
{
  result = sub_19166B1C8();
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

uint64_t sub_1916433CC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_1915E0A90(result, v4, &unk_1EADB0270, &unk_191672C20);
    if (v5)
    {
      sub_1916434C4();
      result = swift_dynamicCast();
      if (result)
      {

        return (*(v2 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block))();
      }
    }

    else
    {
      return sub_19159E780(v4, &unk_1EADB0270, &unk_191672C20);
    }
  }

  return result;
}

uint64_t sub_19164347C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1916434C4()
{
  result = qword_1EADAE680;
  if (!qword_1EADAE680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAE680);
  }

  return result;
}

void *sub_191643530@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *AudioEffectConfiguration._bridgeToObjectiveC()()
{
  v1 = [objc_allocWithZone(AXAudioEffectConfiguration) init];
  v2 = type metadata accessor for AudioEffectConfiguration(0);
  [v1 setEnabled_];
  v3 = MEMORY[0x1E69E7CC0];
  sub_1916534D0(MEMORY[0x1E69E7CC0]);
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_19166B668();

  [v1 setParameters_];

  sub_1916534D0(v3);
  v6 = v4;
  v7 = sub_19166B668();

  [v1 setProperties_];

  v91 = v2;
  v92 = v0;
  v8 = *(v0 + *(v2 + 24));
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(v0 + *(v2 + 24)) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v94 = *(v0 + *(v2 + 24));

  v16 = 0;
  v97 = v1;
  v93 = v10;
  if (v14)
  {
    while (1)
    {
      v17 = v6;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v16 << 6);
      v20 = (*(v94 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v94 + 56) + 4 * v19);
      v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      LODWORD(v25) = v23;
      v26 = [v24 initWithFloat_];
      v27 = [v97 parameters];
      v28 = sub_19166B678();

      v95 = v26;
      if (v26)
      {
        break;
      }

      v6 = v17;
      v43 = sub_1915DB0E4(v21, v22);
      v45 = v44;

      if (v45)
      {
        v10 = v93;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
        }

        sub_1916477A0(v43, v28);
        goto LABEL_25;
      }

LABEL_24:
      v10 = v93;
LABEL_25:
      v14 &= v14 - 1;
      v48 = sub_19166B668();

      [v97 setParameters_];

      if (!v14)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v21;
    v32 = sub_1915DB0E4(v21, v22);
    v33 = v28[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_57;
    }

    v36 = v31;
    if (v28[3] < v35)
    {
      sub_1916469FC(v35, isUniquelyReferenced_nonNull_native, &qword_1EADB02E0, &qword_1916751B0);
      v37 = sub_1915DB0E4(v30, v22);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_61;
      }

      v32 = v37;
      if ((v36 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:

      v46 = v28[7];
      v47 = *(v46 + 8 * v32);
      *(v46 + 8 * v32) = v95;

LABEL_23:
      v6 = MEMORY[0x1E69E6158];
      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v31)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
      if (v36)
      {
        goto LABEL_22;
      }
    }

LABEL_14:
    v28[(v32 >> 6) + 8] |= 1 << v32;
    v39 = (v28[6] + 16 * v32);
    *v39 = v30;
    v39[1] = v22;
    *(v28[7] + 8 * v32) = v95;
    v40 = v28[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_59;
    }

    v28[2] = v42;
    goto LABEL_23;
  }

  while (1)
  {
LABEL_5:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v18);
    ++v16;
    if (v14)
    {
      v17 = v6;
      v16 = v18;
      goto LABEL_9;
    }
  }

  v49 = *(v92 + *(v91 + 28));
  v52 = *(v49 + 64);
  v51 = v49 + 64;
  v50 = v52;
  v53 = 1 << *(*(v92 + *(v91 + 28)) + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v50;
  v56 = (v53 + 63) >> 6;
  v96 = *(v92 + *(v91 + 28));

  v57 = 0;
  v58 = v97;
  while (v55)
  {
LABEL_39:
    v64 = __clz(__rbit64(v55)) | (v57 << 6);
    v65 = (*(v96 + 48) + 16 * v64);
    v67 = *v65;
    v66 = v65[1];
    v68 = *(*(v96 + 56) + 4 * v64);
    v69 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v70 = [v69 initWithUnsignedInt_];
    v71 = [v58 properties];
    v72 = sub_19166B678();

    if (!v70)
    {
      v81 = sub_1915DB0E4(v67, v66);
      v83 = v82;

      if (v83)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
        }

        sub_1916477A0(v81, v72);
      }

      goto LABEL_33;
    }

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v74 = sub_1915DB0E4(v67, v66);
    v76 = v72[2];
    v77 = (v75 & 1) == 0;
    v41 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v41)
    {
      goto LABEL_58;
    }

    v79 = v75;
    if (v72[3] >= v78)
    {
      if ((v73 & 1) == 0)
      {
        v87 = v74;
        sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
        v74 = v87;
        v58 = v97;
        if (v79)
        {
LABEL_32:
          v59 = v74;

          v60 = v72[7];
          v61 = *(v60 + 8 * v59);
          *(v60 + 8 * v59) = v70;

          goto LABEL_33;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_1916469FC(v78, v73, &qword_1EADB02E0, &qword_1916751B0);
      v74 = sub_1915DB0E4(v67, v66);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_61;
      }
    }

    v58 = v97;
    if (v79)
    {
      goto LABEL_32;
    }

LABEL_50:
    v72[(v74 >> 6) + 8] |= 1 << v74;
    v84 = (v72[6] + 16 * v74);
    *v84 = v67;
    v84[1] = v66;
    *(v72[7] + 8 * v74) = v70;
    v85 = v72[2];
    v41 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v41)
    {
      goto LABEL_60;
    }

    v72[2] = v86;
LABEL_33:
    v55 &= v55 - 1;
    v62 = sub_19166B668();

    [v58 setProperties_];
  }

  while (1)
  {
    v63 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v63 >= v56)
    {

      v88 = sub_19166B188();
      [v58 setIdentifier_];

      v89 = sub_19166B718();
      [v58 setEffectName_];

      return v58;
    }

    v55 = *(v51 + 8 * v63);
    ++v57;
    if (v55)
    {
      v57 = v63;
      goto LABEL_39;
    }
  }

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
LABEL_61:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t static AudioEffectConfiguration._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000026, 0x800000019167D910, "AXCoreUtilities/AudioEffectConfiguration+ObjC.swift", 51, 2, 31, 0);
    __break(1u);
  }

  return result;
}

uint64_t static AudioEffectConfiguration._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0238, &qword_191675130);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  if (a1)
  {
    v12 = type metadata accessor for AudioEffectConfiguration(0);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v11, 1, 1, v12);
    v14 = a1;
    if (_s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(v14, v11))
    {
      sub_1916492A8(v11, v8);
      if ((*(v13 + 48))(v8, 1, v12) != 1)
      {
        sub_19159E780(v11, &qword_1EADB0238, &qword_191675130);

        return sub_191649318(v8, a2);
      }

      sub_19159E780(v8, &qword_1EADB0238, &qword_191675130);
      result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000026, 0x800000019167D910, "AXCoreUtilities/AudioEffectConfiguration+ObjC.swift", 51, 2, 54, 0);
    }

    else
    {
      result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000026, 0x800000019167D910, "AXCoreUtilities/AudioEffectConfiguration+ObjC.swift", 51, 2, 31, 0);
    }
  }

  else
  {
    result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000026, 0x800000019167D910, "AXCoreUtilities/AudioEffectConfiguration+ObjC.swift", 51, 2, 51, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_191644028(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000026, 0x800000019167D910, "AXCoreUtilities/AudioEffectConfiguration+ObjC.swift", 51, 2, 31, 0);
    __break(1u);
  }

  return result;
}

void AXAudioEffectConfiguration.identifier.getter()
{
  v1 = [v0 _identifier];
  sub_19166B1A8();
}

uint64_t AXAudioEffectConfiguration.identifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19166B188();
  [v2 set:v4 identifier:?];

  v5 = sub_19166B1C8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void sub_191644400(id *a1)
{
  v1 = [*a1 identifier];
  sub_19166B1A8();
}

uint64_t AXAudioEffectConfiguration.effectName.getter()
{
  v1 = (v0 + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AXAudioEffectConfiguration.effectName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_191644600(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 effectName];
  v4 = sub_19166B748();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t AXAudioEffectConfiguration.enabled.getter()
{
  v1 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXAudioEffectConfiguration.enabled.setter(char a1)
{
  v3 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1916447C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);

  v3 = sub_19166B668();

  return v3;
}

uint64_t sub_19164487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v6 = sub_19166B678();
  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

void sub_19164491C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v5 = sub_19166B678();

  *a3 = v5;
}

void sub_19164499C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v7 = sub_19166B668();
  [v6 *a5];
}

Swift::Void __swiftcall AXAudioEffectConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 identifier];
  sub_19166B1A8();

  v10 = sub_19166B188();
  (*(v5 + 8))(v8, v4);
  v11 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = [v2 effectName];
  if (!v12)
  {
    sub_19166B748();
    v12 = sub_19166B718();
  }

  v13 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = [v2 enabled];
  v15 = sub_19166B718();
  [(objc_class *)with.super.isa encodeBool:v14 forKey:v15];

  v16 = [v2 properties];
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  sub_19166B678();

  v17 = sub_19166B668();

  v18 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = [v2 parameters];
  sub_19166B678();

  v20 = sub_19166B668();

  v21 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
}

id AXAudioEffectConfiguration.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

char *AXAudioEffectConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = [v2 init];
  sub_1915DAA60(0, &unk_1EADB0260, 0x1E696AFB0);
  v5 = sub_19166BF18();
  if (v5)
  {
    v6 = v5;
    sub_1915DAA60(0, &unk_1EADAFBB0, 0x1E696AEC0);
    v7 = sub_19166BF18();
    if (v7)
    {
      v10 = 0;
      v8 = v7;
      sub_19166B738();
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1916452A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_19166B1C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02A0, &qword_191675188);
  v41 = v4;
  result = sub_19166C238();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v5;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v19 = v42;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v43)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      sub_1916493CC();
      result = sub_19166B6B8();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v19 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v19 = v42;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v43)(*(v11 + 48) + v44 * v20, v19, v45);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_191645650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02D0, &qword_1916751A8);
  v38 = v4;
  result = sub_19166C238();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_1915E1F90(v27, &v39);
      }

      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_191645948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0298, &qword_1916759C0);
  v34 = v4;
  result = sub_19166C238();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_191645BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02F8, &qword_1916751C0);
  result = sub_19166C238();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1915E4370(v21, v31);
      }

      else
      {
        sub_1915DFD18(v21, v31);
      }

      result = sub_19166C768();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1915E4370(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_191645E68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B0, &qword_191675190);
  v34 = v4;
  result = sub_19166C238();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_191646108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC18, &qword_191672F70);
  v33 = v4;
  result = sub_19166C238();
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1916463AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B8, &qword_191675198);
  result = sub_19166C238();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_19166C778();
      sub_19166B3E8();
      result = sub_19166C7B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_191646650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_19166B1C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02E8, &qword_1916751B8);
  v41 = v4;
  result = sub_19166C238();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v5;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v19 = v42;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v43)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      sub_1916493CC();
      result = sub_19166B6B8();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v19 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v19 = v42;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v43)(*(v11 + 48) + v44 * v20, v19, v45);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1916469FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_19166C238();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_191646C98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02C8, &qword_1916751A0);
  result = sub_19166C238();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_19166C768();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_191646F1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_19166C238();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_1916471BC(int64_t a1, uint64_t a2)
{
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_19166C008();
    v15 = v13;
    v38 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v39 = *(v16 + 56);
    v36 = (v16 - 8);
    v37 = v17;
    do
    {
      v18 = v10;
      v19 = v39 * v12;
      v20 = v15;
      v21 = v16;
      v37(v9, *(a2 + 48) + v39 * v12, v4);
      sub_1916493CC();
      v22 = sub_19166B6B8();
      result = (*v36)(v9, v4);
      v15 = v20;
      v23 = v22 & v20;
      if (a1 >= v38)
      {
        if (v23 >= v38 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          result = v26 + v39 * a1;
          v27 = v26 + v19 + v39;
          v28 = v39 * a1 < v19 || result >= v27;
          v16 = v21;
          if (v28)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v29 = v39 * a1 == v19;
            v10 = v18;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 8 * a1);
          v32 = (v30 + 8 * v12);
          if (a1 != v12 || v31 >= v32 + 1)
          {
            *v31 = *v32;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v38 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_191647474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      sub_19166C778();

      sub_19166B828();
      v11 = sub_19166C7B8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_191647630(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_19166C768();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1916477A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      sub_19166C778();

      sub_19166B828();
      v9 = sub_19166C7B8();

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

uint64_t sub_191647950(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_19166C768();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_191647AC0()
{
  v1 = v0;
  v34 = sub_19166B1C8();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02A0, &qword_191675188);
  v4 = *v0;
  v5 = sub_19166C228();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_191647D40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02D0, &qword_1916751A8);
  v2 = *v0;
  v3 = sub_19166C228();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1915E1F90(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_191647F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0298, &qword_1916759C0);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_191648090()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02F8, &qword_1916751C0);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1915DFD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1915E4370(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_19164820C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B0, &qword_191675190);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_191648374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC18, &qword_191672F70);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_1916484DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B8, &qword_191675198);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

char *sub_191648654()
{
  v1 = v0;
  v32 = sub_19166B1C8();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02E8, &qword_1916751B8);
  v4 = *v0;
  v5 = sub_19166C228();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1916488C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19166C228();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_191648A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02C8, &qword_1916751A0);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_191648B94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19166C228();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(void *a1, uint64_t a2)
{
  sub_19159E780(a2, &qword_1EADB0238, &qword_191675130);
  v77 = a1;
  v3 = [a1 parameters];
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v4 = sub_19166B678();

  v5 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v79 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x1E69E7CC8];
  if ((v9 & v6) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v15 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v15 >= v11)
    {
      v75 = v12;

      v37 = [v77 properties];
      v38 = sub_19166B678();

      v39 = 0;
      v41 = v38 + 64;
      v40 = *(v38 + 64);
      v78 = v38;
      v42 = 1 << *(v38 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & v40;
      v45 = (v42 + 63) >> 6;
      v46 = MEMORY[0x1E69E7CC8];
      if ((v43 & v40) != 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      while (1)
      {
        v48 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_42;
        }

        if (v48 >= v45)
        {

          v67 = [v77 identifier];
          sub_19166B1A8();

          v68 = [v77 effectName];
          v69 = sub_19166B748();
          v71 = v70;

          LOBYTE(v68) = [v77 enabled];
          v72 = type metadata accessor for AudioEffectConfiguration(0);
          v73 = (a2 + v72[5]);
          *v73 = v69;
          v73[1] = v71;
          *(a2 + v72[6]) = v75;
          *(a2 + v72[8]) = v68;
          *(a2 + v72[7]) = v46;
          (*(*(v72 - 1) + 56))(a2, 0, 1, v72);
          return 1;
        }

        v44 = *(v41 + 8 * v48);
        ++v39;
        if (v44)
        {
          while (1)
          {
            v49 = __clz(__rbit64(v44)) | (v48 << 6);
            v50 = (*(v78 + 48) + 16 * v49);
            v52 = *v50;
            v51 = v50[1];
            v53 = *(*(v78 + 56) + 8 * v49);

            v54 = v53;
            v80 = [v54 unsignedIntValue];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = sub_1915DB0E4(v52, v51);
            v58 = v46[2];
            v59 = (v57 & 1) == 0;
            v29 = __OFADD__(v58, v59);
            v60 = v58 + v59;
            if (v29)
            {
              goto LABEL_44;
            }

            v61 = v57;
            if (v46[3] >= v60)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v66 = v56;
                sub_19164820C();
                v56 = v66;
              }
            }

            else
            {
              sub_191645E68(v60, isUniquelyReferenced_nonNull_native);
              v56 = sub_1915DB0E4(v52, v51);
              if ((v61 & 1) != (v62 & 1))
              {
                goto LABEL_47;
              }
            }

            v44 &= v44 - 1;
            if (v61)
            {
              v47 = v56;

              *(v46[7] + 4 * v47) = v80;

              v39 = v48;
              if (!v44)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v46[(v56 >> 6) + 8] |= 1 << v56;
              v63 = (v46[6] + 16 * v56);
              *v63 = v52;
              v63[1] = v51;
              *(v46[7] + 4 * v56) = v80;

              v64 = v46[2];
              v29 = __OFADD__(v64, 1);
              v65 = v64 + 1;
              if (v29)
              {
                goto LABEL_46;
              }

              v46[2] = v65;
              v39 = v48;
              if (!v44)
              {
                goto LABEL_27;
              }
            }

LABEL_26:
            v48 = v39;
          }
        }
      }
    }

    v10 = *(v7 + 8 * v15);
    ++v5;
  }

  while (!v10);
  v14 = v12;
  while (1)
  {
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = (*(v79 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v79 + 56) + 8 * v16);

    v21 = v20;
    [v21 floatValue];
    v23 = v22;
    v12 = v14;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v12;
    v25 = sub_1915DB0E4(v19, v18);
    v27 = v12[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v12[3] >= v30)
    {
      if ((v24 & 1) == 0)
      {
        v36 = v25;
        sub_191648374();
        v25 = v36;
      }
    }

    else
    {
      sub_191646108(v30, v24);
      v25 = sub_1915DB0E4(v19, v18);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_47;
      }
    }

    v10 &= v10 - 1;
    if (v31)
    {
      v13 = v25;

      *(v81[7] + 4 * v13) = v23;
      v12 = v81;

      v5 = v15;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v12[6] + 16 * v25);
      *v33 = v19;
      v33[1] = v18;
      *(v12[7] + 4 * v25) = v23;

      v34 = v12[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_45;
      }

      v12[2] = v35;
      v5 = v15;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v14 = v12;
    v15 = v5;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t sub_1916492A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0238, &qword_191675130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191649318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1916493CC()
{
  result = qword_1EADAE9E0;
  if (!qword_1EADAE9E0)
  {
    sub_19166B1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE9E0);
  }

  return result;
}

uint64_t AccessibilityFeatureFlags.enabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for AccessibilityFeatureFlags;
  v4[4] = sub_19159DF0C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_19166B458();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

AXCoreUtilities::AccessibilityFeatureFlags_optional __swiftcall AccessibilityFeatureFlags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19166C6B8();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AccessibilityFeatureFlags.rawValue.getter()
{
  result = 0x6F72687473736170;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7361507473657567;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x726F6D646174;
      break;
    case 0xA:
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD00000000000001DLL;
      break;
    case 0xE:
    case 0x13:
      result = 0xD00000000000001BLL;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    case 0x10:
      result = 0x7865547265766F68;
      break;
    case 0x11:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD00000000000001ELL;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000022;
      break;
    case 0x16:
      result = 0xD000000000000013;
      break;
    case 0x17:
      result = 0xD000000000000013;
      break;
    case 0x18:
      result = 0x7461446563696F76;
      break;
    default:
      result = 0xD000000000000025;
      break;
  }

  return result;
}

uint64_t sub_1916498C4()
{
  v0 = AccessibilityFeatureFlags.rawValue.getter();
  v2 = v1;
  if (v0 == AccessibilityFeatureFlags.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19166C5E8();
  }

  return v5 & 1;
}

unint64_t sub_191649964()
{
  result = qword_1EADB0310;
  if (!qword_1EADB0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0310);
  }

  return result;
}

uint64_t sub_1916499B8()
{
  sub_19166C778();
  AccessibilityFeatureFlags.rawValue.getter();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_191649A20(uint64_t a1)
{
  AccessibilityFeatureFlags.rawValue.getter();
  sub_19166B828();
}

uint64_t sub_191649A84(uint64_t a1)
{
  sub_19166C778();
  AccessibilityFeatureFlags.rawValue.getter();
  sub_19166B828();

  return sub_19166C7B8();
}

unint64_t sub_191649AF4@<X0>(unint64_t *a1@<X8>)
{
  result = AccessibilityFeatureFlags.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191649C6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_191649CB0(a1, a2);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = *&v2[24 * v3 + 8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

char *sub_191649CB0(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 32))(a1);

  sub_19164A1E4(&v3);

  return v3;
}

uint64_t sub_191649D5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 8) = sub_19164A164;
  *(a2 + 16) = v5;
  return result;
}

uint64_t AXMigration.migrate.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AXMigration.migrate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AXMigration.init(version:migrate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AXCodingError.hashValue.getter()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

unint64_t sub_191649EEC()
{
  result = qword_1EADB0338;
  if (!qword_1EADB0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0338);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_191649F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_191649FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXCodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXCodingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_19164A164(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6 = a1;
  result = v3(&v5, &v6);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_19164A1AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_19164A1E4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19164AB54(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_19166C3B8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19166BA38();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_19164A33C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19164A33C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_19164AB40(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_19164A904((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *(v23 - 24);
            v22[2] = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1915F46A4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1915F46A4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_19164A904((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_19164A904(char *__dst, char *__src, unint64_t a3, char *a4)
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
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
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

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_19164AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v11 = sub_19166B648();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = &v11;
  sub_19164AE00(sub_19164B668, v10, v8, a3, a4, a5);
  return v11;
}

void sub_19164ABF4(void (*a1)(char *), uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  outCount = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = class_copyIvarList(ObjCClassFromMetadata, &outCount);
  if (v8)
  {
    v9 = v8;
    v26 = a4;
    v10 = sub_19164B180();
    v11 = v10;
    v12 = outCount;
    if (outCount)
    {
      v13 = 0;
      v14 = v10 + 56;
      do
      {
        v15 = v9[v13];
        if (ivar_getName(v15))
        {
          v16 = sub_19166B878();
          v18 = v17;
          if (*(v11 + 16))
          {
            v19 = v16;
            sub_19166C778();
            sub_19166B828();
            v20 = sub_19166C7B8();
            v21 = -1 << *(v11 + 32);
            v22 = v20 & ~v21;
            if ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (1)
              {
                v24 = (*(v11 + 48) + 16 * v22);
                v25 = *v24 == v19 && v24[1] == v18;
                if (v25 || (sub_19166C5E8() & 1) != 0)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              goto LABEL_5;
            }
          }

LABEL_16:
        }

        if (object_getIvar(v31, v15))
        {
          sub_19166BFC8();
          swift_unknownObjectRelease();
          sub_1915E4370(&v34, v33);
          sub_19164B34C(a1, a2, v33, a3 & 1, v26, a5);
          __swift_destroy_boxed_opaque_existential_1(v33);
        }

LABEL_5:
        ++v13;
      }

      while (v13 != v12);
    }

    free(v9);
  }
}

void sub_19164AE00(void (*a1)(char *), uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v28 = a2;
  v29 = a5;
  v10 = sub_19166C7E8();
  v27 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = *(v15 + 16);
  v18(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0350, &qword_191675468);
  if (swift_dynamicCast())
  {
    v19 = v32;
    ObjectType = swift_getObjectType();
    sub_19164ABF4(a1, v28, a3 & 1, ObjectType, v29, *(&v19 + 1));
  }

  else
  {
    v25 = v10;
    *(&v33 + 1) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
    v18(boxed_opaque_existential_0, v6, a4);
    sub_19166C7C8();
    v24 = v14;
    sub_19166C7D8();
    sub_19166C1D8();

    sub_19166C258();
    v23 = v28;
    v22 = v29;
    while (v34)
    {
      v30 = v32;
      sub_1915E4370(&v33, v31);
      sub_19164B34C(a1, v23, v31, a3 & 1, a4, v22);
      sub_19159E780(&v30, &qword_1EADB0358, &unk_191675470);
      sub_19166C258();
    }

    (*(v27 + 8))(v24, v25);
  }
}

uint64_t sub_19164B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19166BA68();
  return sub_19166BA48();
}

uint64_t sub_19164B180()
{
  v24 = *MEMORY[0x1E69E9840];
  outCount = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = class_copyPropertyList(ObjCClassFromMetadata, &outCount);
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CD0];
    v3 = outCount;
    if (outCount)
    {
      v19 = v1;
      v4 = v1;
      do
      {
        if (property_getAttributes(*v4))
        {
          v5 = sub_19166B878();
          v7 = v6;
          v20 = v5;
          v21 = v6;
          sub_1915E5F84();
          if (sub_19166BFA8())
          {
            v20 = v5;
            v21 = v7;
            sub_19164B614();
            v8 = sub_19166BD18();

            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = (v8 + 32 * v9);
              v11 = *v10;
              v12 = v10[1];
              v13 = v10[2];
              v14 = v10[3];

              v15 = MEMORY[0x193AFC690](v11, v12, v13, v14);
              v17 = v16;

              sub_1915F5AA4(&v20, v15, v17);
            }
          }
        }

        ++v4;
        --v3;
      }

      while (v3);
      v2 = v22;
      v1 = v19;
    }

    free(v1);
  }

  return v2;
}

uint64_t sub_19164B34C(void (*a1)(char *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_19166BF58();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v26 - v15;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14, v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(a3, v29);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, a6);
    (*(v17 + 32))(v20, v16, a6);
    a1(v20);
    result = (*(v17 + 8))(v20, a6);
    if ((a4 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v22(v16, 1, 1, a6);
    result = (*(v12 + 8))(v16, v11);
    if ((a4 & 1) == 0)
    {
      return result;
    }
  }

  sub_1915DFD18(a3, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0340, &unk_191676040);
  if (swift_dynamicCast())
  {
    sub_1915A04D0(v26, v29);
    v24 = v30;
    v25 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_19164AE00(a1, a2, 1, v24, a6, v25);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    return sub_19159E780(v26, &qword_1EADB0348, &unk_191676050);
  }
}

unint64_t sub_19164B614()
{
  result = qword_1ED5A81F8;
  if (!qword_1ED5A81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5A81F8);
  }

  return result;
}

void *AXMigratingDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(v1);
  v0[4] = 0xC000000000000000;
  return v0;
}

unint64_t sub_19164B6C0(void *a1, unint64_t a2)
{
  v2 = sub_1915EC548(a1, a2);
  v3 = v2;
  if ((v2 >> 62) >= 2)
  {
    if (v2 >> 62 == 2)
    {
      sub_1915E1F90((v2 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v3 = sub_19164BF68(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v3 & 1;
}

uint64_t sub_19164B7CC(void *a1, unint64_t a2)
{
  v2 = sub_1915EC548(a1, a2);
  v3 = v2;
  if ((v2 >> 62) >= 2)
  {
    if (v2 >> 62 == 2)
    {
      sub_1915E1F90((v2 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v3 = sub_19164C204(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v3;
}

double sub_19164B8E0(void *a1, unint64_t a2)
{
  v3 = sub_1915EC548(a1, a2);
  if ((v3 >> 62) >= 2)
  {
    if (v3 >> 62 == 2)
    {
      sub_1915E1F90((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v2 = sub_19164C4E4(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v2;
}

float sub_19164B9F4(void *a1, unint64_t a2)
{
  v3 = sub_1915EC548(a1, a2);
  if ((v3 >> 62) >= 2)
  {
    if (v3 >> 62 == 2)
    {
      sub_1915E1F90((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v2 = sub_19164C7F8(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_19164BB08(void *a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1915EC548(a1, a2);
  v5 = v4;
  if ((v4 >> 62) >= 2)
  {
    if (v4 >> 62 == 2)
    {
      sub_1915E1F90((v4 & 0x3FFFFFFFFFFFFFFFLL) + 16, v10);
      sub_19166C038();
      v5 = a3(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915E0AF8(v10);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19164BC1C(void *a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1915EC548(a1, a2);
  v5 = v4;
  if ((v4 >> 62) >= 2)
  {
    if (v4 >> 62 == 2)
    {
      sub_1915E1F90((v4 & 0x3FFFFFFFFFFFFFFFLL) + 16, v10);
      sub_19166C038();
      v5 = a3(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915E0AF8(v10);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19164BD30(void *a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1915EC548(a1, a2);
  v5 = v4;
  if ((v4 >> 62) >= 2)
  {
    if (v4 >> 62 == 2)
    {
      sub_1915E1F90((v4 & 0x3FFFFFFFFFFFFFFFLL) + 16, v10);
      sub_19166C038();
      v5 = a3(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915E0AF8(v10);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19164BE44(void *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = sub_1915EC548(a1, a2);
  v7 = v6;
  if ((v6 >> 62) >= 2)
  {
    if (v6 >> 62 == 2)
    {
      sub_1915E1F90((v6 & 0x3FFFFFFFFFFFFFFFLL) + 16, v12);
      sub_19166C038();
      v7 = a4(v11, a3);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_1915E0AF8(v12);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v9 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_19164BF68(uint64_t a1)
{
  sub_1915DFD18(a1, v5);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    v1 = v4[0];
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast() && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
    {
      swift_dynamicCast();
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_1915DCC64();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }

  return v1 & 1;
}

uint64_t sub_19164C204(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    v1 = v5;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    sub_1915A04D0(&v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v1 = sub_19166C3C8();
    __swift_destroy_boxed_opaque_existential_1(v4);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast() && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
  {
    swift_dynamicCast();
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1915DCC64();
  swift_allocError();
  *v2 = 3;
  swift_willThrow();
  return v1;
}

double sub_19164C4E4(uint64_t a1)
{
  sub_1915DFD18(a1, v7);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    if (swift_dynamicCast())
    {
      goto LABEL_6;
    }

    if (swift_dynamicCast())
    {
      v1 = SLOBYTE(v6[0]);
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
      v2.i16[0] = LOWORD(v6[0]);
      v1 = vmovl_s16(v2).i32[0];
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
      v1 = SLODWORD(v6[0]);
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
LABEL_6:
      v1 = *&v6[0];
      goto LABEL_23;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      if (swift_dynamicCast())
      {
        LOBYTE(v3) = LOBYTE(v6[0]);
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        LOWORD(v3) = LOWORD(v6[0]);
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        LODWORD(v3) = LODWORD(v6[0]);
        goto LABEL_22;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          if (swift_dynamicCast())
          {
            v1 = *v6;
            goto LABEL_23;
          }

          if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(v7);
            sub_1915DCC64();
            swift_allocError();
            *v5 = 3;
            swift_willThrow();
            return v1;
          }
        }

        goto LABEL_2;
      }
    }

    v3 = *&v6[0];
LABEL_22:
    v1 = v3;
    goto LABEL_23;
  }

LABEL_2:
  v1 = v6[0];
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v1;
}

float sub_19164C7F8(uint64_t a1)
{
  sub_1915DFD18(a1, v9);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  if (swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v2.i8[0] = LOBYTE(v8[0]);
    v1 = vmovl_s16(*&vmovl_s8(v2)).i32[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v3.i16[0] = LOWORD(v8[0]);
    v1 = vmovl_s16(v3).i32[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v1 = SLODWORD(v8[0]);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
LABEL_6:
    v1 = *&v8[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v4) = LOBYTE(v8[0]);
    v1 = v4;
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    LOWORD(v5) = LOWORD(v8[0]);
    v1 = v5;
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v1 = LODWORD(v8[0]);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
LABEL_15:
    v1 = *&v8[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
LABEL_24:
    v1 = v8[0];
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915DCC64();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();
      return v1;
    }

    goto LABEL_24;
  }

LABEL_2:
  v1 = *v8;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

uint64_t sub_19164CB18(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if (swift_dynamicCast())
    {
LABEL_2:
      v1 = LOBYTE(v5[0]);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v6);
      return v1;
    }

    if (swift_dynamicCast())
    {
      v1 = SLOWORD(v5[0]);
      if (v1 < -128)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v1 <= 127)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    result = swift_dynamicCast();
    if (result)
    {
      v1 = LODWORD(v5[0]);
      if (SLODWORD(v5[0]) < -128)
      {
        __break(1u);
        goto LABEL_63;
      }

      if (SLODWORD(v5[0]) <= 127)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
LABEL_23:
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        if (swift_dynamicCast())
        {
          v1 = SLOBYTE(v5[0]);
          if ((v1 & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        if (swift_dynamicCast())
        {
          v1 = LOWORD(v5[0]);
          if (LOWORD(v5[0]) <= 0x7Fu)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        if (swift_dynamicCast())
        {
          v1 = LODWORD(v5[0]);
          if (LODWORD(v5[0]) <= 0x7F)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        if (swift_dynamicCast())
        {
          v1 = *&v5[0];
          if (*&v5[0] <= 0x7FuLL)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          result = swift_dynamicCast();
          if ((result & 1) == 0)
          {
            goto LABEL_50;
          }

          if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (*v5 > -129.0)
            {
              if (*v5 < 128.0)
              {
                v1 = *v5;
                goto LABEL_8;
              }

              goto LABEL_70;
            }

LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v3 = v5[0];
        if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v5[0] > -129.0)
          {
            if (v5[0] < 128.0)
            {
              goto LABEL_42;
            }

            goto LABEL_67;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v1 = *&v5[0];
      if (*&v5[0] <= 0x7FuLL)
      {
        goto LABEL_8;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v1 = *&v5[0];
    if (*&v5[0] >= -128)
    {
      if (*&v5[0] <= 127)
      {
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v1 = *&v5[0];
  if (*&v5[0] < -128)
  {
    __break(1u);
  }

  else if (*&v5[0] <= 127)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_50:
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_55;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_71;
  }

  if (v5[0] <= -129.0)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v5[0] < 128.0)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_55:
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_61:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_73;
  }

  if (v5[0] > -129.0)
  {
    if (v5[0] >= 128.0)
    {
      __break(1u);
      goto LABEL_60;
    }

LABEL_42:
    v1 = v3;
    goto LABEL_8;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_19164CFA4(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LOWORD(v5[0]);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (*&v5[0] < -32768)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (*&v5[0] < 0x8000)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  result = swift_dynamicCast();
  if (result)
  {
    *&v1 = LODWORD(v5[0]);
    if (SLODWORD(v5[0]) < -32768)
    {
      __break(1u);
      goto LABEL_59;
    }

    if (SLODWORD(v5[0]) < 0x8000)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (*&v5[0] >= -32768)
    {
      if (*&v5[0] < 0x8000)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_22:
  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 15))
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if (!(LODWORD(v5[0]) >> 15))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 15))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v5[0] <= -32769.0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v5[0] >= 32768.0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_40:
    *&v1 = v3;
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -32769.0)
      {
        if (*v5 < 32768.0)
        {
          *&v1 = *v5;
          goto LABEL_11;
        }

        goto LABEL_66;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_47:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v5[0] <= -32769.0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v5[0] < 32768.0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_57:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v5[0] > -32769.0)
  {
    if (v5[0] < 32768.0)
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
  return result;
}