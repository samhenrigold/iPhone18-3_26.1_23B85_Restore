__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2259CAEDC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_2259CB01C(uint64_t a1, int a2)
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

uint64_t sub_2259CB03C(uint64_t result, int a2, int a3)
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

uint64_t sub_2259CB1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2259CB588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPSignpost.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2259CB5EC()
{
  result = qword_28105B900;
  if (!qword_28105B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B900);
  }

  return result;
}

uint64_t sub_2259CB640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2259CB6A0(uint64_t a1)
{
  v2 = type metadata accessor for DIPSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259CB6FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2259CB710(result, a2);
  }

  return result;
}

uint64_t sub_2259CB710(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2259CB764()
{
  result = qword_281059B20;
  if (!qword_281059B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0, &unk_225CD76A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B20);
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

uint64_t sub_2259CB810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2259CB8AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2259CB8CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_2259CBA88(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_2259CBC40()
{
  result = qword_27D73AA98;
  if (!qword_27D73AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AA98);
  }

  return result;
}

uint64_t DaemonDefaultsKeys.CloudContainerDefaultsKeys.zoneNames.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonDefaultsKeys.CloudContainerDefaultsKeys.subscriptions.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DaemonDefaultsKeys.CloudContainerDefaultsKeys.changeTokens.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_2259CBE8C()
{
  qword_27D73AB90 = 0xD000000000000013;
  *algn_27D73AB98 = 0x8000000225D15460;
  qword_27D73ABA0 = 0xD00000000000001BLL;
  unk_27D73ABA8 = 0x8000000225D15480;
  qword_27D73ABB0 = 0xD00000000000001BLL;
  unk_27D73ABB8 = 0x8000000225D154A0;
}

uint64_t static DaemonDefaultsKeys.uploadsCloudContainer.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739EE0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27D73AB98;
  v2 = qword_27D73ABA0;
  v3 = unk_27D73ABA8;
  v4 = qword_27D73ABB0;
  v5 = unk_27D73ABB8;
  *a1 = qword_27D73AB90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

void sub_2259CBF74()
{
  qword_27D73ABC0 = 0xD00000000000001BLL;
  *algn_27D73ABC8 = 0x8000000225D153E0;
  qword_27D73ABD0 = 0xD000000000000023;
  unk_27D73ABD8 = 0x8000000225D15400;
  qword_27D73ABE0 = 0xD000000000000023;
  unk_27D73ABE8 = 0x8000000225D15430;
}

uint64_t static DaemonDefaultsKeys.uploadsNonprodCloudContainer.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D739EE8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27D73ABC8;
  v2 = qword_27D73ABD0;
  v3 = unk_27D73ABD8;
  v4 = qword_27D73ABE0;
  v5 = unk_27D73ABE8;
  *a1 = qword_27D73ABC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_2259CFB14(uint64_t a1, int a2)
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

uint64_t sub_2259CFB5C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SharedInternalDefaultsKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SharedInternalDefaultsKeys(_WORD *result, int a2, int a3)
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

void UserDefaultsConfiguration.deinit()
{
  if (!*(v0 + 24))
  {
    goto LABEL_4;
  }

  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v2 = sub_225CCE444();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_225CCE444();

    [v3 removePersistentDomainForName_];

LABEL_4:

    return;
  }

  __break(1u);
}

void UserDefaultsConfiguration.userDefaults.getter()
{
  if (*(v0 + 24))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = sub_225CCE444();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      __break(1u);
    }
  }

  else
  {
    v4 = [objc_opt_self() standardUserDefaults];

    v5 = v4;
  }
}

void UserDefaultsConfiguration.__deallocating_deinit()
{
  if (*(v0 + 24))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v2 = sub_225CCE444();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = sub_225CCE444();

    [v3 removePersistentDomainForName_];
  }

  swift_deallocClassInstance();
}

uint64_t static UserDefaultsConfiguration.standard.getter()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t static UserDefaultsConfiguration.unitTest(disambiguator:)(uint64_t a1, uint64_t a2)
{
  sub_225CCF204();

  MEMORY[0x22AA6CE70](a1, a2);
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000025;
  *(result + 24) = 0x8000000225D15B50;
  return result;
}

uint64_t sub_2259D0578(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2259D05C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_2259D061C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2259D0634(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259D0664(uint64_t a1)
{
  v2 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_225CCF144();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v39 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v3 & ~(v3 >> 63), 0);
    v32 = v39;
    if (v29)
    {
      result = sub_225CCF464();
    }

    else
    {
      result = sub_225CCF0F4();
      v5 = *(v2 + 36);
    }

    v36 = result;
    v37 = v5;
    v38 = v29 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v27 = v3;
      v28 = v2;
      while (v6 < v3)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_26;
        }

        v13 = v36;
        v14 = v38;
        v30 = v6 + 1;
        v31 = v37;
        sub_225B3D508(&v35, v36, v37, v38, v2);
        v16 = v15;
        v17 = v35;
        v33 = 0;
        v34 = 0xE000000000000000;
        v18 = CBOR.readableString.getter();
        if (v1)
        {

          sub_2259D8B18(v13, v31, v14);
        }

        MEMORY[0x22AA6CE70](v18);

        MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
        v19 = CBOR.readableString.getter();
        MEMORY[0x22AA6CE70](v19);

        v20 = v33;
        v21 = v34;
        v22 = v32;
        v39 = v32;
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_2259D52A4((v23 > 1), v24 + 1, 1);
          v22 = v39;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        v32 = v22;
        if (v29)
        {
          v2 = v28;
          if (!v14)
          {
            goto LABEL_28;
          }

          if (sub_225CCF494())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADA8, &qword_225CD4330);
          v26 = sub_225CCE314();
          sub_225CCF514();
          result = v26(&v33, 0);
        }

        else
        {
          v2 = v28;
          sub_2259D8074(v13, v31, v14, v28);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          result = sub_2259D8B18(v13, v31, v14);
          v36 = v8;
          v37 = v10;
          v38 = v12 & 1;
        }

        ++v6;
        v3 = v27;
        if (v30 == v27)
        {
          sub_2259D8B18(v36, v37, v38);
          return v32;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t COSEKey.publicKeyIdentifier.getter()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_225CCE264();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCE254();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = xmmword_225CD4150;
  sub_225CCCF44();
  sub_225CCD474();
  v11 = v32;
  if (v32 >> 60 == 15)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v12 = off_28105B918;
    v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v14));
    (*(v1 + 16))(v3, &v12[v13], v0);
    os_unfair_lock_unlock(&v12[v14]);
    v15 = sub_225CCD934();
    v16 = sub_225CCED04();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2259A7000, v15, v16, "Can't fetch EC2 parameters from COSEKey", v17, 2u);
      MEMORY[0x22AA6F950](v17, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v18 = 0;
  }

  else
  {
    v26 = v33;
    v27 = v34;
    v28 = v31;
    sub_2259BEF00(v35, v36);
    sub_225CCCFC4();
    sub_225CCCFC4();
    v19 = v30;
    sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
    v25 = v8;
    sub_225CCDB94();
    sub_2259CB710(v19, *(&v19 + 1));
    sub_2259D7024(v19, *(&v19 + 1), v7);
    sub_2259BEF00(v19, *(&v19 + 1));
    sub_225CCDB84();
    (*(v5 + 8))(v7, v4);
    sub_2259D7204(&qword_27D73AC00, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
    v20 = v25;
    v21 = sub_225CCE154();
    v23 = sub_2259D732C(v21, v22);

    v18 = sub_2259D8490(v23);

    sub_2259BEF00(v26, v27);
    sub_2259BEF00(v28, v11);
    (*(v29 + 8))(v10, v20);
  }

  sub_2259BEF00(v30, *(&v30 + 1));
  return v18;
}

BOOL COSEKey.isEC2.getter(uint64_t a1)
{
  sub_225CCD474();
  v1 = v4 >> 60;
  if (v4 >> 60 != 15)
  {
    sub_2259CB640(v3, &qword_27D73AC08, &qword_225CD4160);
  }

  return v1 < 0xF;
}

BOOL COSEKey.isOKP.getter()
{
  sub_225CCD484();
  v0 = v3 >> 60;
  if (v3 >> 60 != 15)
  {
    sub_2259CB640(v2, &qword_27D73AC10, &qword_225CD4168);
  }

  return v0 < 0xF;
}

uint64_t COSEKey.publicKeyData.getter()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  sub_225CCD474();
  if (v35 >> 60 == 15)
  {
    sub_225CCD484();
    if (v43 >> 60 == 15)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v10 = off_28105B918;
      v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v12));
      (*(v1 + 16))(v4, &v10[v11], v0);
      os_unfair_lock_unlock(&v10[v12]);
      v13 = sub_225CCD934();
      v14 = sub_225CCED04();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2259A7000, v13, v14, "Key is neither EC2 or OKP", v15, 2u);
        MEMORY[0x22AA6F950](v15, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
      return 0;
    }

    sub_2259CB640(&v42, &qword_27D73AC10, &qword_225CD4168);
    sub_225CCD484();
    if (v37 >> 60 == 15)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v23 = off_28105B918;
      v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v25));
      (*(v1 + 16))(v7, &v23[v24], v0);
      os_unfair_lock_unlock(&v23[v25]);
      v26 = sub_225CCD934();
      v27 = sub_225CCED04();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2259A7000, v26, v27, "Can't fetch OKP parameters from COSEKey", v28, 2u);
        MEMORY[0x22AA6F950](v28, -1, -1);
      }

      (*(v1 + 8))(v7, v0);
      return 0;
    }

    v33 = v36;
    sub_2259BEF00(v38, v39);
    return v33;
  }

  else
  {
    sub_2259CB640(v34, &qword_27D73AC08, &qword_225CD4160);
    sub_225CCD474();
    v16 = v37;
    if (v37 >> 60 == 15)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v17 = off_28105B918;
      v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v19));
      (*(v1 + 16))(v9, &v17[v18], v0);
      os_unfair_lock_unlock(&v17[v19]);
      v20 = sub_225CCD934();
      v21 = sub_225CCED04();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2259A7000, v20, v21, "Can't fetch EC2 parameters from COSEKey", v22, 2u);
        MEMORY[0x22AA6F950](v22, -1, -1);
      }

      (*(v1 + 8))(v9, v0);
      return 0;
    }

    v31 = v38;
    v30 = v39;
    v32 = v36;
    sub_2259BEF00(v40, v41);
    v42 = xmmword_225CD4150;
    sub_225CCCFC4();
    sub_225CCCFC4();
    sub_2259BEF00(v31, v30);
    sub_2259BEF00(v32, v16);
    return v42;
  }
}

uint64_t COSEKey.publicKeyX963Representation.getter()
{
  v16 = *MEMORY[0x277D85DE8];
  result = COSEKey.publicKeyData.getter();
  if (v1 >> 60 != 15)
  {
    v2 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v2 != 2)
      {
        v3 = 0;
        goto LABEL_12;
      }

      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v2)
    {
      v3 = BYTE6(v1);
      goto LABEL_12;
    }

    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_16;
    }

    v3 = v3;
