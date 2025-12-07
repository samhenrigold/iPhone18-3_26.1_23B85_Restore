uint64_t sub_2259E3FEC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t (*a8)(void), unint64_t *a9, uint64_t (*a10)(uint64_t), uint64_t a11)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0x206F742061746144, 0xEE00203A6E676953);
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v13 = sub_225CCE384();
  v15 = v14;

  MEMORY[0x22AA6CE70](v13, v15);

  MEMORY[0x22AA6CE70](0x747365676964202CLL, 0xEA0000000000203ALL);
  a8(0);
  sub_2259E4764(a9, a10, a11);
  v16 = sub_225CCE154();
  v18 = sub_2259D732C(v16, v17);

  v19 = sub_2259D8490(v18);
  v21 = v20;

  sub_225B34448(v19, v21);
  v22 = sub_225CCE384();
  v24 = v23;
  sub_2259BEF00(v19, v21);

  MEMORY[0x22AA6CE70](v22, v24);

  MEMORY[0x22AA6CE70](0x63696C627570202CLL, 0xEE00203A79656B20);
  sub_225B34448(a4, a5);
  v25 = sub_225CCE384();
  v27 = v26;

  MEMORY[0x22AA6CE70](v25, v27);

  MEMORY[0x22AA6CE70](0x74616E676973202CLL, 0xED0000203A657275);
  sub_225B34448(a6, a7);
  v28 = sub_225CCE384();
  v30 = v29;

  MEMORY[0x22AA6CE70](v28, v30);

  return 0;
}

uint64_t sub_2259E42DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_225CCF204();

  strcpy(v22, "Data to Sign: ");
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v11 = sub_225CCE384();
  v13 = v12;

  MEMORY[0x22AA6CE70](v11, v13);

  MEMORY[0x22AA6CE70](0x63696C627570202CLL, 0xEE00203A79656B20);
  sub_225B34448(a3, a4);
  v14 = sub_225CCE384();
  v16 = v15;

  MEMORY[0x22AA6CE70](v14, v16);

  MEMORY[0x22AA6CE70](0x74616E676973202CLL, 0xED0000203A657275);
  sub_225B34448(a5, a6);
  v17 = sub_225CCE384();
  v19 = v18;

  MEMORY[0x22AA6CE70](v17, v19);

  return v22[0];
}

unint64_t sub_2259E44EC()
{
  result = qword_27D73AE50;
  if (!qword_27D73AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE50);
  }

  return result;
}

unint64_t sub_2259E4540()
{
  result = qword_281059A90;
  if (!qword_281059A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for COSESignatureValidator(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB62 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for COSESignatureValidator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB61)
  {
    *result = a2 - 64354;
    if (a3 >= 0xFB62)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB62)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1182;
    }
  }

  return result;
}

uint64_t sub_2259E4764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CoreIDVShared::CredentialKeyType_optional __swiftcall CredentialKeyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CredentialKeyType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 7366003;
  v4 = 0x6C616E7265747865;
  if (v1 != 4)
  {
    v4 = 0x6E6961686379656BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x732D79636167656CLL;
  if (v1 != 1)
  {
    v5 = 7562611;
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
    return v3;
  }
}

uint64_t sub_2259E48DC(uint64_t a1)
{
  sub_225CCE5B4();
}

void sub_2259E49E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 0xE300000000000000;
  v6 = 7366003;
  v7 = 0xEB0000000065732DLL;
  v8 = 0x6C616E7265747865;
  if (v2 != 4)
  {
    v8 = 0x6E6961686379656BLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x732D79636167656CLL;
  if (v2 != 1)
  {
    v10 = 7562611;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

CoreIDVShared::CredentialKeyUsage_optional __swiftcall CredentialKeyUsage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CredentialKeyUsage.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 7041136;
  if (v1 != 5)
  {
    v3 = 7628656;
  }

  v4 = 0x72616B6564;
  if (v1 != 3)
  {
    v4 = 7041904;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7041899;
  if (v1 != 1)
  {
    v5 = 7038308;
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
    return v3;
  }
}

unint64_t sub_2259E4BBC()
{
  result = qword_27D73AE80;
  if (!qword_27D73AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE80);
  }

  return result;
}

unint64_t sub_2259E4C20()
{
  result = qword_27D73AE88;
  if (!qword_27D73AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AE88);
  }

  return result;
}

uint64_t sub_2259E4C80(uint64_t a1)
{
  sub_225CCE5B4();
}

void sub_2259E4D84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 7041136;
  v6 = 0xE300000000000000;
  if (v2 != 5)
  {
    v5 = 7628656;
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x72616B6564;
  if (v2 != 3)
  {
    v8 = 7041904;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 7041899;
  if (v2 != 1)
  {
    v9 = 7038308;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CredentialKeyType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CredentialKeyType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CredentialKeyUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialKeyUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2259E50F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_225CCEC74();
  if (!v19)
  {
    return sub_225CCE864();
  }

  v41 = v19;
  v45 = sub_225CCF3D4();
  v32 = sub_225CCF3E4();
  sub_225CCF384();
  result = sub_225CCEC64();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_225CCECA4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_225CCF3C4();
      result = sub_225CCEC94();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SecCertificateRef.rawECPublicKeyData()()
{
  v1 = SecCertificateCopyKey(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SecKeyRef.publicKeyData.getter();
  v5 = v3;
  v6 = v4;
  if (v4 >> 60 == 15)
  {

    return v5;
  }

  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v7)
  {
    if (v3 == v3 >> 32)
    {
LABEL_16:

      sub_2259B97A8(v5, v6);
      return 0;
    }
  }

  else if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  result = sub_225CCCF64();
  if (result != 4)
  {
    sub_2259B97A8(v5, v6);

    return 0;
  }

  if (v7 == 2)
  {
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    v9 = BYTE6(v6);
    goto LABEL_24;
  }

  if (v7 != 1)
  {
    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = HIDWORD(v5) - v5;
LABEL_24:
  if (v9 >= 1)
  {
    v12 = sub_225CCCFD4();
    sub_2259B97A8(v5, v6);

    return v12;
  }

LABEL_27:
  __break(1u);
  return result;
}

CoreIDVShared::PublicKeyAlgorithm_optional __swiftcall SecCertificateRef.publicKeyAlgorithm()()
{
  v2 = v0;
  v80 = sub_225CCD954();
  v3 = *(v80 - 8);
  v4 = MEMORY[0x28223BE20](v80);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v77 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v77 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = SecCertificateCopyKey(v1);
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  v20 = SecKeyCopyAttributes(v18);
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  v83[0] = 0;
  sub_225CCE2C4();

  v22 = v83[0];
  if (!v83[0])
  {
LABEL_15:
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v38 = off_28105B918;
    v39 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v40 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v40));
    v41 = v80;
    (*(v3 + 16))(v6, &v38[v39], v80);
    os_unfair_lock_unlock(&v38[v40]);
    v42 = sub_225CCD934();
    v43 = sub_225CCED14();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2259A7000, v42, v43, "key attributes are unavailable", v44, 2u);
      MEMORY[0x22AA6F950](v44, -1, -1);
    }

    LOBYTE(v18) = (*(v3 + 8))(v6, v41);
    goto LABEL_27;
  }

  v23 = sub_225CCE474();
  if (!*(v22 + 16))
  {

    goto LABEL_22;
  }

  v79 = v2;
  v25 = sub_2259F1DA8(v23, v24, MEMORY[0x277D83758], sub_2259F217C);
  v27 = v26;

  if ((v27 & 1) == 0 || (sub_2259CB810(*(v22 + 56) + 32 * v25, v83), (swift_dynamicCast() & 1) == 0))
  {

    v2 = v79;
LABEL_22:
    v45 = v80;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v46 = off_28105B918;
    v47 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v48 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v48));
    (*(v3 + 16))(v9, &v46[v47], v45);
    os_unfair_lock_unlock(&v46[v48]);
    v49 = sub_225CCD934();
    v50 = sub_225CCED14();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2259A7000, v49, v50, "key type is not available", v51, 2u);
      MEMORY[0x22AA6F950](v51, -1, -1);
    }

    LOBYTE(v18) = (*(v3 + 8))(v9, v45);
    goto LABEL_27;
  }

  v28 = v81;
  v29 = v82;
  v30 = sub_225CCE474();
  if (!*(v22 + 16))
  {

    goto LABEL_30;
  }

  v78 = v28;
  v32 = sub_2259F1DA8(v30, v31, MEMORY[0x277D83758], sub_2259F217C);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_30:

    v2 = v79;
LABEL_31:
    v53 = v80;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v54 = off_28105B918;
    v55 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v56 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v56));
    (*(v3 + 16))(v12, &v54[v55], v53);
    os_unfair_lock_unlock(&v54[v56]);
    v57 = sub_225CCD934();
    v58 = sub_225CCED14();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2259A7000, v57, v58, "key size in bits is unavailable", v59, 2u);
      MEMORY[0x22AA6F950](v59, -1, -1);
    }

    LOBYTE(v18) = (*(v3 + 8))(v12, v53);
    goto LABEL_27;
  }

  sub_2259CB810(*(v22 + 56) + 32 * v32, v83);
  v35 = swift_dynamicCast();
  v2 = v79;
  if ((v35 & 1) == 0)
  {

    goto LABEL_31;
  }

  v36 = v81;
  if (v78 == sub_225CCE474() && v29 == v37)
  {
  }

  else
  {
    v60 = sub_225CCF934();

    if ((v60 & 1) == 0)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v61 = off_28105B918;
      v62 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v63 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v63));
      v64 = v80;
      (*(v3 + 16))(v15, &v61[v62], v80);
      os_unfair_lock_unlock(&v61[v63]);

      v65 = sub_225CCD934();
      v66 = sub_225CCED14();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v83[0] = v68;
        *v67 = 136315138;
        v69 = sub_2259BE198(v78, v29, v83);

        *(v67 + 4) = v69;
        _os_log_impl(&dword_2259A7000, v65, v66, "unknown public key type: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x22AA6F950](v68, -1, -1);
        MEMORY[0x22AA6F950](v67, -1, -1);

        LOBYTE(v18) = (*(v3 + 8))(v15, v80);
      }

      else
      {

        LOBYTE(v18) = (*(v3 + 8))(v15, v64);
      }

      goto LABEL_27;
    }
  }

  switch(v36)
  {
    case 521:

      v52 = 2;
      goto LABEL_28;
    case 384:

      v52 = 1;
      goto LABEL_28;
    case 256:

      v52 = 0;
      goto LABEL_28;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v70 = off_28105B918;
  v71 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v72 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v72));
  (*(v3 + 16))(v17, &v70[v71], v80);
  os_unfair_lock_unlock(&v70[v72]);

  v73 = sub_225CCD934();
  v74 = sub_225CCED14();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    *(v75 + 4) = v36;
    _os_log_impl(&dword_2259A7000, v73, v74, "Unknown Ec key size %ld", v75, 0xCu);
    MEMORY[0x22AA6F950](v75, -1, -1);
  }

  LOBYTE(v18) = (*(v3 + 8))(v17, v80);
LABEL_27:
  v52 = 5;
LABEL_28:
  *v2 = v52;
  return v18;
}

SecCertificateRef decodeCertificate(fromDER:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = *MEMORY[0x277CBECE8];
  v6 = sub_225CCCF74();
  v7 = SecCertificateCreateWithData(v5, v6);

  if (!v7)
  {
    v25 = 0x8000000225D16530;
    v26 = 0x8000000225D16500;
    v8 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v10 = v9;
    v11 = sub_225CCE954();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v4, 1, 1, v11);
    LODWORD(v11) = (*(v12 + 48))(v4, 1, v11);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    if (v11)
    {
      v13 = 155;
    }

    else
    {
      v13 = 23;
    }

    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v15;
    sub_225B2C4A0(v8, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v27);

    v17 = v27;
    v18 = sub_225B29AA0(0, 1, 1, v14);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_225B29AA0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[56 * v20];
    *(v21 + 4) = 0xD00000000000002ALL;
    *(v21 + 5) = 0x8000000225D164D0;
    v22 = v26;
    *(v21 + 6) = 0xD000000000000021;
    *(v21 + 7) = v22;
    v23 = v25;
    *(v21 + 8) = 0xD00000000000001BLL;
    *(v21 + 9) = v23;
    *(v21 + 10) = 209;
    *v10 = v13;
    *(v10 + 8) = v18;
    *(v10 + 16) = 0xD00000000000002ALL;
    *(v10 + 24) = 0x8000000225D164D0;
    *(v10 + 32) = v17;
    *(v10 + 40) = 0;
    swift_willThrow();
  }

  return v7;
}

uint64_t DIPSecureData.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  mlock(BytePtr, Length);

  return v2;
}

uint64_t DIPSecureData.init(_:)(void *a1)
{
  *(v1 + 16) = a1;
  v2 = a1;
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  mlock(BytePtr, Length);

  return v1;
}

uint64_t DIPSecureData.deinit()
{
  v1 = *(v0 + 16);
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v1);
  memset_s(BytePtr, Length, 0, Length);
  munlock(BytePtr, Length);

  return v0;
}

uint64_t DIPSecureData.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v1);
  memset_s(BytePtr, Length, 0, Length);
  munlock(BytePtr, Length);

  return swift_deallocClassInstance();
}

const UInt8 *sub_2259E65B4()
{
  result = CFDataGetBytePtr(*(v0 + 16));
  if (!result)
  {
    __break(1u);
  }

  return result;
}

