void sub_23FFB59DC(uint64_t a1)
{
  sub_23FFB5A58();
  if (v1 <= 0x3F)
  {
    sub_23FFB5AA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23FFB5A58()
{
  if (!qword_27E3A3FC8)
  {
    v0 = sub_23FFD941C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3A3FC8);
    }
  }
}

void sub_23FFB5AA8(uint64_t a1)
{
  if (!qword_27E3A3FD0)
  {
    sub_23FFB5B00();
    v1 = sub_23FFD8E3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3A3FD0);
    }
  }
}

unint64_t sub_23FFB5B00()
{
  result = qword_27E3A3FD8;
  if (!qword_27E3A3FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3A3FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceKitError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceKitError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FFB5E10()
{
  result = qword_27E3A3FE0;
  if (!qword_27E3A3FE0)
  {
    result = swift_getWitnessTable(aUB_2, &type metadata for MarketplaceKitError.InsufficientStorageSpaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3FE0);
  }

  return result;
}

unint64_t sub_23FFB5E68()
{
  result = qword_27E3A3FE8;
  if (!qword_27E3A3FE8)
  {
    result = swift_getWitnessTable(aEsB, &type metadata for MarketplaceKitError.MinimumPlatformVersionNotSatisfiedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3FE8);
  }

  return result;
}

unint64_t sub_23FFB5EC0()
{
  result = qword_27E3A3FF0;
  if (!qword_27E3A3FF0)
  {
    result = swift_getWitnessTable(aRBp, &type metadata for MarketplaceKitError.MissingCapabilitiesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3FF0);
  }

  return result;
}

unint64_t sub_23FFB5F18()
{
  result = qword_27E3A3FF8;
  if (!qword_27E3A3FF8)
  {
    result = swift_getWitnessTable(aUqB, &type metadata for MarketplaceKitError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3FF8);
  }

  return result;
}

unint64_t sub_23FFB5F70()
{
  result = qword_27E3A4000;
  if (!qword_27E3A4000)
  {
    result = swift_getWitnessTable(aAB_0, &type metadata for MarketplaceKitError.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4000);
  }

  return result;
}

unint64_t sub_23FFB5FC8()
{
  result = qword_27E3A4008;
  if (!qword_27E3A4008)
  {
    result = swift_getWitnessTable(byte_23FFE4EBC, &type metadata for MarketplaceKitError.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4008);
  }

  return result;
}

unint64_t sub_23FFB6020()
{
  result = qword_27E3A4010;
  if (!qword_27E3A4010)
  {
    result = swift_getWitnessTable(byte_23FFE4DDC, &type metadata for MarketplaceKitError.MissingCapabilitiesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4010);
  }

  return result;
}

unint64_t sub_23FFB6078()
{
  result = qword_27E3A4018;
  if (!qword_27E3A4018)
  {
    result = swift_getWitnessTable(byte_23FFE4E04, &type metadata for MarketplaceKitError.MissingCapabilitiesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4018);
  }

  return result;
}

unint64_t sub_23FFB60D0()
{
  result = qword_27E3A4020;
  if (!qword_27E3A4020)
  {
    result = swift_getWitnessTable(byte_23FFE4D8C, &type metadata for MarketplaceKitError.UnsupportedPlatformCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4020);
  }

  return result;
}

unint64_t sub_23FFB6128()
{
  result = qword_27E3A4028;
  if (!qword_27E3A4028)
  {
    result = swift_getWitnessTable(aBl, &type metadata for MarketplaceKitError.UnsupportedPlatformCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4028);
  }

  return result;
}

unint64_t sub_23FFB6180()
{
  result = qword_27E3A4030;
  if (!qword_27E3A4030)
  {
    result = swift_getWitnessTable(byte_23FFE4CD4, &type metadata for MarketplaceKitError.MinimumPlatformVersionNotSatisfiedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4030);
  }

  return result;
}

unint64_t sub_23FFB61D8()
{
  result = qword_27E3A4038;
  if (!qword_27E3A4038)
  {
    result = swift_getWitnessTable(byte_23FFE4CFC, &type metadata for MarketplaceKitError.MinimumPlatformVersionNotSatisfiedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4038);
  }

  return result;
}

unint64_t sub_23FFB6230()
{
  result = qword_27E3A4040;
  if (!qword_27E3A4040)
  {
    result = swift_getWitnessTable(byte_23FFE4C84, &type metadata for MarketplaceKitError.InstallationRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4040);
  }

  return result;
}

unint64_t sub_23FFB6288()
{
  result = qword_27E3A4048;
  if (!qword_27E3A4048)
  {
    result = swift_getWitnessTable(aB_9, &type metadata for MarketplaceKitError.InstallationRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4048);
  }

  return result;
}

unint64_t sub_23FFB62E0()
{
  result = qword_27E3A4050;
  if (!qword_27E3A4050)
  {
    result = swift_getWitnessTable(aMcB8, &type metadata for MarketplaceKitError.InstallationOfMarketplaceDeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4050);
  }

  return result;
}

unint64_t sub_23FFB6338()
{
  result = qword_27E3A4058;
  if (!qword_27E3A4058)
  {
    result = swift_getWitnessTable(aB_10, &type metadata for MarketplaceKitError.InstallationOfMarketplaceDeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4058);
  }

  return result;
}

unint64_t sub_23FFB6390()
{
  result = qword_27E3A4060;
  if (!qword_27E3A4060)
  {
    result = swift_getWitnessTable(byte_23FFE4BE4, &type metadata for MarketplaceKitError.RatingRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4060);
  }

  return result;
}

unint64_t sub_23FFB63E8()
{
  result = qword_27E3A4068;
  if (!qword_27E3A4068)
  {
    result = swift_getWitnessTable(byte_23FFE4C0C, &type metadata for MarketplaceKitError.RatingRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4068);
  }

  return result;
}

unint64_t sub_23FFB6440()
{
  result = qword_27E3A4070;
  if (!qword_27E3A4070)
  {
    result = swift_getWitnessTable(aUdB, &type metadata for MarketplaceKitError.InsufficientStorageSpaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4070);
  }

  return result;
}

unint64_t sub_23FFB6498()
{
  result = qword_27E3A4078;
  if (!qword_27E3A4078)
  {
    result = swift_getWitnessTable(byte_23FFE4B54, &type metadata for MarketplaceKitError.InsufficientStorageSpaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4078);
  }

  return result;
}

unint64_t sub_23FFB64F0()
{
  result = qword_27E3A4080;
  if (!qword_27E3A4080)
  {
    result = swift_getWitnessTable(byte_23FFE4ADC, &type metadata for MarketplaceKitError.NoSupportedVariantCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4080);
  }

  return result;
}

unint64_t sub_23FFB6548()
{
  result = qword_27E3A4088;
  if (!qword_27E3A4088)
  {
    result = swift_getWitnessTable(byte_23FFE4B04, &type metadata for MarketplaceKitError.NoSupportedVariantCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4088);
  }

  return result;
}

unint64_t sub_23FFB65A0()
{
  result = qword_27E3A4090;
  if (!qword_27E3A4090)
  {
    result = swift_getWitnessTable(byte_23FFE4A8C, &type metadata for MarketplaceKitError.AppNotInstalledCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4090);
  }

  return result;
}

unint64_t sub_23FFB65F8()
{
  result = qword_27E3A4098;
  if (!qword_27E3A4098)
  {
    result = swift_getWitnessTable(aABh, &type metadata for MarketplaceKitError.AppNotInstalledCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4098);
  }

  return result;
}

unint64_t sub_23FFB6650()
{
  result = qword_27E3A40A0;
  if (!qword_27E3A40A0)
  {
    result = swift_getWitnessTable(aEeB, &type metadata for MarketplaceKitError.InvalidManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40A0);
  }

  return result;
}

unint64_t sub_23FFB66A8()
{
  result = qword_27E3A40A8;
  if (!qword_27E3A40A8)
  {
    result = swift_getWitnessTable(aUaB, &type metadata for MarketplaceKitError.InvalidManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40A8);
  }

  return result;
}

unint64_t sub_23FFB6700()
{
  result = qword_27E3A40B0;
  if (!qword_27E3A40B0)
  {
    result = swift_getWitnessTable(byte_23FFE49EC, &type metadata for MarketplaceKitError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40B0);
  }

  return result;
}

unint64_t sub_23FFB6758()
{
  result = qword_27E3A40B8;
  if (!qword_27E3A40B8)
  {
    result = swift_getWitnessTable(byte_23FFE4A14, &type metadata for MarketplaceKitError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40B8);
  }

  return result;
}

unint64_t sub_23FFB67B0()
{
  result = qword_27E3A40C0;
  if (!qword_27E3A40C0)
  {
    result = swift_getWitnessTable(byte_23FFE499C, &type metadata for MarketplaceKitError.InvalidAlternativeDistributionPackageURLCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40C0);
  }

  return result;
}

unint64_t sub_23FFB6808()
{
  result = qword_27E3A40C8;
  if (!qword_27E3A40C8)
  {
    result = swift_getWitnessTable(byte_23FFE49C4, &type metadata for MarketplaceKitError.InvalidAlternativeDistributionPackageURLCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40C8);
  }

  return result;
}

unint64_t sub_23FFB6860()
{
  result = qword_27E3A40D0;
  if (!qword_27E3A40D0)
  {
    result = swift_getWitnessTable(aUfB, &type metadata for MarketplaceKitError.InvalidAlternativeDistributionPackageSignatureCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40D0);
  }

  return result;
}

unint64_t sub_23FFB68B8()
{
  result = qword_27E3A40D8;
  if (!qword_27E3A40D8)
  {
    result = swift_getWitnessTable(aEbB, &type metadata for MarketplaceKitError.InvalidAlternativeDistributionPackageSignatureCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40D8);
  }

  return result;
}

unint64_t sub_23FFB6910()
{
  result = qword_27E3A40E0;
  if (!qword_27E3A40E0)
  {
    result = swift_getWitnessTable(byte_23FFE48FC, &type metadata for MarketplaceKitError.FeatureUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40E0);
  }

  return result;
}

unint64_t sub_23FFB6968()
{
  result = qword_27E3A40E8;
  if (!qword_27E3A40E8)
  {
    result = swift_getWitnessTable(byte_23FFE4924, &type metadata for MarketplaceKitError.FeatureUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40E8);
  }

  return result;
}

unint64_t sub_23FFB69C0()
{
  result = qword_27E3A40F0;
  if (!qword_27E3A40F0)
  {
    result = swift_getWitnessTable(byte_23FFE48AC, &type metadata for MarketplaceKitError.CancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40F0);
  }

  return result;
}

unint64_t sub_23FFB6A18()
{
  result = qword_27E3A40F8;
  if (!qword_27E3A40F8)
  {
    result = swift_getWitnessTable(byte_23FFE48D4, &type metadata for MarketplaceKitError.CancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A40F8);
  }

  return result;
}

unint64_t sub_23FFB6A70()
{
  result = qword_27E3A4100;
  if (!qword_27E3A4100)
  {
    result = swift_getWitnessTable(aEgB, &type metadata for MarketplaceKitError.MismatchedInstallTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4100);
  }

  return result;
}

unint64_t sub_23FFB6AC8()
{
  result = qword_27E3A4108;
  if (!qword_27E3A4108)
  {
    result = swift_getWitnessTable(aUcBt, &type metadata for MarketplaceKitError.MismatchedInstallTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4108);
  }

  return result;
}

unint64_t sub_23FFB6B20()
{
  result = qword_27E3A4110;
  if (!qword_27E3A4110)
  {
    result = swift_getWitnessTable(byte_23FFE480C, &type metadata for MarketplaceKitError.OauthTokenErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4110);
  }

  return result;
}

unint64_t sub_23FFB6B78()
{
  result = qword_27E3A4118;
  if (!qword_27E3A4118)
  {
    result = swift_getWitnessTable(byte_23FFE4834, &type metadata for MarketplaceKitError.OauthTokenErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4118);
  }

  return result;
}

unint64_t sub_23FFB6BD0()
{
  result = qword_27E3A4120;
  if (!qword_27E3A4120)
  {
    result = swift_getWitnessTable(byte_23FFE47BC, &type metadata for MarketplaceKitError.InvalidLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4120);
  }

  return result;
}

unint64_t sub_23FFB6C28()
{
  result = qword_27E3A4128;
  if (!qword_27E3A4128)
  {
    result = swift_getWitnessTable(byte_23FFE47E4, &type metadata for MarketplaceKitError.InvalidLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4128);
  }

  return result;
}

unint64_t sub_23FFB6C80()
{
  result = qword_27E3A4130;
  if (!qword_27E3A4130)
  {
    result = swift_getWitnessTable(a5hB, &type metadata for MarketplaceKitError.InvalidURLCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4130);
  }

  return result;
}

unint64_t sub_23FFB6CD8()
{
  result = qword_27E3A4138;
  if (!qword_27E3A4138)
  {
    result = swift_getWitnessTable("Ed%BН", &type metadata for MarketplaceKitError.InvalidURLCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4138);
  }

  return result;
}

unint64_t sub_23FFB6D30()
{
  result = qword_27E3A4140;
  if (!qword_27E3A4140)
  {
    result = swift_getWitnessTable(byte_23FFE471C, &type metadata for MarketplaceKitError.MissingInstallVerificationTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4140);
  }

  return result;
}

unint64_t sub_23FFB6D88()
{
  result = qword_27E3A4148;
  if (!qword_27E3A4148)
  {
    result = swift_getWitnessTable(byte_23FFE4744, &type metadata for MarketplaceKitError.MissingInstallVerificationTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4148);
  }

  return result;
}

unint64_t sub_23FFB6DE0()
{
  result = qword_27E3A4150;
  if (!qword_27E3A4150)
  {
    result = swift_getWitnessTable(byte_23FFE46CC, &type metadata for MarketplaceKitError.AgeRatingExceptionNotNeededCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4150);
  }

  return result;
}

unint64_t sub_23FFB6E38()
{
  result = qword_27E3A4158;
  if (!qword_27E3A4158)
  {
    result = swift_getWitnessTable(byte_23FFE46F4, &type metadata for MarketplaceKitError.AgeRatingExceptionNotNeededCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4158);
  }

  return result;
}

unint64_t sub_23FFB6E90()
{
  result = qword_27E3A4160;
  if (!qword_27E3A4160)
  {
    result = swift_getWitnessTable(aIBt, &type metadata for MarketplaceKitError.MissingAgeRatingExceptionRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4160);
  }

  return result;
}

unint64_t sub_23FFB6EE8()
{
  result = qword_27E3A4168;
  if (!qword_27E3A4168)
  {
    result = swift_getWitnessTable(a5eB, &type metadata for MarketplaceKitError.MissingAgeRatingExceptionRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4168);
  }

  return result;
}

unint64_t sub_23FFB6F40()
{
  result = qword_27E3A4170;
  if (!qword_27E3A4170)
  {
    result = swift_getWitnessTable(byte_23FFE4EE4, &type metadata for MarketplaceKitError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4170);
  }

  return result;
}

unint64_t sub_23FFB6F98()
{
  result = qword_27E3A4178;
  if (!qword_27E3A4178)
  {
    result = swift_getWitnessTable(byte_23FFE4F0C, &type metadata for MarketplaceKitError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4178);
  }

  return result;
}

uint64_t sub_23FFB6FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEBFA0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEBFC0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x800000023FFEBFE0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023FFEC010 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000023FFEC030 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC050 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEC070 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEC090 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E49746F4E707061 && a2 == 0xEF64656C6C617473 || (sub_23FFD996C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D64696C61766E69 && a2 == 0xEF74736566696E61 || (sub_23FFD996C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_23FFD996C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000028 && 0x800000023FFEC0B0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002ELL && 0x800000023FFEC0E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEC110 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_23FFD996C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEC130 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6F54687475616FLL && a2 == 0xEF726F7272456E65 || (sub_23FFD996C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4C64696C61766E69 && a2 == 0xEE0065736E656369 || (sub_23FFD996C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004C52 || (sub_23FFD996C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000023FFEC150 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023FFEC170 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000020 && 0x800000023FFEC190 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_23FFB7718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFB7784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InstallConfirmationRequest.run()()
{
  *(v1 + 32) = v0;
  type metadata accessor for LaunchAngelXPCRequest(0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FFB7878, 0, 0);
}

uint64_t sub_23FFB7878()
{
  sub_23FFB7718(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FFB7938;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_23FFB7938()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23FF9F508;
  }

  else
  {
    v2 = sub_23FFB7A4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFB7A4C()
{
  sub_23FF797E0(*(v0 + 40));
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    sub_23FF7983C(*(v0 + 16), *(v0 + 24));
    LOBYTE(v1) = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t type metadata accessor for InstallConfirmationRequest(uint64_t a1)
{
  result = qword_27E3A4180;
  if (!qword_27E3A4180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FFB7B48(uint64_t a1)
{
  result = type metadata accessor for InstallSheetContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_23FFD929C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FFB7C74, 0, 0);
}

uint64_t sub_23FFB7C74()
{
  v1 = MKBGetDeviceLockState();
  if (v1 != 3 && v1)
  {
    sub_23FFB83EC();
    swift_allocError();
    *v14 = 1;
LABEL_12:
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = sub_23FFB959C();
  *(v0 + 104) = v2;
  if (!v2)
  {
LABEL_9:
    sub_23FFD923C();
    v15 = sub_23FFD927C();
    v16 = sub_23FFD955C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23FF4C000, v15, v16, "Unexpected connection type", v17, 2u);
      MEMORY[0x245CB48E0](v17, -1, -1);
    }

    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 80);

    (*(v19 + 8))(v18, v20);
    sub_23FFB83EC();
    swift_allocError();
    *v21 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  *(v0 + 48) = &unk_2851FEFF8;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = v4;
  v6 = v3;
  v7 = sub_23FFD933C();
  v8 = sub_23FFD933C();
  v9 = [objc_opt_self() attributeWithDomain:v7 name:v8];
  *(v0 + 112) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A41F8, &qword_23FFE5768);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23FFE5750;
  *(v10 + 32) = v9;
  sub_23FFB9744();
  v11 = v9;
  v12 = sub_23FFD93DC();

  v13 = [v5 remoteTargetWithLaunchingAssertionAttributes_];

  if (v13)
  {
    sub_23FFD95DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  *(v0 + 16) = v33;
  *(v0 + 32) = v34;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4208, &qword_23FFE5780);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 56);
      *(v0 + 120) = v22;
      type metadata accessor for LaunchAngelXPCRequest(0);
      sub_23FFB99E8(&qword_27E3A4210, type metadata accessor for LaunchAngelXPCRequest, protocol conformance descriptor for LaunchAngelXPCRequest);
      sub_23FFB99E8(&qword_27E3A4218, type metadata accessor for LaunchAngelXPCRequest, protocol conformance descriptor for LaunchAngelXPCRequest);
      v23 = sub_23FFD90EC();
      *(v0 + 128) = v23;
      *(v0 + 136) = v24;
      v28 = v23;
      v29 = v24;
      v30 = swift_task_alloc();
      *(v0 + 144) = v30;
      v30[2] = v22;
      v30[3] = v28;
      v30[4] = v29;
      v31 = swift_task_alloc();
      *(v0 + 152) = v31;
      *v31 = v0;
      v31[1] = sub_23FFB8188;
      v32 = *(v0 + 64);

      return MEMORY[0x2822008A0](v32, 0, 0, 0xD00000000000001CLL, 0x800000023FFEC1E0, sub_23FFB97F8, v30, &type metadata for LaunchAngelXPCResponse);
    }
  }

  else
  {
    sub_23FFB9790(v0 + 16);
  }

  sub_23FFB83EC();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();

  [v6 invalidate];
LABEL_19:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_23FFB8188()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_23FFB8344;
  }

  else
  {

    v2 = sub_23FFB82A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFB82A4()
{
  v1 = v0[14];
  v2 = v0[13];
  sub_23FF62F84(v0[16], v0[17]);
  swift_unknownObjectRelease();

  [v2 invalidate];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23FFB8344()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_23FF62F84(v0[16], v0[17]);
  swift_unknownObjectRelease();

  [v1 invalidate];

  v3 = v0[1];

  return v3();
}

unint64_t sub_23FFB83EC()
{
  result = qword_27E3A4190;
  if (!qword_27E3A4190)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchAngelConnectionUtilities.Error, &type metadata for LaunchAngelConnectionUtilities.Error, v0, v1);
    atomic_store(result, &qword_27E3A4190);
  }

  return result;
}

uint64_t LaunchAngelConnectionUtilities.Error.hashValue.getter()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

void sub_23FFB84CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4228, &qword_23FFE5870);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_23FFD8F8C();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_23FFB987C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FFB9004;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  [a2 handleXPCRequest:v10 reply:v13];
  _Block_release(v13);
}

uint64_t sub_23FFB869C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v39[2] = a2;
  v45 = *MEMORY[0x277D85DE8];
  v5 = sub_23FFD909C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23FFD929C();
  v40 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4230, &qword_23FFE5878);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = v39 - v19;
  if (a3)
  {
    v21 = a3;
    sub_23FFD923C();
    v22 = v21;
    v23 = sub_23FFD927C();
    v24 = sub_23FFD955C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      v27 = v22;
      v28 = [v27 description];
      v29 = sub_23FFD935C();
      v31 = v30;

      v32 = sub_23FF8D0E8(v29, v31, &v43);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_23FF4C000, v23, v24, "Error in reply: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CB48E0](v26, -1, -1);
      MEMORY[0x245CB48E0](v25, -1, -1);
    }

    (*(v40 + 8))(v13, v41);
    v43 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4228, &qword_23FFE5870);
    return sub_23FFD943C();
  }

  else
  {
    v34 = v18;
    v39[0] = v11;
    sub_23FFB9928(&qword_27E3A4238, MEMORY[0x277CD4A80]);
    sub_23FFB9928(&qword_27E3A4240, MEMORY[0x277CD4A78]);
    sub_23FFD90DC();
    v39[1] = 0;
    (*(v34 + 16))(v17, v20, v14);
    v35 = (*(v34 + 88))(v17, v14);
    if (v35 == *MEMORY[0x277CD4A70])
    {
      (*(v34 + 96))(v17, v14);
      v36 = v17[8];
      v43 = *v17;
      v44 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4228, &qword_23FFE5870);
      sub_23FFD944C();
      return (*(v34 + 8))(v20, v14);
    }

    else if (v35 == *MEMORY[0x277CD4A68])
    {
      (*(v34 + 96))(v17, v14);
      (*(v6 + 32))(v8, v17, v5);
      sub_23FFB99E8(&qword_27E3A2C60, MEMORY[0x277CD4A58], MEMORY[0x277CD4A60]);
      v37 = swift_allocError();
      (*(v6 + 16))(v38, v8, v5);
      v43 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4228, &qword_23FFE5870);
      sub_23FFD943C();
      (*(v6 + 8))(v8, v5);
      return (*(v34 + 8))(v20, v14);
    }

    else
    {
      result = sub_23FFD973C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23FFB9004(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_23FFD8F9C();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  sub_23FF62F84(v7, v9);
}

void sub_23FFB90AC(void *a1)
{
  v2 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  v3 = sub_23FFD933C();
  v4 = [objc_opt_self() interfaceWithIdentifier_];

  v14 = sub_23FFB9344;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_23FFB9350;
  v13 = &block_descriptor_17;
  v5 = _Block_copy(&v10);
  v6 = &unk_2851FEBD0;

  v7 = [objc_opt_self() protocolForProtocol:v6 interpreter:v5];
  _Block_release(v5);

  [v4 setServer_];
  [a1 setInterface_];
  v14 = sub_23FFB93A4;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_23FFB9440;
  v13 = &block_descriptor_20_0;
  v8 = _Block_copy(&v10);
  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v14 = sub_23FFB94A8;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_23FFB9440;
  v13 = &block_descriptor_23;
  v9 = _Block_copy(&v10);
  [a1 setInvalidationHandler_];
  _Block_release(v9);
}

id sub_23FFB9350(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t sub_23FFB93A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4248, &unk_23FFE5880);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23FFDD040;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000023FFEC3A0;
  sub_23FFD9A0C();
}