LABEL_12:
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (!v6)
    {
      v8 = v1;
      v9 = result;
      v14 = sub_2259D856C(v7);
      v15 = v10;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC18, &qword_225CD4170);
      v13 = sub_2259D8B24(&qword_27D73AC20, &qword_27D73AC18, &qword_225CD4170, MEMORY[0x277CC9EF0]);
      LOBYTE(v11[0]) = 4;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      sub_225CCCF24();
      __swift_destroy_boxed_opaque_existential_0(v11);
      sub_225CCCFC4();
      sub_2259B97A8(v9, v8);
      return v14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t COSEKey.init(ec2CurveIdentifier:publicKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC28, &qword_225CD4178);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v107[-v9];
  v11 = sub_225CCD954();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v107[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v107[-v16];
  result = MEMORY[0x28223BE20](v15);
  v21 = &v107[-v20];
  if (a1 != 3)
  {
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        sub_2259BEF00(a2, a3);
LABEL_96:
        v106 = sub_225CCD494();
        return (*(*(v106 - 8) + 56))(a4, 1, 1, v106);
      }

      v22 = a3 >> 62;
      v111 = a4;
      if ((a3 >> 62) <= 1)
      {
        if (!v22)
        {
          if (BYTE6(a3) != 65)
          {
            goto LABEL_51;
          }

LABEL_30:
          sub_2259CB710(a2, a3);
          sub_2259D2468(1, a2, a3, &v112);
          v44 = v112;
          v45 = v113;
          v46 = sub_2259D8490(&unk_2838FB070);
          v21 = v47;
          v48 = sub_2259D8228(v44, v45, v46, v47);
          sub_2259BEF00(v46, v21);
          sub_2259BEF00(v44, v45);
          if (v48)
          {
            v32 = 33;
            v17 = 65;
LABEL_32:
            v11 = 1;
            if (v22)
            {
              goto LABEL_63;
            }

LABEL_71:
            v59 = sub_225CCCFD4();
            v61 = v60;
            sub_225CCCFD4();
            if (v17 >= v32)
            {
              sub_225CCCFD4();
              sub_225CCD464();
              sub_2259BEF00(v59, v61);
              sub_2259BEF00(a2, a3);
              v62 = sub_225CCD494();
              v63 = *(v62 - 8);
              if (!(*(v63 + 48))(v10, 1, v62))
              {
                v64 = v111;
                (*(v63 + 32))(v111, v10, v62);
                return (*(v63 + 56))(v64, 0, 1, v62);
              }

              sub_2259CB640(v10, &qword_27D73AC28, &qword_225CD4178);
              goto LABEL_95;
            }

            __break(1u);
            goto LABEL_98;
          }

          goto LABEL_34;
        }

        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          if (HIDWORD(a2) - a2 == 65)
          {
            goto LABEL_30;
          }

LABEL_51:
          if (v22 == 2)
          {
            goto LABEL_68;
          }

          if (v22 == 1)
          {
            if (!__OFSUB__(HIDWORD(a2), a2))
            {
              if (HIDWORD(a2) - a2 == 64)
              {
                goto LABEL_70;
              }

              goto LABEL_89;
            }

            goto LABEL_108;
          }

          if (BYTE6(a3) != 64)
          {
LABEL_89:
            v92 = v19;
            if (qword_28105B910 != -1)
            {
              swift_once();
            }

            v93 = off_28105B918;
            v94 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
            v95 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
            os_unfair_lock_lock((off_28105B918 + v95));
            (*(v92 + 16))(v21, &v93[v94], v11);
            os_unfair_lock_unlock(&v93[v95]);
            sub_2259CB710(a2, a3);
            v96 = sub_225CCD934();
            v97 = sub_225CCED14();
            sub_2259BEF00(a2, a3);
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v109 = v98;
              v110 = swift_slowAlloc();
              v112 = v110;
              *v98 = 136315138;
              v114 = sub_225B34448(a2, a3);
              v108 = v97;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
              sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
              v99 = sub_225CCE384();
              v101 = v100;

              v102 = sub_2259BE198(v99, v101, &v112);

              v103 = v109;
              *(v109 + 1) = v102;
              v104 = v103;
              _os_log_impl(&dword_2259A7000, v96, v108, "Public key not in expected format for P256 COSEKey: %s", v103, 0xCu);
              v105 = v110;
              __swift_destroy_boxed_opaque_existential_0(v110);
              MEMORY[0x22AA6F950](v105, -1, -1);
              MEMORY[0x22AA6F950](v104, -1, -1);

              sub_2259BEF00(a2, a3);
            }

            else
            {
              sub_2259BEF00(a2, a3);
            }

            (*(v92 + 8))(v21, v11);
            goto LABEL_95;
          }

LABEL_70:
          while (1)
          {
            v11 = 0;
            v32 = 32;
            v17 = 64;
            if (!v22)
            {
              goto LABEL_71;
            }

LABEL_63:
            if (v22 == 2)
            {
              result = *(a2 + 16);
              v55 = *(a2 + 24);
            }

            else
            {
              result = a2;
              v55 = a2 >> 32;
            }

            if (v55 >= result)
            {
              goto LABEL_71;
            }

            __break(1u);
LABEL_68:
            v57 = *(a2 + 16);
            v56 = *(a2 + 24);
            v25 = __OFSUB__(v56, v57);
            v58 = v56 - v57;
            if (v25)
            {
              goto LABEL_110;
            }

            if (v58 != 64)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_104;
      }

      if (v22 != 2)
      {
        goto LABEL_89;
      }

      v42 = *(a2 + 16);
      v41 = *(a2 + 24);
      v25 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (!v25)
      {
        if (v43 == 65)
        {
          goto LABEL_30;
        }

        goto LABEL_51;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v22 = a3 >> 62;
    v111 = a4;
    if ((a3 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_76;
      }

      v24 = *(a2 + 16);
      v23 = *(a2 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
        if (v26 != 97)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (!v22)
      {
        if (BYTE6(a3) != 97)
        {
LABEL_37:
          if (v22 == 2)
          {
            v50 = *(a2 + 16);
            v49 = *(a2 + 24);
            v25 = __OFSUB__(v49, v50);
            v51 = v49 - v50;
            if (v25)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            if (v51 != 96)
            {
              goto LABEL_76;
            }
          }

          else if (v22 == 1)
          {
            if (__OFSUB__(HIDWORD(a2), a2))
            {
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            if (HIDWORD(a2) - a2 != 96)
            {
LABEL_76:
              v22 = v19;
              if (qword_28105B910 == -1)
              {
LABEL_77:
                v65 = off_28105B918;
                v66 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
                v67 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
                os_unfair_lock_lock((off_28105B918 + v67));
                (*(v22 + 16))(v17, &v65[v66], v11);
                os_unfair_lock_unlock(&v65[v67]);
                sub_2259CB710(a2, a3);
                v68 = sub_225CCD934();
                v69 = sub_225CCED14();
                sub_2259BEF00(a2, a3);
                if (os_log_type_enabled(v68, v69))
                {
                  v70 = swift_slowAlloc();
                  v109 = v70;
                  v110 = swift_slowAlloc();
                  v112 = v110;
                  *v70 = 136315138;
                  v114 = sub_225B34448(a2, a3);
                  v108 = v69;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
                  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
                  v71 = sub_225CCE384();
                  v73 = v72;

                  v74 = sub_2259BE198(v71, v73, &v112);

                  v75 = v109;
                  *(v109 + 1) = v74;
                  v76 = v75;
                  _os_log_impl(&dword_2259A7000, v68, v108, "Public key not in expected format for P384 COSEKey: %s", v75, 0xCu);
                  v77 = v110;
                  __swift_destroy_boxed_opaque_existential_0(v110);
                  MEMORY[0x22AA6F950](v77, -1, -1);
                  MEMORY[0x22AA6F950](v76, -1, -1);

                  sub_2259BEF00(a2, a3);
                }

                else
                {
                  sub_2259BEF00(a2, a3);
                }

                (*(v22 + 8))(v17, v11);
                goto LABEL_95;
              }

LABEL_98:
              swift_once();
              goto LABEL_77;
            }
          }

          else if (BYTE6(a3) != 96)
          {
            goto LABEL_76;
          }

          v11 = 0;
          v32 = 48;
          v17 = 96;
          if (v22)
          {
            goto LABEL_63;
          }

          goto LABEL_71;
        }

LABEL_20:
        sub_2259CB710(a2, a3);
        sub_2259D2468(1, a2, a3, &v112);
        v27 = v112;
        v28 = v113;
        v29 = sub_2259D8490(&unk_2838FB098);
        v21 = v30;
        v31 = sub_2259D8228(v27, v28, v29, v30);
        sub_2259BEF00(v29, v21);
        sub_2259BEF00(v27, v28);
        if (v31)
        {
          v32 = 49;
          v17 = 97;
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        if (HIDWORD(a2) - a2 != 97)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  v22 = a3 >> 62;
  v111 = a4;
  if ((a3 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_82;
    }

    v34 = *(a2 + 16);
    v33 = *(a2 + 24);
    v25 = __OFSUB__(v33, v34);
    v35 = v33 - v34;
    if (v25)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v35 == 133)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!v22)
    {
      if (BYTE6(a3) != 133)
      {
        goto LABEL_44;
      }

LABEL_25:
      sub_2259CB710(a2, a3);
      sub_2259D2468(1, a2, a3, &v112);
      v36 = v112;
      v37 = v113;
      v38 = sub_2259D8490(&unk_2838FB0C0);
      v21 = v39;
      v40 = sub_2259D8228(v36, v37, v38, v39);
      sub_2259BEF00(v38, v21);
      sub_2259BEF00(v36, v37);
      if (v40)
      {
        v32 = 67;
        v17 = 133;
        goto LABEL_32;
      }

LABEL_34:
      sub_2259BEF00(a2, a3);
LABEL_95:
      a4 = v111;
      goto LABEL_96;
    }

    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (HIDWORD(a2) - a2 == 133)
    {
      goto LABEL_25;
    }
  }

LABEL_44:
  if (v22 == 2)
  {
    v53 = *(a2 + 16);
    v52 = *(a2 + 24);
    v25 = __OFSUB__(v52, v53);
    v54 = v52 - v53;
    if (v25)
    {
      goto LABEL_109;
    }

    if (v54 == 132)
    {
      goto LABEL_62;
    }

    goto LABEL_82;
  }

  if (v22 != 1)
  {
    if (BYTE6(a3) == 132)
    {
      goto LABEL_62;
    }

LABEL_82:
    v78 = v19;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v79 = off_28105B918;
    v80 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v81 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v81));
    (*(v78 + 16))(v14, &v79[v80], v11);
    os_unfair_lock_unlock(&v79[v81]);
    sub_2259CB710(a2, a3);
    v82 = sub_225CCD934();
    v83 = sub_225CCED14();
    sub_2259BEF00(a2, a3);
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v109 = v84;
      v110 = swift_slowAlloc();
      v112 = v110;
      *v84 = 136315138;
      v114 = sub_225B34448(a2, a3);
      v108 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
      v85 = sub_225CCE384();
      v87 = v86;

      v88 = sub_2259BE198(v85, v87, &v112);

      v89 = v109;
      *(v109 + 1) = v88;
      v90 = v89;
      _os_log_impl(&dword_2259A7000, v82, v108, "Public key not in expected format for P384 COSEKey: %s", v89, 0xCu);
      v91 = v110;
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x22AA6F950](v91, -1, -1);
      MEMORY[0x22AA6F950](v90, -1, -1);

      sub_2259BEF00(a2, a3);
    }

    else
    {
      sub_2259BEF00(a2, a3);
    }

    (*(v78 + 8))(v14, v11);
    goto LABEL_95;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    if (HIDWORD(a2) - a2 != 132)
    {
      goto LABEL_82;
    }

LABEL_62:
    v11 = 0;
    v32 = 66;
    v17 = 132;
    if (v22)
    {
      goto LABEL_63;
    }

    goto LABEL_71;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t sub_2259D2468@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_225B4DCB0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_225B4DC4C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_225CCCF54();
    v15 = v14;
    result = sub_2259BEF00(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2259D25B0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD90, &qword_225CD4318);
  if (swift_dynamicCast())
  {
    sub_2259A9C20(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_225CCCB84();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_2259CB640(v40, &qword_27D73AD98, &qword_225CD4320);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v40;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_225CCF354();
  }

  sub_2259D6A5C(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
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
  *&v40[0] = sub_2259D89F0(v8);
  *(&v40[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v40[0]);
  v34[2] = v39;
  v10 = sub_2259D6B24(sub_2259D8A90, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v40[0] + 1) >> 62;
  if ((*(&v40[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v40[0] + 16);
      v18 = *(*&v40[0] + 24);
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
    if (__OFSUB__(DWORD1(v40[0]), v40[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v40[0]) - LODWORD(v40[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v40[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v40[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v40[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_225CCCF24();
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

  else if (v13 != BYTE14(v40[0]))
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
      v28 = sub_225C15CB8(v16, v14, v15);
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
      v8 = sub_225CCE654();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_225CCE684();
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
        v30 = sub_225CCF354();
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

    v16 = sub_225C15CB8(v16, v14, v15);
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

    v16 = sub_225CCE664();
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
      sub_225CCCF44();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_225CCCF44();
    sub_2259B97A8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2259B97A8(v36, v6);
LABEL_63:
  v32 = v40[0];
  sub_2259CB710(*&v40[0], *(&v40[0] + 1));

  sub_2259BEF00(v32, *(&v32 + 1));
  return v32;
}

void sub_2259D2AD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD80, &qword_225CD4310);
  v16[3] = v8;
  v16[4] = sub_2259D8B24(&qword_27D73AD88, &qword_27D73AD80, &qword_225CD4310, MEMORY[0x277CC9EE0]);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_225B3D3E8((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

unint64_t sub_2259D2BE8(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_225A6D08C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_2259D8390(v3, v4);
    }

    else
    {
      v6 = sub_2259D840C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_2259D2CC4()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](16);
  return sub_225CCFC24();
}

uint64_t sub_2259D2D30()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](16);
  return sub_225CCFC24();
}

uint64_t COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)@<X0>(uint64_t a9@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30, &unk_225CDCF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_225CCD2F4();
  v13 = sub_225CCD354();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    sub_2259CB640(v12, &qword_27D73AC30, &unk_225CDCF40);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a9, v12, v13);
    v15 = 0;
  }

  return (*(v14 + 56))(a9, v15, 1, v13);
}

uint64_t COSE_Sign1.init(fromHexData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v80 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v76 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v76 - v9;
  v10 = sub_225CCCA04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2259CB710(a1, a2);
  v14 = sub_2259D7EC8(a1, a2);
  v82 = a2;
  v81 = a1;
  if (!v15)
  {
    v92 = a1;
    v93 = a2;
    sub_2259CB710(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC38, &qword_225CE69D0);
    if (swift_dynamicCast())
    {
      sub_2259A9C20(v90, &v83);
      __swift_project_boxed_opaque_existential_1(&v83, v86);
      if (sub_225CCF5A4())
      {
        sub_2259BEF00(v81, v82);
        __swift_project_boxed_opaque_existential_1(&v83, v86);
        sub_225CCF594();
        v16 = v3;
        v18 = *(&v90[0] + 1);
        v17 = *&v90[0];
        __swift_destroy_boxed_opaque_existential_0(&v83);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_0(&v83);
      a2 = v82;
      a1 = v81;
    }

    else
    {
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      sub_2259CB640(v90, &qword_27D73AC40, &qword_225CD4180);
    }

    v14 = sub_2259D6F7C(a1, a2);
  }

  v17 = v14;
  v18 = v15;
  sub_2259BEF00(a1, a2);
  v16 = v3;
LABEL_9:
  v83 = v17;
  v84 = v18;
  sub_225CCC9F4();
  sub_2259D8654();
  v19 = sub_225CCF054();
  v21 = v20;
  (*(v11 + 8))(v13, v10);

  v22 = Data.init(base16Encoded:)(v19, v21);
  if (v23 >> 60 == 15)
  {
    v80 = 0x8000000225D15BE0;
    v79 = 0x8000000225D15C10;
    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    v31 = v78;
    (*(v30 + 56))(v78, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v31, 1, v29);
    sub_2259CB640(v31, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v32 = 131;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v33;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v83);

    v35 = v83;
    v36 = sub_225B29AA0(0, 1, 1, v24);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD000000000000018;
    *(v39 + 5) = 0x8000000225D15BC0;
    *(v39 + 6) = 0xD000000000000022;
    *(v39 + 7) = v80;
    *(v39 + 8) = 0xD000000000000012;
    *(v39 + 9) = v79;
    *(v39 + 10) = 188;
    *v28 = v32;
    *(v28 + 8) = v36;
    *(v28 + 16) = 0xD000000000000018;
    *(v28 + 24) = 0x8000000225D15BC0;
    *(v28 + 32) = v35;
    *(v28 + 40) = 0;
    swift_willThrow();
    v77 = 0;
  }

  else
  {
    v40 = v22;
    v41 = v23;
    sub_225CCD3A4();
    swift_allocObject();
    sub_225CCD394();
    sub_225CCD354();
    sub_2259D7204(&qword_27D73AC50, MEMORY[0x277CF3948], MEMORY[0x277CF3958]);
    sub_225CCD364();
    if (!v16)
    {
      sub_2259BEF00(v81, v82);
      sub_2259B97A8(v40, v41);
    }

    sub_2259B97A8(v40, v41);

    v77 = 0;
    v80 = 0x8000000225D15BE0;
    v79 = 0x8000000225D15C10;
    v26 = v16;
  }

  v42 = v26;
  v43 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v44 = swift_allocError();
  v46 = v45;
  swift_getErrorValue();
  v47 = v89;
  v48 = v26;
  sub_225B21FAC(v47, &v83);

  v49 = v84;
  v78 = v44;
  if (v84)
  {
    v76 = v83;
    v51 = v85;
    v50 = v86;
    v52 = v87;
    v53 = v88;
  }

  else
  {
    v83 = v26;
    v54 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v55 = *&v90[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v57 = [v55 code];
      v58 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v58;
      *(inited + 40) = v57;
      v52 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v59 = v26;
      v50 = 0;
      v51 = 0;
      v49 = MEMORY[0x277D84F90];
      v76 = 131;
    }

    else
    {
      v83 = v26;
      v61 = v26;
      v62 = sub_225CCE954();
      v63 = v76;
      v64 = swift_dynamicCast();
      v65 = *(v62 - 8);
      (*(v65 + 56))(v63, v64 ^ 1u, 1, v62);
      v66 = (*(v65 + 48))(v63, 1, v62);
      sub_2259CB640(v63, &unk_27D73B050, &unk_225CD3AD0);
      if (v66)
      {
        v67 = 131;
      }

      else
      {
        v67 = 23;
      }

      v76 = v67;
      v49 = MEMORY[0x277D84F90];
      v52 = sub_225B2C374(MEMORY[0x277D84F90]);
      v68 = v26;
      v50 = 0;
      v51 = 0;
    }

    v53 = v26;
  }

  v69 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v52;
  sub_225B2C4A0(v43, sub_225B2AC40, 0, v69, &v83);

  v70 = v83;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_225B29AA0(0, *(v49 + 2) + 1, 1, v49);
  }

  v72 = *(v49 + 2);
  v71 = *(v49 + 3);
  if (v72 >= v71 >> 1)
  {
    v49 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v49);
  }

  *(v49 + 2) = v72 + 1;
  v73 = &v49[56 * v72];
  *(v73 + 4) = 0;
  *(v73 + 5) = 0;
  v74 = v80;
  *(v73 + 6) = 0xD000000000000022;
  *(v73 + 7) = v74;
  v75 = v79;
  *(v73 + 8) = 0xD000000000000012;
  *(v73 + 9) = v75;
  *(v73 + 10) = 192;
  *v46 = v76;
  *(v46 + 8) = v49;
  *(v46 + 16) = v51;
  *(v46 + 24) = v50;
  *(v46 + 32) = v70;
  *(v46 + 40) = v53;
  swift_willThrow();

  return sub_2259BEF00(v81, v82);
}

uint64_t COSE_Sign1.init(from:)(uint64_t a1, unint64_t a2)
{
  sub_225CCD3A4();
  swift_allocObject();
  sub_225CCD394();
  sub_225CCD354();
  sub_2259D7204(&qword_27D73AC50, MEMORY[0x277CF3948], MEMORY[0x277CF3958]);
  sub_225CCD364();
  sub_2259BEF00(a1, a2);
}

uint64_t COSE_Sign1.typ.getter()
{
  v0 = objc_opt_self();
  v1 = MEMORY[0x22AA6BB50]();
  v3 = v2;
  v4 = sub_225CCCF74();
  sub_2259BEF00(v1, v3);
  v5 = [v0 decodeFromData_];

  if (v5)
  {
    v6 = v5;
    CBOR.dictionaryValue(for:)(0x10);
    v8 = v7;

    if (v8)
    {
      v9 = [v8 string];
      if (v9)
      {
        v10 = v9;
        v11 = sub_225CCE474();

        return v11;
      }
    }

    else
    {
    }
  }

  return 0;
}

void CBOR.dictionaryValue(for:)(id a1)
{
  v2 = [v1 dictionary];
  if (v2)
  {
    v3 = v2;
    sub_2259D8718(0, &qword_27D73AC58, 0x277CF39D8);
    sub_2259D86A8();
    v4 = sub_225CCE2D4();

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = sub_225CCF474() | 0x8000000000000000;
    }

    else
    {
      v9 = -1 << *(v4 + 32);
      v6 = ~v9;
      v5 = v4 + 64;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v7 = v11 & *(v4 + 64);
      v8 = v4;
    }

    v12 = 0;
    v13 = (v6 + 64) >> 6;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v14 = v12;
    v15 = v7;
    if (v7)
    {
LABEL_14:
      v7 = (v15 - 1) & v15;
      v16 = (v12 << 9) | (8 * __clz(__rbit64(v15)));
      v17 = *(*(v8 + 56) + v16);
      v18 = *(*(v8 + 48) + v16);
      v19 = v17;
      if (v18)
      {
        while (1)
        {
          v20 = v6;
          v21 = [v18 numeric];
          v22 = [v21 integerValue];

          if (v22 == a1)
          {
            break;
          }

          v6 = v20;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          if (sub_225CCF504())
          {
            swift_dynamicCast();
            v18 = v24;
            swift_dynamicCast();
            v19 = v24;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_21;
        }

        sub_2259D8710(v8);
      }

      else
      {
LABEL_21:
        sub_2259D8710(v8);
      }
    }

    else
    {
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_21;
        }

        v15 = *(v5 + 8 * v12);
        ++v14;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

BOOL COSE_Sign1.isTagged.getter()
{
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  sub_225CCD354();
  sub_2259D7204(&qword_27D73AC68, MEMORY[0x277CF3948], MEMORY[0x277CF3950]);
  v0 = sub_225CCD3F4();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = sub_225CCCF74();
  v5 = [v3 decodeFromData_];

  if (v5)
  {
    v6 = [v5 tag];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 numeric];
      v9 = [v8 integerValue];
      sub_2259BEF00(v0, v2);

      return v9 == 18;
    }
  }

  sub_2259BEF00(v0, v2);
  return 0;
}

id sub_2259D3F94()
{
  result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  qword_27D73ABF0 = result;
  return result;
}

uint64_t CBOR.readableString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v1 - 8);
  [v0 type];
  return 0x6E776F6E6B6E7522;
}

void CBOR.dictionaryValue(for:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 dictionary];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_2259D8718(0, &qword_27D73AC58, 0x277CF39D8);
  sub_2259D86A8();
  v5 = sub_225CCE2D4();

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_225CCF474() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  v14 = (v7 + 64) >> 6;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_225CCF504() || (swift_dynamicCast(), v20 = v32, swift_dynamicCast(), v21 = v32, v17 = v8, !v32))
    {
LABEL_26:
      sub_2259D8710(v9);

      return;
    }

LABEL_19:
    v22 = [v20 string];
    if (v22)
    {
      v23 = v22;
      v24 = v9;
      v25 = sub_225CCE474();
      v27 = v26;

      if (v25 == a1 && v27 == a2)
      {

        v9 = v24;
LABEL_29:
        sub_2259D8710(v9);

        return;
      }

      v29 = sub_225CCF934();

      v9 = v24;
      if (v29)
      {
        goto LABEL_29;
      }
    }

    v8 = v17;
  }

  v15 = v13;
  v16 = v8;
  if (v8)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = (v13 << 9) | (8 * __clz(__rbit64(v16)));
    v19 = *(*(v9 + 56) + v18);
    v20 = *(*(v9 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v14)
    {
      goto LABEL_26;
    }

    v16 = *(v6 + 8 * v13);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_2259D5238(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_2259D52A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D56F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D52C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D52E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D5304(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6010(a1, a2, a3, *v3, &qword_27D73AD10, &qword_225CD42B8);
  *v3 = result;
  return result;
}

void *sub_2259D5334(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D5354(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73AD60, &qword_225CD4300, type metadata accessor for CredentialBuilderPayloadDetails.Element);
  *v3 = result;
  return result;
}

void *sub_2259D5398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73AD58, &qword_225CD42F8, type metadata accessor for ProofingDisplayMessageAction);
  *v3 = result;
  return result;
}

char *sub_2259D53DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D53FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AD40, &qword_225CD42E0, &qword_27D73AD48, &qword_225CD42E8);
  *v3 = result;
  return result;
}

char *sub_2259D543C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D545C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D547C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AD18, &qword_225CD42C0, &qword_27D73AD20, &qword_225CD42C8);
  *v3 = result;
  return result;
}

void *sub_2259D54BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D5EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D54DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73ACF8, &qword_225CD42A8, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_2259D5520(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6010(a1, a2, a3, *v3, &qword_27D73ACF0, &qword_225CD42A0);
  *v3 = result;
  return result;
}

