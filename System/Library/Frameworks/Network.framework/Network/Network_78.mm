uint64_t sub_181F48244(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t _s7Network24MutableParametersStorageC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy(__src, (a1 + 16), sizeof(__src));
  swift_beginAccess();
  memcpy(v8, (a2 + 16), sizeof(v8));
  memcpy(v5, (a2 + 16), sizeof(v5));
  sub_181F481DC(__dst, v10);
  sub_181F481DC(v8, v10);
  LOBYTE(a2) = _s7Network10ParametersV2eeoiySbAC_ACtFZ_0(__src, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_181F48214(v9);
  memcpy(v10, __src, sizeof(v10));
  sub_181F48214(v10);
  return a2 & 1;
}

uint64_t sub_181F48350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
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

unint64_t sub_181F483C4()
{
  result = qword_1EA836888;
  if (!qword_1EA836888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836888);
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

uint64_t sub_181F48460(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a1[2];
      v3 = a1[3];
      v4 = a1[4];
      v5 = a1[5];
      v6 = a2[2];
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v10 = sub_181F48584(v2, v3, v4, v5, v6, v7, v8, v9);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v10)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_181F48584(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!a1)
  {
    if (a5)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (!a5)
  {
    return 0;
  }

  v8 = a1[3];
  if (v8 != a5[3])
  {
    return 0;
  }

  if (!v8 || a1 == a5)
  {
LABEL_24:
    if (!a2)
    {
      goto LABEL_50;
    }

    goto LABEL_25;
  }

  v46 = a2;
  v47 = a3;
  v45 = a7;
  v9 = a6;
  v10 = a4;
  v11 = a8;
  v12 = a1[4];
  v13 = v12 + v8;
  if (a1[2] < v12 + v8)
  {
    v13 = a1[2];
  }

  v53 = a1;
  v54 = v12;
  v55 = v13;
  v14 = a5[4];
  v15 = v14 + v8;
  if (a5[2] < v15)
  {
    v15 = a5[2];
  }

  v50 = a5;
  v51 = v14;
  v52 = v15;
  v16 = a5;
  swift_retain_n();

  while (1)
  {
    v17 = v54;
    if (v54 != v55)
    {
      goto LABEL_14;
    }

    if (sub_181F47FDC())
    {
      v17 = v54;
LABEL_14:
      v54 = v17 + 1;
      v18 = &v53[2 * v17];
      v19 = v18[5];
      v20 = v18[6];
      swift_unknownObjectRetain();
      goto LABEL_16;
    }

    v19 = 0;
    v20 = 0;
LABEL_16:
    if (v14 == v52)
    {
      break;
    }

LABEL_19:
    v22 = v14 + 1;
    v51 = v14 + 1;
    v23 = &v16[2 * v14];
    v25 = v23[5];
    v24 = v23[6];
    swift_unknownObjectRetain();
    if (!v19)
    {
      goto LABEL_48;
    }

    if (!v25)
    {
      goto LABEL_56;
    }

    ObjectType = swift_getObjectType();
    v49 = 0;
    v27 = (*(v20 + 24))(v25, v24, &v49, ObjectType, v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = v22;
    if ((v27 & 1) == 0)
    {
LABEL_45:

LABEL_57:

      return 0;
    }
  }

  v21 = sub_181F47FDC();
  v16 = v50;
  if (v21)
  {
    v14 = v51;
    goto LABEL_19;
  }

  if (v19)
  {
LABEL_56:

    swift_unknownObjectRelease();
    goto LABEL_57;
  }

  v25 = 0;
LABEL_48:

  if (v25)
  {
    goto LABEL_60;
  }

  a8 = v11;
  a4 = v10;
  a6 = v9;
  a7 = v45;
  a2 = v46;
  a3 = v47;
  if (!v46)
  {
LABEL_50:
    if (a6)
    {
      return 0;
    }

    goto LABEL_51;
  }

LABEL_25:
  if (!a6)
  {
    return 0;
  }

  v28 = a2[3];
  if (v28 != a6[3])
  {
    return 0;
  }

  if (!v28 || a2 == a6)
  {
LABEL_51:
    if (!a3)
    {
      goto LABEL_62;
    }

LABEL_52:
    if (!a7)
    {
      return 0;
    }

    v42 = a8;
    v43 = a4;
    result = nw_proxy_config_is_equal(a3, a7);
    a4 = v43;
    a8 = v42;
    if (result)
    {
LABEL_63:
      if (a4)
      {
        if (!a8 || (nw_proxy_config_is_equal(a4, a8) & 1) == 0)
        {
          return 0;
        }
      }

      else if (a8)
      {
        return 0;
      }

      return 1;
    }

    return result;
  }

  v48 = a3;
  v29 = a7;
  v30 = a4;
  v31 = a8;
  v32 = a2[4];
  v33 = v32 + v28;
  if (a2[2] < v32 + v28)
  {
    v33 = a2[2];
  }

  v53 = a2;
  v54 = v32;
  v55 = v33;
  v34 = a6[4];
  v35 = v34 + v28;
  if (a6[2] < v35)
  {
    v35 = a6[2];
  }

  v50 = a6;
  v51 = v34;
  v52 = v35;
  v36 = a6;
  swift_retain_n();

  while (2)
  {
    v37 = v54;
    if (v54 == v55)
    {
      if (sub_181F47FDC())
      {
        v37 = v54;
        goto LABEL_37;
      }

      v38 = 0;
    }

    else
    {
LABEL_37:
      v54 = v37 + 1;
      v38 = v53[v37 + 5];
      swift_unknownObjectRetain();
    }

    if (v34 != v52)
    {
      goto LABEL_42;
    }

    v39 = sub_181F47FDC();
    v36 = v50;
    if (v39)
    {
      v34 = v51;
LABEL_42:
      v51 = v34 + 1;
      v40 = v36[v34 + 5];
      swift_unknownObjectRetain();
      if (!v38)
      {
        goto LABEL_59;
      }

      if (!v40)
      {
        goto LABEL_56;
      }

      is_equal = nw_proxy_config_is_equal(v38, v40);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      ++v34;
      if ((is_equal & 1) == 0)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  if (v38)
  {
    goto LABEL_56;
  }

  v40 = 0;
LABEL_59:

  if (v40)
  {
LABEL_60:
    swift_unknownObjectRelease();
    return 0;
  }

  a8 = v31;
  a4 = v30;
  a7 = v29;
  a3 = v48;
  if (v48)
  {
    goto LABEL_52;
  }

LABEL_62:
  if (!a7)
  {
    goto LABEL_63;
  }

  return 0;
}

uint64_t sub_181F48984(uint64_t a1)
{
  v2 = *(v1 + 288);
  if (!v2)
  {
    v3 = a1;
    type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
    v2 = swift_allocObject();
    a1 = v3;
    *(v2 + 16) = xmmword_182AE3CC0;
    *(v2 + 32) = xmmword_182AE3CC0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 48) = 1;
    *(v1 + 288) = v2;
  }

  *(v2 + 64) = a1;
}

unint64_t sub_181F48A10()
{
  result = qword_1EA8385E8;
  if (!qword_1EA8385E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8385E8);
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

uint64_t sub_181F48B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F48BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_181F48CD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181F48D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F48DB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181F48E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DNSFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DNSFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F4900C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F4902C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_181F4907C()
{
  result = qword_1EA838600;
  if (!qword_1EA838600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838600);
  }

  return result;
}

unint64_t sub_181F490D4()
{
  result = qword_1EA838608;
  if (!qword_1EA838608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838608);
  }

  return result;
}

unint64_t sub_181F4912C()
{
  result = qword_1EA838610;
  if (!qword_1EA838610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838610);
  }

  return result;
}

unint64_t sub_181F49184()
{
  result = qword_1EA838618;
  if (!qword_1EA838618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838618);
  }

  return result;
}

unint64_t sub_181F491DC()
{
  result = qword_1EA838620;
  if (!qword_1EA838620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838620);
  }

  return result;
}

unint64_t sub_181F49230()
{
  result = qword_1EA838628;
  if (!qword_1EA838628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838628);
  }

  return result;
}

unint64_t sub_181F49288()
{
  result = qword_1EA838630;
  if (!qword_1EA838630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838630);
  }

  return result;
}

unint64_t sub_181F492E0()
{
  result = qword_1EA838638;
  if (!qword_1EA838638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838638);
  }

  return result;
}

unint64_t sub_181F49338()
{
  result = qword_1EA838640;
  if (!qword_1EA838640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838640);
  }

  return result;
}

unint64_t sub_181F4938C()
{
  result = qword_1EA838648;
  if (!qword_1EA838648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838648);
  }

  return result;
}

unint64_t sub_181F493E4()
{
  result = qword_1EA838650;
  if (!qword_1EA838650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838650);
  }

  return result;
}

unint64_t sub_181F4943C()
{
  result = qword_1EA838658;
  if (!qword_1EA838658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838658);
  }

  return result;
}

unint64_t sub_181F49494()
{
  result = qword_1EA838660;
  if (!qword_1EA838660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838660);
  }

  return result;
}

unint64_t sub_181F494EC()
{
  result = qword_1EA838668;
  if (!qword_1EA838668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838668);
  }

  return result;
}

unint64_t sub_181F49544()
{
  result = qword_1EA838670;
  if (!qword_1EA838670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838670);
  }

  return result;
}

unint64_t sub_181F4959C()
{
  result = qword_1EA838678;
  if (!qword_1EA838678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838678);
  }

  return result;
}

uint64_t sub_181F49638(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181F49680()
{
  result = qword_1EA836F18;
  if (!qword_1EA836F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F18);
  }

  return result;
}

unint64_t sub_181F496D8()
{
  result = qword_1EA836F20;
  if (!qword_1EA836F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F20);
  }

  return result;
}

void *sub_181F4972C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386A8, &qword_182AE4B38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F49964();
  sub_182AD45E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838698, &qword_182AE4B30);
  sub_181F499B8(&unk_1EA8367B0, MEMORY[0x1E69E7698], MEMORY[0x1E69E6330]);
  sub_182AD3FF8();
  result = v10;
  if (!(v10[2] >> 61))
  {
    v7 = v10[4];

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_181F49918(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD3F48();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_181F49964()
{
  result = qword_1EA8368A0;
  if (!qword_1EA8368A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8368A0);
  }

  return result;
}

uint64_t sub_181F499B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA838698, &qword_182AE4B30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_181F49A24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_181F49A34()
{
  result = qword_1EA836D30;
  if (!qword_1EA836D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836D30);
  }

  return result;
}

uint64_t sub_181F49A88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_181F49B44(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_181F49B58(result, a2);
  }

  return v2;
}

double sub_181F49B58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IPProtocol(unsigned int *a1, int a2)
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

uint64_t sub_181F49C14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_181F49C5C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_181F49CAC()
{
  result = qword_1EA8387A8;
  if (!qword_1EA8387A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387A8);
  }

  return result;
}

unint64_t sub_181F49D04()
{
  result = qword_1EA8387B0;
  if (!qword_1EA8387B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387B0);
  }

  return result;
}

