unint64_t sub_23BB9E760()
{
  result = qword_27E1A3618;
  if (!qword_27E1A3618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3608, &qword_23BC03DC0);
    sub_23BB9E7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3618);
  }

  return result;
}

unint64_t sub_23BB9E7EC()
{
  result = qword_27E1A3620;
  if (!qword_27E1A3620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3600, &qword_23BC03DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35E8, &qword_23BC03D30);
    sub_23BB9E584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3620);
  }

  return result;
}

uint64_t sub_23BB9E8D8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA908();
  *v0 = result;
  return result;
}

uint64_t sub_23BB9E908()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA588();
  *v0 = result;
  return result;
}

uint64_t sub_23BB9E948(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    if (v3 >= 2)
    {
      return v3 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
    v6 = OUTLINED_FUNCTION_15_0(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_23BB9E9E4()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28, &unk_23BBF3C90);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_23BB9EA64(uint64_t a1, double a2)
{
  sub_23BB9EB94(319, a2);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    sub_23BB9EBEC(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      sub_23BB9EEC8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        sub_23BB9EEC8(319, &qword_27E1A3650, &type metadata for ProminentButtonStyleApplierModifier.Variant, type metadata accessor for IdiomValue);
        v3 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

void sub_23BB9EB94(uint64_t a1, double a2)
{
  if (!qword_27E19AB48)
  {
    sub_23BBDA508();
    v2 = sub_23BBD9C18();
    if (!v3)
    {
      atomic_store(v2, &qword_27E19AB48);
    }
  }
}

void sub_23BB9EBEC(uint64_t a1)
{
  if (!qword_27E197EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197F00, &qword_23BBE4948);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E197EF8);
    }
  }
}

_BYTE *sub_23BB9EC50(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB9ED1CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BB9ED68()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BB9EDCC()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_23BB9EE20(uint64_t a1)
{
  sub_23B9D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_23BB9EEC8(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB9EEC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23BB9EF1C()
{
  result = qword_27E1A3668;
  if (!qword_27E1A3668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3638, &qword_23BC03DD0);
    sub_23BB9EFD8();
    sub_23BB9E65C(&qword_27E1A3678, type metadata accessor for ProminentButtonStyleApplierModifier, &unk_23BC03F64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3668);
  }

  return result;
}

unint64_t sub_23BB9EFD8()
{
  result = qword_27E1A3670;
  if (!qword_27E1A3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3630, &qword_23BC03DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35F0, &qword_23BC03D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
    sub_23BB9E6A4();
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
    swift_getOpaqueTypeConformance2();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3670);
  }

  return result;
}

unint64_t sub_23BB9F104()
{
  result = qword_27E1A3680;
  if (!qword_27E1A3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3680);
  }

  return result;
}

unint64_t sub_23BB9F198()
{
  result = qword_27E1A3700;
  if (!qword_27E1A3700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36F8, &qword_23BC04078);
    sub_23BB9F250();
    sub_23B97B518(&qword_27E1A1CA0, &qword_27E1A1CA8, &qword_23BBFFB20, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3700);
  }

  return result;
}

unint64_t sub_23BB9F250()
{
  result = qword_27E1A3708;
  if (!qword_27E1A3708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3710, &qword_23BC04080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3718, &qword_23BC04088);
    sub_23BBDB188();
    sub_23BB9F368();
    sub_23BB9E65C(&qword_27E1A3738, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3708);
  }

  return result;
}

unint64_t sub_23BB9F368()
{
  result = qword_27E1A3720;
  if (!qword_27E1A3720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3718, &qword_23BC04088);
    sub_23B97B518(&qword_27E1A3728, &qword_27E1A3730, &qword_23BC04090, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68, &qword_23BBE6A20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3720);
  }

  return result;
}

unint64_t sub_23BB9F44C()
{
  result = qword_27E1A3740;
  if (!qword_27E1A3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3740);
  }

  return result;
}

unint64_t sub_23BB9F4A0()
{
  result = qword_27E1A3748;
  if (!qword_27E1A3748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36E0, &qword_23BC04060);
    sub_23BB9F558();
    sub_23B97B518(&qword_27E1A37A8, &qword_27E1A37B0, &unk_23BC040B0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3748);
  }

  return result;
}

unint64_t sub_23BB9F558()
{
  result = qword_27E1A3750;
  if (!qword_27E1A3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36D8, &qword_23BC04058);
    sub_23BB9F610();
    sub_23B97B518(&qword_27E1A1CA0, &qword_27E1A1CA8, &qword_23BBFFB20, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3750);
  }

  return result;
}

unint64_t sub_23BB9F610()
{
  result = qword_27E1A3758;
  if (!qword_27E1A3758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36D0, &qword_23BC04050);
    sub_23BB9F6C8();
    sub_23B97B518(&qword_27E1A3798, &qword_27E1A37A0, &qword_23BC040A8, MEMORY[0x277CE0488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3758);
  }

  return result;
}

unint64_t sub_23BB9F6C8()
{
  result = qword_27E1A3760;
  if (!qword_27E1A3760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36C8, &qword_23BC04048);
    sub_23BB9F780();
    sub_23B97B518(&qword_27E1A1D38, &qword_27E1A1D40, &qword_23BC040A0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3760);
  }

  return result;
}

unint64_t sub_23BB9F780()
{
  result = qword_27E1A3768;
  if (!qword_27E1A3768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36C0, &qword_23BC04040);
    sub_23BB9F80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3768);
  }

  return result;
}

unint64_t sub_23BB9F80C()
{
  result = qword_27E1A3770;
  if (!qword_27E1A3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36B8, &qword_23BC04038);
    sub_23BB9F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3770);
  }

  return result;
}

unint64_t sub_23BB9F898()
{
  result = qword_27E1A3778;
  if (!qword_27E1A3778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36B0, &qword_23BC04030);
    sub_23BB9F924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3778);
  }

  return result;
}

unint64_t sub_23BB9F924()
{
  result = qword_27E1A3780;
  if (!qword_27E1A3780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36A8, &qword_23BC04028);
    sub_23BB9F368();
    sub_23B97B518(&qword_27E1A3788, &qword_27E1A3790, &qword_23BC04098, MEMORY[0x277CE0710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3780);
  }

  return result;
}

uint64_t sub_23BB9F9DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BB9FA3C()
{

  if (*(v0 + 72) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return swift_deallocObject();
}

unint64_t sub_23BB9FA98()
{
  result = qword_27E1A37D0;
  if (!qword_27E1A37D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3690, &qword_23BC04010);
    sub_23B97B518(&qword_27E1A37D8, &qword_27E1A3688, &qword_23BC04008, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A37D0);
  }

  return result;
}