char *sub_2259D5550(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D610C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2259D5570(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D5590(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6330(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D55B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73ACA8, &qword_225CD4260, MEMORY[0x277D6AA08]);
  *v3 = result;
  return result;
}

void *sub_2259D55F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6520(a1, a2, a3, *v3, &qword_27D73ACB0, &qword_225CD4268, type metadata accessor for HashDigest);
  *v3 = result;
  return result;
}

char *sub_2259D5638(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D66FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D5658(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AC78, &qword_225CD4240, &qword_27D73AC80, &qword_225CD4248);
  *v3 = result;
  return result;
}

char *sub_2259D5698(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2259D56B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2259D6928(a1, a2, a3, *v3, &qword_27D73AC90, &qword_225CD4250, &qword_27D73AC98, &qword_225CFFEB0);
  *v3 = result;
  return result;
}

char *sub_2259D56F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
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

char *sub_2259D5804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADA0, &qword_225CD4328);
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

char *sub_2259D5910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD78, &qword_225CD4308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2259D5A30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68, &unk_225CF90E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70, &unk_225CDC620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2259D5B64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD50, &qword_225CD42F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2259D5C84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD38, &qword_225CD42D8);
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

void *sub_2259D5D90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD28, &qword_225CD42D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30, &qword_225CE0360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2259D5EDC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD00, &qword_225CD42B0);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2259D6010(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v12 = MEMORY[0x277D84F90];
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

char *sub_2259D610C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE8, &unk_225CF1C90);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2259D6210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE0, &qword_225CD4298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2259D6330(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACB8, &qword_225CD4270);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC0, &qword_225CD4278) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2259D6520(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2259D66FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACA0, &qword_225CD4258);
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

char *sub_2259D6808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC88, &unk_225D00BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2259D6928(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
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

unint64_t sub_2259D6A5C@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_225A6D08C(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_225CCCA94();
      swift_allocObject();
      v8 = sub_225CCCA34();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_2259D6B24(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_2259BEF00(v7, v6);
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

    sub_2259BEF00(v7, v6);
    *v4 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_225CCCA44() && __OFSUB__(v7, sub_225CCCA74()))
      {
LABEL_26:
        __break(1u);
      }

      sub_225CCCA94();
      swift_allocObject();
      v14 = sub_225CCCA24();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2259D6EC8(v7, v7 >> 32, a1);

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

    sub_2259BEF00(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    sub_225CCCEB4();
    result = sub_2259D6EC8(*(v17 + 2), *(v17 + 3), a1);
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

char *sub_2259D6EC8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_225CCCA44();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_225CCCA74();
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

  v12 = sub_225CCCA64();
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

uint64_t sub_2259D6F7C(uint64_t a1, unint64_t a2)
{
  sub_2259CB710(a1, a2);
  sub_2259F4494(a1, a2);
  v4 = sub_225CCE594();

  return v4;
}

uint64_t sub_2259D6FE8@<X0>(uint64_t *a3@<X8>)
{
  result = sub_225CCE594();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2259D7024(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_225CCE264();
      sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return sub_225CCDB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2259D724C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2259D724C(v5, v6);
  }

  sub_225CCE264();
  sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  return sub_225CCDB74();
}

uint64_t sub_2259D7204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2259D724C(uint64_t a1, uint64_t a2)
{
  result = sub_225CCCA44();
  if (!result || (result = sub_225CCCA74(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      sub_225CCE264();
      sub_2259D7204(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return sub_225CCDB74();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2259D732C(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

void *sub_2259D7494(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *))
{
  v118 = a3;
  v5 = sub_225CCD704();
  v103 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v117 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACC8, &qword_225CD4280);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v115 = (&v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v121 = (&v90 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v90 - v13;
  MEMORY[0x28223BE20](v12);
  v101 = &v90 - v15;
  v16 = type metadata accessor for HashDigest(0);
  v98 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v106 = &v90 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD0, &qword_225CD4288);
  v21 = *(v120 - 8);
  v22 = MEMORY[0x28223BE20](v120);
  v114 = (&v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v95 = &v90 - v25;
  MEMORY[0x28223BE20](v24);
  v104 = &v90 - v26;
  v27 = *(a1 + 16);
  v102 = a2;
  v119 = *(a2 + 16);
  if (v119 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v119;
  }

  v94 = a1;
  v116 = v5;
  v100 = v21;
  v96 = v27;
  v97 = v14;
  v107 = v28;
  if (!v28)
  {
    v55 = *(v21 + 80);
    v56 = MEMORY[0x277D84F90];
    v57 = *(MEMORY[0x277D84F90] + 24);

    v54 = v56;
    v36 = 0;
    v93 = v55;
    v105 = v57 >> 1;
    v92 = (v55 + 32) & ~v55;
    v122 = v56 + v92;
    v53 = v119;
LABEL_20:
    v58 = v107;
    if (v27 <= v53)
    {
      v70 = v54;
LABEL_55:
      v86 = v70[3];
      if (v86 >= 2)
      {
        v87 = v86 >> 1;
        v44 = __OFSUB__(v87, v105);
        v88 = v87 - v105;
        if (v44)
        {
          goto LABEL_70;
        }

        v70[2] = v88;
      }

      return v70;
    }

    v121 = (v103 + 56);
    v115 = (v103 + 48);
    v114 = (v103 + 32);
    v112 = (v103 + 16);
    v113 = (v103 + 8);
    v59 = v94;
    while (1)
    {
      if (v58 >= v27)
      {
        goto LABEL_61;
      }

      v60 = v54;
      sub_2259D87C8(v59 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v58, v106);
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_62;
      }

      if (v36 == v53)
      {
        v62 = 1;
        v36 = v53;
      }

      else
      {
        if (v36 >= v53)
        {
          goto LABEL_64;
        }

        (*(v103 + 16))(v101, v102 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v36, v5);
        v44 = __OFADD__(v36++, 1);
        if (v44)
        {
          goto LABEL_65;
        }

        v62 = 0;
      }

      v63 = v101;
      (*v121)(v101, v62, 1, v5);
      sub_2259D88EC(v63, v14, &qword_27D73ACC8, &qword_225CD4280);
      if ((*v115)(v14, 1, v5) == 1)
      {
        sub_2259D882C(v106);
        v70 = v60;
        goto LABEL_55;
      }

      v107 = v58;
      v64 = v117;
      (*v114)(v117, v14, v5);
      v118(&v123, v64);
      (*v113)(v64, v5);
      v65 = v123;
      v66 = v124;
      v67 = v95;
      v68 = (v95 + *(v120 + 48));
      sub_2259D8888(v106, v95);
      *v68 = v65;
      v68[1] = v66;
      sub_2259D88EC(v67, v104, &qword_27D73ACD0, &qword_225CD4288);
      v69 = v105;
      if (!v105)
      {
        break;
      }

      v70 = v60;
      v71 = v107;
      v72 = v122;
LABEL_50:
      v44 = __OFSUB__(v69, 1);
      v105 = v69 - 1;
      v14 = v97;
      v53 = v119;
      if (v44)
      {
        goto LABEL_63;
      }

      sub_2259D88EC(v104, v72, &qword_27D73ACD0, &qword_225CD4288);
      v122 = v72 + *(v100 + 72);
      v58 = v71 + 1;
      v54 = v70;
      v27 = v96;
      if (v61 == v96)
      {
        goto LABEL_55;
      }
    }

    v73 = v60[3];
    if (((v73 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_66;
    }

    v74 = v73 & 0xFFFFFFFFFFFFFFFELL;
    if (v74 <= 1)
    {
      v75 = 1;
    }

    else
    {
      v75 = v74;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD8, &qword_225CD4290);
    v76 = *(v100 + 72);
    v77 = v92;
    v70 = swift_allocObject();
    v78 = _swift_stdlib_malloc_size(v70);
    if (!v76)
    {
      goto LABEL_67;
    }

    v79 = v78 - v77;
    if (v78 - v77 == 0x8000000000000000 && v76 == -1)
    {
      goto LABEL_68;
    }

    v81 = v79 / v76;
    v70[2] = v75;
    v70[3] = 2 * (v79 / v76);
    v82 = v70 + v77;
    v83 = v60;
    v84 = v60[3] >> 1;
    v85 = v84 * v76;
    if (!v60[2])
    {
LABEL_49:
      v72 = &v82[v85];
      v69 = (v81 & 0x7FFFFFFFFFFFFFFFLL) - v84;

      v59 = v94;
      v5 = v116;
      v71 = v107;
      goto LABEL_50;
    }

    if (v70 < v60 || v82 >= v60 + v77 + v85)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v70 == v60)
      {
LABEL_48:
        v83[2] = 0;
        goto LABEL_49;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v83 = v60;
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACD8, &qword_225CD4290);
  v29 = *(v21 + 72);
  v30 = *(v21 + 80);
  v31 = (v30 + 32) & ~v30;
  v93 = v30;
  v91 = swift_allocObject();
  v32 = _swift_stdlib_malloc_size(v91);
  if (!v29)
  {
    goto LABEL_69;
  }

  if (v32 - v31 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_71;
  }

  v34 = v28;
  v35 = v19;
  v36 = 0;
  v37 = (v32 - v31) / v29;
  v38 = v91;
  *(v91 + 2) = v28;
  v38[3] = 2 * v37;
  v92 = v31;
  v122 = v38 + v31;
  v99 = v103 + 16;
  v111 = (v103 + 48);
  v112 = (v103 + 56);
  v109 = (v103 + 8);
  v110 = (v103 + 32);
  v105 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v28;
  v39 = a1 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
  v108 = *(v98 + 72);
  v113 = v19;
  while (1)
  {
    sub_2259D87C8(v39, v35);
    if (v36 != v119)
    {
      break;
    }

    v40 = 1;
    v41 = v119;
    v43 = v115;
    v42 = v116;
LABEL_16:
    v45 = v41;
    v46 = v121;
    (*v112)(v121, v40, 1, v42);
    sub_2259D88EC(v46, v43, &qword_27D73ACC8, &qword_225CD4280);
    if ((*v111)(v43, 1, v42) == 1)
    {
      goto LABEL_72;
    }

    v47 = v117;
    (*v110)(v117, v43, v42);
    v118(&v123, v47);
    (*v109)(v47, v42);
    v48 = v123;
    v49 = v124;
    v35 = v113;
    v50 = v114;
    v51 = (v114 + *(v120 + 48));
    sub_2259D8888(v113, v114);
    *v51 = v48;
    v51[1] = v49;
    v52 = v122;
    sub_2259D88EC(v50, v122, &qword_27D73ACD0, &qword_225CD4288);
    v122 = v52 + v29;
    v39 += v108;
    --v34;
    v36 = v45;
    if (!v34)
    {
      v5 = v116;
      v14 = v97;
      v27 = v96;
      v53 = v119;
      v54 = v91;
      goto LABEL_20;
    }
  }

  v42 = v116;
  if (v36 < v119)
  {
    (*(v103 + 16))(v121, v102 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v36, v116);
    v44 = __OFADD__(v36, 1);
    v41 = v36 + 1;
    v43 = v115;
    if (v44)
    {
      goto LABEL_60;
    }

    v40 = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
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
  result = sub_2259D882C(v113);
  __break(1u);
  return result;
}

uint64_t sub_2259D7EC8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_225CCE594();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_225CCE594();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_225CCCA44();
  if (a1)
  {
    a1 = sub_225CCCA74();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_225CCCA44() || !__OFSUB__(v5, sub_225CCCA74()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_225CCCA64();
  return sub_225CCE594();
}

void sub_2259D8074(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_225CCF4A4() == *(a4 + 36))
    {
      sub_225CCF4B4();
      sub_2259D8718(0, &qword_27D73AC58, 0x277CF39D8);
      swift_dynamicCast();
      sub_2259F1A58(v6);
      v5 = v4;

      if (v5)
      {
        sub_225CCF484();
        sub_225CCF4D4();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_225CCF114();
}

uint64_t sub_2259D81D8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_225CCF214();
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

BOOL sub_2259D8228(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2259CB710(a3, a4);
          return sub_225BEB284(v13, a2, a3, a4) & 1;
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

uint64_t sub_2259D8390(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_225CCCA94();
  swift_allocObject();
  result = sub_225CCCA34();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_225CCCF14();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2259D840C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_225CCCA94();
  swift_allocObject();
  result = sub_225CCCA34();
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

uint64_t sub_2259D8490(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADB0, &unk_225CDCF50);
  v10 = sub_2259D8B24(&qword_27D73ADB8, &qword_27D73ADB0, &unk_225CDCF50, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_225B3D3E8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_2259D856C(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_225CCCA94();
      swift_allocObject();
      sub_225CCCA84();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
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

unint64_t sub_2259D8654()
{
  result = qword_281059B70;
  if (!qword_281059B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B70);
  }

  return result;
}

unint64_t sub_2259D86A8()
{
  result = qword_27D73AC60;
  if (!qword_27D73AC60)
  {
    sub_2259D8718(255, &qword_27D73AC58, 0x277CF39D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AC60);
  }

  return result;
}

uint64_t sub_2259D8718(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2259D8764()
{
  result = qword_27D73AC70;
  if (!qword_27D73AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AC70);
  }

  return result;
}

uint64_t sub_2259D87C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashDigest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2259D882C(uint64_t a1)
{
  v2 = type metadata accessor for HashDigest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259D8888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashDigest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2259D88EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2259D8954(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_225CCE5F4();

    return sub_225CCE704();
  }

  return result;
}

uint64_t sub_2259D89F0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_225C0217C(result);
    }

    else
    {
      sub_225CCCA94();
      swift_allocObject();
      sub_225CCCA54();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
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

void *sub_2259D8A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2259D5238(sub_2259D8AF8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2259D8B18(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2259D8B24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t Certificate.data.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

void Certificate.wrapped.getter()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  if (!v2)
  {
    __break(1u);
  }
}

void Certificate.init(_:)(__SecCertificate *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = SecCertificateCopyData(a1);
  v5 = sub_225CCCFA4();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

void Certificate.description.getter()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  if (v2)
  {
    type metadata accessor for SecCertificate(0);
    sub_225CCE504();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2259D8CD0()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  return sub_225CCFC24();
}

uint64_t sub_2259D8D14()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  return sub_225CCFC24();
}

uint64_t sub_2259D8D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2259D8DF8(uint64_t a1)
{
  v2 = sub_2259D9400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2259D8E34(uint64_t a1)
{
  v2 = sub_2259D9400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Certificate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADC0, &qword_225CD4338);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v7, v8);
  sub_2259D9400();
  sub_225CCFCE4();
  v10 = v7;
  v11 = v8;
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Certificate.hashValue.getter()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t Certificate.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADD0, &qword_225CD4340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259D9400();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_2259D94A8();
    sub_225CCF6E4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2259D91C8()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_2259D921C()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

void sub_2259D9264()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_225CCCF74();
  v2 = SecCertificateCreateWithData(v0, v1);

  if (v2)
  {
    type metadata accessor for SecCertificate(0);
    sub_225CCE504();
  }

  else
  {
    __break(1u);
  }
}

void Array<A>.wrapped.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_225CCF394();
    v3 = *MEMORY[0x277CBECE8];
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_2259CB710(v5, *v4);
      sub_2259CB710(v5, v6);
      v7 = sub_225CCCF74();
      v8 = SecCertificateCreateWithData(v3, v7);

      if (!v8)
      {
        break;
      }

      v4 += 2;
      sub_2259BEF00(v5, v6);
      sub_2259BEF00(v5, v6);
      sub_225CCF364();
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2259D9400()
{
  result = qword_27D73ADC8;
  if (!qword_27D73ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADC8);
  }

  return result;
}

unint64_t sub_2259D9454()
{
  result = qword_27D742090;
  if (!qword_27D742090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742090);
  }

  return result;
}

unint64_t sub_2259D94A8()
{
  result = qword_27D7420A0;
  if (!qword_27D7420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7420A0);
  }

  return result;
}

char *_sSa13CoreIDVSharedAA11CertificateVRszlEySayACGSaySo03SecC3RefaGcfC_0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_225CCF144();
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v23 = MEMORY[0x277D84F90];
  result = sub_2259D52C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA6DA80](v5, a1);
        v7 = SecCertificateCopyData(v6);
        v8 = sub_225CCCFA4();
        v10 = v9;
        swift_unknownObjectRelease();

        v12 = *(v23 + 16);
        v11 = *(v23 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2259D52C4((v11 > 1), v12 + 1, 1);
        }

        ++v5;
        *(v23 + 16) = v12 + 1;
        v13 = v23 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v2 != v5);
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(a1 + v14);
        v16 = SecCertificateCopyData(v15);
        v17 = sub_225CCCFA4();
        v19 = v18;

        v21 = *(v23 + 16);
        v20 = *(v23 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2259D52C4((v20 > 1), v21 + 1, 1);
        }

        *(v23 + 16) = v21 + 1;
        v22 = v23 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v14 += 8;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_2259D96C0()
{
  result = qword_27D73ADD8;
  if (!qword_27D73ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADD8);
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

uint64_t sub_2259D9730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t sub_2259D9784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2259D97F4()
{
  result = qword_27D73ADE0;
  if (!qword_27D73ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADE0);
  }

  return result;
}

unint64_t sub_2259D984C()
{
  result = qword_27D73ADE8;
  if (!qword_27D73ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADE8);
  }

  return result;
}

unint64_t sub_2259D98A4()
{
  result = qword_27D73ADF0;
  if (!qword_27D73ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73ADF0);
  }

  return result;
}

CoreIDVShared::COSEMACValidator __swiftcall COSEMACValidator.init(errorCodeInvalidMAC:errorCodeInvalidPublicKey:errorCodeUnknownAlgorithm:)(CoreIDVShared::DIPError::Code errorCodeInvalidMAC, CoreIDVShared::DIPError::Code errorCodeInvalidPublicKey, CoreIDVShared::DIPError::Code errorCodeUnknownAlgorithm)
{
  v4 = *errorCodeInvalidPublicKey;
  v5 = *errorCodeUnknownAlgorithm;
  *v3 = *errorCodeInvalidMAC;
  v3[1] = v4;
  v3[2] = v5;
  result.errorCodeInvalidMAC = errorCodeInvalidMAC;
  return result;
}

uint64_t COSEMACValidator.validateMAC(_:deviceKey:deviceAuthenticationBytes:ephemeralReaderKey:sessionTranscript:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v160 = a6;
  v150 = a5;
  v141 = a4;
  v140 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v131 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ADF8, &qword_225CD45F8);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v131 - v10;
  v143 = sub_225CCDC44();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v146 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_225CCDC04();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v149 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_225CCDF14();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v153 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_225CCDEA4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v159 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCE164();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCDBA4();
  v156 = *(v19 - 8);
  v157 = v19;
  MEMORY[0x28223BE20](v19);
  v158 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v161) = *v6;
  v21 = v6[1];
  v22 = v6[2];
  v23 = COSEKey.publicKeyData.getter();
  if (v24 >> 60 == 15)
  {
    v160 = 0x8000000225D15D10;
    v161 = 0x8000000225D15CE0;
    v25 = MEMORY[0x277D84F90];
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v9, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v9, 1, v29);
    sub_2259DB318(v9);
    if (!v29)
    {
      v21 = 23;
    }

    v31 = sub_225B2C374(v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = v31;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v162);

    v33 = v162;
    v34 = sub_225B29AA0(0, 1, 1, v25);
    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_225B29AA0((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[56 * v36];
    *(v37 + 4) = 0xD00000000000002ALL;
    *(v37 + 5) = 0x8000000225D15CB0;
    v38 = v161;
    *(v37 + 6) = 0xD000000000000024;
    *(v37 + 7) = v38;
    v39 = v160;
    *(v37 + 8) = 0xD000000000000058;
    *(v37 + 9) = v39;
    *(v37 + 10) = 43;
    *v28 = v21;
    *(v28 + 8) = v34;
    *(v28 + 16) = 0xD00000000000002ALL;
    *(v28 + 24) = 0x8000000225D15CB0;
    *(v28 + 32) = v33;
    *(v28 + 40) = 0;
    return swift_willThrow();
  }

  v136 = v9;
  v154 = v23;
  v155 = v24;
  if (sub_225CCD304() != 5)
  {
    v162 = 0;
    v163 = 0xE000000000000000;
    sub_225CCF204();

    v162 = 0xD00000000000002FLL;
    v163 = 0x8000000225D15D70;
    v167 = sub_225CCD304();
    v59 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v59);

    v61 = v162;
    v60 = v163;
    v161 = 0x8000000225D15CE0;
    v159 = 0x8000000225D15D10;
    v62 = MEMORY[0x277D84F90];
    v63 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v160 = swift_allocError();
    v65 = v64;
    v66 = sub_225CCE954();
    v67 = *(v66 - 8);
    v68 = v136;
    (*(v67 + 56))(v136, 1, 1, v66);
    LODWORD(v66) = (*(v67 + 48))(v68, 1, v66);
    sub_2259DB318(v68);
    if (v66)
    {
      v69 = v22;
    }

    else
    {
      v69 = 23;
    }

    v70 = sub_225B2C374(v62);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v70;
    sub_225B2C4A0(v63, sub_225B2AC40, 0, v71, &v162);

    v72 = v162;
    v73 = sub_225B29AA0(0, 1, 1, v62);
    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_225B29AA0((v74 > 1), v75 + 1, 1, v73);
    }

    *(v73 + 2) = v75 + 1;
    v76 = &v73[56 * v75];
    *(v76 + 4) = v61;
    *(v76 + 5) = v60;
    v77 = v161;
    *(v76 + 6) = 0xD000000000000024;
    *(v76 + 7) = v77;
    v78 = v159;
    *(v76 + 8) = 0xD000000000000058;
    *(v76 + 9) = v78;
    *(v76 + 10) = 49;
    *v65 = v69;
    *(v65 + 8) = v73;
    *(v65 + 16) = v61;
    *(v65 + 24) = v60;
    *(v65 + 32) = v72;
    *(v65 + 40) = 0;
    goto LABEL_21;
  }

  v41 = sub_225CCD4B4();
  if (v42 >> 60 == 15)
  {
    v160 = 0x8000000225D15CE0;
    v43 = MEMORY[0x277D84F90];
    v44 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v46 = v45;
    v47 = sub_225CCE954();
    v48 = *(v47 - 8);
    v49 = v136;
    (*(v48 + 56))(v136, 1, 1, v47);
    LODWORD(v47) = (*(v48 + 48))(v49, 1, v47);
    sub_2259DB318(v49);
    if (v47)
    {
      v50 = v161;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v43);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v51;
    sub_225B2C4A0(v44, sub_225B2AC40, 0, v52, &v162);

    v53 = v162;
    v54 = sub_225B29AA0(0, 1, 1, v43);
    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[56 * v56];
    *(v57 + 4) = 0xD000000000000022;
    *(v57 + 5) = 0x8000000225D15DA0;
    v58 = v160;
    *(v57 + 6) = 0xD000000000000024;
    *(v57 + 7) = v58;
    *(v57 + 8) = 0xD000000000000058;
    *(v57 + 9) = 0x8000000225D15D10;
    *(v57 + 10) = 55;
    *v46 = v50;
    *(v46 + 8) = v54;
    *(v46 + 16) = 0xD000000000000022;
    *(v46 + 24) = 0x8000000225D15DA0;
    *(v46 + 32) = v53;
    *(v46 + 40) = 0;
LABEL_21:
    swift_willThrow();
    return sub_2259B97A8(v154, v155);
  }

  v79 = v42;
  v135 = v41;
  sub_225CCD424();
  swift_allocObject();
  v80 = sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE00, &unk_225CD4600);
  sub_2259D8B24(&qword_27D73AE08, &qword_27D73AE00, &unk_225CD4600, &protocol conformance descriptor for CBOREncodedCBOR<A>);
  v81 = v169;
  v82 = sub_225CCD3F4();
  if (v81)
  {

    sub_2259B97A8(v135, v79);
    return sub_2259B97A8(v154, v155);
  }

  v84 = v82;
  v85 = v83;
  v169 = v79;
  v86 = sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_225CCDB94();
  sub_2259CB710(v84, v85);
  sub_2259DB138(v84, v85, v18);
  v160 = 0;
  sub_2259BEF00(v84, v85);
  v87 = v158;
  sub_225CCDB84();
  (*(v16 + 8))(v18, v15);
  v162 = v154;
  v163 = v155;
  sub_2259CB710(v154, v155);
  v88 = v160;
  sub_225CCDE74();
  if (v88)
  {
    (*(v156 + 8))(v87, v157);
    sub_2259B97A8(v154, v155);

    sub_2259BEF00(v84, v85);
    return sub_2259B97A8(v135, v169);
  }

  else
  {
    v131 = v86;
    v132 = v84;
    v133 = v85;
    v134 = v80;
    v162 = ISO18013SessionCryptarch.PrivateKey.rawRepresentation.getter();
    v163 = v89;
    sub_225CCDEF4();
    v90 = v156;
    v91 = v157;
    sub_225CCDEB4();
    *(&v164 + 1) = v91;
    v165 = sub_2259DB380(&qword_27D73AE18, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v92 = __swift_allocate_boxed_opaque_existential_1(&v162);
    (*(v90 + 16))(v92, v87, v91);
    __swift_project_boxed_opaque_existential_1(&v162, *(&v164 + 1));
    sub_225CCCB84();
    v93 = v167;
    v94 = v168;
    __swift_destroy_boxed_opaque_existential_0(&v162);
    v162 = v93;
    v163 = v94;
    v167 = sub_2259D25B0(0x79654B63614D45, 0xE700000000000000);
    v168 = v95;
    sub_2259DB42C();
    sub_225CCDBF4();
    sub_2259BEF00(v167, v168);
    sub_2259BEF00(v162, v163);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = xmmword_225CD45E0;
    v97 = sub_225B2C828(inited);
    swift_setDeallocating();
    v162 = v97;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
    sub_2259DB480();
    v98 = sub_225CCD3F4();
    v100 = v99;

    v162 = v98;
    v163 = v100;
    v164 = xmmword_225CD4150;
    v165 = v140;
    v166 = v141;
    sub_2259CB710(v140, v141);
    sub_2259DB4FC();
    v101 = sub_225CCD3F4();
    v160 = 0;
    v103 = v102;
    v104 = v101;
    v105 = v164;
    v107 = v165;
    v106 = v166;
    sub_2259BEF00(v162, v163);
    sub_2259BEF00(v105, *(&v105 + 1));
    sub_2259BEF00(v107, v106);
    v162 = v104;
    v163 = v103;
    v108 = v138;
    sub_225CCDD94();
    v109 = v135;
    v110 = v169;
    v162 = v135;
    v163 = v169;
    sub_2259D8B24(&qword_27D73AE48, &qword_27D73ADF8, &qword_225CD45F8, MEMORY[0x277CC53C8]);
    v111 = v139;
    if (sub_225CCDCB4())
    {
      sub_2259B97A8(v109, v110);
      sub_2259BEF00(v104, v103);
      sub_2259BEF00(v132, v133);

      sub_2259B97A8(v154, v155);
      (*(v137 + 8))(v108, v111);
      (*(v142 + 8))(v146, v143);
      (*(v144 + 8))(v149, v145);
      (*(v147 + 8))(v153, v148);
      (*(v151 + 8))(v159, v152);
      return (*(v156 + 8))(v158, v157);
    }

    else
    {
      v141 = v104;
      v150 = v103;
      v140 = 0x8000000225D15CE0;
      v131 = 0x8000000225D15D10;
      v112 = MEMORY[0x277D84F90];
      v113 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v115 = v114;
      v116 = sub_225CCE954();
      v117 = *(v116 - 8);
      v118 = v136;
      (*(v117 + 56))(v136, 1, 1, v116);
      LODWORD(v116) = (*(v117 + 48))(v118, 1, v116);
      sub_2259DB318(v118);
      if (v116)
      {
        v119 = v161;
      }

      else
      {
        v119 = 23;
      }

      v120 = sub_225B2C374(v112);
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v162 = v120;
      sub_225B2C4A0(v113, sub_225B2AC40, 0, v121, &v162);

      v122 = v162;
      v123 = sub_225B29AA0(0, 1, 1, v112);
      v125 = *(v123 + 2);
      v124 = *(v123 + 3);
      if (v125 >= v124 >> 1)
      {
        v123 = sub_225B29AA0((v124 > 1), v125 + 1, 1, v123);
      }

      v126 = v156;
      v127 = v157;
      *(v123 + 2) = v125 + 1;
      v128 = &v123[56 * v125];
      *(v128 + 4) = 0xD000000000000037;
      *(v128 + 5) = 0x8000000225D15DD0;
      v129 = v140;
      *(v128 + 6) = 0xD000000000000024;
      *(v128 + 7) = v129;
      v130 = v131;
      *(v128 + 8) = 0xD000000000000058;
      *(v128 + 9) = v130;
      *(v128 + 10) = 82;
      *v115 = v119;
      *(v115 + 8) = v123;
      *(v115 + 16) = 0xD000000000000037;
      *(v115 + 24) = 0x8000000225D15DD0;
      *(v115 + 32) = v122;
      *(v115 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v135, v169);
      sub_2259BEF00(v141, v150);
      sub_2259BEF00(v132, v133);

      sub_2259B97A8(v154, v155);
      (*(v137 + 8))(v138, v139);
      (*(v142 + 8))(v146, v143);
      (*(v144 + 8))(v149, v145);
      (*(v147 + 8))(v153, v148);
      (*(v151 + 8))(v159, v152);
      return (*(v126 + 8))(v158, v127);
    }
  }
}

uint64_t sub_2259DB138(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_225CCE164();
      sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_225CCDB74();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_225A8F568(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_225A8F568(v5, v6);
  }

  sub_225CCE164();
  sub_2259DB380(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_225CCDB74();
}

uint64_t sub_2259DB318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259DB380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2259DB42C()
{
  result = qword_27D73AE20;
  if (!qword_27D73AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE20);
  }

  return result;
}

unint64_t sub_2259DB480()
{
  result = qword_27D73AE38;
  if (!qword_27D73AE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AE30, &qword_225CD4610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE38);
  }

  return result;
}

unint64_t sub_2259DB4FC()
{
  result = qword_27D73AE40;
  if (!qword_27D73AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE40);
  }

  return result;
}

uint64_t __swift_memcpy6_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for COSEMACValidator(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB62 && *(a1 + 6))
  {
    return (*a1 + 64354);
  }

  v3 = *a1;
  v4 = v3 >= 0x49F;
  v5 = v3 - 1183;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for COSEMACValidator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB61)
  {
    *(result + 4) = 0;
    *result = a2 - 64354;
    if (a3 >= 0xFB62)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB62)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1182;
    }
  }

  return result;
}