unint64_t sub_181F49D5C()
{
  result = qword_1EA8387B8;
  if (!qword_1EA8387B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387B8);
  }

  return result;
}

unint64_t sub_181F49DB4()
{
  result = qword_1EA836890;
  if (!qword_1EA836890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836890);
  }

  return result;
}

unint64_t sub_181F49E0C()
{
  result = qword_1EA836898;
  if (!qword_1EA836898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolMapping(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProtocolMapping(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_181F49FD4()
{
  result = qword_1EA8387C0;
  if (!qword_1EA8387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387C0);
  }

  return result;
}

unint64_t sub_181F4A02C()
{
  result = qword_1EA8387C8;
  if (!qword_1EA8387C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387C8);
  }

  return result;
}

unint64_t sub_181F4A084()
{
  result = qword_1EA8387D0;
  if (!qword_1EA8387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387D0);
  }

  return result;
}

void sub_181F4A1FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_182AD4668();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 1.84467441e19)
  {
    *a4 = v5;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_181F4A270()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0x100000001;
  mach_timebase_info(v1);
  result = *v1;
  qword_1EA8387E0 = v1[0];
  return result;
}

uint64_t sub_181F4A300(uint64_t a1, unsigned int *a2, void *a3)
{
  if (qword_1EA837028 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a2 = v3;
    a3 = v4;
  }

  *a3 = *a2;
  return result;
}

uint64_t ProtocolMetadata.matches(protocolIdentifier:)(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  *v13 = v2;
  v14 = *(a1 + 4);
  v15 = v3;
  v8 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v16, v13);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  sub_181F49A24(v5, v6, v7);
  sub_181F48350(v9, v10, v11);
  return v8 & 1;
}

uint64_t sub_181F4A410(__int16 *a1, uint64_t a2, _OWORD *a3)
{
  v6 = swift_allocObject();
  sub_181F4A468(a1, a2, a3);
  return v6;
}

uint64_t *sub_181F4A468(__int16 *a1, uint64_t a2, _OWORD *a3)
{
  v6 = *v3;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  *(v3 + 57) = 0;
  v11 = *(v6 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v3 + v11, 1, 1, AssociatedTypeWitness);
  *(v3 + 8) = v7;
  v3[3] = v8;
  v3[4] = v9;
  *(v3 + 40) = v10;
  *(v3 + 41) = *a3;
  v13 = *(*v3 + 120);
  swift_beginAccess();
  v14 = sub_182AD39B8();
  (*(*(v14 - 8) + 40))(v3 + v13, a2, v14);
  swift_endAccess();
  return v3;
}

uint64_t ProtocolMetadata.isEqual(to:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(*v2 + 80);
  v62 = *(*v2 + 88);
  v61 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_182AD39B8();
  v71 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v56 - v13;
  v69 = AssociatedTypeWitness;
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v56 - v17;
  v59 = *a2;
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
  v78 = *(v2 + 16);
  v79 = v18;
  v80 = v19;
  v81 = v20;
  v21 = *(a1 + 16);
  v23 = *(a1 + 24);
  v22 = *(a1 + 32);
  v66 = a1;
  v24 = *(a1 + 40);
  v74 = v21;
  v75 = v23;
  v76 = v22;
  v77 = v24;
  LODWORD(v72) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v78, &v74);
  v25 = v75;
  v26 = v76;
  LOBYTE(a1) = v77;
  sub_181F49A24(v18, v19, v20);
  sub_181F49A24(v23, v22, v24);
  sub_181F48350(v25, v26, a1);
  sub_181F48350(v79, v80, v81);
  if ((v72 & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = *(*v2 + 120);
  swift_beginAccess();
  v28 = v71;
  v29 = *(v71 + 16);
  v57 = v27;
  v31 = v67;
  v30 = v68;
  v29(v67, v2 + v27, v68);
  v32 = v73[6];
  v33 = v69;
  v34 = v32(v31, 1, v69);
  v72 = v29;
  v58 = v32;
  if (v34 == 1)
  {
    v35 = v33;
  }

  else
  {
    v67 = v73[4];
    (v67)(v70, v31, v33);
    v36 = v30;
    v37 = v66;
    v38 = *(*v66 + 120);
    swift_beginAccess();
    v39 = v37 + v38;
    v30 = v36;
    v31 = v64;
    v29(v64, v39, v36);
    v35 = v33;
    if (v32(v31, 1, v33) != 1)
    {
      v52 = v60;
      (v67)(v60, v31, v33);
      LOBYTE(v74) = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v54 = v70;
      v50 = (*(AssociatedConformanceWitness + 16))(v52, &v74, v33, AssociatedConformanceWitness);
      v55 = v73[1];
      v55(v52, v33);
      v55(v54, v33);
      return v50 & 1;
    }

    (v73[1])(v70, v33);
    v28 = v71;
  }

  v40 = *(v28 + 8);
  v40(v31, v30);
  v41 = v2 + v57;
  v42 = v65;
  v43 = v72;
  v72(v65, v41, v30);
  v44 = v58;
  v45 = v58(v42, 1, v35);
  v40(v42, v30);
  if (v45 == 1)
  {
    v46 = v66;
    v47 = *(*v66 + 120);
    swift_beginAccess();
    v48 = v46 + v47;
    v49 = v63;
    v43(v63, v48, v30);
    v50 = v44(v49, 1, v35) == 1;
    v40(v49, v30);
  }

  else
  {
LABEL_8:
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t ProtocolMetadata.isEqual(to:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v8 = *a3;
    swift_unknownObjectRetain();
    v6 = ProtocolMetadata.isEqual(to:for:)(v5, &v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t static ProtocolMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v6 = 0;
    v4 = ProtocolMetadata.isEqual(to:for:)(a3, &v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_181F4AE14()
{
  v0 = nw_protocol_copy_ws_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  *(v1 + 32) = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  *(v1 + 16) = v3;
  *(v1 + 24) = v5;
  off_1EA838800 = v1;
}

double static NWProtocolWebSocket.definition.getter()
{
  if (qword_1EA837040 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t NWProtocolWebSocket.Version.hashValue.getter()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t sub_181F4AF74()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t sub_181F4AFB8(uint64_t a1)
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

Network::NWProtocolWebSocket::Opcode_optional __swiftcall NWProtocolWebSocket.Opcode.init(rawValue:)(Network::NWProtocolWebSocket::Opcode_optional rawValue)
{
  if (rawValue.value > 0xAu)
  {
    *v1 = 6;
  }

  else
  {
    *v1 = byte_182AE56BA[rawValue.value];
  }

  return rawValue;
}

uint64_t sub_181F4B07C()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F4B114(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

Network::NWProtocolWebSocket::CloseCode::Defined_optional __swiftcall NWProtocolWebSocket.CloseCode.Defined.init(rawValue:)(Swift::UInt16 rawValue)
{
  if ((rawValue - 1000) > 0xFu)
  {
    *v1 = 12;
  }

  else
  {
    *v1 = byte_182AE5740[(rawValue - 1000)];
  }

  return rawValue;
}

uint64_t sub_181F4B1FC()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t sub_181F4B284(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t NWProtocolWebSocket.CloseCode.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result - 1000) > 0x7CFu)
  {
    if ((result - 3000) < 0x3E8u)
    {
      v3 = 1;
      goto LABEL_8;
    }

    if ((result - 4000) < 0x3E8u)
    {
      v3 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    NWProtocolWebSocket.CloseCode.Defined.init(rawValue:)(result);
    result = v5;
    if (v5 != 12)
    {
      v3 = 0;
LABEL_8:
      *a2 = result;
      *(a2 + 2) = v3;
      return result;
    }
  }

  sub_181F4B3B8();
  swift_allocError();
  *v4 = 22;
  *(v4 + 4) = 0;
  return swift_willThrow();
}

unint64_t sub_181F4B3B8()
{
  result = qword_1EA836C00;
  if (!qword_1EA836C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C00);
  }

  return result;
}

void sub_181F4B448(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  nw_ws_options_set_auto_reply_ping(*(v1 + 16), a1 & 1);
}

void (*sub_181F4B494(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4B4E8;
}

void sub_181F4B4E8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    nw_ws_options_set_auto_reply_ping(v5, v6);
  }
}

void sub_181F4B570(size_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  nw_ws_options_set_maximum_message_size(*(v1 + 16), a1);
}

void (*sub_181F4B5BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4B610;
}

void sub_181F4B610(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);

    nw_ws_options_set_maximum_message_size(v5, v6);
  }
}

void sub_181F4B698(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  nw_ws_options_set_skip_handshake(*(v1 + 16), a1 & 1);
}

void (*sub_181F4B6E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4B738;
}

void sub_181F4B738(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 40);

    nw_ws_options_set_skip_handshake(v5, v6);
  }
}

BOOL sub_181F4B78C(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = nw_protocol_copy_ws_definition();
  is_equal = nw_protocol_definition_is_equal(v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return is_equal;
}

uint64_t NWProtocolWebSocket.Options.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 16) = nw_ws_create_options(nw_ws_version_13);
  return v0;
}

uint64_t NWProtocolWebSocket.Options.init(_:)()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 16) = nw_ws_create_options(nw_ws_version_13);
  return v0;
}