void sub_23FFB9440(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23FFB94A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4248, &unk_23FFE5880);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23FFDD040;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000023FFEC380;
  sub_23FFD9A0C();
}

uint64_t sub_23FFB9548(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_23FFB959C()
{
  v0 = sub_23FFD933C();
  v1 = sub_23FFD933C();
  v2 = [objc_opt_self() endpointForSystemMachName:v0 service:v1 instance:0];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() connectionWithEndpoint_];
  if (!v3)
  {
LABEL_5:

    return v3;
  }

  v6[4] = sub_23FFB9544;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23FFB9548;
  v6[3] = &block_descriptor_14;
  v4 = _Block_copy(v6);

  [v3 configureConnection_];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    [v3 activate];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_23FFB9744()
{
  result = qword_27E3A4200;
  if (!qword_27E3A4200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3A4200);
  }

  return result;
}

uint64_t sub_23FFB9790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4EF0, &unk_23FFE5770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23FFB9808()
{
  result = qword_27E3A4220;
  if (!qword_27E3A4220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchAngelConnectionUtilities.Error, &type metadata for LaunchAngelConnectionUtilities.Error, v0, v1);
    atomic_store(result, &qword_27E3A4220);
  }

  return result;
}

uint64_t sub_23FFB987C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4228, &qword_23FFE5870) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23FFB869C(a1, a2, a3, v8);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FFB9928(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4230, &qword_23FFE5878);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FFB9978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4EF0, &unk_23FFE5770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFB99E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

__n128 PerformActionRequest.init(request:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t PerformActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 48) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_23FFB9A94, 0, 0);
}

uint64_t sub_23FFB9A94()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_23FFB9B9C;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_23FF579FC(v5, v3, v4, v1, sub_23FFBA834, 0);
}

uint64_t sub_23FFB9B9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23FFB9C90()
{
  if (*v0)
  {
    return 0x63694C77656E6572;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_23FFB9CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000023FFEC3E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63694C77656E6572 && a2 == 0xED00007365736E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23FFD996C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23FFB9DCC(uint64_t a1)
{
  v2 = sub_23FFBA910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB9E08(uint64_t a1)
{
  v2 = sub_23FFBA910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB9E44(uint64_t a1)
{
  v2 = sub_23FFBA9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB9E80(uint64_t a1)
{
  v2 = sub_23FFBA9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB9EBC(uint64_t a1)
{
  v2 = sub_23FFBA964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB9EF8(uint64_t a1)
{
  v2 = sub_23FFBA964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformActionRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4250, &qword_23FFE5898);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v19 = v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4258, &qword_23FFE58A0);
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4260, &unk_23FFE58A8);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = v17 - v9;
  v11 = v1[1];
  v22 = *v1;
  v17[1] = v11;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBA910();
  sub_23FFD9ACC();
  if (v12)
  {
    v26 = 1;
    sub_23FFBA964();
    v13 = v19;
    v14 = v23;
    sub_23FFD988C();
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
    sub_23FF79774(&qword_27E3A2C20, MEMORY[0x277D84D40], MEMORY[0x277D83948]);
    v15 = v21;
    sub_23FFD991C();
    (*(v20 + 8))(v13, v15);
  }

  else
  {
    v25 = 0;
    sub_23FFBA9B8();
    v14 = v23;
    sub_23FFD988C();
    sub_23FFD98EC();
    (*(v18 + 8))(v7, v5);
  }

  return (*(v8 + 8))(v10, v14);
}

uint64_t PerformActionRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4280, &qword_23FFE58B8);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v30[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4288, &qword_23FFE58C0);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4290, &qword_23FFE58C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23FFBA910();
  v13 = v37;
  sub_23FFD9AAC();
  if (!v13)
  {
    v32 = v5;
    v37 = v9;
    v14 = v36;
    v15 = sub_23FFD986C();
    v16 = (2 * *(v15 + 16)) | 1;
    v39 = v15;
    v40 = v15 + 32;
    v41 = 0;
    v42 = v16;
    v17 = sub_23FF75230();
    v18 = v8;
    if (v17 == 2 || v41 != v42 >> 1)
    {
      v20 = sub_23FFD970C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v22 = &type metadata for PerformActionRequest.Request;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v37 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v17;
      if (v17)
      {
        LOBYTE(v43) = 1;
        sub_23FFBA964();
        sub_23FFD979C();
        v19 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
        sub_23FF79774(&qword_27E3A2C30, MEMORY[0x277D84D68], MEMORY[0x277D83978]);
        v24 = v4;
        v25 = v33;
        sub_23FFD983C();
        (*(v35 + 8))(v24, v25);
        (*(v19 + 8))(v11, v18);
        swift_unknownObjectRelease();
        v26 = 0;
        v27 = v43;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_23FFBA9B8();
        sub_23FFD979C();
        v28 = v32;
        v27 = sub_23FFD980C();
        v26 = v29;
        (*(v34 + 8))(v7, v28);
        (*(v37 + 8))(v11, v8);
        swift_unknownObjectRelease();
      }

      *v14 = v27;
      *(v14 + 8) = v26;
      *(v14 + 16) = v31 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

double PerformActionRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_23FFBAA0C(v2, v3, v4);
}

void sub_23FFBA834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);

  [a1 performActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FFBA910()
{
  result = qword_27E3A4268;
  if (!qword_27E3A4268)
  {
    result = swift_getWitnessTable(a1sB, &type metadata for PerformActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4268);
  }

  return result;
}

unint64_t sub_23FFBA964()
{
  result = qword_27E3A4270;
  if (!qword_27E3A4270)
  {
    result = swift_getWitnessTable(byte_23FFE62A8, &type metadata for PerformActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4270);
  }

  return result;
}

unint64_t sub_23FFBA9B8()
{
  result = qword_27E3A4278;
  if (!qword_27E3A4278)
  {
    result = swift_getWitnessTable(byte_23FFE6258, &type metadata for PerformActionRequest.Request.HandleSuccessfulAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4278);
  }

  return result;
}

unint64_t PerformActionRequest.stringValue.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    sub_23FFD96DC();

    v19 = 0xD000000000000014;
    v2 = *(v1 + 16);
    if (v2)
    {
      v17 = MEMORY[0x277D84F90];
      sub_23FF823D4(0, v2, 0);
      v3 = v17;
      v4 = v1 + 32;
      do
      {
        v4 += 8;
        v5 = sub_23FFD995C();
        v18 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v5;
          v11 = v6;
          sub_23FF823D4((v7 > 1), v8 + 1, 1);
          v6 = v11;
          v5 = v10;
          v3 = v18;
        }

        *(v3 + 16) = v8 + 1;
        v9 = v3 + 16 * v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v6;
        --v2;
      }

      while (v2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
    sub_23FF94764();
    v13 = sub_23FFD931C();
    v15 = v14;

    MEMORY[0x245CB3B50](v13, v15);
  }

  else
  {
    v12 = v0[1];
    sub_23FFD96DC();

    v19 = 0xD00000000000001BLL;
    MEMORY[0x245CB3B50](v1, v12);
  }

  return v19;
}

uint64_t sub_23FFBAC08(uint64_t a1)
{
  v2 = sub_23FFBBB50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBAC44(uint64_t a1)
{
  v2 = sub_23FFBBB50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformActionRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4298, &qword_23FFE58D0);
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBAA0C(v6, v7, v8);
  sub_23FFBBB50();
  sub_23FFD9ACC();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_23FFBBBA4();
  v9 = v11;
  sub_23FFD991C();
  sub_23FFBBBF8(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t PerformActionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42B0, &qword_23FFE58D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBBB50();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FFBBC04();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFBAFA8(uint64_t a1)
{
  v2 = sub_23FFBBC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBAFE4(uint64_t a1)
{
  v2 = sub_23FFBBC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBB020(uint64_t a1)
{
  v2 = sub_23FFBBCAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBB05C(uint64_t a1)
{
  v2 = sub_23FFBBCAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformActionResponse.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42C0, &qword_23FFE58E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42C8, &qword_23FFE58E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBBC58();
  sub_23FFD9ACC();
  sub_23FFBBCAC();
  sub_23FFD988C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t PerformActionResponse.Response.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

uint64_t PerformActionResponse.Response.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42E0, &qword_23FFE58F0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42E8, &qword_23FFE58F8);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBBC58();
  sub_23FFD9AAC();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_23FFD986C();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_23FF75234() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_23FFD970C();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v16 = &type metadata for PerformActionResponse.Response;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_23FFBBCAC();
  sub_23FFD979C();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_23FFBB640(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42C0, &qword_23FFE58E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42C8, &qword_23FFE58E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBBC58();
  sub_23FFD9ACC();
  sub_23FFBBCAC();
  sub_23FFD988C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23FFBB820(uint64_t a1)
{
  v2 = sub_23FFBBD00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBB85C(uint64_t a1)
{
  v2 = sub_23FFBBD00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A42F0, &qword_23FFE5900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBBD00();
  sub_23FFD9ACC();
  sub_23FFBBD54();
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PerformActionResponse.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4308, &qword_23FFE5908);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFBBD00();
  sub_23FFD9AAC();
  if (!v1)
  {
    sub_23FFBBDA8();
    sub_23FFD983C();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FFBBB50()
{
  result = qword_27E3A42A0;
  if (!qword_27E3A42A0)
  {
    result = swift_getWitnessTable(aTB, &type metadata for PerformActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A42A0);
  }

  return result;
}

unint64_t sub_23FFBBBA4()
{
  result = qword_27E3A42A8;
  if (!qword_27E3A42A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformActionRequest.Request, &type metadata for PerformActionRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A42A8);
  }

  return result;
}

unint64_t sub_23FFBBC04()
{
  result = qword_27E3A42B8;
  if (!qword_27E3A42B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformActionRequest.Request, &type metadata for PerformActionRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A42B8);
  }

  return result;
}

unint64_t sub_23FFBBC58()
{
  result = qword_27E3A42D0;
  if (!qword_27E3A42D0)
  {
    result = swift_getWitnessTable(aQtB0, &type metadata for PerformActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A42D0);
  }

  return result;
}

unint64_t sub_23FFBBCAC()
{
  result = qword_27E3A42D8;
  if (!qword_27E3A42D8)
  {
    result = swift_getWitnessTable(byte_23FFE6168, &type metadata for PerformActionResponse.Response.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A42D8);
  }

  return result;
}

unint64_t sub_23FFBBD00()
{
  result = qword_27E3A42F8;
  if (!qword_27E3A42F8)
  {
    result = swift_getWitnessTable(byte_23FFE6118, &type metadata for PerformActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A42F8);
  }

  return result;
}

unint64_t sub_23FFBBD54()
{
  result = qword_27E3A4300;
  if (!qword_27E3A4300)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformActionResponse.Response, &type metadata for PerformActionResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A4300);
  }

  return result;
}

unint64_t sub_23FFBBDA8()
{
  result = qword_27E3A4310;
  if (!qword_27E3A4310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformActionResponse.Response, &type metadata for PerformActionResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A4310);
  }

  return result;
}

unint64_t sub_23FFBBE00()
{
  result = qword_27E3A4318;
  if (!qword_27E3A4318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformActionResponse.Response, &type metadata for PerformActionResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A4318);
  }

  return result;
}

uint64_t sub_23FFBBE70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FFBBEB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_23FFBBFAC()
{
  result = qword_27E3A4320;
  if (!qword_27E3A4320)
  {
    result = swift_getWitnessTable(byte_23FFE5D08, &type metadata for PerformActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4320);
  }

  return result;
}

unint64_t sub_23FFBC004()
{
  result = qword_27E3A4328;
  if (!qword_27E3A4328)
  {
    result = swift_getWitnessTable(aCB, &type metadata for PerformActionRequest.Request.HandleSuccessfulAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4328);
  }

  return result;
}

unint64_t sub_23FFBC05C()
{
  result = qword_27E3A4330;
  if (!qword_27E3A4330)
  {
    result = swift_getWitnessTable("QB%B܈", &type metadata for PerformActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4330);
  }

  return result;
}

unint64_t sub_23FFBC0B4()
{
  result = qword_27E3A4338;
  if (!qword_27E3A4338)
  {
    result = swift_getWitnessTable(byte_23FFE5F30, &type metadata for PerformActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4338);
  }

  return result;
}

unint64_t sub_23FFBC10C()
{
  result = qword_27E3A4340;
  if (!qword_27E3A4340)
  {
    result = swift_getWitnessTable(byte_23FFE6038, &type metadata for PerformActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4340);
  }

  return result;
}

unint64_t sub_23FFBC164()
{
  result = qword_27E3A4348;
  if (!qword_27E3A4348)
  {
    result = swift_getWitnessTable(byte_23FFE60F0, &type metadata for PerformActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4348);
  }

  return result;
}

unint64_t sub_23FFBC1BC()
{
  result = qword_27E3A4350;
  if (!qword_27E3A4350)
  {
    result = swift_getWitnessTable(aAoBd, &type metadata for PerformActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4350);
  }

  return result;
}

unint64_t sub_23FFBC214()
{
  result = qword_27E3A4358;
  if (!qword_27E3A4358)
  {
    result = swift_getWitnessTable(aQkB, &type metadata for PerformActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4358);
  }

  return result;
}

unint64_t sub_23FFBC26C()
{
  result = qword_27E3A4360;
  if (!qword_27E3A4360)
  {
    result = swift_getWitnessTable(aIpB, &type metadata for PerformActionResponse.Response.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4360);
  }

  return result;
}

unint64_t sub_23FFBC2C4()
{
  result = qword_27E3A4368;
  if (!qword_27E3A4368)
  {
    result = swift_getWitnessTable(aYlB, &type metadata for PerformActionResponse.Response.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4368);
  }

  return result;
}

unint64_t sub_23FFBC31C()
{
  result = qword_27E3A4370;
  if (!qword_27E3A4370)
  {
    result = swift_getWitnessTable(byte_23FFE5FA8, &type metadata for PerformActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4370);
  }

  return result;
}

unint64_t sub_23FFBC374()
{
  result = qword_27E3A4378;
  if (!qword_27E3A4378)
  {
    result = swift_getWitnessTable(aLB, &type metadata for PerformActionResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4378);
  }

  return result;
}

unint64_t sub_23FFBC3CC()
{
  result = qword_27E3A4380;
  if (!qword_27E3A4380)
  {
    result = swift_getWitnessTable(byte_23FFE5EA0, &type metadata for PerformActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4380);
  }

  return result;
}

unint64_t sub_23FFBC424()
{
  result = qword_27E3A4388;
  if (!qword_27E3A4388)
  {
    result = swift_getWitnessTable(byte_23FFE5EC8, &type metadata for PerformActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4388);
  }

  return result;
}

unint64_t sub_23FFBC47C()
{
  result = qword_27E3A4390;
  if (!qword_27E3A4390)
  {
    result = swift_getWitnessTable(aQrBh, &type metadata for PerformActionRequest.Request.HandleSuccessfulAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4390);
  }

  return result;
}

unint64_t sub_23FFBC4D4()
{
  result = qword_27E3A4398;
  if (!qword_27E3A4398)
  {
    result = swift_getWitnessTable(byte_23FFE5D58, &type metadata for PerformActionRequest.Request.HandleSuccessfulAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4398);
  }

  return result;
}

unint64_t sub_23FFBC52C()
{
  result = qword_27E3A43A0;
  if (!qword_27E3A43A0)
  {
    result = swift_getWitnessTable(aSB_0, &type metadata for PerformActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A43A0);
  }

  return result;
}

unint64_t sub_23FFBC584()
{
  result = qword_27E3A43A8;
  if (!qword_27E3A43A8)
  {
    result = swift_getWitnessTable(a9oB, &type metadata for PerformActionRequest.Request.RenewLicensesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A43A8);
  }

  return result;
}

unint64_t sub_23FFBC5DC()
{
  result = qword_27E3A43B0;
  if (!qword_27E3A43B0)
  {
    result = swift_getWitnessTable(byte_23FFE5DE8, &type metadata for PerformActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A43B0);
  }

  return result;
}

unint64_t sub_23FFBC634()
{
  result = qword_27E3A43B8;
  if (!qword_27E3A43B8)
  {
    result = swift_getWitnessTable(byte_23FFE5E10, &type metadata for PerformActionRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A43B8);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 FetchPrivateDataRequest.init(request:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t FetchPrivateDataRequest.run()(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x2822009F8](sub_23FFBC70C, 0, 0);
}

uint64_t sub_23FFBC70C()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6F93C;
  v2 = *(v0 + 72);

  return sub_23FF56B2C(v2, v0 + 16, sub_23FFBF434, 0);
}

uint64_t FetchPrivateDataRequest.runSynchronously()@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  if (qword_27E3A2160 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  return sub_23FF7839C(v5, sub_23FFBF448, 0, a1);
}

uint64_t SetPrivateDataRequest.run()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x2822009F8](sub_23FFBC8E0, 0, 0);
}

uint64_t sub_23FFBC8E0()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23FFBC9D8;

  return sub_23FF56EC0(v0 + 16, sub_23FFC4D64, 0);
}

uint64_t sub_23FFBC9D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SetPrivateDataRequest.runSynchronously()()
{
  v1 = *(v0 + 16);
  v2[0] = *v0;
  v2[1] = v1;
  v2[2] = *(v0 + 32);
  v3 = *(v0 + 48);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(v2, sub_23FFC4D78, 0);
}

uint64_t FetchPublicDataRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x2822009F8](sub_23FFBCB9C, 0, 0);
}

uint64_t sub_23FFBCB9C()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23FF53BC8;
  v3 = *(v0 + 16);

  return sub_23FF57BFC(v3, v1, sub_23FFC2C24, 0);
}