unint64_t sub_23BB9FB54()
{
  result = qword_27E1A37E0;
  if (!qword_27E1A37E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1A37E8, qword_23BC040C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36E0, &qword_23BC04060);
    sub_23BBDA328();
    sub_23BB9F4A0();
    sub_23BB9E65C(&qword_27E1A1D48, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A37B8, &qword_27E1A3698, &qword_23BC04018, MEMORY[0x277CE0480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A37E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_62(uint64_t result)
{
  v7 = v2 + *(result + 36);
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

void sub_23BB9FCB8(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
  if (v1 <= 0x3F)
  {
    sub_23BBA0524(319);
    if (v2 <= 0x3F)
    {
      sub_23B975E04();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_23BBA057C(319, &qword_27E1A3870, &qword_27E199798, qword_23BC04110, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_23BBA057C(319, &qword_27E19BE68, &qword_27E199218, &qword_23BBFA470, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_23B9A389C(319, &qword_27E1998F8, &type metadata for SubscriptionStoreControlPlacementKey);
              if (v7 <= 0x3F)
              {
                sub_23B9A389C(319, &qword_27E197E40, MEMORY[0x277D839B0]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB9FE50(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v7 | v10 | 7;
  v12 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 8;
  v14 = v12 + 10;
  if (v14 <= v13)
  {
    v14 = v13;
  }

  if (v14 <= 3)
  {
    v14 = 3;
  }

  v15 = v14 + ((((v7 + 16) & ~v7) + v8 + v11) & ~v11);
  if (v15 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v16 <= 0x10)
  {
    v16 = 16;
  }

  v17 = v16 + 1;
  v18 = (v16 + 1 + v11) & ~v11;
  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v23 = v18 + v17;
  v24 = 32;
  if (v23 > 0x20)
  {
    v24 = v23;
  }

  v25 = *(v20 + 80);
  v26 = *(v20 + 64);
  if (!a2)
  {
    return 0;
  }

  v27 = v24 + v11 + 1;
  v28 = v24 + 8;
  v29 = v25 + 16;
  if (v22 < a2)
  {
    v30 = ((((((v29 + ((v28 + (v27 & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + v26) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v30 <= 3)
    {
      v31 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      LODWORD(v32) = 4;
    }

    else
    {
      LODWORD(v32) = 2;
    }

    if (v31 < 0x100)
    {
      LODWORD(v32) = 1;
    }

    if (v31 >= 2)
    {
      v32 = v32;
    }

    else
    {
      v32 = 0;
    }

    switch(v32)
    {
      case 1:
        v33 = a1[v30];
        if (!a1[v30])
        {
          break;
        }

        goto LABEL_33;
      case 2:
        v33 = *&a1[v30];
        if (*&a1[v30])
        {
          goto LABEL_33;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BBA0160);
      case 4:
        v33 = *&a1[v30];
        if (!v33)
        {
          break;
        }

LABEL_33:
        v35 = (v33 - 1) << (8 * v30);
        if (v30 <= 3)
        {
          v36 = *a1;
        }

        else
        {
          v35 = 0;
          v36 = *a1;
        }

        return v22 + (v36 | v35) + 1;
      default:
        break;
    }
  }

  v37 = ((v28 + (&a1[v27] & ~v11)) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v37 + v29) & ~v25, v21, v19);
  }

  else
  {
    v38 = *v37;
    if (*v37 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}

void sub_23BBA0174(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v9 | v12 | 7;
  v14 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = v14 + 10;
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (v16 <= 3)
  {
    v16 = 3;
  }

  v17 = v16 + ((((v9 + 16) & ~v9) + v10 + v13) & ~v13);
  if (v17 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  v19 = v18 + 1;
  v20 = (v18 + 1 + v13) & ~v13;
  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = v20 + v19;
  v26 = 32;
  if (v25 > 0x20)
  {
    v26 = v25;
  }

  v27 = v26 + v13 + 1;
  v28 = v26 + 8;
  v29 = *(v22 + 80);
  v30 = ((((((v29 + 16 + ((v28 + (v27 & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(v22 + 64)) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 >= a3)
  {
    v33 = 0;
  }

  else
  {
    if (v30 <= 3)
    {
      v31 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  if (v24 < a2)
  {
    v34 = ~v24 + a2;
    bzero(a1, v30);
    if (v30 <= 3)
    {
      v35 = (v34 >> 8) + 1;
    }

    else
    {
      v35 = 1;
    }

    if (v30 > 3)
    {
      *a1 = v34;
    }

    else
    {
      *a1 = v34;
    }

    switch(v33)
    {
      case 1:
        *(a1 + v30) = v35;
        return;
      case 2:
        *(a1 + v30) = v35;
        return;
      case 3:
        goto LABEL_55;
      case 4:
        *(a1 + v30) = v35;
        return;
      default:
        return;
    }
  }

  v36 = ~v13;
  switch(v33)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    case 3:
LABEL_55:
      __break(1u);
      JUMPOUT(0x23BBA04E4);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (a2)
      {
LABEL_42:
        v37 = ((v28 + ((a1 + v27) & v36)) & 0xFFFFFFFFFFFFFFF8);
        if ((v23 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v37 + v29 + 16) & ~v29, a2, v23, v21);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v38 = a2 & 0x7FFFFFFF;
            v37[1] = 0;
          }

          else
          {
            v38 = (a2 - 1);
          }

          *v37 = v38;
        }
      }

      return;
  }
}

void sub_23BBA0524(uint64_t a1)
{
  if (!qword_27E19EFA8)
  {
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(255);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19EFA8);
    }
  }
}

void sub_23BBA057C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23BBA0624(int *a1)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v1 + a1[12]) == 2)
  {
    return 0;
  }

  v9 = v1 + a1[14];
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v10) = v16[0];
  }

  if (v10 != 2 && (v10 & 1) != 0)
  {
    sub_23B9B6E40();
    if ((v17 - 1) <= 1)
    {
      return 1;
    }

    sub_23B9C9290(v16);
  }

  v12 = v2 + a1[16];
  v13 = *v12;
  if (*(v12 + 8) != 1)
  {

    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v13, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v13) = v16[0];
  }

  if (v13)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23BBA0888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_23BBDAB18();
  OUTLINED_FUNCTION_7();
  v71 = v5;
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_6();
  v70 = v6;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v68 = v8;
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v66 = v9;
  type metadata accessor for MultilineButtonLabel(255);
  v10 = *(a1 + 24);
  v65 = *(a1 + 16);
  v64 = v10;
  type metadata accessor for SingleLineLabel(255, v65, v10, v11);
  OUTLINED_FUNCTION_15_29();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_9_32();
  sub_23BBA424C(v12, v13, &unk_23BC04638);
  v83 = v2;
  v84 = OUTLINED_FUNCTION_13_33();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  v14 = sub_23BBDC098();
  OUTLINED_FUNCTION_12_32(v14);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDBFC8();
  sub_23BBDA358();
  v15 = OUTLINED_FUNCTION_15_29();
  type metadata accessor for SubscribeButtonTopCaptionModifier(v15);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_29();
  sub_23BBDB2B8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3880, &qword_23BC04180);
  OUTLINED_FUNCTION_7_15();
  swift_getTupleTypeMetadata2();
  v16 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v17 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v62 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v61 = v23;
  MEMORY[0x28223BE20](v24);
  v57 = &v54 - v25;
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  v81 = WitnessTable;
  v82 = MEMORY[0x277CE03F0];
  v63 = MEMORY[0x277CDFAD8];
  v56 = swift_getWitnessTable();
  v79 = v22;
  v80 = v56;
  v58 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v59 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v54 - v29;
  v31 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v54 = &v54 - v38;
  MEMORY[0x28223BE20](v39);
  v60 = &v54 - v40;
  v74 = v65;
  v75 = v64;
  v76 = v67;
  sub_23B9BE15C(v16);
  sub_23BBDC068();
  v41 = v57;
  sub_23BBDB7C8();
  (*(v62 + 8))(v21, v17);
  v42 = v66;
  sub_23BBDB128();
  v43 = v56;
  sub_23BBDB968();
  (*(v68 + 8))(v42, v69);
  (*(v61 + 8))(v41, v22);
  KeyPath = swift_getKeyPath();
  v79 = v22;
  v80 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9968C4(KeyPath, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  (*(v59 + 8))(v30, OpaqueTypeMetadata2);
  v46 = v70;
  sub_23BBDAB08();
  v47 = v54;
  sub_23BBDA348();
  (*(v71 + 8))(v46, v72);
  v48 = *(v33 + 8);
  v48(v36, v31);
  OUTLINED_FUNCTION_11_31();
  v51 = sub_23BBA424C(v49, v50, MEMORY[0x277CDE458]);
  v77 = OpaqueTypeConformance2;
  v78 = v51;
  swift_getWitnessTable();
  v52 = v60;
  sub_23B9D2D88();
  v48(v47, v31);
  sub_23B9D2D88();
  return (v48)(v52, v31);
}

uint64_t sub_23BBA0FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a4;
  v101 = a3;
  v88 = a1;
  v103 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v103);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v76 - v8;
  v9 = sub_23BBDAB18();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9);
  v95 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
  MEMORY[0x28223BE20](v11 - 8);
  v96 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = (&v76 - v14);
  v16 = type metadata accessor for SubscriptionStoreButtonInternal(0, a2, a3, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v76 - v18;
  type metadata accessor for MultilineButtonLabel(255);
  type metadata accessor for SingleLineLabel(255, a2, a3, v20);
  sub_23BBDACE8();
  v21 = sub_23BBA424C(&qword_27E1A3878, type metadata accessor for MultilineButtonLabel, &unk_23BC04638);
  WitnessTable = swift_getWitnessTable();
  v111[8] = v21;
  v111[9] = WitnessTable;
  swift_getWitnessTable();
  v85 = sub_23BBDC098();
  v82 = swift_getWitnessTable();
  v23 = sub_23BBDBFC8();
  v87 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v80 = &v76 - v24;
  v84 = sub_23BBDA358();
  v91 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v76 - v25;
  type metadata accessor for SubscribeButtonTopCaptionModifier(255);
  v89 = sub_23BBDA358();
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v76 - v26;
  sub_23BBDB2B8();
  v102 = sub_23BBDA358();
  v93 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v97 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v86 = &v76 - v29;
  v31 = MEMORY[0x28223BE20](v30);
  v90 = &v76 - v32;
  v33 = v88;
  v34 = v16;
  (*(v17 + 16))(v19, v88, v16, v31);
  v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v36 = swift_allocObject();
  v37 = a2;
  v79 = a2;
  *(v36 + 16) = a2;
  v38 = v101;
  *(v36 + 24) = v101;
  (*(v17 + 32))(v36 + v35, v19, v34);
  v105[8] = v37;
  v105[9] = v38;
  v105[10] = v33;
  v39 = v80;
  sub_23BBDBFA8();
  v85 = v34[9];
  v40 = v94;
  sub_23B99FCE0(v33 + v85, v94, &qword_27E19A1A8, &qword_23BBE98B0);
  LOBYTE(v35) = __swift_getEnumTagSinglePayload(v40, 1, v103) != 1;
  sub_23B9846E8(v40, &qword_27E19A1A8, &qword_23BBE98B0);
  LOBYTE(v107) = v35;
  v41 = swift_getWitnessTable();
  v42 = v81;
  MEMORY[0x23EEB43C0](&v107, v23, &type metadata for PrimaryButtonViewModifier, v41);
  (*(v87 + 8))(v39, v23);
  v105[2] = v79;
  v105[3] = v101;
  v105[4] = v33;
  v104[2] = v79;
  v104[3] = v101;
  v104[4] = v33;
  v94 = v34;
  v43 = v33;
  LOBYTE(v39) = sub_23BBA0624(v34) == 1;
  v44 = sub_23BBA3138();
  v111[6] = v41;
  v111[7] = v44;
  v45 = v84;
  v46 = swift_getWitnessTable();
  v47 = v83;
  sub_23BAB2114(sub_23BBA3120, v105, sub_23BBA312C, v104, v39, v45, v46);
  (*(v91 + 8))(v42, v45);
  v48 = v95;
  sub_23BBDAB08();
  v49 = sub_23BBA424C(&qword_27E1A3890, type metadata accessor for SubscribeButtonTopCaptionModifier, &unk_23BBF7584);
  v111[4] = v46;
  v111[5] = v49;
  v50 = v89;
  v51 = swift_getWitnessTable();
  v52 = v86;
  sub_23BBDBA58();
  v53 = v43;
  (*(v98 + 8))(v48, v99);
  v54 = v50;
  v55 = v96;
  (*(v92 + 8))(v47, v54);
  v56 = sub_23BBA424C(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v111[2] = v51;
  v111[3] = v56;
  v57 = v102;
  v58 = swift_getWitnessTable();
  v59 = v90;
  v101 = v58;
  sub_23B9D2D88();
  v60 = v93;
  v61 = *(v93 + 8);
  v61(v52, v57);
  sub_23B99FCE0(v53 + v85, v55, &qword_27E19A1A8, &qword_23BBE98B0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v103) == 1)
  {
    sub_23B9846E8(v55, &qword_27E19A1A8, &qword_23BBE98B0);
LABEL_6:
    v64 = 0;
    v66 = 0;
    v71 = 0;
    v70 = 0;
    goto LABEL_7;
  }

  v62 = v78;
  sub_23BBA3E50(v55, v78, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
  if (sub_23BBA0624(v94) != 2)
  {
    sub_23BBA4294(v62, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    goto LABEL_6;
  }

  v63 = v77;
  sub_23BB77FC4(v62, v77);
  v64 = sub_23BB95790(v63);
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_23BBA4294(v62, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
  v71 = v68 & 1;
  sub_23BA51B84(v64, v66, v71);

LABEL_7:
  v72 = *(v60 + 16);
  v73 = v97;
  v74 = v102;
  v72(v97, v59, v102);
  v107 = v64;
  v108 = v66;
  v109 = v71;
  v110 = v70;
  v111[0] = v73;
  v111[1] = &v107;
  v106[0] = v74;
  v106[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3880, &qword_23BC04180);
  v105[11] = v101;
  v105[12] = sub_23BBA318C();
  sub_23BB6739C(v111, 2, v106);
  sub_23BA82038(v64, v66, v71, v70);
  v61(v59, v74);
  sub_23BA82038(v107, v108, v109, v110);
  return (v61)(v73, v74);
}

uint64_t sub_23BBA1B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MultilineButtonLabel(255);
  type metadata accessor for SingleLineLabel(255, a2, a3, v6);
  sub_23BBDACE8();
  v21 = sub_23BBA424C(&qword_27E1A3878, type metadata accessor for MultilineButtonLabel, &unk_23BC04638);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v7 = sub_23BBDC098();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17[-v13];
  v18 = a2;
  v19 = a3;
  v20 = a1;
  sub_23B9C2924(v12);
  sub_23BBDC088();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_23B9D2D88();
  return (v15)(v14, v7);
}

uint64_t sub_23BBA1D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v53 = a4;
  v45 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SingleLineLabel(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v42 - v15;
  v16 = type metadata accessor for MultilineButtonLabel(0);
  MEMORY[0x28223BE20](v16);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  v49 = v16;
  v27 = sub_23BBDACE8();
  v51 = *(v27 - 8);
  v52 = v27;
  MEMORY[0x28223BE20](v27);
  v50 = &v42 - v28;
  v46 = a3;
  v29 = a3;
  v30 = v48;
  v32 = type metadata accessor for SubscriptionStoreButtonInternal(0, a2, v29, v31);
  sub_23B99FCE0(v30 + v32[9], v20, &qword_27E19A1A8, &qword_23BBE98B0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_23B9846E8(v20, &qword_27E19A1A8, &qword_23BBE98B0);
  }

  else
  {
    sub_23BBA3E50(v20, v26, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    if (!sub_23BBA0624(v32))
    {
      v41 = v43;
      sub_23BB77FC4(v30, v43);
      sub_23BB77FC4(v26, v41 + *(v49 + 20));
      sub_23BBA424C(&qword_27E1A3878, type metadata accessor for MultilineButtonLabel, &unk_23BC04638);
      swift_getWitnessTable();
      v36 = v50;
      sub_23BA82D64();
      sub_23BBA4294(v41, type metadata accessor for MultilineButtonLabel);
      sub_23BBA4294(v26, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
      goto LABEL_6;
    }

    sub_23BBA4294(v26, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
  }

  sub_23BB77FC4(v30, v23);
  v33 = v44;
  (*(v45 + 16))(v44, v30 + v32[11], a2);
  sub_23BB77608(v23, v33, a2, v13, v46);
  swift_getWitnessTable();
  v34 = v47;
  sub_23B9D2D88();
  v35 = *(v11 + 8);
  v35(v13, v10);
  sub_23B9D2D88();
  sub_23BBA424C(&qword_27E1A3878, type metadata accessor for MultilineButtonLabel, &unk_23BC04638);
  v36 = v50;
  sub_23BA82E14();
  v35(v13, v10);
  v35(v34, v10);
LABEL_6:
  v37 = sub_23BBA424C(&qword_27E1A3878, type metadata accessor for MultilineButtonLabel, &unk_23BC04638);
  WitnessTable = swift_getWitnessTable();
  v54 = v37;
  v55 = WitnessTable;
  v39 = v52;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v51 + 8))(v36, v39);
}

uint64_t sub_23BBA23EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3E8, &unk_23BBE9F00);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v33 - v7;
  v8 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199798, qword_23BC04110);
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v19 = *(a1 + *(type metadata accessor for SubscriptionStoreButtonInternal(0, a2, a3, v18) + 52));
  v20 = *(v19 + 16);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v40 = MEMORY[0x277D84F90];
  v35 = *(v10 + 72);
  v22 = v8;
  v33 = v8;
  do
  {
    sub_23B99FCE0(v21, v17, &qword_27E199798, qword_23BC04110);
    v23 = v36;
    sub_23B99FCE0(v17, v36, &qword_27E199798, qword_23BC04110);
    v24 = *(v38 + 48);
    sub_23BBA3E50(v23, v12, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    sub_23BBA3DE0(v23 + v24, &v12[v24]);
    v25 = &v12[v24];
    v26 = v37;
    sub_23B99FCE0(v25, v37, &qword_27E19A3E8, &unk_23BBE9F00);
    sub_23B9846E8(v12, &qword_27E199798, qword_23BC04110);
    sub_23B9846E8(v17, &qword_27E199798, qword_23BC04110);
    if (__swift_getEnumTagSinglePayload(v26, 1, v22) == 1)
    {
      sub_23B9846E8(v26, &qword_27E19A3E8, &unk_23BBE9F00);
    }

    else
    {
      sub_23BBA3E50(v26, v39, type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
      v27 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B8584();
        v27 = v30;
      }

      v28 = *(v27 + 16);
      if (v28 >= *(v27 + 24) >> 1)
      {
        sub_23B9B8584();
        v27 = v31;
      }

      *(v27 + 16) = v28 + 1;
      v29 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v40 = v27;
      sub_23BBA3E50(v39, v27 + v29 + *(v34 + 72) * v28, type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
      v22 = v33;
    }

    v21 += v35;
    --v20;
  }

  while (v20);
  return v40;
}

void *sub_23BBA27E8(uint64_t *a1)
{
  sub_23B9A8E74();
  result = sub_23BBD9CB8();
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return sub_23BBD9CA8();
  }

  return result;
}

uint64_t sub_23BBA285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = type metadata accessor for SubscriptionStoreButtonInternal(0, v6, *(v4 + 24), a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = v4 + v9;
  v11 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_7:

    goto LABEL_14;
  }

  v12 = _s11PriceStringOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_23BBDCD08();
      OUTLINED_FUNCTION_12_1();
      v27 = *(v28 + 8);
      v26 = v4 + v9;
      goto LABEL_12;
    case 1:

      _s22LocalizedPriceResourceVMa(0);
      OUTLINED_FUNCTION_5_42();
      v14 = sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      (*(v15 + 8))(v10 + v9, v14);
      v5 = v10 + *(v5 + 24);
      _s22LocalizedPriceResourceV6FormatOMa(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 == 3)
      {

        v99 = _s15PricePropertiesVMa(0);
        OUTLINED_FUNCTION_6_37();
        sub_23BBDCBE8();
        OUTLINED_FUNCTION_12_1();
        v63 = (*(v62 + 8))(v5 + v9);
        v71 = OUTLINED_FUNCTION_3_46(v63, v64, v65, v66, v67, v68, v69, v70, v96, v99);
        v72(v71);
        v9 = (v8 + 32) & ~v8;
        break;
      }

      v9 = (v8 + 32) & ~v8;
      if (v16 != 2)
      {
        break;
      }

      v97 = _s15PricePropertiesVMa(0);
      OUTLINED_FUNCTION_6_37();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_12_1();
      v9 = (v8 + 32) & ~v8;
      v18 = (*(v17 + 8))(v5 + v9);
      v26 = OUTLINED_FUNCTION_3_46(v18, v19, v20, v21, v22, v23, v24, v25, v96, v97);
LABEL_12:
      v27(v26);
      break;
    case 0:

      break;
  }

  v29 = v10 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (__swift_getEnumTagSinglePayload(v29, 1, v12))
  {
    goto LABEL_14;
  }

  v33 = swift_getEnumCaseMultiPayload();
  switch(v33)
  {
    case 2:
      sub_23BBDCD08();
      OUTLINED_FUNCTION_12_1();
      v55 = *(v61 + 8);
      v54 = v29;
      goto LABEL_47;
    case 1:

      _s22LocalizedPriceResourceVMa(0);
      OUTLINED_FUNCTION_5_42();
      v49 = sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      (*(v50 + 8))(v29 + v9, v49);
      v51 = v29 + *(v5 + 24);
      _s22LocalizedPriceResourceV6FormatOMa(0);
      v52 = swift_getEnumCaseMultiPayload();
      if (v52 == 3)
      {

        _s15PricePropertiesVMa(0);
        OUTLINED_FUNCTION_5_42();
        sub_23BBDCBE8();
        OUTLINED_FUNCTION_12_1();
        (*(v93 + 8))(v51 + v9);
        v94 = OUTLINED_FUNCTION_16_27();
        v95(v94);
        break;
      }

      if (v52 != 2)
      {
        break;
      }

      _s15PricePropertiesVMa(0);
      OUTLINED_FUNCTION_5_42();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_12_1();
      (*(v53 + 8))(v51 + v9);
      v54 = OUTLINED_FUNCTION_16_27();
LABEL_47:
      v55(v54);
      break;
    case 0:
      goto LABEL_7;
  }

LABEL_14:
  v30 = v10 + v7[9];
  if (__swift_getEnumTagSinglePayload(v30, 1, v11))
  {
    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_25:

    goto LABEL_35;
  }

  v31 = _s11PriceStringOMa(0);
  v32 = swift_getEnumCaseMultiPayload();
  switch(v32)
  {
    case 2:
      sub_23BBDCD08();
      OUTLINED_FUNCTION_12_1();
      v48 = *(v56 + 8);
      v47 = v30;
      goto LABEL_33;
    case 1:

      _s22LocalizedPriceResourceVMa(0);
      OUTLINED_FUNCTION_5_42();
      v34 = sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      (*(v35 + 8))(v30 + v9, v34);
      v36 = v30 + *(v5 + 24);
      _s22LocalizedPriceResourceV6FormatOMa(0);
      v37 = swift_getEnumCaseMultiPayload();
      if (v37 == 3)
      {

        v100 = _s15PricePropertiesVMa(0);
        OUTLINED_FUNCTION_6_37();
        sub_23BBDCBE8();
        OUTLINED_FUNCTION_12_1();
        v83 = (*(v82 + 8))(v36 + v9);
        v91 = OUTLINED_FUNCTION_3_46(v83, v84, v85, v86, v87, v88, v89, v90, v96, v100);
        v92(v91);
        break;
      }

      if (v37 != 2)
      {
        break;
      }

      v98 = _s15PricePropertiesVMa(0);
      OUTLINED_FUNCTION_6_37();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_12_1();
      v39 = (*(v38 + 8))(v36 + v9);
      v47 = OUTLINED_FUNCTION_3_46(v39, v40, v41, v42, v43, v44, v45, v46, v96, v98);
LABEL_33:
      v48(v47);
      break;
    case 0:

      break;
  }

  v57 = v30 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (__swift_getEnumTagSinglePayload(v57, 1, v31))
  {
    goto LABEL_35;
  }

  v60 = swift_getEnumCaseMultiPayload();
  switch(v60)
  {
    case 2:
      sub_23BBDCD08();
      OUTLINED_FUNCTION_12_1();
      (*(v81 + 8))(v57);
      break;
    case 1:

      v73 = _s22LocalizedPriceResourceVMa(0);
      OUTLINED_FUNCTION_6_37();
      v74 = sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      (*(v75 + 8))(v57 + v9, v74);
      v76 = v57 + *(v73 + 24);
      _s22LocalizedPriceResourceV6FormatOMa(0);
      v77 = swift_getEnumCaseMultiPayload();
      if (v77 == 3 || v77 == 2)
      {

        _s15PricePropertiesVMa(0);
        OUTLINED_FUNCTION_6_37();
        sub_23BBDCBE8();
        OUTLINED_FUNCTION_12_1();
        (*(v78 + 8))(v76 + v9);
        v79 = OUTLINED_FUNCTION_18_23();
        v80(v79);
      }

      break;
    case 0:
      goto LABEL_25;
  }

LABEL_35:

  (*(*(v6 - 8) + 8))(v10 + v7[11], v6);

  sub_23B97B450(*(v10 + v7[14]), *(v10 + v7[14] + 8));
  v58 = v10 + v7[15];
  if (*(v58 + 40))
  {
    if (*(v58 + 24) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v58);
    }
  }

  else
  {
  }

  sub_23B97B450(*(v10 + v7[16]), *(v10 + v7[16] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BBA3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for SubscriptionStoreButtonInternal(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23BBA1AC8(v9, v5, v6, v7);
}

unint64_t sub_23BBA3138()
{
  result = qword_27E1A3888;
  if (!qword_27E1A3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3888);
  }

  return result;
}

unint64_t sub_23BBA318C()
{
  result = qword_27E1A3898;
  if (!qword_27E1A3898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3880, &qword_23BC04180);
    sub_23BBA3210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3898);
  }

  return result;
}

unint64_t sub_23BBA3210()
{
  result = qword_27E1A38A0;
  if (!qword_27E1A38A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38A8, &unk_23BC041B0);
    sub_23BBA329C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A38A0);
  }

  return result;
}

unint64_t sub_23BBA329C()
{
  result = qword_27E1A38B0;
  if (!qword_27E1A38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A38B0);
  }

  return result;
}

uint64_t sub_23BBA32F0@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v47 = a1;
  v58 = a3;
  v3 = sub_23BBDB148();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDB588();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  v12 = type metadata accessor for StoreKitProminentButtonStyle(0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38B8, &qword_23BC042C0);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v59 = v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38C0, &qword_23BC042C8);
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x28223BE20](v16);
  v49 = v39 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38C8, &qword_23BC042D0);
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x28223BE20](v18);
  v46 = v39 - v19;
  KeyPath = swift_getKeyPath();
  v64 = 0;
  *v14 = KeyPath;
  v14[73] = 0;
  v21 = v6[13];
  v45 = *MEMORY[0x277CE0AC0];
  v44 = v21;
  v39[1] = v6 + 13;
  v21(v11);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v22 = qword_27E1BFCB0;
  v60 = qword_27E1BFCB0;
  v42 = v6[2];
  v42(v8, v11, v5);
  v41 = sub_23B974940();
  sub_23BBD9D18();
  v40 = v6[1];
  v40(v11, v5);
  v14[*(v12 + 24)] = 0;
  v23 = *(v12 + 28);
  v43 &= 1u;
  v14[v23] = v43;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38D0, &qword_23BC04300);
  v25 = sub_23B97B518(&qword_27E1A38D8, &qword_27E1A38D0, &qword_23BC04300, MEMORY[0x277CE04B0]);
  v39[0] = sub_23BBA424C(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle, &unk_23BC03CEC);
  sub_23BBDB988();
  v47 = type metadata accessor for StoreKitProminentButtonStyle;
  sub_23BBA4294(v14, type metadata accessor for StoreKitProminentButtonStyle);
  v26 = swift_getKeyPath();
  v65 = 0;
  *v14 = v26;
  v14[73] = 0;
  v44(v11, v45, v5);
  v60 = v22;
  v42(v8, v11, v5);
  sub_23BBD9D18();
  v40(v11, v5);
  v14[*(v12 + 24)] = 0;
  v14[*(v12 + 28)] = v43;
  v60 = v24;
  v61 = v12;
  v27 = v39[0];
  v62 = v25;
  v63 = v39[0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v49;
  v29 = v50;
  v31 = v27;
  v32 = v59;
  sub_23BBDBA48();
  sub_23BBA4294(v14, v47);
  (*(v48 + 8))(v32, v29);
  v33 = v55;
  sub_23BBDB128();
  v60 = v29;
  v61 = v12;
  v62 = OpaqueTypeConformance2;
  v63 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v36 = v52;
  sub_23BBDB968();
  (*(v56 + 8))(v33, v57);
  (*(v51 + 8))(v30, v36);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v60 = v36;
  v61 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v54;
  sub_23BBDBA28();

  return (*(v53 + 8))(v35, v37);
}

uint64_t sub_23BBA3AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v21[0] = sub_23BBDB148();
  v3 = *(v21[0] - 8);
  MEMORY[0x28223BE20](v21[0]);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38E0, &qword_23BC04308);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38E8, &qword_23BC04310);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v13 = sub_23BBDB428();
  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38F0, &qword_23BC04348);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A38F8, &qword_23BC04350) + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  v17 = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  *v18 = v17;
  v18[8] = 1;
  sub_23BBDB128();
  v19 = sub_23BBA42F8();
  sub_23BBDB968();
  (*(v3 + 8))(v5, v21[0]);
  sub_23B9846E8(v8, &qword_27E1A38E0, &qword_23BC04308);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v21[2] = v6;
  v21[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_23BBDBA28();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_23BBA3DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3E8, &unk_23BBE9F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBA3E50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PrimaryButtonViewModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBA3F98);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBA3FD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for MultilineButtonLabel(255);
  type metadata accessor for SingleLineLabel(255, v1, v2, v3);
  OUTLINED_FUNCTION_15_29();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_9_32();
  sub_23BBA424C(v4, v5, &unk_23BC04638);
  OUTLINED_FUNCTION_13_33();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  v6 = sub_23BBDC098();
  OUTLINED_FUNCTION_12_32(v6);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDBFC8();
  sub_23BBDA358();
  v7 = OUTLINED_FUNCTION_15_29();
  type metadata accessor for SubscribeButtonTopCaptionModifier(v7);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_15_29();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3880, &qword_23BC04180);
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_11_31();
  sub_23BBA424C(v8, v9, MEMORY[0x277CDE458]);
  return swift_getWitnessTable();
}