uint64_t sub_181F4B860(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_181F4B8A0(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = result + 56;
    do
    {
      v5 = sub_182AD3048();
      v6 = sub_182AD3048();
      nw_ws_options_add_additional_header(v3, (v5 + 32), (v6 + 32));

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_181F4B928(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = result + 40;
    do
    {
      v5 = sub_182AD3048();
      nw_ws_options_add_subprotocol(v3, (v5 + 32));

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_181F4B988(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181F4C918;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181F4BF0C;
  v10[3] = &block_descriptor;
  v9 = _Block_copy(v10);

  nw_ws_options_set_client_request_handler(v7, a1, v9);
  _Block_release(v9);
}

NSObject *sub_181F4BA74(NSObject *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = &v31;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_181F4D2B4;
  *(v6 + 24) = v5;
  v29 = sub_181B77468;
  v30 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_181B7749C;
  v28 = &block_descriptor_64;
  v7 = _Block_copy(&aBlock);

  nw_ws_request_enumerate_subprotocols(a1, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = &v24;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_181F4D2BC;
  *(v10 + 24) = v9;
  v29 = sub_181F4D2E8;
  v30 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_181F4BED8;
  v28 = &block_descriptor_74;
  v11 = _Block_copy(&aBlock);

  nw_ws_request_enumerate_additional_headers(a1, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = v31;

  v15 = sub_182184D94(v14);

  a2(&aBlock, v13, v15);

  v16 = v28;
  if (aBlock)
  {
    v17 = nw_ws_response_status_reject;
  }

  else
  {
    v17 = nw_ws_response_status_accept;
  }

  if (v27)
  {
    v18 = (sub_182AD3048() + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = nw_ws_response_create(v17, v18);
  swift_unknownObjectRelease();
  if (v16)
  {

    v20 = v16[2];
    if (v20)
    {
      v21 = (v16 + 7);
      do
      {
        v22 = sub_182AD3048();
        v23 = sub_182AD3048();
        nw_ws_response_add_additional_header(v19, (v22 + 32), (v23 + 32));

        v21 += 32;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
  }

  return v19;
}

uint64_t sub_181F4BE20(uint64_t a1, char **a2)
{
  v3 = sub_182AD3158();
  v5 = v4;
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_181E59474(0, *(v6 + 2) + 1, 1, v6);
    *a2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_181E59474((v8 > 1), v9 + 1, 1, v6);
    *a2 = v6;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  return 1;
}

id sub_181F4BF0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t NWProtocolWebSocket.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolWebSocket.Metadata.__allocating_init(opcode:)(char *a1)
{
  v2 = swift_allocObject();
  NWProtocolWebSocket.Metadata.init(opcode:)(a1);
  return v2;
}

uint64_t NWProtocolWebSocket.Metadata.init(opcode:)(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = v2;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(dword_182AE56C8[v2]);
  return v1;
}

uint64_t sub_181F4C060(NSObject *a1)
{
  v2 = swift_allocObject();
  sub_181F4C0A0(a1);
  return v2;
}

uint64_t sub_181F4C0A0(NSObject *a1)
{
  if (nw_ws_metadata_get_opcode(a1) == nw_ws_opcode_invalid)
  {
    v4 = 0;
LABEL_8:
    *(v1 + 24) = v4;
    close_code = nw_ws_metadata_get_close_code(a1);
    if (!WORD1(close_code))
    {
      NWProtocolWebSocket.CloseCode.init(rawValue:)(close_code, &v8);
      v6 = v9;
      *(v1 + 40) = v8;
      *(v1 + 42) = v6;
      *(v1 + 32) = nw_ws_metadata_copy_server_response(a1);
      *(v1 + 16) = a1;
      return v1;
    }

    __break(1u);
    goto LABEL_11;
  }

  opcode = nw_ws_metadata_get_opcode(a1);
  if (opcode < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (opcode <= 0xFF)
  {
    if (opcode > nw_ws_opcode_pong || ((0x707u >> opcode) & 1) == 0)
    {
      goto LABEL_13;
    }

    v4 = byte_182AE56E0[opcode];
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_181F4C190@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 42);
  *a1 = *(v1 + 40);
  *(a1 + 2) = v4;
  return result;
}

void sub_181F4C1DC(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 42) = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = dword_182AE56EC[v2];
  }

  nw_ws_metadata_set_close_code(*(v1 + 16), v4);
}

void (*sub_181F4C258(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4C2AC;
}

void sub_181F4C2AC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 40);
    if (*(v4 + 42))
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 40);
      if (v5 == 10)
      {
        v8 = 1011;
      }

      else
      {
        v8 = 1015;
      }

      if (v7 == 9)
      {
        v9 = 1010;
      }

      else
      {
        v9 = v8;
      }

      if (v7 == 7)
      {
        v10 = 1008;
      }

      else
      {
        v10 = 1009;
      }

      if (v7 == 6)
      {
        v11 = 1007;
      }

      else
      {
        v11 = v10;
      }

      if (v5 <= 8u)
      {
        v9 = v11;
      }

      if (v7 == 4)
      {
        v12 = 1005;
      }

      else
      {
        v12 = 1006;
      }

      if (v7 == 3)
      {
        v13 = 1003;
      }

      else
      {
        v13 = v12;
      }

      if (v7 == 1)
      {
        v14 = 1001;
      }

      else
      {
        v14 = 1002;
      }

      if (v7)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1000;
      }

      if (v5 > 2u)
      {
        v15 = v13;
      }

      if (v5 <= 5u)
      {
        v5 = v15;
      }

      else
      {
        v5 = v9;
      }
    }

    nw_ws_metadata_set_close_code(v6, v5);
  }
}

void sub_181F4C3A0(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181F4C920;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181AA4EBC;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  nw_ws_metadata_set_pong_handler(v7, a1, v9);
  _Block_release(v9);
}

uint64_t sub_181F4C48C()
{
  if (*(v0 + 32))
  {
    v1 = swift_unknownObjectRetain();
    if (nw_ws_response_get_selected_subprotocol(v1))
    {
      v2 = sub_182AD3158();
      swift_unknownObjectRelease();
      return v2;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

NSObject *sub_181F4C4F8()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return v1;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_181F4D2EC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_181F4C928;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F4BED8;
  aBlock[3] = &block_descriptor_16;
  v4 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_ws_response_enumerate_additional_headers(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v1 = v8;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F4C66C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_182AD3158();
  v6 = v5;
  v7 = sub_182AD3158();
  v9 = v8;
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_181F59728(0, v10[2] + 1, 1, v10);
    *a3 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_181F59728((v12 > 1), v13 + 1, 1, v10);
    *a3 = v10;
  }

  v10[2] = v13 + 1;
  v14 = &v10[4 * v13];
  v14[4] = v4;
  v14[5] = v6;
  v14[6] = v7;
  v14[7] = v9;
  return 1;
}

uint64_t NWProtocolWebSocket.Metadata.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NWProtocolWebSocket.Metadata.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolWebSocket.Response.Status.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t NWProtocolWebSocket.Response.subprotocol.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void __swiftcall NWProtocolWebSocket.Response.init(status:subprotocol:additionalHeaders:)(Network::NWProtocolWebSocket::Response *__return_ptr retstr, Network::NWProtocolWebSocket::Response::Status status, Swift::String_optional subprotocol, Swift::OpaquePointer_optional additionalHeaders)
{
  retstr->status = *status;
  retstr->subprotocol = subprotocol;
  retstr->additionalHeaders.value._rawValue = additionalHeaders.value._rawValue;
}

BOOL _s7Network19NWProtocolWebSocketC9CloseCodeO2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 2);
  if (*(a1 + 2))
  {
    v6 = v4 == 1 && v2 == v3;
    v8 = v4 == 2 && v2 == v3;
    if (*(a1 + 2) == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return !*(a2 + 2) && word_182AE571C[v2] == word_182AE571C[v3];
  }
}

unint64_t sub_181F4C958()
{
  result = qword_1EA838810;
  if (!qword_1EA838810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838810);
  }

  return result;
}

unint64_t sub_181F4C9B0()
{
  result = qword_1EA838818;
  if (!qword_1EA838818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838818);
  }

  return result;
}

unint64_t sub_181F4CA08()
{
  result = qword_1EA838820;
  if (!qword_1EA838820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838820);
  }

  return result;
}

unint64_t sub_181F4CA60()
{
  result = qword_1EA838828;
  if (!qword_1EA838828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838828);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.CloseCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.CloseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
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
      *(result + 2) = -a2;
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

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.CloseCode.Defined(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.CloseCode.Defined(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181F4D0A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_181F4D100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.Response.Status(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.Response.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t BrowseResult.Change.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v15 = *(swift_getTupleTypeMetadata2() + 48);
      v16 = *(v2 + 32);
      v16(v7, v11, v1);
      v16(v4, &v11[v15], v1);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x6465676E6168632ELL, 0xE900000000000028);
      sub_182AD4228();
      MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
      sub_182AD4228();
      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v14 = v19;
      v17 = *(v2 + 8);
      v17(v4, v1);
      v17(v7, v1);
      return v14;
    }

    (*(v2 + 32))(v7, v11, v1);
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x1865D9CA0](0x6465766F6D65722ELL, 0xE900000000000028);
    sub_182AD4228();
  }

  else
  {
    (*(v2 + 32))(v7, v11, v1);
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x1865D9CA0](0x2864656464612ELL, 0xE700000000000000);
    sub_182AD4228();
    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  }

  v14 = v19;
  (*(v2 + 8))(v7, v1);
  return v14;
}

double BrowseResult.endpoints.getter()
{
  sub_181F5B674();

  return result;
}

double BrowseResult.changes.getter()
{
  sub_181F5B67C();

  return result;
}

uint64_t BrowseResult.init(endpoints:changes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t BrowseResult.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BrowseResult.Change(0, *(a1 + 16), a3, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = *(v4 + 8);

  if (!sub_182AD3478())
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v29 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530, &unk_182AE5750);
    sub_181F5B69C();
    v23 = sub_182AD2EC8();

    return v23;
  }

  v11 = 0;
  v28 = (v6 + 16);
  v25 = v7;
  v26 = (v6 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  v27 = v6;
  while (1)
  {
    v13 = sub_182AD3438();
    sub_182AD33E8();
    if ((v13 & 1) == 0)
    {
      break;
    }

    result = (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_18;
    }

LABEL_5:
    v16 = BrowseResult.Change.description.getter(v5);
    v18 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_181E59474(0, *(v12 + 2) + 1, 1, v12);
    }

    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    if (v20 >= v19 >> 1)
    {
      v12 = sub_181E59474((v19 > 1), v20 + 1, 1, v12);
    }

    (*v26)(v9, v5);
    *(v12 + 2) = v20 + 1;
    v21 = &v12[16 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v18;
    ++v11;
    v22 = v15 == sub_182AD3478();
    v6 = v27;
    if (v22)
    {

      goto LABEL_17;
    }
  }

  result = sub_182AD3C18();
  if (v25 != 8)
  {
    goto LABEL_19;
  }

  v29 = result;
  (*v28)(v9, &v29, v5);
  result = swift_unknownObjectRelease();
  v15 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_5;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

double BrowseResult.makeIterator()@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;

  return result;
}

uint64_t BrowseResult.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v3;
  v6 = *(a1 + 16);
  v7 = sub_182AD3478();
  v8 = v3[1];
  if (v8 != v7)
  {
    v11 = sub_182AD3438();
    sub_182AD33E8();
    if (v11)
    {
      v12 = *(v6 - 8);
      result = (*(v12 + 16))(a2, v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8, v6);
      v13 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
LABEL_7:
        v3[1] = v13;
        return (*(v12 + 56))(a2, 0, 1, v6);
      }
    }

    else
    {
      result = sub_182AD3C18();
      v12 = *(v6 - 8);
      if (*(v12 + 64) != 8)
      {
LABEL_12:
        __break(1u);
        return result;
      }

      v14 = result;
      (*(v12 + 16))(a2, &v14, v6);
      result = swift_unknownObjectRelease();
      v13 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v9 = *(*(v6 - 8) + 56);

  return v9(a2, 1, 1, v6);
}

Swift::Int __swiftcall BrowseResult.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181F4DC98@<X0>(uint64_t *a1@<X8>)
{
  BrowseResult.makeIterator()(a1);
}

uint64_t sub_181F4DCD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_181F4DD30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_181F5B700(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_181F4DDCC@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = BrowseResult.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t (*sub_181F4DDF4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_181F4DEC4(v6, *a2, a3);
  return sub_181F4DE7C;
}

void sub_181F4DE7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_181F4DEC4(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_182AD3498();
  return sub_181F4DF98;
}

void sub_181F4DF98(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_181F4DFE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

void *sub_181F4E0E0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_181F4E0F8(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

double sub_181F4E12C()
{
  sub_181F5B674();

  return result;
}

double sub_181F4E154()
{
  sub_181F5B67C();

  return result;
}

uint64_t sub_181F4E180(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_182AD3778();
}

uint64_t sub_181F4E2D8(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = a3;
  v52 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  v47 = a2;
  v6 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v10 = sub_182AD36C8();
  v48 = *(v10 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  v24 = a2[2];
  (*(v13 + 16))(v16, v24 + *(*v24 + 96), v6, v21);
  (*(v3 + 32))(v6, v3);
  (*(v13 + 8))(v16, v6);
  v50 = v23;
  sub_181D8E118(v23, v19, type metadata accessor for NWBrowser.Descriptor);
  v25 = *(v24 + *(*v24 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v26 = sub_181F9A300(v19, v25);

  v27 = swift_allocObject();
  v27[2] = v6;
  v27[3] = v3;
  v43 = v6;
  v44 = v3;
  v28 = v3;
  v46 = v26;
  v27[4] = v26;

  v29 = v52;
  sub_182AD3688();
  v30 = v48;
  v45 = *(v48 + 16);
  v31 = v12;
  v45(v12, v29, v10);
  v32 = *(v30 + 80);
  v33 = (v32 + 32) & ~v32;
  v49 += 7;
  v34 = (v49 + v33) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v6;
  *(v35 + 24) = v28;
  v48 = *(v30 + 32);
  v36 = v31;
  (v48)(v35 + v33, v31, v10);
  v37 = v47;
  *(v35 + v34) = v47;

  sub_181AA39C0(sub_181F5E1E4, v35);
  NWBrowser.stateUpdateHandler.setter(sub_181F5E1E4, v35);

  v45(v36, v52, v10);
  v38 = (v32 + 40) & ~v32;
  v39 = (v49 + v38) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v44;
  v40[2] = v43;
  v40[3] = v41;
  v40[4] = v37;
  (v48)(v40 + v38, v36, v10);
  *(v40 + v39) = v51;

  sub_181AA39C0(sub_181F5E57C, v40);
  NWBrowser.browseResultsChangedHandler.setter(sub_181F5E57C, v40);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWBrowser.start(queue:)(qword_1EA8433A8);

  return sub_181F5E1FC(v50, type metadata accessor for NWBrowser.Descriptor);
}

uint64_t Browser1.AsyncSequenceBrowseResults.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181F4E870@<X0>(uint64_t a1@<X8>)
{
  Browser1.AsyncSequenceBrowseResults.makeAsyncIterator()(a1);
}

uint64_t sub_181F4E908(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_181F5BBD4(a1, a2, a3);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_181F4E990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = a3();

  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_181F4EA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_allocObject();
  v7 = a3(a1, a2);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v7;
}

double sub_181F4EAF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = (v3 + *(*v3 + 112));
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  a3(v7, v6);

  return result;
}

uint64_t sub_181F4EB70@<X0>(uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = sub_182AD3698();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = sub_182AD3728();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v17 - v14;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8790], v7, v13);
  v18 = v2;
  v19 = v3;
  sub_182AD3738();
  sub_182AD35B8();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_181F4EDC0(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = a3;
  v52 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  v47 = a2;
  v6 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v10 = sub_182AD36C8();
  v48 = *(v10 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  v24 = a2[2];
  (*(v13 + 16))(v16, v24 + *(*v24 + 96), v6, v21);
  (*(v3 + 32))(v6, v3);
  (*(v13 + 8))(v16, v6);
  v50 = v23;
  sub_181D8E118(v23, v19, type metadata accessor for NWBrowser.Descriptor);
  v25 = *(v24 + *(*v24 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v26 = sub_181F9A300(v19, v25);

  v27 = swift_allocObject();
  v27[2] = v6;
  v27[3] = v3;
  v43 = v6;
  v44 = v3;
  v28 = v3;
  v46 = v26;
  v27[4] = v26;

  v29 = v52;
  sub_182AD3688();
  v30 = v48;
  v45 = *(v48 + 16);
  v31 = v12;
  v45(v12, v29, v10);
  v32 = *(v30 + 80);
  v33 = (v32 + 32) & ~v32;
  v49 += 7;
  v34 = (v49 + v33) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v6;
  *(v35 + 24) = v28;
  v48 = *(v30 + 32);
  v36 = v31;
  (v48)(v35 + v33, v31, v10);
  v37 = v47;
  *(v35 + v34) = v47;

  sub_181AA39C0(sub_181F5E1E4, v35);
  NWBrowser.stateUpdateHandler.setter(sub_181F5E1E4, v35);

  v45(v36, v52, v10);
  v38 = (v32 + 40) & ~v32;
  v39 = (v49 + v38) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v44;
  v40[2] = v43;
  v40[3] = v41;
  v40[4] = v37;
  (v48)(v40 + v38, v36, v10);
  *(v40 + v39) = v51;

  sub_181AA39C0(sub_181F5EB8C, v40);
  NWBrowser.browseResultsChangedHandler.setter(sub_181F5EB8C, v40);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWBrowser.start(queue:)(qword_1EA8433A8);

  return sub_181F5E1FC(v50, type metadata accessor for NWBrowser.Descriptor);
}

unsigned int *sub_181F4F300(unsigned int *result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void (*)(uint64_t, uint64_t *, __n128), uint64_t))
{
  v6 = *(result + 4);
  v7 = *result | (v6 << 32);
  v8 = v6 >> 6;
  if (v8)
  {
    if (v8 == 1 || v7 < 0xFFFFFF8000000002)
    {
      goto LABEL_7;
    }

    v18 = 0;
  }

  else
  {
    sub_181F4B3B8();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 4) = BYTE4(v7);
    v18 = v9;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  sub_182AD36C8();
  result = sub_182AD36B8();
LABEL_7:
  v14 = a3[2];
  v15 = v14 + *(*v14 + 112);
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 8);
    BYTE4(v18) = BYTE4(v7);
    LODWORD(v18) = v7;

    (v16)(v14, &v18);
    return a4(v16, v17);
  }

  return result;
}

void sub_181F4F490(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v147 = a4;
  v158 = a2;
  v5 = *a3;
  v178 = *(*a3 + 88);
  v173 = a3;
  v6 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for BrowseResult.Change(0, AssociatedTypeWitness, v8, v9);
  MEMORY[0x1EEE9AC00](v10);
  v149 = v130 - v11;
  v14 = type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v12, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v146 = v14;
  v145 = v15;
  v138 = sub_182AD3678();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = v130 - v16;
  v17 = type metadata accessor for NWBrowser.Result.Change(0);
  v166 = *(v17 - 8);
  v167 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v157 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v165 = v130 - v20;
  v172 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v135 = v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v144 = v130 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v143 = v130 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v142 = v130 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v130 - v31);
  v164 = sub_182AD39B8();
  v33 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v134 = v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v141 = v130 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v140 = v130 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v139 = v130 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v130 - v42;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v45);
  v131 = v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v148 = v130 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v133 = v130 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v132 = v130 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v155 = (v130 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v154 = v130 - v56;
  v57 = type metadata accessor for NWBrowser.Result(0);
  v168 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v156 = v130 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v151 = v130 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v153 = v130 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v152 = v130 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v169 = v130 - v66;
  v171 = AssociatedTypeWitness;
  v182 = sub_182AD3418();
  v150 = v10;
  v67 = sub_182AD3418();
  v69 = a1 + 56;
  v68 = *(a1 + 56);
  v70 = 1 << *(a1 + 32);
  v71 = -1;
  v130[1] = v67;
  v181 = v67;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v68;
  v73 = (v70 + 63) >> 6;
  v175 = v178 + 40;
  v176 = (v21 + 2);
  v177 = (v21 + 1);
  v174 = (v44 + 48);
  v163 = (v44 + 32);
  v160 = (v44 + 16);
  v161 = (v44 + 8);
  v162 = (v33 + 8);
  v170 = a1;

  v74 = 0;
  v75 = 0;
  while (v72)
  {
    v76 = v74;
    v77 = v169;
LABEL_12:
    sub_181D8E118(*(v170 + 48) + *(v168 + 9) * (__clz(__rbit64(v72)) | (v76 << 6)), v77, type metadata accessor for NWBrowser.Result);
    v78 = v172;
    (*v176)(v32, v173[2] + *(*v173[2] + 96), v172);
    v21 = v32;
    (*(v178 + 40))(v77, v78);
    if (v75)
    {
      sub_181F5E1FC(v77, type metadata accessor for NWBrowser.Result);

      (*v177)(v32, v78);
LABEL_57:

      v179 = v75;
      sub_182AD36C8();
      sub_182AD36B8();
      return;
    }

    v72 &= v72 - 1;
    sub_181F5E1FC(v77, type metadata accessor for NWBrowser.Result);
    (*v177)(v32, v78);
    v79 = v171;
    if ((*v174)(v43, 1, v171) == 1)
    {
      (*v162)(v43, v164);
    }

    else
    {
      v80 = v154;
      (*v163)(v154, v43, v79);
      v81 = *v160;
      v159 = 0;
      v81(v155, v80, v79);
      sub_182AD3488();
      v21 = &v182;
      v75 = v159;
      sub_182AD3468();
      (*v161)(v80, v79);
    }

    v74 = v76;
  }

  v77 = v169;
  while (1)
  {
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      __break(1u);

      v168(v21, v43);
      (*v161)(v148, v77);
LABEL_55:
      sub_181F5E1FC(v156, type metadata accessor for NWBrowser.Result);
      v129 = v151;
LABEL_56:
      sub_181F5E1FC(v129, type metadata accessor for NWBrowser.Result);
      goto LABEL_57;
    }

    if (v76 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v76);
    ++v74;
    if (v72)
    {
      goto LABEL_12;
    }
  }

  v82 = v158;
  v83 = (v158 + 56);
  v84 = 1 << *(v158 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v158 + 56);
  v87 = (v84 + 63) >> 6;

  v88 = 0;
  v89 = v171;
  v90 = v172;
  v91 = v157;
  v169 = v83;
  v170 = v87;
  while (v86)
  {
    v92 = v88;
LABEL_23:
    v93 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
    v94 = v165;
    sub_181D8E118(*(v82 + 48) + *(v166 + 72) * (v93 | (v92 << 6)), v165, type metadata accessor for NWBrowser.Result.Change);
    sub_181D8DC88(v94, v91, type metadata accessor for NWBrowser.Result.Change);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v88 = v92;
        continue;
      }

      v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0) + 48);
      v100 = v151;
      sub_181D8DC88(v91, v151, type metadata accessor for NWBrowser.Result);
      sub_181D8DC88(v91 + v99, v156, type metadata accessor for NWBrowser.Result);
      v101 = v173[2];
      v102 = *(*v101 + 96);
      v103 = *v176;
      v104 = v144;
      (*v176)(v144, v101 + v102, v90);
      v105 = v90;
      v106 = *(v178 + 40);
      v107 = v141;
      v108 = v100;
      v109 = v105;
      v106(v108, v105);
      if (v75)
      {

        (*v177)(v104, v109);
        goto LABEL_55;
      }

      v168 = *v177;
      v168(v104, v109);
      v110 = v171;
      v159 = *v174;
      if (v159(v107, 1, v171) == 1)
      {
        sub_181F5E1FC(v156, type metadata accessor for NWBrowser.Result);
        sub_181F5E1FC(v151, type metadata accessor for NWBrowser.Result);
        (*v162)(v107, v164);
        v88 = v92;
        v90 = v109;
        v82 = v158;
        v89 = v110;
      }

      else
      {
        v116 = v107;
        v117 = v110;
        v155 = *v163;
        v155(v148, v116, v110);
        v118 = v135;
        v103(v135, v101 + v102, v109);
        v119 = v134;
        (v106)(v156, v109, v178);
        v168(v118, v109);
        v90 = v109;
        v89 = v117;
        if (v159(v119, 1, v117) == 1)
        {
          (*v161)(v148, v117);
          sub_181F5E1FC(v156, type metadata accessor for NWBrowser.Result);
          sub_181F5E1FC(v151, type metadata accessor for NWBrowser.Result);
          (*v162)(v119, v164);
        }

        else
        {
          v122 = v131;
          v155(v131, v119, v117);
          v123 = *(swift_getTupleTypeMetadata2() + 48);
          v124 = *v160;
          v125 = v149;
          (*v160)(v149, v148, v117);
          v124(&v125[v123], v122, v117);
          swift_storeEnumTagMultiPayload();
          sub_182AD3488();
          sub_182AD3468();
          v126 = *v161;
          (*v161)(v122, v117);
          v126(v148, v117);
          sub_181F5E1FC(v156, type metadata accessor for NWBrowser.Result);
          sub_181F5E1FC(v151, type metadata accessor for NWBrowser.Result);
        }

        v88 = v92;
        v82 = v158;
      }

      v91 = v157;
      goto LABEL_46;
    }

    if (!EnumCaseMultiPayload)
    {
      v96 = v152;
      sub_181D8DC88(v91, v152, type metadata accessor for NWBrowser.Result);
      v97 = v142;
      (*v176)(v142, v173[2] + *(*v173[2] + 96), v90);
      v98 = v139;
      (*(v178 + 40))(v96, v90);
      if (v75)
      {

        (*v177)(v97, v90);
        v128 = &v183;
LABEL_51:
        v129 = *(v128 - 32);
        goto LABEL_56;
      }

      (*v177)(v97, v90);
      if ((*v174)(v98, 1, v89) == 1)
      {
        sub_181F5E1FC(v152, type metadata accessor for NWBrowser.Result);
        (*v162)(v98, v164);
      }

      else
      {
        v115 = v132;
        (*v163)(v132, v98, v89);
        (*v160)(v149, v115, v89);
        swift_storeEnumTagMultiPayload();
        sub_182AD3488();
        v91 = v157;
        sub_182AD3468();
        (*v161)(v115, v89);
        sub_181F5E1FC(v152, type metadata accessor for NWBrowser.Result);
      }

      v88 = v92;
LABEL_46:
      v83 = v169;
      v87 = v170;
      continue;
    }

    v111 = v89;
    v112 = v153;
    sub_181D8DC88(v91, v153, type metadata accessor for NWBrowser.Result);
    v113 = v143;
    (*v176)(v143, v173[2] + *(*v173[2] + 96), v90);
    v114 = v140;
    (*(v178 + 40))(v112, v90);
    if (v75)
    {

      (*v177)(v113, v90);
      v128 = &v184;
      goto LABEL_51;
    }

    (*v177)(v113, v90);
    if ((*v174)(v114, 1, v111) == 1)
    {
      sub_181F5E1FC(v153, type metadata accessor for NWBrowser.Result);
      (*v162)(v114, v164);
    }

    else
    {
      v120 = v133;
      (*v163)(v133, v114, v111);
      (*v160)(v149, v120, v111);
      swift_storeEnumTagMultiPayload();
      sub_182AD3488();
      v91 = v157;
      sub_182AD3468();
      v121 = v120;
      v83 = v169;
      (*v161)(v121, v111);
      sub_181F5E1FC(v153, type metadata accessor for NWBrowser.Result);
    }

    v88 = v92;
    v87 = v170;
    v89 = v111;
    v90 = v172;
    v82 = v158;
  }

  while (1)
  {
    v92 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v92 >= v87)
    {

      v179 = v182;
      v180 = v181;
      sub_182AD36C8();
      v127 = v136;
      sub_182AD36A8();
      (*(v137 + 8))(v127, v138);
      return;
    }

    v86 = *&v83[8 * v92];
    ++v88;
    if (v86)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_181F509D8@<X0>(uint64_t a1@<X8>)
{
  Browser2.AsyncSequenceBrowseResults.makeAsyncIterator()(a1);
}

