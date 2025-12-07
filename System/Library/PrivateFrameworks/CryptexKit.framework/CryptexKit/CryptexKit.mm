uint64_t sub_2260E0770(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FilePath();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2260E081C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FilePath();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_2260E08C4()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for RawCryptex;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_2260E08EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2260E0980()
{
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2260E0AA8()
{
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2260E0BE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2260E0C18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2260E0D88(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 24)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_2260E0EC4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2260E103C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2260E10E8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2260E119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2260E12DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for Logger();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_2260E1418()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2260E1468()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2260E14A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_2260E1558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_278583FB8;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x277CBEE78];
        while (1)
        {
          v8 = (*(a2 + 16))(a2, v6);
          v9 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v9)
          {
            return;
          }

          Value = CFDictionaryGetValue(v9, v7);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v9);
          if (((v6 != 0) & v8) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v9;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

uint64_t CryptexInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CryptexInfo.devicePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexInfo(0) + 24);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CryptexInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexInfo;
  if (!type metadata singleton initialization cache for CryptexInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexInfo.subdevicePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexInfo(0) + 28);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CryptexInfo.mountPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexInfo(0) + 32);
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CryptexInfo.init(infoInternal:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 216);
  v26[12] = *(a1 + 200);
  v26[13] = v4;
  v26[14] = *(a1 + 232);
  *(&v26[14] + 15) = *(a1 + 247);
  v5 = *(a1 + 152);
  v26[8] = *(a1 + 136);
  v26[9] = v5;
  v6 = *(a1 + 184);
  v26[10] = *(a1 + 168);
  v26[11] = v6;
  v7 = *(a1 + 88);
  v26[4] = *(a1 + 72);
  v26[5] = v7;
  v8 = *(a1 + 120);
  v26[6] = *(a1 + 104);
  v26[7] = v8;
  v9 = *(a1 + 24);
  v26[0] = *(a1 + 8);
  v26[1] = v9;
  v10 = *(a1 + 56);
  v26[2] = *(a1 + 40);
  v26[3] = v10;
  *a2 = String.init(cString:)();
  a2[1] = v11;
  v12 = *(a1 + 471);
  v26[12] = *(a1 + 455);
  v26[13] = v12;
  v26[14] = *(a1 + 487);
  *(&v26[14] + 15) = *(a1 + 502);
  v13 = *(a1 + 407);
  v26[8] = *(a1 + 391);
  v26[9] = v13;
  v14 = *(a1 + 439);
  v26[10] = *(a1 + 423);
  v26[11] = v14;
  v15 = *(a1 + 343);
  v26[4] = *(a1 + 327);
  v26[5] = v15;
  v16 = *(a1 + 375);
  v26[6] = *(a1 + 359);
  v26[7] = v16;
  v17 = *(a1 + 279);
  v26[0] = *(a1 + 263);
  v26[1] = v17;
  v18 = *(a1 + 311);
  v26[2] = *(a1 + 295);
  v26[3] = v18;
  v19._countAndFlagsBits = String.init(cString:)();
  CryptexVersion.init(_:)(v19);
  a2[2] = v27;
  memcpy(v26, (a1 + 518), sizeof(v26));
  v20 = String.init(cString:)();
  v22 = v21;
  type metadata accessor for CryptexInfo(0);
  MEMORY[0x22AA74B40](v20, v22);
  memcpy(v26, (a1 + 1542), sizeof(v26));
  v23 = String.init(cString:)();
  MEMORY[0x22AA74B40](v23);
  memcpy(v26, (a1 + 2566), sizeof(v26));
  v24 = String.init(cString:)();
  return MEMORY[0x22AA74B40](v24);
}

void type metadata completion function for CryptexInfo(uint64_t a1)
{
  type metadata accessor for CryptexVersion?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FilePath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CryptexVersion?()
{
  if (!lazy cache variable for type metadata for CryptexVersion?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CryptexVersion?);
    }
  }
}

uint64_t OpaquePointer.init(from:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  v5 = *(v26 - 8);
  v6 = MEMORY[0x28223BE20](v26);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v25 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CryptexPersonalizationService(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = cryptex_attr_create();
  v17 = type metadata accessor for Cryptex.PersonalizeOptions(0);
  v18 = *(v17 + 24);
  v27 = a1;
  outlined init with copy of CryptexPersonalizationService?(&a1[v18], v11, &_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of CryptexPersonalizationService?(v11, &_s10CryptexKit0A22PersonalizationServiceVSgMd, &_s10CryptexKit0A22PersonalizationServiceVSgMR);
    cryptex_attr_set_authentication();
  }

  else
  {
    outlined init with take of CryptexPersonalizationService(v11, v15);
    URL.absoluteString.getter();
    String.utf8CString.getter();

    cryptex_attr_set_tss_url();

    cryptex_attr_set_authentication();
    outlined destroy of Cryptex.PersonalizeOptions(v15, type metadata accessor for CryptexPersonalizationService);
  }

  v19 = v27;
  outlined init with copy of CryptexPersonalizationService?(&v27[*(v17 + 28)], v4, &_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
  if ((*(v5 + 48))(v4, 1, v26) == 1)
  {
    outlined destroy of CryptexPersonalizationService?(v4, &_s10Foundation3URLV4host_s5Int32V4porttSgMd, &_s10Foundation3URLV4host_s5Int32V4porttSgMR);
  }

  else
  {
    v20 = v25;
    outlined init with take of (host: URL, port: Int32)(v4, v25);
    v21 = v24;
    outlined init with copy of CryptexPersonalizationService?(v20, v24, &_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
    URL.absoluteString.getter();
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 8))(v21, v22);
    String.utf8CString.getter();

    cryptex_attr_set_socks_proxy();
    outlined destroy of CryptexPersonalizationService?(v20, &_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  }

  cryptex_attr_set_personalization_flags();
  outlined destroy of Cryptex.PersonalizeOptions(v19, type metadata accessor for Cryptex.PersonalizeOptions);
  return v16;
}

uint64_t OpaquePointer.init(from:)(unsigned __int8 *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = cryptex_attr_create();
  cryptex_attr_set_persistence();
  cryptex_attr_set_nonce_persistence();
  if (v1 == 1)
  {
    cryptex_attr_set_limit_load_to_rem();
  }

  if (v2)
  {
    cryptex_attr_set_read_write();
  }

  return v3;
}

{
  v1 = *a1;
  result = cryptex_attr_create();
  if (v1 == 1)
  {
    v3 = result;
    cryptex_attr_set_uninstall_flags();
    return v3;
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

uint64_t outlined init with take of (host: URL, port: Int32)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CryptexPersonalizationService?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of CryptexPersonalizationService?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of CryptexPersonalizationService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexPersonalizationService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Cryptex.PersonalizeOptions(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static NSFileHandle.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x22AA75EA0](a1);
  if (v5 == XPC_TYPE_FD.getter())
  {
    v8 = xpc_fd_dup(a1);
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFileDescriptor:v8 closeOnDealloc:1];
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD00000000000001CLL, 0x8000000226116630, 0xD000000000000026, 0x8000000226116650, 0x637078286D6F7266, 0xEA0000000000293ALL, 8, v6);
    outlined destroy of CryptexError(v4);
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage()
{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage);
  }

  return result;
}

uint64_t outlined destroy of CryptexError(uint64_t a1)
{
  v2 = type metadata accessor for CryptexError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

xpc_object_t NSFileHandle.asXPC()()
{
  v1 = v0;
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_fd_create([v1 fileDescriptor]);
  if (!result)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD000000000000017, 0x8000000226116680, 0xD000000000000026, 0x8000000226116650, 0x29284350587361, 0xE700000000000000, 17, v6);
    outlined destroy of CryptexError(v4);
    swift_willThrow();
    return 0;
  }

  return result;
}

id protocol witness for static XpcCodable.from(xpc:) in conformance NSFileHandle@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = static NSFileHandle.from(xpc:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestTestError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RequestTestError(_WORD *result, int a2, int a3)
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

__n128 _img4_chip_instance.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = img4_chip_select_personalized_ap();
  memset(&v4[3], 0, 64);
  *a1 = 6;
  *(a1 + 8) = v2;
  *(a1 + 16) = -1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 47) = 0;
  *(a1 + 61) = *v4;
  result = *&v4[32];
  *(a1 + 124) = 0;
  *(a1 + 109) = *&v4[48];
  *(a1 + 93) = *&v4[32];
  *(a1 + 77) = *&v4[16];
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

void _img4_chip_instance.certificateProductionStatus.getter(_BYTE *a1@<X8>)
{
  if ((*(v1 + 16) & 0x20) != 0)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = *(v1 + 48) & 1;
  }
}

void _img4_chip_instance.effectiveProductionStatus.getter(_BYTE *a1@<X8>)
{
  if ((*(v1 + 16) & 0x80) != 0)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = *(v1 + 50) & 1;
  }
}

Swift::Int Cryptex.Format.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Cryptex.Format()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Cryptex.Format(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v2);
  return Hasher._finalize()();
}

uint64_t Cryptex.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double _s10CryptexKit0A8IdentityVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

__n128 key path getter for Cryptex.personalizedIdentity : Cryptex@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 144))(v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v7[8];
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

__n128 key path setter for Cryptex.personalizedIdentity : Cryptex(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = a1[4];
  *(v3 + 120) = a1[5];
  v5 = a1[7];
  *(v3 + 136) = a1[6];
  *(v3 + 152) = v5;
  *(v3 + 168) = a1[8];
  v6 = *a1;
  *(v3 + 56) = a1[1];
  result = a1[2];
  v8 = a1[3];
  *(v3 + 72) = result;
  *(v3 + 88) = v8;
  *(v3 + 104) = v4;
  *(v3 + 40) = v6;
  return result;
}

__n128 Cryptex.personalizedIdentity.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  *(a1 + 96) = *(v1 + 136);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  *(a1 + 32) = *(v1 + 72);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(v1 + 104);
  *(a1 + 80) = v3;
  result = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 Cryptex.personalizedIdentity.setter(__int128 *a1)
{
  swift_beginAccess();
  v3 = a1[4];
  *(v1 + 120) = a1[5];
  v4 = a1[7];
  *(v1 + 136) = a1[6];
  *(v1 + 152) = v4;
  *(v1 + 168) = a1[8];
  v5 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  *(v1 + 104) = v3;
  *(v1 + 40) = v5;
  return result;
}

void *key path getter for Cryptex.personalizedNonce : Cryptex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 168))(&v5);
  v4 = v5;
  *(a2 + 4) = BYTE4(v5);
  *a2 = v4;
  return result;
}

uint64_t key path setter for Cryptex.personalizedNonce : Cryptex(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 188) = v3;
  *(v4 + 184) = v2;
  return result;
}

