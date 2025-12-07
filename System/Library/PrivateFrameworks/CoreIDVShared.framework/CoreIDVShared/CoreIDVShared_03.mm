uint64_t sub_2259F7208()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259F72AC(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_2259F733C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_2259F73E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC0000004D415568;
  v5 = 0x7469573635325345;
  if (v2 != 1)
  {
    v5 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x3635325345;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::HardwareAttestationType_optional __swiftcall HardwareAttestationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HardwareAttestationType.rawValue.getter()
{
  v1 = 5260627;
  v2 = 5653577;
  if (*v0 != 2)
  {
    v2 = 20559;
  }

  if (*v0)
  {
    v1 = 17747;
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

uint64_t sub_2259F75BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259F7654(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_2259F76D8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_2259F7778(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5260627;
  v4 = 0xE300000000000000;
  v5 = 5653577;
  if (*v1 != 2)
  {
    v5 = 20559;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 17747;
    v2 = 0xE200000000000000;
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

uint64_t DIPKeyAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t _s13CoreIDVShared11ECIESOptionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_2259F795C()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

unint64_t sub_2259F79A4()
{
  result = qword_27D73AF30;
  if (!qword_27D73AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF30);
  }

  return result;
}

unint64_t sub_2259F79FC()
{
  result = qword_27D73AF38;
  if (!qword_27D73AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF38);
  }

  return result;
}

unint64_t sub_2259F7A54()
{
  result = qword_27D73AF40;
  if (!qword_27D73AF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AF48, &qword_225CD7270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF40);
  }

  return result;
}

unint64_t sub_2259F7ABC()
{
  result = qword_27D73AF50;
  if (!qword_27D73AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HardwareAttestationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HardwareAttestationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ISO18013PresentmentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ISO18013PresentmentType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2259F7DC0()
{
  result = qword_28105A110[0];
  if (!qword_28105A110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28105A110);
  }

  return result;
}

unint64_t sub_2259F7E14()
{
  result = qword_28105B6E0;
  if (!qword_28105B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6E0);
  }

  return result;
}

uint64_t KeyUsage.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

SecAccessControlRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> createBAAKeyACLWithDefaultLAContext(enableUAM:keyUsage:requireUserAuth:forSecureElement:)(Swift::Bool enableUAM, CoreIDVShared::KeyUsage keyUsage, Swift::Bool requireUserAuth, Swift::Bool forSecureElement)
{
  v7 = *keyUsage;
  v8 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v11 = v7;
  v9 = sub_2259F7FB0(v8, enableUAM, &v11, requireUserAuth, forSecureElement);

  return v9;
}

SecAccessControlRef sub_2259F7FB0(void *a1, char a2, char *a3, char a4, char a5)
{
  error[1] = *MEMORY[0x277D85DE8];
  v49 = *a3;
  error[0] = 0;
  if (a4)
  {
    v9 = 1073741825;
  }

  else
  {
    v9 = 0x40000000;
  }

  v10 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], v9, error);
  v11 = v10;
  if (v10)
  {
    v46 = a5;
    v47 = a2;
    v44 = a4;
    v48 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080, &unk_225CEF1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73A0;
    *(inited + 32) = 0x6E666F6B70;
    v13 = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 1;
    *(inited + 72) = v13;
    *(inited + 80) = 1668640112;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 7;
    *(inited + 120) = v13;
    *(inited + 128) = 1869177443;
    *(inited + 136) = 0xE400000000000000;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_225CD4890;
    v45 = a1;
    *(v14 + 32) = 0x636F696270;
    *(v14 + 40) = 0xE500000000000000;
    v15 = MEMORY[0x277CC9318];
    *(v14 + 48) = xmmword_225CD4150;
    *(v14 + 72) = v15;
    *(v14 + 80) = 0x746F696270;
    *(v14 + 120) = v13;
    *(v14 + 88) = 0xE500000000000000;
    *(v14 + 96) = 1;
    v16 = sub_225B2C92C(v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090, &unk_225CD7610);
    swift_arrayDestroy();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D0, &unk_225CD76C0);
    *(inited + 144) = v16;
    *(inited + 168) = v17;
    *(inited + 176) = 1852795747;
    *(inited + 184) = 0xE400000000000000;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_225CD73B0;
    *(v18 + 32) = 0x6E666F6B70;
    *(v18 + 40) = 0xE500000000000000;
    *(v18 + 48) = 1;
    *(v18 + 72) = v13;
    *(v18 + 80) = 1668640112;
    *(v18 + 88) = 0xE400000000000000;
    *(v18 + 96) = 7;
    *(v18 + 120) = v13;
    *(v18 + 128) = 1869177443;
    *(v18 + 136) = 0xE400000000000000;
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_225CD4890;
    *(v19 + 32) = 0x636F696270;
    *(v19 + 40) = 0xE500000000000000;
    *(v19 + 48) = xmmword_225CD4150;
    *(v19 + 72) = MEMORY[0x277CC9318];
    *(v19 + 80) = 0x746F696270;
    *(v19 + 120) = v13;
    *(v19 + 88) = 0xE500000000000000;
    *(v19 + 96) = 2;
    v20 = sub_225B2C92C(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v18 + 168) = v17;
    *(v18 + 144) = v20;
    v21 = sub_225B2C92C(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = v17;
    *(inited + 216) = v17;
    *(inited + 192) = v21;
    v23 = sub_225B2C92C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = [v45 canEvaluatePolicy:1 error:0];
    v25 = MEMORY[0x277D839B0];
    if ((v24 & 1) == 0)
    {
      sub_225B2AC50(1869177443, &v51, 0xE400000000000000);
      sub_2259CB640(&v51, &qword_27D73DD90, &unk_225CD4950);
      sub_225B2AC50(1852795747, &v51, 0xE400000000000000);
      sub_2259CB640(&v51, &qword_27D73DD90, &unk_225CD4950);
      v52 = v25;
      LOBYTE(v51) = 1;
      sub_2259B9624(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_225A03F40(v50, 7370083, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    }

    if (a2)
    {
      goto LABEL_8;
    }

    v28 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v29 = sub_225CCE444();
      v30 = [v28 BOOLForKey_];

      if (v30)
      {
LABEL_8:
        v52 = v25;
        LOBYTE(v51) = 1;
        sub_2259B9624(&v51, v50);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        sub_225A03F40(v50, 1953525616, 0xE400000000000000, v27);
      }
    }

    else
    {
    }

    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_225CD30F0;
    *(v31 + 32) = 7037807;
    v32 = v31 + 32;
    *(v31 + 40) = 0xE300000000000000;
    *(v31 + 72) = v25;
    *(v31 + 48) = 0;
    sub_225B2C92C(v31);
    swift_setDeallocating();
    sub_2259CB640(v32, &unk_27D73B090, &unk_225CD7610);
    swift_deallocClassInstance();
    if ((v46 & 1) == 0)
    {
      v52 = v25;
      LOBYTE(v51) = 1;
      sub_2259B9624(&v51, v50);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_225A03F40(v50, 1818584175, 0xE400000000000000, v33);
    }

    if (v49)
    {
      v52 = v25;
      LOBYTE(v51) = 1;
      sub_2259B9624(&v51, v50);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = 7037807;
      v36 = 0xE300000000000000;
    }

    else
    {
      v52 = v17;
      *&v51 = v23;
      sub_2259B9624(&v51, v50);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = 1852273519;
      v36 = 0xE400000000000000;
    }

    sub_225A03F40(v50, v35, v36, v34);
    v37 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v38 = sub_225CCE444();
      v39 = [v37 BOOLForKey_];

      if (v39 & 1) != 0 || (v47)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (v47)
      {
LABEL_26:

        v11 = v48;
LABEL_34:
        v41 = v11;
        v42 = sub_225CCE2B4();

        SecAccessControlSetConstraints();

        return v11;
      }
    }

    v11 = v48;
    if (v49)
    {
    }

    else
    {
      if (v44)
      {
        *&v51 = v23;
      }

      else
      {

        LOBYTE(v51) = 1;
        v22 = MEMORY[0x277D839B0];
      }

      v52 = v22;
      sub_2259B9624(&v51, v50);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_225A03F40(v50, 1852273519, 0xE400000000000000, v40);
    }

    goto LABEL_34;
  }

  LOWORD(v51) = 251;
  errorFromCFError(_:_:_:)(error[0], 0xD00000000000003ELL, 0x8000000225D16F60, &v51);
  swift_willThrow();
  return v11;
}

uint64_t sub_2259F8828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 120) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2259F8850, 0, 0);
}

uint64_t sub_2259F8850()
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v1 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  sub_2259AA0E0(v2, v3);
  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v2();
    sub_2259AA0D0(v2, v3);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
  }

  else
  {
    v4 = &type metadata for DeviceIdentityCommon;
    v5 = &protocol witness table for DeviceIdentityCommon;
    *(v0 + 40) = &type metadata for DeviceIdentityCommon;
    *(v0 + 48) = &protocol witness table for DeviceIdentityCommon;
    v6 = swift_allocObject();
    *(v0 + 16) = v6;
    *(v6 + 40) = &type metadata for DeviceInformationProvider;
    *(v6 + 48) = &protocol witness table for DeviceInformationProvider;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v14 = (v5[1] + *v5[1]);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2259F8A3C;
  v8 = *(v0 + 120);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = *(v0 + 56);

  return v14(v12, v11, v9, v10, v8, v4, v5);
}

uint64_t sub_2259F8A3C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_2259F8BD8;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_2259F8B70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2259F8B70()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_2259F8BD8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static DeviceIdentityCommon.new()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v2 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  sub_2259AA0E0(v4, v3);
  os_unfair_lock_unlock(v2 + 8);
  if (v4)
  {
    v4();

    return sub_2259AA0D0(v4, v3);
  }

  else
  {
    a1[3] = &type metadata for DeviceIdentityCommon;
    a1[4] = &protocol witness table for DeviceIdentityCommon;
    result = swift_allocObject();
    *a1 = result;
    *(result + 40) = &type metadata for DeviceInformationProvider;
    *(result + 48) = &protocol witness table for DeviceInformationProvider;
  }

  return result;
}

uint64_t sub_2259F8D34(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2259F8D54, 0, 0);
}

uint64_t sub_2259F8D54()
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v1 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  sub_2259AA0E0(v2, v3);
  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v2();
    sub_2259AA0D0(v2, v3);
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v4 = &type metadata for DeviceIdentityCommon;
    v5 = &protocol witness table for DeviceIdentityCommon;
    v0[5] = &type metadata for DeviceIdentityCommon;
    v0[6] = &protocol witness table for DeviceIdentityCommon;
    v6 = swift_allocObject();
    v0[2] = v6;
    *(v6 + 40) = &type metadata for DeviceInformationProvider;
    *(v6 + 48) = &protocol witness table for DeviceInformationProvider;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v11 = (v5[2] + *v5[2]);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_2259F8F38;
  v9 = v0[7];
  v8 = v0[8];

  return v11(v9, v8, v4, v5);
}

uint64_t sub_2259F8F38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2259F90B0;
  }

  else
  {
    v2 = sub_2259F904C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259F904C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259F90B0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259F9114(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - v2;
  v4 = sub_225CCCCB4();
  v5 = [v4 code];

  if (v5 + 11 > 9)
  {
    v6 = 237;
  }

  else
  {
    v6 = word_225CD7718[v5 + 11];
  }

  swift_getErrorValue();
  v7 = sub_225CCFB24();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 20;
  v11 = sub_225CCCCB4();
  v12 = [v11 code];

  v13 = MEMORY[0x277D83BF8];
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 72) = v13;
  *(inited + 40) = v12;
  v14 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
  sub_2259CB5EC();
  v15 = swift_allocError();
  v17 = v16;
  v18 = sub_225CCE954();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v3, 1, 1, v18);
  v20 = (*(v19 + 48))(v3, 1, v18);
  sub_2259CB640(v3, &unk_27D73B050, &unk_225CD3AD0);

  v21 = MEMORY[0x277D84F90];
  v22 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v22;
  sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v32);

  v24 = v32;
  v25 = sub_225B29AA0(0, 1, 1, v21);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 4) = v7;
  *(v28 + 5) = v9;
  *(v28 + 6) = 0xD000000000000028;
  *(v28 + 7) = 0x8000000225D16CF0;
  *(v28 + 8) = 0xD000000000000018;
  *(v28 + 9) = 0x8000000225D16D20;
  *(v28 + 10) = 165;
  if (v20)
  {
    v29 = v6;
  }

  else
  {
    v29 = 23;
  }

  *v17 = v29;
  *(v17 + 8) = v25;
  *(v17 + 16) = v7;
  *(v17 + 24) = v9;
  *(v17 + 32) = v24;
  *(v17 + 40) = 0;
  return v15;
}

uint64_t sub_2259F9464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA0, &qword_225CD76B8);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  off_27D73AF58 = result;
  return result;
}

uint64_t static DeviceIdentityCommon.instanceFactory.getter()
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v0 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v1 = *(v0 + 2);
  sub_2259AA0E0(v1, *(v0 + 3));
  os_unfair_lock_unlock(v0 + 8);
  return v1;
}

void sub_2259F9530(uint64_t *a1@<X8>)
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v2 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  sub_2259AA0E0(v3, v4);
  os_unfair_lock_unlock(v2 + 8);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_2259F95B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_2259AA0E0(*a1, v2);
  if (qword_27D739EF8 != -1)
  {
    v3 = swift_once();
  }

  v4 = off_27D73AF58;
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock(v4 + 8);
  sub_225A02EB4(v4 + 2);
  os_unfair_lock_unlock(v4 + 8);
  return sub_2259AA0D0(v1, v2);
}

uint64_t static DeviceIdentityCommon.instanceFactory.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_27D739EF8 != -1)
  {
    a1 = swift_once();
  }

  v4 = off_27D73AF58;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock(v4 + 8);
  sub_2259F97A4(v4 + 2);
  os_unfair_lock_unlock(v4 + 8);
  return sub_2259AA0D0(v3, a2);
}

uint64_t sub_2259F9744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_2259AA0D0(v6, a1[1]);
  }

  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *a1 = a2;
  a1[1] = v7;
  return sub_2259AA0E0(a2, a3);
}

uint64_t (*static DeviceIdentityCommon.instanceFactory.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v2 = off_27D73AF58;
  a1[2] = off_27D73AF58;
  os_unfair_lock_lock(v2 + 8);
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  sub_2259AA0E0(v3, v4);
  os_unfair_lock_unlock(v2 + 8);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_2259F986C;
}

uint64_t sub_2259F986C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_2259AA0E0(v2, v3);
    os_unfair_lock_lock((v4 + 32));
    sub_225A02EB4((v4 + 16));
    os_unfair_lock_unlock((v4 + 32));
    sub_2259AA0D0(v2, v3);
  }

  else
  {
    os_unfair_lock_lock((v4 + 32));
    sub_225A02EB4((v4 + 16));
    os_unfair_lock_unlock((v4 + 32));
  }

  return sub_2259AA0D0(v2, v3);
}

uint64_t DeviceIdentityCommon.fetchOrCreateCertificateWithDeviceIdentity(label:laContext:options:enableUAM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 120) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_225CCD954();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2259F99FC, 0, 0);
}

uint64_t sub_2259F99FC()
{
  v22 = v0;
  v1 = sub_2259F9EC8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 120));
  *(v0 + 80) = v1;
  v20 = v1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v2 + 16))(v3, &v5[v6], v4);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = sub_225CCD934();
  v9 = sub_225CCED04();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v10)
  {
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2259BE198(v15, v14, &v21);
    _os_log_impl(&dword_2259A7000, v8, v9, "creating BAA certificate with DeviceIdentity for label %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v11 + 8))(v12, v13);
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_2259F9CB8;

  return DeviceIdentityCommon.callDeviceIdentity(baaOptions:)(v20);
}

uint64_t sub_2259F9CB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_2259F9E5C;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_2259F9DEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2259F9DEC()
{

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_2259F9E5C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_2259F9EC8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v310 = a2;
  v311 = sub_225CCD954();
  v312 = *(v311 - 8);
  v11 = MEMORY[0x28223BE20](v311);
  v304 = &v294 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v294 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v302 = &v294 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v294 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v300 = &v294 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v305 = &v294 - v23;
  v24 = MEMORY[0x277D841D0];
  v307 = a1;
  v308 = v15;
  if (a4)
  {
    if (*(a4 + 16) && (v25 = sub_2259F1BAC(1), (v26 & 1) != 0))
    {
      v27 = *(*(a4 + 56) + 16 * v25);

      v29 = v27;
    }

    else
    {
      v29 = 0;
      v28 = 0xE000000000000000;
    }

    v30 = sub_2259EDAD0(v29, v28);
    v32 = 15;
    if ((v31 & 1) == 0)
    {
      v32 = v30;
    }

    v309 = v32;
    if (*(a4 + 16))
    {
      v33 = sub_2259F1BAC(0);
      if (v34)
      {
        v35 = (*(a4 + 56) + 16 * v33);
        v37 = *v35;
        v36 = v35[1];

        result = Data.init(base16Encoded:)(v37, v36);
        if (v39 >> 60 == 15)
        {
          v312 = 0x8000000225D16CF0;
          v311 = 0x8000000225D16E90;
          v40 = MEMORY[0x277D84F90];
          v41 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v43 = v42;
          v44 = sub_225CCE954();
          v45 = *(v44 - 8);
          v46 = v305;
          (*(v45 + 56))(v305, 1, 1, v44);
          LODWORD(v44) = (*(v45 + 48))(v46, 1, v44);
          sub_2259CB640(v46, &unk_27D73B050, &unk_225CD3AD0);
          if (v44)
          {
            v47 = 126;
          }

          else
          {
            v47 = 23;
          }

          v48 = sub_225B2C374(v40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v313 = v48;
          sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v313);

          v50 = v313;
          v51 = sub_225B29AA0(0, 1, 1, v40);
          v53 = *(v51 + 2);
          v52 = *(v51 + 3);
          if (v53 >= v52 >> 1)
          {
            v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
          }

          *(v51 + 2) = v53 + 1;
          v54 = &v51[56 * v53];
          *(v54 + 4) = 0xD000000000000021;
          *(v54 + 5) = 0x8000000225D16F00;
          v55 = v312;
          *(v54 + 6) = 0xD000000000000028;
          *(v54 + 7) = v55;
          v56 = v311;
          *(v54 + 8) = 0xD000000000000034;
          *(v54 + 9) = v56;
          *(v54 + 10) = 286;
          *v43 = v47;
          *(v43 + 8) = v51;
          *(v43 + 16) = 0xD000000000000021;
          *(v43 + 24) = 0x8000000225D16F00;
          *(v43 + 32) = v50;
          *(v43 + 40) = 0;
          swift_willThrow();
          return v46;
        }

        v46 = result;
        v66 = v39;
        v136 = v39 >> 62;
        if ((v39 >> 62) > 1)
        {
          if (v136 != 2)
          {
            sub_2259B97A8(result, v39);
            goto LABEL_26;
          }

          v139 = result[2];
          v138 = result[3];
          v140 = __OFSUB__(v138, v139);
          v137 = v138 - v139;
          if (!v140)
          {
            goto LABEL_67;
          }

          __break(1u);
        }

        else if (!v136)
        {
          sub_2259B97A8(result, v39);
          v137 = BYTE6(v66);
LABEL_67:
          if (v137 >= 33)
          {
            v301 = v46;
            v312 = 0x8000000225D16CF0;
            v311 = 0x8000000225D16E90;
            v141 = MEMORY[0x277D84F90];
            v46 = v6;
            v142 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            v303 = swift_allocError();
            v144 = v143;
            v145 = sub_225CCE954();
            v146 = *(v145 - 8);
            v147 = v305;
            (*(v146 + 56))(v305, 1, 1, v145);
            LODWORD(v145) = (*(v146 + 48))(v147, 1, v145);
            sub_2259CB640(v147, &unk_27D73B050, &unk_225CD3AD0);
            if (v145)
            {
              v148 = 108;
            }

            else
            {
              v148 = 23;
            }

            v149 = sub_225B2C374(v141);
            v150 = swift_isUniquelyReferenced_nonNull_native();
            *&v313 = v149;
            sub_225B2C4A0(v142, sub_225B2AC40, 0, v150, &v313);

            v151 = v313;
            v152 = sub_225B29AA0(0, 1, 1, v141);
            v154 = *(v152 + 2);
            v153 = *(v152 + 3);
            if (v154 >= v153 >> 1)
            {
              v152 = sub_225B29AA0((v153 > 1), v154 + 1, 1, v152);
            }

            *(v152 + 2) = v154 + 1;
            v155 = &v152[56 * v154];
            *(v155 + 4) = 0xD00000000000002FLL;
            *(v155 + 5) = 0x8000000225D16F30;
            v156 = v312;
            *(v155 + 6) = 0xD000000000000028;
            *(v155 + 7) = v156;
            v157 = v311;
            *(v155 + 8) = 0xD000000000000034;
            *(v155 + 9) = v157;
            *(v155 + 10) = 289;
            *v144 = v148;
            *(v144 + 8) = v152;
            *(v144 + 16) = 0xD00000000000002FLL;
            *(v144 + 24) = 0x8000000225D16F30;
            *(v144 + 32) = v151;
            *(v144 + 40) = 0;
            swift_willThrow();
            v81 = v301;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        LODWORD(v137) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          __break(1u);
          goto LABEL_129;
        }

        v137 = v137;
        goto LABEL_67;
      }
    }
  }

  else
  {
    v57 = sub_2259EDAD0(0, 0xE000000000000000);
    v59 = 15;
    if ((v58 & 1) == 0)
    {
      v59 = v57;
    }

    v309 = v59;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v60 = off_28105B918;
  v61 = *(*off_28105B918 + *v24 + 16);
  v62 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v62));
  (*(v312 + 16))(v19, &v60[v61], v311);
  os_unfair_lock_unlock(&v60[v62]);
  v63 = sub_225CCD934();
  v64 = sub_225CCED04();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2259A7000, v63, v64, "nonce is not present for SEP based identity key generation", v65, 2u);
    MEMORY[0x22AA6F950](v65, -1, -1);
  }

  (*(v312 + 8))(v19, v311);
  v46 = 0;
  if (!a4)
  {
    v66 = 0xF000000000000000;
    goto LABEL_33;
  }

  v66 = 0xF000000000000000;