uint64_t sub_181F50A28(uint64_t (*a1)(void, void, void))
{
  a1(0, *(*v1 + 80), *(*v1 + 88));
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t sub_181F50AB8(void (*a1)(void, void))
{
  (*(*(*(*v1 + 80) - 8) + 8))(v1 + *(*v1 + 96));

  a1(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8));
  return v1;
}

uint64_t sub_181F50B8C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t Browser3.__allocating_init(provider:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F5BBD4(a1, a2, sub_181F5B9E0);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_181F50C78(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = type metadata accessor for NWBrowser.Descriptor(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v6 + 88) + 32))(*(v6 + 80), v8);
  v11 = *(a4 + *(*a4 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v12 = sub_181F9A300(v10, v11);

  *(a1 + 16) = v12;
  return result;
}

void sub_181F50DA0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t Browser3.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  v8 = sub_181F5B9E0(a1, a2, v6, v7);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v8;
}

double _s7Network8Browser3C18stateUpdateHandleryACyxGXDyAE_AA9NWBrowserC5StateOtYbYAcSgF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for Browser3.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5BC28((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));

  return result;
}

uint64_t _s7Network8Browser3C3runyyySay8EndpointQzGYaYbKYAcYaKF(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181F51008, 0, 0);
}

uint64_t sub_181F51008()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_181F510FC;
  v5 = *(v0 + 32);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v4, &unk_182AE5770, v2, sub_181F5BD50, v5, 0, 0, v6);
}