CoreIDVShared::COSESignatureValidator __swiftcall COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)(CoreIDVShared::DIPError::Code errorCodeUnknownAlgorithm, CoreIDVShared::DIPError::Code errorCodeInvalidPublicKey, CoreIDVShared::DIPError::Code errorCodeMisformattedSignature, CoreIDVShared::DIPError::Code errorCodeInvalidSignature)
{
  v5 = *errorCodeInvalidPublicKey;
  v6 = *errorCodeMisformattedSignature;
  v7 = *errorCodeInvalidSignature;
  *v4 = *errorCodeUnknownAlgorithm;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  result.errorCodeUnknownAlgorithm = errorCodeUnknownAlgorithm;
  return result;
}

uint64_t COSESignatureValidator.validateSignature(of:with:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v71 - v3;
  v5 = *v0;
  v6 = SecCertificateRef.rawECPublicKeyData()();
  if (v7 >> 60 != 15)
  {
    v74 = v6;
    v75 = v7;
    SecCertificateRef.publicKeyAlgorithm()();
    v25 = v77[0];
    if (LOBYTE(v77[0]) == 5)
    {
      v26 = 0x8000000225D15E90;
      v72 = 0x8000000225D15E70;
      v73 = 0x8000000225D15E40;
      v27 = MEMORY[0x277D84F90];
      v28 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v30 = v29;
      v31 = sub_225CCE954();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v4, 1, 1, v31);
      LODWORD(v31) = (*(v32 + 48))(v4, 1, v31);
      sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
      if (v31)
      {
        v33 = 1021;
      }

      else
      {
        v33 = 23;
      }

      v34 = sub_225B2C374(v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v34;
      sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v77);

      v36 = v77[0];
      v37 = sub_225B29AA0(0, 1, 1, v27);
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[56 * v39];
      *(v40 + 4) = 0xD00000000000002FLL;
      *(v40 + 5) = 0x8000000225D15E90;
      v41 = v73;
      *(v40 + 6) = 0xD00000000000002ALL;
      *(v40 + 7) = v41;
      v42 = v72;
      *(v40 + 8) = 0xD00000000000001BLL;
      *(v40 + 9) = v42;
      *(v40 + 10) = 47;
      *v30 = v33;
      *(v30 + 8) = v37;
      *(v30 + 16) = 0xD00000000000002FLL;
    }

    else
    {
      v43 = sub_225CCD324();
      if (v44 >> 60 != 15)
      {
        v59 = v43;
        v60 = v44;
        v73 = sub_225CCD304();
        v61 = MEMORY[0x22AA6BB50]();
        v63 = v62;
        sub_225CCD424();
        swift_allocObject();
        sub_2259CB710(v59, v60);
        sub_225CCD414();
        v77[0] = v61;
        v77[1] = v63;
        v78 = xmmword_225CD4150;
        v79 = v59;
        v80 = v60;
        sub_2259E44EC();
        v64 = sub_225CCD3F4();
        if (v1)
        {
          sub_2259B97A8(v59, v60);

          sub_2259B97A8(v74, v75);
          sub_2259BEF00(v61, v63);
          sub_2259BEF00(0, 0xC000000000000000);
          return sub_2259BEF00(v59, v60);
        }

        v71 = v64;
        v72 = v63;
        v66 = v65;

        v77[0] = v5;
        v67 = sub_225CCD334();
        v69 = v68;
        v76 = v25;
        v70 = v71;
        sub_2259DBE5C(v67, v68, v74, v75, &v76, v73, v71, v66);
        sub_2259B97A8(v59, v60);
        sub_2259BEF00(v67, v69);
        sub_2259BEF00(v70, v66);
        sub_2259BEF00(v61, v72);
        sub_2259BEF00(0, 0xC000000000000000);
        sub_2259BEF00(v59, v60);
        return sub_2259B97A8(v74, v75);
      }

      v26 = 0x8000000225D15EC0;
      v72 = 0x8000000225D15E70;
      v73 = 0x8000000225D15E40;
      v45 = MEMORY[0x277D84F90];
      v46 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v30 = v47;
      v48 = sub_225CCE954();
      v49 = *(v48 - 8);
      (*(v49 + 56))(v4, 1, 1, v48);
      LODWORD(v48) = (*(v49 + 48))(v4, 1, v48);
      sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
      if (v48)
      {
        v50 = 1024;
      }

      else
      {
        v50 = 23;
      }

      v51 = sub_225B2C374(v45);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v51;
      sub_225B2C4A0(v46, sub_225B2AC40, 0, v52, v77);

      v36 = v77[0];
      v53 = sub_225B29AA0(0, 1, 1, v45);
      v55 = *(v53 + 2);
      v54 = *(v53 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
      }

      *(v53 + 2) = v55 + 1;
      v56 = &v53[56 * v55];
      *(v56 + 4) = 0xD000000000000022;
      *(v56 + 5) = 0x8000000225D15EC0;
      v57 = v73;
      *(v56 + 6) = 0xD00000000000002ALL;
      *(v56 + 7) = v57;
      v58 = v72;
      *(v56 + 8) = 0xD00000000000001BLL;
      *(v56 + 9) = v58;
      *(v56 + 10) = 51;
      *v30 = v50;
      *(v30 + 8) = v53;
      *(v30 + 16) = 0xD000000000000022;
    }

    *(v30 + 24) = v26;
    *(v30 + 32) = v36;
    *(v30 + 40) = 0;
    swift_willThrow();
    return sub_2259B97A8(v74, v75);
  }

  v74 = 0x8000000225D15E70;
  v75 = 0x8000000225D15E40;
  v8 = MEMORY[0x277D84F90];
  v9 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v11 = v10;
  v12 = sub_225CCE954();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v4, 1, 1, v12);
  LODWORD(v12) = (*(v13 + 48))(v4, 1, v12);
  sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
  if (v12)
  {
    v14 = 1021;
  }

  else
  {
    v14 = 23;
  }

  v15 = sub_225B2C374(v8);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v77[0] = v15;
  sub_225B2C4A0(v9, sub_225B2AC40, 0, v16, v77);

  v17 = v77[0];
  v18 = sub_225B29AA0(0, 1, 1, v8);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_225B29AA0((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[56 * v20];
  *(v21 + 4) = 0xD00000000000002ALL;
  *(v21 + 5) = 0x8000000225D15E10;
  v22 = v75;
  *(v21 + 6) = 0xD00000000000002ALL;
  *(v21 + 7) = v22;
  v23 = v74;
  *(v21 + 8) = 0xD00000000000001BLL;
  *(v21 + 9) = v23;
  *(v21 + 10) = 43;
  *v11 = v14;
  *(v11 + 8) = v18;
  *(v11 + 16) = 0xD00000000000002ALL;
  *(v11 + 24) = 0x8000000225D15E10;
  *(v11 + 32) = v17;
  *(v11 + 40) = 0;
  return swift_willThrow();
}

void sub_2259DBE5C(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v74 = a6;
  v71 = a3;
  v72 = a4;
  v69 = a1;
  v70 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v61 - v13;
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a5;
  v73 = *v8;
  LODWORD(v16) = v8[2];
  v66 = v8[1];
  v67 = v16;
  v68 = v8[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  (*(v15 + 16))(v17, &v19[v20], v14);
  os_unfair_lock_unlock(&v19[v21]);
  v22 = sub_225CCD934();
  v23 = v14;
  v24 = sub_225CCED04();
  if (os_log_type_enabled(v22, v24))
  {
    v62 = v23;
    v63 = a7;
    v64 = a8;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v75 = v26;
    *v25 = 136315394;
    v27 = 0xE700000000000000;
    v28 = 0x313235505F4345;
    v29 = 0xE800000000000000;
    v30 = 0x39313535325F4445;
    if (v18 != 3)
    {
      v30 = 0x3834345F4445;
      v29 = 0xE600000000000000;
    }

    if (v18 != 2)
    {
      v28 = v30;
      v27 = v29;
    }

    v31 = 0x343833505F4345;
    if (!v18)
    {
      v31 = 0x363532505F4345;
    }

    if (v18 <= 1)
    {
      v32 = v31;
    }

    else
    {
      v32 = v28;
    }

    if (v18 <= 1)
    {
      v33 = 0xE700000000000000;
    }

    else
    {
      v33 = v27;
    }

    v34 = sub_2259BE198(v32, v33, &v75);

    *(v25 + 4) = v34;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v74;
    _os_log_impl(&dword_2259A7000, v22, v24, "COSESignatureValidator Validating RFC 8152 signature with public key algorithm %s, signature algorithm %ld", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA6F950](v26, -1, -1);
    MEMORY[0x22AA6F950](v25, -1, -1);

    (*(v15 + 8))(v17, v62);
    a7 = v63;
    a8 = v64;
    if (v18 > 1)
    {
LABEL_17:
      if (v18 == 2)
      {
        if (v74 == -36)
        {
          LOWORD(v75) = v73;
          WORD1(v75) = v66;
          WORD2(v75) = v67;
          HIWORD(v75) = v68;
          sub_2259E0C88(v69, v70, v71, v72, a7, a8);
          return;
        }
      }

      else if (v18 == 3)
      {
        if (v74 == -8)
        {
          LOWORD(v75) = v73;
          WORD1(v75) = v66;
          WORD2(v75) = v67;
          HIWORD(v75) = v68;
          sub_2259E2298(v69, v70, v71, v72, a7, a8);
          return;
        }
      }

      else if (v74 == -8)
      {
        LOWORD(v75) = v73;
        WORD1(v75) = v66;
        WORD2(v75) = v67;
        HIWORD(v75) = v68;
        sub_2259E3148(v69, v70, v71, v72, a7, a8);
        return;
      }

      goto LABEL_31;
    }
  }

  else
  {

    (*(v15 + 8))(v17, v23);
    if (v18 > 1)
    {
      goto LABEL_17;
    }
  }

  if (v18)
  {
    if (v74 == -35)
    {
      LOWORD(v75) = v73;
      WORD1(v75) = v66;
      WORD2(v75) = v67;
      HIWORD(v75) = v68;
      sub_2259DF678(v69, v70, v71, v72, a7, a8);
      return;
    }
  }

  else if (v74 == -7)
  {
    LOWORD(v75) = v73;
    WORD1(v75) = v66;
    WORD2(v75) = v67;
    HIWORD(v75) = v68;
    sub_2259DE068(v69, v70, v71, v72, a7, a8);
    return;
  }

LABEL_31:
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000030, 0x8000000225D15FF0);
  v35 = 0xE700000000000000;
  v36 = 0x313235505F4345;
  v37 = 0xE800000000000000;
  v38 = 0x39313535325F4445;
  if (v18 != 3)
  {
    v38 = 0x3834345F4445;
    v37 = 0xE600000000000000;
  }

  if (v18 != 2)
  {
    v36 = v38;
    v35 = v37;
  }

  v39 = 0x343833505F4345;
  if (!v18)
  {
    v39 = 0x363532505F4345;
  }

  if (v18 <= 1)
  {
    v40 = v39;
  }

  else
  {
    v40 = v36;
  }

  if (v18 <= 1)
  {
    v41 = 0xE700000000000000;
  }

  else
  {
    v41 = v35;
  }

  MEMORY[0x22AA6CE70](v40, v41);

  MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D16030);
  v77 = v74;
  type metadata accessor for COSEAlgorithm(0);
  sub_225CCF434();
  v43 = v75;
  v42 = v76;
  v74 = 0x8000000225D15E40;
  v72 = 0x8000000225D16050;
  v44 = MEMORY[0x277D84F90];
  v45 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v47 = v46;
  v48 = sub_225CCE954();
  v49 = *(v48 - 8);
  v50 = v65;
  (*(v49 + 56))(v65, 1, 1, v48);
  LODWORD(v48) = (*(v49 + 48))(v50, 1, v48);
  sub_2259CB640(v50, &unk_27D73B050, &unk_225CD3AD0);
  if (v48)
  {
    v51 = v73;
  }

  else
  {
    v51 = 23;
  }

  v52 = sub_225B2C374(v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v52;
  sub_225B2C4A0(v45, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v75);

  v54 = v75;
  v55 = sub_225B29AA0(0, 1, 1, v44);
  v57 = *(v55 + 2);
  v56 = *(v55 + 3);
  if (v57 >= v56 >> 1)
  {
    v55 = sub_225B29AA0((v56 > 1), v57 + 1, 1, v55);
  }

  *(v55 + 2) = v57 + 1;
  v58 = &v55[56 * v57];
  *(v58 + 4) = v43;
  *(v58 + 5) = v42;
  v59 = v74;
  *(v58 + 6) = 0xD00000000000002ALL;
  *(v58 + 7) = v59;
  v60 = v72;
  *(v58 + 8) = 0xD00000000000005DLL;
  *(v58 + 9) = v60;
  *(v58 + 10) = 189;
  *v47 = v51;
  *(v47 + 8) = v55;
  *(v47 + 16) = v43;
  *(v47 + 24) = v42;
  *(v47 + 32) = v54;
  *(v47 + 40) = 0;
  swift_willThrow();
}

uint64_t COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = *a5;
  v13 = *v8;
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = a6;
  v15 = sub_225B2C828(inited);
  swift_setDeallocating();
  v31 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
  sub_2259DB480();
  v16 = sub_225CCD3F4();
  if (v9)
  {
  }

  else
  {
    v19 = v16;
    v20 = v17;
    v24 = a1;

    v32 = v20;
    v33 = xmmword_225CD4150;
    v34 = a7;
    v35 = a8;
    sub_2259CB710(a7, a8);
    sub_2259E44EC();
    v31 = v13;
    v30 = v12;
    v21 = sub_225CCD3F4();
    v23 = v22;
    sub_2259DBE5C(v24, a2, a3, a4, &v30, a6, v21, v22);

    sub_2259BEF00(v21, v23);
    sub_2259BEF00(v19, v20);
    sub_2259BEF00(0, 0xC000000000000000);
    return sub_2259BEF00(a7, a8);
  }
}