uint64_t sub_23FFBCCF0()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23FF53BC8;
  v2 = *(v0 + 16);

  return sub_23FF57F80(v2, sub_23FFC73BC, 0);
}

uint64_t sub_23FFBCDE8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD00000000000001DLL;
    if (a1 != 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v6 = v5;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746169636F737361;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_23FFBCF4C(uint64_t a1)
{
  v2 = sub_23FFC7424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBCF88(uint64_t a1)
{
  v2 = sub_23FFC7424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBCFC4(uint64_t a1)
{
  v2 = sub_23FFC776C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD000(uint64_t a1)
{
  v2 = sub_23FFC776C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD03C(uint64_t a1)
{
  v2 = sub_23FFC7718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD078(uint64_t a1)
{
  v2 = sub_23FFC7718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FFBD160(uint64_t a1)
{
  v2 = sub_23FFC76C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD19C(uint64_t a1)
{
  v2 = sub_23FFC76C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD1E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFCC3B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFBD208(uint64_t a1)
{
  v2 = sub_23FFC73D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD244(uint64_t a1)
{
  v2 = sub_23FFC73D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD280(uint64_t a1)
{
  v2 = sub_23FFC7670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD2BC(uint64_t a1)
{
  v2 = sub_23FFC7670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD2F8(uint64_t a1)
{
  v2 = sub_23FFC7478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD334(uint64_t a1)
{
  v2 = sub_23FFC7478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD370(uint64_t a1)
{
  v2 = sub_23FFC75C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD3AC(uint64_t a1)
{
  v2 = sub_23FFC75C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD3E8(uint64_t a1)
{
  v2 = sub_23FFC74CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD424(uint64_t a1)
{
  v2 = sub_23FFC74CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD460(uint64_t a1)
{
  v2 = sub_23FFC7520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD49C(uint64_t a1)
{
  v2 = sub_23FFC7520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBD4D8(uint64_t a1)
{
  v2 = sub_23FFC7574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBD514(uint64_t a1)
{
  v2 = sub_23FFC7574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchPrivateDataRequest.Request.encode(to:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43C0, &qword_23FFE63A0);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43C8, &qword_23FFE63A8);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v56 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43D0, &qword_23FFE63B0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v56 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43D8, &qword_23FFE63B8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43E0, &qword_23FFE63C0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v56 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43E8, &qword_23FFE63C8);
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v87 = &v56 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43F0, &qword_23FFE63D0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A43F8, &qword_23FFE63D8);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4400, &qword_23FFE63E0);
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4408, &qword_23FFE63E8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4410, &unk_23FFE63F0);
  v91 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = *(v1 + 8);
  v90 = *v1;
  v88 = v20;
  v21 = *(v1 + 24);
  v81 = *(v1 + 16);
  v82 = v21;
  v22 = *(v1 + 40);
  v80 = *(v1 + 32);
  v23 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC73D0();
  v89 = v19;
  sub_23FFD9ACC();
  v24 = v22;
  if (v23)
  {
    v25 = 4;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v22 >> 60) & 3 | v25;
  if (v26 > 2)
  {
    if (v26 > 4)
    {
      v27 = v89;
      if (v26 != 5)
      {
        if (v81 | v88 | v90 | v82 | v80 || v22 != 0x2000000000000000)
        {
          v52 = v81 | v88 | v82 | v80;
          if (v22 != 0x2000000000000000 || v90 != 1 || v52)
          {
            if (v22 == 0x2000000000000000 && v90 == 2 && !v52)
            {
              LOBYTE(v93) = 6;
              sub_23FFC7520();
              v54 = v57;
              sub_23FFD988C();
              (*(v58 + 8))(v54, v59);
            }

            else
            {
              LOBYTE(v93) = 9;
              sub_23FFC7424();
              v55 = v60;
              sub_23FFD988C();
              (*(v61 + 8))(v55, v62);
            }

            goto LABEL_20;
          }

          LOBYTE(v93) = 3;
          sub_23FFC7670();
          v53 = v63;
          sub_23FFD988C();
          (*(v64 + 8))(v53, v65);
        }

        else
        {
          LOBYTE(v93) = 0;
          sub_23FFC776C();
          v51 = v66;
          sub_23FFD988C();
          (*(v67 + 8))(v51, v68);
        }

        return (*(v91 + 8))(v27, v17);
      }

      LOBYTE(v93) = 8;
      sub_23FFC7478();
      v28 = v77;
      sub_23FFD988C();
      v93 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3060, &qword_23FFDE7F0);
      sub_23FF81F3C(&qword_27E3A3068, sub_23FF81EE8, MEMORY[0x277D83948]);
      v29 = v79;
      sub_23FFD991C();
      v39 = v78;
    }

    else
    {
      v27 = v89;
      if (v26 == 3)
      {
        LOBYTE(v93) = 5;
        sub_23FFC7574();
        v28 = v70;
        sub_23FFD988C();
        v29 = v72;
        sub_23FFD98EC();
        v30 = &v100;
      }

      else
      {
        LOBYTE(v93) = 7;
        sub_23FFC74CC();
        v28 = v74;
        sub_23FFD988C();
        v29 = v76;
        sub_23FFD98EC();
        v30 = &v101;
      }

      v39 = *(v30 - 32);
    }

    (*(v39 + 8))(v28, v29);
LABEL_20:
    v41 = *(v91 + 8);
    v42 = v27;
    return v41(v42, v17);
  }

  v31 = v15;
  v33 = v83;
  v32 = v84;
  v34 = v85;
  v35 = v86;
  v36 = v87;
  if (!v26)
  {
    LOBYTE(v93) = 1;
    sub_23FFC7718();
    v40 = v89;
    sub_23FFD988C();
    sub_23FFD98EC();
    (*(v33 + 8))(v31, v13);
    v41 = *(v91 + 8);
    v42 = v40;
    return v41(v42, v17);
  }

  if (v26 == 1)
  {
    LOBYTE(v93) = 2;
    sub_23FFC76C4();
    v37 = v89;
    sub_23FFD988C();
    sub_23FFD98EC();
    (*(v34 + 8))(v32, v35);
    return (*(v91 + 8))(v37, v17);
  }

  else
  {
    v43 = v90;
    v44 = HIDWORD(v90);
    v45 = v88;
    v46 = v81;
    v47 = v82;
    v83 = HIDWORD(v88);
    v84 = HIDWORD(v81);
    v85 = HIDWORD(v82);
    LOBYTE(v93) = 4;
    sub_23FFC75C8();
    v86 = v17;
    v48 = v89;
    sub_23FFD988C();
    v93 = __PAIR64__(v44, v43);
    v94 = __PAIR64__(v83, v45);
    v95 = v46;
    v96 = v84;
    v97 = v47;
    v98 = v85;
    v99 = 0;
    sub_23FFC761C();
    v49 = v69;
    v50 = v92;
    sub_23FFD991C();
    if (!v50)
    {
      v93 = v80;
      v94 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      v99 = 1;
      sub_23FF70D64();
      sub_23FFD991C();
    }

    (*(v73 + 8))(v36, v49);
    return (*(v91 + 8))(v48, v86);
  }
}

uint64_t FetchPrivateDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4460, &qword_23FFE6400);
  v95 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v102 = &v77 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4468, &qword_23FFE6408);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v101 = &v77 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4470, &qword_23FFE6410);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  *&v105 = &v77 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4478, &qword_23FFE6418);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v99 = &v77 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4480, &qword_23FFE6420);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v104 = &v77 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4488, &qword_23FFE6428);
  v91 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v98 = &v77 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4490, &qword_23FFE6430);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v100 = &v77 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4498, &qword_23FFE6438);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v103 = &v77 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44A0, &qword_23FFE6440);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44A8, &qword_23FFE6448);
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44B0, &unk_23FFE6450);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - v18;
  v20 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23FFC73D0();
  v21 = v108;
  sub_23FFD9AAC();
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = v15;
  v77 = v13;
  v24 = v103;
  v23 = v104;
  v25 = v105;
  v78 = 0;
  v108 = v17;
  v26 = v106;
  v27 = sub_23FFD986C();
  v28 = (2 * *(v27 + 16)) | 1;
  v114 = v27;
  v115 = v27 + 32;
  v116 = 0;
  v117 = v28;
  v29 = sub_23FF75238();
  if (v29 == 10 || v116 != v117 >> 1)
  {
    v40 = sub_23FFD970C();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v42 = &type metadata for FetchPrivateDataRequest.Request;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
LABEL_11:
    (*(v108 + 8))(v19, v16);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v38 = v107;
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (v29 > 4u)
  {
    v44 = v19;
    v45 = v16;
    v39 = v26;
    if (v29 <= 6u)
    {
      if (v29 == 5)
      {
        LOBYTE(v111) = 5;
        sub_23FFC7574();
        v53 = v23;
        v47 = v45;
        v48 = v44;
        v54 = v78;
        sub_23FFD979C();
        if (!v54)
        {
          v55 = v89;
          v35 = sub_23FFD980C();
          v32 = v75;
          (*(v87 + 8))(v53, v55);
          (*(v108 + 8))(v44, v45);
          swift_unknownObjectRelease();
          v33 = 0;
          v37 = 0;
          v34 = 0uLL;
          v36 = 0x3000000000000000;
          goto LABEL_42;
        }

        goto LABEL_29;
      }

      LOBYTE(v111) = 6;
      sub_23FFC7520();
      v68 = v99;
      v69 = v78;
      sub_23FFD979C();
      if (!v69)
      {
        (*(v88 + 8))(v68, v90);
        (*(v108 + 8))(v44, v45);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0uLL;
        v37 = 1;
        v36 = 0x2000000000000000;
        v35 = 2;
        goto LABEL_42;
      }
    }

    else
    {
      if (v29 == 7)
      {
        LOBYTE(v111) = 7;
        sub_23FFC74CC();
        v47 = v45;
        v48 = v44;
        v60 = v78;
        sub_23FFD979C();
        if (!v60)
        {
          v70 = v94;
          v35 = sub_23FFD980C();
          v32 = v74;
          (*(v93 + 8))(v25, v70);
          (*(v108 + 8))(v44, v45);
          swift_unknownObjectRelease();
          v33 = 0;
          v36 = 0;
          v34 = 0uLL;
          v37 = 1;
          goto LABEL_42;
        }

        goto LABEL_29;
      }

      if (v29 == 8)
      {
        LOBYTE(v111) = 8;
        sub_23FFC7478();
        v46 = v101;
        v47 = v45;
        v48 = v44;
        v49 = v78;
        sub_23FFD979C();
        if (!v49)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3060, &qword_23FFDE7F0);
          sub_23FF81F3C(&qword_27E3A3080, sub_23FF81FB4, MEMORY[0x277D83978]);
          v50 = v96;
          sub_23FFD983C();
          (*(v97 + 8))(v46, v50);
          (*(v108 + 8))(v44, v45);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          v35 = v111;
          v34 = 0uLL;
          v37 = 1;
          v36 = 0x1000000000000000;
          goto LABEL_42;
        }

LABEL_29:
        (*(v108 + 8))(v48, v47);
        swift_unknownObjectRelease();
        v38 = v107;
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }

      LOBYTE(v111) = 9;
      sub_23FFC7424();
      v65 = v102;
      v66 = v78;
      sub_23FFD979C();
      if (!v66)
      {
        (*(v95 + 8))(v65, v92);
        (*(v108 + 8))(v44, v45);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0uLL;
        v37 = 1;
        v36 = 0x2000000000000000;
        v35 = 3;
        goto LABEL_42;
      }
    }

    (*(v108 + 8))(v44, v45);
    goto LABEL_12;
  }

  if (v29 > 1u)
  {
    v30 = v78;
    if (v29 == 2)
    {
      LOBYTE(v111) = 2;
      sub_23FFC76C4();
      v56 = v24;
      sub_23FFD979C();
      if (!v30)
      {
        v57 = v82;
        v58 = sub_23FFD980C();
        v59 = v108;
        v35 = v58;
        v32 = v73;
        (*(v83 + 8))(v56, v57);
        (*(v59 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v33 = 0;
        v37 = 0;
        v34 = 0uLL;
        v36 = 0x1000000000000000;
        v38 = v107;
        v39 = v26;
        goto LABEL_43;
      }

      goto LABEL_11;
    }

    if (v29 == 3)
    {
      LOBYTE(v111) = 3;
      sub_23FFC7670();
      v31 = v100;
      sub_23FFD979C();
      if (!v30)
      {
        (*(v84 + 8))(v31, v85);
        (*(v108 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0uLL;
        v35 = 1;
        v36 = 0x2000000000000000;
        v37 = 1;
        v38 = v107;
        v39 = v26;
LABEL_43:
        *v39 = v35;
        *(v39 + 8) = v32;
        *(v39 + 16) = v34;
        *(v39 + 32) = v33;
        *(v39 + 40) = v36;
        *(v39 + 48) = v37;
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }

      goto LABEL_11;
    }

    LOBYTE(v111) = 4;
    sub_23FFC75C8();
    v61 = v98;
    sub_23FFD979C();
    v62 = v16;
    if (!v30)
    {
      v39 = v26;
      v63 = v62;
      v119 = 0;
      sub_23FFC77C0();
      v64 = v86;
      sub_23FFD983C();
      v35 = v111;
      v32 = v112;
      v105 = v113;
      v118 = 1;
      sub_23FF71690();
      sub_23FFD983C();
      (*(v91 + 8))(v61, v64);
      (*(v108 + 8))(v19, v63);
      swift_unknownObjectRelease();
      v37 = 0;
      v33 = v109;
      v36 = v110 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v38 = v107;
      v34 = v105;
      goto LABEL_43;
    }

LABEL_35:
    (*(v108 + 8))(v19, v62);
    goto LABEL_12;
  }

  v51 = v78;
  if (v29)
  {
    LOBYTE(v111) = 1;
    sub_23FFC7718();
    v67 = v12;
    sub_23FFD979C();
    v62 = v16;
    if (v51)
    {
      goto LABEL_35;
    }

    v39 = v26;
    v71 = v62;
    v72 = v81;
    v35 = sub_23FFD980C();
    v32 = v76;
    (*(v80 + 8))(v67, v72);
    (*(v108 + 8))(v19, v71);
    swift_unknownObjectRelease();
    v33 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0uLL;
LABEL_42:
    v38 = v107;
    goto LABEL_43;
  }

  LOBYTE(v111) = 0;
  sub_23FFC776C();
  sub_23FFD979C();
  v52 = v16;
  if (!v51)
  {
    v39 = v26;
    (*(v79 + 8))(v22, v77);
    (*(v108 + 8))(v19, v52);
    swift_unknownObjectRelease();
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0uLL;
    v37 = 1;
    v36 = 0x2000000000000000;
    v38 = v107;
    goto LABEL_43;
  }

  (*(v108 + 8))(v19, v16);
  swift_unknownObjectRelease();
  v38 = v107;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

double FetchPrivateDataRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_23FFC7814(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_23FFBF45C(uint64_t a1)
{
  v2 = sub_23FFC7878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBF498(uint64_t a1)
{
  v2 = sub_23FFC7878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchPrivateDataRequest.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44C0, &qword_23FFE6460);
  v27 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v18 = v15 - v3;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v16 = v10;
  v11 = a1[3];
  v17 = a1[4];
  v15[1] = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_23FFC7814(v4, v5, v6, v7, v9, v8, v10);
  sub_23FFC7878();
  v12 = v18;
  sub_23FFD9ACC();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v16;
  sub_23FFC78CC();
  v13 = v19;
  sub_23FFD991C();
  sub_23FFC7920(v20, v21, v22, v23, v24, v25, v26);
  return (*(v27 + 8))(v12, v13);
}

uint64_t FetchPrivateDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44C8, &qword_23FFE6468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC7878();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FFC7984();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v13[1];
    v11 = v13[2];
    *a2 = v13[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FFBF808(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6554686372616573;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746169636F737361;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_23FFBF9A4(uint64_t a1)
{
  v2 = sub_23FFC7A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBF9E0(uint64_t a1)
{
  v2 = sub_23FFC7A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFA1C(uint64_t a1)
{
  v2 = sub_23FFC7D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFA58(uint64_t a1)
{
  v2 = sub_23FFC7D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFA94(uint64_t a1)
{
  v2 = sub_23FFC7CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFAD0(uint64_t a1)
{
  v2 = sub_23FFC7CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFB0C(uint64_t a1)
{
  v2 = sub_23FFC7C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFB48(uint64_t a1)
{
  v2 = sub_23FFC7C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFB8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFCC6E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFBFBB4(uint64_t a1)
{
  v2 = sub_23FFC79D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFBF0(uint64_t a1)
{
  v2 = sub_23FFC79D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFC2C(uint64_t a1)
{
  v2 = sub_23FFC7C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFC68(uint64_t a1)
{
  v2 = sub_23FFC7C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFCA4(uint64_t a1)
{
  v2 = sub_23FFC7A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFCE0(uint64_t a1)
{
  v2 = sub_23FFC7A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFD1C(uint64_t a1)
{
  v2 = sub_23FFC7BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFD58(uint64_t a1)
{
  v2 = sub_23FFC7BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFD94(uint64_t a1)
{
  v2 = sub_23FFC7AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFDD0(uint64_t a1)
{
  v2 = sub_23FFC7AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFE0C(uint64_t a1)
{
  v2 = sub_23FFC7B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFE48(uint64_t a1)
{
  v2 = sub_23FFC7B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFBFE84(uint64_t a1)
{
  v2 = sub_23FFC7B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFBFEC0(uint64_t a1)
{
  v2 = sub_23FFC7B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchDataResponse.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44D8, &qword_23FFE6470);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44E0, &qword_23FFE6478);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44E8, &qword_23FFE6480);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44F0, &qword_23FFE6488);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A44F8, &qword_23FFE6490);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v45 = &v36 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4500, &qword_23FFE6498);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v36 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4508, &qword_23FFE64A0);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v36 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4510, &qword_23FFE64A8);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4518, &qword_23FFE64B0);
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4520, &qword_23FFE64B8);
  v36 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4528, &qword_23FFE64C0);
  v23 = *(v22 - 8);
  v65 = v22;
  v66 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v36 - v24;
  v26 = *v1;
  v62 = v1[1];
  v63 = v26;
  v27 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC79D8();
  v64 = v25;
  sub_23FFD9ACC();
  if (v27 > 4)
  {
    if (v27 <= 6)
    {
      if (v27 == 5)
      {
        LOBYTE(v67) = 5;
        sub_23FFC7B7C();
        v28 = v45;
        v30 = v64;
        v29 = v65;
        sub_23FFD988C();
        v31 = v49;
        sub_23FFD98FC();
        v32 = v48;
      }

      else
      {
        LOBYTE(v67) = 6;
        sub_23FFC7B28();
        v28 = v50;
        v30 = v64;
        v29 = v65;
        sub_23FFD988C();
        v31 = v52;
        sub_23FFD98FC();
        v32 = v51;
      }
    }

    else if (v27 == 7)
    {
      LOBYTE(v67) = 7;
      sub_23FFC7AD4();
      v28 = v53;
      v30 = v64;
      v29 = v65;
      sub_23FFD988C();
      v31 = v55;
      sub_23FFD989C();
      v32 = v54;
    }

    else if (v27 == 8)
    {
      LOBYTE(v67) = 8;
      sub_23FFC7A80();
      v28 = v56;
      v30 = v64;
      v29 = v65;
      sub_23FFD988C();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
      sub_23FF7E5E4(&qword_27E3A2E00, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      v31 = v58;
      sub_23FFD991C();
      v32 = v57;
    }

    else
    {
      LOBYTE(v67) = 9;
      sub_23FFC7A2C();
      v28 = v59;
      v30 = v64;
      v29 = v65;
      sub_23FFD988C();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4538, &qword_23FFE64C8);
      sub_23FFC7E40(&qword_27E3A4540, &qword_27E3A4548, protocol conformance descriptor for AppLibrary.ExceptionRequest, MEMORY[0x277D83948]);
      v31 = v61;
      sub_23FFD991C();
      v32 = v60;
    }

    goto LABEL_20;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      LOBYTE(v67) = 2;
      sub_23FFC7C78();
      v28 = v38;
      v30 = v64;
      v29 = v65;
      sub_23FFD988C();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
      sub_23FF668B0(&qword_27E3A27F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v31 = v40;
      sub_23FFD991C();
      v32 = v39;
    }

    else if (v27 == 3)
    {
      LOBYTE(v67) = 3;
      sub_23FFC7C24();
      v28 = v41;
      v30 = v64;
      v29 = v65;
      sub_23FFD988C();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
      sub_23FF668B0(&qword_27E3A27F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v31 = v43;
      sub_23FFD991C();
      v32 = v42;
    }

    else
    {
      LOBYTE(v67) = 4;
      sub_23FFC7BD0();
      v28 = v44;
      v30 = v64;
      v29 = v65;
      sub_23FFD988C();
      v67 = v63;
      v68 = v62;
      sub_23FF70D64();
      v31 = v47;
      sub_23FFD991C();
      v32 = v46;
    }

LABEL_20:
    (*(v32 + 8))(v28, v31);
    return (*(v66 + 8))(v30, v29);
  }

  if (!v27)
  {
    LOBYTE(v67) = 0;
    sub_23FFC7D20();
    v34 = v64;
    v33 = v65;
    sub_23FFD988C();
    v67 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4588, &qword_23FFE64D0);
    sub_23FFC7D74(&qword_27E3A4590, sub_23FFC7DEC, MEMORY[0x277D83948]);
    sub_23FFD991C();
    (*(v36 + 8))(v21, v19);
    return (*(v66 + 8))(v34, v33);
  }

  LOBYTE(v67) = 1;
  sub_23FFC7CCC();
  v30 = v64;
  v29 = v65;
  sub_23FFD988C();
  sub_23FFD98FC();
  (*(v37 + 8))(v18, v16);
  return (*(v66 + 8))(v30, v29);
}

uint64_t FetchDataResponse.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45A0, &qword_23FFE64D8);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  MEMORY[0x28223BE20](v3);
  v100 = &v73[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45A8, &qword_23FFE64E0);
  v7 = *(v6 - 8);
  v93 = v6;
  v94 = v7;
  MEMORY[0x28223BE20](v6);
  v104 = &v73[-v8];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45B0, &qword_23FFE64E8);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v103 = &v73[-v9];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45B8, &qword_23FFE64F0);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v102 = &v73[-v10];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45C0, &qword_23FFE64F8);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v99 = &v73[-v11];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45C8, &qword_23FFE6500);
  v86 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v97 = &v73[-v12];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45D0, &qword_23FFE6508);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v98 = &v73[-v13];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45D8, &qword_23FFE6510);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v101 = &v73[-v14];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45E0, &qword_23FFE6518);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v16 = &v73[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45E8, &qword_23FFE6520);
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v73[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A45F0, &qword_23FFE6528);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v73[-v22];
  v24 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_23FFC79D8();
  v25 = v114;
  sub_23FFD9AAC();
  if (v25)
  {
    goto LABEL_14;
  }

  v76 = v19;
  v75 = v17;
  v26 = v101;
  v27 = v102;
  v28 = v103;
  v77 = 0;
  v114 = v21;
  v29 = v104;
  v30 = v105;
  v31 = sub_23FFD986C();
  v32 = (2 * *(v31 + 16)) | 1;
  v109 = v31;
  v110 = v31 + 32;
  v111 = 0;
  v112 = v32;
  v33 = sub_23FF75238();
  if (v33 != 10 && v111 == v112 >> 1)
  {
    v74 = v33;
    if (v33 <= 4u)
    {
      v34 = v77;
      if (v33 > 1u)
      {
        if (v33 == 2)
        {
          LOBYTE(v107) = 2;
          sub_23FFC7C78();
          v36 = v26;
          sub_23FFD979C();
          v35 = v114;
          if (!v34)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
            sub_23FF668B0(&qword_2814FD770, MEMORY[0x277D83808], MEMORY[0x277D83978]);
            v37 = v82;
            sub_23FFD983C();
            v38 = &v113;
            goto LABEL_10;
          }

          goto LABEL_42;
        }

        v35 = v114;
        if (v33 == 3)
        {
          LOBYTE(v107) = 3;
          sub_23FFC7C24();
          v36 = v98;
          sub_23FFD979C();
          if (!v34)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
            sub_23FF668B0(&qword_2814FD770, MEMORY[0x277D83808], MEMORY[0x277D83978]);
            v37 = v85;
            sub_23FFD983C();
            v38 = &v115;
LABEL_10:
            (*(*(v38 - 32) + 8))(v36, v37);
            (*(v35 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v39 = 0;
            v40 = v106;
            v41 = v107;
LABEL_46:
            *v30 = v41;
            *(v30 + 8) = v39;
            *(v30 + 16) = v74;
            return __swift_destroy_boxed_opaque_existential_1(v40);
          }

          goto LABEL_42;
        }

        LOBYTE(v107) = 4;
        sub_23FFC7BD0();
        v60 = v97;
        sub_23FFD979C();
        if (v34)
        {
LABEL_42:
          (*(v35 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v40 = v106;
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }

        v47 = v30;
        sub_23FF71690();
        v61 = v83;
        sub_23FFD983C();
        (*(v86 + 8))(v60, v61);
        (*(v35 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v41 = v107;
        v39 = v108;
        goto LABEL_43;
      }

      if (v33)
      {
        LOBYTE(v107) = 1;
        sub_23FFC7CCC();
        sub_23FFD979C();
        if (!v34)
        {
          v65 = v80;
          v72 = sub_23FFD981C();
          (*(v79 + 8))(v16, v65);
          (*(v114 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v39 = 0;
          v41 = v72 & 1;
          v40 = v106;
          goto LABEL_46;
        }
      }

      else
      {
        LOBYTE(v107) = 0;
        sub_23FFC7D20();
        v51 = v76;
        sub_23FFD979C();
        if (!v34)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4588, &qword_23FFE64D0);
          sub_23FFC7D74(&qword_27E3A4608, sub_23FFC7F24, MEMORY[0x277D83978]);
          v52 = v75;
          sub_23FFD983C();
          (*(v78 + 8))(v51, v52);
          (*(v114 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v39 = 0;
          v40 = v106;
          v41 = v107;
          goto LABEL_46;
        }
      }

      goto LABEL_12;
    }

    if (v33 > 6u)
    {
      if (v33 != 7)
      {
        v46 = v114;
        if (v33 == 8)
        {
          v47 = v30;
          LOBYTE(v107) = 8;
          sub_23FFC7A80();
          v48 = v29;
          v49 = v77;
          sub_23FFD979C();
          if (!v49)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
            sub_23FF7E5E4(&qword_27E3A2E40, MEMORY[0x277D83808], MEMORY[0x277D83528]);
            v50 = v93;
            sub_23FFD983C();
            (*(v94 + 8))(v48, v50);
            (*(v46 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v39 = 0;
            v41 = v107;
            goto LABEL_43;
          }
        }

        else
        {
          LOBYTE(v107) = 9;
          sub_23FFC7A2C();
          v62 = v77;
          sub_23FFD979C();
          if (!v62)
          {
            v47 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4538, &qword_23FFE64C8);
            sub_23FFC7E40(&qword_27E3A45F8, &qword_27E3A4600, protocol conformance descriptor for AppLibrary.ExceptionRequest, MEMORY[0x277D83978]);
            v63 = v95;
            v64 = v100;
            sub_23FFD983C();
            (*(v96 + 8))(v64, v63);
            (*(v46 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v39 = 0;
            v40 = v106;
            v41 = v107;
LABEL_44:
            v30 = v47;
            goto LABEL_46;
          }
        }

        (*(v46 + 8))(v23, v20);
        goto LABEL_13;
      }

      LOBYTE(v107) = 7;
      sub_23FFC7AD4();
      v57 = v28;
      v58 = v77;
      sub_23FFD979C();
      v59 = v114;
      if (v58)
      {
        (*(v114 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v40 = v106;
        return __swift_destroy_boxed_opaque_existential_1(v40);
      }

      v47 = v30;
      v69 = v91;
      v41 = sub_23FFD97BC();
      v39 = v70;
      (*(v92 + 8))(v57, v69);
      (*(v59 + 8))(v23, v20);
      swift_unknownObjectRelease();
LABEL_43:
      v40 = v106;
      goto LABEL_44;
    }

    if (v33 == 5)
    {
      LOBYTE(v107) = 5;
      sub_23FFC7B7C();
      v53 = v99;
      v54 = v77;
      sub_23FFD979C();
      v55 = v114;
      if (!v54)
      {
        v56 = v87;
        v71 = sub_23FFD981C();
        (*(v88 + 8))(v53, v56);
LABEL_45:
        (*(v55 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v39 = 0;
        v41 = v71 & 1;
        v30 = v105;
        v40 = v106;
        goto LABEL_46;
      }
    }

    else
    {
      LOBYTE(v107) = 6;
      sub_23FFC7B28();
      v66 = v27;
      v67 = v77;
      sub_23FFD979C();
      v55 = v114;
      if (!v67)
      {
        v68 = v89;
        v71 = sub_23FFD981C();
        (*(v90 + 8))(v66, v68);
        goto LABEL_45;
      }
    }

    (*(v55 + 8))(v23, v20);
    goto LABEL_13;
  }

  v42 = sub_23FFD970C();
  swift_allocError();
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
  *v44 = &type metadata for FetchDataResponse.Response;
  sub_23FFD97AC();
  sub_23FFD96FC();
  (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
  swift_willThrow();
LABEL_12:
  (*(v114 + 8))(v23, v20);
LABEL_13:
  swift_unknownObjectRelease();
LABEL_14:
  v40 = v106;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t FetchDataResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_23FF79628(v2, v3, v4);
}

__n128 FetchDataResponse.init(response:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_23FFC1DB8(uint64_t a1)
{
  v2 = sub_23FFC7F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC1DF4(uint64_t a1)
{
  v2 = sub_23FFC7F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchDataResponse.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4618, &qword_23FFE6530);
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF79628(v6, v7, v8);
  sub_23FFC7F78();
  sub_23FFD9ACC();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_23FFC7FCC();
  v9 = v11;
  sub_23FFD991C();
  sub_23FF795B0(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t FetchDataResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4628, &qword_23FFE6538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC7F78();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FFC8020();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFC2168(uint64_t a1)
{
  v2 = sub_23FFC80C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC21A4(uint64_t a1)
{
  v2 = sub_23FFC80C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC21E0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6554686372616573;
  }
}

uint64_t sub_23FFC222C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC5D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFC2318(uint64_t a1)
{
  v2 = sub_23FFC8074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC2354(uint64_t a1)
{
  v2 = sub_23FFC8074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC2390(uint64_t a1)
{
  v2 = sub_23FFC811C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC23CC(uint64_t a1)
{
  v2 = sub_23FFC811C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchPublicDataRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4630, &qword_23FFE6540);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4638, &qword_23FFE6548);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4640, &qword_23FFE6550);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8074();
  sub_23FFD9ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23FFC80C8();
    v14 = v18;
    sub_23FFD988C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23FFC811C();
    sub_23FFD988C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FetchPublicDataRequest.Request.hashValue.getter()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t FetchPublicDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4660, &qword_23FFE6558);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4668, &qword_23FFE6560);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4670, &qword_23FFE6568);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8074();
  v12 = v31;
  sub_23FFD9AAC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_23FFD986C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23FF75230();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_23FFD970C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v22 = &type metadata for FetchPublicDataRequest.Request;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_23FFC80C8();
        sub_23FFD979C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23FFC811C();
        sub_23FFD979C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_23FFC2C38(uint64_t a1)
{
  v2 = sub_23FFC8170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC2C74(uint64_t a1)
{
  v2 = sub_23FFC8170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchPublicDataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4678, &qword_23FFE6570);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8170();
  sub_23FFD9ACC();
  v10 = v7;
  sub_23FFC81C4();
  sub_23FFD991C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FetchPublicDataRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4690, &qword_23FFE6578);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8170();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FFC8218();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFC2F98(uint64_t a1)
{
  v2 = sub_23FFC8464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC2FD4(uint64_t a1)
{
  v2 = sub_23FFC8464();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23FFC3010()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 == 4)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v2 == 3)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 1)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = v3;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_23FFC30B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFCCA2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFC30D8(uint64_t a1)
{
  v2 = sub_23FFC826C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC3114(uint64_t a1)
{
  v2 = sub_23FFC826C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC3150(uint64_t a1)
{
  v2 = sub_23FFC8410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC318C(uint64_t a1)
{
  v2 = sub_23FFC8410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC31C8(uint64_t a1)
{
  v2 = sub_23FFC83BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC3204(uint64_t a1)
{
  v2 = sub_23FFC83BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC3240(uint64_t a1)
{
  v2 = sub_23FFC8368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC327C(uint64_t a1)
{
  v2 = sub_23FFC8368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC32B8(uint64_t a1)
{
  v2 = sub_23FFC82C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC32F4(uint64_t a1)
{
  v2 = sub_23FFC82C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC3330(uint64_t a1)
{
  v2 = sub_23FFC8314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC336C(uint64_t a1)
{
  v2 = sub_23FFC8314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetPrivateDataRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46A0, &qword_23FFE6580);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46A8, &qword_23FFE6588);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46B0, &qword_23FFE6590);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46B8, &qword_23FFE6598);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46C0, &qword_23FFE65A0);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46C8, &qword_23FFE65A8);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A46D0, &qword_23FFE65B0);
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v18 = *v1;
  v55 = v1[1];
  v56 = v18;
  v19 = v1[3];
  v54 = v1[2];
  v38[2] = v19;
  v20 = v1[5];
  v38[1] = v1[4];
  v38[0] = v20;
  v21 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1;
  v25 = v38 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_23FFC826C();
  sub_23FFD9ACC();
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      LOBYTE(v59) = 3;
      sub_23FFC8368();
      v28 = v45;
      sub_23FFD988C();
      LOBYTE(v59) = 0;
      v11 = v47;
      v35 = v57;
      sub_23FFD98EC();
      if (!v35)
      {
        LOBYTE(v59) = 1;
        sub_23FFD98FC();
        v36 = v46;
        goto LABEL_22;
      }

      v30 = v46;
    }

    else if (v21 == 4)
    {
      LOBYTE(v59) = 4;
      sub_23FFC8314();
      v28 = v48;
      sub_23FFD988C();
      LOBYTE(v59) = 0;
      v11 = v50;
      v29 = v57;
      sub_23FFD98EC();
      if (!v29)
      {
        LOBYTE(v59) = 1;
        sub_23FFD98FC();
        v36 = v49;
        goto LABEL_22;
      }

      v30 = v49;
    }

    else
    {
      LOBYTE(v59) = 5;
      sub_23FFC82C0();
      v28 = v51;
      sub_23FFD988C();
      LOBYTE(v59) = 0;
      v11 = v53;
      v37 = v57;
      sub_23FFD989C();
      if (!v37)
      {
        LOBYTE(v59) = 1;
        sub_23FFD98EC();
        v36 = v52;
        goto LABEL_22;
      }

      v30 = v52;
    }

    (*(v30 + 8))(v28, v11);
    return (*(v58 + 8))(v25, v17);
  }

  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v59) = 1;
      sub_23FFC8410();
      sub_23FFD988C();
      sub_23FFD98EC();
      v26 = *(v39 + 8);
      v27 = v13;
LABEL_23:
      v26(v27, v11);
      return (*(v58 + 8))(v25, v17);
    }

    LOBYTE(v59) = 2;
    sub_23FFC83BC();
    v28 = v42;
    sub_23FFD988C();
    v59 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
    sub_23FF668B0(&qword_27E3A27F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v11 = v44;
    sub_23FFD991C();
    v36 = v43;
LABEL_22:
    v26 = *(v36 + 8);
    v27 = v28;
    goto LABEL_23;
  }

  LOBYTE(v59) = 0;
  sub_23FFC8464();
  v31 = v17;
  sub_23FFD988C();
  LOBYTE(v59) = 0;
  v32 = v41;
  v33 = v57;
  sub_23FFD98EC();
  if (v33)
  {
    (*(v40 + 8))(v16, v32);
  }

  else
  {
    LOBYTE(v59) = 1;
    sub_23FFD98EC();
    LOBYTE(v59) = 2;
    sub_23FFD989C();
    (*(v40 + 8))(v16, v32);
  }

  return (*(v58 + 8))(v25, v31);
}

uint64_t SetPrivateDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4710, &qword_23FFE65B8);
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v98 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4718, &qword_23FFE65C0);
  v5 = *(v4 - 8);
  v91 = v4;
  v92 = v5;
  MEMORY[0x28223BE20](v4);
  v97 = &v79 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4720, &qword_23FFE65C8);
  v90 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v96 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4728, &qword_23FFE65D0);
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x28223BE20](v8);
  v95 = &v79 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4730, &qword_23FFE65D8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4738, &qword_23FFE65E0);
  v94 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4740, &qword_23FFE65E8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v79 - v17;
  v19 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23FFC826C();
  v20 = v100;
  sub_23FFD9AAC();
  v21 = v20;
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v83 = v11;
  v22 = v14;
  v82 = v12;
  v23 = v96;
  v24 = v97;
  v100 = v16;
  v25 = v98;
  v26 = v99;
  v27 = sub_23FFD986C();
  v28 = (2 * *(v27 + 16)) | 1;
  v102 = v27;
  v103 = v27 + 32;
  v104 = 0;
  v105 = v28;
  v29 = sub_23FF7523C();
  if (v29 == 6 || v104 != v105 >> 1)
  {
    v34 = sub_23FFD970C();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v36 = &type metadata for SetPrivateDataRequest.Request;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v100 + 8))(v18, v15);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v81 = v29;
  if (v29 > 2u)
  {
    if (v29 == 3)
    {
      LOBYTE(v106) = 3;
      sub_23FFC8368();
      sub_23FFD979C();
      v45 = v100;
      LOBYTE(v106) = 0;
      v46 = v86;
      v47 = sub_23FFD980C();
      v63 = v60;
      v61 = v23;
      v98 = v47;
      LOBYTE(v106) = 1;
      v21 = 0;
      v73 = sub_23FFD981C();
      v80 = 0;
      (*(v90 + 8))(v61, v46);
      (*(v45 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v67 = 0;
      v68 = 0;
      v66 = (v73 & 1);
      v65 = v98;
    }

    else
    {
      v96 = v15;
      v38 = v100;
      if (v29 == 4)
      {
        LOBYTE(v106) = 4;
        sub_23FFC8314();
        sub_23FFD979C();
        LOBYTE(v106) = 0;
        v39 = v91;
        v40 = v24;
        v41 = sub_23FFD980C();
        v63 = v69;
        v70 = v41;
        LOBYTE(v106) = 1;
        v21 = 0;
        v77 = sub_23FFD981C();
        v80 = 0;
        (*(v92 + 8))(v40, v39);
        (*(v38 + 8))(v18, v96);
        swift_unknownObjectRelease();
        v67 = 0;
        v68 = 0;
        v66 = (v77 & 1);
        v65 = v70;
        v26 = v99;
      }

      else
      {
        v51 = v26;
        LOBYTE(v106) = 5;
        sub_23FFC82C0();
        v52 = v25;
        sub_23FFD979C();
        LOBYTE(v106) = 0;
        v53 = v89;
        v54 = sub_23FFD97BC();
        v56 = v55;
        v65 = v54;
        LOBYTE(v106) = 1;
        v57 = sub_23FFD980C();
        v80 = 0;
        v74 = v57;
        v76 = v75;
        (*(v93 + 8))(v52, v53);
        (*(v38 + 8))(v18, v96);
        swift_unknownObjectRelease();
        v67 = v76;
        v66 = v74;
        v68 = 0;
        v21 = 0;
        v26 = v51;
        v63 = v56;
      }
    }
  }

  else if (v29)
  {
    if (v29 == 1)
    {
      LOBYTE(v106) = 1;
      sub_23FFC8410();
      v30 = v83;
      sub_23FFD979C();
      v31 = v100;
      v32 = v85;
      v33 = sub_23FFD980C();
      v21 = 0;
      v63 = v62;
      v80 = 0;
      v64 = v30;
      v65 = v33;
      (*(v84 + 8))(v64, v32);
      (*(v31 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }

    else
    {
      LOBYTE(v106) = 2;
      sub_23FFC83BC();
      v48 = v95;
      sub_23FFD979C();
      v49 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
      sub_23FF668B0(&qword_2814FD770, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      v50 = v88;
      sub_23FFD983C();
      v80 = 0;
      (*(v87 + 8))(v48, v50);
      (*(v49 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v63 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v65 = v106;
    }
  }

  else
  {
    LOBYTE(v106) = 0;
    sub_23FFC8464();
    v42 = v22;
    sub_23FFD979C();
    LOBYTE(v106) = 0;
    v43 = v82;
    v44 = sub_23FFD980C();
    v63 = v58;
    v59 = v44;
    LOBYTE(v106) = 1;
    v97 = sub_23FFD980C();
    v98 = v71;
    LOBYTE(v106) = 2;
    v72 = sub_23FFD97BC();
    v80 = 0;
    v68 = v72;
    v21 = v78;
    (*(v94 + 8))(v42, v43);
    (*(v100 + 8))(v18, v15);
    swift_unknownObjectRelease();
    v66 = v97;
    v67 = v98;
    v65 = v59;
  }

  *v26 = v65;
  *(v26 + 8) = v63;
  *(v26 + 16) = v66;
  *(v26 + 24) = v67;
  *(v26 + 32) = v68;
  *(v26 + 40) = v21;
  *(v26 + 48) = v81;
  return __swift_destroy_boxed_opaque_existential_1(v101);
}

double SetPrivateDataRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_23FFC84B8(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t SetPrivateDataRequest.stringValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = 0;

      sub_23FFD96DC();
      MEMORY[0x245CB3B50](0xD00000000000001ALL, 0x800000023FFEC440);
      MEMORY[0x245CB3B50](v2, v1);
      sub_23FFC855C(v2, v1, v3, v4, v6, v5, 3u);
      v8 = 0xD000000000000016;
      v9 = 0x800000023FFEC460;
    }

    else
    {
      if (v7 != 4)
      {

        sub_23FFD96DC();

        v15 = 0xD000000000000019;
        MEMORY[0x245CB3B50](v3, v4);

        MEMORY[0x245CB3B50](8250, 0xE200000000000000);
        if (v1)
        {
          v10 = v2;
        }

        else
        {
          v10 = 7104878;
        }

        if (!v1)
        {
          v1 = 0xE300000000000000;
        }

        goto LABEL_22;
      }

      sub_23FFD96DC();

      v15 = 0xD00000000000001BLL;
      MEMORY[0x245CB3B50](v2, v1);
      sub_23FFC855C(v2, v1, v3, v4, v6, v5, 4u);
      v8 = 8250;
      v9 = 0xE200000000000000;
    }

    MEMORY[0x245CB3B50](v8, v9);
    if (v3)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v3)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }

LABEL_22:
    MEMORY[0x245CB3B50](v10, v1);
    goto LABEL_23;
  }

  if (!*(v0 + 48))
  {

    sub_23FFD96DC();

    v15 = 0xD000000000000012;
    MEMORY[0x245CB3B50](v3, v4);

    MEMORY[0x245CB3B50](10272, 0xE200000000000000);
    MEMORY[0x245CB3B50](v2, v1);

    MEMORY[0x245CB3B50](41, 0xE100000000000000);
    return v15;
  }

  if (v7 != 1)
  {

    sub_23FFD96DC();

    v15 = 0xD00000000000001FLL;
    v11 = MEMORY[0x245CB3BB0](v2, MEMORY[0x277D837D0]);
    v13 = v12;
    sub_23FFC855C(v2, v1, v3, v4, v6, v5, 2u);
    MEMORY[0x245CB3B50](v11, v13);
LABEL_23:

    return v15;
  }

  sub_23FFD96DC();

  v15 = 0xD000000000000021;
  MEMORY[0x245CB3B50](v2, v1);
  sub_23FFC855C(v2, v1, v3, v4, v6, v5, 1u);
  return v15;
}

uint64_t sub_23FFC4DAC(uint64_t a1)
{
  v2 = sub_23FFC8600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC4DE8(uint64_t a1)
{
  v2 = sub_23FFC8600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetPrivateDataRequest.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4748, &qword_23FFE65F0);
  v27 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v18 = v15 - v3;
  v4 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = a1[3];
  v17 = a1[4];
  v11 = *(v1 + 48);
  v16 = v11;
  v15[1] = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_23FFC84B8(v4, v5, v7, v6, v9, v8, v11);
  sub_23FFC8600();
  v12 = v18;
  sub_23FFD9ACC();
  v20 = v4;
  v21 = v5;
  v22 = v7;
  v23 = v6;
  v24 = v9;
  v25 = v8;
  v26 = v16;
  sub_23FFC8654();
  v13 = v19;
  sub_23FFD991C();
  sub_23FFC855C(v20, v21, v22, v23, v24, v25, v26);
  return (*(v27 + 8))(v12, v13);
}

uint64_t SetPrivateDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4760, &qword_23FFE65F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8600();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FFC86A8();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v13[1];
    v11 = v13[2];
    *a2 = v13[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFC51A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496863746162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FFC5228(uint64_t a1)
{
  v2 = sub_23FFC8878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC5264(uint64_t a1)
{
  v2 = sub_23FFC8878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC52BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C6C6174736E69 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FFC534C(uint64_t a1)
{
  v2 = sub_23FFC8920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC5388(uint64_t a1)
{
  v2 = sub_23FFC8920();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23FFC53C4()
{
  v1 = *v0;
  v2 = 0x6554686372616573;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_23FFC5478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFCCC3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFC54A0(uint64_t a1)
{
  v2 = sub_23FFC86FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC54DC(uint64_t a1)
{
  v2 = sub_23FFC86FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC5518(uint64_t a1)
{
  v2 = sub_23FFC87B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC5554(uint64_t a1)
{
  v2 = sub_23FFC87B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC5590(uint64_t a1)
{
  v2 = sub_23FFC88CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC55CC(uint64_t a1)
{
  v2 = sub_23FFC88CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFC5608(uint64_t a1)
{
  v2 = sub_23FFC8974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC5644(uint64_t a1)
{
  v2 = sub_23FFC8974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetPublicDataRequest.Request.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4770, &qword_23FFE6600);
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v84 = &v76 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4778, &qword_23FFE6608);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4780, &qword_23FFE6610);
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v76 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4788, &qword_23FFE6618);
  v76 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v76 - v7;
  v8 = sub_23FFD8FCC();
  v9 = *(v8 - 8);
  v92 = v8;
  v93 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v77 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4790, &qword_23FFE6620);
  v89 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = type metadata accessor for SetPublicDataRequest.Request(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4798, &qword_23FFE6628);
  v97 = *(v24 - 8);
  v98 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v76 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC86FC();
  v94 = v26;
  sub_23FFD9ACC();
  sub_23FFC8750(v95, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v89;
    v36 = v90;
    v38 = v91;
    if (EnumCaseMultiPayload)
    {
      v64 = v17;
      v66 = v92;
      v65 = v93;
      (*(v93 + 32))(v64, v23, v92);
      LOBYTE(v99) = 1;
      sub_23FFC8920();
      v67 = v94;
      sub_23FFD988C();
      sub_23FFC7EDC(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      sub_23FFD991C();
      (*(v76 + 8))(v36, v38);
      (*(v65 + 8))(v64, v66);
      return (*(v97 + 8))(v67, v98);
    }

    else
    {
      LOBYTE(v99) = 0;
      sub_23FFC8974();
      v39 = v98;
      v40 = v94;
      sub_23FFD988C();
      sub_23FFD989C();

      (*(v37 + 8))(v20, v18);
      return (*(v97 + 8))(v40, v39);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47D0, &qword_23FFE6640);
      v42 = &v23[*(v41 + 48)];
      v43 = *v42;
      v95 = *(v42 + 1);
      v44 = &v23[*(v41 + 64)];
      v46 = *v44;
      v45 = v44[1];
      v91 = v46;
      v89 = v43;
      v90 = v45;
      v47 = v92;
      v48 = v93;
      v49 = v87;
      (*(v93 + 32))(v87, v23, v92);
      LOBYTE(v99) = 2;
      sub_23FFC88CC();
      v50 = v81;
      v51 = v98;
      v52 = v94;
      sub_23FFD988C();
      LOBYTE(v99) = 0;
      sub_23FFC7EDC(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v53 = v83;
      v54 = v96;
      sub_23FFD991C();
      if (v54)
      {

        sub_23FF6EC6C(v91, v90);
        (*(v82 + 8))(v50, v53);
        (*(v48 + 8))(v49, v47);
        return (*(v97 + 8))(v52, v51);
      }

      v69 = v90;
      v68 = v91;
      LOBYTE(v99) = 1;
      v70 = v50;
      sub_23FFD98EC();

      v99 = v68;
      v100 = v69;
      v101 = 2;
      sub_23FF70D64();
      sub_23FFD98CC();
      v73 = v87;
      (*(v82 + 8))(v70, v53);
      (*(v93 + 8))(v73, v92);
      (*(v97 + 8))(v52, v51);
      v74 = v68;
      v75 = v69;
    }

    else
    {
      v28 = v98;
      v29 = v94;
      if (EnumCaseMultiPayload == 3)
      {
        v31 = v92;
        v30 = v93;
        v32 = v77;
        (*(v93 + 32))(v77, v23, v92);
        LOBYTE(v99) = 3;
        sub_23FFC8878();
        v33 = v78;
        sub_23FFD988C();
        sub_23FFC7EDC(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
        v34 = v80;
        sub_23FFD991C();
        (*(v79 + 8))(v33, v34);
        (*(v30 + 8))(v32, v31);
        return (*(v97 + 8))(v29, v28);
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47A8, &qword_23FFE6630);
      v95 = *&v23[*(v55 + 48)];
      v56 = &v23[*(v55 + 64)];
      v57 = *v56;
      v90 = v56[1];
      v91 = v57;
      v58 = v92;
      v59 = v93;
      v60 = v88;
      (*(v93 + 32))(v88, v23, v92);
      LOBYTE(v99) = 4;
      sub_23FFC87B4();
      v61 = v84;
      sub_23FFD988C();
      LOBYTE(v99) = 0;
      sub_23FFC7EDC(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v62 = v86;
      v63 = v96;
      sub_23FFD991C();
      if (v63)
      {

        sub_23FF6EC6C(v91, v90);
        (*(v85 + 8))(v61, v62);
        (*(v59 + 8))(v60, v58);
        return (*(v97 + 8))(v29, v28);
      }

      v72 = v90;
      v71 = v91;
      v99 = v95;
      v101 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47B8, &qword_23FFE6638);
      sub_23FFC8808(&qword_27E3A47C0, MEMORY[0x277D84D40], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_23FFD991C();

      v99 = v71;
      v100 = v72;
      v101 = 2;
      sub_23FF70D64();
      sub_23FFD98CC();
      (*(v85 + 8))(v61, v62);
      (*(v59 + 8))(v88, v58);
      (*(v97 + 8))(v29, v98);
      v74 = v91;
      v75 = v72;
    }

    return sub_23FF6EC6C(v74, v75);
  }
}

uint64_t SetPublicDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47F0, &qword_23FFE6648);
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  MEMORY[0x28223BE20](v3);
  v96 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47F8, &qword_23FFE6650);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x28223BE20](v6);
  v88 = &v72 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4800, &qword_23FFE6658);
  v87 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v95 = &v72 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4808, &qword_23FFE6660);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v94 = &v72 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4810, &qword_23FFE6668);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v92 = &v72 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4818, &qword_23FFE6670);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v13 = &v72 - v12;
  v90 = type metadata accessor for SetPublicDataRequest.Request(0);
  v14 = MEMORY[0x28223BE20](v90);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v72 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v72 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v72 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v72 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = a1[3];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_23FFC86FC();
  v31 = v98;
  sub_23FFD9AAC();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v73 = v27;
  v74 = v18;
  v75 = v24;
  v32 = v92;
  v34 = v94;
  v33 = v95;
  v98 = v21;
  v35 = v96;
  v76 = v29;
  v36 = v93;
  v37 = sub_23FFD986C();
  v38 = (2 * *(v37 + 16)) | 1;
  v99 = v37;
  v100 = v37 + 32;
  v101 = 0;
  v102 = v38;
  v39 = sub_23FF70388();
  if (v39 == 5 || v101 != v102 >> 1)
  {
    v44 = sub_23FFD970C();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v46 = v90;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v91 + 8))(v13, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  if (v39 > 1u)
  {
    if (v39 == 2)
    {
      v103 = 2;
      sub_23FFC88CC();
      v49 = v36;
      sub_23FFD979C();
      sub_23FFD8FCC();
      v103 = 0;
      sub_23FFC7EDC(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v50 = v77;
      sub_23FFD983C();
      v103 = 1;
      v66 = sub_23FFD980C();
      v68 = v67;
      v94 = v13;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47D0, &qword_23FFE6640);
      v70 = v98;
      v71 = &v98[*(v69 + 48)];
      *v71 = v66;
      v71[1] = v68;
      v103 = 2;
      sub_23FF71690();
      sub_23FFD97EC();
      (*(v87 + 8))(v33, v50);
      (*(v91 + 8))(v94, v49);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v59 = v70;
    }

    else
    {
      v40 = v36;
      if (v39 == 3)
      {
        v103 = 3;
        sub_23FFC8878();
        v41 = v88;
        sub_23FFD979C();
        sub_23FFD8FCC();
        sub_23FFC7EDC(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v42 = v74;
        v43 = v82;
        sub_23FFD983C();
        (*(v83 + 8))(v41, v43);
        (*(v91 + 8))(v13, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v59 = v42;
      }

      else
      {
        v103 = 4;
        sub_23FFC87B4();
        v51 = v35;
        sub_23FFD979C();
        sub_23FFD8FCC();
        v103 = 0;
        sub_23FFC7EDC(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v52 = v84;
        v53 = v85;
        sub_23FFD983C();
        v94 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47A8, &qword_23FFE6630);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A47B8, &qword_23FFE6638);
        v103 = 1;
        sub_23FFC8808(&qword_27E3A4820, MEMORY[0x277D84D68], MEMORY[0x277D83808], MEMORY[0x277D83528]);
        sub_23FFD983C();
        v103 = 2;
        sub_23FF71690();
        sub_23FFD97EC();
        (*(v86 + 8))(v51, v53);
        (*(v91 + 8))(v94, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v59 = v52;
      }
    }

    v64 = v97;
    v65 = v89;
    goto LABEL_16;
  }

  v48 = v76;
  if (v39)
  {
    v103 = 1;
    sub_23FFC8920();
    v54 = v36;
    sub_23FFD979C();
    v65 = v89;
    sub_23FFD8FCC();
    sub_23FFC7EDC(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v56 = v75;
    v57 = v81;
    sub_23FFD983C();
    v58 = v91;
    (*(v80 + 8))(v34, v57);
    (*(v58 + 8))(v13, v54);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v64 = v97;
    v59 = v56;
LABEL_16:
    v48 = v76;
    goto LABEL_17;
  }

  v103 = 0;
  sub_23FFC8974();
  sub_23FFD979C();
  v55 = v79;
  v60 = sub_23FFD97BC();
  v62 = v61;
  (*(v78 + 8))(v32, v55);
  (*(v91 + 8))(v13, v36);
  swift_unknownObjectRelease();
  v63 = v73;
  *v73 = v60;
  v63[1] = v62;
  swift_storeEnumTagMultiPayload();
  v59 = v63;
  v64 = v97;
  v65 = v89;
LABEL_17:
  sub_23FFC8EA0(v59, v48, type metadata accessor for SetPublicDataRequest.Request);
  sub_23FFC8EA0(v48, v65, type metadata accessor for SetPublicDataRequest.Request);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

unint64_t sub_23FFC73D0()
{
  result = qword_2814FD850;
  if (!qword_2814FD850)
  {
    result = swift_getWitnessTable(byte_23FFE9F14, &type metadata for FetchPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD850);
  }

  return result;
}

unint64_t sub_23FFC7424()
{
  result = qword_27E3A4418;
  if (!qword_27E3A4418)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for FetchPrivateDataRequest.Request.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4418);
  }

  return result;
}

unint64_t sub_23FFC7478()
{
  result = qword_27E3A4420;
  if (!qword_27E3A4420)
  {
    result = swift_getWitnessTable(byte_23FFE9E74, &type metadata for FetchPrivateDataRequest.Request.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4420);
  }

  return result;
}

unint64_t sub_23FFC74CC()
{
  result = qword_27E3A4428;
  if (!qword_27E3A4428)
  {
    result = swift_getWitnessTable(byte_23FFE9E24, &type metadata for FetchPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4428);
  }

  return result;
}

unint64_t sub_23FFC7520()
{
  result = qword_2814FD780;
  if (!qword_2814FD780)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for FetchPrivateDataRequest.Request.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD780);
  }

  return result;
}

unint64_t sub_23FFC7574()
{
  result = qword_27E3A4430;
  if (!qword_27E3A4430)
  {
    result = swift_getWitnessTable(byte_23FFE9D84, &type metadata for FetchPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4430);
  }

  return result;
}

unint64_t sub_23FFC75C8()
{
  result = qword_27E3A4438;
  if (!qword_27E3A4438)
  {
    result = swift_getWitnessTable(byte_23FFE9D34, &type metadata for FetchPrivateDataRequest.Request.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4438);
  }

  return result;
}

unint64_t sub_23FFC761C()
{
  result = qword_27E3A4440;
  if (!qword_27E3A4440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodableAuditToken, &type metadata for CodableAuditToken, v0, v1);
    atomic_store(result, &qword_27E3A4440);
  }

  return result;
}

unint64_t sub_23FFC7670()
{
  result = qword_2814FD778;
  if (!qword_2814FD778)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for FetchPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD778);
  }

  return result;
}

unint64_t sub_23FFC76C4()
{
  result = qword_27E3A4448;
  if (!qword_27E3A4448)
  {
    result = swift_getWitnessTable(byte_23FFE9C94, &type metadata for FetchPrivateDataRequest.Request.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4448);
  }

  return result;
}

unint64_t sub_23FFC7718()
{
  result = qword_27E3A4450;
  if (!qword_27E3A4450)
  {
    result = swift_getWitnessTable(byte_23FFE9C44, &type metadata for FetchPrivateDataRequest.Request.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4450);
  }

  return result;
}

unint64_t sub_23FFC776C()
{
  result = qword_27E3A4458;
  if (!qword_27E3A4458)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for FetchPrivateDataRequest.Request.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4458);
  }

  return result;
}

unint64_t sub_23FFC77C0()
{
  result = qword_27E3A44B8;
  if (!qword_27E3A44B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodableAuditToken, &type metadata for CodableAuditToken, v0, v1);
    atomic_store(result, &qword_27E3A44B8);
  }

  return result;
}

double sub_23FFC7814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a6 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        sub_23FF71730(a5, a6 & 0xCFFFFFFFFFFFFFFFLL);
      }

      return result;
    }

LABEL_11:

    return result;
  }

  if (v8 == 3 || v8 == 4 || v8 == 5)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_23FFC7878()
{
  result = qword_2814FD7C0;
  if (!qword_2814FD7C0)
  {
    result = swift_getWitnessTable(byte_23FFE9BA4, &type metadata for FetchPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7C0);
  }

  return result;
}

unint64_t sub_23FFC78CC()
{
  result = qword_2814FD7C8;
  if (!qword_2814FD7C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPrivateDataRequest.Request, &type metadata for FetchPrivateDataRequest.Request, v0, v1);
    atomic_store(result, &qword_2814FD7C8);
  }

  return result;
}

uint64_t sub_23FFC7920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a6 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        return sub_23FF62F84(a5, a6 & 0xCFFFFFFFFFFFFFFFLL);
      }

      return v9;
    }
  }

  if (v8 == 3 || v8 == 4 || v8 == 5)
  {
  }

  return v9;
}

unint64_t sub_23FFC7984()
{
  result = qword_27E3A44D0;
  if (!qword_27E3A44D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPrivateDataRequest.Request, &type metadata for FetchPrivateDataRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A44D0);
  }

  return result;
}

unint64_t sub_23FFC79D8()
{
  result = qword_2814FD908;
  if (!qword_2814FD908)
  {
    result = swift_getWitnessTable(byte_23FFE9B54, &type metadata for FetchDataResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD908);
  }

  return result;
}

unint64_t sub_23FFC7A2C()
{
  result = qword_27E3A4530;
  if (!qword_27E3A4530)
  {
    result = swift_getWitnessTable("%\x1B%B@R", &type metadata for FetchDataResponse.Response.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4530);
  }

  return result;
}

unint64_t sub_23FFC7A80()
{
  result = qword_27E3A4550;
  if (!qword_27E3A4550)
  {
    result = swift_getWitnessTable("u\x1B%BlR", &type metadata for FetchDataResponse.Response.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4550);
  }

  return result;
}

unint64_t sub_23FFC7AD4()
{
  result = qword_27E3A4558;
  if (!qword_27E3A4558)
  {
    result = swift_getWitnessTable(byte_23FFE9A64, &type metadata for FetchDataResponse.Response.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4558);
  }

  return result;
}

unint64_t sub_23FFC7B28()
{
  result = qword_2814FD790;
  if (!qword_2814FD790)
  {
    result = swift_getWitnessTable(byte_23FFE9A14, &type metadata for FetchDataResponse.Response.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD790);
  }

  return result;
}

unint64_t sub_23FFC7B7C()
{
  result = qword_27E3A4560;
  if (!qword_27E3A4560)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for FetchDataResponse.Response.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4560);
  }

  return result;
}

unint64_t sub_23FFC7BD0()
{
  result = qword_27E3A4568;
  if (!qword_27E3A4568)
  {
    result = swift_getWitnessTable(byte_23FFE9974, &type metadata for FetchDataResponse.Response.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4568);
  }

  return result;
}

unint64_t sub_23FFC7C24()
{
  result = qword_2814FD788;
  if (!qword_2814FD788)
  {
    result = swift_getWitnessTable(byte_23FFE9924, &type metadata for FetchDataResponse.Response.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD788);
  }

  return result;
}

unint64_t sub_23FFC7C78()
{
  result = qword_27E3A4570;
  if (!qword_27E3A4570)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for FetchDataResponse.Response.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4570);
  }

  return result;
}

unint64_t sub_23FFC7CCC()
{
  result = qword_27E3A4578;
  if (!qword_27E3A4578)
  {
    result = swift_getWitnessTable(byte_23FFE9884, &type metadata for FetchDataResponse.Response.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4578);
  }

  return result;
}

unint64_t sub_23FFC7D20()
{
  result = qword_27E3A4580;
  if (!qword_27E3A4580)
  {
    result = swift_getWitnessTable(byte_23FFE9834, &type metadata for FetchDataResponse.Response.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4580);
  }

  return result;
}

uint64_t sub_23FFC7D74(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4588, &qword_23FFE64D0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FFC7DEC()
{
  result = qword_27E3A4598;
  if (!qword_27E3A4598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApprovedDeveloper, &type metadata for ApprovedDeveloper, v0, v1);
    atomic_store(result, &qword_27E3A4598);
  }

  return result;
}

uint64_t sub_23FFC7E40(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4538, &qword_23FFE64C8);
    v10 = sub_23FFC7EDC(a2, type metadata accessor for AppLibrary.ExceptionRequest, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FFC7EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FFC7F24()
{
  result = qword_27E3A4610;
  if (!qword_27E3A4610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApprovedDeveloper, &type metadata for ApprovedDeveloper, v0, v1);
    atomic_store(result, &qword_27E3A4610);
  }

  return result;
}

unint64_t sub_23FFC7F78()
{
  result = qword_2814FD878;
  if (!qword_2814FD878)
  {
    result = swift_getWitnessTable(aE_11, &type metadata for FetchDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD878);
  }

  return result;
}

unint64_t sub_23FFC7FCC()
{
  result = qword_27E3A4620;
  if (!qword_27E3A4620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchDataResponse.Response, &type metadata for FetchDataResponse.Response, v0, v1);
    atomic_store(result, &qword_27E3A4620);
  }

  return result;
}

unint64_t sub_23FFC8020()
{
  result = qword_2814FD880;
  if (!qword_2814FD880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchDataResponse.Response, &type metadata for FetchDataResponse.Response, v0, v1);
    atomic_store(result, &qword_2814FD880);
  }

  return result;
}

unint64_t sub_23FFC8074()
{
  result = qword_27E3A4648;
  if (!qword_27E3A4648)
  {
    result = swift_getWitnessTable(byte_23FFE9794, &type metadata for FetchPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4648);
  }

  return result;
}

unint64_t sub_23FFC80C8()
{
  result = qword_27E3A4650;
  if (!qword_27E3A4650)
  {
    result = swift_getWitnessTable(byte_23FFE9744, &type metadata for FetchPublicDataRequest.Request.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4650);
  }

  return result;
}

unint64_t sub_23FFC811C()
{
  result = qword_27E3A4658;
  if (!qword_27E3A4658)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for FetchPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4658);
  }

  return result;
}