uint64_t sub_181F510FC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_181F51218;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F51218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F5127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = type metadata accessor for Browser3.Event(255, *(*a2 + 80), *(*a2 + 88), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3698();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_182AD3728();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F5141C, 0, 0);
}

uint64_t sub_181F5141C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x1E69E8790], *(v0 + 48));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_181F51570;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_181F51570()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_181F51714;
  }

  else
  {

    v2 = sub_181F5168C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F5168C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F51714()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_181F517B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  type metadata accessor for Browser3.Event(255, v6, v7, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD36C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;

  v14 = a1;
  sub_182AD3688();
  v15 = *(a2 + *(*a2 + 112));
  v46 = v6;
  v47 = v7;
  v44 = v7;
  v45 = v6;
  type metadata accessor for Browser3.LockedState(0, v6, v7, v16);
  v17 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v18 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v18));
  sub_181F5E02C(v15 + v17, aBlock);
  os_unfair_lock_unlock((v15 + v18));
  v19 = aBlock[0];
  if (aBlock[0])
  {
    v20 = *(v9 + 16);
    v40 = v9 + 16;
    v41 = v20;
    v37 = v14;
    v20(v13, v14, v8);
    v38 = v8;
    v21 = *(v9 + 80);
    v22 = swift_allocObject();
    v23 = v44;
    *(v22 + 16) = v45;
    *(v22 + 24) = v23;
    v39 = *(v9 + 32);
    v24 = v39(v22 + ((v21 + 32) & ~v21), v13, v8);
    v25 = *(v19 + 24);
    MEMORY[0x1EEE9AC00](v24);
    *(&v36 - 2) = sub_181F5E04C;
    *(&v36 - 1) = v22;
    os_unfair_lock_lock(v25 + 20);
    sub_181F5EB94(&v25[4]);
    os_unfair_lock_unlock(v25 + 20);
    v26 = *(v19 + 16);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F5E04C;
    *(v27 + 24) = v22;
    aBlock[4] = sub_181F5EB0C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F91420;
    aBlock[3] = &block_descriptor_150;
    v28 = _Block_copy(aBlock);

    nw_browser_set_state_changed_handler(v26, v28);
    _Block_release(v28);

    v29 = v42;
    v30 = v38;
    v41(v42, v37, v38);
    v31 = swift_allocObject();
    v32 = v44;
    v31[2] = v45;
    v31[3] = v32;
    v31[4] = a2;
    v39(v31 + ((v21 + 40) & ~v21), v29, v30);

    NWBrowser.browseResultsChangedHandler.setter(sub_181F5E110, v31);
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    NWBrowser.start(queue:)(qword_1EA8433A8);
  }

  else
  {
    sub_181F4B3B8();
    v34 = swift_allocError();
    *v35 = 22;
    *(v35 + 4) = 0;
    aBlock[0] = v34;
    return sub_182AD36B8();
  }
}

void sub_181F51C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for Browser3.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5EB40(v5 + v6, &v8);
  os_unfair_lock_unlock((v5 + v7));
  if (v8)
  {
    NWBrowser.cancel()();
  }
}

uint64_t sub_181F51D78(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Browser3.Event(255, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3678();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(a1 + 4);
  v10 = *a1 | (*(a1 + 4) << 32);
  v14 = v10;
  v15 = 1;
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v6 + 8))(v8, v5);
  if (!(v9 >> 6))
  {
    sub_181F4B3B8();
    v12 = swift_allocError();
    *v13 = v10;
    *(v13 + 4) = BYTE4(v10);
    v14 = v12;
    return sub_182AD36B8();
  }

  if (v9 >> 6 == 2 && v10 == 0x8000000002)
  {
    v14 = 0;
    return sub_182AD36B8();
  }

  return result;
}

