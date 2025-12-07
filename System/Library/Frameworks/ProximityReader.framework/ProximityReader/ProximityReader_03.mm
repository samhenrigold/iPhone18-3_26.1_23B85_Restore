uint64_t storeEnumTagSinglePayload for DaemonPrefKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VASRequest.localizedVASType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_23A692C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_23A646D48(a1, &v8 - v5, &qword_27DF9C7B0, &qword_23A6E11D0);
  return (*(**a2 + 112))(v6);
}

uint64_t sub_23A692D68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  swift_beginAccess();
  return sub_23A646D48(v1 + v3, a1, &qword_27DF9C7B0, &qword_23A6E11D0);
}

uint64_t sub_23A692DD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  swift_beginAccess();
  sub_23A6473B8(a1, v1 + v3);
  return swift_endAccess();
}

char *VASRequest.__allocating_init(vasMerchants:localizedVASType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  v8 = sub_23A6DE324();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 4) = a3;
  return v6;
}

char *VASRequest.init(vasMerchants:localizedVASType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage;
  v8 = sub_23A6DE324();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  *(v3 + 4) = a3;
  return v3;
}

uint64_t VASRequest.Merchant.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VASRequest.Merchant.localizedName.getter()
{
  v1 = *(v0 + *(type metadata accessor for VASRequest.Merchant(0) + 28));

  return v1;
}

uint64_t VASRequest.Merchant.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VASRequest.Merchant(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VASRequest.Merchant.init(id:url:shouldSendURLOnly:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = a2;
  *a6 = a1;
  a6[1] = a2;
  v12 = type metadata accessor for VASRequest.Merchant(0);
  result = sub_23A6931E4(a3, a6 + v12[5]);
  *(a6 + v12[6]) = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {

    a4 = a1;
  }

  v14 = (a6 + v12[7]);
  *v14 = a4;
  v14[1] = v9;
  return result;
}

uint64_t sub_23A6931E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VASRequest.Merchant.init(id:url:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = a2;
  *a6 = a1;
  a6[1] = a2;
  v12 = type metadata accessor for VASRequest.Merchant(0);
  result = sub_23A6931E4(a3, a6 + v12[5]);
  *(a6 + v12[6]) = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {

    a4 = a1;
  }

  v14 = (a6 + v12[7]);
  *v14 = a4;
  v14[1] = v9;
  return result;
}

uint64_t VASRequest.deinit()
{

  sub_23A693324(v0 + OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage);
  return v0;
}

uint64_t sub_23A693324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VASRequest.__deallocating_deinit()
{

  sub_23A693324(v0 + OBJC_IVAR____TtC15ProximityReader10VASRequest_userInterfaceLanguage);

  return swift_deallocClassInstance();
}

void sub_23A693428(uint64_t a1)
{
  sub_23A693654(319, &qword_27DF9C7C0, MEMORY[0x277CC9740]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A6935AC(uint64_t a1)
{
  sub_23A693654(319, &qword_27DF9CB70, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A693654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t VASReadResult.id.getter()
{
  v1 = *v0;

  return v1;
}

ProximityReader::VASReadResult __swiftcall VASReadResult.init(id:entries:)(Swift::String id, Swift::OpaquePointer entries)
{
  *v2 = id;
  *(v2 + 16) = entries;
  result.id = id;
  result.entries = entries;
  return result;
}

uint64_t VASReadResult.ReadEntry.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VASReadResult.ReadEntry.customerVASData.getter()
{
  v1 = *(v0 + 16);
  sub_23A693750(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_23A693750(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A693764(a1, a2);
  }

  return a1;
}

uint64_t sub_23A693764(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

ProximityReader::VASReadResult::ReadEntry::Status_optional __swiftcall VASReadResult.ReadEntry.Status.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 27263)
  {
    if (rawValue > 27391)
    {
      if (rawValue == 27392)
      {
        *v1 = 3;
        return rawValue;
      }

      if (rawValue == 36864)
      {
        *v1 = 0;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 27264)
      {
        *v1 = 6;
        return rawValue;
      }

      if (rawValue == 27267)
      {
        *v1 = 1;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > 26367)
  {
    if (rawValue == 26368)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == 27012)
    {
      *v1 = 5;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (rawValue == 25223)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue != 25408)
  {
    goto LABEL_20;
  }

  *v1 = 7;
  return rawValue;
}

uint64_t sub_23A6938E4()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](qword_23A6E2BF0[v1]);
  return sub_23A6DFD14();
}

uint64_t sub_23A69396C(uint64_t a1)
{
  v2 = *v1;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](qword_23A6E2BF0[v2]);
  return sub_23A6DFD14();
}

uint64_t sub_23A6939D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

unint64_t sub_23A6939F0()
{
  result = qword_27DF9CB78;
  if (!qword_27DF9CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB78);
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

uint64_t sub_23A693A58(uint64_t a1, int a2)
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

uint64_t sub_23A693AA0(uint64_t result, int a2, int a3)
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

uint64_t sub_23A693B34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23A693B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VASReadResult.ReadEntry.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VASReadResult.ReadEntry.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PaymentCardReaderSession.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t PaymentCardReaderSession.Event.name.getter()
{
  v1 = *v0;
  v2 = 0x726F467964616572;
  v3 = 0x636E614364616572;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6574656C706D6F63;
  if (v1 != 3)
  {
    v4 = 0x7972746572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574654464726163;
  if (v1 != 1)
  {
    v5 = 0x614365766F6D6572;
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

uint64_t PaymentCardReaderSession.Event.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t PaymentCardReaderSession.ReadError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 0xD000000000000028;
    }

    else
    {
      switch(v1)
      {
        case 1uLL:
        case 0x10uLL:
          return 0xD000000000000046;
        case 2uLL:
          return 0xD000000000000043;
        case 3uLL:
        case 4uLL:
        case 6uLL:
          return 0xD000000000000037;
        case 5uLL:
          return 0xD00000000000004BLL;
        case 7uLL:
          return 0xD000000000000041;
        case 8uLL:
          return 0xD000000000000045;
        case 9uLL:
          return 0xD000000000000028;
        case 0xAuLL:
          v7 = 19;
          goto LABEL_44;
        case 0xBuLL:
          return 0xD000000000000066;
        case 0xDuLL:
        case 0x1CuLL:
          return 0xD00000000000002CLL;
        case 0xEuLL:
          return 0xD00000000000001ELL;
        case 0xFuLL:
          return 0xD000000000000033;
        case 0x11uLL:
          return 0xD000000000000028;
        case 0x13uLL:
          return 0xD000000000000031;
        case 0x14uLL:
          return 0xD00000000000002ALL;
        case 0x15uLL:
          return 0xD000000000000029;
        case 0x16uLL:
          v7 = 5;
          goto LABEL_44;
        case 0x17uLL:
          v7 = 18;
          goto LABEL_44;
        case 0x18uLL:
          return 0xD000000000000052;
        case 0x19uLL:
          return 0xD000000000000048;
        case 0x1AuLL:
          v7 = 17;
          goto LABEL_44;
        case 0x1BuLL:
          v7 = 22;
LABEL_44:
          result = v7 | 0xD000000000000028;
          break;
        case 0x1DuLL:
          result = 0xD000000000000042;
          break;
        case 0x1EuLL:
          result = 0xD000000000000040;
          break;
        default:
          result = 0xD00000000000002ELL;
          break;
      }
    }
  }

  else
  {
    v2 = *(v0 + 8);
    if (*(v0 + 16))
    {

      sub_23A6DFA84();

      v8 = 0xD00000000000002ALL;
      if (v2)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0xD000000000000012;
      }

      if (v2)
      {
        v6 = v2;
      }

      else
      {
        v6 = 0x800000023A6EA580;
      }

      v4 = v6;
    }

    else
    {
      if (!v2)
      {
        return 0xD00000000000005CLL;
      }

      v8 = 0xD000000000000030;
      MEMORY[0x23EE89BB0](v1, v2);

      v3 = 46;
      v4 = 0xE100000000000000;
    }

    MEMORY[0x23EE89BB0](v3, v4);

    return v8;
  }

  return result;
}

uint64_t PaymentCardReaderSession.ReadError.errorName.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 0x6E776F6E6B6E75;
    }

    else
    {
      result = 0x41746F4E64616572;
      switch(*v0)
      {
        case 1:
          result = 0xD000000000000017;
          break;
        case 2:
        case 0x1ALL:
          result = 0xD00000000000001CLL;
          break;
        case 3:
        case 6:
        case 0x1DLL:
          result = 0xD000000000000012;
          break;
        case 4:
          result = 0x7265646165526F6ELL;
          break;
        case 5:
          result = 0xD000000000000014;
          break;
        case 7:
          result = 0xD000000000000019;
          break;
        case 8:
          result = 0xD000000000000020;
          break;
        case 9:
        case 0x13:
          result = 0xD000000000000011;
          break;
        case 0xALL:
          result = 0x636E614364616572;
          break;
        case 0xBLL:
          result = 0x4164696C61766E69;
          break;
        case 0xCLL:
          result = 0xD000000000000013;
          break;
        case 0xDLL:
          result = 0xD000000000000013;
          break;
        case 0xELL:
          result = 0x626173694463666ELL;
          break;
        case 0xFLL:
          result = 0xD000000000000018;
          break;
        case 0x10:
        case 0x1ELL:
          result = 0xD000000000000010;
          break;
        case 0x11:
          result = 0x6461655264726163;
          break;
        case 0x12:
          result = 0x4664616552736176;
          break;
        case 0x14:
          result = 0xD000000000000013;
          break;
        case 0x15:
          result = 0x7972746E456E6970;
          break;
        case 0x16:
          result = 0x6E656B6F546E6970;
          break;
        case 0x17:
          result = 0x7972746E456E6970;
          break;
        case 0x18:
          result = 0x65636E61436E6970;
          break;
        case 0x19:
          result = 0x6C41746F4E6E6970;
          break;
        case 0x1BLL:
          result = 0xD00000000000001DLL;
          break;
        case 0x1CLL:
          result = 0xD00000000000001ALL;
          break;
        default:
          return result;
      }
    }
  }

  else if (*(v0 + 16))
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t PaymentCardReaderSession.PINToken.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23A6947F8(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a4;
  v24 = a2;
  v25 = a3;
  v5 = sub_23A6DE2F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 9);
  sub_23A6DE2E4();
  v13 = sub_23A6DE2B4();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  *(v9 + 16) = v13;
  *(v9 + 24) = v15;
  sub_23A6DE2E4();
  v17 = sub_23A6DE2B4();
  v19 = v18;
  v16(v8, v5);
  *(v9 + 32) = v17;
  *(v9 + 40) = v19;
  v20 = v9 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v9 + 48) = v10;
  *(v9 + 56) = v11;
  *(v9 + 57) = v12;
  sub_23A648EB0(v24, v9 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_currentOSVersionDeprecationDate);
  v21 = v9 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v21 = v25;
  *(v21 + 8) = v26 & 1;
  return v9;
}

uint64_t sub_23A69499C(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v27 = a4;
  v25 = a2;
  v26 = a3;
  v7 = sub_23A6DE2F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  sub_23A6DE2E4();
  v14 = sub_23A6DE2B4();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v10, v7);
  *(v5 + 16) = v14;
  *(v5 + 24) = v16;
  sub_23A6DE2E4();
  v18 = sub_23A6DE2B4();
  v20 = v19;
  v17(v10, v7);
  *(v5 + 32) = v18;
  *(v5 + 40) = v20;
  v21 = v5 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v5 + 48) = v11;
  *(v5 + 56) = v12;
  *(v5 + 57) = v13;
  sub_23A648EB0(v25, v5 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_currentOSVersionDeprecationDate);
  v22 = v5 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_configuredCountryCode;
  *v22 = v26;
  *(v22 + 8) = v27 & 1;
  return v5;
}

void *PaymentCardReaderSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_23A6DCDF0();
  sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v1, 0x74696E696564, 0xE600000000000000, v8, v9);

    (*(v7 + 8))(v4, v6);
  }

  sub_23A646DB0(v1 + OBJC_IVAR____TtC15ProximityReader24PaymentCardReaderSession_currentOSVersionDeprecationDate, &qword_27DF9C7A8, &qword_23A6E12A0);
  return v1;
}

uint64_t PaymentCardReaderSession.__deallocating_deinit()
{
  PaymentCardReaderSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23A694D24()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A694DC0, 0, 0);
}

uint64_t sub_23A694DC0(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[3];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[2];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0x65526C65636E6163, 0xEC00000029286461, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v11 = v1[2];
  v12 = sub_23A6587D8();
  v13 = *v12;
  v1[4] = *v12;
  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  v16 = *(*v13 + 656);

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v1[5] = v17;
  *v17 = v1;
  v17[1] = sub_23A695004;

  return v19(v14, v15);
}

uint64_t sub_23A695004(char a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A695160, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_23A695160()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_23A6951D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A695270, 0, 0);
}

uint64_t sub_23A695270(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000013, 0x800000023A6EAD70, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v15 = (*(*v1[4] + 168) + **(*v1[4] + 168));
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  v11[1] = sub_23A6954A4;
  v12 = v1[3];
  v13 = v1[2];

  return v15(v13, v12, 0, 0);
}

uint64_t sub_23A6954A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A6955B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A695690, 0, 0);
}

uint64_t sub_23A695690(uint64_t a1)
{
  v33 = v1;
  v2 = v1[15];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[15];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[15], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[13];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000020, 0x800000023A6EAD90, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v11 = v1[10];
  type metadata accessor for TransactionValidator();
  sub_23A6B4330(v11);
  v12 = sub_23A6B4DAC(*(v1[10] + 48));
  v14 = v1[13];
  v13 = v1[14];
  v15 = v1[10];
  sub_23A6DE884();
  sub_23A69836C(v15, v13, type metadata accessor for PaymentCardTransactionRequest);
  v16 = type metadata accessor for PaymentCardTransactionRequest(0);
  v17 = (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  v32[0] = 4;
  v18 = sub_23A6DB918(v17);
  v19 = sub_23A6DB91C();
  v20 = sub_23A6DB928();
  v21 = sub_23A6DB930(0, v13, v18, v12, 0, v19, v20, v32);
  v1[16] = v21;
  v22 = sub_23A6587D8();
  v23 = *v22;
  v1[17] = *v22;
  v24 = *(v14 + 32);
  v25 = *(v14 + 40);
  v26 = *(*v23 + 664);

  v31 = (v26 + *v26);
  v27 = swift_task_alloc();
  v1[18] = v27;
  *v27 = v1;
  v27[1] = sub_23A695A34;
  v28 = v1[11];
  v29 = v1[12];

  return v31(v24, v25, v21, v28, v29);
}

uint64_t sub_23A695A34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_23A695C98;
  }

  else
  {

    v4 = sub_23A695B50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A695B50()
{
  v17 = v0;
  sub_23A6DA494(v13);
  v2 = v13[0];
  v1 = v13[1];
  v3 = v15;
  *(v0 + 16) = v14;
  *(v0 + 32) = v3;
  *(v0 + 48) = v16[0];
  *(v0 + 61) = *(v16 + 13);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  if (v1)
  {
    v6 = *(v0 + 72);

    *v6 = v2;
    *(v6 + 8) = v1;
    v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    *(v6 + 61) = *(v0 + 61);
    *(v6 + 32) = v8;
    *(v6 + 48) = v9;
    *(v6 + 16) = v7;
  }

  else
  {
    sub_23A6763DC();
    swift_allocError();
    *v11 = xmmword_23A6E1CB0;
    *(v11 + 16) = 3;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23A695C98()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A695D10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A695DB0, 0, 0);
}

uint64_t sub_23A695DB0(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000013, 0x800000023A6EAD70, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v15 = (*(*v1[4] + 184) + **(*v1[4] + 184));
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  v11[1] = sub_23A69945C;
  v12 = v1[3];
  v13 = v1[2];

  return v15(v13, v12, 0, 0);
}

uint64_t sub_23A695FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  type metadata accessor for PaymentCardVerificationRequest(0);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB88, qword_23A6E2C70);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB90, &unk_23A6E46F0);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A696130, 0, 0);
}

