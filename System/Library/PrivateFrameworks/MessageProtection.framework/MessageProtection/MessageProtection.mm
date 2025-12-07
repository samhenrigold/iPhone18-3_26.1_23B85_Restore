uint64_t SecMPPublicIdentityCopyFromPrivate(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 48) publicIdentity];
  v3 = [v2 asRef];

  return v3;
}

uint64_t SecMPPublicIdentityGetTypeID()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SecMPPublicIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDSingleton;
  if (SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDOnce, block);
  }

  return SecMPPublicIdentityGetTypeID_sSecMPPublicIdentityGetTypeIDSingleton;
}

BOOL SecMPPIAppendSerialization(uint64_t a1, __CFData *a2)
{
  v3 = [*(a1 + 32) identityData];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);

  return v3 != 0;
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_22B406230()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B40627C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22B4063AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B406504(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22B4065B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B406654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_22B40678C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_22B4068F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_22B4069B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B406A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_22B406B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_22B406BF8()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22B406DF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TetraRatchetState(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = type metadata accessor for P256.Signing.PublicKey();
    if (*(*(v10 - 8) + 84) == a2)
    {
      v7 = v10;
      v8 = *(v10 - 8);
      v9 = a3[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      if (*(*(v11 - 8) + 84) != a2)
      {
        v14 = *(a1 + a3[9]);
        if (v14 >= 2)
        {
          return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v7 = v11;
      v8 = *(v11 - 8);
      v9 = a3[7];
    }
  }

  v12 = *(v8 + 48);

  return v12(a1 + v9, a2, v7);
}

uint64_t sub_22B406F64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TetraRatchetState(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for P256.Signing.PublicKey();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 1;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_22B407170(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_22B4072FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22B407488(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TetraECDHKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 8) >> 60;
        v17 = ((4 * v16) & 0xC) == 0;
        v18 = ((4 * v16) & 0xC | (v16 >> 2)) ^ 0xF;
        if (v17)
        {
          return 0;
        }

        else
        {
          return v18;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22B407600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TetraECDHKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection14TetraKEM768KeyVSgMd, &_s17MessageProtection14TetraKEM768KeyVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection15TetraKEM1024KeyVSgMd, &_s17MessageProtection15TetraKEM1024KeyVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        v17 = (a1 + a4[7]);
        *v17 = 0;
        v17[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22B407778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
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

    return (v10 + 1);
  }
}

uint64_t sub_22B407840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreO21InternalSwiftProtobuf4EnumAadEP8rawValuexSgSi_tcfCTW_0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreO21InternalSwiftProtobuf4EnumAadEP8rawValueSivgTW_0()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *_s17MessageProtection30TetraPB_PrivateKeyBackingStoreOSYAASY8rawValuexSg03RawJ0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOSYAASY8rawValue03RawJ0QzvgTW_0(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOSQAASQ2eeoiySbx_xtFZTW_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17MessageProtection30TetraPB_PrivateKeyBackingStoreOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22B407A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_22B407B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_22B407C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TetraSessionState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22B407CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TetraSessionState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B407DA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _s17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOs0fE0AAsAGP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x79654B706573;
  }

  else
  {
    return 0x79654B7061;
  }
}

uint64_t sub_22B407EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricRatchet(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B407F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricRatchet(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B407F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TetraOutgoingKeyContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22B408080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TetraOutgoingKeyContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22B408188()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

void outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

SecKeyRef SecMWCreateEphemeralDeviceIdentity(const __CFAllocator *a1, CFErrorRef *a2)
{
  valuePtr = 256;
  v4 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  v12 = CFDictionaryCreateForCFTypes(a1, v5, v6, v7, v8, v9, v10, v11, *MEMORY[0x277CDBFD0], *MEMORY[0x277CBED10]);
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, v13, v14, v15, v16, v17, v18, v19, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  RandomKey = SecKeyCreateRandomKey(MutableForCFTypesWith, a2);
  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return RandomKey;
}

CFDataRef SecMWCreateSessionSalt(const __CFAllocator *a1, CFErrorRef *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    return CFDataCreate(a1, bytes, 16);
  }

  if (!a2)
  {
    return 0;
  }

  v4 = CFErrorCreate(*MEMORY[0x277CBECE8], @"SecRandomCopyBytes", -1, 0);
  result = 0;
  *a2 = v4;
  return result;
}

CFDataRef SecMWCreateSessionSeed(const __CFAllocator *a1, CFErrorRef *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, bytes))
  {
    return CFDataCreate(a1, bytes, 32);
  }

  if (!a2)
  {
    return 0;
  }

  v4 = CFErrorCreate(*MEMORY[0x277CBECE8], @"SecRandomCopyBytes", -1, 0);
  result = 0;
  *a2 = v4;
  return result;
}

CFDictionaryRef CFDictionaryCreateForCFTypes(CFAllocatorRef allocator, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v23 = &a10;
  v11 = 0;
  if (a9)
  {
    do
    {
      v11 += 2;
      v12 = v23;
      v23 += 2;
    }

    while (v12[1]);
  }

  v13 = v11 >> 1;
  v24 = &a9;
  Mutable = CFDictionaryCreateMutable(allocator, v11 >> 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v11)
  {
    v16 = *MEMORY[0x277CBEEE8];
    do
    {
      v17 = v24;
      v18 = *v24;
      v24 += 2;
      v19 = v17[1];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v16;
      }

      CFDictionarySetValue(v15, v18, v20);
      --v13;
    }

    while (v13);
  }

  Copy = CFDictionaryCreateCopy(allocator, v15);
  CFRelease(v15);
  return Copy;
}

__CFDictionary *CFDictionaryCreateMutableForCFTypesWith(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      CFDictionarySetValue(Mutable, v11, *v14);
      v12 = v14 + 1;
      v14 += 2;
      v11 = *v12;
    }

    while (*v12);
  }

  return Mutable;
}

id MessageProtectionLog(uint64_t a1)
{
  if (MessageProtectionLog_onceToken != -1)
  {
    MessageProtectionLog_cold_1();
  }

  v2 = MessageProtectionLog_log;

  return v2;
}

uint64_t __MessageProtectionLog_block_invoke()
{
  MessageProtectionLog_log = os_log_create("com.apple.messageprotection", "MessageProtection");

  return MEMORY[0x2821F96F8]();
}

void MPLogAndAssignCFError(uint64_t a1, uint64_t *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a2 = [v7 errorWithDomain:@"com.apple.messageprotection" code:a1 userInfo:v8];

    v10 = MessageProtectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignCFError_cold_1();
    }
  }

  else
  {
    v10 = MessageProtectionLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignCFError_cold_2();
    }
  }
}

void MPLogAndAssignError(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a2 = [v7 errorWithDomain:@"com.apple.messageprotection" code:a1 userInfo:v8];

    v10 = MessageProtectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignCFError_cold_1();
    }
  }

  else
  {
    v10 = MessageProtectionLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MPLogAndAssignError_cold_2();
    }
  }
}

uint64_t SecMPCreateError(int a1, CFIndex a2, const __CFString *a3, __CFError *cf, CFErrorRef *a5)
{
  userInfoKeys[2] = *MEMORY[0x277D85DE8];
  if (a5 && !*a5)
  {
    v9 = *MEMORY[0x277CBECE8];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
    if (cf)
    {
      v11 = CFErrorCopyDescription(cf);
      CFStringAppend(MutableCopy, @" \\ ");
      CFStringAppend(MutableCopy, v11);
      CFRelease(v11);
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = *MEMORY[0x277CBEE78];
    userInfoKeys[0] = *MEMORY[0x277CBEE30];
    userInfoKeys[1] = v13;
    v14 = &sLocalErrorDomain;
    userInfoValues[0] = MutableCopy;
    userInfoValues[1] = cf;
    if (a1)
    {
      v14 = MEMORY[0x277CBEE40];
    }

    *a5 = CFErrorCreateWithUserInfoKeysAndValues(v9, *v14, a2, userInfoKeys, userInfoValues, v12);
    CFRelease(MutableCopy);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_22B40A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B40A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *SecMPPIEncryptionSpace(uint64_t a1, int a2)
{
  v3 = [*(a1 + 32) encryptionSize];
  v4 = -44;
  if (!a2)
  {
    v4 = -43;
  }

  v5 = v3 + v4;
  if (v3 >= 0x2A)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t SecMPPIRecreateSignature(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x2318925A0]();
  v9 = *v8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v19[0] = a1 + a2;
  v15 = ccder_decode_sequence_tl();
  v16 = mp_decode_forced_uint(v9, v12, v15, v19[0]);
  mp_decode_forced_uint(v9, v14, v16, v19[0]);
  v17 = *a3 + *a4;
  ccder_encode_integer();
  ccder_encode_integer();
  result = ccder_encode_constructed_tl();
  *a3 = result;
  *a4 = (v17 - result) & ~((v17 - result) >> 63);
  return result;
}

uint64_t mp_decode_forced_uint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_decode_tl();
  if (result)
  {
    v5 = result;
    if ((ccn_read_uint() & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t SecMPVerifyAndExposeMessage(const __CFData *a1, uint64_t a2, uint64_t a3, const __CFData *a4, CFErrorRef *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (CFDataGetLength(a1))
          {
            BytePtr = CFDataGetBytePtr(a1);
            v11 = CFDataGetLength(a4);
            v12 = v11;
            if (*BytePtr != 2)
            {
              SecMPCreateError(0, -8, @"Unknown format of message to verify and expose", 0, a5);
LABEL_67:
              CFDataSetLength(a4, v12);
              return 0;
            }

            v58 = v11;
            v57 = CFDataGetLength(a4);
            v13 = *MEMORY[0x277CBECE8];
            Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
            v15 = CFDataGetLength(a1);
            if (v15 <= 3)
            {
              v16 = @"SecMPVerifyMessageContents: Incoming length is too short.";
LABEL_34:
              MPLogAndAssignCFError(1, a5, v16);
              cf = 0;
              goto LABEL_35;
            }

            v19 = v15;
            v63 = v15;
            v62 = 0;
            v20 = [*(a3 + 48) encryptionSize];
            if (v20 < 0)
            {
              v16 = @"SecMPVerifyMessageContents: Inconsistent encryptionSize.";
              goto LABEL_34;
            }

            v21 = v20;
            v22 = CFDataGetBytePtr(a1);
            v61 = v22;
            CFDataAppendBytes(Mutable, v22, 1);
            v23 = SecMPPublicIdentityCopyFromPrivate(0, a3);
            if (!v23)
            {
              v16 = @"SecMPVerifyMessageContents: Unable to get public identity from private of the receiver.";
              goto LABEL_34;
            }

            v55 = v21;
            v24 = Mutable;
            v25 = v23;
            SecMPPIAppendCanonicalHash(a2, v24);
            cf = v25;
            v26 = v25;
            Mutable = v24;
            SecMPPIAppendCanonicalHash(v26, v24);
            v61 = v22 + 1;
            v63 = v19 - 1;
            v27 = readSize(&v61, &v63, &v62, a5);
            if (v27)
            {
LABEL_35:
              v40 = 0;
              ReferenceFromRange = 0;
              v37 = 0;
              v35 = 0;
              v32 = 0;
              goto LABEL_36;
            }

            v28 = v55;
            if (v55 > v62 || v63 < v62 + 60)
            {
              v48 = @"SecMPVerifyMessageContents: Insufficient size remaining.";
            }

            else
            {
              v29 = v63 - v62;
              v30 = v19 - v29;
              if (v30 >= 0)
              {
                v31 = CFDataGetBytePtr(a1);
                bytesDeallocator = *MEMORY[0x277CBED00];
                v32 = CFDataCreateWithBytesNoCopy(v13, &v31[v30], v29, *MEMORY[0x277CBED00]);
                v33 = v62;
                v34 = CFDataGetBytePtr(a1);
                v52 = v33;
                v35 = CFDataCreateWithBytesNoCopy(v13, v34 + 3, v33, bytesDeallocator);
                v36 = CFDataGetBytePtr(v35);
                v37 = CFDataCreateWithBytesNoCopy(v13, v36, v55, bytesDeallocator);
                length = SecMPFIEncryptionSpace(a3);
                if (length < 0)
                {
                  MPLogAndAssignCFError(1, a5, @"SecMPVerifyMessageContents: Insufficient public key encryption space.");
                }

                else
                {
                  bytesDeallocatora = CFDataGetBytePtr(v35);
                  v51 = CFDataGetLength(v35);
                  v50 = CFDataGetBytePtr(v32);
                  v38 = CFDataGetLength(v32);
                  v27 = SecMPPIVerifySignature(a2, bytesDeallocatora, v51, v50, v38, a5);
                  if (v27)
                  {
                    v56 = v52 - v55;
                    ReferenceFromRange = CFDataCreateReferenceFromRange(v13, v35, v28, v52 - v28);
                    v40 = CFDataCreateMutable(v13, 0);
                    v27 = SecMPFIDecrypt(a3, v37, v40, &length, a5);
                    if (v27)
                    {
                      if (v56 < 1)
                      {
                        goto LABEL_46;
                      }

                      v41 = length;
                      v42 = [cf[4] encryptionSize];
                      v43 = v42 - 44;
                      if (v42 < 0x2A)
                      {
                        v43 = 0;
                      }

                      if (v41 == v43)
                      {
                        v44 = 1;
                      }

                      else
                      {
LABEL_46:
                        v44 = 0;
                      }

                      CFDataSetLength(v40, length);
                      v49 = CFDataGetBytePtr(ReferenceFromRange);
                      CFDataAppendBytes(v40, v49, v56);
                      v27 = SecMPDecryptUsingCTREmbeddedKey(v40, Mutable, a4, v44, a5);
                      v45 = v27 == 0;
                      if (!a5)
                      {
                        goto LABEL_48;
                      }

LABEL_37:
                      v27 = *a5;
                      if (*a5)
                      {
                        v46 = CFCopyDescription(v27);
                        v47 = MessageProtectionLog(v46);
                        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v65 = Mutable;
                          v66 = 2112;
                          v67 = v46;
                          _os_log_impl(&dword_22B404000, v47, OS_LOG_TYPE_DEFAULT, "Message Decryption: sender/receiver hash: %@ status: %@", buf, 0x16u);
                        }

LABEL_50:
                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if (v32)
                        {
                          CFRelease(v32);
                        }

                        if (v35)
                        {
                          CFRelease(v35);
                        }

                        if (v37)
                        {
                          CFRelease(v37);
                        }

                        if (v40)
                        {
                          CFRelease(v40);
                        }

                        if (ReferenceFromRange)
                        {
                          CFRelease(ReferenceFromRange);
                        }

                        if (cf)
                        {
                          CFRelease(cf);
                        }

                        if (v45)
                        {
                          return 1;
                        }

                        CFDataSetLength(a4, v57);
                        v12 = v58;
                        goto LABEL_67;
                      }

LABEL_48:
                      v46 = MessageProtectionLog(v27);
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v65 = Mutable;
                        _os_log_impl(&dword_22B404000, v46, OS_LOG_TYPE_DEFAULT, "Message Decryption: sender/receiver hash: %@ status: success", buf, 0xCu);
                      }

                      goto LABEL_50;
                    }

LABEL_36:
                    v45 = 0;
                    if (!a5)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_37;
                  }
                }

                v40 = 0;
                ReferenceFromRange = 0;
                goto LABEL_36;
              }

              v48 = @"SecMPVerifyMessageContents: Insufficient size remaining for the signature.";
            }

            MPLogAndAssignCFError(1, a5, v48);
            goto LABEL_35;
          }

          v17 = @"SecMPVerifyAndExposeMessage: Missing incoming data.";
        }

        else
        {
          v17 = @"SecMPVerifyAndExposeMessage: Missing exposedMessageContents DataRef.";
        }
      }

      else
      {
        v17 = @"SecMPVerifyAndExposeMessage: Missing receiver.";
      }
    }

    else
    {
      v17 = @"SecMPVerifyAndExposeMessage: Missing sender.";
    }
  }

  else
  {
    v17 = @"SecMPVerifyAndExposeMessage: Missing incoming message.";
  }

  MPLogAndAssignCFError(1, a5, v17);
  return 0;
}