void sub_181F51F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = a4;
  v6 = *(*a3 + 80);
  v7 = *(*a3 + 88);
  v43 = type metadata accessor for Browser3.Event(255, v6, v7, a4);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v41 = sub_182AD3678();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - v8;
  v57 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = sub_182AD39B8();
  v10 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v12 = &v38 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v38 - v17;
  v18 = type metadata accessor for NWBrowser.Result(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_182AD2E28();
  v21 = a1;
  v24 = *(a1 + 56);
  v23 = a1 + 56;
  v22 = v24;
  v25 = v21;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v22;
  v29 = *a3;
  v58 = a3;
  v55 = *(v29 + 96);
  v56 = v7;
  v30 = (v26 + 63) >> 6;
  v53 = (v13 + 48);
  v54 = v7 + 40;
  v47 = (v13 + 16);
  v48 = (v13 + 32);
  v45 = (v10 + 8);
  v46 = (v13 + 8);
  v60 = v25;

  v31 = 0;
  v49 = v19;
  while (v28)
  {
    v32 = v31;
    v33 = v59;
LABEL_12:
    sub_181D8E118(*(v60 + 48) + *(v19 + 72) * (__clz(__rbit64(v28)) | (v32 << 6)), v33, type metadata accessor for NWBrowser.Result);
    (*(v56 + 40))(v33, v57);
    v28 &= v28 - 1;
    sub_181F5E1FC(v33, type metadata accessor for NWBrowser.Result);
    if ((*v53)(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*v45)(v12, v52);
    }

    else
    {
      v34 = v12;
      v35 = v50;
      (*v48)(v50, v34, AssociatedTypeWitness);
      (*v47)(v51, v35, AssociatedTypeWitness);
      sub_182AD3488();
      sub_182AD3468();
      v36 = v35;
      v12 = v34;
      v19 = v49;
      (*v46)(v36, AssociatedTypeWitness);
    }

    v31 = v32;
  }

  v33 = v59;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      v61 = v63;
      v62 = 0;
      sub_182AD36C8();
      v37 = v39;
      sub_182AD36A8();
      (*(v40 + 8))(v37, v41);
      return;
    }

    v28 = *(v23 + 8 * v32);
    ++v31;
    if (v28)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_181F52518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v7 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for Browser3.Event(255, *(v7 + 80), *(v7 + 88), v8);
  v6[20] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3708();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F52694, 0, 0);
}

uint64_t sub_181F52694()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_181F52764;
  v2 = *(v0 + 168);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 88);
}

uint64_t sub_181F52764()
{

  if (v0)
  {
    v1 = sub_181F52C14;
  }

  else
  {
    v1 = sub_181F52874;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_181F52874()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 120);
    v21 = *(v0 + 112);
    v22 = *(v0 + 128);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v1;
    *(v8 + 40) = v2 & 1;
    *(v8 + 48) = v21;
    *(v8 + 56) = v5;
    *(v8 + 64) = v22;
    sub_181F5D9BC(v3, v4);
    LODWORD(v3) = (*(v7 + 48))(v4, 1, v6);

    v9 = *(v0 + 136);
    if (v3 == 1)
    {
      sub_181F49A88(*(v0 + 136), &unk_1EA839850, &qword_182AF4770);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 96);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 144);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850, &qword_182AF4770);
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_181F52764;
    v20 = *(v0 + 168);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 88);
  }
}

uint64_t sub_181F52C14()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F52CB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 141) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 80) = *a7;
  *(v7 + 88) = *a7;
  return MEMORY[0x1EEE6DFA0](sub_181F52D28, 0, 0);
}

uint64_t sub_181F52D28()
{
  if (*(v0 + 141))
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(*(v0 + 72) + *(**(v0 + 72) + 112));
    v4 = swift_task_alloc();
    v5 = *(v1 + 80);
    *(v4 + 16) = v5;
    v6 = *(v1 + 88);
    *(v4 + 24) = v6;
    type metadata accessor for Browser3.LockedState(0, v5, v6, v7);
    *(v0 + 32) = v2;
    *(v0 + 40) = &type metadata for NWBrowser.State;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    v8 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
    v9 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v9));
    sub_181F5DFA4((v3 + v8), (v0 + 16));
    os_unfair_lock_unlock((v3 + v9));

    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    *(v0 + 104) = v10;
    *(v0 + 112) = v11;
    if (v10)
    {
      v12 = *(v0 + 48);
      v13 = *(v11 + 16);
      *(v0 + 120) = v13;
      v14 = *(v11 + 24);
      v15 = swift_allocObject();
      *(v0 + 128) = v15;
      v15[2] = v13;
      v15[3] = v14;
      v15[4] = v10;
      v15[5] = v11;
      *(v0 + 140) = BYTE4(v12);
      *(v0 + 136) = v12;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v10, v11);
      if (v13)
      {
        swift_getObjectType();
        v16 = sub_182AD34A8();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_181F53124, v16, v18);
    }

    else
    {
      v22 = *(v0 + 8);

      return v22();
    }
  }

  else
  {
    v19 = *(v0 + 48);
    v23 = (*(v0 + 56) + **(v0 + 56));
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v20[1] = sub_181F53030;

    return v23(v19);
  }
}

uint64_t sub_181F53030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181F53124()
{
  v5 = v0;
  v1 = v0[14];
  v2 = v0[13];
  v4 = v0[9];
  v2(&v4, v0 + 17);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_181F531C0, 0, 0);
}

uint64_t sub_181F531C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_181F53224(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    *(v11 + 32) = a2;
    *(v11 + 40) = a3;
    *(v11 + 48) = v5;
    *(v11 + 56) = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t Browser3.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

BOOL static NetworkBrowser.State.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2 | (*(a2 + 4) << 32);
  v5 = v2 >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      if (((v4 >> 38) & 3) == 1)
      {
        v6 = HIDWORD(v4) & 0x3F;
        v7 = HIDWORD(v3) & 0x3F;
        if ((BYTE4(v3) & 0x3Fu) <= 1)
        {
          if (!v7)
          {
LABEL_6:
            if (v6)
            {
              return 0;
            }

            v8 = sub_182AD2768();
            return v8 == sub_182AD2768();
          }

          return v6 == 1 && v3 == *a2;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 == 0x8000000000 || (v10 = 0x8000000001, v3 == 0x8000000001))
      {
        if ((v4 & 0xFFFFFFFFFFLL) == v10)
        {
          return 1;
        }
      }

      else if ((v4 & 0xFFFFFFFFFFLL) == 0x8000000002)
      {
        return 1;
      }
    }
  }

  else if (((v4 >> 38) & 3) == 0)
  {
    v7 = HIDWORD(v3);
    LODWORD(v6) = BYTE4(v4);
    if (SHIDWORD(v3) <= 1)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_6;
      }

      return v6 == 1 && v3 == *a2;
    }

LABEL_21:
    if (v7 == 2)
    {
      if (v6 != 2 || v3 != *a2)
      {
        return 0;
      }
    }

    else if (v6 != 3 || v3 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t NetworkBrowser.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for NetworkBrowser.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5BD54(v5 + v6, &v9);
  os_unfair_lock_unlock((v5 + v7));
  return v9;
}

void sub_181F535A0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = [*(v3 + 16) description];
    v5 = sub_182AD2F88();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t NetworkBrowser.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  v8 = sub_181F5BD88(a1, a2, v6, v7);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v8;
}

uint64_t sub_181F536C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = a3(a1, a2);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_181F5373C(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = type metadata accessor for NWBrowser.Descriptor(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v6 + 88) + 32))(*(v6 + 80), v8);
  v11 = *(a4 + *(*a4 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v12 = sub_181F9A300(v10, v11);

  *(a1 + 24) = v12;
  return result;
}

double _s7Network0A7BrowserC13onStateUpdateyACyxGXDyAE_AC0D0Oyx_GtYbYAcF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for NetworkBrowser.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5BF74((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));

  return result;
}

uint64_t _s7Network0A7BrowserC3runyyySay8EndpointQzGYaYbKYAcYaKF(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_181F539B0, 0, 0);
}

uint64_t sub_181F539B0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = *(v1 + 80);
  v4[5] = *(v1 + 88);
  v4[6] = v3;
  v4[7] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_181F53AB4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return sub_181F53E80(v5, &unk_182AE5788, v4, v6);
}

uint64_t sub_181F53AB4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_181F53BD0;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F53BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F53C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a1;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_181F53D2C;

  return v9(a2);
}

uint64_t sub_181F53D2C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_181F53E5C, 0, 0);
  }
}

uint64_t sub_181F53E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for NetworkBrowser.Disposition(255, *(*v4 + 80), a4, *(*v4 + 88));
  v5[10] = v6;
  v7 = sub_182AD39B8();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F53FEC, 0, 0);
}

uint64_t sub_181F53FEC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v12 = *(v0 + 48);
  v5 = swift_allocBox();
  *(v0 + 136) = v5;
  *(v0 + 144) = v6;
  (*(v1 + 56))(v6, 1, 1, v2);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v12;
  *(v7 + 48) = v5;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_181F54144;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AE6130, v7, sub_181F5D380, v8, 0, 0, v10);
}

uint64_t sub_181F54144()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_181F544C4;
  }

  else
  {

    v2 = sub_181F54268;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F54268()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  swift_beginAccess();
  (*(v5 + 16))(v2, v1, v4);
  if ((*(v3 + 48))(v2, 1, v6) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_181F4B3B8();
    swift_allocError();
    *v7 = 22;
    *(v7 + 4) = 0;
    swift_willThrow();
LABEL_5:

    v17 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[14];
  v11 = v0[10];
  (*(v10 + 32))(v9, v0[13], v11);
  (*(v10 + 16))(v8, v9, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v0[16];
  v15 = v0[14];
  v14 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v16 = v0[10];
    swift_willThrow();
    (*(v15 + 8))(v13, v16);
    goto LABEL_5;
  }

  v18 = v0[8];
  v19 = v0[5];
  (*(v15 + 8))(v0[16], v0[10]);
  (*(*(v18 - 8) + 32))(v19, v14, v18);

  v17 = v0[1];
LABEL_7:

  return v17();
}

uint64_t sub_181F544C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s7Network0A7BrowserC3runyqd__AC9RunResultOyx_qd__GSay8EndpointQzGYaYbKYAcYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_181F545B0, 0, 0);
}

uint64_t sub_181F545B0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = *(v1 + 80);
  v5[5] = v3;
  v5[6] = *(v1 + 88);
  v5[7] = v4;
  v5[8] = v2;

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_181F546BC;
  v7 = v0[5];
  v8 = v0[2];

  return sub_181F53E80(v8, &unk_182AE57A8, v5, v7);
}

uint64_t sub_181F546BC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181F547F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_181F547F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F5485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_181F54964;

  return v10(a1, a2);
}

uint64_t sub_181F54964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181F54A58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v7 = *a2;
  v8 = *(*a2 + 88);
  v6[8] = v8;
  v9 = *(v7 + 80);
  v6[9] = v9;
  swift_getAssociatedTypeWitness();
  v6[10] = sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v10 = sub_182AD3698();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v11 = sub_182AD3728();
  v6[14] = v11;
  v6[15] = *(v11 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for NetworkBrowser.State(255, v9, v8, v12);
  v13 = sub_182AD3698();
  v6[18] = v13;
  v6[19] = *(v13 - 8);
  v6[20] = swift_task_alloc();
  v14 = sub_182AD3728();
  v6[21] = v14;
  v6[22] = *(v14 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F54D14, 0, 0);
}