unint64_t sub_23FFC8170()
{
  result = qword_27E3A4680;
  if (!qword_27E3A4680)
  {
    result = swift_getWitnessTable(byte_23FFE96A4, &type metadata for FetchPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4680);
  }

  return result;
}

unint64_t sub_23FFC81C4()
{
  result = qword_27E3A4688;
  if (!qword_27E3A4688)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPublicDataRequest.Request, &type metadata for FetchPublicDataRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A4688);
  }

  return result;
}

unint64_t sub_23FFC8218()
{
  result = qword_27E3A4698;
  if (!qword_27E3A4698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPublicDataRequest.Request, &type metadata for FetchPublicDataRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A4698);
  }

  return result;
}

unint64_t sub_23FFC826C()
{
  result = qword_27E3A46D8;
  if (!qword_27E3A46D8)
  {
    result = swift_getWitnessTable(byte_23FFE9654, &type metadata for SetPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A46D8);
  }

  return result;
}

unint64_t sub_23FFC82C0()
{
  result = qword_27E3A46E0;
  if (!qword_27E3A46E0)
  {
    result = swift_getWitnessTable("% %B", &type metadata for SetPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A46E0);
  }

  return result;
}

unint64_t sub_23FFC8314()
{
  result = qword_27E3A46E8;
  if (!qword_27E3A46E8)
  {
    result = swift_getWitnessTable("u %B,U", &type metadata for SetPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A46E8);
  }

  return result;
}

