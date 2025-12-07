uint64_t sub_26F745ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F745B7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F745C38(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x2821FE8E8](v8, 24, 7);
}

uint64_t sub_26F745C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF5E8, &unk_26F77BB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_26F779188();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26F745DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF5E8, &unk_26F77BB10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_26F779188();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_26F745EFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF5E8, &unk_26F77BB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26F779198();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_26F779188();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26F74607C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF5E8, &unk_26F77BB10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_26F779198();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = sub_26F779188();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_26F74620C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26F74624C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F7462AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F7790C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26F746374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F7790C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_26F74642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26F7464E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26F74659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F74665C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_26F74679C(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1934381653;
  v4 = 0x800000026F77E840;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x62616E455F534352;
    v4 = 0xEB0000000064656CLL;
  }

  if (*v1)
  {
    v3 = 0x62616E455F534D53;
    v2 = 0xEB0000000064656CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_26F746810()
{
  v1 = 1934381653;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x62616E455F534352;
  }

  if (*v0)
  {
    v1 = 0x62616E455F534D53;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F746908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F7469C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F746A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F779188();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F746AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F779188();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26F746B60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F746BA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v1 = sub_26F779318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26F746C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v1 = sub_26F779318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26F746D98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F746DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26F779008();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F746E80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F779008();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
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

uint64_t sub_26F746F60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE4 && *(a1 + 17))
  {
    return (*a1 + 228);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x1C)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F746FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE3)
  {
    *(result + 16) = 0;
    *result = a2 - 228;
    *(result + 8) = 0;
    if (a3 >= 0xE4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE4)
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

unint64_t sub_26F747008()
{
  result = qword_2806EF2D0;
  if (!qword_2806EF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF2D0);
  }

  return result;
}