uint64_t Cryptex.personalizedNonce.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 184);
  *(a1 + 4) = *(v1 + 188);
  *a1 = v4;
  return result;
}

uint64_t Cryptex.personalizedNonce.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = swift_beginAccess();
  *(v1 + 188) = v3;
  *(v1 + 184) = v2;
  return result;
}

uint64_t Cryptex.assets.getter()
{
  v2 = Cryptex.getCore()();
  if (!v1)
  {
    v0 = *(v2 + 16);
  }

  return v0;
}

uint64_t Cryptex._cryptex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

uint64_t Cryptex.format.getter@<X0>(char *a1@<X8>)
{
  v3 = (*(*v1 + 216))(v5);
  RawCryptex.format.getter(a1);
  return v3(v5, 0);
}

uint64_t Cryptex.personalize(for:persistence:options:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 504) = a3;
  *(v4 + 512) = v3;
  *(v4 + 496) = a1;
  *(v4 + 470) = *a2;
  type metadata accessor for Cryptex(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex, &protocol conformance descriptor for Cryptex);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 520) = v6;
  *(v4 + 528) = v5;

  return MEMORY[0x2822009F8](Cryptex.personalize(for:persistence:options:), v6, v5);
}

uint64_t Cryptex.personalize(for:persistence:options:)()
{
  v1 = *(v0 + 496);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 536) = v4;
  *v4 = v0;
  v4[1] = Cryptex.personalize(for:persistence:options:);

  return v6(v0 + 16, v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 528);
  v4 = *(v2 + 520);
  if (v0)
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 470);
  v2 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v2;
  *(v0 + 288) = *(v0 + 144);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v4;
  v5 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v5;
  *(v0 + 469) = v1;

  v6 = swift_task_alloc();
  *(v0 + 552) = v6;
  *v6 = v0;
  v6[1] = Cryptex.personalize(for:persistence:options:);
  v7 = *(v0 + 512);

  return CryptexNonceSpec.init(forCryptex:persistence:)(v0 + 616, v7, (v0 + 469));
}

{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 528);
  v4 = *(v2 + 520);
  if (v0)
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v14 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 616);
  v13 = *(v0 + 620);
  v12 = v2;
  CryptexReadNonceOptions.init(nonceSpec:)(&v12, &v10);
  v3 = v10;
  v4 = v11;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  *(v0 + 624) = v3;
  *(v0 + 628) = v4;
  v9 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  *(v0 + 568) = v7;
  *v7 = v0;
  v7[1] = Cryptex.personalize(for:persistence:options:);

  return v9(v0 + 448, v0 + 624, v5, v6);
}

{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 528);
  v4 = *(v2 + 520);
  if (v0)
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 512);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 584) = v2;
  *(v0 + 592) = v3;
  v4 = *(v0 + 464);
  v5 = *(v0 + 468);
  v6 = *(v0 + 272);
  *(v0 + 400) = *(v0 + 256);
  *(v0 + 416) = v6;
  *(v0 + 432) = *(v0 + 288);
  v7 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 192);
  *(v0 + 352) = v7;
  v8 = *(v0 + 240);
  *(v0 + 368) = *(v0 + 224);
  *(v0 + 384) = v8;
  v9 = *(v0 + 176);
  *(v0 + 304) = *(v0 + 160);
  *(v0 + 320) = v9;
  *(v0 + 472) = v2;
  *(v0 + 480) = v3;
  *(v0 + 488) = v4;
  *(v0 + 492) = v5;
  v13 = (*(*v1 + 256) + **(*v1 + 256));
  v10 = swift_task_alloc();
  *(v0 + 600) = v10;
  *v10 = v0;
  v10[1] = Cryptex.personalize(for:persistence:options:);
  v11 = *(v0 + 504);

  return v13(v0 + 304, v0 + 472, v11);
}

{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 528);
  v4 = *(v2 + 520);
  if (v0)
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  else
  {
    v5 = Cryptex.personalize(for:persistence:options:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  outlined consume of Data._Representation(v0[73], v0[74]);
  v1 = v0[1];

  return v1();
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

{
  outlined consume of Data._Representation(v0[73], v0[74]);
  v1 = v0[1];

  return v1();
}

uint64_t Cryptex.personalize(for:nonce:options:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 520) = v3;
  *(v4 + 512) = a3;
  v5 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v5;
  *(v4 + 144) = a1[8];
  v6 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v6;
  v7 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v7;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  v9 = *a2;
  v10 = *(a2 + 8);
  *(v4 + 528) = *a2;
  *(v4 + 536) = v10;
  *(v4 + 704) = *(a2 + 16);
  *(v4 + 708) = *(a2 + 20);
  outlined copy of Data._Representation(v9, v10);
  type metadata accessor for Cryptex(0);
  *(v4 + 544) = lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex, &protocol conformance descriptor for Cryptex);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 552) = v11;
  *(v4 + 560) = v12;

  return MEMORY[0x2822009F8](Cryptex.personalize(for:nonce:options:), v11, v12);
}

uint64_t Cryptex.personalize(for:nonce:options:)()
{
  _img4_nonce.init(from:)(*(v0 + 528), *(v0 + 536), (v0 + 592));
  v1 = *(v0 + 544);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 608);
  *(v0 + 648) = *(v0 + 592);
  *(v0 + 664) = v4;
  *(v0 + 680) = *(v0 + 624);
  *(v0 + 696) = *(v0 + 640);
  v5 = *(v0 + 144);
  *(v0 + 272) = *(v0 + 128);
  *(v0 + 288) = v5;
  v6 = *(v0 + 112);
  *(v0 + 240) = *(v0 + 96);
  *(v0 + 256) = v6;
  v7 = *(v0 + 80);
  *(v0 + 208) = *(v0 + 64);
  *(v0 + 224) = v7;
  v8 = *(v0 + 48);
  *(v0 + 176) = *(v0 + 32);
  *(v0 + 192) = v8;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 496) = 0;
  v9 = swift_task_alloc();
  *(v0 + 568) = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v0 + 160;
  v9[5] = v0 + 648;
  v9[6] = v0 + 496;
  v10 = swift_task_alloc();
  *(v0 + 576) = v10;
  *v10 = v0;
  v10[1] = Cryptex.personalize(for:nonce:options:);
  v11 = MEMORY[0x277D841D8];

  return MEMORY[0x2822008A0](v0 + 504, v2, v1, 0xD00000000000001FLL, 0x80000002261166A0, partial apply for closure #1 in Cryptex.personalize(for:nonce:options:), v9, v11);
}

{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 560);
  v4 = *(v2 + 552);
  if (v0)
  {
    v5 = Cryptex.personalize(for:nonce:options:);
  }

  else
  {
    v5 = Cryptex.personalize(for:nonce:options:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 704);
  v2 = *(v0 + 520);
  v3 = *(v0 + 708);
  RawCryptex.init(_:)();
  (*(*v2 + 224))();
  v4 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v4;
  *(v0 + 432) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v5;
  v6 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v6;
  v7 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v7;
  protocol witness for Request.checkEntitlement(entitlements:) in conformance RequestTestError();
  swift_beginAccess();
  *(v2 + 40) = *(v0 + 304);
  v8 = *(v0 + 320);
  v9 = *(v0 + 336);
  v10 = *(v0 + 352);
  *(v2 + 104) = *(v0 + 368);
  *(v2 + 88) = v10;
  *(v2 + 72) = v9;
  *(v2 + 56) = v8;
  v11 = *(v0 + 384);
  v12 = *(v0 + 400);
  v13 = *(v0 + 416);
  *(v2 + 168) = *(v0 + 432);
  *(v2 + 152) = v13;
  *(v2 + 136) = v12;
  *(v2 + 120) = v11;
  swift_beginAccess();
  *(v2 + 188) = v3;
  *(v2 + 184) = v1;

  v14 = *(v0 + 8);

  return v14();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Cryptex.personalize(for:nonce:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  type metadata accessor for Cryptex(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex, &protocol conformance descriptor for Cryptex);
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a2;
  v26[7] = a1;
  v13 = (*(*a2 + 216))(v27);
  _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:), v26, v14);
  result = v13(v27, 0);
  if ((v28 & 1) == 0)
  {
    v16 = *a6;
    if (*a6)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v17 = swift_allocError();
      *v18 = v16;
    }

    else
    {
      type metadata accessor for CryptexError(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      v17 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2260DF000, v20, v21, "Failed to kick off personalization: %@", v22, 0xCu);
      outlined destroy of NSObject?(v23);
      MEMORY[0x22AA75CB0](v23, -1, -1);
      MEMORY[0x22AA75CB0](v22, -1, -1);
    }

    v27[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

void closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:)(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v20[1] = a4;
  v20[2] = a5;
  v21 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  v14 = type metadata accessor for Cryptex.PersonalizeOptions(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CryptexError(a2, v16, type metadata accessor for Cryptex.PersonalizeOptions);
  OpaquePointer.init(from:)(v16);
  (*(v11 + 16))(v13, a7, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @unowned OpaquePointer?) -> ();
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  LOBYTE(v17) = cryptex_personalize2();
  _Block_release(v19);
  *v21 = v17;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @unowned OpaquePointer?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t default argument 0 of Cryptex.personalize(for:persistence:options:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CryptexLocalDevice(0);
  result = CryptexLocalDevice.__allocating_init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for CryptexLocalDevice;
  *a1 = result;
  return result;
}

uint64_t Cryptex.install(onto:options:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 56) = v2;
  *(v3 + 65) = *a2;
  *(v3 + 66) = a2[1];
  *(v3 + 67) = a2[2];
  *(v3 + 68) = a2[3];
  type metadata accessor for Cryptex(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Cryptex and conformance Cryptex, type metadata accessor for Cryptex, &protocol conformance descriptor for Cryptex);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Cryptex.install(onto:options:), v5, v4);
}

uint64_t Cryptex.install(onto:options:)()
{
  v30 = v0;
  v29 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 48);
  v2 = *(v0 + 68);
  v3 = *(v0 + 67);
  v4 = *(v0 + 66);
  v5 = *(v0 + 65);
  if (v5 == 2)
  {
    (*(**(v0 + 56) + 168))(&v26);
    if (BYTE4(v26) == 255 || (v27 = v26, v28 = BYTE4(v26), LOBYTE(v5) = CryptexNonceSpec.isEphemeral()(), v5 == 2))
    {
      LOBYTE(v5) = 0;
    }
  }

  LOBYTE(v27) = v5;
  BYTE1(v27) = v4;
  BYTE2(v27) = v3;
  HIBYTE(v27) = v2;
  v6 = OpaquePointer.init(from:)(&v27);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2260DF000, v7, v8, "Attempting to install to codex", v9, 2u);
    MEMORY[0x22AA75CB0](v9, -1, -1);
  }

  v10 = *(v0 + 56);

  *(v0 + 48) = 0;
  v11 = swift_task_alloc();
  *(v11 + 16) = v6;
  *(v11 + 24) = v1;
  v12 = (*(*v10 + 216))(v0 + 16);
  _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.install(onto:options:), v11, v13);

  v12(v0 + 16, 0);
  if (*(v0 + 64) == 1)
  {
    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *v1;
    if (*v1)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v16 = swift_allocError();
      *v17 = v15;
    }

    else
    {
      type metadata accessor for CryptexError(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      v16 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_2260DF000, v19, v20, "Failed to install: %@", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x22AA75CB0](v22, -1, -1);
      MEMORY[0x22AA75CB0](v21, -1, -1);
    }

    swift_willThrow();
    v14 = *(v0 + 8);
  }

  return v14();
}