uint64_t sub_23BBA424C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BBA4294(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BBA42F8()
{
  result = qword_27E1A3900;
  if (!qword_27E1A3900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38E0, &qword_23BC04308);
    sub_23BBA43B0();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3900);
  }

  return result;
}

unint64_t sub_23BBA43B0()
{
  result = qword_27E1A3908;
  if (!qword_27E1A3908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38F8, &qword_23BC04350);
    sub_23B97B518(&qword_27E1A3910, &qword_27E1A38F0, &qword_23BC04348, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3908);
  }

  return result;
}

unint64_t sub_23BBA4498()
{
  result = qword_27E1A3918;
  if (!qword_27E1A3918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3920, &qword_23BC04388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38C0, &qword_23BC042C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38B8, &qword_23BC042C0);
    type metadata accessor for StoreKitProminentButtonStyle(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38D0, &qword_23BC04300);
    sub_23B97B518(&qword_27E1A38D8, &qword_27E1A38D0, &qword_23BC04300, MEMORY[0x277CE04B0]);
    sub_23BBA424C(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle, &unk_23BC03CEC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23BBA424C(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3918);
  }

  return result;
}

unint64_t sub_23BBA46A0()
{
  result = qword_27E1A3928;
  if (!qword_27E1A3928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3930, qword_23BC04390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A38E0, &qword_23BC04308);
    sub_23BBA42F8();
    swift_getOpaqueTypeConformance2();
    sub_23BBA424C(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3928);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_32(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_33()
{

  return swift_getWitnessTable();
}

uint64_t sub_23BBA489C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BBA48F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionStoreButtonsView(uint64_t a1)
{
  result = qword_27E1A3938;
  if (!qword_27E1A3938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BBA4990(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_23BBA4A18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3948, &qword_23BC04430);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-v5];
  *v6 = sub_23BBDAB48();
  *(v6 + 1) = 0x4044000000000000;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3950, &unk_23BC04438);
  v7 = *(v1 + 16);
  v14 = v1;
  sub_23BA8C9CC(sub_23BA93FA8, v13, v7);
  __src[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1618, &unk_23BBFE6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3958, &qword_23BC04448);
  sub_23B97B518(&qword_27E1A1620, &qword_27E1A1618, &unk_23BBFE6D0, MEMORY[0x277D83980]);
  sub_23B97B518(&qword_27E1A3960, &qword_27E1A3958, &qword_23BC04448, MEMORY[0x277CE1198]);
  sub_23BBA52DC(&qword_27E1A1648, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Section);
  sub_23BBDC198();
  v9 = sub_23BBDB388();
  v10 = &v6[*(v4 + 44)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  sub_23BBDC318();
  sub_23BBDA488();
  sub_23BBA526C(v6, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3968, &qword_23BC04450);
  return memcpy((a1 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_23BBA4CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23BBDAB48();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3970, &qword_23BC04458);
  return sub_23BBA4D0C(a1, a2 + *(v4 + 44));
}

uint64_t sub_23BBA4D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3978, &qword_23BC04460);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3980, &qword_23BC04468);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3988, &unk_23BC04470);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);
  v19 = a1 + v18[5];
  v29 = v17;
  sub_23BA9B0D4(v19, v17, &qword_27E19E280, &qword_23BBF4A70);
  *v11 = sub_23BBDAB48();
  *(v11 + 1) = 0x4038000000000000;
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3990, &unk_23BC04480);
  v34 = *(a1 + v18[6]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6A0, &unk_23BBFE6E0);
  type metadata accessor for SubscriptionStoreButton(0);
  sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0, &unk_23BBFE6E0, MEMORY[0x277D83980]);
  sub_23BBA52DC(&qword_27E1988B8, type metadata accessor for SubscriptionStoreButton, &protocol conformance descriptor for SubscriptionStoreButton);
  sub_23BBA52DC(&qword_27E19C6B8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option, &protocol conformance descriptor for SubscriptionStoreControlStyleConfiguration.Option);
  sub_23BBDC198();
  v20 = a1 + v18[7];
  v21 = v30;
  sub_23BA9B0D4(v20, v30, &qword_27E19E288, &qword_23BC04490);
  v28 = v14;
  sub_23BA9B0D4(v17, v14, &qword_27E1A3988, &unk_23BC04470);
  v22 = v31;
  sub_23BA9B0D4(v11, v31, &qword_27E1A3980, &qword_23BC04468);
  v23 = v32;
  sub_23BA9B0D4(v21, v32, &qword_27E1A3978, &qword_23BC04460);
  v24 = v33;
  sub_23BA9B0D4(v14, v33, &qword_27E1A3988, &unk_23BC04470);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3998, &qword_23BC04498);
  sub_23BA9B0D4(v22, v24 + *(v25 + 48), &qword_27E1A3980, &qword_23BC04468);
  sub_23BA9B0D4(v23, v24 + *(v25 + 64), &qword_27E1A3978, &qword_23BC04460);
  sub_23B9EA92C(v21, &qword_27E1A3978, &qword_23BC04460);
  sub_23B9EA92C(v11, &qword_27E1A3980, &qword_23BC04468);
  sub_23B9EA92C(v29, &qword_27E1A3988, &unk_23BC04470);
  sub_23B9EA92C(v23, &qword_27E1A3978, &qword_23BC04460);
  sub_23B9EA92C(v22, &qword_27E1A3980, &qword_23BC04468);
  return sub_23B9EA92C(v28, &qword_27E1A3988, &unk_23BC04470);
}

uint64_t sub_23BBA5194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BBA5324(a1, a2);
  v3 = type metadata accessor for SubscriptionStoreButton(0);
  v4 = a2 + v3[5];
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  v5 = a2 + v3[6];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  *(v6 + 73) = 0;
  v7 = a2 + v3[8];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a2 + v3[9];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_23BBA526C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3948, &qword_23BC04430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBA52DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BBA5324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BBA53B8()
{
  result = qword_27E1A39A0;
  if (!qword_27E1A39A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3968, &qword_23BC04450);
    sub_23BBA5444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A39A0);
  }

  return result;
}

unint64_t sub_23BBA5444()
{
  result = qword_27E1A39A8;
  if (!qword_27E1A39A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3948, &qword_23BC04430);
    sub_23B97B518(&qword_27E1A39B0, &qword_27E1A39B8, qword_23BC04558, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A39A8);
  }

  return result;
}

uint64_t sub_23BBA5518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDB538();
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A39C0, &qword_23BC045E0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A39C8, &qword_23BC045E8) + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  LODWORD(a1) = sub_23BBDAF28();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A39D0, &qword_23BC045F0);
  *(a2 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_23BBA55F8()
{
  result = qword_27E1A39D8;
  if (!qword_27E1A39D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A39E0, qword_23BC045F8);
    sub_23BBA5684();
    sub_23BA74218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A39D8);
  }

  return result;
}

unint64_t sub_23BBA5684()
{
  result = qword_27E1A39E8;
  if (!qword_27E1A39E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A39D0, &qword_23BC045F0);
    sub_23BBA573C();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8, &qword_23BBF2BF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A39E8);
  }

  return result;
}

unint64_t sub_23BBA573C()
{
  result = qword_27E1A39F0;
  if (!qword_27E1A39F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A39C8, &qword_23BC045E8);
    sub_23B97B518(&qword_27E1A39F8, &qword_27E1A39C0, &qword_23BC045E0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A39F0);
  }

  return result;
}

uint64_t sub_23BBA5834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BBA5890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MultilineButtonLabel(uint64_t a1)
{
  result = qword_27E1A3A00;
  if (!qword_27E1A3A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BBA5928(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BBA59B0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23BBDAB48();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A10, &qword_23BC04688);
  return sub_23BBA5A04(v2, a2 + *(v4 + 44));
}

uint64_t sub_23BBA5A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A18, &qword_23BC04690);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v49 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A20, &qword_23BC04698);
  MEMORY[0x28223BE20](v42);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  v45 = &v41 - v12;
  v46 = a1;
  sub_23BB77FC4(a1, v5);
  v13 = sub_23BB95790(v5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v51 = v13;
  v52 = v15;
  v53 = v17 & 1;
  v54 = v19;
  v55 = KeyPath;
  v56 = 1;
  v57 = 0;
  if ((sub_23BBDC2A8() & 1) == 0)
  {
    sub_23BBDB4A8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A28, &unk_23BC046D0);
  sub_23BBA5E24();
  sub_23BBDB6D8();
  sub_23BA51C9C(v13, v15, v17 & 1);

  if (sub_23BBDC2A8())
  {
    v21 = sub_23BBDB578();
  }

  else
  {
    v21 = sub_23BBDB438();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  (*(v43 + 32))(v10, v49, v44);
  v24 = &v10[*(v42 + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = v45;
  sub_23BBA5EE4(v10, v45);
  v26 = type metadata accessor for MultilineButtonLabel(0);
  sub_23BB77FC4(v46 + *(v26 + 20), v5);
  v27 = sub_23BB95790(v5);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = swift_getKeyPath();
  v35 = sub_23BBDB538();
  v36 = swift_getKeyPath();
  v31 &= 1u;
  LOBYTE(v51) = v31;
  LOBYTE(__src[0]) = 0;
  v37 = v47;
  sub_23BBA5F4C(v25, v47);
  v38 = v48;
  sub_23BBA5F4C(v37, v48);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A38, &qword_23BC04710) + 48);
  __src[0] = v27;
  __src[1] = v29;
  LOBYTE(__src[2]) = v31;
  __src[3] = v33;
  __src[4] = v34;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = v36;
  __src[8] = v35;
  memcpy((v38 + v39), __src, 0x48uLL);
  sub_23BBA5FB4(__src, &v51);
  sub_23BBA6024(v25);
  v51 = v27;
  v52 = v29;
  v53 = v31;
  v54 = v33;
  v55 = v34;
  v56 = 1;
  v57 = 0;
  v58 = v36;
  v59 = v35;
  sub_23BBA6084(&v51);
  return sub_23BBA6024(v37);
}

unint64_t sub_23BBA5E24()
{
  result = qword_27E1A3A30;
  if (!qword_27E1A3A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3A28, &unk_23BC046D0);
    sub_23B97B518(&qword_27E19CF68, &qword_27E19CF70, &qword_23BBFFDF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3A30);
  }

  return result;
}

uint64_t sub_23BBA5EE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A20, &qword_23BC04698);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BBA5F4C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A20, &qword_23BC04698);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BBA5FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A40, &qword_23BC04718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBA6024(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A20, &qword_23BC04698);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_23BBA6084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3A40, &qword_23BC04718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BBA6130()
{
  v1 = sub_23BBDCE08();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = sub_23BBDD018();
    v41 = v0;
    v12 = v11;

    sub_23BB02B28(v10, v12);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v13 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v13, v14);
    v15 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v15, v16, v4);
    v17 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v17, v18);
    sub_23BBDCDD8();
    (*(v2 + 8))(v4, v1);
    v19 = OUTLINED_FUNCTION_0_7();
    v21 = sub_23B9A940C(v19, v20);
    v22 = sub_23BB02FE4(v7, v21);
    v24 = v23;
    v0 = v41;

    v25 = sub_23BBD97D8();
    v27 = v26;
    sub_23B9A940C(v22, v24);
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = sub_23B9D4CA8(v25, v27);

  if (v28)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = *(v0 + 40);
  v43 = *(v0 + 24);
  v44[0] = v31;
  *(v44 + 15) = *(v0 + 55);
  v32 = sub_23BBC9488(v29);
  if (!v32)
  {

    return 0;
  }

  v33 = sub_23BB024A0(v32, v30, 1);
  v34 = qword_284E56FF0;
  v35 = unk_284E56FF8;

  v36 = sub_23BB03A88(v34, v35);
  v38 = v37;

  if (v38)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v42 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010, qword_23BBE7230);
    sub_23BBDD8D8();
    v33 = v42;

    sub_23B9A9318();
    sub_23BBDD8F8();
  }

  return v33;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23BBA64B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 59))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BBA650C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23BBA65D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_23BBDCF38() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Pair(0, a3, a4, v8);
  return sub_23BBDCF38() & 1;
}

uint64_t sub_23BBA66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBDDBB8();
  sub_23BBA6654(v7, a1, a2, a3);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_23BBDDBB8();
  sub_23BBA6654(v7, a2, v4, v5);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA679C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BBA6828(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23BBA6A00(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BBA6C8CLL);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_23BBA6CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BBA6D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v23 = a6;
  type metadata accessor for BackgroundGeometry(255, a4, a5, a4);
  OUTLINED_FUNCTION_2_48();
  swift_getWitnessTable();
  sub_23BBDAE98();
  v8 = sub_23BBDA078();
  OUTLINED_FUNCTION_4_44(v8);
  OUTLINED_FUNCTION_5_43();
  sub_23BBDACB8();
  v9 = sub_23BBDA358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v24 = a4;
  v25 = a5;
  v26 = v20;
  v27 = v21;
  OUTLINED_FUNCTION_11_1();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDC318();
  sub_23BBDB6B8();
  OUTLINED_FUNCTION_1_63();
  v17 = swift_getWitnessTable();
  v28 = WitnessTable;
  v29 = v17;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_23B9D2D88();
  return (v18)(v15, v9);
}

double sub_23BBA6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_23BBDA068();
  sub_23BBDA078();
  swift_getWitnessTable();
  sub_23B9D2D88();

  sub_23B9D2D88();

  return result;
}

uint64_t sub_23BBA70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_23B9D2D88();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_23B9D2D88();
  return (v13)(v11, a4);
}