uint64_t sub_181F54D14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 24) + *(**(v0 + 24) + 112));
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v1;
  type metadata accessor for NetworkBrowser.LockedState(0, v2, v1, v6);
  v7 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v8));
  sub_181F5D3A4(v4 + v7, (v0 + 16));
  os_unfair_lock_unlock((v4 + v8));

  v9 = *(v0 + 16);
  *(v0 + 192) = v9;
  if (v9)
  {
    v10 = *(v0 + 96);
    v26 = *(v0 + 104);
    v27 = *(v0 + 88);
    v11 = *(v0 + 56);
    v12 = *(v0 + 24);
    v13 = *MEMORY[0x1E69E8790];
    (*(*(v0 + 152) + 104))(*(v0 + 160), v13, *(v0 + 144));
    v14 = swift_task_alloc();
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v9;
    sub_182AD3738();

    (*(v10 + 104))(v26, v13, v27);
    v15 = swift_task_alloc();
    v15[2] = v11;
    v15[3] = v12;
    v15[4] = v9;
    sub_182AD3738();

    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 184);
    v17 = *(v0 + 128);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 24);
    v28 = *(v0 + 32);
    NWBrowser.start(queue:)(qword_1EA8433A8);
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v16;
    *(v21 + 32) = v20;
    *(v21 + 40) = v17;
    *(v21 + 48) = v28;
    *(v21 + 64) = v19;
    *(v21 + 72) = v9;
    v22 = swift_task_alloc();
    *(v0 + 208) = v22;
    *v22 = v0;
    v22[1] = sub_181F550C8;

    return MEMORY[0x1EEE6DE40]();
  }

  else
  {
    sub_181F4B3B8();
    swift_allocError();
    *v23 = 22;
    *(v23 + 4) = 0;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_181F550C8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_181F552C0;
  }

  else
  {

    v2 = sub_181F551E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F551E4()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_181F552C0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_181F553B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 88);
  type metadata accessor for NetworkBrowser.State(255, v7, v8, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD36C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a2;

  sub_182AD3688();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v7;
  *(v17 + 3) = a4;
  *(v17 + 4) = v8;
  (*(v10 + 32))(&v17[v15], v13, v9);
  *&v17[v16] = a2;
  v18 = v25;
  v19 = *(v25 + 24);
  v26 = sub_181F5DCA4;
  v27 = v17;

  os_unfair_lock_lock(v19 + 20);
  sub_181F5DD84(&v19[4]);
  os_unfair_lock_unlock(v19 + 20);
  v20 = *(v18 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_181F5DCA4;
  *(v21 + 24) = v17;
  aBlock[4] = sub_181F5DDA0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F91420;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  nw_browser_set_state_changed_handler(v20, v22);
  _Block_release(v22);
}

void sub_181F55694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for NetworkBrowser.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5EB28(v5 + v6, &v8);
  os_unfair_lock_unlock((v5 + v7));
  if (v8)
  {
    NWBrowser.cancel()();
  }
}

uint64_t sub_181F55790(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NetworkBrowser.State(255, *(*a3 + 80), *(*a3 + 88), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3678();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = *a1 | (*(a1 + 4) << 32);
  v10 = *(a1 + 4) >> 6;
  v11 = *a1 | (*(a1 + 4) << 32) & 0x3FFFFFFFFFLL | 0x4000000000;
  if (v10 != 1)
  {
    v11 = *a1 | (*(a1 + 4) << 32);
  }

  LODWORD(v20) = v11;
  BYTE4(v20) = BYTE4(v11);
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v6 + 8))(v8, v5);
  if (!v10)
  {
    sub_181F4B3B8();
    v13 = swift_allocError();
    *v14 = v9;
    *(v14 + 4) = BYTE4(v9);
    v20 = v13;
    goto LABEL_8;
  }

  if (v10 == 2 && v9 == 0x8000000002)
  {
    v20 = 0;
LABEL_8:
    v15 = sub_182AD36B8();
    return sub_181F55988(v15, v16, v17, v18);
  }

  return result;
}

uint64_t sub_181F55988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for NetworkBrowser.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5DDA8(v5 + v6, &v13);
  os_unfair_lock_unlock((v5 + v7));
  v8 = *(v13 + 16);
  if (v8)
  {
    v9 = v13 + 40;
    do
    {
      v10 = *(v9 - 8);

      v10(v11);

      v9 += 16;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_181F55AB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = *a2;
  v26 = *(*a2 + 88);
  v28 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD36C8();
  v9 = *(v8 - 8);
  v22[1] = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a2;
  v23 = a4;

  v25 = a1;
  sub_182AD3688();
  v24 = *(v9 + 16);
  v24(v11, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v28;
  *(v14 + 3) = a4;
  v15 = v26;
  *(v14 + 4) = v26;
  *(v14 + 5) = a2;
  v16 = *(v9 + 32);
  v16(&v14[(v13 + 48) & ~v13], v11, v8);

  NWBrowser.browseResultsChangedHandler.setter(sub_181F5DAB8, v14);
  v24(v11, v25, v8);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 2) = v28;
  *(v17 + 3) = v18;
  *(v17 + 4) = v15;
  v16(&v17[(v13 + 40) & ~v13], v11, v8);
  sub_181F563F4(sub_181F5DB9C, v17, v19, v20);
}

void sub_181F55D80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v37 = a4;
  v6 = *(*a3 + 88);
  v50 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = sub_182AD3488();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v35 = sub_182AD3678();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v33 - v8;
  v45 = sub_182AD39B8();
  v9 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v33 - v16;
  v17 = type metadata accessor for NWBrowser.Result(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_182AD2E28();
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = *a3;
  v52 = a3;
  v49 = *(v24 + 96);
  v25 = (v21 + 63) >> 6;
  v51 = v6;
  v47 = (v12 + 48);
  v48 = v6 + 40;
  v40 = (v12 + 16);
  v41 = (v12 + 32);
  v38 = (v9 + 8);
  v39 = (v12 + 8);
  v54 = a1;

  v26 = 0;
  v42 = v18;
  while (v23)
  {
    v27 = v26;
    v28 = v53;
LABEL_12:
    sub_181D8E118(*(v54 + 48) + *(v18 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v28, type metadata accessor for NWBrowser.Result);
    (*(v51 + 40))(v28, v50);
    v23 &= v23 - 1;
    sub_181F5E1FC(v28, type metadata accessor for NWBrowser.Result);
    if ((*v47)(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*v38)(v11, v45);
    }

    else
    {
      v29 = v11;
      v30 = v43;
      (*v41)(v43, v29, AssociatedTypeWitness);
      (*v40)(v44, v30, AssociatedTypeWitness);
      swift_checkMetadataState();
      sub_182AD3468();
      v31 = v30;
      v11 = v29;
      v18 = v42;
      (*v39)(v31, AssociatedTypeWitness);
    }

    v26 = v27;
  }

  v28 = v53;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      v55 = v56;
      sub_182AD36C8();
      v32 = v33;
      sub_182AD36A8();
      (*(v34 + 8))(v32, v35);
      return;
    }

    v23 = *(v20 + 8 * v27);
    ++v26;
    if (v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_181F5635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  sub_182AD36C8();
  return sub_182AD36B8();
}

void sub_181F563F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 112));
  type metadata accessor for NetworkBrowser.LockedState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181F5DC7C(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_181F564E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v19;
  v8[10] = v20;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = *a4;
  v10 = *(*a4 + 88);
  v8[11] = v10;
  v11 = *(v9 + 80);
  v8[12] = v11;
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v12 = sub_182AD3728();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v8[15] = *(v13 + 64);
  v8[16] = swift_task_alloc();
  type metadata accessor for NetworkBrowser.State(255, v11, v10, v14);
  v15 = sub_182AD3728();
  v8[17] = v15;
  v16 = *(v15 - 8);
  v8[18] = v16;
  v8[19] = *(v16 + 64);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F56718, 0, 0);
}

uint64_t sub_181F56718()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  v22 = v0[16];
  v23 = v0[15];
  v21 = v0[13];
  v30 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v26 = v0[8];
  v27 = v0[9];
  v24 = v0[6];
  v25 = v0[7];
  v20 = v0[5];
  v18 = v0[4];
  v7 = v0[3];
  v8 = sub_182AD3548();
  v19 = *(*(v8 - 8) + 56);
  v19(v1, 1, 1, v8);
  (*(v4 + 16))(v2, v7, v5);
  v9 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v30;
  *(v10 + 5) = v29;
  *(v10 + 6) = v28;
  (*(v4 + 32))(&v10[v9], v2, v5);
  *&v10[(v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v18;

  sub_182271CA4(v1, &unk_182AE6158, v10);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);
  v19(v1, 1, 1, v8);
  (*(v6 + 16))(v22, v20, v21);
  v11 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v12 = (v23 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v30;
  *(v14 + 5) = v29;
  *(v14 + 6) = v28;
  (*(v6 + 32))(&v14[v11], v22, v21);
  v15 = &v14[v12];
  *v15 = v24;
  *(v15 + 1) = v25;
  *&v14[v13] = v26;
  *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;

  sub_182271CA4(v1, &unk_182AE6168, v14);
  sub_181F49A88(v1, &unk_1EA839850, &qword_182AF4770);

  v16 = v0[1];

  return v16();
}

uint64_t sub_181F56A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v6 = *a4;
  v7 = *(*a4 + 80);
  v5[11] = v7;
  v8 = *(v6 + 88);
  v5[12] = v8;
  v5[13] = type metadata accessor for NetworkBrowser.State(255, v7, v8, a4);
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3708();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F56B88, 0, 0);
}

uint64_t sub_181F56B88()
{
  v1 = v0[8];
  sub_182AD3728();
  sub_182AD35B8();
  v0[18] = *(*v1 + 112);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_181F56C78;
  v3 = v0[15];

  return MEMORY[0x1EEE6DB90](v0 + 25, 0, 0, v3, v0 + 6);
}

uint64_t sub_181F56C78()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_181F571FC;
  }

  else
  {
    v2 = sub_181F56D8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F56D8C()
{
  if (*(v0 + 204) >> 2 < 0x3FuLL)
  {
    v24 = *(v0 + 204);
    v25 = *(v0 + 200);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 64) + *(v0 + 144));
    v9 = swift_task_alloc();
    v9[2] = v5;
    v9[3] = v7;
    v9[4] = v4;
    type metadata accessor for NetworkBrowser.LockedState(0, v5, v4, v10);
    *(v0 + 32) = v6;
    *(v0 + 40) = v3;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    v11 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
    v12 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v12));
    sub_181F5DA2C((v8 + v11), (v0 + 16));
    os_unfair_lock_unlock((v8 + v12));

    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    *(v0 + 168) = v13;
    *(v0 + 176) = v14;
    if (v13)
    {
      v15 = *(v0 + 72);
      v16 = *(v14 + 16);
      *(v0 + 184) = v16;
      v17 = *(v14 + 24);
      v18 = swift_allocObject();
      *(v0 + 192) = v18;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = v15;
      v18[5] = v13;
      v18[6] = v14;
      *(v0 + 212) = (v25 & 0xFFFFFF00FFFFFFFFLL | (v24 << 32)) >> 32;
      *(v0 + 208) = v25;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v13, v14);
      if (v16)
      {
        swift_getObjectType();
        v19 = sub_182AD34A8();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_181F570AC, v19, v21);
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 152) = v22;
      *v22 = v0;
      v22[1] = sub_181F56C78;
      v23 = *(v0 + 120);

      return MEMORY[0x1EEE6DB90](v0 + 200, 0, 0, v23, v0 + 48);
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_181F570AC()
{
  v5 = v0;
  v1 = v0[22];
  v2 = v0[21];
  v4 = v0[8];
  v2(&v4, v0 + 26);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_181F57148, 0, 0);
}