LABEL_26:
  if (*(a4 + 16))
  {
    v67 = sub_2259F1BAC(4);
    if (v68)
    {
      v69 = (*(a4 + 56) + 16 * v67);
      v71 = *v69;
      v70 = v69[1];

      if (v71 == 1702195828 && v70 == 0xE400000000000000)
      {

        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v72 = sub_225CCF934();

  if (v72)
  {
LABEL_34:
    LOBYTE(v313) = 1;
    v73 = sub_2259F7FB0(a3, a5 & 1, &v313, 0, 0);
    if (!v6)
    {
      v74 = v73;
      v303 = 0;
      v301 = v46;
      v75 = *(v306 + 3);
      v76 = *(v306 + 4);
      __swift_project_boxed_opaque_existential_1(v306, v75);
      v77 = *(v76 + 80);
      v78 = v74;
      v79 = v77(v75, v76) ^ 1;
      goto LABEL_40;
    }

LABEL_37:
    v81 = v46;
LABEL_38:
    sub_2259B97A8(v81, v66);
    return v46;
  }

  LOBYTE(v313) = 0;
  v80 = sub_2259F7FB0(a3, a5 & 1, &v313, 0, 0);
  if (v6)
  {
    goto LABEL_37;
  }

  v303 = 0;
  v301 = v46;
  v78 = v80;
  v79 = 0;
LABEL_40:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88, &unk_225CD7690);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_225CD73C0;
  v294 = *MEMORY[0x277D048A0];
  *(v82 + 32) = sub_225CCE474();
  *(v82 + 40) = v83;
  result = SecAccessControlCopyData();
  if (result)
  {
    v84 = result;
    v85 = sub_225CCCFA4();
    v87 = v86;

    v306 = v78;
    *(v82 + 72) = MEMORY[0x277CC9318];
    *(v82 + 48) = v85;
    *(v82 + 56) = v87;
    v88 = sub_225CCE474();
    v89 = MEMORY[0x277D83B88];
    *(v82 + 80) = v88;
    *(v82 + 88) = v90;
    *(v82 + 120) = v89;
    *(v82 + 96) = v309;
    *(v82 + 128) = sub_225CCE474();
    *(v82 + 136) = v91;
    *(v82 + 168) = v89;
    *(v82 + 144) = 0;
    *(v82 + 176) = sub_225CCE474();
    *(v82 + 184) = v92;
    *(v82 + 216) = MEMORY[0x277D839B0];
    *(v82 + 192) = v79 & 1;
    v298 = *MEMORY[0x277D04928];
    *(v82 + 224) = sub_225CCE474();
    *(v82 + 232) = v93;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_225CD73D0;
    *(v95 + 32) = sub_225CCE474();
    *(v95 + 40) = v96;
    *(v95 + 48) = sub_225CCE474();
    *(v95 + 56) = v97;
    *(v95 + 64) = sub_225CCE474();
    *(v95 + 72) = v98;
    *(v95 + 80) = sub_225CCE474();
    *(v95 + 88) = v99;
    *(v95 + 96) = sub_225CCE474();
    *(v95 + 104) = v100;
    *(v95 + 112) = sub_225CCE474();
    *(v95 + 120) = v101;
    v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    *(v82 + 264) = v297;
    *(v82 + 240) = v95;
    v299 = sub_225B2CD9C(v82);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90, &qword_225CFB9A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v309 = v66;
    v296 = v94;
    if (a4 && *(a4 + 16) && (v102 = sub_2259F1BAC(5), (v103 & 1) != 0) && ((v104 = (*(a4 + 56) + 16 * v102), *v104 == 1702195828) && v104[1] == 0xE400000000000000 || (sub_225CCF934() & 1) != 0))
    {
      v105 = v311;
      v106 = v312;
      v107 = MEMORY[0x277D841D0];
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v108 = off_28105B918;
      v109 = *(*off_28105B918 + *v107 + 16);
      v110 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v110));
      v111 = v302;
      v295 = *(v106 + 16);
      v295(v302, &v108[v109], v105);
      os_unfair_lock_unlock(&v108[v110]);
      v112 = v310;

      v113 = sub_225CCD934();
      v114 = sub_225CCED04();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v313 = v116;
        *v115 = 136315138;
        *(v115 + 4) = sub_2259BE198(v307, v112, &v313);
        _os_log_impl(&dword_2259A7000, v113, v114, "Allowing BAA key reuse for label %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v116);
        MEMORY[0x22AA6F950](v116, -1, -1);
        MEMORY[0x22AA6F950](v115, -1, -1);

        v117 = *(v106 + 8);
        v117(v111, v311);
      }

      else
      {

        v117 = *(v106 + 8);
        v117(v111, v105);
      }

      v158 = sub_225CCE474();
      v160 = v159;
      v315 = MEMORY[0x277D83B88];
      *&v313 = 1;
      sub_2259B9624(&v313, &v319);
      v161 = v299;
      v162 = swift_isUniquelyReferenced_nonNull_native();
      v321 = v161;
      v163 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
      sub_225C2BC74(*v163, v158, v160, v162, &v321);

      __swift_destroy_boxed_opaque_existential_0(&v319);
      v46 = v321;
    }

    else
    {
      v118 = v311;
      v119 = v312;
      v120 = MEMORY[0x277D841D0];
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v108 = off_28105B918;
      v121 = *(*off_28105B918 + *v120 + 16);
      v122 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v122));
      v123 = v308;
      v295 = *(v119 + 16);
      v295(v308, &v108[v121], v118);
      os_unfair_lock_unlock(&v108[v122]);
      v124 = v310;

      v125 = sub_225CCD934();
      v126 = sub_225CCED04();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = v118;
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *&v313 = v129;
        *v128 = 136315138;
        *(v128 + 4) = sub_2259BE198(v307, v124, &v313);
        _os_log_impl(&dword_2259A7000, v125, v126, "Not allowing BAA key reuse for label %s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v129);
        MEMORY[0x22AA6F950](v129, -1, -1);
        MEMORY[0x22AA6F950](v128, -1, -1);

        v117 = *(v312 + 8);
        v117(v123, v127);
      }

      else
      {

        v117 = *(v119 + 8);
        v117(v123, v118);
      }

      v130 = sub_225CCE474();
      v132 = v131;
      v315 = MEMORY[0x277D83B88];
      *&v313 = 1;
      sub_2259B9624(&v313, &v319);
      v133 = v299;
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v321 = v133;
      v135 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
      sub_225C2BC74(*v135, v130, v132, v134, &v321);

      __swift_destroy_boxed_opaque_existential_0(&v319);
      v46 = v321;
      if (!a4)
      {
        goto LABEL_89;
      }
    }

    v164 = v310;
    if (!*(a4 + 16) || (v165 = sub_2259F1BAC(6), (v166 & 1) == 0) || ((v167 = (*(a4 + 56) + 16 * v165), *v167 != 1702195828) || v167[1] != 0xE400000000000000) && (sub_225CCF934() & 1) == 0)
    {
      v179 = v309;
      goto LABEL_90;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v168 = *(*v108 + *MEMORY[0x277D841D0] + 16);
    v169 = (*(*v108 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock(&v108[v169]);
    v170 = &v108[v168];
    v171 = v304;
    v172 = v311;
    v295(v304, v170, v311);
    os_unfair_lock_unlock(&v108[v169]);

    v173 = sub_225CCD934();
    v174 = sub_225CCED04();

    if (os_log_type_enabled(v173, v174))
    {
      v175 = v173;
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v313 = v177;
      *v176 = 136315138;
      v178 = v307;
      *(v176 + 4) = sub_2259BE198(v307, v164, &v313);
      _os_log_impl(&dword_2259A7000, v175, v174, "Letting device identity manage keychain for label %s", v176, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v177);
      MEMORY[0x22AA6F950](v177, -1, -1);
      MEMORY[0x22AA6F950](v176, -1, -1);

      v117(v304, v311);
    }

    else
    {

      v117(v171, v172);
      v178 = v307;
    }

    v180 = sub_225CCE474();
    v182 = v181;
    v315 = MEMORY[0x277D837D0];
    *&v313 = v178;
    *(&v313 + 1) = v164;
    sub_2259B9624(&v313, &v319);

    v183 = swift_isUniquelyReferenced_nonNull_native();
    v321 = v46;
    v184 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
    MEMORY[0x28223BE20](v184);
    v186 = (&v294 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v187 + 16))(v186);
    sub_225C2BDCC(*v186, v186[1], v180, v182, v183, &v321);

    __swift_destroy_boxed_opaque_existential_0(&v319);
    v46 = v321;
LABEL_89:
    v179 = v309;
LABEL_90:
    if (v179 >> 60 == 15)
    {
LABEL_102:
      if (a4 && *(a4 + 16) && (sub_2259F1BAC(7), (v231 & 1) != 0))
      {

        v232 = sub_225CCCF04();
        v234 = v233;

        if (v234 >> 60 == 15)
        {
          v312 = 0x8000000225D16CF0;
          v311 = 0x8000000225D16E90;
          v235 = MEMORY[0x277D84F90];
          v236 = sub_225B2C248(MEMORY[0x277D84F90]);
          v308 = sub_2259CB5EC();
          v237 = swift_allocError();
          v239 = v238;
          v240 = sub_225CCE954();
          v241 = *(v240 - 8);
          v242 = *(v241 + 56);
          v243 = v305;
          v304 = (v241 + 56);
          v302 = v242;
          (v242)(v305, 1, 1, v240);
          v244 = *(v241 + 48);
          v307 = v240;
          v299 = v244;
          LODWORD(v240) = v244(v243, 1, v240);
          sub_2259CB640(v243, &unk_27D73B050, &unk_225CD3AD0);
          if (v240)
          {
            v245 = 122;
          }

          else
          {
            v245 = 23;
          }

          v246 = sub_225B2C374(v235);
          v247 = swift_isUniquelyReferenced_nonNull_native();
          *&v313 = v246;
          sub_225B2C4A0(v236, sub_225B2AC40, 0, v247, &v313);

          v248 = v313;
          v249 = sub_225B29AA0(0, 1, 1, v235);
          v251 = *(v249 + 2);
          v250 = *(v249 + 3);
          if (v251 >= v250 >> 1)
          {
            v249 = sub_225B29AA0((v250 > 1), v251 + 1, 1, v249);
          }

          *(v249 + 2) = v251 + 1;
          v252 = &v249[56 * v251];
          *(v252 + 4) = 0xD000000000000023;
          *(v252 + 5) = 0x8000000225D16E60;
          v253 = v312;
          *(v252 + 6) = 0xD000000000000028;
          *(v252 + 7) = v253;
          *(v252 + 8) = 0xD000000000000034;
          *(v252 + 9) = v311;
          *(v252 + 10) = 351;
          *v239 = v245;
          *(v239 + 8) = v249;
          *(v239 + 16) = 0xD000000000000023;
          *(v239 + 24) = 0x8000000225D16E60;
          *(v239 + 32) = v248;
          *(v239 + 40) = 0;
          swift_willThrow();
          v310 = 0x8000000225D16ED0;
          v254 = v237;
          v255 = v237;
          v256 = sub_225B2C248(MEMORY[0x277D84F90]);
          v257 = swift_allocError();
          v259 = v258;
          swift_getErrorValue();
          v260 = v318;
          v261 = v237;
          sub_225B21FAC(v260, &v313);

          v262 = *(&v313 + 1);
          v303 = v257;
          if (*(&v313 + 1))
          {
            v263 = v313;
            v308 = v314;
            v307 = v315;
            v264 = v316;
            v265 = v317;
          }

          else
          {
            *&v313 = v237;
            v274 = v237;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
            sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
            if (swift_dynamicCast())
            {
              v275 = v319;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_225CD30F0;
              *(inited + 32) = 20;
              v277 = [v275 code];
              v278 = MEMORY[0x277D83BF8];
              *(inited + 64) = MEMORY[0x277D83B88];
              *(inited + 72) = v278;
              *(inited + 40) = v277;
              v264 = sub_225B2C374(inited);
              swift_setDeallocating();
              sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

              v279 = v237;
              v263 = 0;
              v308 = 0;
              v307 = 0;
              v262 = MEMORY[0x277D84F90];
            }

            else
            {
              *&v313 = v237;
              v280 = v237;
              v281 = v300;
              v282 = v307;
              v283 = swift_dynamicCast();
              (v302)(v281, v283 ^ 1u, 1, v282);
              LODWORD(v282) = v299(v281, 1, v282);
              sub_2259CB640(v281, &unk_27D73B050, &unk_225CD3AD0);
              if (v282)
              {
                v263 = 0;
              }

              else
              {
                v263 = 23;
              }

              v262 = MEMORY[0x277D84F90];
              v264 = sub_225B2C374(MEMORY[0x277D84F90]);
              v284 = v237;
              v308 = 0xD000000000000024;
              v307 = v310;
            }

            v265 = v237;
          }

          v285 = swift_isUniquelyReferenced_nonNull_native();
          *&v313 = v264;
          sub_225B2C4A0(v256, sub_225B2AC40, 0, v285, &v313);

          v286 = v313;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v262 = sub_225B29AA0(0, *(v262 + 2) + 1, 1, v262);
          }

          v288 = *(v262 + 2);
          v287 = *(v262 + 3);
          if (v288 >= v287 >> 1)
          {
            v262 = sub_225B29AA0((v287 > 1), v288 + 1, 1, v262);
          }

          *(v262 + 2) = v288 + 1;
          v289 = &v262[56 * v288];
          v290 = v310;
          *(v289 + 4) = 0xD000000000000024;
          *(v289 + 5) = v290;
          v291 = v312;
          *(v289 + 6) = 0xD000000000000028;
          *(v289 + 7) = v291;
          v292 = v311;
          *(v289 + 8) = 0xD000000000000034;
          *(v289 + 9) = v292;
          *(v289 + 10) = 355;
          *v259 = v263;
          v293 = v308;
          *(v259 + 8) = v262;
          *(v259 + 16) = v293;
          *(v259 + 24) = v307;
          *(v259 + 32) = v286;
          *(v259 + 40) = v265;
          swift_willThrow();
          sub_2259B97A8(v301, v309);
        }

        else
        {
          v266 = sub_225CCE474();
          v268 = v267;
          v315 = MEMORY[0x277CC9318];
          *&v313 = v232;
          *(&v313 + 1) = v234;
          sub_2259B9624(&v313, &v319);
          sub_2259CB710(v232, v234);
          v269 = swift_isUniquelyReferenced_nonNull_native();
          v321 = v46;
          v270 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
          MEMORY[0x28223BE20](v270);
          v272 = (&v294 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v273 + 16))(v272);
          sub_225C2BFB4(*v272, v272[1], v266, v268, v269, &v321);

          sub_2259B97A8(v232, v234);
          sub_2259B97A8(v301, v179);
          __swift_destroy_boxed_opaque_existential_0(&v319);
          return v321;
        }
      }

      else
      {

        sub_2259B97A8(v301, v179);
      }

      return v46;
    }

    v188 = sub_225CCE474();
    v190 = v189;
    v315 = MEMORY[0x277CC9318];
    v191 = v301;
    *&v313 = v301;
    *(&v313 + 1) = v179;
    sub_2259B9624(&v313, &v319);
    sub_2259CB6FC(v191, v179);
    sub_2259CB710(v191, v179);
    LOBYTE(v191) = swift_isUniquelyReferenced_nonNull_native();
    v321 = v46;
    v192 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
    MEMORY[0x28223BE20](v192);
    v194 = (&v294 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v195 + 16))(v194);
    sub_225C2BFB4(*v194, v194[1], v188, v190, v191, &v321);

    __swift_destroy_boxed_opaque_existential_0(&v319);
    v196 = v321;
    v197 = sub_225CCE474();
    if (*(v196 + 16))
    {
      v199 = sub_2259F18D4(v197, v198);
      v201 = v200;

      v202 = v297;
      if (v201)
      {
        sub_2259CB810(*(v196 + 56) + 32 * v199, &v313);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF98, &qword_225CD76B0);
        if (swift_dynamicCast())
        {
          v203 = v319;
          v204 = sub_225CCE474();
          v206 = v205;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v203 = sub_225B29BC8(0, *(v203 + 2) + 1, 1, v203);
          }

          v208 = *(v203 + 2);
          v207 = *(v203 + 3);
          if (v208 >= v207 >> 1)
          {
            v203 = sub_225B29BC8((v207 > 1), v208 + 1, 1, v203);
          }

          *(v203 + 2) = v208 + 1;
          v209 = &v203[16 * v208];
          *(v209 + 4) = v204;
          *(v209 + 5) = v206;
          v210 = sub_225CCE474();
          v212 = v211;
          v315 = v297;
          *&v313 = v203;
          sub_2259B9624(&v313, &v319);
          v213 = swift_isUniquelyReferenced_nonNull_native();
          v321 = v196;
          v214 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
          MEMORY[0x28223BE20](v214);
          v216 = (&v294 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v217 + 16))(v216);
          v218 = *v216;
          v219 = v210;
          v220 = v212;
          v221 = v213;
          goto LABEL_101;
        }
      }
    }

    else
    {

      v202 = v297;
    }

    v222 = sub_225CCE474();
    v224 = v223;
    v225 = swift_allocObject();
    *(v225 + 16) = xmmword_225CD30F0;
    *(v225 + 32) = sub_225CCE474();
    *(v225 + 40) = v226;
    v315 = v202;
    *&v313 = v225;
    sub_2259B9624(&v313, &v319);
    LOBYTE(v225) = swift_isUniquelyReferenced_nonNull_native();
    v321 = v196;
    v227 = __swift_mutable_project_boxed_opaque_existential_0(&v319, v320);
    MEMORY[0x28223BE20](v227);
    v229 = (&v294 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v230 + 16))(v229);
    v218 = *v229;
    v219 = v222;
    v220 = v224;
    v221 = v225;
LABEL_101:
    sub_225C2C19C(v218, v219, v220, v221, &v321);

    sub_2259B97A8(v301, v179);
    __swift_destroy_boxed_opaque_existential_0(&v319);
    v46 = v321;
    goto LABEL_102;
  }

LABEL_129:
  __break(1u);
  return result;
}

uint64_t DeviceIdentityCommon.callDeviceIdentity(baaOptions:)(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_225CCF3F4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_225CCF404();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_225CCEDA4();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  sub_225CCDA64();
  v1[21] = swift_task_alloc();
  sub_225CCED84();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2259FC284, 0, 0);
}

uint64_t sub_2259FC284()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  type metadata accessor for DeviceIdentityCommon.ScrtAttestationActor();
  v4 = swift_allocObject();
  v0[23] = v4;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  sub_2259D8718(0, &qword_28105BFA8, 0x277D85C78);
  sub_225CCED74();
  sub_225CCDA54();
  (*(v2 + 104))(v1, *MEMORY[0x277D85260], v3);
  v0[24] = sub_225CCEDD4();
  sub_225CCEA54();
  v0[25] = 0;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_2259FC494;
  v6 = v0[23];
  v7 = v0[10];

  return sub_2259FCBD4((v0 + 2), v7, v6);
}