__SecKey *SecKeyRef.publicKeyData.getter()
{
  v1 = v0;
  error[1] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  result = SecKeyCopyPublicKey(v1);
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = SecKeyCopyExternalRepresentation(result, error);
  if (!v8)
  {
    v10 = 0;
    v12 = 0xF000000000000000;
    v13 = error[0];
    if (error[0])
    {
      goto LABEL_4;
    }

LABEL_9:

    return v10;
  }

  v9 = v8;
  v10 = sub_225CCCFA4();
  v12 = v11;

  v13 = error[0];
  if (!error[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  v19 = 0;
  v14 = errorFromCFError(_:_:_:)(v13, 0xD00000000000001DLL, 0x8000000225D16550, &v19);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  (*(v3 + 16))(v5, &v15[v16], v2);
  os_unfair_lock_unlock(&v15[v17]);
  DIPLogError(_:message:log:)(v14, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v14);

  sub_2259B97A8(v10, v12);
  (*(v3 + 8))(v5, v2);
  return 0;
}

__SecKey *SecKeyRef.publicKeyIdentifier.getter()
{
  v0 = sub_225CCE264();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_225CCE254();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecKeyRef.publicKeyData.getter();
  if (v9 >> 60 != 15)
  {
    v10 = result;
    v11 = v9;
    sub_2259F4764(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
    sub_225CCDB94();
    sub_2259CB710(v10, v11);
    v17[0] = v4;
    sub_2259D7024(v10, v11, v3);
    sub_2259B97A8(v10, v11);
    sub_225CCDB84();
    (*(v1 + 8))(v3, v0);
    sub_2259F4764(&qword_27D73AC00, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
    v12 = v17[0];
    v13 = sub_225CCE154();
    v15 = sub_2259D732C(v13, v14);

    v16 = sub_2259D8490(v15);

    sub_2259B97A8(v10, v11);
    (*(v5 + 8))(v7, v12);
    return v16;
  }

  return result;
}

uint64_t SecKeyRef.KeyClass.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_225CCE474() == a1 && v6 == a2)
  {
    v9 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_225CCF934();

  if (v8)
  {
    v9 = 1;
LABEL_9:

    goto LABEL_10;
  }

  if (sub_225CCE474() == a1 && v11 == a2)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v13 = sub_225CCF934();

  if (v13)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

LABEL_10:
  *a3 = v9;
  return result;
}

uint64_t sub_2259E6C30()
{
  sub_225CCFBD4();
  sub_225CCE474();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259E6CAC(uint64_t a1)
{
  sub_225CCE474();
  sub_225CCE5B4();
}

uint64_t sub_2259E6D1C()
{
  sub_225CCFBD4();
  sub_225CCE474();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259E6DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_225CCE474();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SecKeyRef static SecKeyRef.makeECKey(from:keyClass:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v59 = a2;
  error[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  error[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE90, &qword_225CD48B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  v7 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v8 = *MEMORY[0x277CDC030];
  v9 = *MEMORY[0x277CDBFE0];
  *(inited + 40) = *MEMORY[0x277CDC030];
  *(inited + 48) = v9;
  sub_225CCE474();
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = sub_225CCE444();

  *(inited + 56) = v13;
  sub_225B2C904(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE98, &unk_225CD48C0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2259F4764(&qword_27D73A9C8, type metadata accessor for CFString, &unk_225CD3A8C);
  v14 = sub_225CCE2B4();

  v15 = sub_225CCCF74();
  v16 = SecKeyCreateWithData(v15, v14, error);

  if (v16)
  {

    return v16;
  }

  v17 = error[0];
  if (error[0])
  {
    type metadata accessor for CFError(0);
    sub_2259F4764(&qword_281059B10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v18 = swift_allocError();
    *v19 = v17;
  }

  else
  {
    v18 = 0;
  }

  v20 = " certificate from DER data";
  v57 = "or when loading sec key";
  v21 = v18;
  v22 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v58 = swift_allocError();
  v24 = v23;
  if (!v18)
  {
    v29 = sub_225CCE954();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    goto LABEL_14;
  }

  v52 = " certificate from DER data";
  v59 = v22;
  swift_getErrorValue();
  v25 = v61;
  v26 = v18;
  sub_225B21FAC(v25, &v62);

  v27 = v63;
  if (!v63)
  {
    v62 = v18;
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v31 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_225CD30F0;
      *(v32 + 32) = 20;
      v33 = [v31 code];
      v34 = MEMORY[0x277D83BF8];
      *(v32 + 64) = MEMORY[0x277D83B88];
      *(v32 + 72) = v34;
      *(v32 + 40) = v33;
      v28 = sub_225B2C374(v32);
      swift_setDeallocating();
      sub_2259CB640(v32 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v35 = v18;
      v55 = 0;
      v54 = 0;
      v27 = MEMORY[0x277D84F90];
      v56 = 261;
      v53 = v18;
      goto LABEL_12;
    }

    v62 = v18;
    v36 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    v29 = sub_225CCE954();
    v37 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v5, v37 ^ 1u, 1, v29);
    v22 = v59;
    v20 = v52;
LABEL_14:
    sub_225CCE954();
    v38 = (*(*(v29 - 8) + 48))(v5, 1, v29);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v38)
    {
      v39 = 261;
    }

    else
    {
      v39 = 23;
    }

    v56 = v39;
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C374(MEMORY[0x277D84F90]);
    v40 = v18;
    v55 = 0x8000000225D16570;
    v54 = 0xD000000000000027;
    v53 = v18;
    goto LABEL_18;
  }

  v56 = v62;
  v54 = v64;
  v55 = v65;
  v28 = v66;
  v53 = v67;
LABEL_12:
  v22 = v59;
  v20 = v52;
LABEL_18:
  v59 = 0x8000000225D16570;
  v41 = v20 | 0x8000000000000000;
  v57 |= 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v28;
  sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

  v43 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_225B29AA0(0, *(v27 + 2) + 1, 1, v27);
  }

  v45 = *(v27 + 2);
  v44 = *(v27 + 3);
  if (v45 >= v44 >> 1)
  {
    v27 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v27);
  }

  *(v27 + 2) = v45 + 1;
  v46 = &v27[56 * v45];
  v47 = v59;
  *(v46 + 4) = 0xD000000000000027;
  *(v46 + 5) = v47;
  *(v46 + 6) = 0xD000000000000021;
  *(v46 + 7) = v41;
  v48 = v57;
  *(v46 + 8) = 0xD000000000000019;
  *(v46 + 9) = v48;
  *(v46 + 10) = 126;
  *v24 = v56;
  v49 = v54;
  *(v24 + 8) = v27;
  *(v24 + 16) = v49;
  *(v24 + 24) = v55;
  *(v24 + 32) = v43;
  *(v24 + 40) = v53;
  swift_willThrow();

  return 0;
}

char *SecKeyRef.sign(data:algorithm:)(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v4 = v3;
  error[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v77 - v10;
  v12 = sub_225CCDF54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  if (!SecKeyIsAlgorithmSupported(v4, kSecKeyOperationTypeSign, a3))
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0x687469726F676C61, 0xEA0000000000206DLL);
    v85 = a3;
    type metadata accessor for SecKeyAlgorithm(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D16650);
    v32 = v87;
    v15 = v88;
    v83 = 0x8000000225D16500;
    v82 = 0x8000000225D16630;
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v11, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v11, 1, v37);
    sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
    if (v37)
    {
      v39 = 250;
    }

    else
    {
      v39 = 23;
    }

    v40 = sub_225B2C374(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v40;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v87);

    v42 = v87;
    v43 = sub_225B29AA0(0, 1, 1, v33);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 4) = v32;
    *(v46 + 5) = v15;
    v47 = v83;
    *(v46 + 6) = 0xD000000000000021;
    *(v46 + 7) = v47;
    v48 = v82;
    *(v46 + 8) = 0xD000000000000015;
    *(v46 + 9) = v48;
    *(v46 + 10) = 136;
    *v36 = v39;
    *(v36 + 8) = v43;
    *(v36 + 16) = v32;
    *(v36 + 24) = v15;
    *(v36 + 32) = v42;
    *(v36 + 40) = 0;
    goto LABEL_13;
  }

  v83 = v9;
  v16 = v84;
  v17 = sub_225CCCF74();
  Signature = SecKeyCreateSignature(v4, a3, v17, error);

  if (!Signature)
  {
    LOWORD(v87) = 252;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000021, 0x8000000225D165C0, &v87);
LABEL_13:
    swift_willThrow();
    return v15;
  }

  v19 = Signature;
  v20 = sub_225CCCFA4();
  v22 = v21;

  v87 = v20;
  v88 = v22;
  sub_2259DB42C();
  v23 = v16;
  sub_225CCDF24();
  v24 = v16;
  if (!v16)
  {
    v49 = sub_225CCDF34();
    v51 = v50;
    (*(v13 + 8))(v15, v12);
    v52 = v51 >> 62;
    if ((v51 >> 62) > 1)
    {
      if (v52 != 2)
      {
LABEL_34:
        v15 = sub_225CCCFD4();
        sub_2259BEF00(v49, v51);

        return v15;
      }

      v59 = *(v49 + 16);
      v60 = *(v49 + 24);
    }

    else
    {
      if (!v52)
      {
        goto LABEL_34;
      }

      v59 = v49;
      v60 = v49 >> 32;
    }

    if (v60 < v59)
    {
      __break(1u);
    }

    goto LABEL_34;
  }

  v84 = v19;
  v81 = " certificate from DER data";
  v80 = " DER format to raw (r,s) format";
  v25 = v16;
  v26 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v82 = swift_allocError();
  v28 = v27;
  swift_getErrorValue();
  v29 = v86;
  v30 = v16;
  sub_225B21FAC(v29, &v87);

  v15 = v88;
  if (v88)
  {
    v83 = v87;
    v79 = v89;
    v78 = v90;
    v31 = v91;
    v77 = v92;
  }

  else
  {
    v87 = v16;
    v53 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v54 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v56 = [(__CFString *)v54 code];
      v57 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v57;
      *(inited + 40) = v56;
      v31 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v58 = v23;
      v79 = 0;
      v78 = 0;
      v15 = MEMORY[0x277D84F90];
      v83 = 262;
    }

    else
    {
      v87 = v16;
      v61 = v16;
      v62 = sub_225CCE954();
      v63 = v83;
      v64 = swift_dynamicCast();
      v65 = *(v62 - 8);
      (*(v65 + 56))(v63, v64 ^ 1u, 1, v62);
      LODWORD(v65) = (*(v65 + 48))(v63, 1, v62);
      sub_2259CB640(v63, &unk_27D73B050, &unk_225CD3AD0);
      if (v65)
      {
        v66 = 262;
      }

      else
      {
        v66 = 23;
      }

      v83 = v66;
      v15 = MEMORY[0x277D84F90];
      v31 = sub_225B2C374(MEMORY[0x277D84F90]);
      v67 = v23;
      v79 = 0xD00000000000003FLL;
      v78 = 0x8000000225D165F0;
    }

    v77 = v23;
  }

  v68 = v81 | 0x8000000000000000;
  v69 = v80 | 0x8000000000000000;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v31;
  sub_225B2C4A0(v26, sub_225B2AC40, 0, v70, &v87);

  v71 = v87;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_225B29AA0(0, *(v15 + 2) + 1, 1, v15);
  }

  v73 = *(v15 + 2);
  v72 = *(v15 + 3);
  if (v73 >= v72 >> 1)
  {
    v15 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v15);
  }

  *(v15 + 2) = v73 + 1;
  v74 = &v15[56 * v73];
  *(v74 + 4) = 0xD00000000000003FLL;
  *(v74 + 5) = 0x8000000225D165F0;
  *(v74 + 6) = 0xD000000000000021;
  *(v74 + 7) = v68;
  *(v74 + 8) = 0xD000000000000015;
  *(v74 + 9) = v69;
  *(v74 + 10) = 146;
  *v28 = v83;
  v75 = v79;
  *(v28 + 8) = v15;
  *(v28 + 16) = v75;
  *(v28 + 24) = v78;
  *(v28 + 32) = v71;
  *(v28 + 40) = v77;
  swift_willThrow();

  return v15;
}

void SecKeyRef.signSHA256Digest(_:algorithm:)(uint64_t a1, unint64_t a2, const __CFString *a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v146 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v143 - v11;
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v13)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if (a1 == a1 >> 32)
    {
LABEL_16:
      v148 = 0x8000000225D16500;
      v147 = 0x8000000225D166A0;
      v24 = MEMORY[0x277D84F90];
      v25 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v26 = swift_allocError();
      v28 = v27;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v12, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v12, 1, v29);
      sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
      if (v29)
      {
        v31 = 108;
      }

      else
      {
        v31 = 23;
      }

      v32 = sub_225B2C374(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = v32;
      sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v151);

      v34 = v151;
      v35 = sub_225B29AA0(0, 1, 1, v24);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      *(v38 + 4) = 0xD000000000000013;
      *(v38 + 5) = 0x8000000225D16750;
      *(v38 + 6) = 0xD000000000000021;
      *(v38 + 7) = v148;
      *(v38 + 8) = 0xD00000000000001ELL;
      *(v38 + 9) = v147;
      *(v38 + 10) = 154;
      *v28 = v31;
      *(v28 + 8) = v35;
      *(v28 + 16) = 0xD000000000000013;
      *(v28 + 24) = 0x8000000225D16750;
      *(v28 + 32) = v34;
      *(v28 + 40) = 0;
      v39 = v26;
      goto LABEL_39;
    }
  }

LABEL_7:
  v14 = SecKeyCopyAttributes(v3);
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_23;
  }

  v151 = 0;
  sub_225CCE2C4();

  v16 = v151;
  if (!v151)
  {
LABEL_23:
    v40 = 0x8000000225D16670;
    v148 = 0x8000000225D16500;
    v147 = 0x8000000225D166A0;
    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v145 = swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v12, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v12, 1, v45);
    sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
    if (v45)
    {
      v47 = 258;
    }

    else
    {
      v47 = 23;
    }

    v48 = sub_225B2C374(v41);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v48;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, v49, &v151);

    v50 = v151;
    v51 = sub_225B29AA0(0, 1, 1, v41);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[56 * v53];
    v55 = 0xD000000000000026;
    *(v54 + 4) = 0xD000000000000026;
    *(v54 + 5) = 0x8000000225D16670;
    *(v54 + 6) = 0xD000000000000021;
    *(v54 + 7) = v148;
    *(v54 + 8) = 0xD00000000000001ELL;
    *(v54 + 9) = v147;
    v56 = 157;
    goto LABEL_37;
  }

  v144 = v4;
  v17 = sub_225CCE474();
  if (!*(v16 + 16))
  {

    goto LABEL_30;
  }

  v148 = v3;
  v19 = sub_2259F1DA8(v17, v18, MEMORY[0x277D83758], sub_2259F217C);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_2259CB810(*(v16 + 56) + 32 * v19, &v151);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v40 = 0x8000000225D166C0;
    v148 = 0x8000000225D16500;
    v147 = 0x8000000225D166A0;
    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v145 = swift_allocError();
    v44 = v59;
    v60 = sub_225CCE954();
    v61 = *(v60 - 8);
    (*(v61 + 56))(v12, 1, 1, v60);
    LODWORD(v60) = (*(v61 + 48))(v12, 1, v60);
    sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
    if (v60)
    {
      v47 = 258;
    }

    else
    {
      v47 = 23;
    }

    v62 = sub_225B2C374(v57);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v62;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, v63, &v151);

    v50 = v151;
    v51 = sub_225B29AA0(0, 1, 1, v57);
    v65 = *(v51 + 2);
    v64 = *(v51 + 3);
    if (v65 >= v64 >> 1)
    {
      v51 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v51);
    }

    *(v51 + 2) = v65 + 1;
    v54 = &v51[56 * v65];
    v55 = 0xD000000000000024;
    *(v54 + 4) = 0xD000000000000024;
    *(v54 + 5) = 0x8000000225D166C0;
    v66 = v148;
    *(v54 + 6) = 0xD000000000000021;
    *(v54 + 7) = v66;
    v67 = v147;
    *(v54 + 8) = 0xD00000000000001ELL;
    *(v54 + 9) = v67;
    v56 = 160;
LABEL_37:
    *(v54 + 10) = v56;
    *v44 = v47;
    *(v44 + 8) = v51;
    *(v44 + 16) = v55;
    *(v44 + 24) = v40;
    *(v44 + 32) = v50;
    *(v44 + 40) = 0;