void *Cryptex.attachPersonalizedManifest(path:)()
{
  v2 = type metadata accessor for CryptexError(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v21[4] = 0;
  v22 = 16842752;
  result = FilePath.withCString<A>(_:)();
  if (!v1)
  {
    v21[1] = 0;
    v9 = v23[0];
    MEMORY[0x28223BE20](result);
    LODWORD(v21[-2]) = v9;
    v10 = (*(*v0 + 216))(v23);
    _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.attachPersonalizedManifest(path:), &v21[-4], v11);
    v10(v23, 0);
    if (v24)
    {
      v12 = v9;
      v13 = POSIXErrorCode.init(rawValue:)();
      *v7 = v13;
      v7[4] = BYTE4(v13) & 1;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of CryptexError(v7, v5, type metadata accessor for CryptexError);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
        swift_allocError();
        outlined init with copy of CryptexError(v5, v18, type metadata accessor for CryptexError);
        v19 = _swift_stdlib_bridgeErrorToNSError();
        outlined destroy of CryptexError(v5);
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_2260DF000, v14, v15, "Failed to attach personalized manifest: %@", v16, 0xCu);
        outlined destroy of NSObject?(v17);
        MEMORY[0x22AA75CB0](v17, -1, -1);
        MEMORY[0x22AA75CB0](v16, -1, -1);
      }

      else
      {

        outlined destroy of CryptexError(v5);
      }

      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      swift_allocError();
      outlined init with copy of CryptexError(v7, v20, type metadata accessor for CryptexError);
      swift_willThrow();
      outlined destroy of CryptexError(v7);
      return close(v12);
    }

    else
    {
      return close(v9);
    }
  }

  return result;
}

void *Cryptex.fcopyPersonalizedManifest(path:)()
{
  v18 = 1;
  v19 = 16842752;
  result = FilePath.withCString<A>(_:)();
  if (!v1)
  {
    v3 = v20[0];
    MEMORY[0x28223BE20](result);
    v17[4] = v3;
    v4 = (*(*v0 + 216))(v20);
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGSgMd, &_ss9UnmanagedVySo10CFErrorRefaGSgMR);
    _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.fcopyPersonalizedManifest(path:), v17, v6);
    v4(v20, 0);
    v7 = v21;
    if (v21)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v8 = swift_allocError();
      *v9 = v7;
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v8;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_2260DF000, v11, v12, "Failed to copy personalized manifest: %@", v13, 0xCu);
        outlined destroy of NSObject?(v14);
        MEMORY[0x22AA75CB0](v14, -1, -1);
        MEMORY[0x22AA75CB0](v13, -1, -1);
      }

      swift_willThrow();
    }

    return close(v3);
  }

  return result;
}