uint64_t sub_2259FC494()
{

  return MEMORY[0x2822009F8](sub_2259FC590, 0, 0);
}

uint64_t sub_2259FC590(uint64_t a1, __n128 a2)
{
  if (*(v2 + 33))
  {
    if (*(v2 + 33) == 1 || (v8 = *(v2 + 200), v9 = *(v2 + 24), *(v2 + 216) = *(v2 + 16), *(v2 + 224) = v9, *(v2 + 34) = *(v2 + 32), v8 == 3))
    {
      swift_willThrow();
      v10 = *(v2 + 192);

      v11 = *(v2 + 8);

      return v11();
    }

    else
    {
      v13 = *(v2 + 96);
      v12 = *(v2 + 104);
      v14 = *(v2 + 88);
      v15 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
      v17 = v16;
      sub_225CCFAF4();
      *(v2 + 64) = v15;
      *(v2 + 72) = v17;
      *(v2 + 48) = 0;
      *(v2 + 40) = 0;
      *(v2 + 56) = 1;
      v18 = sub_225A01B28(&qword_28105B8A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_225CCFAD4();
      sub_225A01B28(&unk_28105B8A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_225CCF414();
      v19 = *(v13 + 8);
      *(v2 + 232) = v19;
      *(v2 + 240) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v12, v14);
      v20 = swift_task_alloc();
      *(v2 + 248) = v20;
      *v20 = v2;
      v20[1] = sub_2259FC8D0;
      v22 = *(v2 + 112);
      v21 = *(v2 + 120);

      return MEMORY[0x2822008C8](v22, v2 + 40, v21, v18);
    }
  }

  else
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);

    v6 = *(v2 + 8);

    return v6(v4, v5);
  }
}

uint64_t sub_2259FC8D0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    v3 = sub_2259FCAE0;
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = sub_2259FCA28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2259FCA28()
{
  sub_225A01AC4(*(v0 + 216), *(v0 + 224), *(v0 + 34), 2);
  ++*(v0 + 200);
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_2259FC494;
  v2 = *(v0 + 184);
  v3 = *(v0 + 80);

  return sub_2259FCBD4(v0 + 16, v3, v2);
}

uint64_t sub_2259FCAE0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 34);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  sub_225A01AC4(v1, v2, v3, 2);
  v4 = *(v0 + 192);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2259FCBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3[20] = swift_task_alloc();
  v4 = sub_225CCD954();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2259FCCD0, 0, 0);
}

uint64_t sub_2259FCCD0()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2259A7000, v7, v8, "creating BAA certificate with DeviceIdentity", v9, 2u);
    MEMORY[0x22AA6F950](v9, -1, -1);
  }

  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  v13 = v0[19];

  (*(v11 + 8))(v10, v12);

  return MEMORY[0x2822009F8](sub_2259FCE8C, v13, 0);
}

uint64_t sub_2259FCEB4()
{
  if (*(v0 + 242))
  {
    v1 = *(v0 + 144);
    v2 = sub_225CCE474();
    v4 = v3;
    *(v0 + 16) = 1;
    *(v0 + 40) = MEMORY[0x277D83B88];
    sub_2259B9624((v0 + 16), (v0 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v1;
    v6 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, *(v0 + 72));
    sub_225C2BC74(*v6, v2, v4, isUniquelyReferenced_nonNull_native, &v13);

    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
    v7 = v13;
  }

  else
  {
    v7 = *(v0 + 144);
  }

  v8 = swift_allocObject();
  *(v0 + 192) = v8;
  *(v8 + 16) = v7;
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  v9[2] = 0x4072C00000000000;
  v9[3] = &unk_225CD7628;
  v9[4] = v8;
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_2259FD07C;

  return MEMORY[0x282200740](v0 + 104, &type metadata for DeviceIdentityResult, &type metadata for DeviceIdentityResult, 0, 0, &unk_225CD7638, v9, &type metadata for DeviceIdentityResult);
}

uint64_t sub_2259FD07C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_2259FD224;
  }

  else
  {

    *(v2 + 224) = *(v2 + 104);
    v3 = sub_2259FD1A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2259FD1A8()
{
  v1 = *(v0 + 136);
  *v1 = *(v0 + 224);
  *(v1 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2259FD224()
{
  v27 = v0;
  v1 = *(v0 + 216);

  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 160);

    v4 = MEMORY[0x277D84F90];
    v5 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v6 = swift_allocError();
    v8 = v7;
    v9 = sub_225CCE954();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v3, 1, 1, v9);
    LODWORD(v9) = (*(v10 + 48))(v3, 1, v9);
    sub_2259CB640(v3, &unk_27D73B050, &unk_225CD3AD0);
    if (v9)
    {
      v11 = 304;
    }

    else
    {
      v11 = 23;
    }

    v12 = sub_225B2C374(v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v26);

    v14 = v26;
    v15 = sub_225B29AA0(0, 1, 1, v4);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
    }

    v18 = *(v0 + 136);
    *(v15 + 2) = v17 + 1;
    v19 = &v15[56 * v17];
    *(v19 + 4) = 0xD000000000000019;
    *(v19 + 5) = 0x8000000225D16D40;
    *(v19 + 6) = 0xD000000000000028;
    *(v19 + 7) = 0x8000000225D16CF0;
    *(v19 + 8) = 0xD00000000000001FLL;
    *(v19 + 9) = 0x8000000225D16D60;
    *(v19 + 10) = 261;
    *v8 = v11;
    *(v8 + 8) = v15;
    *(v8 + 16) = 0xD000000000000019;
    *(v8 + 24) = 0x8000000225D16D40;
    *(v8 + 32) = v14;
    *(v8 + 40) = 0;
    *v18 = v6;
    *(v18 + 8) = 0;
    *(v18 + 16) = 513;

    goto LABEL_16;
  }

  swift_getErrorValue();
  Error.dipErrorCode.getter(*(v0 + 88), (v0 + 240));
  v20 = *(v0 + 240);
  if (v20 != 236)
  {
    v21 = *(v0 + 136);
    *v21 = *(v0 + 216);
    *(v21 + 8) = 0;
    if (v20 == 237)
    {
      v22 = 513;
    }

    else
    {
      v22 = 256;
    }

    *(v21 + 16) = v22;
LABEL_16:

    v24 = *(v0 + 8);

    return v24();
  }

  v23 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_2259FD5C0, v23, 0);
}

uint64_t sub_2259FD5E8()
{
  v1 = v0[17];
  *v1 = v0[27];
  *(v1 + 8) = 0;
  *(v1 + 16) = 513;

  v2 = v0[1];

  return v2();
}

uint64_t sub_2259FD668(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2259FD700;

  return sub_2259FD884(a2);
}

uint64_t sub_2259FD700(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2259FD85C, 0, 0);
  }
}

uint64_t sub_2259FD8A4()
{
  sub_225BE0F54(v0[5]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v0 + 4;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2259FD9A8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x8000000225D16D80, sub_225A02D5C, v2, &type metadata for DeviceIdentityResult);
}

uint64_t sub_2259FD9A8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2259FDB34;
  }

  else
  {

    v2 = sub_2259FDAC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259FDAC4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2259FDB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeviceIdentityCommon.deleteCertificateWithDeviceIdentity(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2259FDBC0, 0, 0);
}

uint64_t sub_2259FDBC0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = 0x4072C00000000000;
  v4[3] = &unk_225CD7418;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2259FDCF0;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v5, v6, v7, 0, 0, &unk_225CEF170, v4, v8);
}

uint64_t sub_2259FDCF0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2259FDE2C;
  }

  else
  {

    v2 = sub_2259FDE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259FDE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259FDE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2259FDEB8, 0, 0);
}

uint64_t sub_2259FDEB8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2259FDFAC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001CLL, 0x8000000225D16C50, sub_225A02434, v3, v5);
}

uint64_t sub_2259FDFAC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2259FE0C8;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259FE0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259FE12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2259FE1F0;

  return DeviceIdentityCommon.fetchOrCreateCertificateWithDeviceIdentity(label:laContext:options:enableUAM:)(a1, a2, a3, a4, a5);
}

uint64_t sub_2259FE1F0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2259FE300(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2259FE39C;

  return DeviceIdentityCommon.deleteCertificateWithDeviceIdentity(label:)(a1, a2);
}

uint64_t sub_2259FE39C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2259FE490(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02EA4;

  return DeviceIdentityCommon.callDeviceIdentity(baaOptions:)(a1);
}

void sub_2259FE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock[-1] - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080, &unk_225CEF1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = sub_225CCE474();
  *(inited + 40) = v12;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v13;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  v14 = sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090, &unk_225CD7610);
  swift_arrayDestroy();
  sub_225BE11E0(v14);

  v15 = sub_225CCE2B4();

  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;
  aBlock[4] = sub_225A028EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2259FEF3C;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v19);
}

void sub_2259FE808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  if (a3)
  {
    v62 = a4;
    v17 = a3;
    v18 = sub_2259F9114(a3);
    v58 = "ivate.swiftinterface";
    v59 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v60 = swift_allocError();
    v20 = v19;
    swift_getErrorValue();
    v21 = v70;
    v22 = v18;
    sub_225B21FAC(v21, &v64);

    v23 = v65;
    v61 = 0x8000000225D16CD0;
    if (v65)
    {
      v57 = v64;
      v55 = v66;
      v56 = v67;
      v25 = v68;
      v24 = v69;
    }

    else
    {
      v64 = v18;
      v33 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v34 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v36 = [v34 code];
        v37 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v37;
        *(inited + 40) = v36;
        v25 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v38 = v18;
        v56 = 0;
        v55 = 0;
        v57 = 0;
        v23 = MEMORY[0x277D84F90];
      }

      else
      {
        v64 = v18;
        v39 = v18;
        v40 = sub_225CCE954();
        v41 = swift_dynamicCast();
        v42 = *(v40 - 8);
        (*(v42 + 56))(v16, v41 ^ 1u, 1, v40);
        v43 = (*(v42 + 48))(v16, 1, v40);
        sub_2259CB640(v16, &unk_27D73B050, &unk_225CD3AD0);
        if (v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = 23;
        }

        v57 = v44;
        v23 = MEMORY[0x277D84F90];
        v25 = sub_225B2C374(MEMORY[0x277D84F90]);
        v45 = v18;
        v56 = 0x8000000225D16CD0;
        v55 = 0xD00000000000001ELL;
      }

      v24 = v18;
    }

    v46 = v58 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v25;
    sub_225B2C4A0(v59, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v64);

    v48 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_225B29AA0(0, *(v23 + 2) + 1, 1, v23);
    }

    v50 = *(v23 + 2);
    v49 = *(v23 + 3);
    if (v50 >= v49 >> 1)
    {
      v23 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v23);
    }

    *(v23 + 2) = v50 + 1;
    v51 = &v23[56 * v50];
    v52 = v61;
    *(v51 + 4) = 0xD00000000000001ELL;
    *(v51 + 5) = v52;
    *(v51 + 6) = 0xD000000000000028;
    *(v51 + 7) = 0x8000000225D16CF0;
    *(v51 + 8) = 0xD00000000000001CLL;
    *(v51 + 9) = v46;
    *(v51 + 10) = 382;
    *v20 = v57;
    v53 = v55;
    *(v20 + 8) = v23;
    *(v20 + 16) = v53;
    *(v20 + 24) = v56;
    *(v20 + 32) = v48;
    *(v20 + 40) = v24;
    v64 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
    sub_225CCE924();
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v26 = off_28105B918;
    v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v28));
    (*(v11 + 16))(v13, &v26[v27], v10);
    os_unfair_lock_unlock(&v26[v28]);

    v29 = sub_225CCD934();
    v30 = sub_225CCED04();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2259BE198(a5, a6, &v64);
      _os_log_impl(&dword_2259A7000, v29, v30, "Device Identity deleted certificate %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA6F950](v32, -1, -1);
      MEMORY[0x22AA6F950](v31, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
    sub_225CCE934();
  }
}

uint64_t sub_2259FEF3C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_225CCE814();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void sub_2259FEFF0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-v5];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680);
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28[-v8];
  v10 = sub_225CCE474();
  v12 = *a2;
  if (*(*a2 + 16))
  {
    v30 = v6;
    v31 = a1;
    v13 = sub_2259F18D4(v10, v11);
    v15 = v14;
    a1 = v31;

    if (v15)
    {
      sub_2259CB810(*(v12 + 56) + 32 * v13, aBlock);
      if (swift_dynamicCast())
      {
        v16 = v33;
        v17 = v34;
        v29 = sub_225CCE474();
        v19 = v18;
        v26 = sub_2259F5078(v16, v17);
        type metadata accessor for SecAccessControl(0);
        v36 = v27;
        aBlock[0] = v26;
        sub_225A051BC(aBlock, v29, v19);
        sub_2259BEF00(v16, v17);
        a1 = v31;
      }
    }
  }

  else
  {
  }

  sub_225BE11E0(v20);

  v21 = sub_225CCE2B4();

  v22 = v32;
  (*(v7 + 16))(v9, a1, v32);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v23, v9, v22);
  v37 = sub_225A02D64;
  v38 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2259FEF3C;
  v36 = &block_descriptor_90;
  v25 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v25);
}

void sub_2259FF7AC(void *a1, uint64_t a2, id a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v101 - v12;
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a4;
  if (a3)
  {
    v103 = v13;
    v18 = a3;
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
    v22 = a3;
    v23 = sub_225CCD934();
    v24 = sub_225CCED14();

    v25 = os_log_type_enabled(v23, v24);
    v106 = a3;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v108 = v27;
      *v26 = 136446210;
      v28 = sub_225CCCCB4();
      v29 = [v28 debugDescription];

      v30 = sub_225CCE474();
      v32 = v31;

      v33 = v30;
      a3 = v106;
      v34 = sub_2259BE198(v33, v32, &v108);

      *(v26 + 4) = v34;
      _os_log_impl(&dword_2259A7000, v23, v24, "Device Identity Error: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA6F950](v27, -1, -1);
      MEMORY[0x22AA6F950](v26, -1, -1);
    }

    (*(v15 + 8))(v17, v14);
    v35 = 0x8000000225D16E40;
    v36 = sub_2259F9114(a3);
    v37 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v104 = swift_allocError();
    v39 = v38;
    swift_getErrorValue();
    v40 = v114;
    v41 = v36;
    sub_225B21FAC(v40, &v108);

    v42 = v109;
    v105 = 0x8000000225D16E40;
    if (v109)
    {
      v103 = v108;
      v35 = v111;
      v102 = v110;
      v43 = v112;
      v44 = v113;
    }

    else
    {
      v108 = v36;
      v50 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v51 = v115;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v53 = [v51 code];
        v54 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v54;
        *(inited + 40) = v53;
        v43 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v55 = v36;
        v35 = 0;
        v102 = 0;
        v103 = 0;
        v42 = MEMORY[0x277D84F90];
      }

      else
      {
        v108 = v36;
        v87 = v36;
        v88 = sub_225CCE954();
        v89 = v103;
        v90 = swift_dynamicCast();
        v91 = *(v88 - 8);
        (*(v91 + 56))(v89, v90 ^ 1u, 1, v88);
        LODWORD(v88) = (*(v91 + 48))(v89, 1, v88);
        sub_2259CB640(v89, &unk_27D73B050, &unk_225CD3AD0);
        if (v88)
        {
          v92 = 0;
        }

        else
        {
          v92 = 23;
        }

        v103 = v92;
        v42 = MEMORY[0x277D84F90];
        v43 = sub_225B2C374(MEMORY[0x277D84F90]);
        v93 = v36;
        v102 = 0xD00000000000001ELL;
      }

      v44 = v36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v43;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v108);

    v95 = v108;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_225B29AA0(0, *(v42 + 2) + 1, 1, v42);
    }

    v97 = *(v42 + 2);
    v96 = *(v42 + 3);
    if (v97 >= v96 >> 1)
    {
      v42 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v42);
    }

    *(v42 + 2) = v97 + 1;
    v98 = &v42[56 * v97];
    v99 = v105;
    *(v98 + 4) = 0xD00000000000001ELL;
    *(v98 + 5) = v99;
    *(v98 + 6) = 0xD000000000000028;
    *(v98 + 7) = 0x8000000225D16CF0;
    *(v98 + 8) = 0xD000000000000022;
    *(v98 + 9) = 0x8000000225D16D80;
    *(v98 + 10) = 413;
    *v39 = v103;
    v100 = v102;
    *(v39 + 8) = v42;
    *(v39 + 16) = v100;
    *(v39 + 24) = v35;
    *(v39 + 32) = v95;
    *(v39 + 40) = v44;
    v108 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680);
    sub_225CCE924();
  }

  else if (a1)
  {
    if (a2 && *(a2 + 16) == 2)
    {
      sub_2259CB810(a2 + 32, &v108);
      type metadata accessor for SecCertificate(0);
      v45 = a1;
      swift_dynamicCast();
      v46 = v115;
      sub_2259CB810(a2 + 64, &v108);
      swift_dynamicCast();
      v47 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_225CD73E0;
      *(v48 + 32) = v46;
      *(v48 + 40) = v47;
      v108 = v45;
      v109 = v48;
      v49 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680);
      sub_225CCE934();
      releaseCFObject(v49);
    }

    else
    {
      v106 = 0x8000000225D16CF0;
      v56 = a1;
      v57 = MEMORY[0x277D84F90];
      v58 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v59 = swift_allocError();
      v61 = v60;
      v62 = sub_225CCE954();
      v63 = *(v62 - 8);
      (*(v63 + 56))(v11, 1, 1, v62);
      LODWORD(v62) = (*(v63 + 48))(v11, 1, v62);
      sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
      if (v62)
      {
        v64 = 235;
      }

      else
      {
        v64 = 23;
      }

      v65 = sub_225B2C374(v57);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v65;
      sub_225B2C4A0(v58, sub_225B2AC40, 0, v66, &v108);

      v67 = v108;
      v68 = sub_225B29AA0(0, 1, 1, v57);
      v70 = *(v68 + 2);
      v69 = *(v68 + 3);
      if (v70 >= v69 >> 1)
      {
        v68 = sub_225B29AA0((v69 > 1), v70 + 1, 1, v68);
      }

      *(v68 + 2) = v70 + 1;
      v71 = &v68[56 * v70];
      *(v71 + 4) = 0xD00000000000002FLL;
      *(v71 + 5) = 0x8000000225D16E10;
      *(v71 + 6) = 0xD000000000000028;
      *(v71 + 7) = v106;
      *(v71 + 8) = 0xD000000000000022;
      *(v71 + 9) = 0x8000000225D16D80;
      *(v71 + 10) = 429;
      *v61 = v64;
      *(v61 + 8) = v68;
      *(v61 + 16) = 0xD00000000000002FLL;
      *(v61 + 24) = 0x8000000225D16E10;
      *(v61 + 32) = v67;
      *(v61 + 40) = 0;
      v108 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680);
      sub_225CCE924();
      releaseCFObject(v56);
    }
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
    v73 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v74 = swift_allocError();
    v76 = v75;
    v77 = sub_225CCE954();
    v78 = *(v77 - 8);
    (*(v78 + 56))(v11, 1, 1, v77);
    LODWORD(v77) = (*(v78 + 48))(v11, 1, v77);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v77)
    {
      v79 = 234;
    }

    else
    {
      v79 = 23;
    }

    v80 = sub_225B2C374(v72);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v80;
    sub_225B2C4A0(v73, sub_225B2AC40, 0, v81, &v108);

    v82 = v108;
    v83 = sub_225B29AA0(0, 1, 1, v72);
    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v83);
    }

    *(v83 + 2) = v85 + 1;
    v86 = &v83[56 * v85];
    *(v86 + 4) = 0xD00000000000002ALL;
    *(v86 + 5) = 0x8000000225D16DE0;
    *(v86 + 6) = 0xD000000000000028;
    *(v86 + 7) = 0x8000000225D16CF0;
    *(v86 + 8) = 0xD000000000000022;
    *(v86 + 9) = 0x8000000225D16D80;
    *(v86 + 10) = 418;
    *v76 = v79;
    *(v76 + 8) = v83;
    *(v76 + 16) = 0xD00000000000002ALL;
    *(v76 + 24) = 0x8000000225D16DE0;
    *(v76 + 32) = v82;
    *(v76 + 40) = 0;
    v108 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680);
    sub_225CCE924();
  }
}