LABEL_38:
    v39 = v145;
LABEL_39:
    swift_willThrow();
    v144 = 0;
    goto LABEL_40;
  }

  v22 = v150;
  v145 = v149;
  v147 = sub_225CCE444();
  type metadata accessor for CFString(0);
  sub_2259F4764(&qword_27D73AEA0, type metadata accessor for CFString, &unk_225CD3A60);
  v23 = v147;
  if (sub_225CCD4F4())
  {

    goto LABEL_58;
  }

  v143 = v22;
  if (!*MEMORY[0x277CDC048])
  {

    goto LABEL_74;
  }

  v101 = v23;
  v102 = *MEMORY[0x277CDC048];
  v103 = sub_225CCD4F4();

  if ((v103 & 1) == 0)
  {
LABEL_74:
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_225CCF204();

    v151 = 0x657079742079656BLL;
    v152 = 0xE900000000000020;
    MEMORY[0x22AA6CE70](v145, v143);

    MEMORY[0x22AA6CE70](0xD00000000000001DLL, 0x8000000225D166F0);
    v111 = v151;
    v110 = v152;
    v148 = 0x8000000225D16500;
    v147 = 0x8000000225D166A0;
    v112 = MEMORY[0x277D84F90];
    v113 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v145 = swift_allocError();
    v115 = v114;
    v116 = sub_225CCE954();
    v117 = *(v116 - 8);
    (*(v117 + 56))(v12, 1, 1, v116);
    LODWORD(v116) = (*(v117 + 48))(v12, 1, v116);
    sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
    if (v116)
    {
      v118 = 250;
    }

    else
    {
      v118 = 23;
    }

    v119 = sub_225B2C374(v112);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v119;
    sub_225B2C4A0(v113, sub_225B2AC40, 0, v120, &v151);

    v121 = v151;
    v122 = sub_225B29AA0(0, 1, 1, v112);
    v124 = *(v122 + 2);
    v123 = *(v122 + 3);
    if (v124 >= v123 >> 1)
    {
      v122 = sub_225B29AA0((v123 > 1), v124 + 1, 1, v122);
    }

    *(v122 + 2) = v124 + 1;
    v125 = &v122[56 * v124];
    *(v125 + 4) = v111;
    *(v125 + 5) = v110;
    v126 = v148;
    *(v125 + 6) = 0xD000000000000021;
    *(v125 + 7) = v126;
    v127 = v147;
    *(v125 + 8) = 0xD00000000000001ELL;
    *(v125 + 9) = v127;
    v128 = 171;
    goto LABEL_90;
  }

LABEL_58:
  v104 = v144;
  if (v13 == 2)
  {
    v107 = *(a1 + 16);
    v106 = *(a1 + 24);
    v108 = __OFSUB__(v106, v107);
    v105 = v106 - v107;
    if (!v108)
    {
      goto LABEL_66;
    }

    __break(1u);
LABEL_65:
    v105 = BYTE6(a2);
    goto LABEL_66;
  }

  if (v13 != 1)
  {
    goto LABEL_65;
  }

  LODWORD(v105) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_92;
  }

  v105 = v105;
LABEL_66:
  if (v105 != 32)
  {
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_225CCF204();

    v151 = 0xD000000000000012;
    v152 = 0x8000000225D16710;
    if (v13 == 2)
    {
      v130 = *(a1 + 16);
      v129 = *(a1 + 24);
      v108 = __OFSUB__(v129, v130);
      v109 = v129 - v130;
      if (!v108)
      {
        goto LABEL_84;
      }

      __break(1u);
    }

    else if (v13 == 1)
    {
      LODWORD(v109) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v109 = v109;
LABEL_84:
        v149 = v109;
        v131 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v131);

        MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D16730);
        v111 = v151;
        v110 = v152;
        v148 = 0x8000000225D16500;
        v147 = 0x8000000225D166A0;
        v132 = MEMORY[0x277D84F90];
        v133 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v145 = swift_allocError();
        v115 = v134;
        v135 = sub_225CCE954();
        v136 = *(v135 - 8);
        (*(v136 + 56))(v12, 1, 1, v135);
        LODWORD(v135) = (*(v136 + 48))(v12, 1, v135);
        sub_2259CB640(v12, &unk_27D73B050, &unk_225CD3AD0);
        if (v135)
        {
          v118 = 250;
        }

        else
        {
          v118 = 23;
        }

        v137 = sub_225B2C374(v132);
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v151 = v137;
        sub_225B2C4A0(v133, sub_225B2AC40, 0, v138, &v151);

        v121 = v151;
        v122 = sub_225B29AA0(0, 1, 1, v132);
        v140 = *(v122 + 2);
        v139 = *(v122 + 3);
        if (v140 >= v139 >> 1)
        {
          v122 = sub_225B29AA0((v139 > 1), v140 + 1, 1, v122);
        }

        *(v122 + 2) = v140 + 1;
        v125 = &v122[56 * v140];
        *(v125 + 4) = v111;
        *(v125 + 5) = v110;
        v141 = v148;
        *(v125 + 6) = 0xD000000000000021;
        *(v125 + 7) = v141;
        v142 = v147;
        *(v125 + 8) = 0xD00000000000001ELL;
        *(v125 + 9) = v142;
        v128 = 168;
LABEL_90:
        *(v125 + 10) = v128;
        *v115 = v118;
        *(v115 + 8) = v122;
        *(v115 + 16) = v111;
        *(v115 + 24) = v110;
        *(v115 + 32) = v121;
        *(v115 + 40) = 0;
        goto LABEL_38;
      }

LABEL_92:
      __break(1u);
      return;
    }

    v109 = BYTE6(a2);
    goto LABEL_84;
  }

  SecKeyRef.sign(data:algorithm:)(a1, a2, a3);
  v39 = v104;
  if (!v104)
  {
    return;
  }

  v144 = 0;
  v148 = 0x8000000225D16500;
  v147 = 0x8000000225D166A0;
LABEL_40:
  v68 = v39;
  v69 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v70 = swift_allocError();
  v72 = v71;
  swift_getErrorValue();
  v73 = v157;
  v74 = v39;
  sub_225B21FAC(v73, &v151);

  v75 = v152;
  v145 = v70;
  if (v152)
  {
    v146 = v151;
    v77 = v153;
    v76 = v154;
    v78 = v155;
    v79 = v156;
  }

  else
  {
    v151 = v39;
    v80 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v81 = v149;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v83 = [v81 code];
      v84 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v84;
      *(inited + 40) = v83;
      v78 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v85 = v39;
      v146 = 0;
      v77 = 0;
      v76 = 0;
      v75 = MEMORY[0x277D84F90];
    }

    else
    {
      v151 = v39;
      v86 = v39;
      v87 = sub_225CCE954();
      v88 = v146;
      v89 = swift_dynamicCast();
      v90 = *(v87 - 8);
      (*(v90 + 56))(v88, v89 ^ 1u, 1, v87);
      LODWORD(v87) = (*(v90 + 48))(v88, 1, v87);
      sub_2259CB640(v88, &unk_27D73B050, &unk_225CD3AD0);
      if (v87)
      {
        v91 = 0;
      }

      else
      {
        v91 = 23;
      }

      v146 = v91;
      v75 = MEMORY[0x277D84F90];
      v78 = sub_225B2C374(MEMORY[0x277D84F90]);
      v92 = v39;
      v77 = 0;
      v76 = 0;
    }

    v79 = v39;
  }

  v93 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v78;
  sub_225B2C4A0(v69, sub_225B2AC40, 0, v93, &v151);

  v94 = v151;
  v95 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = sub_225B29AA0(0, *(v75 + 2) + 1, 1, v75);
  }

  v97 = *(v75 + 2);
  v96 = *(v75 + 3);
  if (v97 >= v96 >> 1)
  {
    v75 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v75);
  }

  *(v75 + 2) = v97 + 1;
  v98 = &v75[56 * v97];
  *(v98 + 4) = 0;
  *(v98 + 5) = 0;
  v99 = v148;
  *(v98 + 6) = 0xD000000000000021;
  *(v98 + 7) = v99;
  v100 = v147;
  *(v98 + 8) = 0xD00000000000001ELL;
  *(v98 + 9) = v100;
  *(v98 + 10) = 174;
  *v72 = v146;
  *(v72 + 8) = v75;
  *(v72 + 16) = v77;
  *(v72 + 24) = v76;
  *(v72 + 32) = v94;
  *(v72 + 40) = v79;
  swift_willThrow();
}

uint64_t SecCertificateRef.base64EncodedString.getter()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_225CCCFA4();
  v4 = v3;

  v5 = sub_225CCCF84();
  sub_2259BEF00(v2, v4);
  return v5;
}

uint64_t sub_2259E9330@<X0>(SecCertificateRef *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = SecCertificateCopyData(*a1);
  v4 = sub_225CCCFA4();
  v6 = v5;

  v7 = sub_225CCCF84();
  v9 = v8;
  result = sub_2259BEF00(v4, v6);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

uint64_t sub_2259E93CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_225CCE8B4();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_2259E50F8(a4, KeyPath, v8, a5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  return v11;
}

uint64_t SecCertificateRef.derRepresentation.getter()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_225CCCFA4();

  return v2;
}

SecCertificateRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> decodeCertificate(fromBase64DER:)(Swift::String fromBase64DER)
{
  object = fromBase64DER._object;
  countAndFlagsBits = fromBase64DER._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v50[0] = countAndFlagsBits;
  v50[1] = object;
  v48 = 10;
  v49 = 0xE100000000000000;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_2259D8654();
  sub_225CCF064();
  v6 = sub_225CCCF04();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v45 = 0x8000000225D16500;
    v9 = MEMORY[0x277D84F90];
    v10 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v12 = v11;
    v13 = sub_225CCE954();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v5, 1, 1, v13);
    LODWORD(v13) = (*(v14 + 48))(v5, 1, v13);
    sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
    if (v13)
    {
      v15 = 122;
    }

    else
    {
      v15 = 23;
    }

    v16 = sub_225B2C374(v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v16;
    sub_225B2C4A0(v10, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v50);

    v18 = v50[0];
    v19 = sub_225B29AA0(0, 1, 1, v9);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_225B29AA0((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[56 * v21];
    *(v22 + 4) = 0xD000000000000022;
    *(v22 + 5) = 0x8000000225D16770;
    v23 = v45;
    *(v22 + 6) = 0xD000000000000021;
    *(v22 + 7) = v23;
    *(v22 + 8) = 0xD000000000000021;
    *(v22 + 9) = 0x8000000225D167A0;
    *(v22 + 10) = 198;
    *v12 = v15;
    *(v12 + 8) = v19;
    *(v12 + 16) = 0xD000000000000022;
    *(v12 + 24) = 0x8000000225D16770;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v24 = *MEMORY[0x277CBECE8];
    v25 = sub_225CCCF74();
    v10 = SecCertificateCreateWithData(v24, v25);

    if (v10)
    {
      sub_2259B97A8(v6, v8);
    }

    else
    {
      v44 = 0x8000000225D16500;
      v45 = 0x8000000225D164D0;
      v43 = 0x8000000225D167A0;
      v26 = MEMORY[0x277D84F90];
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v10 = v28;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v5, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v5, 1, v29);
      sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
      if (v29)
      {
        v31 = 155;
      }

      else
      {
        v31 = 23;
      }

      v32 = sub_225B2C374(v26);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v32;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, v33, v50);

      v34 = v50[0];
      v35 = sub_225B29AA0(0, 1, 1, v26);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      v40 = v44;
      v39 = v45;
      *(v38 + 4) = 0xD00000000000002ALL;
      *(v38 + 5) = v39;
      *(v38 + 6) = 0xD000000000000021;
      *(v38 + 7) = v40;
      *(v38 + 8) = 0xD000000000000021;
      *(v38 + 9) = v43;
      *(v38 + 10) = 201;
      *v10 = v31;
      *(v10 + 1) = v35;
      *(v10 + 2) = 0xD00000000000002ALL;
      *(v10 + 3) = v39;
      *(v10 + 4) = v34;
      *(v10 + 5) = 0;
      swift_willThrow();
      sub_2259B97A8(v6, v8);
    }
  }

  return v10;
}

uint64_t decodeCertificateChain(fromBase64DER:)(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v2 = a1[2];
  if (v2)
  {
    v5 = a1[4];
    v4 = a1[5];

    v6._countAndFlagsBits = v5;
    v6._object = v4;
    v7 = decodeCertificate(fromBase64DER:)(v6);
    if (v8)
    {
LABEL_3:
    }

    else
    {
      v10 = v7;
      v11 = (a1 + 7);
      while (1)
      {

        v12 = v10;
        MEMORY[0x22AA6D020]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_225CCE844();
        }

        sub_225CCE884();

        v1 = v17;
        if (!--v2)
        {
          break;
        }

        v14 = *(v11 - 1);
        v13 = *v11;

        v15._countAndFlagsBits = v14;
        v15._object = v13;
        v10 = decodeCertificate(fromBase64DER:)(v15);
        v11 += 2;
        if (v16)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return v1;
}

uint64_t decodeCertificateChain(fromDER:)(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v3 = a1[2];
  if (v3)
  {
    v5 = a1[4];
    v6 = a1[5];
    sub_2259CB710(v5, v6);
    v7 = decodeCertificate(fromDER:)(v5, v6);
    if (v1)
    {
      sub_2259BEF00(v5, v6);
    }

    else
    {
      for (i = a1 + 7; ; i += 2)
      {
        v10 = v7;
        MEMORY[0x22AA6D020]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_225CCE844();
        }

        sub_225CCE884();
        sub_2259BEF00(v5, v6);

        v2 = v11;
        if (!--v3)
        {
          break;
        }

        v5 = *(i - 1);
        v6 = *i;
        sub_2259CB710(v5, *i);
        v7 = decodeCertificate(fromDER:)(v5, v6);
      }
    }
  }

  return v2;
}

uint64_t sub_2259E9CCC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2259E9DC4;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000017, 0x8000000225D167D0, sub_2259F4800, v2, v4);
}