void COSESignatureValidator.validateReaderAuth<A>(_:authenticationStructure:encoder:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v175 = a6;
  v176 = a3;
  v183 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v177 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v181 = &v164 - v13;
  v184 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v179 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v164 - v16;
  v18 = sub_225CCD954();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v172 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v185 = &v164 - v22;
  v23 = *v6;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  v27 = *(v19 + 16);
  v169 = v25;
  v168 = v19 + 16;
  v167 = v27;
  v27(v185, &v24[v25], v18);
  v171 = v24;
  v170 = v26;
  os_unfair_lock_unlock(&v24[v26]);
  v28 = *(v184 + 16);
  v173 = a2;
  v28(v17, a2, a4);
  v29 = a4;
  v30 = sub_225CCD934();
  v31 = sub_225CCED04();
  v32 = os_log_type_enabled(v30, v31);
  v180 = v19;
  v174 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v178 = v18;
    v34 = v33;
    v35 = swift_slowAlloc();
    v187 = v35;
    *v34 = 136315138;
    v28(v179, v17, v29);
    v36 = sub_225CCE504();
    v38 = v37;
    (*(v184 + 8))(v17, v29);
    v39 = sub_2259BE198(v36, v38, &v187);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_2259A7000, v30, v31, "Verifying reader signature with authentication structure %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA6F950](v35, -1, -1);
    v40 = v34;
    v18 = v178;
    MEMORY[0x22AA6F950](v40, -1, -1);

    v41 = *(v180 + 8);
  }

  else
  {

    (*(v184 + 8))(v17, v29);
    v41 = *(v19 + 8);
  }

  v41(v185, v18);
  v42 = sub_225CCD334();
  v44 = v43;
  v45 = sub_225CCD344();
  if (!v45)
  {
    goto LABEL_11;
  }

  if (!v45[2])
  {

LABEL_11:
    v185 = v42;
    v184 = v44;
    v183 = 0x8000000225D15F30;
    v51 = MEMORY[0x277D84F90];
    v52 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v53 = swift_allocError();
    v55 = v54;
    v56 = sub_225CCE954();
    v57 = *(v56 - 8);
    v58 = v181;
    (*(v57 + 56))(v181, 1, 1, v56);
    LODWORD(v56) = (*(v57 + 48))(v58, 1, v56);
    sub_2259CB640(v58, &unk_27D73B050, &unk_225CD3AD0);
    if (v56)
    {
      v59 = 437;
    }

    else
    {
      v59 = 23;
    }

    v60 = sub_225B2C374(v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = v60;
    sub_225B2C4A0(v52, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v187);

    v62 = v187;
    v63 = sub_225B29AA0(0, 1, 1, v51);
    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v63);
    }

    *(v63 + 2) = v65 + 1;
    v66 = &v63[56 * v65];
    *(v66 + 4) = 0xD000000000000031;
    *(v66 + 5) = 0x8000000225D15EF0;
    *(v66 + 6) = 0xD00000000000002ALL;
    *(v66 + 7) = 0x8000000225D15E40;
    v67 = v183;
    *(v66 + 8) = 0xD000000000000036;
    *(v66 + 9) = v67;
    *(v66 + 10) = 122;
    *v55 = v59;
    *(v55 + 8) = v63;
    *(v55 + 16) = 0xD000000000000031;
    *(v55 + 24) = 0x8000000225D15EF0;
    *(v55 + 32) = v62;
    *(v55 + 40) = 0;
    v50 = v53;
    swift_willThrow();
    sub_2259BEF00(v185, v184);
    v183 = 0;
    goto LABEL_17;
  }

  v178 = v18;
  v46 = v45[4];
  v47 = v45[5];
  sub_2259CB710(v46, v47);

  sub_2259CB710(v46, v47);
  v48 = v182;
  v49 = decodeCertificate(fromDER:)(v46, v47);
  if (v48)
  {
    sub_2259BEF00(v42, v44);
    sub_2259BEF00(v46, v47);
    sub_2259BEF00(v46, v47);
    v183 = 0;
    v50 = v48;
  }

  else
  {
    v98 = v49;
    sub_2259BEF00(v46, v47);
    sub_2259BEF00(v46, v47);
    v99 = SecCertificateRef.rawECPublicKeyData()();
    v185 = v42;
    if (v100 >> 60 == 15)
    {
      v182 = v98;
      v184 = v44;
      v183 = 0x8000000225D15E40;
      v179 = 0x8000000225D15F30;
      v101 = MEMORY[0x277D84F90];
      v102 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v180 = swift_allocError();
      v104 = v103;
      v105 = sub_225CCE954();
      v106 = *(v105 - 8);
      v107 = v181;
      (*(v106 + 56))(v181, 1, 1, v105);
      LODWORD(v105) = (*(v106 + 48))(v107, 1, v105);
      sub_2259CB640(v107, &unk_27D73B050, &unk_225CD3AD0);
      if (v105)
      {
        v108 = 438;
      }

      else
      {
        v108 = 23;
      }

      v109 = sub_225B2C374(v101);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v109;
      sub_225B2C4A0(v102, sub_225B2AC40, 0, v110, &v187);

      v111 = v187;
      v112 = sub_225B29AA0(0, 1, 1, v101);
      v114 = *(v112 + 2);
      v113 = *(v112 + 3);
      if (v114 >= v113 >> 1)
      {
        v112 = sub_225B29AA0((v113 > 1), v114 + 1, 1, v112);
      }

      v115 = v184;
      *(v112 + 2) = v114 + 1;
      v116 = &v112[56 * v114];
      *(v116 + 4) = 0xD000000000000022;
      *(v116 + 5) = 0x8000000225D15F90;
      v117 = v183;
      *(v116 + 6) = 0xD00000000000002ALL;
      *(v116 + 7) = v117;
      v118 = v179;
      *(v116 + 8) = 0xD000000000000036;
      *(v116 + 9) = v118;
      *(v116 + 10) = 125;
      *v104 = v108;
      *(v104 + 8) = v112;
      *(v104 + 16) = 0xD000000000000022;
      *(v104 + 24) = 0x8000000225D15F90;
      *(v104 + 32) = v111;
      *(v104 + 40) = 0;
      v50 = v180;
      swift_willThrow();
    }

    else
    {
      v179 = v99;
      v166 = v100;
      SecCertificateRef.publicKeyAlgorithm()();
      v119 = v187;
      if (v187 != 5)
      {
        v137 = sub_225CCD3F4();
        v139 = v138;
        LODWORD(v165) = v119;
        v187 = v137;
        v188 = v138;
        v140 = v137;
        sub_2259CB710(v137, v138);
        sub_2259CB710(v140, v139);
        sub_2259D9454();
        v141 = sub_225CCD3E4();
        v143 = v142;
        v182 = v98;
        v184 = v44;
        v144 = v141;
        sub_2259BEF00(v187, v188);
        sub_2259CB710(v144, v143);
        v176 = v144;
        sub_2259BEF00(v144, v143);
        v175 = v140;
        sub_2259BEF00(v140, v139);
        v181 = v143;
        v145 = sub_225CCD304();
        sub_225CCD424();
        swift_allocObject();
        sub_225CCD414();
        v183 = v139;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 1;
        *(inited + 40) = v145;
        v147 = sub_225B2C828(inited);
        swift_setDeallocating();
        v187 = v147;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
        sub_2259DB480();
        v148 = sub_225CCD3F4();
        v150 = v149;
        v174 = v145;

        v187 = v148;
        v188 = v150;
        v189 = xmmword_225CD4150;
        v190 = v176;
        v191 = v181;
        sub_2259CB710(v176, v181);
        sub_2259E44EC();
        v151 = sub_225CCD3F4();
        v164 = v148;
        v173 = v150;
        v187 = v23;
        LOBYTE(v186) = v165;
        v152 = v184;
        v153 = v174;
        v165 = v151;
        v174 = v154;
        sub_2259DBE5C(v185, v184, v179, v166, &v186, v153, v151, v154);
        v155 = v152;

        sub_2259BEF00(v165, v174);
        sub_2259BEF00(v164, v173);
        sub_2259BEF00(0, 0xC000000000000000);
        v156 = v176;
        v157 = v181;
        sub_2259BEF00(v176, v181);
        v158 = v171;
        v159 = v170;
        os_unfair_lock_lock(&v171[v170]);
        v160 = v172;
        v167(v172, &v158[v169], v178);
        os_unfair_lock_unlock(&v158[v159]);
        v161 = sub_225CCD934();
        v162 = sub_225CCED04();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&dword_2259A7000, v161, v162, "COSESignatureValidator reader auth successfully validated", v163, 2u);
          MEMORY[0x22AA6F950](v163, -1, -1);
          sub_2259BEF00(v185, v155);
          sub_2259B97A8(v179, v166);

          sub_2259BEF00(v156, v157);
          sub_2259BEF00(v175, v183);
        }

        else
        {
          sub_2259BEF00(v185, v155);
          sub_2259BEF00(v175, v183);
          sub_2259B97A8(v179, v166);

          sub_2259BEF00(v156, v157);
        }

        v41(v160, v178);
        return;
      }

      v182 = v98;
      v184 = v44;
      v183 = 0x8000000225D15E40;
      v178 = 0x8000000225D15F30;
      v120 = MEMORY[0x277D84F90];
      v121 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v180 = swift_allocError();
      v123 = v122;
      v124 = sub_225CCE954();
      v125 = *(v124 - 8);
      v126 = v181;
      (*(v125 + 56))(v181, 1, 1, v124);
      LODWORD(v124) = (*(v125 + 48))(v126, 1, v124);
      sub_2259CB640(v126, &unk_27D73B050, &unk_225CD3AD0);
      if (v124)
      {
        v127 = 438;
      }

      else
      {
        v127 = 23;
      }

      v128 = sub_225B2C374(v120);
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v128;
      sub_225B2C4A0(v121, sub_225B2AC40, 0, v129, &v187);

      v130 = v187;
      v131 = sub_225B29AA0(0, 1, 1, v120);
      v133 = *(v131 + 2);
      v132 = *(v131 + 3);
      if (v133 >= v132 >> 1)
      {
        v131 = sub_225B29AA0((v132 > 1), v133 + 1, 1, v131);
      }

      v115 = v184;
      *(v131 + 2) = v133 + 1;
      v134 = &v131[56 * v133];
      *(v134 + 4) = 0xD000000000000025;
      *(v134 + 5) = 0x8000000225D15FC0;
      v135 = v183;
      *(v134 + 6) = 0xD00000000000002ALL;
      *(v134 + 7) = v135;
      v136 = v178;
      *(v134 + 8) = 0xD000000000000036;
      *(v134 + 9) = v136;
      *(v134 + 10) = 128;
      *v123 = v127;
      *(v123 + 8) = v131;
      *(v123 + 16) = 0xD000000000000025;
      *(v123 + 24) = 0x8000000225D15FC0;
      *(v123 + 32) = v130;
      *(v123 + 40) = 0;
      v50 = v180;
      swift_willThrow();
      sub_2259B97A8(v179, v166);
    }

    sub_2259BEF00(v185, v115);
    v183 = 0;
  }