unint64_t sub_23FFC8368()
{
  result = qword_27E3A46F0;
  if (!qword_27E3A46F0)
  {
    result = swift_getWitnessTable(byte_23FFE9564, &type metadata for SetPrivateDataRequest.Request.RevokeDeveloperApprovalCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A46F0);
  }

  return result;
}

unint64_t sub_23FFC83BC()
{
  result = qword_27E3A46F8;
  if (!qword_27E3A46F8)
  {
    result = swift_getWitnessTable(byte_23FFE9514, &type metadata for SetPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A46F8);
  }

  return result;
}

unint64_t sub_23FFC8410()
{
  result = qword_27E3A4700;
  if (!qword_27E3A4700)
  {
    result = swift_getWitnessTable(aEB_1, &type metadata for SetPrivateDataRequest.Request.ConditionallyApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4700);
  }

  return result;
}

unint64_t sub_23FFC8464()
{
  result = qword_27E3A4708;
  if (!qword_27E3A4708)
  {
    result = swift_getWitnessTable(byte_23FFE9474, &type metadata for SetPrivateDataRequest.Request.ApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4708);
  }

  return result;
}

double sub_23FFC84B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      if (a7 != 5)
      {
        return result;
      }
    }
  }

  else if (a7)
  {
    if (a7 != 1 && a7 != 2)
    {
      return result;
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_23FFC855C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      if (a7 != 5)
      {
        return v7;
      }
    }
  }

  else if (a7)
  {
    if (a7 != 1 && a7 != 2)
    {
      return v7;
    }
  }

  else
  {
  }
}