uint64_t Cryptex.getCore()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = static CryptexAssetType.allCases.getter();
  v3 = v2;
  v4 = v2[2];
  if (!v4)
  {

LABEL_23:
    type metadata accessor for CryptexCore();
    return CryptexCore.__allocating_init(assets:)(v1);
  }

  v30[5] = v0;
  v5 = 0;
  v31 = v4;
  v32 = v2;
  while (v5 < v3[2])
  {
    v6 = *(v3 + v5 + 32);
    LOBYTE(v34[0]) = v6;
    CryptexAssetType.rawAssetType.getter(&v35);
    if (v36 == 1)
    {
      goto LABEL_5;
    }

    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = v38;
    v44 = v39;
    MEMORY[0x28223BE20](v7);
    v30[2] = v8;
    v9 = (*(*v33 + 216))(v34);
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPySo14_cryptex_assetVGSgMd, &_sSPySo14_cryptex_assetVGSgMR);
    _s10CryptexKit03RawA0V010withUnsafeA4Core7performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.getCore(), v30, v11);
    v9(v34, 0);
    if (!v45)
    {
      goto LABEL_5;
    }

    v12 = String.init(cString:)();
    v13 = MEMORY[0x22AA74BE0](v12);

    v14 = [objc_opt_self() fileHandleForReadingAtPath_];

    if (!v14)
    {

      type metadata accessor for CryptexError(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    type metadata accessor for CryptexAsset(0);
    LOBYTE(v34[0]) = v6;
    v15 = v14;
    v16 = CryptexAsset.__allocating_init(type:file:)(v34, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v1;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v20 = v1[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_27;
    }

    v23 = v18;
    if (v1[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v1 = v34[0];
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v1 = v34[0];
        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_29;
      }

      v19 = v24;
      v1 = v34[0];
      if ((v23 & 1) == 0)
      {
LABEL_17:
        v1[(v19 >> 6) + 8] |= 1 << v19;
        *(v1[6] + v19) = v6;
        *(v1[7] + 8 * v19) = v16;

        v26 = v1[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_28;
        }

        v1[2] = v28;
        goto LABEL_4;
      }
    }

    *(v1[7] + 8 * v19) = v16;

LABEL_4:
    v4 = v31;
    v3 = v32;
LABEL_5:
    if (v4 == ++v5)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
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

uint64_t type metadata accessor for Cryptex(uint64_t a1)
{
  result = type metadata singleton initialization cache for Cryptex;
  if (!type metadata singleton initialization cache for Cryptex)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t partial apply for closure #1 in Cryptex.install(onto:options:)@<X0>(_BYTE *a2@<X8>)
{
  result = cryptex_install2();
  *a2 = result;
  return result;
}

uint64_t Cryptex.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Cryptex.init(from:)(a1);
  return v2;
}

uint64_t Cryptex.init(from:)(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Logger();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  _s10CryptexKit0A8IdentityVSgWOi0_(&v37);
  *(v1 + 120) = v42;
  *(v1 + 136) = v43;
  *(v1 + 152) = v44;
  *(v1 + 168) = v45;
  *(v1 + 56) = v38;
  *(v1 + 72) = v39;
  *(v1 + 88) = v40;
  *(v1 + 104) = v41;
  *(v1 + 40) = v37;
  *(v1 + 184) = 0;
  *(v1 + 188) = -1;
  v28 = type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v36[7] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, *MEMORY[0x277D85268], v31);
  *(v1 + 208) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = OBJC_IVAR____TtC10CryptexKit7Cryptex_logger;
  Logger.init(category:)(0x78657470797243, 0xE700000000000000);
  swift_beginAccess();
  *(v1 + 120) = v42;
  *(v1 + 136) = v43;
  *(v1 + 152) = v44;
  *(v1 + 168) = v45;
  *(v1 + 56) = v38;
  *(v1 + 72) = v39;
  *(v1 + 88) = v40;
  *(v1 + 104) = v41;
  *(v1 + 40) = v37;
  swift_beginAccess();
  *(v1 + 188) = -1;
  *(v1 + 184) = 0;
  swift_beginAccess();
  *(v1 + 200) = v32;
  *(v1 + 192) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v35 = 0;
  v36[0] = 0;
  v33[2] = v36;
  v33[3] = &v35;
  swift_beginAccess();
  _s10CryptexKit03RawA0V010withUnsafeA4Core7performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in Cryptex.init(from:), v33, *(v1 + 200));
  swift_endAccess();
  if (v35)
  {
    v10._countAndFlagsBits = String.init(cString:)();
    CryptexVersion.init(_:)(v10);
    v11 = v34[0];
    if (!v34[0])
    {
      v12 = v25;
      v13 = v26;
      (*(v25 + 16))(v27, v1 + v9, v26);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34[0] = v17;
        *v16 = 136315138;
        v18 = String.init(cString:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v34);

        *(v16 + 4) = v20;
        v13 = v26;
        _os_log_impl(&dword_2260DF000, v14, v15, "Failed to parse version: '%s'", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AA75CB0](v17, -1, -1);
        MEMORY[0x22AA75CB0](v16, -1, -1);

        v21 = *(v25 + 8);
      }

      else
      {

        v21 = *(v12 + 8);
      }

      v21(v27, v13);
      type metadata accessor for CryptexError(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v21((v2 + v9), v13);
      type metadata accessor for Cryptex(0);
      swift_deallocPartialClassInstance();
      return v2;
    }
  }

  else
  {
    v11 = 0;
  }

  *(v1 + 32) = v11;
  v22 = v36[0];
  if (v36[0])
  {
    v22 = String.init(cString:)();
  }

  else
  {
    v23 = 0;
  }

  *(v1 + 16) = v22;
  *(v1 + 24) = v23;
  return v2;
}

uint64_t Cryptex.deinit()
{

  v1 = OBJC_IVAR____TtC10CryptexKit7Cryptex_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Cryptex.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10CryptexKit7Cryptex_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)@<X0>(_DWORD *a5@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v7 = result;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in Cryptex.attachPersonalizedManifest(path:)@<X0>(_DWORD *a2@<X8>)
{
  result = cryptex_attach_personalized_manifest();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in Cryptex.fcopyPersonalizedManifest(path:)@<X0>(uint64_t *a2@<X8>)
{
  result = cryptex_fcopy_personalized_manifest2();
  *a2 = result;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v31 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t partial apply for closure #1 in Cryptex.init(from:)@<X0>(_DWORD *a2@<X8>)
{
  result = cryptex_core_parse_info_asset();
  *a2 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t lazy protocol witness table accessor for type Cryptex.Format and conformance Cryptex.Format()
{
  result = lazy protocol witness table cache variable for type Cryptex.Format and conformance Cryptex.Format;
  if (!lazy protocol witness table cache variable for type Cryptex.Format and conformance Cryptex.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.Format and conformance Cryptex.Format);
  }

  return result;
}

uint64_t type metadata completion function for Cryptex(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of Cryptex.personalize(for:persistence:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of Cryptex.personalize(for:persistence:options:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of Cryptex.personalize(for:nonce:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of Cryptex.install(onto:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1, a2);
}

uint64_t getEnumTagSinglePayload for Cryptex.Format(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Cryptex.Format(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t outlined init with copy of CryptexError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #1 in closure #1 in closure #1 in Cryptex.personalize(for:nonce:options:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
  if (a1)
  {
    v4 = a1;
    TatsuError.init(extractedFrom:)(a1, v12);
    v5 = v13;
    if (v13 == 255)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v8 = swift_allocError();
      *v10 = v4;
      v11 = v4;
    }

    else
    {
      v7 = v12[0];
      v6 = v12[1];
      lazy protocol witness table accessor for type TatsuError and conformance TatsuError();
      v8 = swift_allocError();
      *v9 = v7;
      *(v9 + 8) = v6;
      *(v9 + 16) = v5;
    }

    v12[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v12[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, &_sScCys13OpaquePointerVs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type TatsuError and conformance TatsuError()
{
  result = lazy protocol witness table cache variable for type TatsuError and conformance TatsuError;
  if (!lazy protocol witness table cache variable for type TatsuError and conformance TatsuError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TatsuError and conformance TatsuError);
  }

  return result;
}

uint64_t partial apply for closure #1 in Cryptex.getCore()@<X0>(uint64_t *a2@<X8>)
{
  result = cryptex_core_get_asset_from_index();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType()
{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType;
  if (!lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for _cryptex_asset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _cryptex_asset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for _cryptex_asset_type(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for _cryptex_asset_type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for _img4_chip_instance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _img4_chip_instance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for CFMutableDictionaryRef(uint64_t a1)
{
  type metadata accessor for CFDictionaryRef(255);
  *(a1 + 16) = v2;
  return 0;
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

uint64_t getEnumTagSinglePayload for _img4_dgst(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _img4_dgst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void type metadata accessor for CFErrorRef(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t CryptexNonce.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

void CryptexNonce.spec.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  *a1 = *(v1 + 16);
  *(a1 + 4) = v2;
}

uint64_t CryptexNonce.init(data:spec:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 4);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 20) = v5;
  return result;
}

Swift::Int CryptexPersistence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CryptexNonceSpec.logger);
  __swift_project_value_buffer(v0, static CryptexNonceSpec.logger);
  return Logger.init(category:)(0x65705365636E6F4ELL, 0xE900000000000063);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(category:)(0x7541346567616D49, 0xEA00000000006874);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(category:)(0x6E6F6E5F34676D69, 0xEA00000000006563);
}

uint64_t CryptexNonceSpec.init(forCryptex:persistence:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 89) = *a3;
  v4 = (*a2 + 240) & 0xFFFFFFFFFFFFLL | 0xC37000000000000;
  *(v3 + 64) = *(*a2 + 240);
  *(v3 + 72) = v4;
  type metadata accessor for Cryptex(0);
  lazy protocol witness table accessor for type Cryptex and conformance Cryptex();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexNonceSpec.init(forCryptex:persistence:), v6, v5);
}

uint64_t CryptexNonceSpec.init(forCryptex:persistence:)()
{
  (*(v0 + 64))();

  return MEMORY[0x2822009F8](CryptexNonceSpec.init(forCryptex:persistence:), 0, 0);
}

{
  if (!*(v0 + 88))
  {

    v1 = 0;
    v2 = 2;
    goto LABEL_12;
  }

  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 89);

    v2 = 0;
LABEL_12:
    v17 = *(v0 + 48);
    *v17 = v1;
    *(v17 + 4) = v2;
    v16 = *(v0 + 8);
    goto LABEL_13;
  }

  v3 = *(v0 + 56);
  *(v0 + 80) = 0;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 80;
  v5 = (*(*v3 + 216))(v0 + 16);
  _s10CryptexKit03RawA0V010withUnsafeA4Core7performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in CryptexNonceSpec.init(forCryptex:persistence:), v4, v6);

  v5(v0 + 16, 0);
  if (!*(v0 + 84))
  {

    v1 = *(v0 + 80);
    v2 = 1;
    goto LABEL_12;
  }

  v7 = POSIXErrorCode.init(rawValue:)() & 0x1FFFFFFFFLL | 0xFFFFFF8000000000;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CryptexNonceSpec.logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v13 + 4) = BYTE4(v7);
    *v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2260DF000, v9, v10, "Failed to get nonce domain handle: %@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x22AA75CB0](v12, -1, -1);
    MEMORY[0x22AA75CB0](v11, -1, -1);
  }

  lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
  swift_allocError();
  *(v15 + 4) = BYTE4(v7);
  *v15 = v7;
  swift_willThrow();

  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

unint64_t lazy protocol witness table accessor for type Cryptex and conformance Cryptex()
{
  result = lazy protocol witness table cache variable for type Cryptex and conformance Cryptex;
  if (!lazy protocol witness table cache variable for type Cryptex and conformance Cryptex)
  {
    type metadata accessor for Cryptex(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex and conformance Cryptex);
  }

  return result;
}

uint64_t partial apply for closure #1 in CryptexNonceSpec.init(forCryptex:persistence:)@<X0>(_DWORD *a2@<X8>)
{
  result = cryptex_core_get_nonce_domain_handle();
  *a2 = result;
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

unint64_t lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error()
{
  result = lazy protocol witness table cache variable for type AppleImage4Error and conformance AppleImage4Error;
  if (!lazy protocol witness table cache variable for type AppleImage4Error and conformance AppleImage4Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleImage4Error and conformance AppleImage4Error);
  }

  return result;
}

Swift::Bool_optional __swiftcall CryptexNonceSpec.isEphemeral()()
{
  if (!*(v0 + 4))
  {
    return ((*v0 & 1) == 0);
  }

  if (*(v0 + 4) == 1)
  {
    return 2;
  }

  return 0;
}

Swift::tuple_OpaquePointer_optional_String __swiftcall CryptexNonceSpec.getDomainAndDescription()()
{
  v1 = *v0;
  if (*(v0 + 4))
  {
    if (*(v0 + 4) == 1)
    {
      v2 = img4_nonce_domain_get_from_handle();
      strcpy(v7, "NonceDomain=");
      BYTE5(v7[1]) = 0;
      HIWORD(v7[1]) = -5120;
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v3);

      v4 = v2;
      v5 = v7[0];
      v6 = v7[1];
    }

    else
    {
      v6 = 0xE800000000000000;
      v5 = 0x6863726165736572;
      v4 = MEMORY[0x277D829E0];
    }
  }

  else
  {
    if (v1)
    {
      v4 = MEMORY[0x277D829E8];
    }

    else
    {
      v4 = MEMORY[0x277D829F0];
    }

    if (v1)
    {
      v5 = 6906980;
    }

    else
    {
      v5 = 6906992;
    }

    v6 = 0xE300000000000000;
  }

  result._1._object = v6;
  result._1._countAndFlagsBits = v5;
  result._0.value._rawValue = v4;
  return result;
}

void CryptexReadNonceOptions.nonceSpec.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t CryptexReadNonceOptions.nonceSpec.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t CryptexReadNonceOptions.init(nonceSpec:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3 == 255)
  {
    v2 = 4;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexPersistence and conformance CryptexPersistence()
{
  result = lazy protocol witness table cache variable for type CryptexPersistence and conformance CryptexPersistence;
  if (!lazy protocol witness table cache variable for type CryptexPersistence and conformance CryptexPersistence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexPersistence and conformance CryptexPersistence);
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

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexNonce(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
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

uint64_t storeEnumTagSinglePayload for CryptexNonce(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexPersistence(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptexPersistence(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTag for CryptexNonceSpec(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for CryptexNonceSpec(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexNonceSpec(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for CryptexNonceSpec(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
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

uint64_t getEnumTagSinglePayload for Cryptex.UninstallOptions(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t FilePath.createSymlink(targeting:)()
{
  v0 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  FilePath.string.getter();
  FilePath.string.getter();
  v3 = String.utf8CString.getter();

  v4 = String.utf8CString.getter();

  v5 = symlink((v3 + 32), (v4 + 32));

  if (v5)
  {
    *v2 = MEMORY[0x22AA74A20](result);
    swift_storeEnumTagMultiPayload();
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v12 = 0xD000000000000019;
    v13 = 0x8000000226116780;
    type metadata accessor for FilePath();
    lazy protocol witness table accessor for type FilePath and conformance FilePath();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v7);

    MEMORY[0x22AA74CD0](0x6E69746E696F7020, 0xED00002074612067);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v8);

    v9 = v12;
    v10 = v13;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v2, v9, v10, 0xD000000000000026, 0x80000002261167A0, 0xD000000000000019, 0x80000002261167D0, 9, v11);

    outlined destroy of CryptexError(v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath and conformance FilePath()
{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
  }

  return result;
}

uint64_t FilePath.symlinkTarget()()
{
  result = FilePath.symlinkExists()();
  if (!v1)
  {
    if (result)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = 1025;
      bzero((v2 + 32), 0x401uLL);
      FilePath.string.getter();
      v3 = String.utf8CString.getter();

      v4 = readlink((v3 + 32), (v2 + 32), 0x400uLL);

      if (v4 == -1)
      {
        v10 = MEMORY[0x22AA74A20](v5);
        lazy protocol witness table accessor for type Errno and conformance Errno();
        swift_allocError();
        *v11 = v10;
        swift_willThrow();
      }

      else
      {
        v6 = static String._fromUTF8Repairing(_:)();
        v8 = v7;

        return MEMORY[0x22AA74B40](v6, v8);
      }
    }

    else
    {
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_allocError();
      *v9 = 22;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Cryptex.BootstrapOptions.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Cryptex.BootstrapOptions.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Cryptex.BootstrapOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002261167F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Cryptex.BootstrapOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Cryptex.BootstrapOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Cryptex.BootstrapOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMd, ">P");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys);
  }

  return result;
}

uint64_t Cryptex.BootstrapOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMd, &_ss22KeyedDecodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Cryptex.BootstrapOptions(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D0C16BootstrapOptionsV10CodingKeys33_B9EA297E664C6720CA25879A3C94DC6ALLOGMd, ">P");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions.CodingKeys and conformance Cryptex.BootstrapOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CryptexDevice.readNonce(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return CryptexDevice.readNonce(options:)(a1, a2, a3, a4);
}

{
  v8 = *(a2 + 4);
  *(v4 + 32) = *a2;
  *(v4 + 36) = v8;
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CryptexDevice.readNonce(options:);

  return v11(a1, v4 + 32, a3, a4);
}

uint64_t CryptexDevice.readNonce(options:)()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](CryptexDevice.readNonce(options:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 392) = a2;
  *(v6 + 400) = a4;
  *(v6 + 384) = a1;
  v8 = type metadata accessor for FilePath();
  *(v6 + 424) = v8;
  *(v6 + 432) = *(v8 - 8);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 534) = *a3;
  *(v6 + 535) = a3[1];
  *(v6 + 536) = a3[2];
  *(v6 + 537) = a3[3];

  return MEMORY[0x2822009F8](CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:), 0, 0);
}

uint64_t CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:)()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[48];
  type metadata accessor for CryptexBundle(0);
  (*(v2 + 16))(v1, v4, v3);
  v0[56] = CryptexBundle.__allocating_init(path:)(v1);
  v9 = (*(v0[51] + 8) + **(v0[51] + 8));
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  v6 = v0[51];
  v7 = v0[50];

  return v9(v0 + 2, v7, v6);
}

{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    v2 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 144);
  *(v0 + 272) = *(v0 + 128);
  *(v0 + 288) = v3;
  v4 = *(v0 + 112);
  *(v0 + 240) = *(v0 + 96);
  *(v0 + 256) = v4;
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v5;
  v8 = (*(*v1 + 160) + **(*v1 + 160));
  v6 = swift_task_alloc();
  *(v0 + 472) = v6;
  *v6 = v0;
  v6[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);

  return v8(v0 + 160, 0, 0);
}

{
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v0 + 416);
    v8 = *(v0 + 400);
    *(v0 + 328) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v2);
    default argument 1 of Cryptex.personalize(for:persistence:options:)((v0 + 532));
    *(v0 + 533) = *(v0 + 532);
    v9 = (*(*v1 + 248) + **(*v1 + 248));
    v4 = swift_task_alloc();
    *(v0 + 496) = v4;
    *v4 = v0;
    v4[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
    v5 = *(v0 + 392);

    return v9(v0 + 304, v0 + 533, v5);
  }

  else
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 304));
    v3 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 537);
  v3 = *(v0 + 536);
  v4 = *(v0 + 535);
  *(v0 + 528) = *(v0 + 534);
  *(v0 + 529) = v4;
  *(v0 + 530) = v3;
  *(v0 + 531) = v2;
  default argument 0 of Cryptex.install(onto:options:)();
  v7 = (*(*v1 + 264) + **(*v1 + 264));
  v5 = swift_task_alloc();
  *(v0 + 512) = v5;
  *v5 = v0;
  v5[1] = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);

  return v7(v0 + 344, v0 + 528);
}

{
  v2 = *v1;
  *(v2 + 520) = v0;

  __swift_destroy_boxed_opaque_existential_0((v2 + 344));
  if (v0)
  {
    v3 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    v3 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  __swift_destroy_boxed_opaque_existential_0((v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v4 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  else
  {
    v4 = CryptexDevice.personalizeAndInstallBundle(at:personalizeOptions:installOptions:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
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

uint64_t CryptexLocalDevice.readNonce(options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 152) = *a2;
  *(v3 + 149) = *(a2 + 4);
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.readNonce(options:), v5, v4);
}

uint64_t CryptexLocalDevice.readNonce(options:)()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  *(v0 + 88) = 0u;
  v1 = v0 + 88;
  v2 = *(v0 + 149);
  v3 = *(v0 + 152);
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  LODWORD(v38[0]) = v3;
  BYTE4(v38[0]) = v2;
  v41 = CryptexNonceSpec.getDomainAndDescription()();
  object = v41._1._object;
  if (!v41._0.value._rawValue)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      v22 = 0xC000000000;
      goto LABEL_13;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v20 + 4) = -64;
    *v20 = 0;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_2260DF000, v16, v17, "Failed to get nonce domain: %@", v18, 0xCu);
    v22 = 0xC000000000;
    goto LABEL_10;
  }

  countAndFlagsBits = v41._1._countAndFlagsBits;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v37 = v0;
  if (os_log_type_enabled(v6, v7))
  {
    v36 = countAndFlagsBits;
    v8 = *(v0 + 149);
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v10 = 136315394;
    *(v0 + 144) = v9;
    *(v0 + 148) = v8;
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v38);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, object, v38);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_2260DF000, v6, v7, "Reading nonce for spec '%s' => domain '%s'", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA75CB0](v11, -1, -1);
    MEMORY[0x22AA75CB0](v10, -1, -1);
  }

  else
  {
  }

  if (!img4_nonce_domain_copy_nonce())
  {
    v26 = v1 - 56;
    v27 = *(v37 + 149);
    v28 = *(v37 + 152);
    v29 = *(v37 + 16);
    v30 = *(v1 + 16);
    *v26 = *v1;
    *(v26 + 16) = v30;
    *(v26 + 32) = *(v1 + 32);
    *(v26 + 48) = *(v1 + 48);
    v31 = _img4_nonce.data.getter();
    LODWORD(v38[0]) = v28;
    BYTE4(v38[0]) = v27;
    CryptexNonce.init(data:spec:)(v31, v32, v38, v29);
    v33 = *(v37 + 8);
    goto LABEL_14;
  }

  v22 = POSIXErrorCode.init(rawValue:)() & 0x1FFFFFFFFLL | 0x4000000000;
  v16 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  v0 = v37;
  if (os_log_type_enabled(v16, v23))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v24 + 4) = BYTE4(v22);
    *v24 = v22;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v25;
    *v19 = v25;
    _os_log_impl(&dword_2260DF000, v16, v23, "Failed to read nonce: %@", v18, 0xCu);