LABEL_17:
  v68 = v50;
  v69 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v185 = swift_allocError();
  v71 = v70;
  swift_getErrorValue();
  v72 = v192;
  v73 = v50;
  sub_225B21FAC(v72, &v187);

  v74 = v188;
  v184 = 0x8000000225D15F70;
  if (v188)
  {
    v75 = v50;
    v182 = v187;
    v180 = *(&v189 + 1);
    v181 = v189;
    v76 = v190;
    v50 = v191;
  }

  else
  {
    v187 = v50;
    v77 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v78 = v186;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v79 = swift_initStackObject();
      *(v79 + 16) = xmmword_225CD30F0;
      *(v79 + 32) = 20;
      v80 = [v78 code];
      v81 = MEMORY[0x277D83BF8];
      *(v79 + 64) = MEMORY[0x277D83B88];
      *(v79 + 72) = v81;
      *(v79 + 40) = v80;
      v76 = sub_225B2C374(v79);
      swift_setDeallocating();
      sub_2259CB640(v79 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v82 = v50;
      v182 = 0;
      v181 = 0;
      v180 = 0;
      v74 = MEMORY[0x277D84F90];
      v75 = v50;
    }

    else
    {
      v187 = v50;
      v83 = v50;
      v84 = sub_225CCE954();
      v85 = v50;
      v86 = v177;
      v87 = swift_dynamicCast();
      v88 = *(v84 - 8);
      (*(v88 + 56))(v86, v87 ^ 1u, 1, v84);
      LODWORD(v88) = (*(v88 + 48))(v86, 1, v84);
      sub_2259CB640(v86, &unk_27D73B050, &unk_225CD3AD0);
      if (v88)
      {
        v89 = 0;
      }

      else
      {
        v89 = 23;
      }

      v182 = v89;
      v74 = MEMORY[0x277D84F90];
      v76 = sub_225B2C374(MEMORY[0x277D84F90]);
      v90 = v85;
      v181 = 0xD00000000000001CLL;
      v180 = 0x8000000225D15F70;
      v75 = v85;
      v50 = v85;
    }
  }

  v91 = swift_isUniquelyReferenced_nonNull_native();
  v187 = v76;
  sub_225B2C4A0(v69, sub_225B2AC40, 0, v91, &v187);

  v92 = v187;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = sub_225B29AA0(0, *(v74 + 2) + 1, 1, v74);
  }

  v94 = *(v74 + 2);
  v93 = *(v74 + 3);
  if (v94 >= v93 >> 1)
  {
    v74 = sub_225B29AA0((v93 > 1), v94 + 1, 1, v74);
  }

  *(v74 + 2) = v94 + 1;
  v95 = &v74[56 * v94];
  v96 = v184;
  *(v95 + 4) = 0xD00000000000001CLL;
  *(v95 + 5) = v96;
  *(v95 + 6) = 0xD00000000000002ALL;
  *(v95 + 7) = 0x8000000225D15E40;
  *(v95 + 8) = 0xD000000000000036;
  *(v95 + 9) = 0x8000000225D15F30;
  *(v95 + 10) = 144;
  *v71 = v182;
  v97 = v181;
  *(v71 + 8) = v74;
  *(v71 + 16) = v97;
  *(v71 + 24) = v180;
  *(v71 + 32) = v92;
  *(v71 + 40) = v50;
  swift_willThrow();
}

void sub_2259DE068(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v166 = a5;
  v167 = a6;
  v185 = a4;
  v186 = a3;
  v177 = a1;
  v178 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v154 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v157 = &v152 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v152 - v14;
  MEMORY[0x28223BE20](v13);
  v156 = &v152 - v15;
  v16 = sub_225CCE164();
  v164 = *(v16 - 8);
  v165 = v16;
  MEMORY[0x28223BE20](v16);
  v163 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_225CCDBA4();
  v168 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v174 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCDF54();
  v171 = *(v19 - 8);
  v172 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v175 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v152 - v22;
  v184 = sub_225CCDF84();
  v179 = *(v184 - 8);
  v23 = MEMORY[0x28223BE20](v184);
  v180 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v152 - v25;
  v27 = sub_225CCD954();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v162 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v152 - v31;
  v183 = v7[1];
  v176 = v7[2];
  v155 = v7[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v33 = off_28105B918;
  v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v35));
  v36 = v28;
  v37 = *(v28 + 16);
  v159 = v28 + 16;
  v160 = v34;
  v182 = v27;
  v158 = v37;
  v37(v32, &v33[v34], v27);
  v161 = v35;
  os_unfair_lock_unlock(&v33[v35]);
  v38 = sub_225CCD934();
  v39 = sub_225CCED04();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v184;
  v42 = v186;
  if (v40)
  {
    v43 = v26;
    v44 = v184;
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2259A7000, v38, v39, "Validating ES256 signature", v45, 2u);
    v46 = v45;
    v41 = v44;
    v26 = v43;
    v42 = v186;
    MEMORY[0x22AA6F950](v46, -1, -1);
  }

  v49 = *(v36 + 8);
  v47 = v36 + 8;
  v48 = v49;
  v49(v32, v182);
  v189 = v42;
  v190 = v185;
  sub_2259CB710(v42, v185);
  v50 = v180;
  v51 = v181;
  sub_225CCDF74();
  if (v51)
  {
    v52 = 0x8000000225D160B0;
    v185 = "6 public key from data";
    v186 = "te missing public key data";
    v53 = v51;
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v182 = swift_allocError();
    v56 = v55;
    swift_getErrorValue();
    v57 = v195;
    v58 = v51;
    sub_225B21FAC(v57, &v189);

    v59 = v190;
    v184 = 0x8000000225D160B0;
    if (v190)
    {
      v183 = v189;
      v52 = v192;
      v181 = v191;
      v61 = v193;
      v60 = v194;
    }

    else
    {
      v189 = v51;
      v63 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v64 = v188;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v66 = [v64 code];
        v67 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v67;
        *(inited + 40) = v66;
        v61 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v68 = v51;
        v181 = 0;
        v52 = 0;
        v59 = MEMORY[0x277D84F90];
      }

      else
      {
        v189 = v51;
        v85 = v51;
        v86 = sub_225CCE954();
        v87 = v157;
        v88 = swift_dynamicCast();
        v89 = *(v86 - 8);
        (*(v89 + 56))(v87, v88 ^ 1u, 1, v86);
        LODWORD(v89) = (*(v89 + 48))(v87, 1, v86);
        sub_2259CB640(v87, &unk_27D73B050, &unk_225CD3AD0);
        if (v89)
        {
          v90 = v183;
        }

        else
        {
          v90 = 23;
        }

        v183 = v90;
        v59 = MEMORY[0x277D84F90];
        v61 = sub_225B2C374(MEMORY[0x277D84F90]);
        v91 = v51;
        v181 = 0xD000000000000026;
      }

      v60 = v51;
    }

    v185 |= 0x8000000000000000;
    v186 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v61;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v189);

    v93 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_225B29AA0(0, *(v59 + 2) + 1, 1, v59);
    }

    v95 = *(v59 + 2);
    v94 = *(v59 + 3);
    if (v95 >= v94 >> 1)
    {
      v59 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v59);
    }

    *(v59 + 2) = v95 + 1;
    v96 = &v59[56 * v95];
    v97 = v184;
    *(v96 + 4) = 0xD000000000000026;
    *(v96 + 5) = v97;
    v98 = v186;
    *(v96 + 6) = 0xD00000000000002ALL;
    *(v96 + 7) = v98;
    v99 = v185;
    *(v96 + 8) = 0xD00000000000003BLL;
    *(v96 + 9) = v99;
    *(v96 + 10) = 201;
    *v56 = v183;
    v100 = v181;
    *(v56 + 8) = v59;
    *(v56 + 16) = v100;
    *(v56 + 24) = v52;
    *(v56 + 32) = v93;
    *(v56 + 40) = v60;
    v101 = v182;
    swift_willThrow();
  }

  else
  {
    v181 = v47;
    (*(v179 + 32))(v26, v50, v41);
    v189 = v177;
    v190 = v178;
    sub_2259CB710(v177, v178);
    sub_2259DB42C();
    v62 = v175;
    sub_225CCDF44();
    v153 = v26;
    (*(v171 + 32))(v173, v62, v172);
    v180 = sub_2259E4764(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v69 = v163;
    v70 = v165;
    sub_225CCDB94();
    v71 = v166;
    v72 = v167;
    sub_2259CB710(v166, v167);
    sub_2259DB138(v71, v72, v69);
    v183 = 0;
    sub_2259BEF00(v71, v72);
    sub_225CCDB84();
    (*(v164 + 8))(v69, v70);
    v73 = v161;
    os_unfair_lock_lock(&v33[v161]);
    v74 = v162;
    v75 = v182;
    v158(v162, &v33[v160], v182);
    os_unfair_lock_unlock(&v33[v73]);
    MEMORY[0x28223BE20](v76);
    *(&v152 - 8) = v71;
    *(&v152 - 7) = v72;
    v77 = v170;
    v78 = v174;
    v80 = v185;
    v79 = v186;
    *(&v152 - 6) = v174;
    *(&v152 - 5) = v79;
    v82 = v177;
    v81 = v178;
    *(&v152 - 4) = v80;
    *(&v152 - 3) = v82;
    *(&v152 - 2) = v81;
    Logger.cryptoParam(_:)(sub_2259E4644);
    v83 = v173;
    v84 = v153;
    v48(v74, v75);
    sub_2259E4764(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
    if (sub_225CCDF64())
    {
      (*(v171 + 8))(v83, v172);
      (*(v179 + 8))(v84, v41);
      (*(v168 + 8))(v78, v77);
      return;
    }

    v185 = 0x8000000225D160E0;
    v186 = 0x8000000225D15E40;
    v102 = MEMORY[0x277D84F90];
    v103 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v104 = swift_allocError();
    v106 = v105;
    v107 = sub_225CCE954();
    v108 = *(v107 - 8);
    v109 = v156;
    (*(v108 + 56))(v156, 1, 1, v107);
    LODWORD(v107) = (*(v108 + 48))(v109, 1, v107);
    sub_2259CB640(v109, &unk_27D73B050, &unk_225CD3AD0);
    if (v107)
    {
      v110 = v155;
    }

    else
    {
      v110 = 23;
    }

    v111 = sub_225B2C374(v102);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v189 = v111;
    sub_225B2C4A0(v103, sub_225B2AC40, 0, v112, &v189);

    v113 = v189;
    v114 = sub_225B29AA0(0, 1, 1, v102);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_225B29AA0((v115 > 1), v116 + 1, 1, v114);
    }

    *(v114 + 2) = v116 + 1;
    v117 = &v114[56 * v116];
    *(v117 + 4) = 0xD00000000000001CLL;
    *(v117 + 5) = 0x8000000225D16170;
    v118 = v186;
    *(v117 + 6) = 0xD00000000000002ALL;
    *(v117 + 7) = v118;
    v119 = v185;
    *(v117 + 8) = 0xD00000000000003BLL;
    *(v117 + 9) = v119;
    *(v117 + 10) = 217;
    *v106 = v110;
    *(v106 + 8) = v114;
    *(v106 + 16) = 0xD00000000000001CLL;
    *(v106 + 24) = 0x8000000225D16170;
    *(v106 + 32) = v113;
    *(v106 + 40) = 0;
    v101 = v104;
    swift_willThrow();
    (*(v171 + 8))(v173, v172);
    (*(v179 + 8))(v153, v184);
    (*(v168 + 8))(v174, v170);
  }

  v184 = 0x8000000225D16120;
  v120 = v101;
  v121 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v183 = swift_allocError();
  v123 = v122;
  swift_getErrorValue();
  v124 = v187;
  v125 = v101;
  sub_225B21FAC(v124, &v189);

  v126 = v190;
  if (v190)
  {
    v127 = v101;
    v128 = v192;
    v181 = v191;
    v182 = v189;
    v129 = v193;
    v101 = v194;
  }

  else
  {
    v189 = v101;
    v130 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v131 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v132 = swift_initStackObject();
      *(v132 + 16) = xmmword_225CD30F0;
      *(v132 + 32) = 20;
      v133 = [v131 code];
      v134 = MEMORY[0x277D83BF8];
      *(v132 + 64) = MEMORY[0x277D83B88];
      *(v132 + 72) = v134;
      *(v132 + 40) = v133;
      v129 = sub_225B2C374(v132);
      swift_setDeallocating();
      sub_2259CB640(v132 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v135 = v101;
      v181 = 0;
      v182 = 0;
      v128 = 0;
      v126 = MEMORY[0x277D84F90];
    }

    else
    {
      v189 = v101;
      v136 = v101;
      v137 = sub_225CCE954();
      v138 = v169;
      v139 = swift_dynamicCast();
      v140 = *(v137 - 8);
      (*(v140 + 56))(v138, v139 ^ 1u, 1, v137);
      LODWORD(v140) = (*(v140 + 48))(v138, 1, v137);
      sub_2259CB640(v138, &unk_27D73B050, &unk_225CD3AD0);
      if (v140)
      {
        v141 = 0;
      }

      else
      {
        v141 = 23;
      }

      v182 = v141;
      v126 = MEMORY[0x277D84F90];
      v129 = sub_225B2C374(MEMORY[0x277D84F90]);
      v142 = v101;
      v181 = 0xD00000000000001FLL;
      v128 = v184;
    }

    v127 = v101;
  }

  v143 = swift_isUniquelyReferenced_nonNull_native();
  v189 = v129;
  sub_225B2C4A0(v121, sub_225B2AC40, 0, v143, &v189);

  v144 = v189;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_225B29AA0(0, *(v126 + 2) + 1, 1, v126);
  }

  v146 = *(v126 + 2);
  v145 = *(v126 + 3);
  if (v146 >= v145 >> 1)
  {
    v126 = sub_225B29AA0((v145 > 1), v146 + 1, 1, v126);
  }

  *(v126 + 2) = v146 + 1;
  v147 = &v126[56 * v146];
  v148 = v184;
  *(v147 + 4) = 0xD00000000000001FLL;
  *(v147 + 5) = v148;
  v149 = v186;
  *(v147 + 6) = 0xD00000000000002ALL;
  *(v147 + 7) = v149;
  v150 = v185;
  *(v147 + 8) = 0xD00000000000003BLL;
  *(v147 + 9) = v150;
  *(v147 + 10) = 220;
  v151 = v181;
  *v123 = v182;
  *(v123 + 8) = v126;
  *(v123 + 16) = v151;
  *(v123 + 24) = v128;
  *(v123 + 32) = v144;
  *(v123 + 40) = v101;
  swift_willThrow();
}