unint64_t sub_23FFC8600()
{
  result = qword_27E3A4750;
  if (!qword_27E3A4750)
  {
    result = swift_getWitnessTable(byte_23FFE9424, &type metadata for SetPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4750);
  }

  return result;
}

unint64_t sub_23FFC8654()
{
  result = qword_27E3A4758;
  if (!qword_27E3A4758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetPrivateDataRequest.Request, &type metadata for SetPrivateDataRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A4758);
  }

  return result;
}

unint64_t sub_23FFC86A8()
{
  result = qword_27E3A4768;
  if (!qword_27E3A4768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetPrivateDataRequest.Request, &type metadata for SetPrivateDataRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A4768);
  }

  return result;
}

unint64_t sub_23FFC86FC()
{
  result = qword_27E3A47A0;
  if (!qword_27E3A47A0)
  {
    result = swift_getWitnessTable("U%B\\U", &type metadata for SetPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A47A0);
  }

  return result;
}

uint64_t sub_23FFC8750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23FFC87B4()
{
  result = qword_27E3A47B0;
  if (!qword_27E3A47B0)
  {
    result = swift_getWitnessTable(byte_23FFE9384, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A47B0);
  }

  return result;
}

uint64_t sub_23FFC8808(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A47B8, &qword_23FFE6638);
    v10[0] = a2;
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FFC8878()
{
  result = qword_27E3A47C8;
  if (!qword_27E3A47C8)
  {
    result = swift_getWitnessTable(byte_23FFE9334, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A47C8);
  }

  return result;
}

unint64_t sub_23FFC88CC()
{
  result = qword_27E3A47D8;
  if (!qword_27E3A47D8)
  {
    result = swift_getWitnessTable(aEB_2, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A47D8);
  }

  return result;
}

unint64_t sub_23FFC8920()
{
  result = qword_27E3A47E0;
  if (!qword_27E3A47E0)
  {
    result = swift_getWitnessTable(byte_23FFE9294, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A47E0);
  }

  return result;
}

unint64_t sub_23FFC8974()
{
  result = qword_27E3A47E8;
  if (!qword_27E3A47E8)
  {
    result = swift_getWitnessTable(byte_23FFE9244, &type metadata for SetPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A47E8);
  }

  return result;
}

uint64_t sub_23FFC89C8(uint64_t a1)
{
  v2 = sub_23FFC8BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC8A04(uint64_t a1)
{
  v2 = sub_23FFC8BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetPublicDataRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4828, &qword_23FFE6678);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8BB8();
  sub_23FFD9ACC();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_23FFC7EDC(&qword_27E3A4838, type metadata accessor for SetPublicDataRequest.Request, protocol conformance descriptor for SetPublicDataRequest.Request);
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FFC8BB8()
{
  result = qword_27E3A4830;
  if (!qword_27E3A4830)
  {
    result = swift_getWitnessTable(a5B_0, &type metadata for SetPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4830);
  }

  return result;
}

uint64_t SetPublicDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4840, &qword_23FFE6680);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SetPublicDataRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8BB8();
  sub_23FFD9AAC();
  if (!v2)
  {
    v12 = v15;
    sub_23FFC7EDC(&qword_27E3A4848, type metadata accessor for SetPublicDataRequest.Request, protocol conformance descriptor for SetPublicDataRequest.Request);
    v13 = v17;
    sub_23FFD983C();
    (*(v16 + 8))(v8, v6);
    sub_23FFC8EA0(v13, v11, type metadata accessor for SetPublicDataRequest.Request);
    sub_23FFC8EA0(v11, v12, type metadata accessor for SetPublicDataRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFC8EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FFC8F0C()
{
  result = qword_27E3A4850;
  if (!qword_27E3A4850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPublicDataRequest.Request, &type metadata for FetchPublicDataRequest.Request, v0, v1);
    atomic_store(result, &qword_27E3A4850);
  }

  return result;
}

uint64_t sub_23FFC8F78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4828, &qword_23FFE6678);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8BB8();
  sub_23FFD9ACC();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_23FFC7EDC(&qword_27E3A4838, type metadata accessor for SetPublicDataRequest.Request, protocol conformance descriptor for SetPublicDataRequest.Request);
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution23FetchPrivateDataRequestV0F0O(uint64_t a1)
{
  v1 = (*(a1 + 40) >> 60) & 3 | (4 * (*(a1 + 48) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_23FFC9124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 49))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 40) >> 60) & 3 | (4 * *(a1 + 48))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23FFC9178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = (-a2 & 3) << 60;
      *(result + 48) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_23FFC91F0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 48) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x2000000000000000;
    *(result + 48) = 1;
  }

  return result;
}