uint64_t sub_23A696130(uint64_t a1)
{
  v2 = v1[18];
  v37 = sub_23A6DCDF0();
  sub_23A646D48(v37, v2, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  v7 = v1[18];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[18], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[13];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000020, 0x800000023A6EAD90, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  v12 = v1[15];
  v11 = v1[16];
  sub_23A6DE7E4();
  v13 = sub_23A6DE314();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_23A6DE7D4();
  sub_23A646DB0(v12, &qword_27DF9CB88, qword_23A6E2C70);
  v14 = sub_23A6DE644();
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14);
  sub_23A646DB0(v11, &qword_27DF9CB90, &unk_23A6E46F0);
  if (v15 == 1)
  {
    v16 = v1[17];
    sub_23A646D48(v37, v16, &qword_27DF9D240, qword_23A6E1D30);
    if (v5(v16, 1, v3) == 1)
    {
      sub_23A646DB0(v1[17], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v30 = sub_23A6DECA4();
      v31 = sub_23A6DF884();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_23A63D000, v30, v31, "PaymentCardVerificationRequest - invalidCurrencyCode", v32, 2u);
        MEMORY[0x23EE8A960](v32, -1, -1);
      }

      v33 = v1[17];

      (*(v4 + 8))(v33, v3);
    }

    sub_23A6763DC();
    swift_allocError();
    *v34 = xmmword_23A6E2C30;
    *(v34 + 16) = 3;
    swift_willThrow();

    v35 = v1[1];

    return v35();
  }

  else
  {
    v18 = v1[13];
    v17 = v1[14];
    v19 = v1[10];
    sub_23A6DE884();
    sub_23A69836C(v19, v17, type metadata accessor for PaymentCardVerificationRequest);
    v20 = sub_23A6DC70C(v17);
    v1[19] = v20;
    v21 = sub_23A6587D8();
    v22 = *v21;
    v1[20] = *v21;
    v23 = *(v18 + 32);
    v24 = *(v18 + 40);
    v25 = *(*v22 + 664);

    v36 = (v25 + *v25);
    v26 = swift_task_alloc();
    v1[21] = v26;
    *v26 = v1;
    v26[1] = sub_23A696664;
    v27 = v1[11];
    v28 = v1[12];

    return v36(v23, v24, v20, v27, v28);
  }
}

uint64_t sub_23A696664(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_23A696914;
  }

  else
  {

    v4 = sub_23A696780;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A696780()
{
  v17 = v0;
  sub_23A6DA494(v13);
  v2 = v13[0];
  v1 = v13[1];
  v3 = v15;
  *(v0 + 16) = v14;
  *(v0 + 32) = v3;
  *(v0 + 48) = v16[0];
  *(v0 + 61) = *(v16 + 13);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  if (v1)
  {
    v6 = *(v0 + 72);

    *v6 = v2;
    *(v6 + 8) = v1;
    v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    *(v6 + 61) = *(v0 + 61);
    *(v6 + 32) = v8;
    *(v6 + 48) = v9;
    *(v6 + 16) = v7;
  }

  else
  {
    sub_23A6763DC();
    swift_allocError();
    *v11 = xmmword_23A6E1CB0;
    *(v11 + 16) = 3;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23A696914()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A6969BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A696A5C, 0, 0);
}

uint64_t sub_23A696A5C(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0x2853415664616572, 0xEB00000000293A5FLL, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v15 = (*(*v1[4] + 200) + **(*v1[4] + 200));
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  v11[1] = sub_23A69945C;
  v12 = v1[3];
  v13 = v1[2];

  return v15(v13, v12, 0, 0);
}

uint64_t sub_23A696C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A696D68, 0, 0);
}

uint64_t sub_23A696D68(uint64_t a1)
{
  v34 = v1;
  v2 = v1[8];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[8];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[8], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[6];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000018, 0x800000023A6EADC0, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v11 = v1[6];
  v12 = v1[3];
  type metadata accessor for TransactionValidator();
  v13 = sub_23A6B5230(v12, *(v11 + 48));
  v1[9] = v13;
  v14 = v13;
  v16 = v1[6];
  v15 = v1[7];
  sub_23A6DE884();
  v17 = type metadata accessor for PaymentCardTransactionRequest(0);
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v33[0] = 4;

  v19 = sub_23A6DB918(v18);
  v20 = sub_23A6DB91C();
  v21 = sub_23A6DB91C();
  v22 = sub_23A6DB930(1, v15, v19, v20, v14, v21, 2, v33);
  v1[10] = v22;
  v23 = sub_23A6587D8();
  v24 = *v23;
  v1[11] = *v23;
  v25 = *(v16 + 32);
  v26 = *(v16 + 40);
  v27 = *(*v24 + 664);

  v32 = (v27 + *v27);
  v28 = swift_task_alloc();
  v1[12] = v28;
  *v28 = v1;
  v28[1] = sub_23A6970F0;
  v29 = v1[4];
  v30 = v1[5];

  return v32(v25, v26, v22, v29, v30);
}

uint64_t sub_23A6970F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_23A6972C0;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_23A697220;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A697220()
{
  v1 = v0[14];
  v2 = v0[10];
  sub_23A6DAC24(v0[2]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A6972C0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A697344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 72) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6973EC, 0, 0);
}

uint64_t sub_23A6973EC(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 56);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 56), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 48);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD00000000000002ELL, 0x800000023A6EADE0, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v18 = (*(**(v1 + 48) + 216) + **(**(v1 + 48) + 216));
  v11 = swift_task_alloc();
  *(v1 + 64) = v11;
  *v11 = v1;
  v11[1] = sub_23A697628;
  v12 = *(v1 + 40);
  v13 = *(v1 + 72);
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 16);

  return v18(v16, v14, v15, v12, v13, 0, 0);
}

uint64_t sub_23A697628()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A697738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a6;
  *(v8 + 85) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB80, &unk_23A6E6DC0);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A69781C, 0, 0);
}

uint64_t sub_23A69781C(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 152);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 152);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 152), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 136);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD00000000000003BLL, 0x800000023A6EAE10, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v11 = *(v1 + 104);
  type metadata accessor for TransactionValidator();
  sub_23A6B4330(v11);
  v12 = sub_23A6B4DAC(*(*(v1 + 104) + 48));
  v13 = sub_23A6B5230(*(v1 + 112), *(*(v1 + 136) + 48));
  *(v1 + 160) = v13;
  v14 = v13;
  v16 = *(v1 + 136);
  v15 = *(v1 + 144);
  v17 = *(v1 + 85);
  v18 = *(v1 + 104);
  sub_23A6DE884();
  sub_23A69836C(v18, v15, type metadata accessor for PaymentCardTransactionRequest);
  v19 = type metadata accessor for PaymentCardTransactionRequest(0);
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  v34[0] = 4;

  v21 = sub_23A6DB918(v20);
  v22 = sub_23A6DB91C();
  v23 = sub_23A6DB930(2, v15, v21, v12, v14, v22, v17, v34);
  *(v1 + 168) = v23;
  v24 = sub_23A6587D8();
  v25 = *v24;
  *(v1 + 176) = *v24;
  v26 = *(v16 + 32);
  v27 = *(v16 + 40);
  v28 = *(*v25 + 664);

  v33 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v1 + 184) = v29;
  *v29 = v1;
  v29[1] = sub_23A697BE8;
  v30 = *(v1 + 120);
  v31 = *(v1 + 128);

  return v33(v26, v27, v23, v30, v31);
}

uint64_t sub_23A697BE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_23A697DFC;
  }

  else
  {
    *(v4 + 200) = a1;

    v5 = sub_23A697D18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A697D18()
{
  v14 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_23A6DA494(v0 + 16);
  sub_23A6DAC24(&v12);

  v5 = v12;
  v6 = v13;
  *v4 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  *(v4 + 61) = *(v0 + 77);
  *(v4 + 32) = v8;
  *(v4 + 48) = v9;
  *(v4 + 16) = v7;
  *v3 = v5;
  *(v3 + 8) = v6;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23A697DFC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A697E80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v5[8] = v7;
  v5[9] = v8;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_23A697F2C, 0, 0);
}

uint64_t sub_23A697F2C(uint64_t a1)
{
  v2 = v1[8];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[8];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[8], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[7];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD00000000000002ALL, 0x800000023A6EAE50, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = v1[9];
  v11 = v1[10];
  v13 = v1[7];
  v14 = sub_23A6587D8();
  v15 = *v14;
  v1[11] = *v14;
  v16 = *(v13 + 32);
  v17 = *(v13 + 40);
  v1[2] = v12;
  v1[3] = v11;
  v18 = *(*v15 + 680);

  v24 = (v18 + *v18);
  v19 = swift_task_alloc();
  v1[12] = v19;
  *v19 = v1;
  v19[1] = sub_23A6981A4;
  v20 = v1[5];
  v21 = v1[6];
  v22 = v1[4];

  return (v24)(v22, v16, v17, v1 + 2, v20, v21);
}

uint64_t sub_23A6981A4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A698308, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A698308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A69836C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A6983D8()
{
  result = qword_27DF9CB98;
  if (!qword_27DF9CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB98);
  }

  return result;
}

unint64_t sub_23A698430()
{
  result = qword_27DF9CBA0;
  if (!qword_27DF9CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBA0);
  }

  return result;
}

uint64_t type metadata accessor for PaymentCardReaderSession(uint64_t a1)
{
  result = qword_27DF9F8E0;
  if (!qword_27DF9F8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A6984D8(uint64_t a1)
{
  sub_23A649120(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PaymentCardReaderSession.cancelRead()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23A64D9F4;

  return v4();
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 168) + **(*v4 + 168));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23A647234;

  return v12(a1, a2, a3, a4);
}

{
  v12 = (*(*v4 + 184) + **(*v4 + 184));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23A647234;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readVAS(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readVAS(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 200) + **(*v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23A647234;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:vasRequest:stopOnVASResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 208) + **(*v5 + 208));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_23A647234;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PaymentCardReaderSession.readPaymentCard(_:vasRequest:stopOnVASResult:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 216) + **(*v7 + 216));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_23A647140;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of PaymentCardReaderSession.capturePIN(using:cardReaderTransactionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 224) + **(*v4 + 224));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23A647234;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for PaymentCardReaderSession.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PaymentCardReaderSession.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_15ProximityReader011PaymentCardB7SessionC9ReadErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A699384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23A6993CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_23A699410(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t static MobileDocumentReader.isSupported.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  type metadata accessor for IdentityReaderActor(0);
  v5 = sub_23A65115C();
  v6 = sub_23A6DCDF0();
  sub_23A69A270(v6, v4);
  v7 = sub_23A6DECC4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_23A69A2E0(v4);
  }

  else
  {
    v9 = sub_23A6DECA4();
    v10 = sub_23A6DF874();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v1;
      v18 = v12;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBA8, &qword_23A6E3058);
      v13 = sub_23A6DF634();
      v15 = sub_23A657E78(v13, v14, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v5 & 1;
      _os_log_impl(&dword_23A63D000, v9, v10, "%s - isSupported result: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x23EE8A960](v12, -1, -1);
      MEMORY[0x23EE8A960](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  return v5 & 1;
}

uint64_t MobileDocumentReader.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = swift_allocObject();
  v4 = sub_23A6DCDF0();
  sub_23A69A270(v4, v2);
  v5 = sub_23A6DECC4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_23A69A2E0(v2);
  }

  else
  {

    v7 = sub_23A6507C0();
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(v7 & 1, v3, 0x292874696E69, 0xE600000000000000, v8, v9);

    (*(v6 + 8))(v2, v5);
  }

  return v3;
}

uint64_t MobileDocumentReader.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_23A6DCDF0();
  sub_23A69A270(v5, v4);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_23A69A2E0(v4);
  }

  else
  {

    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v1, 0x292874696E69, 0xE600000000000000, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  return v1;
}

uint64_t MobileDocumentReader.configuration.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6999F0, 0, 0);
}

uint64_t sub_23A6999F0(uint64_t a1)
{
  v2 = v1[4];
  v3 = sub_23A6DCDF0();
  sub_23A69A270(v3, v2);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[4];
  if (v6 == 1)
  {
    sub_23A69A2E0(v1[4]);
  }

  else
  {
    v8 = v1[3];
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0x72756769666E6F63, 0xED00006E6F697461, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  v12 = sub_23A6509F0();
  v13 = *v12;
  v1[5] = *v12;
  v14 = *(*v13 + 136);

  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  v1[6] = v15;
  *v15 = v1;
  v15[1] = sub_23A699C18;
  v16 = v1[2];

  return v18(v16);
}

uint64_t sub_23A699C18()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23A646BD0;
  }

  else
  {
    v2 = sub_23A699D2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A699D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MobileDocumentReader.prepare(using:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *a1;

  return MEMORY[0x2822009F8](sub_23A699E40, 0, 0);
}

uint64_t sub_23A699E40(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_23A6DCDF0();
  sub_23A69A270(v3, v2);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_23A69A2E0(v1[3]);
  }

  else
  {
    v7 = v1[2];
    v6 = v1[3];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0x2865726170657270, 0xEF293A676E697375, v9, v10);

    (*(v5 + 8))(v6, v4);
  }

  v12 = v1[4];
  v11 = v1[5];
  v13 = sub_23A6509F0();
  v14 = *v13;
  v1[6] = *v13;
  if (!v11)
  {
    v12 = 0;
  }

  v15 = *(*v14 + 152);

  v19 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[7] = v16;
  *v16 = v1;
  v16[1] = sub_23A69A078;
  v17 = v1[5];

  return v19(v12, v17);
}

uint64_t sub_23A69A078(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A69A1E0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A69A1E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A69A270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A69A2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDocumentReader.Configuration.readerInstanceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MobileDocumentReader.Configuration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23A6DFC04();
  }
}

uint64_t MobileDocumentReader.Configuration.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A69A44C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23A69A458()
{
  result = qword_27DF9CBB0;
  if (!qword_27DF9CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBB0);
  }

  return result;
}

uint64_t MobileDocumentReader.Token.tokenString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReader.Token.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobileDocumentReader.Token.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23A6DFC04();
  }
}

uint64_t MobileDocumentReader.Token.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

unint64_t sub_23A69A57C()
{
  result = qword_27DF9CBB8;
  if (!qword_27DF9CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBB8);
  }

  return result;
}