uint64_t sub_2259E9DC4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2259E9EFC;
  }

  else
  {

    v2 = sub_2259E9EE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259E9EFC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2259E9F64(uint64_t a1, void *a2)
{
  v35 = a2;
  v36 = a1;
  v2 = sub_225CCDA34();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v39 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v5 = *(v34 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = v30 - v6;
  v31 = sub_225CCEDA4();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCED84();
  MEMORY[0x28223BE20](v10);
  v11 = sub_225CCDA64();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2259D8718(0, &qword_28105BFA8, 0x277D85C78);
  v30[1] = "Unable to deserialize ACL";
  v30[2] = v14;
  sub_225CCDA54();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2259F4764(&qword_28105BFB0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF10, &qword_225CD4B68);
  sub_2259F6F50(&qword_28105BFC8, &qword_27D73AF10, &qword_225CD4B68);
  sub_225CCF0E4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v31);
  v15 = v13;
  v16 = sub_225CCEDD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF18, &unk_225CD4B70);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  v19 = v35;
  v18 = v36;
  *(v17 + 16) = v35;
  v20 = v32;
  v21 = v34;
  (*(v5 + 16))(v32, v18, v34);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = v16;
  (*(v5 + 32))(v23 + v22, v20, v21);
  aBlock[4] = sub_2259F6EC8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);
  v25 = v19;

  v26 = v16;
  sub_225CCDA54();
  v42 = MEMORY[0x277D84F90];
  sub_2259F4764(&qword_28105BFD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170, &qword_225CD7CD0);
  sub_2259F6F50(&qword_28105BFD0, &unk_27D73B170, &qword_225CD7CD0);
  v28 = v39;
  v27 = v40;
  sub_225CCF0E4();
  MEMORY[0x22AA6D600](0, v15, v28, v24);
  _Block_release(v24);

  (*(v41 + 8))(v28, v27);
  (*(v37 + 8))(v15, v38);
}

void sub_2259EA518(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  os_unfair_lock_lock((a1 + 24));
  v13 = *(a1 + 16);
  os_unfair_lock_unlock((a1 + 24));
  (*(v10 + 16))(v12, a3, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v12, v9);
  v45 = sub_2259F6FA4;
  v46 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_2259EAADC;
  v44 = &block_descriptor_27;
  v16 = _Block_copy(&aBlock);

  v17 = SecTrustEvaluateAsyncWithError(v13, a2, v16);
  _Block_release(v16);

  if (v17)
  {
    v39[0] = a3;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_225CCF204();

    aBlock = 0xD000000000000027;
    v42 = 0x8000000225D16AE0;
    v40 = v17;
    v18 = MEMORY[0x277D849A8];
    v19 = MEMORY[0x277D84A08];
    v20 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v20);

    v22 = aBlock;
    v21 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v24 = inited + 32;
    *(inited + 64) = v18;
    *(inited + 72) = v19;
    *(inited + 40) = v17;
    v25 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v24, &qword_27D73B060, &unk_225CD3AE0);
    v26 = sub_225CCE954();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v8, 1, 1, v26);
    LODWORD(v26) = (*(v27 + 48))(v8, 1, v26);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v26)
    {
      v28 = 155;
    }

    else
    {
      v28 = 23;
    }

    v29 = MEMORY[0x277D84F90];
    v30 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v30;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

    v32 = aBlock;
    v33 = sub_225B29AA0(0, 1, 1, v29);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_225B29AA0((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[56 * v35];
    *(v36 + 4) = v22;
    *(v36 + 5) = v21;
    *(v36 + 6) = 0xD000000000000021;
    *(v36 + 7) = 0x8000000225D16500;
    *(v36 + 8) = 0xD000000000000017;
    *(v36 + 9) = 0x8000000225D167D0;
    *(v36 + 10) = 256;
    sub_2259CB5EC();
    v37 = swift_allocError();
    *v38 = v28;
    *(v38 + 8) = v33;
    *(v38 + 16) = v22;
    *(v38 + 24) = v21;
    *(v38 + 32) = v32;
    *(v38 + 40) = 0;
    aBlock = v37;
    sub_225CCE924();
  }
}

uint64_t sub_2259EA9F8(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    type metadata accessor for CFError(0);
    sub_2259F4764(&qword_281059B10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    swift_allocError();
    *v4 = a3;
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
    return sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
    return sub_225CCE934();
  }
}

void sub_2259EAADC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t PublicKeyAlgorithm.description.getter()
{
  v1 = *v0;
  v2 = 0x363532505F4345;
  v3 = 0x313235505F4345;
  v4 = 0x39313535325F4445;
  if (v1 != 3)
  {
    v4 = 0x3834345F4445;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x343833505F4345;
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

CoreIDVShared::PublicKeyAlgorithm_optional __swiftcall PublicKeyAlgorithm.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2259EAC70()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259EAD50(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_2259EAE1C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_2259EAF04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x363532505F4345;
  v5 = 0xE700000000000000;
  v6 = 0x313235505F4345;
  v7 = 0xE800000000000000;
  v8 = 0x39313535325F4445;
  if (v2 != 3)
  {
    v8 = 0x3834345F4445;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x343833505F4345;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2259EAFA0()
{
  v1 = *v0;
  v2 = 0x363532505F4345;
  v3 = 0x313235505F4345;
  v4 = 0x39313535325F4445;
  if (v1 != 3)
  {
    v4 = 0x3834345F4445;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x343833505F4345;
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

uint64_t static SecCertificateRef.appleExternalRoots.getter()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = SecCertificateCopyAppleExternalRoots();
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v23 = 0;
      type metadata accessor for SecCertificate(0);
      sub_225CCE804();

      result = v23;
      if (v23)
      {
        return result;
      }
    }

    else
    {
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v16 = off_28105B918;
    v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v18));
    (*(v1 + 16))(v6, &v16[v17], v0);
    os_unfair_lock_unlock(&v16[v18]);
    v19 = sub_225CCD934();
    v20 = sub_225CCED14();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2259A7000, v19, v20, "SecCertificate error casting hardcoded external roots from Security framework", v21, 2u);
      MEMORY[0x22AA6F950](v21, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
  }

  else
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
    v14 = sub_225CCED14();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2259A7000, v13, v14, "SecCertificate could not get hardcoded external roots from Security framework", v15, 2u);
      MEMORY[0x22AA6F950](v15, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return MEMORY[0x277D84F90];
}

void static SecCertificateRef.make(with:in:)(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v83 - v9;
  v10 = sub_225CCCEA4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    if (qword_28105B8B8 != -1)
    {
      swift_once();
    }

    v17 = qword_28105E338;
  }

  v18 = a3;
  v19 = a2;
  v20 = sub_225CCE444();
  v21 = sub_225CCE444();
  v89 = v17;
  v22 = [v17 URLForResource:v20 withExtension:v21];

  v87 = v19;
  v86 = a1;
  if (v22)
  {
    sub_225CCCE34();

    (*(v11 + 32))(v16, v14, v10);
    v23 = v88;
    v24 = sub_225CCCEC4();
    if (!v23)
    {
      v62 = v24;
      v63 = v25;
      v64 = sub_225CCCF74();
      v65 = SecCertificateCreateWithPEM();

      v66 = v89;
      if (v65)
      {
        v67 = v65;
        sub_2259BEF00(v62, v63);

        (*(v11 + 8))(v16, v10);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    (*(v11 + 8))(v16, v10);

    v85 = 0;
    v88 = 0x8000000225D16500;
    v26 = v23;
  }

  else
  {
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_225CCF204();

    v91 = 0xD00000000000001BLL;
    v92 = 0x8000000225D167F0;
    MEMORY[0x22AA6CE70](a1, v19);
    MEMORY[0x22AA6CE70](1835364398, 0xE400000000000000);
    v28 = v91;
    v27 = v92;
    v29 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v31 = v30;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    v34 = v85;
    (*(v33 + 56))(v85, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v34, 1, v32);
    sub_2259CB640(v34, &unk_27D73B050, &unk_225CD3AD0);
    if (v32)
    {
      v35 = 273;
    }

    else
    {
      v35 = 23;
    }

    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v37;
    sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v91);

    v39 = v91;
    v40 = sub_225B29AA0(0, 1, 1, v36);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = v28;
    *(v43 + 5) = v27;
    *(v43 + 6) = 0xD000000000000021;
    *(v43 + 7) = 0x8000000225D16500;
    v88 = 0x8000000225D16500;
    strcpy(v43 + 64, "make(with:in:)");
    v43[79] = -18;
    *(v43 + 10) = 305;
    *v31 = v35;
    *(v31 + 8) = v40;
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    *(v31 + 32) = v39;
    *(v31 + 40) = 0;
    swift_willThrow();

    v85 = 0;
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  sub_225CCF204();

  v91 = 0xD00000000000002BLL;
  v92 = 0x8000000225D16810;
  MEMORY[0x22AA6CE70](v86, v87);
  MEMORY[0x22AA6CE70](1835364398, 0xE400000000000000);
  v44 = v91;
  v45 = v92;
  v46 = v26;
  v47 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v89 = swift_allocError();
  v49 = v48;
  swift_getErrorValue();
  v50 = v97;
  v51 = v26;
  sub_225B21FAC(v50, &v91);

  v52 = v92;
  v87 = v44;
  v86 = v45;
  if (v92)
  {
    v84 = v91;
    v44 = v93;
    v53 = v94;
    v54 = v95;
    v55 = v96;
  }

  else
  {
    v91 = v26;
    v56 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v57 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v59 = [v57 code];
      v60 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v60;
      *(inited + 40) = v59;
      v54 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v61 = v26;
      v53 = 0;
      v44 = 0;
      v52 = MEMORY[0x277D84F90];
      v84 = 273;
      v55 = v26;
    }

    else
    {
      v91 = v26;
      v68 = v26;
      v69 = sub_225CCE954();
      v70 = v47;
      v71 = v84;
      v72 = swift_dynamicCast();
      v73 = *(v69 - 8);
      (*(v73 + 56))(v71, v72 ^ 1u, 1, v69);
      LODWORD(v73) = (*(v73 + 48))(v71, 1, v69);
      v74 = v71;
      v47 = v70;
      sub_2259CB640(v74, &unk_27D73B050, &unk_225CD3AD0);
      if (v73)
      {
        v75 = 273;
      }

      else
      {
        v75 = 23;
      }

      v84 = v75;

      v52 = MEMORY[0x277D84F90];
      v54 = sub_225B2C374(MEMORY[0x277D84F90]);
      v76 = v26;
      v55 = v26;
      v53 = v45;
    }
  }

  v77 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v54;
  sub_225B2C4A0(v47, sub_225B2AC40, 0, v77, &v91);

  v78 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v52 = sub_225B29AA0(0, *(v52 + 2) + 1, 1, v52);
  }

  v80 = *(v52 + 2);
  v79 = *(v52 + 3);
  if (v80 >= v79 >> 1)
  {
    v52 = sub_225B29AA0((v79 > 1), v80 + 1, 1, v52);
  }

  *(v52 + 2) = v80 + 1;
  v81 = &v52[56 * v80];
  v82 = v86;
  *(v81 + 4) = v87;
  *(v81 + 5) = v82;
  *(v81 + 6) = 0xD000000000000021;
  *(v81 + 7) = v88;
  strcpy(v81 + 64, "make(with:in:)");
  v81[79] = -18;
  *(v81 + 10) = 311;
  *v49 = v84;
  *(v49 + 8) = v52;
  *(v49 + 16) = v44;
  *(v49 + 24) = v53;
  *(v49 + 32) = v78;
  *(v49 + 40) = v55;
  swift_willThrow();
}

SecCertificateRef static SecCertificateRef.make(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = sub_225CCCF74();
  v4 = SecCertificateCreateWithData(v2, v3);

  return v4;
}

Swift::String_optional __swiftcall SecCertificateRef.commonName()()
{
  v1 = v0;
  commonName[1] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  commonName[0] = 0;
  v6 = SecCertificateCopyCommonName(v1, commonName);
  if (v6)
  {
    v7 = SecCopyErrorMessageString(v6, 0);
    if (v7)
    {
      v8 = v7;
      v9 = sub_225CCE474();
      v11 = v10;
    }

    else
    {
      v11 = 0xE500000000000000;
      v9 = 0x3E6C696E3CLL;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v15 = off_28105B918;
    v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v17));
    (*(v3 + 16))(v5, &v15[v16], v2);
    os_unfair_lock_unlock(&v15[v17]);

    v18 = sub_225CCD934();
    v19 = sub_225CCED14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446210;
      v22 = sub_2259BE198(v9, v11, &v27);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_2259A7000, v18, v19, "error during SecCertificateCopyCommonName, error: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA6F950](v21, -1, -1);
      MEMORY[0x22AA6F950](v20, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_13;
  }

  if (!commonName[0])
  {
LABEL_13:
    v12 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v12 = sub_225CCE474();
  v14 = v13;
LABEL_14:

  v23 = v12;
  v24 = v14;
  result.value._object = v24;
  result.value._countAndFlagsBits = v23;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organization()()
{
  v0 = sub_2259EC150(MEMORY[0x277CDBDC0]);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organizationalUnit()()
{
  v0 = sub_2259EC150(MEMORY[0x277CDBDC8]);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void *sub_2259EC150(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (result)
  {
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_225CCE804();
    }

    return 0;
  }

  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.uid()()
{

  v0 = sub_2259EC330(&oidUserId);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t SecCertificateRef.stateOrProvinceName.getter()
{

  return sub_2259EC330(&oidStateOrProvinceName);
}

uint64_t SecCertificateRef.countryName.getter()
{

  return sub_2259EC330(&oidCountryName);
}

uint64_t sub_2259EC330(__int128 *a1)
{
  v1 = SecCertificateCopySubjectAttributeValue();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_225CCE474();

  return v3;
}

uint64_t SecCertificateRef.issuerSHA1()()
{
  v0 = SecCertificateCopyIssuerSHA1Digest();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_225CCCFA4();

  return v2;
}

SecKeyRef SecCertificateRef.publicKeySHA256()()
{
  v1 = sub_225CCE164();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCDBA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecCertificateCopyKey(v0);
  if (result)
  {
    v10 = result;
    v11 = SecKeyRef.publicKeyData.getter();
    v13 = v12;
    if (v12 >> 60 == 15)
    {

      return v11;
    }

    else
    {
      sub_2259F4764(&qword_27D73AE10, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v20 = v5;
      sub_225CCDB94();
      sub_2259CB710(v11, v13);
      v21 = v6;
      sub_2259DB138(v11, v13, v4);
      sub_2259B97A8(v11, v13);
      sub_225CCDB84();
      (*(v2 + 8))(v4, v1);
      sub_2259F4764(&qword_27D73AE58, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
      v14 = v20;
      v15 = sub_225CCE154();
      v17 = sub_2259D732C(v15, v16);

      v18 = sub_2259D8490(v17);

      sub_2259B97A8(v11, v13);
      (*(v21 + 8))(v8, v14);
      return v18;
    }
  }

  return result;
}

uint64_t SecCertificateRef.extendedKeyUsage.getter()
{
  v0 = SecCertificateCopyExtendedKeyUsage();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_225CCE804();
    }
  }

  return v1;
}

void SecCertificateRef.logotype.getter(uint64_t a1@<X8>)
{
  v3 = sub_225CCD954();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCD564();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_225CCD6B4();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCE444();
  v10 = SecCertificateCopyExtensionValue();

  if (v10)
  {
    v25 = v3;
    v26 = a1;
    v11 = sub_225CCCFA4();
    v13 = v12;

    sub_2259CB710(v11, v13);
    sub_2259F4494(v11, v13);
    sub_225CCD744();
    sub_225CCD764();
    if (v1)
    {

      sub_2259CB710(v11, v13);
      sub_2259F4494(v11, v13);
      sub_2259F4808();
      sub_225CCD734();
      sub_2259BEF00(v11, v13);
      v14 = v30;
      v15 = v26;
      *v26 = v29;
      *(v15 + 2) = v14;
    }

    else
    {
      (*(v27 + 8))(v8, v6);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v16 = off_28105B918;
      v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v18));
      v19 = v28;
      v20 = v25;
      (*(v28 + 16))(v31, &v16[v17], v25);
      os_unfair_lock_unlock(&v16[v18]);
      v21 = sub_225CCD934();
      v22 = sub_225CCED04();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2259A7000, v21, v22, "Received ASN1Null for Logotype OID, returning nil", v23, 2u);
        MEMORY[0x22AA6F950](v23, -1, -1);

        sub_2259BEF00(v11, v13);
      }

      else
      {
        sub_2259BEF00(v11, v13);
      }

      v24 = v26;
      (*(v19 + 8))(v31, v20);
      *v24 = xmmword_225CD48A0;
      *(v24 + 2) = 0;
    }
  }

  else
  {
    *a1 = xmmword_225CD48A0;
    *(a1 + 16) = 0;
  }
}

uint64_t SecCertificateRef.externalDataHash.getter()
{
  v43 = sub_225CCD5B4();
  v1 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_225CCD954();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCD564();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = sub_225CCD6B4();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCE444();
  v13 = SecCertificateCopyExtensionValue();

  if (!v13)
  {
    return 0;
  }

  v36 = v1;
  v37 = v8;
  v14 = sub_225CCCFA4();
  v16 = v15;

  sub_2259CB710(v14, v16);
  sub_2259F4494(v14, v16);
  sub_225CCD744();
  sub_225CCD764();
  if (v0)
  {

    sub_2259CB710(v14, v16);
    sub_2259F4494(v14, v16);
    v17 = v43;
    sub_225CCD744();
    v18 = v42;
    sub_225CCD764();
    v28 = sub_225CCD5A4();
    sub_2259D2AD0(v28, v29, v30, v31);
    v33 = v32;
    sub_2259BEF00(v14, v16);
    (*(v36 + 8))(v18, v17);
    return v33;
  }

  else
  {
    (*(v38 + 8))(v11, v9);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v19 = off_28105B918;
    v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v21));
    v23 = v39;
    v22 = v40;
    v24 = v41;
    (*(v40 + 16))(v39, &v19[v20], v41);
    os_unfair_lock_unlock(&v19[v21]);
    v25 = sub_225CCD934();
    v26 = sub_225CCED04();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2259A7000, v25, v26, "Received ASN1Null for external data hash, returning nil", v27, 2u);
      MEMORY[0x22AA6F950](v27, -1, -1);

      sub_2259BEF00(v14, v16);
    }

    else
    {
      sub_2259BEF00(v14, v16);
    }

    (*(v22 + 8))(v23, v24);
    return 0;
  }
}