LABEL_10:
    outlined destroy of CryptexPersonalizationService?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA75CB0](v19, -1, -1);
    MEMORY[0x22AA75CB0](v18, -1, -1);
  }

LABEL_13:

  lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
  swift_allocError();
  *(v34 + 4) = BYTE4(v22);
  *v34 = v22;
  swift_willThrow();
  v33 = *(v0 + 8);
LABEL_14:

  return v33();
}

uint64_t type metadata accessor for CryptexLocalDevice(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexLocalDevice;
  if (!type metadata singleton initialization cache for CryptexLocalDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexLocalDevice.__allocating_init()()
{
  v0 = swift_allocObject();
  CryptexLocalDevice.init()();
  return v0;
}

uint64_t CryptexLocalDevice.init()()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 16) = 0;
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  *&v14[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v13);
  *(v0 + 24) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x7665446C61636F4CLL, 0xEB00000000656369);
  v7 = (v0 + OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_cachedIdentity);
  _s10CryptexKit0A8IdentityVSgWOi0_(v14);
  v8 = v14[7];
  v7[6] = v14[6];
  v7[7] = v8;
  v7[8] = v14[8];
  v9 = v14[3];
  v7[2] = v14[2];
  v7[3] = v9;
  v10 = v14[5];
  v7[4] = v14[4];
  v7[5] = v10;
  v11 = v14[1];
  *v7 = v14[0];
  v7[1] = v11;
  *(v1 + 16) = 0;
  swift_unknownObjectRelease();
  return v1;
}

void static CryptexLocalDevice.activateConnection(_:)(_xpc_connection_s *a1)
{
  v3[4] = closure #1 in static CryptexLocalDevice.activateConnection(_:);
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v3[3] = &block_descriptor_0;
  v2 = _Block_copy(v3);
  xpc_connection_set_event_handler(a1, v2);
  _Block_release(v2);
  xpc_connection_activate(a1);
}

uint64_t closure #1 in static CryptexLocalDevice.activateConnection(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x22AA75EA0](a1);
  result = XPC_TYPE_ERROR.getter();
  if (v6 != result)
  {
    Logger.init()();
    swift_unknownObjectRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_getObjectType();
      v15 = a1;
      swift_unknownObjectRetain();
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2260DF000, v8, v9, "Unexpected XPC: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA75CB0](v11, -1, -1);
      MEMORY[0x22AA75CB0](v10, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t CryptexLocalDevice.__allocating_init(endpoint:)(_xpc_endpoint_s *a1)
{
  v2 = swift_allocObject();
  CryptexLocalDevice.init(endpoint:)(a1);
  return v2;
}

uint64_t CryptexLocalDevice.init(endpoint:)(_xpc_endpoint_s *a1)
{
  v2 = v1;
  v18 = a1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8);
  *(v1 + 16) = 0;
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  *&v20[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v17);
  *(v1 + 24) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x7665446C61636F4CLL, 0xEB00000000656369);
  v8 = (v1 + OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_cachedIdentity);
  _s10CryptexKit0A8IdentityVSgWOi0_(v20);
  v9 = v20[7];
  v8[6] = v20[6];
  v8[7] = v9;
  v8[8] = v20[8];
  v10 = v20[3];
  v8[2] = v20[2];
  v8[3] = v10;
  v11 = v20[5];
  v8[4] = v20[4];
  v8[5] = v11;
  v12 = v20[1];
  *v8 = v20[0];
  v8[1] = v12;
  v13 = xpc_connection_create_from_endpoint(v18);
  aBlock[4] = closure #1 in static CryptexLocalDevice.activateConnection(_:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  aBlock[3] = &block_descriptor_11;
  v14 = _Block_copy(aBlock);
  xpc_connection_set_event_handler(v13, v14);
  _Block_release(v14);
  xpc_connection_activate(v13);
  swift_unknownObjectRelease();
  *(v2 + 16) = v13;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t CryptexLocalDevice.inventoryConn()()
{
  v1[9] = v0;
  v1[10] = type metadata accessor for CryptexError(0);
  v1[11] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice(0);
  v1[12] = lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x2822009F8](CryptexLocalDevice.inventoryConn(), v3, v2);
}

{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    type metadata accessor for SendableXPCObj();
    v2 = swift_unknownObjectRetain();
    v3 = SendableXPCObj.__allocating_init(_:)(v2);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[12];
    v7 = swift_task_alloc();
    v0[15] = v7;
    v8 = type metadata accessor for SendableXPCObj();
    *v7 = v0;
    v7[1] = CryptexLocalDevice.inventoryConn();
    v9 = v0[9];

    return MEMORY[0x2822008A0](v0 + 8, v1, v6, 0x726F746E65766E69, 0xEF29286E6E6F4379, partial apply for closure #1 in CryptexLocalDevice.inventoryConn(), v9, v8);
  }
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = CryptexLocalDevice.inventoryConn();
  }

  else
  {
    v5 = CryptexLocalDevice.inventoryConn();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = xpc_connection_create_from_endpoint(*&v2[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value]);
  v0[6] = closure #1 in static CryptexLocalDevice.activateConnection(_:);
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v0[5] = &block_descriptor_15;
  v4 = _Block_copy(v0 + 2);
  xpc_connection_set_event_handler(v3, v4);
  _Block_release(v4);
  xpc_connection_activate(v3);

  *(v1 + 16) = v3;
  swift_unknownObjectRelease();
  v5 = v0[11];
  if (*(v1 + 16))
  {
    type metadata accessor for SendableXPCObj();
    v6 = swift_unknownObjectRetain();
    v7 = SendableXPCObj.__allocating_init(_:)(v6);

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v5, 0xD00000000000001DLL, 0x8000000226116850, 0xD00000000000001ELL, 0x8000000226116870, 0x726F746E65766E69, 0xEF29286E6E6F4379, 128, v10);
    outlined destroy of CryptexError(v5);
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in CryptexLocalDevice.inventoryConn()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v6, v3);
  aBlock[4] = partial apply for closure #1 in closure #1 in CryptexLocalDevice.inventoryConn();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @guaranteed OS_xpc_object?) -> ();
  aBlock[3] = &block_descriptor_83;
  v9 = _Block_copy(aBlock);

  cryptex_inventory_lookup_endpoint();
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in CryptexLocalDevice.inventoryConn()(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
    v7 = swift_allocError();
    *v8 = a1;
    v15 = v7;
    v9 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a2)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    v12 = swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD000000000000016, 0x80000002261169C0, 0xD00000000000001ELL, 0x8000000226116870, 0x726F746E65766E69, 0xEF29286E6E6F4379, 118, v13);
    outlined destroy of CryptexError(v6);
    v15 = v12;
    goto LABEL_3;
  }

  type metadata accessor for SendableXPCObj();
  v11 = swift_unknownObjectRetain();
  v15 = SendableXPCObj.__allocating_init(_:)(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFErrorRef?, @guaranteed OS_xpc_object?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();
}