void sub_2259DF678(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v166 = a5;
  v167 = a6;
  v185 = a4;
  v186 = a3;
  v177 = a1;
  v178 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v154 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v157 = &v152 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v152 - v14;
  MEMORY[0x28223BE20](v13);
  v156 = &v152 - v15;
  v16 = sub_225CCE174();
  v164 = *(v16 - 8);
  v165 = v16;
  MEMORY[0x28223BE20](v16);
  v163 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_225CCDBB4();
  v168 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v174 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCE034();
  v171 = *(v19 - 8);
  v172 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v175 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v152 - v22;
  v184 = sub_225CCE064();
  v179 = *(v184 - 8);
  v23 = MEMORY[0x28223BE20](v184);
  v180 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v152 - v25;
  v27 = sub_225CCD954();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v162 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v152 - v31;
  v183 = v7[1];
  v176 = v7[2];
  v155 = v7[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v33 = off_28105B918;
  v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v35));
  v36 = v28;
  v37 = *(v28 + 16);
  v159 = v28 + 16;
  v160 = v34;
  v182 = v27;
  v158 = v37;
  v37(v32, &v33[v34], v27);
  v161 = v35;
  os_unfair_lock_unlock(&v33[v35]);
  v38 = sub_225CCD934();
  v39 = sub_225CCED04();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v184;
  v42 = v186;
  if (v40)
  {
    v43 = v26;
    v44 = v184;
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2259A7000, v38, v39, "Validating ES384 signature", v45, 2u);
    v46 = v45;
    v41 = v44;
    v26 = v43;
    v42 = v186;
    MEMORY[0x22AA6F950](v46, -1, -1);
  }

  v49 = *(v36 + 8);
  v47 = v36 + 8;
  v48 = v49;
  v49(v32, v182);
  v189 = v42;
  v190 = v185;
  sub_2259CB710(v42, v185);
  v50 = v180;
  v51 = v181;
  sub_225CCE054();
  if (v51)
  {
    v52 = 0x8000000225D16190;
    v185 = "4 public key from data";
    v186 = "te missing public key data";
    v53 = v51;
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v182 = swift_allocError();
    v56 = v55;
    swift_getErrorValue();
    v57 = v195;
    v58 = v51;
    sub_225B21FAC(v57, &v189);

    v59 = v190;
    v184 = 0x8000000225D16190;
    if (v190)
    {
      v183 = v189;
      v52 = v192;
      v181 = v191;
      v61 = v193;
      v60 = v194;
    }

    else
    {
      v189 = v51;
      v63 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v64 = v188;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v66 = [v64 code];
        v67 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v67;
        *(inited + 40) = v66;
        v61 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v68 = v51;
        v181 = 0;
        v52 = 0;
        v59 = MEMORY[0x277D84F90];
      }

      else
      {
        v189 = v51;
        v85 = v51;
        v86 = sub_225CCE954();
        v87 = v157;
        v88 = swift_dynamicCast();
        v89 = *(v86 - 8);
        (*(v89 + 56))(v87, v88 ^ 1u, 1, v86);
        LODWORD(v89) = (*(v89 + 48))(v87, 1, v86);
        sub_2259CB640(v87, &unk_27D73B050, &unk_225CD3AD0);
        if (v89)
        {
          v90 = v183;
        }

        else
        {
          v90 = 23;
        }

        v183 = v90;
        v59 = MEMORY[0x277D84F90];
        v61 = sub_225B2C374(MEMORY[0x277D84F90]);
        v91 = v51;
        v181 = 0xD000000000000026;
      }

      v60 = v51;
    }

    v185 |= 0x8000000000000000;
    v186 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v61;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v189);

    v93 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_225B29AA0(0, *(v59 + 2) + 1, 1, v59);
    }

    v95 = *(v59 + 2);
    v94 = *(v59 + 3);
    if (v95 >= v94 >> 1)
    {
      v59 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v59);
    }

    *(v59 + 2) = v95 + 1;
    v96 = &v59[56 * v95];
    v97 = v184;
    *(v96 + 4) = 0xD000000000000026;
    *(v96 + 5) = v97;
    v98 = v186;
    *(v96 + 6) = 0xD00000000000002ALL;
    *(v96 + 7) = v98;
    v99 = v185;
    *(v96 + 8) = 0xD00000000000003BLL;
    *(v96 + 9) = v99;
    *(v96 + 10) = 233;
    *v56 = v183;
    v100 = v181;
    *(v56 + 8) = v59;
    *(v56 + 16) = v100;
    *(v56 + 24) = v52;
    *(v56 + 32) = v93;
    *(v56 + 40) = v60;
    v101 = v182;
    swift_willThrow();
  }

  else
  {
    v181 = v47;
    (*(v179 + 32))(v26, v50, v41);
    v189 = v177;
    v190 = v178;
    sub_2259CB710(v177, v178);
    sub_2259DB42C();
    v62 = v175;
    sub_225CCE024();
    v153 = v26;
    (*(v171 + 32))(v173, v62, v172);
    v180 = sub_2259E4764(&qword_27D73AE60, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v69 = v163;
    v70 = v165;
    sub_225CCDB94();
    v71 = v166;
    v72 = v167;
    sub_2259CB710(v166, v167);
    sub_225A9EC88(v71, v72, v69);
    v183 = 0;
    sub_2259BEF00(v71, v72);
    sub_225CCDB84();
    (*(v164 + 8))(v69, v70);
    v73 = v161;
    os_unfair_lock_lock(&v33[v161]);
    v74 = v162;
    v75 = v182;
    v158(v162, &v33[v160], v182);
    os_unfair_lock_unlock(&v33[v73]);
    MEMORY[0x28223BE20](v76);
    *(&v152 - 8) = v71;
    *(&v152 - 7) = v72;
    v77 = v170;
    v78 = v174;
    v80 = v185;
    v79 = v186;
    *(&v152 - 6) = v174;
    *(&v152 - 5) = v79;
    v82 = v177;
    v81 = v178;
    *(&v152 - 4) = v80;
    *(&v152 - 3) = v82;
    *(&v152 - 2) = v81;
    Logger.cryptoParam(_:)(sub_2259E468C);
    v83 = v173;
    v84 = v153;
    v48(v74, v75);
    sub_2259E4764(&qword_27D73AE68, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
    if (sub_225CCE044())
    {
      (*(v171 + 8))(v83, v172);
      (*(v179 + 8))(v84, v41);
      (*(v168 + 8))(v78, v77);
      return;
    }

    v185 = 0x8000000225D161C0;
    v186 = 0x8000000225D15E40;
    v102 = MEMORY[0x277D84F90];
    v103 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v104 = swift_allocError();
    v106 = v105;
    v107 = sub_225CCE954();
    v108 = *(v107 - 8);
    v109 = v156;
    (*(v108 + 56))(v156, 1, 1, v107);
    LODWORD(v107) = (*(v108 + 48))(v109, 1, v107);
    sub_2259CB640(v109, &unk_27D73B050, &unk_225CD3AD0);
    if (v107)
    {
      v110 = v155;
    }

    else
    {
      v110 = 23;
    }

    v111 = sub_225B2C374(v102);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v189 = v111;
    sub_225B2C4A0(v103, sub_225B2AC40, 0, v112, &v189);

    v113 = v189;
    v114 = sub_225B29AA0(0, 1, 1, v102);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_225B29AA0((v115 > 1), v116 + 1, 1, v114);
    }

    *(v114 + 2) = v116 + 1;
    v117 = &v114[56 * v116];
    *(v117 + 4) = 0xD00000000000001CLL;
    *(v117 + 5) = 0x8000000225D16250;
    v118 = v186;
    *(v117 + 6) = 0xD00000000000002ALL;
    *(v117 + 7) = v118;
    v119 = v185;
    *(v117 + 8) = 0xD00000000000003BLL;
    *(v117 + 9) = v119;
    *(v117 + 10) = 248;
    *v106 = v110;
    *(v106 + 8) = v114;
    *(v106 + 16) = 0xD00000000000001CLL;
    *(v106 + 24) = 0x8000000225D16250;
    *(v106 + 32) = v113;
    *(v106 + 40) = 0;
    v101 = v104;
    swift_willThrow();
    (*(v171 + 8))(v173, v172);
    (*(v179 + 8))(v153, v184);
    (*(v168 + 8))(v174, v170);
  }

  v184 = 0x8000000225D16200;
  v120 = v101;
  v121 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v183 = swift_allocError();
  v123 = v122;
  swift_getErrorValue();
  v124 = v187;
  v125 = v101;
  sub_225B21FAC(v124, &v189);

  v126 = v190;
  if (v190)
  {
    v127 = v101;
    v128 = v192;
    v181 = v191;
    v182 = v189;
    v129 = v193;
    v101 = v194;
  }

  else
  {
    v189 = v101;
    v130 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v131 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v132 = swift_initStackObject();
      *(v132 + 16) = xmmword_225CD30F0;
      *(v132 + 32) = 20;
      v133 = [v131 code];
      v134 = MEMORY[0x277D83BF8];
      *(v132 + 64) = MEMORY[0x277D83B88];
      *(v132 + 72) = v134;
      *(v132 + 40) = v133;
      v129 = sub_225B2C374(v132);
      swift_setDeallocating();
      sub_2259CB640(v132 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v135 = v101;
      v181 = 0;
      v182 = 0;
      v128 = 0;
      v126 = MEMORY[0x277D84F90];
    }

    else
    {
      v189 = v101;
      v136 = v101;
      v137 = sub_225CCE954();
      v138 = v169;
      v139 = swift_dynamicCast();
      v140 = *(v137 - 8);
      (*(v140 + 56))(v138, v139 ^ 1u, 1, v137);
      LODWORD(v140) = (*(v140 + 48))(v138, 1, v137);
      sub_2259CB640(v138, &unk_27D73B050, &unk_225CD3AD0);
      if (v140)
      {
        v141 = 0;
      }

      else
      {
        v141 = 23;
      }

      v182 = v141;
      v126 = MEMORY[0x277D84F90];
      v129 = sub_225B2C374(MEMORY[0x277D84F90]);
      v142 = v101;
      v181 = 0xD00000000000001ELL;
      v128 = v184;
    }

    v127 = v101;
  }

  v143 = swift_isUniquelyReferenced_nonNull_native();
  v189 = v129;
  sub_225B2C4A0(v121, sub_225B2AC40, 0, v143, &v189);

  v144 = v189;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_225B29AA0(0, *(v126 + 2) + 1, 1, v126);
  }

  v146 = *(v126 + 2);
  v145 = *(v126 + 3);
  if (v146 >= v145 >> 1)
  {
    v126 = sub_225B29AA0((v145 > 1), v146 + 1, 1, v126);
  }

  *(v126 + 2) = v146 + 1;
  v147 = &v126[56 * v146];
  v148 = v184;
  *(v147 + 4) = 0xD00000000000001ELL;
  *(v147 + 5) = v148;
  v149 = v186;
  *(v147 + 6) = 0xD00000000000002ALL;
  *(v147 + 7) = v149;
  v150 = v185;
  *(v147 + 8) = 0xD00000000000003BLL;
  *(v147 + 9) = v150;
  *(v147 + 10) = 251;
  v151 = v181;
  *v123 = v182;
  *(v123 + 8) = v126;
  *(v123 + 16) = v151;
  *(v123 + 24) = v128;
  *(v123 + 32) = v144;
  *(v123 + 40) = v101;
  swift_willThrow();
}

void sub_2259E0C88(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v166 = a5;
  v167 = a6;
  v185 = a4;
  v186 = a3;
  v177 = a1;
  v178 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v154 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v157 = &v152 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v152 - v14;
  MEMORY[0x28223BE20](v13);
  v156 = &v152 - v15;
  v16 = sub_225CCE184();
  v164 = *(v16 - 8);
  v165 = v16;
  MEMORY[0x28223BE20](v16);
  v163 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_225CCDBC4();
  v168 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v174 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCE114();
  v171 = *(v19 - 8);
  v172 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v175 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v152 - v22;
  v184 = sub_225CCE144();
  v179 = *(v184 - 8);
  v23 = MEMORY[0x28223BE20](v184);
  v180 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v152 - v25;
  v27 = sub_225CCD954();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v162 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v152 - v31;
  v183 = v7[1];
  v176 = v7[2];
  v155 = v7[3];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v33 = off_28105B918;
  v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v35));
  v36 = v28;
  v37 = *(v28 + 16);
  v159 = v28 + 16;
  v160 = v34;
  v182 = v27;
  v158 = v37;
  v37(v32, &v33[v34], v27);
  v161 = v35;
  os_unfair_lock_unlock(&v33[v35]);
  v38 = sub_225CCD934();
  v39 = sub_225CCED04();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v184;
  v42 = v186;
  if (v40)
  {
    v43 = v26;
    v44 = v184;
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2259A7000, v38, v39, "Validating ES512 signature", v45, 2u);
    v46 = v45;
    v41 = v44;
    v26 = v43;
    v42 = v186;
    MEMORY[0x22AA6F950](v46, -1, -1);
  }

  v49 = *(v36 + 8);
  v47 = v36 + 8;
  v48 = v49;
  v49(v32, v182);
  v189 = v42;
  v190 = v185;
  sub_2259CB710(v42, v185);
  v50 = v180;
  v51 = v181;
  sub_225CCE134();
  if (v51)
  {
    v52 = 0x8000000225D16270;
    v185 = "1 public key from data";
    v186 = "te missing public key data";
    v53 = v51;
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v182 = swift_allocError();
    v56 = v55;
    swift_getErrorValue();
    v57 = v195;
    v58 = v51;
    sub_225B21FAC(v57, &v189);

    v59 = v190;
    v184 = 0x8000000225D16270;
    if (v190)
    {
      v183 = v189;
      v52 = v192;
      v181 = v191;
      v61 = v193;
      v60 = v194;
    }

    else
    {
      v189 = v51;
      v63 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v64 = v188;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v66 = [v64 code];
        v67 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v67;
        *(inited + 40) = v66;
        v61 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v68 = v51;
        v181 = 0;
        v52 = 0;
        v59 = MEMORY[0x277D84F90];
      }

      else
      {
        v189 = v51;
        v85 = v51;
        v86 = sub_225CCE954();
        v87 = v157;
        v88 = swift_dynamicCast();
        v89 = *(v86 - 8);
        (*(v89 + 56))(v87, v88 ^ 1u, 1, v86);
        LODWORD(v89) = (*(v89 + 48))(v87, 1, v86);
        sub_2259CB640(v87, &unk_27D73B050, &unk_225CD3AD0);
        if (v89)
        {
          v90 = v183;
        }

        else
        {
          v90 = 23;
        }

        v183 = v90;
        v59 = MEMORY[0x277D84F90];
        v61 = sub_225B2C374(MEMORY[0x277D84F90]);
        v91 = v51;
        v181 = 0xD000000000000026;
      }

      v60 = v51;
    }

    v185 |= 0x8000000000000000;
    v186 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v61;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v189);

    v93 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_225B29AA0(0, *(v59 + 2) + 1, 1, v59);
    }

    v95 = *(v59 + 2);
    v94 = *(v59 + 3);
    if (v95 >= v94 >> 1)
    {
      v59 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v59);
    }

    *(v59 + 2) = v95 + 1;
    v96 = &v59[56 * v95];
    v97 = v184;
    *(v96 + 4) = 0xD000000000000026;
    *(v96 + 5) = v97;
    v98 = v186;
    *(v96 + 6) = 0xD00000000000002ALL;
    *(v96 + 7) = v98;
    v99 = v185;
    *(v96 + 8) = 0xD00000000000003BLL;
    *(v96 + 9) = v99;
    *(v96 + 10) = 265;
    *v56 = v183;
    v100 = v181;
    *(v56 + 8) = v59;
    *(v56 + 16) = v100;
    *(v56 + 24) = v52;
    *(v56 + 32) = v93;
    *(v56 + 40) = v60;
    v101 = v182;
    swift_willThrow();
  }

  else
  {
    v181 = v47;
    (*(v179 + 32))(v26, v50, v41);
    v189 = v177;
    v190 = v178;
    sub_2259CB710(v177, v178);
    sub_2259DB42C();
    v62 = v175;
    sub_225CCE104();
    v153 = v26;
    (*(v171 + 32))(v173, v62, v172);
    v180 = sub_2259E4764(&qword_27D73AE70, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    v69 = v163;
    v70 = v165;
    sub_225CCDB94();
    v71 = v166;
    v72 = v167;
    sub_2259CB710(v166, v167);
    sub_225A9EEAC(v71, v72, v69);
    v183 = 0;
    sub_2259BEF00(v71, v72);
    sub_225CCDB84();
    (*(v164 + 8))(v69, v70);
    v73 = v161;
    os_unfair_lock_lock(&v33[v161]);
    v74 = v162;
    v75 = v182;
    v158(v162, &v33[v160], v182);
    os_unfair_lock_unlock(&v33[v73]);
    MEMORY[0x28223BE20](v76);
    *(&v152 - 8) = v71;
    *(&v152 - 7) = v72;
    v77 = v170;
    v78 = v174;
    v80 = v185;
    v79 = v186;
    *(&v152 - 6) = v174;
    *(&v152 - 5) = v79;
    v82 = v177;
    v81 = v178;
    *(&v152 - 4) = v80;
    *(&v152 - 3) = v82;
    *(&v152 - 2) = v81;
    Logger.cryptoParam(_:)(sub_2259E46D4);
    v83 = v173;
    v84 = v153;
    v48(v74, v75);
    sub_2259E4764(&qword_27D73AE78, MEMORY[0x277CC52E8], MEMORY[0x277CC52E0]);
    if (sub_225CCE124())
    {
      (*(v171 + 8))(v83, v172);
      (*(v179 + 8))(v84, v41);
      (*(v168 + 8))(v78, v77);
      return;
    }

    v185 = 0x8000000225D162A0;
    v186 = 0x8000000225D15E40;
    v102 = MEMORY[0x277D84F90];
    v103 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v104 = swift_allocError();
    v106 = v105;
    v107 = sub_225CCE954();
    v108 = *(v107 - 8);
    v109 = v156;
    (*(v108 + 56))(v156, 1, 1, v107);
    LODWORD(v107) = (*(v108 + 48))(v109, 1, v107);
    sub_2259CB640(v109, &unk_27D73B050, &unk_225CD3AD0);
    if (v107)
    {
      v110 = v155;
    }

    else
    {
      v110 = 23;
    }

    v111 = sub_225B2C374(v102);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v189 = v111;
    sub_225B2C4A0(v103, sub_225B2AC40, 0, v112, &v189);

    v113 = v189;
    v114 = sub_225B29AA0(0, 1, 1, v102);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_225B29AA0((v115 > 1), v116 + 1, 1, v114);
    }

    *(v114 + 2) = v116 + 1;
    v117 = &v114[56 * v116];
    *(v117 + 4) = 0xD00000000000001CLL;
    *(v117 + 5) = 0x8000000225D16330;
    v118 = v186;
    *(v117 + 6) = 0xD00000000000002ALL;
    *(v117 + 7) = v118;
    v119 = v185;
    *(v117 + 8) = 0xD00000000000003BLL;
    *(v117 + 9) = v119;
    *(v117 + 10) = 280;
    *v106 = v110;
    *(v106 + 8) = v114;
    *(v106 + 16) = 0xD00000000000001CLL;
    *(v106 + 24) = 0x8000000225D16330;
    *(v106 + 32) = v113;
    *(v106 + 40) = 0;
    v101 = v104;
    swift_willThrow();
    (*(v171 + 8))(v173, v172);
    (*(v179 + 8))(v153, v184);
    (*(v168 + 8))(v174, v170);
  }

  v184 = 0x8000000225D162E0;
  v120 = v101;
  v121 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v183 = swift_allocError();
  v123 = v122;
  swift_getErrorValue();
  v124 = v187;
  v125 = v101;
  sub_225B21FAC(v124, &v189);

  v126 = v190;
  if (v190)
  {
    v127 = v101;
    v128 = v192;
    v181 = v191;
    v182 = v189;
    v129 = v193;
    v101 = v194;
  }

  else
  {
    v189 = v101;
    v130 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v131 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v132 = swift_initStackObject();
      *(v132 + 16) = xmmword_225CD30F0;
      *(v132 + 32) = 20;
      v133 = [v131 code];
      v134 = MEMORY[0x277D83BF8];
      *(v132 + 64) = MEMORY[0x277D83B88];
      *(v132 + 72) = v134;
      *(v132 + 40) = v133;
      v129 = sub_225B2C374(v132);
      swift_setDeallocating();
      sub_2259CB640(v132 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v135 = v101;
      v181 = 0;
      v182 = 0;
      v128 = 0;
      v126 = MEMORY[0x277D84F90];
    }

    else
    {
      v189 = v101;
      v136 = v101;
      v137 = sub_225CCE954();
      v138 = v169;
      v139 = swift_dynamicCast();
      v140 = *(v137 - 8);
      (*(v140 + 56))(v138, v139 ^ 1u, 1, v137);
      LODWORD(v140) = (*(v140 + 48))(v138, 1, v137);
      sub_2259CB640(v138, &unk_27D73B050, &unk_225CD3AD0);
      if (v140)
      {
        v141 = 0;
      }

      else
      {
        v141 = 23;
      }

      v182 = v141;
      v126 = MEMORY[0x277D84F90];
      v129 = sub_225B2C374(MEMORY[0x277D84F90]);
      v142 = v101;
      v181 = 0xD00000000000001ELL;
      v128 = v184;
    }

    v127 = v101;
  }

  v143 = swift_isUniquelyReferenced_nonNull_native();
  v189 = v129;
  sub_225B2C4A0(v121, sub_225B2AC40, 0, v143, &v189);

  v144 = v189;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_225B29AA0(0, *(v126 + 2) + 1, 1, v126);
  }

  v146 = *(v126 + 2);
  v145 = *(v126 + 3);
  if (v146 >= v145 >> 1)
  {
    v126 = sub_225B29AA0((v145 > 1), v146 + 1, 1, v126);
  }

  *(v126 + 2) = v146 + 1;
  v147 = &v126[56 * v146];
  v148 = v184;
  *(v147 + 4) = 0xD00000000000001ELL;
  *(v147 + 5) = v148;
  v149 = v186;
  *(v147 + 6) = 0xD00000000000002ALL;
  *(v147 + 7) = v149;
  v150 = v185;
  *(v147 + 8) = 0xD00000000000003BLL;
  *(v147 + 9) = v150;
  *(v147 + 10) = 283;
  v151 = v181;
  *v123 = v182;
  *(v123 + 8) = v126;
  *(v123 + 16) = v151;
  *(v123 + 24) = v128;
  *(v123 + 32) = v144;
  *(v123 + 40) = v101;
  swift_willThrow();
}