uint64_t sub_23BBA71F0()
{

  return swift_deallocObject();
}

uint64_t sub_23BBA7234(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_43();
  type metadata accessor for BackgroundGeometry(v1, v2, v3, v4);
  OUTLINED_FUNCTION_2_48();
  swift_getWitnessTable();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_5_43();
  v5 = sub_23BBDA078();
  OUTLINED_FUNCTION_4_44(v5);
  sub_23BBDACB8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_63();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_44(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_23BBA7378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDCDB8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 2)
    {
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BBA7458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDCDB8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2 + 2;
  }

  return result;
}

uint64_t type metadata accessor for Subscription(uint64_t a1)
{
  result = qword_27E1A3B58;
  if (!qword_27E1A3B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BBA7550(uint64_t a1)
{
  sub_23BBDCDB8();
  if (v1 <= 0x3F)
  {
    sub_23B9989D8(319, &qword_27E1A3B68, &type metadata for Subscription.CompactID);
    if (v2 <= 0x3F)
    {
      sub_23B9989D8(319, &qword_27E1A3B70, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Subscription.CompactID(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Subscription.CompactID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23BBA76BC(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_3_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_23BBDC8F8();
  sub_23BA98A1C(v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
  {
    result = sub_23BB6DF48(v11);
    __break(1u);
  }

  else
  {
    sub_23BB6DF48(v14);
    (*(v3 + 32))(v6, v11, v1);
    OUTLINED_FUNCTION_52_5();
    swift_getAtKeyPath();
    return (*(v3 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_23BBA7878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v15 = OUTLINED_FUNCTION_13_0(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_23BBDC8F8();
  v18 = sub_23BBDCB58();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  sub_23BB6DF48(v17);
  if (EnumTagSinglePayload != 1)
  {
    (*(v10 + 16))(v13, a1, v8);
    sub_23BBA7A78(v13, a2, a3 & 1, a4);
    v19 = 0;
  }

  (*(v10 + 8))(a1, v8);
  v21 = type metadata accessor for Subscription(0);
  return __swift_storeEnumTagSinglePayload(a4, v19, 1, v21);
}

uint64_t sub_23BBA7A24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_23BBDDA88();
      }
    }

    else
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  else
  {
    return (a1 == a4) & (a5 ^ a2 ^ 1);
  }
}

uint64_t sub_23BBA7A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_23BBDC8F8();
  v12 = sub_23BBDCB58();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v14 = type metadata accessor for Subscription(0);
  v15 = *(v14 + 24);
  result = sub_23BB6DF48(v11);
  if (EnumTagSinglePayload == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = a4 + v15;
    v18 = sub_23BBDCDB8();
    OUTLINED_FUNCTION_3_2();
    v20 = v19;
    (*(v21 + 16))(a4, a1, v18);
    v22 = sub_23BBDCD78();
    sub_23BBA7C04(v22, v23);
    v25 = v24;
    v27 = v26;
    result = (*(v20 + 8))(a1, v18);
    v28 = a4 + *(v14 + 20);
    *v28 = v25;
    *(v28 + 8) = v27;
    *v17 = a2;
    *(v17 + 8) = a3 & 1;
  }

  return result;
}

void sub_23BBA7C04(uint64_t result, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v43 = OUTLINED_FUNCTION_61_0();
    sub_23BBA9020(v43, v44, 10);
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_61_0();
      sub_23BBA9020(v46, v47, 16);
    }

    goto LABEL_154;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v49 = result;
    v50 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          OUTLINED_FUNCTION_7_45();
          while (1)
          {
            OUTLINED_FUNCTION_0_60();
            if (!v13 && v12)
            {
              break;
            }

            OUTLINED_FUNCTION_14_30();
            if (!v13)
            {
              break;
            }

            OUTLINED_FUNCTION_5_44();
            if (v12)
            {
              break;
            }

            OUTLINED_FUNCTION_3_47();
            if (v13)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (result != 45)
    {
      if (v4)
      {
        v19 = &v49;
        v20 = 10;
        while (*v19 - 48 <= 9)
        {
          if (!is_mul_ok(0, v20))
          {
            break;
          }

          OUTLINED_FUNCTION_5_44();
          if (v12)
          {
            break;
          }

          v15 = 0;
          v19 = (v21 + 1);
          if (v22 == 1)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        OUTLINED_FUNCTION_7_45();
        while (1)
        {
          OUTLINED_FUNCTION_0_60();
          if (!v13 && v12)
          {
            break;
          }

          OUTLINED_FUNCTION_14_30();
          if (!v13)
          {
            break;
          }

          v12 = 10 * v2 >= v16;
          v2 = 10 * v2 - v16;
          if (!v12)
          {
            break;
          }

          OUTLINED_FUNCTION_3_47();
          if (v13)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    goto LABEL_162;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    v8 = sub_23BBDD7C8();
  }

  v10 = *v8;
  if (v10 == 43)
  {
    if (v9 < 1)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (v9 != 1)
    {
      if (v8)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_60();
          if (!v13 && v12)
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_14_30();
          if (!v13)
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_5_44();
          if (v12)
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_3_47();
          if (v13)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_64;
    }

LABEL_72:
    v15 = 1;
    goto LABEL_73;
  }

  if (v10 != 45)
  {
    if (v9)
    {
      if (v8)
      {
        v17 = 0;
        while (1)
        {
          v18 = *v8 - 48;
          if (v18 > 9)
          {
            goto LABEL_72;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            goto LABEL_72;
          }

          v12 = __CFADD__(10 * v17, v18);
          v17 = 10 * v17 + v18;
          if (v12)
          {
            goto LABEL_72;
          }

          v15 = 0;
          ++v8;
          if (!--v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_72;
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  if (v9 == 1)
  {
    goto LABEL_72;
  }

  if (v8)
  {
    v11 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_0_60();
      if (!v13 && v12)
      {
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_14_30();
      if (!v13)
      {
        goto LABEL_72;
      }

      v12 = 10 * v11 >= v14;
      v11 = 10 * v11 - v14;
      if (!v12)
      {
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_3_47();
      if (v13)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_64:
  v15 = 0;
LABEL_73:
  v51 = v15;
  if ((v15 & 1) == 0)
  {
    goto LABEL_154;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v49 = result;
    v50 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_64();
            if (v12)
            {
              OUTLINED_FUNCTION_10_25();
              if (v12)
              {
                OUTLINED_FUNCTION_9_33();
                if (!v13 && v12)
                {
                  break;
                }
              }
            }

            OUTLINED_FUNCTION_8_43();
            if (v13)
            {
              goto LABEL_153;
            }
          }
        }

        goto LABEL_152;
      }

      goto LABEL_168;
    }

    if (result != 45)
    {
      if (v4)
      {
        v39 = 0;
        v40 = &v49;
        while (1)
        {
          v41 = *v40;
          v42 = v41 - 48;
          if ((v41 - 48) >= 0xA)
          {
            if ((v41 - 65) < 6)
            {
              v42 = v41 - 55;
            }

            else
            {
              if ((v41 - 97) > 5)
              {
                goto LABEL_152;
              }

              v42 = v41 - 87;
            }
          }

          if (v39 >> 60)
          {
            break;
          }

          v39 = 16 * v39 + v42;
          v40 = (v40 + 1);
          if (!--v4)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_152;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        v31 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_1_64();
          if (v12)
          {
            OUTLINED_FUNCTION_10_25();
            if (v12)
            {
              OUTLINED_FUNCTION_9_33();
              if (!v13 && v12)
              {
                goto LABEL_152;
              }

              v33 = v35 - 87;
            }

            else
            {
              v33 = v34 - 55;
            }
          }

          if (v31 >> 60)
          {
            break;
          }

          v12 = 16 * v31 >= v33;
          v31 = 16 * v31 - v33;
          if (!v12)
          {
            break;
          }

          v30 = v32 - 1;
          if (!v30)
          {
            goto LABEL_153;
          }
        }
      }

      goto LABEL_152;
    }

    goto LABEL_166;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v23 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    v23 = sub_23BBDD7C8();
    v5 = v48;
  }

  v24 = *v23;
  if (v24 == 43)
  {
    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        if (v23)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_64();
            if (v12)
            {
              OUTLINED_FUNCTION_10_25();
              if (v12)
              {
                OUTLINED_FUNCTION_9_33();
                if (!v13 && v12)
                {
                  goto LABEL_152;
                }
              }
            }

            OUTLINED_FUNCTION_8_43();
            if (v13)
            {
              goto LABEL_153;
            }
          }
        }

        goto LABEL_141;
      }

      goto LABEL_152;
    }

    goto LABEL_167;
  }

  if (v24 != 45)
  {
    if (v5)
    {
      if (v23)
      {
        v36 = 0;
        while (1)
        {
          v37 = *v23;
          v38 = v37 - 48;
          if ((v37 - 48) >= 0xA)
          {
            if ((v37 - 65) < 6)
            {
              v38 = v37 - 55;
            }

            else
            {
              if ((v37 - 97) > 5)
              {
                goto LABEL_152;
              }

              v38 = v37 - 87;
            }
          }

          if (v36 >> 60)
          {
            goto LABEL_152;
          }

          v36 = 16 * v36 + v38;
          ++v23;
          if (!--v5)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_141;
    }

LABEL_152:
    LOBYTE(v30) = 1;
    goto LABEL_153;
  }

  if (v5 >= 1)
  {
    if (v5 != 1)
    {
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_1_64();
          if (v12)
          {
            OUTLINED_FUNCTION_10_25();
            if (v12)
            {
              OUTLINED_FUNCTION_9_33();
              if (!v13 && v12)
              {
                goto LABEL_152;
              }

              v27 = v29 - 87;
            }

            else
            {
              v27 = v28 - 55;
            }
          }

          if (v25 >> 60)
          {
            goto LABEL_152;
          }

          v12 = 16 * v25 >= v27;
          v25 = 16 * v25 - v27;
          if (!v12)
          {
            goto LABEL_152;
          }

          v30 = v26 - 1;
          if (!v30)
          {
            goto LABEL_153;
          }
        }
      }

LABEL_141:
      LOBYTE(v30) = 0;
LABEL_153:
      v51 = v30;
LABEL_154:

      return;
    }

    goto LABEL_152;
  }

LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
}

uint64_t sub_23BBA81CC(uint64_t a1, char a2)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63C0](a1);
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA8244(uint64_t a1)
{
  v2 = *v1;
  sub_23BBDDBB8();
  MEMORY[0x23EEB63C0](v2);
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA82BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDCB58();
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v81 = &v74[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v74[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v17 = OUTLINED_FUNCTION_13_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v80 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v74[-v21];
  MEMORY[0x28223BE20](v23);
  v25 = &v74[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v74[-v27];
  v29 = type metadata accessor for Subscription(0);
  v30 = v29;
  v31 = *(v29 + 24);
  v32 = (a1 + v31);
  if (*(a1 + v31 + 8) & 1) != 0 || (v33 = a2 + v31, (*(v33 + 8)) || *v32 != *v33)
  {
    v78 = v6;
    v79 = v15;
    v77 = v10;
    v39 = *(v29 + 20);
    v40 = *(a1 + v39 + 8);
    if (v40 == 2)
    {
      v41 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v43 = v42;
      if (*(a2 + *(v30 + 20) + 8) != 2)
      {
        v44 = OUTLINED_FUNCTION_52_5();
LABEL_21:
        sub_23B979A38(v44, v45, 1);
        v53 = 0;
        return v53 & 1;
      }
    }

    else
    {
      v41 = *(a1 + v39);
      v46 = (a2 + v39);
      v47 = *(a2 + v39 + 8);
      if (v47 != 2)
      {
        v53 = 0;
        if (v41 != *v46)
        {
          return v53 & 1;
        }

        v76 = a2;
        v55 = v40 ^ v47;
        v54 = v79;
        if (v55)
        {
          return v53 & 1;
        }

        goto LABEL_23;
      }

      v43 = v40 & 1;
    }

    v76 = a2;
    v44 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v48 = v44;
    v49 = v45;
    if (v40 != 2)
    {
      goto LABEL_21;
    }

    if (v41 == v44 && v43 == v45)
    {
      sub_23B979A38(v41, v43, 1);
      v56 = OUTLINED_FUNCTION_52_5();
      sub_23B979A38(v56, v57, 1);
      v54 = v79;
    }

    else
    {
      v75 = sub_23BBDDA88();
      sub_23B979A38(v48, v49, 1);
      v51 = OUTLINED_FUNCTION_52_5();
      sub_23B979A38(v51, v52, 1);
      v53 = 0;
      v54 = v79;
      if ((v75 & 1) == 0)
      {
        return v53 & 1;
      }
    }

LABEL_23:
    sub_23BBDC8F8();
    sub_23BA98A1C(v28, v25);
    if (__swift_getEnumTagSinglePayload(v25, 1, v4) == 1)
    {
      v73 = v25;
    }

    else
    {
      sub_23BB6DF48(v28);
      v58 = v78;
      v59 = *(v78 + 32);
      v59(v54, v25, v4);
      v60 = v81;
      v59(v81, v54, v4);
      sub_23BBDC8F8();
      v61 = v80;
      sub_23BA98A1C(v22, v80);
      if (__swift_getEnumTagSinglePayload(v61, 1, v4) != 1)
      {
        sub_23BB6DF48(v22);
        v62 = v77;
        v59(v77, v61, v4);
        v53 = sub_23BBDCAC8();
        v63 = *(v58 + 8);
        v63(v62, v4);
        v63(v60, v4);
        return v53 & 1;
      }

      v73 = v61;
    }

    result = sub_23BB6DF48(v73);
    __break(1u);
    return result;
  }

  v34 = *(v29 + 20);
  v35 = *(a1 + v34 + 8);
  if (v35 == 2)
  {
    v36 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v38 = v37;
    v34 = *(v30 + 20);
  }

  else
  {
    v36 = *(a1 + v34);
    v38 = v35 & 1;
  }

  v65 = a2 + v34;
  v66 = *(v65 + 8);
  if (v66 == 2)
  {
    v67 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v69 = v68;
  }

  else
  {
    v67 = *v65;
    v69 = v66 & 1;
  }

  v70 = v66 == 2;
  v71 = v35 == 2;
  v72 = sub_23BBA7A24(v36, v38, v71, v67, v69, v70);
  sub_23B979A38(v67, v69, v70);
  sub_23B979A38(v36, v38, v71);
  return v72 & 1;
}

uint64_t sub_23BBA87A0(uint64_t a1)
{
  sub_23BBDCDB8();
  sub_23BBA95A8(&qword_27E1A04E8, MEMORY[0x277CDD330], MEMORY[0x277CDD338]);
  sub_23BBDCE68();
  v2 = type metadata accessor for Subscription(0);
  v3 = (v1 + *(v2 + 20));
  if (*(v3 + 8) != 2)
  {
    v4 = *v3;
    sub_23BBDDBD8();
    MEMORY[0x23EEB63C0](v4);
  }

  sub_23BBDDBD8();
  v5 = (v1 + *(v2 + 24));
  if (*(v5 + 8) == 1)
  {
    return sub_23BBDDBD8();
  }

  v7 = *v5;
  sub_23BBDDBD8();
  return MEMORY[0x23EEB63A0](v7);
}

uint64_t sub_23BBA88AC()
{
  sub_23BBDDBB8();
  sub_23BBA87A0(v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA88EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x23EEB63A0](1);

    return sub_23BBDD078();
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63C0](a2);
    return sub_23BBDDBD8();
  }
}

uint64_t sub_23BBA896C(uint64_t a1, uint64_t a2, char a3)
{
  sub_23BBDDBB8();
  sub_23BBA88EC(v7, a1, a2, a3 & 1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA89D8(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BBA87A0(v2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBA8A2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_23BBDDBB8();
  sub_23BBA88EC(v6, v2, v3, v4);
  return sub_23BBDDBF8();
}

unint64_t sub_23BBA8AA8()
{
  result = qword_27E1A3B78[0];
  if (!qword_27E1A3B78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A3B78);
  }

  return result;
}

void *sub_23BBA8B44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D168, &unk_23BC04BF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_23BBA8BB4(uint64_t a1, unint64_t a2)
{
  v2 = sub_23BBA8C20(sub_23BBA8C1C, 0, a1, a2);
  v6 = sub_23BBA8C54(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_23BBA8C54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_23BBDD668();
    if (!v9 || (v10 = v9, v11 = sub_23BBA8B44(v9, 0), v12 = sub_23BBA8DB4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_23BBDD058();

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
      return sub_23BBDD058();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_23BBDD7C8();
LABEL_4:

  return sub_23BBDD058();
}

unint64_t sub_23BBA8DB4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_23BBA8FC4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23BBDD108();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_23BBDD7C8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_23BBA8FC4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_23BBDD0E8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
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

uint64_t sub_23BBA8FC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_23BBDD118();
    OUTLINED_FUNCTION_6_38(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x23EEB58D0](15, a1 >> 16);
    OUTLINED_FUNCTION_6_38(v3);
    return v4 | 8;
  }
}

unsigned __int8 *sub_23BBA9020(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_23BBDD158();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_23BBA8BB4(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23BBDD7C8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
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
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
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

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
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

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
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
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
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

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
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
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
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

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
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
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
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

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_23BBA95A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BBA9694(uint64_t a1)
{
  sub_23BBD9D48();
  sub_23BBDCF28();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_23BBA974C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBD9D48();
  sub_23BBDCF28();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, TupleTypeMetadata2);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BBA97FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  sub_23BBD9D48();
  sub_23BBDCF28();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, TupleTypeMetadata2);
}

uint64_t sub_23BBA98BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OptionalScaledMetric.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BBA9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for OptionalScaledMetric.Storage(0, *(a3 + 16), *(a3 + 24), a4);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_23BBA99A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for OptionalScaledMetric.Storage(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t sub_23BBA9A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  (*(v7 + 16))(v3, a1, a2);
  v9 = sub_23BBDC0D8();
  (*(v7 + 8))(a1, a2);
  return v9;
}

void sub_23BBA9AEC()
{
  v0 = OUTLINED_FUNCTION_20_21();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_4();
  v2 = sub_23BBDCFC8();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_16_28();
  sub_23BBDCF48();
  sub_23BBD9838();
  OUTLINED_FUNCTION_22_19();
}

void sub_23BBA9BB4()
{
  v0 = OUTLINED_FUNCTION_20_21();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_4();
  v2 = sub_23BBDCFC8();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_16_28();
  sub_23BBDCF48();
  sub_23BBD9838();
  OUTLINED_FUNCTION_22_19();
}

void *sub_23BBA9C7C()
{
  sub_23BB2A448();

  return sub_23BBDA958();
}

uint64_t sub_23BBA9CC4(uint64_t a1)
{
  v3 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_4();
  sub_23BBAC6D4(a1, v1, type metadata accessor for SubscriptionStorePolicyConfiguration);
  sub_23BB2A448();
  sub_23BBDA968();
  return sub_23BBAC734(a1, type metadata accessor for SubscriptionStorePolicyConfiguration);
}

void sub_23BBA9D6C()
{
  v0 = OUTLINED_FUNCTION_20_21();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_4();
  v2 = sub_23BBDCFC8();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_16_28();
  sub_23BBDCFD8();
  sub_23BBD9838();
  OUTLINED_FUNCTION_22_19();
}

BOOL sub_23BBA9E34(double a1)
{
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_23BBAC6D4(v1, &v12 - v6, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_23BBAC734(v7, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  if (EnumCaseMultiPayload != 2)
  {
    return 1;
  }

  v9 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  sub_23BBAC6D4(v1 + *(v9 + 20), v4, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v10 = swift_getEnumCaseMultiPayload() != 2;
  sub_23BBAC734(v4, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  return v10;
}

void View.subscriptionStorePolicyDestination(url:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3C98, &qword_23BC04CE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  v31 = (&a9 - v30);
  OUTLINED_FUNCTION_9_34();
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = sub_23BBAB254;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = 0;
  v36 = *(v28 + 28);
  sub_23BBD9728();
  OUTLINED_FUNCTION_4_1();
  (*(v37 + 16))(v31 + v36, v27);
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v31 = sub_23BBAB390;
  v31[1] = v35;
  MEMORY[0x23EEB43C0](v31, v25, v28, v23);
  sub_23BBAB3D8(v31);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BBAA0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for PolicyConfigurationModifier(0, a4, a3, a4);
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

void View.subscriptionStorePolicyDestination<A>(for:destination:)()
{
  OUTLINED_FUNCTION_10_0();
  v19 = v2;
  v4 = v3;
  v6 = v5;
  v18 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3C98, &qword_23BC04CE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_9_34();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = sub_23BBAB254;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  v17 = *(v11 + 28);
  v9();
  *(v1 + v17) = sub_23BBA9A08(v0, v6, v4);
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v1 = sub_23BBAD13C;
  v1[1] = v16;
  MEMORY[0x23EEB43C0](v1, v18, v11, v19);
  sub_23BBAB3D8(v1);
  OUTLINED_FUNCTION_9_1();
}

void View.subscriptionStorePolicyForegroundStyle<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v23 = v9;
  OUTLINED_FUNCTION_3_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v18 = type metadata accessor for PolicyConfigurationModifier(0, v16, v16, v17);
  OUTLINED_FUNCTION_3_2();
  v20 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_27();
  v22 = swift_allocObject();
  v22[2] = v8;
  v22[3] = v6;
  v22[4] = v4;
  v22[5] = v2;
  (*(v11 + 16))(v15, v23, v6);
  sub_23BBAA0CC(sub_23BBAB464, v22, v15, v6, v0);
  MEMORY[0x23EEB43C0](v0, v8, v18, v4);
  (*(v20 + 8))(v0, v18);
  OUTLINED_FUNCTION_9_1();
}

uint64_t (*sub_23BBAA45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23BBAC6D4(a1, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStorePolicyConfiguration);
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  sub_23BBACA78(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  return sub_23BBACD4C;
}

uint64_t sub_23BBAA588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23BBAC6D4(v4, a4, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v9 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  sub_23BBAC6D4(v4 + v9[5], a4 + v9[5], type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v15[3] = a2;
  v15[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_23BBACDD4(v4 + v9[7], v14);
  v11 = a4 + v9[6];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = a4 + v9[7];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  sub_23BBACB98(v15, v11);
  return sub_23BBACB98(v14, v12);
}

void View.subscriptionStorePolicyForegroundStyle<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v39 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v37 = v13;
  v38 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_27();
  type metadata accessor for PolicyConfigurationModifier(0, v16, v17, v18);
  OUTLINED_FUNCTION_3_2();
  v35 = v20;
  v36 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = (&TupleTypeMetadata2 - v22);
  v24 = swift_allocObject();
  v24[2] = v12;
  v24[3] = v10;
  v24[4] = v8;
  v24[5] = v6;
  v25 = v6;
  v26 = v34;
  v24[6] = v4;
  v24[7] = v26;
  v27 = swift_allocObject();
  v27[2] = v12;
  v27[3] = v10;
  v27[4] = v8;
  v27[5] = v25;
  v27[6] = v4;
  v27[7] = v26;
  v27[8] = sub_23BBAB47C;
  v27[9] = v24;
  v28 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  OUTLINED_FUNCTION_1_4();
  (*(v30 + 16))(v0, v37, v10);
  OUTLINED_FUNCTION_1_4();
  (*(v31 + 16))(v0 + v29, v38, v8);
  sub_23BBAA0CC(sub_23BBAB4C4, v27, v0, v28, v23);
  v32 = v36;
  MEMORY[0x23EEB43C0](v23, v12, v36, v25);
  (*(v35 + 8))(v23, v32);
  OUTLINED_FUNCTION_9_1();
}

uint64_t (*sub_23BBAA8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_23BBAC6D4(a1, &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStorePolicyConfiguration);
  v17 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  sub_23BBACA78(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  return sub_23BBACADC;
}

uint64_t sub_23BBAAA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v26 = a3;
  v27 = a6;
  v24 = a7;
  v25 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  v20 = *(a4 - 8);
  (*(v20 + 16))(&v24 - v18, a1, a4, v17);
  v21 = *(a5 - 8);
  (*(v21 + 16))(&v19[*(TupleTypeMetadata2 + 48)], a2, a5);
  (*(v13 + 16))(v15, v19, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  sub_23BBAAC38(v15, &v15[v22], a4, a5, v27, v25, v24);
  (*(v13 + 8))(v19, TupleTypeMetadata2);
  (*(v21 + 8))(&v15[v22], a5);
  return (*(v20 + 8))(v15, a4);
}

uint64_t sub_23BBAAC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v46 = a5;
  v47 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v41 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  v23 = *(a3 - 8);
  (*(v23 + 16))(&v41 - v21, a1, a3, v20);
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = a4;
  v42 = a4;
  v26 = *(a4 - 8);
  (*(v26 + 16))(&v22[v24], a2, v25);
  v43 = a7;
  sub_23BBAC6D4(v8, a7, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v27 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  sub_23BBAC6D4(v8 + v27[5], a7 + v27[5], type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v28 = *(v15 + 16);
  v29 = v48;
  v28(v48, v22, TupleTypeMetadata2);
  v44 = *(TupleTypeMetadata2 + 48);
  v50[3] = a3;
  v50[4] = v46;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(v23 + 32))(boxed_opaque_existential_1, v29, a3);
  v31 = v45;
  v28(v45, v22, TupleTypeMetadata2);
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = v42;
  v49[3] = v42;
  v49[4] = v47;
  v34 = __swift_allocate_boxed_opaque_existential_1(v49);
  v35 = &v31[v32];
  v36 = v31;
  (*(v26 + 32))(v34, v35, v33);
  (*(v15 + 8))(v22, TupleTypeMetadata2);
  v37 = v43;
  v38 = v43 + v27[6];
  *(v38 + 32) = 0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  v39 = v37 + v27[7];
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  sub_23BBACB98(v50, v38);
  sub_23BBACB98(v49, v39);
  (*(v23 + 8))(v36, a3);
  return (*(v26 + 8))(&v48[v44], v33);
}

uint64_t (*sub_23BBAAF84(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1)
{
  v14 = a2(a1);
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a9;
  v17[8] = v14;
  v17[9] = v16;
  return sub_23BBAC900;
}

uint64_t (*sub_23BBAB084(uint64_t a1))(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BBAC6D4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStorePolicyConfiguration);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23BBACA78(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_23BBACE48;
}

uint64_t sub_23BBAB188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23BBAC6D4(a1, a3, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  sub_23BBAC6D4(a2 + v5[5], a3 + v5[5], type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  sub_23BBACDD4(a2 + v5[6], v10);
  sub_23BBACDD4(a2 + v5[7], v9);
  v6 = a3 + v5[6];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = a3 + v5[7];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  sub_23BBACB98(v10, v6);
  return sub_23BBACB98(v9, v7);
}

uint64_t (*sub_23BBAB254(uint64_t a1))(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BBAC6D4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStorePolicyConfiguration);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23BBACA78(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_23BBACFA4;
}

uint64_t sub_23BBAB358()
{

  return swift_deallocObject();
}

uint64_t sub_23BBAB3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3C98, &qword_23BC04CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BBAB48C()
{

  return swift_deallocObject();
}

uint64_t sub_23BBAB4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23BBAC6D4(a2, a3, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  v6 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  sub_23BBAC6D4(a1, a3 + v6[5], type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  sub_23BBACDD4(a2 + v6[6], v11);
  sub_23BBACDD4(a2 + v6[7], v10);
  v7 = a3 + v6[6];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = a3 + v6[7];
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  sub_23BBACB98(v11, v7);
  return sub_23BBACB98(v10, v8);
}

uint64_t SubscriptionStorePolicyKind.hashValue.getter()
{
  v1 = *v0;
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](v1);
  return sub_23BBDDBF8();
}

unint64_t sub_23BBAB66C()
{
  result = qword_27E1A3CA0;
  if (!qword_27E1A3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3CA0);
  }

  return result;
}

uint64_t sub_23BBAB6D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3C98, &qword_23BC04CE0);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_10_26(&qword_27E1A3CA8);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BBAB748()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3C98, &qword_23BC04CE0);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_10_26(&qword_27E1A3CA8);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BBAB7C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PolicyConfigurationModifier(255, a1[1], a3, a4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BBAB81C(uint64_t *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for PolicyConfigurationModifier(255, TupleTypeMetadata2, v2, v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

_BYTE *sub_23BBAB890(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBAB95CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBAB9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BBABA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_23BBABB44(uint64_t a1)
{
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(319);
  if (v1 <= 0x3F)
  {
    sub_23BBABBC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BBABBC8(uint64_t a1)
{
  if (!qword_27E1A3CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19F898, &unk_23BBF9150);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1A3CC0);
    }
  }
}

uint64_t sub_23BBABC2C(uint64_t a1)
{
  result = sub_23BBD9728();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23BBABC94(uint64_t a1)
{
  result = sub_23B975E04();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BBABD1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_23BBABEAC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_45:
      __break(1u);
      JUMPOUT(0x23BBAC0F8);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v22 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *a1 = v21;
        }
      }

      return;
  }
}

unint64_t sub_23BBAC124()
{
  result = qword_27E1A3D58;
  if (!qword_27E1A3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3D58);
  }

  return result;
}

uint64_t sub_23BBAC1BC()
{
  v0 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27E1A3C80);
  v1 = __swift_project_value_buffer(v0, qword_27E1A3C80);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v2 = v1 + *(v0 + 24);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = v1 + *(v0 + 28);
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  sub_23BBACB98(v7, v2);
  return sub_23BBACB98(v5, v3);
}

uint64_t sub_23BBAC294@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197838 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27E1A3C80);
  return sub_23BBAC6D4(v3, a1, type metadata accessor for SubscriptionStorePolicyConfiguration);
}

uint64_t sub_23BBAC314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2860, &qword_23BC02140);
  v7 = sub_23BBDA358();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  swift_getKeyPath();
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v16 = sub_23B97B518(&qword_27E1A2858, &qword_27E1A2860, &qword_23BC02140, MEMORY[0x277CE08A0]);
  v23 = WitnessTable;
  v24 = v16;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v20 + 8);
  v17(v9, v7);
  sub_23B9D2D88();
  return (v17)(v12, v7);
}

double sub_23BBAC634(uint64_t a1, uint64_t (**a2)(void), uint64_t a3)
{
  v6 = (*a2)();
  sub_23BBAC734(a1, type metadata accessor for SubscriptionStorePolicyConfiguration);
  v9 = type metadata accessor for PolicyConfigurationModifier(0, a3, v7, v8);
  v6(a2 + *(v9 + 28));

  return result;
}

uint64_t sub_23BBAC6D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BBAC734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BBAC790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PolicyConfigurationModifier(0, v5, a3, a4) - 8);
  v7 = (*(*v6 + 80) + 24) & ~*(*v6 + 80);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[9], v5);

  return swift_deallocObject();
}

double sub_23BBAC880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = type metadata accessor for PolicyConfigurationModifier(0, v6, a3, a4);
  OUTLINED_FUNCTION_13_0(v7);
  v9 = (v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80)));

  return sub_23BBAC634(a1, v9, v6);
}

uint64_t sub_23BBAC934()
{
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  v3 = OUTLINED_FUNCTION_14_31();
  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    sub_23BBD9728();
    OUTLINED_FUNCTION_12_1();
    (*(v4 + 8))(v1);
  }

  v5 = OUTLINED_FUNCTION_21_20();
  if (v5 == 1)
  {
  }

  else if (!v5)
  {
    sub_23BBD9728();
    OUTLINED_FUNCTION_12_1();
    (*(v6 + 8))(v1 + v2);
  }

  v7 = OUTLINED_FUNCTION_13_27(*(v0 + 24));
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v9 = OUTLINED_FUNCTION_13_27(*(v0 + 28));
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BBACA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBACADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[6];
  v10 = v3[7];
  v11 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_13_0(v11);
  return sub_23BBAAA0C(a1, a2, v3 + ((*(v12 + 80) + 64) & ~*(v12 + 80)), v7, v8, v9, a3, v10);
}

uint64_t sub_23BBACB98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FCC8, &qword_23BBFDE00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBACC08()
{
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  v3 = OUTLINED_FUNCTION_14_31();
  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    sub_23BBD9728();
    OUTLINED_FUNCTION_12_1();
    (*(v4 + 8))(v1);
  }

  v5 = OUTLINED_FUNCTION_21_20();
  if (v5 == 1)
  {
  }

  else if (!v5)
  {
    sub_23BBD9728();
    OUTLINED_FUNCTION_12_1();
    (*(v6 + 8))(v1 + v2);
  }

  v7 = OUTLINED_FUNCTION_13_27(*(v0 + 24));
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v9 = OUTLINED_FUNCTION_13_27(*(v0 + 28));
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BBACD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_13_0(v7);
  return sub_23BBAA588(a1, v5, v6, a2);
}

uint64_t sub_23BBACDD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FCC8, &qword_23BBFDE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_55Tm()
{
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_19_0();
  v3 = OUTLINED_FUNCTION_14_31();
  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    sub_23BBD9728();
    OUTLINED_FUNCTION_12_1();
    (*(v4 + 8))(v1);
  }

  v5 = OUTLINED_FUNCTION_21_20();
  if (v5 == 1)
  {
  }

  else if (!v5)
  {
    sub_23BBD9728();
    OUTLINED_FUNCTION_12_1();
    (*(v6 + 8))(v1 + v2);
  }

  v7 = OUTLINED_FUNCTION_13_27(*(v0 + 24));
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v9 = OUTLINED_FUNCTION_13_27(*(v0 + 28));
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BBACFBC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_13_0(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_23BBAD05C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PolicyConfigurationModifier(255, *a1, a3, a4);
  OUTLINED_FUNCTION_3_48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2860, &qword_23BC02140);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A2858, &qword_27E1A2860, &qword_23BC02140, MEMORY[0x277CE08A0]);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_26(unint64_t *a1)
{

  return sub_23B97B518(a1, v1, v2, &unk_23BC04E98);
}

uint64_t OUTLINED_FUNCTION_14_31()
{
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_23BBD9848();
}

uint64_t OUTLINED_FUNCTION_21_20()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_22_19()
{

  sub_23BB73D2C();
}

uint64_t sub_23BBAD24C()
{
  v0 = sub_23BBDA1E8();
  MEMORY[0x28223BE20](v0);
  if (qword_27E1977E8 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D1 == 1 || byte_27E1A04D1 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_minos_at_least()))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3D60, &unk_23BC07FC0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23BC04F80;
    v2 = MEMORY[0x277CDF8D0];
    *(v1 + 56) = v0;
    *(v1 + 64) = v2;
    __swift_allocate_boxed_opaque_existential_1((v1 + 32));
    sub_23BBDA1D8();
    *(v1 + 72) = sub_23BBDBCB8();
    *(v1 + 80) = 1;
    *(v1 + 88) = sub_23BBDBCB8();
    *(v1 + 136) = 0;
    *(v1 + 144) = sub_23BBDBCF8();
    *(v1 + 192) = 0;
    sub_23BBDBD68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3D68, &unk_23BC05030);
    sub_23BBAD530();
    sub_23B97B518(&qword_27E1A3D78, &qword_27E1A3D68, &unk_23BC05030, &unk_23BBEAA68);
    sub_23BBDBDE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FF0, &qword_23BBE7210);
    sub_23B97B518(&qword_27E1A1D50, &qword_27E198FF0, &qword_23BBE7210, &unk_23BC08110);
    return sub_23BBD9DF8();
  }

  if (!sub_23BBDA588())
  {
LABEL_11:
    sub_23BBDA1D8();
    return sub_23BBD9DF8();
  }

  sub_23BBDBD38();
  v3 = sub_23BBDBCD8();

  if ((v3 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_23BBDBCB8();
  v4 = sub_23BBD9DF8();

  return v4;
}

uint64_t sub_23BBAD508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBAD24C();
  *a1 = result;
  return result;
}

unint64_t sub_23BBAD530()
{
  result = qword_27E1A3D70;
  if (!qword_27E1A3D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3D68, &unk_23BC05030);
    sub_23B988028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3D70);
  }

  return result;
}