CFDataRef CFDataCreateReferenceFromRange(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, CFIndex a4)
{
  BytePtr = CFDataGetBytePtr(theData);
  v8 = *MEMORY[0x277CBED00];

  return CFDataCreateWithBytesNoCopy(a1, &BytePtr[a3], a4, v8);
}

uint64_t SecMPDecryptUsingCTREmbeddedKey(const __CFData *a1, const __CFData *a2, const __CFData *a3, int a4, CFErrorRef *a5)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a3);
  v12 = CFDataGetLength(a1);
  v13 = 4294966387;
  if (v12 < 17 || !BytePtr)
  {
    goto LABEL_10;
  }

  CFDataIncreaseLength(a3, v12 - 16);
  CFDataGetMutableBytePtr(a3);
  ccaes_ctr_crypt_mode();
  ccctr_one_shot();
  if (a4 && (!CFDataGetBytePtr(a2) || CFDataGetLength(a2) < 1 || SecMPVerifyIntegrityTag(a3, a2, BytePtr)))
  {
    v13 = 4294967246;
LABEL_10:
    CFDataSetLength(a3, Length);
    SecMPCreateError(0, v13, @"Failed to Decrypt message", 0, a5);
    return v13;
  }

  return 0;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void SecMPLogError(__CFError *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = CFErrorCopyUserInfo(a1);
    Code = CFErrorGetCode(a1);
    Domain = CFErrorGetDomain(a1);
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CBEE30]);
    v6 = CFDictionaryGetValue(v2, *MEMORY[0x277CBEE78]);
    if (v6)
    {
      SecMPLogError(v6);
    }

    CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
    CFStringGetCString(Value, v7, 1024, 0x8000100u);
    syslog(3, "MessageProtection: %s (%ld) -- %s", buffer, Code, v7);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

uint64_t insertSize(uint64_t a1, _WORD *a2, CFErrorRef *a3)
{
  if (a1 > 65534)
  {
    insertSize_cold_1(a3, a2);
    return 4294967246;
  }

  else
  {
    v3 = a1;
    result = 0;
    *a2 = bswap32(v3) >> 16;
  }

  return result;
}

uint64_t appendSize(uint64_t a1, CFMutableDataRef theData, CFErrorRef *a3)
{
  if (a1 > 65534)
  {
    appendSize_cold_1(a3, theData);
    return 4294967246;
  }

  else
  {
    *bytes = bswap32(a1) >> 16;
    CFDataAppendBytes(theData, bytes, 2);
    return 0;
  }
}

uint64_t appendOneByteSize(uint64_t a1, CFMutableDataRef theData, CFErrorRef *a3)
{
  if (a1 > 254)
  {
    appendOneByteSize_cold_1(a3, theData);
    return 4294967246;
  }

  else
  {
    bytes = a1;
    CFDataAppendBytes(theData, &bytes, 1);
    return 0;
  }
}

uint64_t readSize(uint64_t *a1, unint64_t *a2, _WORD *a3, CFErrorRef *a4)
{
  if (a1 && a2 && a3 && (v4 = *a2 - 2, *a2 >= 2))
  {
    v5 = 0;
    v6 = *a1 + 2;
    *a3 = bswap32(**a1) >> 16;
    *a2 = v4;
    *a1 = v6;
  }

  else
  {
    readSize_cold_1(a4, a2);
    return 4294967246;
  }

  return v5;
}

uint64_t appendPublicOctetsAndSize(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  SecKeyCopyPublicBytes();
  appendPublicOctetsAndSize_cold_1(a3);
  return 4294941021;
}

void appendLongLong(__CFData *a1, unint64_t a2)
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = bswap64(a2);
  CFDataAppendBytes(a1, v2, 8);
}

uint64_t readSize_0(uint64_t *a1, unint64_t *a2, _WORD *a3, CFErrorRef *a4)
{
  if (a1 && a2 && a3 && (v4 = *a2 - 2, *a2 >= 2))
  {
    v5 = 0;
    v6 = *a1 + 2;
    *a3 = bswap32(**a1) >> 16;
    *a2 = v4;
    *a1 = v6;
  }

  else
  {
    readSize_cold_1_0(a4);
    return 4294967246;
  }

  return v5;
}

uint64_t SecMPComputePaddingForTransport(unint64_t a1, int a2, CFErrorRef *a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v6 = @"Invalid input size";
    v7 = -7;
LABEL_12:
    SecMPCreateError(0, v7, v6, 0, a3);
    return -1;
  }

  if (a2 == 1)
  {
    Multiple = 64;
  }

  else
  {
    if (a2 != 2)
    {
      v6 = @"Invalid message type";
      v7 = -20;
      goto LABEL_12;
    }

    Multiple = 196;
  }

  if (Multiple < a1)
  {
    Multiple = nextMultiple(a1, 0x10uLL);
  }

  v8 = Multiple >= a1;
  result = Multiple - a1;
  if (!v8)
  {
    v6 = @"Invalid handling";
    v7 = -6;
    goto LABEL_12;
  }

  return result;
}

unint64_t nextMultiple(uint64_t a1, unint64_t a2)
{
  if (__CFADD__(a2, a1))
  {
    v3 = MessageProtectionLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      nextMultiple_cold_1(a1, a2, v3);
    }

    __assert_rtn("nextMultiple", "SecMessageLengthHiding.m", 52, "0");
  }

  return (a1 + a2 - 1) / a2 * a2;
}

uint64_t SecMPComputePaddingForStorage(unint64_t a1, int a2, CFErrorRef *a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v9 = @"Invalid input size";
    v10 = -7;
LABEL_16:
    SecMPCreateError(0, v10, v9, 0, a3);
    return -1;
  }

  v4 = a2 - 1;
  if ((a2 - 1) >= 3)
  {
    v9 = @"Invalid message type";
    v10 = -20;
    goto LABEL_16;
  }

  v6 = qword_22B48D5F0[v4];
  Multiple = v6;
  if (v6 < a1)
  {
    Multiple = qword_22B48D5C0[v4];
    if (Multiple < a1)
    {
      v8 = qword_22B48D5D8[v4];
      if (v8 >= a1)
      {
        v11 = 2 * v6;
        if (2 * v6 <= a1)
        {
          v11 = a1;
        }

        v12 = 1 << -__clz(v11);
        if ((v11 & (v11 - 1)) != 0)
        {
          Multiple = v12;
        }

        else
        {
          Multiple = v11;
        }
      }

      else
      {
        Multiple = nextMultiple(a1, v8);
      }
    }
  }

  v13 = Multiple >= a1;
  result = Multiple - a1;
  if (!v13)
  {
    v9 = @"Invalid handling";
    v10 = -6;
    goto LABEL_16;
  }

  return result;
}

uint64_t SecMPPublicIdentityCreateFromBytes(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:*a2 length:*a3];
  v12 = 0;
  v6 = [SecMessageLegacyPublicIdentity identityWithIdentityData:v5 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 asRef];
  }

  else
  {
    v10 = MessageProtectionLog(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SecMPPublicIdentityCreateFromBytes_cold_1(v8, v10);
    }

    v9 = 0;
    if (a4)
    {
      *a4 = v8;
    }
  }

  return v9;
}

uint64_t SecMPPublicIdentityCreateFromData(int a1, CFDataRef theData, void *a3)
{
  if (!theData)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return SecMPPublicIdentityCreateFromBytes(BytePtr, &BytePtr, &Length, a3);
}

BOOL SecMPPIEqualToBytes(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, *MEMORY[0x277CBED00]);
  Mutable = CFDataCreateMutable(v4, 0);
  SecMPPIAppendSerialization(a1, Mutable);
  if (v5)
  {
    v7 = Mutable == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = CFEqual(v5, Mutable) != 0;
    goto LABEL_10;
  }

  v9 = v5 == Mutable;
  if (v5)
  {
LABEL_10:
    CFRelease(v5);
    if (!Mutable)
    {
      return v9;
    }

    goto LABEL_8;
  }

  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

  return v9;
}

BOOL SecMPPIEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v6 = CFDataCreateMutable(v4, 0);
  SecMPPIAppendSerialization(a1, Mutable);
  SecMPPIAppendSerialization(a2, v6);
  if (Mutable)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = Mutable == v6;
    if (!Mutable)
    {
      if (!v6)
      {
        return v8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = CFEqual(Mutable, v6) != 0;
  }

  CFRelease(Mutable);
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v8;
}

BOOL SecMPPIAppendCanonicalPublicKey(uint64_t a1, __CFData *a2)
{
  v3 = [*(a1 + 32) identityData];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);

  return v3 != 0;
}

uint64_t SecMPPIVerifySignature(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t *a6)
{
  if (a5)
  {
    v9 = *a4;
    if (a5 - 1 == v9)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:a4 + 1 length:*a4];
      v14 = [MEMORY[0x277CBEA90] dataWithBytes:a2 length:a3];
      if ([*(a1 + 32) verifySignature:v13 ofData:v14])
      {
        v15 = 1;
      }

      else
      {
        v22 = a5 + 2;
        v16 = malloc_type_malloc(a5 + 2, 0x77E2E09EuLL);
        if (v16)
        {
          v17 = v16;
          v21 = v16;
          SecMPPIRecreateSignature((a4 + 1), v9, &v21, &v22);
          if (v21)
          {
            v18 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v22];

            v19 = [*(a1 + 32) verifySignature:v18 ofData:v14];
            free(v17);
            if (v19)
            {
              v15 = 1;
            }

            else
            {
              MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Failed to verify signature (primary and replacement signature).");
              v15 = 0;
            }

            v13 = v18;
            goto LABEL_15;
          }

          MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Failed to decode DER of replacement signature.");
          free(v17);
        }

        else
        {
          MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Failed to allocate memory for replacement signature.");
        }

        v15 = 0;
      }

LABEL_15:

      return v15;
    }
  }

  MPLogAndAssignCFError(1, a6, @"SecMPPIVerifySignature: Incorrect signature size or start.");
  return 0;
}

BOOL SecMPPIAppendPKIEncryptedData(uint64_t a1, uint64_t a2, __CFData *a3)
{
  v4 = [*(a1 + 32) encryptData:a2];
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v5);
    CFDataAppendBytes(a3, BytePtr, Length);
  }

  else
  {
    v8 = MessageProtectionLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SecMPPIAppendPKIEncryptedData_cold_1(v8);
    }
  }

  return v5 != 0;
}

uint64_t SecMPFullIdentityGetTypeID()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SecMPFullIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDSingleton;
  if (SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDOnce, block);
  }

  return SecMPFullIdentityGetTypeID_sSecMPFullIdentityGetTypeIDSingleton;
}

uint64_t __SecMPFullIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t __SecMPPublicIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SecMPFullIdentityCreate()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

uint64_t SecMPFullIdentityCreateWithAccessProtClass()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

uint64_t SecMPFullIdentityCreateWithProtClass()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

uint64_t SecMPFullIdentityCreateFromData(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v4 = [SecMessageLegacyFullIdentity identityWithDataRepresentation:a2 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = MessageProtectionLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SecMPFullIdentityCreateFromData_cold_1(v6);
    }

    *a3 = v6;
  }

  v8 = [v4 asRef];

  return v8;
}

uint64_t SecMPFIAppendSerialization(uint64_t a1, __CFData *a2, CFErrorRef *a3)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (v4)
  {
    SecMPCreateError(0, -7, @"NULL parameter passed", 0, a3);
  }

  else
  {
    v7 = *(a1 + 48);
    v14 = 0;
    v8 = [v7 dataRepresentationWithError:&v14];
    v9 = v14;
    v10 = v9;
    if (a3 && v9)
    {
      *a3 = v9;
    }

    BytePtr = CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v8);
    CFDataAppendBytes(a2, BytePtr, Length);
  }

  return v5;
}

char *SecMPFIEncryptionSpace(uint64_t a1)
{
  v1 = [*(a1 + 48) encryptionSize];
  if (v1 >= 0x2A)
  {
    return (v1 - 42);
  }

  else
  {
    return 0;
  }
}

BOOL SecMPFIDecrypt(uint64_t a1, uint64_t a2, __CFData *a3, void *a4, void *a5)
{
  v8 = *(a1 + 48);
  v15 = 0;
  v9 = [v8 decryptMessage:a2 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v9);
    CFDataAppendBytes(a3, BytePtr, Length);
    *a4 = [(__CFData *)v9 length];
  }

  else
  {
    *a5 = v10;
  }

  return v9 != 0;
}

uint64_t SecMPFullIdentityCreateWithAccess()
{
  v0 = +[SecMessageLegacyFullIdentity identity];
  v1 = [v0 asRef];

  return v1;
}

BOOL SecMPFIAppendSignature(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 48);
  v14 = 0;
  v7 = [v6 signData:a2 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = a3;
    v13 = [v7 length];
    [v10 appendBytes:&v13 length:1];
    [v10 appendData:v7];
  }

  else
  {
    v11 = MessageProtectionLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SecMPFIAppendSignature_cold_1(v9);
    }

    if (a4)
    {
      *a4 = v9;
    }
  }

  return v7 != 0;
}

void SecMPFIAppendPublicHash(uint64_t a1, __CFData *a2)
{
  v6 = [*(a1 + 48) publicIdentity];
  v3 = [v6 publicIDHash];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);
}

void SecMPFIAppendCanonicalPublicHash(uint64_t a1, __CFData *a2)
{
  v6 = [*(a1 + 48) publicIdentity];
  v3 = [v6 publicIDCanonicalHash];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  CFDataAppendBytes(a2, BytePtr, Length);
}

void SecMPPIAppendCanonicalHash(uint64_t a1, __CFData *a2)
{
  theData = [*(a1 + 32) publicIDCanonicalHash];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  CFDataAppendBytes(a2, BytePtr, Length);
}