uint64_t SecCertificateRef.privacyPolicyURL.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = sub_225CCD704();
  v39 = *(v45 - 8);
  v2 = MEMORY[0x28223BE20](v45);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v44 = &v36 - v5;
  v6 = sub_225CCD954();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD564();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v10 = sub_225CCD6B4();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCE444();
  v14 = SecCertificateCopyExtensionValue();

  if (v14)
  {
    v37 = v4;
    v38 = a1;
    v15 = sub_225CCCFA4();
    v17 = v16;

    sub_2259CB710(v15, v17);
    sub_2259F4494(v15, v17);
    sub_225CCD744();
    v18 = v46;
    sub_225CCD764();
    if (v18)
    {

      sub_2259CB710(v15, v17);
      sub_2259F4494(v15, v17);
      v19 = v45;
      sub_225CCD744();
      v20 = v44;
      sub_225CCD764();
      v31 = v39;
      v32 = v37;
      (*(v39 + 16))(v37, v20, v19);
      MEMORY[0x22AA6CDC0](v32);
      sub_225CCCE84();

      sub_2259BEF00(v15, v17);
      return (*(v31 + 8))(v20, v19);
    }

    else
    {
      (*(v40 + 8))(v12, v10);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v22 = off_28105B918;
      v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v24));
      v26 = v41;
      v25 = v42;
      v27 = v43;
      (*(v42 + 16))(v41, &v22[v23], v43);
      os_unfair_lock_unlock(&v22[v24]);
      v28 = sub_225CCD934();
      v29 = sub_225CCED04();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2259A7000, v28, v29, "Received ASN1Null for privacy policy URL, returning nil", v30, 2u);
        MEMORY[0x22AA6F950](v30, -1, -1);

        sub_2259BEF00(v15, v17);
      }

      else
      {
        sub_2259BEF00(v15, v17);
      }

      v34 = v38;
      (*(v25 + 8))(v26, v27);
      v35 = sub_225CCCEA4();
      return (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    }
  }

  else
  {
    v21 = sub_225CCCEA4();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }
}

void SecCertificateRef.merchantCategoryCode.getter()
{
  v38 = sub_2259D8490(&unk_2838FB330);
  v39 = v1;
  v2 = v0;
  v3 = sub_2259F4908(&v38, v2);
  v5 = v4;

  if (!v5)
  {
    sub_2259BEF00(v38, v39);
    return;
  }

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    sub_2259BEF00(v38, v39);

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    sub_2259F3F08(v3, v5, 10);
    v34 = v38;
    v35 = v39;
    goto LABEL_65;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v36[0] = v3;
    v36[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v36 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v36;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v36 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_225CCF354();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_63;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_63;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_71;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_63;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      LOBYTE(v6) = 1;
      goto LABEL_64;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_63;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_63;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_63;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v6) = 0;
LABEL_64:
        v37 = v6;
        v34 = v38;
        v35 = v39;
LABEL_65:
        sub_2259BEF00(v34, v35);

        return;
      }

      goto LABEL_63;
    }

    __break(1u);
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

unint64_t sub_2259EDAD0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_225CCF354();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2259F3F08(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t SecCertificateRef.pseudonym.getter()
{
  v5 = sub_2259D8490(&unk_2838FB358);
  v6 = v1;
  v2 = v0;
  v3 = sub_2259F4908(&v5, v2);

  sub_2259BEF00(v5, v6);
  return v3;
}

void sub_2259EDE40(uint64_t *a4@<X8>)
{
  v5 = SecCertificateCopySubjectAttributeValue();
  if (v5)
  {
    v6 = v5;
    v7 = sub_225CCE474();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a4 = v7;
  a4[1] = v9;
}

void sub_2259EDEF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCE444();
  v11 = SecCertificateCopyExtensionValue();

  if (v11)
  {
    v33 = a1;
    v12 = sub_225CCCFA4();
    v14 = v13;

    sub_2259CB710(v12, v14);
    sub_2259F4494(v12, v14);
    sub_2259F6E74();
    sub_225CCD734();
    if (v3)
    {
      v31 = v12;
      v32 = v14;
      v15 = v8;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v16 = off_28105B918;
      v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v18));
      v19 = v35;
      (*(v15 + 16))(v35, &v16[v17], v7);
      os_unfair_lock_unlock(&v16[v18]);

      v20 = v3;
      v21 = sub_225CCD934();
      v22 = sub_225CCED14();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v7;
        v26 = v25;
        *&v34 = v25;
        *v23 = 136315394;
        *(v23 + 4) = sub_2259BE198(v33, a2, &v34);
        *(v23 + 12) = 2112;
        v27 = v3;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v28;
        *v24 = v28;
        _os_log_impl(&dword_2259A7000, v21, v22, "Failed to decode allowable elements for OID=%s: %@", v23, 0x16u);
        sub_2259CB640(v24, &unk_27D73FC90, &unk_225CFA710);
        MEMORY[0x22AA6F950](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x22AA6F950](v26, -1, -1);
        MEMORY[0x22AA6F950](v23, -1, -1);

        (*(v15 + 8))(v19, v30);
      }

      else
      {

        (*(v15 + 8))(v19, v7);
      }

      v29 = v31;
      swift_willThrow();
      sub_2259BEF00(v29, v32);
    }

    else
    {
      sub_2259BEF00(v12, v14);
      *a3 = v34;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void SecCertificateRef.localizedRelyingPartyNames.getter(void *a1@<X8>)
{
  v2 = sub_225CCD954();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - v5;
  v6 = sub_225CCD564();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_225CCD6B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCE444();
  v12 = SecCertificateCopyExtensionValue();

  if (v12)
  {
    v29 = a1;
    v30 = v2;
    v13 = sub_225CCCFA4();
    v15 = v14;

    sub_2259CB710(v13, v15);
    sub_2259F4494(v13, v15);
    sub_225CCD744();
    v16 = v34;
    sub_225CCD764();
    if (v16)
    {

      sub_2259CB710(v13, v15);
      sub_2259F4494(v13, v15);
      sub_2259F4D04();
      sub_225CCD734();
      sub_2259BEF00(v13, v15);
      *v29 = v35;
    }

    else
    {
      v34 = 0;
      v17 = v15;
      (*(v8 + 8))(v10, v7);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v18 = off_28105B918;
      v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v20));
      v22 = v31;
      v21 = v32;
      v23 = v30;
      (*(v32 + 16))(v31, &v18[v19], v30);
      os_unfair_lock_unlock(&v18[v20]);
      v24 = sub_225CCD934();
      v25 = sub_225CCED04();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v29;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2259A7000, v24, v25, "Received ASN1Null for LocalizedRelyingPartyNames OID, returning nil", v28, 2u);
        MEMORY[0x22AA6F950](v28, -1, -1);

        sub_2259BEF00(v13, v17);
      }

      else
      {
        sub_2259BEF00(v13, v17);
      }

      (*(v21 + 8))(v22, v23);
      *v27 = 0;
    }
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t SecCertificateRef.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  SecCertificateNotValidAfter();
  if (v2 == 0.0)
  {
    v3 = 1;
  }

  else
  {
    sub_225CCCFF4();
    v3 = 0;
  }

  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t SecCertificateRef.validityPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_225CCD1E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCD284();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD0B4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  SecCertificateNotValidBefore();
  SecCertificateNotValidAfter();
  sub_225CCCFF4();
  sub_225CCCFF4();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9830], v1);
  sub_225CCD1F4();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
  v15 = sub_225CCD264();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225CD30F0;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277CC9968], v15);
  sub_2259F4D58(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  sub_225CCD214();

  (*(v22 + 8))(v7, v23);
  v19 = *(v9 + 8);
  v19(v12, v8);
  return (v19)(v14, v8);
}

uint64_t SecCertificateRef.serialNumber.getter()
{
  v1 = SecCertificateCopySerialNumberData(v0, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_225CCCFA4();

  return v3;
}

uint64_t sub_2259EEE38(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_225CCCFA4();

  return v4;
}

BOOL SecCertificateRef.hasBrandAssetsIdentifier.getter()
{
  v0 = sub_225CCE444();
  v1 = SecCertificateCopyExtensionValue();

  if (v1)
  {
    v2 = sub_225CCCFA4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xF000000000000000;
  }

  sub_2259B97A8(v2, v4);
  return v4 >> 60 != 15;
}

uint64_t SecCertificateRef.brandAssetsIdentifier.getter()
{
  v49 = sub_225CCD574();
  v45 = *(v49 - 8);
  v1 = MEMORY[0x28223BE20](v49);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v48 = &v40 - v3;
  v4 = sub_225CCD954();
  v50 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_225CCD564();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = sub_225CCD6B4();
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCE444();
  v17 = SecCertificateCopyExtensionValue();

  if (v17)
  {
    v41 = v9;
    v42 = v7;
    v43 = v4;
    v18 = sub_225CCCFA4();
    v20 = v19;

    sub_2259CB710(v18, v20);
    sub_2259F4494(v18, v20);
    sub_225CCD744();
    sub_225CCD764();
    if (v0)
    {

      sub_2259CB710(v18, v20);
      sub_2259F4494(v18, v20);
      v21 = v49;
      sub_225CCD744();
      v22 = v48;
      v23 = v21;
      sub_225CCD764();
      v36 = v44;
      v37 = v45;
      (*(v45 + 16))(v44, v22, v23);
      v38 = MEMORY[0x22AA6CDB0](v36);
      sub_2259BEF00(v18, v20);
      (*(v37 + 8))(v22, v23);
      return v38;
    }

    v24 = v18;
    v25 = v20;
    (*(v46 + 8))(v15, v13);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v26 = off_28105B918;
    v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v28));
    v29 = v50;
    v30 = &v26[v27];
    v31 = v41;
    v32 = v43;
    (*(v50 + 16))(v41, v30, v43);
    os_unfair_lock_unlock(&v26[v28]);
    v33 = sub_225CCD934();
    v34 = sub_225CCED04();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2259A7000, v33, v34, "Received ASN1Null for brandAssetsIdentifier OID, returning nil", v35, 2u);
      MEMORY[0x22AA6F950](v35, -1, -1);

      sub_2259BEF00(v24, v25);
    }

    else
    {
      sub_2259BEF00(v24, v25);
    }

    (*(v29 + 8))(v31, v32);
  }

  return 0;
}