uint64_t EnvironmentValues.purchase.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDA7C8();
  v2 = sub_23BBDA658();
  v3 = [v2 scene];

  result = type metadata accessor for PurchaseAction(0);
  *(a1 + *(result + 20)) = v3;
  return result;
}

uint64_t type metadata accessor for PurchaseAction(uint64_t a1)
{
  result = qword_27E1A3D88;
  if (!qword_27E1A3D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PurchaseAction.callAsFunction(_:options:)()
{
  OUTLINED_FUNCTION_3_13();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[7] = type metadata accessor for SKLogger(0);
  v1[8] = swift_task_alloc();
  sub_23BBDD308();
  v1[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x2822009F8](sub_23BBAD728, v6, v5);
}

uint64_t sub_23BBAD728()
{
  OUTLINED_FUNCTION_4_11();
  v0[2] = 0;
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_23BBDB318();

  v1 = v0[2];
  if (!v1)
  {
    v6 = v0[6];
    v7 = *(v6 + *(type metadata accessor for PurchaseAction(0) + 20));
    if (v7)
    {
      v8 = [v7 _visibleWindows];
      sub_23BAE0E08(0, &qword_27E1A3D80, 0x277D75DA0);
      v9 = sub_23BBDD248();

      v10 = sub_23BBAE718(v9);
      if (v10)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EEB5F90](0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return MEMORY[0x28212C858](v10, v11);
          }

          v12 = *(v9 + 32);
        }

        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v1 = [v13 rootViewController];

      if (v1)
      {
        goto LABEL_2;
      }
    }

    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v14 = v0[8];
    v15 = __swift_project_value_buffer(v0[7], qword_27E1BFC88);
    sub_23B9EA228(v15, v14);
    v16 = sub_23BBD9988();
    sub_23BBD99A8();
    OUTLINED_FUNCTION_12_1();
    (*(v17 + 8))(v14);
    v18 = sub_23BBDD5A8();
    if (os_log_type_enabled(v16, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      OUTLINED_FUNCTION_16_8(&dword_23B970000, v20, v21, "PurchaseAction could not get UI anchor for in-app purchase.");
      MEMORY[0x23EEB6DC0](v19, -1, -1);
    }

    v22 = swift_task_alloc();
    v0[15] = v22;
    *v22 = v0;
    v22[1] = sub_23BBADBD0;
    v11 = v0[5];
    v10 = v0[3];

    return MEMORY[0x28212C858](v10, v11);
  }

LABEL_2:
  v0[12] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_23BBADA30;
  v4 = v0[5];
  v5 = v0[3];

  return MEMORY[0x28212C860](v5, v2, v4);
}

uint64_t sub_23BBADA30()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  OUTLINED_FUNCTION_7_38();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_23BBADDC8;
  }

  else
  {
    v7 = sub_23BBADB60;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23BBADB60()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23BBADBD0()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  OUTLINED_FUNCTION_7_38();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_23BBADD64;
  }

  else
  {
    v7 = sub_23BBADD00;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23BBADD00()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BBADD64()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BBADDC8()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t PurchaseAction.callAsFunction(_:compactJWS:options:)()
{
  OUTLINED_FUNCTION_3_13();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[9] = type metadata accessor for SKLogger(0);
  v1[10] = swift_task_alloc();
  sub_23BBDD308();
  v1[11] = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();
  v1[12] = v8;
  v1[13] = v7;

  return MEMORY[0x2822009F8](sub_23BBADF04, v8, v7);
}

uint64_t sub_23BBADF04()
{
  OUTLINED_FUNCTION_4_11();
  v0[2] = 0;
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_23BBDB318();

  v1 = v0[2];
  if (v1)
  {
    goto LABEL_2;
  }

  v9 = v0[8];
  v10 = *(v9 + *(type metadata accessor for PurchaseAction(0) + 20));
  if (v10)
  {
    v11 = [v10 _visibleWindows];
    sub_23BAE0E08(0, &qword_27E1A3D80, 0x277D75DA0);
    v12 = sub_23BBDD248();

    v7 = sub_23BBAE718(v12);
    if (v7)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23EEB5F90](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x28212C568](v7, v6, v4, v8, v5);
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v1 = [v14 rootViewController];

    if (v1)
    {
LABEL_2:
      v0[14] = v1;
      v2 = v1;
      v3 = swift_task_alloc();
      v0[15] = v3;
      *v3 = v0;
      v3[1] = sub_23BBAE248;
      v4 = v0[6];
      v5 = v0[7];
      v6 = v0[5];
      v7 = v0[3];
      v8 = v2;

      return MEMORY[0x28212C568](v7, v6, v4, v8, v5);
    }
  }

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
  }

  v15 = v0[10];
  v16 = __swift_project_value_buffer(v0[9], qword_27E1BFC88);
  sub_23B9EA228(v16, v15);
  v17 = sub_23BBD9988();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v18 + 8))(v15);
  v19 = sub_23BBDD5A8();
  if (os_log_type_enabled(v17, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v21, v22, "PurchaseAction could not get UI anchor for in-app purchase.");
    MEMORY[0x23EEB6DC0](v20, -1, -1);
  }

  v23 = sub_23BBDC608();
  sub_23BB6CDF4();
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CDD0C8], v23);
  swift_willThrow();

  OUTLINED_FUNCTION_1_16();

  return v25();
}