uint64_t sub_225A00440()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_225A0047C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A00520, 0, 0);
}

uint64_t sub_225A00520()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[6];
  v5 = sub_225CCE994();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_225A0130C(v1, &unk_225CD75D0, v7, MEMORY[0x277D84F78] + 8);
  sub_2259CB640(v1, &qword_27D73FE00, &qword_225CD75C0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v2;

  sub_225A0130C(v1, &unk_225CD75E0, v8, MEMORY[0x277D84F78] + 8);
  sub_2259CB640(v1, &qword_27D73FE00, &qword_225CD75C0);
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF68, &qword_225CD75E8);
  *v9 = v0;
  v9[1] = sub_225A00730;

  return MEMORY[0x2822004C0](v0 + 2, v10);
}

uint64_t sub_225A00730()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_225A0096C;
  }

  else
  {
    *(v2 + 96) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v3 = sub_225A00854;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225A00854()
{
  v1 = *(v0 + 25);
  if (v1 == 255)
  {
    sub_225A02370();
    v2 = swift_allocError();
    LOBYTE(v1) = 1;
  }

  else
  {
    v2 = *(v0 + 96);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCEA84();
  if (v1)
  {
    *(v0 + 32) = v2;
    swift_willThrowTypedImpl();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_225A00988(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A00A2C, 0, 0);
}

uint64_t sub_225A00A2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[7];
  v5 = sub_225CCE994();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_225A0130C(v1, &unk_225CD7650, v7, &type metadata for DeviceIdentityResult);
  sub_2259CB640(v1, &qword_27D73FE00, &qword_225CD75C0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v2;

  sub_225A0130C(v1, &unk_225CD7660, v8, &type metadata for DeviceIdentityResult);
  sub_2259CB640(v1, &qword_27D73FE00, &qword_225CD75C0);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF70, &qword_225CD7668);
  *v9 = v0;
  v9[1] = sub_225A00C34;

  return MEMORY[0x2822004C0](v0 + 2, v10);
}

uint64_t sub_225A00C34()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_225A00EAC;
  }

  else
  {
    *(v2 + 104) = *(v2 + 16);
    *(v2 + 33) = *(v2 + 32);
    v3 = sub_225A00D58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225A00D58()
{
  v1 = *(v0 + 33);
  if (v1 == 255)
  {
    sub_225A02370();
    v3 = swift_allocError();
    v2 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCEA84();
  if (v1)
  {
    *(v0 + 40) = v3;
    swift_willThrowTypedImpl();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(v3, v2);
  }
}

uint64_t sub_225A00EC8(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_225CCF404();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A00F88, 0, 0);
}

uint64_t sub_225A00F88(__n128 a1)
{
  v2 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
  v4 = v3;
  sub_225CCFAF4();
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_225A01064;

  return sub_225A015E8(v2, v4, 0, 0, 1);
}

uint64_t sub_225A01064()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_225A0126C;
  }

  else
  {
    v5 = sub_225A011D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225A011D4()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A0126C()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A0130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_225A023C4(a1, v19 - v9);
  v11 = sub_225CCE994();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2259CB640(v10, &qword_27D73FE00, &qword_225CD75C0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_225CCE904();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_225CCE984();
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

uint64_t sub_225A014F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_225A02E94;

  return v8(a1);
}

uint64_t sub_225A015E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_225CCF3F4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_225A016E8, 0, 0);
}

uint64_t sub_225A016E8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_225CCF404();
  v5 = sub_225A01B28(&qword_28105B8A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_225CCFAD4();
  sub_225A01B28(&unk_28105B8A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_225CCF414();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_225A01878;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_225A01878()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A01A34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_225A01A34()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_225A01AC4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_225A01B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225A01B70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2259FE39C;

  return sub_2259FDE98(a1, v5, v4);
}

unint64_t sub_225A01C20()
{
  result = qword_27D73AF60;
  if (!qword_27D73AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF60);
  }

  return result;
}

uint64_t dispatch thunk of DeviceIdentityCommonProtocol.fetchOrCreateCertificateWithDeviceIdentity(label:laContext:options:enableUAM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_225A01DDC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_225A01DDC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of DeviceIdentityCommonProtocol.deleteCertificateWithDeviceIdentity(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeviceIdentityCommonProtocol.callDeviceIdentity(baaOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02EAC;

  return v9(a1, a2, a3);
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

uint64_t sub_225A02154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_225A0219C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_225A021F4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02E94;

  return sub_225A00EC8(v2);
}

uint64_t sub_225A022B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225A014F0(a1, v4, v5, v6);
}

unint64_t sub_225A02370()
{
  result = qword_28105B6D0;
  if (!qword_28105B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6D0);
  }

  return result;
}

uint64_t sub_225A023C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A0243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_225A024F4;

  return sub_225A00988(a2, a3, a4, a5);
}

uint64_t sub_225A024F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_225A02610(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_225A02E90;

  return sub_225A00EC8(a2);
}

uint64_t sub_225A026A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_225A0279C;

  return v7(v4 + 16);
}

uint64_t sub_225A0279C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_225A028D4;
  }

  else
  {
    v2 = sub_225A028B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_225A028EC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_2259FE808(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225A029C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_2259FD668(a1, v4);
}

uint64_t sub_225A02A68(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_225A02E94;

  return sub_225A0243C(a1, a2, v8, v7, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_225A02B88(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225A02610(a1, v4);
}

uint64_t objectdestroy_45Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225A02C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225A026A8(a1, v4, v5, v6);
}

void sub_225A02D64(void *a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_2259FF7AC(a1, a2, a3, v8);
}

uint64_t sub_225A02DF8(uint64_t *a1, int a2)
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

uint64_t sub_225A02E40(uint64_t result, int a2, int a3)
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

uint64_t DeviceIdentityKey.init(key:certificates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DeviceIdentityOptions.aclData.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = a3;
  *(v4 + 160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v4 + 184) = swift_task_alloc();
  v6 = a4[1];
  *(v4 + 192) = *a4;
  *(v4 + 208) = v6;

  return MEMORY[0x2822009F8](sub_225A03008, 0, 0);
}

uint64_t sub_225A03008()
{
  v1 = *(v0 + 201) << 8;
  v2 = sub_225B2CECC(MEMORY[0x277D84F90]);
  if (v1 != 512)
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    if (v5)
    {
      sub_2259CB6FC(v3, v4);
      if ((v5 & 0x100) == 0)
      {
LABEL_7:
        v12 = *(v0 + 208);
        v11 = *(v0 + 216);
        v14 = *(v0 + 192);
        v13 = *(v0 + 200);
        if (v11 >> 60 == 15)
        {
          sub_225A05070(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
        }

        else
        {
          sub_2259CB6FC(*(v0 + 208), *(v0 + 216));
          v15 = sub_225CCCF84();
          v17 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_225A04090(v15, v17, 7, isUniquelyReferenced_nonNull_native);
          sub_225A05070(v14, v13, v12, v11);
          sub_225A05070(v14, v13, v12, v11);
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(v0 + 152) = *(v0 + 192);
      sub_2259CB6FC(v3, v4);
      v6 = sub_225CCF824();
      v8 = v7;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_225A04090(v6, v8, 1, v9);
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_7;
      }
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A04090(1702195828, 0xE400000000000000, 4, v10);
    goto LABEL_7;
  }

LABEL_10:
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A04090(1702195828, 0xE400000000000000, 5, v19);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A04090(1702195828, 0xE400000000000000, 6, v20);
  v21 = v2;
  *(v0 + 224) = v2;
  v22 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v0 + 232) = v22;
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_225A032A0;
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);

  return sub_2259F8828(v25, v24, v22, v21, 0);
}

uint64_t sub_225A032A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 248) = v2;

  if (v2)
  {
    v7 = sub_225A0346C;
  }

  else
  {

    *(v6 + 256) = a2;
    *(v6 + 264) = a1;
    v7 = sub_225A033DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225A033DC()
{
  v1 = *(v0 + 160);
  v4 = *(v0 + 256);

  *v1 = vextq_s8(v4, v4, 8uLL);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225A0346C()
{
  v44 = v0;
  v1 = v0[31];
  v2 = v0[29];

  v3 = v1;
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  swift_getErrorValue();
  v7 = v0[13];
  v8 = v1;
  sub_225B21FAC(v7, &v38);

  v9 = v39;
  if (v39)
  {
    v10 = v40;
    v36 = v41;
    v37 = v38;
    v11 = v42;
    v1 = v43;
  }

  else
  {
    v12 = v0[31];
    v0[16] = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    v14 = swift_dynamicCast();
    v15 = v0[31];
    if (v14)
    {
      v16 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v18 = [v16 code];
      v19 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v19;
      *(inited + 40) = v18;
      v11 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v20 = v15;
      v36 = 0;
      v37 = 0;
      v10 = 0;
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      v21 = v0[23];
      v0[18] = v15;
      v22 = v15;
      v23 = sub_225CCE954();
      v24 = swift_dynamicCast();
      v25 = *(v23 - 8);
      (*(v25 + 56))(v21, v24 ^ 1u, 1, v23);
      LODWORD(v25) = (*(v25 + 48))(v21, 1, v23);
      sub_2259CB640(v21, &unk_27D73B050, &unk_225CD3AD0);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = 23;
      }

      v37 = v26;
      v9 = MEMORY[0x277D84F90];
      v11 = sub_225B2C374(MEMORY[0x277D84F90]);
      v27 = v15;
      v36 = 0;
      v10 = 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v11;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

  v29 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_225B29AA0(0, *(v9 + 2) + 1, 1, v9);
  }

  v31 = *(v9 + 2);
  v30 = *(v9 + 3);
  if (v31 >= v30 >> 1)
  {
    v9 = sub_225B29AA0((v30 > 1), v31 + 1, 1, v9);
  }

  v32 = v0[31];

  *(v9 + 2) = v31 + 1;
  v33 = &v9[56 * v31];
  *(v33 + 4) = 0;
  *(v33 + 5) = 0;
  *(v33 + 6) = 0xD00000000000002ALL;
  *(v33 + 7) = 0x8000000225D16FA0;
  *(v33 + 8) = 0xD000000000000028;
  *(v33 + 9) = 0x8000000225D16FD0;
  *(v33 + 10) = 91;
  *v6 = v37;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  *(v6 + 24) = v36;
  *(v6 + 32) = v29;
  *(v6 + 40) = v1;
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v2 + 152) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 160) = v5;
  *v5 = v2;
  v5[1] = sub_225A0396C;

  return sub_2259F8D34(a1, a2);
}

uint64_t sub_225A0396C()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A03AA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225A03AA8()
{
  v43 = v0;
  v1 = v0[21];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v5 = v4;
  swift_getErrorValue();
  v6 = v0[13];
  v7 = v1;
  sub_225B21FAC(v6, &v37);

  v8 = v38;
  if (v38)
  {
    v9 = v39;
    v35 = v40;
    v36 = v37;
    v10 = v41;
    v1 = v42;
  }

  else
  {
    v11 = v0[21];
    v0[16] = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    v13 = swift_dynamicCast();
    v14 = v0[21];
    if (v13)
    {
      v15 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v17 = [v15 code];
      v18 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v18;
      *(inited + 40) = v17;
      v10 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v19 = v14;
      v35 = 0;
      v36 = 0;
      v9 = 0;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v20 = v0[19];
      v0[18] = v14;
      v21 = v14;
      v22 = sub_225CCE954();
      v23 = swift_dynamicCast();
      v24 = *(v22 - 8);
      (*(v24 + 56))(v20, v23 ^ 1u, 1, v22);
      LODWORD(v24) = (*(v24 + 48))(v20, 1, v22);
      sub_2259CB640(v20, &unk_27D73B050, &unk_225CD3AD0);
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = 23;
      }

      v36 = v25;
      v8 = MEMORY[0x277D84F90];
      v10 = sub_225B2C374(MEMORY[0x277D84F90]);
      v26 = v14;
      v35 = 0;
      v9 = 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v10;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

  v28 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_225B29AA0(0, *(v8 + 2) + 1, 1, v8);
  }

  v30 = *(v8 + 2);
  v29 = *(v8 + 3);
  if (v30 >= v29 >> 1)
  {
    v8 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v8);
  }

  v31 = v0[21];

  *(v8 + 2) = v30 + 1;
  v32 = &v8[56 * v30];
  *(v32 + 4) = 0;
  *(v32 + 5) = 0;
  *(v32 + 6) = 0xD00000000000002ALL;
  *(v32 + 7) = 0x8000000225D16FA0;
  *(v32 + 8) = 0xD000000000000021;
  *(v32 + 9) = 0x8000000225D17000;
  *(v32 + 10) = 100;
  *v5 = v36;
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  *(v5 + 24) = v35;
  *(v5 + 32) = v28;
  *(v5 + 40) = v1;
  swift_willThrow();

  v33 = v0[1];

  return v33();
}

uint64_t sub_225A03EE0(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_225A45624();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_225A42B40(v4, v5);
  return 1;
}

_OWORD *sub_225A03F40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2259F18D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_225A43EF0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_225A404FC(v16, a4 & 1);
    v11 = sub_2259F18D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2259B9624(a1, v22);
  }

  else
  {
    sub_225A9F748(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_225A04090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2259F1BAC(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_225A440E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_225A40810(v16, a4 & 1);
    v11 = sub_2259F1BAC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_225A9F7B4(v11, a3, a1, a2, v21);
  }
}

_OWORD *sub_225A041C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_225CCF454();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2259F1C5C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_225A44248();
      goto LABEL_7;
    }

    sub_225A40AB0(v17, a3 & 1);
    v23 = sub_2259F1C5C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_225A9F7FC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return sub_2259B9624(a1, v21);
}

uint64_t sub_225A043A0(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2259F19CC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_225A43D70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_225A3FEA4(v14, a3 & 1);
    v9 = sub_2259F19CC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2259A9C20(a1, v20);
  }

  else
  {

    return sub_225A9F8BC(v9, a2, a1, v19);
  }
}

unint64_t sub_225A04590(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2259F1D7C(a1, a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_225A44BD0();
      result = v17;
      goto LABEL_8;
    }

    sub_225A419E8(v14, a3 & 1);
    result = sub_2259F1D7C(a1, a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_13:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if ((v15 & 1) == 0)
  {
    sub_225A9F928(result, a1, a2, *v4);

    return sub_2259CB710(a1, a2);
  }

  return result;
}

unint64_t sub_225A046A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = a3;
  v12 = *v5;
  v13 = sub_2259F1900(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_225A45330();
      v13 = v21;
      goto LABEL_8;
    }

    sub_225A425C0(v18, a5 & 1);
    v13 = sub_2259F1900(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2;
    v27 = *(v24 + 16);
    *(v24 + 16) = v9;

    return sub_2259F6140(v25, v26, v27);
  }

  else
  {

    return sub_225A9F968(v13, a4, a1, a2, v9, v23);
  }
}

_OWORD *sub_225A047EC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2259F1AA8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_225A454A4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_225A42860(v13, a3 & 1);
    v8 = sub_2259F1AA8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_2259B9624(a1, v19);
  }

  else
  {
    sub_225A9F9B8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_225A0492C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2259F18D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_225A45624();
      v11 = v19;
      goto LABEL_8;
    }

    sub_225A42B40(v16, a4 & 1);
    v11 = sub_2259F18D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_225CCFAC4();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_225A9FA20(v11, a2, a3, a1, v21);
}