unint64_t sub_26F74705C(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x4964696C61766E69;
  switch(a3)
  {
    case 1:
      result = 0x466B726F7774656ELL;
      break;
    case 2:
      result = 0x6F6974617265706FLL;
      break;
    case 3:
      result = 0x74694B64756F6C63;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 12:
      result = 0xD000000000000018;
      break;
    case 9:
    case 17:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x64726F6365526B63;
      break;
    case 11:
      result = 0x61466574696C7173;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x4465727574616566;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD00000000000001ALL;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 27:
      result = 0xD000000000000021;
      break;
    case 25:
    case 26:
      result = 0xD000000000000020;
      break;
    case 28:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26F74738C(uint64_t a1)
{
  v2 = sub_26F747540();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26F7473C8(uint64_t a1)
{
  v2 = sub_26F747540();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26F74740C()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_26F747474()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF2E0, &qword_26F77A560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F77A180;
  *(inited + 32) = 0x736544726F727265;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000063;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_26F747648(v1, v2, v3);
  v5 = sub_26F769148(inited);
  swift_setDeallocating();
  sub_26F747660(inited + 32);
  return v5;
}

unint64_t sub_26F747540()
{
  result = qword_2806EF2D8;
  if (!qword_2806EF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF2D8);
  }

  return result;
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

BOOL sub_26F7475F0(void *a1, uint64_t *a2)
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

uint64_t sub_26F747648(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Cu)
  {
  }

  return result;
}

uint64_t sub_26F747660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF2E8, &qword_26F77A568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26F747704(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_26F747774()
{
  v1 = *v0;
  sub_26F779848();
  MEMORY[0x2743957F0](v1);
  return sub_26F779888();
}

uint64_t sub_26F7477E8(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  MEMORY[0x2743957F0](v2);
  return sub_26F779888();
}

uint64_t sub_26F74782C()
{
  v1 = OBJC_IVAR____TtC8TrustKit30LogicGraphDecisioningComponent_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26F7478F0(uint64_t a1)
{
  result = sub_26F779188();
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

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F7479A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_26F7479EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F747A8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F747AC4(uint64_t a1)
{
  type metadata accessor for SpamDecisioningAsset(319);
  if (v1 <= 0x3F)
  {
    sub_26F747B58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F747B58(uint64_t a1)
{
  if (!qword_2806EF330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF338, &qword_26F77A6A8);
    v1 = sub_26F779218();
    if (!v2)
    {
      atomic_store(v1, &qword_2806EF330);
    }
  }
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

uint64_t getEnumTagSinglePayload for LogicGraphDecisioningComponent.ProcessingType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LogicGraphDecisioningComponent.ProcessingType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F747D84()
{
  result = qword_2806EF340;
  if (!qword_2806EF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF340);
  }

  return result;
}

uint64_t sub_26F747DEC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F747F04;

  return v7(a1, a2);
}

uint64_t sub_26F747F04(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_26F748000(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F748118;

  return v7(a1, a2);
}

uint64_t sub_26F748118()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F74820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26F7486D8;

  return v9(a1, a2, a3);
}

uint64_t sub_26F748334(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F7486DC;

  return v7(a1, a2);
}

uint64_t sub_26F74844C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F7486DC;

  return v7(a1, a2);
}

uint64_t sub_26F748564()
{
  v1 = OBJC_IVAR____TtC8TrustKit25BackgroundActivityManager_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for BackgroundActivityManager(uint64_t a1)
{
  result = qword_2806EF350;
  if (!qword_2806EF350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F748630(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F7486E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26F779188();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26F7487B4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_26F748878()
{
  sub_26F7487B4();

  return swift_deallocClassInstance();
}

uint64_t sub_26F748920()
{
  sub_26F779848();
  MEMORY[0x2743957F0](0);
  return sub_26F779888();
}

uint64_t sub_26F74898C(uint64_t a1)
{
  sub_26F779848();
  MEMORY[0x2743957F0](0);
  return sub_26F779888();
}

void sub_26F7489E8(void *a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_26F779748();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_26F748A90(uint64_t a1)
{
  v2 = sub_26F748E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F748ACC(uint64_t a1)
{
  v2 = sub_26F748E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F748B08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF3F8, &qword_26F77A920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F748E68();
  sub_26F779898();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_26F779668();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_26F748C84()
{
  v1 = OBJC_IVAR____TtC8TrustKit12KeyOperation_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyOperation(uint64_t a1)
{
  result = qword_2806EF3E8;
  if (!qword_2806EF3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26F748D80(uint64_t a1, int a2)
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

uint64_t sub_26F748DC8(uint64_t result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26F748E68()
{
  result = qword_2806EF400;
  if (!qword_2806EF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF400);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningInput.MessageType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningInput.MessageType(_WORD *result, int a2, int a3)
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

unint64_t sub_26F748FF4()
{
  result = qword_2806EF408;
  if (!qword_2806EF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF408);
  }

  return result;
}

unint64_t sub_26F74904C()
{
  result = qword_2806EF410;
  if (!qword_2806EF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF410);
  }

  return result;
}

unint64_t sub_26F7490A4()
{
  result = qword_2806EF418;
  if (!qword_2806EF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF418);
  }

  return result;
}

uint64_t sub_26F7490F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF438, &qword_26F77ABE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7496A0();
  sub_26F7798A8();
  v8[15] = 0;
  sub_26F7796E8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26F7796E8();
  v8[13] = 2;
  sub_26F7796E8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F7492AC()
{
  v1 = 0x4374726543616162;
  if (*v0 != 1)
  {
    v1 = 0x685374726F706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644964726F636572;
  }
}

uint64_t sub_26F749318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_26F7496F4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_26F74934C(uint64_t a1)
{
  v2 = sub_26F7496A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F749388(uint64_t a1)
{
  v2 = sub_26F7496A0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26F7493C4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26F749814(a2, v6);
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

uint64_t sub_26F749420()
{
  v1 = OBJC_IVAR____TtC8TrustKit15RecordOperation_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordOperation(uint64_t a1)
{
  result = qword_2806EF428;
  if (!qword_2806EF428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t sub_26F749524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26F74956C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_8TrustKit18AttestationManagerC0C0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_26F7495FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26F749644(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_26F7496A0()
{
  result = qword_2806EF440;
  if (!qword_2806EF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF440);
  }

  return result;
}

uint64_t sub_26F7496F4(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x644964726F636572 && a2 == 0xE800000000000000;
  if (v10 || (sub_26F779748() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC0000006E696168;
    if (a1 == 0x4374726543616162 && a2 == 0xEC0000006E696168 || (sub_26F779748() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x685374726F706572 && a2 == 0xEC00000036353261)
    {
      0xEC00000036353261, 0xEC00000036353261, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_26F779748();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26F749814@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF448, &qword_26F77ABF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7496A0();
  sub_26F779898();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_26F779668();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_26F779668();
  v21 = v12;
  v23 = 2;
  v13 = sub_26F779668();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordOperation.ServerRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecordOperation.ServerRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F749BB4()
{
  result = qword_2806EF450;
  if (!qword_2806EF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF450);
  }

  return result;
}

unint64_t sub_26F749C0C()
{
  result = qword_2806EF458;
  if (!qword_2806EF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF458);
  }

  return result;
}

unint64_t sub_26F749C64()
{
  result = qword_2806EF460;
  if (!qword_2806EF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF460);
  }

  return result;
}

void *sub_26F749CB8()
{
  type metadata accessor for ReportOperation(0);
  v1 = swift_allocObject();
  type metadata accessor for AttestationManager(0);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26F756138();
  v3 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
  if (qword_2806EF298 != -1)
  {
    swift_once();
  }

  v4 = sub_26F779188();
  v5 = __swift_project_value_buffer(v4, qword_2806F4998);
  v6 = *(*(v4 - 8) + 16);
  v6(v2 + v3, v5, v4);
  if (!DeviceIdentityIsSupported())
  {

    v2 = 0;
  }

  *(v1 + 16) = v2;
  v7 = OBJC_IVAR____TtC8TrustKit15ReportOperation_logger;
  if (qword_2806EF2A0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2806F49B0);
  v6(v1 + v7, v8, v4);
  v0[2] = v1;
  v6(v0 + *(*v0 + 104), v8, v4);
  return v0;
}

uint64_t TKReportService.report(for:with:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 34) = *a1;
  return MEMORY[0x2822009F8](sub_26F749E80, 0, 0);
}

uint64_t sub_26F749E80(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 34))
  {
    v9 = sub_26F779748();
    0xE700000000000000, v10, v11, v12, v13, v14, v15, v16;
    if ((v9 & 1) == 0)
    {
      v17 = sub_26F7793D8();
      sub_26F756E10(v17, 0xD000000000000033, 0x800000026F77F1D0, 0xD000000000000058, 0x800000026F77F210, 26);
      goto LABEL_6;
    }
  }

  else
  {
    0xE400000000000000, a2, a3, a4, a5, a6, a7, a8;
  }

  sub_26F74A338(*(v8 + 40));
LABEL_6:
  v18 = *(*(v8 + 48) + 16);
  if (v18)
  {
    v19 = *(*(v8 + 48) + 16);
  }

  else
  {
    if (qword_2806EF258 != -1)
    {
      swift_once();
    }

    v19 = qword_2806EF470;
    v18 = 0;
  }

  *(v8 + 56) = v19;
  *(v8 + 33) = *(v8 + 34);
  v20 = v18;
  v21 = swift_task_alloc();
  *(v8 + 64) = v21;
  *v21 = v8;
  v21[1] = sub_26F74A088;
  v22 = *(v8 + 40);

  return sub_26F7518C0((v8 + 33), v22);
}

uint64_t sub_26F74A088()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F74A1CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26F74A1CC()
{
  v22 = v0;
  v19 = *(v0 + 72);
  v1 = sub_26F778FC8();
  sub_26F777B50(v1, 0xD000000000000018, 0x800000026F77F270, v20);

  v2 = v20[0];
  v3 = v20[1];
  v4 = v21;
  v5 = sub_26F7793D8();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  sub_26F74AEE0();
  v6 = sub_26F7797F8();
  v8 = v7;
  sub_26F756E10(v5, v6, v7, 0xD000000000000058, 0x800000026F77F210, 33);
  v8, v9, v10, v11, v12, v13, v14, v15;
  swift_allocError();
  *v16 = v2;
  *(v16 + 8) = v3;
  *(v16 + 16) = v4;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

void sub_26F74A338(uint64_t a1)
{
  if (!*(a1 + 16) || ((v2 = sub_26F768DE0(0x73656D2D6D617073, 0xED00007365676173), (v3 & 1) == 0) || (sub_26F74B0EC(*(a1 + 56) + 32 * v2, v57), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF4A8, &qword_26F77AE48), !swift_dynamicCast())) && (!*(a1 + 16) || (v11 = sub_26F768DE0(0x7373654D6D617073, 0xEC00000073656761), (v12 & 1) == 0) || (sub_26F74B0EC(*(a1 + 56) + 32 * v11, v57), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF4A8, &qword_26F77AE48), !swift_dynamicCast())))
  {
    v50 = sub_26F7793C8();
    v51 = 0x800000026F77F310;
    v52 = 0xD000000000000044;
    v53 = 0xD000000000000044;
    v54 = 0x800000026F77F310;
    v55 = 81;
LABEL_21:
    sub_26F756E10(v50, v53, v54, 0xD000000000000058, 0x800000026F77F210, v55);
    sub_26F74AEE0();
    swift_allocError();
    *v56 = v52;
    *(v56 + 8) = v51;
    *(v56 + 16) = 0;
    swift_willThrow();
    return;
  }

  v13 = v58;
  v14 = *v58->endpoint;
  if (!v14)
  {
LABEL_13:
    v13, v4, v5, v6, v7, v8, v9, v10;
    if (*(a1 + 16) && (v32 = sub_26F768DE0(0x692D74726F706572, 0xEB000000006F666ELL), (v33 & 1) != 0) && (sub_26F74B0EC(*(a1 + 56) + 32 * v32, v57), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF4B8, &qword_26F77AE50), (swift_dynamicCast() & 1) != 0))
    {
      v58, v34, v35, v36, v37, v38, v39, v40;
      if (*(a1 + 16))
      {
        v41 = sub_26F768DE0(0x692D746E65696C63, 0xEB000000006F666ELL);
        if (v42)
        {
          sub_26F74B0EC(*(a1 + 56) + 32 * v41, v57);
          if (swift_dynamicCast())
          {
            v58, v43, v44, v45, v46, v47, v48, v49;
            return;
          }
        }
      }

      v52 = 0xD000000000000033;
      v50 = sub_26F7793C8();
      v51 = 0x800000026F77F3C0;
      v53 = 0xD000000000000033;
      v54 = 0x800000026F77F3C0;
      v55 = 98;
    }

    else
    {
      v52 = 0xD000000000000033;
      v50 = sub_26F7793C8();
      v51 = 0x800000026F77F380;
      v53 = 0xD000000000000033;
      v54 = 0x800000026F77F380;
      v55 = 93;
    }

    goto LABEL_21;
  }

  v15 = 0;
  while (v15 < *v13->endpoint)
  {
    v16 = *&v13->$__lazy_storage_$_interface[8 * v15];
    if (!*v16->endpoint)
    {
      goto LABEL_24;
    }

    v17 = sub_26F768DE0(0x2D6567617373656DLL, 0xEC00000074786574);
    if ((v18 & 1) == 0)
    {
      v16, v18, v19, v20, v21, v22, v23, v24;
LABEL_24:
      v13, v4, v5, v6, v7, v8, v9, v10;
      memset(v57, 0, sizeof(v57));
      sub_26F74B148(v57);
      v50 = sub_26F7793C8();
      v51 = 0x800000026F77F360;
      v52 = 0xD000000000000019;
      v53 = 0xD000000000000019;
      v54 = 0x800000026F77F360;
      v55 = 87;
      goto LABEL_21;
    }

    ++v15;
    sub_26F74B0EC(*v16[1].endpoint + 32 * v17, v57);
    v16, v25, v26, v27, v28, v29, v30, v31;
    sub_26F74B148(v57);
    if (v14 == v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

TrustKit::TKReportService::TKReportType_optional __swiftcall TKReportService.TKReportType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_26F779618();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 3;
  if (v4 < 3)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

uint64_t TKReportService.TKReportType.rawValue.getter()
{
  v1 = 0x6B6E754A746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802401130;
  }
}

uint64_t sub_26F74A840(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x6B6E754A746F6ELL;
  if (v8 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1802401130;
  }

  if (v8)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = 0x6B6E754A746F6ELL;
  if (*a2 != 1)
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1802401130;
  }

  if (*a2)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_26F779748();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_26F74A93C()
{
  v1 = *v0;
  sub_26F779848();
  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  sub_26F779298();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_26F779888();
}

void sub_26F74A9D8(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  sub_26F779298();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_26F74AA60(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_26F779298();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_26F779888();
}

void sub_26F74AB04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x6B6E754A746F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1802401130;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_26F74AB5C()
{
  type metadata accessor for TKReportService(0);
  swift_allocObject();
  result = sub_26F74ABF8();
  qword_2806EF468 = result;
  return result;
}

uint64_t static TKReportService.shared.getter()
{
  if (qword_2806EF250 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26F74ABF8()
{
  v1 = v0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF4A0, &qword_26F77AE40);
  swift_allocObject();
  *(v0 + 24) = sub_26F749CB8();
  type metadata accessor for AttestationManager(0);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26F756138();
  v3 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
  if (qword_2806EF298 != -1)
  {
    swift_once();
  }

  v4 = sub_26F779188();
  v5 = __swift_project_value_buffer(v4, qword_2806F4998);
  v6 = *(*(v4 - 8) + 16);
  v6(v2 + v3, v5, v4);
  if (!DeviceIdentityIsSupported())
  {

    v2 = 0;
  }

  *(v1 + 32) = v2;
  v7 = OBJC_IVAR____TtC8TrustKit15TKReportService_logger;
  if (qword_2806EF280 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2806F4950);
  v6(v1 + v7, v8, v4);
  return v1;
}

uint64_t TKReportService.deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit15TKReportService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TKReportService.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit15TKReportService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_26F74AEA4()
{
  v0 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  result = sub_26F754794(0);
  qword_2806EF470 = result;
  return result;
}

unint64_t sub_26F74AEE0()
{
  result = qword_2806EF480;
  if (!qword_2806EF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF480);
  }

  return result;
}

unint64_t sub_26F74AF38()
{
  result = qword_2806EF488;
  if (!qword_2806EF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF488);
  }

  return result;
}

uint64_t type metadata accessor for TKReportService(uint64_t a1)
{
  result = qword_2806EF490;
  if (!qword_2806EF490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F74AFE0(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26F74B0EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F74B148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF4B0, &qword_26F77C2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F74B1B0(unsigned __int8 a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = swift_allocObject();
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = sub_26F7693B4(MEMORY[0x277D84F90]);
  }

  *(v6 + 16) = v7;
  sub_26F74BEC0(0, &qword_28141B158, 0x277CCABB0);
  v8 = qword_28141B580;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28141B5C8;
  v10 = unk_28141B5D0;
  v11 = sub_26F76A884();
  sub_26F74BD78(v9, v10, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_26F779408();
  v20 = *(v6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v20;
  *(v6 + 16) = 0x8000000000000000;
  sub_26F7625DC(v19, 0xD000000000000014, 0x800000026F77F450, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = aBlock;
  if (v5 <= 1)
  {
    if (v5)
    {
      v22 = 0xEE006572756C6961;
    }

    else
    {
      v22 = 0xEC0000007475706ELL;
    }

    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v22 = 0xEF64656C6961466ELL;
    goto LABEL_14;
  }

  if (v5 == 3)
  {
    v22 = 0x800000026F77F540;
LABEL_14:
    v23 = sub_26F779238();
    v22, v24, v25, v26, v27, v28, v29, v30;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_15:
  sub_26F75FD10(v23, 0x726F727265, 0xE500000000000000);
  if (qword_28141B570 != -1)
  {
    swift_once();
  }

  if (qword_28141B578 && (v31 = qword_28141B578, v32 = sub_26F779238(), v33 = [v31 BOOLForKey_], v31, v32, (v33 & 1) != 0))
  {
    v34 = sub_26F7793B8();
    sub_26F756E10(v34, 0xD000000000000013, 0x800000026F77F520, 0xD00000000000005BLL, 0x800000026F77F4C0, 35);
    v35 = 0;
  }

  else
  {
    v36 = "sResult";
    v37 = "it.orca.fetchEncryptionKey";
    v38 = "com.apple.trustkit.orca.upload";
    if (a1 != 3)
    {
      v38 = "it.decisioning.prepare";
    }

    if (a1 != 2)
    {
      v37 = v38;
    }

    if (a1)
    {
      v36 = "it.orca.createRecord";
    }

    if (a1 <= 1u)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    v40 = sub_26F779238();
    (v39 | 0x8000000000000000), v41, v42, v43, v44, v45, v46, v47;
    v105 = sub_26F74BE70;
    v106 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v102 = 1107296256;
    v103 = sub_26F74B80C;
    v104 = &block_descriptor;
    v48 = _Block_copy(&aBlock);

    v35 = AnalyticsSendEventLazy();
    _Block_release(v48);
  }

  v49 = sub_26F7793B8();
  aBlock = 0;
  v102 = 0xE000000000000000;
  sub_26F7794F8();
  v99 = aBlock;
  v100 = v102;
  MEMORY[0x274395240](0xD00000000000002FLL, 0x800000026F77F490);
  if (v35)
  {
    v50 = 1702195828;
  }

  else
  {
    v50 = 0x65736C6166;
  }

  if (v35)
  {
    v51 = 0xE400000000000000;
  }

  else
  {
    v51 = 0xE500000000000000;
  }

  MEMORY[0x274395240](v50, v51);
  v51, v52, v53, v54, v55, v56, v57, v58;
  MEMORY[0x274395240](0x3D746E657665202CLL, 0xE800000000000000);
  v59 = 0xD000000000000024;
  v60 = "sResult";
  v61 = "it.orca.fetchEncryptionKey";
  v62 = "com.apple.trustkit.orca.upload";
  v63 = 0xD000000000000026;
  if (a1 != 3)
  {
    v63 = 0xD000000000000028;
    v62 = "it.decisioning.prepare";
  }

  if (a1 == 2)
  {
    v63 = 0xD00000000000001ELL;
  }

  else
  {
    v61 = v62;
  }

  if (a1)
  {
    v59 = 0xD00000000000002ALL;
    v60 = "it.orca.createRecord";
  }

  if (a1 <= 1u)
  {
    v64 = v59;
  }

  else
  {
    v64 = v63;
  }

  if (a1 <= 1u)
  {
    v65 = v60;
  }

  else
  {
    v65 = v61;
  }

  MEMORY[0x274395240](v64, v65 | 0x8000000000000000);
  (v65 | 0x8000000000000000), v66, v67, v68, v69, v70, v71, v72;
  MEMORY[0x274395240](0x616F6C796170202CLL, 0xEA00000000003D64);
  swift_beginAccess();
  v73 = *(v6 + 16);
  sub_26F74BEC0(0, &qword_28141B150, 0x277D82BB8);

  v74 = sub_26F779208();
  v76 = v75;
  v73, v75, v77, v78, v79, v80, v81, v82;
  MEMORY[0x274395240](v74, v76);
  v76, v83, v84, v85, v86, v87, v88, v89;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v49, v99, v100, 0xD00000000000005BLL, 0x800000026F77F4C0, 39);
  v100, v90, v91, v92, v93, v94, v95, v96;
  v97 = *(v6 + 16);

  return v97;
}

id sub_26F74B80C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_26F74BEC0(0, &qword_28141B150, 0x277D82BB8);
    v4 = sub_26F7791D8();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_26F74B8B4()
{
  v1 = *v0;
  sub_26F779848();
  v2 = "sResult";
  v3 = "it.orca.fetchEncryptionKey";
  v4 = "com.apple.trustkit.orca.upload";
  if (v1 != 3)
  {
    v4 = "it.decisioning.prepare";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = "it.orca.createRecord";
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_26F779298();
  (v5 | 0x8000000000000000), v6, v7, v8, v9, v10, v11, v12;
  return sub_26F779888();
}

void sub_26F74B988(uint64_t a1)
{
  v2 = *v1;
  v3 = "it.orca.fetchEncryptionKey";
  v4 = "com.apple.trustkit.orca.upload";
  if (v2 != 3)
  {
    v4 = "it.decisioning.prepare";
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v1)
  {
    v5 = "it.orca.createRecord";
  }

  else
  {
    v5 = "sResult";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  sub_26F779298();

  (v6 | 0x8000000000000000), v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_26F74BA48(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = "sResult";
  v4 = "it.orca.fetchEncryptionKey";
  v5 = "com.apple.trustkit.orca.upload";
  if (v2 != 3)
  {
    v5 = "it.decisioning.prepare";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = "it.orca.createRecord";
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_26F779298();
  (v6 | 0x8000000000000000), v7, v8, v9, v10, v11, v12, v13;
  return sub_26F779888();
}

unint64_t sub_26F74BB18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F74C0B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F74BB48(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "it.orca.fetchEncryptionKey";
  v4 = "com.apple.trustkit.orca.upload";
  v5 = 0xD000000000000026;
  if (v2 != 3)
  {
    v5 = 0xD000000000000028;
    v4 = "it.decisioning.prepare";
  }

  if (v2 == 2)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = v4;
  }

  v6 = 0xD00000000000002ALL;
  if (*v1)
  {
    v7 = "it.orca.createRecord";
  }

  else
  {
    v6 = 0xD000000000000024;
    v7 = "sResult";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v5;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t sub_26F74BBDC()
{
  v1 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClientAnalyticsManager(uint64_t a1)
{
  result = qword_28141B210;
  if (!qword_28141B210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F74BCDC(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F74BD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26F779848();
  sub_26F779298();
  v6 = sub_26F779888();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26F779748() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F74BEC0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t getEnumTagSinglePayload for ClientAnalyticsManager.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClientAnalyticsManager.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F74C05C()
{
  result = qword_2806EF4C0;
  if (!qword_2806EF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF4C0);
  }

  return result;
}

unint64_t sub_26F74C0B0(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F74C0FC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F748118;

  return v7(a1, a2);
}

uint64_t sub_26F74C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26F7486D8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26F74C35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26F7486D8;

  return v9(a1, a2, a3);
}

uint64_t sub_26F74C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26F7486D8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26F74C5B8()
{
  sub_26F779848();
  sub_26F779298();
  return sub_26F779888();
}

uint64_t sub_26F74C614(uint64_t a1)
{
  sub_26F779848();
  sub_26F779298();
  return sub_26F779888();
}

void sub_26F74C65C(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_26F779618();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

uint64_t sub_26F74C6C4(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE400000000000000;
  v10 = 1684104562;
  if (v8 != 1)
  {
    v10 = 0x646579616C6564;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6C617669727261;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1684104562;
  if (*a2 != 1)
  {
    v14 = 0x646579616C6564;
    v13 = 0xE700000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6C617669727261;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_26F779748();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_26F74C7B8()
{
  v1 = *v0;
  sub_26F779848();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_26F779298();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_26F779888();
}

void sub_26F74C854(uint64_t a1)
{
  v2 = 0xE400000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_26F779298();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_26F74C8DC(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = 0xE400000000000000;
  if (v2 != 1)
  {
    v3 = 0xE700000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_26F779298();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

unint64_t sub_26F74C974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F74DE80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F74C9A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684104562;
  if (v2 != 1)
  {
    v5 = 0x646579616C6564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C617669727261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26F74C9FC()
{
  v1 = v0;
  v2 = 7104878;
  sub_26F7794F8();
  MEMORY[0x274395240](0x3D6E696769726FLL, 0xE700000000000000);
  MEMORY[0x274395240](v1[2], v1[3]);
  MEMORY[0x274395240](0x7265646E6573202CLL, 0xE90000000000003DLL);
  MEMORY[0x274395240](v1[4], v1[5]);
  MEMORY[0x274395240](0xD000000000000019, 0x800000026F77F690);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x274395240](v3, v4);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x274395240](0xD000000000000011, 0x800000026F77F6B0);
  v12 = sub_26F779738();
  v14 = v13;
  MEMORY[0x274395240](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x274395240](0xD000000000000011, 0x800000026F77F6D0);
  if (*(v0 + 96))
  {
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
  }

  else
  {
    v23 = 0xE300000000000000;
    v22 = 7104878;
  }

  MEMORY[0x274395240](v22, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x274395240](0x67617373656D202CLL, 0xEE003D6570795465);
  if (*(v0 + 104))
  {
    v31 = 7104878;
  }

  else
  {
    v31 = 7369839;
  }

  MEMORY[0x274395240](v31, 0xE300000000000000);
  0xE300000000000000, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x274395240](0xD000000000000010, 0x800000026F77F6F0);
  if (*(v0 + 105) > 1u)
  {
    if (*(v0 + 105) == 2)
    {
      v39 = 0xE700000000000000;
      v2 = 0x646579616C6564;
    }

    else
    {
      v39 = 0xE300000000000000;
    }
  }

  else if (*(v0 + 105))
  {
    v39 = 0xE400000000000000;
    v2 = 1684104562;
  }

  else
  {
    v39 = 0xE700000000000000;
    v2 = 0x6C617669727261;
  }

  MEMORY[0x274395240](v2, v39);
  v39, v40, v41, v42, v43, v44, v45, v46;
  return 0;
}

void sub_26F74CCA8(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_26F779868();
    sub_26F779298();
  }

  else
  {
    sub_26F779868();
  }

  sub_26F779298();
  sub_26F779298();
  sub_26F779298();
  if (*(v1 + 72))
  {
    sub_26F779868();
    sub_26F779298();
    v2 = *(v1 + 80);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_26F779868();
    if (*(v1 + 96))
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_26F779868();
    if (*(v1 + 104))
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  sub_26F779868();
  v2 = *(v1 + 80);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_26F779868();
  v3 = *(v2 + 16);
  MEMORY[0x2743957F0](v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;

      sub_26F779298();
      v5, v6, v7, v8, v9, v10, v11, v12;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  if (!*(v1 + 96))
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_26F779868();
  sub_26F779298();
  if (*(v1 + 104))
  {
LABEL_11:
    sub_26F779868();
    goto LABEL_16;
  }

LABEL_15:
  sub_26F779868();
  sub_26F779298();
LABEL_16:
  v13 = *(v1 + 105);
  if (v13 == 3)
  {
    sub_26F779868();
  }

  else
  {
    sub_26F779868();
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE700000000000000;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    sub_26F779298();

    v14, v15, v16, v17, v18, v19, v20, v21;
  }
}

uint64_t sub_26F74CEC4()
{
  sub_26F779848();
  sub_26F74CCA8(v1);
  return sub_26F779888();
}

uint64_t sub_26F74CF08(uint64_t a1)
{
  sub_26F779848();
  sub_26F74CCA8(v2);
  return sub_26F779888();
}

BOOL sub_26F74CF48(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1[5];
  v16[4] = a1[4];
  v17[0] = v8;
  *(v17 + 10) = *(a1 + 90);
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  v11 = a2[1];
  v18[0] = *a2;
  v18[1] = v11;
  v12 = a2[2];
  v13 = a2[3];
  *&v19[10] = *(a2 + 90);
  v14 = a2[5];
  v18[4] = a2[4];
  *v19 = v14;
  v18[2] = v12;
  v18[3] = v13;
  return sub_26F74D99C(v16, v18, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_26F74CFB4(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE700000000000000;
  v10 = 0x6D617053746F6ELL;
  if (v8 != 1)
  {
    v10 = 1852989815;
    v9 = 0xE400000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1835102323;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x6D617053746F6ELL;
  if (*a2 != 1)
  {
    v14 = 1852989815;
    v13 = 0xE400000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1835102323;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_26F779748();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_26F74D0A0()
{
  v1 = *v0;
  sub_26F779848();
  v2 = 0xE700000000000000;
  if (v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_26F779298();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_26F779888();
}

void sub_26F74D134(uint64_t a1)
{
  v2 = 0xE700000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  sub_26F779298();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_26F74D1B4(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = 0xE700000000000000;
  if (v2 != 1)
  {
    v3 = 0xE400000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  sub_26F779298();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

unint64_t sub_26F74D244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F74DECC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F74D274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6D617053746F6ELL;
  if (v2 != 1)
  {
    v5 = 1852989815;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835102323;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26F74D2C4(char a1, uint64_t a2)
{
  sub_26F7794F8();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0x6D617053746F6ELL;
    }

    else
    {
      v10 = 1852989815;
    }

    if (a1 == 1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    v10 = 1835102323;
  }

  MEMORY[0x274395240](v10, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x274395240](0x697369636564202CLL, 0xEF3D6F666E496E6FLL);
  v19 = sub_26F779208();
  v21 = v20;
  MEMORY[0x274395240](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  return 0x6E6F697369636564;
}

uint64_t sub_26F74D430()
{

  sub_26F74D700(v0 + OBJC_IVAR____TtC8TrustKit22SpamDecisioningManager_spamAsset);

  v1 = OBJC_IVAR____TtC8TrustKit22SpamDecisioningManager_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_26F74D4F8()
{
  sub_26F74D430();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpamDecisioningManager(uint64_t a1)
{
  result = qword_2806EF500;
  if (!qword_2806EF500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F74D5A4(uint64_t a1)
{
  sub_26F74D690(319);
  if (v1 <= 0x3F)
  {
    sub_26F779188();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F74D690(uint64_t a1)
{
  if (!qword_2806EF510)
  {
    type metadata accessor for SpamDecisioningAsset(255);
    v1 = sub_26F779428();
    if (!v2)
    {
      atomic_store(v1, &qword_2806EF510);
    }
  }
}

uint64_t sub_26F74D700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF518, &qword_26F77B070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F74D7A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_26F74D7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F74D85C()
{
  result = qword_2806EF520;
  if (!qword_2806EF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF520);
  }

  return result;
}

uint64_t sub_26F74D8B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26F779748() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26F74D940(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_26F74D99C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1[1];
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *a1 == *a2 && v10 == v11;
    if (!v12 && (sub_26F779748() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v13 && (sub_26F779748() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_26F779748() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (sub_26F779748() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[9];
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!v15 || (a1[8] != *(a2 + 64) || v14 != v15) && (sub_26F779748() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[10];
  v17 = *(a2 + 80);
  if (v16)
  {
    if (!v17 || (sub_26F74D8B0(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[12];
  v19 = *(a2 + 96);
  if (v18)
  {
    if (!v19 || (a1[11] != *(a2 + 88) || v18 != v19) && (sub_26F779748() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (a1[13])
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 104))
  {
    return 0;
  }

  v20 = *(a1 + 105);
  v21 = *(a2 + 105);
  if (v20 == 3)
  {
    return v21 == 3;
  }

  if (v21 == 3)
  {
    return 0;
  }

  v23 = 0x6C617669727261;
  if (*(a1 + 105))
  {
    if (v20 == 1)
    {
      v24 = 0xE400000000000000;
      v25 = 1684104562;
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x646579616C6564;
    }
  }

  else
  {
    v24 = 0xE700000000000000;
    v25 = 0x6C617669727261;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v26 = 0xE400000000000000;
      v23 = 1684104562;
    }

    else
    {
      v26 = 0xE700000000000000;
      v23 = 0x646579616C6564;
    }
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  if (v25 == v23 && v24 == v26)
  {
    v24, v18, v23, v19, a5, a6, a7, a8;
    v26, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v34 = sub_26F779748();
    v24, v35, v36, v37, v38, v39, v40, v41;
    v26, v42, v43, v44, v45, v46, v47, v48;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningComponents(unsigned __int16 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningComponents(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F74DD7C()
{
  result = qword_2806EF528;
  if (!qword_2806EF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF528);
  }

  return result;
}

unint64_t sub_26F74DDD4()
{
  result = qword_2806EF530;
  if (!qword_2806EF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF530);
  }

  return result;
}

unint64_t sub_26F74DE2C()
{
  result = qword_2806EF538;
  if (!qword_2806EF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF538);
  }

  return result;
}

unint64_t sub_26F74DE80(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26F74DECC(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26F74DF54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26F74DF9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F74DFF8()
{
  sub_26F7794F8();
  MEMORY[0x274395240](0x74614D646964207BLL, 0xEB000000003D6863);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x274395240](v1, v2);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x274395240](0xD000000000000014, 0x800000026F77F710);
  sub_26F779398();
  MEMORY[0x274395240](0xD000000000000021, 0x800000026F77F730);
  sub_26F779398();
  MEMORY[0x274395240](0x74616E676973202CLL, 0xEE003D6449657275);
  if (*(v0 + 48))
  {
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x274395240](v10, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x274395240](0x3D656D616E202CLL, 0xE700000000000000);
  MEMORY[0x274395240](*(v0 + 24), *(v0 + 32));
  MEMORY[0x274395240](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_26F74E1F4()
{
  error[1] = *MEMORY[0x277D85DE8];
  v1 = sub_26F779188();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = SecKeyCopyPublicKey(v0);
  if (!v5)
  {
    if (qword_2806EF290 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_2806F4980);
    v19 = sub_26F7793C8();
    sub_26F756E10(v19, 0xD00000000000001ALL, 0x800000026F77F920, 0xD000000000000057, 0x800000026F77F7A0, 155);
    return 0;
  }

  v6 = v5;
  error[0] = 0;
  v7 = SecKeyCopyExternalRepresentation(v5, error);
  if (!v7)
  {
LABEL_14:
    if (qword_2806EF290 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_2806F4980);
    v20 = sub_26F7793C8();
    sub_26F756E10(v20, 0xD000000000000035, 0x800000026F77F940, 0xD000000000000057, 0x800000026F77F7A0, 167);
    v21 = error[0];
    if (!error[0])
    {
      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    return 0;
  }

  v8 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_14;
  }

  v40 = xmmword_26F77B4F0;
  sub_26F779038();

  v9 = *(&v40 + 1);
  if (*(&v40 + 1) >> 60 == 15)
  {
    goto LABEL_14;
  }

  v10 = v40;
  if (error[0])
  {
    if (qword_2806EF290 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v1, qword_2806F4980);
    (*(v2 + 16))(v4, v11, v1);
    v12 = sub_26F7793C8();
    v13 = 0xE000000000000000;
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ELL, 0x800000026F77F980);
    if (error[0])
    {
      v14 = error[0];
      v39[0] = v10;
      v39[1] = v14;
      v15 = v12;
      v16 = v14;
      type metadata accessor for CFError(0);
      sub_26F74F238();
      v17 = sub_26F7797F8();
      v13 = v18;

      v12 = v15;
      v10 = v39[0];
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x274395240](v17, v13);
    v13, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v31 = *(&v40 + 1);
    sub_26F756E10(v12, v40, *(&v40 + 1), 0xD000000000000057, 0x800000026F77F7A0, 172);
    sub_26F74F348(v10, v9);
    v31, v32, v33, v34, v35, v36, v37, v38;
    (*(v2 + 8))(v4, v1);
    v21 = error[0];
    if (!error[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v23 = sub_26F779028();
  sub_26F74F348(v10, v9);
  if (error[0])
  {
  }

  return v23;
}

uint64_t sub_26F74E63C()
{
  v0 = sub_26F779188();
  __swift_allocate_value_buffer(v0, qword_2806EF540);
  v1 = __swift_project_value_buffer(v0, qword_2806EF540);
  if (qword_2806EF290 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2806F4980);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26F74E704(__SecKey *a1)
{
  v2 = sub_26F779188();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v144 - v7;
  v9 = SecKeyCopyAttributes(a1);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_17;
  }

  v146 = 0;
  sub_26F7791E8();

  v11 = v146;
  if (!v146)
  {
LABEL_17:
    if (qword_2806EF260 != -1)
    {
      swift_once();
    }

    v88 = __swift_project_value_buffer(v2, qword_2806EF540);
    (*(v3 + 16))(v6, v88, v2);
    v89 = sub_26F7793C8();
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_26F7794F8();
    v147, v90, v91, v92, v93, v94, v95, v96;
    v146 = 0xD000000000000025;
    v147 = 0x800000026F77F8A0;
    v97 = sub_26F74E1F4();
    if (v98)
    {
      v99 = v98;
    }

    else
    {
      v97 = 7104878;
      v99 = 0xE300000000000000;
    }

    MEMORY[0x274395240](v97, v99);
    v99, v100, v101, v102, v103, v104, v105, v106;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v107 = v147;
    sub_26F756E10(v89, v146, v147, 0xD000000000000057, 0x800000026F77F7A0, 20);
    v107, v108, v109, v110, v111, v112, v113, v114;
    (*(v3 + 8))(v6, v2);
    goto LABEL_32;
  }

  v12 = sub_26F779248();
  v20 = v13;
  if (!*v11->endpoint)
  {
    v11, v13, v14, v15, v16, v17, v18, v19;
    v115 = v20;
LABEL_25:
    v115, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_26;
  }

  v21 = sub_26F768DE0(v12, v13);
  v23 = v22;
  v20, v22, v24, v25, v26, v27, v28, v29;
  if ((v23 & 1) == 0)
  {
    v115 = v11;
    goto LABEL_25;
  }

  sub_26F74B0EC(*v11[1].endpoint + 32 * v21, &v146);
  v11, v37, v38, v39, v40, v41, v42, v43;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    if (qword_2806EF260 != -1)
    {
      swift_once();
    }

    v116 = __swift_project_value_buffer(v2, qword_2806EF540);
    (*(v3 + 16))(v8, v116, v2);
    v117 = sub_26F7793C8();
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_26F7794F8();
    v147, v118, v119, v120, v121, v122, v123, v124;
    v146 = 0xD00000000000001FLL;
    v147 = 0x800000026F77F8D0;
    v125 = sub_26F74E1F4();
    if (v126)
    {
      v127 = v126;
    }

    else
    {
      v125 = 7104878;
      v127 = 0xE300000000000000;
    }

    MEMORY[0x274395240](v125, v127);
    v127, v128, v129, v130, v131, v132, v133, v134;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v135 = v147;
    sub_26F756E10(v117, v146, v147, 0xD000000000000057, 0x800000026F77F7A0, 25);
    v135, v136, v137, v138, v139, v140, v141, v142;
    (*(v3 + 8))(v8, v2);
LABEL_32:
    v48 = 0;
    return v48 & 1;
  }

  v44 = v145;
  v146 = v144;
  v147 = v145;
  v45 = sub_26F779248();
  v47 = v46;
  v144 = v45;
  v145 = v46;
  sub_26F74F2F4();
  v48 = sub_26F779458();
  v44, v49, v50, v51, v52, v53, v54, v55;
  v47, v56, v57, v58, v59, v60, v61, v62;
  if (qword_2806EF260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_2806EF540);
  v63 = sub_26F7793B8();
  v146 = 0;
  v147 = 0xE000000000000000;
  sub_26F7794F8();
  v147, v64, v65, v66, v67, v68, v69, v70;
  v146 = 0xD000000000000023;
  v147 = 0x800000026F77F8F0;
  if (v48)
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v48)
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  MEMORY[0x274395240](v71, v72);
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  v80 = v147;
  sub_26F756E10(v63, v146, v147, 0xD000000000000057, 0x800000026F77F7A0, 30);
  v80, v81, v82, v83, v84, v85, v86, v87;
  return v48 & 1;
}

uint64_t sub_26F74EC80(uint64_t a1, unint64_t a2, __SecKey *a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
LABEL_15:
      if (qword_2806EF260 != -1)
      {
        swift_once();
      }

      v53 = 0x2064696C61766E49;
      v54 = sub_26F779188();
      __swift_project_value_buffer(v54, qword_2806EF540);
      v55 = sub_26F7793B8();
      sub_26F756E10(v55, 0xD000000000000023, 0x800000026F77F870, 0xD000000000000057, 0x800000026F77F7A0, 60);
      return v53;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_26F74E704(a3) & 1) == 0)
  {
    if (qword_2806EF260 != -1)
    {
      swift_once();
    }

    v53 = 0x2064696C61766E49;
    v56 = sub_26F779188();
    __swift_project_value_buffer(v56, qword_2806EF540);
    v57 = sub_26F7793B8();
    v58 = 0xD000000000000030;
    v59 = 0x800000026F77F760;
    v60 = 65;
    goto LABEL_24;
  }

  v5 = *MEMORY[0x277CDC300];
  if (!SecKeyIsAlgorithmSupported(a3, kSecKeyOperationTypeSign, *MEMORY[0x277CDC300]))
  {
    if (qword_2806EF260 != -1)
    {
      swift_once();
    }

    v53 = 0x2064696C61766E49;
    v61 = sub_26F779188();
    __swift_project_value_buffer(v61, qword_2806EF540);
    v57 = sub_26F7793B8();
    v58 = 0xD00000000000002ALL;
    v59 = 0x800000026F77F840;
    v60 = 70;
LABEL_24:
    sub_26F756E10(v57, v58, v59, 0xD000000000000057, 0x800000026F77F7A0, v60);
    return v53;
  }

  error[0] = 0;
  v6 = sub_26F779018();
  Signature = SecKeyCreateSignature(a3, v5, v6, error);

  if (!Signature)
  {
    if (qword_2806EF260 != -1)
    {
      swift_once();
    }

    v62 = sub_26F779188();
    __swift_project_value_buffer(v62, qword_2806EF540);
    v63 = sub_26F7793C8();
    v53 = 0xD000000000000014;
    sub_26F756E10(v63, 0xD000000000000014, 0x800000026F77F800, 0xD000000000000057, 0x800000026F77F7A0, 82);
    goto LABEL_28;
  }

  v8 = error[0];
  if (error[0])
  {
    if (qword_2806EF260 != -1)
    {
      swift_once();
    }

    v9 = sub_26F779188();
    __swift_project_value_buffer(v9, qword_2806EF540);
    v10 = sub_26F7793C8();
    sub_26F7794F8();
    0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
    v18 = v8;
    type metadata accessor for CFError(0);
    sub_26F74F238();
    v19 = sub_26F7797F8();
    v21 = v20;

    MEMORY[0x274395240](v19, v21);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v10, 0xD00000000000001DLL, 0x800000026F77F820, 0xD000000000000057, 0x800000026F77F7A0, 87);
    0x800000026F77F820, v29, v30, v31, v32, v33, v34, v35;
    sub_26F7794F8();
    0xE000000000000000, v36, v37, v38, v39, v40, v41, v42;
    v66 = v18;
    v43 = sub_26F7797F8();
    v45 = v44;

    MEMORY[0x274395240](v43, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x274395240](32032, 0xE200000000000000);

    v53 = 0xD00000000000001DLL;
LABEL_28:
    if (error[0])
    {
    }

    return v53;
  }

  v64 = Signature;
  v53 = sub_26F779048();

  if (error[0])
  {
  }

  return v53;
}

unint64_t sub_26F74F238()
{
  result = qword_2806EF558;
  if (!qword_2806EF558)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF558);
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

unint64_t sub_26F74F2F4()
{
  result = qword_28141B160;
  if (!qword_28141B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141B160);
  }

  return result;
}

uint64_t sub_26F74F348(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26F74F35C(a1, a2);
  }

  return a1;
}

uint64_t sub_26F74F35C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26F74F3B0(uint64_t a1, unint64_t a2)
{
  v5 = sub_26F7791C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0xD000000000000010;
  }

  result = sub_26F7791A8();
  if (!v2)
  {
    v11 = MEMORY[0x274395150](result);
    (*(v6 + 8))(v8, v5);
    return v11;
  }

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

uint64_t sub_26F74F548(uint64_t a1, int a2)
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

uint64_t sub_26F74F590(uint64_t result, int a2, int a3)
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

uint64_t sub_26F74F5F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF5A0, &qword_26F77B648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7505E8();
  sub_26F7798A8();
  v14 = 0;
  sub_26F7796E8();
  if (!v2)
  {
    v13 = 1;
    sub_26F7796B8();
    v12 = *(v3 + 32);
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF590, &qword_26F77B640);
    sub_26F7506A4(&qword_2806EF5A8, MEMORY[0x277D84CC8], MEMORY[0x277D83948]);
    sub_26F7796D8();
    v10 = *(v3 + 44);
    v11[14] = 3;
    v11[12] = v10;
    sub_26F7796C8();
    v11[11] = 4;
    sub_26F7796B8();
    v11[10] = 5;
    sub_26F7796B8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26F74F87C(uint64_t a1)
{
  sub_26F779298();
  if (*(v1 + 24))
  {
    sub_26F779868();
    sub_26F779298();
    v2 = *(v1 + 32);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_26F779868();
    if (*(v1 + 44))
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  sub_26F779868();
  v2 = *(v1 + 32);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_26F779868();
  v3 = *(v2 + 16);
  MEMORY[0x2743957F0](v3);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      v4 += 4;
      sub_26F779878();
      --v3;
    }

    while (v3);
  }

  if (*(v1 + 44))
  {
LABEL_7:
    sub_26F779868();
    if (*(v1 + 56))
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_26F779868();
    if (*(v1 + 72))
    {
      goto LABEL_9;
    }

    return sub_26F779868();
  }

LABEL_14:
  sub_26F779868();
  sub_26F779878();
  if (!*(v1 + 56))
  {
    goto LABEL_15;
  }

LABEL_8:
  sub_26F779868();
  sub_26F779298();
  if (!*(v1 + 72))
  {
    return sub_26F779868();
  }

LABEL_9:
  sub_26F779868();

  return sub_26F779298();
}

uint64_t sub_26F74F9D4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C6F687365726874;
  v4 = 0x656D614E656E6F7ALL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x727574616E676973;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F74FA98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_26F74FF4C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_26F74FAC0(uint64_t a1)
{
  v2 = sub_26F7505E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F74FAFC(uint64_t a1)
{
  v2 = sub_26F7505E8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26F74FB38@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26F75015C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_26F74FB9C()
{
  sub_26F779848();
  sub_26F74F87C(v1);
  return sub_26F779888();
}

uint64_t sub_26F74FBE0(uint64_t a1)
{
  sub_26F779848();
  sub_26F74F87C(v2);
  return sub_26F779888();
}

BOOL sub_26F74FC1C(_OWORD *a1, __int128 *a2)
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
  return sub_26F74FE04(v8, v9);
}

unint64_t sub_26F74FC7C()
{
  result = qword_2806EF560;
  if (!qword_2806EF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF560);
  }

  return result;
}

unint64_t sub_26F74FCD0(void *a1)
{
  a1[1] = sub_26F74FD08();
  a1[2] = sub_26F74FD5C();
  result = sub_26F74FDB0();
  a1[3] = result;
  return result;
}

unint64_t sub_26F74FD08()
{
  result = qword_2806EF568;
  if (!qword_2806EF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF568);
  }

  return result;
}

unint64_t sub_26F74FD5C()
{
  result = qword_2806EF570;
  if (!qword_2806EF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF570);
  }

  return result;
}

unint64_t sub_26F74FDB0()
{
  result = qword_2806EF578;
  if (!qword_2806EF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF578);
  }

  return result;
}

BOOL sub_26F74FE04(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_26F779748() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 2) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_26F779748() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 4);
  v9 = *(a2 + 32);
  if (v8)
  {
    if (!v9 || (sub_26F74D940(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 44);
  if (a1[11])
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (a1[10] != *(a2 + 40))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a1 + 7);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12 || (*(a1 + 6) != *(a2 + 48) || v11 != v12) && (sub_26F779748() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 9);
  v14 = *(a2 + 72);
  if (v13)
  {
    return v14 && (*(a1 + 8) == *(a2 + 64) && v13 == v14 || (sub_26F779748() & 1) != 0);
  }

  return !v14;
}

uint64_t sub_26F74FF4C(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v9 || (sub_26F779748() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000644965;
    if (a1 == 0x727574616E676973 && a2 == 0xEB00000000644965 || (sub_26F779748() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_26F779748() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064 || (sub_26F779748() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (sub_26F779748() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0xD000000000000010 && 0x800000026F77F9E0 == a2)
    {
      a2, 0x800000026F77F9E0, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else
    {
      v13 = sub_26F779748();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }
  }
}

void sub_26F75015C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF580, &qword_26F77B638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7505E8();
  sub_26F779898();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v9 = sub_26F779668();
    v11 = v10;
    LOBYTE(v37[0]) = 1;
    *&v31 = sub_26F779638();
    *(&v31 + 1) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF590, &qword_26F77B640);
    LOBYTE(v32) = 2;
    sub_26F7506A4(&qword_2806EF598, MEMORY[0x277D84CF0], MEMORY[0x277D83978]);
    sub_26F779658();
    v30 = v37[0];
    LOBYTE(v37[0]) = 3;
    v29 = 0;
    v13 = sub_26F779648();
    v46 = BYTE4(v13) & 1;
    LOBYTE(v37[0]) = 4;
    v27 = v13;
    v26 = sub_26F779638();
    v28 = v14;
    v47 = 5;
    v15 = sub_26F779638();
    v16 = *(v6 + 8);
    v17 = v15;
    v25 = v18;
    v16(v8, v5);
    *&v32 = v9;
    *(&v32 + 1) = v11;
    v33 = v31;
    *&v34 = v30;
    DWORD2(v34) = v27;
    LODWORD(v29) = v46;
    BYTE12(v34) = v46;
    v19 = v26;
    v20 = v28;
    *&v35 = v26;
    *(&v35 + 1) = v28;
    v21 = v25;
    *&v36 = v17;
    *(&v36 + 1) = v25;
    sub_26F75063C(&v32, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v9;
    v37[1] = v11;
    v38 = v31;
    v39 = v30;
    v40 = v27;
    v41 = v29;
    v42 = v19;
    v43 = v20;
    v44 = v17;
    v45 = v21;
    sub_26F750674(v37);
    v22 = v35;
    a2[2] = v34;
    a2[3] = v22;
    a2[4] = v36;
    v23 = v33;
    *a2 = v32;
    a2[1] = v23;
  }
}

unint64_t sub_26F7505E8()
{
  result = qword_2806EF588;
  if (!qword_2806EF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF588);
  }

  return result;
}

uint64_t sub_26F7506A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF590, &qword_26F77B640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKSignature.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CKSignature.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F750864()
{
  result = qword_2806EF5B0;
  if (!qword_2806EF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF5B0);
  }

  return result;
}

unint64_t sub_26F7508BC()
{
  result = qword_2806EF5B8;
  if (!qword_2806EF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF5B8);
  }

  return result;
}

unint64_t sub_26F750914()
{
  result = qword_2806EF5C0;
  if (!qword_2806EF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF5C0);
  }

  return result;
}

uint64_t TKDebugUIService.__allocating_init()()
{
  v0 = swift_allocObject();
  TKDebugUIService.init()();
  return v0;
}

uint64_t TKDebugUIService.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for ClientAnalyticsManager(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v3 = sub_26F779188();
  v4 = __swift_project_value_buffer(v3, qword_28141B608);
  v5 = *(*(v3 - 8) + 16);
  v5(v1 + v2, v4, v3);
  v6 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_28141B5F0);
  v5(v7 + v8, v9, v3);
  *(v1 + v6) = v7;
  *(v0 + 24) = v1;
  v10 = OBJC_IVAR____TtC8TrustKit16TKDebugUIService_logger;
  if (qword_2806EF288 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_2806F4968);
  v5(v0 + v10, v11, v3);
  return v0;
}

uint64_t TKDebugUIService.presentPillBanner(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = *(a1 + 1);
  *(v2 + 80) = a1[3];
  return MEMORY[0x2822009F8](sub_26F750B98, 0, 0);
}

uint64_t sub_26F750B98(uint64_t a1)
{
  if (qword_2806EF2B8 != -1)
  {
    swift_once();
  }

  if (byte_2806F49D0 == 1)
  {
    v3 = v1[7];
    v2 = v1[8];
    v4 = (v2 >> 56) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v6 = v1[9];
    v5 = v1[10];
    if (v4)
    {
      v7 = (v5 >> 56) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = v1[6];
        v9 = sub_26F7793D8();
        sub_26F7794F8();
        0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;

        sub_26F7794F8();
        0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
        MEMORY[0x274395240](v3, v2);
        MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
        MEMORY[0x274395240](v6, v5);
        v2, v24, v25, v26, v27, v28, v29, v30;
        v5, v31, v32, v33, v34, v35, v36, v37;
        MEMORY[0x274395240](0x3D656C746974, 0xE600000000000000);
        0xE600000000000000, v38, v39, v40, v41, v42, v43, v44;
        MEMORY[0x274395240](2099281184, 0xE400000000000000);
        sub_26F756E10(v9, 0xD000000000000024, 0x800000026F77FAA0, 0xD000000000000059, 0x800000026F77FA40, 34);
        0x800000026F77FAA0, v45, v46, v47, v48, v49, v50, v51;
        v52 = *(v8 + 16);
        if (v52)
        {
          v53 = *(v8 + 16);
        }

        else
        {
          if (qword_2806EF268 != -1)
          {
            swift_once();
          }

          v53 = qword_2806EF5C8;
          v52 = 0;
        }

        v1[11] = v53;
        v104 = v1[9];
        v103 = v1[10];
        *(v1 + 1) = *(v1 + 7);
        v1[4] = v104;
        v1[5] = v103;
        v105 = v52;
        v106 = swift_task_alloc();
        v1[12] = v106;
        *v106 = v1;
        v106[1] = sub_26F7510C0;

        return sub_26F751EBC(v1 + 2);
      }
    }

    v58 = sub_26F7793C8();
    sub_26F7794F8();
    0xE000000000000000, v59, v60, v61, v62, v63, v64, v65;

    sub_26F7794F8();
    0xE000000000000000, v66, v67, v68, v69, v70, v71, v72;
    MEMORY[0x274395240](v3, v2);
    MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
    MEMORY[0x274395240](v6, v5);
    v2, v73, v74, v75, v76, v77, v78, v79;
    v5, v80, v81, v82, v83, v84, v85, v86;
    MEMORY[0x274395240](0x3D656C746974, 0xE600000000000000);
    0xE600000000000000, v87, v88, v89, v90, v91, v92, v93;
    MEMORY[0x274395240](2099281184, 0xE400000000000000);
    sub_26F756E10(v58, 0xD00000000000001DLL, 0x800000026F77FAD0, 0xD000000000000059, 0x800000026F77FA40, 30);
    0x800000026F77FAD0, v94, v95, v96, v97, v98, v99, v100;
    sub_26F74AEE0();
    swift_allocError();
    v55 = 0xEE002E7475706E69;
    v56 = 0x2064696C61766E49;
  }

  else
  {
    v54 = sub_26F7793C8();
    v55 = 0x800000026F77FA00;
    v56 = 0xD000000000000038;
    sub_26F756E10(v54, 0xD000000000000038, 0x800000026F77FA00, 0xD000000000000059, 0x800000026F77FA40, 23);
    sub_26F747008();
    swift_allocError();
  }

  *v57 = v56;
  *(v57 + 8) = v55;
  *(v57 + 16) = 0;
  swift_willThrow();
  v101 = v1[1];

  return v101();
}

uint64_t sub_26F7510C0()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F751204, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t TKDebugUIService.TKPillBannerContext.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TKDebugUIService.TKPillBannerContext.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

TrustKit::TKDebugUIService::TKPillBannerContext __swiftcall TKDebugUIService.TKPillBannerContext.init(title:subtitle:)(Swift::String title, Swift::String subtitle)
{
  *v2 = title;
  v2[1] = subtitle;
  result.subtitle = subtitle;
  result.title = title;
  return result;
}

uint64_t TKDebugUIService.TKPillBannerContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26F7794F8();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x274395240](v1, v2);
  MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
  MEMORY[0x274395240](v3, v4);
  return 0x3D656C746974;
}

uint64_t sub_26F75133C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26F7794F8();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x274395240](v1, v2);
  MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
  MEMORY[0x274395240](v3, v4);
  return 0x3D656C746974;
}

uint64_t TKDebugUIService.deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit16TKDebugUIService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TKDebugUIService.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit16TKDebugUIService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_26F75150C()
{
  v0 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  result = sub_26F754794(0);
  qword_2806EF5C8 = result;
  return result;
}

uint64_t type metadata accessor for TKDebugUIService(uint64_t a1)
{
  result = qword_2806EF5D8;
  if (!qword_2806EF5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F75159C(uint64_t a1)
{
  result = sub_26F779188();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F75167C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26F7516C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ReportingAsset(uint64_t a1)
{
  result = qword_2806EF5F0;
  if (!qword_2806EF5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F751788(uint64_t a1)
{
  sub_26F751824(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConfigurationsAsset(319);
    if (v2 <= 0x3F)
    {
      sub_26F779188();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F751824(uint64_t a1)
{
  if (!qword_2806EF600)
  {
    type metadata accessor for UAFAssetManager.AssetInfo(255);
    v1 = sub_26F779428();
    if (!v2)
    {
      atomic_store(v1, &qword_2806EF600);
    }
  }
}

uint64_t sub_26F75187C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26F7518C0(_BYTE *a1, uint64_t a2)
{
  *(v3 + 208) = a2;
  *(v3 + 216) = v2;
  *(v3 + 256) = *a1;
  return MEMORY[0x2822009F8](sub_26F7518E8, 0, 0);
}

uint64_t sub_26F7518E8()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26F7519B0;
  v2 = swift_continuation_init();
  sub_26F753FA8(v2, v1, &unk_287FC79D0, sub_26F754FFC, &block_descriptor_58, 49);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F7519B0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 224) = *(*v0 + 144);

    return MEMORY[0x2822009F8](sub_26F751AFC, 0, 0);
  }
}

uint64_t sub_26F751AFC()
{
  if (*(v0 + 256))
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  v2 = *(v0 + 224);
  v3 = sub_26F779238();
  *(v0 + 232) = v3;
  v1, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_26F7791D8();
  *(v0 + 240) = v11;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_26F751CB4;
  v12 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF640, &qword_26F77E660);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_26F7526A8;
  *(v0 + 168) = &block_descriptor_51;
  *(v0 + 176) = v12;
  [v2 reportManagerReport:v3 report:v11 completionHandler:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_26F751CB4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_26F751E34;
  }

  else
  {
    v2 = sub_26F751DC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F751DC4()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F751E34()
{
  v1 = v0[30];
  v2 = v0[29];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F751EBC(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 208) = v1;
  *(v2 + 216) = v3;
  *(v2 + 224) = *(a1 + 1);
  *(v2 + 240) = a1[3];
  return MEMORY[0x2822009F8](sub_26F751EF0, 0, 0);
}

uint64_t sub_26F751EF0()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26F751FB8;
  v2 = swift_continuation_init();
  sub_26F753FA8(v2, v1, &unk_287FC7958, sub_26F7550E8, &block_descriptor_48, 155);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F751FB8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 248) = *(*v0 + 144);

    return MEMORY[0x2822009F8](sub_26F752104, 0, 0);
  }
}

uint64_t sub_26F752104()
{
  v1 = v0[31];
  v2 = sub_26F779238();
  v0[32] = v2;
  v3 = sub_26F779238();
  v0[33] = v3;
  v0[10] = v0;
  v0[11] = sub_26F752250;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF640, &qword_26F77E660);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_26F7526A8;
  v0[21] = &block_descriptor_41;
  v0[22] = v4;
  [v1 debugUIManagerPresentPillBanner:v2 subtitle:v3 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_26F752250()
{
  v1 = *(*v0 + 112);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_26F7523D0;
  }

  else
  {
    v2 = sub_26F752360;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F752360()
{
  v1 = v0[32];
  v2 = v0[33];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F7523D0()
{
  v1 = v0[33];
  v2 = v0[32];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F752458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26F7793C8();
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000039, 0x800000026F77FC50);
  swift_getErrorValue();
  v4 = sub_26F7797F8();
  v6 = v5;
  MEMORY[0x274395240](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v3, 0, 0xE000000000000000, 0xD000000000000051, 0x800000026F77FBF0, 42);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000039, 0x800000026F77FC50);
  swift_getErrorValue();
  v21 = sub_26F7797F8();
  v23 = v22;
  MEMORY[0x274395240](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F74AEE0();
  v31 = swift_allocError();
  *v32 = 0;
  *(v32 + 8) = 0xE000000000000000;
  *(v32 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  swift_allocError();
  *v33 = v31;
  return swift_continuation_throwingResumeWithError();
}

void sub_26F752640(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26F7526A8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_26F752774()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26F75283C;
  v2 = swift_continuation_init();
  sub_26F753FA8(v2, v1, &unk_287FC78E0, sub_26F754F64, &block_descriptor_38, 69);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F75283C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 216) = *(*v0 + 144);

    return MEMORY[0x2822009F8](sub_26F752988, 0, 0);
  }
}

uint64_t sub_26F752988()
{
  v1 = v0[27];
  v0[10] = v0;
  v0[11] = sub_26F752A9C;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF640, &qword_26F77E660);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_26F7526A8;
  v0[21] = &block_descriptor_31;
  v0[22] = v2;
  [v1 spamDecisioningManagerSetupWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_26F752A9C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_26F752C10;
  }

  else
  {
    v2 = sub_26F752BAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F752BAC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F752C10()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F752CA4()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26F752D6C;
  v2 = swift_continuation_init();
  sub_26F753FA8(v2, v1, &unk_287FC7868, sub_26F7550E8, &block_descriptor_28, 89);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F752D6C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2(0);
  }

  else
  {
    *(*v0 + 216) = *(*v0 + 144);

    return MEMORY[0x2822009F8](sub_26F752EBC, 0, 0);
  }
}

uint64_t sub_26F752EBC()
{
  v1 = v0[27];
  v0[10] = v0;
  v0[15] = v0 + 28;
  v0[11] = sub_26F752FD8;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF638, &qword_26F77B8F8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_26F753120;
  v0[21] = &block_descriptor_21;
  v0[22] = v2;
  [v1 spamDecisioningManagerIsSetupWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_26F752FD8()
{

  return MEMORY[0x2822009F8](sub_26F7530B8, 0, 0);
}

uint64_t sub_26F7530B8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 224);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26F753120(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_26F75317C(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  *(v3 + 256) = *a2;
  *(v3 + 272) = *(a2 + 16);
  *(v3 + 280) = *(a2 + 24);
  *(v3 + 296) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(v3 + 304) = *(a2 + 48);
  *(v3 + 320) = v4;
  *(v3 + 336) = *(a2 + 80);
  *(v3 + 424) = *(a2 + 88);
  *(v3 + 425) = *(a2 + 89);
  return MEMORY[0x2822009F8](sub_26F7531E0, 0, 0);
}

uint64_t sub_26F7531E0()
{
  v1 = v0[31];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26F7532A8;
  v2 = swift_continuation_init();
  sub_26F753FA8(v2, v1, &unk_287FC7750, sub_26F7550E8, &block_descriptor_6, 109);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F7532A8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 344) = *(*v0 + 144);

    return MEMORY[0x2822009F8](sub_26F7533F4, 0, 0);
  }
}

uint64_t sub_26F7533F4()
{
  v1 = *(v0 + 312);
  v20 = sub_26F779238();
  *(v0 + 352) = v20;
  v19 = sub_26F779238();
  *(v0 + 360) = v19;
  v18 = sub_26F779238();
  *(v0 + 368) = v18;
  if (v1)
  {
    v2 = sub_26F779238();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 376) = v2;
  if (*(v0 + 320))
  {
    v3 = sub_26F7792C8();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 384) = v3;
  if (*(v0 + 336))
  {
    v4 = sub_26F779238();
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 392) = v4;
  if (*(v0 + 424))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_26F779238();
  }

  *(v0 + 400) = v5;
  if (*(v0 + 425) <= 1u)
  {
    if (*(v0 + 425))
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    goto LABEL_19;
  }

  if (*(v0 + 425) == 2)
  {
    v6 = 0xE700000000000000;
LABEL_19:
    v7 = sub_26F779238();
    v6, v8, v9, v10, v11, v12, v13, v14;
    goto LABEL_21;
  }

  v7 = 0;
LABEL_21:
  *(v0 + 408) = v7;
  v15 = *(v0 + 344);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_26F753680;
  v16 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF610, &qword_26F77B8C8);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_26F753A48;
  *(v0 + 168) = &block_descriptor_0;
  *(v0 + 176) = v16;
  [v15 spamDecisionManagerInference:v20 sender:v19 messageBody:v18 receiverISOCountryCode:v2 attachments:v3 trustIndicator:v4 messageType:v5 inferenceType:v7 completionHandler:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_26F753680()
{
  v1 = *(*v0 + 112);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_26F753984;
  }

  else
  {
    v2 = sub_26F753790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F753790()
{
  v1 = v0[28];
  v0[29] = v1;
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[45];
  v41 = v0[44];
  v40 = v0[27];

  v9 = -1;
  v10 = -1 << v1->$__lazy_storage_$_interface[0];
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *v1[1].connection;
  v12 = (63 - v10) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v15 << 6);
      v18 = (*v1[1]._anon_8 + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      sub_26F74B0EC(*v1[1].endpoint + 32 * v17, (v0 + 20));
      v0[18] = v19;
      v0[19] = v20;

      sub_26F753B50(v19, v20, (v0 + 20));
      result = sub_26F754640((v0 + 18));
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *&v1[1].connection[8 * v15];
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v1, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_26F779618();
  v40, v29, v30, v31, v32, v33, v34, v35;
  swift_unknownObjectRelease();
  if (v28 >= 3)
  {
    v36 = 1;
  }

  else
  {
    v36 = v28;
  }

  v38 = v0[29];
  v37 = v0[30];
  *v37 = v36;
  *(v37 + 8) = v38;
  v39 = v0[1];

  return v39();
}

uint64_t sub_26F753984()
{
  v1 = v0[51];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v10 = v0[44];
  swift_willThrow();
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_26F753A48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    swift_allocError();
    *v6 = a4;
    v7 = a4;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v9 = sub_26F779248();
    v11 = v10;
    v12 = sub_26F7791F8();
    v13 = *(*(v5 + 64) + 40);
    *v13 = v9;
    v13[1] = v11;
    v13[2] = v12;

    return swift_continuation_throwingResume();
  }
}

void sub_26F753B50(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, uint64_t a3)
{
  v62[4] = *MEMORY[0x277D85DE8];
  sub_26F74B0EC(a3, v61);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF4B8, &qword_26F77AE50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v54 = v5;
  v55 = a1;
  v6 = v59;
  v7 = v59 + 64;
  v8 = 1 << *(v59 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v59 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v56 = v59;
  v57 = v59;
  while (1)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    do
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v15 >= v11)
      {

        v6, v47, v48, v49, v50, v51, v52, v53;
        v62[1] = v54;
        v61[0] = v57;

        sub_26F75FE08(v61, v55, a2);
        return;
      }

      v10 = *(v7 + 8 * v15);
      ++v12;
    }

    while (!v10);
    v12 = v15;
LABEL_13:
    v16 = __clz(__rbit64(v10)) | (v12 << 6);
    v17 = (*v6[1]._anon_8 + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_26F74B0EC(*v6[1].endpoint + 32 * v16, v62);
    v61[0] = v18;
    v61[1] = v19;
    sub_26F74B0EC(v62, &v59);

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_7:
    v10 &= v10 - 1;
    sub_26F754640(v61);
  }

  v20 = v58[0];
  v21 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_26F7546E4(v20, *(&v20 + 1));
  v22 = sub_26F779018();
  *&v59 = 0;
  v23 = [v21 initForReadingFromData:v22 error:&v59];

  if (!v23)
  {
    v13 = v59;
    v14 = sub_26F778FD8();

    swift_willThrow();
    sub_26F74F35C(v20, *(&v20 + 1));

    sub_26F74F35C(v20, *(&v20 + 1));
LABEL_6:
    v6 = v56;
    goto LABEL_7;
  }

  v24 = v59;
  sub_26F74F35C(v20, *(&v20 + 1));
  v25 = [objc_allocWithZone(MEMORY[0x277CBFEF8]) initWithCoder_];

  if (!v25)
  {
    sub_26F74F35C(v20, *(&v20 + 1));
    goto LABEL_6;
  }

  v60 = sub_26F754738();
  *&v59 = v25;
  sub_26F754784(&v59, v58);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = sub_26F768DE0(v18, v19);
  v29 = v57[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_31;
  }

  v32 = v27;
  if (v57[3] >= v31)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26F762C78();
    }

LABEL_23:
    if (v32)
    {
      v35 = (v57[7] + 32 * v28);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_26F754784(v58, v35);
      v19, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v57[(v28 >> 6) + 8] |= 1 << v28;
      v43 = (v57[6] + 16 * v28);
      *v43 = v18;
      v43[1] = v19;
      sub_26F754784(v58, (v57[7] + 32 * v28));
      v44 = v57[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_32;
      }

      v57[2] = v46;
    }

    v6 = v56;
    sub_26F74F35C(v20, *(&v20 + 1));
    goto LABEL_7;
  }

  sub_26F761A9C(v31, isUniquelyReferenced_nonNull_native);
  v33 = sub_26F768DE0(v18, v19);
  if ((v32 & 1) == (v34 & 1))
  {
    v28 = v33;
    goto LABEL_23;
  }

  sub_26F779798();
  __break(1u);
}

void sub_26F753FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v9 = sub_26F779188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = *(a2 + OBJC_IVAR____TtC8TrustKit12ServerClient_connection);
  v13 = *(v10 + 16);
  v20 = OBJC_IVAR____TtC8TrustKit12ServerClient_logger;
  v13(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtC8TrustKit12ServerClient_logger, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v16 = a1;
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F752640;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);

  v18 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_26F779468();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF630, &qword_26F77B8E8);
  if (swift_dynamicCast())
  {
    **(*(v16 + 64) + 40) = v23;
    swift_continuation_throwingResume();
  }

  else
  {
    v19 = sub_26F7793C8();
    sub_26F756E10(v19, 0xD000000000000030, 0x800000026F77FBB0, 0xD000000000000051, 0x800000026F77FBF0, v21);
  }
}

uint64_t sub_26F75423C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x274395DF0]();
  v4 = sub_26F779168();
  v5 = sub_26F7793D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_26F7797F8();
    v10 = v9;
    v11 = sub_26F760F20(v8, v9, &v35);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&dword_26F744000, v4, v5, "Failed to establish connection to frauddefensed. { error=%s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x274395F50](v7, -1, -1);
    MEMORY[0x274395F50](v6, -1, -1);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000039, 0x800000026F77FC50);
  swift_getErrorValue();
  v19 = sub_26F7797F8();
  v21 = v20;
  MEMORY[0x274395240](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  v29 = v35;
  v30 = v36;
  sub_26F74AEE0();
  v31 = swift_allocError();
  *v32 = v29;
  *(v32 + 8) = v30;
  *(v32 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  swift_allocError();
  *v33 = v31;
  return swift_continuation_throwingResumeWithError();
}

id sub_26F754480()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ServerClient(uint64_t a1)
{
  result = qword_28141B588;
  if (!qword_28141B588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F754588(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F754640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF618, &qword_26F77B8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F7546E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_26F754738()
{
  result = qword_2806EF620;
  if (!qword_2806EF620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806EF620);
  }

  return result;
}

_OWORD *sub_26F754784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_26F754794(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v63 = sub_26F779188();
  v4 = *(v63 - 8);
  v5 = MEMORY[0x28223BE20](v63);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - v7;
  sub_26F779178();
  sub_26F779178();
  if (a1)
  {
    v9 = a1;
    v10 = sub_26F7793B8();
    aBlock = 0;
    v69 = 0xE000000000000000;
    sub_26F7794F8();
    v69, v11, v12, v13, v14, v15, v16, v17;
    aBlock = 0xD00000000000002ELL;
    v69 = 0x800000026F77FD10;
    v18 = [v9 description];
    v19 = sub_26F779248();
    v21 = v20;

    MEMORY[0x274395240](v19, v21);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v29 = v69;
    sub_26F756E10(v10, aBlock, v69, 0xD000000000000051, 0x800000026F77FBF0, 17);
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v37 = sub_26F7793B8();
    sub_26F756E10(v37, 0xD000000000000030, 0x800000026F77FCB0, 0xD000000000000051, 0x800000026F77FBF0, 20);
    v38 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v39 = sub_26F779238();
    v9 = [v38 initWithMachServiceName:v39 options:0];
  }

  *&v2[OBJC_IVAR____TtC8TrustKit12ServerClient_connection] = v9;
  v61 = [objc_opt_self() interfaceWithProtocol_];
  v40 = *&v2[OBJC_IVAR____TtC8TrustKit12ServerClient_connection];
  v41 = OBJC_IVAR____TtC8TrustKit12ServerClient_connection;
  v59 = OBJC_IVAR____TtC8TrustKit12ServerClient_connection;
  [v40 setRemoteObjectInterface_];
  v42 = *&v2[v41];
  v58 = *(v4 + 16);
  v44 = v62;
  v43 = v63;
  v58(v62, v8, v63);
  v65 = v8;
  v45 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v46 = swift_allocObject();
  v60 = v4;
  v57 = *(v4 + 32);
  v57(v46 + v45, v44, v43);
  v72 = sub_26F754D04;
  v73 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v56 = &v70;
  v70 = sub_26F75187C;
  v71 = &block_descriptor_12;
  v47 = _Block_copy(&aBlock);
  v48 = v42;

  [v48 setInterruptionHandler_];
  _Block_release(v47);

  v49 = v59;
  v50 = *&v2[v59];
  v58(v44, v65, v43);
  v51 = swift_allocObject();
  v57(v51 + v45, v44, v43);
  v72 = sub_26F754E3C;
  v73 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_26F75187C;
  v71 = &block_descriptor_18;
  v52 = _Block_copy(&aBlock);
  v53 = v50;

  [v53 setInvalidationHandler_];
  _Block_release(v52);

  [*&v2[v49] resume];
  v67.receiver = v2;
  v67.super_class = ObjectType;
  v54 = objc_msgSendSuper2(&v67, sel_init);

  (*(v60 + 8))(v65, v43);
  return v54;
}

void sub_26F754D04()
{
  sub_26F779188();
  v0 = sub_26F7793C8();
  sub_26F756E10(v0, 0xD00000000000001ALL, 0x800000026F77FD60, 0xD000000000000051, 0x800000026F77FBF0, 28);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_26F779188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26F754E3C()
{
  sub_26F779188();
  v0 = sub_26F7793C8();
  sub_26F756E10(v0, 0xD00000000000001BLL, 0x800000026F77FD40, 0xD000000000000051, 0x800000026F77FBF0, 32);
}

uint64_t sub_26F754ED4(void *a1)
{
  v3 = *(sub_26F779188() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_26F75423C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroyTm()
{
  v1 = sub_26F779188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26F754FFC(uint64_t a1)
{
  v3 = *(sub_26F779188() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F752458(a1, v1 + v4, v5);
}

uint64_t sub_26F7550EC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26F779558();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_26F74B0EC(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26F779538();
    sub_26F779568();
    sub_26F779578();
    sub_26F779548();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_26F7551F8()
{
  if (qword_2806EF2B0 != -1)
  {
    swift_once();
  }

  if (byte_2806F49C8 == 1)
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF660, &qword_26F77B970);
    *v1 = v0;
    v1[1] = sub_26F7553A0;
    v3 = v0[8];
    v4 = sub_26F75652C;
    v5 = v0 + 5;
  }

  else
  {
    v6 = swift_task_alloc();
    v0[11] = v6;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF660, &qword_26F77B970);
    *v6 = v0;
    v6[1] = sub_26F7554E4;
    v3 = v0[8];
    v4 = sub_26F756524;
    v5 = v0 + 2;
  }

  return MEMORY[0x2822008A0](v5, 0, 0, 0x29286863746566, 0xE700000000000000, v4, v3, v2);
}

uint64_t sub_26F7553A0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26F755628;
  }

  else
  {
    v2 = sub_26F7554B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F7554E4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_26F755640;
  }

  else
  {
    v2 = sub_26F7555F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26F755658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_26F779018();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_26F756534;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F755A98;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  DeviceIdentityCreateHostSignatureWithCompletion();
  _Block_release(v11);
}

void sub_26F75582C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    MEMORY[0x274395DF0](a4, a2, a3);
    v5 = sub_26F7793C8();
    sub_26F7794F8();
    MEMORY[0x274395240](0xD000000000000031, 0x800000026F77FE80);
    swift_getErrorValue();
    v6 = sub_26F7797F8();
    v8 = v7;
    MEMORY[0x274395240](v6);
    v8, v9, v10, v11, v12, v13, v14, v15;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v5, 0, 0xE000000000000000, 0xD000000000000057, 0x800000026F77FE20, 35);
    0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
    sub_26F7794F8();
    MEMORY[0x274395240](0xD000000000000031, 0x800000026F77FE80);
    swift_getErrorValue();
    v23 = sub_26F7797F8();
    v25 = v24;
    MEMORY[0x274395240](v23);
    v25, v26, v27, v28, v29, v30, v31, v32;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
    sub_26F779308();
  }

  else
  {
    if (!a3 || !sub_26F7550EC(a3))
    {
      v33 = sub_26F7793C8();
      sub_26F756E10(v33, 0xD000000000000020, 0x800000026F77FDF0, 0xD000000000000057, 0x800000026F77FE20, 40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
    sub_26F779308();
  }
}

uint64_t sub_26F755A98(uint64_t a1, void *a2, _TtC8TrustKit22TrustKitUIServerClient *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_26F779048();
    v10 = v9;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    a3 = sub_26F7792D8();
  }

LABEL_4:
  v11 = a4;
  v7(v6, v10, a3, a4);

  a3, v12, v13, v14, v15, v16, v17, v18;
  sub_26F74F348(v6, v10);
}

void sub_26F755B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_26F7791D8();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_26F7566C4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F756084;
  aBlock[3] = &block_descriptor_11;
  v11 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v11);
}

void sub_26F755D64(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x274395DF0](a3, a2);
    v4 = sub_26F7793C8();
    sub_26F7794F8();
    MEMORY[0x274395240](0xD000000000000031, 0x800000026F77FE80);
    swift_getErrorValue();
    v5 = sub_26F7797F8();
    v7 = v6;
    MEMORY[0x274395240](v5);
    v7, v8, v9, v10, v11, v12, v13, v14;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v4, 0, 0xE000000000000000, 0xD000000000000057, 0x800000026F77FE20, 52);
    0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
    sub_26F7794F8();
    MEMORY[0x274395240](0xD000000000000031, 0x800000026F77FE80);
    swift_getErrorValue();
    v22 = sub_26F7797F8();
    v24 = v23;
    MEMORY[0x274395240](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
    sub_26F779308();

    return;
  }

  if (!a1 || (v33 = a1, v34 = sub_26F74E704(v33), v33, (v34 & 1) == 0))
  {
    v35 = sub_26F7793C8();
    sub_26F756E10(v35, 0xD00000000000003ALL, 0x800000026F77FF20, 0xD000000000000057, 0x800000026F77FE20, 57);
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
    sub_26F779308();
    return;
  }

  if (a2 && sub_26F7550EC(a2))
  {
    goto LABEL_9;
  }

  v36 = sub_26F7793C8();
  sub_26F756E10(v36, 0xD000000000000020, 0x800000026F77FDF0, 0xD000000000000057, 0x800000026F77FE20, 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
  sub_26F779308();
}

void sub_26F756084(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_26F7792D8();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);

  v7, v10, v11, v12, v13, v14, v15, v16;
}

unint64_t sub_26F756138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF670, &qword_26F77B980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F77B920;
  sub_26F779248();
  v1 = MEMORY[0x277D837D0];
  sub_26F7794A8();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 43200;
  sub_26F779248();
  sub_26F7794A8();
  v2 = MEMORY[0x277D839B0];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 0;
  sub_26F779248();
  sub_26F7794A8();
  *(inited + 240) = v1;
  *(inited + 216) = 0x74696B7473757274;
  *(inited + 224) = 0xE800000000000000;
  sub_26F779248();
  sub_26F7794A8();
  *(inited + 312) = v1;
  *(inited + 288) = 0x74696B7473757274;
  *(inited + 296) = 0xE800000000000000;
  sub_26F779248();
  sub_26F7794A8();
  *(inited + 384) = v2;
  *(inited + 360) = 0;
  sub_26F779248();
  sub_26F7794A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26F77A180;
  *(v3 + 32) = sub_26F779248();
  *(v3 + 40) = v4;
  *(inited + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF680, &qword_26F77B990);
  *(inited + 432) = v3;
  v5 = sub_26F769278(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF688, &qword_26F77B998);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_26F75638C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttestationManager(uint64_t a1)
{
  result = qword_2806EF650;
  if (!qword_2806EF650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F756484(uint64_t a1)
{
  result = sub_26F779188();
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

void sub_26F756534(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);

  sub_26F75582C(a1, a2, a3, a4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26F7566C4(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF668, &qword_26F77B978);

  sub_26F755D64(a1, a2, a3);
}

uint64_t sub_26F756774()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26F7794F8();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x274395240](v1, v2);
  MEMORY[0x274395240](0xD000000000000011, 0x800000026F77FFA0);
  MEMORY[0x274395240](v3, v4);
  return 0x7079547465737361;
}

uint64_t sub_26F75682C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  v17 = OBJC_IVAR____TtC8TrustKit18MobileAssetManager_logger;
  v18 = sub_26F779188();
  (*(*(v18 - 8) + 8))(v8 + v17, v18);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileAssetManager(uint64_t a1)
{
  result = qword_2806EF698;
  if (!qword_2806EF698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F756938(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F7569EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC8TrustKit16RecordZonesAsset_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordZonesAsset(uint64_t a1)
{
  result = qword_2806EF6B0;
  if (!qword_2806EF6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F756AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26F748118;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for SpamDecisioningAsset(uint64_t a1)
{
  result = qword_2806EF6C0;
  if (!qword_2806EF6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F756CA0(uint64_t a1)
{
  sub_26F756DBC(319, &qword_2806EF600, type metadata accessor for UAFAssetManager.AssetInfo);
  if (v1 <= 0x3F)
  {
    sub_26F779198();
    if (v2 <= 0x3F)
    {
      type metadata accessor for JavaScriptAsset(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ConfigurationsAsset(319);
        if (v4 <= 0x3F)
        {
          sub_26F756DBC(319, &qword_2806EF6D0, type metadata accessor for RecordZonesAsset);
          if (v5 <= 0x3F)
          {
            sub_26F779188();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26F756DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26F779428();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26F756E10(os_log_type_t a1, uint64_t a2, _TtC8TrustKit22TrustKitUIServerClient *a3, uint64_t a4, _TtC8TrustKit22TrustKitUIServerClient *a5, uint64_t a6)
{
  v6 = a5;
  v82 = a4;
  v83 = a5;
  sub_26F74F2F4();
  v11 = sub_26F779448();
  v19 = *v11->endpoint;
  if (v19)
  {
    v20 = &v11->endpoint[16 * v19];
    v6 = v20[1];
    v79 = *v20;
    v21 = v11;

    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v79 = a4;
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v29 = a2;
  v81 = a3;
  v30 = sub_26F779278();
  v32 = v31;
  v33 = 11;
  v34 = &off_287FC5E98;
  do
  {
    if (!--v33)
    {
      swift_arrayDestroy();
      v32, v64, v65, v66, v67, v68, v69, v70;
      v44 = a1;
      goto LABEL_13;
    }

    v35 = v34 + 2;
    v82 = v30;
    v83 = v32;
    v36 = sub_26F779458();
    v34 = v35;
  }

  while ((v36 & 1) == 0);
  swift_arrayDestroy();
  v32, v37, v38, v39, v40, v41, v42, v43;
  v44 = a1;
  if (qword_2806EF2B8 != -1)
  {
    swift_once();
  }

  if ((byte_2806F49D0 & 1) == 0)
  {
    v45 = sub_26F779168();
    if (os_log_type_enabled(v45, a1))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v82 = v54;
      *v53 = 136643331;
      v55 = sub_26F760F20(v79, v6, &v82);
      v6, v56, v57, v58, v59, v60, v61, v62;
      *(v53 + 4) = v55;
      *(v53 + 12) = 2053;
      *(v53 + 14) = a6;
      *(v53 + 22) = 2085;
      *(v53 + 24) = sub_26F760F20(v29, v81, &v82);
      v63 = "%{sensitive}s.%{sensitive}ld            %{sensitive}s";
LABEL_15:
      _os_log_impl(&dword_26F744000, v45, v44, v63, v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x274395F50](v54, -1, -1);
      MEMORY[0x274395F50](v53, -1, -1);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  v45 = sub_26F779168();
  if (os_log_type_enabled(v45, v44))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v82 = v54;
    *v53 = 136381187;
    v71 = sub_26F760F20(v79, v6, &v82);
    v6, v72, v73, v74, v75, v76, v77, v78;
    *(v53 + 4) = v71;
    *(v53 + 12) = 2049;
    *(v53 + 14) = a6;
    *(v53 + 22) = 2081;
    *(v53 + 24) = sub_26F760F20(v29, v81, &v82);
    v63 = "%{private}s.%{private}ld                %{private}s";
    goto LABEL_15;
  }

LABEL_16:
  v6, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
}

uint64_t sub_26F757254(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_26F779188();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_26F779178();
}

uint64_t sub_26F7572DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_26F7486D8;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_26F757440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_26F7486D8;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_26F7575A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26F748118;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26F7576F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_26F75E360(a1, v19 - v9);
  v11 = sub_26F779338();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26F75E244(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_26F7792E8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_26F779328();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.InferenceType.rawValue.getter()
{
  v1 = 1684104562;
  if (*v0 != 1)
  {
    v1 = 0x646579616C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C617669727261;
  }
}

TrustKit::TKDecisioningService::TKSpamDecisioningOutput::TKSpamClassification_optional __swiftcall TKDecisioningService.TKSpamDecisioningOutput.TKSpamClassification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_26F779618();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 3;
  if (v4 < 3)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

uint64_t sub_26F7579A4()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26F757A78;
  v2 = *(v0 + 16);

  return sub_26F758390(sub_26F758390, 0x40AAD21B3B700000, 3, &unk_26F77BC10, v2);
}

uint64_t sub_26F757A78()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_26F757BA4;
  }

  else
  {
    v2 = sub_26F757B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F757BBC(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_26F779098();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F757C7C, 0, 0);
}

uint64_t sub_26F757C7C(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  v1[9] = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  v6 = sub_26F7793D8();
  sub_26F756E10(v6, 0xD00000000000001ELL, 0x800000026F780220, 0xD00000000000005DLL, 0x800000026F780040, 23);
  sub_26F779088();
  v1[10] = sub_26F779078();
  v1[11] = v7;
  (*(v3 + 8))(v2, v4);
  v8 = *(v5 + 32);
  v1[12] = v8;

  return MEMORY[0x2822009F8](sub_26F757D74, v8, 0);
}

uint64_t sub_26F757D74()
{
  sub_26F760098("prepare", 7, 2, *(v0 + 80), *(v0 + 88), 0);

  return MEMORY[0x2822009F8](sub_26F757DF4, 0, 0);
}

uint64_t sub_26F757DF4()
{
  v1 = *(v0[5] + 16);
  if (v1)
  {
    v2 = *(v0[5] + 16);
  }

  else
  {
    if (qword_28141B320 != -1)
    {
      swift_once();
    }

    v2 = qword_28141B318;
    v1 = 0;
  }

  v0[13] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_26F757EE4;

  return sub_26F752754();
}

uint64_t sub_26F757EE4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_26F75812C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 96);

    v3 = sub_26F758008;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_26F758008()
{
  v1 = *(v0 + 88);
  sub_26F760098("prepare", 7, 2, *(v0 + 80), v1, 1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x2822009F8](sub_26F758094, 0, 0);
}

uint64_t sub_26F758094()
{
  v13 = v0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = -1;
  v1 = sub_26F74B1B0(3u, 0, v11);
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26F75812C()
{
  v44 = v0;
  v1 = *(v0 + 88);
  v40 = *(v0 + 120);

  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = sub_26F778FC8();
  sub_26F777B50(v9, 0xD000000000000026, 0x800000026F780250, &v41);

  v10 = v41;
  v11 = v42;
  v12 = v43;
  v13 = sub_26F7793C8();
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 32) = v12;
  sub_26F74AEE0();
  v14 = sub_26F7797F8();
  v16 = v15;
  sub_26F756E10(v13, v14, v15, 0xD00000000000005DLL, 0x800000026F780040, 41);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  sub_26F75E4D8(v10, v11, v12);
  v24 = sub_26F74B1B0(3u, 0, &v41);
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_26F75E47C(v41, v42, v43, v32, v33, v34, v35, v36);
  swift_allocError();
  *v37 = v10;
  *(v37 + 8) = v11;
  *(v37 + 16) = v12;
  swift_willThrow();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_26F7582F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F7486D8;

  return sub_26F757BBC(a1, v1);
}

uint64_t sub_26F758390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return MEMORY[0x2822009F8](sub_26F758408, 0, 0);
}

uint64_t sub_26F758408()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = &unk_26F77C168;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_26F75856C;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v8, v9, v10, 0, 0, &unk_26F77C178, v6, v11);
}

uint64_t sub_26F75856C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_26F75F018;
  }

  else
  {

    v2 = sub_26F75F010;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F758688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return MEMORY[0x2822009F8](sub_26F758700, 0, 0);
}

uint64_t sub_26F758700()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 40);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = &unk_26F77C0C0;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_26F758860;
  v8 = *(v0 + 16);

  return MEMORY[0x282200740](v8, &type metadata for TKDecisioningService.TKSpamDecisioningOutput, &type metadata for TKDecisioningService.TKSpamDecisioningOutput, 0, 0, &unk_26F77C0D0, v6, &type metadata for TKDecisioningService.TKSpamDecisioningOutput);
}

uint64_t sub_26F758860()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_26F7589F4;
  }

  else
  {

    v2 = sub_26F75897C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F75897C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F7589F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F758A9C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26F77BBE0;
  swift_retain_n();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_26F758BB0;
  v3 = *(v0 + 48);

  return sub_26F75B38C(&unk_26F77BC30, v3, &unk_26F77BC40, v1);
}

uint64_t sub_26F758BB0(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_26F758D40;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v5 = sub_26F758CDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F758CDC()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26F758D40()
{
  v1 = *(v0 + 64);

  v2 = sub_26F7793C8();
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000040, 0x800000026F77FFF0);
  swift_getErrorValue();
  v3 = sub_26F7797F8();
  v5 = v4;
  MEMORY[0x274395240](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v2, 0, 0xE000000000000000, 0xD00000000000005DLL, 0x800000026F780040, 69);

  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_26F758E98(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26F758EB8, 0, 0);
}

uint64_t sub_26F758EB8()
{
  v1 = *(v0[6] + 16);
  if (v1)
  {
    v2 = *(v0[6] + 16);
  }

  else
  {
    if (qword_28141B320 != -1)
    {
      swift_once();
    }

    v2 = qword_28141B318;
    v1 = 0;
  }

  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26F758FA8;

  return sub_26F752C84();
}

uint64_t sub_26F758FA8(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26F759100;
  }

  else
  {

    *(v4 + 33) = a1 & 1;
    v5 = sub_26F7590DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F759100()
{
  v35 = v0;
  v1 = *(v0 + 72);

  v2 = sub_26F778FC8();
  sub_26F777B50(v2, 0xD000000000000037, 0x800000026F780190, &v32);

  v3 = v32;
  v4 = v33;
  v5 = v34;
  v6 = sub_26F7793C8();
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000041, 0x800000026F7801D0);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  sub_26F74AEE0();
  v7 = sub_26F7797F8();
  v9 = v8;
  sub_26F75E490(v3, v4, v5, v10, v11, v12, v13, v14);
  MEMORY[0x274395240](v7, v9);
  v9, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  v22 = v33;
  sub_26F756E10(v6, v32, v33, 0xD00000000000005DLL, 0x800000026F780040, 61);
  v22, v23, v24, v25, v26, v27, v28, v29;

  **(v0 + 40) = 0;
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_26F7592C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F7486D8;

  return sub_26F758E98(a1, v1);
}

uint64_t TKDecisioningService.inference(for:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26F759388, 0, 0);
}

uint64_t sub_26F759388()
{
  v1 = *(v0 + 88);
  sub_26F75DBCC(*(v0 + 80), v0 + 16);
  v2 = swift_allocObject();
  sub_26F75DC30((v0 + 16), v2 + 16);
  *(v2 + 56) = v1;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_26F7594A0;

  return sub_26F758688(v0 + 56, 0x40AAD21B3B700000, 3, &unk_26F77BC60, v2);
}

uint64_t sub_26F7594A0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26F7595F0;
  }

  else
  {
    v2 = sub_26F7595B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F7595B4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v2 + 24) = &type metadata for TKDecisioningService.TKSpamDecisioningOutput;
  *(v2 + 32) = &protocol witness table for TKDecisioningService.TKSpamDecisioningOutput;
  *v2 = v1;
  *(v2 + 8) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_26F759608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[61] = a2;
  v3[62] = a3;
  v3[60] = a1;
  v4 = sub_26F779098();
  v3[63] = v4;
  v3[64] = *(v4 - 8);
  v3[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F7596CC, 0, 0);
}

uint64_t sub_26F7596CC()
{
  v80 = v0;
  sub_26F75DBCC(*(v0 + 488), v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF708, &qword_26F77C110);
  if (swift_dynamicCast())
  {
    *(v0 + 186) = *(v0 + 90);
    v1 = *(v0 + 80);
    *(v0 + 160) = *(v0 + 64);
    *(v0 + 176) = v1;
    v2 = *(v0 + 48);
    *(v0 + 128) = *(v0 + 32);
    *(v0 + 144) = v2;
    *(v0 + 112) = *(v0 + 16);
    v3 = *(v0 + 152);
    v4 = *(v0 + 144) & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    if (v4)
    {
      v5 = *(v0 + 136);
      v6 = *(v0 + 128) & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v6 = HIBYTE(v5) & 0xF;
      }

      if (v6)
      {
        v7 = *(v0 + 112);
        v8 = *(v0 + 120);
        *(v0 + 528) = v7;
        *(v0 + 536) = v8;
        v9 = v7 & 0xFFFFFFFFFFFFLL;
        if ((v8 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v8) & 0xF;
        }

        if (v9)
        {
          v10 = *(v0 + 520);
          v11 = *(v0 + 504);
          v12 = *(v0 + 512);
          v13 = *(v0 + 496);
          sub_26F779088();
          *(v0 + 544) = sub_26F779078();
          *(v0 + 552) = v14;
          (*(v12 + 8))(v10, v11);
          v15 = *(v13 + 32);
          *(v0 + 560) = v15;

          return MEMORY[0x2822009F8](sub_26F759AA4, v15, 0);
        }
      }
    }

    v31 = sub_26F7793C8();
    *&v75 = 0;
    *(&v75 + 1) = 0xE000000000000000;
    sub_26F7794F8();
    0xE000000000000000, v32, v33, v34, v35, v36, v37, v38;
    v39 = *(v0 + 160);
    v77 = *(v0 + 144);
    v78 = v39;
    v79[0] = *(v0 + 176);
    *(v79 + 10) = *(v0 + 186);
    v40 = *(v0 + 128);
    v75 = *(v0 + 112);
    v76 = v40;
    v41 = TKDecisioningService.TKSpamDecisioningInput.description.getter();
    v43 = v42;
    v44 = v78;
    *(v0 + 336) = v77;
    *(v0 + 352) = v44;
    *(v0 + 368) = v79[0];
    *(v0 + 378) = *(v79 + 10);
    v45 = v76;
    *(v0 + 304) = v75;
    *(v0 + 320) = v45;
    sub_26F75E4A8(v0 + 304);
    MEMORY[0x274395240](v41, v43);
    v43, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v31, 0xD000000000000011, 0x800000026F780170, 0xD00000000000005DLL, 0x800000026F780040, 106);
    0x800000026F780170, v53, v54, v55, v56, v57, v58, v59;
    v75 = xmmword_26F77BBF0;
    LOBYTE(v76) = 0;
    v60 = sub_26F74B1B0(4u, 0, &v75);
    v60, v61, v62, v63, v64, v65, v66, v67;
    sub_26F75E47C(v75, *(&v75 + 1), v76, v68, v69, v70, v71, v72);
    sub_26F74AEE0();
    swift_allocError();
    *v30 = xmmword_26F77BBF0;
  }

  else
  {
    v16 = sub_26F7793C8();
    sub_26F756E10(v16, 0xD00000000000002CLL, 0x800000026F780100, 0xD00000000000005DLL, 0x800000026F780040, 83);
    *&v75 = 0xD000000000000013;
    *(&v75 + 1) = 0x800000026F780130;
    LOBYTE(v76) = 0;
    v17 = sub_26F74B1B0(4u, 0, &v75);
    v17, v18, v19, v20, v21, v22, v23, v24;
    sub_26F75E47C(v75, *(&v75 + 1), v76, v25, v26, v27, v28, v29);
    sub_26F74AEE0();
    swift_allocError();
    *v30 = 0xD000000000000013;
    *(v30 + 8) = 0x800000026F780130;
  }

  *(v30 + 16) = 0;
  swift_willThrow();

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_26F759AA4()
{
  sub_26F760098("inference", 9, 2, *(v0 + 544), *(v0 + 552), 0);

  return MEMORY[0x2822009F8](sub_26F759B28, 0, 0);
}

uint64_t sub_26F759B28()
{
  v1 = *(*(v0 + 496) + 16);
  if (v1)
  {
    v2 = *(*(v0 + 496) + 16);
  }

  else
  {
    if (qword_28141B320 != -1)
    {
      swift_once();
    }

    v2 = qword_28141B318;
    v1 = 0;
  }

  *(v0 + 568) = v2;
  v3 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v3;
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 282) = *(v0 + 186);
  v4 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 576) = v6;
  *v6 = v0;
  v6[1] = sub_26F759C50;

  return sub_26F75317C(v0 + 464, v0 + 208);
}

uint64_t sub_26F759C50()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v3, v4, v5, v6, v7, v8, v9, v10;
    v11 = sub_26F75A034;
  }

  else
  {

    v11 = sub_26F759D80;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26F759D80()
{
  v1 = *(v0 + 560);
  *(v0 + 106) = *(v0 + 464);
  *(v0 + 592) = *(v0 + 472);
  return MEMORY[0x2822009F8](sub_26F759DAC, v1, 0);
}

uint64_t sub_26F759DAC()
{
  v1 = *(v0 + 552);
  sub_26F760098("inference", 9, 2, *(v0 + 544), v1, 1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x2822009F8](sub_26F759E3C, 0, 0);
}

uint64_t sub_26F759E3C()
{
  v37 = v0;
  if (*(v0 + 200) == 1)
  {
    sub_26F75E4A8(v0 + 112);
    v1 = MEMORY[0x277D84F98];
  }

  else
  {
    v2 = sub_26F779238();
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v3;
    sub_26F7625DC(v2, 0x546567617373656DLL, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
    sub_26F75E4A8(v0 + 112);
    v1 = v3;
  }

  if (*(v0 + 201) > 1u)
  {
    if (*(v0 + 201) != 2)
    {
      goto LABEL_11;
    }

    v5 = 0xE700000000000000;
  }

  else if (*(v0 + 201))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = sub_26F779238();
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = v1;
  sub_26F7625DC(v6, 0x636E657265666E69, 0xED00006570795465, v14);
LABEL_11:
  v15 = *(v0 + 592);
  v16 = *(v0 + 106);
  v17 = *(v0 + 480);
  v35[0] = 0;
  v35[1] = 0;
  v36 = -1;
  v18 = sub_26F74B1B0(4u, v1, v35);
  v1, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  *v17 = v16;
  *(v17 + 8) = v15;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_26F75A034()
{
  v52 = v0;
  v1 = sub_26F778FC8();
  sub_26F777B50(v1, 0xD00000000000001CLL, 0x800000026F780150, &v49);

  v2 = v49;
  v3 = v50;
  v4 = v51;
  v5 = sub_26F7793C8();
  *(v0 + 440) = v2;
  *(v0 + 448) = v3;
  *(v0 + 456) = v4;
  sub_26F74AEE0();
  v6 = sub_26F7797F8();
  v8 = v7;
  sub_26F756E10(v5, v6, v7, 0xD00000000000005DLL, 0x800000026F780040, 133);
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = MEMORY[0x277D84F98];
  if (*(v0 + 200) != 1)
  {
    v17 = sub_26F779238();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v16;
    sub_26F7625DC(v17, 0x546567617373656DLL, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
    v16 = v49;
  }

  if (*(v0 + 201) > 1u)
  {
    if (*(v0 + 201) != 2)
    {
      goto LABEL_10;
    }

    v19 = 0xE700000000000000;
  }

  else if (*(v0 + 201))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  v20 = sub_26F779238();
  v19, v21, v22, v23, v24, v25, v26, v27;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v16;
  sub_26F7625DC(v20, 0x636E657265666E69, 0xED00006570795465, v28);
  v16 = v49;
LABEL_10:
  v29 = *(v0 + 584);
  v30 = sub_26F779238();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v16;
  sub_26F7625DC(v30, 0x6E696769726FLL, 0xE600000000000000, v31);
  sub_26F75E4A8(v0 + 112);
  v32 = v49;
  v49 = v2;
  v50 = v3;
  v51 = v4;
  sub_26F75E4D8(v2, v3, v4);
  v33 = sub_26F74B1B0(4u, v32, &v49);

  v33, v34, v35, v36, v37, v38, v39, v40;
  sub_26F75E47C(v49, v50, v51, v41, v42, v43, v44, v45);
  swift_allocError();
  *v46 = v2;
  *(v46 + 8) = v3;
  *(v46 + 16) = v4;
  swift_willThrow();

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_26F75A34C()
{
  type metadata accessor for TKDecisioningService(0);
  v0 = swift_allocObject();
  result = sub_26F75B060();
  qword_28141B308 = v0;
  return result;
}

uint64_t static TKDecisioningService.shared.getter()
{
  if (qword_28141B300 != -1)
  {
    swift_once();
  }
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.origin.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.sender.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.messageBody.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.receiverISOCountryCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.trustIndicator.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void TKDecisioningService.TKSpamDecisioningInput.MessageType.init(rawValue:)(_TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = sub_26F779618();
  a2, v6, v7, v8, v9, v10, v11, v12;
  *a3 = v5 != 0;
}

void sub_26F75A550(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_26F779618();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

TrustKit::TKDecisioningService::TKSpamDecisioningInput::InferenceType_optional __swiftcall TKDecisioningService.TKSpamDecisioningInput.InferenceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_26F779618();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 3;
  if (v4 < 3)
  {
    v13 = v4;
  }

  *v3 = v13;
  return result;
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.init(sender:messageBody:receiverISOCountryCode:attachments:trustIndicator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 8) = 0xE000000000000000;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = 769;
  return result;
}

__n128 TKDecisioningService.TKSpamDecisioningInput.init(origin:sender:messageBody:receiverISOCountryCode:attachments:trustIndicator:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[4] = a10;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u16[4] = 769;
  return result;
}

__n128 TKDecisioningService.TKSpamDecisioningInput.init(origin:sender:messageBody:receiverISOCountryCode:attachments:trustIndicator:messageType:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unsigned __int8 *a12)
{
  result = a10;
  v13 = *a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[4] = a10;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v13;
  a9[5].n128_u8[9] = 3;
  return result;
}

__n128 TKDecisioningService.TKSpamDecisioningInput.init(origin:sender:messageBody:receiverISOCountryCode:attachments:trustIndicator:messageType:inferenceType:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unsigned __int8 *a12, unsigned __int8 *a13)
{
  result = a10;
  v14 = *a12;
  v15 = *a13;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[4] = a10;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v14;
  a9[5].n128_u8[9] = v15;
  return result;
}

uint64_t TKDecisioningService.TKSpamDecisioningInput.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v92 = v0[2];
  v93 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[7];
  v94 = v0[6];
  v95 = v0[9];
  v6 = v0[10];
  v96 = *(v0 + 88);
  v7 = *(v0 + 89);
  if (qword_28141B580 != -1)
  {
    swift_once();
  }

  v9 = qword_28141B5C8;
  v8 = unk_28141B5D0;
  if (qword_28141B5C8 == 0x6C74636B74 && unk_28141B5D0 == 0xE500000000000000 || (sub_26F779748() & 1) != 0 || v9 == 0xD000000000000014 && 0x800000026F7800A0 == v8 || (sub_26F779748() & 1) != 0)
  {
    sub_26F7794F8();
    MEMORY[0x274395240](0x3D6E696769726FLL, 0xE700000000000000);
    MEMORY[0x274395240](v2, v1);
    MEMORY[0x274395240](0x7265646E6573202CLL, 0xE90000000000003DLL);
    MEMORY[0x274395240](v92, v93);
    MEMORY[0x274395240](0x67617373656D202CLL, 0xEE003D79646F4265);
    MEMORY[0x274395240](v3, v4);
    MEMORY[0x274395240](0xD000000000000019, 0x800000026F77F690);
    if (v5)
    {
      v10 = v94;
    }

    else
    {
      v10 = 0;
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    MEMORY[0x274395240](v10, v11);
    v11, v12, v13, v14, v15, v16, v17, v18;
    MEMORY[0x274395240](0xD000000000000011, 0x800000026F77F6B0);
    v19 = sub_26F779738();
    v21 = v20;
    MEMORY[0x274395240](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x274395240](0xD000000000000011, 0x800000026F77F6D0);
    if (v6)
    {
      v29 = v95;
    }

    else
    {
      v29 = 7104878;
    }

    if (v6)
    {
      v30 = v6;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    MEMORY[0x274395240](v29, v30);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x274395240](0x67617373656D202CLL, 0xEE003D6570795465);
    if (v96)
    {
      v38 = 7104878;
    }

    else
    {
      v38 = 7369839;
    }

    MEMORY[0x274395240](v38, 0xE300000000000000);
    0xE300000000000000, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x274395240](0xD000000000000010, 0x800000026F77F6F0);
    if (v7 <= 1)
    {
      if (!v7)
      {
LABEL_26:
        v46 = 0xE700000000000000;
        v47 = 0x6C617669727261;
        goto LABEL_47;
      }

LABEL_43:
      v46 = 0xE400000000000000;
      v47 = 1684104562;
      goto LABEL_47;
    }
  }

  else
  {
    v48 = 0xE000000000000000;
    sub_26F7794F8();
    MEMORY[0x274395240](0x3D6E696769726FLL, 0xE700000000000000);
    MEMORY[0x274395240](v2, v1);
    MEMORY[0x274395240](0x7265646E6573202CLL, 0xE90000000000003DLL);
    MEMORY[0x274395240](v92, v93);
    MEMORY[0x274395240](0xD000000000000019, 0x800000026F77F690);
    if (v5)
    {
      v49 = v94;
    }

    else
    {
      v49 = 0;
    }

    if (v5)
    {
      v48 = v5;
    }

    MEMORY[0x274395240](v49, v48);
    v48, v50, v51, v52, v53, v54, v55, v56;
    MEMORY[0x274395240](0xD000000000000011, 0x800000026F77F6B0);
    v57 = sub_26F779738();
    v59 = v58;
    MEMORY[0x274395240](v57);
    v59, v60, v61, v62, v63, v64, v65, v66;
    MEMORY[0x274395240](0xD000000000000011, 0x800000026F77F6D0);
    if (v6)
    {
      v67 = v95;
    }

    else
    {
      v67 = 7104878;
    }

    if (v6)
    {
      v68 = v6;
    }

    else
    {
      v68 = 0xE300000000000000;
    }

    MEMORY[0x274395240](v67, v68);
    v68, v69, v70, v71, v72, v73, v74, v75;
    MEMORY[0x274395240](0x67617373656D202CLL, 0xEE003D6570795465);
    if (v96)
    {
      v76 = 7104878;
    }

    else
    {
      v76 = 7369839;
    }

    MEMORY[0x274395240](v76, 0xE300000000000000);
    0xE300000000000000, v77, v78, v79, v80, v81, v82, v83;
    MEMORY[0x274395240](0xD000000000000010, 0x800000026F77F6F0);
    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }
  }

  if (v7 == 2)
  {
    v46 = 0xE700000000000000;
    v47 = 0x646579616C6564;
  }

  else
  {
    v46 = 0xE300000000000000;
    v47 = 7104878;
  }

LABEL_47:
  MEMORY[0x274395240](v47, v46);
  v46, v84, v85, v86, v87, v88, v89, v90;
  return 0;
}