uint64_t PublicKeyAlgorithm.algorithmIdentifier.getter()
{
  v1 = -7;
  v2 = -35;
  if (*v0 != 1)
  {
    v2 = -36;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

id static SecAccessControlRef.fromConstraintsData(_:)(uint64_t a1, uint64_t a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v112 = sub_225CCD954();
  v2 = *(v112 - 8);
  v3 = MEMORY[0x28223BE20](v112);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v104 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v104 - v12;
  v121 = 0;
  v14 = SecAccessControlCreate();
  v15 = v121;
  v111 = v14;
  if (v14)
  {
    if (!v121)
    {
      v16 = v14;
      v17 = v14;
      v18 = sub_225CCCF74();
      v19 = [objc_opt_self() recordFromData_];

      if (v19)
      {
        v20 = [v19 propertyList];

        if (v20)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            SecAccessControlSetConstraints();
            swift_unknownObjectRelease();
            return v16;
          }

          swift_unknownObjectRelease();
        }
      }

      v112 = 0x8000000225D16500;
      v110 = 0x8000000225D16920;
      v89 = MEMORY[0x277D84F90];
      v90 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v92 = v91;
      v93 = sub_225CCE954();
      v94 = *(v93 - 8);
      (*(v94 + 56))(v13, 1, 1, v93);
      LODWORD(v93) = (*(v94 + 48))(v13, 1, v93);
      sub_2259CB640(v13, &unk_27D73B050, &unk_225CD3AD0);
      if (v93)
      {
        v95 = 271;
      }

      else
      {
        v95 = 23;
      }

      v96 = sub_225B2C374(v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v96;
      sub_225B2C4A0(v90, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v115);

      v98 = v115;
      v99 = sub_225B29AA0(0, 1, 1, v89);
      v101 = *(v99 + 2);
      v100 = *(v99 + 3);
      if (v101 >= v100 >> 1)
      {
        v99 = sub_225B29AA0((v100 > 1), v101 + 1, 1, v99);
      }

      *(v99 + 2) = v101 + 1;
      v102 = &v99[56 * v101];
      *(v102 + 4) = 0xD00000000000002ELL;
      *(v102 + 5) = 0x8000000225D16970;
      *(v102 + 6) = 0xD000000000000021;
      *(v102 + 7) = v112;
      *(v102 + 8) = 0xD000000000000017;
      *(v102 + 9) = v110;
      *(v102 + 10) = 775;
      *v92 = v95;
      *(v92 + 8) = v99;
      *(v92 + 16) = 0xD00000000000002ELL;
      *(v92 + 24) = 0x8000000225D16970;
      *(v92 + 32) = v98;
      *(v92 + 40) = 0;
      swift_willThrow();

      return v111;
    }
  }

  else if (!v121)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v50 = off_28105B918;
    v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v52));
    v53 = v2;
    v54 = *(v2 + 16);
    v55 = v112;
    v54(v5, &v50[v51], v112);
    os_unfair_lock_unlock(&v50[v52]);
    v56 = sub_225CCD934();
    v57 = sub_225CCED04();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2259A7000, v56, v57, "Unable to create empty ACL.", v58, 2u);
      MEMORY[0x22AA6F950](v58, -1, -1);
    }

    (*(v53 + 8))(v5, v55);
    v112 = 0x8000000225D16500;
    v59 = MEMORY[0x277D84F90];
    v60 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v62 = v61;
    v63 = sub_225CCE954();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v13, 1, 1, v63);
    LODWORD(v63) = (*(v64 + 48))(v13, 1, v63);
    sub_2259CB640(v13, &unk_27D73B050, &unk_225CD3AD0);
    if (v63)
    {
      v65 = 272;
    }

    else
    {
      v65 = 23;
    }

    v66 = sub_225B2C374(v59);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v66;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, v67, &v115);

    v68 = v115;
    v69 = sub_225B29AA0(0, 1, 1, v59);
    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = sub_225B29AA0((v70 > 1), v71 + 1, 1, v69);
    }

    *(v69 + 2) = v71 + 1;
    v72 = &v69[56 * v71];
    *(v72 + 4) = 0xD00000000000002FLL;
    *(v72 + 5) = 0x8000000225D16940;
    *(v72 + 6) = 0xD000000000000021;
    *(v72 + 7) = v112;
    *(v72 + 8) = 0xD000000000000017;
    *(v72 + 9) = 0x8000000225D16920;
    *(v72 + 10) = 762;
    *v62 = v65;
    *(v62 + 8) = v69;
    *(v62 + 16) = 0xD00000000000002FLL;
    *(v62 + 24) = 0x8000000225D16940;
    *(v62 + 32) = v68;
    *(v62 + 40) = 0;
    swift_willThrow();
    return v111;
  }

  v107 = v11;
  type metadata accessor for CFError(0);
  sub_2259F4764(&qword_281059B10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
  v21 = swift_allocError();
  *v22 = v15;
  v23 = v21;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  (*(v2 + 16))(v7, &v24[v25], v112);
  os_unfair_lock_unlock(&v24[v26]);
  v27 = v21;
  v28 = sub_225CCD934();
  v29 = sub_225CCED04();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v115 = v31;
    *v30 = 136315138;
    swift_getErrorValue();
    v32 = sub_225CCFB24();
    v34 = sub_2259BE198(v32, v33, &v115);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2259A7000, v28, v29, "Unable to create empty ACL due to error: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA6F950](v31, -1, -1);
    MEMORY[0x22AA6F950](v30, -1, -1);
  }

  (*(v2 + 8))(v7, v112);
  v109 = " certificate from DER data";
  v108 = "Unable to create empty ACL";
  v35 = v21;
  v36 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v112 = swift_allocError();
  v38 = v37;
  swift_getErrorValue();
  v39 = v114;
  v40 = v21;
  sub_225B21FAC(v39, &v115);

  v41 = v116;
  v110 = 0x8000000225D16900;
  if (v116)
  {
    v107 = v115;
    v106 = v117;
    v105 = v118;
    v42 = v119;
    v43 = v120;
  }

  else
  {
    v115 = v21;
    v44 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v45 = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v47 = [v45 code];
      v48 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v48;
      *(inited + 40) = v47;
      v42 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v49 = v21;
      v106 = 0;
      v105 = 0;
      v41 = MEMORY[0x277D84F90];
      v107 = 272;
    }

    else
    {
      v115 = v21;
      v73 = v21;
      v74 = sub_225CCE954();
      v75 = v107;
      v76 = swift_dynamicCast();
      v77 = *(v74 - 8);
      (*(v77 + 56))(v75, v76 ^ 1u, 1, v74);
      LODWORD(v77) = (*(v77 + 48))(v75, 1, v74);
      sub_2259CB640(v75, &unk_27D73B050, &unk_225CD3AD0);
      if (v77)
      {
        v78 = 272;
      }

      else
      {
        v78 = 23;
      }

      v107 = v78;
      v41 = MEMORY[0x277D84F90];
      v42 = sub_225B2C374(MEMORY[0x277D84F90]);
      v79 = v21;
      v106 = 0xD00000000000001ALL;
      v105 = 0x8000000225D16900;
    }

    v43 = v21;
  }

  v80 = v109 | 0x8000000000000000;
  v81 = v108 | 0x8000000000000000;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v42;
  sub_225B2C4A0(v36, sub_225B2AC40, 0, v82, &v115);

  v83 = v115;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_225B29AA0(0, *(v41 + 2) + 1, 1, v41);
  }

  v85 = *(v41 + 2);
  v84 = *(v41 + 3);
  if (v85 >= v84 >> 1)
  {
    v41 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v41);
  }

  *(v41 + 2) = v85 + 1;
  v86 = &v41[56 * v85];
  v87 = v110;
  *(v86 + 4) = 0xD00000000000001ALL;
  *(v86 + 5) = v87;
  *(v86 + 6) = 0xD000000000000021;
  *(v86 + 7) = v80;
  *(v86 + 8) = 0xD000000000000017;
  *(v86 + 9) = v81;
  *(v86 + 10) = 768;
  *v38 = v107;
  v88 = v106;
  *(v38 + 8) = v41;
  *(v38 + 16) = v88;
  *(v38 + 24) = v105;
  *(v38 + 32) = v83;
  *(v38 + 40) = v43;
  swift_willThrow();

  v16 = v111;
  return v16;
}

void *SecAccessControlRef.data.getter()
{
  result = SecAccessControlCopyData();
  if (result)
  {
    v1 = result;
    v2 = sub_225CCCFA4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SecAccessControlRef.constraintsData.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(MEMORY[0x277CC55F8]) initWithPropertyList_];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 data];

      v5 = sub_225CCCFA4();
    }

    else
    {

      return 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SecAccessControlRef.constraintsDescription.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
    sub_2259F5C28();
    v2 = v1;
    sub_225CCE2D4();

    v3 = sub_225CCE2E4();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2259F0754(uint64_t a1, uint64_t a2)
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v3 = result;
    sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
    sub_2259F5C28();
    v4 = v3;
    v5 = sub_225CCE2D4();

    sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
    v6 = sub_225CCEF94();
    v7 = v6;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_225CCF4F4();

      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!*(v5 + 16) || (sub_2259F1B5C(v6), (v9 & 1) == 0))
      {

        goto LABEL_15;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10 && (v11 = v10, v12 = sub_225CCEF94(), v13 = [v11 objectForKeyedSubscript_], v12, v13))
    {
      sub_225CCF0A4();
      swift_unknownObjectRelease();
      sub_2259B9624(v17, v18);
      sub_2259CB810(v18, v17);
      if (swift_dynamicCast())
      {
        v14 = sub_225CCE444();
        v15 = sub_225CCEF64();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v18);
        return (v15 & 1);
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_15:
    v15 = 0;
    return (v15 & 1);
  }

  __break(1u);
  return result;
}

uint64_t SecAccessControlRef.isBiometricAuth.getter()
{
  Constraints = SecAccessControlGetConstraints();
  if (Constraints)
  {
    v1 = Constraints;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v1 = v1;
      sub_225CCE2C4();
    }
  }

  return 0;
}

id SecAccessControlRef.hasCBTNConstraint.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
    sub_2259F5C28();
    v2 = v1;
    v3 = sub_225CCE2D4();

    sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
    v4 = sub_225CCEF94();
    v5 = v4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_225CCF4F4();

      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (!*(v3 + 16) || (sub_2259F1B5C(v4), (v7 & 1) == 0))
      {

        return 0;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = sub_225CCEF94();
      v11 = [v9 objectForKeyedSubscript_];

      if (v11)
      {
        sub_225CCF0A4();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16[0] = v14;
      v16[1] = v15;
      if (!*(&v15 + 1))
      {
        swift_unknownObjectRelease();
        sub_2259CB640(v16, &qword_27D73DD90, &unk_225CD4950);
        return 0;
      }

      sub_2259D8718(0, &qword_281059A70, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v12 = [v13 BOOLValue];
        swift_unknownObjectRelease();

        return v12;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

void *SecAccessControlRef.osgnParentKey.getter()
{
  result = SecAccessControlGetConstraints();
  if (result)
  {
    v1 = result;
    sub_2259D8718(0, &qword_281059A68, 0x277D82BB8);
    sub_2259F5C28();
    v2 = v1;
    v3 = sub_225CCE2D4();

    sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
    v4 = sub_225CCEF94();
    v5 = v4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_225CCF4F4();

      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (!*(v3 + 16) || (sub_2259F1B5C(v4), (v7 & 1) == 0))
      {

        return 0;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = sub_225CCEF94();
      v11 = [v9 objectForKeyedSubscript_];

      if (v11)
      {
        sub_225CCF0A4();
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      v17[0] = v15;
      v17[1] = v16;
      if (!*(&v16 + 1))
      {
        swift_unknownObjectRelease();
        sub_2259CB640(v17, &qword_27D73DD90, &unk_225CD4950);
        return 0;
      }

      sub_2259D8718(0, &qword_27D73DD80, 0x277CBEA90);
      if (swift_dynamicCast())
      {
        v12 = v14;
        v13 = sub_225CCCFA4();
        swift_unknownObjectRelease();

        return v13;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

BOOL SecAccessControlRef.isOSGNChild.getter()
{
  v0 = SecAccessControlRef.osgnParentKey.getter();
  v2 = v1 >> 60;
  if (v1 >> 60 != 15)
  {
    sub_2259B97A8(v0, v1);
  }

  return v2 < 0xF;
}

uint64_t SecTrustRef.certificateChain.getter()
{
  v1 = SecTrustCopyCertificateChain(v0);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_225CCE804();
    }
  }

  return v2;
}

SecCertificateRef_optional __swiftcall SecTrustRef.getLeafCertificate()()
{
  result.value = SecTrustCopyCertificateChain(v0);
  if (result.value)
  {
    value = result.value;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_225CCE804();
    }

    return 0;
  }

  return result;
}

SecTrustRef static SecTrustRef.newFromUnverifiedCertificate(_:)(const void *a1)
{
  trust[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  trust[0] = 0;
  v5 = SecTrustCreateWithCertificates(a1, 0, trust);
  v6 = trust[0];
  if (v5 || !trust[0])
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D169B0);
    v7 = SecCopyErrorMessageString(v5, 0);
    if (v7)
    {
      v8 = v7;
      v9 = sub_225CCE474();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v39 = v9;
    v40 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130, &qword_225CEFF10);
    sub_225CCF434();

    v12 = v38;
    v36 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v14 = inited + 32;
    v15 = MEMORY[0x277D849A8];
    *(inited + 16) = xmmword_225CD30F0;
    v16 = MEMORY[0x277D84A08];
    *(inited + 64) = v15;
    *(inited + 72) = v16;
    *(inited + 40) = v5;
    v17 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v14, &qword_27D73B060, &unk_225CD3AE0);
    v34 = 0x8000000225D169F0;
    v35 = 0x8000000225D16500;
    sub_2259CB5EC();
    swift_allocError();
    v19 = v18;
    v20 = sub_225CCE954();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v4, 1, 1, v20);
    LODWORD(v20) = (*(v21 + 48))(v4, 1, v20);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    if (v20)
    {
      v22 = 155;
    }

    else
    {
      v22 = 23;
    }

    v23 = MEMORY[0x277D84F90];
    v24 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

    v26 = v37;
    v27 = sub_225B29AA0(0, 1, 1, v23);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[56 * v29];
    v31 = v36;
    *(v30 + 4) = v36;
    *(v30 + 5) = v12;
    *(v30 + 6) = 0xD000000000000021;
    *(v30 + 7) = v35;
    *(v30 + 8) = 0xD000000000000020;
    *(v30 + 9) = v34;
    *(v30 + 10) = 929;
    *v19 = v22;
    *(v19 + 8) = v27;
    *(v19 + 16) = v31;
    *(v19 + 24) = v12;
    *(v19 + 32) = v26;
    *(v19 + 40) = 0;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_2259F17E8()
{
  v1 = *v0;
  v6 = sub_2259D8490(&unk_2838FBDE8);
  v7 = v2;
  v3 = v1;
  v4 = sub_2259F4908(&v6, v3);

  sub_2259BEF00(v6, v7);
  return v4;
}

unint64_t sub_2259F193C(uint64_t a1)
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  v2 = sub_225CCFC24();

  return sub_2259F2234(a1, v2);
}

unint64_t sub_2259F19CC(uint64_t a1)
{
  v1 = a1;
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  v2 = sub_225CCFC24();

  return sub_2259F2354(v1, v2);
}

unint64_t sub_2259F1AA8(uint64_t a1)
{
  sub_225CCFBD4();
  type metadata accessor for CFString(0);
  sub_2259F4764(&qword_27D73AEA0, type metadata accessor for CFString, &unk_225CD3A60);
  sub_225CCD504();
  v2 = sub_225CCFC24();

  return sub_2259F2B8C(a1, v2);
}

unint64_t sub_2259F1BAC(uint64_t a1)
{
  v1 = a1;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  v2 = sub_225CCFC24();

  return sub_2259F2D64(v1, v2);
}

unint64_t sub_2259F1C18(uint64_t a1)
{
  v2 = sub_225CCF174();

  return sub_2259F2DD4(a1, v2);
}

unint64_t sub_2259F1C5C(uint64_t a1)
{
  sub_225CCF454();
  v2 = sub_225CCE344();

  return sub_2259F2E9C(a1, v2);
}

unint64_t sub_2259F1D10(char a1)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1 & 1);
  v2 = sub_225CCFC24();

  return sub_2259F3034(a1 & 1, v2);
}

uint64_t sub_2259F1DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_225CCFBD4();
  a3(v10, a1, a2);
  v7 = sub_225CCFC24();

  return a4(a1, a2, v7);
}

unint64_t sub_2259F1E8C(uint64_t a1)
{
  v1 = a1;
  sub_225CCFBD4();
  sub_225B7B604(v1);
  sub_225CCE5B4();

  v2 = sub_225CCFC24();

  return sub_2259F3510(v1, v2);
}