uint64_t sub_225A04AB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2259F18D4(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_2259F18D4(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_225A04C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2259F18D4(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_225A45904();
      v13 = v21;
      goto LABEL_8;
    }

    sub_225A43098(v18, a5 & 1);
    v13 = sub_2259F18D4(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_225A9FA68(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_225A04D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2259F18D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_225A45BDC();
      result = v19;
      goto LABEL_8;
    }

    sub_225A435F8(v16, a4 & 1);
    result = sub_2259F18D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_225A9FA20(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_225A04E9C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2259F2024(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_225A45D44();
      goto LABEL_7;
    }

    sub_225A43898(v16, a3 & 1);
    v27 = sub_2259F2024(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2259F6158(a2, v10);
      return sub_225A9FAB8(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

uint64_t sub_225A05070(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0xFF00) != 0x200)
  {
    return sub_2259B97A8(a3, a4);
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

uint64_t sub_225A050C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225A05118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_225A051BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2259B9624(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_225A03F40(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2259CB640(a1, &qword_27D73DD90, &unk_225CD4950);
    sub_225B2AC50(a2, v9, a3);

    return sub_2259CB640(v9, &qword_27D73DD90, &unk_225CD4950);
  }

  return result;
}

uint64_t sub_225A0528C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2259B9624(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_225A041C8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_225CCF454();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_2259CB640(a1, &qword_27D73DD90, &unk_225CD4950);
    sub_225B2ACF4(a2, v9);
    v7 = sub_225CCF454();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_2259CB640(v9, &qword_27D73DD90, &unk_225CD4950);
  }

  return result;
}

uint64_t sub_225A053A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2259A9C20(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_225A043A0(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_2259CB640(a1, &qword_27D73B028, &unk_225CD7AC0);
    v7 = sub_2259F19CC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_225A43D70();
        v11 = v13;
      }

      sub_2259A9C20((*(v11 + 56) + 40 * v9), v14);
      sub_225B2B474(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_2259CB640(v14, &qword_27D73B028, &unk_225CD7AC0);
  }

  return result;
}

uint64_t sub_225A054B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_225A04550(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2259F18D4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_225A44BA8();
        v14 = v16;
      }

      result = sub_225B2B9D8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_225A055AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_225A0492C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2259F18D4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_225A45624();
        v14 = v16;
      }

      result = sub_225B2B9D8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_225A056A4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE20, &qword_225CF9D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_2259CB640(a1, &qword_27D73FE20, &qword_225CF9D20);
    sub_225B2AE70(a2, v7);
    sub_225A0E298(a2, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
    return sub_2259CB640(v7, &qword_27D73FE20, &qword_225CF9D20);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_225A04E9C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_225A0E298(a2, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
    *v2 = v15;
  }

  return result;
}

uint64_t DigitalPresentmentResponseTopics.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
}

uint64_t sub_225A05904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
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

uint64_t sub_225A0598C(uint64_t a1)
{
  v2 = sub_225A05B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A059C8(uint64_t a1)
{
  v2 = sub_225A05B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigitalPresentmentResponseTopics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFB0, &qword_225CD78A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A05B94();
  v8 = *v1;
  v10 = v1[1];
  v11 = v8;

  sub_225CCFCE4();
  v13 = v10;
  v12 = v11;
  v14 = v7;
  sub_225A05BE8();
  sub_225CCF7E4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_225A05B94()
{
  result = qword_27D73AFB8;
  if (!qword_27D73AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFB8);
  }

  return result;
}

unint64_t sub_225A05BE8()
{
  result = qword_27D73AFC0;
  if (!qword_27D73AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFC0);
  }

  return result;
}

uint64_t DigitalPresentmentResponseTopics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFC8, &qword_225CD78A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A05B94();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_225A05DB4();
    sub_225CCF6E4();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225A05DB4()
{
  result = qword_27D73AFD0;
  if (!qword_27D73AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFD0);
  }

  return result;
}

uint64_t DigitalPresentmentResponseCryptor.init(sessionTranscript:presentmentType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_225CCF454();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v24 = a1;
  sub_225A0DEBC(a1, a3, type metadata accessor for ISO18013SessionTranscript);
  v11 = type metadata accessor for DigitalPresentmentResponseCryptor(0);
  v12 = *(v11 + 20);
  v25 = a3;
  *(a3 + v12) = v10;
  sub_225CCD424();
  swift_allocObject();
  v13 = sub_225CCD414();
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_27D73D108);
  v15 = *(v7 + 16);
  v15(v9, v14, v6);
  v28 = &type metadata for ISO18013PresentmentType;
  v27[0] = v10;
  v16 = sub_225CCD404();
  sub_225A0528C(v27, v9);
  v16(v26, 0);
  v17 = *(v11 + 24);
  v23 = v11;
  v18 = v25;
  *(v25 + v17) = v13;
  sub_225CCD3A4();
  swift_allocObject();

  v19 = sub_225CCD394();
  v15(v9, v14, v6);
  v28 = &type metadata for ISO18013PresentmentType;
  v27[0] = v10;
  v20 = sub_225CCD374();
  sub_225A0528C(v27, v9);
  v20(v26, 0);

  result = sub_225A0E298(v24, type metadata accessor for ISO18013SessionTranscript);
  *(v18 + *(v23 + 28)) = v19;
  return result;
}

uint64_t type metadata accessor for DigitalPresentmentResponseCryptor(uint64_t a1)
{
  result = qword_27D73B000;
  if (!qword_27D73B000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *DigitalPresentmentResponseCryptor.encrypt(_:to:)(__int128 *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v85 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v82 - v7;
  v9 = sub_225CCDEA4();
  v86 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v83 = a1[1];
  v84 = v12;
  v13 = *(a1 + 32);
  v14.value = SecTrustRef.getLeafCertificate()().value;
  if (v14.value)
  {
    value = v14.value;
    v82[1] = v1;
    v87 = v2;
    v16 = SecCertificateCopyKey(v14.value);
    if (v16 && (v17 = v16, v18 = copyPublicKeyDataFromSecKeyPublic(_:)(v16), v20 = v19, v17, v20 >> 60 != 15))
    {
      *&v89 = v18;
      *(&v89 + 1) = v20;
      sub_2259CB710(v18, v20);
      v67 = v87;
      sub_225CCDE94();
      v23 = v67;
      if (!v67)
      {
        v89 = v84;
        v90 = v83;
        LOBYTE(v91) = v13;
        v23 = DigitalPresentmentResponseCryptor.encrypt(_:to:)(&v89, v11);
        (*(v86 + 8))(v11, v9);
        sub_2259B97A8(v18, v20);

        return v23;
      }

      sub_2259B97A8(v18, v20);
    }

    else
    {
      v86 = 0x8000000225D17080;
      v21 = MEMORY[0x277D84F90];
      v22 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v23 = swift_allocError();
      v25 = v24;
      v26 = sub_225CCE954();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v8, 1, 1, v26);
      LODWORD(v26) = (*(v27 + 48))(v8, 1, v26);
      sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
      if (v26)
      {
        v28 = 249;
      }

      else
      {
        v28 = 23;
      }

      v29 = sub_225B2C374(v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v89 = v29;
      sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v89);

      v31 = v89;
      v32 = sub_225B29AA0(0, 1, 1, v21);
      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_225B29AA0((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[56 * v34];
      *(v35 + 4) = 0xD000000000000035;
      *(v35 + 5) = 0x8000000225D170C0;
      v36 = v86;
      *(v35 + 6) = 0xD000000000000035;
      *(v35 + 7) = v36;
      strcpy(v35 + 64, "encrypt(_:to:)");
      v35[79] = -18;
      *(v35 + 10) = 66;
      *v25 = v28;
      *(v25 + 8) = v32;
      *(v25 + 16) = 0xD000000000000035;
      *(v25 + 24) = 0x8000000225D170C0;
      *(v25 + 32) = v31;
      *(v25 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v87 = 0x8000000225D17080;
    v37 = MEMORY[0x277D84F90];
    v38 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v23 = swift_allocError();
    v40 = v39;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v8, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v8, 1, v41);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v41)
    {
      v43 = 269;
    }

    else
    {
      v43 = 23;
    }

    v44 = sub_225B2C374(v37);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v89 = v44;
    sub_225B2C4A0(v38, sub_225B2AC40, 0, v45, &v89);

    v46 = v89;
    v47 = sub_225B29AA0(0, 1, 1, v37);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    *(v50 + 4) = 0xD00000000000001CLL;
    *(v50 + 5) = 0x8000000225D17060;
    *(v50 + 6) = 0xD000000000000035;
    *(v50 + 7) = v87;
    strcpy(v50 + 64, "encrypt(_:to:)");
    v50[79] = -18;
    *(v50 + 10) = 63;
    *v40 = v43;
    *(v40 + 8) = v47;
    *(v40 + 16) = 0xD00000000000001CLL;
    *(v40 + 24) = 0x8000000225D17060;
    *(v40 + 32) = v46;
    *(v40 + 40) = 0;
    swift_willThrow();
  }

  v51 = v23;
  v86 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v52 = swift_allocError();
  v54 = v53;
  swift_getErrorValue();
  v55 = v93;
  v56 = v23;
  sub_225B21FAC(v55, &v89);

  v57 = *(&v89 + 1);
  v87 = v52;
  if (*(&v89 + 1))
  {
    v85 = v89;
    v58 = *(&v90 + 1);
    *&v84 = v90;
    v59 = v91;
    v60 = v92;
  }

  else
  {
    *&v89 = v23;
    v61 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v62 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v64 = [v62 code];
      v65 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v65;
      *(inited + 40) = v64;
      v59 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v66 = v23;
      v85 = 0;
      *&v84 = 0;
      v58 = 0;
      v57 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v89 = v23;
      v68 = v23;
      v69 = sub_225CCE954();
      v70 = v85;
      v71 = swift_dynamicCast();
      v72 = *(v69 - 8);
      (*(v72 + 56))(v70, v71 ^ 1u, 1, v69);
      LODWORD(v72) = (*(v72 + 48))(v70, 1, v69);
      sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
      if (v72)
      {
        v73 = 0;
      }

      else
      {
        v73 = 23;
      }

      v85 = v73;
      v57 = MEMORY[0x277D84F90];
      v59 = sub_225B2C374(MEMORY[0x277D84F90]);
      v74 = v23;
      *&v84 = 0;
      v58 = 0;
    }

    v60 = v23;
  }

  v75 = swift_isUniquelyReferenced_nonNull_native();
  *&v89 = v59;
  sub_225B2C4A0(v86, sub_225B2AC40, 0, v75, &v89);

  v76 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_225B29AA0(0, *(v57 + 2) + 1, 1, v57);
  }

  v78 = *(v57 + 2);
  v77 = *(v57 + 3);
  if (v78 >= v77 >> 1)
  {
    v57 = sub_225B29AA0((v77 > 1), v78 + 1, 1, v57);
  }

  *(v57 + 2) = v78 + 1;
  v79 = &v57[56 * v78];
  *(v79 + 4) = 0;
  *(v79 + 5) = 0;
  *(v79 + 6) = 0xD000000000000035;
  *(v79 + 7) = 0x8000000225D17080;
  strcpy(v79 + 64, "encrypt(_:to:)");
  v79[79] = -18;
  *(v79 + 10) = 72;
  *v54 = v85;
  v80 = v84;
  *(v54 + 8) = v57;
  *(v54 + 16) = v80;
  *(v54 + 24) = v58;
  *(v54 + 32) = v76;
  *(v54 + 40) = v60;
  swift_willThrow();

  return v23;
}

char *DigitalPresentmentResponseCryptor.encrypt(_:to:)(uint64_t a1, uint64_t a2)
{
  *&v127 = a2;
  v3 = sub_225CCD954();
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x28223BE20](v3);
  v126 = &v119[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v125 = &v119[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v124 = &v119[-v8];
  v134 = sub_225CCDDE4();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v119[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_225CCDDC4();
  v130 = *(v10 - 8);
  *&v131 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_225CCDDD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v119[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for HPKESuiteKwV1(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v119[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(a1 + 16);
  v163[0] = *a1;
  v163[1] = v20;
  v21 = *(a1 + 32);
  v164 = *(a1 + 32);
  v122 = *(a1 + 16);
  v123 = v163[0];
  v22 = v135;
  v23 = sub_225A07DDC();
  if (v22)
  {
    v135 = 0;
    v25 = v22;
LABEL_24:
    v80 = "No leaf certificate on trust";
    v81 = v25;
    v82 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v167 = swift_allocError();
    v84 = v83;
    swift_getErrorValue();
    v85 = v148;
    v86 = v25;
    sub_225B21FAC(v85, &v139);

    v87 = *(&v139 + 1);
    if (*(&v139 + 1))
    {
      v88 = v25;
      v133 = v140;
      v134 = v139;
      v132 = *(&v140 + 1);
      v25 = *(&v141 + 1);
      v89 = v141;
    }

    else
    {
      *&v131 = "No leaf certificate on trust";
      *&v139 = v25;
      v90 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v91 = v136[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_225CD30F0;
        *(v92 + 32) = 20;
        v93 = [v91 code];
        v94 = MEMORY[0x277D83BF8];
        *(v92 + 64) = MEMORY[0x277D83B88];
        *(v92 + 72) = v94;
        *(v92 + 40) = v93;
        v89 = sub_225B2C374(v92);
        swift_setDeallocating();
        sub_2259CB640(v92 + 32, &qword_27D73B060, &unk_225CD3AE0);
        swift_deallocClassInstance();

        v95 = v25;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        v87 = MEMORY[0x277D84F90];
        v88 = v25;
      }

      else
      {
        *&v139 = v25;
        v96 = v25;
        v97 = sub_225CCE954();
        v98 = v25;
        v99 = v125;
        v100 = swift_dynamicCast();
        v101 = *(v97 - 8);
        (*(v101 + 56))(v99, v100 ^ 1u, 1, v97);
        LODWORD(v101) = (*(v101 + 48))(v99, 1, v97);
        sub_2259CB640(v99, &unk_27D73B050, &unk_225CD3AD0);
        if (v101)
        {
          v102 = 0;
        }

        else
        {
          v102 = 23;
        }

        v134 = v102;
        v87 = MEMORY[0x277D84F90];
        v89 = sub_225B2C374(MEMORY[0x277D84F90]);
        v103 = v98;
        v132 = 0;
        v133 = 0;
        v88 = v98;
        v25 = v98;
      }

      v80 = v131;
    }

    v104 = v80 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v139 = v89;
    sub_225B2C4A0(v82, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v139);

    v106 = v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_225B29AA0(0, *(v87 + 2) + 1, 1, v87);
    }

    v108 = *(v87 + 2);
    v107 = *(v87 + 3);
    if (v108 >= v107 >> 1)
    {
      v87 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v87);
    }

    *(v87 + 2) = v108 + 1;
    v109 = &v87[56 * v108];
    *(v109 + 4) = 0;
    *(v109 + 5) = 0;
    *(v109 + 6) = 0xD000000000000035;
    *(v109 + 7) = v104;
    strcpy(v109 + 64, "encrypt(_:to:)");
    v109[79] = -18;
    *(v109 + 10) = 101;
    v110 = v133;
    *v84 = v134;
    *(v84 + 8) = v87;
    *(v84 + 16) = v110;
    *(v84 + 24) = v132;
    *(v84 + 32) = v106;
    *(v84 + 40) = v25;
    swift_willThrow();

    return v87;
  }

  v120 = v21;
  v121 = 0;
  *v19 = &type metadata for AEADScheme_AES_128_GCM;
  *(v19 + 1) = &off_283903448;
  v135 = v17[5];
  v26 = v24;
  v27 = v23;
  (*(v14 + 104))(v16, *MEMORY[0x277CC5450], v13);
  (*(v130 + 13))(v12, *MEMORY[0x277CC5438], v131);
  (*(v132 + 13))(v133, *MEMORY[0x277CC5460], v134);
  v28 = v26;
  sub_2259CB710(v27, v26);
  sub_225CCDDA4();
  *&v19[v17[7]] = xmmword_225CD3100;
  v29 = v17[8];
  v30 = type metadata accessor for HPKEPrivateKey(0);
  (*(*(v30 - 8) + 56))(&v19[v29], 1, 1, v30);
  v31 = &v19[v17[6]];
  v134 = v27;
  v135 = v28;
  *v31 = v27;
  v31[1] = v28;
  v32 = type metadata accessor for DigitalPresentmentResponseCryptor(0);
  v33 = v167;
  if (!*(v167 + *(v32 + 20)))
  {
    v133 = v19;
    v167 = 0x8000000225D17080;
    v45 = MEMORY[0x277D84F90];
    v46 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v47 = swift_allocError();
    v49 = v48;
    v50 = sub_225CCE954();
    v51 = *(v50 - 8);
    v52 = v124;
    (*(v51 + 56))(v124, 1, 1, v50);
    LODWORD(v50) = (*(v51 + 48))(v52, 1, v50);
    sub_2259CB640(v52, &unk_27D73B050, &unk_225CD3AD0);
    if (v50)
    {
      v53 = 721;
    }

    else
    {
      v53 = 23;
    }

    v54 = sub_225B2C374(v45);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v139 = v54;
    sub_225B2C4A0(v46, sub_225B2AC40, 0, v55, &v139);

    v56 = v139;
    v57 = sub_225B29AA0(0, 1, 1, v45);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[56 * v59];
    *(v60 + 4) = 0xD000000000000042;
    *(v60 + 5) = 0x8000000225D17100;
    *(v60 + 6) = 0xD000000000000035;
    *(v60 + 7) = v167;
    strcpy(v60 + 64, "encrypt(_:to:)");
    v60[79] = -18;
    *(v60 + 10) = 89;
    *v49 = v53;
    *(v49 + 8) = v57;
    *(v49 + 16) = 0xD000000000000042;
    *(v49 + 24) = 0x8000000225D17100;
    *(v49 + 32) = v56;
    *(v49 + 40) = 0;
    v25 = v47;
    swift_willThrow();
    sub_2259BEF00(v134, v135);
    sub_225A0E298(v133, type metadata accessor for HPKESuiteKwV1);
    v135 = 0;
    goto LABEL_24;
  }

  v34 = v128;
  if (*(v167 + *(v32 + 20)) == 1)
  {
    v133 = v19;
    *&v131 = v32;
    v158[0] = v123;
    v158[1] = v122;
    v159 = v120;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v35 = off_28105B918;
    v36 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v37 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v37));
    v38 = *(v34 + 16);
    *&v123 = v36;
    v39 = &v35[v36];
    v40 = v126;
    v41 = v129;
    v132 = v38;
    v38(v126, v39, v129);
    v124 = v35;
    os_unfair_lock_unlock(&v35[v37]);
    MEMORY[0x28223BE20](v42);
    *&v119[-16] = v33;
    *&v119[-8] = v158;
    Logger.sensitive(_:)(sub_225A0DE4C);
    v130 = *(v34 + 8);
    v130(v40, v41);
    v43 = *(v33 + *(v131 + 24));
    v137 = sub_225CCD424();
    v138 = &protocol witness table for CBOREncoder;
    v136[0] = v43;

    v19 = v133;
    v44 = v121;
    sub_225A0AB54(v158, v127, v136, &v139);
    if (v44)
    {
      sub_2259BEF00(v134, v135);
      sub_225A0E298(v19, type metadata accessor for HPKESuiteKwV1);
      __swift_destroy_boxed_opaque_existential_0(v136);
      v135 = 0;
      v25 = v44;
      goto LABEL_24;
    }

    __swift_destroy_boxed_opaque_existential_0(v136);
    v167 = 0;
    v155 = v145;
    v156 = v146;
    v157[0] = v147[0];
    *&v131 = v43;
    *(v157 + 9) = *(v147 + 9);
    v151 = v141;
    v152 = v142;
    v153 = v143;
    v154 = v144;
    v149 = v139;
    v150 = v140;
    v63 = v124;
    os_unfair_lock_lock(&v124[v37]);
    v132(v40, &v63[v123], v129);
    os_unfair_lock_unlock(&v63[v37]);
    sub_225A0DE54(&v149, &v139, &qword_27D73AFE8, &qword_225CD78B8);
    sub_225B41E00(v40, &v149);
    sub_2259CB640(&v149, &qword_27D73AFE8, &qword_225CD78B8);
    v130(v40, v129);
    v145 = v155;
    v146 = v156;
    v147[0] = v157[0];
    *(v147 + 9) = *(v157 + 9);
    v141 = v151;
    v142 = v152;
    v143 = v153;
    v144 = v154;
    v139 = v149;
    v140 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFE8, &qword_225CD78B8);
    sub_2259D8B24(&qword_27D73AFF0, &qword_27D73AFE8, &qword_225CD78B8, &protocol conformance descriptor for HPKEEnvelope<A>);
    v64 = v167;
    v65 = sub_225CCD3F4();
    v67 = v64;
    if (v64)
    {
      sub_225A0E298(v19, type metadata accessor for HPKESuiteKwV1);
      sub_2259BEF00(v134, v135);
      sub_2259CB640(&v149, &qword_27D73AFE8, &qword_225CD78B8);
LABEL_23:
      v135 = 0;
      v25 = v67;
      goto LABEL_24;
    }

    v87 = v65;
    v112 = v66;
    sub_2259CB640(&v149, &qword_27D73AFE8, &qword_225CD78B8);
    v68 = v124;
  }

  else
  {
    v61 = *(v167 + *(v32 + 24));
    v137 = sub_225CCD424();
    v138 = &protocol witness table for CBOREncoder;
    v136[0] = v61;

    v62 = v121;
    sub_225A0BED4(v163, v127, v136, &v139);
    v167 = v62;
    if (v62)
    {
      sub_2259BEF00(v134, v135);
      sub_225A0E298(v19, type metadata accessor for HPKESuiteKwV1);
      __swift_destroy_boxed_opaque_existential_0(v136);
      v135 = 0;
      v25 = v167;
      goto LABEL_24;
    }

    v133 = v61;
    __swift_destroy_boxed_opaque_existential_0(v136);
    v161[0] = v145;
    v161[1] = v146;
    v162[0] = v147[0];
    *(v162 + 9) = *(v147 + 9);
    v160[2] = v141;
    v160[3] = v142;
    v160[4] = v143;
    v160[5] = v144;
    v160[0] = v139;
    v160[1] = v140;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v68 = off_28105B918;
    v69 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v70 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v70));
    v71 = *(v34 + 16);
    v72 = &v68[v69];
    v73 = v34;
    v74 = v126;
    v75 = v129;
    v132 = v71;
    v71(v126, v72, v129);
    os_unfair_lock_unlock(&v68[v70]);
    sub_225A0DE54(v160, &v139, &qword_27D73AFD8, &qword_225CD78B0);
    sub_225B41E14(v74, v160);
    sub_2259CB640(v160, &qword_27D73AFD8, &qword_225CD78B0);
    v76 = *(v73 + 8);
    v76(v74, v75);
    v165 = *(v160 + 8);
    v166 = *(v161 + 8);
    sub_225A0DD9C(&v165, &v139);
    sub_225A0DD9C(&v166, &v139);
    sub_2259CB640(v160, &qword_27D73AFD8, &qword_225CD78B0);
    v131 = v166;
    v139 = v165;
    v140 = v166;
    v127 = v165;
    sub_225A0DDF8();
    v77 = v167;
    v78 = sub_225CCD3F4();
    v67 = v77;
    if (v77)
    {
      sub_225A0E298(v19, type metadata accessor for HPKESuiteKwV1);
      sub_2259BEF00(v134, v135);
      sub_2259BEF00(v127, *(&v127 + 1));
      sub_2259BEF00(v131, *(&v131 + 1));
      goto LABEL_23;
    }

    v87 = v78;
    v112 = v79;
    v130 = v76;
    sub_2259BEF00(v127, *(&v127 + 1));
    sub_2259BEF00(v131, *(&v131 + 1));
  }

  v167 = 0;
  v113 = v19;
  v114 = v126;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v115 = *(*v68 + *MEMORY[0x277D841D0] + 16);
  v116 = (*(*v68 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v68[v116]);
  v117 = &v68[v115];
  v118 = v129;
  v132(v114, v117, v129);
  os_unfair_lock_unlock(&v68[v116]);
  sub_2259CB710(v87, v112);
  sub_225B420C4(v114, v87, v112);
  sub_2259BEF00(v87, v112);
  sub_2259BEF00(v134, v135);
  v130(v114, v118);
  sub_225A0E298(v113, type metadata accessor for HPKESuiteKwV1);
  return v87;
}

uint64_t sub_225A07DDC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_225CCF454();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  v9 = *(v0 + *(type metadata accessor for DigitalPresentmentResponseCryptor(0) + 20));
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27D73D108);
  (*(v6 + 16))(v8, v10, v5);
  v51 = &type metadata for ISO18013PresentmentType;
  LOBYTE(v48) = v9;
  v11 = sub_225CCD404();
  sub_225A0528C(&v48, v8);
  v11(&v55, 0);
  type metadata accessor for ISO18013SessionTranscript(0);
  sub_225A0E4A0(&qword_27D73B048, type metadata accessor for ISO18013SessionTranscript, &protocol conformance descriptor for ISO18013SessionTranscript);
  v12 = sub_225CCD3F4();
  if (v1)
  {
    v46 = v13;
    v47 = v12;

    v14 = v1;
    v44 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v45 = swift_allocError();
    v16 = v15;
    swift_getErrorValue();
    v17 = v54;
    v18 = v1;
    sub_225B21FAC(v17, &v48);

    v19 = v49;
    if (v49)
    {
      v43 = v48;
      v20 = v50;
      v42 = v51;
      v22 = v52;
      v21 = v53;
    }

    else
    {
      v48 = v1;
      v25 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v26 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v28 = [v26 code];
        v29 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v29;
        *(inited + 40) = v28;
        v22 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v30 = v1;
        v42 = 0;
        v20 = 0;
        v43 = 0;
        v19 = MEMORY[0x277D84F90];
      }

      else
      {
        v48 = v1;
        v31 = v1;
        v32 = sub_225CCE954();
        v33 = swift_dynamicCast();
        v34 = *(v32 - 8);
        (*(v34 + 56))(v4, v33 ^ 1u, 1, v32);
        LODWORD(v32) = (*(v34 + 48))(v4, 1, v32);
        sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
        if (v32)
        {
          v35 = 0;
        }

        else
        {
          v35 = 23;
        }

        v43 = v35;
        v19 = MEMORY[0x277D84F90];
        v22 = sub_225B2C374(MEMORY[0x277D84F90]);
        v36 = v1;
        v42 = 0;
        v20 = 0;
      }

      v21 = v1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v22;
    sub_225B2C4A0(v44, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v48);

    v38 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_225B29AA0(0, *(v19 + 2) + 1, 1, v19);
    }

    v40 = *(v19 + 2);
    v39 = *(v19 + 3);
    if (v40 >= v39 >> 1)
    {
      v19 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v19);
    }

    *(v19 + 2) = v40 + 1;
    v41 = &v19[56 * v40];
    *(v41 + 4) = 0;
    *(v41 + 5) = 0;
    *(v41 + 6) = 0xD000000000000035;
    *(v41 + 7) = 0x8000000225D17080;
    *(v41 + 8) = 0x286F666E49746567;
    *(v41 + 9) = 0xE900000000000029;
    *(v41 + 10) = 159;
    *v16 = v43;
    *(v16 + 8) = v19;
    *(v16 + 16) = v20;
    *(v16 + 24) = v42;
    *(v16 + 32) = v38;
    *(v16 + 40) = v21;
    swift_willThrow();

    return v47;
  }

  else
  {
    v23 = v12;

    return v23;
  }
}