_SecMPFullIdentity *SecMPFullIdentityCreateFromRefs(uint64_t a1, uint64_t a2)
{
  v2 = [[SecMessageLegacyFullIdentity alloc] initWithEncryptionSecKey:a2 signingSecKey:a1];
  v3 = [@"Testmessage" dataUsingEncoding:4];
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [(SecMessageLegacyFullIdentity *)v2 asRef];
  v7 = [(SecMessageLegacyFullIdentity *)v2 publicIdentity];
  v8 = [v7 asRef];

  if ((SecMPSignAndProtectMessage(v3, v6, v8, v4, 0) & 1) == 0)
  {
    SecMPFullIdentityCreateFromRefs_cold_1();
  }

  if ((SecMPVerifyAndExposeMessage(v4, v8, v6, v5, 0) & 1) == 0)
  {
    SecMPFullIdentityCreateFromRefs_cold_2();
  }

  if (([(__CFData *)v5 isEqualToData:v3]& 1) == 0)
  {
    SecMPFullIdentityCreateFromRefs_cold_3();
  }

  CFRelease(v8);

  return v6;
}

void sub_22B412D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22B413BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 160), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_22B41504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t MPSecondaryEncryptionDisabled()
{
  if (get_value(@"SecondaryRegistrationDisabled"))
  {
    return 1;
  }

  return get_value(@"SecondaryEncryptionDisabled");
}

uint64_t get_value(void *a1)
{
  v1 = MEMORY[0x277CBEBD0];
  v2 = a1;
  v3 = [[v1 alloc] initWithSuiteName:@"com.apple.ids"];
  v4 = [v3 BOOLForKey:v2];

  return v4;
}

void set_value(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.ids"];
  [v5 setBool:a2 forKey:v4];
}

uint64_t SecMPFullIdentityObjCCreateOTRSessionWithFlags(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [a1 signingKey];
  [v6 secKeyRef];

  v7 = [v5 signingKey];

  [v7 secKeyRef];
  v8 = SecOTRFullIdentityCreateFromSecKeyRef();
  v9 = SecOTRPublicIdentityCreateFromSecKeyRef();
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = SecOTRSessionCreateFromIDAndFlags();
    CFRelease(v8);
LABEL_6:
    CFRelease(v10);
    return v12;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v12 = 0;
  result = 0;
  if (v10)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t SecMPFullIdentityCreateOTRSessionWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 48) signingKey];
  v6 = [v5 secKeyRef];
  v7 = SecOTRFullIdentityCreateFromSecKeyRef();

  v8 = [*(a2 + 32) signingKey];
  v9 = [v8 secKeyRef];
  v10 = SecOTRPublicIdentityCreateFromSecKeyRef();

  if (v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = SecOTRSessionCreateFromIDAndFlags();
    CFRelease(v7);
LABEL_6:
    CFRelease(v10);
    return v12;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v12 = 0;
  result = 0;
  if (v10)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_22B419704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22B41A044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B41A990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B41B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B41B9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose((v26 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B41BD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t NGMPBLegacyKeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NGMPBLegacyKey__signingKey;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NGMPBLegacyKey__encryptionKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBDevicePreKeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v30[0] = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v30[0];
          goto LABEL_51;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 24;
LABEL_44:
          v26 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_51;
        }

LABEL_38:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v23 = objc_alloc_init(NGMPBP256Key);
      objc_storeStrong((a1 + 16), v23);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !NGMPBP256KeyReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadData();
        v15 = 32;
        goto LABEL_44;
      case 5:
        v14 = PBReaderReadData();
        v15 = 40;
        goto LABEL_44;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          LOBYTE(v30[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v30[0] & 0x7F) << v16;
          if ((v30[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_48:
        *(a1 + 48) = v22;
        goto LABEL_51;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBFullDeviceIdentityReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NGMPBP256Key);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NGMPBP256KeyReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NGMPBDevicePreKey);
    [a1 addPrekeys:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NGMPBDevicePreKeyReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBOuterMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        v14 = &OBJC_IVAR___NGMPBOuterMessage__encryptedPayload;
        if (v13 == 1)
        {
          goto LABEL_27;
        }

        if (v13 == 2)
        {
          v14 = &OBJC_IVAR___NGMPBOuterMessage__ephemeralPubKey;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = &OBJC_IVAR___NGMPBOuterMessage__signature;
            goto LABEL_27;
          case 4:
            v14 = &OBJC_IVAR___NGMPBOuterMessage__tetraMessage;
            goto LABEL_27;
          case 0x63:
            v14 = &OBJC_IVAR___NGMPBOuterMessage__keyValidator;
LABEL_27:
            v15 = PBReaderReadData();
            v16 = *v14;
            v17 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_28;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBPublicDeviceIdentityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBPublicDevicePrekeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v22 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v22;
          goto LABEL_33;
        }

        if (v13 != 4)
        {
LABEL_24:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_33;
        }

        v14 = PBReaderReadData();
        v15 = 32;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_33:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBP256KeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NGMPBInnerMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadData();
        v22 = 32;
LABEL_36:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_41;
      }

      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_40:
      *(a1 + 8) = v20;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v21 = PBReaderReadData();
      v22 = 24;
    }

    else
    {
      if (v13 != 99)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v21 = PBReaderReadData();
      v22 = 16;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x28223BE20](a1);
    return SymmetricKey.withUnsafeBytes<A>(_:)();
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v3 = MEMORY[0x231891960](0xD000000000000018, 0x800000022B494B90);
    [v2 initWithDomain:v3 code:0 userInfo:0];

    return swift_willThrow();
  }
}

void closure #1 in closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _DWORD *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = a10;
  v28[2] = *MEMORY[0x277D85DE8];
  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v28, 0, 14);
      goto LABEL_15;
    }

    v25 = a10;
    v26 = a7;
    v27 = a8;
    v18 = *(a3 + 16);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
      goto LABEL_13;
    }

    a8 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
    v20 = __DataStorage._offset.getter();
    v21 = v18 - v20;
    if (!__OFSUB__(v18, v20))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v28[0] = a3;
    LOWORD(v28[1]) = a4;
    BYTE2(v28[1]) = BYTE2(a4);
    BYTE3(v28[1]) = BYTE3(a4);
    BYTE4(v28[1]) = BYTE4(a4);
    BYTE5(v28[1]) = BYTE5(a4);
LABEL_15:
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(a5, a6, a1, a2, v28, a7, a9, a10);
    goto LABEL_16;
  }

  v22 = a3;
  if (a3 > a3 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = v16;
  v26 = a7;
  v27 = a8;
  v19 = __DataStorage._bytes.getter();
  if (v19)
  {
    v23 = __DataStorage._offset.getter();
    v21 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
LABEL_12:
      v19 += v21;
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
  }

LABEL_13:
  MEMORY[0x231890D50]();
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(a5, a6, a1, a2, v19, v26, a9, v25);
  a8 = v27;
LABEL_16:
  *a8 = v24;
}

uint64_t variable initialization expression of TetraRatchetState.rootKey@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void *specialized static CoreCryptoAESCTRImpl.crypt(key:data:IV:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = *MEMORY[0x277D85DE8];
  v13 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      goto LABEL_39;
    }

    v14 = HIDWORD(a2) - a2;
  }

LABEL_11:
  *&v46 = specialized Data.init(count:)(v14);
  *(&v46 + 1) = v17;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v46, 0);
  v49 = v46;
  v18 = ccaes_ctr_crypt_mode();
  v43[2] = a1;
  v43[3] = a4;
  v43[4] = a5;
  v43[5] = a6;
  v43[6] = &v49;
  v43[7] = MEMORY[0x28223BE20](v18);
  v19 = specialized Data.withUnsafeBytes<A>(_:)(partial apply for closure #1 in static CoreCryptoAESCTRImpl.crypt(key:data:IV:), v43, a2, a3);
  if (!v6)
  {
    v20 = v19;
    if (v19)
    {
      v21 = type metadata accessor for CryptoKitError();
      lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      swift_allocError();
      *v22 = v20;
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC51C8], v21);
      swift_willThrow();
      outlined consume of Data._Representation(v49, *(&v49 + 1));
      return v20;
    }

    v23 = *(&v49 + 1);
    v24 = v49;
    v47 = MEMORY[0x277CC9318];
    v48 = MEMORY[0x277CC9300];
    v46 = v49;
    v25 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x277CC9318]);
    v26 = *v25;
    v27 = v25[1];
    v28 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v28 != 2)
      {
        memset(v44, 0, 14);
        outlined copy of Data._Representation(v24, v23);
        v29 = v44;
        v30 = v44;
        goto LABEL_36;
      }

      v31 = *(v26 + 16);
      v32 = *(v26 + 24);
      outlined copy of Data._Representation(v24, v23);
      v23 = v27 & 0x3FFFFFFFFFFFFFFFLL;
      v24 = __DataStorage._bytes.getter();
      if (v24)
      {
        v23 = v27 & 0x3FFFFFFFFFFFFFFFLL;
        v33 = __DataStorage._offset.getter();
        v26 = v31 - v33;
        if (__OFSUB__(v31, v33))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v24 += v26;
      }

      v34 = __OFSUB__(v32, v31);
      v35 = v32 - v31;
      if (!v34)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v28)
    {
      v44[0] = *v25;
      LOWORD(v44[1]) = v27;
      BYTE2(v44[1]) = BYTE2(v27);
      BYTE3(v44[1]) = BYTE3(v27);
      BYTE4(v44[1]) = BYTE4(v27);
      BYTE5(v44[1]) = BYTE5(v27);
      outlined copy of Data._Representation(v24, v23);
      v29 = v44;
      v30 = v44 + BYTE6(v27);
LABEL_36:
      closure #1 in Data.init<A>(_:)(v29, v30, &v45);
      v20 = v45;
      __swift_destroy_boxed_opaque_existential_1(&v46);
      outlined consume of Data._Representation(v49, *(&v49 + 1));
      return v20;
    }

    v36 = v26;
    v37 = v26 >> 32;
    v35 = v37 - v36;
    if (v37 >= v36)
    {
      outlined copy of Data._Representation(v24, v23);
      v24 = __DataStorage._bytes.getter();
      if (!v24)
      {
LABEL_28:
        v39 = MEMORY[0x231890D50]();
        if (v39 >= v35)
        {
          v40 = v35;
        }

        else
        {
          v40 = v39;
        }

        v41 = (v40 + v24);
        if (v24)
        {
          v30 = v41;
        }

        else
        {
          v30 = 0;
        }

        v29 = v24;
        goto LABEL_36;
      }

      v38 = __DataStorage._offset.getter();
      if (!__OFSUB__(v36, v38))
      {
        v24 += v36 - v38;
        goto LABEL_28;
      }

LABEL_41:
      __break(1u);
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = swift_unexpectedError();
  __break(1u);
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

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
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

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      if (a3)
      {
        if (a5)
        {
          ccctr_one_shot();
          return;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    outlined consume of Data._Representation(v10, v11);
    *a1 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *(v10 + 16);
    if (!__DataStorage._bytes.getter())
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!__OFSUB__(v15, __DataStorage._offset.getter()))
    {
      MEMORY[0x231890D50]();
      if (a3)
      {
        if (a5)
        {
          ccctr_one_shot();
          *a1 = v10;
          a1[1] = v14 | 0x8000000000000000;
          return;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v12)
  {
    outlined consume of Data._Representation(v10, v11);
    LOWORD(v22) = v11;
    BYTE2(v22) = BYTE2(v11);
    HIBYTE(v22) = BYTE3(v11);
    LOBYTE(v23) = BYTE4(v11);
    HIBYTE(v23) = BYTE5(v11);
    if (a3)
    {
      if (a5)
      {
        ccctr_one_shot();
        *a1 = v10;
        a1[1] = v22 | ((v23 | (BYTE6(v11) << 16)) << 32);
        return;
      }

      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_33;
  }

  v16 = v11 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v10, v11);
  *a1 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v10 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v18 < v10)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v10, __DataStorage._offset.getter()))
    {
LABEL_31:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v19;
    v18 = v10 >> 32;
  }

  if (v18 < v10)
  {
    goto LABEL_28;
  }

  if (!__DataStorage._bytes.getter())
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFSUB__(v10, __DataStorage._offset.getter()))
  {
    goto LABEL_29;
  }

  MEMORY[0x231890D50]();
  if (!a3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a5)
  {
    ccctr_one_shot();

    *a1 = v10;
    a1[1] = v16 | 0x4000000000000000;
    return;
  }

LABEL_41:
  __break(1u);
}

void type metadata accessor for SecKeyRef(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for TetraLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, TetraLogger);
  __swift_project_value_buffer(v0, TetraLogger);
  return Logger.init(subsystem:category:)();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

dispatch_semaphore_t one-time initialization function for conversationLock()
{
  result = dispatch_semaphore_create(1);
  conversationLock = result;
  return result;
}