uint64_t CryptexLocalDevice.readIdentity()(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.readIdentity(), v4, v3);
}

uint64_t CryptexLocalDevice.readIdentity()()
{
  _img4_chip_instance.init()(v0 + 160);
  if (img4_chip_instantiate())
  {
    v1 = POSIXErrorCode.init(rawValue:)() & 0x1FFFFFFFFLL;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
      swift_allocError();
      *(v6 + 4) = BYTE4(v1);
      *v6 = v1;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      _os_log_impl(&dword_2260DF000, v2, v3, "Failed to read identity from AppleImage4: %@", v4, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v5, -1, -1);
      MEMORY[0x22AA75CB0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type AppleImage4Error and conformance AppleImage4Error();
    swift_allocError();
    *(v8 + 4) = BYTE4(v1);
    *v8 = v1;
    swift_willThrow();
    v9 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 304);
    v11 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v11;
    *(v0 + 144) = *(v0 + 288);
    v12 = *(v0 + 208);
    *(v0 + 48) = *(v0 + 192);
    *(v0 + 64) = v12;
    v13 = *(v0 + 240);
    *(v0 + 80) = *(v0 + 224);
    *(v0 + 96) = v13;
    v14 = *(v0 + 176);
    *(v0 + 16) = *(v0 + 160);
    *(v0 + 32) = v14;
    CryptexIdentity.init(chipInstance:)(v0 + 16, v10);
    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t CryptexLocalDevice.trust(signingService:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for CryptexError(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  type metadata accessor for CryptexTrustOptions(0);
  v3[8] = swift_task_alloc();
  type metadata accessor for CryptexSigningService(0);
  v3[9] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.trust(signingService:options:), v5, v4);
}

uint64_t CryptexLocalDevice.trust(signingService:options:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[3];
  outlined init with copy of CryptexSigningService(v0[2], v2, type metadata accessor for CryptexSigningService);
  outlined init with copy of CryptexSigningService(v3, v1, type metadata accessor for CryptexTrustOptions);
  OpaquePointer.init(from:options:)(v2, v1);
  if (cryptex_signing_service_trust())
  {
    v4 = v0[6];
    v5 = v0[7];
    v6 = POSIXErrorCode.init(rawValue:)();
    *v5 = v6;
    *(v5 + 4) = BYTE4(v6) & 1;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of CryptexSigningService(v5, v4, type metadata accessor for CryptexError);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[6];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      swift_allocError();
      outlined init with copy of CryptexSigningService(v10, v13, type metadata accessor for CryptexError);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CryptexError(v10);
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2260DF000, v7, v8, "Failed to trust signing service: %@", v11, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v12, -1, -1);
      MEMORY[0x22AA75CB0](v11, -1, -1);
    }

    else
    {

      outlined destroy of CryptexError(v10);
    }

    v16 = v0[7];
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexSigningService(v16, v17, type metadata accessor for CryptexError);
    swift_willThrow();
    outlined destroy of CryptexError(v16);

    v15 = v0[1];
  }

  else
  {

    v15 = v0[1];
  }

  return v15();
}

uint64_t CryptexLocalDevice.getInstalledCryptexes()()
{
  v1 = type metadata accessor for POSIXError();
  v0[454] = v1;
  v0[455] = *(v1 - 8);
  v0[456] = swift_task_alloc();
  v0[457] = *(type metadata accessor for CryptexInfo(0) - 8);
  v0[458] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.getInstalledCryptexes(), v3, v2);
}

{
  *(v0 + 3616) = 0u;
  if (_cryptex_copy_list())
  {
    v1 = POSIXErrorCode.init(rawValue:)();
    if ((v1 & 0x100000000) != 0)
    {
      LODWORD(v1) = static POSIXErrorCode.ELAST.getter();
    }

    v2 = *(v0 + 3648);
    v3 = *(v0 + 3640);
    v4 = *(v0 + 3632);
    *(v0 + 3672) = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v3 + 8))(v2, v4);
    goto LABEL_5;
  }

  v7 = *(v0 + 3616);
  if (!v7)
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_5:
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  v8 = *(v0 + 3624);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = *(v0 + 3656);
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v16;
    do
    {
      v11 = *(v0 + 3664);
      memcpy((v0 + 16), v7, 0xE10uLL);
      CryptexInfo.init(infoInternal:)(v0 + 16, v11);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      v14 = *(v0 + 3664);
      *(v16 + 16) = v13 + 1;
      outlined init with take of CryptexInfo(v14, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13);
      v7 += 3600;
      --v8;
    }

    while (v8);
  }

  v15 = *(v0 + 8);

  return v15(v9);
}

uint64_t CryptexLocalDevice.parse<A>(replyXpc:ofType:)@<X0>(uint64_t a2@<X2>, char *a3@<X3>, __int128 *a4@<X8>)
{
  v25 = a3;
  v6 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v24 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Result<>.from<A>(xpc:responseType:)(a2, v25, v33);
  v25 = v15;
  v16 = v24;
  outlined init with copy of CryptexPersonalizationService?(v33, v30, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  if (v32)
  {
    outlined destroy of CryptexPersonalizationService?(v33, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
    v17 = *v31;
    a4[2] = v30[2];
    a4[3] = v17;
    *(a4 + 57) = *&v31[9];
    v19 = v30[0];
    v18 = v30[1];
  }

  else
  {
    outlined init with take of Response(v30, v29);
    outlined init with copy of Response(v29, &v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit8Response_pMd, &_s10CryptexKit8Response_pMR);
    if (swift_dynamicCast())
    {
      (*(v13 + 56))(v12, 0, 1, a2);
      __swift_destroy_boxed_opaque_existential_0(v29);
      outlined destroy of CryptexPersonalizationService?(v33, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
      v21 = *(v13 + 32);
      v22 = v25;
      v21(v25, v12, a2);
      v21(a4, v22, a2);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      type metadata accessor for Result();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v13 + 56))(v12, 1, 1, a2);
    (*(v16 + 8))(v12, v9);
    swift_storeEnumTagMultiPayload();
    static CryptexError.error(_:_:file:function:lineNumber:)(v8, 0xD000000000000017, 0x80000002261168D0, 0xD00000000000001ELL, 0x8000000226116870, 0xD000000000000017, 0x80000002261168B0, 183, v26);
    outlined destroy of CryptexError(v8);
    __swift_destroy_boxed_opaque_existential_0(v29);
    outlined destroy of CryptexPersonalizationService?(v33, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
    v23 = v27[0];
    a4[2] = v26[2];
    a4[3] = v23;
    *(a4 + 57) = *(v27 + 9);
    v19 = v26[0];
    v18 = v26[1];
  }

  *a4 = v19;
  a4[1] = v18;
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v8 = (*(*v4 + 192) + **(*v4 + 192));
  v6 = swift_task_alloc();
  v5[13] = v6;
  *v6 = v5;
  v6[1] = CryptexLocalDevice.sendRequest<A>(_:);

  return v8();
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[15] = a1;
    type metadata accessor for CryptexLocalDevice(0);
    v4[16] = lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v4[17] = v9;
    v4[18] = v8;

    return MEMORY[0x2822009F8](CryptexLocalDevice.sendRequest<A>(_:), v9, v8);
  }
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[14];
  v4 = v2[15];
  v6 = v2[10];
  v5 = v2[11];
  v7 = *&v4[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value];
  v2[19] = v7;
  swift_unknownObjectRetain();

  (*(v5 + 40))(v6, v5);
  v8 = XpcDictCodable.asXPC()(&type metadata for RequestWrapper, &protocol witness table for RequestWrapper);
  v2[20] = v8;
  if (v3)
  {
    outlined destroy of RequestWrapper((v2 + 2));
    swift_unknownObjectRelease();
    v9 = v2[1];

    return v9();
  }

  else
  {
    v11 = v8;
    v12 = v2[16];
    v14 = v2[11];
    v13 = v2[12];
    v15 = v2[10];
    outlined destroy of RequestWrapper((v2 + 2));
    v16 = swift_task_alloc();
    v2[21] = v16;
    v16[2] = v15;
    v16[3] = v14;
    v16[4] = v7;
    v16[5] = v11;
    v16[6] = v13;
    v17 = swift_task_alloc();
    v2[22] = v17;
    swift_getAssociatedTypeWitness();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    v18 = type metadata accessor for Result();
    *v17 = v2;
    v17[1] = CryptexLocalDevice.sendRequest<A>(_:);
    v19 = v2[8];

    return MEMORY[0x2822008A0](v19, v13, v12, 0x75716552646E6573, 0xEF293A5F28747365, partial apply for closure #1 in CryptexLocalDevice.sendRequest<A>(_:), v16, v18);
  }
}

uint64_t CryptexLocalDevice.sendRequest<A>(_:)()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = CryptexLocalDevice.sendRequest<A>(_:);
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = CryptexLocalDevice.sendRequest<A>(_:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a2;
  v19 = a3;
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v10 = type metadata accessor for CheckedContinuation();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a4 + 24);
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a5;
  *(v16 + 3) = a6;
  *(v16 + 4) = a4;
  (*(v11 + 32))(&v16[v15], v13, v10);
  aBlock[4] = partial apply for closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  aBlock[3] = &block_descriptor_63;
  v17 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(v18, v19, v14, v17);
  _Block_release(v17);
}

uint64_t closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  type metadata accessor for SendableXPCObj();
  v15 = swift_unknownObjectRetain();
  v16 = SendableXPCObj.__allocating_init(_:)(v15);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  (*(v9 + 16))(v11, a3, v8);
  v18 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = v22;
  *(v19 + 7) = v16;
  (*(v9 + 32))(&v19[v18], v11, v8);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), v19);
}