uint64_t sub_225A08440(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000044, 0x8000000225D17370);
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0;
}

void DigitalPresentmentResponseCryptor.decrypt(_:with:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v106 = a3;
  v93 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v92 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = v89 - v10;
  v107 = sub_225CCDDE4();
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_225CCDDC4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v103 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_225CCDDD4();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v98 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for HPKEPrivateKey(0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for HPKESuiteKwV1(0);
  MEMORY[0x28223BE20](v97);
  v108 = (v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  (*(v17 + 16))(v19, &v20[v21], v16);
  os_unfair_lock_unlock(&v20[v22]);
  sub_2259CB710(a1, a2);
  sub_225B42A90(v19, a1, a2);
  sub_2259BEF00(a1, a2);
  (*(v17 + 8))(v19, v16);
  v23 = v109;
  v24 = sub_225A07DDC();
  if (v23)
  {
    v26 = v23;
  }

  else
  {
    v36 = v24;
    v37 = v25;
    v90 = 0;
    v89[1] = a1;
    v89[2] = a2;
    v38 = v95;
    sub_225A0DEBC(v106, v95, type metadata accessor for HPKEPrivateKey);
    v39 = v108;
    *v108 = &type metadata for AEADScheme_AES_128_GCM;
    v39[1] = &off_283903448;
    v109 = v36;
    v40 = v97;
    (*(v94 + 104))(v98, *MEMORY[0x277CC5450], v96);
    (*(v101 + 104))(v103, *MEMORY[0x277CC5438], v102);
    (*(v104 + 13))(v105, *MEMORY[0x277CC5460], v107);
    sub_2259CB710(v109, v37);
    sub_225CCDDA4();
    v41 = v40[8];
    sub_225A0DF24(v38, v39 + v41);
    v42 = v39 + v41;
    v43 = v109;
    (*(v99 + 56))(v42, 0, 1, v100);
    *(v39 + v40[7]) = xmmword_225CD4150;
    v44 = (v39 + v40[6]);
    *v44 = v43;
    v44[1] = v37;
    v45 = type metadata accessor for DigitalPresentmentResponseCryptor(0);
    if (*(v4 + *(v45 + 20)))
    {
      if (*(v4 + *(v45 + 20)) == 1)
      {
        v46 = v90;
        sub_225A0936C(v39, &v111);
        v47 = v46;
        if (!v46)
        {
          sub_225A0E298(v39, type metadata accessor for HPKESuiteKwV1);
          sub_2259BEF00(v43, v37);
          v48 = v113;
          v49 = v112;
          v50 = v93;
          *v93 = v111;
          v50[1] = v49;
          *(v50 + 32) = v48;
          return;
        }
      }

      else
      {
        v88 = v90;
        sub_225A09650(v39, v93);
        v47 = v88;
        if (!v88)
        {
          sub_225A0E298(v39, type metadata accessor for HPKESuiteKwV1);
          sub_2259BEF00(v43, v37);
          return;
        }
      }

      sub_225A0E298(v39, type metadata accessor for HPKESuiteKwV1);
      sub_2259BEF00(v43, v37);
      v26 = v47;
    }

    else
    {
      v107 = v37;
      v106 = 0x8000000225D17080;
      v105 = 0x8000000225D17150;
      v72 = MEMORY[0x277D84F90];
      v73 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v26 = swift_allocError();
      v75 = v74;
      v76 = sub_225CCE954();
      v77 = *(v76 - 8);
      v78 = v91;
      (*(v77 + 56))(v91, 1, 1, v76);
      LODWORD(v76) = (*(v77 + 48))(v78, 1, v76);
      sub_2259CB640(v78, &unk_27D73B050, &unk_225CD3AD0);
      if (v76)
      {
        v79 = 721;
      }

      else
      {
        v79 = 23;
      }

      v80 = sub_225B2C374(v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v111 = v80;
      sub_225B2C4A0(v73, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v111);

      v82 = v111;
      v83 = sub_225B29AA0(0, 1, 1, v72);
      v85 = *(v83 + 2);
      v84 = *(v83 + 3);
      if (v85 >= v84 >> 1)
      {
        v83 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v83);
      }

      v86 = v109;
      *(v83 + 2) = v85 + 1;
      v87 = &v83[56 * v85];
      *(v87 + 4) = 0xD000000000000042;
      *(v87 + 5) = 0x8000000225D17170;
      *(v87 + 6) = 0xD000000000000035;
      *(v87 + 7) = v106;
      *(v87 + 8) = 0xD000000000000010;
      *(v87 + 9) = v105;
      *(v87 + 10) = 116;
      *v75 = v79;
      *(v75 + 8) = v83;
      *(v75 + 16) = 0xD000000000000042;
      *(v75 + 24) = 0x8000000225D17170;
      *(v75 + 32) = v82;
      *(v75 + 40) = 0;
      swift_willThrow();
      sub_2259BEF00(v86, v107);
      sub_225A0E298(v108, type metadata accessor for HPKESuiteKwV1);
    }
  }

  v27 = "No leaf certificate on trust";
  v109 = " with this cryptor";
  v28 = v26;
  v29 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v31 = v30;
  swift_getErrorValue();
  v32 = v115;
  v33 = v26;
  sub_225B21FAC(v32, &v111);

  v34 = *(&v111 + 1);
  if (*(&v111 + 1))
  {
    v108 = v111;
    v106 = *(&v112 + 1);
    v107 = v112;
    v35 = v113;
    v105 = v114;
  }

  else
  {
    v104 = "No leaf certificate on trust";
    *&v111 = v26;
    v51 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v52 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v54 = [v52 code];
      v55 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v55;
      *(inited + 40) = v54;
      v35 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v56 = v26;
      v108 = 0;
      v107 = 0;
      v106 = 0;
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v111 = v26;
      v57 = v26;
      v58 = sub_225CCE954();
      v59 = v92;
      v60 = swift_dynamicCast();
      v61 = *(v58 - 8);
      (*(v61 + 56))(v59, v60 ^ 1u, 1, v58);
      LODWORD(v61) = (*(v61 + 48))(v59, 1, v58);
      sub_2259CB640(v59, &unk_27D73B050, &unk_225CD3AD0);
      if (v61)
      {
        v62 = 0;
      }

      else
      {
        v62 = 23;
      }

      v108 = v62;
      v34 = MEMORY[0x277D84F90];
      v35 = sub_225B2C374(MEMORY[0x277D84F90]);
      v63 = v26;
      v107 = 0;
      v106 = 0;
    }

    v105 = v26;
    v27 = v104;
  }

  v64 = v27 | 0x8000000000000000;
  v65 = v109 | 0x8000000000000000;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = v35;
  sub_225B2C4A0(v29, sub_225B2AC40, 0, v66, &v111);

  v67 = v111;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_225B29AA0(0, *(v34 + 2) + 1, 1, v34);
  }

  v69 = *(v34 + 2);
  v68 = *(v34 + 3);
  if (v69 >= v68 >> 1)
  {
    v34 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v34);
  }

  *(v34 + 2) = v69 + 1;
  v70 = &v34[56 * v69];
  *(v70 + 4) = 0;
  *(v70 + 5) = 0;
  *(v70 + 6) = 0xD000000000000035;
  *(v70 + 7) = v64;
  *(v70 + 8) = 0xD000000000000010;
  *(v70 + 9) = v65;
  *(v70 + 10) = 124;
  *v31 = v108;
  v71 = v107;
  *(v31 + 8) = v34;
  *(v31 + 16) = v71;
  *(v31 + 24) = v106;
  *(v31 + 32) = v67;
  *(v31 + 40) = v105;
  swift_willThrow();
}

uint64_t sub_225A0936C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a3;
  v5 = sub_225CCD954();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + *(type metadata accessor for DigitalPresentmentResponseCryptor(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFE8, &qword_225CD78B8);
  sub_2259D8B24(&qword_27D73B030, &qword_27D73AFE8, &qword_225CD78B8, &protocol conformance descriptor for HPKEEnvelope<A>);
  v9 = v30;
  result = sub_225CCD364();
  if (!v9)
  {
    v11 = v16;
    v30 = 0;
    v28[6] = v25;
    v28[7] = v26;
    v29[0] = v27[0];
    *(v29 + 9) = *(v27 + 9);
    v28[2] = v21;
    v28[3] = v22;
    v28[4] = v23;
    v28[5] = v24;
    v28[0] = v19;
    v28[1] = v20;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v12 = off_28105B918;
    v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v14));
    (*(v11 + 16))(v7, &v12[v13], v5);
    os_unfair_lock_unlock(&v12[v14]);
    sub_225A0DE54(v28, &v19, &qword_27D73AFE8, &qword_225CD78B8);
    sub_225B42584(v7, v28);
    sub_2259CB640(v28, &qword_27D73AFE8, &qword_225CD78B8);
    (*(v11 + 8))(v7, v5);
    *(&v20 + 1) = sub_225CCD3A4();
    *&v21 = &protocol witness table for CBORDecoder;
    *&v19 = v8;

    sub_225A0D254(v28, 0, &v19, v17);
    sub_2259CB640(v28, &qword_27D73AFE8, &qword_225CD78B8);
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  return result;
}

uint64_t sub_225A09650@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + *(type metadata accessor for DigitalPresentmentResponseCryptor(0) + 28));
  sub_225A0E3FC();
  result = sub_225CCD364();
  if (!v5)
  {
    v24 = a4;
    v25 = a3;
    v43 = 0;
    v14 = v26[0];
    v15 = v26[1];
    v23 = v26[2];
    v22 = v27;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v16 = off_28105B918;
    v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v18));
    (*(v9 + 16))(v11, &v16[v17], v8);
    os_unfair_lock_unlock(&v16[v18]);
    sub_2259CB710(v14, v15);
    v19 = v23;
    v20 = v22;
    sub_2259CB710(v23, v22);
    sub_225B42820(v11, v14, v15, v19, v20);
    sub_2259BEF00(v14, v15);
    sub_2259BEF00(v19, v20);
    (*(v9 + 8))(v11, v8);
    sub_2259CB710(v14, v15);
    sub_2259CB710(v19, v20);
    sub_225A0E458(0, 0, 1, 0);
    v29[0] = 0;
    v30 = v14;
    v31 = v15;
    v32 = xmmword_225CD4150;
    v33 = xmmword_225CD3100;
    v34 = xmmword_225CD3100;
    v35 = xmmword_225CD3100;
    v36 = xmmword_225CD3100;
    v37 = v19;
    v38 = v20;
    v39 = 0;
    v40 = 0;
    v41 = xmmword_225CD7890;
    v42 = 0;
    v21 = sub_225CCD3A4();
    v28 = &protocol witness table for CBORDecoder;
    v27 = v21;
    v26[0] = v12;

    sub_225A0D7F8(v29, 0, v26, v24);
    sub_2259CB640(v29, &qword_27D73AFD8, &qword_225CD78B0);
    sub_2259BEF00(v14, v15);
    sub_2259BEF00(v19, v20);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return result;
}

uint64_t DigitalPresentmentResponseCryptor.decryptWithoutDecoding(_:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v83 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = v81 - v8;
  v97 = sub_225CCDDE4();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_225CCDDC4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_225CCDDD4();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v88 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for HPKEPrivateKey(0);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v85 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for HPKESuiteKwV1(0);
  MEMORY[0x28223BE20](v87);
  v98 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  (*(v15 + 16))(v17, &v18[v19], v14);
  os_unfair_lock_unlock(&v18[v20]);
  sub_2259CB710(a1, a2);
  sub_225B42A90(v17, a1, a2);
  sub_2259BEF00(a1, a2);
  (*(v15 + 8))(v17, v14);
  v21 = v99;
  v22 = sub_225A07DDC();
  if (!v21)
  {
    v25 = v22;
    v81[0] = a1;
    v81[1] = a2;
    v99 = 0;
    v26 = v23;
    v27 = v85;
    sub_225A0DEBC(v96, v85, type metadata accessor for HPKEPrivateKey);
    v28 = v98;
    *v98 = &type metadata for AEADScheme_AES_128_GCM;
    *(v28 + 1) = &off_283903448;
    v29 = v87;
    (*(v84 + 104))(v88, *MEMORY[0x277CC5450], v86);
    (*(v91 + 104))(v93, *MEMORY[0x277CC5438], v92);
    (*(v94 + 104))(v95, *MEMORY[0x277CC5460], v97);
    sub_2259CB710(v25, v26);
    sub_225CCDDA4();
    v30 = v29[8];
    sub_225A0DF24(v27, &v28[v30]);
    (*(v89 + 56))(&v28[v30], 0, 1, v90);
    *&v28[v29[7]] = xmmword_225CD4150;
    v31 = &v28[v29[6]];
    *v31 = v25;
    v31[1] = v26;
    v32 = type metadata accessor for DigitalPresentmentResponseCryptor(0);
    if (!*(v100 + *(v32 + 20)))
    {
      v100 = v25;
      v97 = v26;
      v96 = 0x8000000225D17080;
      v95 = 0x8000000225D171C0;
      v35 = MEMORY[0x277D84F90];
      v36 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v24 = swift_allocError();
      v38 = v37;
      v39 = sub_225CCE954();
      v40 = *(v39 - 8);
      v41 = v82;
      (*(v40 + 56))(v82, 1, 1, v39);
      LODWORD(v39) = (*(v40 + 48))(v41, 1, v39);
      sub_2259CB640(v41, &unk_27D73B050, &unk_225CD3AD0);
      if (v39)
      {
        v42 = 721;
      }

      else
      {
        v42 = 23;
      }

      v43 = sub_225B2C374(v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v43;
      sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v102);

      v45 = v102;
      v46 = sub_225B29AA0(0, 1, 1, v35);
      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_225B29AA0((v47 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 2) = v48 + 1;
      v49 = &v46[56 * v48];
      *(v49 + 4) = 0xD000000000000042;
      *(v49 + 5) = 0x8000000225D17170;
      *(v49 + 6) = 0xD000000000000035;
      *(v49 + 7) = v96;
      *(v49 + 8) = 0xD00000000000001FLL;
      *(v49 + 9) = v95;
      *(v49 + 10) = 138;
      *v38 = v42;
      *(v38 + 8) = v46;
      *(v38 + 16) = 0xD000000000000042;
      *(v38 + 24) = 0x8000000225D17170;
      *(v38 + 32) = v45;
      *(v38 + 40) = 0;
      swift_willThrow();
      sub_2259BEF00(v100, v97);
      sub_225A0E298(v98, type metadata accessor for HPKESuiteKwV1);
      goto LABEL_18;
    }

    v33 = v25;
    if (*(v100 + *(v32 + 20)) == 1)
    {
      v34 = v99;
      sub_225A0936C(v28, &v102);
      v24 = v34;
      if (!v34)
      {
        v97 = v26;
        sub_225A0DF88();
LABEL_33:
        v57 = sub_225CCD3F4();
        sub_225A0E298(v28, type metadata accessor for HPKESuiteKwV1);
        sub_2259BEF00(v33, v97);

        return v57;
      }
    }

    else
    {
      v50 = v99;
      sub_225A09650(v28, &v102);
      v24 = v50;
      if (!v50)
      {
        v97 = v26;
        sub_225A05BE8();
        goto LABEL_33;
      }
    }

    sub_225A0E298(v28, type metadata accessor for HPKESuiteKwV1);
    sub_2259BEF00(v33, v26);
    goto LABEL_18;
  }

  v24 = v21;
LABEL_18:
  v99 = " with this cryptor";
  v51 = v24;
  v52 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v100 = swift_allocError();
  v54 = v53;
  swift_getErrorValue();
  v55 = v108;
  v56 = v24;
  sub_225B21FAC(v55, &v102);

  v57 = v103;
  if (v103)
  {
    v98 = v102;
    v97 = v104;
    v96 = v105;
    v58 = v106;
    v59 = v107;
  }

  else
  {
    v102 = v24;
    v60 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v61 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v63 = [v61 code];
      v64 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v64;
      *(inited + 40) = v63;
      v58 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v65 = v24;
      v98 = 0;
      v97 = 0;
      v96 = 0;
      v57 = MEMORY[0x277D84F90];
    }

    else
    {
      v102 = v24;
      v66 = v24;
      v67 = sub_225CCE954();
      v68 = v83;
      v69 = swift_dynamicCast();
      v70 = *(v67 - 8);
      (*(v70 + 56))(v68, v69 ^ 1u, 1, v67);
      LODWORD(v70) = (*(v70 + 48))(v68, 1, v67);
      sub_2259CB640(v68, &unk_27D73B050, &unk_225CD3AD0);
      if (v70)
      {
        v71 = 0;
      }

      else
      {
        v71 = 23;
      }

      v98 = v71;
      v57 = MEMORY[0x277D84F90];
      v58 = sub_225B2C374(MEMORY[0x277D84F90]);
      v72 = v24;
      v97 = 0;
      v96 = 0;
    }

    v59 = v24;
  }

  v73 = v99 | 0x8000000000000000;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v58;
  sub_225B2C4A0(v52, sub_225B2AC40, 0, v74, &v102);

  v75 = v102;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_225B29AA0(0, *(v57 + 16) + 1, 1, v57);
  }

  v77 = *(v57 + 16);
  v76 = *(v57 + 24);
  if (v77 >= v76 >> 1)
  {
    v57 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v57);
  }

  *(v57 + 16) = v77 + 1;
  v78 = (v57 + 56 * v77);
  v78[4] = 0;
  v78[5] = 0;
  v78[6] = 0xD000000000000035;
  v78[7] = 0x8000000225D17080;
  v78[8] = 0xD00000000000001FLL;
  v78[9] = v73;
  v78[10] = 147;
  *v54 = v98;
  v79 = v97;
  *(v54 + 8) = v57;
  *(v54 + 16) = v79;
  *(v54 + 24) = v96;
  *(v54 + 32) = v75;
  *(v54 + 40) = v59;
  swift_willThrow();

  return v57;
}

uint64_t sub_225A0A870(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000003BLL, 0x8000000225D171E0);
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0;
}

uint64_t sub_225A0A984(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DigitalPresentmentResponseCryptor(0);
  sub_225A0DF88();
  v2 = sub_225CCD3F4();
  v4 = v3;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000003DLL, 0x8000000225D17330);
  sub_225B34448(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v5 = sub_225CCE384();
  v7 = v6;

  MEMORY[0x22AA6CE70](v5, v7);

  sub_2259BEF00(v2, v4);
  return 0;
}