uint64_t sub_23FFC9264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FFC92AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_23FFC9344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FFC938C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23FFC9420(uint64_t a1)
{
  result = type metadata accessor for SetPublicDataRequest.Request(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23FFC948C(uint64_t a1)
{
  sub_23FF59828();
  if (v1 <= 0x3F)
  {
    sub_23FFC95D0(319, &qword_27E3A4878);
    if (v2 <= 0x3F)
    {
      sub_23FFC954C(319);
      if (v3 <= 0x3F)
      {
        sub_23FFC95D0(319, &qword_27E3A4890);
        if (v4 <= 0x3F)
        {
          sub_23FFC9618(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23FFC954C(uint64_t a1)
{
  if (!qword_27E3A4880)
  {
    sub_23FFD8FCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4888, &qword_23FFE72A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E3A4880);
    }
  }
}

void sub_23FFC95D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23FFD8FCC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23FFC9618(uint64_t a1)
{
  if (!qword_27E3A4898)
  {
    sub_23FFD8FCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A47B8, &qword_23FFE6638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4888, &qword_23FFE72A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E3A4898);
    }
  }
}

unint64_t sub_23FFC996C()
{
  result = qword_27E3A48A0;
  if (!qword_27E3A48A0)
  {
    result = swift_getWitnessTable("m*%Btx", &type metadata for FetchPrivateDataRequest.Request.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48A0);
  }

  return result;
}

unint64_t sub_23FFC99C4()
{
  result = qword_27E3A48A8;
  if (!qword_27E3A48A8)
  {
    result = swift_getWitnessTable(byte_23FFE7714, &type metadata for FetchPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48A8);
  }

  return result;
}

unint64_t sub_23FFC9A1C()
{
  result = qword_27E3A48B0;
  if (!qword_27E3A48B0)
  {
    result = swift_getWitnessTable(byte_23FFE781C, &type metadata for FetchPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48B0);
  }

  return result;
}

unint64_t sub_23FFC9A74()
{
  result = qword_27E3A48B8;
  if (!qword_27E3A48B8)
  {
    result = swift_getWitnessTable(byte_23FFE78D4, &type metadata for FetchPrivateDataRequest.Request.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48B8);
  }

  return result;
}

unint64_t sub_23FFC9ACC()
{
  result = qword_27E3A48C0;
  if (!qword_27E3A48C0)
  {
    result = swift_getWitnessTable(byte_23FFE79DC, &type metadata for FetchPrivateDataRequest.Request.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48C0);
  }

  return result;
}

unint64_t sub_23FFC9B24()
{
  result = qword_27E3A48C8;
  if (!qword_27E3A48C8)
  {
    result = swift_getWitnessTable("5&%B@s", &type metadata for FetchPrivateDataRequest.Request.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48C8);
  }

  return result;
}

unint64_t sub_23FFC9B7C()
{
  result = qword_27E3A48D0;
  if (!qword_27E3A48D0)
  {
    result = swift_getWitnessTable(aB_11, &type metadata for FetchPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48D0);
  }

  return result;
}

unint64_t sub_23FFC9BD4()
{
  result = qword_27E3A48D8;
  if (!qword_27E3A48D8)
  {
    result = swift_getWitnessTable(aUB_3, &type metadata for FetchPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48D8);
  }

  return result;
}

unint64_t sub_23FFC9C2C()
{
  result = qword_27E3A48E0;
  if (!qword_27E3A48E0)
  {
    result = swift_getWitnessTable(byte_23FFE7D0C, &type metadata for FetchDataResponse.Response.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48E0);
  }

  return result;
}

unint64_t sub_23FFC9C84()
{
  result = qword_27E3A48E8;
  if (!qword_27E3A48E8)
  {
    result = swift_getWitnessTable(byte_23FFE7DC4, &type metadata for FetchDataResponse.Response.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48E8);
  }

  return result;
}

unint64_t sub_23FFC9CDC()
{
  result = qword_27E3A48F0;
  if (!qword_27E3A48F0)
  {
    result = swift_getWitnessTable(aMB_1, &type metadata for FetchDataResponse.Response.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48F0);
  }

  return result;
}

unint64_t sub_23FFC9D34()
{
  result = qword_27E3A48F8;
  if (!qword_27E3A48F8)
  {
    result = swift_getWitnessTable(byte_23FFE7F34, &type metadata for FetchDataResponse.Response.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A48F8);
  }

  return result;
}

unint64_t sub_23FFC9D8C()
{
  result = qword_27E3A4900;
  if (!qword_27E3A4900)
  {
    result = swift_getWitnessTable(byte_23FFE7FEC, &type metadata for FetchDataResponse.Response.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4900);
  }

  return result;
}

unint64_t sub_23FFC9DE4()
{
  result = qword_27E3A4908;
  if (!qword_27E3A4908)
  {
    result = swift_getWitnessTable(aB_12, &type metadata for FetchDataResponse.Response.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4908);
  }

  return result;
}

unint64_t sub_23FFC9E3C()
{
  result = qword_27E3A4910;
  if (!qword_27E3A4910)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for FetchDataResponse.Response.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4910);
  }

  return result;
}

unint64_t sub_23FFC9E94()
{
  result = qword_27E3A4918;
  if (!qword_27E3A4918)
  {
    result = swift_getWitnessTable(byte_23FFE8214, &type metadata for FetchDataResponse.Response.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4918);
  }

  return result;
}

unint64_t sub_23FFC9EEC()
{
  result = qword_27E3A4920;
  if (!qword_27E3A4920)
  {
    result = swift_getWitnessTable(byte_23FFE82CC, &type metadata for FetchDataResponse.Response.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4920);
  }

  return result;
}

unint64_t sub_23FFC9F44()
{
  result = qword_27E3A4928;
  if (!qword_27E3A4928)
  {
    result = swift_getWitnessTable(aE_12, &type metadata for FetchDataResponse.Response.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4928);
  }

  return result;
}

unint64_t sub_23FFC9F9C()
{
  result = qword_27E3A4930;
  if (!qword_27E3A4930)
  {
    result = swift_getWitnessTable(byte_23FFE843C, &type metadata for FetchDataResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4930);
  }

  return result;
}

unint64_t sub_23FFC9FF4()
{
  result = qword_27E3A4938;
  if (!qword_27E3A4938)
  {
    result = swift_getWitnessTable(byte_23FFE84F4, &type metadata for FetchDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4938);
  }

  return result;
}

unint64_t sub_23FFCA04C()
{
  result = qword_27E3A4940;
  if (!qword_27E3A4940)
  {
    result = swift_getWitnessTable(asc_23FFE864C, &type metadata for FetchPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4940);
  }

  return result;
}

unint64_t sub_23FFCA0A4()
{
  result = qword_27E3A4948;
  if (!qword_27E3A4948)
  {
    result = swift_getWitnessTable(byte_23FFE8704, &type metadata for FetchPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4948);
  }

  return result;
}

unint64_t sub_23FFCA0FC()
{
  result = qword_27E3A4950;
  if (!qword_27E3A4950)
  {
    result = swift_getWitnessTable(asc_23FFE87BC, &type metadata for SetPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4950);
  }

  return result;
}

unint64_t sub_23FFCA154()
{
  result = qword_27E3A4958;
  if (!qword_27E3A4958)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for SetPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4958);
  }

  return result;
}

unint64_t sub_23FFCA1AC()
{
  result = qword_27E3A4960;
  if (!qword_27E3A4960)
  {
    result = swift_getWitnessTable(byte_23FFE892C, &type metadata for SetPrivateDataRequest.Request.RevokeDeveloperApprovalCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4960);
  }

  return result;
}

unint64_t sub_23FFCA204()
{
  result = qword_27E3A4968;
  if (!qword_27E3A4968)
  {
    result = swift_getWitnessTable(byte_23FFE89E4, &type metadata for SetPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4968);
  }

  return result;
}

unint64_t sub_23FFCA25C()
{
  result = qword_27E3A4970;
  if (!qword_27E3A4970)
  {
    result = swift_getWitnessTable(asc_23FFE8A9C, &type metadata for SetPrivateDataRequest.Request.ConditionallyApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4970);
  }

  return result;
}

unint64_t sub_23FFCA2B4()
{
  result = qword_27E3A4978;
  if (!qword_27E3A4978)
  {
    result = swift_getWitnessTable(aU_13, &type metadata for SetPrivateDataRequest.Request.ApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4978);
  }

  return result;
}

unint64_t sub_23FFCA30C()
{
  result = qword_27E3A4980;
  if (!qword_27E3A4980)
  {
    result = swift_getWitnessTable(byte_23FFE8C0C, &type metadata for SetPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4980);
  }

  return result;
}

unint64_t sub_23FFCA364()
{
  result = qword_27E3A4988;
  if (!qword_27E3A4988)
  {
    result = swift_getWitnessTable(byte_23FFE8CC4, &type metadata for SetPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4988);
  }

  return result;
}

unint64_t sub_23FFCA3BC()
{
  result = qword_27E3A4990;
  if (!qword_27E3A4990)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4990);
  }

  return result;
}

unint64_t sub_23FFCA414()
{
  result = qword_27E3A4998;
  if (!qword_27E3A4998)
  {
    result = swift_getWitnessTable(byte_23FFE8E34, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4998);
  }

  return result;
}

unint64_t sub_23FFCA46C()
{
  result = qword_27E3A49A0;
  if (!qword_27E3A49A0)
  {
    result = swift_getWitnessTable(byte_23FFE8EEC, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49A0);
  }

  return result;
}

unint64_t sub_23FFCA4C4()
{
  result = qword_27E3A49A8;
  if (!qword_27E3A49A8)
  {
    result = swift_getWitnessTable(asc_23FFE8FA4, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49A8);
  }

  return result;
}

unint64_t sub_23FFCA51C()
{
  result = qword_27E3A49B0;
  if (!qword_27E3A49B0)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for SetPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49B0);
  }

  return result;
}

unint64_t sub_23FFCA574()
{
  result = qword_27E3A49B8;
  if (!qword_27E3A49B8)
  {
    result = swift_getWitnessTable(byte_23FFE9114, &type metadata for SetPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49B8);
  }

  return result;
}

unint64_t sub_23FFCA5CC()
{
  result = qword_27E3A49C0;
  if (!qword_27E3A49C0)
  {
    result = swift_getWitnessTable(byte_23FFE91CC, &type metadata for SetPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49C0);
  }

  return result;
}

unint64_t sub_23FFCA624()
{
  result = qword_27E3A49C8;
  if (!qword_27E3A49C8)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for SetPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49C8);
  }

  return result;
}

unint64_t sub_23FFCA67C()
{
  result = qword_27E3A49D0;
  if (!qword_27E3A49D0)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for SetPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49D0);
  }

  return result;
}

unint64_t sub_23FFCA6D4()
{
  result = qword_27E3A49D8;
  if (!qword_27E3A49D8)
  {
    result = swift_getWitnessTable(byte_23FFE8FCC, &type metadata for SetPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49D8);
  }

  return result;
}

unint64_t sub_23FFCA72C()
{
  result = qword_27E3A49E0;
  if (!qword_27E3A49E0)
  {
    result = swift_getWitnessTable(byte_23FFE8FF4, &type metadata for SetPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49E0);
  }

  return result;
}

unint64_t sub_23FFCA784()
{
  result = qword_27E3A49E8;
  if (!qword_27E3A49E8)
  {
    result = swift_getWitnessTable(byte_23FFE8F14, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49E8);
  }

  return result;
}

unint64_t sub_23FFCA7DC()
{
  result = qword_27E3A49F0;
  if (!qword_27E3A49F0)
  {
    result = swift_getWitnessTable(byte_23FFE8F3C, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49F0);
  }

  return result;
}

unint64_t sub_23FFCA834()
{
  result = qword_27E3A49F8;
  if (!qword_27E3A49F8)
  {
    result = swift_getWitnessTable("E!%B@[", &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A49F8);
  }

  return result;
}

unint64_t sub_23FFCA88C()
{
  result = qword_27E3A4A00;
  if (!qword_27E3A4A00)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A00);
  }

  return result;
}

unint64_t sub_23FFCA8E4()
{
  result = qword_27E3A4A08;
  if (!qword_27E3A4A08)
  {
    result = swift_getWitnessTable(byte_23FFE8DA4, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A08);
  }

  return result;
}

unint64_t sub_23FFCA93C()
{
  result = qword_27E3A4A10;
  if (!qword_27E3A4A10)
  {
    result = swift_getWitnessTable(asc_23FFE8DCC, &type metadata for SetPublicDataRequest.Request.CancelPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A10);
  }

  return result;
}

unint64_t sub_23FFCA994()
{
  result = qword_27E3A4A18;
  if (!qword_27E3A4A18)
  {
    result = swift_getWitnessTable(byte_23FFE8CEC, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A18);
  }

  return result;
}

unint64_t sub_23FFCA9EC()
{
  result = qword_27E3A4A20;
  if (!qword_27E3A4A20)
  {
    result = swift_getWitnessTable(byte_23FFE8D14, &type metadata for SetPublicDataRequest.Request.ConfirmPendingInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A20);
  }

  return result;
}

unint64_t sub_23FFCAA44()
{
  result = qword_27E3A4A28;
  if (!qword_27E3A4A28)
  {
    result = swift_getWitnessTable(byte_23FFE9084, &type metadata for SetPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A28);
  }

  return result;
}

unint64_t sub_23FFCAA9C()
{
  result = qword_27E3A4A30;
  if (!qword_27E3A4A30)
  {
    result = swift_getWitnessTable(aB_13, &type metadata for SetPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A30);
  }

  return result;
}

unint64_t sub_23FFCAAF4()
{
  result = qword_27E3A4A38;
  if (!qword_27E3A4A38)
  {
    result = swift_getWitnessTable(aMB_2, &type metadata for SetPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A38);
  }

  return result;
}

unint64_t sub_23FFCAB4C()
{
  result = qword_27E3A4A40;
  if (!qword_27E3A4A40)
  {
    result = swift_getWitnessTable(asc_23FFE8C5C, &type metadata for SetPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A40);
  }

  return result;
}

unint64_t sub_23FFCABA4()
{
  result = qword_27E3A4A48;
  if (!qword_27E3A4A48)
  {
    result = swift_getWitnessTable(byte_23FFE8AC4, &type metadata for SetPrivateDataRequest.Request.ApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A48);
  }

  return result;
}

unint64_t sub_23FFCABFC()
{
  result = qword_27E3A4A50;
  if (!qword_27E3A4A50)
  {
    result = swift_getWitnessTable(byte_23FFE8AEC, &type metadata for SetPrivateDataRequest.Request.ApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A50);
  }

  return result;
}

unint64_t sub_23FFCAC54()
{
  result = qword_27E3A4A58;
  if (!qword_27E3A4A58)
  {
    result = swift_getWitnessTable(byte_23FFE8A0C, &type metadata for SetPrivateDataRequest.Request.ConditionallyApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A58);
  }

  return result;
}

unint64_t sub_23FFCACAC()
{
  result = qword_27E3A4A60;
  if (!qword_27E3A4A60)
  {
    result = swift_getWitnessTable(byte_23FFE8A34, &type metadata for SetPrivateDataRequest.Request.ConditionallyApproveDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A60);
  }

  return result;
}

unint64_t sub_23FFCAD04()
{
  result = qword_27E3A4A68;
  if (!qword_27E3A4A68)
  {
    result = swift_getWitnessTable("M&%BDa", &type metadata for SetPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A68);
  }

  return result;
}

unint64_t sub_23FFCAD5C()
{
  result = qword_27E3A4A70;
  if (!qword_27E3A4A70)
  {
    result = swift_getWitnessTable(aB_14, &type metadata for SetPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A70);
  }

  return result;
}

unint64_t sub_23FFCADB4()
{
  result = qword_27E3A4A78;
  if (!qword_27E3A4A78)
  {
    result = swift_getWitnessTable(byte_23FFE889C, &type metadata for SetPrivateDataRequest.Request.RevokeDeveloperApprovalCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A78);
  }

  return result;
}

unint64_t sub_23FFCAE0C()
{
  result = qword_27E3A4A80;
  if (!qword_27E3A4A80)
  {
    result = swift_getWitnessTable(byte_23FFE88C4, &type metadata for SetPrivateDataRequest.Request.RevokeDeveloperApprovalCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A80);
  }

  return result;
}

unint64_t sub_23FFCAE64()
{
  result = qword_27E3A4A88;
  if (!qword_27E3A4A88)
  {
    result = swift_getWitnessTable(byte_23FFE87E4, &type metadata for SetPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A88);
  }

  return result;
}

unint64_t sub_23FFCAEBC()
{
  result = qword_27E3A4A90;
  if (!qword_27E3A4A90)
  {
    result = swift_getWitnessTable(byte_23FFE880C, &type metadata for SetPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A90);
  }

  return result;
}

unint64_t sub_23FFCAF14()
{
  result = qword_27E3A4A98;
  if (!qword_27E3A4A98)
  {
    result = swift_getWitnessTable(aUB_4, &type metadata for SetPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4A98);
  }

  return result;
}

unint64_t sub_23FFCAF6C()
{
  result = qword_27E3A4AA0;
  if (!qword_27E3A4AA0)
  {
    result = swift_getWitnessTable(byte_23FFE8754, &type metadata for SetPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AA0);
  }

  return result;
}

unint64_t sub_23FFCAFC4()
{
  result = qword_27E3A4AA8;
  if (!qword_27E3A4AA8)
  {
    result = swift_getWitnessTable(aB_15, &type metadata for SetPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AA8);
  }

  return result;
}

unint64_t sub_23FFCB01C()
{
  result = qword_27E3A4AB0;
  if (!qword_27E3A4AB0)
  {
    result = swift_getWitnessTable(a5B_1, &type metadata for SetPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AB0);
  }

  return result;
}

unint64_t sub_23FFCB074()
{
  result = qword_27E3A4AB8;
  if (!qword_27E3A4AB8)
  {
    result = swift_getWitnessTable(aB_16, &type metadata for FetchPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AB8);
  }

  return result;
}

unint64_t sub_23FFCB0CC()
{
  result = qword_27E3A4AC0;
  if (!qword_27E3A4AC0)
  {
    result = swift_getWitnessTable(aB_17, &type metadata for FetchPublicDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AC0);
  }

  return result;
}

unint64_t sub_23FFCB124()
{
  result = qword_27E3A4AC8;
  if (!qword_27E3A4AC8)
  {
    result = swift_getWitnessTable(a5B_2, &type metadata for FetchPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AC8);
  }

  return result;
}

unint64_t sub_23FFCB17C()
{
  result = qword_27E3A4AD0;
  if (!qword_27E3A4AD0)
  {
    result = swift_getWitnessTable(aEB_3, &type metadata for FetchPublicDataRequest.Request.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AD0);
  }

  return result;
}

unint64_t sub_23FFCB1D4()
{
  result = qword_27E3A4AD8;
  if (!qword_27E3A4AD8)
  {
    result = swift_getWitnessTable(byte_23FFE851C, &type metadata for FetchPublicDataRequest.Request.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AD8);
  }

  return result;
}

unint64_t sub_23FFCB22C()
{
  result = qword_27E3A4AE0;
  if (!qword_27E3A4AE0)
  {
    result = swift_getWitnessTable(byte_23FFE8544, &type metadata for FetchPublicDataRequest.Request.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AE0);
  }

  return result;
}

unint64_t sub_23FFCB284()
{
  result = qword_27E3A4AE8;
  if (!qword_27E3A4AE8)
  {
    result = swift_getWitnessTable(byte_23FFE85BC, &type metadata for FetchPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AE8);
  }

  return result;
}

unint64_t sub_23FFCB2DC()
{
  result = qword_27E3A4AF0;
  if (!qword_27E3A4AF0)
  {
    result = swift_getWitnessTable(byte_23FFE85E4, &type metadata for FetchPublicDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AF0);
  }

  return result;
}

unint64_t sub_23FFCB334()
{
  result = qword_2814FD868;
  if (!qword_2814FD868)
  {
    result = swift_getWitnessTable("=+%BTg", &type metadata for FetchDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD868);
  }

  return result;
}

unint64_t sub_23FFCB38C()
{
  result = qword_2814FD870;
  if (!qword_2814FD870)
  {
    result = swift_getWitnessTable("M'%B,g", &type metadata for FetchDataResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD870);
  }

  return result;
}

unint64_t sub_23FFCB3E4()
{
  result = qword_2814FD898;
  if (!qword_2814FD898)
  {
    result = swift_getWitnessTable(byte_23FFE82F4, &type metadata for FetchDataResponse.Response.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD898);
  }

  return result;
}

unint64_t sub_23FFCB43C()
{
  result = qword_2814FD8A0;
  if (!qword_2814FD8A0)
  {
    result = swift_getWitnessTable(byte_23FFE831C, &type metadata for FetchDataResponse.Response.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8A0);
  }

  return result;
}

unint64_t sub_23FFCB494()
{
  result = qword_2814FD8B8;
  if (!qword_2814FD8B8)
  {
    result = swift_getWitnessTable(aEB_4, &type metadata for FetchDataResponse.Response.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8B8);
  }

  return result;
}

unint64_t sub_23FFCB4EC()
{
  result = qword_2814FD8C0;
  if (!qword_2814FD8C0)
  {
    result = swift_getWitnessTable(aUB_5, &type metadata for FetchDataResponse.Response.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8C0);
  }

  return result;
}

unint64_t sub_23FFCB544()
{
  result = qword_2814FD8E8;
  if (!qword_2814FD8E8)
  {
    result = swift_getWitnessTable(byte_23FFE8184, &type metadata for FetchDataResponse.Response.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8E8);
  }

  return result;
}

unint64_t sub_23FFCB59C()
{
  result = qword_2814FD8F0;
  if (!qword_2814FD8F0)
  {
    result = swift_getWitnessTable(aB_18, &type metadata for FetchDataResponse.Response.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8F0);
  }

  return result;
}

unint64_t sub_23FFCB5F4()
{
  result = qword_2814FD888;
  if (!qword_2814FD888)
  {
    result = swift_getWitnessTable(byte_23FFE80CC, &type metadata for FetchDataResponse.Response.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD888);
  }

  return result;
}

unint64_t sub_23FFCB64C()
{
  result = qword_2814FD890;
  if (!qword_2814FD890)
  {
    result = swift_getWitnessTable(byte_23FFE80F4, &type metadata for FetchDataResponse.Response.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD890);
  }

  return result;
}

unint64_t sub_23FFCB6A4()
{
  result = qword_2814FD8A8;
  if (!qword_2814FD8A8)
  {
    result = swift_getWitnessTable(byte_23FFE8014, &type metadata for FetchDataResponse.Response.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8A8);
  }

  return result;
}

unint64_t sub_23FFCB6FC()
{
  result = qword_2814FD8B0;
  if (!qword_2814FD8B0)
  {
    result = swift_getWitnessTable(byte_23FFE803C, &type metadata for FetchDataResponse.Response.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8B0);
  }

  return result;
}

unint64_t sub_23FFCB754()
{
  result = qword_2814FD8C8;
  if (!qword_2814FD8C8)
  {
    result = swift_getWitnessTable("E0%BXm", &type metadata for FetchDataResponse.Response.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8C8);
  }

  return result;
}