uint64_t sub_23BBAE248()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  OUTLINED_FUNCTION_7_38();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_23BBAE3E8;
  }

  else
  {
    v7 = sub_23BBAE378;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23BBAE378()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_1_16();

  return v2();
}

uint64_t sub_23BBAE3E8()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_1_16();

  return v2();
}

void sub_23BBAE458(void *a1, id *a2)
{
  v3 = *a2;
  *a2 = a1;
  v2 = a1;
}

uint64_t sub_23BBAE4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDB328();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BBAE580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDB328();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_23BBAE628(uint64_t a1)
{
  sub_23BBDB328();
  if (v1 <= 0x3F)
  {
    sub_23BBAE6AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BBAE6AC(uint64_t a1)
{
  if (!qword_27E1A3D98)
  {
    sub_23BAE0E08(255, &qword_27E1A3DA0, 0x277D75940);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1A3D98);
    }
  }
}

uint64_t sub_23BBAE718(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

float sub_23BBAE744()
{
  sub_23BBDBD88();
  v1 = v0;
  OUTLINED_FUNCTION_0_61();
  sub_23BBDBDA8();
  OUTLINED_FUNCTION_0_61();
  sub_23BBDBD98();
  return v1;
}

unint64_t sub_23BBAE7E0(uint64_t a1)
{
  result = sub_23BBAE808();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23BBAE808()
{
  result = qword_27E1A3DA8;
  if (!qword_27E1A3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3DA8);
  }

  return result;
}

unint64_t sub_23BBAE860()
{
  result = qword_27E1A3DB0[0];
  if (!qword_27E1A3DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A3DB0);
  }

  return result;
}

void sub_23BBAE8B4(float *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a1 = sub_23BBAE744();
  *a2 = v7;
  *a3 = v8;
  *a4 = v9;
}

__n128 sub_23BBAE988@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v10 = *(a3 - 1);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  (*(v10 + 32))(v12 + v11, a1, a3);
  v13 = swift_allocObject();
  result = *a2;
  v15 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v15;
  *(v13 + 48) = *(a2 + 32);
  *a5 = sub_23BBAF060;
  a5[1] = v12;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v13;
  return result;
}

uint64_t sub_23BBAEA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnySubscriptionOfferViewStyle.WrapperView(0, a3, a4, v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v19 - v16;
  sub_23BADDB80(a1, v13);
  (*(v8 + 16))(v10, a2, a3);
  sub_23BBAEC54(v13, v10, a3, a4, v17);
  swift_getWitnessTable();
  return sub_23BBDC0D8();
}

uint64_t sub_23BBAEC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23BBAF0FC(a1, a5);
  type metadata accessor for AnySubscriptionOfferViewStyle.WrapperView(0, a3, a4, v8);
  return sub_23BBAECB8(a2, a3);
}

uint64_t sub_23BBAECB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_23BBDAFF8();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_23BBAEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  sub_23BB6C1B8(a1);
  (*(v9 + 24))(v2, v4, v9);
  (*(v5 + 8))(v7, v4);
  swift_getAssociatedConformanceWitness();
  sub_23B9D2D88();
  v17 = *(v11 + 8);
  v17(v13, AssociatedTypeWitness);
  sub_23B9D2D88();
  return (v17)(v16, AssociatedTypeWitness);
}

uint64_t sub_23BBAEFE0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BBAF09C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BBAF0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBAF160(uint64_t a1)
{
  result = type metadata accessor for SubscriptionOfferViewStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = sub_23BBDB018();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BBAF1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23BBDB018();
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BBAF2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23BBDB018();
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BBAF3A8(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void *sub_23BBAF41C(double a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = 0;
  v12 = *(a3 + 16);
  while (v12 != v11)
  {
    if (v11 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v13 = *(a3 + v11 + 32);
    a2 = OUTLINED_FUNCTION_0_62(a2, a3, a4, a5, a6, a7, a8, a9, v15, v16, v18, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
    if (*&v16 <= a1 && *&v18 > a1)
    {
      goto LABEL_14;
    }

    ++v11;
  }

  v14 = *(a3 + 16);
  if (!v12)
  {
    goto LABEL_11;
  }

  if (v14)
  {
    v13 = *(a3 + 32);
    OUTLINED_FUNCTION_0_62(a2, a3, a4, a5, a6, a7, a8, a9, v15, v16, v18, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
    if (v17 > a1)
    {
LABEL_14:

      return v13;
    }

    v14 = *(a3 + 16);
LABEL_11:
    if (v14)
    {
      v13 = *(a3 + v14 + 31);
    }

    else
    {
      v13 = 8;
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return a2;
}

uint64_t sub_23BBAF4F8@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA98();
  sub_23BBAF988(&qword_27E1984F8, MEMORY[0x277CE0170], v3);
  if (sub_23BBDD488())
  {
    v4 = sub_23BBDC208();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }

  else
  {
    sub_23BBDD4A8();
    sub_23BBAF988(&qword_27E1A3E38, MEMORY[0x277CE0158], v6);
    sub_23BBDCE98();
    v7 = sub_23BBDD558();
    v9 = v8;
    v10 = sub_23BBDC208();
    (*(*(v10 - 8) + 16))(a1, v9, v10);
    v7(v11, 0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }
}

uint64_t sub_23BBAF67C(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 != 1 || a2 != 2)
    {
      return 1;
    }
  }

  else if (a2 - 1 >= 2)
  {
    return 1;
  }

  return 0;
}

BOOL sub_23BBAF6C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199868, &qword_23BBE84A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  sub_23BBDA728();
  v3 = sub_23BBDAF68();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_23BB519E0(v2);
  }

  else
  {
    v4 = *(v3 - 8);
    v5 = (*(v4 + 88))(v2, v3);
    v6 = *MEMORY[0x277CE0558];
    (*(v4 + 8))(v2, v3);
    if (v5 == v6)
    {
      return 0;
    }
  }

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1)
  {
    return 0;
  }

  v9 = sub_23BBDA658();
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 scene];

  if (!v11)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

LABEL_11:
    v13 = [objc_opt_self() mainScreen];
    goto LABEL_12;
  }

  v13 = [v12 screen];

LABEL_12:
  [v13 bounds];
  Height = CGRectGetHeight(v25);
  KeyPath = swift_getKeyPath();
  v23 = sub_23BBAF41C(Height, KeyPath, &unk_284E56E40, v17, v18, v19, v20, v21, v22);

  return v23 > 2;
}

uint64_t sub_23BBAF988(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (!result)
  {
    sub_23BBDAA98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_0_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  return swift_getAtKeyPath();
}

uint64_t View.productIconBorder()(uint64_t a1, uint64_t a2, double a3)
{
  v7[0] = 0;
  v8 = sub_23BBDC318();
  v9 = v5;
  return MEMORY[0x23EEB43C0](v7, a1, &type metadata for InAppPurchaseIconFrameViewModifier, a2);
}

uint64_t View.productIconBorder(showAppIcon:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3;
  return MEMORY[0x23EEB43C0](v6, a4, &type metadata for InAppPurchaseIconFrameViewModifier, a5);
}

uint64_t sub_23BBAFA88(void *a1)
{
  sub_23BBDA358();
  sub_23BBAFAEC();
  return swift_getWitnessTable();
}

unint64_t sub_23BBAFAEC()
{
  result = qword_27E1A3E40;
  if (!qword_27E1A3E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3E40);
  }

  return result;
}

uint64_t sub_23BBAFB40()
{
  sub_23B9DC994();
  sub_23BBDA958();
  return v1;
}

BOOL sub_23BBAFB7C()
{
  sub_23B9DC994();
  sub_23BBDA958();
  return (sub_23BBD9BD8() & 1) == 0;
}

uint64_t sub_23BBAFBC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBAFB40();
  *a1 = result;
  return result;
}

double View.productDescriptionHidden(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_23BBDB9B8();

  return result;
}

uint64_t sub_23BBAFD10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBAFB40();
  *a1 = result;
  return result;
}

uint64_t sub_23BBAFD64(char *a1, char a2)
{
  result = sub_23BBD9BD8();
  if ((result & 1) == 0)
  {
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *a1 = v5;
  }

  return result;
}

unint64_t sub_23BBAFDF8()
{
  result = qword_27E1A3E48;
  if (!qword_27E1A3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3E48);
  }

  return result;
}

_BYTE *sub_23BBAFE4C(_BYTE *result, char a2)
{
  if (a2 != 3)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_23BBAFE60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3E50, &qword_23BC05338);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3E58, &unk_23BC05340);
  v9 = a3 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = a2;
  return result;
}

uint64_t StoreContent.productDescription(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  v7 = sub_23BBAFDF8();
  return sub_23BB6B068(&v9, a2, &type metadata for ProductDescriptionVisibilityModifier, a3, v7, a4);
}

uint64_t sub_23BBAFF74(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD40, &unk_23BBEE1B0);
  sub_23BBDA358();
  sub_23B97B518(&qword_27E19BD38, &qword_27E19BD40, &unk_23BBEE1B0, MEMORY[0x277CE08A0]);
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BBB0004(void *a1)
{
  sub_23BBDA358();
  sub_23BBAFDF8();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BBB004C(void *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = &type metadata for ProductDescriptionVisibilityModifier;
  v3[2] = v1;
  v3[3] = sub_23BBAFDF8();
  type metadata accessor for ModifiedStoreContent(255, v3);
  return swift_getWitnessTable();
}

_BYTE *storeEnumTagSinglePayload for ProductDescriptionVisibilityModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBB017CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BBB01E4()
{
  result = qword_27E1A3E60;
  if (!qword_27E1A3E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3E58, &unk_23BC05340);
    sub_23B97B518(&qword_27E1A3E68, &qword_27E1A3E50, &qword_23BC05338, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E1A3E70, &qword_27E1A3E78, &qword_23BC05380, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3E60);
  }

  return result;
}