void sub_225A0AB54(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v191 = a3;
  *&v204 = a2;
  v173 = a4;
  v222 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v175 = &v173 - v6;
  v7 = sub_225CCDDB4();
  v198 = *(v7 - 8);
  v199 = v7;
  MEMORY[0x28223BE20](v7);
  v197 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_225CCDEA4();
  v193 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCDE24();
  v189 = *(v10 - 8);
  v190 = v10;
  MEMORY[0x28223BE20](v10);
  v203 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCE164();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v202 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_225CCDBA4();
  *&v206 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v201 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v219 = *a1;
  v220 = v20;
  v221 = *(a1 + 32);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = *(v17 + 16);
  v183 = v17 + 16;
  v184 = v22;
  v182 = v24;
  v24(v19, &v21[v22], v16);
  v185 = v23;
  v186 = v21;
  os_unfair_lock_unlock(&v21[v23]);
  MEMORY[0x28223BE20](v25);
  *(&v173 - 2) = v205;
  Logger.cryptoParam(_:)(sub_225A0E450);
  v26 = *(v17 + 8);
  v176 = v19;
  v187 = v17 + 8;
  v181 = v26;
  v27 = (v26)(v19, v16);
  v28 = MEMORY[0x22AA6C6C0](v27);
  v188 = v16;
  v29 = v28;
  v31 = v30;
  v32 = sub_225A0E4A0(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v33 = v202;
  sub_225CCDB94();
  sub_2259CB710(v29, v31);
  v34 = v194;
  sub_2259DB138(v29, v31, v33);
  *&v194 = v34;
  sub_2259BEF00(v29, v31);
  v35 = v201;
  v179 = v32;
  sub_225CCDB84();
  sub_2259BEF00(v29, v31);
  v36 = *(v13 + 8);
  v174 = v12;
  v180 = v13 + 8;
  v178 = v36;
  v36(v33, v12);
  v37 = sub_225A0E4A0(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v38 = v200;
  v177 = v37;
  v39 = sub_225CCE154();
  v41 = sub_2259D732C(v39, v40);

  v42 = sub_2259D8490(v41);
  v43 = v205;
  *&v192 = v42;
  *(&v192 + 1) = v44;

  v45 = *(v206 + 8);
  *&v206 = v206 + 8;
  v45(v35, v38);
  (*(v193 + 16))(v195, v204, v196);
  v46 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v198 + 16))(v197, v43 + *(v46 + 20), v199);
  v47 = v43 + *(v46 + 24);
  sub_2259CB710(*v47, *(v47 + 1));
  v48 = v194;
  sub_225CCDDF4();
  v49 = v48;
  if (v48)
  {
    sub_2259BEF00(v192, *(&v192 + 1));
    goto LABEL_44;
  }

  v198 = v46;
  v199 = v47;
  *&v204 = v45;
  v50 = v202;
  v51 = v191[3];
  v52 = v191[4];
  __swift_project_boxed_opaque_existential_1(v191, v51);
  v53 = *(v52 + 8);
  v54 = sub_225A0DF88();
  v55 = v53(&v219, &type metadata for DigitalPresentmentResponseTopics, v54, v51, v52);
  v57 = v56;
  v196 = v55;
  v58 = sub_225CCDE04();
  v60 = v58;
  v61 = v59;
  v62 = v59 >> 62;
  v197 = v57;
  if ((v59 >> 62) > 1)
  {
    if (v62 != 2)
    {
      v63 = v50;
      *(&v218 + 6) = 0;
      *&v218 = 0;
      v64 = &v218;
      goto LABEL_32;
    }

    v65 = *(v58 + 16);
    v66 = *(v58 + 24);
    v67 = sub_225CCCA44();
    if (v67)
    {
      v68 = sub_225CCCA74();
      if (__OFSUB__(v65, v68))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v67 += v65 - v68;
    }

    v69 = __OFSUB__(v66, v65);
    v70 = v66 - v65;
    if (!v69)
    {
      v71 = sub_225CCCA64();
      if (v71 >= v70)
      {
        v72 = v70;
      }

      else
      {
        v72 = v71;
      }

      v73 = v72 + v67;
      if (v67)
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }

      sub_225A63FC0(v67, v74, &v212);
      sub_2259BEF00(v60, v61);
      v75 = v201;
      v63 = v202;
      goto LABEL_33;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v62)
  {
    v76 = (v58 >> 32) - v58;
    if (v58 >> 32 >= v58)
    {
      v77 = sub_225CCCA44();
      if (!v77)
      {
LABEL_24:
        v79 = v201;
        v80 = sub_225CCCA64();
        if (v80 >= v76)
        {
          v81 = (v60 >> 32) - v60;
        }

        else
        {
          v81 = v80;
        }

        v82 = v81 + v77;
        if (v77)
        {
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        sub_225A63FC0(v77, v83, &v212);
        sub_2259BEF00(v60, v61);
        v84 = v198;
        v63 = v202;
        v75 = v79;
        goto LABEL_34;
      }

      v78 = sub_225CCCA74();
      if (!__OFSUB__(v60, v78))
      {
        v77 += v60 - v78;
        goto LABEL_24;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  v63 = v50;
  *&v218 = v58;
  WORD4(v218) = v59;
  BYTE10(v218) = BYTE2(v59);
  BYTE11(v218) = BYTE3(v59);
  BYTE12(v218) = BYTE4(v59);
  BYTE13(v218) = BYTE5(v59);
  v64 = (&v218 + BYTE6(v59));
LABEL_32:
  sub_225A63FC0(&v218, v64, &v212);
  sub_2259BEF00(v60, v61);
  v75 = v201;
LABEL_33:
  v84 = v198;
LABEL_34:
  v198 = *(&v212 + 1);
  v195 = v212;
  v194 = xmmword_225CD3100;
  v218 = xmmword_225CD3100;
  v85 = (v205 + *(v84 + 28));
  v86 = v85[1];
  v205 = v85;
  if (v86 >> 60 == 15)
  {
    v87 = v176;
    v88 = v63;
    v89 = v174;
    v90 = v199;
    v91 = 0;
  }

  else
  {
    v92 = *v85;
    sub_2259CB710(*v85, v86);
    v88 = v63;
    v89 = v174;
    sub_225CCDB94();
    sub_2259CB710(v92, v86);
    v193 = v92;
    sub_2259DB138(v92, v86, v63);
    v191 = 0;
    sub_2259B97A8(v92, v86);
    sub_225CCDB84();
    v178(v63, v89);
    v93 = v200;
    v94 = sub_225CCE154();
    v96 = sub_2259D732C(v94, v95);

    v97 = sub_2259D8490(v96);
    v99 = v98;

    (v204)(v75, v93);
    sub_2259B97A8(v218, *(&v218 + 1));
    *&v218 = v97;
    *(&v218 + 1) = v99;
    v91 = v191;
    v101 = v185;
    v100 = v186;
    os_unfair_lock_lock(&v186[v185]);
    v102 = v176;
    v103 = v188;
    v182(v176, &v100[v184], v188);
    os_unfair_lock_unlock(&v100[v101]);
    sub_225B3EAA4(v102, &v218);
    v104 = v86;
    v87 = v102;
    sub_2259B97A8(v193, v104);
    v181(v102, v103);
    v90 = v199;
  }

  v105 = *v90;
  v106 = v90[1];
  sub_225CCDB94();
  sub_2259CB710(v105, v106);
  sub_2259DB138(v105, v106, v88);
  v199 = v91;
  sub_2259BEF00(v105, v106);
  v107 = v201;
  sub_225CCDB84();
  v178(v88, v89);
  v108 = v200;
  v109 = sub_225CCE154();
  v111 = sub_2259D732C(v109, v110);

  v112 = sub_2259D8490(v111);
  v114 = v113;

  (v204)(v107, v108);
  v115 = v185;
  v116 = v186;
  os_unfair_lock_lock(&v186[v185]);
  v117 = v188;
  v182(v87, &v116[v184], v188);
  os_unfair_lock_unlock(&v116[v115]);
  sub_2259CB710(v112, v114);
  sub_225B41958();
  sub_2259BEF00(v112, v114);
  v181(v87, v117);
  v202 = *(&v218 + 1);
  v118 = v218;
  v119 = v195;
  v120 = v198;
  *&v212 = v195;
  *(&v212 + 1) = v198;
  v121 = v192;
  v213 = v192;
  v214 = v194;
  v215 = v218;
  v216 = v194;
  *&v217 = v112;
  *(&v217 + 1) = v114;
  v210 = v196;
  v211 = v197;
  v122 = *v205;
  v123 = v205[1];
  v201 = *v205;
  if (v123 >> 60 == 15)
  {
    v124 = 0;
  }

  else
  {
    v124 = v122;
  }

  v125 = 0xC000000000000000;
  if (v123 >> 60 != 15)
  {
    v125 = v123;
  }

  v208 = v124;
  v209 = v125;
  *&v204 = v112;
  *&v206 = v114;
  sub_2259CB710(v112, v114);
  sub_2259CB710(v119, v120);
  sub_2259CB710(v121, *(&v121 + 1));
  sub_2259CB6FC(v118, v202);
  sub_2259CB6FC(v201, v123);
  sub_2259DB42C();
  v126 = v203;
  v127 = v199;
  v128 = sub_225CCDE14();
  if (!v127)
  {
    v205 = 0;
    v202 = v129;
    v160 = v128;
    sub_2259BEF00(v208, v209);
    v162 = v185;
    v161 = v186;
    os_unfair_lock_lock(&v186[v185]);
    v163 = v176;
    v164 = v188;
    v182(v176, &v161[v184], v188);
    v165 = &v161[v162];
    v166 = v160;
    v167 = v202;
    os_unfair_lock_unlock(v165);
    sub_2259CB710(v166, v167);
    sub_225B41BAC();
    sub_2259BEF00(v166, v167);
    v181(v163, v164);
    LOBYTE(v163) = shouldIncludeUnencryptedData()();
    sub_2259BEF00(v196, v197);
    sub_2259BEF00(v204, v206);
    sub_2259BEF00(v121, *(&v121 + 1));
    sub_2259BEF00(v195, v198);
    (*(v189 + 8))(v126, v190);
    if (v163)
    {
      v204 = v219;
      v168 = v221;
      v206 = v220;
    }

    else
    {
      v168 = 0;
      v206 = xmmword_225CD7890;
      v204 = 0u;
    }

    v169 = v215;
    v170 = v173;
    *(v173 + 40) = v214;
    *(v170 + 56) = v169;
    v171 = v217;
    *(v170 + 72) = v216;
    *(v170 + 88) = v171;
    v172 = v213;
    *(v170 + 8) = v212;
    *v170 = 0;
    *(v170 + 24) = v172;
    *(v170 + 104) = v166;
    *(v170 + 112) = v167;
    sub_225A0E458(0, 0, 1, 0);
    *(v170 + 136) = v206;
    *(v170 + 120) = v204;
    *(v170 + 152) = v168;
    sub_2259B97A8(v218, *(&v218 + 1));
    return;
  }

  sub_2259BEF00(v204, v206);
  sub_2259BEF00(v121, *(&v121 + 1));
  sub_2259BEF00(v195, v198);
  sub_225A0E354(&v212);
  sub_2259BEF00(v208, v209);
  (*(v189 + 8))(v126, v190);
  sub_2259BEF00(v196, v197);
  sub_2259B97A8(v218, *(&v218 + 1));
  v49 = v127;
LABEL_44:
  *&v206 = 0x8000000225D17280;
  *&v204 = "t the message using HPKE";
  v130 = v49;
  v131 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v205 = swift_allocError();
  v133 = v132;
  swift_getErrorValue();
  v134 = v207;
  v135 = v49;
  sub_225B21FAC(v134, &v212);

  v136 = *(&v212 + 1);
  if (*(&v212 + 1))
  {
    v202 = v213;
    v203 = v212;
    v200 = *(&v214 + 1);
    v137 = v214;
    v201 = *(&v213 + 1);
  }

  else
  {
    v199 = 0;
    *&v212 = v49;
    v138 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v139 = v218;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v141 = [v139 code];
      v142 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v142;
      *(inited + 40) = v141;
      v137 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v143 = v49;
      v201 = 0;
      v202 = 0;
      v136 = MEMORY[0x277D84F90];
      v203 = 283;
    }

    else
    {
      *&v212 = v49;
      v144 = v49;
      v145 = sub_225CCE954();
      v146 = v175;
      v147 = swift_dynamicCast();
      v148 = *(v145 - 8);
      (*(v148 + 56))(v146, v147 ^ 1u, 1, v145);
      LODWORD(v148) = (*(v148 + 48))(v146, 1, v145);
      sub_2259CB640(v146, &unk_27D73B050, &unk_225CD3AD0);
      if (v148)
      {
        v149 = 283;
      }

      else
      {
        v149 = 23;
      }

      v203 = v149;
      v136 = MEMORY[0x277D84F90];
      v137 = sub_225B2C374(MEMORY[0x277D84F90]);
      v150 = v49;
      v202 = 0xD000000000000028;
      v201 = v206;
    }

    v200 = v49;
  }

  v151 = v204 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v212 = v137;
  sub_225B2C4A0(v131, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v212);

  v153 = v212;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v136 = sub_225B29AA0(0, *(v136 + 2) + 1, 1, v136);
  }

  v155 = *(v136 + 2);
  v154 = *(v136 + 3);
  if (v155 >= v154 >> 1)
  {
    v136 = sub_225B29AA0((v154 > 1), v155 + 1, 1, v136);
  }

  *(v136 + 2) = v155 + 1;
  v156 = &v136[56 * v155];
  v157 = v206;
  *(v156 + 4) = 0xD000000000000028;
  *(v156 + 5) = v157;
  *(v156 + 6) = 0xD00000000000001CLL;
  *(v156 + 7) = 0x8000000225D17220;
  *(v156 + 8) = 0xD000000000000024;
  *(v156 + 9) = v151;
  *(v156 + 10) = 651;
  v158 = v202;
  *v133 = v203;
  *(v133 + 8) = v136;
  *(v133 + 16) = v158;
  v159 = v200;
  *(v133 + 24) = v201;
  *(v133 + 32) = v153;
  *(v133 + 40) = v159;
  swift_willThrow();
}

void sub_225A0BED4(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v191 = a3;
  *&v204 = a2;
  v173 = a4;
  v222 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v175 = &v173 - v6;
  v7 = sub_225CCDDB4();
  v198 = *(v7 - 8);
  v199 = v7;
  MEMORY[0x28223BE20](v7);
  v197 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_225CCDEA4();
  v193 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCDE24();
  v189 = *(v10 - 8);
  v190 = v10;
  MEMORY[0x28223BE20](v10);
  v203 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCE164();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v202 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_225CCDBA4();
  *&v206 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v201 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v219 = *a1;
  v220 = v20;
  v221 = *(a1 + 32);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = *(v17 + 16);
  v183 = v17 + 16;
  v184 = v22;
  v182 = v24;
  v24(v19, &v21[v22], v16);
  v185 = v23;
  v186 = v21;
  os_unfair_lock_unlock(&v21[v23]);
  MEMORY[0x28223BE20](v25);
  *(&v173 - 2) = v205;
  Logger.cryptoParam(_:)(sub_225A0E4E8);
  v26 = *(v17 + 8);
  v176 = v19;
  v187 = v17 + 8;
  v181 = v26;
  v27 = (v26)(v19, v16);
  v28 = MEMORY[0x22AA6C6C0](v27);
  v188 = v16;
  v29 = v28;
  v31 = v30;
  v32 = sub_225A0E4A0(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v33 = v202;
  sub_225CCDB94();
  sub_2259CB710(v29, v31);
  v34 = v194;
  sub_2259DB138(v29, v31, v33);
  *&v194 = v34;
  sub_2259BEF00(v29, v31);
  v35 = v201;
  v179 = v32;
  sub_225CCDB84();
  sub_2259BEF00(v29, v31);
  v36 = *(v13 + 8);
  v174 = v12;
  v180 = v13 + 8;
  v178 = v36;
  v36(v33, v12);
  v37 = sub_225A0E4A0(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v38 = v200;
  v177 = v37;
  v39 = sub_225CCE154();
  v41 = sub_2259D732C(v39, v40);

  v42 = sub_2259D8490(v41);
  v43 = v205;
  *&v192 = v42;
  *(&v192 + 1) = v44;

  v45 = *(v206 + 8);
  *&v206 = v206 + 8;
  v45(v35, v38);
  (*(v193 + 16))(v195, v204, v196);
  v46 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v198 + 16))(v197, v43 + *(v46 + 20), v199);
  v47 = v43 + *(v46 + 24);
  sub_2259CB710(*v47, *(v47 + 1));
  v48 = v194;
  sub_225CCDDF4();
  v49 = v48;
  if (v48)
  {
    sub_2259BEF00(v192, *(&v192 + 1));
    goto LABEL_44;
  }

  v198 = v46;
  v199 = v47;
  *&v204 = v45;
  v50 = v202;
  v51 = v191[3];
  v52 = v191[4];
  __swift_project_boxed_opaque_existential_1(v191, v51);
  v53 = *(v52 + 8);
  v54 = sub_225A05BE8();
  v55 = v53(&v219, &type metadata for ISO18013Response, v54, v51, v52);
  v57 = v56;
  v196 = v55;
  v58 = sub_225CCDE04();
  v60 = v58;
  v61 = v59;
  v62 = v59 >> 62;
  v197 = v57;
  if ((v59 >> 62) > 1)
  {
    if (v62 != 2)
    {
      v63 = v50;
      *(&v218 + 6) = 0;
      *&v218 = 0;
      v64 = &v218;
      goto LABEL_32;
    }

    v65 = *(v58 + 16);
    v66 = *(v58 + 24);
    v67 = sub_225CCCA44();
    if (v67)
    {
      v68 = sub_225CCCA74();
      if (__OFSUB__(v65, v68))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v67 += v65 - v68;
    }

    v69 = __OFSUB__(v66, v65);
    v70 = v66 - v65;
    if (!v69)
    {
      v71 = sub_225CCCA64();
      if (v71 >= v70)
      {
        v72 = v70;
      }

      else
      {
        v72 = v71;
      }

      v73 = v72 + v67;
      if (v67)
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }

      sub_225A63FC0(v67, v74, &v212);
      sub_2259BEF00(v60, v61);
      v75 = v201;
      v63 = v202;
      goto LABEL_33;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v62)
  {
    v76 = (v58 >> 32) - v58;
    if (v58 >> 32 >= v58)
    {
      v77 = sub_225CCCA44();
      if (!v77)
      {
LABEL_24:
        v79 = v201;
        v80 = sub_225CCCA64();
        if (v80 >= v76)
        {
          v81 = (v60 >> 32) - v60;
        }

        else
        {
          v81 = v80;
        }

        v82 = v81 + v77;
        if (v77)
        {
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        sub_225A63FC0(v77, v83, &v212);
        sub_2259BEF00(v60, v61);
        v84 = v198;
        v63 = v202;
        v75 = v79;
        goto LABEL_34;
      }

      v78 = sub_225CCCA74();
      if (!__OFSUB__(v60, v78))
      {
        v77 += v60 - v78;
        goto LABEL_24;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  v63 = v50;
  *&v218 = v58;
  WORD4(v218) = v59;
  BYTE10(v218) = BYTE2(v59);
  BYTE11(v218) = BYTE3(v59);
  BYTE12(v218) = BYTE4(v59);
  BYTE13(v218) = BYTE5(v59);
  v64 = (&v218 + BYTE6(v59));
LABEL_32:
  sub_225A63FC0(&v218, v64, &v212);
  sub_2259BEF00(v60, v61);
  v75 = v201;
LABEL_33:
  v84 = v198;
LABEL_34:
  v198 = *(&v212 + 1);
  v195 = v212;
  v194 = xmmword_225CD3100;
  v218 = xmmword_225CD3100;
  v85 = (v205 + *(v84 + 28));
  v86 = v85[1];
  v205 = v85;
  if (v86 >> 60 == 15)
  {
    v87 = v176;
    v88 = v63;
    v89 = v174;
    v90 = v199;
    v91 = 0;
  }

  else
  {
    v92 = *v85;
    sub_2259CB710(*v85, v86);
    v88 = v63;
    v89 = v174;
    sub_225CCDB94();
    sub_2259CB710(v92, v86);
    v193 = v92;
    sub_2259DB138(v92, v86, v63);
    v191 = 0;
    sub_2259B97A8(v92, v86);
    sub_225CCDB84();
    v178(v63, v89);
    v93 = v200;
    v94 = sub_225CCE154();
    v96 = sub_2259D732C(v94, v95);

    v97 = sub_2259D8490(v96);
    v99 = v98;

    (v204)(v75, v93);
    sub_2259B97A8(v218, *(&v218 + 1));
    *&v218 = v97;
    *(&v218 + 1) = v99;
    v91 = v191;
    v101 = v185;
    v100 = v186;
    os_unfair_lock_lock(&v186[v185]);
    v102 = v176;
    v103 = v188;
    v182(v176, &v100[v184], v188);
    os_unfair_lock_unlock(&v100[v101]);
    sub_225B3EAA4(v102, &v218);
    v104 = v86;
    v87 = v102;
    sub_2259B97A8(v193, v104);
    v181(v102, v103);
    v90 = v199;
  }

  v105 = *v90;
  v106 = v90[1];
  sub_225CCDB94();
  sub_2259CB710(v105, v106);
  sub_2259DB138(v105, v106, v88);
  v199 = v91;
  sub_2259BEF00(v105, v106);
  v107 = v201;
  sub_225CCDB84();
  v178(v88, v89);
  v108 = v200;
  v109 = sub_225CCE154();
  v111 = sub_2259D732C(v109, v110);

  v112 = sub_2259D8490(v111);
  v114 = v113;

  (v204)(v107, v108);
  v115 = v185;
  v116 = v186;
  os_unfair_lock_lock(&v186[v185]);
  v117 = v188;
  v182(v87, &v116[v184], v188);
  os_unfair_lock_unlock(&v116[v115]);
  sub_2259CB710(v112, v114);
  sub_225B41958();
  sub_2259BEF00(v112, v114);
  v181(v87, v117);
  v202 = *(&v218 + 1);
  v118 = v218;
  v119 = v195;
  v120 = v198;
  *&v212 = v195;
  *(&v212 + 1) = v198;
  v121 = v192;
  v213 = v192;
  v214 = v194;
  v215 = v218;
  v216 = v194;
  *&v217 = v112;
  *(&v217 + 1) = v114;
  v210 = v196;
  v211 = v197;
  v122 = *v205;
  v123 = v205[1];
  v201 = *v205;
  if (v123 >> 60 == 15)
  {
    v124 = 0;
  }

  else
  {
    v124 = v122;
  }

  v125 = 0xC000000000000000;
  if (v123 >> 60 != 15)
  {
    v125 = v123;
  }

  v208 = v124;
  v209 = v125;
  *&v204 = v112;
  *&v206 = v114;
  sub_2259CB710(v112, v114);
  sub_2259CB710(v119, v120);
  sub_2259CB710(v121, *(&v121 + 1));
  sub_2259CB6FC(v118, v202);
  sub_2259CB6FC(v201, v123);
  sub_2259DB42C();
  v126 = v203;
  v127 = v199;
  v128 = sub_225CCDE14();
  if (!v127)
  {
    v205 = 0;
    v202 = v129;
    v160 = v128;
    sub_2259BEF00(v208, v209);
    v162 = v185;
    v161 = v186;
    os_unfair_lock_lock(&v186[v185]);
    v163 = v176;
    v164 = v188;
    v182(v176, &v161[v184], v188);
    v165 = &v161[v162];
    v166 = v160;
    v167 = v202;
    os_unfair_lock_unlock(v165);
    sub_2259CB710(v166, v167);
    sub_225B41BAC();
    sub_2259BEF00(v166, v167);
    v181(v163, v164);
    LOBYTE(v163) = shouldIncludeUnencryptedData()();
    sub_2259BEF00(v196, v197);
    sub_2259BEF00(v204, v206);
    sub_2259BEF00(v121, *(&v121 + 1));
    sub_2259BEF00(v195, v198);
    (*(v189 + 8))(v126, v190);
    if (v163)
    {
      v204 = v219;
      v168 = v221;
      v206 = v220;
    }

    else
    {
      v168 = 0;
      v206 = xmmword_225CD7890;
      v204 = 0u;
    }

    v169 = v215;
    v170 = v173;
    *(v173 + 40) = v214;
    *(v170 + 56) = v169;
    v171 = v217;
    *(v170 + 72) = v216;
    *(v170 + 88) = v171;
    v172 = v213;
    *(v170 + 8) = v212;
    *v170 = 0;
    *(v170 + 24) = v172;
    *(v170 + 104) = v166;
    *(v170 + 112) = v167;
    sub_225A0E458(0, 0, 1, 0);
    *(v170 + 136) = v206;
    *(v170 + 120) = v204;
    *(v170 + 152) = v168;
    sub_2259B97A8(v218, *(&v218 + 1));
    return;
  }

  sub_2259BEF00(v204, v206);
  sub_2259BEF00(v121, *(&v121 + 1));
  sub_2259BEF00(v195, v198);
  sub_225A0E354(&v212);
  sub_2259BEF00(v208, v209);
  (*(v189 + 8))(v126, v190);
  sub_2259BEF00(v196, v197);
  sub_2259B97A8(v218, *(&v218 + 1));
  v49 = v127;
LABEL_44:
  *&v206 = 0x8000000225D17280;
  *&v204 = "t the message using HPKE";
  v130 = v49;
  v131 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v205 = swift_allocError();
  v133 = v132;
  swift_getErrorValue();
  v134 = v207;
  v135 = v49;
  sub_225B21FAC(v134, &v212);

  v136 = *(&v212 + 1);
  if (*(&v212 + 1))
  {
    v202 = v213;
    v203 = v212;
    v200 = *(&v214 + 1);
    v137 = v214;
    v201 = *(&v213 + 1);
  }

  else
  {
    v199 = 0;
    *&v212 = v49;
    v138 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v139 = v218;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v141 = [v139 code];
      v142 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v142;
      *(inited + 40) = v141;
      v137 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v143 = v49;
      v201 = 0;
      v202 = 0;
      v136 = MEMORY[0x277D84F90];
      v203 = 283;
    }

    else
    {
      *&v212 = v49;
      v144 = v49;
      v145 = sub_225CCE954();
      v146 = v175;
      v147 = swift_dynamicCast();
      v148 = *(v145 - 8);
      (*(v148 + 56))(v146, v147 ^ 1u, 1, v145);
      LODWORD(v148) = (*(v148 + 48))(v146, 1, v145);
      sub_2259CB640(v146, &unk_27D73B050, &unk_225CD3AD0);
      if (v148)
      {
        v149 = 283;
      }

      else
      {
        v149 = 23;
      }

      v203 = v149;
      v136 = MEMORY[0x277D84F90];
      v137 = sub_225B2C374(MEMORY[0x277D84F90]);
      v150 = v49;
      v202 = 0xD000000000000028;
      v201 = v206;
    }

    v200 = v49;
  }

  v151 = v204 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v212 = v137;
  sub_225B2C4A0(v131, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v212);

  v153 = v212;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v136 = sub_225B29AA0(0, *(v136 + 2) + 1, 1, v136);
  }

  v155 = *(v136 + 2);
  v154 = *(v136 + 3);
  if (v155 >= v154 >> 1)
  {
    v136 = sub_225B29AA0((v154 > 1), v155 + 1, 1, v136);
  }

  *(v136 + 2) = v155 + 1;
  v156 = &v136[56 * v155];
  v157 = v206;
  *(v156 + 4) = 0xD000000000000028;
  *(v156 + 5) = v157;
  *(v156 + 6) = 0xD00000000000001CLL;
  *(v156 + 7) = 0x8000000225D17220;
  *(v156 + 8) = 0xD000000000000024;
  *(v156 + 9) = v151;
  *(v156 + 10) = 651;
  v158 = v202;
  *v133 = v203;
  *(v133 + 8) = v136;
  *(v133 + 16) = v158;
  v159 = v200;
  *(v133 + 24) = v201;
  *(v133 + 32) = v153;
  *(v133 + 40) = v159;
  swift_willThrow();
}

void sub_225A0D254(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v12 = *(a1 + 104);
  v11 = *(a1 + 112);
  v13 = *(a1 + 56);
  v72[2] = *(a1 + 40);
  v72[3] = v13;
  v14 = *(a1 + 88);
  v72[4] = *(a1 + 72);
  v72[5] = v14;
  v15 = *(a1 + 24);
  v72[0] = *(a1 + 8);
  v72[1] = v15;
  v16 = *(a1 + 56);
  v68 = *(a1 + 40);
  v69 = v16;
  v17 = *(a1 + 88);
  v70 = *(a1 + 72);
  v71 = v17;
  v18 = *(a1 + 24);
  v66 = *(a1 + 8);
  v67 = v18;
  sub_225A0E2F8(v72, &v60);
  v19 = HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(v12, v11, &v66, a2);
  if (v4)
  {
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v60 = v66;
    v61 = v67;
    sub_225A0E354(&v60);
    v56 = "CoreIDVShared/HPKEKwV1.swift";
    v27 = v4;
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v58 = swift_allocError();
    v29 = v28;
    swift_getErrorValue();
    v30 = v59;
    v31 = v4;
    sub_225B21FAC(v30, &v66);

    v32 = *(&v66 + 1);
    if (*(&v66 + 1))
    {
      v55 = v66;
      v53 = *(&v68 + 1);
      v33 = v68;
      v54 = v67;
    }

    else
    {
      *&v66 = v4;
      v34 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v35 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v37 = [v35 code];
        v38 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v38;
        *(inited + 40) = v37;
        v33 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v39 = v4;
        v54 = 0uLL;
        v55 = 0;
        v32 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v66 = v4;
        v40 = v4;
        v41 = sub_225CCE954();
        v42 = swift_dynamicCast();
        v43 = *(v41 - 8);
        (*(v43 + 56))(v10, v42 ^ 1u, 1, v41);
        LODWORD(v43) = (*(v43 + 48))(v10, 1, v41);
        sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
        if (v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = 23;
        }

        v55 = v44;
        v32 = MEMORY[0x277D84F90];
        v33 = sub_225B2C374(MEMORY[0x277D84F90]);
        v45 = v4;
        v54 = 0uLL;
      }

      v53 = v4;
    }

    v46 = v56 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v33;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v66);

    v48 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_225B29AA0(0, *(v32 + 2) + 1, 1, v32);
    }

    v50 = *(v32 + 2);
    v49 = *(v32 + 3);
    if (v50 >= v49 >> 1)
    {
      v32 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v32);
    }

    *(v32 + 2) = v50 + 1;
    v51 = &v32[56 * v50];
    *(v51 + 4) = 0;
    *(v51 + 5) = 0;
    *(v51 + 6) = 0xD00000000000001CLL;
    *(v51 + 7) = 0x8000000225D17220;
    *(v51 + 8) = 0xD000000000000038;
    *(v51 + 9) = v46;
    *(v51 + 10) = 668;
    *v29 = v55;
    v52 = v54;
    *(v29 + 8) = v32;
    *(v29 + 16) = v52;
    *(v29 + 32) = v48;
    *(v29 + 40) = v53;
    swift_willThrow();
  }

  else
  {
    v21 = v19;
    v22 = v20;
    v57 = v10;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v60 = v66;
    v61 = v67;
    sub_225A0E354(&v60);
    v23 = a3[3];
    v24 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v23);
    v25 = *(v24 + 8);
    v26 = sub_225A0E3A8();
    v25(&type metadata for DigitalPresentmentResponseTopics, v21, v22, &type metadata for DigitalPresentmentResponseTopics, v26, v23, v24);
    sub_2259BEF00(v21, v22);
  }
}