unint64_t sub_2259F1F14(uint64_t a1, uint64_t a2)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1);
  MEMORY[0x22AA6E420](a2);
  v4 = sub_225CCFC24();

  return sub_2259F3B38(a1, a2, v4);
}

unint64_t sub_2259F1F94(uint64_t a1)
{
  sub_225CCE474();
  sub_225CCFBD4();
  sub_225CCE5B4();
  v2 = sub_225CCFC24();

  return sub_2259F3BB0(a1, v2);
}

unint64_t sub_2259F2024(uint64_t *a1)
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  sub_225CCD124();
  sub_2259F4764(&qword_27D73FDF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_225CCE354();
  v2 = sub_225CCFC24();

  return sub_2259F3CB4(a1, v2);
}

unint64_t sub_2259F20F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v8[9] = a1;
  v8[10] = a2;
  v9 = a3;
  sub_225CCFBD4();
  IQACode.hash(into:)(v8);
  v6 = sub_225CCFC24();

  return sub_2259F3E34(a1, a2, v3, v6);
}

unint64_t sub_2259F217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_225CCF934())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2259F2234(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = DIPError.PropertyKey.rawValue.getter();
      v9 = v8;
      if (v7 == DIPError.PropertyKey.rawValue.getter() && v9 == v10)
      {
        break;
      }

      v12 = sub_225CCF934();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_2259F2354(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00004449776F6CLL;
      v8 = 0x666B726F576F6E69;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x69766F72506F6E69;
          v7 = 0xED00004449726564;
          break;
        case 2:
          v8 = 0x6C666B726F577073;
          v7 = 0xEC0000004449776FLL;
          break;
        case 3:
          v8 = 0x6469766F72507073;
          v7 = 0xEC00000044497265;
          break;
        case 4:
          v8 = 0x7475626972747461;
          v7 = 0xEB00000000444965;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C380;
          break;
        case 6:
          v8 = 0x5255726576726573;
          v7 = 0xE90000000000004CLL;
          break;
        case 7:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C3A0;
          break;
        case 8:
          v8 = 0xD000000000000013;
          v7 = 0x8000000225D0C3C0;
          break;
        case 9:
          v8 = 0x4974736575716572;
          v7 = 0xE900000000000044;
          break;
        case 0xA:
          v8 = 0x61737265766E6F63;
          v7 = 0xEE0044496E6F6974;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C3F0;
          break;
        case 0xC:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C410;
          break;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x8000000225D0C430;
          break;
        case 0xE:
          v8 = 0x63655264756F6C63;
          v7 = 0xEF656E6F5A64726FLL;
          break;
        case 0xF:
          v8 = 0x6552656369766564;
          v7 = 0xEC0000006E6F6967;
          break;
        case 0x10:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C470;
          break;
        case 0x11:
          v8 = 0x6761735574726563;
          v7 = 0xE900000000000065;
          break;
        case 0x12:
          v8 = 0x6573616261746164;
          v7 = 0xEE006E6D756C6F43;
          break;
        case 0x13:
          v8 = 0x74737973656C6966;
          v7 = 0xEE00687461506D65;
          break;
        case 0x14:
          v8 = 0x69796C7265646E75;
          v7 = 0xEF6F6E727245676ELL;
          break;
        case 0x15:
          v8 = 0x636E456567616D69;
          v7 = 0xED0000676E69646FLL;
          break;
        case 0x16:
          v7 = 0xE400000000000000;
          v8 = 1701273968;
          break;
        case 0x17:
          v8 = 0x636E75614C6F6E69;
          v7 = 0xED00007265695468;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = 0x746E756F43797274;
          break;
        case 0x19:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C4F0;
          break;
        case 0x1A:
          v8 = 0xD000000000000016;
          v7 = 0x8000000225D0C510;
          break;
        default:
          break;
      }

      v9 = 0x666B726F576F6E69;
      v10 = 0xED00004449776F6CLL;
      switch(a1)
      {
        case 1:
          v11 = 0x69766F72506F6E69;
          v12 = 0x4449726564;
          goto LABEL_63;
        case 2:
          v10 = 0xEC0000004449776FLL;
          if (v8 != 0x6C666B726F577073)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 3:
          v13 = 0x6469766F72507073;
          v14 = 1145664101;
          goto LABEL_52;
        case 4:
          v10 = 0xEB00000000444965;
          if (v8 != 0x7475626972747461)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 5:
          v10 = 0x8000000225D0C380;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 6:
          v10 = 0xE90000000000004CLL;
          if (v8 != 0x5255726576726573)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 7:
          v10 = 0x8000000225D0C3A0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 8:
          v10 = 0x8000000225D0C3C0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 9:
          v10 = 0xE900000000000044;
          if (v8 != 0x4974736575716572)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 10:
          v15 = 0x61737265766E6F63;
          v16 = 0x44496E6F6974;
          goto LABEL_76;
        case 11:
          v10 = 0x8000000225D0C3F0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 12:
          v10 = 0x8000000225D0C410;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 13:
          v10 = 0x8000000225D0C430;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 14:
          v10 = 0xEF656E6F5A64726FLL;
          if (v8 != 0x63655264756F6C63)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 15:
          v13 = 0x6552656369766564;
          v14 = 1852795239;
LABEL_52:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v13)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 16:
          v10 = 0x8000000225D0C470;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 17:
          v10 = 0xE900000000000065;
          if (v8 != 0x6761735574726563)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 18:
          v15 = 0x6573616261746164;
          v16 = 0x6E6D756C6F43;
          goto LABEL_76;
        case 19:
          v15 = 0x74737973656C6966;
          v16 = 0x687461506D65;
LABEL_76:
          v10 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v15)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 20:
          v10 = 0xEF6F6E727245676ELL;
          if (v8 != 0x69796C7265646E75)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 21:
          v11 = 0x636E456567616D69;
          v12 = 0x676E69646FLL;
LABEL_63:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v11)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 22:
          v10 = 0xE400000000000000;
          if (v8 != 1701273968)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 23:
          v9 = 0x636E75614C6F6E69;
          v10 = 0xED00007265695468;
          goto LABEL_79;
        case 24:
          v10 = 0xE800000000000000;
          if (v8 != 0x746E756F43797274)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 25:
          v10 = 0x8000000225D0C4F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        case 26:
          v10 = 0x8000000225D0C510;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        default:
LABEL_79:
          if (v8 != v9)
          {
            goto LABEL_81;
          }

LABEL_80:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_81:
          v17 = sub_225CCF934();

          if (v17)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2259F2B8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2259F4764(&qword_27D73AEA0, type metadata accessor for CFString, &unk_225CD3A60);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_225CCD4F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2259F2C98(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2259D8718(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_225CCEF64();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2259F2D64(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F2DD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2259F6078(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA6D9C0](v9, a1);
      sub_2259F60D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2259F2E9C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_225CCF454();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_225CCE3C4();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2259F3034(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F30A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_2259CB710(v17, v16);
          sub_225ABC240(v45, v9, v8, &v44);
          sub_2259BEF00(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_2259CB710(v17, v16);
        v31 = sub_225CCCA44();
        if (v31)
        {
          v33 = sub_225CCCA74();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_2259CB710(v17, v16);
        v31 = sub_225CCCA44();
        if (v31)
        {
          v32 = sub_225CCCA74();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_225CCCA64();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_225ABC240(v34, a1, a2, v45);
        sub_2259BEF00(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_2259CB710(v17, v16);
      sub_225ABC240(v45, v9, v8, &v44);
      sub_2259BEF00(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_2259F34A4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F3510(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000007373;
      v8 = 0x656E697272756C62;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x426563616C70616CLL;
          v7 = 0xEB0000000072756CLL;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x657275736F707865;
          break;
        case 3:
          v8 = 0x7473694464726163;
          v9 = 0x6E6F6974726FLL;
          goto LABEL_25;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C6A0;
          break;
        case 5:
          v8 = 0xD000000000000011;
          v7 = 0x8000000225D0C6C0;
          break;
        case 6:
          v8 = 0x6374695064616568;
          v7 = 0xE900000000000068;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x6C6C6F5264616568;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x77615964616568;
          break;
        case 9:
          v8 = 0x666E6F4365636166;
          v9 = 0x65636E656469;
          goto LABEL_25;
        case 0xA:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C700;
          break;
        case 0xB:
          v8 = 0xD000000000000011;
          v7 = 0x8000000225D0C720;
          break;
        case 0xC:
          v8 = 0xD000000000000014;
          v7 = 0x8000000225D0C740;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C760;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C780;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x8000000225D0C7A0;
          break;
        case 0x10:
          v8 = 0x5465727574706163;
          v7 = 0xEB00000000656D69;
          break;
        case 0x11:
          v8 = 0xD000000000000012;
          v7 = 0x8000000225D0C7D0;
          break;
        case 0x12:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C7F0;
          break;
        case 0x13:
          v8 = 0x6556746567726174;
          v9 = 0x736563697472;
LABEL_25:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0x14:
          v8 = 0xD000000000000010;
          v7 = 0x8000000225D0C810;
          break;
        case 0x15:
          v8 = 0x746E656D75636F64;
          v7 = 0xEC00000077656B53;
          break;
        default:
          break;
      }

      v10 = 0x656E697272756C62;
      v11 = 0xEA00000000007373;
      switch(a1)
      {
        case 1:
          v12 = 0x426563616C70616CLL;
          v13 = 7501164;
          goto LABEL_29;
        case 2:
          v11 = 0xE800000000000000;
          if (v8 != 0x657275736F707865)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 3:
          v14 = 0x7473694464726163;
          v15 = 0x6E6F6974726FLL;
          goto LABEL_70;
        case 4:
          v11 = 0x8000000225D0C6A0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 5:
          v11 = 0x8000000225D0C6C0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 6:
          v11 = 0xE900000000000068;
          if (v8 != 0x6374695064616568)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 7:
          v11 = 0xE800000000000000;
          if (v8 != 0x6C6C6F5264616568)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 8:
          v11 = 0xE700000000000000;
          v10 = 0x77615964616568;
          goto LABEL_64;
        case 9:
          v14 = 0x666E6F4365636166;
          v15 = 0x65636E656469;
          goto LABEL_70;
        case 10:
          v11 = 0x8000000225D0C700;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 11:
          v11 = 0x8000000225D0C720;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 12:
          v11 = 0x8000000225D0C740;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 13:
          v11 = 0x8000000225D0C760;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 14:
          v11 = 0x8000000225D0C780;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 15:
          v11 = 0x8000000225D0C7A0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 16:
          v12 = 0x5465727574706163;
          v13 = 6647145;
LABEL_29:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v12)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 17:
          v11 = 0x8000000225D0C7D0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 18:
          v11 = 0x8000000225D0C7F0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 19:
          v14 = 0x6556746567726174;
          v15 = 0x736563697472;
LABEL_70:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v14)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 20:
          v11 = 0x8000000225D0C810;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        case 21:
          v11 = 0xEC00000077656B53;
          if (v8 != 0x746E656D75636F64)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        default:
LABEL_64:
          if (v8 != v10)
          {
            goto LABEL_66;
          }

LABEL_65:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_66:
          v16 = sub_225CCF934();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2259F3B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2259F3BB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_225CCE474();
      v8 = v7;
      if (v6 == sub_225CCE474() && v8 == v9)
      {
        break;
      }

      v11 = sub_225CCF934();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2259F3CB4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      sub_2259F6158(*(v2 + 48) + v14 * v10, v8);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (sub_225CCF934()) && (sub_225CCD0E4())
      {
        break;
      }

      sub_2259F61BC(v8);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_2259F61BC(v8);
  }

  return v10;
}

unint64_t sub_2259F3E34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3;
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v12 = *v8;
      v13 = v9;
      v14 = *(v8 + 16);
      sub_2259F6128(v12, v9, v14);
      v10 = _s13CoreIDVShared7IQACodeO2eeoiySbAC_ACtFZ_0(&v12, v15);
      sub_2259F6140(v12, v13, v14);
      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unsigned __int8 *sub_2259F3F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_225CCE6F4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_225C158C0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_225CCF354();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void *sub_2259F4494(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCCFE4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_2259BEF00(a1, a2);
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
      v13 = sub_225C0060C(v10, 0);
      v14 = sub_225CCCEF4();
      sub_2259BEF00(a1, a2);
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

uint64_t sub_2259F4610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF28, &unk_225CD4B88);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 2 * v4);
      sub_225CCFBD4();
      v11 = qword_225CD4B98[v10];
      MEMORY[0x22AA6E420](v11);
      result = sub_225CCFC24();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = *(v5 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        while (qword_225CD4B98[*(*(v3 + 48) + 2 * v14)] != v11)
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 2 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2259F4764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2259F47AC(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

unint64_t sub_2259F4808()
{
  result = qword_27D73AEA8;
  if (!qword_27D73AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEA8);
  }

  return result;
}

void sub_2259F485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_225CCCA44())
  {
    if (__OFSUB__(a1, sub_225CCCA74()))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_225CCCA64();
      sub_2259EDE40(&v6);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2259F4908(uint64_t *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = a2;
      sub_2259BEF00(v5, v4);
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      HIBYTE(v21) = BYTE3(v4);
      LOBYTE(v22) = BYTE4(v4);
      HIBYTE(v22) = BYTE5(v4);
      v23 = BYTE6(v4);
      sub_2259EDE40(&v24);
      if (v2)
      {
        v4 = v5;
      }

      else
      {
        v4 = v24;
      }

      *a1 = v5;
      a1[1] = v21 | ((v22 | (v23 << 16)) << 32);
      return v4;
    }

    v13 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = a2;
    sub_2259CB710(v5, v4);
    sub_2259BEF00(v5, v4);
    *a1 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    v15 = v5 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v5)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (sub_225CCCA44() && __OFSUB__(v5, sub_225CCCA74()))
      {
LABEL_27:
        __break(1u);
      }

      sub_225CCCA94();
      swift_allocObject();
      v16 = sub_225CCCA24();

      v13 = v16;
    }

    if (v15 >= v5)
    {
      v17 = v14;

      sub_2259F485C(v5, v5 >> 32, v13, v17);
      v4 = v18;

      v19 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v5;
        a1[1] = v19;
      }

      else
      {
        *a1 = v5;
        a1[1] = v19;
      }

      return v4;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v6 == 2)
  {
    v8 = a2;
    sub_2259CB710(v5, v4);
    sub_2259BEF00(v5, v4);
    v24 = v5;
    v25 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    sub_225CCCEB4();
    v9 = v25;
    v4 = *(v24 + 16);
    v10 = *(v24 + 24);
    v11 = v8;
    sub_2259F485C(v4, v10, v25, v11);
    if (!v2)
    {
      v4 = v12;
    }

    *a1 = v24;
    a1[1] = v9 | 0x8000000000000000;
  }

  else
  {
    sub_2259EDE40(&v24);
    if (!v2)
    {
      return v24;
    }
  }

  return v4;
}

unint64_t sub_2259F4D04()
{
  result = qword_27D73AEB0;
  if (!qword_27D73AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEB0);
  }

  return result;
}

uint64_t sub_2259F4D58(uint64_t a1)
{
  v2 = sub_225CCD264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE8, &qword_225CD4B58);
    v9 = sub_225CCF1D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2259F4764(&qword_27D73AEF0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_225CCE344();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2259F4764(&qword_27D73AEF8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_225CCE3C4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_2259F5078(uint64_t a1, uint64_t a2)
{
  v104 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v90 = &v88 - v6;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v88 - v12;
  v103 = 0;
  v14 = sub_225CCCF74();
  v15 = SecAccessControlCreateFromData();

  v16 = v103;
  if (v15)
  {
    if (!v103)
    {
      return v15;
    }

    goto LABEL_5;
  }

  if (v103)
  {
LABEL_5:
    type metadata accessor for CFError(0);
    sub_2259F4764(&qword_281059B10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v17 = swift_allocError();
    *v18 = v16;
    v19 = v17;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v20 = off_28105B918;
    v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v22));
    (*(v8 + 16))(v13, &v20[v21], v7);
    os_unfair_lock_unlock(&v20[v22]);
    v23 = v17;
    v24 = sub_225CCD934();
    v25 = v7;
    v26 = sub_225CCED04();

    v27 = os_log_type_enabled(v24, v26);
    v94 = v15;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v93 = v25;
      v30 = v29;
      v97 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v31 = sub_225CCFB24();
      v33 = sub_2259BE198(v31, v32, &v97);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2259A7000, v24, v26, "Unable to deserialize ACL due to error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA6F950](v30, -1, -1);
      MEMORY[0x22AA6F950](v28, -1, -1);

      (*(v8 + 8))(v13, v93);
    }

    else
    {

      (*(v8 + 8))(v13, v25);
    }

    v34 = 0x8000000225D16A50;
    v91 = " certificate from DER data";
    v35 = v17;
    v36 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v93 = swift_allocError();
    v38 = v37;
    swift_getErrorValue();
    v39 = v96;
    v40 = v17;
    sub_225B21FAC(v39, &v97);

    v41 = v98;
    v92 = 0x8000000225D16A50;
    if (v98)
    {
      v90 = v97;
      v34 = v100;
      v89 = v99;
      v42 = v101;
      v43 = v102;
    }

    else
    {
      v97 = v17;
      v44 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v45 = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v47 = [v45 code];
        v48 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v48;
        *(inited + 40) = v47;
        v42 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v49 = v17;
        v89 = 0;
        v34 = 0;
        v41 = MEMORY[0x277D84F90];
        v50 = 270;
        v51 = &v104;
      }

      else
      {
        v97 = v17;
        v72 = v17;
        v73 = sub_225CCE954();
        v74 = v90;
        v75 = swift_dynamicCast();
        v76 = *(v73 - 8);
        (*(v76 + 56))(v74, v75 ^ 1u, 1, v73);
        LODWORD(v76) = (*(v76 + 48))(v74, 1, v73);
        sub_2259CB640(v74, &unk_27D73B050, &unk_225CD3AD0);
        if (v76)
        {
          v77 = 270;
        }

        else
        {
          v77 = 23;
        }

        v90 = v77;
        v41 = MEMORY[0x277D84F90];
        v42 = sub_225B2C374(MEMORY[0x277D84F90]);
        v78 = v17;
        v50 = 0xD000000000000019;
        v51 = &v103;
      }

      *(v51 - 32) = v50;
      v43 = v17;
    }

    v79 = v91 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v42;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v97);

    v81 = v97;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_225B29AA0(0, *(v41 + 2) + 1, 1, v41);
    }

    v83 = *(v41 + 2);
    v82 = *(v41 + 3);
    if (v83 >= v82 >> 1)
    {
      v41 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v41);
    }

    *(v41 + 2) = v83 + 1;
    v84 = &v41[56 * v83];
    v85 = v92;
    *(v84 + 4) = 0xD000000000000019;
    *(v84 + 5) = v85;
    *(v84 + 6) = 0xD000000000000021;
    *(v84 + 7) = v79;
    strcpy(v84 + 64, "fromData(_:)");
    v84[77] = 0;
    *(v84 + 39) = -5120;
    *(v84 + 10) = 747;
    *v38 = v90;
    v86 = v89;
    *(v38 + 8) = v41;
    *(v38 + 16) = v86;
    *(v38 + 24) = v34;
    *(v38 + 32) = v81;
    *(v38 + 40) = v43;
    swift_willThrow();

    v15 = v94;
    return v15;
  }

  v94 = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v52 = off_28105B918;
  v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v54));
  (*(v8 + 16))(v11, &v52[v53], v7);
  os_unfair_lock_unlock(&v52[v54]);
  v55 = sub_225CCD934();
  v56 = sub_225CCED04();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_2259A7000, v55, v56, "Unable to deserialize ACL.", v57, 2u);
    MEMORY[0x22AA6F950](v57, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v58 = MEMORY[0x277D84F90];
  v59 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v61 = v60;
  v62 = sub_225CCE954();
  v63 = *(v62 - 8);
  (*(v63 + 56))(v5, 1, 1, v62);
  LODWORD(v62) = (*(v63 + 48))(v5, 1, v62);
  sub_2259CB640(v5, &unk_27D73B050, &unk_225CD3AD0);
  if (v62)
  {
    v64 = 270;
  }

  else
  {
    v64 = 23;
  }

  v65 = sub_225B2C374(v58);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v97 = v65;
  sub_225B2C4A0(v59, sub_225B2AC40, 0, v66, &v97);

  v67 = v97;
  v68 = sub_225B29AA0(0, 1, 1, v58);
  v70 = *(v68 + 2);
  v69 = *(v68 + 3);
  if (v70 >= v69 >> 1)
  {
    v68 = sub_225B29AA0((v69 > 1), v70 + 1, 1, v68);
  }

  *(v68 + 2) = v70 + 1;
  v71 = &v68[56 * v70];
  *(v71 + 4) = 0xD00000000000002FLL;
  *(v71 + 5) = 0x8000000225D16940;
  *(v71 + 6) = 0xD000000000000021;
  *(v71 + 7) = 0x8000000225D16500;
  strcpy(v71 + 64, "fromData(_:)");
  v71[77] = 0;
  *(v71 + 39) = -5120;
  *(v71 + 10) = 741;
  *v61 = v64;
  *(v61 + 8) = v68;
  *(v61 + 16) = 0xD00000000000002FLL;
  *(v61 + 24) = 0x8000000225D16940;
  *(v61 + 32) = v67;
  *(v61 + 40) = 0;
  swift_willThrow();
  return v94;
}