NSObject *closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for TetraSessionStates(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static os_log_type_t.debug.getter();
  result = MessageProtectionLog(v14);
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = result;
  os_log(_:dso:log:_:_:)(v14, &dword_22B404000, result, "Tetra Conversation Lock: Locking.", 33, 2, MEMORY[0x277D84F90]);

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v17 = conversationLock;
  OS_dispatch_semaphore.wait()();

  v18 = static os_log_type_t.debug.getter();
  result = MessageProtectionLog(v18);
  if (!result)
  {
    goto LABEL_20;
  }

  v19 = result;
  os_log(_:dso:log:_:_:)(v18, &dword_22B404000, result, "Tetra Conversation Lock: Locked.", 32, 2, MEMORY[0x277D84F90]);

  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v43, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TetraSessionStates?(v9, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    lazy protocol witness table accessor for type TetraCommitmentError and conformance TetraCommitmentError();
    v20 = swift_allocError();
    *v21 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  outlined init with take of TetraRatchetOuterMessage(v9, v13, type metadata accessor for TetraSessionStates);
  if ((TetraSessionStates.discardMessageKeyOnSessionStates(ephemeralECDHPublicKey:messageIndex:)(a4, a5) & 1) == 0)
  {
    lazy protocol witness table accessor for type TetraCommitmentError and conformance TetraCommitmentError();
    v20 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
    outlined destroy of TetraOuterMessageType(v13, type metadata accessor for TetraSessionStates);
LABEL_12:
    v23 = static os_log_type_t.error.getter();
    v24 = v23;
    result = MessageProtectionLog(v23);
    if (result)
    {
      v25 = result;
      if (os_log_type_enabled(result, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44[0] = v27;
        *v26 = 136315394;
        v28 = [v43 base64EncodedStringWithOptions_];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v44);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v33 = Error.localizedDescription.getter();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v44);

        *(v26 + 14) = v35;
        _os_log_impl(&dword_22B404000, v25, v24, "Failed to commit updated session state for %s because of error: %s.", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231892DF0](v27, -1, -1);
        MEMORY[0x231892DF0](v26, -1, -1);
      }

      v36 = static os_log_type_t.debug.getter();
      result = MessageProtectionLog(v36);
      if (result)
      {
        v37 = result;
        os_log(_:dso:log:_:_:)(v36, &dword_22B404000, result, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

        v38 = conversationLock;
        OS_dispatch_semaphore.signal()();

        return 0;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v43, v13, 0);
  v39 = static os_log_type_t.debug.getter();
  result = MessageProtectionLog(v39);
  if (result)
  {
    v40 = result;
    os_log(_:dso:log:_:_:)(v39, &dword_22B404000, result, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

    v41 = conversationLock;
    OS_dispatch_semaphore.signal()();

    outlined destroy of TetraOuterMessageType(v13, type metadata accessor for TetraSessionStates);
    return 1;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v18 = a2;
    v19 = a3;
    v9 = MEMORY[0x277CC9318];
    v16 = MEMORY[0x277CC9318];
    v17 = MEMORY[0x277CC9300];
    v14 = a4;
    v15 = a5;
  }

  else
  {
    v18 = a4;
    v19 = a5;
    v9 = MEMORY[0x277CC9318];
    v16 = MEMORY[0x277CC9318];
    v17 = MEMORY[0x277CC9300];
    v14 = a2;
    v15 = a3;
  }

  v10 = __swift_project_boxed_opaque_existential_1(&v14, v9);
  v11 = *v10;
  v12 = v10[1];
  outlined copy of Data._Representation(a2, a3);
  outlined copy of Data._Representation(a4, a5);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v12, &v18);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v18;
}

void static TetraAPI.open(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:theirIdentity:signedBy:tetraVersion:ourPrekeys:ourSigningPublicKeyCompactRepresentation:decryptionBlock:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, unint64_t a8, void *a9, void *a10, unint64_t a11, void *a12, uint64_t a13, void *a14, int a15, unint64_t a16, uint64_t a17, void (*a18)(void, void, void, void, void, void), uint64_t a19)
{
  v490 = a7;
  v480 = a5;
  v485 = a3;
  v486 = a4;
  v483 = a1;
  v484 = a2;
  v487 = a10;
  v496 = *MEMORY[0x277D85DE8];
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  MEMORY[0x28223BE20](v443);
  v446 = &v437 - v21;
  v22 = type metadata accessor for TetraRatchetState(0);
  MEMORY[0x28223BE20](v22 - 8);
  v455 = (&v437 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v459 = type metadata accessor for P256.Signing.PublicKey();
  v456 = *(v459 - 1);
  MEMORY[0x28223BE20](v459);
  v460 = &v437 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = type metadata accessor for TetraSessionState(0);
  v445 = *(v457 - 8);
  v25 = MEMORY[0x28223BE20](v457);
  v450 = &v437 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v449 = &v437 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v451 = (&v437 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v453 = (&v437 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v454 = (&v437 - v34);
  MEMORY[0x28223BE20](v33);
  v452 = (&v437 - v35);
  v468 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v467 = *(v468 - 8);
  v36 = MEMORY[0x28223BE20](v468);
  v442 = &v437 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = v37;
  MEMORY[0x28223BE20](v36);
  v462 = &v437 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v444 = &v437 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v458 = (&v437 - v43);
  MEMORY[0x28223BE20](v42);
  v466 = &v437 - v44;
  v472 = type metadata accessor for TetraSessionStates(0);
  v471 = *(v472 - 8);
  v45 = MEMORY[0x28223BE20](v472);
  v464 = &v437 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v465 = &v437 - v48;
  MEMORY[0x28223BE20](v47);
  v474 = &v437 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v469 = &v437 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v447 = &v437 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v448 = &v437 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v470 = &v437 - v58;
  MEMORY[0x28223BE20](v57);
  v478 = (&v437 - v59);
  v473 = type metadata accessor for TetraRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v473);
  v481 = &v437 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v61 - 8);
  v476 = &v437 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = type metadata accessor for TetraOuterMessageType(0);
  v63 = MEMORY[0x28223BE20](v482);
  v479 = &v437 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v477 = &v437 - v66;
  MEMORY[0x28223BE20](v65);
  v488 = &v437 - v67;
  v68 = [a14 compactRepresentation];
  v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(v490, a8, a9, v69, v71, v487, a11, a12, v72, v73);
  v76 = v75;
  v78 = v77;
  outlined consume of Data._Representation(v72, v74);
  outlined consume of Data._Representation(v69, v71);

  v79 = v76(0);
  v81 = v80;

  v82.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v79, v81);
  v83 = static os_log_type_t.info.getter();
  v475 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v84 = static OS_os_log.default.getter();
  v85 = os_log_type_enabled(v84, v83);
  v489 = a14;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v487 = v76;
    v88 = v87;
    *&v493 = v87;
    *v86 = 136315138;
    v89 = [(objc_class *)v82.super.isa base64EncodedStringWithOptions:0];
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = a6;
    isa = v82.super.isa;
    v93 = v78;
    v95 = v94;

    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v95, &v493);
    v78 = v93;
    v82.super.isa = isa;
    a6 = v91;

    *(v86 + 4) = v96;
    _os_log_impl(&dword_22B404000, v84, v83, "Decrypting for conversationID: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    v97 = v88;
    v76 = v487;
    MEMORY[0x231892DF0](v97, -1, -1);
    MEMORY[0x231892DF0](v86, -1, -1);
  }

  v98 = static os_log_type_t.debug.getter();
  v99 = MessageProtectionLog(v98);
  v100 = v488;
  if (!v99)
  {
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  v101 = v99;
  v490 = v82.super.isa;
  os_log(_:dso:log:_:_:)(v98, &dword_22B404000, v99, "Tetra Conversation Lock: Locking.", 33, 2, MEMORY[0x277D84F90]);

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v102 = a6;
  v103 = conversationLock;
  OS_dispatch_semaphore.wait()();

  v104 = static os_log_type_t.debug.getter();
  v105 = MessageProtectionLog(v104);
  if (!v105)
  {
LABEL_291:
    __break(1u);
  }

  v106 = v105;
  v107 = a18;
  v108 = a19;
  v109 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)(v104, &dword_22B404000, v105, "Tetra Conversation Lock: Locked.", 32, 2, MEMORY[0x277D84F90]);

  v110 = v76;
  v111 = v76(1);
  v113 = v112;

  v114 = 0;
  parseTetraOuterMessage(serializedData:authenticatedData:signedBy:onSessionWithDST:)(v483, v484, v485, v486, v489, v111, v113, v100);
  v487 = v110;
  v485 = a16;
  LODWORD(v484) = a15;
  outlined consume of Data._Representation(v111, v113);
  v494 = &type metadata for MessageProtectionFeatureFlags;
  v495 = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags();
  LOBYTE(v493) = 3;
  LOBYTE(v113) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v493);
  v486 = v102;
  v115 = v490;
  v116 = v100;
  if (v113)
  {
    v117 = v477;
    outlined init with copy of TetraOuterMessageType(v100, v477, type metadata accessor for TetraOuterMessageType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v118 = a13;
      v119 = v476;
      outlined init with take of TetraRatchetOuterMessage(v117, v476, type metadata accessor for TetraNoRatchetOuterMessage);
      v120 = static os_log_type_t.info.getter();
      v121 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v121, v120))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v440 = a18;
        v124 = v123;
        *&v493 = v123;
        *v122 = 136315138;
        v125 = [(objc_class *)v115 base64EncodedStringWithOptions:0];
        v441 = a19;
        v126 = v78;
        v127 = v125;
        v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v129 = v115;
        v131 = v130;

        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v131, &v493);
        v115 = v129;
        v118 = a13;
        v116 = v488;

        *(v122 + 4) = v132;
        v78 = v126;
        v108 = v441;
        _os_log_impl(&dword_22B404000, v121, v120, "Decrypting TetraNoRatchet for conversationID: %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v124);
        v133 = v124;
        v107 = v440;
        MEMORY[0x231892DF0](v133, -1, -1);
        v134 = v122;
        v119 = v476;
        MEMORY[0x231892DF0](v134, -1, -1);
      }

      v135 = v487;
      if (v118)
      {

        specialized static TetraAPI.openNoRatchet(tetraOuterMessage:sessionDST:guid:authenticatedData:ourPrekeys:theirIdentity:tetraVersion:signedBy:decryptionBlock:)(v119, v135, v78, v480, v486, v485, v118, v484, v489, v107, v108);

        v136 = static os_log_type_t.debug.getter();
        v137 = MessageProtectionLog(v136);
        if (v137)
        {
          v138 = v137;
          os_log(_:dso:log:_:_:)(v136, &dword_22B404000, v137, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

          v139 = conversationLock;
          OS_dispatch_semaphore.signal()();

          outlined destroy of TetraOuterMessageType(v119, type metadata accessor for TetraNoRatchetOuterMessage);
          outlined destroy of TetraOuterMessageType(v116, type metadata accessor for TetraOuterMessageType);
          goto LABEL_287;
        }

        goto LABEL_297;
      }

LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    outlined destroy of TetraOuterMessageType(v117, type metadata accessor for TetraOuterMessageType);
  }

  v140 = v479;
  outlined init with copy of TetraOuterMessageType(v100, v479, type metadata accessor for TetraOuterMessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of TetraOuterMessageType(v140, type metadata accessor for TetraOuterMessageType);
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v141 = swift_allocError();
    *v142 = 0;
    swift_willThrow();
    v114 = v141;
    v143 = v100;
    v144 = type metadata accessor for TetraOuterMessageType;
    goto LABEL_275;
  }

  outlined init with take of TetraRatchetOuterMessage(v140, v481, type metadata accessor for TetraRatchetOuterMessage);
  if (one-time initialization token for sharedInstance != -1)
  {
    goto LABEL_75;
  }

LABEL_18:
  v145 = static TetraDBManager.sharedInstance;
  v146 = v478;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v115, v478);
  if (v114)
  {
    outlined destroy of TetraOuterMessageType(v116, type metadata accessor for TetraOuterMessageType);
    goto LABEL_274;
  }

  v476 = v145;
  v147 = v470;
  outlined init with copy of TetraSessionStates?(v146, v470, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v148 = *(v471 + 48);
  v439 = v471 + 48;
  v438 = v148;
  if (v148(v147, 1, v472) == 1)
  {
    outlined destroy of TetraSessionStates?(v147, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  }

  else
  {
    outlined init with take of TetraRatchetOuterMessage(v147, v474, type metadata accessor for TetraSessionStates);
    v492 = 0;
    v154 = v473;
    v155 = v481;
    if (*(v481 + *(v473 + 36) + 8) >> 60 == 15)
    {
      goto LABEL_28;
    }

    v156 = (v481 + *(v473 + 40));
    if (v156[1] >> 60 == 15)
    {
      goto LABEL_28;
    }

    v441 = v108;
    v440 = v107;
    v157 = v473;
    v158 = v465;
    outlined init with copy of TetraOuterMessageType(v474, v465, type metadata accessor for TetraSessionStates);
    v159 = v467;
    v160 = v155 + *(v157 + 28);
    v161 = v466;
    v162 = v468;
    (*(v467 + 16))(v466, v160, v468);
    (*(v159 + 56))(v161, 0, 1, v162);
    v163 = v156[1];
    if (v163 >> 60 == 15)
    {
      goto LABEL_310;
    }

    v164 = TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(v161, *v156, v163);
    outlined destroy of TetraSessionStates?(v161, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    outlined destroy of TetraOuterMessageType(v158, type metadata accessor for TetraSessionStates);
    v155 = v481;
    v107 = v440;
    v108 = v441;
    v115 = v490;
    v154 = v473;
    if (v164)
    {
LABEL_28:
      v165 = v155 + *(v154 + 40);
      v166 = *v165;
      v167 = *(v165 + 8);

      v168 = TetraSessionStates.openMessage(_:prekeysHash:sessionDST:theirTetraVersion:didRatchet:)(v155, v166, v167, v487, v78, v484, &v492);
      v171 = v170;
      v173 = v172;
      v485 = v168;
      v487 = v174;
      v489 = v78;

      v175 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      if (v173 >> 60 != 15)
      {
        v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v108;
        v178 = v115;
        v180 = v179;
        outlined copy of Data?(v171, v173);
        outlined copy of Data._Representation(v171, v173);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v493 = v175;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v173, v176, v180, isUniquelyReferenced_nonNull_native);
        outlined consume of Data?(v171, v173);
        v115 = v178;
        v108 = v177;

        v175 = v493;
      }

      TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v115, v474, v492);
      v441 = v108;
      v440 = v107;
      v194 = static os_log_type_t.debug.getter();
      v195 = MessageProtectionLog(v194);
      if (v195)
      {
        v196 = v195;
        os_log(_:dso:log:_:_:)(v194, &dword_22B404000, v195, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

        v197 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v198 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v175);

        v199 = *(v473 + 28);
        v486 = *(v481 + 24);
        v200 = v467;
        v201 = v462;
        v202 = v468;
        (*(v467 + 16))(v462, v481 + v199, v468);
        v203 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v204 = (v461 + v203 + 7) & 0xFFFFFFFFFFFFFFF8;
        v205 = swift_allocObject();
        v206 = v490;
        *(v205 + 16) = v463;
        *(v205 + 24) = v206;
        (*(v200 + 32))(v205 + v203, v201, v202);
        *(v205 + v204) = v486;
        v207 = v206;
        v208 = v485;
        v209 = v487;
        v440(v485, v487, v198, 0, closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)partial apply, v205);

        outlined consume of Data._Representation(v208, v209);
        outlined consume of Data?(v171, v173);

        outlined destroy of TetraOuterMessageType(v474, type metadata accessor for TetraSessionStates);
        outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraOuterMessageType);
        outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        v210 = v481;
LABEL_55:
        outlined destroy of TetraOuterMessageType(v210, type metadata accessor for TetraRatchetOuterMessage);
        goto LABEL_287;
      }

LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
      return;
    }

    outlined destroy of TetraOuterMessageType(v474, type metadata accessor for TetraSessionStates);
    v114 = 0;
  }

  v149 = (v481 + *(v473 + 40));
  v150 = v149[1];
  if (v150 >> 60 == 15)
  {
    v151 = v481;
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v152 = swift_allocError();
    *v153 = 0;
LABEL_31:
    swift_willThrow();
    v114 = v152;
    outlined destroy of TetraOuterMessageType(v116, type metadata accessor for TetraOuterMessageType);
    outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    v144 = type metadata accessor for TetraRatchetOuterMessage;
    v143 = v151;
    goto LABEL_275;
  }

  if (*(v481 + *(v473 + 36) + 8) >> 60 == 15)
  {
    v151 = v481;
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v152 = swift_allocError();
    *v169 = 1;
    goto LABEL_31;
  }

  v182 = *v149;
  *&v493 = v109;
  v116 = v485;
  if (v485 >> 62)
  {
    v402 = v182;
    if ((v485 & 0x8000000000000000) != 0)
    {
      v403 = v485;
    }

    else
    {
      v403 = v485 & 0xFFFFFFFFFFFFFF8;
    }

    v109 = v150;
    v404 = MEMORY[0x231891D10](v403);
    v150 = v109;
    v116 = v485;
    v183 = v404;
    v182 = v402;
  }

  else
  {
    v183 = *((v485 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v477 = v182;
  v479 = v150;
  outlined copy of Data._Representation(v182, v150);
  v440 = v107;
  if (!v183)
  {
    v193 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v470 = v114;
  v114 = 0;
  v483 = v116 & 0xC000000000000001;
  v482 = (v116 & 0xFFFFFFFFFFFFFF8);
  v441 = v108;
  do
  {
    if (v483)
    {
      v185 = MEMORY[0x231891C80](v114, v116);
    }

    else
    {
      if (v114 >= v482[2])
      {
        goto LABEL_74;
      }

      v185 = *(v116 + 8 * v114 + 32);
    }

    v109 = v185;
    v108 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_18;
    }

    v186 = [v185 tetraRegistration];
    if (v186)
    {
      v187 = v186;
      v188 = v78;
      v189 = TetraRegistration.computeKeysHash()();
      v191 = v190;
      v192 = specialized static Data.== infix(_:_:)(v189, v190, v477, v479);
      outlined consume of Data._Representation(v189, v191);

      if (v192)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v78 = v188;
      v115 = v490;
      v107 = v440;
      v116 = v485;
    }

    else
    {
    }

    ++v114;
    v184 = v108 == v183;
    v108 = v441;
  }

  while (!v184);
  v193 = v493;
  v114 = v470;
LABEL_57:
  v211 = v488;
  if (v193 < 0 || (v193 & 0x4000000000000000) != 0)
  {
    if (!MEMORY[0x231891D10](v193))
    {
      goto LABEL_272;
    }

    if (MEMORY[0x231891D10](v193) != 1)
    {
      goto LABEL_271;
    }

LABEL_61:
    v485 = v193;
    if ((v193 & 0xC000000000000001) != 0)
    {
      v213 = MEMORY[0x231891C80](0, v193);
      goto LABEL_64;
    }

    if (*(v193 + 16))
    {
      v213 = *(v193 + 32);
LABEL_64:
      v214 = v213;
      v215 = [(objc_class *)v489 compactRepresentation];
      v216 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = v217;

      *&v493 = v216;
      *(&v493 + 1) = v218;
      v219 = v460;
      P256.Signing.PublicKey.init<A>(compactRepresentation:)();
      if (v114)
      {
        outlined destroy of TetraOuterMessageType(v211, type metadata accessor for TetraOuterMessageType);
        outlined consume of Data?(v477, v479);

        outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined destroy of TetraOuterMessageType(v481, type metadata accessor for TetraRatchetOuterMessage);
        v107 = v440;
        goto LABEL_276;
      }

      v489 = v78;
      v220 = v467;
      v221 = *(v467 + 16);
      v469 = *(v473 + 28);
      v222 = v458;
      v223 = v468;
      v474 = v467 + 16;
      v473 = v221;
      v221(v458, &v469[v481], v468);
      v470 = 0;
      v224 = *(v220 + 56);
      v224(v222, 0, 1, v223);
      v225 = v214;
      v226 = v219;
      v227 = v457;
      v228 = v454;
      v483 = *(v457 + 28);
      v224((v454 + v483), 1, 1, v223);
      v229 = v227;
      v230 = (v228 + v227[8]);
      v231 = v477;
      v232 = v479;
      v482 = v230;
      *v230 = v477;
      v230[1] = v232;
      v233 = v456;
      v234 = *(v456 + 16);
      v475 = v229[6];
      v234(v228 + v475, v226, v459);
      *(v228 + v229[9]) = 1;
      outlined copy of Data?(v231, v232);
      v235 = v225;
      v236 = v455;
      v237 = v470;
      TetraRatchetState.init(asReceiverWithFullPrekey:)(v235, v455);
      if (v237)
      {

        outlined consume of Data?(v231, v232);
        outlined destroy of TetraSessionStates?(v458, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v238 = v237;
        v239 = *(v233 + 8);
        v240 = v459;
        v239(v460, v459);
        outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraOuterMessageType);
        v239(v228 + v475, v240);
        v114 = v238;
        outlined destroy of TetraSessionStates?(v228 + v483, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        outlined consume of Data._Representation(*v482, v482[1]);
        outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined destroy of TetraOuterMessageType(v481, type metadata accessor for TetraRatchetOuterMessage);
        v244 = v486;
        v107 = v440;
        goto LABEL_277;
      }

      v482 = v235;
      (*(v233 + 8))(v460, v459);
      outlined init with take of TetraRatchetOuterMessage(v236, v228 + v229[5], type metadata accessor for TetraRatchetState);
      if (v484 >= 0xF)
      {
        v241 = 15;
      }

      else
      {
        v241 = v484;
      }

      *v228 = v241;
      outlined assign with take of P256.KeyAgreement.PublicKey?(v458, v228 + v483, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v242 = v452;
      outlined init with take of TetraRatchetOuterMessage(v228, v452, type metadata accessor for TetraSessionState);
      v492 = 0;
      *v242 = v241;
      *(v242 + v229[9]) = 1;
      v243 = v489;

      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v481, v487, v243, &v492);
      v460 = v245;
      v464 = v246;
      v475 = v247;
      v483 = v248;
      v470 = 0;
      v441 = v108;

      v249 = v478;
      v250 = v448;
      outlined init with copy of TetraSessionStates?(v478, v448, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      v251 = v472;
      v252 = v438(v250, 1, v472);
      outlined destroy of TetraSessionStates?(v250, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      if (v252 == 1)
      {
        outlined destroy of TetraSessionStates?(v249, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined init with copy of TetraOuterMessageType(v242, v249, type metadata accessor for TetraSessionState);
        *(v249 + *(v251 + 20)) = 0;
        *(v249 + *(v251 + 24)) = MEMORY[0x277D84F90];
        (*(v471 + 56))(v249, 0, 1, v251);
LABEL_95:
        v274 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v275 = v483;
        if (v483 >> 60 != 15)
        {
          v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v278 = v277;
          v279 = v475;
          outlined copy of Data?(v475, v275);
          outlined copy of Data._Representation(v279, v275);
          v280 = swift_isUniquelyReferenced_nonNull_native();
          *&v493 = v274;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, v275, v276, v278, v280);
          outlined consume of Data?(v279, v275);

          v274 = v493;
        }

        v281 = v447;
        outlined init with copy of TetraSessionStates?(v478, v447, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        if (v438(v281, 1, v472) == 1)
        {
          goto LABEL_328;
        }

        v115 = v490;
        v114 = v470;
        TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v490, v281, v492);
        if (v114)
        {

          outlined consume of Data._Representation(v460, v464);
          outlined consume of Data?(v475, v483);

          outlined consume of Data?(v477, v479);
          outlined destroy of TetraOuterMessageType(v452, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraOuterMessageType);

          outlined destroy of TetraOuterMessageType(v281, type metadata accessor for TetraSessionStates);
          outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          outlined destroy of TetraOuterMessageType(v481, type metadata accessor for TetraRatchetOuterMessage);
          v244 = v486;
          v107 = v440;
          goto LABEL_277;
        }

        outlined destroy of TetraOuterMessageType(v281, type metadata accessor for TetraSessionStates);
        v282 = static os_log_type_t.debug.getter();
        v283 = MessageProtectionLog(v282);
        if (!v283)
        {
          goto LABEL_330;
        }

        v284 = v283;
        os_log(_:dso:log:_:_:)(v282, &dword_22B404000, v283, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

        v285 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v286 = static os_log_type_t.info.getter();
        v287 = v286;
        v288 = MessageProtectionLog(v286);
        if (v288)
        {
          v289 = v288;

          if (os_log_type_enabled(v289, v287))
          {
            v290 = swift_slowAlloc();
            v291 = swift_slowAlloc();
            *&v493 = v291;
            *v290 = 136315138;
            *(v290 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v480, v486, &v493);
            _os_log_impl(&dword_22B404000, v289, v287, "Successfully decrypted %s", v290, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v291);
            MEMORY[0x231892DF0](v291, -1, -1);
            MEMORY[0x231892DF0](v290, -1, -1);
          }

          v292 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v274);

          v293 = v481;
          v294 = *(v481 + 24);
          v295 = v462;
          v296 = v468;
          (v473)(v462, &v469[v481], v468);
          v297 = v467;
          v298 = (*(v467 + 80) + 32) & ~*(v467 + 80);
          v299 = (v461 + v298 + 7) & 0xFFFFFFFFFFFFFFF8;
          v300 = swift_allocObject();
          v301 = v490;
          *(v300 + 16) = v463;
          *(v300 + 24) = v301;
          (*(v297 + 32))(v300 + v298, v295, v296);
          *(v300 + v299) = v294;
          v302 = v301;
          v303 = v460;
          v304 = v464;
          v440(v460, v464, v292, 0, partial apply for closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:), v300);

          outlined consume of Data._Representation(v303, v304);
          outlined consume of Data?(v475, v483);

          outlined consume of Data?(v477, v479);
          outlined destroy of TetraOuterMessageType(v452, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v488, type metadata accessor for TetraOuterMessageType);
          outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          v210 = v293;
          goto LABEL_55;
        }

        goto LABEL_331;
      }

      outlined init with copy of TetraOuterMessageType(v242, v453, type metadata accessor for TetraSessionState);
      if (v438(v249, 1, v251) == 1)
      {
        goto LABEL_329;
      }

      if (specialized static TetraSessionState.== infix(_:_:)(v478, v453))
      {
        outlined assign with copy of TetraSessionState(v453, v478);
LABEL_94:
        TetraSessionStates.cleanupPreviousSessionStates()();
        outlined destroy of TetraOuterMessageType(v453, type metadata accessor for TetraSessionState);
        goto LABEL_95;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
      v253 = (*(v445 + 80) + 32) & ~*(v445 + 80);
      v484 = *(v445 + 72);
      v254 = swift_allocObject();
      *(v254 + 16) = xmmword_22B48D7C0;
      v471 = v253;
      v255 = v478;
      outlined init with copy of TetraOuterMessageType(v478, v254 + v253, type metadata accessor for TetraSessionState);
      v256 = *(v472 + 24);
      *&v493 = v254;

      specialized Array.append<A>(contentsOf:)(v257);
      *(v255 + v256) = v493;

      v258 = v453;
      v259 = outlined assign with copy of TetraSessionState(v453, v255);
      v459 = &v437;
      MEMORY[0x28223BE20](v259);
      v436[2] = v258;
      v465 = v256;
      v260 = *(v255 + v256);
      v261 = v470;
      v262 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in TetraSessionStates.makeDefault(_:), v436, v260);
      v470 = v261;
      if (v263)
      {
        v264 = v260[2];
LABEL_84:
        v268 = *(v478 + v465);
        v269 = v268[2];
        if (v264 > v269)
        {
LABEL_302:
          __break(1u);
          goto LABEL_303;
        }

        if (v264 < 0)
        {
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        if (__OFADD__(v269, v264 - v269))
        {
          goto LABEL_304;
        }

        v270 = swift_isUniquelyReferenced_nonNull_native();
        *(v478 + v465) = v268;
        if (!v270 || v264 > v268[3] >> 1)
        {
          if (v269 <= v264)
          {
            v271 = v264;
          }

          else
          {
            v271 = v269;
          }

          v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v270, v271, 1, v268, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
          *(v478 + v465) = v268;
        }

        v272 = v478;
        v273 = v465;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v264, v269, 0);
        *(v272 + v273) = v268;
        goto LABEL_94;
      }

      v265 = v262 + 1;
      if (__OFADD__(v262, 1))
      {
        goto LABEL_307;
      }

      v267 = v260 + 2;
      v266 = v260[2];
      if (v265 == v266)
      {
        v264 = v262;
        goto LABEL_84;
      }

      v458 = (v467 + 48);
      v454 = (v467 + 32);
      v455 = (v467 + 8);
      v305 = v471 + v484 * v265;
      v306 = v451;
      v264 = v262;
      while (1)
      {
        if (v265 >= v266)
        {
          goto LABEL_295;
        }

        v487 = v260;
        v307 = outlined init with copy of TetraOuterMessageType(v260 + v305, v306, type metadata accessor for TetraSessionState);
        if (*v306 != *v453)
        {
          goto LABEL_218;
        }

        v466 = v264;
        v308 = MEMORY[0x231891720](v307);
        v310 = v309;
        v311 = MEMORY[0x231891720]();
        v313 = v311;
        v314 = v312;
        v315 = v310 >> 62;
        v316 = v312 >> 62;
        if (v310 >> 62 == 3)
        {
          v317 = 0;
          v318 = v308;
          if (!v308 && v310 == 0xC000000000000000 && v312 >> 62 == 3)
          {
            v317 = 0;
            if (!v311 && v312 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v319 = 0;
              v320 = 0xC000000000000000;
              goto LABEL_142;
            }
          }
        }

        else
        {
          v318 = v308;
          if (v315 > 1)
          {
            if (v315 == 2)
            {
              v322 = *(v308 + 16);
              v321 = *(v308 + 24);
              v323 = __OFSUB__(v321, v322);
              v317 = v321 - v322;
              if (v323)
              {
                goto LABEL_309;
              }
            }

            else
            {
              v317 = 0;
            }
          }

          else if (v315)
          {
            LODWORD(v317) = HIDWORD(v308) - v308;
            if (__OFSUB__(HIDWORD(v308), v308))
            {
              goto LABEL_308;
            }

            v317 = v317;
          }

          else
          {
            v317 = BYTE6(v310);
          }
        }

        if (v316 > 1)
        {
          if (v316 != 2)
          {
            if (v317)
            {
LABEL_140:
              outlined consume of Data._Representation(v311, v312);
              outlined consume of Data._Representation(v318, v310);
              goto LABEL_217;
            }

LABEL_141:
            outlined consume of Data._Representation(v311, v312);
            v319 = v318;
            v320 = v310;
LABEL_142:
            outlined consume of Data._Representation(v319, v320);
            v306 = v451;
            goto LABEL_159;
          }

          v326 = *(v311 + 16);
          v325 = *(v311 + 24);
          v323 = __OFSUB__(v325, v326);
          v324 = v325 - v326;
          if (v323)
          {
            goto LABEL_306;
          }
        }

        else if (v316)
        {
          LODWORD(v324) = HIDWORD(v311) - v311;
          if (__OFSUB__(HIDWORD(v311), v311))
          {
            goto LABEL_305;
          }

          v324 = v324;
        }

        else
        {
          v324 = BYTE6(v312);
        }

        if (v317 != v324)
        {
          goto LABEL_140;
        }

        if (v317 < 1)
        {
          goto LABEL_141;
        }

        if (v315 > 1)
        {
          if (v315 != 2)
          {
            *(&v493 + 6) = 0;
            *&v493 = 0;
            outlined copy of Data._Representation(v311, v312);
            v335 = v470;
            closure #1 in static Data.== infix(_:_:)(&v493, v313, v314, &v491);
            v470 = v335;
            outlined consume of Data._Representation(v313, v314);
            outlined consume of Data._Representation(v313, v314);
            v328 = v318;
            goto LABEL_155;
          }

          v456 = v318;
          v329 = *(v318 + 16);
          v448 = *(v318 + 24);
          outlined copy of Data._Representation(v311, v312);
          v330 = __DataStorage._bytes.getter();
          if (v330)
          {
            v331 = __DataStorage._offset.getter();
            if (__OFSUB__(v329, v331))
            {
              goto LABEL_318;
            }

            v330 += v329 - v331;
          }

          if (__OFSUB__(v448, v329))
          {
            goto LABEL_317;
          }
        }

        else
        {
          if (!v315)
          {
            *&v493 = v318;
            WORD4(v493) = v310;
            BYTE10(v493) = BYTE2(v310);
            BYTE11(v493) = BYTE3(v310);
            BYTE12(v493) = BYTE4(v310);
            BYTE13(v493) = BYTE5(v310);
            outlined copy of Data._Representation(v311, v312);
            v327 = v470;
            closure #1 in static Data.== infix(_:_:)(&v493, v313, v314, &v491);
            v470 = v327;
            outlined consume of Data._Representation(v313, v314);
            outlined consume of Data._Representation(v313, v314);
            v328 = v318;
LABEL_155:
            outlined consume of Data._Representation(v328, v310);
            v336 = v491;
            goto LABEL_158;
          }

          v456 = v318;
          if (v318 >> 32 < v318)
          {
            goto LABEL_316;
          }

          outlined copy of Data._Representation(v311, v312);
          v332 = __DataStorage._bytes.getter();
          if (v332)
          {
            v333 = v332;
            v334 = __DataStorage._offset.getter();
            if (__OFSUB__(v318, v334))
            {
              goto LABEL_319;
            }

            v330 = v318 - v334 + v333;
          }

          else
          {
            v330 = 0;
          }
        }

        MEMORY[0x231890D50]();
        v337 = v470;
        closure #1 in static Data.== infix(_:_:)(v330, v313, v314, &v493);
        v470 = v337;
        outlined consume of Data._Representation(v313, v314);
        outlined consume of Data._Representation(v313, v314);
        outlined consume of Data._Representation(v456, v310);
        v336 = v493;
LABEL_158:
        v306 = v451;
        v264 = v466;
        if (!v336)
        {
          goto LABEL_218;
        }

LABEL_159:
        v338 = *(v457 + 32);
        v339 = *(v306 + v338);
        v340 = *(v306 + v338 + 8);
        v341 = (v453 + v338);
        v343 = *v341;
        v342 = v341[1];
        v344 = v340 >> 62;
        v345 = v342 >> 62;
        if (v340 >> 62 == 3)
        {
          v346 = 0;
          if (!v339 && v340 == 0xC000000000000000 && v342 >> 62 == 3)
          {
            v346 = 0;
            if (!v343 && v342 == 0xC000000000000000)
            {
              goto LABEL_190;
            }
          }
        }

        else if (v344 > 1)
        {
          if (v344 == 2)
          {
            v348 = *(v339 + 16);
            v347 = *(v339 + 24);
            v323 = __OFSUB__(v347, v348);
            v346 = v347 - v348;
            if (v323)
            {
              goto LABEL_314;
            }
          }

          else
          {
            v346 = 0;
          }
        }

        else if (v344)
        {
          LODWORD(v346) = HIDWORD(v339) - v339;
          if (__OFSUB__(HIDWORD(v339), v339))
          {
            goto LABEL_315;
          }

          v346 = v346;
        }

        else
        {
          v346 = BYTE6(v340);
        }

        if (v345 > 1)
        {
          if (v345 != 2)
          {
            v306 = v451;
            v264 = v466;
            if (v346)
            {
              goto LABEL_218;
            }

            goto LABEL_210;
          }

          v351 = *(v343 + 16);
          v350 = *(v343 + 24);
          v323 = __OFSUB__(v350, v351);
          v349 = v350 - v351;
          if (v323)
          {
            goto LABEL_312;
          }
        }

        else if (v345)
        {
          LODWORD(v349) = HIDWORD(v343) - v343;
          if (__OFSUB__(HIDWORD(v343), v343))
          {
            goto LABEL_311;
          }

          v349 = v349;
        }

        else
        {
          v349 = BYTE6(v342);
        }

        if (v346 != v349)
        {
          goto LABEL_217;
        }

        if (v346 < 1)
        {
LABEL_190:
          v306 = v451;
          goto LABEL_210;
        }

        if (v344 > 1)
        {
          if (v344 != 2)
          {
            *(&v493 + 6) = 0;
            *&v493 = 0;
            outlined copy of Data._Representation(v343, v342);
            goto LABEL_202;
          }

          v352 = *(v339 + 16);
          v456 = *(v339 + 24);
          outlined copy of Data._Representation(v343, v342);
          v353 = __DataStorage._bytes.getter();
          if (v353)
          {
            v354 = v353;
            v355 = __DataStorage._offset.getter();
            if (__OFSUB__(v352, v355))
            {
              goto LABEL_322;
            }

            v356 = v352 - v355 + v354;
          }

          else
          {
            v356 = 0;
          }

          if (__OFSUB__(v456, v352))
          {
            goto LABEL_321;
          }

          MEMORY[0x231890D50]();
          v364 = v356;
        }

        else
        {
          if (!v344)
          {
            *&v493 = v339;
            WORD4(v493) = v340;
            BYTE10(v493) = BYTE2(v340);
            BYTE11(v493) = BYTE3(v340);
            BYTE12(v493) = BYTE4(v340);
            BYTE13(v493) = BYTE5(v340);
            outlined copy of Data._Representation(v343, v342);
LABEL_202:
            v362 = v470;
            closure #1 in static Data.== infix(_:_:)(&v493, v343, v342, &v491);
            v470 = v362;
            outlined consume of Data._Representation(v343, v342);
            v363 = v491;
            goto LABEL_209;
          }

          v357 = v339;
          if (v339 >> 32 < v339)
          {
            goto LABEL_320;
          }

          outlined copy of Data._Representation(v343, v342);
          v358 = __DataStorage._bytes.getter();
          if (v358)
          {
            v359 = v358;
            v360 = __DataStorage._offset.getter();
            if (__OFSUB__(v357, v360))
            {
              goto LABEL_323;
            }

            v361 = v357 - v360 + v359;
          }

          else
          {
            v361 = 0;
          }

          MEMORY[0x231890D50]();
          v364 = v361;
        }

        v365 = v470;
        closure #1 in static Data.== infix(_:_:)(v364, v343, v342, &v493);
        v470 = v365;
        outlined consume of Data._Representation(v343, v342);
        v363 = v493;
LABEL_209:
        v306 = v451;
        v264 = v466;
        if (!v363)
        {
          goto LABEL_218;
        }

LABEL_210:
        v366 = *(v457 + 28);
        v367 = *(v443 + 48);
        v368 = v446;
        outlined init with copy of TetraSessionStates?(v306 + v366, v446, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        outlined init with copy of TetraSessionStates?(v453 + v366, v368 + v367, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v369 = *v458;
        if ((*v458)(v368, 1, v468) == 1)
        {
          if (v369(v446 + v367, 1, v468) == 1)
          {
            goto LABEL_263;
          }

          goto LABEL_215;
        }

        v370 = v446;
        outlined init with copy of TetraSessionStates?(v446, v444, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        if (v369(v370 + v367, 1, v468) == 1)
        {
          (*v455)(v444, v468);
LABEL_215:
          v371 = v446;
          v372 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd;
          v373 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR;
          goto LABEL_216;
        }

        v377 = (*v454)(v442, v446 + v367, v468);
        v378 = MEMORY[0x231891580](v377);
        v380 = v379;
        v381 = MEMORY[0x231891580]();
        v383 = v381;
        v384 = v382;
        v385 = v380 >> 62;
        v386 = v382 >> 62;
        if (v380 >> 62 == 3)
        {
          v387 = 0;
          if (!v378 && v380 == 0xC000000000000000 && v382 >> 62 == 3)
          {
            v387 = 0;
            if (!v381 && v382 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v388 = 0;
              v389 = 0xC000000000000000;
              goto LABEL_262;
            }
          }
        }

        else if (v385 == 2)
        {
          v391 = *(v378 + 16);
          v390 = *(v378 + 24);
          v323 = __OFSUB__(v390, v391);
          v387 = v390 - v391;
          if (v323)
          {
            goto LABEL_326;
          }
        }

        else if (v385 == 1)
        {
          LODWORD(v387) = HIDWORD(v378) - v378;
          if (__OFSUB__(HIDWORD(v378), v378))
          {
            goto LABEL_327;
          }

          v387 = v387;
        }

        else
        {
          v387 = BYTE6(v380);
        }

        if (v386 > 1)
        {
          if (v386 != 2)
          {
            if (!v387)
            {
LABEL_261:
              outlined consume of Data._Representation(v381, v382);
              v388 = v378;
              v389 = v380;
LABEL_262:
              outlined consume of Data._Representation(v388, v389);
              v400 = *v455;
              v401 = v468;
              (*v455)(v442, v468);
              v400(v444, v401);
LABEL_263:
              outlined destroy of TetraSessionStates?(v446, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
              v306 = v451;
              outlined destroy of TetraOuterMessageType(v451, type metadata accessor for TetraSessionState);
              v264 = v466;
LABEL_264:
              v260 = v487;
              goto LABEL_229;
            }

LABEL_260:
            outlined consume of Data._Representation(v381, v382);
            outlined consume of Data._Representation(v378, v380);
            v398 = *v455;
            v399 = v468;
            (*v455)(v442, v468);
            v398(v444, v399);
            v371 = v446;
            v372 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd;
            v373 = _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR;
LABEL_216:
            outlined destroy of TetraSessionStates?(v371, v372, v373);
LABEL_217:
            v306 = v451;
            v264 = v466;
LABEL_218:
            outlined destroy of TetraOuterMessageType(v306, type metadata accessor for TetraSessionState);
            goto LABEL_219;
          }

          v394 = *(v381 + 16);
          v393 = *(v381 + 24);
          v323 = __OFSUB__(v393, v394);
          v392 = v393 - v394;
          if (v323)
          {
            goto LABEL_324;
          }
        }

        else if (v386)
        {
          LODWORD(v392) = HIDWORD(v381) - v381;
          if (__OFSUB__(HIDWORD(v381), v381))
          {
            goto LABEL_325;
          }

          v392 = v392;
        }

        else
        {
          v392 = BYTE6(v382);
        }

        if (v387 != v392)
        {
          goto LABEL_260;
        }

        if (v387 < 1)
        {
          goto LABEL_261;
        }

        outlined copy of Data._Representation(v381, v382);
        v395 = v470;
        LODWORD(v456) = specialized Data.withUnsafeBytes<A>(_:)(v378, v380, v383, v384);
        v470 = v395;
        outlined consume of Data._Representation(v383, v384);
        outlined consume of Data._Representation(v378, v380);
        v396 = *v455;
        v397 = v468;
        (*v455)(v442, v468);
        v396(v444, v397);
        outlined destroy of TetraSessionStates?(v446, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v306 = v451;
        outlined destroy of TetraOuterMessageType(v451, type metadata accessor for TetraSessionState);
        v264 = v466;
        if (v456)
        {
          goto LABEL_264;
        }

LABEL_219:
        if (v265 == v264)
        {
          v260 = v487;
        }

        else
        {
          if (v264 < 0)
          {
            goto LABEL_298;
          }

          v374 = *v267;
          if (v264 >= *v267)
          {
            goto LABEL_299;
          }

          v375 = v487;
          v376 = v264 * v484;
          outlined init with copy of TetraOuterMessageType(v487 + v471 + v264 * v484, v449, type metadata accessor for TetraSessionState);
          if (v265 >= v374)
          {
            goto LABEL_300;
          }

          outlined init with copy of TetraOuterMessageType(v375 + v305, v450, type metadata accessor for TetraSessionState);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v487 = specialized _ArrayBuffer._consumeAndCreateNew()(v487);
          }

          v260 = v487;
          outlined assign with take of TetraSessionState(v450, v487 + v471 + v376, type metadata accessor for TetraSessionState);
          if (v265 >= v260[2])
          {
            goto LABEL_301;
          }

          outlined assign with take of TetraSessionState(v449, v260 + v305, type metadata accessor for TetraSessionState);
          *(v478 + v465) = v260;
          v306 = v451;
        }

        ++v264;
LABEL_229:
        ++v265;
        v267 = v260 + 2;
        v266 = v260[2];
        v305 += v484;
        if (v265 == v266)
        {
          goto LABEL_84;
        }
      }
    }

    __break(1u);
    goto LABEL_290;
  }

  v212 = *(v193 + 16);
  if (!v212)
  {
LABEL_272:

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v406 = swift_allocError();
    v407 = 4;
    goto LABEL_273;
  }

  if (v212 == 1)
  {
    goto LABEL_61;
  }

LABEL_271:

  lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
  v406 = swift_allocError();
  v407 = 5;
LABEL_273:
  *v405 = v407;
  swift_willThrow();
  v114 = v406;
  outlined consume of Data?(v477, v479);
  outlined destroy of TetraOuterMessageType(v211, type metadata accessor for TetraOuterMessageType);
  outlined destroy of TetraSessionStates?(v478, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
LABEL_274:
  v144 = type metadata accessor for TetraRatchetOuterMessage;
  v143 = v481;
LABEL_275:
  outlined destroy of TetraOuterMessageType(v143, v144);
LABEL_276:
  v244 = v486;
LABEL_277:
  *&v493 = v114;
  v408 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && v492 == 3)
  {
    v409 = v114;
    v410 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v411 = MEMORY[0x231891960](0xD00000000000001BLL, 0x800000022B494BB0);
    v412 = [v410 initWithDomain:v411 code:5 userInfo:0];

    v413 = static os_log_type_t.debug.getter();
    v414 = MessageProtectionLog(v413);
    if (v414)
    {
      v415 = v414;
      os_log(_:dso:log:_:_:)(v413, &dword_22B404000, v414, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

      v416 = conversationLock;
      OS_dispatch_semaphore.signal()();

      v417 = v412;
      v107(0, 0xF000000000000000, 0, v412, 0, 0);

      v418 = v493;
      goto LABEL_286;
    }

LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  v419 = v107;

  v420 = v114;
  v421 = v114;
  v422 = static os_log_type_t.error.getter();
  v423 = v422;
  v424 = MessageProtectionLog(v422);
  if (!v424)
  {
    __break(1u);
    goto LABEL_293;
  }

  v425 = v424;
  if (os_log_type_enabled(v424, v423))
  {
    v426 = swift_slowAlloc();
    v427 = swift_slowAlloc();
    *&v493 = v427;
    *v426 = 67109634;
    *(v426 + 4) = 1;
    *(v426 + 8) = 2080;
    *(v426 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v480, v244, &v493);
    *(v426 + 18) = 2080;
    swift_getErrorValue();
    v428 = Error.localizedDescription.getter();
    v430 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v428, v429, &v493);

    *(v426 + 20) = v430;
    _os_log_impl(&dword_22B404000, v425, v423, "Tetra (Tetra Ratchet = %{BOOL}d) failed decrypting %s with error: %s", v426, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v427, -1, -1);
    MEMORY[0x231892DF0](v426, -1, -1);
  }

  v431 = static os_log_type_t.debug.getter();
  v432 = MessageProtectionLog(v431);
  if (!v432)
  {
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  v433 = v432;
  os_log(_:dso:log:_:_:)(v431, &dword_22B404000, v432, "Tetra Conversation Lock: Unlocked.", 34, 2, MEMORY[0x277D84F90]);

  v434 = conversationLock;
  OS_dispatch_semaphore.signal()();

  v435 = v420;
  v419(0, 0xF000000000000000, 0, v420, 0, 0);

  v418 = v420;
LABEL_286:

LABEL_287:
}

Swift::Int specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    outlined init with take of Any(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    outlined init with take of Any(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = outlined init with take of Any(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    outlined copy of Data._Representation(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = outlined init with take of Any(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TetraSessionState(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      outlined init with copy of TetraOuterMessageType(a3 + v15 + v16 * v13, v12, type metadata accessor for TetraSessionState);
      v17 = a1(v12);
      if (v3)
      {
        outlined destroy of TetraOuterMessageType(v12, type metadata accessor for TetraSessionState);

        goto LABEL_15;
      }

      if (v17)
      {
        outlined init with take of TetraRatchetOuterMessage(v12, v24, type metadata accessor for TetraSessionState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = outlined init with take of TetraRatchetOuterMessage(v24, v14 + v15 + v20 * v16, type metadata accessor for TetraSessionState);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = outlined destroy of TetraOuterMessageType(v12, type metadata accessor for TetraSessionState);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x231891D10](v13))
  {
    v9 = 0;
    v16 = v5 & 0xFFFFFFFFFFFFFF8;
    v17 = v5 & 0xC000000000000001;
    v15 = v5;
    while (1)
    {
      if (v17)
      {
        v10 = MEMORY[0x231891C80](v9, v5);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          return v3;
        }

        goto LABEL_9;
      }

      if (v9 >= *(v16 + 16))
      {
        break;
      }

      v10 = *(v5 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v18 = v10;
      v3 = a2;
      v12 = a1(&v18);
      if (v4)
      {
        goto LABEL_15;
      }

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v5 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = &v19;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v9;
      if (v11 == i)
      {
        v3 = v19;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_23:

  return v3;
}

void thunk for @callee_unowned @convention(block) (@unowned NSData?, @unowned NSDictionary?, @unowned NSError?, @unowned (@escaping @callee_unowned @convention(block) (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned ObjCBool))?) -> ()(uint64_t a1, unint64_t a2, objc_class *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  if (a2 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a3)
  {
LABEL_5:
    v11 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  if (a4)
  {
    a4 = _convertErrorToNSError(_:)();
  }

  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
    v13[3] = &block_descriptor_20;
    a5 = _Block_copy(v13);
  }

  (*(a7 + 16))(a7, isa, v11, a4, a5);
  _Block_release(a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id TetraAPI.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraAPI.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraAPI();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TetraAPI.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TetraAPI();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized Data.append<A>(contentsOf:)(void *a1)
{
  v2 = v1;
  v43[5] = *MEMORY[0x277D85DE8];
  v39 = a1;
  v40 = a1;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v41, v43);
    v5 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    MEMORY[0x28223BE20](v5);
    v38 = v2;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v43);
    return;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  outlined destroy of TetraSessionStates?(v41, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v6 = NSData.startIndex.getter();
  v7 = NSData.endIndex.getter();
  v8 = NSData.startIndex.getter();
  v9 = NSData.endIndex.getter();
  if (v6 < v8 || v9 < v6)
  {
    goto LABEL_54;
  }

  v10 = NSData.startIndex.getter();
  v11 = NSData.endIndex.getter();
  if (v7 < v10 || v11 < v7)
  {
    goto LABEL_55;
  }

  v12 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = *v2;
  v14 = v2[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v14);
      v17 = BYTE6(v14);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v15 != 2)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v18 = v13 + 16;
  v13 = *(v13 + 16);
  v16 = *(v18 + 8);
  v17 = v16 - v13;
  if (__OFSUB__(v16, v13))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_63;
    }

    v17 = HIDWORD(v13) - v13;
    v16 = v13 >> 32;
  }

LABEL_18:
  if (__OFADD__(v16, v12))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v16 + v12 < v16)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v16 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v19 = Data._Representation.resetBytes(in:)();
  MEMORY[0x28223BE20](v19);
  v37[2] = v17;
  v37[3] = v7 - v6;
  v38 = &v40;
  v22 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.append<A>(contentsOf:), v37);
  if (v21 != v12)
  {
LABEL_34:
    v30 = 0;
    v31 = *v2;
    v32 = v2[1];
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v30 = *(v31 + 16);
      }
    }

    else if (v33)
    {
      v30 = v31;
    }

    v34 = __OFADD__(v30, v17);
    v35 = v30 + v17;
    if (!v34)
    {
      if (!__OFADD__(v35, v21))
      {
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v36 = *(v31 + 24);
          }

          else
          {
            v36 = 0;
          }
        }

        else if (v33)
        {
          v36 = v31 >> 32;
        }

        else
        {
          v36 = BYTE6(v32);
        }

        if (v36 >= v35 + v21)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v23 = v20;
  memset(v43, 0, 15);
  if (v20 == NSData.endIndex.getter())
  {
    goto LABEL_50;
  }

  v24 = NSData.subscript.getter();
  v17 = NSData.startIndex.getter();
  v25 = NSData.endIndex.getter();
  if (v23 < v17 || v23 >= v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  LOBYTE(v26) = 0;
  v27 = v23 + 1;
  while (1)
  {
    *(v43 + v26) = v24;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v26 == 14)
    {
      *&v41[0] = v43[0];
      *(v41 + 6) = *(v43 + 6);
      Data._Representation.append(contentsOf:)();
      if (v27 == NSData.endIndex.getter())
      {
        goto LABEL_50;
      }

      LOBYTE(v26) = 0;
      goto LABEL_31;
    }

    if (v27 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_31:
    v24 = NSData.subscript.getter();
    v17 = NSData.startIndex.getter();
    v28 = NSData.endIndex.getter();
    if (v27 >= v17 && v27++ < v28)
    {
      continue;
    }

    goto LABEL_33;
  }

  *&v41[0] = v43[0];
  *(v41 + 6) = *(v43 + 6);
  Data._Representation.append(contentsOf:)();
LABEL_50:
}

void specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, _BYTE *a4)
{
  v6 = v5;
  v45 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v11 = MEMORY[0x28223BE20](v45);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *(v4 + *(type metadata accessor for TetraRatchetState(0) + 20));
  v46[2] = a1;

  v17 = v16;
  v18 = v6;
  v19 = specialized _ArrayProtocol.filter(_:)(partial apply for specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:), v46, v17);
  v20 = v19;
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:

    specialized TetraRatchetState.ratchetedOpen<A>(message:sessionDST:didRatchet:)(a1, a2, a3, a4, type metadata accessor for TetraNoRatchetOuterMessage, type metadata accessor for TetraNoRatchetOuterMessage, type metadata accessor for TetraNoRatchetOuterMessage);
    return;
  }

  if (v19 >= 0)
  {
    v19 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x231891D10](v19))
  {
    goto LABEL_19;
  }

LABEL_3:
  v43 = v15;
  v44 = v13;
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231891C80](0, v20);
    goto LABEL_6;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = (a1 + *(v45 + 44));
    v26 = *v24;
    v25 = v24[1];
    swift_beginAccess();
    TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(v21, v22, v23, v26, v25, 0);
    if (!v18)
    {
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v48 = v18;
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast() || v49 != 3)
    {
      goto LABEL_15;
    }

    v28 = static os_log_type_t.error.getter();
    v29 = v28;
    v30 = MessageProtectionLog(v28);
    if (v30)
    {
      v31 = v30;

      v32 = v43;
      outlined init with copy of TetraOuterMessageType(a1, v43, type metadata accessor for TetraNoRatchetOuterMessage);
      v33 = v44;
      outlined init with copy of TetraOuterMessageType(a1, v44, type metadata accessor for TetraNoRatchetOuterMessage);
      if (os_log_type_enabled(v31, v29))
      {
        v34 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47 = v42;
        *v34 = 136315394;
        v35 = P256.KeyAgreement.PublicKey.compressedRepresentation.getter();
        v37 = v36;
        v38 = Data.base64EncodedString(options:)(0);
        LODWORD(v45) = v29;
        outlined consume of Data._Representation(v35, v37);
        outlined destroy of TetraOuterMessageType(v32, type metadata accessor for TetraNoRatchetOuterMessage);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38._countAndFlagsBits, v38._object, &v47);

        *(v34 + 4) = v39;
        *(v34 + 12) = 1024;
        LODWORD(v39) = *(v33 + 24);
        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraNoRatchetOuterMessage);
        *(v34 + 14) = v39;
        _os_log_impl(&dword_22B404000, v31, v45, "Out of sync ratchet upon unsealing receiving chain. ECDH: %s Index: %u", v34, 0x12u);
        v40 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x231892DF0](v40, -1, -1);
        MEMORY[0x231892DF0](v34, -1, -1);
      }

      else
      {
        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraNoRatchetOuterMessage);

        outlined destroy of TetraOuterMessageType(v32, type metadata accessor for TetraNoRatchetOuterMessage);
      }

      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v41 = 3;
      swift_willThrow();
LABEL_15:

      return;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

{
  v6 = v5;
  v45 = type metadata accessor for TetraRatchetOuterMessage(0);
  v11 = MEMORY[0x28223BE20](v45);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *(v4 + *(type metadata accessor for TetraRatchetState(0) + 20));
  v46[2] = a1;

  v17 = v16;
  v18 = v6;
  v19 = specialized _ArrayProtocol.filter(_:)(partial apply for specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:), v46, v17);
  v20 = v19;
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:

    specialized TetraRatchetState.ratchetedOpen<A>(message:sessionDST:didRatchet:)(a1, a2, a3, a4, type metadata accessor for TetraRatchetOuterMessage, type metadata accessor for TetraRatchetOuterMessage, type metadata accessor for TetraRatchetOuterMessage);
    return;
  }

  if (v19 >= 0)
  {
    v19 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x231891D10](v19))
  {
    goto LABEL_19;
  }

LABEL_3:
  v43 = v15;
  v44 = v13;
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231891C80](0, v20);
    goto LABEL_6;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = (a1 + *(v45 + 44));
    v26 = *v24;
    v25 = v24[1];
    swift_beginAccess();
    TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(v21, v22, v23, v26, v25, 0);
    if (!v18)
    {
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v48 = v18;
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast() || v49 != 3)
    {
      goto LABEL_15;
    }

    v28 = static os_log_type_t.error.getter();
    v29 = v28;
    v30 = MessageProtectionLog(v28);
    if (v30)
    {
      v31 = v30;

      v32 = v43;
      outlined init with copy of TetraOuterMessageType(a1, v43, type metadata accessor for TetraRatchetOuterMessage);
      v33 = v44;
      outlined init with copy of TetraOuterMessageType(a1, v44, type metadata accessor for TetraRatchetOuterMessage);
      if (os_log_type_enabled(v31, v29))
      {
        v34 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47 = v42;
        *v34 = 136315394;
        v35 = P256.KeyAgreement.PublicKey.compressedRepresentation.getter();
        v37 = v36;
        v38 = Data.base64EncodedString(options:)(0);
        LODWORD(v45) = v29;
        outlined consume of Data._Representation(v35, v37);
        outlined destroy of TetraOuterMessageType(v32, type metadata accessor for TetraRatchetOuterMessage);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38._countAndFlagsBits, v38._object, &v47);

        *(v34 + 4) = v39;
        *(v34 + 12) = 1024;
        LODWORD(v39) = *(v33 + 24);
        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraRatchetOuterMessage);
        *(v34 + 14) = v39;
        _os_log_impl(&dword_22B404000, v31, v45, "Out of sync ratchet upon unsealing receiving chain. ECDH: %s Index: %u", v34, 0x12u);
        v40 = v42;
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x231892DF0](v40, -1, -1);
        MEMORY[0x231892DF0](v34, -1, -1);
      }

      else
      {
        outlined destroy of TetraOuterMessageType(v33, type metadata accessor for TetraRatchetOuterMessage);

        outlined destroy of TetraOuterMessageType(v32, type metadata accessor for TetraRatchetOuterMessage);
      }

      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      swift_allocError();
      *v41 = 3;
      swift_willThrow();
LABEL_15:

      return;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void specialized TetraRatchetState.ratchetedOpen<A>(message:sessionDST:didRatchet:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, _BYTE *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v197 = a7;
  v196 = a6;
  v202 = a4;
  v226 = a2;
  v9 = a5(0);
  v10 = MEMORY[0x28223BE20](v9);
  v200 = v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v199 = v187 - v13;
  MEMORY[0x28223BE20](v12);
  v198 = v187 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v205 = v187 - v16;
  v17 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  MEMORY[0x28223BE20](v17 - 8);
  v204 = v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TetraOutgoingKeyContent(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v203 = v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v212 = v187 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v201 = v187 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v210 = v187 - v26;
  v27 = type metadata accessor for Kyber768.PublicKey();
  v222 = *(v27 - 8);
  v223 = v27;
  MEMORY[0x28223BE20](v27);
  v209 = v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v211 = v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v208 = (v187 - v33);
  MEMORY[0x28223BE20](v32);
  v218 = (v187 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v195 = v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v215 = v187 - v39;
  MEMORY[0x28223BE20](v38);
  v214 = (v187 - v40);
  v41 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  MEMORY[0x28223BE20](v41 - 8);
  v221 = v187 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v213 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v219 = v187 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v45 = MEMORY[0x28223BE20](v44);
  v207 = v187 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v216 = v187 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = v187 - v50;
  v224 = v49;
  v225 = a1;
  v52 = *(v49 + 48);
  v53 = a1 + *(v9 + 28);
  v217 = v9;
  v54 = (a1 + *(v9 + 36));
  v56 = *v54;
  v55 = v54[1];
  v57 = type metadata accessor for TetraRatchetState(0);
  v58 = *(v57 + 24);
  v206 = a3;
  v59 = (v226)(1);
  v61 = v60;
  v62 = v227;
  static TetraRatchetState.deriveRootAndChainKeyAsReceiver(rootKey:theirPublicKey:encap:ourReceivingKeys:conversationDST:)(v51, &v51[v52], v228, v53, v56, v55, v228 + v58, v59, v60);
  v227 = v62;
  if (v62)
  {
    outlined consume of Data._Representation(v59, v61);
    return;
  }

  v189 = v58;
  v191 = v57;
  outlined consume of Data._Representation(v59, v61);
  v63 = v213;
  v64 = v213[2];
  v190 = v53;
  v64(v219, v53, v220);
  v65 = v216;
  outlined init with copy of TetraSessionStates?(v51, v216, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  TetraIncomingSymmetricRatchet.init(symmetricRatchetHead:)(v65 + *(v224 + 48), v221);
  v66 = type metadata accessor for SymmetricKey();
  v67 = *(v66 - 8);
  v193 = v67[1];
  v193(v65, v66);
  v194 = v217[8];
  v68 = v214;
  outlined init with copy of TetraSessionStates?(v225 + v194, v214, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  type metadata accessor for ReceivingKeyTetraRatchet(0);
  v69 = swift_allocObject();
  v70 = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey;
  (*(v222 + 56))(v69 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKEMKey, 1, 1, v223);
  (v63[4])(v69 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v219, v220);
  v187[2] = OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet;
  outlined init with take of TetraRatchetOuterMessage(v221, v69 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_incomingSymmetricRatchet, type metadata accessor for TetraIncomingSymmetricRatchet);
  swift_beginAccess();
  outlined assign with take of P256.KeyAgreement.PublicKey?(v68, v69 + v70, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  swift_endAccess();
  v71 = v228;
  outlined destroy of TetraSessionStates?(v228, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v192 = v51;
  outlined init with copy of TetraSessionStates?(v51, v65, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v72 = *(v224 + 48);
  v73 = v67[4];
  v219 = (v67 + 4);
  v214 = v73;
  (v73)(v71, v65, v66);
  v74 = v67[7];
  v220 = (v67 + 7);
  v213 = v74;
  (v74)(v71, 0, 1, v66);
  v188 = v66;
  v187[3] = v67 + 1;
  v193(v65 + v72, v66);
  v75 = v215;
  outlined init with copy of TetraSessionStates?(v225 + v194, v215, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v77 = v222;
  v76 = v223;
  v78 = *(v222 + 48);
  v187[1] = v222 + 48;
  v187[0] = v78;
  v79 = v71;
  if (v78(v75, 1, v223) == 1)
  {
    outlined destroy of TetraSessionStates?(v75, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    v80 = type metadata accessor for KEM.EncapsulationResult();
    v81 = v218;
    (*(*(v80 - 8) + 56))(v218, 1, 1, v80);
  }

  else
  {
    v82 = v76;
    v83 = v209;
    (*(v77 + 32))(v209, v75, v82);
    v84 = v208;
    v85 = v227;
    Kyber768.PublicKey.encapsulate()();
    v81 = v218;
    if (v85)
    {

      (*(v77 + 8))(v83, v82);
LABEL_15:
      outlined destroy of TetraSessionStates?(v192, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
      return;
    }

    v227 = 0;
    (*(v77 + 8))(v83, v82);
    v86 = type metadata accessor for KEM.EncapsulationResult();
    (*(*(v86 - 8) + 56))(v84, 0, 1, v86);
    outlined init with take of KEM.EncapsulationResult?(v84, v81);
  }

  v221 = v69;
  v87 = v191[8];
  v209 = v191[7];
  v88 = *&v209[v79];
  v215 = v87;
  v89 = v79 + v87;
  v90 = v210;
  outlined init with copy of TetraSessionStates?(v89, v210, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v91 = type metadata accessor for Date();
  v92 = *(v91 - 8);
  isa = 0;
  if ((v92[6])(v90, 1, v91) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v92[1](v90, v91);
  }

  v94 = v88 > 0x27;
  v95 = [objc_opt_self() shouldRekeyIfLastRekeyFrom_];

  v96 = v94 | v95;
  v97 = v211;
  outlined init with copy of TetraSessionStates?(v81, v211, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  v98 = type metadata accessor for KEM.EncapsulationResult();
  v99 = *(v98 - 8);
  v100 = (*(v99 + 48))(v97, 1, v98);
  v208 = v92;
  if (v100 == 1)
  {
    outlined destroy of TetraSessionStates?(v97, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    v101 = 0;
    v102 = 0xF000000000000000;
  }

  else
  {
    v101 = KEM.EncapsulationResult.encapsulated.getter();
    v102 = v103;
    (*(v99 + 8))(v97, v98);
  }

  v105 = v225;
  v104 = v226;
  v106 = v212;
  v107 = v227;
  TetraOutgoingKeyContent.init(includesKEMKey:encap:)(v96 & 1, v101, v102, v212);
  if (v107)
  {

    outlined destroy of TetraSessionStates?(v218, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    goto LABEL_15;
  }

  LODWORD(v226) = v96;
  v108 = v224;
  v109 = *(v224 + 48);
  v110 = v104(0);
  v112 = v111;
  v113 = v207;
  static TetraRatchetState.deriveRootAndChainKeyAsSender(rootKey:theirECDHPublicKey:theirKyber768Key:encapResult:ourOutgoingKeys:conversationDST:)(v207, v207 + v109, v192, v190, v105 + v194, v218, v106, v110, v111);
  v227 = 0;
  outlined consume of Data._Representation(v110, v112);
  v114 = v228;
  outlined destroy of TetraSessionStates?(v228, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v115 = v216;
  outlined init with copy of TetraSessionStates?(v113, v216, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v116 = *(v108 + 48);
  v117 = v188;
  (v214)(v114, v115, v188);
  (v213)(v114, 0, 1, v117);
  v193(v115 + v116, v117);
  if (v226)
  {
    *&v209[v114] = 0;
    v118 = v201;
    Date.init()();
    (v208[7])(v118, 0, 1, v91);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v118, v114 + v215, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  outlined init with copy of TetraSessionStates?(v113, v115, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
  v119 = v205;
  (v214)(v205, v115 + *(v108 + 48), v117);
  (v213)(v119, 0, 1, v117);
  v120 = v203;
  outlined init with copy of TetraOuterMessageType(v106, v203, type metadata accessor for TetraOutgoingKeyContent);
  v121 = v204;
  TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)(v119, v120, v204);
  v193(v115, v117);
  outlined assign with take of TetraSessionState(v121, v114 + v189, type metadata accessor for TetraOutgoingSymmetricRatchet);
  v122 = *(v225 + 8);
  v123 = *(v225 + 16);
  v124 = *(v225 + 24);
  v125 = v114;
  v126 = (v225 + v217[11]);
  v127 = *v126;
  v128 = v126[1];
  swift_beginAccess();
  v129 = v227;
  TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(v122, v123, v124, v127, v128, 0);
  if (!v129)
  {
    v227 = 0;
    swift_endAccess();
    v152 = v191[5];

    MEMORY[0x231891A40](v153);
    if (*((*(v125 + v152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v125 + v152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v226 = *((*(v125 + v152) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v154 = *(v125 + v152);
    v155 = v154 >> 62;
    v156 = v202;
    if (v154 >> 62)
    {
      if (v154 < 0)
      {
        v186 = v154;
      }

      else
      {
        v186 = v154 & 0xFFFFFFFFFFFFFF8;
      }

      v225 = v154 >> 62;
      if (MEMORY[0x231891D10](v186) <= 7)
      {
        goto LABEL_47;
      }

      v157 = MEMORY[0x231891D10](v186);
      v155 = v225;
    }

    else
    {
      v157 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v157 <= 7)
      {
LABEL_47:

        outlined destroy of TetraSessionStates?(v207, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
        outlined destroy of TetraOuterMessageType(v212, type metadata accessor for TetraOutgoingKeyContent);
        outlined destroy of TetraSessionStates?(v218, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
        outlined destroy of TetraSessionStates?(v192, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
        *v156 = 1;
        return;
      }
    }

    v225 = v155;
    v226 = v157 - 7;
    if (__OFSUB__(v157, 7))
    {
      __break(1u);
    }

    else
    {
      v158 = static os_log_type_t.info.getter();
      v159 = v158;
      v160 = MessageProtectionLog(v158);
      if (!v160)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v161 = v160;
      if (os_log_type_enabled(v160, v159))
      {
        v162 = swift_slowAlloc();
        *v162 = 134217984;
        *(v162 + 4) = v226;
        _os_log_impl(&dword_22B404000, v161, v159, "Removing first %ld chains.", v162, 0xCu);
        MEMORY[0x231892DF0](v162, -1, -1);
      }

      v156 = v202;
      v163 = v226;
      if (!v226)
      {
        goto LABEL_47;
      }

      if ((v226 & 0x8000000000000000) == 0)
      {
        if (v225)
        {
          if (v154 < 0)
          {
            v166 = v154;
          }

          else
          {
            v166 = v154 & 0xFFFFFFFFFFFFFF8;
          }

          v164 = MEMORY[0x231891D10](v166);
        }

        else
        {
          v164 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v164 < 0 || v164 >= v163)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, v163, v228);
          goto LABEL_47;
        }

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_endAccess();
  v230 = v129;
  v130 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v131 = swift_dynamicCast();
  v132 = v218;
  v133 = v192;
  if ((v131 & 1) == 0)
  {

    outlined destroy of TetraSessionStates?(v207, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
    v165 = v212;
LABEL_55:
    outlined destroy of TetraOuterMessageType(v165, type metadata accessor for TetraOutgoingKeyContent);
    outlined destroy of TetraSessionStates?(v132, &_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
    outlined destroy of TetraSessionStates?(v133, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);

    return;
  }

  v134 = v212;
  if (v231 != 3)
  {

LABEL_54:
    outlined destroy of TetraSessionStates?(v207, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMd, &_s9CryptoKit12SymmetricKeyV04rootD0_AC05chainD0tMR);
    v165 = v134;
    goto LABEL_55;
  }

  v135 = static os_log_type_t.error.getter();
  v136 = v135;
  v137 = MessageProtectionLog(v135);
  if (v137)
  {
    v138 = v137;

    v139 = v225;
    v140 = v198;
    v141 = v196;
    outlined init with copy of TetraOuterMessageType(v225, v198, v196);
    v142 = v199;
    outlined init with copy of TetraOuterMessageType(v139, v199, v141);
    v143 = v139;
    v144 = v200;
    outlined init with copy of TetraOuterMessageType(v143, v200, v141);
    v145 = os_log_type_enabled(v138, v136);
    v146 = v197;
    if (v145)
    {
      v147 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v229 = v228;
      *v147 = 136315650;
      v148 = v195;
      outlined init with copy of TetraSessionStates?(v140 + v217[8], v195, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
      v149 = v223;
      if ((v187[0])(v148, 1, v223) == 1)
      {
        outlined destroy of TetraSessionStates?(v148, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
        object = 0xEA00000000007965;
        countAndFlagsBits = 0x4B206D654B206F4ELL;
      }

      else
      {
        v167 = Kyber768.PublicKey.dataRepresentation.getter();
        v169 = v168;
        (*(v222 + 8))(v148, v149);
        v170 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v170._countAndFlagsBits;
        object = v170._object;
        v171 = v167;
        v140 = v198;
        v172 = v169;
        v142 = v199;
        outlined consume of Data._Representation(v171, v172);
      }

      outlined destroy of TetraOuterMessageType(v140, v146);
      v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v229);

      *(v147 + 4) = v173;
      *(v147 + 12) = 2080;
      if (*(v142 + v217[9] + 8) >> 60 == 15)
      {
        v174 = 0xE800000000000000;
        v175 = 0x7061636E45206F4ELL;
      }

      else
      {
        v176 = Data.base64EncodedString(options:)(0);
        v175 = v176._countAndFlagsBits;
        v174 = v176._object;
      }

      outlined destroy of TetraOuterMessageType(v142, v146);
      v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v174, &v229);

      *(v147 + 14) = v177;
      *(v147 + 22) = 2080;
      v178 = v200;
      v179 = P256.KeyAgreement.PublicKey.compressedRepresentation.getter();
      v181 = v180;
      v182 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v179, v181);
      outlined destroy of TetraOuterMessageType(v178, v146);
      v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182._countAndFlagsBits, v182._object, &v229);

      *(v147 + 24) = v183;
      _os_log_impl(&dword_22B404000, v138, v136, "Out of sync ratchet upon ratcheting. KEM Key: %s. Encap: %s ECDH: %s", v147, 0x20u);
      v184 = v228;
      swift_arrayDestroy();
      MEMORY[0x231892DF0](v184, -1, -1);
      MEMORY[0x231892DF0](v147, -1, -1);

      v134 = v212;
      v132 = v218;
      v133 = v192;
    }

    else
    {

      outlined destroy of TetraOuterMessageType(v144, v146);
      outlined destroy of TetraOuterMessageType(v142, v146);
      outlined destroy of TetraOuterMessageType(v140, v146);
      v134 = v212;
    }

    lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
    swift_allocError();
    *v185 = 3;
    swift_willThrow();

    goto LABEL_54;
  }

LABEL_65:
  __break(1u);
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TetraSessionState(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Iterator();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  v13 = *v2;
  v14 = *(*v2 + 2);
  v15 = v14 + v10;
  if (__OFADD__(v14, v10))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v24 = v2;
    v25 = *(v13 + 2);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    dispatch thunk of IteratorProtocol.next()();
    if (v30)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v26 = *(v13 + 3);
      v27 = v26 >> 1;
      if ((v26 >> 1) >= v25 + 1)
      {
        break;
      }

      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1, v13);
      v28 = v30;
      v27 = *(v13 + 3) >> 1;
      if ((v30 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v13 + 2) = v25;
      v2 = v24;
      if (v28)
      {
        goto LABEL_22;
      }
    }

    v28 = 0;
    do
    {
LABEL_30:
      if (v25 >= v27)
      {
        break;
      }

      v13[v25++ + 32] = v29[14];
      dispatch thunk of IteratorProtocol.next()();
      v28 = v30;
    }

    while ((v30 & 1) == 0);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = *(v13 + 3) >> 1, v17 < v15))
  {
    if (v14 <= v15)
    {
      v18 = v14 + v10;
    }

    else
    {
      v18 = v14;
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v13);
    v17 = *(v13 + 3) >> 1;
  }

  v19 = v17 - *(v13 + 2);
  v20 = Data._copyContents(initializing:)();
  outlined consume of Data._Representation(a1, a2);
  if (v20 < v10)
  {
    goto LABEL_24;
  }

  if (v20 < 1)
  {
    goto LABEL_21;
  }

  v21 = *(v13 + 2);
  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (!v22)
  {
    *(v13 + 2) = v23;
LABEL_21:
    if (v20 != v19)
    {
LABEL_22:
      (*(v6 + 8))(v8, v5);
      *v2 = v13;
      return;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
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
      result = MEMORY[0x231890D50]();
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
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x231890D50]();
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

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
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
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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
  __swift_destroy_boxed_opaque_existential_1(v11);
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
  specialized Array.append<A>(contentsOf:)(outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
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

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x231891EC0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = a1;
  v3 = MEMORY[0x231891EB0](*(v1 + 40), a1, 2);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231891C20](v9, a1);
      outlined destroy of AnyHashable(v9);
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = type metadata accessor for SymmetricKey();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt64V9CryptoKit12SymmetricKeyVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x231891EC0](*(v9 + 40), v23);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v39 = type metadata accessor for SymmetricKey();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMd, &_ss18_DictionaryStorageCys6UInt16V9CryptoKit12SymmetricKeyVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 2 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x231891EB0](*(v9 + 40), v23, 2);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 2 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        outlined copy of Data._Representation(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
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

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    outlined consume of Data._Representation(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for SymmetricKey();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 2 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SymmetricKey();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for TetraSessionState(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        outlined init with copy of TetraOuterMessageType(v23 + v24 * v19, v39, type metadata accessor for TetraSessionState);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = outlined destroy of TetraOuterMessageType(v25, type metadata accessor for TetraSessionState);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = outlined init with copy of TetraOuterMessageType(v23 + v24 * v43, v36, type metadata accessor for TetraSessionState);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            outlined init with copy of TetraOuterMessageType(v23 + v42, v37, type metadata accessor for TetraSessionState);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = outlined assign with take of TetraSessionState(v37, v16 + v41 + v31, type metadata accessor for TetraSessionState);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = outlined assign with take of TetraSessionState(v36, v33 + v32, type metadata accessor for TetraSessionState);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TetraSessionState(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x231891D10](v6);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}