void sub_225A0D7F8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v12 = *(a1 + 104);
  v11 = *(a1 + 112);
  v13 = *(a1 + 56);
  v72[2] = *(a1 + 40);
  v72[3] = v13;
  v14 = *(a1 + 88);
  v72[4] = *(a1 + 72);
  v72[5] = v14;
  v15 = *(a1 + 24);
  v72[0] = *(a1 + 8);
  v72[1] = v15;
  v16 = *(a1 + 56);
  v68 = *(a1 + 40);
  v69 = v16;
  v17 = *(a1 + 88);
  v70 = *(a1 + 72);
  v71 = v17;
  v18 = *(a1 + 24);
  v66 = *(a1 + 8);
  v67 = v18;
  sub_225A0E2F8(v72, &v60);
  v19 = HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(v12, v11, &v66, a2);
  if (v4)
  {
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v60 = v66;
    v61 = v67;
    sub_225A0E354(&v60);
    v56 = "CoreIDVShared/HPKEKwV1.swift";
    v27 = v4;
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v58 = swift_allocError();
    v29 = v28;
    swift_getErrorValue();
    v30 = v59;
    v31 = v4;
    sub_225B21FAC(v30, &v66);

    v32 = *(&v66 + 1);
    if (*(&v66 + 1))
    {
      v55 = v66;
      v53 = *(&v68 + 1);
      v33 = v68;
      v54 = v67;
    }

    else
    {
      *&v66 = v4;
      v34 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v35 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v37 = [v35 code];
        v38 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v38;
        *(inited + 40) = v37;
        v33 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v39 = v4;
        v54 = 0uLL;
        v55 = 0;
        v32 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v66 = v4;
        v40 = v4;
        v41 = sub_225CCE954();
        v42 = swift_dynamicCast();
        v43 = *(v41 - 8);
        (*(v43 + 56))(v10, v42 ^ 1u, 1, v41);
        LODWORD(v43) = (*(v43 + 48))(v10, 1, v41);
        sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
        if (v43)
        {
          v44 = 0;
        }

        else
        {
          v44 = 23;
        }

        v55 = v44;
        v32 = MEMORY[0x277D84F90];
        v33 = sub_225B2C374(MEMORY[0x277D84F90]);
        v45 = v4;
        v54 = 0uLL;
      }

      v53 = v4;
    }

    v46 = v56 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v33;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v66);

    v48 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_225B29AA0(0, *(v32 + 2) + 1, 1, v32);
    }

    v50 = *(v32 + 2);
    v49 = *(v32 + 3);
    if (v50 >= v49 >> 1)
    {
      v32 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v32);
    }

    *(v32 + 2) = v50 + 1;
    v51 = &v32[56 * v50];
    *(v51 + 4) = 0;
    *(v51 + 5) = 0;
    *(v51 + 6) = 0xD00000000000001CLL;
    *(v51 + 7) = 0x8000000225D17220;
    *(v51 + 8) = 0xD000000000000038;
    *(v51 + 9) = v46;
    *(v51 + 10) = 668;
    *v29 = v55;
    v52 = v54;
    *(v29 + 8) = v32;
    *(v29 + 16) = v52;
    *(v29 + 32) = v48;
    *(v29 + 40) = v53;
    swift_willThrow();
  }

  else
  {
    v21 = v19;
    v22 = v20;
    v57 = v10;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v60 = v66;
    v61 = v67;
    sub_225A0E354(&v60);
    v23 = a3[3];
    v24 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v23);
    v25 = *(v24 + 8);
    v26 = sub_225A05DB4();
    v25(&type metadata for ISO18013Response, v21, v22, &type metadata for ISO18013Response, v26, v23, v24);
    sub_2259BEF00(v21, v22);
  }
}

unint64_t sub_225A0DDF8()
{
  result = qword_27D73AFE0;
  if (!qword_27D73AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFE0);
  }

  return result;
}

uint64_t sub_225A0DE54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_225A0DEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A0DF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPKEPrivateKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_225A0DF88()
{
  result = qword_27D73AFF8;
  if (!qword_27D73AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFF8);
  }

  return result;
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

uint64_t sub_225A0DFF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_225A0E04C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_225A0E0DC(uint64_t a1)
{
  result = type metadata accessor for ISO18013SessionTranscript(319);
  if (v2 <= 0x3F)
  {
    result = sub_225CCD424();
    if (v3 <= 0x3F)
    {
      result = sub_225CCD3A4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_225A0E194()
{
  result = qword_27D73B010;
  if (!qword_27D73B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B010);
  }

  return result;
}

unint64_t sub_225A0E1EC()
{
  result = qword_27D73B018;
  if (!qword_27D73B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B018);
  }

  return result;
}

unint64_t sub_225A0E244()
{
  result = qword_27D73B020;
  if (!qword_27D73B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B020);
  }

  return result;
}

uint64_t sub_225A0E298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_225A0E3A8()
{
  result = qword_27D73B038;
  if (!qword_27D73B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B038);
  }

  return result;
}

unint64_t sub_225A0E3FC()
{
  result = qword_27D73B040;
  if (!qword_27D73B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B040);
  }

  return result;
}

void sub_225A0E458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_225A0E4A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225A0E4F0(char a1, char a2)
{
  v2 = sub_225CCE474();
  v4 = v3;
  if (v2 == sub_225CCE474() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_225CCF934();
  }

  return v7 & 1;
}

uint64_t sub_225A0E5A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = a1;
  if (a1 <= 4u)
  {
    v12 = 0x8000000225D0B210;
    v13 = 0x8000000225D0B230;
    v14 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v14 = 0xD000000000000022;
      v13 = 0x8000000225D0B250;
    }

    if (a1 == 2)
    {
      v14 = 0xD00000000000001DLL;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0x8000000225D0B1D0;
    v16 = 0xD000000000000016;
    if (a1)
    {
      v16 = 0xD00000000000001DLL;
      v15 = 0x8000000225D0B1F0;
    }

    if (a1 <= 1u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x8000000225D0B2B0;
    v5 = 0xD000000000000028;
    v6 = 0x8000000225D0B2E0;
    if (a1 == 9)
    {
      v7 = 0xD000000000000021;
    }

    else
    {
      v7 = 0xD000000000000028;
    }

    if (a1 != 9)
    {
      v6 = 0x8000000225D0B310;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x645F797269707865;
    v9 = 0x8000000225D0B280;
    if (a1 == 6)
    {
      v9 = 0xEB00000000657461;
    }

    else
    {
      v8 = 0xD000000000000021;
    }

    if (a1 == 5)
    {
      v8 = 0x61645F6575737369;
      v9 = 0xEA00000000006574;
    }

    if (a1 <= 7u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 7)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0x8000000225D0B1D0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      v18 = "domestic_vehicle_restrictions";
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v2 = 0x8000000225D0B230;
          if (v10 != 0xD00000000000001BLL)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v2 = 0x8000000225D0B250;
          if (v10 != 0xD000000000000022)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_64;
      }

      v18 = "domestic_vehicle_endorsements";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001DLL)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      if (v10 != 0x61645F6575737369)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    if (a2 == 6)
    {
      v2 = 0xEB00000000657461;
      if (v10 != 0x645F797269707865)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v17 = "domestic_vehicle_restriction_code";
LABEL_60:
    v2 = (v17 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000021)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a2 == 8)
  {
    v19 = "domestic_vehicle_restriction_description";
  }

  else
  {
    if (a2 == 9)
    {
      v17 = "domestic_vehicle_endorsement_code";
      goto LABEL_60;
    }

    v19 = "domestic_vehicle_endorsement_description";
  }

  v2 = (v19 - 32) | 0x8000000000000000;
  if (v10 != 0xD000000000000028)
  {
LABEL_66:
    v20 = sub_225CCF934();
    goto LABEL_67;
  }

LABEL_64:
  if (v11 != v2)
  {
    goto LABEL_66;
  }

  v20 = 1;
LABEL_67:

  return v20 & 1;
}

uint64_t sub_225A0E8BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x656D737365737361;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x6269737365636361;
  v7 = 0xED00007974696C69;
  if (a1 != 4)
  {
    v6 = 0x6E6F6974706163;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656C746954627573;
  if (a1 != 1)
  {
    v9 = 0x7374656C6C7562;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEB0000000073746ELL;
      if (v10 != 0x656D737365737361)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00007974696C69;
      if (v10 != 0x6269737365636361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6974706163)
      {
LABEL_34:
        v13 = sub_225CCF934();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656C746954627573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7374656C6C7562)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656C746974)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_225A0EAC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x61645F6575737369;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1852270963;
  v7 = 0xE500000000000000;
  if (a1 != 5)
  {
    v6 = 0x65756C6176;
    v5 = 0xE500000000000000;
  }

  v8 = 0x7365646F63;
  if (a1 != 3)
  {
    v8 = 1701080931;
    v7 = 0xE400000000000000;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000015;
  v10 = 0x8000000225D0AF50;
  v11 = 0x645F797269707865;
  v12 = 0xEB00000000657461;
  if (a1 == 1)
  {
    v11 = 0x61645F6575737369;
    v12 = 0xEA00000000006574;
  }

  if (a1)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000225D0AF50;
      if (v13 != 0xD000000000000015)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEB00000000657461;
      if (v13 != 0x645F797269707865)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v13 != 1852270963)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x65756C6176)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x7365646F63)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xE400000000000000;
    v3 = 1701080931;
  }

  if (v13 != v3)
  {
LABEL_37:
    v15 = sub_225CCF934();
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}