unint64_t sub_2259F5C28()
{
  result = qword_27D73AEC0;
  if (!qword_27D73AEC0)
  {
    sub_2259D8718(255, &qword_281059A68, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEC0);
  }

  return result;
}

unint64_t sub_2259F5C94()
{
  result = qword_27D73AEC8;
  if (!qword_27D73AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AEC8);
  }

  return result;
}

unint64_t sub_2259F5CEC()
{
  result = qword_27D73AED0;
  if (!qword_27D73AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AED0);
  }

  return result;
}

uint64_t _s8KeyClassOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8KeyClassOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PublicKeyAlgorithm(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PublicKeyAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2259F6128(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2259F6140(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2259F6158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2259F61BC(uint64_t a1)
{
  v2 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2259F6218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF20, &qword_225CD4B80);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v28 = a1 + 32;
    v27 = v1;
    while (1)
    {
      v6 = *(v28 + v4);
      sub_225CCFBD4();
      DIPError.PropertyKey.rawValue.getter();
      sub_225CCE5B4();

      result = sub_225CCFC24();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xED00004449776F6CLL;
          v14 = 0x666B726F576F6E69;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v14 = 0x69766F72506F6E69;
              v13 = 0xED00004449726564;
              break;
            case 2:
              v13 = 0xEC0000004449776FLL;
              v14 = 0x6C666B726F577073;
              break;
            case 3:
              v14 = 0x6469766F72507073;
              v13 = 0xEC00000044497265;
              break;
            case 4:
              v14 = 0x7475626972747461;
              v13 = 0xEB00000000444965;
              break;
            case 5:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C380;
              break;
            case 6:
              v13 = 0xE90000000000004CLL;
              v14 = 0x5255726576726573;
              break;
            case 7:
              v14 = 0xD000000000000010;
              v13 = 0x8000000225D0C3A0;
              break;
            case 8:
              v14 = 0xD000000000000013;
              v13 = 0x8000000225D0C3C0;
              break;
            case 9:
              v14 = 0x4974736575716572;
              v13 = 0xE900000000000044;
              break;
            case 0xA:
              v14 = 0x61737265766E6F63;
              v13 = 0xEE0044496E6F6974;
              break;
            case 0xB:
              v14 = 0xD000000000000010;
              v13 = 0x8000000225D0C3F0;
              break;
            case 0xC:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C410;
              break;
            case 0xD:
              v14 = 0xD000000000000013;
              v13 = 0x8000000225D0C430;
              break;
            case 0xE:
              v14 = 0x63655264756F6C63;
              v13 = 0xEF656E6F5A64726FLL;
              break;
            case 0xF:
              v14 = 0x6552656369766564;
              v13 = 0xEC0000006E6F6967;
              break;
            case 0x10:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C470;
              break;
            case 0x11:
              v13 = 0xE900000000000065;
              v14 = 0x6761735574726563;
              break;
            case 0x12:
              v14 = 0x6573616261746164;
              v13 = 0xEE006E6D756C6F43;
              break;
            case 0x13:
              v14 = 0x74737973656C6966;
              v13 = 0xEE00687461506D65;
              break;
            case 0x14:
              v14 = 0x69796C7265646E75;
              v13 = 0xEF6F6E727245676ELL;
              break;
            case 0x15:
              v14 = 0x636E456567616D69;
              v13 = 0xED0000676E69646FLL;
              break;
            case 0x16:
              v13 = 0xE400000000000000;
              v14 = 1701273968;
              break;
            case 0x17:
              v14 = 0x636E75614C6F6E69;
              v13 = 0xED00007265695468;
              break;
            case 0x18:
              v13 = 0xE800000000000000;
              v14 = 0x746E756F43797274;
              break;
            case 0x19:
              v14 = 0xD000000000000012;
              v13 = 0x8000000225D0C4F0;
              break;
            case 0x1A:
              v14 = 0xD000000000000016;
              v13 = 0x8000000225D0C510;
              break;
            default:
              break;
          }

          v15 = 0x666B726F576F6E69;
          v16 = 0xED00004449776F6CLL;
          switch(v6)
          {
            case 1:
              v17 = 0x69766F72506F6E69;
              v18 = 0x4449726564;
              goto LABEL_66;
            case 2:
              v16 = 0xEC0000004449776FLL;
              if (v14 != 0x6C666B726F577073)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 3:
              v19 = 0x6469766F72507073;
              v20 = 1145664101;
              goto LABEL_55;
            case 4:
              v16 = 0xEB00000000444965;
              if (v14 != 0x7475626972747461)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 5:
              v16 = 0x8000000225D0C380;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 6:
              v16 = 0xE90000000000004CLL;
              if (v14 != 0x5255726576726573)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 7:
              v16 = 0x8000000225D0C3A0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 8:
              v16 = 0x8000000225D0C3C0;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 9:
              v16 = 0xE900000000000044;
              if (v14 != 0x4974736575716572)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 10:
              v21 = 0x61737265766E6F63;
              v22 = 0x44496E6F6974;
              goto LABEL_79;
            case 11:
              v16 = 0x8000000225D0C3F0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 12:
              v16 = 0x8000000225D0C410;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 13:
              v16 = 0x8000000225D0C430;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 14:
              v16 = 0xEF656E6F5A64726FLL;
              if (v14 != 0x63655264756F6C63)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 15:
              v19 = 0x6552656369766564;
              v20 = 1852795239;
LABEL_55:
              v16 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v14 != v19)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 16:
              v16 = 0x8000000225D0C470;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 17:
              v16 = 0xE900000000000065;
              if (v14 != 0x6761735574726563)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 18:
              v21 = 0x6573616261746164;
              v22 = 0x6E6D756C6F43;
              goto LABEL_79;
            case 19:
              v21 = 0x74737973656C6966;
              v22 = 0x687461506D65;
LABEL_79:
              v16 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v14 != v21)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 20:
              v16 = 0xEF6F6E727245676ELL;
              if (v14 != 0x69796C7265646E75)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 21:
              v17 = 0x636E456567616D69;
              v18 = 0x676E69646FLL;
LABEL_66:
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v14 != v17)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 22:
              v16 = 0xE400000000000000;
              if (v14 != 1701273968)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 23:
              v15 = 0x636E75614C6F6E69;
              v16 = 0xED00007265695468;
              goto LABEL_82;
            case 24:
              v16 = 0xE800000000000000;
              if (v14 != 0x746E756F43797274)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 25:
              v16 = 0x8000000225D0C4F0;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            case 26:
              v16 = 0x8000000225D0C510;
              if (v14 != 0xD000000000000016)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            default:
LABEL_82:
              if (v14 != v15)
              {
                goto LABEL_84;
              }

LABEL_83:
              if (v13 == v16)
              {

                goto LABEL_4;
              }

LABEL_84:
              v23 = sub_225CCF934();

              if (v23)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_89;
              }

              break;
          }
        }
      }

LABEL_89:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (++v4 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2259F6B18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE0, &qword_225CD4B50);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_225CCFBD4();

      sub_225CCE5B4();
      result = sub_225CCFC24();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_225CCF934();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2259F6C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AED8, &qword_225CD4B48);
    v3 = sub_225CCF1D4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_225CCE474();
      sub_225CCFBD4();
      v27 = v7;
      sub_225CCE5B4();
      v8 = sub_225CCFC24();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_225CCE474();
        v18 = v17;
        if (v16 == sub_225CCE474() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_225CCF934();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2259F6E74()
{
  result = qword_27D73AF00;
  if (!qword_27D73AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF00);
  }

  return result;
}

void sub_2259F6EC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_2259EA518(v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2259F6F50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2259F6FA4(uint64_t a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);

  return sub_2259EA9F8(a1, a2, a3);
}

CoreIDVShared::JWSAlgorithm_optional __swiftcall JWSAlgorithm.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t JWSAlgorithm.rawValue.getter()
{
  v1 = 0x7469573635325345;
  if (*v0 != 1)
  {
    v1 = 0x453635325345;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x3635325345;
  }
}

uint64_t sub_2259F7100(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7469573635325345;
  v4 = 0xEC0000004D415568;
  if (v2 != 1)
  {
    v3 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x3635325345;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x7469573635325345;
  v8 = 0xEC0000004D415568;
  if (*a2 != 1)
  {
    v7 = 0x453635325345;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x3635325345;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}