void sub_2259E2298(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v139 = a3;
  v131 = a5;
  v132 = a6;
  v142 = a4;
  v129 = a1;
  v130 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v122 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v121 - v11;
  MEMORY[0x28223BE20](v10);
  v125 = &v121 - v12;
  v13 = sub_225CCDB64();
  v133 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v136 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = &v121 - v16;
  v17 = sub_225CCD954();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v128 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v121 - v21;
  v140 = *(v6 + 2);
  v124 = *(v6 + 6);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v137 = v18;
  v126 = *(v18 + 16);
  v127 = v24;
  v141 = v17;
  v126(v22, &v23[v24], v17);
  os_unfair_lock_unlock(&v23[v25]);
  v26 = sub_225CCD934();
  v27 = sub_225CCED04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2259A7000, v26, v27, "Validating Ed25519 signature", v28, 2u);
    MEMORY[0x22AA6F950](v28, -1, -1);
  }

  v134 = v13;

  v29 = v141;
  v137 = *(v137 + 8);
  (v137)(v22);
  v30 = v139;
  v146 = v139;
  v147 = v142;
  sub_2259CB710(v139, v142);
  v31 = v136;
  v32 = v138;
  sub_225CCDB54();
  if (v32)
  {
    v141 = "ve25519 public key from data";
    v142 = "te missing public key data";
    v33 = v32;
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v139 = swift_allocError();
    v36 = v35;
    swift_getErrorValue();
    v37 = v152;
    v38 = v32;
    sub_225B21FAC(v37, &v146);

    v39 = v147;
    v138 = 0x8000000225D16350;
    if (v147)
    {
      v140 = v146;
      v40 = v149;
      v137 = v148;
      v42 = v150;
      v41 = v151;
    }

    else
    {
      v146 = v32;
      v50 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v51 = v143;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v53 = [v51 code];
        v54 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v54;
        *(inited + 40) = v53;
        v42 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v55 = v32;
        v137 = 0;
        v40 = 0;
        v39 = MEMORY[0x277D84F90];
      }

      else
      {
        v146 = v32;
        v74 = v32;
        v75 = sub_225CCE954();
        v76 = v122;
        v77 = swift_dynamicCast();
        v78 = *(v75 - 8);
        (*(v78 + 56))(v76, v77 ^ 1u, 1, v75);
        LODWORD(v78) = (*(v78 + 48))(v76, 1, v75);
        sub_2259CB640(v76, &unk_27D73B050, &unk_225CD3AD0);
        if (v78)
        {
          v79 = v140;
        }

        else
        {
          v79 = 23;
        }

        v140 = v79;
        v39 = MEMORY[0x277D84F90];
        v42 = sub_225B2C374(MEMORY[0x277D84F90]);
        v80 = v32;
        v137 = 0xD00000000000002CLL;
        v40 = 0x8000000225D16350;
      }

      v41 = v32;
    }

    v141 |= 0x8000000000000000;
    v142 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v42;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v146);

    v82 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_225B29AA0(0, *(v39 + 2) + 1, 1, v39);
    }

    v84 = *(v39 + 2);
    v83 = *(v39 + 3);
    if (v84 >= v83 >> 1)
    {
      v39 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v39);
    }

    *(v39 + 2) = v84 + 1;
    v85 = &v39[56 * v84];
    v86 = v138;
    *(v85 + 4) = 0xD00000000000002CLL;
    *(v85 + 5) = v86;
    v87 = v142;
    *(v85 + 6) = 0xD00000000000002ALL;
    *(v85 + 7) = v87;
    v88 = v141;
    *(v85 + 8) = 0xD00000000000003DLL;
    *(v85 + 9) = v88;
    *(v85 + 10) = 295;
    *v36 = v140;
    v89 = v137;
    *(v36 + 8) = v39;
    *(v36 + 16) = v89;
    *(v36 + 24) = v40;
    *(v36 + 32) = v82;
    *(v36 + 40) = v41;
    v73 = v139;
    swift_willThrow();
  }

  else
  {
    v140 = 0;
    (*(v133 + 32))(v135, v31, v134);
    os_unfair_lock_lock(&v23[v25]);
    v43 = v128;
    v126(v128, &v23[v127], v29);
    os_unfair_lock_unlock(&v23[v25]);
    v44 = v142;
    sub_2259CB710(v30, v142);
    v46 = v131;
    v45 = v132;
    sub_2259CB710(v131, v132);
    v47 = v129;
    v48 = v130;
    sub_2259CB710(v129, v130);
    sub_225B41700(v43, v46, v45, v30, v44, v47, v48);
    sub_2259BEF00(v47, v48);
    sub_2259BEF00(v30, v44);
    sub_2259BEF00(v46, v45);
    (v137)(v43, v141);
    v146 = v47;
    v147 = v48;
    v143 = v46;
    v144 = v45;
    v49 = v135;
    sub_2259DB42C();
    if (sub_225CCDB44())
    {
      (*(v133 + 8))(v49, v134);
      return;
    }

    v141 = 0x8000000225D16380;
    v142 = 0x8000000225D15E40;
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v139 = swift_allocError();
    v59 = v58;
    v60 = sub_225CCE954();
    v61 = *(v60 - 8);
    v62 = v125;
    (*(v61 + 56))(v125, 1, 1, v60);
    LODWORD(v60) = (*(v61 + 48))(v62, 1, v60);
    sub_2259CB640(v62, &unk_27D73B050, &unk_225CD3AD0);
    if (v60)
    {
      v63 = v124;
    }

    else
    {
      v63 = 23;
    }

    v64 = sub_225B2C374(v56);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v64;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, v65, &v146);

    v66 = v146;
    v67 = sub_225B29AA0(0, 1, 1, v56);
    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    v70 = &v67[56 * v69];
    *(v70 + 4) = 0xD00000000000001CLL;
    *(v70 + 5) = 0x8000000225D163F0;
    v71 = v142;
    *(v70 + 6) = 0xD00000000000002ALL;
    *(v70 + 7) = v71;
    v72 = v141;
    *(v70 + 8) = 0xD00000000000003DLL;
    *(v70 + 9) = v72;
    *(v70 + 10) = 303;
    *v59 = v63;
    *(v59 + 8) = v67;
    *(v59 + 16) = 0xD00000000000001CLL;
    *(v59 + 24) = 0x8000000225D163F0;
    *(v59 + 32) = v66;
    *(v59 + 40) = 0;
    v73 = v139;
    swift_willThrow();
    (*(v133 + 8))(v135, v134);
  }

  v140 = 0x8000000225D163C0;
  v90 = v73;
  v139 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v92 = v91;
  swift_getErrorValue();
  v93 = v145;
  v94 = v73;
  sub_225B21FAC(v93, &v146);

  v95 = v147;
  if (v147)
  {
    v137 = v148;
    v138 = v146;
    v136 = v149;
    v96 = v150;
    v97 = v151;
  }

  else
  {
    v135 = 0;
    v146 = v73;
    v98 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v99 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v100 = swift_initStackObject();
      *(v100 + 16) = xmmword_225CD30F0;
      *(v100 + 32) = 20;
      v101 = [v99 code];
      v102 = MEMORY[0x277D83BF8];
      *(v100 + 64) = MEMORY[0x277D83B88];
      *(v100 + 72) = v102;
      *(v100 + 40) = v101;
      v96 = sub_225B2C374(v100);
      swift_setDeallocating();
      sub_2259CB640(v100 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v103 = v73;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v95 = MEMORY[0x277D84F90];
    }

    else
    {
      v146 = v73;
      v104 = v73;
      v105 = sub_225CCE954();
      v106 = v123;
      v107 = swift_dynamicCast();
      v108 = *(v105 - 8);
      (*(v108 + 56))(v106, v107 ^ 1u, 1, v105);
      LODWORD(v108) = (*(v108 + 48))(v106, 1, v105);
      sub_2259CB640(v106, &unk_27D73B050, &unk_225CD3AD0);
      if (v108)
      {
        v109 = 0;
      }

      else
      {
        v109 = 23;
      }

      v138 = v109;
      v95 = MEMORY[0x277D84F90];
      v96 = sub_225B2C374(MEMORY[0x277D84F90]);
      v110 = v73;
      v136 = v140;
      v137 = 0xD000000000000024;
    }

    v97 = v73;
  }

  v111 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v96;
  sub_225B2C4A0(v139, sub_225B2AC40, 0, v111, &v146);

  v112 = v146;
  v113 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v95 = sub_225B29AA0(0, *(v95 + 2) + 1, 1, v95);
  }

  v115 = *(v95 + 2);
  v114 = *(v95 + 3);
  if (v115 >= v114 >> 1)
  {
    v95 = sub_225B29AA0((v114 > 1), v115 + 1, 1, v95);
  }

  *(v95 + 2) = v115 + 1;
  v116 = &v95[56 * v115];
  v117 = v140;
  *(v116 + 4) = 0xD000000000000024;
  *(v116 + 5) = v117;
  v118 = v142;
  *(v116 + 6) = 0xD00000000000002ALL;
  *(v116 + 7) = v118;
  v119 = v141;
  *(v116 + 8) = 0xD00000000000003DLL;
  *(v116 + 9) = v119;
  *(v116 + 10) = 306;
  v120 = v137;
  *v92 = v138;
  *(v92 + 8) = v95;
  *(v92 + 16) = v120;
  *(v92 + 24) = v136;
  *(v92 + 32) = v112;
  *(v92 + 40) = v97;
  swift_willThrow();
}

void sub_2259E3148(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v139 = a3;
  v131 = a5;
  v132 = a6;
  v142 = a4;
  v129 = a1;
  v130 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v122 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v121 - v11;
  MEMORY[0x28223BE20](v10);
  v125 = &v121 - v12;
  v13 = sub_225CCE244();
  v133 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v136 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = &v121 - v16;
  v17 = sub_225CCD954();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v128 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v121 - v21;
  v140 = *(v6 + 2);
  v124 = *(v6 + 6);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v137 = v18;
  v126 = *(v18 + 16);
  v127 = v24;
  v141 = v17;
  v126(v22, &v23[v24], v17);
  os_unfair_lock_unlock(&v23[v25]);
  v26 = sub_225CCD934();
  v27 = sub_225CCED04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2259A7000, v26, v27, "Validating Ed448 signature", v28, 2u);
    MEMORY[0x22AA6F950](v28, -1, -1);
  }

  v134 = v13;

  v29 = v141;
  v137 = *(v137 + 8);
  (v137)(v22);
  v30 = v139;
  v146 = v139;
  v147 = v142;
  sub_2259CB710(v139, v142);
  v31 = v136;
  v32 = v138;
  sub_225CCE234();
  if (v32)
  {
    v33 = 0x8000000225D16410;
    v141 = "ve448 public key from data";
    v142 = "te missing public key data";
    v34 = v32;
    v35 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v139 = swift_allocError();
    v37 = v36;
    swift_getErrorValue();
    v38 = v152;
    v39 = v32;
    sub_225B21FAC(v38, &v146);

    v40 = v147;
    v138 = 0x8000000225D16410;
    if (v147)
    {
      v140 = v146;
      v33 = v149;
      v137 = v148;
      v42 = v150;
      v41 = v151;
    }

    else
    {
      v146 = v32;
      v50 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v51 = v143;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v53 = [v51 code];
        v54 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v54;
        *(inited + 40) = v53;
        v42 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v55 = v32;
        v137 = 0;
        v33 = 0;
        v40 = MEMORY[0x277D84F90];
      }

      else
      {
        v146 = v32;
        v74 = v32;
        v75 = sub_225CCE954();
        v76 = v122;
        v77 = swift_dynamicCast();
        v78 = *(v75 - 8);
        (*(v78 + 56))(v76, v77 ^ 1u, 1, v75);
        LODWORD(v78) = (*(v78 + 48))(v76, 1, v75);
        sub_2259CB640(v76, &unk_27D73B050, &unk_225CD3AD0);
        if (v78)
        {
          v79 = v140;
        }

        else
        {
          v79 = 23;
        }

        v140 = v79;
        v40 = MEMORY[0x277D84F90];
        v42 = sub_225B2C374(MEMORY[0x277D84F90]);
        v80 = v32;
        v137 = 0xD00000000000002ALL;
      }

      v41 = v32;
    }

    v141 |= 0x8000000000000000;
    v142 |= 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v42;
    sub_225B2C4A0(v35, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v146);

    v82 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_225B29AA0(0, *(v40 + 2) + 1, 1, v40);
    }

    v84 = *(v40 + 2);
    v83 = *(v40 + 3);
    if (v84 >= v83 >> 1)
    {
      v40 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v40);
    }

    *(v40 + 2) = v84 + 1;
    v85 = &v40[56 * v84];
    v86 = v138;
    *(v85 + 4) = 0xD00000000000002ALL;
    *(v85 + 5) = v86;
    v87 = v142;
    *(v85 + 6) = 0xD00000000000002ALL;
    *(v85 + 7) = v87;
    v88 = v141;
    *(v85 + 8) = 0xD00000000000003BLL;
    *(v85 + 9) = v88;
    *(v85 + 10) = 318;
    *v37 = v140;
    v89 = v137;
    *(v37 + 8) = v40;
    *(v37 + 16) = v89;
    *(v37 + 24) = v33;
    *(v37 + 32) = v82;
    *(v37 + 40) = v41;
    v73 = v139;
    swift_willThrow();
  }

  else
  {
    v140 = 0;
    (*(v133 + 32))(v135, v31, v134);
    os_unfair_lock_lock(&v23[v25]);
    v43 = v128;
    v126(v128, &v23[v127], v29);
    os_unfair_lock_unlock(&v23[v25]);
    v44 = v142;
    sub_2259CB710(v30, v142);
    v46 = v131;
    v45 = v132;
    sub_2259CB710(v131, v132);
    v47 = v129;
    v48 = v130;
    sub_2259CB710(v129, v130);
    sub_225B41700(v43, v46, v45, v30, v44, v47, v48);
    sub_2259BEF00(v47, v48);
    sub_2259BEF00(v30, v44);
    sub_2259BEF00(v46, v45);
    (v137)(v43, v141);
    v146 = v47;
    v147 = v48;
    v143 = v46;
    v144 = v45;
    v49 = v135;
    sub_2259DB42C();
    if (sub_225CCE224())
    {
      (*(v133 + 8))(v49, v134);
      return;
    }

    v141 = 0x8000000225D16440;
    v142 = 0x8000000225D15E40;
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v139 = swift_allocError();
    v59 = v58;
    v60 = sub_225CCE954();
    v61 = *(v60 - 8);
    v62 = v125;
    (*(v61 + 56))(v125, 1, 1, v60);
    LODWORD(v60) = (*(v61 + 48))(v62, 1, v60);
    sub_2259CB640(v62, &unk_27D73B050, &unk_225CD3AD0);
    if (v60)
    {
      v63 = v124;
    }

    else
    {
      v63 = 23;
    }

    v64 = sub_225B2C374(v56);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v64;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, v65, &v146);

    v66 = v146;
    v67 = sub_225B29AA0(0, 1, 1, v56);
    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    v70 = &v67[56 * v69];
    *(v70 + 4) = 0xD00000000000001ALL;
    *(v70 + 5) = 0x8000000225D164B0;
    v71 = v142;
    *(v70 + 6) = 0xD00000000000002ALL;
    *(v70 + 7) = v71;
    v72 = v141;
    *(v70 + 8) = 0xD00000000000003BLL;
    *(v70 + 9) = v72;
    *(v70 + 10) = 326;
    *v59 = v63;
    *(v59 + 8) = v67;
    *(v59 + 16) = 0xD00000000000001ALL;
    *(v59 + 24) = 0x8000000225D164B0;
    *(v59 + 32) = v66;
    *(v59 + 40) = 0;
    v73 = v139;
    swift_willThrow();
    (*(v133 + 8))(v135, v134);
  }

  v140 = 0x8000000225D16480;
  v90 = v73;
  v139 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v92 = v91;
  swift_getErrorValue();
  v93 = v145;
  v94 = v73;
  sub_225B21FAC(v93, &v146);

  v95 = v147;
  if (v147)
  {
    v137 = v148;
    v138 = v146;
    v136 = v149;
    v96 = v150;
    v97 = v151;
  }

  else
  {
    v135 = 0;
    v146 = v73;
    v98 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v99 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v100 = swift_initStackObject();
      *(v100 + 16) = xmmword_225CD30F0;
      *(v100 + 32) = 20;
      v101 = [v99 code];
      v102 = MEMORY[0x277D83BF8];
      *(v100 + 64) = MEMORY[0x277D83B88];
      *(v100 + 72) = v102;
      *(v100 + 40) = v101;
      v96 = sub_225B2C374(v100);
      swift_setDeallocating();
      sub_2259CB640(v100 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v103 = v73;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v95 = MEMORY[0x277D84F90];
    }

    else
    {
      v146 = v73;
      v104 = v73;
      v105 = sub_225CCE954();
      v106 = v123;
      v107 = swift_dynamicCast();
      v108 = *(v105 - 8);
      (*(v108 + 56))(v106, v107 ^ 1u, 1, v105);
      LODWORD(v108) = (*(v108 + 48))(v106, 1, v105);
      sub_2259CB640(v106, &unk_27D73B050, &unk_225CD3AD0);
      if (v108)
      {
        v109 = 0;
      }

      else
      {
        v109 = 23;
      }

      v138 = v109;
      v95 = MEMORY[0x277D84F90];
      v96 = sub_225B2C374(MEMORY[0x277D84F90]);
      v110 = v73;
      v136 = v140;
      v137 = 0xD000000000000022;
    }

    v97 = v73;
  }

  v111 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v96;
  sub_225B2C4A0(v139, sub_225B2AC40, 0, v111, &v146);

  v112 = v146;
  v113 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v95 = sub_225B29AA0(0, *(v95 + 2) + 1, 1, v95);
  }

  v115 = *(v95 + 2);
  v114 = *(v95 + 3);
  if (v115 >= v114 >> 1)
  {
    v95 = sub_225B29AA0((v114 > 1), v115 + 1, 1, v95);
  }

  *(v95 + 2) = v115 + 1;
  v116 = &v95[56 * v115];
  v117 = v140;
  *(v116 + 4) = 0xD000000000000022;
  *(v116 + 5) = v117;
  v118 = v142;
  *(v116 + 6) = 0xD00000000000002ALL;
  *(v116 + 7) = v118;
  v119 = v141;
  *(v116 + 8) = 0xD00000000000003BLL;
  *(v116 + 9) = v119;
  *(v116 + 10) = 329;
  v120 = v137;
  *v92 = v138;
  *(v92 + 8) = v95;
  *(v92 + 16) = v120;
  *(v92 + 24) = v136;
  *(v92 + 32) = v112;
  *(v92 + 40) = v97;
  swift_willThrow();
}