uint64_t sub_181F57148()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_181F56C78;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 200, 0, 0, v2, v0 + 48);
}

uint64_t sub_181F571FC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

void sub_181F5727C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v11 = *(v7 + 16);
    v12 = *(v7 + 24);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    *(v13 + 56) = v6;
    *(v13 + 64) = v7;
    swift_unknownObjectRetain();
    v14 = sub_181F5DA8C;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *a5 = v14;
  a5[1] = v13;
  sub_181AA39C0(v6, v7);
}

uint64_t sub_181F57338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F5736C, 0, 0);
}

uint64_t sub_181F5736C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v5;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_181F57468;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_181F57468()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_181F5759C;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F5759C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F57600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v12;
  v8[19] = v13;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v8[22] = sub_182AD3488();
  v8[23] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v9 = sub_182AD3708();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F57784, 0, 0);
}

uint64_t sub_181F57784()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_181F57854;
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_181F57854()
{

  if (v0)
  {
    v1 = sub_181F57D1C;
  }

  else
  {
    v1 = sub_181F57964;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_181F57964()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 120);
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v5 = *(v0 + 112);
    v22 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    v21 = *(v0 + 136);
    (*(v7 + 56))(v3, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = v21;
    *(v8 + 48) = v23;
    *(v8 + 56) = v22;
    *(v8 + 64) = v5;
    *(v8 + 72) = v1;
    *(v8 + 80) = v4;
    *(v8 + 88) = v24;
    sub_181F5D9BC(v3, v2);
    LODWORD(v2) = (*(v7 + 48))(v2, 1, v6);

    v9 = *(v0 + 160);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 160), &unk_1EA839850, &qword_182AF4770);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 168);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850, &qword_182AF4770);
    v19 = swift_task_alloc();
    *(v0 + 216) = v19;
    *v19 = v0;
    v19[1] = sub_181F57854;
    v20 = *(v0 + 192);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_181F57D1C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F57DB8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = v18;
  v8[10] = type metadata accessor for NetworkBrowser.Disposition(255, a8, v18, v19);
  v12 = sub_182AD39B8();
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v18 - 8);
  v8[15] = swift_task_alloc();
  type metadata accessor for NetworkBrowser.RunResult(0, a8, v18, v19);
  v13 = swift_task_alloc();
  v8[16] = v13;
  v8[17] = swift_projectBox();
  v16 = (a3 + *a3);
  v14 = swift_task_alloc();
  v8[18] = v14;
  *v14 = v8;
  v14[1] = sub_181F57FF4;

  return v16(v13, a5);
}

uint64_t sub_181F57FF4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F582CC;
  }

  else
  {
    v2 = sub_181F58108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F58108()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[9];
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    v4 = v0[17];
    v5 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    (*(v2 + 32))(v5, v1, v3);
    (*(v2 + 16))(v6, v5, v3);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    (*(v7 + 40))(v4, v6, v8);
    NWBrowser.cancel()();
    (*(v2 + 8))(v5, v3);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_181F582CC()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  swift_beginAccess();
  v7 = v1;
  (*(v4 + 40))(v2, v3, v5);
  NWBrowser.cancel()();

  v8 = v0[1];

  return v8();
}

uint64_t sub_181F58400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_181F5AEE4(0, v7[2] + 1, 1, v7, &qword_1EA838950, &qword_182AE6030);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_181F5AEE4((v9 > 1), v10 + 1, 1, v7, &qword_1EA838950, &qword_182AE6030);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_181F5DC9C;
  v11[5] = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t *NetworkBrowser.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  sub_181F55694(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(v4 + *(*v4 + 96));

  return v4;
}

uint64_t AsyncSequence<>.first.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v4[7] = *(AssociatedTypeWitness - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_getAssociatedTypeWitness();
  sub_182AD39B8();
  v4[11] = swift_task_alloc();
  v4[12] = *(a2 - 8);
  v4[13] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F58804, 0, 0);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v4[7] = *(AssociatedTypeWitness - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_getAssociatedTypeWitness();
  sub_182AD39B8();
  v4[11] = swift_task_alloc();
  v4[12] = *(a2 - 8);
  v4[13] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F58FA8, 0, 0);
}

uint64_t sub_181F58804()
{
  (*(v0[12] + 16))(v0[13], v0[5], v0[3]);
  sub_182AD3648();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[17] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_181F5892C;
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_181F5892C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F58C24;
  }

  else
  {
    v2 = sub_181F58A40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F58A40()
{
  v1 = v0[10];
  v2 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[19];
    sub_182AD3628();
    if (!v4)
    {
      return sub_182AD3EA8();
    }

    v5 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[11], v0[10]);

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_181F58C24()
{
  v1 = *(v0[7] + 32);
  v1(v0[8], v0[9], v0[6]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_182AD4218();
  v3 = v0[8];
  if (v2)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  else
  {
    v4 = v0[6];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_181F58FA8()
{
  (*(v0[12] + 16))(v0[13], v0[5], v0[3]);
  sub_182AD3648();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[17] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_181F590D0;
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_181F590D0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F5EB24;
  }

  else
  {
    v2 = sub_181F591E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F591E4()
{
  v1 = v0[10];
  v2 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[19];
    sub_182AD3628();
    if (!v4)
    {
      return sub_182AD3EA8();
    }

    v5 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[11], v0[10]);

    v5 = v0[1];
  }

  return v5();
}

uint64_t NWBrowser.Descriptor.Options.deviceFilter(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);

  *a2 = a1;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.scope(_:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  *(a2 + 8) = v4;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.deviceTypes(_:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  *(a2 + 12) = v4;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.applicationServiceEndpointsOnly(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  *(a2 + 16) = a1;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.predicate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  v5 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  sub_181F49A88(a2 + v5, &qword_1EA838D00, &unk_182AE57C0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  v9 = *(v6 - 8);
  (*(v9 + 16))(a2 + v5, a1, v6);
  v7 = *(v9 + 56);

  return v7(a2 + v5, 0, 1, v6);
}

char *sub_181F59624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E50, &unk_182AE5F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_181F59790(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838870, &qword_182AE5F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F598B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838878, &qword_182AE5F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F599D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389A8, &qword_182AE60A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F59AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389C0, &qword_182AE60C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_181F59BF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838978, &qword_182AE6078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_181F59D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838988, &qword_182AE6088);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_181F59E34(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A08, &qword_182AE6118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A10, &qword_182AE6120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F59F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3E0, &qword_182AE6020);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_181F5A0A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_181F5A1B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389F8, &qword_182AE6108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A310(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_181F5A47C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388E8, &qword_182AE5FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838990, &qword_182AE6090);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_181F5A6A0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838970, &qword_182AE6068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80, &qword_182AE6070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838968, &unk_182AE6050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A918(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_181F5AA14(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838958, &qword_182AE6038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30, &qword_182AE6040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5AB5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1820F7980();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_181F5AC84(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_181F5ADAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_181F5AEE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
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
    v12 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397F0, &qword_182AE5F58);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_181F5B080(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_181F5B1D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
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
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
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

char *sub_181F5B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388A0, &qword_182AE5F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_181F5B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_182AD2F08();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F5B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_182AD2F08();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_182AD3888();
  result = sub_182AD2F08();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_181F5B69C()
{
  result = qword_1EA836F88;
  if (!qword_1EA836F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B530, &unk_182AE5750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F88);
  }

  return result;
}

char *sub_181F5B704(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = &v3[*(*v3 + 112)];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = *(v5 + 80);
  (*(*(v7 - 8) + 16))(&v3[*(*v3 + 96)], a1, v7);
  if (a2)
  {
    swift_beginAccess();
    a2 = *(a2 + 16);
  }

  v8 = (*(*(v5 + 88) + 24))(a2, v7);

  *&v3[*(*v3 + 104)] = v8;
  return v3;
}

uint64_t *sub_181F5B8A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = (v3 + *(*v3 + 112));
  *v6 = 0;
  v6[1] = 0;
  v7 = *(v5 + 80);
  (*(*(v7 - 8) + 16))(v3 + *(*v3 + 96), a1, v7);
  *(v3 + *(*v3 + 104)) = (*(*(v5 + 88) + 24))(a2, v7);
  return v3;
}

uint64_t sub_181F5B9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(*v5 + 112);
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  locked = type metadata accessor for Browser3.LockedState(0, v9, v10, a4);
  memset(v18, 0, sizeof(v18));
  v12 = sub_1820C6414(v18, locked);
  sub_181A554F4(0, 0);
  *(v5 + v8) = v12;
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 96), a1, v9);
  *(v5 + *(*v5 + 104)) = (*(v10 + 24))(a2, v9, v10);
  v13 = *(v5 + *(*v5 + 112));
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v13 + v15));
  sub_181F5E1C8(v13 + v14, v16);
  os_unfair_lock_unlock((v13 + v15));

  return v5;
}

uint64_t sub_181F5BC28(uint64_t *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;
  v6 = a1[1];
  sub_181AA39C0(v4, v3);
  result = sub_181A554F4(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F5BC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_181F5127C(a1, v4, v5, v6);
}

uint64_t sub_181F5BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(*v5 + 112);
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  v18[0] = 0;
  v18[1] = 0;
  v18[2] = MEMORY[0x1E69E7CC0];
  v18[3] = 0;
  locked = type metadata accessor for NetworkBrowser.LockedState(0, v9, v10, a4);
  v12 = sub_1820C6414(v18, locked);
  sub_181A554F4(0, 0);

  *(v5 + v8) = v12;
  (*(*(v9 - 8) + 16))(v5 + *(*v5 + 96), a1, v9);
  *(v5 + *(*v5 + 104)) = (*(v10 + 24))(a2, v9, v10);
  v13 = *(v5 + *(*v5 + 112));
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v13 + v15));
  sub_181F5DDC0(v13 + v14, v16);
  os_unfair_lock_unlock((v13 + v15));

  return v5;
}

uint64_t sub_181F5BF74(uint64_t *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;
  v6 = a1[1];

  result = sub_181A554F4(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F5BFCC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_181F53C34(a1, a2, v6, v7, v8);
}

uint64_t sub_181F5C0A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[7];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_181F5485C(a1, a2, v6, v7, v8);
}

unint64_t sub_181F5C210()
{
  result = qword_1EA838840;
  if (!qword_1EA838840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838840);
  }

  return result;
}

uint64_t sub_181F5C334(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_181F5C3C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838838, &qword_182AE58D0);
    sub_181F5C210();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for UnexpectedEndpointType(uint64_t a1)
{
  result = qword_1EA838858;
  if (!qword_1EA838858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181F5C524(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_181F5C608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5C650(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_181F5C6E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
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

  return (v6 | v11) + 254;
}

void sub_181F5C834(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
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
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_181F5CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181F5CCC0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_181F5CD1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
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

char *sub_181F5CE9C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
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