uint64_t sub_23BBB02C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BBB032C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BBB032C()
{
  result = qword_27E1A3E80[0];
  if (!qword_27E1A3E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A3E80);
  }

  return result;
}

void sub_23BBB0380(uint64_t a1)
{
  sub_23BBB0AD8(319);
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = v2;
    v4 = *(a1 + 32);
    v11[0] = *(a1 + 16);
    v11[1] = v4;
    type metadata accessor for PromotionalIconLoadingView.IconType(255, v11);
    v5 = sub_23BBDD648();
    if (v6 <= 0x3F)
    {
      v13 = 0;
      v17 = v5;
      sub_23BA555EC();
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v18 = v7;
        v19 = v7;
        sub_23B9AB680(319);
        if (v10 <= 0x3F)
        {
          v15 = 0;
          v20 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BBB044C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23BBD9728();
  v7 = *(*(v6 - 8) + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = *(*(a3 + 24) - 8);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64);
  v13 = *(*(v6 - 8) + 64);
  if (!v7)
  {
    ++v13;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 84);
  v16 = *(*(*(a3 + 24) - 8) + 64);
  if (*(v9 + 84))
  {
    v17 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v17 = v12 + 1;
  }

  if (!v15)
  {
    ++v16;
  }

  v18 = v16 + ((v17 + v14) & ~v14);
  if (v18 <= v12)
  {
    v18 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = (*(v9 + 80) | v14) & 0xF8 | 7u;
  v20 = v13 + v19;
  v21 = v18 + 8;
  if (v11 < a2)
  {
    v22 = ((((((v21 + (v20 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v22 <= 3)
    {
      v23 = ((a2 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    switch(v25)
    {
      case 1:
        v26 = a1[v22];
        if (!a1[v22])
        {
          break;
        }

        goto LABEL_36;
      case 2:
        v26 = *&a1[v22];
        if (*&a1[v22])
        {
          goto LABEL_36;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BBB06E8);
      case 4:
        v26 = *&a1[v22];
        if (!v26)
        {
          break;
        }

LABEL_36:
        v28 = (v26 - 1) << (8 * v22);
        if (v22 <= 3)
        {
          v29 = *a1;
        }

        else
        {
          v28 = 0;
          v29 = *a1;
        }

        return v11 + (v29 | v28) + 1;
      default:
        break;
    }
  }

  if (v8 < 0x7FFFFFFF)
  {
    v31 = *((v21 + (&a1[v20] & ~v19)) & 0xFFFFFFFFFFFFFFF8);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v6);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BBB06FC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23BBD9728();
  v9 = 0;
  v10 = *(*(v8 - 8) + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(*(a4 + 24) - 8);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(*(*(a4 + 16) - 8) + 64);
  if (v10)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  v17 = *(v13 + 80);
  v18 = *(*(*(a4 + 24) - 8) + 64);
  if (*(v12 + 84))
  {
    v19 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = (*(v12 + 80) | v17) & 0xF8 | 7u;
  v21 = v16 + v20;
  v22 = (v16 + v20) & ~v20;
  if (!*(v13 + 84))
  {
    ++v18;
  }

  v23 = v18 + ((v19 + v17) & ~v17);
  if (v23 > v15)
  {
    v15 = v23;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v24 = v15 + 8;
  v25 = ((((((v24 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 < a3)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v14 < a2)
  {
    v28 = ~v14 + a2;
    bzero(a1, ((((((v24 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v25 <= 3)
    {
      v29 = (v28 >> 8) + 1;
    }

    else
    {
      v29 = 1;
    }

    if (v25 > 3)
    {
      *a1 = v28;
    }

    else
    {
      *a1 = v28;
    }

    switch(v9)
    {
      case 1:
        a1[v25] = v29;
        return;
      case 2:
        *&a1[v25] = v29;
        return;
      case 3:
        goto LABEL_71;
      case 4:
        *&a1[v25] = v29;
        return;
      default:
        return;
    }
  }

  v30 = ~v20;
  switch(v9)
  {
    case 1:
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 2:
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 3:
LABEL_71:
      __break(1u);
      JUMPOUT(0x23BBB0A88);
    case 4:
      *&a1[v25] = 0;
      goto LABEL_44;
    default:
LABEL_44:
      if (a2)
      {
LABEL_45:
        if (v11 < 0x7FFFFFFF)
        {
          v34 = ((v24 + (&a1[v21] & v30)) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v35 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v35 = a2 - 1;
          }

          *v34 = v35;
        }

        else if (v11 >= a2)
        {

          __swift_storeEnumTagSinglePayload(a1, a2 + 1, v10, v8);
        }

        else
        {
          if (v16 <= 3)
          {
            v31 = ~(-1 << (8 * v16));
          }

          else
          {
            v31 = -1;
          }

          if (v16)
          {
            v32 = v31 & (~v11 + a2);
            if (v16 <= 3)
            {
              v33 = v16;
            }

            else
            {
              v33 = 4;
            }

            bzero(a1, v16);
            switch(v33)
            {
              case 2:
                *a1 = v32;
                break;
              case 3:
                *a1 = v32;
                a1[2] = BYTE2(v32);
                break;
              case 4:
                *a1 = v32;
                break;
              default:
                *a1 = v32;
                break;
            }
          }
        }
      }

      return;
  }
}

void sub_23BBB0AD8(uint64_t a1)
{
  if (!qword_27E1A3F08[0])
  {
    sub_23BBD9728();
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, qword_27E1A3F08);
    }
  }
}

unint64_t sub_23BBB0B48(uint64_t a1)
{
  result = sub_23B975E04();
  if (v2 <= 0x3F)
  {
    sub_23BBDD648();
    sub_23BBDD648();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BBB0C10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(*(*(a3 + 16) - 8) + 84))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = v3 + 1;
  }

  if (*(v4 + 84))
  {
    v6 = *(v4 + 64);
  }

  else
  {
    v6 = *(v4 + 64) + 1;
  }

  v7 = v6 + ((v5 + *(v4 + 80)) & ~*(v4 + 80));
  if (v7 <= v3)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  v8 = 16;
  if (v7 > 0x10)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_30;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v13 < 2)
    {
LABEL_30:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_30;
  }

LABEL_22:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v14) + 253;
}

void sub_23BBB0DE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  if (*(*(*(a4 + 16) - 8) + 84))
  {
    v7 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v7 = v5 + 1;
  }

  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = v8 + ((v7 + *(v6 + 80)) & ~*(v6 + 80));
  if (v9 <= v5)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  if (v9 <= 0x10)
  {
    v9 = 16;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if (a3 < 0xFD)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((a3 + ~(-1 << v11) - 252) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFC)
  {
    v13 = a2 - 253;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v9 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        break;
      case 2:
        *&a1[v10] = v14;
        break;
      case 3:
LABEL_45:
        __break(1u);
        JUMPOUT(0x23BBB1040);
      case 4:
        *&a1[v10] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      case 2:
        *&a1[v10] = 0;
        goto LABEL_33;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

void sub_23BBB10AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v15 = type metadata accessor for PromotionalIconLoadingView(0, &v28);
  v22 = v15[14];
  *(a9 + v22) = swift_getKeyPath();
  v23 = v15[15];
  *(a9 + v23) = swift_getKeyPath();
  v16 = a9 + v15[16];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = (a9 + v15[13]);
  *v17 = a2;
  v17[1] = a3;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v18 = type metadata accessor for PromotionalIconLoadingView.IconType(0, &v28);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_23BB23498(a1, a9);
  if (a4)
  {

    *(a9 + v22) = a4;
  }

  if (a5)
  {

    *(a9 + v23) = a5;
  }
}

void sub_23BBB1200(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v54 = a5;
  v55 = a6;
  v50 = a3;
  v51 = a4;
  v53 = a2;
  v15 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v47[0] = *(a7 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = (v23 - v22);
  v56 = a8;
  v57 = a7;
  v58 = a8;
  v59 = a10;
  v52 = a11;
  v60 = a11;
  v25 = type metadata accessor for PromotionalIconLoadingView(0, &v57);
  v26 = v25[14];
  KeyPath = swift_getKeyPath();
  v48 = v26;
  v47[1] = KeyPath;
  *(a9 + v26) = KeyPath;
  v28 = v25[15];
  v29 = swift_getKeyPath();
  v49 = v28;
  v47[2] = v29;
  *(a9 + v28) = v29;
  v30 = a9 + v25[16];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  if (a1)
  {
    v31 = a9 + v25[13];
    v32 = v56;
    v33 = sub_23BBDD648();
    v34 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v17 + 32))(v31, v50, v15);
    OUTLINED_FUNCTION_1_4();
    (*(v35 + 32))(v31 + v34, v51, v33);
    v57 = a7;
    v58 = v32;
    v36 = OUTLINED_FUNCTION_11_32();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    v40 = v36;
  }

  else
  {
    sub_23BBDD648();
    OUTLINED_FUNCTION_1_4();
    (*(v41 + 8))(v51);
    (*(v17 + 32))(v20, v50, v15);
    if (__swift_getEnumTagSinglePayload(v20, 1, a7) == 1)
    {
      (*(v17 + 8))(v20, v15);
      v42 = v25[13];
      v57 = a7;
      v58 = v56;
      v40 = OUTLINED_FUNCTION_11_32();
      v37 = a9 + v42;
      v38 = 1;
      v39 = 1;
    }

    else
    {
      v43 = *(v47[0] + 32);
      v43(v24, v20, a7);
      v43((a9 + v25[13]), v24, a7);
      v57 = a7;
      v58 = v56;
      v44 = OUTLINED_FUNCTION_11_32();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_2();
      v40 = v44;
    }
  }

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_23BB23498(v53, a9);
  v46 = v54;
  v45 = v55;
  if (v54)
  {

    *(a9 + v48) = v46;
  }

  if (v45)
  {

    *(a9 + v49) = v45;
  }
}

uint64_t sub_23BBB15AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3F90, &qword_23BC05488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3F98, &unk_23BC05490);
  v118 = *(a1 + 16);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_13_34();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  OUTLINED_FUNCTION_9_35();
  v3 = sub_23BBDA358();
  v115 = *(a1 + 40);
  OUTLINED_FUNCTION_6_39();
  v140 = v115;
  v141 = sub_23BBB54C0(v4, &qword_27E1A3F98, &unk_23BC05490, v5);
  OUTLINED_FUNCTION_5_45();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_49(WitnessTable);
  v138 = swift_getWitnessTable();
  v139 = sub_23B9AD7E8();
  OUTLINED_FUNCTION_0();
  v7 = swift_getWitnessTable();
  *&v121 = v3;
  *(&v121 + 1) = v7;
  v110 = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9_35();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_9_35();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_9_35();
  v112 = sub_23BBDACE8();
  v116 = sub_23BBDACE8();
  v8 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v106 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_3(v89 - v12);
  v102 = sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v101 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v16 - v15);
  v113 = a1;
  v99 = *(a1 - 8);
  MEMORY[0x28223BE20](v17);
  v97 = v18;
  OUTLINED_FUNCTION_13_3(v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 32);
  OUTLINED_FUNCTION_4_45();
  v22 = sub_23BBB54C0(v20, &qword_27E1A3F90, &qword_23BC05488, v21);
  *&v121 = v3;
  *(&v121 + 1) = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = v19;
  v137 = OpaqueTypeConformance2;
  v24 = swift_getWitnessTable();
  v134 = v22;
  v135 = v24;
  v132 = swift_getWitnessTable();
  v133 = OpaqueTypeConformance2;
  v25 = swift_getWitnessTable();
  v130 = v19;
  v131 = v25;
  v26 = swift_getWitnessTable();
  v128 = v19;
  v129 = v19;
  v27 = swift_getWitnessTable();
  v126 = v26;
  v127 = v27;
  v124 = swift_getWitnessTable();
  v125 = MEMORY[0x277CE1410];
  v112 = swift_getWitnessTable();
  v28 = sub_23BBD9B08();
  OUTLINED_FUNCTION_7();
  v94 = v29;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13_3(v89 - v31);
  OUTLINED_FUNCTION_7_46();
  v32 = swift_getWitnessTable();
  v109 = v28;
  *&v121 = v28;
  v111 = v32;
  *(&v121 + 1) = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v95 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13_3(v89 - v37);
  v121 = v118;
  v96 = v19;
  v122 = v19;
  v123 = v115;
  v38 = type metadata accessor for PromotionalIconLoadingView.IconType(255, &v121);
  v39 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v41 = v40;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v42);
  v44 = v89 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308, &qword_23BBEEF90);
  MEMORY[0x28223BE20](v45 - 8);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v46);
  v48 = v89 - v47;
  v49 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_1();
  v55 = v54 - v53;
  v110 = OpaqueTypeMetadata2;
  v116 = v8;
  v56 = v117;
  v107 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v108 = v57;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v58);
  v60 = v89 - v59;
  sub_23BBB55C0(v56, v48);
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_23BA0E8F8(v48, &qword_27E19C308, &qword_23BBEEF90);
    v61 = v113;
    v56 = v112;
LABEL_8:
    *&v121 = 0x8000000000000000;
    v83 = v105;
    sub_23BBB2C04(&v121, v61, v105);
    v84 = v104;
    v85 = v116;
    sub_23B9D2D88();
    v86 = *(v106 + 8);
    v86(v83, v85);
    sub_23B9D2D88();
    OUTLINED_FUNCTION_1_65();
    sub_23BA82E14();
    v86(v83, v85);
    v86(v84, v85);
    goto LABEL_9;
  }

  v91 = v51;
  v62 = *(v51 + 32);
  v90 = v55;
  v62(v55, v48, v49);
  v61 = v113;
  (*(v41 + 16))(v44, v56 + *(v113 + 52), v39);
  if (__swift_getEnumTagSinglePayload(v44, 1, v38) == 1)
  {
    (*(v41 + 8))(v44, v39);
    OUTLINED_FUNCTION_18_24();
LABEL_7:
    v81 = OUTLINED_FUNCTION_12_33();
    v82(v81);
    goto LABEL_8;
  }

  v63 = sub_23BBB2244(v38);
  OUTLINED_FUNCTION_1_4();
  (*(v64 + 8))(v44, v38);
  OUTLINED_FUNCTION_18_24();
  if ((v63 & 1) == 0)
  {
    goto LABEL_7;
  }

  (*(v91 + 16))(v89[1], v90, v49);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v49);
  v68 = v99;
  v69 = v98;
  (*(v99 + 16))(v98, v117, v61);
  v70 = (*(v68 + 80) + 48) & ~*(v68 + 80);
  v71 = swift_allocObject();
  *&v72 = v96;
  *(&v72 + 1) = v115;
  *(v71 + 32) = v72;
  *(v71 + 16) = v118;
  (*(v68 + 32))(v71 + v70, v69, v61);
  v73 = v92;
  sub_23BBD9AF8();
  v74 = v100;
  sub_23BBDB128();
  v75 = v93;
  sub_23BBDB968();
  (*(v101 + 8))(v74, v102);
  (*(v94 + 8))(v73, v51);
  OUTLINED_FUNCTION_1_65();
  v76 = v75;
  v77 = v110;
  sub_23B9D2D88();
  v78 = *(v95 + 8);
  v78(v76, v77);
  sub_23B9D2D88();
  sub_23BA82D64();
  v78(v76, v77);
  v78(v103, v77);
  v79 = OUTLINED_FUNCTION_12_33();
  v80(v79);
LABEL_9:
  v119 = OUTLINED_FUNCTION_1_65();
  v120 = v56;
  v87 = v107;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v108 + 8))(v60, v87);
}

uint64_t sub_23BBB2244(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = sub_23BBDD648();
      v9 = sub_23BBDD648();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v9 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v9);
      (*(*(v8 - 8) + 8))(v5, v8);
    }

    else
    {
      (*(v2 + 8))(v5, a1);
    }

    return 1;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }
}

uint64_t sub_23BBB23F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a6;
  v67 = a5;
  v54 = a4;
  v66 = a2;
  v55 = a1;
  v65 = a7;
  v52 = sub_23BBDA928();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDA278();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3F90, &qword_23BC05488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3F98, &unk_23BC05490);
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  v14 = sub_23BBDA358();
  v15 = sub_23BBB54C0(&qword_27E1A3FA0, &qword_27E1A3F98, &unk_23BC05490, sub_23B9AD84C);
  v89 = a6;
  v90 = v15;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = sub_23B9AD7E8();
  v86 = v16;
  v87 = v17;
  v18 = swift_getWitnessTable();
  v64 = v14;
  v82 = v14;
  v83 = v18;
  v56 = v18;
  swift_getOpaqueTypeMetadata2();
  v57 = sub_23BBDACE8();
  v58 = sub_23BBDACE8();
  v59 = sub_23BBDACE8();
  v19 = sub_23BBDACE8();
  v20 = sub_23BBDACE8();
  v60 = v19;
  v61 = v20;
  v62 = sub_23BBDACE8();
  v21 = sub_23BBDACE8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v63 = &v50 - v27;
  v28 = v10;
  (*(v11 + 16))(v13, v55, v10, v26);
  v82 = a3;
  v83 = v54;
  v84 = v67;
  v85 = v53;
  v29 = type metadata accessor for PromotionalIconLoadingView(0, &v82);
  v30 = v66 + *(v29 + 64);
  v31 = *v30;
  v32 = *(v30 + 8);

  if ((v32 & 1) == 0)
  {
    sub_23BBDD5A8();
    v33 = v22;
    v34 = sub_23BBDB338();
    sub_23BBD9978();

    v22 = v33;
    v35 = v50;
    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v31);
    (*(v51 + 8))(v35, v52);
    v31 = v82;
  }

  v36 = (*(v11 + 88))(v13, v28);
  if (v36 == *MEMORY[0x277CDD9C8])
  {
    (*(v11 + 96))(v13, v28);
    v37 = *v13;
    if (v31)
    {
      *(v31 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_displaysPromotionalIcon) = 1;
LABEL_9:
    }
  }

  else
  {
    v38 = v36;
    if (v36 == *MEMORY[0x277CDD9C0])
    {
      (*(v11 + 96))(v13, v28);
      v37 = *v13 | 0x4000000000000000;
      if (v31)
      {
        *(v31 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_displaysPromotionalIcon) = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v39 = *MEMORY[0x277CDD9B8];

      if (v38 == v39)
      {
        v37 = 0x8000000000000008;
      }

      else
      {
        (*(v11 + 8))(v13, v28);
        v37 = 0x8000000000000000;
      }
    }
  }

  v82 = v37;
  sub_23BBB2C04(&v82, v29, v24);
  sub_23BBB5984(v82);
  v40 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
  v82 = v64;
  v83 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v67;
  v80 = v67;
  v81 = OpaqueTypeConformance2;
  v43 = swift_getWitnessTable();
  v78 = v40;
  v79 = v43;
  v76 = swift_getWitnessTable();
  v77 = OpaqueTypeConformance2;
  v44 = swift_getWitnessTable();
  v74 = v42;
  v75 = v44;
  v45 = swift_getWitnessTable();
  v72 = v42;
  v73 = v42;
  v46 = swift_getWitnessTable();
  v70 = v45;
  v71 = v46;
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  v47 = v63;
  sub_23B9D2D88();
  v48 = *(v22 + 8);
  v48(v24, v21);
  sub_23B9D2D88();
  return (v48)(v47, v21);
}

uint64_t sub_23BBB2C04@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a3;
  v220 = a1;
  v4 = a2[2];
  v5 = sub_23BBDACE8();
  v202 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v201 = &v182 - v6;
  v221 = a2[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3F98, &unk_23BC05490);
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  v7 = sub_23BBDA358();
  v222 = a2[5];
  v8 = v222;
  v9 = sub_23BBB54C0(&qword_27E1A3FA0, &qword_27E1A3F98, &unk_23BC05490, sub_23B9AD84C);
  v327 = v8;
  v328 = v9;
  v10 = a2;
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = sub_23B9AD7E8();
  v324 = v11;
  v325 = v12;
  v13 = swift_getWitnessTable();
  v225 = v7;
  *&v253[0] = v7;
  v229 = v13;
  *(&v253[0] + 1) = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v190 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v188 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v189 = &v182 - v17;
  v18 = sub_23BBDACE8();
  v193 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v192 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v191 = &v182 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3F90, &qword_23BC05488);
  v228 = v18;
  v23 = sub_23BBDACE8();
  v197 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v196 = &v182 - v24;
  v25 = sub_23BBDBE48();
  v185 = *(v25 - 8);
  v186 = v25;
  MEMORY[0x28223BE20](v25);
  v184 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = v22;
  MEMORY[0x28223BE20](v27);
  v187 = &v182 - v28;
  v230 = v23;
  v200 = OpaqueTypeMetadata2;
  v29 = sub_23BBDACE8();
  v198 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v206 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v205 = &v182 - v32;
  v33 = v221;
  v34 = sub_23BBDD648();
  v203 = *(v34 - 8);
  v204 = v34;
  MEMORY[0x28223BE20](v34);
  v209 = &v182 - v35;
  v36 = sub_23BBDD648();
  v211 = *(v36 - 8);
  v212 = v36;
  MEMORY[0x28223BE20](v36);
  v194 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v210 = &v182 - v39;
  v231 = v29;
  v40 = sub_23BBDACE8();
  v208 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v207 = &v182 - v41;
  v226 = v5;
  v227 = v42;
  v43 = sub_23BBDACE8();
  v215 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v214 = &v182 - v44;
  v219 = *(v4 - 8);
  MEMORY[0x28223BE20](v45);
  v213 = &v182 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v183 = &v182 - v48;
  MEMORY[0x28223BE20](v49);
  v217 = &v182 - v50;
  MEMORY[0x28223BE20](v51);
  v218 = &v182 - v52;
  v53 = v10[4];
  *&v54 = v53;
  *(&v54 + 1) = v222;
  v216 = v4;
  *&v55 = v4;
  *(&v55 + 1) = v33;
  v253[0] = v55;
  v253[1] = v54;
  v56 = type metadata accessor for PromotionalIconLoadingView.IconType(255, v253);
  v57 = sub_23BBDD648();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v182 - v59;
  v61 = sub_23BBDACE8();
  v221 = *(v61 - 8);
  v222 = v61;
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v182 - v63;
  v65 = *v220;
  (*(v58 + 16))(v60, v224 + *(v10 + 13), v57, v62);
  if (__swift_getEnumTagSinglePayload(v60, 1, v56) == 1)
  {
    v66 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
    v67 = v225;
    *&v253[0] = v225;
    v68 = v229;
    *(&v253[0] + 1) = v229;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v322 = v53;
    v323 = OpaqueTypeConformance2;
    v70 = swift_getWitnessTable();
    v320 = v66;
    v321 = v70;
    v318 = swift_getWitnessTable();
    v319 = OpaqueTypeConformance2;
    v71 = swift_getWitnessTable();
    v316 = v53;
    v317 = v71;
    v72 = swift_getWitnessTable();
    v314 = v53;
    v315 = v53;
    v73 = swift_getWitnessTable();
    v312 = v72;
    v313 = v73;
    swift_getWitnessTable();
    sub_23BA82E14();
    v74 = v67;
LABEL_8:
    v112 = v222;
    goto LABEL_9;
  }

  v182 = v64;
  v199 = v53;
  v220 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v76 = v229;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v120 = v212;
      v121 = v204;
      v122 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v211 + 32))(v210, v60, v120);
      (*(v203 + 32))(v209, &v60[v122], v121);
      if (!(v65 >> 62))
      {
        v135 = v184;
        v134 = v185;
        v136 = v186;
        (*(v185 + 104))(v184, *MEMORY[0x277CE0FE0], v186);
        v137 = sub_23BBDBE68();
        (*(v134 + 8))(v135, v136);
        v138 = sub_23BBDC318();
        v248[86] = v137;
        v249 = 0;
        v250 = v138;
        v251 = v139;
        if (qword_27E197648 != -1)
        {
          swift_once();
        }

        memcpy(v252, &qword_27E1BF870, sizeof(v252));
        memcpy(v248, &qword_27E1BF870, 0x2B0uLL);
        sub_23B996E0C(v252, v253);
        swift_getAtKeyPath();
        memcpy(v253, v248, sizeof(v253));
        sub_23B996E44(v253);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A3FB8, &unk_23BC054A0);
        sub_23BBB5534();
        v140 = v187;
        sub_23BBDBA28();

        v141 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
        v248[0] = v225;
        v248[1] = v229;
        v142 = swift_getOpaqueTypeConformance2();
        v246 = v199;
        v247 = v142;
        v143 = swift_getWitnessTable();
        v144 = v196;
        sub_23BA82D64();
        v244 = v141;
        v245 = v143;
        v145 = v230;
        swift_getWitnessTable();
        sub_23BA82D64();
        (*(v197 + 8))(v144, v145);
        sub_23BA0E8F8(v140, &qword_27E1A3F90, &qword_23BC05488);
        goto LABEL_21;
      }

      v123 = v229;
      v124 = v216;
      v125 = v200;
      v126 = v194;
      if (v65 >> 62 != 1 && v65 != 0x8000000000000000)
      {
        v164 = v188;
        sub_23BBB49B4(v209, v10, v188);
        *&v253[0] = v225;
        *(&v253[0] + 1) = v123;
        v165 = swift_getOpaqueTypeConformance2();
        v166 = v189;
        sub_23B9D2D88();
        v167 = *(v190 + 8);
        v167(v164, v125);
        sub_23B9D2D88();
        v168 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
        v272 = v199;
        v273 = v165;
        v169 = swift_getWitnessTable();
        v270 = v168;
        v271 = v169;
        swift_getWitnessTable();
        sub_23BA82E14();
        v167(v164, v125);
        v167(v166, v125);
LABEL_21:
        v112 = v222;
        v163 = v207;
        goto LABEL_22;
      }

      v127 = v211;
      v128 = v212;
      (*(v211 + 16))(v194, v210, v212);
      if (__swift_getEnumTagSinglePayload(v126, 1, v124) == 1)
      {
        (*(v127 + 8))(v126, v128);
        v129 = v188;
        sub_23BBB49B4(v209, v10, v188);
        v130 = v225;
        *&v253[0] = v225;
        *(&v253[0] + 1) = v123;
        swift_getOpaqueTypeConformance2();
        v131 = v189;
        sub_23B9D2D88();
        v132 = *(v190 + 8);
        v132(v129, v125);
        sub_23B9D2D88();
        v133 = v191;
        sub_23BA82E14();
        v132(v129, v125);
        v132(v131, v125);
        v123 = v229;
      }

      else
      {
        v146 = v219;
        v147 = v183;
        (*(v219 + 32))(v183, v126, v124);
        v148 = v218;
        sub_23B9D2D88();
        v149 = v217;
        sub_23B9D2D88();
        v150 = v225;
        *&v253[0] = v225;
        *(&v253[0] + 1) = v123;
        swift_getOpaqueTypeConformance2();
        v151 = v191;
        sub_23BA82D64();
        v152 = *(v146 + 8);
        v153 = v149;
        v133 = v151;
        v152(v153, v124);
        v152(v148, v124);
        v130 = v150;
        v152(v147, v124);
      }

      v154 = v192;
      *&v253[0] = v130;
      *(&v253[0] + 1) = v123;
      v155 = swift_getOpaqueTypeConformance2();
      v256 = v199;
      v257 = v155;
      v156 = v228;
      v157 = swift_getWitnessTable();
      sub_23B9D2D88();
      v158 = v133;
      v159 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
      v160 = v196;
      sub_23BA82E14();
      v254 = v159;
      v255 = v157;
      v161 = v230;
      swift_getWitnessTable();
      sub_23BA82D64();
      (*(v197 + 8))(v160, v161);
      v162 = *(v193 + 8);
      v162(v154, v156);
      v162(v158, v156);
      v112 = v222;
      v163 = v207;