uint64_t MobileDocumentReaderError.errorDescription.getter(uint64_t a1)
{
  sub_23A6DEC54();
  v1 = sub_23A6DF674();

  return v1;
}

uint64_t MobileDocumentReaderError.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A69A7EC()
{
  result = qword_27DF9CBC0;
  if (!qword_27DF9CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentReaderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentReaderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23A69A998(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MobileDocumentReaderSession.requestDocument<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A69AA7C, 0, 0);
}

uint64_t sub_23A69AA7C(uint64_t a1)
{
  v2 = v1[7];
  v3 = sub_23A6DCDF0();
  sub_23A69A270(v3, v2);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[7];
  if (v6 == 1)
  {
    sub_23A69A2E0(v1[7]);
  }

  else
  {
    v8 = v1[6];
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0xD000000000000013, 0x800000023A6EB1F0, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  v12 = v1[6];
  v13 = sub_23A6509F0();
  v14 = *v13;
  v1[8] = *v13;
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(*v14 + 160);

  v24 = (v17 + *v17);
  v18 = swift_task_alloc();
  v1[9] = v18;
  *v18 = v1;
  v18[1] = sub_23A69ACB0;
  v19 = v1[4];
  v20 = v1[5];
  v21 = v1[2];
  v22 = v1[3];

  return v24(v21, v22, v15, v16, v19, v20);
}

uint64_t sub_23A69ACB0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A69ADF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A69ADF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MobileDocumentReaderSession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MobileDocumentAnyOfDataRequest.addRequest(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Element(0);
  v198 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v196 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v197 = &v190 - v5;
  v6 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  v204 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v203 = &v190 - v9;
  v10 = type metadata accessor for MobileNationalIDCardDataRequest(0);
  MEMORY[0x28223BE20](v10);
  v194 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v190 - v13;
  v15 = sub_23A6DE8C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_23A6DE9B4();
  v205 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v200 = (&v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v201 = &v190 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v190 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v190 - v26;
  MEMORY[0x28223BE20](v28);
  v207 = (&v190 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v190 - v31;
  v33 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  v206 = *(v33 - 8);
  MEMORY[0x28223BE20](v33 - 8);
  v199 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v190 - v36;
  sub_23A675890(a1, v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBC8, &qword_23A6E3380);
  if (swift_dynamicCast())
  {
    v191 = v18;
    v192 = v16;
    v193 = v15;
    v38 = v210;
    v203 = v211;
    v39 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v40 = v38[2];
    v204 = v38;
    v202 = v40;
    if (v40)
    {
      v41 = 0;
      v201 = v38 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
      v42 = (v205 + 16);
      v200 = (v205 + 8);
      do
      {
        if (v41 >= v38[2])
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        sub_23A69EC4C(v201 + v206[9] * v41, v37, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v43 = *v42;
        (*v42)(v32, v37, v208);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v209 = v39;
        v46 = sub_23A69CEA0(v32);
        v47 = v39[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_102;
        }

        v50 = v45;
        if (v39[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v39 = v209;
            if (v45)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_23A69DDB4();
            v39 = v209;
            if (v50)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_23A69D350(v49, isUniquelyReferenced_nonNull_native);
          v51 = sub_23A69CEA0(v32);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_119;
          }

          v46 = v51;
          v39 = v209;
          if (v50)
          {
LABEL_4:
            *(v39[7] + v46) = 1;
            (*v200)(v32, v208);
            sub_23A69ECB4(v37, type metadata accessor for MobileDriversLicenseDataRequest.Element);
            goto LABEL_5;
          }
        }

        v39[(v46 >> 6) + 8] |= 1 << v46;
        v53 = v205;
        v54 = v208;
        v43((v39[6] + *(v205 + 72) * v46), v32, v208);
        *(v39[7] + v46) = 1;
        (*(v53 + 8))(v32, v54);
        sub_23A69ECB4(v37, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v55 = v39[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_107;
        }

        v39[2] = v57;
LABEL_5:
        ++v41;
        v38 = v204;
      }

      while (v202 != v41);
    }

    v82 = v203;
    v83 = *(v203 + 16);
    if (v83)
    {
      v84 = 0;
      v202 = v203 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
      v85 = (v205 + 16);
      v86 = (v205 + 8);
      v87 = v199;
      while (1)
      {
        if (v84 >= *(v82 + 16))
        {
          goto LABEL_103;
        }

        sub_23A69EC4C(v202 + v206[9] * v84, v87, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v88 = *v85;
        v89 = v207;
        (*v85)(v207, v87, v208);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v209 = v39;
        v91 = sub_23A69CEA0(v89);
        v93 = v39[2];
        v94 = (v92 & 1) == 0;
        v56 = __OFADD__(v93, v94);
        v95 = v93 + v94;
        if (v56)
        {
          goto LABEL_104;
        }

        v96 = v92;
        if (v39[3] < v95)
        {
          break;
        }

        if (v90)
        {
          goto LABEL_44;
        }

        v105 = v91;
        sub_23A69DDB4();
        v91 = v105;
        v39 = v209;
        if (v96)
        {
LABEL_36:
          *(v39[7] + v91) = 0;
          (*v86)(v207, v208);
          sub_23A69ECB4(v87, type metadata accessor for MobileDriversLicenseDataRequest.Element);
          goto LABEL_37;
        }

LABEL_45:
        v39[(v91 >> 6) + 8] |= 1 << v91;
        v98 = v205;
        v99 = v91;
        v101 = v207;
        v100 = v208;
        v88(v39[6] + *(v205 + 72) * v91, v207, v208);
        *(v39[7] + v99) = 0;
        v102 = v101;
        v87 = v199;
        (*(v98 + 8))(v102, v100);
        sub_23A69ECB4(v87, type metadata accessor for MobileDriversLicenseDataRequest.Element);
        v103 = v39[2];
        v56 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v56)
        {
          goto LABEL_110;
        }

        v39[2] = v104;
LABEL_37:
        ++v84;
        v82 = v203;
        if (v83 == v84)
        {
          goto LABEL_82;
        }
      }

      sub_23A69D350(v95, v90);
      v91 = sub_23A69CEA0(v207);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_119;
      }

LABEL_44:
      v39 = v209;
      if (v96)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

LABEL_82:

    v157 = v192;
    v158 = v191;
    v159 = v193;
    (*(v192 + 104))(v191, *MEMORY[0x277D43920], v193);

    v160 = v195;
    v161 = swift_isUniquelyReferenced_nonNull_native();
    v209 = *v160;
    *v160 = 0x8000000000000000;
    sub_23A69D710(v39, v158, v161);
    (*(v157 + 8))(v158, v159);
    goto LABEL_83;
  }

  if (swift_dynamicCast())
  {
    v59 = v10;
    v191 = v18;
    v192 = v16;
    v193 = v15;
    v60 = v194;
    sub_23A69EBE8(v14, v194, v58);
    v61 = sub_23A69EA14(MEMORY[0x277D84F90]);
    v62 = v59;
    v63 = v61;
    v199 = v62;
    v64 = *(v60 + *(v62 + 5));
    v206 = *(v64 + 16);
    if (v206)
    {
      v65 = 0;
      v201 = v64 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
      v207 = (v205 + 16);
      v200 = (v205 + 8);
      while (1)
      {
        if (v65 >= *(v64 + 16))
        {
          goto LABEL_105;
        }

        v66 = v203;
        sub_23A69EC4C(v201 + v204[9] * v65, v203, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v67 = *v207;
        (*v207)(v27, v66, v208);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v210 = v63;
        v69 = sub_23A69CEA0(v27);
        v71 = v63[2];
        v72 = (v70 & 1) == 0;
        v56 = __OFADD__(v71, v72);
        v73 = v71 + v72;
        if (v56)
        {
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
          goto LABEL_112;
        }

        v74 = v70;
        if (v63[3] < v73)
        {
          break;
        }

        if (v68)
        {
          goto LABEL_29;
        }

        v81 = v69;
        sub_23A69DDB4();
        v69 = v81;
        v63 = v210;
        if (v74)
        {
LABEL_21:
          *(v63[7] + v69) = 1;
          (*v200)(v27, v208);
          sub_23A69ECB4(v203, type metadata accessor for MobileNationalIDCardDataRequest.Element);
          goto LABEL_22;
        }

LABEL_30:
        v63[(v69 >> 6) + 8] |= 1 << v69;
        v76 = v205;
        v77 = v69;
        v78 = v208;
        v67(v63[6] + *(v205 + 72) * v69, v27, v208);
        *(v63[7] + v77) = 1;
        (*(v76 + 8))(v27, v78);
        sub_23A69ECB4(v203, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v79 = v63[2];
        v56 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v56)
        {
          goto LABEL_113;
        }

        v63[2] = v80;
LABEL_22:
        if (v206 == ++v65)
        {
          goto LABEL_66;
        }
      }

      sub_23A69D350(v73, v68);
      v69 = sub_23A69CEA0(v27);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_119;
      }

LABEL_29:
      v63 = v210;
      if (v74)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

LABEL_66:
    v130 = *(v194 + *(v199 + 6));
    v207 = *(v130 + 16);
    if (v207)
    {
      v131 = 0;
      v206 = (v130 + ((*(v204 + 80) + 32) & ~*(v204 + 80)));
      v132 = (v205 + 16);
      v133 = (v205 + 8);
      while (1)
      {
        if (v131 >= *(v130 + 16))
        {
          goto LABEL_108;
        }

        v134 = v202;
        sub_23A69EC4C(v206 + v204[9] * v131, v202, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v135 = *v132;
        (*v132)(v24, v134, v208);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v210 = v63;
        v137 = sub_23A69CEA0(v24);
        v139 = v63[2];
        v140 = (v138 & 1) == 0;
        v56 = __OFADD__(v139, v140);
        v141 = v139 + v140;
        if (v56)
        {
          goto LABEL_109;
        }

        v142 = v138;
        if (v63[3] < v141)
        {
          break;
        }

        if (v136)
        {
          goto LABEL_76;
        }

        v149 = v137;
        sub_23A69DDB4();
        v137 = v149;
        v63 = v210;
        if (v142)
        {
LABEL_68:
          *(v63[7] + v137) = 0;
          (*v133)(v24, v208);
          sub_23A69ECB4(v202, type metadata accessor for MobileNationalIDCardDataRequest.Element);
          goto LABEL_69;
        }

LABEL_77:
        v63[(v137 >> 6) + 8] |= 1 << v137;
        v144 = v205;
        v145 = v137;
        v146 = v208;
        v135((v63[6] + *(v205 + 72) * v137), v24, v208);
        *(v63[7] + v145) = 0;
        (*(v144 + 8))(v24, v146);
        sub_23A69ECB4(v202, type metadata accessor for MobileNationalIDCardDataRequest.Element);
        v147 = v63[2];
        v56 = __OFADD__(v147, 1);
        v148 = v147 + 1;
        if (v56)
        {
          goto LABEL_116;
        }

        v63[2] = v148;
LABEL_69:
        if (v207 == ++v131)
        {
          goto LABEL_81;
        }
      }

      sub_23A69D350(v141, v136);
      v137 = sub_23A69CEA0(v24);
      if ((v142 & 1) != (v143 & 1))
      {
        goto LABEL_119;
      }

LABEL_76:
      v63 = v210;
      if (v142)
      {
        goto LABEL_68;
      }

      goto LABEL_77;
    }

LABEL_81:
    v150 = sub_23A6DE314();
    v151 = v191;
    v152 = v194;
    (*(*(v150 - 8) + 16))(v191, v194, v150);
    v153 = v192;
    v154 = v193;
    (*(v192 + 104))(v151, *MEMORY[0x277D43928], v193);

    v155 = v195;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v210 = *v155;
    *v155 = 0x8000000000000000;
    sub_23A69D710(v63, v151, v156);
    (*(v153 + 8))(v151, v154);
    *v155 = v210;
    sub_23A69ECB4(v152, type metadata accessor for MobileNationalIDCardDataRequest);

    return __swift_destroy_boxed_opaque_existential_1Tm(v212);
  }

  if (!swift_dynamicCast())
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v212);
  }

  v191 = v18;
  v192 = v16;
  v193 = v15;
  v106 = v210;
  v203 = v211;
  v107 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v108 = v106[2];
  v206 = v106;
  if (!v108)
  {
LABEL_85:
    v163 = v203;
    v164 = *(v203 + 16);
    if (!v164)
    {
LABEL_100:

      v186 = v192;
      v187 = v191;
      v188 = v193;
      (*(v192 + 104))(v191, *MEMORY[0x277D43930], v193);

      v160 = v195;
      v189 = swift_isUniquelyReferenced_nonNull_native();
      v209 = *v160;
      *v160 = 0x8000000000000000;
      sub_23A69D710(v107, v187, v189);
      (*(v186 + 8))(v187, v188);
LABEL_83:

      *v160 = v209;
      return __swift_destroy_boxed_opaque_existential_1Tm(v212);
    }

    v165 = 0;
    v207 = (v203 + ((*(v198 + 80) + 32) & ~*(v198 + 80)));
    v166 = (v205 + 16);
    v167 = (v205 + 8);
    while (1)
    {
      if (v165 >= *(v163 + 16))
      {
        goto LABEL_114;
      }

      v168 = v196;
      sub_23A69EC4C(v207 + *(v198 + 72) * v165, v196, type metadata accessor for MobilePhotoIDDataRequest.Element);
      v169 = *v166;
      v170 = v200;
      (*v166)(v200, v168, v208);
      v171 = swift_isUniquelyReferenced_nonNull_native();
      v209 = v107;
      v172 = sub_23A69CEA0(v170);
      v174 = v107[2];
      v175 = (v173 & 1) == 0;
      v56 = __OFADD__(v174, v175);
      v176 = v174 + v175;
      if (v56)
      {
        goto LABEL_115;
      }

      v177 = v173;
      if (v107[3] < v176)
      {
        break;
      }

      if (v171)
      {
        goto LABEL_95;
      }

      v185 = v172;
      sub_23A69DDB4();
      v172 = v185;
      v107 = v209;
      if (v177)
      {
LABEL_87:
        *(v107[7] + v172) = 0;
        (*v167)(v200, v208);
        sub_23A69ECB4(v196, type metadata accessor for MobilePhotoIDDataRequest.Element);
        goto LABEL_88;
      }

LABEL_96:
      v107[(v172 >> 6) + 8] |= 1 << v172;
      v179 = v205;
      v180 = v172;
      v181 = v200;
      v182 = v208;
      v169((v107[6] + *(v205 + 72) * v172), v200, v208);
      *(v107[7] + v180) = 0;
      (*(v179 + 8))(v181, v182);
      sub_23A69ECB4(v196, type metadata accessor for MobilePhotoIDDataRequest.Element);
      v183 = v107[2];
      v56 = __OFADD__(v183, 1);
      v184 = v183 + 1;
      if (v56)
      {
        goto LABEL_118;
      }

      v107[2] = v184;
      v163 = v203;
LABEL_88:
      if (v164 == ++v165)
      {
        goto LABEL_100;
      }
    }

    sub_23A69D350(v176, v171);
    v172 = sub_23A69CEA0(v200);
    if ((v177 & 1) != (v178 & 1))
    {
      goto LABEL_119;
    }

LABEL_95:
    v107 = v209;
    if (v177)
    {
      goto LABEL_87;
    }

    goto LABEL_96;
  }

  v109 = 0;
  v110 = v106 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
  v207 = (v205 + 16);
  v204 = (v205 + 8);
  while (1)
  {
    if (v109 >= v206[2])
    {
      goto LABEL_111;
    }

    v111 = v197;
    sub_23A69EC4C(v110 + *(v198 + 72) * v109, v197, type metadata accessor for MobilePhotoIDDataRequest.Element);
    v112 = *v207;
    v113 = v201;
    (*v207)(v201, v111, v208);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v107;
    v115 = sub_23A69CEA0(v113);
    v117 = v107[2];
    v118 = (v116 & 1) == 0;
    v56 = __OFADD__(v117, v118);
    v119 = v117 + v118;
    if (v56)
    {
      break;
    }

    v120 = v116;
    if (v107[3] < v119)
    {
      sub_23A69D350(v119, v114);
      v115 = sub_23A69CEA0(v201);
      if ((v120 & 1) != (v121 & 1))
      {
        goto LABEL_119;
      }

LABEL_61:
      v107 = v209;
      if (v120)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }

    if (v114)
    {
      goto LABEL_61;
    }

    v129 = v115;
    sub_23A69DDB4();
    v115 = v129;
    v107 = v209;
    if (v120)
    {
LABEL_53:
      *(v107[7] + v115) = 1;
      (*v204)(v201, v208);
      sub_23A69ECB4(v197, type metadata accessor for MobilePhotoIDDataRequest.Element);
      goto LABEL_54;
    }

LABEL_62:
    v122 = v110;
    v107[(v115 >> 6) + 8] |= 1 << v115;
    v123 = v205;
    v124 = v115;
    v125 = v201;
    v126 = v208;
    v112(v107[6] + *(v205 + 72) * v115, v201, v208);
    *(v107[7] + v124) = 1;
    (*(v123 + 8))(v125, v126);
    sub_23A69ECB4(v197, type metadata accessor for MobilePhotoIDDataRequest.Element);
    v127 = v107[2];
    v56 = __OFADD__(v127, 1);
    v128 = v127 + 1;
    if (v56)
    {
      goto LABEL_117;
    }

    v107[2] = v128;
    v110 = v122;
LABEL_54:
    if (v108 == ++v109)
    {
      goto LABEL_85;
    }
  }

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
  result = sub_23A6DFC54();
  __break(1u);
  return result;
}

void sub_23A69C3F0(uint64_t a1, uint64_t a2)
{
  v55 = sub_23A6DE8C4();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF0, &unk_23A6E6190);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v45 - v10;
    v12 = 0;
    v46 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v45[0] = v14;
    v45[1] = v50 + 16;
    v53 = (v50 + 32);
    v47 = (v50 + 8);
    while (v18)
    {
      v54 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v46;
      v26 = v49;
      v27 = v50;
      v28 = v55;
      (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v20, v55, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v52;
      v32(v52, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v48;
      sub_23A69EED0(v33, v48, &qword_27DF9CBF0, &unk_23A6E6190);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v51;
      v38 = v55;
      (*v53)(v51, v34, v55);
      v39 = *(v34 + v36);
      sub_23A69CDCC(v37);
      LOBYTE(v36) = v40;
      (*v47)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_23A69C87C(v41, v39);
      v43 = v42;

      v18 = v54;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
        v33 = v52;
        (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
        v54 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v45[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v54 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_23A69C87C(uint64_t a1, uint64_t a2)
{
  v54 = sub_23A6DE9B4();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBE8, &unk_23A6E3450);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v44 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v47 = v10;
    v13 = 0;
    v45 = a1;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v20 = (v17 + 63) >> 6;
    v44[0] = v15;
    v44[1] = v49 + 16;
    v51 = v44 - v9;
    v52 = (v49 + 32);
    v46 = (v49 + 8);
    while (v19)
    {
      v53 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
      v26 = v45;
      v27 = v48;
      v28 = v49;
      v29 = v54;
      (*(v49 + 16))(v48, *(v45 + 48) + *(v49 + 72) * v21, v54, v11);
      v30 = *(*(v26 + 56) + v21);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      v32 = *(v31 + 48);
      v33 = *(v28 + 32);
      v34 = v47;
      v33(v47, v27, v29);
      *(v34 + v32) = v30;
      (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
      v12 = v51;
LABEL_17:
      sub_23A69EED0(v34, v12, &qword_27DF9CBE8, &unk_23A6E3450);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      if ((*(*(v35 - 8) + 48))(v12, 1, v35) != 1)
      {
        v36 = *(v35 + 48);
        v37 = v50;
        v38 = v54;
        (*v52)(v50, v12, v54);
        v39 = v12[v36];
        v40 = sub_23A69CEA0(v37);
        LOBYTE(v36) = v41;
        (*v46)(v37, v38);
        if (v36)
        {
          v42 = v39 == *(*(a2 + 56) + v40);
          v12 = v51;
          v19 = v53;
          if (v42)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v20 <= v13 + 1)
    {
      v22 = v13 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
        v34 = v47;
        (*(*(v43 - 8) + 56))(v47, 1, 1, v43);
        v53 = 0;
        v13 = v23;
        goto LABEL_17;
      }

      v25 = *(v44[0] + 8 * v24);
      ++v13;
      if (v25)
      {
        v53 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v13 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t MobileDocumentAnyOfDataRequest.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A69CD2C()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A69E024(v3, v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A69CD7C(uint64_t a1)
{
  v2 = *v1;
  sub_23A6DFCE4();
  sub_23A69E024(v4, v2);
  return sub_23A6DFD14();
}

unint64_t sub_23A69CDCC(uint64_t a1)
{
  sub_23A6DE8C4();
  v2 = MEMORY[0x277D43938];
  sub_23A69EF38(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);
  v3 = sub_23A6DF5D4();
  return sub_23A69D994(a1, v3, MEMORY[0x277D43938], &qword_27DF9CC18, v2, MEMORY[0x277D43948]);
}

unint64_t sub_23A69CEA0(uint64_t a1)
{
  sub_23A6DE9B4();
  v2 = MEMORY[0x277D43AE8];
  sub_23A69EF38(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  v3 = sub_23A6DF5D4();
  return sub_23A69D994(a1, v3, MEMORY[0x277D43AE8], &qword_27DF9CC30, v2, MEMORY[0x277D43AF8]);
}

uint64_t sub_23A69CF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23A6DE8C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC28, &qword_23A6E61B0);
  v39 = v4;
  result = sub_23A6DFB74();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_23A69EF38(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);
      result = sub_23A6DF5D4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23A69D350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23A6DE9B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC20, &unk_23A6E3470);
  v40 = v4;
  result = sub_23A6DFB74();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_23A69EF38(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
      result = sub_23A6DF5D4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
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
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
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

uint64_t sub_23A69D710(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A6DE8C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A69CDCC(a2);
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
      sub_23A69DB34();
      goto LABEL_7;
    }

    sub_23A69CF74(v17, a3 & 1);
    v22 = sub_23A69CDCC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23A69D8DC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23A6DFC54();
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
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_23A69D8DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23A6DE8C4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_23A69D994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_23A69EF38(v24, v25, v26);
      v20 = sub_23A6DF604();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

char *sub_23A69DB34()
{
  v1 = v0;
  v33 = sub_23A6DE8C4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC28, &qword_23A6E61B0);
  v3 = *v0;
  v4 = sub_23A6DFB64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_23A69DDB4()
{
  v1 = v0;
  v31 = sub_23A6DE9B4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC20, &unk_23A6E3470);
  v3 = *v0;
  v4 = sub_23A6DFB64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_23A69E024(__int128 *a1, uint64_t a2)
{
  v84 = a1;
  v99 = sub_23A6DE9B4();
  v3 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBE8, &unk_23A6E3450);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v13 = sub_23A6DE8C4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v82 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF0, &unk_23A6E6190);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = &v73 - v22;
  v23 = *(a2 + 64);
  v75 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v74 = (v24 + 63) >> 6;
  v76 = v14 + 16;
  v88 = (v14 + 32);
  v78 = v14;
  v81 = (v14 + 8);
  v90 = v3 + 16;
  v98 = (v3 + 32);
  v93 = v3;
  v95 = (v3 + 8);
  v79 = a2;

  v28 = 0;
  v29 = 0;
  v91 = v12;
  v85 = v20;
  v97 = v9;
  v80 = v13;
  while (1)
  {
    v89 = v28;
    if (!v26)
    {
      break;
    }

    v30 = v29;
LABEL_15:
    v87 = (v26 - 1) & v26;
    v33 = __clz(__rbit64(v26)) | (v30 << 6);
    v34 = v79;
    v35 = v78;
    v36 = v77;
    (*(v78 + 16))(v77, *(v79 + 48) + *(v78 + 72) * v33, v13);
    v37 = *(*(v34 + 56) + 8 * v33);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
    v39 = *(v38 + 48);
    v40 = *(v35 + 32);
    v20 = v85;
    v40(v85, v36, v13);
    *&v20[v39] = v37;
    (*(*(v38 - 8) + 56))(v20, 0, 1, v38);

    v32 = v30;
LABEL_16:
    v41 = v83;
    sub_23A69EED0(v20, v83, &qword_27DF9CBF0, &unk_23A6E6190);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      goto LABEL_36;
    }

    v86 = v32;
    v43 = *(v42 + 48);
    v44 = v82;
    (*v88)(v82, v41, v13);
    v45 = *(v41 + v43);
    v46 = v84[3];
    v108 = v84[2];
    v109 = v46;
    v110 = *(v84 + 8);
    v47 = v84[1];
    v106 = *v84;
    v107 = v47;
    sub_23A69EF38(&qword_27DF9CC00, MEMORY[0x277D43938], MEMORY[0x277D43940]);
    sub_23A6DF5E4();
    (*v81)(v44, v13);
    v48 = v45 + 64;
    v49 = 1 << *(v45 + 32);
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v51 = v50 & *(v45 + 64);
    v52 = (v49 + 63) >> 6;
    v94 = v45;

    v53 = 0;
    v100 = 0;
    if (!v51)
    {
LABEL_22:
      if (v52 <= v53 + 1)
      {
        v55 = v53 + 1;
      }

      else
      {
        v55 = v52;
      }

      v56 = v55 - 1;
      v57 = v97;
      while (1)
      {
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v54 >= v52)
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
          (*(*(v71 - 8) + 56))(v57, 1, 1, v71);
          v51 = 0;
          goto LABEL_30;
        }

        v51 = *(v48 + 8 * v54);
        ++v53;
        if (v51)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_36:

      return MEMORY[0x23EE8A1E0](v89);
    }

    while (1)
    {
      v54 = v53;
LABEL_29:
      v58 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v59 = v58 | (v54 << 6);
      v60 = v94;
      v61 = v93;
      v62 = v92;
      v63 = v99;
      (*(v93 + 16))(v92, *(v94 + 48) + *(v93 + 72) * v59, v99);
      LOBYTE(v60) = *(*(v60 + 56) + v59);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      v65 = *(v64 + 48);
      v66 = *(v61 + 32);
      v57 = v97;
      v66(v97, v62, v63);
      *(v57 + v65) = v60;
      (*(*(v64 - 8) + 56))(v57, 0, 1, v64);
      v56 = v54;
      v12 = v91;
LABEL_30:
      sub_23A69EED0(v57, v12, &qword_27DF9CBE8, &unk_23A6E3450);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC08, &unk_23A6E61A0);
      if ((*(*(v67 - 8) + 48))(v12, 1, v67) == 1)
      {
        break;
      }

      v68 = v96;
      v69 = v99;
      (*v98)(v96, v12, v99);
      v103 = v108;
      v104 = v109;
      v105 = v110;
      v101 = v106;
      v102 = v107;
      sub_23A69EF38(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
      sub_23A6DF5E4();
      (*v95)(v68, v69);
      sub_23A6DFD04();
      v70 = sub_23A6DFD14();
      v53 = v56;
      v100 ^= v70;
      if (!v51)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x23EE8A1E0](v100);

    result = sub_23A6DFD14();
    v28 = result ^ v89;
    v29 = v86;
    v13 = v80;
    v20 = v85;
    v26 = v87;
  }

  if (v74 <= v29 + 1)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v74;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v74)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CBF8, &unk_23A6E3460);
      (*(*(v72 - 8) + 56))(v20, 1, 1, v72);
      v87 = 0;
      goto LABEL_16;
    }

    v26 = *(v75 + 8 * v30);
    ++v29;
    if (v26)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23A69EA14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC38, &qword_23A6E3480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC20, &unk_23A6E3470);
    v7 = sub_23A6DFB84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A69EF80(v9, v5);
      result = sub_23A69CEA0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23A6DE9B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_23A69EBE8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A69EC4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A69ECB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A69ED5C(uint64_t a1)
{
  result = sub_23A69ED84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A69ED84()
{
  result = qword_27DF9CBD8;
  if (!qword_27DF9CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBD8);
  }

  return result;
}

unint64_t sub_23A69EDDC()
{
  result = qword_27DF9CBE0;
  if (!qword_27DF9CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CBE0);
  }

  return result;
}

uint64_t sub_23A69EE3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23A69EE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A69EED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A69EF38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A69EF80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC38, &qword_23A6E3480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A69EFF0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentAnyOfDataRequest.Response.documentResponse.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A69EFF0(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v16 = type metadata accessor for MobileDriversLicenseDataRequest.Response(0);
    v8 = sub_23A69F258(&qword_27DF9CC50, type metadata accessor for MobileDriversLicenseDataRequest.Response, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response);
    v9 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
    v8 = sub_23A69F258(&qword_27DF9CC48, type metadata accessor for MobileNationalIDCardDataRequest.Response, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response);
    v9 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
LABEL_5:
    v10 = v9;
    v17 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    sub_23A69F2A0(v6, boxed_opaque_existential_1, v10);
    return sub_23A63F73C(&v15, a1);
  }

  a1[3] = type metadata accessor for MobilePhotoIDDataRequest.Response(0);
  a1[4] = sub_23A69F258(&qword_27DF9CC40, type metadata accessor for MobilePhotoIDDataRequest.Response, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response);
  v13 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_23A69F2A0(v6, v13, type metadata accessor for MobilePhotoIDDataRequest.Response);
}

uint64_t sub_23A69F258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A69F2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = type metadata accessor for MobilePhotoIDDataRequest.Response(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDriversLicenseDataRequest.Response(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A69EFF0(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23A69F2A0(v13, v7, type metadata accessor for MobileNationalIDCardDataRequest.Response);
      MEMORY[0x23EE8A1E0](1);
      sub_23A69F258(&qword_27DF9CC60, type metadata accessor for MobileNationalIDCardDataRequest.Response, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response);
      sub_23A6DF5E4();
      v15 = v7;
      v16 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
    }

    else
    {
      sub_23A69F2A0(v13, v4, type metadata accessor for MobilePhotoIDDataRequest.Response);
      MEMORY[0x23EE8A1E0](2);
      sub_23A69F258(&qword_27DF9CC58, type metadata accessor for MobilePhotoIDDataRequest.Response, &protocol conformance descriptor for MobilePhotoIDDataRequest.Response);
      sub_23A6DF5E4();
      v15 = v4;
      v16 = type metadata accessor for MobilePhotoIDDataRequest.Response;
    }
  }

  else
  {
    sub_23A69F2A0(v13, v10, type metadata accessor for MobileDriversLicenseDataRequest.Response);
    MEMORY[0x23EE8A1E0](0);
    sub_23A69F258(&qword_27DF9CC68, type metadata accessor for MobileDriversLicenseDataRequest.Response, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response);
    sub_23A6DF5E4();
    v15 = v10;
    v16 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
  }

  return sub_23A69FACC(v15, v16);
}

uint64_t sub_23A69F660()
{
  sub_23A6DFCE4();
  _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV4hash4intoys6HasherVz_tF_0(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A69F6A8(uint64_t a1)
{
  sub_23A6DFCE4();
  _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV4hash4intoys6HasherVz_tF_0(v2);
  return sub_23A6DFD14();
}

uint64_t _s15ProximityReader30MobileDocumentAnyOfDataRequestV8ResponseV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for MobilePhotoIDDataRequest.Response(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDriversLicenseDataRequest.Response(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC80, &qword_23A6E3578);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v34 - v22;
  v25 = *(v24 + 56);
  sub_23A69EFF0(a1, &v34 - v22);
  sub_23A69EFF0(v35, &v23[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23A69EFF0(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
        sub_23A69F2A0(&v23[v25], v8, type metadata accessor for MobileNationalIDCardDataRequest.Response);
        v28 = static MobileNationalIDCardDataRequest.Response.== infix(_:_:)();
        sub_23A69FACC(v8, type metadata accessor for MobileNationalIDCardDataRequest.Response);
        v29 = v17;
LABEL_13:
        v32 = v27;
        goto LABEL_14;
      }

      v30 = type metadata accessor for MobileNationalIDCardDataRequest.Response;
      v31 = v17;
    }

    else
    {
      sub_23A69EFF0(v23, v14);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_23A69F2A0(&v23[v25], v5, type metadata accessor for MobilePhotoIDDataRequest.Response);
        v28 = static MobilePhotoIDDataRequest.Response.== infix(_:_:)(v14, v5);
        sub_23A69FACC(v5, type metadata accessor for MobilePhotoIDDataRequest.Response);
        v29 = v14;
        v32 = type metadata accessor for MobilePhotoIDDataRequest.Response;
LABEL_14:
        sub_23A69FACC(v29, v32);
        sub_23A69FACC(v23, _s14descr284D50EA1O8ResponseV15InternalStorageOMa);
        return v28 & 1;
      }

      v30 = type metadata accessor for MobilePhotoIDDataRequest.Response;
      v31 = v14;
    }
  }

  else
  {
    sub_23A69EFF0(v23, v20);
    if (!swift_getEnumCaseMultiPayload())
    {
      v27 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
      sub_23A69F2A0(&v23[v25], v11, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v28 = static MobileDriversLicenseDataRequest.Response.== infix(_:_:)(v20, v11);
      sub_23A69FACC(v11, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v29 = v20;
      goto LABEL_13;
    }

    v30 = type metadata accessor for MobileDriversLicenseDataRequest.Response;
    v31 = v20;
  }

  sub_23A69FACC(v31, v30);
  sub_23A69FCF8(v23);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_23A69FACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A69FC04(uint64_t a1)
{
  result = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23A69FC70(uint64_t a1)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MobileNationalIDCardDataRequest.Response(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MobilePhotoIDDataRequest.Response(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23A69FCF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC80, &qword_23A6E3578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDataRequest.retainedElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MobileDriversLicenseDataRequest.nonRetainedElements.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MobileDriversLicenseDataRequest.init(retainedElements:nonRetainedElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MobileDriversLicenseDataRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if ((sub_23A69FE80(*a1, *a2, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_23A69FE80(v3, v4, v5);
}

uint64_t sub_23A69FE80(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v9 + 72);
      do
      {
        sub_23A6A0258(v15, v12, v10);
        sub_23A6A0258(v16, v7, v18);
        sub_23A6A0C30(&qword_27DF9CCA8, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6A02BC(v7, v20);
        sub_23A6A02BC(v12, v21);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileDriversLicenseDataRequest.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = *v2;
  v11 = v2[1];
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v7);
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v15 = *(v24 + 72);
    do
    {
      sub_23A6A0258(v14, v9, v12);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v9, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v11 + 16));
  v19 = *(v11 + 16);
  if (v19)
  {
    v20 = v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v21 = *(v24 + 72);
    do
    {
      sub_23A6A0258(v20, v5, v18);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6A02BC(v5, v22);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_23A6A0258(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6A02BC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileDriversLicenseDataRequest.hashValue.getter(__n128 a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_23A6A0258(v13, v8, v11);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v8, v15);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v17 = *(v10 + 16);
  if (v17)
  {
    v18 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = *(v3 + 72);
    do
    {
      sub_23A6A0258(v18, v5, v16);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v5, v20);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6A0538(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = *v2;
  v11 = v2[1];
  MEMORY[0x23EE8A1E0](*(*v2 + 16), v7);
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v15 = *(v24 + 72);
    do
    {
      sub_23A6A0258(v14, v9, v12);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v9, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  result = MEMORY[0x23EE8A1E0](*(v11 + 16));
  v19 = *(v11 + 16);
  if (v19)
  {
    v20 = v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v21 = *(v24 + 72);
    do
    {
      sub_23A6A0258(v20, v5, v18);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6A02BC(v5, v22);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_23A6A074C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = *v2;
  v11 = v2[1];
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*(v10 + 16));
  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_23A6A0258(v14, v9, v12);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v9, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v18 = *(v11 + 16);
  if (v18)
  {
    v19 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    do
    {
      sub_23A6A0258(v19, v6, v17);
      sub_23A6A0C30(&qword_27DF9CC88, type metadata accessor for MobileDriversLicenseDataRequest.Element, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6A02BC(v6, v21);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6A096C(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if ((sub_23A69FE80(*a1, *a2, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_23A69FE80(v3, v4, v5);
}

uint64_t static MobileDocumentRequest<>.driversLicenseData(retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

unint64_t sub_23A6A0A4C(uint64_t a1)
{
  result = sub_23A6A0A74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6A0A74()
{
  result = qword_27DF9CC90;
  if (!qword_27DF9CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CC90);
  }

  return result;
}

unint64_t sub_23A6A0ACC()
{
  result = qword_27DF9CC98;
  if (!qword_27DF9CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CC98);
  }

  return result;
}

unint64_t sub_23A6A0B20(uint64_t a1)
{
  result = sub_23A6A0B48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6A0B48()
{
  result = qword_27DF9CCA0;
  if (!qword_27DF9CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CCA0);
  }

  return result;
}

uint64_t sub_23A6A0B9C(uint64_t *a1, int a2)
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

uint64_t sub_23A6A0BE4(uint64_t result, int a2, int a3)
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

uint64_t sub_23A6A0C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Element(uint64_t a1)
{
  result = qword_27DFA05F0;
  if (!qword_27DFA05F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6A1100(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6A11C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDriversLicenseDataRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6A0258(v7, a4, v8);
}

uint64_t static MobileDriversLicenseDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileDriversLicenseDataRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A13A8()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A1430(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6A14B4(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6A1580(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A1580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6A15F4(uint64_t a1)
{
  result = sub_23A6DE9B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_23A6A16D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDataRequest.Response.hash(into:)(uint64_t a1)
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A184C()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A18D4(uint64_t a1)
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6A1958(uint64_t a1)
{
  sub_23A6DFCE4();
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  sub_23A6A1B30(&qword_27DF9CCB0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A19DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Response(uint64_t a1)
{
  result = qword_27DFA0780;
  if (!qword_27DFA0780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6A1AD8(uint64_t a1)
{
  result = sub_23A6A1B30(&qword_27DF9CC68, type metadata accessor for MobileDriversLicenseDataRequest.Response, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6A1B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6A1BA0(uint64_t a1)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0) + 20);
  v2 = *v1;
  sub_23A693750(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(uint64_t a1)
{
  result = qword_27DFA0890;
  if (!qword_27DFA0890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.ageAtLeastElements.getter()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.address.getter()
{
  v1 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  result = 0;
  if (*(v0 + *(v1 + 40) + 8) != 1)
  {
    return sub_23A6C64E8();
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.eyeColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.hairColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

void MobileDriversLicenseDataRequest.Response.DocumentElements.issuingAuthority.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_23A6A1FA8(v4, v5, v6, v7, v8, v9);
}

void sub_23A6A1FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.drivingPrivileges.getter()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.aamvaDrivingPrivileges.getter()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.documentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0) + 80));

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.documentDHSComplianceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

unint64_t sub_23A6A216C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_23A649270(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A6A2274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6A5C74(v13, v10, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        sub_23A6A5C74(v14, v6, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        sub_23A6A65A0(&qword_27DF9CE60, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        v16 = sub_23A6DF604();
        sub_23A6A5CDC(v6, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        sub_23A6A5CDC(v10, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_23A6A246C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23A6A5C74(v13, v10, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        sub_23A6A5C74(v14, v6, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        sub_23A6A65A0(&qword_27DF9CE58, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        v16 = sub_23A6DF604();
        sub_23A6A5CDC(v6, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        sub_23A6A5CDC(v10, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(uint64_t a1)
{
  v2 = v1;
  *&v100 = a1;
  v95 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  v82 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  v81 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE8, &qword_23A6E37B8);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCF0, &qword_23A6E37C0);
  v11 = *(v10 - 8);
  v84 = v10;
  v85 = v11;
  MEMORY[0x28223BE20](v10);
  v79 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v78 - v14;
  v15 = sub_23A6DE0A4();
  v97 = *(v15 - 8);
  v98 = v15;
  MEMORY[0x28223BE20](v15);
  v96 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v17 - 8);
  v94 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v78 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = sub_23A6DE0F4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v78 - v29;
  v99 = v2;
  sub_23A646D48(v2, &v78 - v29, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((*(v25 + 48))(v30, 1, v24) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v25 + 32))(v27, v30, v24);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CCF8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_23A6DF5E4();
    (*(v25 + 8))(v27, v24);
  }

  v31 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  v32 = v99;
  v33 = v100;
  if (*(v99 + v31[5] + 8) >> 60 == 15)
  {
    sub_23A6DFD04();
  }

  else
  {
    sub_23A6DFD04();
    sub_23A6DE244();
  }

  v34 = v97;
  sub_23A6A3D10(v33, *(v32 + v31[6]));
  v35 = (v32 + v31[7]);
  if (*(v35 + 8) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v36 = *v35;
    sub_23A6DFD04();
    MEMORY[0x23EE8A1E0](v36);
  }

  v37 = v98;
  sub_23A646D48(v32 + v31[8], v23, &qword_27DF9CCC8, &qword_23A6E3C40);
  v89 = *(v34 + 48);
  v90 = v34 + 48;
  if (v89(v23, 1, v37) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v38 = v96;
    (*(v34 + 32))(v96, v23, v37);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v34 + 8))(v38, v37);
  }

  if (*(v32 + v31[9]) == 5)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v111) = *(v32 + v31[9]);
    sub_23A6DFD04();
    sub_23A6A5A20();
    sub_23A6DF5E4();
  }

  v39 = (v32 + v31[10]);
  v40 = *v39;
  v41 = v39[1];
  v42 = *(v39 + 2);
  v115 = *(v39 + 1);
  v116 = v42;
  v43 = *(v39 + 4);
  v117 = *(v39 + 3);
  v118 = v43;
  if (v41 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v44 = *(v39 + 2);
    v102 = *(v39 + 1);
    v103 = v44;
    v45 = *(v39 + 4);
    v104 = *(v39 + 3);
    v105 = v45;
    *&v101 = v40;
    *(&v101 + 1) = v41;
    sub_23A6DFD04();
    v106[0] = v40;
    v106[1] = v41;
    v107 = v115;
    v108 = v116;
    v109 = v117;
    v110 = v118;
    sub_23A6A5A74(v106, &v111);
    sub_23A6A5AD0();
    sub_23A6DF5E4();
    *&v112[16] = v103;
    v113 = v104;
    v114 = v105;
    v111 = v101;
    *v112 = v102;
    sub_23A6A5B24(&v111);
  }

  v47 = v87;
  v46 = v88;
  v48 = v83;
  v49 = v84;
  sub_23A646D48(v32 + v31[11], v83, &qword_27DF9CCD8, &qword_23A6E37A8);
  v50 = v85;
  if ((*(v85 + 48))(v48, 1, v49) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v51 = v79;
    (*(v50 + 32))(v79, v48, v49);
    sub_23A6DFD04();
    sub_23A6A64B0(&qword_27DF9CD18, &qword_27DF9CCF0, &qword_23A6E37C0, MEMORY[0x277CC87E0]);
    sub_23A6DF5E4();
    (*(v50 + 8))(v51, v49);
  }

  v52 = v86;
  sub_23A646D48(v32 + v31[12], v86, &qword_27DF9CCE0, &qword_23A6E37B0);
  if ((*(v47 + 48))(v52, 1, v46) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v53 = v80;
    (*(v47 + 32))(v80, v52, v46);
    sub_23A6DFD04();
    sub_23A6A64B0(&qword_27DF9CD20, &qword_27DF9CCE8, &qword_23A6E37B8, MEMORY[0x277CC87E0]);
    sub_23A6DF5E4();
    (*(v47 + 8))(v53, v46);
  }

  if (*(v32 + v31[13]) == 10)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v111) = *(v32 + v31[13]);
    sub_23A6DFD04();
    sub_23A6A5B78();
    sub_23A6DF5E4();
  }

  if (*(v32 + v31[14]) == 10)
  {
    sub_23A6DFD04();
  }

  else
  {
    LOBYTE(v111) = *(v32 + v31[14]);
    sub_23A6DFD04();
    sub_23A6A5BCC();
    sub_23A6DF5E4();
  }

  if (*(v32 + v31[15]) != 2)
  {
    sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (*(v32 + v31[16]) != 2)
  {
    sub_23A6DFD04();
  }

  sub_23A6DFD04();
  v54 = v32 + v31[17];
  v55 = *(v54 + 8);
  if (v55 == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v56 = *(v54 + 40);
    v57 = *(v54 + 16);
    *&v111 = *v54;
    *(&v111 + 1) = v55;
    *v112 = v57;
    v100 = *(v54 + 24);
    *&v112[8] = v100;
    *&v112[24] = v56;
    sub_23A6DFD04();
    sub_23A6A5C20();

    sub_23A6DF5E4();
  }

  *&v100 = v31;
  v58 = *(v32 + v31[18]);
  MEMORY[0x23EE8A1E0](*(v58 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v58 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v61 = *(v81 + 72);
    do
    {
      sub_23A6A5C74(v60, v5, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      sub_23A6A65A0(&qword_27DF9CD40, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      sub_23A6DF5E4();
      sub_23A6A5CDC(v5, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      v60 += v61;
      --v59;
    }

    while (v59);
  }

  v62 = *(v99 + *(v100 + 76));
  MEMORY[0x23EE8A1E0](*(v62 + 16));
  v63 = *(v62 + 16);
  v64 = v92;
  if (v63)
  {
    v65 = v62 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v66 = *(v82 + 72);
    do
    {
      sub_23A6A5C74(v65, v64, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      sub_23A6A65A0(&qword_27DF9CD48, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege, &protocol conformance descriptor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      sub_23A6DF5E4();
      sub_23A6A5CDC(v64, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      v65 += v66;
      --v63;
    }

    while (v63);
  }

  v68 = v99;
  v67 = v100;
  if (*(v99 + *(v100 + 80) + 8))
  {
    sub_23A6DFD04();
    sub_23A6DF684();
  }

  else
  {
    sub_23A6DFD04();
  }

  v69 = v97;
  v70 = v89;
  v71 = v91;
  sub_23A646D48(v68 + v67[21], v91, &qword_27DF9CCC8, &qword_23A6E3C40);
  v72 = v98;
  if (v70(v71, 1, v98) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v73 = v96;
    (*(v69 + 32))(v96, v71, v72);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v69 + 8))(v73, v72);
  }

  v74 = v94;
  sub_23A646D48(v68 + v67[22], v94, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v70(v74, 1, v72) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v75 = v96;
    (*(v69 + 32))(v96, v74, v72);
    sub_23A6DFD04();
    sub_23A6A65A0(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v69 + 8))(v75, v72);
  }

  v76 = *(v68 + v67[23]);
  if (v76 == 2)
  {
    return sub_23A6DFD04();
  }

  LOBYTE(v111) = v76 & 1;
  sub_23A6DFD04();
  sub_23A6A5D3C();
  return sub_23A6DF5E4();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.hashValue.getter()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A3670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, char *a13, char *a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24)
{
  v30 = *a8;
  v42 = *a13;
  v43 = *a14;
  v44 = *(a17 + 40);
  v45 = *(a17 + 32);
  v46 = *a24;
  sub_23A69EED0(a1, a9, &qword_27DF9CCC0, &unk_23A6E3790);
  v31 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  v32 = (a9 + v31[5]);
  *v32 = a2;
  v32[1] = a3;
  *(a9 + v31[6]) = a4;
  v33 = a9 + v31[7];
  *v33 = a5;
  *(v33 + 8) = a6 & 1;
  sub_23A69EED0(a7, a9 + v31[8], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v31[9]) = v30;
  v34 = (a9 + v31[10]);
  v35 = a10[3];
  v34[2] = a10[2];
  v34[3] = v35;
  v34[4] = a10[4];
  v36 = a10[1];
  *v34 = *a10;
  v34[1] = v36;
  sub_23A69EED0(a11, a9 + v31[11], &qword_27DF9CCD8, &qword_23A6E37A8);
  sub_23A69EED0(a12, a9 + v31[12], &qword_27DF9CCE0, &qword_23A6E37B0);
  *(a9 + v31[13]) = v42;
  *(a9 + v31[14]) = v43;
  *(a9 + v31[15]) = a15;
  *(a9 + v31[16]) = a16;
  v37 = a9 + v31[17];
  v38 = *(a17 + 16);
  *v37 = *a17;
  *(v37 + 16) = v38;
  *(v37 + 32) = v45;
  *(v37 + 40) = v44;
  *(a9 + v31[18]) = a18;
  *(a9 + v31[19]) = a19;
  v39 = (a9 + v31[20]);
  *v39 = a20;
  v39[1] = a21;
  sub_23A69EED0(a22, a9 + v31[21], &qword_27DF9CCC8, &qword_23A6E3C40);
  result = sub_23A69EED0(a23, a9 + v31[22], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v31[23]) = v46;
  return result;
}

uint64_t sub_23A6A38D0()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A3914(uint64_t a1)
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.hash(into:)(v2);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A3950@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_23A6DE074();
    if (v10)
    {
      v11 = sub_23A6DE094();
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
      result = sub_23A6DE084();
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
  v10 = sub_23A6DE074();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23A6DE094();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23A6DE084();
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

uint64_t sub_23A6A3B80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_23A6A3E30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23A691B9C(a3, a4);
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
  sub_23A6A3950(v13, a3, a4, &v12);
  v10 = v4;
  sub_23A691B9C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_23A6A3D10(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = *(*(a2 + 48) + 8 * (__clz(__rbit64(v8)) | (v10 << 6)));
    v8 &= v8 - 1;
    MEMORY[0x23EE8A1E0](v11);
    sub_23A6DFD04();
    result = sub_23A6DFD14();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x23EE8A1E0](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A6A3E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23A6DE074();
  v11 = result;
  if (result)
  {
    result = sub_23A6DE094();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23A6DE084();
  sub_23A6A3950(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_23A6A3EE8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_23A693764(a3, a4);
          return sub_23A6A3B80(v13, a2, a3, a4) & 1;
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

BOOL _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v206 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE8, &qword_23A6E37B8);
  v191 = *(v3 - 8);
  v192 = v3;
  MEMORY[0x28223BE20](v3);
  v187 = &v181 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  MEMORY[0x28223BE20](v5 - 8);
  v188 = &v181 - v6;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDE0, &qword_23A6E38E8);
  MEMORY[0x28223BE20](v190);
  v198 = (&v181 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCF0, &qword_23A6E37C0);
  v196 = *(v8 - 8);
  v197 = v8;
  MEMORY[0x28223BE20](v8);
  v189 = &v181 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  MEMORY[0x28223BE20](v10 - 8);
  v193 = &v181 - v11;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDE8, &unk_23A6E38F0);
  MEMORY[0x28223BE20](v194);
  v195 = &v181 - v12;
  v13 = sub_23A6DE0A4();
  v14 = *(v13 - 8);
  v202 = v13;
  v203 = v14;
  MEMORY[0x28223BE20](v13);
  v199 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v16 - 8);
  v183 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v184 = &v181 - v19;
  MEMORY[0x28223BE20](v20);
  v200 = &v181 - v21;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  MEMORY[0x28223BE20](v201);
  v185 = &v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v186 = &v181 - v24;
  MEMORY[0x28223BE20](v25);
  v204 = (&v181 - v26);
  v27 = sub_23A6DE0F4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v181 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF8, &qword_23A6E3900);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = (&v181 - v35);
  v38 = *(v37 + 56);
  v205 = a1;
  sub_23A646D48(a1, &v181 - v35, &qword_27DF9CCC0, &unk_23A6E3790);
  sub_23A646D48(v206, v36 + v38, &qword_27DF9CCC0, &unk_23A6E3790);
  v39 = *(v28 + 48);
  if (v39(v36, 1, v27) == 1)
  {
    if (v39(v36 + v38, 1, v27) == 1)
    {
      sub_23A646DB0(v36, &qword_27DF9CCC0, &unk_23A6E3790);
      goto LABEL_9;
    }

LABEL_6:
    v40 = &qword_27DF9CDF8;
    v41 = &qword_23A6E3900;
LABEL_7:
    sub_23A646DB0(v36, v40, v41);
    return 0;
  }

  sub_23A646D48(v36, v33, &qword_27DF9CCC0, &unk_23A6E3790);
  if (v39(v36 + v38, 1, v27) == 1)
  {
    (*(v28 + 8))(v33, v27);
    goto LABEL_6;
  }

  (*(v28 + 32))(v30, v36 + v38, v27);
  sub_23A6A65A0(&qword_27DF9CE50, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);
  v42 = sub_23A6DF604();
  v43 = *(v28 + 8);
  v43(v30, v27);
  v43(v33, v27);
  sub_23A646DB0(v36, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v44 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  v45 = v44[5];
  v47 = v205;
  v46 = v206;
  v49 = *(v205 + v45);
  v48 = *(v205 + v45 + 8);
  v50 = (v206 + v45);
  v52 = *v50;
  v51 = v50[1];
  if (v48 >> 60 == 15)
  {
    if (v51 >> 60 == 15)
    {
      sub_23A693750(v49, v48);
      sub_23A693750(v52, v51);
      sub_23A6A62F8(v49, v48);
      goto LABEL_15;
    }

LABEL_13:
    sub_23A693750(v49, v48);
    sub_23A693750(v52, v51);
    sub_23A6A62F8(v49, v48);
    sub_23A6A62F8(v52, v51);
    return 0;
  }

  if (v51 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_23A693750(v49, v48);
  sub_23A693750(v52, v51);
  v53 = sub_23A6A3EE8(v49, v48, v52, v51);
  sub_23A6A62F8(v52, v51);
  sub_23A6A62F8(v49, v48);
  if (!v53)
  {
    return 0;
  }

LABEL_15:
  if ((sub_23A6A216C(*(v47 + v44[6]), *(v46 + v44[6])) & 1) == 0)
  {
    return 0;
  }

  v54 = v44[7];
  v55 = (v47 + v54);
  v56 = *(v47 + v54 + 8);
  v57 = (v46 + v54);
  v58 = *(v46 + v54 + 8);
  if (v56)
  {
    v36 = v204;
    if (!v58)
    {
      return 0;
    }
  }

  else
  {
    if (*v55 != *v57)
    {
      LOBYTE(v58) = 1;
    }

    v36 = v204;
    if (v58)
    {
      return 0;
    }
  }

  v60 = v44[8];
  v61 = *(v201 + 48);
  sub_23A646D48(v47 + v60, v36, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v46 + v60, v36 + v61, &qword_27DF9CCC8, &qword_23A6E3C40);
  v62 = v202;
  v64 = v203 + 48;
  v63 = *(v203 + 48);
  if (v63(v36, 1, v202) == 1)
  {
    if (v63(v36 + v61, 1, v62) == 1)
    {
      v181 = v64;
      v182 = v63;
      sub_23A646DB0(v36, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v65 = v200;
  sub_23A646D48(v36, v200, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v63(v36 + v61, 1, v62) == 1)
  {
    (*(v203 + 8))(v65, v62);
LABEL_28:
    v40 = &qword_27DF9CDF0;
    v41 = &qword_23A6E3DA0;
    goto LABEL_7;
  }

  v181 = v64;
  v182 = v63;
  v66 = v203;
  v67 = v36 + v61;
  v68 = v199;
  (*(v203 + 32))(v199, v67, v62);
  sub_23A6A65A0(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v69 = v44;
  v70 = v62;
  v71 = sub_23A6DF604();
  v72 = *(v66 + 8);
  v72(v68, v70);
  v73 = v70;
  v44 = v69;
  v72(v65, v73);
  sub_23A646DB0(v204, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v74 = v44[9];
  v75 = *(v47 + v74);
  v76 = *(v46 + v74);
  if (v75 == 5)
  {
    if (v76 != 5)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v219) = v75;
    if (v76 == 5)
    {
      return 0;
    }

    LOBYTE(v241[0]) = v76;
    sub_23A6A654C();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v77 = (v47 + v44[10]);
  v78 = v77[1];
  v79 = v77[3];
  v238 = v77[2];
  v239 = v79;
  v80 = v77[3];
  v240 = v77[4];
  v81 = v77[1];
  v237[0] = *v77;
  v237[1] = v81;
  v204 = v44;
  v82 = (v46 + v44[10]);
  v83 = v82[3];
  v244 = v82[4];
  v84 = v82[3];
  v85 = v82[1];
  v242 = v82[2];
  v243 = v84;
  v86 = v82[1];
  v241[0] = *v82;
  v241[1] = v86;
  v233 = v78;
  v234 = v238;
  v87 = v77[4];
  v235 = v80;
  v236 = v87;
  v88 = v82[4];
  v231 = v83;
  v232 = v88;
  v89 = v237[0];
  v90 = v241[0];
  v229 = v85;
  v230 = v242;
  if (*(&v237[0] + 1) == 1)
  {
    if (*(&v241[0] + 1) == 1)
    {
      *&v219 = *&v237[0];
      *(&v219 + 1) = 1;
      v91 = v77[2];
      v220 = v77[1];
      v221 = v91;
      v92 = v77[4];
      v222 = v77[3];
      v223 = v92;
      sub_23A646D48(v237, &v214, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646D48(v241, &v214, &qword_27DF9CCD0, &qword_23A6E37A0);
      sub_23A646DB0(&v219, &qword_27DF9CCD0, &qword_23A6E37A0);
      goto LABEL_43;
    }

    sub_23A646D48(v237, &v219, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v241, &v219, &qword_27DF9CCD0, &qword_23A6E37A0);
LABEL_41:
    v219 = v89;
    v220 = v233;
    v221 = v234;
    v222 = v235;
    v223 = v236;
    v224 = v90;
    v225 = v229;
    v226 = v230;
    v227 = v231;
    v228 = v232;
    sub_23A646DB0(&v219, &qword_27DF9CE00, &qword_23A6E3908);
    return 0;
  }

  v219 = v237[0];
  v93 = v77[2];
  v220 = v77[1];
  v221 = v93;
  v94 = v77[4];
  v222 = v77[3];
  v223 = v94;
  v216 = v93;
  v217 = v222;
  v218 = v94;
  v214 = v237[0];
  v215 = v220;
  if (*(&v241[0] + 1) == 1)
  {
    v211 = v221;
    v212 = v222;
    v213 = v223;
    v209 = v219;
    v210 = v220;
    sub_23A646D48(v237, v208, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(v241, v208, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A646D48(&v219, v208, &qword_27DF9CCD0, &qword_23A6E37A0);
    sub_23A6A5B24(&v209);
    goto LABEL_41;
  }

  v95 = v82[2];
  v210 = v82[1];
  v211 = v95;
  v96 = v82[4];
  v212 = v82[3];
  v213 = v96;
  v209 = v241[0];
  sub_23A646D48(v237, v208, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(v241, v208, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A646D48(&v219, v208, &qword_27DF9CCD0, &qword_23A6E37A0);
  sub_23A6A64F8();
  v97 = sub_23A6DF604();
  v207[2] = v211;
  v207[3] = v212;
  v207[4] = v213;
  v207[0] = v209;
  v207[1] = v210;
  sub_23A6A5B24(v207);
  v208[2] = v216;
  v208[3] = v217;
  v208[4] = v218;
  v208[0] = v214;
  v208[1] = v215;
  sub_23A6A5B24(v208);
  v209 = v89;
  v210 = v233;
  v211 = v234;
  v212 = v235;
  v213 = v236;
  sub_23A646DB0(&v209, &qword_27DF9CCD0, &qword_23A6E37A0);
  if ((v97 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v98 = v204[11];
  v99 = v195;
  v100 = *(v194 + 48);
  sub_23A646D48(v47 + v98, v195, &qword_27DF9CCD8, &qword_23A6E37A8);
  v101 = v206;
  sub_23A646D48(v206 + v98, v99 + v100, &qword_27DF9CCD8, &qword_23A6E37A8);
  v103 = v196;
  v102 = v197;
  v104 = *(v196 + 48);
  if (v104(v99, 1, v197) == 1)
  {
    v105 = v104(v99 + v100, 1, v102);
    v36 = v198;
    if (v105 == 1)
    {
      sub_23A646DB0(v99, &qword_27DF9CCD8, &qword_23A6E37A8);
      goto LABEL_50;
    }

LABEL_48:
    sub_23A646DB0(v99, &qword_27DF9CDE8, &unk_23A6E38F0);
    return 0;
  }

  v106 = v193;
  sub_23A646D48(v99, v193, &qword_27DF9CCD8, &qword_23A6E37A8);
  v107 = v104(v99 + v100, 1, v102);
  v108 = v198;
  if (v107 == 1)
  {
    (*(v103 + 8))(v106, v102);
    goto LABEL_48;
  }

  v109 = v99 + v100;
  v110 = v189;
  (*(v103 + 32))(v189, v109, v102);
  sub_23A6A64B0(&qword_27DF9CE38, &qword_27DF9CCF0, &qword_23A6E37C0, MEMORY[0x277CC87F0]);
  v111 = sub_23A6DF604();
  v112 = *(v103 + 8);
  v112(v110, v102);
  v112(v106, v102);
  sub_23A646DB0(v99, &qword_27DF9CCD8, &qword_23A6E37A8);
  v36 = v108;
  v101 = v206;
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v113 = v204[12];
  v114 = *(v190 + 48);
  sub_23A646D48(v47 + v113, v36, &qword_27DF9CCE0, &qword_23A6E37B0);
  sub_23A646D48(v101 + v113, v36 + v114, &qword_27DF9CCE0, &qword_23A6E37B0);
  v116 = v191;
  v115 = v192;
  v117 = *(v191 + 48);
  if (v117(v36, 1, v192) == 1)
  {
    if (v117(v36 + v114, 1, v115) == 1)
    {
      sub_23A646DB0(v36, &qword_27DF9CCE0, &qword_23A6E37B0);
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v118 = v188;
  sub_23A646D48(v36, v188, &qword_27DF9CCE0, &qword_23A6E37B0);
  if (v117(v36 + v114, 1, v115) == 1)
  {
    (*(v116 + 8))(v118, v115);
LABEL_55:
    v40 = &qword_27DF9CDE0;
    v41 = &qword_23A6E38E8;
    goto LABEL_7;
  }

  v119 = v36 + v114;
  v120 = v187;
  (*(v116 + 32))(v187, v119, v115);
  sub_23A6A64B0(&qword_27DF9CE30, &qword_27DF9CCE8, &qword_23A6E37B8, MEMORY[0x277CC87F0]);
  v121 = sub_23A6DF604();
  v122 = *(v116 + 8);
  v122(v120, v115);
  v122(v118, v115);
  sub_23A646DB0(v36, &qword_27DF9CCE0, &qword_23A6E37B0);
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  v123 = v204[13];
  v124 = *(v47 + v123);
  v125 = *(v101 + v123);
  if (v124 == 10)
  {
    if (v125 != 10)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v219) = v124;
    if (v125 == 10)
    {
      return 0;
    }

    LOBYTE(v214) = v125;
    sub_23A6A645C();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v126 = v204[14];
  v127 = *(v47 + v126);
  v128 = *(v101 + v126);
  if (v127 == 10)
  {
    if (v128 != 10)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v219) = v127;
    if (v128 == 10)
    {
      return 0;
    }

    LOBYTE(v214) = v128;
    sub_23A6A6408();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v129 = v204[15];
  v130 = *(v205 + v129);
  v131 = *(v206 + v129);
  if (v130 == 2)
  {
    if (v131 != 2)
    {
      return 0;
    }
  }

  else if (v131 == 2 || ((v131 ^ v130) & 1) != 0)
  {
    return 0;
  }

  v132 = v204[16];
  v133 = *(v205 + v132);
  v134 = *(v206 + v132);
  if (v133 == 2)
  {
    if (v134 != 2)
    {
      return 0;
    }
  }

  else if (v134 == 2 || ((v134 ^ v133) & 1) != 0)
  {
    return 0;
  }

  v135 = v204[17];
  v136 = *(v205 + v135);
  v137 = *(v205 + v135 + 8);
  v139 = *(v205 + v135 + 16);
  v138 = *(v205 + v135 + 24);
  v141 = *(v205 + v135 + 32);
  v140 = *(v205 + v135 + 40);
  v142 = (v206 + v135);
  v144 = *v142;
  v143 = v142[1];
  v146 = v142[2];
  v145 = v142[3];
  v148 = v142[4];
  v147 = v142[5];
  v197 = v145;
  v198 = v148;
  v200 = v147;
  if (v137 == 1)
  {
    sub_23A6A1FA8(v136, 1, v139, v138, v141, v140);
    if (v143 == 1)
    {
      sub_23A6A1FA8(v144, 1, v146, v197, v198, v200);
      sub_23A6A630C(v136, 1, v139, v138, v141, v140);
      goto LABEL_85;
    }

    sub_23A6A1FA8(v144, v143, v146, v197, v198, v200);
LABEL_83:
    sub_23A6A630C(v136, v137, v139, v138, v141, v140);
    sub_23A6A630C(v144, v143, v146, v197, v198, v200);
    return 0;
  }

  *&v219 = v136;
  *(&v219 + 1) = v137;
  *&v220 = v139;
  *(&v220 + 1) = v138;
  *&v221 = v141;
  *(&v221 + 1) = v140;
  if (v143 == 1)
  {
    v194 = v136;
    v195 = v139;
    v196 = v141;
    sub_23A6A1FA8(v136, v137, v139, v138, v141, v140);
    sub_23A6A1FA8(v144, 1, v146, v197, v198, v200);
    sub_23A6A1FA8(v194, v137, v195, v138, v196, v140);

    goto LABEL_83;
  }

  *&v214 = v144;
  *(&v214 + 1) = v143;
  v193 = v146;
  *&v215 = v146;
  v149 = v197;
  *(&v215 + 1) = v197;
  *&v216 = v198;
  *(&v216 + 1) = v200;
  sub_23A6A1FA8(v136, v137, v139, v138, v141, v140);
  sub_23A6A1FA8(v144, v143, v193, v149, v198, v200);
  sub_23A6A1FA8(v136, v137, v139, v138, v141, v140);
  sub_23A6A63B4();
  LOBYTE(v149) = sub_23A6DF604();

  sub_23A6A630C(v136, v137, v139, v138, v141, v140);
  if ((v149 & 1) == 0)
  {
    return 0;
  }

LABEL_85:
  if ((sub_23A6A2274(*(v205 + v204[18]), *(v206 + v204[18])) & 1) == 0 || (sub_23A6A246C(*(v205 + v204[19]), *(v206 + v204[19])) & 1) == 0)
  {
    return 0;
  }

  v150 = v204[20];
  v151 = (v205 + v150);
  v152 = *(v205 + v150 + 8);
  v153 = (v206 + v150);
  v154 = v153[1];
  if (v152)
  {
    if (!v154 || (*v151 != *v153 || v152 != v154) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v154)
  {
    return 0;
  }

  v155 = v204[21];
  v156 = *(v201 + 48);
  v157 = v186;
  sub_23A646D48(v205 + v155, v186, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v206 + v155, v157 + v156, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v182(v157, 1, v202) == 1)
  {
    if (v182(v186 + v156, 1, v202) == 1)
    {
      sub_23A646DB0(v186, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_101;
    }

LABEL_99:
    sub_23A646DB0(v186, &qword_27DF9CDF0, &qword_23A6E3DA0);
    return 0;
  }

  v158 = v186;
  sub_23A646D48(v186, v184, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v182(v158 + v156, 1, v202) == 1)
  {
    (*(v203 + 8))(v184, v202);
    goto LABEL_99;
  }

  v160 = v202;
  v159 = v203;
  v161 = v186;
  v162 = v199;
  (*(v203 + 32))(v199, v186 + v156, v202);
  sub_23A6A65A0(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v163 = v184;
  v164 = sub_23A6DF604();
  v165 = *(v159 + 8);
  v165(v162, v160);
  v165(v163, v160);
  sub_23A646DB0(v161, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v164 & 1) == 0)
  {
    return 0;
  }

LABEL_101:
  v166 = v204[22];
  v167 = *(v201 + 48);
  v168 = v185;
  sub_23A646D48(v205 + v166, v185, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(v206 + v166, v168 + v167, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v182(v168, 1, v202) == 1)
  {
    if (v182(v185 + v167, 1, v202) == 1)
    {
      sub_23A646DB0(v185, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_108;
    }

LABEL_106:
    sub_23A646DB0(v185, &qword_27DF9CDF0, &qword_23A6E3DA0);
    return 0;
  }

  v169 = v185;
  sub_23A646D48(v185, v183, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v182(v169 + v167, 1, v202) == 1)
  {
    (*(v203 + 8))(v183, v202);
    goto LABEL_106;
  }

  v170 = v202;
  v171 = v203;
  v172 = v185;
  v173 = v185 + v167;
  v174 = v199;
  (*(v203 + 32))(v199, v173, v202);
  sub_23A6A65A0(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v175 = v183;
  v176 = sub_23A6DF604();
  v177 = *(v171 + 8);
  v177(v174, v170);
  v177(v175, v170);
  sub_23A646DB0(v172, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v176 & 1) == 0)
  {
    return 0;
  }

LABEL_108:
  v178 = v204[23];
  v179 = *(v205 + v178);
  v180 = *(v206 + v178);
  if (v179 != 2)
  {
    LOBYTE(v219) = v179;
    if (v180 != 2)
    {
      LOBYTE(v214) = v180 & 1;
      sub_23A6A6360();
      if (sub_23A6DF604())
      {
        return 1;
      }
    }

    return 0;
  }

  return v180 == 2;
}

unint64_t sub_23A6A5A20()
{
  result = qword_27DF9CD08;
  if (!qword_27DF9CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD08);
  }

  return result;
}

unint64_t sub_23A6A5AD0()
{
  result = qword_27DF9CD10;
  if (!qword_27DF9CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD10);
  }

  return result;
}

unint64_t sub_23A6A5B78()
{
  result = qword_27DF9CD28;
  if (!qword_27DF9CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD28);
  }

  return result;
}

unint64_t sub_23A6A5BCC()
{
  result = qword_27DF9CD30;
  if (!qword_27DF9CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD30);
  }

  return result;
}

unint64_t sub_23A6A5C20()
{
  result = qword_27DF9CD38;
  if (!qword_27DF9CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD38);
  }

  return result;
}

uint64_t sub_23A6A5C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6A5CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A6A5D3C()
{
  result = qword_27DF9CD50;
  if (!qword_27DF9CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CD50);
  }

  return result;
}

void sub_23A6A5E00(uint64_t a1)
{
  sub_23A6A6248(319, &qword_27DF9CD60, MEMORY[0x277CC8E50], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23A6A62AC(319, &qword_27DF9CD68, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_23A6A6194();
      if (v3 <= 0x3F)
      {
        sub_23A6A62AC(319, &qword_27DF9CD78, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_23A6A6248(319, &qword_27DF9CD80, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23A6A62AC(319, &qword_27DF9CD88, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.Sex);
            if (v6 <= 0x3F)
            {
              sub_23A6A62AC(319, &qword_27DF9CD90, &type metadata for PostalAddressInternal);
              if (v7 <= 0x3F)
              {
                sub_23A6A61F4(319, &qword_27DF9CD98, &qword_27DF9CCF0, &qword_23A6E37C0);
                if (v8 <= 0x3F)
                {
                  sub_23A6A61F4(319, &qword_27DF9CDA0, &qword_27DF9CCE8, &qword_23A6E37B8);
                  if (v9 <= 0x3F)
                  {
                    sub_23A6A62AC(319, &qword_27DF9CDA8, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.EyeColor);
                    if (v10 <= 0x3F)
                    {
                      sub_23A6A62AC(319, &qword_27DF9CDB0, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.HairColor);
                      if (v11 <= 0x3F)
                      {
                        sub_23A6A62AC(319, &qword_27DF9CDB8, MEMORY[0x277D839B0]);
                        if (v12 <= 0x3F)
                        {
                          sub_23A6A62AC(319, &qword_27DF9CDC0, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority);
                          if (v13 <= 0x3F)
                          {
                            sub_23A6A6248(319, &qword_27DF9CDC8, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege, MEMORY[0x277D83940]);
                            if (v14 <= 0x3F)
                            {
                              sub_23A6A6248(319, &qword_27DF9CDD0, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege, MEMORY[0x277D83940]);
                              if (v15 <= 0x3F)
                              {
                                sub_23A6A62AC(319, &qword_27DF9C7C8, MEMORY[0x277D837D0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_23A6A62AC(319, &qword_27DF9CDD8, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.DHSComplianceStatus);
                                  if (v17 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23A6A6194()
{
  if (!qword_27DF9CD70)
  {
    v0 = sub_23A6DF5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CD70);
    }
  }
}

void sub_23A6A61F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23A6DF954();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23A6A6248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23A6A62AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A6A62F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A691B9C(result, a2);
  }

  return result;
}

void sub_23A6A630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_23A6A6360()
{
  result = qword_27DF9CE08;
  if (!qword_27DF9CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE08);
  }

  return result;
}

unint64_t sub_23A6A63B4()
{
  result = qword_27DF9CE18;
  if (!qword_27DF9CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE18);
  }

  return result;
}

unint64_t sub_23A6A6408()
{
  result = qword_27DF9CE20;
  if (!qword_27DF9CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE20);
  }

  return result;
}

unint64_t sub_23A6A645C()
{
  result = qword_27DF9CE28;
  if (!qword_27DF9CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE28);
  }

  return result;
}

uint64_t sub_23A6A64B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23A6A64F8()
{
  result = qword_27DF9CE40;
  if (!qword_27DF9CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE40);
  }

  return result;
}

unint64_t sub_23A6A654C()
{
  result = qword_27DF9CE48;
  if (!qword_27DF9CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE48);
  }

  return result;
}

uint64_t sub_23A6A65A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.vehicleRestrictions.getter()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.vehicleEndorsements.getter()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
}

uint64_t sub_23A6A66A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_23A6DFC04() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_23A6DFC04() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.hash(into:)(uint64_t a1, __n128 a2)
{
  sub_23A6A7238(a1, a2);
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  sub_23A6A716C(a1, *(v2 + *(v4 + 20)));
  return sub_23A6A716C(a1, *(v2 + *(v4 + 24)));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6A7238(v4, v1);
  v2 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  sub_23A6A716C(v4, *(v0 + *(v2 + 20)));
  sub_23A6A716C(v4, *(v0 + *(v2 + 24)));
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23A69EED0(a1, a4, &qword_27DF9CE68, &unk_23A6E3910);
  result = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_23A6A68B0(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6A7238(v5, v3);
  sub_23A6A716C(v5, *(v1 + *(a1 + 20)));
  sub_23A6A716C(v5, *(v1 + *(a1 + 24)));
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6914(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_23A6A7238(a1, a3);
  sub_23A6A716C(a1, *(v3 + *(a2 + 20)));
  return sub_23A6A716C(a1, *(v3 + *(a2 + 24)));
}

uint64_t sub_23A6A6964(uint64_t a1, uint64_t a2)
{
  sub_23A6DFCE4();
  sub_23A6A7238(v6, v4);
  sub_23A6A716C(v6, *(v2 + *(a2 + 20)));
  sub_23A6A716C(v6, *(v2 + *(a2 + 24)));
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_23A6DE0A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_23A6DF684();
  sub_23A6DF684();
  v14 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_23A646D48(v3 + *(v14 + 24), v13, &qword_27DF9CCC8, &qword_23A6E3C40);
  v15 = *(v5 + 48);
  if (v15(v13, 1, v4) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_23A6DFD04();
    sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v5 + 8))(v7, v4);
  }

  sub_23A646D48(v3 + *(v14 + 28), v10, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v15(v10, 1, v4) == 1)
  {
    return sub_23A6DFD04();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_23A6DFD04();
  sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_23A6DF5E4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hashValue.getter()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)(v2, v0);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_23A69EED0(a5, a7 + *(v10 + 24), &qword_27DF9CCC8, &qword_23A6E3C40);
  return sub_23A69EED0(a6, a7 + *(v10 + 28), &qword_27DF9CCC8, &qword_23A6E3C40);
}

uint64_t sub_23A6A6EA0()
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)(v2, v0);
  return sub_23A6DFD14();
}

uint64_t sub_23A6A6EE4(uint64_t a1)
{
  sub_23A6DFCE4();
  MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)(v3, v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23A6A6FA4(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_23A6DFD04();
    sub_23A6DF684();
  }

  else
  {
    sub_23A6DFD04();
  }

  return sub_23A6DF684();
}

uint64_t sub_23A6A7030()
{
  v1 = *(v0 + 8);
  sub_23A6DFCE4();
  sub_23A6DFD04();
  if (v1)
  {
    sub_23A6DF684();
  }

  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A70C8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_23A6DFCE4();
  sub_23A6DFD04();
  if (v2)
  {
    sub_23A6DF684();
  }

  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A716C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE8A1E0](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {
      if (*(v5 - 16))
      {
        sub_23A6DFD04();

        sub_23A6DF684();
      }

      else
      {
        sub_23A6DFD04();
      }

      sub_23A6DF684();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_23A6A7238(uint64_t a1, __n128 a2)
{
  v3 = sub_23A6DE0A4();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  sub_23A646D48(v2, &v23 - v15, &qword_27DF9CE68, &unk_23A6E3910);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    return sub_23A6DFD04();
  }

  sub_23A6A8484(v16, v13);
  sub_23A6DFD04();
  sub_23A6DF684();
  sub_23A6DF684();
  sub_23A646D48(&v13[*(v10 + 24)], v9, &qword_27DF9CCC8, &qword_23A6E3C40);
  v18 = v24;
  v19 = *(v24 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v20 = v26;
    (*(v18 + 32))(v26, v9, v3);
    sub_23A6DFD04();
    sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v18 + 8))(v20, v3);
  }

  v21 = v25;
  sub_23A646D48(&v13[*(v10 + 28)], v25, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v19(v21, 1, v3) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v22 = v26;
    (*(v18 + 32))(v26, v21, v3);
    sub_23A6DFD04();
    sub_23A6A8034(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v18 + 8))(v22, v3);
  }

  return sub_23A6A84E8(v13);
}

uint64_t sub_23A6A7690(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_23A6DFC04() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_23A6DFC04();
}

BOOL _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAK_AKtFZ_0(void *a1, void *a2, __n128 a3)
{
  v5 = sub_23A6DE0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v37[-v19];
  if (*a1 != *a2 && (sub_23A6DFC04() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23A6DFC04() & 1) == 0)
  {
    return 0;
  }

  v39 = v11;
  v41 = v17;
  v42 = v8;
  v40 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v21 = *(v40 + 24);
  v22 = *(v15 + 48);
  v43 = v6;
  sub_23A646D48(a1 + v21, v20, &qword_27DF9CCC8, &qword_23A6E3C40);
  v23 = v43;
  sub_23A646D48(a2 + v21, &v20[v22], &qword_27DF9CCC8, &qword_23A6E3C40);
  v24 = *(v23 + 48);
  if (v24(v20, 1, v5) == 1)
  {
    if (v24(&v20[v22], 1, v5) == 1)
    {
      sub_23A646DB0(v20, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_13;
    }

LABEL_11:
    v25 = v20;
LABEL_19:
    sub_23A646DB0(v25, &qword_27DF9CDF0, &qword_23A6E3DA0);
    return 0;
  }

  sub_23A646D48(v20, v14, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v24(&v20[v22], 1, v5) == 1)
  {
    (*(v23 + 8))(v14, v5);
    goto LABEL_11;
  }

  (*(v23 + 32))(v42, &v20[v22], v5);
  sub_23A6A8034(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v38 = sub_23A6DF604();
  v26 = *(v23 + 8);
  v26(v42, v5);
  v26(v14, v5);
  sub_23A646DB0(v20, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v27 = *(v40 + 28);
  v28 = *(v15 + 48);
  v29 = a1 + v27;
  v30 = v41;
  sub_23A646D48(v29, v41, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(a2 + v27, v30 + v28, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v24(v30, 1, v5) != 1)
  {
    v31 = v39;
    sub_23A646D48(v30, v39, &qword_27DF9CCC8, &qword_23A6E3C40);
    if (v24((v30 + v28), 1, v5) == 1)
    {
      (*(v43 + 8))(v31, v5);
      goto LABEL_18;
    }

    v34 = v42;
    v33 = v43;
    (*(v43 + 32))(v42, v30 + v28, v5);
    sub_23A6A8034(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
    v35 = sub_23A6DF604();
    v36 = *(v33 + 8);
    v36(v34, v5);
    v36(v31, v5);
    sub_23A646DB0(v30, &qword_27DF9CCC8, &qword_23A6E3C40);
    return (v35 & 1) != 0;
  }

  if (v24((v30 + v28), 1, v5) != 1)
  {
LABEL_18:
    v25 = v30;
    goto LABEL_19;
  }

  sub_23A646DB0(v30, &qword_27DF9CCC8, &qword_23A6E3C40);
  return 1;
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV21AAMVADrivingPrivilegeV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CEA0, &unk_23A6E3BA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_23A646D48(a1, &v22 - v12, &qword_27DF9CE68, &unk_23A6E3910);
  sub_23A646D48(a2, &v13[v15], &qword_27DF9CE68, &unk_23A6E3910);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23A646DB0(v13, &qword_27DF9CE68, &unk_23A6E3910);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23A646D48(v13, v10, &qword_27DF9CE68, &unk_23A6E3910);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23A6A84E8(v10);
LABEL_6:
    sub_23A646DB0(v13, &qword_27DF9CEA0, &unk_23A6E3BA0);
LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  sub_23A6A8484(&v13[v15], v7);
  v18 = _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAK_AKtFZ_0(v10, v7, v17);
  sub_23A6A84E8(v7);
  sub_23A6A84E8(v10);
  sub_23A646DB0(v13, &qword_27DF9CE68, &unk_23A6E3910);
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_8:
  v19 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  if ((sub_23A6A66A4(*(a1 + *(v19 + 20)), *(a2 + *(v19 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = sub_23A6A66A4(*(a1 + *(v19 + 24)), *(a2 + *(v19 + 24)));
  return v20 & 1;
}

uint64_t sub_23A6A8034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23A6A80C8()
{
  result = qword_27DF9CE78;
  if (!qword_27DF9CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE78);
  }

  return result;
}

unint64_t sub_23A6A8120()
{
  result = qword_27DF9CE80;
  if (!qword_27DF9CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CE80);
  }

  return result;
}

void sub_23A6A819C(uint64_t a1)
{
  sub_23A6A8380(319, &qword_27DF9CE88, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass);
  if (v1 <= 0x3F)
  {
    sub_23A6A8274(319, &qword_27DF9CE90, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleRestriction);
    if (v2 <= 0x3F)
    {
      sub_23A6A8274(319, &qword_27DF9CE98, &type metadata for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleEndorsement);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A6A8274(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23A6DF744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23A6A82E8(uint64_t a1)
{
  sub_23A6A8380(319, &qword_27DF9CD80, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A6A8380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A6A83E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23A6A8434(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23A6A8484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6A84E8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DHSComplianceStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.vehicleCategoryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.issueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0) + 20);

  return sub_23A6A86D4(v3, a1);
}

uint64_t type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(uint64_t a1)
{
  result = qword_27DFA0FC0;
  if (!qword_27DFA0FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6A86D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0) + 24);

  return sub_23A6A86D4(v3, a1);
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.codes.getter()
{
  type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
}

uint64_t sub_23A6A87C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v13 = *(v3 - 1);
      v9 = i[1];
      v8 = i[2];
      v11 = i[3];
      v10 = i[4];
      if ((*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i) && (sub_23A6DFC04() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8 || (v5 != v9 || v6 != v8) && (sub_23A6DFC04() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10 || (v13 != v11 || v7 != v10) && (sub_23A6DFC04() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_23A6DE0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_23A6DF684();
  v15 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  sub_23A6A86D4(v3 + v15[5], v14);
  v16 = *(v6 + 48);
  if (v16(v14, 1, v5) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v6 + 32))(v8, v14, v5);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v6 + 8))(v8, v5);
  }

  sub_23A6A86D4(v3 + v15[6], v11);
  if (v16(v11, 1, v5) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v6 + 8))(v8, v5);
  }

  return sub_23A6A9934(a1, *(v3 + v15[7]));
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.hashValue.getter(__n128 a1)
{
  v2 = v1;
  v3 = sub_23A6DE0A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-1] - v11;
  sub_23A6DFCE4();
  sub_23A6DF684();
  v13 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  sub_23A6A86D4(v2 + v13[5], v12);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v4 + 8))(v6, v3);
  }

  sub_23A6A86D4(v2 + v13[6], v9);
  if (v14(v9, 1, v3) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v4 + 8))(v6, v3);
  }

  sub_23A6A9934(v17, *(v2 + v13[7]));
  return sub_23A6DFD14();
}

uint64_t sub_23A6A8F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  sub_23A6AA0A8(a3, a6 + v10[5]);
  result = sub_23A6AA0A8(a4, a6 + v10[6]);
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t sub_23A6A8F80(uint64_t a1, int *a2, __n128 a3)
{
  v5 = v3;
  v7 = sub_23A6DE0A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  sub_23A6DF684();
  sub_23A6A86D4(v5 + a2[5], v16);
  v17 = *(v8 + 48);
  if (v17(v16, 1, v7) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v8 + 32))(v10, v16, v7);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v8 + 8))(v10, v7);
  }

  sub_23A6A86D4(v5 + a2[6], v13);
  if (v17(v13, 1, v7) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v8 + 8))(v10, v7);
  }

  return sub_23A6A9934(a1, *(v5 + a2[7]));
}

uint64_t sub_23A6A9274(uint64_t a1, int *a2, __n128 a3)
{
  v5 = sub_23A6DE0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-1] - v13;
  sub_23A6DFCE4();
  sub_23A6DF684();
  sub_23A6A86D4(v3 + a2[5], v14);
  v15 = *(v6 + 48);
  if (v15(v14, 1, v5) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v6 + 32))(v8, v14, v5);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v6 + 8))(v8, v5);
  }

  sub_23A6A86D4(v3 + a2[6], v11);
  if (v15(v11, 1, v5) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_23A6DFD04();
    sub_23A6AA3D4(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v6 + 8))(v8, v5);
  }

  sub_23A6A9934(v18, *(v3 + a2[7]));
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.sign.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_23A6DF684();
  if (!v2)
  {
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    return sub_23A6DFD04();
  }

LABEL_3:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege.Code.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_23A6DFCE4();
  sub_23A6DF684();
  if (!v1)
  {
    sub_23A6DFD04();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A979C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_23A6A97B0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_23A6DF684();
  if (!v2)
  {
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    return sub_23A6DFD04();
  }

LABEL_3:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t sub_23A6A986C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_23A6DFCE4();
  sub_23A6DF684();
  if (!v2)
  {
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6A9934(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE8A1E0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;

      sub_23A6DF684();
      if (v6)
      {
        sub_23A6DFD04();
        sub_23A6DF684();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_23A6DFD04();
        if (!v7)
        {
LABEL_9:
          sub_23A6DFD04();
          goto LABEL_4;
        }
      }

      sub_23A6DFD04();
      sub_23A6DF684();
LABEL_4:

      v5 += 6;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV16DrivingPrivilegeV4CodeV2eeoiySbAK_AKtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23A6DFC04() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_23A6DFC04() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV16DrivingPrivilegeV2eeoiySbAI_AItFZ_0(void *a1, void *a2, __n128 a3)
{
  v5 = sub_23A6DE0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v45[-v18];
  v20 = *a1;
  v21 = a1[1];
  v52 = a1;
  if ((v20 != *a2 || v21 != a2[1]) && (sub_23A6DFC04() & 1) == 0)
  {
    goto LABEL_18;
  }

  v49 = v8;
  v22 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  v23 = v22[5];
  v24 = *(v14 + 48);
  sub_23A6A86D4(v52 + v23, v19);
  sub_23A6A86D4(a2 + v23, &v19[v24]);
  v51 = v6;
  v25 = *(v6 + 48);
  if (v25(v19, 1, v5) != 1)
  {
    sub_23A6A86D4(v19, v13);
    if (v25(&v19[v24], 1, v5) != 1)
    {
      v47 = v22;
      v48 = a2;
      v27 = v51;
      v28 = v49;
      (*(v51 + 32))(v49, &v19[v24], v5);
      sub_23A6AA3D4(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v46 = sub_23A6DF604();
      v29 = *(v27 + 8);
      v30 = v28;
      v22 = v47;
      v29(v30, v5);
      v29(v13, v5);
      sub_23A646DB0(v19, &qword_27DF9CCC8, &qword_23A6E3C40);
      if ((v46 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    (*(v51 + 8))(v13, v5);
LABEL_9:
    v26 = v19;
LABEL_17:
    sub_23A646DB0(v26, &qword_27DF9CDF0, &qword_23A6E3DA0);
    goto LABEL_18;
  }

  if (v25(&v19[v24], 1, v5) != 1)
  {
    goto LABEL_9;
  }

  v48 = a2;
  sub_23A646DB0(v19, &qword_27DF9CCC8, &qword_23A6E3C40);
LABEL_11:
  v31 = v22[6];
  v32 = *(v14 + 48);
  sub_23A6A86D4(v52 + v31, v16);
  v33 = v48 + v31;
  v34 = v48;
  sub_23A6A86D4(v33, &v16[v32]);
  if (v25(v16, 1, v5) == 1)
  {
    if (v25(&v16[v32], 1, v5) == 1)
    {
      sub_23A646DB0(v16, &qword_27DF9CCC8, &qword_23A6E3C40);
LABEL_21:
      v36 = sub_23A6A87C0(*(v52 + v22[7]), *(v34 + v22[7]));
      return v36 & 1;
    }

    goto LABEL_16;
  }

  v35 = v50;
  sub_23A6A86D4(v16, v50);
  if (v25(&v16[v32], 1, v5) == 1)
  {
    (*(v51 + 8))(v35, v5);
LABEL_16:
    v26 = v16;
    goto LABEL_17;
  }

  v38 = v51;
  v39 = &v16[v32];
  v40 = v22;
  v41 = v49;
  (*(v51 + 32))(v49, v39, v5);
  sub_23A6AA3D4(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v42 = sub_23A6DF604();
  v43 = *(v38 + 8);
  v44 = v41;
  v22 = v40;
  v43(v44, v5);
  v43(v35, v5);
  sub_23A646DB0(v16, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v42)
  {
    goto LABEL_21;
  }

LABEL_18:
  v36 = 0;
  return v36 & 1;
}