unint64_t sub_23FFCB7AC()
{
  result = qword_2814FD8D0;
  if (!qword_2814FD8D0)
  {
    result = swift_getWitnessTable("U,%B0m", &type metadata for FetchDataResponse.Response.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8D0);
  }

  return result;
}

unint64_t sub_23FFCB804()
{
  result = qword_2814FD910;
  if (!qword_2814FD910)
  {
    result = swift_getWitnessTable(byte_23FFE7EA4, &type metadata for FetchDataResponse.Response.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD910);
  }

  return result;
}

unint64_t sub_23FFCB85C()
{
  result = qword_2814FD918;
  if (!qword_2814FD918)
  {
    result = swift_getWitnessTable(aB_19, &type metadata for FetchDataResponse.Response.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD918);
  }

  return result;
}

unint64_t sub_23FFCB8B4()
{
  result = qword_2814FD8D8;
  if (!qword_2814FD8D8)
  {
    result = swift_getWitnessTable(byte_23FFE7DEC, &type metadata for FetchDataResponse.Response.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8D8);
  }

  return result;
}

unint64_t sub_23FFCB90C()
{
  result = qword_2814FD8E0;
  if (!qword_2814FD8E0)
  {
    result = swift_getWitnessTable(byte_23FFE7E14, &type metadata for FetchDataResponse.Response.SearchTerritoryCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8E0);
  }

  return result;
}

unint64_t sub_23FFCB964()
{
  result = qword_27E3A4AF8;
  if (!qword_27E3A4AF8)
  {
    result = swift_getWitnessTable(aM2B, &type metadata for FetchDataResponse.Response.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4AF8);
  }

  return result;
}

unint64_t sub_23FFCB9BC()
{
  result = qword_27E3A4B00;
  if (!qword_27E3A4B00)
  {
    result = swift_getWitnessTable(aB_20, &type metadata for FetchDataResponse.Response.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B00);
  }

  return result;
}

unint64_t sub_23FFCBA14()
{
  result = qword_27E3A4B08;
  if (!qword_27E3A4B08)
  {
    result = swift_getWitnessTable(a3B, &type metadata for FetchDataResponse.Response.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B08);
  }

  return result;
}

unint64_t sub_23FFCBA6C()
{
  result = qword_27E3A4B10;
  if (!qword_27E3A4B10)
  {
    result = swift_getWitnessTable(a5B_3, &type metadata for FetchDataResponse.Response.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B10);
  }

  return result;
}

unint64_t sub_23FFCBAC4()
{
  result = qword_2814FD8F8;
  if (!qword_2814FD8F8)
  {
    result = swift_getWitnessTable(byte_23FFE83AC, &type metadata for FetchDataResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD8F8);
  }

  return result;
}

unint64_t sub_23FFCBB1C()
{
  result = qword_2814FD900;
  if (!qword_2814FD900)
  {
    result = swift_getWitnessTable(byte_23FFE83D4, &type metadata for FetchDataResponse.Response.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD900);
  }

  return result;
}

unint64_t sub_23FFCBB74()
{
  result = qword_2814FD7B0;
  if (!qword_2814FD7B0)
  {
    result = swift_getWitnessTable(byte_23FFE7BC4, &type metadata for FetchPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7B0);
  }

  return result;
}

unint64_t sub_23FFCBBCC()
{
  result = qword_2814FD7B8;
  if (!qword_2814FD7B8)
  {
    result = swift_getWitnessTable(byte_23FFE7BEC, &type metadata for FetchPrivateDataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7B8);
  }

  return result;
}

unint64_t sub_23FFCBC24()
{
  result = qword_2814FD7F0;
  if (!qword_2814FD7F0)
  {
    result = swift_getWitnessTable(byte_23FFE7ABC, &type metadata for FetchPrivateDataRequest.Request.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7F0);
  }

  return result;
}

unint64_t sub_23FFCBC7C()
{
  result = qword_2814FD7F8;
  if (!qword_2814FD7F8)
  {
    result = swift_getWitnessTable(byte_23FFE7AE4, &type metadata for FetchPrivateDataRequest.Request.AllApprovedDevelopersCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7F8);
  }

  return result;
}

unint64_t sub_23FFCBCD4()
{
  result = qword_2814FD810;
  if (!qword_2814FD810)
  {
    result = swift_getWitnessTable(byte_23FFE7A04, &type metadata for FetchPrivateDataRequest.Request.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD810);
  }

  return result;
}

unint64_t sub_23FFCBD2C()
{
  result = qword_2814FD818;
  if (!qword_2814FD818)
  {
    result = swift_getWitnessTable(byte_23FFE7A2C, &type metadata for FetchPrivateDataRequest.Request.ApprovedDeveloperCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD818);
  }

  return result;
}

unint64_t sub_23FFCBD84()
{
  result = qword_2814FD830;
  if (!qword_2814FD830)
  {
    result = swift_getWitnessTable(aU6B, &type metadata for FetchPrivateDataRequest.Request.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD830);
  }

  return result;
}

unint64_t sub_23FFCBDDC()
{
  result = qword_2814FD838;
  if (!qword_2814FD838)
  {
    result = swift_getWitnessTable(aE2B, &type metadata for FetchPrivateDataRequest.Request.AssociatedAppsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD838);
  }

  return result;
}

unint64_t sub_23FFCBE34()
{
  result = qword_2814FD7E0;
  if (!qword_2814FD7E0)
  {
    result = swift_getWitnessTable(byte_23FFE78FC, &type metadata for FetchPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7E0);
  }

  return result;
}

unint64_t sub_23FFCBE8C()
{
  result = qword_2814FD7E8;
  if (!qword_2814FD7E8)
  {
    result = swift_getWitnessTable(byte_23FFE7924, &type metadata for FetchPrivateDataRequest.Request.DistributorPriorityListCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7E8);
  }

  return result;
}

unint64_t sub_23FFCBEE4()
{
  result = qword_2814FD800;
  if (!qword_2814FD800)
  {
    result = swift_getWitnessTable(a7B, &type metadata for FetchPrivateDataRequest.Request.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD800);
  }

  return result;
}

unint64_t sub_23FFCBF3C()
{
  result = qword_2814FD808;
  if (!qword_2814FD808)
  {
    result = swift_getWitnessTable(aM3B, &type metadata for FetchPrivateDataRequest.Request.PassbookProvisioningCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD808);
  }

  return result;
}

unint64_t sub_23FFCBF94()
{
  result = qword_2814FD820;
  if (!qword_2814FD820)
  {
    result = swift_getWitnessTable(byte_23FFE778C, &type metadata for FetchPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD820);
  }

  return result;
}

unint64_t sub_23FFCBFEC()
{
  result = qword_2814FD828;
  if (!qword_2814FD828)
  {
    result = swift_getWitnessTable(a4B, &type metadata for FetchPrivateDataRequest.Request.ShowInstallSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD828);
  }

  return result;
}

unint64_t sub_23FFCC044()
{
  result = qword_2814FD858;
  if (!qword_2814FD858)
  {
    result = swift_getWitnessTable("e8%BLw", &type metadata for FetchPrivateDataRequest.Request.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD858);
  }

  return result;
}

unint64_t sub_23FFCC09C()
{
  result = qword_2814FD860;
  if (!qword_2814FD860)
  {
    result = swift_getWitnessTable("u4%B$w", &type metadata for FetchPrivateDataRequest.Request.ShowAppInstallationSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD860);
  }

  return result;
}

unint64_t sub_23FFCC0F4()
{
  result = qword_2814FD7D0;
  if (!qword_2814FD7D0)
  {
    result = swift_getWitnessTable(byte_23FFE7684, &type metadata for FetchPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7D0);
  }

  return result;
}

unint64_t sub_23FFCC14C()
{
  result = qword_2814FD7D8;
  if (!qword_2814FD7D8)
  {
    result = swift_getWitnessTable("-5%B", &type metadata for FetchPrivateDataRequest.Request.SearchTerritoryForDistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD7D8);
  }

  return result;
}

unint64_t sub_23FFCC1A4()
{
  result = qword_27E3A4B18;
  if (!qword_27E3A4B18)
  {
    result = swift_getWitnessTable(byte_23FFE75CC, &type metadata for FetchPrivateDataRequest.Request.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B18);
  }

  return result;
}

unint64_t sub_23FFCC1FC()
{
  result = qword_27E3A4B20;
  if (!qword_27E3A4B20)
  {
    result = swift_getWitnessTable(byte_23FFE75F4, &type metadata for FetchPrivateDataRequest.Request.LocalizedStringsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B20);
  }

  return result;
}

unint64_t sub_23FFCC254()
{
  result = qword_27E3A4B28;
  if (!qword_27E3A4B28)
  {
    result = swift_getWitnessTable("%:%Bxy", &type metadata for FetchPrivateDataRequest.Request.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B28);
  }

  return result;
}

unint64_t sub_23FFCC2AC()
{
  result = qword_27E3A4B30;
  if (!qword_27E3A4B30)
  {
    result = swift_getWitnessTable("56%BPy", &type metadata for FetchPrivateDataRequest.Request.AgeExceptionRequestsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B30);
  }

  return result;
}

unint64_t sub_23FFCC304()
{
  result = qword_2814FD840;
  if (!qword_2814FD840)
  {
    result = swift_getWitnessTable(byte_23FFE7B0C, &type metadata for FetchPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD840);
  }

  return result;
}

unint64_t sub_23FFCC35C()
{
  result = qword_2814FD848;
  if (!qword_2814FD848)
  {
    result = swift_getWitnessTable(byte_23FFE7B34, &type metadata for FetchPrivateDataRequest.Request.CodingKeys, v0, v1);
    atomic_store(result, &qword_2814FD848);
  }

  return result;
}

uint64_t sub_23FFCC3B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023FFEC4F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEC510 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC550 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC570 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023FFEC590 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC5B0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB2E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC5D0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23FFCC6E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023FFEC4F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEC510 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC550 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC570 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023FFEC590 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB2E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC5D0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23FFCCA2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023FFEC5F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC610 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC630 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC570 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC5B0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23FFCCC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC650 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEC670 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEC690 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000023FFEC6B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.distributorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(distributorID:appleItemID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  return MEMORY[0x2822009F8](sub_23FFCCEE0, 0, 0);
}

uint64_t sub_23FFCCEE0()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23FFCCFDC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_23FF59250(v4, v2, v3, sub_23FFCD0E4, 0);
}

uint64_t sub_23FFCCFDC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

void sub_23FFCD0E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_17;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheetForDistributor:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_23FFCD1C0()
{
  if (*v0)
  {
    return 0x657449656C707061;
  }

  else
  {
    return 0x7562697274736964;
  }
}

uint64_t sub_23FFCD210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFCD2F8(uint64_t a1)
{
  v2 = sub_23FFCD504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFCD334(uint64_t a1)
{
  v2 = sub_23FFCD504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresentAgeExceptionApprovalSheetRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B38, &qword_23FFE9F78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFCD504();
  sub_23FFD9ACC();
  v11 = 0;
  v7 = v9[1];
  sub_23FFD98EC();
  if (!v7)
  {
    v10 = 1;
    sub_23FFD993C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FFCD504()
{
  result = qword_27E3A4B40;
  if (!qword_27E3A4B40)
  {
    result = swift_getWitnessTable(asc_23FFEA0EC, &type metadata for PresentAgeExceptionApprovalSheetRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B40);
  }

  return result;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B48, &qword_23FFE9F80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFCD504();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_23FFD985C();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FFCD788()
{
  result = qword_27E3A4B50;
  if (!qword_27E3A4B50)
  {
    result = swift_getWitnessTable(byte_23FFEA0C4, &type metadata for PresentAgeExceptionApprovalSheetRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B50);
  }

  return result;
}

unint64_t sub_23FFCD7E0()
{
  result = qword_27E3A4B58;
  if (!qword_27E3A4B58)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for PresentAgeExceptionApprovalSheetRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B58);
  }

  return result;
}

unint64_t sub_23FFCD838()
{
  result = qword_27E3A4B60;
  if (!qword_27E3A4B60)
  {
    result = swift_getWitnessTable(aB_21, &type metadata for PresentAgeExceptionApprovalSheetRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B60);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ExceptionRequestMetadata.appBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExceptionRequestMetadata.appName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExceptionRequestMetadata.requestedAppIconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 32);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t type metadata accessor for ExceptionRequestMetadata(uint64_t a1)
{
  result = qword_27E3A4B90;
  if (!qword_27E3A4B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExceptionRequestMetadata.distributorID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 36));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 40));

  return v1;
}

uint64_t ExceptionRequestMetadata.developerID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 44));

  return v1;
}

uint64_t ExceptionRequestMetadata.developerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 48));

  return v1;
}

uint64_t ExceptionRequestMetadata.developerSupportURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 52);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t ExceptionRequestMetadata.askerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 64));

  return v1;
}

uint64_t ExceptionRequestMetadata.ageRatingString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 68));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 72));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 76));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorDomain.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 80));

  return v1;
}

uint64_t ExceptionRequestMetadata.installTypeRawValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 84));

  return v1;
}

uint64_t ExceptionRequestMetadata.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 88));

  return v1;
}

uint64_t ExceptionRequestMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExceptionRequestMetadata(0) + 92);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExceptionRequestMetadata.oAuthToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 96));

  return v1;
}

uint64_t ExceptionRequestMetadata.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 100));

  return v1;
}

uint64_t ExceptionRequestMetadata.clientID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 104));

  return v1;
}

uint64_t ExceptionRequestMetadata.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 108);
  v2 = *v1;
  sub_23FFA7094(*v1, *(v1 + 8));
  return v2;
}

uint64_t ExceptionRequestMetadata.referrer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 128);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t ExceptionRequestMetadata.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 132);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t ExceptionRequestMetadata.init(appBundleID:appItemID:appVersionID:appName:requestedAppIconURL:distributorID:distributorName:developerID:developerName:developerSupportURL:isWebApp:isDistributor:askerName:ageRatingString:distributorType:distributorBundleID:distributorDomain:installTypeRawValue:accountID:url:oAuthToken:installVerificationToken:clientID:authenticationContextData:userInitiatedOverride:allowAccountPrompt:originallyRequestedVersionID:itemIDFromButtonConfiguration:referrer:appShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v51 = type metadata accessor for ExceptionRequestMetadata(0);
  sub_23FF6832C(a7, a9 + v51[8]);
  v52 = (a9 + v51[9]);
  *v52 = a8;
  v52[1] = a10;
  v53 = (a9 + v51[10]);
  *v53 = a11;
  v53[1] = a12;
  v54 = (a9 + v51[11]);
  *v54 = a13;
  v54[1] = a14;
  v55 = (a9 + v51[12]);
  *v55 = a15;
  v55[1] = a16;
  sub_23FF6832C(a17, a9 + v51[13]);
  *(a9 + v51[14]) = a18;
  *(a9 + v51[15]) = a19;
  v56 = (a9 + v51[16]);
  *v56 = a20;
  v56[1] = a21;
  v57 = (a9 + v51[17]);
  *v57 = a22;
  v57[1] = a23;
  v58 = (a9 + v51[18]);
  *v58 = a24;
  v58[1] = a25;
  v59 = (a9 + v51[19]);
  *v59 = a26;
  v59[1] = a27;
  v60 = (a9 + v51[20]);
  *v60 = a28;
  v60[1] = a29;
  v61 = (a9 + v51[21]);
  *v61 = a30;
  v61[1] = a31;
  v62 = (a9 + v51[22]);
  *v62 = a32;
  v62[1] = a33;
  v63 = v51[23];
  v64 = sub_23FFD8F6C();
  (*(*(v64 - 8) + 32))(a9 + v63, a34, v64);
  v65 = (a9 + v51[24]);
  *v65 = a35;
  v65[1] = a36;
  v66 = (a9 + v51[25]);
  *v66 = a37;
  v66[1] = a38;
  v67 = (a9 + v51[26]);
  *v67 = a39;
  v67[1] = a40;
  v68 = (a9 + v51[27]);
  *v68 = a41;
  v68[1] = a42;
  *(a9 + v51[28]) = a43;
  *(a9 + v51[29]) = a44;
  v69 = a9 + v51[30];
  *v69 = a45;
  v69[8] = a46 & 1;
  v70 = a9 + v51[31];
  *v70 = a47;
  v70[8] = a48 & 1;
  sub_23FF6832C(a49, a9 + v51[32]);
  v71 = a9 + v51[33];

  return sub_23FF6832C(a50, v71);
}

uint64_t ExceptionRequestMetadata.jsonData()()
{
  sub_23FFD8E1C();
  swift_allocObject();
  sub_23FFD8E0C();
  type metadata accessor for ExceptionRequestMetadata(0);
  sub_23FFD0A1C(&qword_27E3A3288, type metadata accessor for ExceptionRequestMetadata, protocol conformance descriptor for ExceptionRequestMetadata);
  v0 = sub_23FFD8DFC();

  return v0;
}

uint64_t static ExceptionRequestMetadata.from(jsonData:)(uint64_t a1, uint64_t a2)
{
  sub_23FFD8DEC();
  swift_allocObject();
  sub_23FFD8DDC();
  type metadata accessor for ExceptionRequestMetadata(0);
  sub_23FFD0A1C(&qword_27E3A32A8, type metadata accessor for ExceptionRequestMetadata, protocol conformance descriptor for ExceptionRequestMetadata);
  sub_23FFD8DCC();
}

uint64_t ExceptionRequestMetadata.dictionary()()
{
  v18[4] = *MEMORY[0x277D85DE8];
  sub_23FFD8E1C();
  swift_allocObject();
  sub_23FFD8E0C();
  type metadata accessor for ExceptionRequestMetadata(0);
  sub_23FFD0A1C(&qword_27E3A3288, type metadata accessor for ExceptionRequestMetadata, protocol conformance descriptor for ExceptionRequestMetadata);
  v1 = sub_23FFD8DFC();
  if (v0)
  {
  }

  v4 = v1;
  v5 = v2;
  v6 = objc_opt_self();
  v7 = sub_23FFD8F8C();
  v17[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v17];

  v9 = v17[0];
  if (!v8)
  {
    v10 = v9;
    sub_23FFD8F4C();

    swift_willThrow();
    sub_23FF62F84(v4, v5);
  }

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B68, &qword_23FFEA148);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_23FF62F84(v4, v5);

    return v16;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B70, &unk_23FFEA150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23FFDD040;
    *(inited + 32) = sub_23FFD935C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000023FFEC6F0;
    sub_23FF8D940(inited);
    swift_setDeallocating();
    sub_23FF64248(inited + 32, &qword_27E3A31D8, &qword_23FFDF308);
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v14 = sub_23FFD933C();
    v15 = sub_23FFD92FC();

    [v13 initWithDomain:v14 code:1 userInfo:v15];

    swift_willThrow();
    sub_23FF62F84(v4, v5);

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }
}

uint64_t static ExceptionRequestMetadata.from(dictionary:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_23FFD92FC();
  v10[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v10];

  v4 = v10[0];
  if (v3)
  {
    v5 = sub_23FFD8F9C();
    v7 = v6;

    sub_23FFD8DEC();
    swift_allocObject();
    sub_23FFD8DDC();
    type metadata accessor for ExceptionRequestMetadata(0);
    sub_23FFD0A1C(&qword_27E3A32A8, type metadata accessor for ExceptionRequestMetadata, protocol conformance descriptor for ExceptionRequestMetadata);
    sub_23FFD8DCC();

    return sub_23FF62F84(v5, v7);
  }

  else
  {
    v9 = v4;
    sub_23FFD8F4C();

    return swift_willThrow();
  }
}