uint64_t closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  v9 = type metadata accessor for Result();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)()
{
  v1 = v0[2];
  v0[12] = *(v0[3] + OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value);
  v2 = (*v1 + 224) & 0xFFFFFFFFFFFFLL | 0x7051000000000000;
  v0[13] = *(*v1 + 224);
  v0[14] = v2;
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), v4, v3);
}

{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[7];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1(v2, v3, v3, AssociatedConformanceWitness);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  (*(v3 + 16))(v0[10], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  CheckedContinuation.resume(returning:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of CryptexPersonalizationService?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CryptexPersonalizationService?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of CryptexPersonalizationService?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CryptexPersonalizationService?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t CryptexLocalDevice.uninstallCryptex(withName:version:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = *a3;
  *(v5 + 40) = v4;
  *(v5 + 48) = v6;
  *(v5 + 56) = *a4;
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.uninstallCryptex(withName:version:options:), v8, v7);
}

uint64_t CryptexLocalDevice.uninstallCryptex(withName:version:options:)()
{
  v19 = v0;
  v18[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  LOBYTE(v18[0]) = *(v0 + 56);
  OpaquePointer.init(from:)(v18);
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  if (v1)
  {
    v18[0] = *(v0 + 48);
    CryptexVersion.description.getter();
    v4 = v3;
    String.utf8CString.getter();
    if (v4)
    {
      String.utf8CString.getter();
    }
  }

  else
  {
    String.utf8CString.getter();
  }

  v5 = cryptex_uninstall();
  swift_unknownObjectRelease();

  if (v5)
  {
    v6 = *(v0 + 8);
  }

  else
  {
    v7 = *v2;
    if (*v2)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v8 = swift_allocError();
      *v9 = v7;
    }

    else
    {
      type metadata accessor for CryptexError(0);
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, 255, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      v8 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_2260DF000, v11, v12, "Failed to uninstall cryptex: %@", v13, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v14, -1, -1);
      MEMORY[0x22AA75CB0](v13, -1, -1);
    }

    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t CryptexLocalDevice.lockdown()()
{
  v1[2] = v0;
  v2 = type metadata accessor for POSIXError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for CryptexLocalDevice(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexLocalDevice and conformance CryptexLocalDevice, 255, type metadata accessor for CryptexLocalDevice, &protocol conformance descriptor for CryptexLocalDevice);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexLocalDevice.lockdown(), v4, v3);
}

{
  if (cryptex_lockdown())
  {
    v1 = POSIXErrorCode.init(rawValue:)();
    if ((v1 & 0x100000000) != 0)
    {
      LODWORD(v1) = static POSIXErrorCode.ELAST.getter();
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    *(v0 + 56) = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    _BridgedStoredNSError.init(_:userInfo:)();
    (*(v5 + 16))(v3, v2, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);
    if (v8)
    {
      v23 = *(v0 + 24);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      POSIXError._nsError.getter();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = *(v10 + 8);
      v15(v9, v23);
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_2260DF000, v6, v7, "Failed to lockdown cryptexes: %@", v12, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v13, -1, -1);
      MEMORY[0x22AA75CB0](v12, -1, -1);
    }

    else
    {

      v15 = *(v10 + 8);
      v15(v9, v11);
    }

    v20 = *(v0 + 48);
    v21 = *(v0 + 24);
    POSIXError._nsError.getter();
    swift_willThrow();
    v15(v20, v21);

    v19 = *(v0 + 8);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2260DF000, v16, v17, "Successfully locked down cryptexes", v18, 2u);
      MEMORY[0x22AA75CB0](v18, -1, -1);
    }

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t CryptexLocalDevice.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CryptexLocalDevice.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10CryptexKit18CryptexLocalDevice_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for CryptexDevice.readIdentity() in conformance CryptexLocalDevice(uint64_t a1)
{
  v6 = (*(**v1 + 200) + **(**v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v6(a1);
}

uint64_t protocol witness for CryptexDevice.readNonce(options:) in conformance CryptexLocalDevice(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 144) + **(**v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1, a2);
}

uint64_t CryptexRemoteDevice.readNonce(options:)()
{
  type metadata accessor for CryptexRemoteDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexRemoteDevice and conformance CryptexRemoteDevice, v0, type metadata accessor for CryptexRemoteDevice, &protocol conformance descriptor for CryptexRemoteDevice);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexRemoteDevice.readNonce(options:), v2, v1);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

void CryptexRemoteDevice.__allocating_init(udid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a3;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v9[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void CryptexRemoteDevice.init(udid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  *&v16[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v14);
  *(v3 + 16) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _s10CryptexKit0A8IdentityVSgWOi0_(v16);
  v9 = v16[4];
  *(v3 + 104) = v16[5];
  v10 = v16[7];
  *(v3 + 120) = v16[6];
  *(v3 + 136) = v10;
  *(v3 + 152) = v16[8];
  v11 = v16[0];
  *(v3 + 40) = v16[1];
  v12 = v16[3];
  *(v3 + 56) = v16[2];
  *(v3 + 72) = v12;
  *(v3 + 88) = v9;
  *(v3 + 24) = v11;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CryptexRemoteDevice.readIdentity()(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  type metadata accessor for CryptexRemoteDevice();
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexRemoteDevice and conformance CryptexRemoteDevice, v3, type metadata accessor for CryptexRemoteDevice, &protocol conformance descriptor for CryptexRemoteDevice);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexRemoteDevice.readIdentity(), v5, v4);
}

uint64_t CryptexRemoteDevice.readIdentity()()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = *(v1 + 24);
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v4 = *(v1 + 40);
  *(v0 + 64) = *(v1 + 72);
  *(v0 + 80) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v2;
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v7 = *(v1 + 104);
  *(v0 + 128) = *(v1 + 136);
  *(v0 + 144) = v6;
  *(v0 + 96) = v7;
  *(v0 + 112) = v5;
  if (_s10CryptexKit0A8IdentityVSgWOg(v0 + 16) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v9 = *(v0 + 160);
  *v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v12 = *(v0 + 80);
  v9[3] = *(v0 + 64);
  v9[4] = v12;
  v9[1] = v10;
  v9[2] = v11;
  v13 = *(v0 + 96);
  v14 = *(v0 + 112);
  v15 = *(v0 + 144);
  v9[7] = *(v0 + 128);
  v9[8] = v15;
  v9[5] = v13;
  v9[6] = v14;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t CryptexRemoteDevice.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t protocol witness for CryptexDevice.readIdentity() in conformance CryptexRemoteDevice(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CryptexDevice.readIdentity() in conformance CryptexRemoteDevice;

  return v6(a1);
}

uint64_t protocol witness for CryptexDevice.readIdentity() in conformance CryptexRemoteDevice()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for CryptexDevice.readNonce(options:) in conformance CryptexRemoteDevice(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 104) + **(**v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1, a2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of CryptexSigningService(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10CryptexKit0D4InfoVGMd, &_ss23_ContiguousArrayStorageCy10CryptexKit0D4InfoVGMR);
  v10 = *(type metadata accessor for CryptexInfo(0) - 8);
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
  v15 = *(type metadata accessor for CryptexInfo(0) - 8);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathV9ComponentVGMR);
  v10 = *(type metadata accessor for FilePath.Component() - 8);
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
  v15 = *(type metadata accessor for FilePath.Component() - 8);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CryptexPersonalizationService?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with take of CryptexInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Response(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of Response(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CryptexError and conformance CryptexError(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10CryptexKit0A8IdentityVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of CryptexDevice.readIdentity()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CryptexDevice.readNonce(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata completion function for CryptexLocalDevice(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of CryptexLocalDevice.readNonce(options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of CryptexLocalDevice.inventoryConn()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of CryptexLocalDevice.inventoryConn();

  return v4();
}

uint64_t dispatch thunk of CryptexLocalDevice.inventoryConn()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CryptexLocalDevice.readIdentity()(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v6(a1);
}

uint64_t dispatch thunk of CryptexLocalDevice.trust(signingService:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 208) + **(*v2 + 208));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of CryptexLocalDevice.getInstalledCryptexes()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of CryptexLocalDevice.getInstalledCryptexes();

  return v4();
}

uint64_t dispatch thunk of CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 232) + **(*v4 + 232));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CryptexLocalDevice.uninstallCryptex(withName:version:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 240) + **(*v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CryptexLocalDevice.lockdown()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v4();
}

uint64_t dispatch thunk of CryptexRemoteDevice.readNonce(options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of CryptexRemoteDevice.readIdentity()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = *(type metadata accessor for CheckedContinuation() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(a1, v6, v7, v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)()
{
  v3 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return closure #1 in closure #1 in closure #1 in CryptexLocalDevice.sendRequest<A>(_:)(v8, v9, v10, v6, v7, v0 + v5, v3, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of Cryptex.personalize(for:nonce:options:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in CryptexLocalDevice.inventoryConn()(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMd, &_sScCy10CryptexKit14SendableXPCObjCs5Error_pGMR);

  return closure #1 in closure #1 in CryptexLocalDevice.inventoryConn()(a1, a2);
}

uint64_t CryptexAssetType.name.getter()
{
  v1 = *v0;
  v2 = 0x616D69206B736964;
  v3 = 0x6163207473757274;
  v4 = 0x7420346567616D69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x696C702E6F666E69;
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

uint64_t CryptexAssetType.fileName.getter()
{
  v1 = *v0;
  v2 = 1735222375;
  v3 = 1684239463;
  v4 = 1832152425;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1986491495;
  if (v1 != 1)
  {
    v5 = 1718511975;
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

void CryptexAssetType.rawAssetType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = MEMORY[0x277D82958];
    }

    else
    {
      if (v2 != 4)
      {
        v6 = 0;
        v4 = xmmword_226114090;
        v5 = 0uLL;
        v7 = 0uLL;
        goto LABEL_12;
      }

      v3 = MEMORY[0x277D82968];
    }
  }

  else if (*v1)
  {
    if (v2 == 1)
    {
      v3 = MEMORY[0x277D82960];
    }

    else
    {
      v3 = MEMORY[0x277D82950];
    }
  }

  else
  {
    v3 = MEMORY[0x277D82948];
  }

  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
LABEL_12:
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

CryptexKit::CryptexAssetType_optional __swiftcall CryptexAssetType.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x67616D496B736964 && stringValue._object == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6148656D756C6F76 && object == 0xEA00000000006873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x73696C506F666E69 && object == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6361437473757274 && object == 0xEA00000000006568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x6954346567616D69 && object == 0xEC00000074656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x8000000226116A40 == object)
  {

    v7 = 5;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

Swift::Int CryptexAssetType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t CryptexAssetType.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x67616D496B736964;
  v3 = 0x6361437473757274;
  v4 = 0x6954346567616D69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6148656D756C6F76;
  if (v1 != 1)
  {
    v5 = 0x73696C506F666E69;
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CryptexAssetType()
{
  v1 = *v0;
  v2 = 0x67616D496B736964;
  v3 = 0x6361437473757274;
  v4 = 0x6954346567616D69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6148656D756C6F76;
  if (v1 != 1)
  {
    v5 = 0x73696C506F666E69;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CryptexAssetType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CryptexAssetType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CryptexAsset.__allocating_init(type:file:)(_BYTE *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  Logger.init(category:)(0x4178657470797243, 0xEC00000074657373);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t CryptexAsset.init(type:file:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  Logger.init(category:)(0x4178657470797243, 0xEC00000074657373);
  *(v2 + 16) = v4;
  *(v2 + 24) = a2;
  return v2;
}

id CryptexAsset.data.getter()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = v0[3];
  v14[0] = 0;
  if (![v2 seekToOffset:0 error:v14])
  {
    v5 = v14[0];
    _convertNSErrorToError(_:)();

LABEL_7:
    swift_willThrow();
    return v5;
  }

  v3 = v0;
  v4 = v14[0];
  v5 = v2;
  v6 = NSFileHandle.readToEnd()();
  if (!v1)
  {
    v5 = v6;
    v8 = v7;
    v14[0] = 0;
    v9 = [v2 seekToOffset:0 error:v14];
    v10 = v14[0];
    if (!v9)
    {
      v12 = v14[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v5, v8);
      return v5;
    }

    if (v8 >> 60 != 15)
    {
      v13 = v14[0];
      return v5;
    }

    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    v5 = v3;
    (*(*v3 + 120))(v10);
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  return v5;
}

uint64_t CryptexAsset.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = swift_slowAlloc();
  if (MEMORY[0x22AA74A40]([*(v2 + 24) fileDescriptor], 50, v4))
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2260DF000, v5, v6, "Failed to get path for asset of type %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AA75CB0](v8, -1, -1);
      MEMORY[0x22AA75CB0](v7, -1, -1);
    }

    v12 = type metadata accessor for FilePath();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v14 = String.init(cString:)();
    MEMORY[0x22AA74B40](v14);
    v15 = type metadata accessor for FilePath();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 0, 1, v15);
  }
}

uint64_t CryptexAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  (*(*v1 + 120))(v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of FilePath?(v9);
    v18 = type metadata accessor for URL();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v14, v17, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v3);
    URL.init(filePath:directoryHint:)(v14, v6, a1);
    return (*(v11 + 8))(v17, v10);
  }
}

uint64_t URL.init(filePath:directoryHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = v23 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = String.init(validating:)();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = type metadata accessor for URL();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

uint64_t CryptexAsset.deinit()
{
  v1 = OBJC_IVAR____TtC10CryptexKit12CryptexAsset_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CryptexAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10CryptexKit12CryptexAsset_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexError and conformance CryptexError()
{
  result = lazy protocol witness table cache variable for type CryptexError and conformance CryptexError;
  if (!lazy protocol witness table cache variable for type CryptexError and conformance CryptexError)
  {
    type metadata accessor for CryptexError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexError and conformance CryptexError);
  }

  return result;
}

uint64_t outlined destroy of FilePath?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [CryptexAssetType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CryptexAssetType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CryptexAssetType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10CryptexKit0A9AssetTypeOGMd, &_sSay10CryptexKit0A9AssetTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CryptexAssetType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexAssetType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptexAssetType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for CryptexAsset(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexAsset;
  if (!type metadata singleton initialization cache for CryptexAsset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CryptexAsset(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t CryptexType.init(type:subtype:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Bool __swiftcall CryptexType.isPackage()()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for packageContent != -1)
  {
    swift_once();
  }

  v3 = 3;
  if (!packageContent)
  {
    v3 = 0;
  }

  v4 = 6;
  if (!packageContent)
  {
    v4 = 0;
  }

  return v1 == v3 && v2 == v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptexType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t key path getter for static Errno.current : Errno.Type@<X0>(_DWORD *a1@<X8>)
{
  result = MEMORY[0x22AA74A20]();
  *a1 = result;
  return result;
}

uint64_t valueOrErrno<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v20 = -1;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13 = (*(v9 + 8))(v11, a2);
      if (v12)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v19 = a4;
    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v14)
    {
      if (v15 > 64)
      {
        v20 = -1;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13 = (*(v9 + 8))(v11, a2);
        a4 = v19;
        if (v16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*(v9 + 8))(v11, a2);
      a4 = v19;
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a4 = v19;
      if (v15 >= 64)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = dispatch thunk of BinaryInteger._lowWord.getter();
  if (v13 == -1)
  {
LABEL_14:
    *a4 = MEMORY[0x22AA74A20](v13);
    lazy protocol witness table accessor for type Errno and conformance Errno();
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_13:
  (*(v9 + 16))(a4, a1, a2);
  lazy protocol witness table accessor for type Errno and conformance Errno();
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t nothingOrErrno<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Errno and conformance Errno();
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  valueOrErrno<A>(_:)(a1, a2, &v11[-v8]);
  v12 = a2;
  v13 = a3;
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(protocol witness for Request.checkEntitlement(entitlements:) in conformance RequestTestError, v6, &v14);
  (*(v7 + 8))(v9, v6);
  return v14 | (v15 << 32);
}

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t valueOrErrno<A>(retryOnInterrupt:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, _DWORD *a5@<X8>)
{
  v7 = a1;
  v18 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Errno and conformance Errno();
  v11 = type metadata accessor for Result();
  EnumCaseMultiPayload = MEMORY[0x28223BE20](v11);
  v14 = (&v17 - v13);
  while (1)
  {
    a2(EnumCaseMultiPayload);
    valueOrErrno<A>(_:)(v10, a3, v14);
    (*(v8 + 8))(v10, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v15 = *v14;
    if ((v7 & 1) == 0 || v15 != 4)
    {
      *v18 = v15;
      return swift_storeEnumTagMultiPayload();
    }
  }

  (*(v8 + 32))(v18, v14, a3);
  return swift_storeEnumTagMultiPayload();
}

unint64_t nothingOrErrno<A>(retryOnInterrupt:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  lazy protocol witness table accessor for type Errno and conformance Errno();
  v9 = type metadata accessor for Result();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-v11];
  valueOrErrno<A>(retryOnInterrupt:_:)(a1, a2, a4, &v14[-v11]);
  v15 = a4;
  v16 = a5;
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(protocol witness for Request.checkEntitlement(entitlements:) in conformance RequestTestError, v9, &v17);
  (*(v10 + 8))(v12, v9);
  return v17 | (v18 << 32);
}

uint64_t cryptex_signing_service_flags_t.init(from:)(unsigned __int8 *a1)
{
  v1 = *a1;
  outlined destroy of CryptexTrustOptions(a1);
  return v1;
}

uint64_t outlined destroy of CryptexTrustOptions(uint64_t a1)
{
  v2 = type metadata accessor for CryptexTrustOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

xpc_object_t String.asXPC()(uint64_t a1)
{
  v1 = String.utf8CString.getter();
  v2 = xpc_string_create((v1 + 32));

  return v2;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance String@<X0>(Swift::String *a2@<X8>)
{
  swift_getObjectType();
  v4 = OS_xpc_object.string()();
  result = v4._countAndFlagsBits;
  if (!v5)
  {
    *a2 = v4;
  }

  return result;
}

xpc_object_t protocol witness for XpcCodable.asXPC() in conformance String()
{
  v0 = String.utf8CString.getter();
  v1 = xpc_string_create((v0 + 32));

  return v1;
}

uint64_t CryptexVersion.description.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      v2 += 8;
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v3);
      }

      *(v3 + 2) = v8 + 1;
      v9 = &v3[16 * v8];
      *(v9 + 4) = v4;
      *(v9 + 5) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

CryptexKit::CryptexVersion_optional __swiftcall CryptexVersion.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *(a1._rawValue + 2);
  if (v3 > 5 || !v3)
  {

    a1._rawValue = 0;
  }

  v2->_rawValue = a1._rawValue;
  result.value.components = a1;
  result.is_nil = v4;
  return result;
}

CryptexKit::CryptexVersion_optional __swiftcall CryptexVersion.init(_:)(Swift::String a1)
{
  v2 = v1;
  v32 = 46;
  v33 = 0xE100000000000000;
  v30 = &v32;
  isUniquelyReferenced_nonNull_native = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(4, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v29, a1._countAndFlagsBits, a1._object, &v32);
  v5 = isUniquelyReferenced_nonNull_native;
  v6 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (isUniquelyReferenced_nonNull_native + 56);
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v5 + 16))
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      if (!((v11 ^ v10) >> 14))
      {
        goto LABEL_24;
      }

      v12 = *(v8 - 1);
      v13 = *v8;
      if ((*v8 & 0x1000000000000000) != 0)
      {
        v19 = *v8;
        v20 = *(v8 - 2);
        v21 = *(v8 - 3);
        v27 = *(v8 - 1);

        v15 = specialized _parseInteger<A, B>(ascii:radix:)(v21, v20, v27, v19, 10);
        LOBYTE(v21) = v22;

        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v32 = *(v8 - 1);
          v33 = v13 & 0xFFFFFFFFFFFFFFLL;
          v14 = &v32;
        }

        else if ((v12 & 0x1000000000000000) != 0)
        {
          v14 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v28 = *(v8 - 3);
          v23 = *v8;
          v24 = *(v8 - 2);
          v25 = *(v8 - 1);
          v14 = _StringObject.sharedUTF8.getter();
          v12 = v25;
          v10 = v28;
          v11 = v24;
          v13 = v23;
        }

        v15 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Su_SsTG5SiTf1nnc_nTf4xnn_n(v14, v10, v11, v12, v13, 10);
        v31 = v16 & 1;
        if (v16)
        {
LABEL_24:

          goto LABEL_25;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      ++v7;
      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = v15;
      v8 += 4;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_21:

    v26 = *(v9 + 16);
    if (v26 >= 6 || !v26)
    {
LABEL_25:

      v9 = 0;
    }

    *v2 = v9;
  }

  result.value.components._rawValue = isUniquelyReferenced_nonNull_native;
  result.is_nil = v4;
  return result;
}

uint64_t static CryptexVersion.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSu_Tt1g5(uint64_t result, uint64_t a2)
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

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
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
        v19 = String.subscript.getter();
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

        v14 = String.index(after:)();
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
        v18 = String.index(after:)();
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
          v7 = String.subscript.getter();
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

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
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
      result = _StringObject.sharedUTF8.getter();
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

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

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
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
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

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = MEMORY[0x22AA74D20](15, a1 >> 16);
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

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Su_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
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
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
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
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
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

  result = String.UTF8View._foreignDistance(from:to:)();
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