LABEL_22:
      v170 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
      *&v253[0] = v225;
      *(&v253[0] + 1) = v229;
      v171 = swift_getOpaqueTypeConformance2();
      v53 = v199;
      v268 = v199;
      v269 = v171;
      v172 = swift_getWitnessTable();
      v266 = v170;
      v267 = v172;
      v264 = swift_getWitnessTable();
      v265 = v171;
      v173 = swift_getWitnessTable();
      sub_23B9D2D88();
      sub_23BA82E14();
      v262 = v53;
      v263 = v173;
      v174 = v227;
      v175 = swift_getWitnessTable();
      v260 = v53;
      v261 = v53;
      v176 = swift_getWitnessTable();
      v177 = v214;
      sub_23BA82D64();
      (*(v208 + 8))(v163, v174);
      v258 = v175;
      v259 = v176;
      v74 = v225;
      v178 = v220;
      swift_getWitnessTable();
      v64 = v182;
      sub_23BA82D64();
      v179 = v177;
      v180 = v231;
      (*(v215 + 8))(v179, v178);
      v181 = *(v198 + 8);
      v181(v206, v180);
      v181(v205, v180);
      (*(v203 + 8))(v209, v204);
      (*(v211 + 8))(v210, v212);
      v68 = v229;
LABEL_9:
      v113 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
      *&v253[0] = v74;
      *(&v253[0] + 1) = v68;
      v114 = swift_getOpaqueTypeConformance2();
      v310 = v53;
      v311 = v114;
      v115 = swift_getWitnessTable();
      v308 = v113;
      v309 = v115;
      v306 = swift_getWitnessTable();
      v307 = v114;
      v116 = swift_getWitnessTable();
      v304 = v53;
      v305 = v116;
      v117 = swift_getWitnessTable();
      v302 = v53;
      v303 = v53;
      v118 = swift_getWitnessTable();
      v300 = v117;
      v301 = v118;
      v298 = swift_getWitnessTable();
      v299 = MEMORY[0x277CE1410];
      swift_getWitnessTable();
      sub_23B9D2D88();
      return (*(v221 + 8))(v64, v112);
    case 2:
      v92 = v216;
      (*(v219 + 32))(v218, v60, v216);
      v53 = v199;
      sub_23B9D2D88();
      sub_23B9D2D88();
      v93 = v201;
      sub_23BA82D64();
      v94 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
      *&v253[0] = v225;
      *(&v253[0] + 1) = v229;
      v95 = swift_getOpaqueTypeConformance2();
      v284 = v53;
      v285 = v95;
      v96 = swift_getWitnessTable();
      v282 = v94;
      v283 = v96;
      v280 = swift_getWitnessTable();
      v281 = v95;
      v97 = swift_getWitnessTable();
      v278 = v53;
      v279 = v97;
      v98 = swift_getWitnessTable();
      v276 = v53;
      v277 = v53;
      v99 = v226;
      v100 = swift_getWitnessTable();
      v101 = v214;
      sub_23BA82E14();
      (*(v202 + 8))(v93, v99);
      v274 = v98;
      v275 = v100;
      v74 = v225;
      goto LABEL_7;
    case 3:
      v92 = v216;
      (*(v219 + 32))(v218, v60, v216);
      v53 = v199;
      sub_23B9D2D88();
      sub_23B9D2D88();
      v102 = v201;
      sub_23BA82E14();
      v103 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
      *&v253[0] = v225;
      *(&v253[0] + 1) = v229;
      v104 = swift_getOpaqueTypeConformance2();
      v296 = v53;
      v297 = v104;
      v105 = swift_getWitnessTable();
      v294 = v103;
      v295 = v105;
      v292 = swift_getWitnessTable();
      v293 = v104;
      v106 = swift_getWitnessTable();
      v290 = v53;
      v291 = v106;
      v107 = swift_getWitnessTable();
      v288 = v53;
      v289 = v53;
      v108 = v226;
      v109 = swift_getWitnessTable();
      v101 = v214;
      sub_23BA82E14();
      (*(v202 + 8))(v102, v108);
      v286 = v107;
      v287 = v109;
      v74 = v225;
LABEL_7:
      v110 = v220;
      swift_getWitnessTable();
      v64 = v182;
      sub_23BA82D64();
      (*(v215 + 8))(v101, v110);
      v111 = *(v219 + 8);
      v68 = v229;
      v111(v213, v92);
      v111(v217, v92);
      v111(v218, v92);
      goto LABEL_8;
    default:
      v77 = *v60;
      v224 = *(v60 + 1);
      *&v253[0] = v65;
      v78 = v217;
      v77(v253);
      v79 = v216;
      v53 = v199;
      sub_23B9D2D88();
      v80 = *(v219 + 8);
      v219 += 8;
      v213 = v80;
      (v80)(v78, v79);
      sub_23B9D2D88();
      v81 = sub_23BBB54C0(&qword_27E1A3FA8, &qword_27E1A3F90, &qword_23BC05488, sub_23BBB5534);
      *&v253[0] = v225;
      *(&v253[0] + 1) = v76;
      v82 = swift_getOpaqueTypeConformance2();
      v242 = v53;
      v243 = v82;
      v83 = swift_getWitnessTable();
      v240 = v81;
      v241 = v83;
      v238 = swift_getWitnessTable();
      v239 = v82;
      v84 = swift_getWitnessTable();
      v85 = v207;
      sub_23BA82D64();
      v236 = v53;
      v237 = v84;
      v86 = v227;
      v87 = swift_getWitnessTable();
      v234 = v53;
      v235 = v53;
      v88 = swift_getWitnessTable();
      v89 = v214;
      sub_23BA82D64();
      (*(v208 + 8))(v85, v86);
      v232 = v87;
      v233 = v88;
      v74 = v225;
      v68 = v229;
      v90 = v220;
      swift_getWitnessTable();
      v64 = v182;
      sub_23BA82D64();

      (*(v215 + 8))(v89, v90);
      v91 = v213;
      (v213)(v217, v79);
      v91(v218, v79);
      goto LABEL_8;
  }
}