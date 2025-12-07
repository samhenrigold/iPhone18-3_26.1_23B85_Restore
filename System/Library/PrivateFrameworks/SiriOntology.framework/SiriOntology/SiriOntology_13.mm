unint64_t sub_1C0640F80@<X0>(unint64_t *a1@<X8>)
{
  result = UsoEntity_common_ListPosition.DefinedValues.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriOntology::UsoEntity_applePhoneCall_PhoneCallAttribute::DefinedValues_optional __swiftcall UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.rawValue.getter()
{
  result = 0xD00000000000003BLL;
  switch(*v0)
  {
    case 1:
    case 3:
    case 0xD:
      result = 0xD000000000000038;
      break;
    case 2:
    case 9:
    case 0xB:
      result = 0xD00000000000003DLL;
      break;
    case 4:
      result = 0xD000000000000039;
      break;
    case 5:
    case 0xC:
      result = 0xD00000000000003BLL;
      break;
    case 6:
    case 7:
    case 0xA:
      result = 0xD00000000000003CLL;
      break;
    case 8:
      result = 0xD00000000000003ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C0641318@<X0>(unint64_t *a1@<X8>)
{
  result = UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t UsoEntity_common_SortOrder.DefinedValues.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1C06419F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "common_RadioBand_DAB";
  }

  else
  {
    v4 = "common_SortOrder_LeastFirst";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v6 = "common_SortOrder_LeastFirst";
  }

  else
  {
    v6 = "common_RadioBand_DAB";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C095DF3C();
  }

  return v8 & 1;
}

uint64_t sub_1C0641AA0()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0641B1C(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C0641B84(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

void sub_1C0641C08(unint64_t *a1@<X8>)
{
  v2 = "common_SortOrder_LeastFirst";
  v3 = 0xD00000000000001ALL;
  if (!*v1)
  {
    v3 = 0xD00000000000001BLL;
    v2 = "common_RadioBand_DAB";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

SiriOntology::UsoEntity_common_DayOfWeek::DefinedValues_optional __swiftcall UsoEntity_common_DayOfWeek.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_common_DayOfWeek.DefinedValues.rawValue.getter()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C0641FA0(uint64_t a1)
{
  sub_1C095D7BC();
}

void sub_1C0642098(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "common_DayOfWeek_Monday";
  if (v2 == 5)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v2 != 5)
  {
    v3 = "common_DayOfWeek_Tuesday";
  }

  v5 = "common_DayOfWeek_Saturday";
  if (v2 != 3)
  {
    v5 = "common_DayOfWeek_Friday";
  }

  if (*v1 <= 4u)
  {
    v4 = 0xD000000000000017;
    v3 = v5;
  }

  v6 = "common_DayOfWeek_Thursday";
  v7 = 0xD00000000000001ALL;
  if (v2 != 1)
  {
    v7 = 0xD000000000000019;
    v6 = "common_DayOfWeek_Wednesday";
  }

  if (*v1)
  {
    v8 = v6;
  }

  else
  {
    v7 = 0xD000000000000019;
    v8 = "common_TimeUnit_Week";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

SiriOntology::UsoEntity_common_AttachmentType::DefinedValues_optional __swiftcall UsoEntity_common_AttachmentType.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DF4C();

  v5 = 0;
  v6 = 25;
  switch(v3)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v5 = 1;
      goto LABEL_39;
    case 2:
      v5 = 2;
      goto LABEL_39;
    case 3:
      v5 = 3;
      goto LABEL_39;
    case 4:
      v5 = 4;
      goto LABEL_39;
    case 5:
      v5 = 5;
      goto LABEL_39;
    case 6:
      v5 = 6;
      goto LABEL_39;
    case 7:
      v5 = 7;
      goto LABEL_39;
    case 8:
      v5 = 8;
      goto LABEL_39;
    case 9:
      v5 = 9;
      goto LABEL_39;
    case 10:
      v5 = 10;
      goto LABEL_39;
    case 11:
      v5 = 11;
      goto LABEL_39;
    case 12:
      v5 = 12;
      goto LABEL_39;
    case 13:
      v5 = 13;
      goto LABEL_39;
    case 14:
      v5 = 14;
      goto LABEL_39;
    case 15:
      v5 = 15;
      goto LABEL_39;
    case 16:
      v5 = 16;
      goto LABEL_39;
    case 17:
      v5 = 17;
      goto LABEL_39;
    case 18:
      v5 = 18;
      goto LABEL_39;
    case 19:
      v5 = 19;
      goto LABEL_39;
    case 20:
      v5 = 20;
      goto LABEL_39;
    case 21:
      v5 = 21;
      goto LABEL_39;
    case 22:
      v5 = 22;
      goto LABEL_39;
    case 23:
      v5 = 23;
      goto LABEL_39;
    case 24:
      v5 = 24;
LABEL_39:
      v6 = v5;
      break;
    case 25:
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    default:
      v6 = 43;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t UsoEntity_common_AttachmentType.DefinedValues.rawValue.getter()
{
  result = 0xD00000000000001DLL;
  switch(*v0)
  {
    case 1:
    case 8:
    case 0xF:
    case 0x23:
    case 0x28:
    case 0x29:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 5:
    case 0x27:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 0x18:
    case 0x21:
      result = 0xD000000000000019;
      break;
    case 4:
    case 0x12:
    case 0x19:
    case 0x1C:
    case 0x20:
    case 0x24:
    case 0x25:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 0x13:
    case 0x1B:
    case 0x1E:
    case 0x1F:
    case 0x26:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 0x10:
    case 0x1D:
    case 0x2A:
      result = 0xD000000000000022;
      break;
    case 9:
    case 0xC:
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 0xA:
      result = 0xD000000000000021;
      break;
    case 0xB:
    case 0xD:
    case 0x11:
    case 0x14:
    case 0x1A:
    case 0x22:
      result = 0xD00000000000001ELL;
      break;
    case 0x15:
      result = 0xD000000000000026;
      break;
    case 0x16:
      result = 0xD000000000000023;
      break;
    case 0x17:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C0642724@<X0>(unint64_t *a1@<X8>)
{
  result = UsoEntity_common_AttachmentType.DefinedValues.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UsoEntity_common_Decimal.DefinedValues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C06428E4()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0642958(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

SiriOntology::UsoEntity_common_Decimal::Operators_optional __swiftcall UsoEntity_common_Decimal.Operators.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t _s12SiriOntology23UsoEntity_common_NumberC9OperatorsO8rawValueSSvg_0()
{
  result = 0x724665766F6D6572;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6C61757145746F6ELL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6C61566F54646461;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x5472657461657267;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0x6E6168547373656CLL;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t UsoEntity_common_Person.DefinedValues.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C0642E98()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0642F0C(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0642F6C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C0643390@<X0>(char *a4@<X8>)
{
  v5 = sub_1C095DD6C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

unint64_t UsoEntity_common_Similarity.DefinedValues.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1C064342C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "common_Quantifier_More";
  }

  else
  {
    v4 = "common_Similarity_SimilarTo";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v7 = "common_Similarity_SimilarTo";
  }

  else
  {
    v7 = "common_Quantifier_More";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C095DF3C();
  }

  return v9 & 1;
}

uint64_t sub_1C06434D8()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0643558(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C06435C4(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C064364C@<X0>(char *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1C06436A8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v1)
  {
    v3 = "common_Similarity_SimilarTo";
  }

  else
  {
    v3 = "common_Quantifier_More";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

SiriOntology::UsoEntity_common_TemperatureUnit::DefinedValues_optional __swiftcall UsoEntity_common_TemperatureUnit.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_common_TemperatureUnit.DefinedValues.rawValue.getter()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1C0643DB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "common_TemperatureUnit_Degrees";
  v4 = 0xD000000000000025;
  if (v2 == 1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000028;
  }

  if (v2 == 1)
  {
    v6 = "common_TemperatureUnit_Degrees";
  }

  else
  {
    v6 = "reUnit_DegreesCelsius";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ELL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "common_SpatialPosition_Bottom";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = "reUnit_DegreesCelsius";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "common_SpatialPosition_Bottom";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C095DF3C();
  }

  return v11 & 1;
}

uint64_t sub_1C0643E90()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0643F2C(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C0643FB4(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

void sub_1C0644058(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = "common_TemperatureUnit_Degrees";
  v4 = 0xD000000000000025;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = "reUnit_DegreesCelsius";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "common_SpatialPosition_Bottom";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

SiriOntology::UsoEntity_commonStock_StockChangeState::DefinedValues_optional __swiftcall UsoEntity_commonStock_StockChangeState.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_commonStock_StockChangeState.DefinedValues.rawValue.getter()
{
  v1 = 0xD000000000000023;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000021;
  }

  v2 = 0xD000000000000027;
  if (!*v0)
  {
    v2 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C06441F4()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C06442AC(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C0644350(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

void sub_1C0644410(unint64_t *a1@<X8>)
{
  v2 = "kChangeState_GoUpOrDown";
  v3 = 0xD000000000000023;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v2 = "kChangeState_GoUp";
  }

  v4 = 0xD000000000000027;
  if (*v1)
  {
    v5 = "kChangeState_Unchanged";
  }

  else
  {
    v4 = 0xD000000000000026;
    v5 = "common_UserEntity_Everywhere";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

SiriOntology::UsoEntity_common_MediaItemVersion::DefinedValues_optional __swiftcall UsoEntity_common_MediaItemVersion.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_common_MediaItemVersion.DefinedValues.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
    case 0xB:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
    case 8:
    case 9:
      result = 0xD000000000000020;
      break;
    case 5:
    case 0xA:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 0xD:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C0644958@<X0>(unint64_t *a1@<X8>)
{
  result = UsoEntity_common_MediaItemVersion.DefinedValues.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriOntology::UsoEntity_common_CollaborationMode::DefinedValues_optional __swiftcall UsoEntity_common_CollaborationMode.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_common_CollaborationMode.DefinedValues.rawValue.getter()
{
  v1 = 0xD000000000000021;
  v2 = *v0;
  v3 = 0xD000000000000024;
  if (v2 == 4)
  {
    v3 = 0xD000000000000022;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000021;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000020;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C0644E1C(uint64_t a1)
{
  sub_1C095D7BC();
}

void sub_1C0644F00(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000021;
  v3 = *v1;
  v4 = "common_CalendarEventType_Event";
  v5 = "tionMode_Airdrop";
  v6 = "tionMode_SendCopy";
  v7 = 0xD000000000000024;
  if (v3 == 4)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v6 = "tionMode_SharePlay";
  }

  if (v3 == 3)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 3)
  {
    v5 = v6;
  }

  v9 = "tionMode_Namedrop";
  v10 = 0xD000000000000020;
  if (v3 == 1)
  {
    v10 = 0xD000000000000021;
  }

  else
  {
    v9 = "tionMode_Together";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v8;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

SiriOntology::UsoEntity_common_Time::DefinedValues_optional __swiftcall UsoEntity_common_Time.DefinedValues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UsoEntity_common_Time.DefinedValues.rawValue.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000013;
  if (v2 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C0645160()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0645234(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C06452F4(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

unint64_t sub_1C06453D0@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "common_Time_Noon";
  v5 = 0xD000000000000014;
  v6 = "common_Time_Midnight";
  v7 = 0xD000000000000013;
  result = 0xD000000000000017;
  if (v3 != 3)
  {
    v7 = 0xD000000000000017;
    v6 = "common_Time_Sunrise";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v9 = "common_Time_Sunset";
  }

  else
  {
    v2 = 0xD000000000000012;
    v9 = "operator_notEquals";
  }

  if (*v1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

uint64_t *sub_1C064571C(void *a1)
{
  swift_allocObject();
  sub_1C0526080(a1, v5);
  sub_1C0526080(v5, v4);
  v2 = CodeGenBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2;
}

uint64_t *sub_1C06457A8(void *a1)
{
  sub_1C0526080(a1, v5);
  sub_1C0526080(v5, v4);
  v2 = CodeGenBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2;
}

uint64_t sub_1C064581C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19080, &qword_1C0982080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0978EB0;
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000001C09DE2A0;
  v1 = type metadata accessor for UsoEntity_common_SpatialPosition();
  *(v0 + 48) = v1;
  *(v0 + 56) = 0xD00000000000001CLL;
  *(v0 + 64) = 0x80000001C09B6230;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0xD00000000000001BLL;
  *(v0 + 88) = 0x80000001C09B6250;
  *(v0 + 96) = v1;
  *(v0 + 104) = 0xD000000000000022;
  *(v0 + 112) = 0x80000001C09B6270;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0xD00000000000001ALL;
  *(v0 + 136) = 0x80000001C09B62A0;
  *(v0 + 144) = v1;
  *(v0 + 152) = 0xD00000000000001DLL;
  *(v0 + 160) = 0x80000001C09B62C0;
  *(v0 + 168) = v1;
  *(v0 + 176) = 0xD000000000000021;
  *(v0 + 184) = 0x80000001C09B62E0;
  *(v0 + 192) = v1;
  *(v0 + 200) = 0xD00000000000001ELL;
  *(v0 + 208) = 0x80000001C09B6310;
  *(v0 + 216) = v1;
  *(v0 + 224) = 0xD00000000000001FLL;
  *(v0 + 232) = 0x80000001C09B6330;
  *(v0 + 240) = v1;
  *(v0 + 248) = 0xD00000000000001DLL;
  *(v0 + 256) = 0x80000001C09B6350;
  *(v0 + 264) = v1;
  *(v0 + 272) = 0xD000000000000012;
  *(v0 + 280) = 0x80000001C09DFBE0;
  v2 = type metadata accessor for UsoEntity_common_SummaryMode();
  *(v0 + 288) = v2;
  *(v0 + 296) = 0xD00000000000001BLL;
  *(v0 + 304) = 0x80000001C09B3800;
  *(v0 + 312) = v2;
  *(v0 + 320) = 0xD00000000000001BLL;
  *(v0 + 328) = 0x80000001C09B3820;
  *(v0 + 336) = v2;
  *(v0 + 344) = 0xD000000000000017;
  *(v0 + 352) = 0x80000001C09DF5C0;
  *(v0 + 360) = type metadata accessor for UsoEntity_common_WorkoutEquipment();
  *(v0 + 368) = 0xD000000000000013;
  *(v0 + 376) = 0x80000001C09CD9C0;
  *(v0 + 384) = type metadata accessor for UsoEntity_common_EventTrigger();
  *(v0 + 392) = 0xD00000000000001ALL;
  *(v0 + 400) = 0x80000001C09CD9E0;
  *(v0 + 408) = type metadata accessor for UsoEntity_commonTimer_TimerAttribute();
  *(v0 + 416) = 0xD000000000000013;
  *(v0 + 424) = 0x80000001C09CDA00;
  v3 = type metadata accessor for UsoEntity_common_VoiceTrigger();
  *(v0 + 432) = v3;
  *(v0 + 440) = 0xD000000000000025;
  *(v0 + 448) = 0x80000001C09B4080;
  *(v0 + 456) = v3;
  *(v0 + 464) = 0xD00000000000001CLL;
  *(v0 + 472) = 0x80000001C09B40B0;
  *(v0 + 480) = v3;
  *(v0 + 488) = 0xD00000000000001BLL;
  *(v0 + 496) = 0x80000001C09B40D0;
  *(v0 + 504) = v3;
  *(v0 + 512) = 0xD000000000000025;
  *(v0 + 520) = 0x80000001C09B40F0;
  *(v0 + 528) = v3;
  *(v0 + 536) = 0xD000000000000027;
  *(v0 + 544) = 0x80000001C09B4120;
  *(v0 + 552) = v3;
  *(v0 + 560) = 0xD000000000000013;
  *(v0 + 568) = 0x80000001C09DFC60;
  v4 = type metadata accessor for UsoEntity_common_ReactionType();
  *(v0 + 576) = v4;
  *(v0 + 584) = 0xD00000000000001BLL;
  *(v0 + 592) = 0x80000001C09B3F60;
  *(v0 + 600) = v4;
  *(v0 + 608) = 0xD000000000000019;
  *(v0 + 616) = 0x80000001C09B3F80;
  *(v0 + 624) = v4;
  *(v0 + 632) = 0xD000000000000018;
  *(v0 + 640) = 0x80000001C09B3FA0;
  *(v0 + 648) = v4;
  *(v0 + 656) = 0xD00000000000001FLL;
  *(v0 + 664) = 0x80000001C09B3FC0;
  *(v0 + 672) = v4;
  *(v0 + 680) = 0xD000000000000018;
  *(v0 + 688) = 0x80000001C09B3FE0;
  *(v0 + 696) = v4;
  *(v0 + 704) = 0xD00000000000001CLL;
  *(v0 + 712) = 0x80000001C09B4000;
  *(v0 + 720) = v4;
  *(v0 + 728) = 0xD000000000000013;
  *(v0 + 736) = 0x80000001C09DFC40;
  v5 = type metadata accessor for UsoEntity_common_ReminderType();
  *(v0 + 744) = v5;
  *(v0 + 752) = 0xD00000000000001BLL;
  *(v0 + 760) = 0x80000001C09B4020;
  *(v0 + 768) = v5;
  *(v0 + 776) = 0xD000000000000018;
  *(v0 + 784) = 0x80000001C09DDF90;
  *(v0 + 792) = type metadata accessor for UsoEntity_common_DailyBriefingItem();
  *(v0 + 800) = 0xD000000000000010;
  *(v0 + 808) = 0x80000001C09CDA40;
  *(v0 + 816) = type metadata accessor for UsoEntity_common_AppEntity();
  *(v0 + 824) = 0xD000000000000012;
  *(v0 + 832) = 0x80000001C09DF600;
  v6 = type metadata accessor for UsoEntity_common_WorkoutGoal();
  *(v0 + 840) = v6;
  *(v0 + 848) = 0xD000000000000017;
  *(v0 + 856) = 0x80000001C09B3840;
  *(v0 + 864) = v6;
  *(v0 + 872) = 0xD000000000000025;
  *(v0 + 880) = 0x80000001C09B3860;
  *(v0 + 888) = v6;
  *(v0 + 896) = 0xD000000000000021;
  *(v0 + 904) = 0x80000001C09B3890;
  *(v0 + 912) = v6;
  *(v0 + 920) = 0xD00000000000001DLL;
  *(v0 + 928) = 0x80000001C09B38C0;
  *(v0 + 936) = v6;
  *(v0 + 944) = 0xD000000000000018;
  *(v0 + 952) = 0x80000001C09CDBA0;
  *(v0 + 960) = type metadata accessor for UsoEntity_common_DurationComponent();
  *(v0 + 968) = 0xD000000000000014;
  *(v0 + 976) = 0x80000001C09CDBC0;
  v7 = type metadata accessor for UsoEntity_common_PhoneCallMode();
  *(v0 + 984) = v7;
  *(v0 + 992) = 0xD00000000000001ALL;
  *(v0 + 1000) = 0x80000001C09B49A0;
  *(v0 + 1008) = v7;
  *(v0 + 1016) = 0xD00000000000001BLL;
  *(v0 + 1024) = 0x80000001C09B49C0;
  *(v0 + 1032) = v7;
  *(v0 + 1040) = 0xD00000000000001BLL;
  *(v0 + 1048) = 0x80000001C09B49E0;
  *(v0 + 1056) = v7;
  *(v0 + 1064) = 0xD00000000000001ALL;
  *(v0 + 1072) = 0x80000001C09B4A00;
  *(v0 + 1080) = v7;
  *(v0 + 1088) = 0xD00000000000001ALL;
  *(v0 + 1096) = 0x80000001C09B4A20;
  *(v0 + 1104) = v7;
  *(v0 + 1112) = 0xD00000000000001DLL;
  *(v0 + 1120) = 0x80000001C09CDBE0;
  v8 = type metadata accessor for UsoEntity_appleContact_ContactAttribute();
  *(v0 + 1128) = v8;
  *(v0 + 1136) = 0xD000000000000035;
  *(v0 + 1144) = 0x80000001C09B01E0;
  *(v0 + 1152) = v8;
  *(v0 + 1160) = 0xD000000000000037;
  *(v0 + 1168) = 0x80000001C09B0220;
  *(v0 + 1176) = v8;
  *(v0 + 1184) = 0xD000000000000037;
  *(v0 + 1192) = 0x80000001C09B0260;
  *(v0 + 1200) = v8;
  *(v0 + 1208) = 0xD000000000000037;
  *(v0 + 1216) = 0x80000001C09B02A0;
  *(v0 + 1224) = v8;
  *(v0 + 1232) = 0xD000000000000036;
  *(v0 + 1240) = 0x80000001C09B02E0;
  *(v0 + 1248) = v8;
  *(v0 + 1256) = 0xD000000000000033;
  *(v0 + 1264) = 0x80000001C09B0320;
  *(v0 + 1272) = v8;
  *(v0 + 1280) = 0xD000000000000015;
  *(v0 + 1288) = 0x80000001C09CDC00;
  *(v0 + 1296) = type metadata accessor for UsoEntity_common_PersonProperty();
  *(v0 + 1304) = 0xD000000000000011;
  *(v0 + 1312) = 0x80000001C09DFCA0;
  *(v0 + 1320) = type metadata accessor for UsoEntity_common_QRCodeType();
  *(v0 + 1328) = 0xD000000000000016;
  *(v0 + 1336) = 0x80000001C09DFB80;
  *(v0 + 1344) = type metadata accessor for UsoEntity_common_OpinionJudgment();
  *(v0 + 1352) = 0xD000000000000012;
  *(v0 + 1360) = 0x80000001C09CDC60;
  *(v0 + 1368) = type metadata accessor for UsoEntity_common_SiriOpinion();
  *(v0 + 1376) = 0xD00000000000001BLL;
  *(v0 + 1384) = 0x80000001C09CDC80;
  *(v0 + 1392) = type metadata accessor for UsoEntity_common_TemperatureComponent();
  *(v0 + 1400) = 0xD000000000000013;
  *(v0 + 1408) = 0x80000001C09CDCA0;
  *(v0 + 1416) = type metadata accessor for UsoEntity_common_SearchObject();
  *(v0 + 1424) = 0xD000000000000010;
  *(v0 + 1432) = 0x80000001C09CDCC0;
  *(v0 + 1440) = type metadata accessor for UsoEntity_common_Voicemail();
  *(v0 + 1448) = 0xD00000000000001DLL;
  *(v0 + 1456) = 0x80000001C09CDD80;
  *(v0 + 1464) = type metadata accessor for UsoEntity_common_RecurringDateTimeRange();
  strcpy((v0 + 1472), "common_Workout");
  *(v0 + 1487) = -18;
  *(v0 + 1488) = type metadata accessor for UsoEntity_common_Workout();
  *(v0 + 1496) = 0xD00000000000001ALL;
  *(v0 + 1504) = 0x80000001C09CDE40;
  v9 = type metadata accessor for UsoEntity_commonStock_StockAttribute();
  *(v0 + 1512) = v9;
  *(v0 + 1520) = 0xD000000000000021;
  *(v0 + 1528) = 0x80000001C09AFE30;
  *(v0 + 1536) = v9;
  *(v0 + 1544) = 0xD00000000000002ELL;
  *(v0 + 1552) = 0x80000001C09AFE60;
  *(v0 + 1560) = v9;
  *(v0 + 1568) = 0xD00000000000002DLL;
  *(v0 + 1576) = 0x80000001C09AFE90;
  *(v0 + 1584) = v9;
  *(v0 + 1592) = 0xD000000000000024;
  *(v0 + 1600) = 0x80000001C09AFEC0;
  *(v0 + 1608) = v9;
  *(v0 + 1616) = 0xD000000000000022;
  *(v0 + 1624) = 0x80000001C09AFEF0;
  *(v0 + 1632) = v9;
  *(v0 + 1640) = 0xD000000000000027;
  *(v0 + 1648) = 0x80000001C09AFF20;
  *(v0 + 1656) = v9;
  *(v0 + 1664) = 0xD00000000000001FLL;
  *(v0 + 1672) = 0x80000001C09AFF50;
  *(v0 + 1680) = v9;
  *(v0 + 1688) = 0xD000000000000020;
  *(v0 + 1696) = 0x80000001C09AFF70;
  *(v0 + 1704) = v9;
  *(v0 + 1712) = 0xD000000000000023;
  *(v0 + 1720) = 0x80000001C09AFFA0;
  *(v0 + 1728) = v9;
  *(v0 + 1736) = 0xD000000000000021;
  *(v0 + 1744) = 0x80000001C09AFFD0;
  *(v0 + 1752) = v9;
  *(v0 + 1760) = 0xD000000000000021;
  *(v0 + 1768) = 0x80000001C09B0000;
  *(v0 + 1776) = v9;
  *(v0 + 1784) = 0xD000000000000028;
  *(v0 + 1792) = 0x80000001C09B0030;
  *(v0 + 1800) = v9;
  *(v0 + 1808) = 0xD00000000000002FLL;
  *(v0 + 1816) = 0x80000001C09B0060;
  *(v0 + 1824) = v9;
  *(v0 + 1832) = 0xD000000000000024;
  *(v0 + 1840) = 0x80000001C09B0090;
  *(v0 + 1848) = v9;
  *(v0 + 1856) = 0xD000000000000026;
  *(v0 + 1864) = 0x80000001C09B00C0;
  *(v0 + 1872) = v9;
  *(v0 + 1880) = 0xD000000000000022;
  *(v0 + 1888) = 0x80000001C09B00F0;
  *(v0 + 1896) = v9;
  *(v0 + 1904) = 0xD000000000000021;
  *(v0 + 1912) = 0x80000001C09B0120;
  *(v0 + 1920) = v9;
  *(v0 + 1928) = 0xD000000000000027;
  *(v0 + 1936) = 0x80000001C09B0150;
  *(v0 + 1944) = v9;
  *(v0 + 1952) = 0xD000000000000023;
  *(v0 + 1960) = 0x80000001C09B0180;
  *(v0 + 1968) = v9;
  *(v0 + 1976) = 0xD00000000000002BLL;
  *(v0 + 1984) = 0x80000001C09B01B0;
  *(v0 + 1992) = v9;
  *(v0 + 2000) = 0xD000000000000011;
  *(v0 + 2008) = 0x80000001C09CDE80;
  v10 = type metadata accessor for UsoEntity_common_UserEntity();
  *(v0 + 2016) = v10;
  *(v0 + 2024) = 0xD00000000000001ALL;
  *(v0 + 2032) = 0x80000001C09AFC80;
  *(v0 + 2040) = v10;
  *(v0 + 2048) = 0xD000000000000017;
  *(v0 + 2056) = 0x80000001C09AFCA0;
  *(v0 + 2064) = v10;
  *(v0 + 2072) = 0xD000000000000019;
  *(v0 + 2080) = 0x80000001C09AFCC0;
  *(v0 + 2088) = v10;
  *(v0 + 2096) = 0xD000000000000016;
  *(v0 + 2104) = 0x80000001C09AFCE0;
  *(v0 + 2112) = v10;
  *(v0 + 2120) = 0xD00000000000001CLL;
  *(v0 + 2128) = 0x80000001C09AFD00;
  *(v0 + 2136) = v10;
  *(v0 + 2144) = 0x525F6E6F6D6D6F63;
  *(v0 + 2152) = 0xEF6E6F6967696C65;
  *(v0 + 2160) = type metadata accessor for UsoEntity_common_Religion();
  *(v0 + 2168) = 0xD000000000000012;
  *(v0 + 2176) = 0x80000001C09CDF70;
  *(v0 + 2184) = type metadata accessor for UsoEntity_common_SiriContent();
  *(v0 + 2192) = 0xD000000000000012;
  *(v0 + 2200) = 0x80000001C09CDF90;
  v11 = type metadata accessor for UsoEntity_common_MonthOfYear();
  *(v0 + 2208) = v11;
  *(v0 + 2216) = 0xD000000000000018;
  *(v0 + 2224) = 0x80000001C09B3680;
  *(v0 + 2232) = v11;
  *(v0 + 2240) = 0xD00000000000001BLL;
  *(v0 + 2248) = 0x80000001C09B36A0;
  *(v0 + 2256) = v11;
  *(v0 + 2264) = 0xD00000000000001ALL;
  *(v0 + 2272) = 0x80000001C09B36C0;
  *(v0 + 2280) = v11;
  *(v0 + 2288) = 0xD00000000000001BLL;
  *(v0 + 2296) = 0x80000001C09B36E0;
  *(v0 + 2304) = v11;
  *(v0 + 2312) = 0xD000000000000017;
  *(v0 + 2320) = 0x80000001C09B3700;
  *(v0 + 2328) = v11;
  *(v0 + 2336) = 0xD00000000000001BLL;
  *(v0 + 2344) = 0x80000001C09B3720;
  *(v0 + 2352) = v11;
  *(v0 + 2360) = 0xD00000000000001CLL;
  *(v0 + 2368) = 0x80000001C09B3740;
  *(v0 + 2376) = v11;
  *(v0 + 2384) = 0xD000000000000018;
  *(v0 + 2392) = 0x80000001C09B3760;
  *(v0 + 2400) = v11;
  *(v0 + 2408) = 0xD000000000000017;
  *(v0 + 2416) = 0x80000001C09B3780;
  *(v0 + 2424) = v11;
  *(v0 + 2432) = 0xD000000000000016;
  *(v0 + 2440) = 0x80000001C09B37A0;
  *(v0 + 2448) = v11;
  *(v0 + 2456) = 0xD000000000000019;
  *(v0 + 2464) = 0x80000001C09B37C0;
  *(v0 + 2472) = v11;
  *(v0 + 2480) = 0xD00000000000001ALL;
  *(v0 + 2488) = 0x80000001C09B37E0;
  *(v0 + 2496) = v11;
  *(v0 + 2504) = 0xD000000000000012;
  *(v0 + 2512) = 0x80000001C09CDFB0;
  *(v0 + 2520) = type metadata accessor for UsoEntity_common_PhoneNumber();
  strcpy((v0 + 2528), "common_Clock");
  *(v0 + 2541) = 0;
  *(v0 + 2542) = -5120;
  *(v0 + 2544) = type metadata accessor for UsoEntity_common_Clock();
  *(v0 + 2552) = 0xD00000000000001DLL;
  *(v0 + 2560) = 0x80000001C09CDFD0;
  v12 = type metadata accessor for UsoEntity_appleMessage_MessageAttribute();
  *(v0 + 2568) = v12;
  *(v0 + 2576) = 0xD000000000000031;
  *(v0 + 2584) = 0x80000001C09B0360;
  *(v0 + 2592) = v12;
  *(v0 + 2600) = 0xD00000000000002FLL;
  *(v0 + 2608) = 0x80000001C09B03A0;
  *(v0 + 2616) = v12;
  *(v0 + 2624) = 0xD000000000000032;
  *(v0 + 2632) = 0x80000001C09B03D0;
  *(v0 + 2640) = v12;
  *(v0 + 2648) = 0xD000000000000032;
  *(v0 + 2656) = 0x80000001C09B0410;
  *(v0 + 2664) = v12;
  *(v0 + 2672) = 0xD000000000000037;
  *(v0 + 2680) = 0x80000001C09B0450;
  *(v0 + 2688) = v12;
  *(v0 + 2696) = 0xD000000000000030;
  *(v0 + 2704) = 0x80000001C09B0490;
  *(v0 + 2712) = v12;
  *(v0 + 2720) = 0xD000000000000037;
  *(v0 + 2728) = 0x80000001C09B04D0;
  *(v0 + 2736) = v12;
  *(v0 + 2744) = 0xD000000000000039;
  *(v0 + 2752) = 0x80000001C09B0510;
  *(v0 + 2760) = v12;
  *(v0 + 2768) = 0xD000000000000035;
  *(v0 + 2776) = 0x80000001C09B0550;
  *(v0 + 2784) = v12;
  *(v0 + 2792) = 0xD000000000000037;
  *(v0 + 2800) = 0x80000001C09B0590;
  *(v0 + 2808) = v12;
  *(v0 + 2816) = 0xD000000000000037;
  *(v0 + 2824) = 0x80000001C09B05D0;
  *(v0 + 2832) = v12;
  *(v0 + 2840) = 0xD000000000000035;
  *(v0 + 2848) = 0x80000001C09B0610;
  *(v0 + 2856) = v12;
  *(v0 + 2864) = 0xD000000000000035;
  *(v0 + 2872) = 0x80000001C09B0650;
  *(v0 + 2880) = v12;
  *(v0 + 2888) = 0xD000000000000034;
  *(v0 + 2896) = 0x80000001C09B0690;
  *(v0 + 2904) = v12;
  *(v0 + 2912) = 0xD000000000000039;
  *(v0 + 2920) = 0x80000001C09B06D0;
  *(v0 + 2928) = v12;
  *(v0 + 2936) = 0xD00000000000003CLL;
  *(v0 + 2944) = 0x80000001C09B0710;
  *(v0 + 2952) = v12;
  *(v0 + 2960) = 0xD000000000000031;
  *(v0 + 2968) = 0x80000001C09B0750;
  *(v0 + 2976) = v12;
  *(v0 + 2984) = 0xD000000000000031;
  *(v0 + 2992) = 0x80000001C09B0790;
  *(v0 + 3000) = v12;
  *(v0 + 3008) = 0xD00000000000003DLL;
  *(v0 + 3016) = 0x80000001C09B07D0;
  *(v0 + 3024) = v12;
  *(v0 + 3032) = 0xD00000000000003DLL;
  *(v0 + 3040) = 0x80000001C09B0810;
  *(v0 + 3048) = v12;
  *(v0 + 3056) = 0xD000000000000031;
  *(v0 + 3064) = 0x80000001C09B0850;
  *(v0 + 3072) = v12;
  *(v0 + 3080) = 0xD000000000000033;
  *(v0 + 3088) = 0x80000001C09B0890;
  *(v0 + 3096) = v12;
  *(v0 + 3104) = 0xD000000000000032;
  *(v0 + 3112) = 0x80000001C09B08D0;
  *(v0 + 3120) = v12;
  *(v0 + 3128) = 0xD00000000000002ELL;
  *(v0 + 3136) = 0x80000001C09B0910;
  *(v0 + 3144) = v12;
  *(v0 + 3152) = 0xD000000000000037;
  *(v0 + 3160) = 0x80000001C09B0940;
  *(v0 + 3168) = v12;
  *(v0 + 3176) = 0xD000000000000035;
  *(v0 + 3184) = 0x80000001C09B0980;
  *(v0 + 3192) = v12;
  *(v0 + 3200) = 0xD000000000000035;
  *(v0 + 3208) = 0x80000001C09B09C0;
  *(v0 + 3216) = v12;
  *(v0 + 3224) = 0xD00000000000003ALL;
  *(v0 + 3232) = 0x80000001C09B0A00;
  *(v0 + 3240) = v12;
  *(v0 + 3248) = 0xD000000000000032;
  *(v0 + 3256) = 0x80000001C09B0A40;
  *(v0 + 3264) = v12;
  *(v0 + 3272) = 0xD00000000000002FLL;
  *(v0 + 3280) = 0x80000001C09B0A80;
  *(v0 + 3288) = v12;
  *(v0 + 3296) = 0xD000000000000033;
  *(v0 + 3304) = 0x80000001C09B0AB0;
  *(v0 + 3312) = v12;
  *(v0 + 3320) = 0xD000000000000031;
  *(v0 + 3328) = 0x80000001C09B0AF0;
  *(v0 + 3336) = v12;
  *(v0 + 3344) = 0xD00000000000003ALL;
  *(v0 + 3352) = 0x80000001C09B0B30;
  *(v0 + 3360) = v12;
  *(v0 + 3368) = 0xD000000000000037;
  *(v0 + 3376) = 0x80000001C09B0B70;
  *(v0 + 3384) = v12;
  *(v0 + 3392) = 0xD000000000000036;
  *(v0 + 3400) = 0x80000001C09B0BB0;
  *(v0 + 3408) = v12;
  *(v0 + 3416) = 0xD000000000000011;
  *(v0 + 3424) = 0x80000001C09CDFF0;
  *(v0 + 3432) = type metadata accessor for UsoEntity_common_NoteFolder();
  *(v0 + 3440) = 0xD00000000000001ALL;
  *(v0 + 3448) = 0x80000001C09CE010;
  *(v0 + 3456) = type metadata accessor for UsoEntity_commonAlarm_AlarmAttribute();
  *(v0 + 3464) = 0xD000000000000014;
  *(v0 + 3472) = 0x80000001C09DE380;
  v13 = type metadata accessor for UsoEntity_common_SortDirection();
  *(v0 + 3480) = v13;
  *(v0 + 3488) = 0xD00000000000001BLL;
  *(v0 + 3496) = 0x80000001C09B4C10;
  *(v0 + 3504) = v13;
  *(v0 + 3512) = 0xD00000000000001ALL;
  *(v0 + 3520) = 0x80000001C09B4C30;
  *(v0 + 3528) = v13;
  *(v0 + 3536) = 0xD00000000000001DLL;
  *(v0 + 3544) = 0x80000001C09B4C50;
  *(v0 + 3552) = v13;
  *(v0 + 3560) = 0xD00000000000001CLL;
  *(v0 + 3568) = 0x80000001C09B4C70;
  *(v0 + 3576) = v13;
  *(v0 + 3584) = 0xD00000000000001ELL;
  *(v0 + 3592) = 0x80000001C09B4C90;
  *(v0 + 3600) = v13;
  *(v0 + 3608) = 0xD000000000000020;
  *(v0 + 3616) = 0x80000001C09B4CB0;
  *(v0 + 3624) = v13;
  *(v0 + 3632) = 0xD00000000000001BLL;
  *(v0 + 3640) = 0x80000001C09B4CE0;
  *(v0 + 3648) = v13;
  *(v0 + 3656) = 0xD000000000000019;
  *(v0 + 3664) = 0x80000001C09B4D00;
  *(v0 + 3672) = v13;
  *(v0 + 3680) = 0xD00000000000001CLL;
  *(v0 + 3688) = 0x80000001C09B4D20;
  *(v0 + 3696) = v13;
  *(v0 + 3704) = 0xD00000000000001DLL;
  *(v0 + 3712) = 0x80000001C09B4D40;
  *(v0 + 3720) = v13;
  *(v0 + 3728) = 0xD00000000000001ELL;
  *(v0 + 3736) = 0x80000001C09CE030;
  v14 = type metadata accessor for UsoEntity_commonContact_ContactAttribute();
  *(v0 + 3744) = v14;
  *(v0 + 3752) = 0xD00000000000002CLL;
  *(v0 + 3760) = 0x80000001C09B1670;
  *(v0 + 3768) = v14;
  *(v0 + 3776) = 0xD000000000000026;
  *(v0 + 3784) = 0x80000001C09B16A0;
  *(v0 + 3792) = v14;
  *(v0 + 3800) = 0xD000000000000015;
  *(v0 + 3808) = 0x80000001C09DDFD0;
  *(v0 + 3816) = type metadata accessor for UsoEntity_common_UserEntityType();
  *(v0 + 3824) = 0xD000000000000015;
  *(v0 + 3832) = 0x80000001C09CE050;
  *(v0 + 3840) = type metadata accessor for UsoEntity_common_DeviceProperty();
  *(v0 + 3848) = 0xD000000000000016;
  *(v0 + 3856) = 0x80000001C09CE070;
  v15 = type metadata accessor for UsoEntity_common_MeasurementUnit();
  *(v0 + 3864) = v15;
  *(v0 + 3872) = 0xD000000000000020;
  *(v0 + 3880) = 0x80000001C09B5780;
  *(v0 + 3888) = v15;
  *(v0 + 3896) = 0xD00000000000001BLL;
  *(v0 + 3904) = 0x80000001C09B57B0;
  *(v0 + 3912) = v15;
  *(v0 + 3920) = 0xD000000000000025;
  *(v0 + 3928) = 0x80000001C09B57D0;
  *(v0 + 3936) = v15;
  *(v0 + 3944) = 0xD000000000000020;
  *(v0 + 3952) = 0x80000001C09B5800;
  *(v0 + 3960) = v15;
  *(v0 + 3968) = 0xD00000000000001BLL;
  *(v0 + 3976) = 0x80000001C09B5830;
  *(v0 + 3984) = v15;
  *(v0 + 3992) = 0xD000000000000024;
  *(v0 + 4000) = 0x80000001C09B5850;
  *(v0 + 4008) = v15;
  *(v0 + 4016) = 0xD000000000000024;
  *(v0 + 4024) = 0x80000001C09B5880;
  *(v0 + 4032) = v15;
  *(v0 + 4040) = 0xD00000000000002CLL;
  *(v0 + 4048) = 0x80000001C09B58B0;
  *(v0 + 4056) = v15;
  *(v0 + 4064) = 0xD000000000000021;
  *(v0 + 4072) = 0x80000001C09B58E0;
  *(v0 + 4080) = v15;
  *(v0 + 4088) = 0xD00000000000001BLL;
  *(v0 + 4096) = 0x80000001C09B5910;
  *(v0 + 4104) = v15;
  *(v0 + 4112) = 0xD000000000000020;
  *(v0 + 4120) = 0x80000001C09B5930;
  *(v0 + 4128) = v15;
  *(v0 + 4136) = 0xD00000000000001ELL;
  *(v0 + 4144) = 0x80000001C09B5960;
  *(v0 + 4152) = v15;
  *(v0 + 4160) = 0xD00000000000002ALL;
  *(v0 + 4168) = 0x80000001C09B5980;
  *(v0 + 4176) = v15;
  *(v0 + 4184) = 0xD000000000000024;
  *(v0 + 4192) = 0x80000001C09B59B0;
  *(v0 + 4200) = v15;
  *(v0 + 4208) = 0xD00000000000001CLL;
  *(v0 + 4216) = 0x80000001C09B59E0;
  *(v0 + 4224) = v15;
  *(v0 + 4232) = 0xD000000000000024;
  *(v0 + 4240) = 0x80000001C09B5A00;
  *(v0 + 4248) = v15;
  *(v0 + 4256) = 0xD000000000000025;
  *(v0 + 4264) = 0x80000001C09B5A30;
  *(v0 + 4272) = v15;
  *(v0 + 4280) = 0xD000000000000025;
  *(v0 + 4288) = 0x80000001C09B5A60;
  *(v0 + 4296) = v15;
  *(v0 + 4304) = 0xD000000000000029;
  *(v0 + 4312) = 0x80000001C09B5A90;
  *(v0 + 4320) = v15;
  *(v0 + 4328) = 0xD00000000000001CLL;
  *(v0 + 4336) = 0x80000001C09B5AC0;
  *(v0 + 4344) = v15;
  *(v0 + 4352) = 0xD000000000000020;
  *(v0 + 4360) = 0x80000001C09B5AE0;
  *(v0 + 4368) = v15;
  *(v0 + 4376) = 0xD000000000000021;
  *(v0 + 4384) = 0x80000001C09B5B10;
  *(v0 + 4392) = v15;
  *(v0 + 4400) = 0xD000000000000022;
  *(v0 + 4408) = 0x80000001C09B5B40;
  *(v0 + 4416) = v15;
  *(v0 + 4424) = 0xD000000000000022;
  *(v0 + 4432) = 0x80000001C09B5B70;
  *(v0 + 4440) = v15;
  *(v0 + 4448) = 0xD000000000000025;
  *(v0 + 4456) = 0x80000001C09B5BA0;
  *(v0 + 4464) = v15;
  *(v0 + 4472) = 0xD00000000000001BLL;
  *(v0 + 4480) = 0x80000001C09B5BD0;
  *(v0 + 4488) = v15;
  *(v0 + 4496) = 0xD000000000000022;
  *(v0 + 4504) = 0x80000001C09B5BF0;
  *(v0 + 4512) = v15;
  *(v0 + 4520) = 0xD000000000000024;
  *(v0 + 4528) = 0x80000001C09B5C20;
  *(v0 + 4536) = v15;
  *(v0 + 4544) = 0xD00000000000002DLL;
  *(v0 + 4552) = 0x80000001C09B5C50;
  *(v0 + 4560) = v15;
  *(v0 + 4568) = 0xD000000000000022;
  *(v0 + 4576) = 0x80000001C09B5C80;
  *(v0 + 4584) = v15;
  *(v0 + 4592) = 0xD00000000000002CLL;
  *(v0 + 4600) = 0x80000001C09B5CB0;
  *(v0 + 4608) = v15;
  *(v0 + 4616) = 0xD000000000000029;
  *(v0 + 4624) = 0x80000001C09B5CE0;
  *(v0 + 4632) = v15;
  *(v0 + 4640) = 0xD00000000000001ALL;
  *(v0 + 4648) = 0x80000001C09B5D10;
  *(v0 + 4656) = v15;
  *(v0 + 4664) = 0xD000000000000025;
  *(v0 + 4672) = 0x80000001C09B5D30;
  *(v0 + 4680) = v15;
  *(v0 + 4688) = 0xD000000000000027;
  *(v0 + 4696) = 0x80000001C09B5D60;
  *(v0 + 4704) = v15;
  *(v0 + 4712) = 0xD000000000000028;
  *(v0 + 4720) = 0x80000001C09B5D90;
  *(v0 + 4728) = v15;
  *(v0 + 4736) = 0xD000000000000020;
  *(v0 + 4744) = 0x80000001C09B5DC0;
  *(v0 + 4752) = v15;
  *(v0 + 4760) = 0xD000000000000021;
  *(v0 + 4768) = 0x80000001C09B5DF0;
  *(v0 + 4776) = v15;
  *(v0 + 4784) = 0xD00000000000001BLL;
  *(v0 + 4792) = 0x80000001C09B5E20;
  *(v0 + 4800) = v15;
  *(v0 + 4808) = 0xD00000000000001CLL;
  *(v0 + 4816) = 0x80000001C09B5E40;
  *(v0 + 4824) = v15;
  *(v0 + 4832) = 0xD000000000000027;
  *(v0 + 4840) = 0x80000001C09B5E60;
  *(v0 + 4848) = v15;
  *(v0 + 4856) = 0xD000000000000027;
  *(v0 + 4864) = 0x80000001C09B5E90;
  *(v0 + 4872) = v15;
  *(v0 + 4880) = 0xD00000000000001CLL;
  *(v0 + 4888) = 0x80000001C09B5EC0;
  *(v0 + 4896) = v15;
  *(v0 + 4904) = 0xD000000000000024;
  *(v0 + 4912) = 0x80000001C09B5EE0;
  *(v0 + 4920) = v15;
  *(v0 + 4928) = 0xD000000000000024;
  *(v0 + 4936) = 0x80000001C09B5F10;
  *(v0 + 4944) = v15;
  *(v0 + 4952) = 0xD000000000000022;
  *(v0 + 4960) = 0x80000001C09B5F40;
  *(v0 + 4968) = v15;
  *(v0 + 4976) = 0xD00000000000001FLL;
  *(v0 + 4984) = 0x80000001C09B5F70;
  *(v0 + 4992) = v15;
  *(v0 + 5000) = 0xD000000000000024;
  *(v0 + 5008) = 0x80000001C09B5F90;
  *(v0 + 5016) = v15;
  *(v0 + 5024) = 0xD000000000000023;
  *(v0 + 5032) = 0x80000001C09B5FC0;
  *(v0 + 5040) = v15;
  *(v0 + 5048) = 0xD00000000000001BLL;
  *(v0 + 5056) = 0x80000001C09B5FF0;
  *(v0 + 5064) = v15;
  *(v0 + 5072) = 0xD000000000000027;
  *(v0 + 5080) = 0x80000001C09B6010;
  *(v0 + 5088) = v15;
  *(v0 + 5096) = 0xD000000000000025;
  *(v0 + 5104) = 0x80000001C09B6040;
  *(v0 + 5112) = v15;
  *(v0 + 5120) = 0xD000000000000025;
  *(v0 + 5128) = 0x80000001C09B6070;
  *(v0 + 5136) = v15;
  *(v0 + 5144) = 0xD000000000000020;
  *(v0 + 5152) = 0x80000001C09B60A0;
  *(v0 + 5160) = v15;
  *(v0 + 5168) = 0xD000000000000013;
  *(v0 + 5176) = 0x80000001C09CE090;
  *(v0 + 5184) = type metadata accessor for UsoEntity_common_ReminderList();
  strcpy((v0 + 5192), "common_Stock");
  *(v0 + 5205) = 0;
  *(v0 + 5206) = -5120;
  *(v0 + 5208) = type metadata accessor for UsoEntity_common_Stock();
  *(v0 + 5216) = 0xD000000000000011;
  *(v0 + 5224) = 0x80000001C09CE0B0;
  *(v0 + 5232) = type metadata accessor for UsoEntity_common_AppSection();
  *(v0 + 5240) = 0xD000000000000010;
  *(v0 + 5248) = 0x80000001C09CE0D0;
  *(v0 + 5256) = type metadata accessor for UsoEntity_common_PhoneCall();
  *(v0 + 5264) = 0xD000000000000015;
  *(v0 + 5272) = 0x80000001C09CE1B0;
  *(v0 + 5280) = type metadata accessor for UsoEntity_common_ContactAddress();
  *(v0 + 5288) = 0xD000000000000016;
  *(v0 + 5296) = 0x80000001C09CE1D0;
  *(v0 + 5304) = type metadata accessor for UsoEntity_common_LocalisedString();
  *(v0 + 5312) = 0xD000000000000016;
  *(v0 + 5320) = 0x80000001C09CE1F0;
  *(v0 + 5328) = type metadata accessor for UsoEntity_common_ProductCategory();
  *(v0 + 5336) = 0xD000000000000011;
  *(v0 + 5344) = 0x80000001C09CE210;
  v16 = type metadata accessor for UsoEntity_common_NumberSign();
  *(v0 + 5352) = v16;
  *(v0 + 5360) = 0xD00000000000001ELL;
  *(v0 + 5368) = 0x80000001C09B3360;
  *(v0 + 5376) = v16;
  *(v0 + 5384) = 0xD00000000000001ELL;
  *(v0 + 5392) = 0x80000001C09B3380;
  *(v0 + 5400) = v16;
  *(v0 + 5408) = 0xD000000000000010;
  *(v0 + 5416) = 0x80000001C09CE230;
  *(v0 + 5424) = type metadata accessor for UsoEntity_common_Utilities();
  *(v0 + 5432) = 0xD000000000000011;
  *(v0 + 5440) = 0x80000001C09CE250;
  *(v0 + 5448) = type metadata accessor for UsoEntity_common_PersonName();
  *(v0 + 5456) = 0xD000000000000028;
  *(v0 + 5464) = 0x80000001C09CE270;
  *(v0 + 5472) = type metadata accessor for UsoEntity_commonNotification_NotificationAttribute();
  *(v0 + 5480) = 0xD000000000000022;
  *(v0 + 5488) = 0x80000001C09CE2A0;
  v17 = type metadata accessor for UsoEntity_commonPhoneCall_PhoneCallAttribute();
  *(v0 + 5496) = v17;
  *(v0 + 5504) = 0xD000000000000028;
  *(v0 + 5512) = 0x80000001C09B1BF0;
  *(v0 + 5520) = v17;
  *(v0 + 5528) = 0xD00000000000002ALL;
  *(v0 + 5536) = 0x80000001C09B1C20;
  *(v0 + 5544) = v17;
  *(v0 + 5552) = 0xD00000000000001BLL;
  *(v0 + 5560) = 0x80000001C09DF8B0;
  v18 = type metadata accessor for UsoEntity_common_CommunicationTrigger();
  *(v0 + 5568) = v18;
  *(v0 + 5576) = 0xD000000000000031;
  *(v0 + 5584) = 0x80000001C09B6CD0;
  *(v0 + 5592) = v18;
  *(v0 + 5600) = 0xD000000000000024;
  *(v0 + 5608) = 0x80000001C09B6D10;
  *(v0 + 5616) = v18;
  *(v0 + 5624) = 0xD000000000000025;
  *(v0 + 5632) = 0x80000001C09B6D40;
  *(v0 + 5640) = v18;
  *(v0 + 5648) = 0xD000000000000029;
  *(v0 + 5656) = 0x80000001C09B6D70;
  *(v0 + 5664) = v18;
  *(v0 + 5672) = 0xD00000000000002DLL;
  *(v0 + 5680) = 0x80000001C09B6DA0;
  *(v0 + 5688) = v18;
  *(v0 + 5696) = 0xD000000000000028;
  *(v0 + 5704) = 0x80000001C09B6DD0;
  *(v0 + 5712) = v18;
  *(v0 + 5720) = 0xD00000000000002BLL;
  *(v0 + 5728) = 0x80000001C09B6E00;
  *(v0 + 5736) = v18;
  *(v0 + 5744) = 0xD000000000000028;
  *(v0 + 5752) = 0x80000001C09B6E30;
  *(v0 + 5760) = v18;
  *(v0 + 5768) = 0xD00000000000002CLL;
  *(v0 + 5776) = 0x80000001C09B6E60;
  *(v0 + 5784) = v18;
  *(v0 + 5792) = 0xD00000000000002FLL;
  *(v0 + 5800) = 0x80000001C09B6E90;
  *(v0 + 5808) = v18;
  *(v0 + 5816) = 0xD000000000000013;
  *(v0 + 5824) = 0x80000001C09CE2D0;
  *(v0 + 5832) = type metadata accessor for UsoEntity_common_SettingValue();
  *(v0 + 5840) = 0xD000000000000014;
  *(v0 + 5848) = 0x80000001C09CE320;
  *(v0 + 5856) = type metadata accessor for UsoEntity_common_PersonContact();
  *(v0 + 5864) = 0xD000000000000011;
  *(v0 + 5872) = 0x80000001C09DF700;
  *(v0 + 5880) = type metadata accessor for UsoEntity_common_PersonRole();
  *(v0 + 5888) = 0xD000000000000011;
  *(v0 + 5896) = 0x80000001C09CE360;
  *(v0 + 5904) = type metadata accessor for UsoEntity_common_SportsItem();
  *(v0 + 5912) = 0xD000000000000012;
  *(v0 + 5920) = 0x80000001C09DFA40;
  *(v0 + 5928) = type metadata accessor for UsoEntity_common_JourneyType();
  strcpy((v0 + 5936), "common_Timer");
  *(v0 + 5949) = 0;
  *(v0 + 5950) = -5120;
  *(v0 + 5952) = type metadata accessor for UsoEntity_common_Timer();
  *(v0 + 5960) = 0xD000000000000018;
  *(v0 + 5968) = 0x80000001C09DF5E0;
  *(v0 + 5976) = type metadata accessor for UsoEntity_common_WorkoutInstructor();
  *(v0 + 5984) = 0xD000000000000016;
  *(v0 + 5992) = 0x80000001C09CE3A0;
  v19 = type metadata accessor for UsoEntity_common_SearchQualifier();
  *(v0 + 6000) = v19;
  *(v0 + 6008) = 0xD00000000000001ALL;
  *(v0 + 6016) = 0x80000001C09B6110;
  *(v0 + 6024) = v19;
  *(v0 + 6032) = 0xD000000000000022;
  *(v0 + 6040) = 0x80000001C09B6130;
  *(v0 + 6048) = v19;
  *(v0 + 6056) = 0xD00000000000001FLL;
  *(v0 + 6064) = 0x80000001C09B6160;
  *(v0 + 6072) = v19;
  *(v0 + 6080) = 0xD00000000000001ELL;
  *(v0 + 6088) = 0x80000001C09B6180;
  *(v0 + 6096) = v19;
  *(v0 + 6104) = 0xD00000000000001ALL;
  *(v0 + 6112) = 0x80000001C09B61A0;
  *(v0 + 6120) = v19;
  *(v0 + 6128) = 0xD000000000000023;
  *(v0 + 6136) = 0x80000001C09B61C0;
  *(v0 + 6144) = v19;
  *(v0 + 6152) = 0xD00000000000001ELL;
  *(v0 + 6160) = 0x80000001C09B61F0;
  *(v0 + 6168) = v19;
  *(v0 + 6176) = 0xD00000000000001ELL;
  *(v0 + 6184) = 0x80000001C09B6210;
  *(v0 + 6192) = v19;
  *(v0 + 6200) = 0x525F6E6F6D6D6F63;
  *(v0 + 6208) = 0xEF6E6F6974636165;
  *(v0 + 6216) = type metadata accessor for UsoEntity_common_Reaction();
  *(v0 + 6224) = 0xD000000000000014;
  *(v0 + 6232) = 0x80000001C09CE3C0;
  *(v0 + 6240) = type metadata accessor for UsoEntity_common_CrisisSupport();
  *(v0 + 6248) = 0xD000000000000014;
  *(v0 + 6256) = 0x80000001C09CE3E0;
  v20 = type metadata accessor for UsoEntity_common_DateTimeRange();
  *(v0 + 6264) = v20;
  *(v0 + 6272) = 0xD00000000000001FLL;
  *(v0 + 6280) = 0x80000001C09B4150;
  *(v0 + 6288) = v20;
  *(v0 + 6296) = 0xD00000000000001BLL;
  *(v0 + 6304) = 0x80000001C09B4170;
  *(v0 + 6312) = v20;
  *(v0 + 6320) = 0xD00000000000001ELL;
  *(v0 + 6328) = 0x80000001C09B4190;
  *(v0 + 6336) = v20;
  *(v0 + 6344) = 0xD00000000000001BLL;
  *(v0 + 6352) = 0x80000001C09B41B0;
  *(v0 + 6360) = v20;
  *(v0 + 6368) = 0xD00000000000001BLL;
  *(v0 + 6376) = 0x80000001C09B41D0;
  *(v0 + 6384) = v20;
  *(v0 + 6392) = 0xD00000000000001DLL;
  *(v0 + 6400) = 0x80000001C09B41F0;
  *(v0 + 6408) = v20;
  *(v0 + 6416) = 0xD00000000000001FLL;
  *(v0 + 6424) = 0x80000001C09B4210;
  *(v0 + 6432) = v20;
  *(v0 + 6440) = 0xD00000000000001ALL;
  *(v0 + 6448) = 0x80000001C09B4230;
  *(v0 + 6456) = v20;
  *(v0 + 6464) = 0xD00000000000001ELL;
  *(v0 + 6472) = 0x80000001C09B4250;
  *(v0 + 6480) = v20;
  *(v0 + 6488) = 0xD00000000000001CLL;
  *(v0 + 6496) = 0x80000001C09B4270;
  *(v0 + 6504) = v20;
  *(v0 + 6512) = 0xD00000000000001BLL;
  *(v0 + 6520) = 0x80000001C09B4290;
  *(v0 + 6528) = v20;
  *(v0 + 6536) = 0xD000000000000019;
  *(v0 + 6544) = 0x80000001C09B42B0;
  *(v0 + 6552) = v20;
  *(v0 + 6560) = 0xD00000000000001DLL;
  *(v0 + 6568) = 0x80000001C09B42D0;
  *(v0 + 6576) = v20;
  *(v0 + 6584) = 0xD00000000000001CLL;
  *(v0 + 6592) = 0x80000001C09B42F0;
  *(v0 + 6600) = v20;
  *(v0 + 6608) = 0xD00000000000001FLL;
  *(v0 + 6616) = 0x80000001C09B4310;
  *(v0 + 6624) = v20;
  *(v0 + 6632) = 0xD00000000000001BLL;
  *(v0 + 6640) = 0x80000001C09B4330;
  *(v0 + 6648) = v20;
  *(v0 + 6656) = 0xD000000000000020;
  *(v0 + 6664) = 0x80000001C09B4350;
  *(v0 + 6672) = v20;
  *(v0 + 6680) = 0xD00000000000001FLL;
  *(v0 + 6688) = 0x80000001C09B4380;
  *(v0 + 6696) = v20;
  *(v0 + 6704) = 0xD00000000000001CLL;
  *(v0 + 6712) = 0x80000001C09B43A0;
  *(v0 + 6720) = v20;
  *(v0 + 6728) = 0xD00000000000001ELL;
  *(v0 + 6736) = 0x80000001C09B43C0;
  *(v0 + 6744) = v20;
  *(v0 + 6752) = 0xD000000000000019;
  *(v0 + 6760) = 0x80000001C09B43E0;
  *(v0 + 6768) = v20;
  *(v0 + 6776) = 0xD000000000000022;
  *(v0 + 6784) = 0x80000001C09B4400;
  *(v0 + 6792) = v20;
  *(v0 + 6800) = 0xD000000000000024;
  *(v0 + 6808) = 0x80000001C09B4430;
  *(v0 + 6816) = v20;
  *(v0 + 6824) = 0xD00000000000001CLL;
  *(v0 + 6832) = 0x80000001C09B4460;
  *(v0 + 6840) = v20;
  *(v0 + 6848) = 0xD000000000000024;
  *(v0 + 6856) = 0x80000001C09B4480;
  *(v0 + 6864) = v20;
  *(v0 + 6872) = 0xD00000000000001DLL;
  *(v0 + 6880) = 0x80000001C09CE400;
  v21 = type metadata accessor for UsoEntity_appleWriting_WritingAttribute();
  *(v0 + 6888) = v21;
  *(v0 + 6896) = 0xD000000000000038;
  *(v0 + 6904) = 0x80000001C09B0BF0;
  *(v0 + 6912) = v21;
  *(v0 + 6920) = 0xD00000000000002ELL;
  *(v0 + 6928) = 0x80000001C09B0C30;
  *(v0 + 6936) = v21;
  *(v0 + 6944) = 0xD00000000000003DLL;
  *(v0 + 6952) = 0x80000001C09B0C60;
  *(v0 + 6960) = v21;
  *(v0 + 6968) = 0xD000000000000031;
  *(v0 + 6976) = 0x80000001C09B0CA0;
  *(v0 + 6984) = v21;
  *(v0 + 6992) = 0xD000000000000043;
  *(v0 + 7000) = 0x80000001C09B0CE0;
  *(v0 + 7008) = v21;
  *(v0 + 7016) = 0xD000000000000044;
  *(v0 + 7024) = 0x80000001C09B0D30;
  *(v0 + 7032) = v21;
  *(v0 + 7040) = 0xD000000000000032;
  *(v0 + 7048) = 0x80000001C09B0D80;
  *(v0 + 7056) = v21;
  *(v0 + 7064) = 0xD00000000000003DLL;
  *(v0 + 7072) = 0x80000001C09B0DC0;
  *(v0 + 7080) = v21;
  *(v0 + 7088) = 0xD00000000000001ALL;
  *(v0 + 7096) = 0x80000001C09DFA20;
  *(v0 + 7104) = type metadata accessor for UsoEntity_common_PointOfInterestType();
  *(v0 + 7112) = 0x545F6E6F6D6D6F63;
  *(v0 + 7120) = 0xEF656E6F5A656D69;
  *(v0 + 7128) = type metadata accessor for UsoEntity_common_TimeZone();
  *(v0 + 7136) = 0xD000000000000019;
  *(v0 + 7144) = 0x80000001C09CE420;
  *(v0 + 7152) = type metadata accessor for UsoEntity_common_PersonRelationship();
  *(v0 + 7160) = 0xD000000000000016;
  *(v0 + 7168) = 0x80000001C09CE440;
  v22 = type metadata accessor for UsoEntity_common_ActivationValue();
  *(v0 + 7176) = v22;
  *(v0 + 7184) = 0xD00000000000001ALL;
  *(v0 + 7192) = 0x80000001C09B5740;
  *(v0 + 7200) = v22;
  *(v0 + 7208) = 0xD000000000000019;
  *(v0 + 7216) = 0x80000001C09B5760;
  *(v0 + 7224) = v22;
  *(v0 + 7232) = 0xD000000000000011;
  *(v0 + 7240) = 0x80000001C09DF830;
  v23 = type metadata accessor for UsoEntity_common_EmailState();
  *(v0 + 7248) = v23;
  *(v0 + 7256) = 0xD000000000000018;
  *(v0 + 7264) = 0x80000001C09B3280;
  *(v0 + 7272) = v23;
  *(v0 + 7280) = 0xD000000000000016;
  *(v0 + 7288) = 0x80000001C09B32A0;
  *(v0 + 7296) = v23;
  *(v0 + 7304) = 0xD000000000000016;
  *(v0 + 7312) = 0x80000001C09B32C0;
  *(v0 + 7320) = v23;
  *(v0 + 7328) = 0xD000000000000017;
  *(v0 + 7336) = 0x80000001C09B32E0;
  *(v0 + 7344) = v23;
  *(v0 + 7352) = 0xD000000000000018;
  *(v0 + 7360) = 0x80000001C09B3300;
  *(v0 + 7368) = v23;
  *(v0 + 7376) = 0xD00000000000001ALL;
  *(v0 + 7384) = 0x80000001C09B3320;
  *(v0 + 7392) = v23;
  *(v0 + 7400) = 0xD000000000000019;
  *(v0 + 7408) = 0x80000001C09B3340;
  *(v0 + 7416) = v23;
  *(v0 + 7424) = 0xD000000000000015;
  *(v0 + 7432) = 0x80000001C09DF760;
  v24 = type metadata accessor for UsoEntity_common_ResponseStatus();
  *(v0 + 7440) = v24;
  *(v0 + 7448) = 0xD000000000000023;
  *(v0 + 7456) = 0x80000001C09B5600;
  *(v0 + 7464) = v24;
  *(v0 + 7472) = 0xD00000000000001FLL;
  *(v0 + 7480) = 0x80000001C09B5630;
  *(v0 + 7488) = v24;
  *(v0 + 7496) = 0xD000000000000024;
  *(v0 + 7504) = 0x80000001C09B5650;
  *(v0 + 7512) = v24;
  *(v0 + 7520) = 0xD000000000000022;
  *(v0 + 7528) = 0x80000001C09B5680;
  *(v0 + 7536) = v24;
  *(v0 + 7544) = 0xD000000000000021;
  *(v0 + 7552) = 0x80000001C09B56B0;
  *(v0 + 7560) = v24;
  *(v0 + 7568) = 0xD000000000000022;
  *(v0 + 7576) = 0x80000001C09B56E0;
  *(v0 + 7584) = v24;
  *(v0 + 7592) = 0xD000000000000020;
  *(v0 + 7600) = 0x80000001C09B5710;
  *(v0 + 7608) = v24;
  strcpy((v0 + 7616), "common_Color");
  *(v0 + 7629) = 0;
  *(v0 + 7630) = -5120;
  *(v0 + 7632) = type metadata accessor for UsoEntity_common_Color();
  strcpy((v0 + 7640), "common_Email");
  *(v0 + 7653) = 0;
  *(v0 + 7654) = -5120;
  *(v0 + 7656) = type metadata accessor for UsoEntity_common_Email();
  *(v0 + 7664) = 0xD000000000000015;
  *(v0 + 7672) = 0x80000001C09CE4E0;
  *(v0 + 7680) = type metadata accessor for UsoEntity_common_DeviceCategory();
  *(v0 + 7688) = 0x445F6E6F6D6D6F63;
  *(v0 + 7696) = 0xEF656D6954657461;
  v25 = type metadata accessor for UsoEntity_common_DateTime();
  *(v0 + 7704) = v25;
  *(v0 + 7712) = 0xD000000000000013;
  *(v0 + 7720) = 0x80000001C09B2DA0;
  *(v0 + 7728) = v25;
  *(v0 + 7736) = 0xD000000000000017;
  *(v0 + 7744) = 0x80000001C09DFAE0;
  *(v0 + 7752) = type metadata accessor for UsoEntity_common_ReminderListType();
  *(v0 + 7760) = 0xD000000000000011;
  *(v0 + 7768) = 0x80000001C09CE530;
  *(v0 + 7776) = type metadata accessor for UsoEntity_apple_PhotoMemory();
  *(v0 + 7784) = 0xD000000000000015;
  *(v0 + 7792) = 0x80000001C09CE620;
  *(v0 + 7800) = type metadata accessor for UsoEntity_common_SiriPossession();
  *(v0 + 7808) = 0xD000000000000019;
  *(v0 + 7816) = 0x80000001C09CE640;
  *(v0 + 7824) = type metadata accessor for UsoEntity_common_PersonSocialAction();
  strcpy((v0 + 7832), "common_Journey");
  *(v0 + 7847) = -18;
  *(v0 + 7848) = type metadata accessor for UsoEntity_common_Journey();
  *(v0 + 7856) = 0xD000000000000011;
  *(v0 + 7864) = 0x80000001C09DF9A0;
  v26 = type metadata accessor for UsoEntity_common_Politeness();
  *(v0 + 7872) = v26;
  *(v0 + 7880) = 0xD00000000000001ALL;
  *(v0 + 7888) = 0x80000001C09B33A0;
  *(v0 + 7896) = v26;
  *(v0 + 7904) = 0xD000000000000018;
  *(v0 + 7912) = 0x80000001C09B33C0;
  *(v0 + 7920) = v26;
  strcpy((v0 + 7928), "common_Photo");
  *(v0 + 7941) = 0;
  *(v0 + 7942) = -5120;
  *(v0 + 7944) = type metadata accessor for UsoEntity_common_Photo();
  *(v0 + 7952) = 0xD000000000000014;
  *(v0 + 7960) = 0x80000001C09DFCC0;
  *(v0 + 7968) = type metadata accessor for UsoEntity_common_AppSubSection();
  *(v0 + 7976) = 0xD000000000000014;
  *(v0 + 7984) = 0x80000001C09DE2E0;
  v27 = type metadata accessor for UsoEntity_common_SizeDirection();
  *(v0 + 7992) = v27;
  *(v0 + 8000) = 0xD00000000000001BLL;
  *(v0 + 8008) = 0x80000001C09B4B50;
  *(v0 + 8016) = v27;
  *(v0 + 8024) = 0xD00000000000001ALL;
  *(v0 + 8032) = 0x80000001C09B4B70;
  *(v0 + 8040) = v27;
  *(v0 + 8048) = 0xD00000000000001CLL;
  *(v0 + 8056) = 0x80000001C09B4B90;
  *(v0 + 8064) = v27;
  *(v0 + 8072) = 0xD00000000000001DLL;
  *(v0 + 8080) = 0x80000001C09B4BB0;
  *(v0 + 8088) = v27;
  *(v0 + 8096) = 0xD00000000000001BLL;
  *(v0 + 8104) = 0x80000001C09B4BD0;
  *(v0 + 8112) = v27;
  *(v0 + 8120) = 0xD00000000000001CLL;
  *(v0 + 8128) = 0x80000001C09B4BF0;
  *(v0 + 8136) = v27;
  *(v0 + 8144) = 0xD00000000000001ELL;
  *(v0 + 8152) = 0x80000001C09CE760;
  *(v0 + 8160) = type metadata accessor for UsoEntity_commonMessage_MessageAttribute();
  *(v0 + 8168) = 0xD000000000000011;
  *(v0 + 8176) = 0x80000001C09CE780;
  *(v0 + 8184) = type metadata accessor for UsoEntity_common_Salutation();
  *(v0 + 0x2000) = 0xD00000000000001ALL;
  *(v0 + 8200) = 0x80000001C09DE320;
  *(v0 + 8208) = type metadata accessor for UsoEntity_common_AdjustmentDirection();
  *(v0 + 8216) = 0xD000000000000013;
  *(v0 + 8224) = 0x80000001C09CE7A0;
  *(v0 + 8232) = type metadata accessor for UsoEntity_common_Organization();
  *(v0 + 8240) = 0xD000000000000024;
  *(v0 + 8248) = 0x80000001C09CE7C0;
  *(v0 + 8256) = type metadata accessor for UsoEntity_commonArithmetic_ArithmeticAttribute();
  *(v0 + 8264) = 0xD000000000000017;
  *(v0 + 8272) = 0x80000001C09CE7F0;
  *(v0 + 8280) = type metadata accessor for UsoEntity_common_MultipliedNumber();
  *(v0 + 8288) = 0xD00000000000001ALL;
  *(v0 + 8296) = 0x80000001C09DE400;
  *(v0 + 8304) = type metadata accessor for UsoEntity_common_MeasurementCategory();
  *(v0 + 8312) = 0xD000000000000011;
  *(v0 + 8320) = 0x80000001C09CE840;
  *(v0 + 8328) = type metadata accessor for UsoEntity_common_CarSetting();
  *(v0 + 8336) = 0x545F6E6F6D6D6F63;
  *(v0 + 8344) = 0xEF74696E55656D69;
  v28 = type metadata accessor for UsoEntity_common_TimeUnit();
  *(v0 + 8352) = v28;
  *(v0 + 8360) = 0xD00000000000001CLL;
  *(v0 + 8368) = 0x80000001C09B2EC0;
  *(v0 + 8376) = v28;
  *(v0 + 8384) = 0xD000000000000019;
  *(v0 + 8392) = 0x80000001C09B2EE0;
  *(v0 + 8400) = v28;
  *(v0 + 8408) = 0xD000000000000014;
  *(v0 + 8416) = 0x80000001C09B2F00;
  *(v0 + 8424) = v28;
  *(v0 + 8432) = 0xD000000000000017;
  *(v0 + 8440) = 0x80000001C09B2F20;
  *(v0 + 8448) = v28;
  *(v0 + 8456) = 0xD000000000000016;
  *(v0 + 8464) = 0x80000001C09B2F40;
  *(v0 + 8472) = v28;
  *(v0 + 8480) = 0xD00000000000001DLL;
  *(v0 + 8488) = 0x80000001C09B2F60;
  *(v0 + 8496) = v28;
  *(v0 + 8504) = 0xD000000000000016;
  *(v0 + 8512) = 0x80000001C09B2F80;
  *(v0 + 8520) = v28;
  *(v0 + 8528) = 0xD000000000000013;
  *(v0 + 8536) = 0x80000001C09B2FA0;
  *(v0 + 8544) = v28;
  *(v0 + 8552) = 0xD000000000000014;
  *(v0 + 8560) = 0x80000001C09B2FC0;
  *(v0 + 8568) = v28;
  *(v0 + 8576) = 0xD00000000000001BLL;
  *(v0 + 8584) = 0x80000001C09B2FE0;
  *(v0 + 8592) = v28;
  *(v0 + 8600) = 0xD000000000000015;
  *(v0 + 8608) = 0x80000001C09B3000;
  *(v0 + 8616) = v28;
  *(v0 + 8624) = 0xD000000000000016;
  *(v0 + 8632) = 0x80000001C09B3020;
  *(v0 + 8640) = v28;
  *(v0 + 8648) = 0xD000000000000014;
  *(v0 + 8656) = 0x80000001C09B3040;
  *(v0 + 8664) = v28;
  *(v0 + 8672) = 0xD000000000000015;
  *(v0 + 8680) = 0x80000001C09DE300;
  v29 = type metadata accessor for UsoEntity_common_AdjustmentType();
  *(v0 + 8688) = v29;
  *(v0 + 8696) = 0xD00000000000001ALL;
  *(v0 + 8704) = 0x80000001C09B4DF0;
  *(v0 + 8712) = v29;
  *(v0 + 8720) = 0xD00000000000001CLL;
  *(v0 + 8728) = 0x80000001C09B4E10;
  *(v0 + 8736) = v29;
  *(v0 + 8744) = 0xD00000000000001CLL;
  *(v0 + 8752) = 0x80000001C09B4E30;
  *(v0 + 8760) = v29;
  *(v0 + 8768) = 0xD00000000000001ALL;
  *(v0 + 8776) = 0x80000001C09B4E50;
  *(v0 + 8784) = v29;
  *(v0 + 8792) = 0xD000000000000015;
  *(v0 + 8800) = 0x80000001C09DE030;
  *(v0 + 8808) = type metadata accessor for UsoEntity_common_SportsItemType();
  *(v0 + 8816) = 0xD000000000000016;
  *(v0 + 8824) = 0x80000001C09CEA90;
  v30 = type metadata accessor for UsoEntity_common_OffsetDirection();
  *(v0 + 8832) = v30;
  *(v0 + 8840) = 0xD00000000000001CLL;
  *(v0 + 8848) = 0x80000001C09B60D0;
  *(v0 + 8856) = v30;
  *(v0 + 8864) = 0xD00000000000001DLL;
  *(v0 + 8872) = 0x80000001C09B60F0;
  *(v0 + 8880) = v30;
  strcpy((v0 + 8888), "common_Tapback");
  *(v0 + 8903) = -18;
  *(v0 + 8904) = type metadata accessor for UsoEntity_common_Tapback();
  *(v0 + 8912) = 0xD000000000000013;
  *(v0 + 8920) = 0x80000001C09CEAB0;
  v31 = type metadata accessor for UsoEntity_common_Interjection();
  *(v0 + 8928) = v31;
  *(v0 + 8936) = 0xD00000000000001CLL;
  *(v0 + 8944) = 0x80000001C09B38E0;
  *(v0 + 8952) = v31;
  *(v0 + 8960) = 0xD00000000000001DLL;
  *(v0 + 8968) = 0x80000001C09B3900;
  *(v0 + 8976) = v31;
  *(v0 + 8984) = 0xD000000000000023;
  *(v0 + 8992) = 0x80000001C09B3920;
  *(v0 + 9000) = v31;
  *(v0 + 9008) = 0xD000000000000025;
  *(v0 + 9016) = 0x80000001C09B3950;
  *(v0 + 9024) = v31;
  *(v0 + 9032) = 0xD00000000000001ALL;
  *(v0 + 9040) = 0x80000001C09B3980;
  *(v0 + 9048) = v31;
  *(v0 + 9056) = 0xD000000000000025;
  *(v0 + 9064) = 0x80000001C09B39A0;
  *(v0 + 9072) = v31;
  *(v0 + 9080) = 0xD000000000000017;
  *(v0 + 9088) = 0x80000001C09DFB60;
  *(v0 + 9096) = type metadata accessor for UsoEntity_common_FavoriteCategory();
  strcpy((v0 + 9104), "common_Event");
  *(v0 + 9117) = 0;
  *(v0 + 9118) = -5120;
  *(v0 + 9120) = type metadata accessor for UsoEntity_common_Event();
  *(v0 + 9128) = 0xD000000000000016;
  *(v0 + 9136) = 0x80000001C09CEAD0;
  *(v0 + 9144) = type metadata accessor for UsoEntity_common_MedicationEvent();
  *(v0 + 9152) = 0xD000000000000018;
  *(v0 + 9160) = 0x80000001C09CEB10;
  v32 = type metadata accessor for UsoEntity_common_RecurringDateTime();
  *(v0 + 9168) = v32;
  *(v0 + 9176) = 0xD000000000000021;
  *(v0 + 9184) = 0x80000001C09B6B80;
  *(v0 + 9192) = v32;
  *(v0 + 9200) = 0xD000000000000021;
  *(v0 + 9208) = 0x80000001C09B6BB0;
  *(v0 + 9216) = v32;
  *(v0 + 9224) = 0xD000000000000021;
  *(v0 + 9232) = 0x80000001C09B6BE0;
  *(v0 + 9240) = v32;
  *(v0 + 9248) = 0x445F6E6F6D6D6F63;
  *(v0 + 9256) = 0xEB00000000657461;
  v33 = type metadata accessor for UsoEntity_common_Date();
  *(v0 + 9264) = v33;
  *(v0 + 9272) = 0xD000000000000014;
  *(v0 + 9280) = 0x80000001C09B2810;
  *(v0 + 9288) = v33;
  *(v0 + 9296) = 0xD00000000000001ELL;
  *(v0 + 9304) = 0x80000001C09B2830;
  *(v0 + 9312) = v33;
  *(v0 + 9320) = 0xD00000000000001CLL;
  *(v0 + 9328) = 0x80000001C09B2850;
  *(v0 + 9336) = v33;
  *(v0 + 9344) = 0xD000000000000011;
  *(v0 + 9352) = 0x80000001C09B2870;
  *(v0 + 9360) = v33;
  *(v0 + 9368) = 0xD000000000000015;
  *(v0 + 9376) = 0x80000001C09B2890;
  *(v0 + 9384) = v33;
  *(v0 + 9392) = 0xD000000000000013;
  *(v0 + 9400) = 0x80000001C09DF930;
  v34 = type metadata accessor for UsoEntity_common_MessageState();
  *(v0 + 9408) = v34;
  *(v0 + 9416) = 0xD00000000000001ALL;
  *(v0 + 9424) = 0x80000001C09B3E40;
  *(v0 + 9432) = v34;
  *(v0 + 9440) = 0xD00000000000001BLL;
  *(v0 + 9448) = 0x80000001C09B3E60;
  *(v0 + 9456) = v34;
  *(v0 + 9464) = 0xD00000000000001BLL;
  *(v0 + 9472) = 0x80000001C09B3E80;
  *(v0 + 9480) = v34;
  *(v0 + 9488) = 0xD000000000000019;
  *(v0 + 9496) = 0x80000001C09B3EA0;
  *(v0 + 9504) = v34;
  *(v0 + 9512) = 0xD000000000000019;
  *(v0 + 9520) = 0x80000001C09B3EC0;
  *(v0 + 9528) = v34;
  *(v0 + 9536) = 0xD00000000000001ALL;
  *(v0 + 9544) = 0x80000001C09B3EE0;
  *(v0 + 9552) = v34;
  *(v0 + 9560) = 0xD000000000000018;
  *(v0 + 9568) = 0x80000001C09B3F00;
  *(v0 + 9576) = v34;
  *(v0 + 9584) = 0xD000000000000018;
  *(v0 + 9592) = 0x80000001C09B3F20;
  *(v0 + 9600) = v34;
  *(v0 + 9608) = 0xD00000000000001CLL;
  *(v0 + 9616) = 0x80000001C09B3F40;
  *(v0 + 9624) = v34;
  strcpy((v0 + 9632), "common_Message");
  *(v0 + 9647) = -18;
  *(v0 + 9648) = type metadata accessor for UsoEntity_common_Message();
  *(v0 + 9656) = 0xD000000000000019;
  *(v0 + 9664) = 0x80000001C09CEC10;
  *(v0 + 9672) = type metadata accessor for UsoEntity_common_MedicationSchedule();
  *(v0 + 9680) = 0xD000000000000011;
  *(v0 + 9688) = 0x80000001C09CEC30;
  *(v0 + 9696) = type metadata accessor for UsoEntity_common_OffsetDate();
  *(v0 + 9704) = 0xD000000000000013;
  *(v0 + 9712) = 0x80000001C09CEC70;
  *(v0 + 9720) = type metadata accessor for UsoEntity_common_MediaCapture();
  *(v0 + 9728) = 0x445F6E6F6D6D6F63;
  *(v0 + 9736) = 0xEF6E6F6974617275;
  v35 = type metadata accessor for UsoEntity_common_Duration();
  *(v0 + 9744) = v35;
  *(v0 + 9752) = 0xD00000000000001DLL;
  *(v0 + 9760) = 0x80000001C09B2E00;
  *(v0 + 9768) = v35;
  *(v0 + 9776) = 0xD000000000000016;
  *(v0 + 9784) = 0x80000001C09B2E20;
  *(v0 + 9792) = v35;
  *(v0 + 9800) = 0xD00000000000001ALL;
  *(v0 + 9808) = 0x80000001C09B2E40;
  *(v0 + 9816) = v35;
  *(v0 + 9824) = 0xD000000000000014;
  *(v0 + 9832) = 0x80000001C09B2E60;
  *(v0 + 9840) = v35;
  strcpy((v0 + 9848), "common_Payment");
  *(v0 + 9863) = -18;
  *(v0 + 9864) = type metadata accessor for UsoEntity_common_Payment();
  strcpy((v0 + 9872), "common_AllDay");
  *(v0 + 9886) = -4864;
  v36 = type metadata accessor for UsoEntity_common_AllDay();
  *(v0 + 9888) = v36;
  *(v0 + 9896) = 0xD000000000000017;
  *(v0 + 9904) = 0x80000001C09B2990;
  *(v0 + 9912) = v36;
  *(v0 + 9920) = 0xD000000000000014;
  *(v0 + 9928) = 0x80000001C09B29B0;
  *(v0 + 9936) = v36;
  *(v0 + 9944) = 0xD000000000000013;
  *(v0 + 9952) = 0x80000001C09CED50;
  *(v0 + 9960) = type metadata accessor for UsoEntity_common_VoiceCommand();
  *(v0 + 9968) = 0xD000000000000011;
  *(v0 + 9976) = 0x80000001C09DF850;
  *(v0 + 9984) = type metadata accessor for UsoEntity_common_EmailLabel();
  *(v0 + 9992) = 0x435F6E6F6D6D6F63;
  *(v0 + 10000) = 0xEA00000000007261;
  *(v0 + 10008) = type metadata accessor for UsoEntity_common_Car();
  *(v0 + 10016) = 0xD000000000000014;
  *(v0 + 10024) = 0x80000001C09CEDC0;
  *(v0 + 10032) = type metadata accessor for UsoEntity_common_MixedFraction();
  *(v0 + 10040) = 0xD000000000000014;
  *(v0 + 10048) = 0x80000001C09CEDE0;
  v37 = type metadata accessor for UsoEntity_common_ReferenceType();
  *(v0 + 10056) = v37;
  *(v0 + 10064) = 0xD000000000000028;
  *(v0 + 10072) = 0x80000001C09B4AF0;
  *(v0 + 10080) = v37;
  *(v0 + 10088) = 0xD000000000000026;
  *(v0 + 10096) = 0x80000001C09B4B20;
  *(v0 + 10104) = v37;
  *(v0 + 10112) = 0xD000000000000019;
  *(v0 + 10120) = 0x80000001C09CEE00;
  v38 = type metadata accessor for UsoEntity_appleAlarm_AlarmAttribute();
  *(v0 + 10128) = v38;
  *(v0 + 10136) = 0xD00000000000002FLL;
  *(v0 + 10144) = 0x80000001C09AF830;
  *(v0 + 10152) = v38;
  *(v0 + 10160) = 0xD00000000000002ELL;
  *(v0 + 10168) = 0x80000001C09AF860;
  *(v0 + 10176) = v38;
  *(v0 + 10184) = 0xD00000000000002CLL;
  *(v0 + 10192) = 0x80000001C09AF890;
  *(v0 + 10200) = v38;
  *(v0 + 10208) = 0xD00000000000002ELL;
  *(v0 + 10216) = 0x80000001C09AF8C0;
  *(v0 + 10224) = v38;
  *(v0 + 10232) = 0xD000000000000017;
  *(v0 + 10240) = 0x80000001C09DFBA0;
  *(v0 + 10248) = type metadata accessor for UsoEntity_common_FavoriteInstance();
  *(v0 + 10256) = 0x555F6E6F6D6D6F63;
  *(v0 + 10264) = 0xEA00000000006972;
  *(v0 + 10272) = type metadata accessor for UsoEntity_common_Uri();
  *(v0 + 10280) = 0xD000000000000017;
  *(v0 + 10288) = 0x80000001C09CEE40;
  *(v0 + 10296) = type metadata accessor for UsoEntity_common_SiriSocialAction();
  *(v0 + 10304) = 0xD000000000000013;
  *(v0 + 10312) = 0x80000001C09DF910;
  *(v0 + 10320) = type metadata accessor for UsoEntity_common_MessageLabel();
  *(v0 + 10328) = 0xD000000000000017;
  *(v0 + 10336) = 0x80000001C09DF660;
  v39 = type metadata accessor for UsoEntity_common_CompletionStatus();
  *(v0 + 10344) = v39;
  *(v0 + 10352) = 0xD00000000000001FLL;
  *(v0 + 10360) = 0x80000001C09B63F0;
  *(v0 + 10368) = v39;
  *(v0 + 10376) = 0xD000000000000021;
  *(v0 + 10384) = 0x80000001C09B6410;
  *(v0 + 10392) = v39;
  *(v0 + 10400) = 0xD000000000000024;
  *(v0 + 10408) = 0x80000001C09B6440;
  *(v0 + 10416) = v39;
  *(v0 + 10424) = 0xD000000000000015;
  *(v0 + 10432) = 0x80000001C09CEE60;
  v40 = type metadata accessor for UsoEntity_common_CurrencyAmount();
  *(v0 + 10440) = v40;
  *(v0 + 10448) = 0xD000000000000024;
  *(v0 + 10456) = 0x80000001C09B5480;
  *(v0 + 10464) = v40;
  *(v0 + 10472) = 0xD00000000000001FLL;
  *(v0 + 10480) = 0x80000001C09B54B0;
  *(v0 + 10488) = v40;
  *(v0 + 10496) = 0xD000000000000024;
  *(v0 + 10504) = 0x80000001C09B54D0;
  *(v0 + 10512) = v40;
  *(v0 + 10520) = 0xD00000000000001ALL;
  *(v0 + 10528) = 0x80000001C09B5500;
  *(v0 + 10536) = v40;
  *(v0 + 10544) = 0xD000000000000026;
  *(v0 + 10552) = 0x80000001C09B5520;
  *(v0 + 10560) = v40;
  *(v0 + 10568) = 0xD000000000000020;
  *(v0 + 10576) = 0x80000001C09B5550;
  *(v0 + 10584) = v40;
  *(v0 + 10592) = 0xD000000000000014;
  *(v0 + 10600) = 0x80000001C09CEE80;
  v41 = type metadata accessor for UsoEntity_common_MediaItemType();
  *(v0 + 10608) = v41;
  *(v0 + 10616) = 0xD00000000000001ALL;
  *(v0 + 10624) = 0x80000001C09B44B0;
  *(v0 + 10632) = v41;
  *(v0 + 10640) = 0xD00000000000001BLL;
  *(v0 + 10648) = 0x80000001C09B44D0;
  *(v0 + 10656) = v41;
  *(v0 + 10664) = 0xD00000000000001ALL;
  *(v0 + 10672) = 0x80000001C09B44F0;
  *(v0 + 10680) = v41;
  *(v0 + 10688) = 0xD00000000000001DLL;
  *(v0 + 10696) = 0x80000001C09B4510;
  *(v0 + 10704) = v41;
  *(v0 + 10712) = 0xD00000000000001CLL;
  *(v0 + 10720) = 0x80000001C09B4530;
  *(v0 + 10728) = v41;
  *(v0 + 10736) = 0xD00000000000002ALL;
  *(v0 + 10744) = 0x80000001C09B4550;
  *(v0 + 10752) = v41;
  *(v0 + 10760) = 0xD00000000000001ELL;
  *(v0 + 10768) = 0x80000001C09B4580;
  *(v0 + 10776) = v41;
  *(v0 + 10784) = 0xD000000000000019;
  *(v0 + 10792) = 0x80000001C09B45A0;
  *(v0 + 10800) = v41;
  *(v0 + 10808) = 0xD000000000000020;
  *(v0 + 10816) = 0x80000001C09B45C0;
  *(v0 + 10824) = v41;
  *(v0 + 10832) = 0xD00000000000001CLL;
  *(v0 + 10840) = 0x80000001C09B45F0;
  *(v0 + 10848) = v41;
  *(v0 + 10856) = 0xD00000000000001CLL;
  *(v0 + 10864) = 0x80000001C09B4610;
  *(v0 + 10872) = v41;
  *(v0 + 10880) = 0xD00000000000001FLL;
  *(v0 + 10888) = 0x80000001C09B4630;
  *(v0 + 10896) = v41;
  *(v0 + 10904) = 0xD00000000000001ALL;
  *(v0 + 10912) = 0x80000001C09B4650;
  *(v0 + 10920) = v41;
  *(v0 + 10928) = 0xD000000000000019;
  *(v0 + 10936) = 0x80000001C09B4670;
  *(v0 + 10944) = v41;
  *(v0 + 10952) = 0xD00000000000001BLL;
  *(v0 + 10960) = 0x80000001C09B4690;
  *(v0 + 10968) = v41;
  *(v0 + 10976) = 0xD00000000000001BLL;
  *(v0 + 10984) = 0x80000001C09B46B0;
  *(v0 + 10992) = v41;
  *(v0 + 11000) = 0xD00000000000001ALL;
  *(v0 + 11008) = 0x80000001C09B46D0;
  *(v0 + 11016) = v41;
  *(v0 + 11024) = 0xD00000000000001DLL;
  *(v0 + 11032) = 0x80000001C09B46F0;
  *(v0 + 11040) = v41;
  *(v0 + 11048) = 0xD00000000000001CLL;
  *(v0 + 11056) = 0x80000001C09B4710;
  *(v0 + 11064) = v41;
  *(v0 + 11072) = 0xD00000000000001DLL;
  *(v0 + 11080) = 0x80000001C09B4730;
  *(v0 + 11088) = v41;
  *(v0 + 11096) = 0xD000000000000023;
  *(v0 + 11104) = 0x80000001C09B4750;
  *(v0 + 11112) = v41;
  *(v0 + 11120) = 0xD00000000000001CLL;
  *(v0 + 11128) = 0x80000001C09B4780;
  *(v0 + 11136) = v41;
  *(v0 + 11144) = 0xD000000000000017;
  *(v0 + 11152) = 0x80000001C09B47A0;
  *(v0 + 11160) = v41;
  *(v0 + 11168) = 0xD000000000000019;
  *(v0 + 11176) = 0x80000001C09B47C0;
  *(v0 + 11184) = v41;
  *(v0 + 11192) = 0xD000000000000021;
  *(v0 + 11200) = 0x80000001C09B47E0;
  *(v0 + 11208) = v41;
  *(v0 + 11216) = 0xD000000000000017;
  *(v0 + 11224) = 0x80000001C09B4810;
  *(v0 + 11232) = v41;
  *(v0 + 11240) = 0xD00000000000001BLL;
  *(v0 + 11248) = 0x80000001C09B4830;
  *(v0 + 11256) = v41;
  *(v0 + 11264) = 0xD000000000000025;
  *(v0 + 11272) = 0x80000001C09B4850;
  *(v0 + 11280) = v41;
  *(v0 + 11288) = 0xD00000000000001ELL;
  *(v0 + 11296) = 0x80000001C09B4880;
  *(v0 + 11304) = v41;
  *(v0 + 11312) = 0xD00000000000001CLL;
  *(v0 + 11320) = 0x80000001C09B48A0;
  *(v0 + 11328) = v41;
  *(v0 + 11336) = 0xD00000000000001ALL;
  *(v0 + 11344) = 0x80000001C09B48C0;
  *(v0 + 11352) = v41;
  *(v0 + 11360) = 0xD00000000000001BLL;
  *(v0 + 11368) = 0x80000001C09B48E0;
  *(v0 + 11376) = v41;
  *(v0 + 11384) = 0xD000000000000020;
  *(v0 + 11392) = 0x80000001C09B4900;
  *(v0 + 11400) = v41;
  *(v0 + 11408) = 0xD00000000000001ALL;
  *(v0 + 11416) = 0x80000001C09B4930;
  *(v0 + 11424) = v41;
  *(v0 + 11432) = 0xD00000000000001CLL;
  *(v0 + 11440) = 0x80000001C09B4950;
  *(v0 + 11448) = v41;
  *(v0 + 11456) = 0xD000000000000022;
  *(v0 + 11464) = 0x80000001C09B4970;
  *(v0 + 11472) = v41;
  *(v0 + 11480) = 0xD000000000000014;
  *(v0 + 11488) = 0x80000001C09DF870;
  *(v0 + 11496) = type metadata accessor for UsoEntity_common_EmailProvider();
  *(v0 + 11504) = 0xD000000000000012;
  *(v0 + 11512) = 0x80000001C09CEEA0;
  v42 = type metadata accessor for UsoEntity_common_Geolocation();
  *(v0 + 11520) = v42;
  *(v0 + 11528) = 0xD000000000000017;
  *(v0 + 11536) = 0x80000001C09B3520;
  *(v0 + 11544) = v42;
  *(v0 + 11552) = 0xD00000000000001CLL;
  *(v0 + 11560) = 0x80000001C09CEEC0;
  *(v0 + 11568) = type metadata accessor for UsoEntity_commonFindMy_DeviceAttribute();
  strcpy((v0 + 11576), "common_Contact");
  *(v0 + 11591) = -18;
  *(v0 + 11592) = type metadata accessor for UsoEntity_common_Contact();
  *(v0 + 11600) = 0xD000000000000028;
  *(v0 + 11608) = 0x80000001C09CEEE0;
  v43 = type metadata accessor for UsoEntity_commonEventTrigger_EventTriggerAttribute();
  *(v0 + 11616) = v43;
  *(v0 + 11624) = 0xD000000000000039;
  *(v0 + 11632) = 0x80000001C09B1CA0;
  *(v0 + 11640) = v43;
  *(v0 + 11648) = 0xD00000000000003BLL;
  *(v0 + 11656) = 0x80000001C09B1CE0;
  *(v0 + 11664) = v43;
  *(v0 + 11672) = 0xD00000000000003ELL;
  *(v0 + 11680) = 0x80000001C09B1D20;
  *(v0 + 11688) = v43;
  *(v0 + 11696) = 0xD00000000000003FLL;
  *(v0 + 11704) = 0x80000001C09B1D60;
  *(v0 + 11712) = v43;
  *(v0 + 11720) = 0xD00000000000002ALL;
  *(v0 + 11728) = 0x80000001C09CEF10;
  *(v0 + 11736) = type metadata accessor for UsoEntity_commonCalendarEvent_CalendarEventAttribute();
  *(v0 + 11744) = 0xD00000000000001ALL;
  *(v0 + 11752) = 0x80000001C09DE170;
  *(v0 + 11760) = type metadata accessor for UsoEntity_common_VoiceCommandPayload();
  *(v0 + 11768) = 0xD000000000000014;
  *(v0 + 11776) = 0x80000001C09DE150;
  *(v0 + 11784) = type metadata accessor for UsoEntity_common_AppEntityType();
  *(v0 + 11792) = 0xD000000000000016;
  *(v0 + 11800) = 0x80000001C09CEF40;
  *(v0 + 11808) = type metadata accessor for UsoEntity_common_PointOfInterest();
  *(v0 + 11816) = 0xD000000000000019;
  *(v0 + 11824) = 0x80000001C09CEF60;
  *(v0 + 11832) = type metadata accessor for UsoEntity_common_SocialInterjection();
  *(v0 + 11840) = 0xD000000000000014;
  *(v0 + 11848) = 0x80000001C09CEF80;
  *(v0 + 11856) = type metadata accessor for UsoEntity_common_SafetySession();
  *(v0 + 11864) = 0xD000000000000018;
  *(v0 + 11872) = 0x80000001C09CEFA0;
  *(v0 + 11880) = type metadata accessor for UsoEntity_common_KnowledgeQuestion();
  *(v0 + 11888) = 0xD00000000000001DLL;
  *(v0 + 11896) = 0x80000001C09CEFC0;
  v44 = type metadata accessor for UsoEntity_common_DateTimeRangeQualifier();
  *(v0 + 11904) = v44;
  *(v0 + 11912) = 0xD000000000000024;
  *(v0 + 11920) = 0x80000001C09B7040;
  *(v0 + 11928) = v44;
  *(v0 + 11936) = 0xD000000000000025;
  *(v0 + 11944) = 0x80000001C09B7070;
  *(v0 + 11952) = v44;
  *(v0 + 11960) = 0xD00000000000002BLL;
  *(v0 + 11968) = 0x80000001C09B70A0;
  *(v0 + 11976) = v44;
  *(v0 + 11984) = 0xD000000000000023;
  *(v0 + 11992) = 0x80000001C09B70D0;
  *(v0 + 12000) = v44;
  *(v0 + 12008) = 0xD000000000000029;
  *(v0 + 12016) = 0x80000001C09B7100;
  *(v0 + 12024) = v44;
  *(v0 + 12032) = 0xD000000000000024;
  *(v0 + 12040) = 0x80000001C09B7130;
  *(v0 + 12048) = v44;
  *(v0 + 12056) = 0xD000000000000023;
  *(v0 + 12064) = 0x80000001C09B7160;
  *(v0 + 12072) = v44;
  *(v0 + 12080) = 0xD000000000000026;
  *(v0 + 12088) = 0x80000001C09B7190;
  *(v0 + 12096) = v44;
  *(v0 + 12104) = 0xD000000000000013;
  *(v0 + 12112) = 0x80000001C09CEFE0;
  *(v0 + 12120) = type metadata accessor for UsoEntity_common_EmailAddress();
  *(v0 + 12128) = 0xD000000000000011;
  *(v0 + 12136) = 0x80000001C09CF000;
  *(v0 + 12144) = type metadata accessor for UsoEntity_common_CarProfile();
  *(v0 + 12152) = 0xD00000000000001FLL;
  *(v0 + 12160) = 0x80000001C09DFE30;
  v45 = type metadata accessor for UsoEntity_common_VoiceCommandConfirmation();
  *(v0 + 12168) = v45;
  *(v0 + 12176) = 0xD00000000000002ALL;
  *(v0 + 12184) = 0x80000001C09B71C0;
  *(v0 + 12192) = v45;
  *(v0 + 12200) = 0xD00000000000002ALL;
  *(v0 + 12208) = 0x80000001C09B71F0;
  *(v0 + 12216) = v45;
  *(v0 + 12224) = 0xD000000000000027;
  *(v0 + 12232) = 0x80000001C09B7220;
  *(v0 + 12240) = v45;
  *(v0 + 12248) = 0xD00000000000002CLL;
  *(v0 + 12256) = 0x80000001C09B7250;
  *(v0 + 12264) = v45;
  *(v0 + 12272) = 0x545F6E6F6D6D6F63;
  *(v0 + 12280) = 0xEA00000000006761;
  *(v0 + 12288) = type metadata accessor for UsoEntity_common_Tag();
  *(v0 + 12296) = 0xD000000000000020;
  *(v0 + 12304) = 0x80000001C09DF970;
  v46 = type metadata accessor for UsoEntity_common_MediaItemRelationshipType();
  *(v0 + 12312) = v46;
  *(v0 + 12320) = 0xD00000000000002CLL;
  *(v0 + 12328) = 0x80000001C09B7280;
  *(v0 + 12336) = v46;
  *(v0 + 12344) = 0xD00000000000002ALL;
  *(v0 + 12352) = 0x80000001C09B72B0;
  *(v0 + 12360) = v46;
  *(v0 + 12368) = 0xD000000000000021;
  *(v0 + 12376) = 0x80000001C09CF020;
  *(v0 + 12384) = type metadata accessor for UsoEntity_common_KnowledgeQuestionAttribute();
  *(v0 + 12392) = 0xD000000000000012;
  *(v0 + 12400) = 0x80000001C09CF050;
  *(v0 + 12408) = type metadata accessor for UsoEntity_common_Measurement();
  strcpy((v0 + 12416), "common_Compass");
  *(v0 + 12431) = -18;
  *(v0 + 12432) = type metadata accessor for UsoEntity_common_Compass();
  *(v0 + 12440) = 0x525F6E6F6D6D6F63;
  *(v0 + 12448) = 0xEF7265646E696D65;
  *(v0 + 12456) = type metadata accessor for UsoEntity_common_Reminder();
  *(v0 + 12464) = 0xD000000000000012;
  *(v0 + 12472) = 0x80000001C09DF720;
  *(v0 + 12480) = type metadata accessor for UsoEntity_common_Participant();
  *(v0 + 12488) = 0xD000000000000014;
  *(v0 + 12496) = 0x80000001C09CF0D0;
  *(v0 + 12504) = type metadata accessor for UsoEntity_common_LocalBusiness();
  *(v0 + 12512) = 0xD000000000000010;
  *(v0 + 12520) = 0x80000001C09CF0F0;
  *(v0 + 12528) = type metadata accessor for UsoEntity_common_AppAction();
  *(v0 + 12536) = 0xD000000000000013;
  *(v0 + 12544) = 0x80000001C09DF5A0;
  *(v0 + 12552) = type metadata accessor for UsoEntity_common_WorkoutClass();
  *(v0 + 12560) = 0xD000000000000013;
  *(v0 + 12568) = 0x80000001C09CF160;
  *(v0 + 12576) = type metadata accessor for UsoEntity_common_FindMyStatus();
  *(v0 + 12584) = 0xD00000000000001FLL;
  *(v0 + 12592) = 0x80000001C09CF1F0;
  v47 = type metadata accessor for UsoEntity_commonNotebook_NotebookItemType();
  *(v0 + 12600) = v47;
  *(v0 + 12608) = 0xD000000000000028;
  *(v0 + 12616) = 0x80000001C09B1A50;
  *(v0 + 12624) = v47;
  *(v0 + 12632) = 0xD000000000000024;
  *(v0 + 12640) = 0x80000001C09B1A80;
  *(v0 + 12648) = v47;
  *(v0 + 12656) = 0xD000000000000027;
  *(v0 + 12664) = 0x80000001C09B1AB0;
  *(v0 + 12672) = v47;
  *(v0 + 12680) = 0xD000000000000024;
  *(v0 + 12688) = 0x80000001C09B1AE0;
  *(v0 + 12696) = v47;
  *(v0 + 12704) = 0xD000000000000026;
  *(v0 + 12712) = 0x80000001C09B1B10;
  *(v0 + 12720) = v47;
  *(v0 + 12728) = 0xD000000000000024;
  *(v0 + 12736) = 0x80000001C09B1B40;
  *(v0 + 12744) = v47;
  *(v0 + 12752) = 0xD000000000000024;
  *(v0 + 12760) = 0x80000001C09B1B70;
  *(v0 + 12768) = v47;
  *(v0 + 12776) = 0xD000000000000019;
  *(v0 + 12784) = 0x80000001C09CF210;
  *(v0 + 12792) = type metadata accessor for UsoEntity_common_NotificationAction();
  *(v0 + 12800) = 0x4C5F6E6F6D6D6F63;
  *(v0 + 12808) = 0xEF65676175676E61;
  *(v0 + 12816) = type metadata accessor for UsoEntity_common_Language();
  *(v0 + 12824) = 0xD00000000000001BLL;
  *(v0 + 12832) = 0x80000001C09DE3C0;
  v48 = type metadata accessor for UsoEntity_common_MeasurementQualifier();
  *(v0 + 12840) = v48;
  *(v0 + 12848) = 0xD000000000000021;
  *(v0 + 12856) = 0x80000001C09B6EC0;
  *(v0 + 12864) = v48;
  *(v0 + 12872) = 0xD000000000000025;
  *(v0 + 12880) = 0x80000001C09B6EF0;
  *(v0 + 12888) = v48;
  *(v0 + 12896) = 0xD000000000000023;
  *(v0 + 12904) = 0x80000001C09B6F20;
  *(v0 + 12912) = v48;
  *(v0 + 12920) = 0xD000000000000024;
  *(v0 + 12928) = 0x80000001C09B6F50;
  *(v0 + 12936) = v48;
  *(v0 + 12944) = 0xD000000000000023;
  *(v0 + 12952) = 0x80000001C09B6F80;
  *(v0 + 12960) = v48;
  *(v0 + 12968) = 0xD000000000000023;
  *(v0 + 12976) = 0x80000001C09B6FB0;
  *(v0 + 12984) = v48;
  *(v0 + 12992) = 0xD000000000000023;
  *(v0 + 13000) = 0x80000001C09B6FE0;
  *(v0 + 13008) = v48;
  *(v0 + 13016) = 0xD000000000000021;
  *(v0 + 13024) = 0x80000001C09B7010;
  *(v0 + 13032) = v48;
  *(v0 + 13040) = 0xD000000000000016;
  *(v0 + 13048) = 0x80000001C09CF230;
  *(v0 + 13056) = type metadata accessor for UsoEntity_commonApp_AppAttribute();
  strcpy((v0 + 13064), "common_Setting");
  *(v0 + 13079) = -18;
  *(v0 + 13080) = type metadata accessor for UsoEntity_common_Setting();
  strcpy((v0 + 13088), "uso_NoEntity");
  *(v0 + 13101) = 0;
  *(v0 + 13102) = -5120;
  *(v0 + 13104) = type metadata accessor for UsoEntity_uso_NoEntity();
  *(v0 + 13112) = 0xD000000000000017;
  *(v0 + 13120) = 0x80000001C09CF2F0;
  *(v0 + 13128) = type metadata accessor for UsoEntity_common_UserSocialAction();
  strcpy((v0 + 13136), "common_Alarm");
  *(v0 + 13149) = 0;
  *(v0 + 13150) = -5120;
  *(v0 + 13152) = type metadata accessor for UsoEntity_common_Alarm();
  *(v0 + 13160) = 0xD000000000000017;
  *(v0 + 13168) = 0x80000001C09DE1D0;
  v49 = type metadata accessor for UsoEntity_common_SettingValueType();
  *(v0 + 13176) = v49;
  *(v0 + 13184) = 0xD00000000000001FLL;
  *(v0 + 13192) = 0x80000001C09B6870;
  *(v0 + 13200) = v49;
  *(v0 + 13208) = 0xD00000000000001ELL;
  *(v0 + 13216) = 0x80000001C09B6890;
  *(v0 + 13224) = v49;
  *(v0 + 13232) = 0xD000000000000013;
  *(v0 + 13240) = 0x80000001C09CF350;
  *(v0 + 13248) = type metadata accessor for UsoEntity_common_UserProperty();
  *(v0 + 13256) = 0xD000000000000017;
  *(v0 + 13264) = 0x80000001C09DFDC0;
  v50 = type metadata accessor for UsoEntity_common_ReactionCategory();
  *(v0 + 13272) = v50;
  *(v0 + 13280) = 0xD00000000000001FLL;
  *(v0 + 13288) = 0x80000001C09B67F0;
  *(v0 + 13296) = v50;
  *(v0 + 13304) = 0xD00000000000001DLL;
  *(v0 + 13312) = 0x80000001C09B6810;
  *(v0 + 13320) = v50;
  *(v0 + 13328) = 0xD00000000000001ELL;
  *(v0 + 13336) = 0x80000001C09B6830;
  *(v0 + 13344) = v50;
  *(v0 + 13352) = 0xD00000000000001FLL;
  *(v0 + 13360) = 0x80000001C09B6850;
  *(v0 + 13368) = v50;
  *(v0 + 13376) = 0xD00000000000001ALL;
  *(v0 + 13384) = 0x80000001C09DE3E0;
  v51 = type metadata accessor for UsoEntity_common_MeasurementUnitType();
  *(v0 + 13392) = v51;
  *(v0 + 13400) = 0xD000000000000025;
  *(v0 + 13408) = 0x80000001C09B6C10;
  *(v0 + 13416) = v51;
  *(v0 + 13424) = 0xD000000000000027;
  *(v0 + 13432) = 0x80000001C09B6C40;
  *(v0 + 13440) = v51;
  *(v0 + 13448) = 0xD000000000000025;
  *(v0 + 13456) = 0x80000001C09B6C70;
  *(v0 + 13464) = v51;
  *(v0 + 13472) = 0xD000000000000024;
  *(v0 + 13480) = 0x80000001C09B6CA0;
  *(v0 + 13488) = v51;
  *(v0 + 13496) = 0xD000000000000010;
  *(v0 + 13504) = 0x80000001C09CF370;
  *(v0 + 13512) = type metadata accessor for UsoEntity_common_StopWatch();
  *(v0 + 13520) = 0xD000000000000012;
  *(v0 + 13528) = 0x80000001C09DDE60;
  v52 = type metadata accessor for UsoEntity_common_MessageMode();
  *(v0 + 13536) = v52;
  *(v0 + 13544) = 0xD000000000000018;
  *(v0 + 13552) = 0x80000001C09B35C0;
  *(v0 + 13560) = v52;
  *(v0 + 13568) = 0xD000000000000017;
  *(v0 + 13576) = 0x80000001C09B35E0;
  *(v0 + 13584) = v52;
  *(v0 + 13592) = 0xD000000000000018;
  *(v0 + 13600) = 0x80000001C09B3600;
  *(v0 + 13608) = v52;
  *(v0 + 13616) = 0xD000000000000018;
  *(v0 + 13624) = 0x80000001C09B3620;
  *(v0 + 13632) = v52;
  *(v0 + 13640) = 0x4E5F6E6F6D6D6F63;
  *(v0 + 13648) = 0xEB0000000065746FLL;
  *(v0 + 13656) = type metadata accessor for UsoEntity_common_Note();
  *(v0 + 13664) = 0xD000000000000010;
  *(v0 + 13672) = 0x80000001C09CF390;
  *(v0 + 13680) = type metadata accessor for UsoEntity_common_EasterEgg();
  *(v0 + 13688) = 0xD000000000000024;
  *(v0 + 13696) = 0x80000001C09DE1F0;
  v53 = type metadata accessor for UsoEntity_commonUserEntity_UserEntityAttribute();
  *(v0 + 13704) = v53;
  *(v0 + 13712) = 0xD000000000000028;
  *(v0 + 13720) = 0x80000001C09AF7D0;
  *(v0 + 13728) = v53;
  *(v0 + 13736) = 0xD000000000000028;
  *(v0 + 13744) = 0x80000001C09AF800;
  *(v0 + 13752) = v53;
  *(v0 + 13760) = 0xD000000000000014;
  *(v0 + 13768) = 0x80000001C09CF3B0;
  *(v0 + 13776) = type metadata accessor for UsoEntity_common_CalendarEvent();
  *(v0 + 13784) = 0xD000000000000014;
  *(v0 + 13792) = 0x80000001C09CF3F0;
  *(v0 + 13800) = type metadata accessor for UsoEntity_common_DailyBriefing();
  *(v0 + 13808) = 0xD000000000000017;
  *(v0 + 13816) = 0x80000001C09DE2C0;
  v54 = type metadata accessor for UsoEntity_common_SpatialDirection();
  *(v0 + 13824) = v54;
  *(v0 + 13832) = 0xD00000000000001ALL;
  *(v0 + 13840) = 0x80000001C09B68B0;
  *(v0 + 13848) = v54;
  *(v0 + 13856) = 0xD00000000000001ELL;
  *(v0 + 13864) = 0x80000001C09B68D0;
  *(v0 + 13872) = v54;
  *(v0 + 13880) = 0xD00000000000001FLL;
  *(v0 + 13888) = 0x80000001C09B68F0;
  *(v0 + 13896) = v54;
  *(v0 + 13904) = 0xD00000000000001FLL;
  *(v0 + 13912) = 0x80000001C09B6910;
  *(v0 + 13920) = v54;
  *(v0 + 13928) = 0xD000000000000020;
  *(v0 + 13936) = 0x80000001C09B6930;
  *(v0 + 13944) = v54;
  *(v0 + 13952) = 0xD00000000000001CLL;
  *(v0 + 13960) = 0x80000001C09B6960;
  *(v0 + 13968) = v54;
  *(v0 + 13976) = 0xD000000000000021;
  *(v0 + 13984) = 0x80000001C09B6980;
  *(v0 + 13992) = v54;
  *(v0 + 14000) = 0xD000000000000010;
  *(v0 + 14008) = 0x80000001C09DFC00;
  *(v0 + 14016) = type metadata accessor for UsoEntity_common_AppIntent();
  *(v0 + 14024) = 0xD000000000000013;
  *(v0 + 14032) = 0x80000001C09DFA00;
  v55 = type metadata accessor for UsoEntity_common_ScheduleType();
  *(v0 + 14040) = v55;
  *(v0 + 14048) = 0xD00000000000001CLL;
  *(v0 + 14056) = 0x80000001C09B4040;
  *(v0 + 14064) = v55;
  *(v0 + 14072) = 0xD00000000000001DLL;
  *(v0 + 14080) = 0x80000001C09B4060;
  *(v0 + 14088) = v55;
  *(v0 + 14096) = 0xD000000000000012;
  *(v0 + 14104) = 0x80000001C09DFC80;
  v56 = type metadata accessor for UsoEntity_common_MessageType();
  *(v0 + 14112) = v56;
  *(v0 + 14120) = 0xD00000000000001FLL;
  *(v0 + 14128) = 0x80000001C09B3640;
  *(v0 + 14136) = v56;
  *(v0 + 14144) = 0xD00000000000001ELL;
  *(v0 + 14152) = 0x80000001C09B3660;
  *(v0 + 14160) = v56;
  *(v0 + 14168) = 0xD000000000000013;
  *(v0 + 14176) = 0x80000001C09CF410;
  *(v0 + 14184) = type metadata accessor for UsoEntity_common_NotebookItem();
  strcpy((v0 + 14192), "common_Writing");
  *(v0 + 14207) = -18;
  *(v0 + 14208) = type metadata accessor for UsoEntity_common_Writing();
  *(v0 + 14216) = 0xD000000000000013;
  *(v0 + 14224) = 0x80000001C09DFBC0;
  *(v0 + 14232) = type metadata accessor for UsoEntity_common_OpinionTopic();
  *(v0 + 14240) = 0x415F6E6F6D6D6F63;
  *(v0 + 14248) = 0xEA00000000006567;
  v57 = type metadata accessor for UsoEntity_common_Age();
  *(v0 + 14256) = v57;
  *(v0 + 14264) = 0xD000000000000013;
  *(v0 + 14272) = 0x80000001C09B27D0;
  *(v0 + 14280) = v57;
  *(v0 + 14288) = 0xD000000000000011;
  *(v0 + 14296) = 0x80000001C09B27F0;
  *(v0 + 14304) = v57;
  *(v0 + 14312) = 0xD000000000000015;
  *(v0 + 14320) = 0x80000001C09CF450;
  *(v0 + 14328) = type metadata accessor for UsoEntity_uso_NLv3UnknownEntity();
  *(v0 + 14336) = 0xD000000000000011;
  *(v0 + 14344) = 0x80000001C09DFD00;
  *(v0 + 14352) = type metadata accessor for UsoEntity_common_Ingredient();
  *(v0 + 14360) = 0xD000000000000010;
  *(v0 + 14368) = 0x80000001C09CF470;
  *(v0 + 14376) = type metadata accessor for UsoEntity_common_SiriAlias();
  *(v0 + 14384) = 0xD000000000000015;
  *(v0 + 14392) = 0x80000001C09CF490;
  *(v0 + 14400) = type metadata accessor for UsoEntity_common_OffsetDateTime();
  strcpy((v0 + 14408), "common_Window");
  *(v0 + 14422) = -4864;
  *(v0 + 14424) = type metadata accessor for UsoEntity_common_Window();
  strcpy((v0 + 14432), "common_Number");
  *(v0 + 14446) = -4864;
  v58 = type metadata accessor for UsoEntity_common_Number();
  *(v0 + 14448) = v58;
  *(v0 + 14456) = 0xD000000000000015;
  *(v0 + 14464) = 0x80000001C09B29D0;
  *(v0 + 14472) = v58;
  *(v0 + 14480) = 0xD000000000000014;
  *(v0 + 14488) = 0x80000001C09B29F0;
  *(v0 + 14496) = v58;
  *(v0 + 14504) = 0xD000000000000016;
  *(v0 + 14512) = 0x80000001C09B2A10;
  *(v0 + 14520) = v58;
  *(v0 + 14528) = 0xD000000000000016;
  *(v0 + 14536) = 0x80000001C09B2A30;
  *(v0 + 14544) = v58;
  *(v0 + 14552) = 0xD000000000000019;
  *(v0 + 14560) = 0x80000001C09B2A50;
  *(v0 + 14568) = v58;
  *(v0 + 14576) = 0xD000000000000015;
  *(v0 + 14584) = 0x80000001C09B2A70;
  *(v0 + 14592) = v58;
  *(v0 + 14600) = 0xD00000000000001DLL;
  *(v0 + 14608) = 0x80000001C09B2A90;
  *(v0 + 14616) = v58;
  *(v0 + 14624) = 0xD00000000000001ALL;
  *(v0 + 14632) = 0x80000001C09B2AB0;
  *(v0 + 14640) = v58;
  *(v0 + 14648) = 0xD000000000000024;
  *(v0 + 14656) = 0x80000001C09B2AD0;
  *(v0 + 14664) = v58;
  *(v0 + 14672) = 0xD00000000000001ALL;
  *(v0 + 14680) = 0x80000001C09B2B00;
  *(v0 + 14688) = v58;
  *(v0 + 14696) = 0xD000000000000019;
  *(v0 + 14704) = 0x80000001C09B2B20;
  *(v0 + 14712) = v58;
  *(v0 + 14720) = 0xD000000000000024;
  *(v0 + 14728) = 0x80000001C09B2B40;
  *(v0 + 14736) = v58;
  *(v0 + 14744) = 0xD000000000000015;
  *(v0 + 14752) = 0x80000001C09B2B70;
  *(v0 + 14760) = v58;
  *(v0 + 14768) = 0xD000000000000018;
  *(v0 + 14776) = 0x80000001C09B2B90;
  *(v0 + 14784) = v58;
  *(v0 + 14792) = 0xD00000000000001ALL;
  *(v0 + 14800) = 0x80000001C09B2BB0;
  *(v0 + 14808) = v58;
  *(v0 + 14816) = 0xD000000000000012;
  *(v0 + 14824) = 0x80000001C09DFB00;
  *(v0 + 14832) = type metadata accessor for UsoEntity_common_TapbackType();
  *(v0 + 14840) = 0xD000000000000011;
  *(v0 + 14848) = 0x80000001C09CF4B0;
  v59 = type metadata accessor for UsoEntity_common_Quantifier();
  *(v0 + 14856) = v59;
  *(v0 + 14864) = 0xD000000000000016;
  *(v0 + 14872) = 0x80000001C09B33E0;
  *(v0 + 14880) = v59;
  *(v0 + 14888) = 0xD000000000000015;
  *(v0 + 14896) = 0x80000001C09B3400;
  *(v0 + 14904) = v59;
  *(v0 + 14912) = 0xD000000000000018;
  *(v0 + 14920) = 0x80000001C09B3420;
  *(v0 + 14928) = v59;
  *(v0 + 14936) = 0xD00000000000001ALL;
  *(v0 + 14944) = 0x80000001C09B3440;
  *(v0 + 14952) = v59;
  *(v0 + 14960) = 0xD00000000000001BLL;
  *(v0 + 14968) = 0x80000001C09B3460;
  *(v0 + 14976) = v59;
  *(v0 + 14984) = 0xD000000000000016;
  *(v0 + 14992) = 0x80000001C09B3480;
  *(v0 + 15000) = v59;
  *(v0 + 15008) = 0xD000000000000015;
  *(v0 + 15016) = 0x80000001C09B34A0;
  *(v0 + 15024) = v59;
  *(v0 + 15032) = 0xD000000000000016;
  *(v0 + 15040) = 0x80000001C09B34C0;
  *(v0 + 15048) = v59;
  *(v0 + 15056) = 0x535F6E6F6D6D6F63;
  *(v0 + 15064) = 0xEB00000000657A69;
  *(v0 + 15072) = type metadata accessor for UsoEntity_common_Size();
  *(v0 + 15080) = 0xD000000000000012;
  *(v0 + 15088) = 0x80000001C09CF4D0;
  *(v0 + 15096) = type metadata accessor for UsoEntity_common_Translation();
  strcpy((v0 + 15104), "common_Locale");
  *(v0 + 15118) = -4864;
  *(v0 + 15120) = type metadata accessor for UsoEntity_common_Locale();
  *(v0 + 15128) = 0x415F6E6F6D6D6F63;
  *(v0 + 15136) = 0xEF65726E65477070;
  *(v0 + 15144) = type metadata accessor for UsoEntity_common_AppGenre();
  *(v0 + 15152) = 0xD000000000000011;
  *(v0 + 15160) = 0x80000001C09DF680;
  active = type metadata accessor for UsoEntity_common_ActiveType();
  *(v0 + 15168) = active;
  *(v0 + 15176) = 0xD000000000000018;
  *(v0 + 15184) = 0x80000001C09B3220;
  *(v0 + 15192) = active;
  *(v0 + 15200) = 0xD00000000000001BLL;
  *(v0 + 15208) = 0x80000001C09B3240;
  *(v0 + 15216) = active;
  *(v0 + 15224) = 0xD00000000000001ALL;
  *(v0 + 15232) = 0x80000001C09B3260;
  *(v0 + 15240) = active;
  *(v0 + 15248) = 0xD000000000000012;
  *(v0 + 15256) = 0x80000001C09DF890;
  *(v0 + 15264) = type metadata accessor for UsoEntity_common_EmailFolder();
  *(v0 + 15272) = 0xD000000000000015;
  *(v0 + 15280) = 0x80000001C09DF6E0;
  v61 = type metadata accessor for UsoEntity_common_RequiredStatus();
  *(v0 + 15288) = v61;
  *(v0 + 15296) = 0xD00000000000001ELL;
  *(v0 + 15304) = 0x80000001C09B55C0;
  *(v0 + 15312) = v61;
  *(v0 + 15320) = 0xD00000000000001ELL;
  *(v0 + 15328) = 0x80000001C09B55E0;
  *(v0 + 15336) = v61;
  *(v0 + 15344) = 0x445F6E6F6D6D6F63;
  *(v0 + 15352) = 0xEF65707954657461;
  v62 = type metadata accessor for UsoEntity_common_DateType();
  *(v0 + 15360) = v62;
  *(v0 + 15368) = 0xD000000000000017;
  *(v0 + 15376) = 0x80000001C09B2DC0;
  *(v0 + 15384) = v62;
  *(v0 + 15392) = 0xD00000000000001BLL;
  *(v0 + 15400) = 0x80000001C09B2DE0;
  *(v0 + 15408) = v62;
  *(v0 + 15416) = 0xD000000000000011;
  *(v0 + 15424) = 0x80000001C09CF570;
  *(v0 + 15432) = type metadata accessor for UsoEntity_common_OffsetTime();
  *(v0 + 15440) = 0xD000000000000010;
  *(v0 + 15448) = 0x80000001C09CF590;
  *(v0 + 15456) = type metadata accessor for UsoEntity_common_MediaItem();
  *(v0 + 15464) = 0x4D5F6E6F6D6D6F63;
  *(v0 + 15472) = 0xEF6D656964697265;
  v63 = type metadata accessor for UsoEntity_common_Meridiem();
  *(v0 + 15480) = v63;
  *(v0 + 15488) = 0xD000000000000012;
  *(v0 + 15496) = 0x80000001C09B2E80;
  *(v0 + 15504) = v63;
  *(v0 + 15512) = 0xD000000000000012;
  *(v0 + 15520) = 0x80000001C09B2EA0;
  *(v0 + 15528) = v63;
  *(v0 + 15536) = 0xD00000000000001FLL;
  *(v0 + 15544) = 0x80000001C09CF740;
  v64 = type metadata accessor for UsoEntity_appleNotebook_NotebookAttribute();
  *(v0 + 15552) = v64;
  *(v0 + 15560) = 0xD00000000000003CLL;
  *(v0 + 15568) = 0x80000001C09B0E00;
  *(v0 + 15576) = v64;
  *(v0 + 15584) = 0xD00000000000003BLL;
  *(v0 + 15592) = 0x80000001C09B0E40;
  *(v0 + 15600) = v64;
  *(v0 + 15608) = 0xD000000000000033;
  *(v0 + 15616) = 0x80000001C09B0E80;
  *(v0 + 15624) = v64;
  *(v0 + 15632) = 0xD00000000000003ALL;
  *(v0 + 15640) = 0x80000001C09B0EC0;
  *(v0 + 15648) = v64;
  *(v0 + 15656) = 0xD000000000000038;
  *(v0 + 15664) = 0x80000001C09B0F00;
  *(v0 + 15672) = v64;
  *(v0 + 15680) = 0xD00000000000003ALL;
  *(v0 + 15688) = 0x80000001C09B0F40;
  *(v0 + 15696) = v64;
  *(v0 + 15704) = 0xD000000000000035;
  *(v0 + 15712) = 0x80000001C09B0F80;
  *(v0 + 15720) = v64;
  *(v0 + 15728) = 0xD000000000000039;
  *(v0 + 15736) = 0x80000001C09B0FC0;
  *(v0 + 15744) = v64;
  *(v0 + 15752) = 0xD000000000000038;
  *(v0 + 15760) = 0x80000001C09B1000;
  *(v0 + 15768) = v64;
  *(v0 + 15776) = 0xD000000000000038;
  *(v0 + 15784) = 0x80000001C09B1040;
  *(v0 + 15792) = v64;
  *(v0 + 15800) = 0xD000000000000034;
  *(v0 + 15808) = 0x80000001C09B1080;
  *(v0 + 15816) = v64;
  *(v0 + 15824) = 0xD00000000000003CLL;
  *(v0 + 15832) = 0x80000001C09B10C0;
  *(v0 + 15840) = v64;
  *(v0 + 15848) = 0xD000000000000038;
  *(v0 + 15856) = 0x80000001C09B1100;
  *(v0 + 15864) = v64;
  *(v0 + 15872) = 0xD000000000000038;
  *(v0 + 15880) = 0x80000001C09B1140;
  *(v0 + 15888) = v64;
  *(v0 + 15896) = 0xD000000000000036;
  *(v0 + 15904) = 0x80000001C09B1180;
  *(v0 + 15912) = v64;
  *(v0 + 15920) = 0xD000000000000039;
  *(v0 + 15928) = 0x80000001C09B11C0;
  *(v0 + 15936) = v64;
  *(v0 + 15944) = 0xD000000000000037;
  *(v0 + 15952) = 0x80000001C09B1200;
  *(v0 + 15960) = v64;
  *(v0 + 15968) = 0xD00000000000003ALL;
  *(v0 + 15976) = 0x80000001C09B1240;
  *(v0 + 15984) = v64;
  *(v0 + 15992) = 0xD000000000000032;
  *(v0 + 16000) = 0x80000001C09B1280;
  *(v0 + 16008) = v64;
  *(v0 + 16016) = 0xD000000000000036;
  *(v0 + 16024) = 0x80000001C09B12C0;
  *(v0 + 16032) = v64;
  *(v0 + 16040) = 0xD000000000000039;
  *(v0 + 16048) = 0x80000001C09B1300;
  *(v0 + 16056) = v64;
  *(v0 + 16064) = 0xD00000000000003CLL;
  *(v0 + 16072) = 0x80000001C09B1340;
  *(v0 + 16080) = v64;
  *(v0 + 16088) = 0xD00000000000003ALL;
  *(v0 + 16096) = 0x80000001C09B1380;
  *(v0 + 16104) = v64;
  *(v0 + 16112) = 0xD00000000000003CLL;
  *(v0 + 16120) = 0x80000001C09B13C0;
  *(v0 + 16128) = v64;
  *(v0 + 16136) = 0xD000000000000034;
  *(v0 + 16144) = 0x80000001C09B1400;
  *(v0 + 16152) = v64;
  *(v0 + 16160) = 0xD000000000000036;
  *(v0 + 16168) = 0x80000001C09B1440;
  *(v0 + 16176) = v64;
  *(v0 + 16184) = 0xD00000000000002FLL;
  *(v0 + 16192) = 0x80000001C09B1480;
  *(v0 + 16200) = v64;
  *(v0 + 16208) = 0xD000000000000038;
  *(v0 + 16216) = 0x80000001C09B14B0;
  *(v0 + 16224) = v64;
  *(v0 + 16232) = 0xD000000000000039;
  *(v0 + 16240) = 0x80000001C09B14F0;
  *(v0 + 16248) = v64;
  *(v0 + 16256) = 0xD00000000000003BLL;
  *(v0 + 16264) = 0x80000001C09B1530;
  *(v0 + 16272) = v64;
  *(v0 + 16280) = 0xD00000000000003ALL;
  *(v0 + 16288) = 0x80000001C09B1570;
  *(v0 + 16296) = v64;
  *(v0 + 16304) = 0xD000000000000037;
  *(v0 + 16312) = 0x80000001C09B15B0;
  *(v0 + 16320) = v64;
  *(v0 + 16328) = 0xD000000000000037;
  *(v0 + 16336) = 0x80000001C09B15F0;
  *(v0 + 16344) = v64;
  *(v0 + 16352) = 0xD00000000000003CLL;
  *(v0 + 16360) = 0x80000001C09B1630;
  *(v0 + 16368) = v64;
  strcpy((v0 + 16376), "common_QRCode");
  *(v0 + 16390) = -4864;
  *(v0 + 16392) = type metadata accessor for UsoEntity_common_QRCode();
  *(v0 + 16400) = 0xD000000000000019;
  *(v0 + 16408) = 0x80000001C09CF760;
  v65 = type metadata accessor for UsoEntity_appleEmail_EmailAttribute();
  *(v0 + 16416) = v65;
  *(v0 + 16424) = 0xD00000000000002CLL;
  *(v0 + 16432) = 0x80000001C09AF8F0;
  *(v0 + 16440) = v65;
  *(v0 + 16448) = 0xD000000000000030;
  *(v0 + 16456) = 0x80000001C09AF920;
  *(v0 + 16464) = v65;
  *(v0 + 16472) = 0xD00000000000002DLL;
  *(v0 + 16480) = 0x80000001C09AF960;
  *(v0 + 16488) = v65;
  *(v0 + 16496) = 0xD000000000000031;
  *(v0 + 16504) = 0x80000001C09AF990;
  *(v0 + 16512) = v65;
  *(v0 + 16520) = 0xD00000000000002FLL;
  *(v0 + 16528) = 0x80000001C09AF9D0;
  *(v0 + 16536) = v65;
  *(v0 + 16544) = 0xD000000000000030;
  *(v0 + 16552) = 0x80000001C09AFA00;
  *(v0 + 16560) = v65;
  *(v0 + 16568) = 0xD00000000000002FLL;
  *(v0 + 16576) = 0x80000001C09AFA40;
  *(v0 + 16584) = v65;
  *(v0 + 16592) = 0xD000000000000033;
  *(v0 + 16600) = 0x80000001C09AFA70;
  *(v0 + 16608) = v65;
  *(v0 + 16616) = 0xD00000000000002DLL;
  *(v0 + 16624) = 0x80000001C09AFAB0;
  *(v0 + 16632) = v65;
  *(v0 + 16640) = 0xD00000000000002ELL;
  *(v0 + 16648) = 0x80000001C09AFAE0;
  *(v0 + 16656) = v65;
  *(v0 + 16664) = 0xD000000000000030;
  *(v0 + 16672) = 0x80000001C09AFB10;
  *(v0 + 16680) = v65;
  *(v0 + 16688) = 0xD000000000000012;
  *(v0 + 16696) = 0x80000001C09CF780;
  *(v0 + 16704) = type metadata accessor for UsoEntity_common_UserProfile();
  *(v0 + 16712) = 0x415F6E6F6D6D6F63;
  *(v0 + 16720) = 0xEF65746174537070;
  v66 = type metadata accessor for UsoEntity_common_AppState();
  *(v0 + 16728) = v66;
  *(v0 + 16736) = 0xD000000000000019;
  *(v0 + 16744) = 0x80000001C09B2D60;
  *(v0 + 16752) = v66;
  *(v0 + 16760) = 0xD000000000000017;
  *(v0 + 16768) = 0x80000001C09B2D80;
  *(v0 + 16776) = v66;
  *(v0 + 16784) = 0xD000000000000014;
  *(v0 + 16792) = 0x80000001C09CF7A0;
  *(v0 + 16800) = type metadata accessor for UsoEntity_common_Communication();
  *(v0 + 16808) = 0xD000000000000012;
  *(v0 + 16816) = 0x80000001C09CF7C0;
  *(v0 + 16824) = type metadata accessor for UsoEntity_common_DigitalFace();
  *(v0 + 16832) = 0xD000000000000014;
  *(v0 + 16840) = 0x80000001C09DF580;
  v67 = type metadata accessor for UsoEntity_common_PlaybackState();
  *(v0 + 16848) = v67;
  *(v0 + 16856) = 0xD00000000000001CLL;
  *(v0 + 16864) = 0x80000001C09B4A40;
  *(v0 + 16872) = v67;
  *(v0 + 16880) = 0xD00000000000001BLL;
  *(v0 + 16888) = 0x80000001C09B4A60;
  *(v0 + 16896) = v67;
  *(v0 + 16904) = 0xD00000000000001CLL;
  *(v0 + 16912) = 0x80000001C09B4A80;
  *(v0 + 16920) = v67;
  *(v0 + 16928) = 0xD000000000000020;
  *(v0 + 16936) = 0x80000001C09B4AA0;
  *(v0 + 16944) = v67;
  *(v0 + 16952) = 0xD00000000000001CLL;
  *(v0 + 16960) = 0x80000001C09B4AD0;
  *(v0 + 16968) = v67;
  *(v0 + 16976) = 0xD000000000000027;
  *(v0 + 16984) = 0x80000001C09CF7E0;
  v68 = type metadata accessor for UsoEntity_appleNotification_NotificationAttribute();
  *(v0 + 16992) = v68;
  *(v0 + 17000) = 0xD000000000000044;
  *(v0 + 17008) = 0x80000001C09B1C50;
  *(v0 + 17016) = v68;
  strcpy((v0 + 17024), "common_Device");
  *(v0 + 17038) = -4864;
  *(v0 + 17040) = type metadata accessor for UsoEntity_common_Device();
  *(v0 + 17048) = 0xD000000000000018;
  *(v0 + 17056) = 0x80000001C09DF7A0;
  v69 = type metadata accessor for UsoEntity_common_CalendarEventType();
  *(v0 + 17064) = v69;
  *(v0 + 17072) = 0xD000000000000021;
  *(v0 + 17080) = 0x80000001C09B69B0;
  *(v0 + 17088) = v69;
  *(v0 + 17096) = 0xD000000000000020;
  *(v0 + 17104) = 0x80000001C09B69E0;
  *(v0 + 17112) = v69;
  *(v0 + 17120) = 0xD000000000000024;
  *(v0 + 17128) = 0x80000001C09B6A10;
  *(v0 + 17136) = v69;
  *(v0 + 17144) = 0xD00000000000001ELL;
  *(v0 + 17152) = 0x80000001C09B6A40;
  *(v0 + 17160) = v69;
  *(v0 + 17168) = 0xD000000000000014;
  *(v0 + 17176) = 0x80000001C09CF810;
  *(v0 + 17184) = type metadata accessor for UsoEntity_common_HolidayPhrase();
  *(v0 + 17192) = 0xD000000000000017;
  *(v0 + 17200) = 0x80000001C09DF740;
  v70 = type metadata accessor for UsoEntity_common_MediaCaptureMode();
  *(v0 + 17208) = v70;
  *(v0 + 17216) = 0xD000000000000022;
  *(v0 + 17224) = 0x80000001C09B6470;
  *(v0 + 17232) = v70;
  *(v0 + 17240) = 0xD000000000000024;
  *(v0 + 17248) = 0x80000001C09B64A0;
  *(v0 + 17256) = v70;
  *(v0 + 17264) = 0xD00000000000001DLL;
  *(v0 + 17272) = 0x80000001C09B64D0;
  *(v0 + 17280) = v70;
  *(v0 + 17288) = 0xD00000000000001ELL;
  *(v0 + 17296) = 0x80000001C09B64F0;
  *(v0 + 17304) = v70;
  *(v0 + 17312) = 0xD00000000000001DLL;
  *(v0 + 17320) = 0x80000001C09B6510;
  *(v0 + 17328) = v70;
  *(v0 + 17336) = 0xD000000000000024;
  *(v0 + 17344) = 0x80000001C09B6530;
  *(v0 + 17352) = v70;
  *(v0 + 17360) = 0xD000000000000026;
  *(v0 + 17368) = 0x80000001C09B6560;
  *(v0 + 17376) = v70;
  *(v0 + 17384) = 0xD000000000000027;
  *(v0 + 17392) = 0x80000001C09B6590;
  *(v0 + 17400) = v70;
  *(v0 + 17408) = 0xD000000000000013;
  *(v0 + 17416) = 0x80000001C09CF830;
  *(v0 + 17424) = type metadata accessor for UsoEntity_common_Announcement();
  *(v0 + 17432) = 0xD00000000000001DLL;
  *(v0 + 17440) = 0x80000001C09DFCE0;
  *(v0 + 17448) = type metadata accessor for UsoEntity_common_IngredientSubstitution();
  *(v0 + 17456) = 0xD000000000000015;
  *(v0 + 17464) = 0x80000001C09CF850;
  v71 = type metadata accessor for UsoEntity_common_GeographicArea();
  *(v0 + 17472) = v71;
  *(v0 + 17480) = 0xD00000000000001CLL;
  *(v0 + 17488) = 0x80000001C09B5580;
  *(v0 + 17496) = v71;
  *(v0 + 17504) = 0xD00000000000001ALL;
  *(v0 + 17512) = 0x80000001C09B55A0;
  *(v0 + 17520) = v71;
  strcpy((v0 + 17528), "common_Agent");
  *(v0 + 17541) = 0;
  *(v0 + 17542) = -5120;
  v72 = type metadata accessor for UsoEntity_common_Agent();
  *(v0 + 17544) = v72;
  *(v0 + 17552) = 0xD000000000000019;
  *(v0 + 17560) = 0x80000001C09B2970;
  *(v0 + 17568) = v72;
  *(v0 + 17576) = 0xD000000000000010;
  *(v0 + 17584) = 0x80000001C09DE420;
  v73 = type metadata accessor for UsoEntity_common_RadioBand();
  *(v0 + 17592) = v73;
  *(v0 + 17600) = 0xD000000000000013;
  *(v0 + 17608) = 0x80000001C09B3140;
  *(v0 + 17616) = v73;
  *(v0 + 17624) = 0xD000000000000013;
  *(v0 + 17632) = 0x80000001C09B3160;
  *(v0 + 17640) = v73;
  *(v0 + 17648) = 0xD000000000000013;
  *(v0 + 17656) = 0x80000001C09B3180;
  *(v0 + 17664) = v73;
  *(v0 + 17672) = 0xD000000000000013;
  *(v0 + 17680) = 0x80000001C09B31A0;
  *(v0 + 17688) = v73;
  *(v0 + 17696) = 0xD000000000000014;
  *(v0 + 17704) = 0x80000001C09B31C0;
  *(v0 + 17712) = v73;
  *(v0 + 17720) = 0xD000000000000011;
  *(v0 + 17728) = 0x80000001C09CF890;
  *(v0 + 17736) = type metadata accessor for UsoEntity_common_RecipeStep();
  *(v0 + 17744) = 0xD00000000000001ALL;
  *(v0 + 17752) = 0x80000001C09CF8D0;
  *(v0 + 17760) = type metadata accessor for UsoEntity_common_MicroGeographicArea();
  *(v0 + 17768) = 0xD000000000000015;
  *(v0 + 17776) = 0x80000001C09CF8F0;
  v74 = type metadata accessor for UsoEntity_commonStock_StockType();
  *(v0 + 17784) = v74;
  *(v0 + 17792) = 0xD00000000000001BLL;
  *(v0 + 17800) = 0x80000001C09AFDE0;
  *(v0 + 17808) = v74;
  *(v0 + 17816) = 0xD000000000000021;
  *(v0 + 17824) = 0x80000001C09AFE00;
  *(v0 + 17832) = v74;
  *(v0 + 17840) = 0xD000000000000016;
  *(v0 + 17848) = 0x80000001C09DFC20;
  *(v0 + 17856) = type metadata accessor for UsoEntity_common_FormattedString();
  *(v0 + 17864) = 0xD000000000000015;
  *(v0 + 17872) = 0x80000001C09CF910;
  *(v0 + 17880) = type metadata accessor for UsoEntity_common_UserPossession();
  *(v0 + 17888) = 0xD000000000000017;
  *(v0 + 17896) = 0x80000001C09DFAA0;
  *(v0 + 17904) = type metadata accessor for UsoEntity_common_SiriContentTopic();
  *(v0 + 17912) = 0xD000000000000014;
  *(v0 + 17920) = 0x80000001C09DE340;
  v75 = type metadata accessor for UsoEntity_common_ZoomDirection();
  *(v0 + 17928) = v75;
  *(v0 + 17936) = 0xD00000000000001BLL;
  *(v0 + 17944) = 0x80000001C09B4D60;
  *(v0 + 17952) = v75;
  *(v0 + 17960) = 0xD000000000000023;
  *(v0 + 17968) = 0x80000001C09B4D80;
  *(v0 + 17976) = v75;
  *(v0 + 17984) = 0xD00000000000001CLL;
  *(v0 + 17992) = 0x80000001C09B4DB0;
  *(v0 + 18000) = v75;
  *(v0 + 18008) = 0xD00000000000001ELL;
  *(v0 + 18016) = 0x80000001C09B4DD0;
  *(v0 + 18024) = v75;
  *(v0 + 18032) = 0xD000000000000012;
  *(v0 + 18040) = 0x80000001C09CF930;
  *(v0 + 18048) = type metadata accessor for UsoEntity_common_CalendarEra();
  *(v0 + 18056) = 0xD000000000000016;
  *(v0 + 18064) = 0x80000001C09CF950;
  *(v0 + 18072) = type metadata accessor for UsoEntity_common_Time12HourClock();
  *(v0 + 18080) = 0xD000000000000023;
  *(v0 + 18088) = 0x80000001C09CF970;
  v76 = type metadata accessor for UsoEntity_appleArithmetic_ArithmeticAttribute();
  *(v0 + 18096) = v76;
  *(v0 + 18104) = 0xD000000000000042;
  *(v0 + 18112) = 0x80000001C09B1BA0;
  *(v0 + 18120) = v76;
  *(v0 + 18128) = 0xD000000000000015;
  *(v0 + 18136) = 0x80000001C09CF9A0;
  *(v0 + 18144) = type metadata accessor for UsoEntity_common_PaymentAccount();
  *(v0 + 18152) = 0xD00000000000001ELL;
  *(v0 + 18160) = 0x80000001C09CF9E0;
  *(v0 + 18168) = type metadata accessor for UsoEntity_commonWriting_WritingAttribute();
  *(v0 + 18176) = 0xD000000000000011;
  *(v0 + 18184) = 0x80000001C09CFA00;
  *(v0 + 18192) = type metadata accessor for UsoEntity_common_Arithmetic();
  *(v0 + 18200) = 0xD000000000000013;
  *(v0 + 18208) = 0x80000001C09CFA20;
  *(v0 + 18216) = type metadata accessor for UsoEntity_common_UserFavorite();
  *(v0 + 18224) = 0xD000000000000013;
  *(v0 + 18232) = 0x80000001C09CFAA0;
  *(v0 + 18240) = type metadata accessor for UsoEntity_common_SiriFavorite();
  *(v0 + 18248) = 0xD000000000000016;
  *(v0 + 18256) = 0x80000001C09CFAC0;
  *(v0 + 18264) = type metadata accessor for UsoEntity_common_Time24HourClock();
  *(v0 + 18272) = 0x415F6E6F6D6D6F63;
  *(v0 + 18280) = 0xEA00000000007070;
  *(v0 + 18288) = type metadata accessor for UsoEntity_common_App();
  *(v0 + 18296) = 0xD000000000000019;
  *(v0 + 18304) = 0x80000001C09CFBA0;
  v77 = type metadata accessor for UsoEntity_appleTimer_TimerAttribute();
  *(v0 + 18312) = v77;
  *(v0 + 18320) = 0xD00000000000002DLL;
  *(v0 + 18328) = 0x80000001C09AFB50;
  *(v0 + 18336) = v77;
  *(v0 + 18344) = 0xD000000000000030;
  *(v0 + 18352) = 0x80000001C09AFB80;
  *(v0 + 18360) = v77;
  *(v0 + 18368) = 0xD000000000000028;
  *(v0 + 18376) = 0x80000001C09AFBC0;
  *(v0 + 18384) = v77;
  *(v0 + 18392) = 0xD00000000000002FLL;
  *(v0 + 18400) = 0x80000001C09AFBF0;
  *(v0 + 18408) = v77;
  *(v0 + 18416) = 0xD00000000000002CLL;
  *(v0 + 18424) = 0x80000001C09AFC20;
  *(v0 + 18432) = v77;
  *(v0 + 18440) = 0xD00000000000002BLL;
  *(v0 + 18448) = 0x80000001C09AFC50;
  *(v0 + 18456) = v77;
  *(v0 + 18464) = 0xD000000000000020;
  *(v0 + 18472) = 0x80000001C09CFBC0;
  *(v0 + 18480) = type metadata accessor for UsoEntity_commonNotebook_NotebookAttribute();
  strcpy((v0 + 18488), "common_Integer");
  *(v0 + 18503) = -18;
  *(v0 + 18504) = type metadata accessor for UsoEntity_common_Integer();
  strcpy((v0 + 18512), "common_Recipe");
  *(v0 + 18526) = -4864;
  *(v0 + 18528) = type metadata accessor for UsoEntity_common_Recipe();
  *(v0 + 18536) = 0xD000000000000013;
  *(v0 + 18544) = 0x80000001C09CFC70;
  v78 = type metadata accessor for UsoEntity_common_ListPosition();
  *(v0 + 18552) = v78;
  *(v0 + 18560) = 0xD00000000000001ALL;
  *(v0 + 18568) = 0x80000001C09B39D0;
  *(v0 + 18576) = v78;
  *(v0 + 18584) = 0xD00000000000001ALL;
  *(v0 + 18592) = 0x80000001C09B39F0;
  *(v0 + 18600) = v78;
  *(v0 + 18608) = 0xD00000000000001DLL;
  *(v0 + 18616) = 0x80000001C09B3A10;
  *(v0 + 18624) = v78;
  *(v0 + 18632) = 0xD000000000000020;
  *(v0 + 18640) = 0x80000001C09B3A30;
  *(v0 + 18648) = v78;
  *(v0 + 18656) = 0xD00000000000001FLL;
  *(v0 + 18664) = 0x80000001C09B3A60;
  *(v0 + 18672) = v78;
  *(v0 + 18680) = 0xD00000000000001ALL;
  *(v0 + 18688) = 0x80000001C09B3A80;
  *(v0 + 18696) = v78;
  *(v0 + 18704) = 0xD00000000000001FLL;
  *(v0 + 18712) = 0x80000001C09B3AA0;
  *(v0 + 18720) = v78;
  *(v0 + 18728) = 0xD000000000000019;
  *(v0 + 18736) = 0x80000001C09B3AC0;
  *(v0 + 18744) = v78;
  *(v0 + 18752) = 0xD00000000000001ELL;
  *(v0 + 18760) = 0x80000001C09B3AE0;
  *(v0 + 18768) = v78;
  *(v0 + 18776) = 0xD00000000000001FLL;
  *(v0 + 18784) = 0x80000001C09B3B00;
  *(v0 + 18792) = v78;
  *(v0 + 18800) = 0xD000000000000019;
  *(v0 + 18808) = 0x80000001C09B3B20;
  *(v0 + 18816) = v78;
  *(v0 + 18824) = 0xD00000000000001CLL;
  *(v0 + 18832) = 0x80000001C09B3B40;
  *(v0 + 18840) = v78;
  *(v0 + 18848) = 0xD000000000000017;
  *(v0 + 18856) = 0x80000001C09B3B60;
  *(v0 + 18864) = v78;
  *(v0 + 18872) = 0xD00000000000001ELL;
  *(v0 + 18880) = 0x80000001C09B3B80;
  *(v0 + 18888) = v78;
  *(v0 + 18896) = 0xD000000000000020;
  *(v0 + 18904) = 0x80000001C09B3BA0;
  *(v0 + 18912) = v78;
  *(v0 + 18920) = 0xD00000000000001FLL;
  *(v0 + 18928) = 0x80000001C09B3BD0;
  *(v0 + 18936) = v78;
  *(v0 + 18944) = 0xD00000000000001ALL;
  *(v0 + 18952) = 0x80000001C09B3BF0;
  *(v0 + 18960) = v78;
  *(v0 + 18968) = 0xD00000000000001ELL;
  *(v0 + 18976) = 0x80000001C09B3C10;
  *(v0 + 18984) = v78;
  *(v0 + 18992) = 0xD000000000000018;
  *(v0 + 19000) = 0x80000001C09B3C30;
  *(v0 + 19008) = v78;
  *(v0 + 19016) = 0xD000000000000020;
  *(v0 + 19024) = 0x80000001C09B3C50;
  *(v0 + 19032) = v78;
  *(v0 + 19040) = 0xD00000000000001CLL;
  *(v0 + 19048) = 0x80000001C09B3C80;
  *(v0 + 19056) = v78;
  *(v0 + 19064) = 0xD00000000000001DLL;
  *(v0 + 19072) = 0x80000001C09B3CA0;
  *(v0 + 19080) = v78;
  *(v0 + 19088) = 0xD00000000000001BLL;
  *(v0 + 19096) = 0x80000001C09B3CC0;
  *(v0 + 19104) = v78;
  *(v0 + 19112) = 0xD00000000000001DLL;
  *(v0 + 19120) = 0x80000001C09B3CE0;
  *(v0 + 19128) = v78;
  *(v0 + 19136) = 0xD000000000000019;
  *(v0 + 19144) = 0x80000001C09B3D00;
  *(v0 + 19152) = v78;
  *(v0 + 19160) = 0xD00000000000001DLL;
  *(v0 + 19168) = 0x80000001C09B3D20;
  *(v0 + 19176) = v78;
  *(v0 + 19184) = 0xD000000000000019;
  *(v0 + 19192) = 0x80000001C09B3D40;
  *(v0 + 19200) = v78;
  *(v0 + 19208) = 0xD00000000000001BLL;
  *(v0 + 19216) = 0x80000001C09B3D60;
  *(v0 + 19224) = v78;
  *(v0 + 19232) = 0xD00000000000001ELL;
  *(v0 + 19240) = 0x80000001C09B3D80;
  *(v0 + 19248) = v78;
  *(v0 + 19256) = 0xD00000000000001FLL;
  *(v0 + 19264) = 0x80000001C09B3DA0;
  *(v0 + 19272) = v78;
  *(v0 + 19280) = 0xD00000000000001BLL;
  *(v0 + 19288) = 0x80000001C09B3DC0;
  *(v0 + 19296) = v78;
  *(v0 + 19304) = 0xD000000000000019;
  *(v0 + 19312) = 0x80000001C09B3DE0;
  *(v0 + 19320) = v78;
  *(v0 + 19328) = 0xD000000000000018;
  *(v0 + 19336) = 0x80000001C09B3E00;
  *(v0 + 19344) = v78;
  *(v0 + 19352) = 0xD000000000000019;
  *(v0 + 19360) = 0x80000001C09B3E20;
  *(v0 + 19368) = v78;
  *(v0 + 19376) = 0xD000000000000021;
  *(v0 + 19384) = 0x80000001C09CFC90;
  v79 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
  *(v0 + 19392) = v79;
  *(v0 + 19400) = 0xD00000000000003BLL;
  *(v0 + 19408) = 0x80000001C09B16D0;
  *(v0 + 19416) = v79;
  *(v0 + 19424) = 0xD000000000000038;
  *(v0 + 19432) = 0x80000001C09B1710;
  *(v0 + 19440) = v79;
  *(v0 + 19448) = 0xD00000000000003DLL;
  *(v0 + 19456) = 0x80000001C09B1750;
  *(v0 + 19464) = v79;
  *(v0 + 19472) = 0xD000000000000038;
  *(v0 + 19480) = 0x80000001C09B1790;
  *(v0 + 19488) = v79;
  *(v0 + 19496) = 0xD000000000000039;
  *(v0 + 19504) = 0x80000001C09B17D0;
  *(v0 + 19512) = v79;
  *(v0 + 19520) = 0xD00000000000003BLL;
  *(v0 + 19528) = 0x80000001C09B1810;
  *(v0 + 19536) = v79;
  *(v0 + 19544) = 0xD00000000000003CLL;
  *(v0 + 19552) = 0x80000001C09B1850;
  *(v0 + 19560) = v79;
  *(v0 + 19568) = 0xD00000000000003CLL;
  *(v0 + 19576) = 0x80000001C09B1890;
  *(v0 + 19584) = v79;
  *(v0 + 19592) = 0xD00000000000003ELL;
  *(v0 + 19600) = 0x80000001C09B18D0;
  *(v0 + 19608) = v79;
  *(v0 + 19616) = 0xD00000000000003DLL;
  *(v0 + 19624) = 0x80000001C09B1910;
  *(v0 + 19632) = v79;
  *(v0 + 19640) = 0xD00000000000003CLL;
  *(v0 + 19648) = 0x80000001C09B1950;
  *(v0 + 19656) = v79;
  *(v0 + 19664) = 0xD00000000000003DLL;
  *(v0 + 19672) = 0x80000001C09B1990;
  *(v0 + 19680) = v79;
  *(v0 + 19688) = 0xD00000000000003BLL;
  *(v0 + 19696) = 0x80000001C09B19D0;
  *(v0 + 19704) = v79;
  *(v0 + 19712) = 0xD000000000000038;
  *(v0 + 19720) = 0x80000001C09B1A10;
  *(v0 + 19728) = v79;
  *(v0 + 19736) = 0x435F6E6F6D6D6F63;
  *(v0 + 19744) = 0xEF7261646E656C61;
  *(v0 + 19752) = type metadata accessor for UsoEntity_common_Calendar();
  *(v0 + 19760) = 0xD000000000000010;
  *(v0 + 19768) = 0x80000001C09CFCC0;
  *(v0 + 19776) = type metadata accessor for UsoEntity_common_HealthLog();
  *(v0 + 19784) = 0xD00000000000001ALL;
  *(v0 + 19792) = 0x80000001C09CFD10;
  *(v0 + 19800) = type metadata accessor for UsoEntity_commonEmail_EmailAttribute();
  *(v0 + 19808) = 0xD000000000000013;
  *(v0 + 19816) = 0x80000001C09CFD30;
  *(v0 + 19824) = type metadata accessor for UsoEntity_common_Notification();
  *(v0 + 19832) = 0xD00000000000001BLL;
  *(v0 + 19840) = 0x80000001C09CFD50;
  *(v0 + 19848) = type metadata accessor for UsoEntity_common_MeasurementComponent();
  *(v0 + 19856) = 0xD000000000000013;
  *(v0 + 19864) = 0x80000001C09CFD70;
  *(v0 + 19872) = type metadata accessor for UsoEntity_common_SiriProperty();
  *(v0 + 19880) = 0xD000000000000019;
  *(v0 + 19888) = 0x80000001C09CFD90;
  *(v0 + 19896) = type metadata accessor for UsoEntity_common_PaymentAccountType();
  *(v0 + 19904) = 0xD000000000000010;
  *(v0 + 19912) = 0x80000001C09DF810;
  v80 = type metadata accessor for UsoEntity_common_SortOrder();
  *(v0 + 19920) = v80;
  *(v0 + 19928) = 0xD00000000000001BLL;
  *(v0 + 19936) = 0x80000001C09B31E0;
  *(v0 + 19944) = v80;
  *(v0 + 19952) = 0xD00000000000001ALL;
  *(v0 + 19960) = 0x80000001C09B3200;
  *(v0 + 19968) = v80;
  *(v0 + 19976) = 0xD000000000000012;
  *(v0 + 19984) = 0x80000001C09CFDB0;
  *(v0 + 19992) = type metadata accessor for UsoEntity_common_PhotoMemory();
  *(v0 + 20000) = 0xD000000000000015;
  *(v0 + 20008) = 0x80000001C09CFDF0;
  *(v0 + 20016) = type metadata accessor for UsoEntity_common_NavigationMenu();
  *(v0 + 20024) = 0xD000000000000011;
  *(v0 + 20032) = 0x80000001C09CFE30;
  *(v0 + 20040) = type metadata accessor for UsoEntity_common_Medication();
  *(v0 + 20048) = 0xD000000000000010;
  *(v0 + 20056) = 0x80000001C09CFE50;
  v81 = type metadata accessor for UsoEntity_common_DayOfWeek();
  *(v0 + 20064) = v81;
  *(v0 + 20072) = 0xD000000000000019;
  *(v0 + 20080) = 0x80000001C09B3060;
  *(v0 + 20088) = v81;
  *(v0 + 20096) = 0xD00000000000001ALL;
  *(v0 + 20104) = 0x80000001C09B3080;
  *(v0 + 20112) = v81;
  *(v0 + 20120) = 0xD000000000000019;
  *(v0 + 20128) = 0x80000001C09B30A0;
  *(v0 + 20136) = v81;
  *(v0 + 20144) = 0xD000000000000017;
  *(v0 + 20152) = 0x80000001C09B30C0;
  *(v0 + 20160) = v81;
  *(v0 + 20168) = 0xD000000000000017;
  *(v0 + 20176) = 0x80000001C09B30E0;
  *(v0 + 20184) = v81;
  *(v0 + 20192) = 0xD000000000000018;
  *(v0 + 20200) = 0x80000001C09B3100;
  *(v0 + 20208) = v81;
  *(v0 + 20216) = 0xD000000000000017;
  *(v0 + 20224) = 0x80000001C09B3120;
  *(v0 + 20232) = v81;
  *(v0 + 20240) = 0x435F6E6F6D6D6F63;
  *(v0 + 20248) = 0xEF79636E65727275;
  *(v0 + 20256) = type metadata accessor for UsoEntity_common_Currency();
  *(v0 + 20264) = 0xD000000000000015;
  *(v0 + 20272) = 0x80000001C09CFE70;
  v82 = type metadata accessor for UsoEntity_common_AttachmentType();
  *(v0 + 20280) = v82;
  *(v0 + 20288) = 0xD00000000000001DLL;
  *(v0 + 20296) = 0x80000001C09B4E70;
  *(v0 + 20304) = v82;
  *(v0 + 20312) = 0xD00000000000001DLL;
  *(v0 + 20320) = 0x80000001C09B4E90;
  *(v0 + 20328) = v82;
  *(v0 + 20336) = 0xD00000000000001CLL;
  *(v0 + 20344) = 0x80000001C09B4EB0;
  *(v0 + 20352) = v82;
  *(v0 + 20360) = 0xD000000000000019;
  *(v0 + 20368) = 0x80000001C09B4ED0;
  *(v0 + 20376) = v82;
  *(v0 + 20384) = 0xD00000000000001BLL;
  *(v0 + 20392) = 0x80000001C09B4EF0;
  *(v0 + 20400) = v82;
  *(v0 + 20408) = 0xD00000000000001CLL;
  *(v0 + 20416) = 0x80000001C09B4F10;
  *(v0 + 20424) = v82;
  *(v0 + 20432) = 0xD00000000000001ALL;
  *(v0 + 20440) = 0x80000001C09B4F30;
  *(v0 + 20448) = v82;
  *(v0 + 20456) = 0xD000000000000022;
  *(v0 + 20464) = 0x80000001C09B4F50;
  *(v0 + 20472) = v82;
  *(v0 + 20480) = 0xD00000000000001DLL;
  *(v0 + 20488) = 0x80000001C09B4F80;
  *(v0 + 20496) = v82;
  *(v0 + 20504) = 0xD000000000000020;
  *(v0 + 20512) = 0x80000001C09B4FA0;
  *(v0 + 20520) = v82;
  *(v0 + 20528) = 0xD000000000000021;
  *(v0 + 20536) = 0x80000001C09B4FD0;
  *(v0 + 20544) = v82;
  *(v0 + 20552) = 0xD00000000000001ELL;
  *(v0 + 20560) = 0x80000001C09B5000;
  *(v0 + 20568) = v82;
  *(v0 + 20576) = 0xD000000000000020;
  *(v0 + 20584) = 0x80000001C09B5020;
  *(v0 + 20592) = v82;
  *(v0 + 20600) = 0xD00000000000001ELL;
  *(v0 + 20608) = 0x80000001C09B5050;
  *(v0 + 20616) = v82;
  *(v0 + 20624) = 0xD000000000000020;
  *(v0 + 20632) = 0x80000001C09B5070;
  *(v0 + 20640) = v82;
  *(v0 + 20648) = 0xD00000000000001DLL;
  *(v0 + 20656) = 0x80000001C09B50A0;
  *(v0 + 20664) = v82;
  *(v0 + 20672) = 0xD000000000000022;
  *(v0 + 20680) = 0x80000001C09B50C0;
  *(v0 + 20688) = v82;
  *(v0 + 20696) = 0xD00000000000001ELL;
  *(v0 + 20704) = 0x80000001C09B50F0;
  *(v0 + 20712) = v82;
  *(v0 + 20720) = 0xD00000000000001BLL;
  *(v0 + 20728) = 0x80000001C09B5110;
  *(v0 + 20736) = v82;
  *(v0 + 20744) = 0xD00000000000001ALL;
  *(v0 + 20752) = 0x80000001C09B5130;
  *(v0 + 20760) = v82;
  *(v0 + 20768) = 0xD00000000000001ELL;
  *(v0 + 20776) = 0x80000001C09B5150;
  *(v0 + 20784) = v82;
  *(v0 + 20792) = 0xD000000000000026;
  *(v0 + 20800) = 0x80000001C09B5170;
  *(v0 + 20808) = v82;
  *(v0 + 20816) = 0xD000000000000023;
  *(v0 + 20824) = 0x80000001C09B51A0;
  *(v0 + 20832) = v82;
  *(v0 + 20840) = 0xD000000000000024;
  *(v0 + 20848) = 0x80000001C09B51D0;
  *(v0 + 20856) = v82;
  *(v0 + 20864) = 0xD000000000000019;
  *(v0 + 20872) = 0x80000001C09B5200;
  *(v0 + 20880) = v82;
  *(v0 + 20888) = 0xD00000000000001BLL;
  *(v0 + 20896) = 0x80000001C09B5220;
  *(v0 + 20904) = v82;
  *(v0 + 20912) = 0xD00000000000001ELL;
  *(v0 + 20920) = 0x80000001C09B5240;
  *(v0 + 20928) = v82;
  *(v0 + 20936) = 0xD00000000000001ALL;
  *(v0 + 20944) = 0x80000001C09B5260;
  *(v0 + 20952) = v82;
  *(v0 + 20960) = 0xD00000000000001BLL;
  *(v0 + 20968) = 0x80000001C09B5280;
  *(v0 + 20976) = v82;
  *(v0 + 20984) = 0xD000000000000022;
  *(v0 + 20992) = 0x80000001C09B52A0;
  *(v0 + 21000) = v82;
  *(v0 + 21008) = 0xD00000000000001ALL;
  *(v0 + 21016) = 0x80000001C09B52D0;
  *(v0 + 21024) = v82;
  *(v0 + 21032) = 0xD00000000000001ALL;
  *(v0 + 21040) = 0x80000001C09B52F0;
  *(v0 + 21048) = v82;
  *(v0 + 21056) = 0xD00000000000001BLL;
  *(v0 + 21064) = 0x80000001C09B5310;
  *(v0 + 21072) = v82;
  *(v0 + 21080) = 0xD000000000000019;
  *(v0 + 21088) = 0x80000001C09B5330;
  *(v0 + 21096) = v82;
  *(v0 + 21104) = 0xD00000000000001ELL;
  *(v0 + 21112) = 0x80000001C09B5350;
  *(v0 + 21120) = v82;
  *(v0 + 21128) = 0xD00000000000001DLL;
  *(v0 + 21136) = 0x80000001C09B5370;
  *(v0 + 21144) = v82;
  *(v0 + 21152) = 0xD00000000000001BLL;
  *(v0 + 21160) = 0x80000001C09B5390;
  *(v0 + 21168) = v82;
  *(v0 + 21176) = 0xD00000000000001BLL;
  *(v0 + 21184) = 0x80000001C09B53B0;
  *(v0 + 21192) = v82;
  *(v0 + 21200) = 0xD00000000000001ALL;
  *(v0 + 21208) = 0x80000001C09B53D0;
  *(v0 + 21216) = v82;
  *(v0 + 21224) = 0xD00000000000001CLL;
  *(v0 + 21232) = 0x80000001C09B53F0;
  *(v0 + 21240) = v82;
  *(v0 + 21248) = 0xD00000000000001DLL;
  *(v0 + 21256) = 0x80000001C09B5410;
  *(v0 + 21264) = v82;
  *(v0 + 21272) = 0xD00000000000001DLL;
  *(v0 + 21280) = 0x80000001C09B5430;
  *(v0 + 21288) = v82;
  *(v0 + 21296) = 0xD000000000000022;
  *(v0 + 21304) = 0x80000001C09B5450;
  *(v0 + 21312) = v82;
  strcpy((v0 + 21320), "common_Website");
  *(v0 + 21335) = -18;
  *(v0 + 21336) = type metadata accessor for UsoEntity_common_Website();
  *(v0 + 21344) = 0xD000000000000013;
  *(v0 + 21352) = 0x80000001C09CFE90;
  *(v0 + 21360) = type metadata accessor for UsoEntity_common_JournalEntry();
  strcpy((v0 + 21368), "common_Decimal");
  *(v0 + 21383) = -18;
  v83 = type metadata accessor for UsoEntity_common_Decimal();
  *(v0 + 21384) = v83;
  *(v0 + 21392) = 0xD000000000000016;
  *(v0 + 21400) = 0x80000001C09B2D40;
  *(v0 + 21408) = v83;
  *(v0 + 21416) = 0xD000000000000019;
  *(v0 + 21424) = 0x80000001C09CFEB0;
  *(v0 + 21432) = type metadata accessor for UsoEntity_common_SocialConversation();
  *(v0 + 21440) = 0xD000000000000014;
  *(v0 + 21448) = 0x80000001C09DF950;
  *(v0 + 21456) = type metadata accessor for UsoEntity_common_MessageFolder();
  strcpy((v0 + 21464), "common_Person");
  *(v0 + 21478) = -4864;
  v84 = type metadata accessor for UsoEntity_common_Person();
  *(v0 + 21480) = v84;
  *(v0 + 21488) = 0xD000000000000012;
  *(v0 + 21496) = 0x80000001C09B2CF0;
  *(v0 + 21504) = v84;
  *(v0 + 21512) = 0xD000000000000011;
  *(v0 + 21520) = 0x80000001C09CFF30;
  v85 = type metadata accessor for UsoEntity_common_Similarity();
  *(v0 + 21528) = v85;
  *(v0 + 21536) = 0xD00000000000001BLL;
  *(v0 + 21544) = 0x80000001C09B34E0;
  *(v0 + 21552) = v85;
  *(v0 + 21560) = 0xD00000000000001FLL;
  *(v0 + 21568) = 0x80000001C09B3500;
  *(v0 + 21576) = v85;
  *(v0 + 21584) = 0xD000000000000017;
  *(v0 + 21592) = 0x80000001C09DE1B0;
  *(v0 + 21600) = type metadata accessor for UsoEntity_common_NotificationType();
  *(v0 + 21608) = 0xD000000000000011;
  *(v0 + 21616) = 0x80000001C09CFF50;
  *(v0 + 21624) = type metadata accessor for UsoEntity_common_HomeEntity();
  *(v0 + 21632) = 0xD000000000000017;
  *(v0 + 21640) = 0x80000001C09DDFB0;
  *(v0 + 21648) = type metadata accessor for UsoEntity_common_SearchObjectType();
  *(v0 + 21656) = 0xD000000000000015;
  *(v0 + 21664) = 0x80000001C09CFF70;
  *(v0 + 21672) = type metadata accessor for UsoEntity_common_CalendarSystem();
  *(v0 + 21680) = 0xD000000000000027;
  *(v0 + 21688) = 0x80000001C09CFF90;
  *(v0 + 21696) = type metadata accessor for UsoEntity_common_KnowledgeQuestionPersonAttribute();
  *(v0 + 21704) = 0xD000000000000013;
  *(v0 + 21712) = 0x80000001C09CFFE0;
  *(v0 + 21720) = type metadata accessor for UsoEntity_common_RadioStation();
  *(v0 + 21728) = 0xD00000000000001DLL;
  *(v0 + 21736) = 0x80000001C09D0040;
  *(v0 + 21744) = type metadata accessor for UsoEntity_commonApp_AppListingAttribute();
  *(v0 + 21752) = 0x575F6E6F6D6D6F63;
  *(v0 + 21760) = 0xEB0000000064726FLL;
  *(v0 + 21768) = type metadata accessor for UsoEntity_common_Word();
  strcpy((v0 + 21776), "common_Group");
  *(v0 + 21789) = 0;
  *(v0 + 21790) = -5120;
  *(v0 + 21792) = type metadata accessor for UsoEntity_common_Group();
  *(v0 + 21800) = 0xD000000000000016;
  *(v0 + 21808) = 0x80000001C09D0060;
  v86 = type metadata accessor for UsoEntity_common_TemperatureUnit();
  *(v0 + 21816) = v86;
  *(v0 + 21824) = 0xD00000000000001ELL;
  *(v0 + 21832) = 0x80000001C09B6370;
  *(v0 + 21840) = v86;
  *(v0 + 21848) = 0xD000000000000025;
  *(v0 + 21856) = 0x80000001C09B6390;
  *(v0 + 21864) = v86;
  *(v0 + 21872) = 0xD000000000000028;
  *(v0 + 21880) = 0x80000001C09B63C0;
  *(v0 + 21888) = v86;
  *(v0 + 21896) = 0xD00000000000001CLL;
  *(v0 + 21904) = 0x80000001C09D0080;
  v87 = type metadata accessor for UsoEntity_commonStock_StockChangeState();
  *(v0 + 21912) = v87;
  *(v0 + 21920) = 0xD000000000000026;
  *(v0 + 21928) = 0x80000001C09AFD20;
  *(v0 + 21936) = v87;
  *(v0 + 21944) = 0xD000000000000027;
  *(v0 + 21952) = 0x80000001C09AFD50;
  *(v0 + 21960) = v87;
  *(v0 + 21968) = 0xD000000000000021;
  *(v0 + 21976) = 0x80000001C09AFD80;
  *(v0 + 21984) = v87;
  *(v0 + 21992) = 0xD000000000000023;
  *(v0 + 22000) = 0x80000001C09AFDB0;
  *(v0 + 22008) = v87;
  *(v0 + 22016) = 0xD000000000000016;
  *(v0 + 22024) = 0x80000001C09DFAC0;
  *(v0 + 22032) = type metadata accessor for UsoEntity_common_SiriContentType();
  *(v0 + 22040) = 0xD000000000000011;
  *(v0 + 22048) = 0x80000001C09D00A0;
  *(v0 + 22056) = type metadata accessor for UsoEntity_common_Attachment();
  *(v0 + 22064) = 0xD000000000000017;
  *(v0 + 22072) = 0x80000001C09DE3A0;
  v88 = type metadata accessor for UsoEntity_common_MediaItemVersion();
  *(v0 + 22080) = v88;
  *(v0 + 22088) = 0xD00000000000001ELL;
  *(v0 + 22096) = 0x80000001C09B65C0;
  *(v0 + 22104) = v88;
  *(v0 + 22112) = 0xD00000000000001FLL;
  *(v0 + 22120) = 0x80000001C09B65E0;
  *(v0 + 22128) = v88;
  *(v0 + 22136) = 0xD00000000000001DLL;
  *(v0 + 22144) = 0x80000001C09B6600;
  *(v0 + 22152) = v88;
  *(v0 + 22160) = 0xD00000000000001CLL;
  *(v0 + 22168) = 0x80000001C09B6620;
  *(v0 + 22176) = v88;
  *(v0 + 22184) = 0xD000000000000020;
  *(v0 + 22192) = 0x80000001C09B6640;
  *(v0 + 22200) = v88;
  *(v0 + 22208) = 0xD000000000000021;
  *(v0 + 22216) = 0x80000001C09B6670;
  *(v0 + 22224) = v88;
  *(v0 + 22232) = 0xD00000000000001ALL;
  *(v0 + 22240) = 0x80000001C09B66A0;
  *(v0 + 22248) = v88;
  *(v0 + 22256) = 0xD000000000000024;
  *(v0 + 22264) = 0x80000001C09B66C0;
  *(v0 + 22272) = v88;
  *(v0 + 22280) = 0xD000000000000020;
  *(v0 + 22288) = 0x80000001C09B66F0;
  *(v0 + 22296) = v88;
  *(v0 + 22304) = 0xD000000000000020;
  *(v0 + 22312) = 0x80000001C09B6720;
  *(v0 + 22320) = v88;
  *(v0 + 22328) = 0xD000000000000021;
  *(v0 + 22336) = 0x80000001C09B6750;
  *(v0 + 22344) = v88;
  *(v0 + 22352) = 0xD00000000000001DLL;
  *(v0 + 22360) = 0x80000001C09B6780;
  *(v0 + 22368) = v88;
  *(v0 + 22376) = 0xD00000000000001ELL;
  *(v0 + 22384) = 0x80000001C09B67A0;
  *(v0 + 22392) = v88;
  *(v0 + 22400) = 0xD000000000000022;
  *(v0 + 22408) = 0x80000001C09B67C0;
  *(v0 + 22416) = v88;
  *(v0 + 22424) = 0xD000000000000014;
  *(v0 + 22432) = 0x80000001C09D00C0;
  *(v0 + 22440) = type metadata accessor for UsoEntity_common_PostalAddress();
  *(v0 + 22448) = 0xD000000000000018;
  *(v0 + 22456) = 0x80000001C09DF540;
  v89 = type metadata accessor for UsoEntity_common_CollaborationMode();
  *(v0 + 22464) = v89;
  *(v0 + 22472) = 0xD000000000000021;
  *(v0 + 22480) = 0x80000001C09B6A60;
  *(v0 + 22488) = v89;
  *(v0 + 22496) = 0xD000000000000021;
  *(v0 + 22504) = 0x80000001C09B6A90;
  *(v0 + 22512) = v89;
  *(v0 + 22520) = 0xD000000000000020;
  *(v0 + 22528) = 0x80000001C09B6AC0;
  *(v0 + 22536) = v89;
  *(v0 + 22544) = 0xD000000000000021;
  *(v0 + 22552) = 0x80000001C09B6AF0;
  *(v0 + 22560) = v89;
  *(v0 + 22568) = 0xD000000000000022;
  *(v0 + 22576) = 0x80000001C09B6B20;
  *(v0 + 22584) = v89;
  *(v0 + 22592) = 0xD000000000000024;
  *(v0 + 22600) = 0x80000001C09B6B50;
  *(v0 + 22608) = v89;
  *(v0 + 22616) = 0xD000000000000010;
  *(v0 + 22624) = 0x80000001C09DF7F0;
  *(v0 + 22632) = type metadata accessor for UsoEntity_common_SortValue();
  *(v0 + 22640) = 0x545F6E6F6D6D6F63;
  *(v0 + 22648) = 0xEB00000000656D69;
  v90 = type metadata accessor for UsoEntity_common_Time();
  *(v0 + 22656) = v90;
  *(v0 + 22664) = 0xD000000000000012;
  *(v0 + 22672) = 0x80000001C09B28D0;
  *(v0 + 22680) = v90;
  *(v0 + 22688) = 0xD000000000000010;
  *(v0 + 22696) = 0x80000001C09B28F0;
  *(v0 + 22704) = v90;
  *(v0 + 22712) = 0xD000000000000014;
  *(v0 + 22720) = 0x80000001C09B2910;
  *(v0 + 22728) = v90;
  *(v0 + 22736) = 0xD000000000000013;
  *(v0 + 22744) = 0x80000001C09B2930;
  *(v0 + 22752) = v90;
  *(v0 + 22760) = 0xD000000000000017;
  *(v0 + 22768) = 0x80000001C09B2950;
  *(v0 + 22776) = v90;
  *(v0 + 22784) = 0xD000000000000013;
  *(v0 + 22792) = 0x80000001C09D00E0;
  *(v0 + 22800) = type metadata accessor for UsoEntity_common_NotebookList();
  v91 = sub_1C058B624(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19088, &qword_1C0982088);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ED5DA968 = v91;
  return result;
}

uint64_t sub_1C064CEEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19060, &qword_1C0982058);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0978EC0;
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000001C09DE2A0;
  sub_1C066B248();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C096E0C0;
  v2 = type metadata accessor for UsoEntity_common_AdjustmentDirection();
  *(v1 + 32) = v2;
  v3 = v2;
  v59 = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x80000001C09CDBA0;
  sub_1C066B248();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0C0;
  v5 = type metadata accessor for UsoEntity_common_MeasurementComponent();
  *(v4 + 32) = v5;
  v6 = v5;
  v61 = v5;
  *(v0 + 72) = v4;
  *(v0 + 80) = 0xD00000000000001DLL;
  *(v0 + 88) = 0x80000001C09CDBE0;
  sub_1C066B248();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0C0;
  *(v7 + 32) = type metadata accessor for UsoEntity_commonContact_ContactAttribute();
  *(v0 + 96) = v7;
  *(v0 + 104) = 0xD00000000000001BLL;
  *(v0 + 112) = 0x80000001C09CDC80;
  sub_1C066B248();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C096E0C0;
  *(v8 + 32) = v6;
  *(v0 + 120) = v8;
  *(v0 + 128) = 0xD000000000000010;
  *(v0 + 136) = 0x80000001C09CDCC0;
  sub_1C066B248();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C096E0C0;
  v10 = type metadata accessor for UsoEntity_common_Communication();
  *(v9 + 32) = v10;
  *(v0 + 144) = v9;
  *(v0 + 152) = 0xD00000000000001DLL;
  *(v0 + 160) = 0x80000001C09CDD80;
  sub_1C066B248();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C096E0C0;
  *(v11 + 32) = type metadata accessor for UsoEntity_common_DateTimeRange();
  *(v0 + 168) = v11;
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x80000001C09CDFB0;
  sub_1C066B248();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C096E0C0;
  v63 = type metadata accessor for UsoEntity_common_ContactAddress();
  *(v12 + 32) = v63;
  *(v0 + 192) = v12;
  *(v0 + 200) = 0xD00000000000001DLL;
  *(v0 + 208) = 0x80000001C09CDFD0;
  sub_1C066B248();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C096E0C0;
  *(v13 + 32) = type metadata accessor for UsoEntity_commonMessage_MessageAttribute();
  *(v0 + 216) = v13;
  strcpy((v0 + 224), "common_Stock");
  *(v0 + 237) = 0;
  *(v0 + 238) = -5120;
  sub_1C066B248();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C096E0D0;
  v15 = type metadata accessor for UsoEntity_common_Agent();
  *(v14 + 32) = v15;
  v60 = type metadata accessor for UsoEntity_common_Organization();
  *(v14 + 40) = v60;
  *(v0 + 240) = v14;
  *(v0 + 248) = 0xD000000000000010;
  *(v0 + 256) = 0x80000001C09CE0D0;
  sub_1C066B248();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C096E0C0;
  *(v16 + 32) = v10;
  *(v0 + 264) = v16;
  *(v0 + 272) = 0xD00000000000001DLL;
  *(v0 + 280) = 0x80000001C09CE400;
  sub_1C066B248();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C096E0C0;
  *(v17 + 32) = type metadata accessor for UsoEntity_commonWriting_WritingAttribute();
  *(v0 + 288) = v17;
  strcpy((v0 + 296), "common_Email");
  *(v0 + 309) = 0;
  *(v0 + 310) = -5120;
  sub_1C066B248();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C096E0C0;
  *(v18 + 32) = v10;
  *(v0 + 312) = v18;
  *(v0 + 320) = 0xD000000000000014;
  *(v0 + 328) = 0x80000001C09DE2E0;
  sub_1C066B248();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C096E0C0;
  *(v19 + 32) = v3;
  *(v0 + 336) = v19;
  *(v0 + 344) = 0xD000000000000013;
  *(v0 + 352) = 0x80000001C09CE7A0;
  sub_1C066B248();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C096E0C0;
  *(v20 + 32) = v15;
  *(v0 + 360) = v20;
  *(v0 + 368) = 0xD000000000000017;
  *(v0 + 376) = 0x80000001C09CE7F0;
  sub_1C066B248();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C096E0C0;
  v22 = type metadata accessor for UsoEntity_common_Number();
  *(v21 + 32) = v22;
  *(v0 + 384) = v21;
  *(v0 + 392) = 0xD000000000000011;
  *(v0 + 400) = 0x80000001C09CE840;
  sub_1C066B248();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C096E0C0;
  *(v23 + 32) = type metadata accessor for UsoEntity_common_Setting();
  *(v0 + 408) = v23;
  *(v0 + 416) = 0x545F6E6F6D6D6F63;
  *(v0 + 424) = 0xEF74696E55656D69;
  sub_1C066B248();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C096E0C0;
  v62 = type metadata accessor for UsoEntity_common_MeasurementUnit();
  *(v24 + 32) = v62;
  *(v0 + 432) = v24;
  strcpy((v0 + 440), "common_Message");
  *(v0 + 455) = -18;
  sub_1C066B248();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C096E0C0;
  *(v25 + 32) = v10;
  *(v0 + 456) = v25;
  *(v0 + 464) = 0xD000000000000011;
  *(v0 + 472) = 0x80000001C09CEC30;
  sub_1C066B248();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C096E0C0;
  *(v26 + 32) = type metadata accessor for UsoEntity_common_Date();
  *(v0 + 480) = v26;
  *(v0 + 488) = 0x445F6E6F6D6D6F63;
  *(v0 + 496) = 0xEF6E6F6974617275;
  sub_1C066B248();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C096E0C0;
  *(v27 + 32) = type metadata accessor for UsoEntity_common_Measurement();
  *(v0 + 504) = v27;
  *(v0 + 512) = 0x435F6E6F6D6D6F63;
  *(v0 + 520) = 0xEA00000000007261;
  sub_1C066B248();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C096E0D0;
  *(v28 + 32) = type metadata accessor for UsoEntity_common_Device();
  *(v28 + 40) = type metadata accessor for UsoEntity_common_UserEntity();
  *(v0 + 528) = v28;
  *(v0 + 536) = 0xD000000000000014;
  *(v0 + 544) = 0x80000001C09CEDC0;
  sub_1C066B248();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C096E0C0;
  *(v29 + 32) = v22;
  *(v0 + 552) = v29;
  *(v0 + 560) = 0xD000000000000019;
  *(v0 + 568) = 0x80000001C09CEE00;
  sub_1C066B248();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C096E0C0;
  *(v30 + 32) = type metadata accessor for UsoEntity_commonAlarm_AlarmAttribute();
  *(v0 + 576) = v30;
  *(v0 + 584) = 0x555F6E6F6D6D6F63;
  *(v0 + 592) = 0xEA00000000006972;
  sub_1C066B248();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C096E0C0;
  *(v31 + 32) = v63;
  *(v0 + 600) = v31;
  *(v0 + 608) = 0xD000000000000013;
  *(v0 + 616) = 0x80000001C09CEFE0;
  sub_1C066B248();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C096E0C0;
  *(v32 + 32) = v63;
  *(v0 + 624) = v32;
  *(v0 + 632) = 0xD000000000000014;
  *(v0 + 640) = 0x80000001C09CF0D0;
  sub_1C066B248();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C0971210;
  *(v33 + 32) = type metadata accessor for UsoEntity_common_PointOfInterest();
  *(v33 + 40) = v15;
  *(v33 + 48) = v60;
  *(v0 + 648) = v33;
  *(v0 + 656) = 0xD000000000000014;
  *(v0 + 664) = 0x80000001C09CF3B0;
  sub_1C066B248();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C096E0C0;
  *(v34 + 32) = type metadata accessor for UsoEntity_common_Event();
  *(v0 + 672) = v34;
  *(v0 + 680) = 0xD000000000000017;
  *(v0 + 688) = 0x80000001C09DE2C0;
  sub_1C066B248();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C096E0C0;
  *(v35 + 32) = v59;
  *(v0 + 696) = v35;
  *(v0 + 704) = 0x415F6E6F6D6D6F63;
  *(v0 + 712) = 0xEA00000000006567;
  sub_1C066B248();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C096E0D0;
  *(v36 + 32) = type metadata accessor for UsoEntity_common_DurationComponent();
  *(v36 + 40) = v61;
  *(v0 + 720) = v36;
  *(v0 + 728) = 0xD000000000000015;
  *(v0 + 736) = 0x80000001C09CF490;
  sub_1C066B248();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C096E0C0;
  *(v37 + 32) = type metadata accessor for UsoEntity_common_DateTime();
  *(v0 + 744) = v37;
  *(v0 + 752) = 0xD000000000000011;
  *(v0 + 760) = 0x80000001C09CF570;
  sub_1C066B248();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C096E0C0;
  v39 = type metadata accessor for UsoEntity_common_Time();
  *(v38 + 32) = v39;
  *(v0 + 768) = v38;
  *(v0 + 776) = 0xD00000000000001FLL;
  *(v0 + 784) = 0x80000001C09CF740;
  sub_1C066B248();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C096E0C0;
  *(v40 + 32) = type metadata accessor for UsoEntity_commonNotebook_NotebookAttribute();
  *(v0 + 792) = v40;
  *(v0 + 800) = 0xD000000000000019;
  *(v0 + 808) = 0x80000001C09CF760;
  sub_1C066B248();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C096E0C0;
  *(v41 + 32) = type metadata accessor for UsoEntity_commonEmail_EmailAttribute();
  *(v0 + 816) = v41;
  *(v0 + 824) = 0xD000000000000027;
  *(v0 + 832) = 0x80000001C09CF7E0;
  sub_1C066B248();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C096E0C0;
  *(v42 + 32) = type metadata accessor for UsoEntity_commonNotification_NotificationAttribute();
  *(v0 + 840) = v42;
  *(v0 + 848) = 0xD00000000000001ALL;
  *(v0 + 856) = 0x80000001C09CF8D0;
  sub_1C066B248();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C096E0C0;
  *(v43 + 32) = type metadata accessor for UsoEntity_common_GeographicArea();
  *(v0 + 864) = v43;
  *(v0 + 872) = 0xD000000000000014;
  *(v0 + 880) = 0x80000001C09DE340;
  sub_1C066B248();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C096E0C0;
  *(v44 + 32) = v59;
  *(v0 + 888) = v44;
  *(v0 + 896) = 0xD000000000000016;
  *(v0 + 904) = 0x80000001C09CF950;
  sub_1C066B248();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C096E0C0;
  *(v45 + 32) = v39;
  *(v0 + 912) = v45;
  *(v0 + 920) = 0xD000000000000023;
  *(v0 + 928) = 0x80000001C09CF970;
  sub_1C066B248();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C096E0C0;
  *(v46 + 32) = type metadata accessor for UsoEntity_commonArithmetic_ArithmeticAttribute();
  *(v0 + 936) = v46;
  *(v0 + 944) = 0xD000000000000016;
  *(v0 + 952) = 0x80000001C09CFAC0;
  sub_1C066B248();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C096E0C0;
  *(v47 + 32) = v39;
  *(v0 + 960) = v47;
  *(v0 + 968) = 0xD000000000000019;
  *(v0 + 976) = 0x80000001C09CFBA0;
  sub_1C066B248();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C096E0C0;
  *(v48 + 32) = type metadata accessor for UsoEntity_commonTimer_TimerAttribute();
  *(v0 + 984) = v48;
  strcpy((v0 + 992), "common_Integer");
  *(v0 + 1007) = -18;
  sub_1C066B248();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C096E0C0;
  *(v49 + 32) = v22;
  *(v0 + 1008) = v49;
  *(v0 + 1016) = 0xD000000000000021;
  *(v0 + 1024) = 0x80000001C09CFC90;
  sub_1C066B248();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C096E0C0;
  *(v50 + 32) = type metadata accessor for UsoEntity_commonPhoneCall_PhoneCallAttribute();
  *(v0 + 1032) = v50;
  strcpy((v0 + 1040), "common_Decimal");
  *(v0 + 1055) = -18;
  sub_1C066B248();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C096E0C0;
  *(v51 + 32) = v22;
  *(v0 + 1056) = v51;
  strcpy((v0 + 1064), "common_Person");
  *(v0 + 1078) = -4864;
  sub_1C066B248();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C096E0C0;
  *(v52 + 32) = v15;
  *(v0 + 1080) = v52;
  *(v0 + 1088) = 0xD000000000000027;
  *(v0 + 1096) = 0x80000001C09CFF90;
  sub_1C066B248();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C096E0C0;
  *(v53 + 32) = type metadata accessor for UsoEntity_common_KnowledgeQuestionAttribute();
  *(v0 + 1104) = v53;
  strcpy((v0 + 1112), "common_Group");
  *(v0 + 1125) = 0;
  *(v0 + 1126) = -5120;
  sub_1C066B248();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C096E0C0;
  *(v54 + 32) = v15;
  *(v0 + 1128) = v54;
  *(v0 + 1136) = 0xD000000000000016;
  *(v0 + 1144) = 0x80000001C09D0060;
  sub_1C066B248();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C096E0C0;
  *(v55 + 32) = v62;
  *(v0 + 1152) = v55;
  *(v0 + 1160) = 0xD000000000000014;
  *(v0 + 1168) = 0x80000001C09D00C0;
  sub_1C066B248();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C096E0C0;
  *(v56 + 32) = v63;
  *(v0 + 1176) = v56;
  v57 = sub_1C058B638(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19068, &qword_1C0982060);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ED5DA960 = v57;
  return result;
}

double static UsoEntity_CodeGenConverter.convert(entity:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = qword_1ED5CE288;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED5DA968;
    if (*(qword_1ED5DA968 + 16))
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);

      v8 = sub_1C0516A8C(v6, v7);
      v10 = v9;

      if (v10)
      {
        v11 = (*(*(*(v5 + 56) + 8 * v8) + 88))(a1);
        *(a2 + 24) = type metadata accessor for CodeGenBase();
        *a2 = v11;
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t static UsoEntity_CodeGenConverter.getType(by:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED5CE288 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = qword_1ED5DA968;
  if (*(qword_1ED5DA968 + 16) && (v3 = sub_1C0516A8C(a1, a2), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C064E0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE182D8;
  if (!qword_1EBE182D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182D8);
  }

  return result;
}

unint64_t sub_1C064E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE182E0;
  if (!qword_1EBE182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182E0);
  }

  return result;
}

unint64_t sub_1C064E150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE182E8;
  if (!qword_1EBE182E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182E8);
  }

  return result;
}

unint64_t sub_1C064E1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE182F0;
  if (!qword_1EBE182F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182F0);
  }

  return result;
}

unint64_t sub_1C064E200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE182F8;
  if (!qword_1EBE182F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE182F8);
  }

  return result;
}

unint64_t sub_1C064E258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18300;
  if (!qword_1EBE18300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18300);
  }

  return result;
}

unint64_t sub_1C064E2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18308;
  if (!qword_1EBE18308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18308);
  }

  return result;
}

unint64_t sub_1C064E308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18310;
  if (!qword_1EBE18310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18310);
  }

  return result;
}

unint64_t sub_1C064E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18318;
  if (!qword_1EBE18318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18318);
  }

  return result;
}

unint64_t sub_1C064E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18320;
  if (!qword_1EBE18320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18320);
  }

  return result;
}

unint64_t sub_1C064E410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18328;
  if (!qword_1EBE18328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18328);
  }

  return result;
}

unint64_t sub_1C064E468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18330;
  if (!qword_1EBE18330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18330);
  }

  return result;
}

unint64_t sub_1C064E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18338;
  if (!qword_1EBE18338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18338);
  }

  return result;
}

unint64_t sub_1C064E518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18340;
  if (!qword_1EBE18340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18340);
  }

  return result;
}

unint64_t sub_1C064E570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18348;
  if (!qword_1EBE18348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18348);
  }

  return result;
}

unint64_t sub_1C064E5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18350;
  if (!qword_1EBE18350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18350);
  }

  return result;
}

unint64_t sub_1C064E620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18358;
  if (!qword_1EBE18358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18358);
  }

  return result;
}

unint64_t sub_1C064E678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18360;
  if (!qword_1EBE18360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18360);
  }

  return result;
}

unint64_t sub_1C064E6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18368;
  if (!qword_1EBE18368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18368);
  }

  return result;
}

unint64_t sub_1C064E728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18370;
  if (!qword_1EBE18370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18370);
  }

  return result;
}

unint64_t sub_1C064E780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18378;
  if (!qword_1EBE18378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18378);
  }

  return result;
}

unint64_t sub_1C064E7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18380;
  if (!qword_1EBE18380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18380);
  }

  return result;
}

unint64_t sub_1C064E830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18388;
  if (!qword_1EBE18388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18388);
  }

  return result;
}

unint64_t sub_1C064E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18390;
  if (!qword_1EBE18390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18390);
  }

  return result;
}

unint64_t sub_1C064E8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18398;
  if (!qword_1EBE18398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18398);
  }

  return result;
}

unint64_t sub_1C064E938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183A0;
  if (!qword_1EBE183A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183A0);
  }

  return result;
}

unint64_t sub_1C064E990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183A8;
  if (!qword_1EBE183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183A8);
  }

  return result;
}

unint64_t sub_1C064E9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183B0;
  if (!qword_1EBE183B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183B0);
  }

  return result;
}

unint64_t sub_1C064EA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183B8;
  if (!qword_1EBE183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183B8);
  }

  return result;
}

unint64_t sub_1C064EA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183C0;
  if (!qword_1EBE183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183C0);
  }

  return result;
}

unint64_t sub_1C064EAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183C8;
  if (!qword_1EBE183C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183C8);
  }

  return result;
}

unint64_t sub_1C064EB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183D0;
  if (!qword_1EBE183D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183D0);
  }

  return result;
}

unint64_t sub_1C064EBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183D8;
  if (!qword_1EBE183D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183D8);
  }

  return result;
}

unint64_t sub_1C064EBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183E0;
  if (!qword_1EBE183E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183E0);
  }

  return result;
}

unint64_t sub_1C064EC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183E8;
  if (!qword_1EBE183E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183E8);
  }

  return result;
}

unint64_t sub_1C064ECA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183F0;
  if (!qword_1EBE183F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183F0);
  }

  return result;
}

unint64_t sub_1C064ED00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE183F8;
  if (!qword_1EBE183F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE183F8);
  }

  return result;
}

unint64_t sub_1C064ED58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18400;
  if (!qword_1EBE18400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18400);
  }

  return result;
}

unint64_t sub_1C064EDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18408;
  if (!qword_1EBE18408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18408);
  }

  return result;
}

unint64_t sub_1C064EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18410;
  if (!qword_1EBE18410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18410);
  }

  return result;
}

unint64_t sub_1C064EE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18418;
  if (!qword_1EBE18418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18418);
  }

  return result;
}

unint64_t sub_1C064EEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18420;
  if (!qword_1EBE18420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18420);
  }

  return result;
}

unint64_t sub_1C064EF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18428;
  if (!qword_1EBE18428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18428);
  }

  return result;
}

unint64_t sub_1C064EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18430;
  if (!qword_1EBE18430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18430);
  }

  return result;
}

unint64_t sub_1C064EFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18438;
  if (!qword_1EBE18438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18438);
  }

  return result;
}

unint64_t sub_1C064F018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18440;
  if (!qword_1EBE18440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18440);
  }

  return result;
}

unint64_t sub_1C064F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18448;
  if (!qword_1EBE18448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18448);
  }

  return result;
}

unint64_t sub_1C064F0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18450;
  if (!qword_1EBE18450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18450);
  }

  return result;
}

unint64_t sub_1C064F120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18458;
  if (!qword_1EBE18458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18458);
  }

  return result;
}

unint64_t sub_1C064F178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18460;
  if (!qword_1EBE18460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18460);
  }

  return result;
}

unint64_t sub_1C064F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18468;
  if (!qword_1EBE18468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18468);
  }

  return result;
}

unint64_t sub_1C064F228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18470;
  if (!qword_1EBE18470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18470);
  }

  return result;
}

unint64_t sub_1C064F280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18478;
  if (!qword_1EBE18478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18478);
  }

  return result;
}

unint64_t sub_1C064F2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18480;
  if (!qword_1EBE18480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18480);
  }

  return result;
}

unint64_t sub_1C064F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18488;
  if (!qword_1EBE18488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18488);
  }

  return result;
}

unint64_t sub_1C064F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18490;
  if (!qword_1EBE18490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18490);
  }

  return result;
}

unint64_t sub_1C064F3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18498;
  if (!qword_1EBE18498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18498);
  }

  return result;
}

unint64_t sub_1C064F438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184A0;
  if (!qword_1EBE184A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184A0);
  }

  return result;
}

unint64_t sub_1C064F490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184A8;
  if (!qword_1EBE184A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184A8);
  }

  return result;
}

unint64_t sub_1C064F4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184B0;
  if (!qword_1EBE184B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184B0);
  }

  return result;
}

unint64_t sub_1C064F540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184B8;
  if (!qword_1EBE184B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184B8);
  }

  return result;
}

unint64_t sub_1C064F598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184C0;
  if (!qword_1EBE184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184C0);
  }

  return result;
}

unint64_t sub_1C064F5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184C8;
  if (!qword_1EBE184C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184C8);
  }

  return result;
}

unint64_t sub_1C064F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184D0;
  if (!qword_1EBE184D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184D0);
  }

  return result;
}

unint64_t sub_1C064F6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184D8;
  if (!qword_1EBE184D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184D8);
  }

  return result;
}

unint64_t sub_1C064F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184E0;
  if (!qword_1EBE184E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184E0);
  }

  return result;
}

unint64_t sub_1C064F750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184E8;
  if (!qword_1EBE184E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184E8);
  }

  return result;
}

unint64_t sub_1C064F7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184F0;
  if (!qword_1EBE184F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184F0);
  }

  return result;
}

unint64_t sub_1C064F800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE184F8;
  if (!qword_1EBE184F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE184F8);
  }

  return result;
}

unint64_t sub_1C064F858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18500;
  if (!qword_1EBE18500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18500);
  }

  return result;
}

unint64_t sub_1C064F8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18508;
  if (!qword_1EBE18508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18508);
  }

  return result;
}

unint64_t sub_1C064F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18510;
  if (!qword_1EBE18510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18510);
  }

  return result;
}

unint64_t sub_1C064F960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18518;
  if (!qword_1EBE18518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18518);
  }

  return result;
}

unint64_t sub_1C064F9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18520;
  if (!qword_1EBE18520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18520);
  }

  return result;
}

unint64_t sub_1C064FA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18528;
  if (!qword_1EBE18528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18528);
  }

  return result;
}

unint64_t sub_1C064FA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18530;
  if (!qword_1EBE18530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18530);
  }

  return result;
}

unint64_t sub_1C064FAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18538;
  if (!qword_1EBE18538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18538);
  }

  return result;
}

unint64_t sub_1C064FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18540;
  if (!qword_1EBE18540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18540);
  }

  return result;
}

unint64_t sub_1C064FB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18548;
  if (!qword_1EBE18548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18548);
  }

  return result;
}

unint64_t sub_1C064FBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18550;
  if (!qword_1EBE18550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18550);
  }

  return result;
}

unint64_t sub_1C064FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18558;
  if (!qword_1EBE18558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18558);
  }

  return result;
}

unint64_t sub_1C064FC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18560;
  if (!qword_1EBE18560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18560);
  }

  return result;
}

unint64_t sub_1C064FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18568;
  if (!qword_1EBE18568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18568);
  }

  return result;
}

unint64_t sub_1C064FD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18570;
  if (!qword_1EBE18570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18570);
  }

  return result;
}

unint64_t sub_1C064FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18578;
  if (!qword_1EBE18578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18578);
  }

  return result;
}

unint64_t sub_1C064FDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18580;
  if (!qword_1EBE18580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18580);
  }

  return result;
}

unint64_t sub_1C064FE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18588;
  if (!qword_1EBE18588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18588);
  }

  return result;
}

unint64_t sub_1C064FE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18590;
  if (!qword_1EBE18590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18590);
  }

  return result;
}

unint64_t sub_1C064FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE18598;
  if (!qword_1EBE18598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE18598);
  }

  return result;
}

unint64_t sub_1C064FF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185A0;
  if (!qword_1EBE185A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185A0);
  }

  return result;
}

unint64_t sub_1C064FF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185A8;
  if (!qword_1EBE185A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185A8);
  }

  return result;
}

unint64_t sub_1C064FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185B0;
  if (!qword_1EBE185B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185B0);
  }

  return result;
}

unint64_t sub_1C0650040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185B8;
  if (!qword_1EBE185B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185B8);
  }

  return result;
}

unint64_t sub_1C0650098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185C0;
  if (!qword_1EBE185C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185C0);
  }

  return result;
}

unint64_t sub_1C06500F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185C8;
  if (!qword_1EBE185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185C8);
  }

  return result;
}

unint64_t sub_1C0650148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185D0;
  if (!qword_1EBE185D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185D0);
  }

  return result;
}

unint64_t sub_1C06501A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185D8;
  if (!qword_1EBE185D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185D8);
  }

  return result;
}

unint64_t sub_1C06501F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185E0;
  if (!qword_1EBE185E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185E0);
  }

  return result;
}

unint64_t sub_1C0650250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185E8;
  if (!qword_1EBE185E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185E8);
  }

  return result;
}

unint64_t sub_1C06502A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185F0;
  if (!qword_1EBE185F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185F0);
  }

  return result;
}

unint64_t sub_1C0650300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE185F8;
  if (!qword_1EBE185F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE185F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_common_MeasurementUnit.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_MeasurementUnit.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_common_DateTimeRange.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_DateTimeRange.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_common_TimeUnit.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_TimeUnit.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_common_MediaItemType.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_MediaItemType.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C065DFDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C065E06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_appleEmail_EmailAttribute.DefinedValues(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UsoEntity_appleEmail_EmailAttribute.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C0667054(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C06670E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_common_AttachmentType.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_common_AttachmentType.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14RadiusUnitNodeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14RadiusUnitNodeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C066A438(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C066A4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9ProximityOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9ProximityOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C066B248()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE19070, &qword_1C0982068);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBE19078;
    v3 = &unk_1C0982070;
  }

  else
  {
    v2 = &qword_1EBE174E0;
    v3 = &unk_1C0975370;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

__n128 UsoValue.__allocating_init(graphNode:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v2[1] = *a1;
  return result;
}

uint64_t UsoTask.baseEntityAsString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C066F364(uint64_t a1)
{
  sub_1C095D7BC();
  sub_1C095D7BC();
  v3 = *(v1 + 48);

  return sub_1C05718C8(a1, v3);
}

void *UsoTask.deinit()
{

  return v0;
}

uint64_t UsoTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C066F428()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C05718C8(v2, *(v0 + 48));
  return sub_1C095E03C();
}

uint64_t sub_1C066F484()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C05718C8(v3, *(v1 + 48));
  return sub_1C095E03C();
}

uint64_t sub_1C066F4E4(uint64_t a1)
{
  v3 = *v1;
  sub_1C095D7BC();
  sub_1C095D7BC();
  v4 = *(v3 + 48);

  return sub_1C05718C8(a1, v4);
}

uint64_t sub_1C066F534(uint64_t a1)
{
  sub_1C095DFEC();
  v2 = *v1;
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C05718C8(v4, *(v2 + 48));
  return sub_1C095E03C();
}

uint64_t UsoValue.graphNode.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return swift_unownedRetain();
}

uint64_t static UsoValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v6[0] = *(a1 + 16);
  v6[1] = v2;
  v3 = *(a2 + 24);
  v5[0] = *(a2 + 16);
  v5[1] = v3;

  swift_unownedRetain();

  swift_unownedRetain();
  LOBYTE(v2) = _s12SiriOntology4NodeV2eeoiySbAC_ACtFZ_0(v6, v5);

  swift_unownedRelease();

  swift_unownedRelease();
  return v2 & 1;
}

uint64_t sub_1C066F6AC()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t sub_1C066F724()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 104);

  return v2;
}

uint64_t sub_1C066F780()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

uint64_t UsoValue.deinit()
{

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1C066F80C()
{
  sub_1C095DFEC();
  Node.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C066F858()
{
  sub_1C095DFEC();
  Node.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C066F8E0(uint64_t a1)
{
  sub_1C095DFEC();
  Node.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t sub_1C066F92C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 24);
  v7[0] = *(*a1 + 16);
  v7[1] = v3;
  v4 = *(v2 + 24);
  v6[0] = *(v2 + 16);
  v6[1] = v4;

  swift_unownedRetain();

  swift_unownedRetain();
  LOBYTE(v3) = _s12SiriOntology4NodeV2eeoiySbAC_ACtFZ_0(v7, v6);

  swift_unownedRelease();

  swift_unownedRelease();
  return v3 & 1;
}

uint64_t sub_1C066F9F0()
{
  v1 = *(*(v0 + 48) + 24);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t UsoEntity.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  UsoEntity.init(from:)(a1);
  return v2;
}

void *UsoEntity.deinit()
{

  return v0;
}

uint64_t UsoExpression.operatorAsString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UsoExpression.deinit()
{

  return v0;
}

uint64_t UsoExpression.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C066FB64(unint64_t result, uint64_t a2, int a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 4 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1C066FBA8(unint64_t result, int a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1C066FBF4(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1C066FC38(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1C066FC94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17440, &unk_1C09789D0);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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
}

void sub_1C066FE0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C095DD2C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1C066FF6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172F8, &qword_1C0970AF0);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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
}

void sub_1C06700C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D0, &qword_1C0970AC0);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1C0670228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17480, &qword_1C0970A70);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
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
}

void sub_1C06703AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C095DD2C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1C06704F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17470, &qword_1C0982390);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        swift_unownedRetain();
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
}

void sub_1C0670674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17228, &qword_1C0970A00);
  v2 = *v0;
  v3 = sub_1C095DD2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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
}

uint64_t _s12SiriOntology7UsoTaskC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_1C05685A8(v6, v7);
}

uint64_t sub_1C0670938(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
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

unint64_t sub_1C0670C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE190A8;
  if (!qword_1EBE190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE190A8);
  }

  return result;
}

uint64_t sub_1C0670C68(unint64_t a1, unint64_t a2)
{
  v34 = *v2;
  v31 = 0uLL;
  v38[0] = 0;
  v38[1] = 0;
  result = sub_1C0519A28(&v34, &v31, v38);
  v6 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v38[0] = MEMORY[0x1E69E7CC0];
    v8 = *(result + 16);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = (v6 + 32 + 80 * v9);
        v11 = v9;
        while (1)
        {
          if (v11 >= *(v6 + 16))
          {
            __break(1u);
            return result;
          }

          v12 = v10[3];
          v13 = v10[4];
          v14 = v10[2];
          *v35 = v10[1];
          *&v35[16] = v14;
          v15 = *v10;
          v36 = v12;
          v37 = v13;
          v34 = v15;
          if (*&v35[8] == __PAIR128__(a2, a1))
          {
            break;
          }

          result = sub_1C095DF3C();
          if (result)
          {
            break;
          }

          ++v11;
          v10 += 5;
          if (v8 == v11)
          {
            goto LABEL_15;
          }
        }

        sub_1C0519E14(&v34, &v31);
        result = swift_isUniquelyReferenced_nonNull_native();
        v38[0] = v7;
        if ((result & 1) == 0)
        {
          result = sub_1C051A1EC(0, *(v7 + 16) + 1, 1);
          v7 = v38[0];
        }

        v17 = *(v7 + 16);
        v16 = *(v7 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1C051A1EC((v16 > 1), v17 + 1, 1);
          v7 = v38[0];
        }

        v9 = v11 + 1;
        *(v7 + 16) = v17 + 1;
        v18 = (v7 + 80 * v17);
        v18[2] = v34;
        v19 = *v35;
        v20 = *&v35[16];
        v21 = v37;
        v18[5] = v36;
        v18[6] = v21;
        v18[3] = v19;
        v18[4] = v20;
      }

      while (v8 - 1 != v11);
    }

LABEL_15:

    v6 = v7;
    v7 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v6 + 16);
  if (v22)
  {
    v38[0] = v7;
    sub_1C0600B00(0, v22, 0);
    v7 = v38[0];
    v23 = v22 - 1;
    for (i = 32; ; i += 80)
    {
      v26 = *(v6 + i + 48);
      v25 = *(v6 + i + 64);
      v27 = *(v6 + i + 16);
      *&v35[16] = *(v6 + i + 32);
      v36 = v26;
      v28 = *(v6 + i);
      v37 = v25;
      v34 = v28;
      *v35 = v27;
      sub_1C0519E14(&v34, &v31);

      v38[0] = v7;
      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C0600B00((v29 > 1), v30 + 1, 1);
        v7 = v38[0];
      }

      v32 = &type metadata for Node;
      v33 = &off_1F3F9F6A8;
      v31 = v37;
      *(v7 + 16) = v30 + 1;
      sub_1C0531D80(&v31, v7 + 40 * v30 + 32);
      if (!v23)
      {
        break;
      }

      --v23;
    }
  }

  return v7;
}

double sub_1C0670F1C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *a1;
  swift_unownedRetainStrong();
  v7 = v5[7];

  if (*(v6 + 16) && (v8 = sub_1C095DFDC(), v9 = -1 << *(v6 + 32), v10 = v8 & ~v9, ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    while (*(*(v6 + 48) + 8 * v10) != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    *(a2 + 96) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
LABEL_6:
    swift_unownedRetainStrong();
    v12 = v5[7];

    sub_1C051DFC8(&v75, v12);
    swift_unownedRetainStrong();
    v13 = v5[9];
    v14 = v5[11];
    v52 = v5[10];
    v53 = v5[8];
    v54 = v5[12];

    v55 = v13;

    v82 = 1;
    *&v75 = v4;
    *(&v75 + 1) = v5;
    v15 = Node.stringValue.getter();
    v51 = v16;
    if (v16)
    {
      v50 = v15;
    }

    else
    {
      v50 = 0;
    }

    *&v75 = v4;
    *(&v75 + 1) = v5;
    v17 = Node.int64Value.getter();
    if (v18)
    {
      v49 = 0;
    }

    else
    {
      v49 = v17;
      v82 = 0;
    }

    swift_unownedRetainStrong();
    swift_beginAccess();
    v48 = v5[13];

    swift_unownedRetainStrong();
    v47 = v5[14];

    *&v75 = v4;
    *(&v75 + 1) = v5;
    v66 = 0uLL;
    v61 = 0uLL;
    v19 = sub_1C0519A28(&v75, &v66, &v61);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v46 = a2;
      v60 = v20 - 1;
      v22 = 32;
      v23 = v19;
      v56 = v19;
      while (1)
      {
        v24 = *(v23 + v22 + 32);
        v25 = *(v23 + v22 + 48);
        v26 = *(v23 + v22 + 64);
        v62 = *(v23 + v22 + 16);
        v63 = v24;
        v64 = v25;
        v65 = v26;
        v61 = *(v23 + v22);
        v27 = v24;
        v59 = *(&v62 + 1);
        v74 = v26;
        sub_1C0519E14(&v61, v73);
        sub_1C0670F1C(a1, &v75);
        v28 = *(&v75 + 1);
        v68 = v78;
        v69 = v79;
        v70 = v80;
        *&v71 = v81;
        v66 = v76;
        v67 = v77;
        if (*(&v75 + 1))
        {
          v58 = v75;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1C0577E98(0, v21[2] + 1, 1, v21);
          }

          v29 = v21;
          v30 = v21[2];
          v31 = v29;
          v32 = v29[3];
          if (v30 >= v32 >> 1)
          {
            v31 = sub_1C0577E98((v32 > 1), v30 + 1, 1, v31);
          }

          swift_unownedRelease();

          *&v80 = v71;
          v78 = v69;
          v79 = v70;
          v76 = v67;
          v77 = v68;
          v75 = v66;
          v31[2] = v30 + 1;
          v33 = &v31[15 * v30];
          v21 = v31;
          v33[4] = v59;
          v33[5] = v27;
          v33[6] = v58;
          v33[7] = v28;
          v34 = v76;
          *(v33 + 4) = v75;
          *(v33 + 5) = v34;
          v35 = v77;
          v36 = v78;
          v37 = v79;
          v33[18] = v80;
          *(v33 + 7) = v36;
          *(v33 + 8) = v37;
          *(v33 + 6) = v35;
          v23 = v56;
          v38 = v60;
          if (!v60)
          {
LABEL_23:

            a2 = v46;
            v39 = v21;
            v21 = MEMORY[0x1E69E7CC0];
            goto LABEL_25;
          }
        }

        else
        {

          swift_unownedRelease();

          v38 = v60;
          if (!v60)
          {
            goto LABEL_23;
          }
        }

        v60 = v38 - 1;
        v22 += 80;
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *&v66 = v53;
    *(&v66 + 1) = v55;
    *&v67 = v52;
    *(&v67 + 1) = v14;
    *&v68 = v54;
    *(&v68 + 1) = v50;
    *&v69 = v51;
    *(&v69 + 1) = v49;
    v40 = v73[0];
    *(&v70 + 1) = v73[0];
    DWORD1(v70) = *(v73 + 3);
    LOBYTE(v70) = v82;
    v41 = v82;
    *(&v70 + 1) = v48;
    *&v71 = v47;
    *(&v71 + 1) = v39;
    v72 = v21;
    *(a2 + 96) = v21;
    v42 = v67;
    *a2 = v66;
    *(a2 + 16) = v42;
    v43 = v71;
    *(a2 + 64) = v70;
    *(a2 + 80) = v43;
    v44 = v69;
    *(a2 + 32) = v68;
    *(a2 + 48) = v44;
    *&v75 = v53;
    *(&v75 + 1) = v55;
    *&v76 = v52;
    *(&v76 + 1) = v14;
    *&v77 = v54;
    *(&v77 + 1) = v50;
    *&v78 = v51;
    *(&v78 + 1) = v49;
    LOBYTE(v79) = v41;
    DWORD1(v79) = *(v73 + 3);
    *(&v79 + 1) = v40;
    *(&v79 + 1) = v48;
    *&v80 = v47;
    *(&v80 + 1) = v39;
    v81 = v21;
    sub_1C05AF88C(&v66, &v61);
    sub_1C05AF8E8(&v75);
  }

  return result;
}

uint64_t sub_1C06713CC(void (*a1)(uint64_t *, __int128 *, char *))
{
  v19 = *v1;
  v11[0] = 0;
  v11[1] = 0;
  v15 = 0;
  *&v16 = 0;
  result = sub_1C0519A28(&v19, v11, &v15);
  v3 = result;
  v9 = *(result + 16);
  if (!v9)
  {
  }

  v4 = 0;
  v5 = 32;
  while (v4 < *(v3 + 16))
  {
    v6 = *(v3 + v5 + 32);
    v8 = *(v3 + v5 + 48);
    v7 = *(v3 + v5 + 64);
    v20 = *(v3 + v5 + 16);
    v21 = v6;
    v22 = v8;
    v23 = v7;
    v19 = *(v3 + v5);
    v18 = 1;
    v15 = *(&v20 + 1);
    v16 = v6;
    v17 = v8;
    v13 = &type metadata for Node;
    v14 = &off_1F3F9F6A8;
    v12 = v7;
    sub_1C0519E14(&v19, v11);

    swift_unownedRetain();
    a1(&v15, &v12, &v18);

    swift_unownedRelease();

    result = __swift_destroy_boxed_opaque_existential_1(&v12);
    if (v18)
    {
      ++v4;
      v5 += 80;
      if (v9 != v4)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C067157C(uint64_t a1@<X8>)
{
  v14 = MEMORY[0x1E69E7CD0];
  sub_1C0670F1C(&v14, &v6);
  v2 = v7;
  if (v7)
  {
    v3 = v6;

    *a1 = v3;
    *(a1 + 8) = v2;
    v4 = v11;
    *(a1 + 48) = v10;
    *(a1 + 64) = v4;
    *(a1 + 80) = v12;
    *(a1 + 96) = v13;
    v5 = v9;
    *(a1 + 16) = v8;
    *(a1 + 32) = v5;
  }

  else
  {
    __break(1u);
  }
}

void Siri_Nl_Core_Protocol_OrchestrationResponseStatus.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.code.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.description_p.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.description_p.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(uint64_t a1)
{
  result = qword_1EBE19138;
  if (!qword_1EBE19138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.StatusCode.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 101)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v3 = result == 101;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.StatusCode.rawValue.getter()
{
  v1 = 101;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1C06718CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 101)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 101)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C06718F8()
{
  v1 = 101;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_1C0671918@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 101;
  if (*result == 101)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C0671948(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 101;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_1C067196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C0671F28(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

BOOL sub_1C06719B8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 101;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 101;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t static Siri_Nl_Core_Protocol_OrchestrationResponseStatus.StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBE190B0 = a1;
}

uint64_t sub_1C0671B30@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBE190B0;
}

uint64_t sub_1C0671B9C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE190B8);
  __swift_project_value_buffer(v0, qword_1EBE190B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        sub_1C0671F28(2, v5, v6);
        sub_1C095D45C();
      }

      else if (result == 3)
      {
        sub_1C095D50C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1C0671F28(a1, a2, a3), result = sub_1C095D60C(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C095D66C(), !v4))
    {
      type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

unint64_t sub_1C0671F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE190E8;
  if (!qword_1EBE190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE190E8);
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_OrchestrationResponseStatus.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(0);
  sub_1C0672844(&qword_1EBE190F0, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0672054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0672844(&qword_1EBE19148, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C06720F4(uint64_t a1)
{
  v2 = sub_1C0672844(&qword_1EBE19128, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0672160(uint64_t a1, uint64_t a2)
{
  sub_1C0672844(&qword_1EBE19128, type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus, &protocol conformance descriptor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus);

  return sub_1C095D5AC();
}

uint64_t sub_1C06721E0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE190D0);
  __swift_project_value_buffer(v0, qword_1EBE190D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "EMPTY_NLU_REQUEST";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t _s12SiriOntology0A45_Nl_Core_Protocol_OrchestrationResponseStatusV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 101;
  if (!*a1)
  {
    v4 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v4;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 101)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 16) == a2[2] && *(a1 + 24) == a2[3];
  if (v5 || (sub_1C095DF3C() & 1) != 0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_OrchestrationResponseStatus(0);
    sub_1C095D38C();
    sub_1C0672844(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    return sub_1C095D73C() & 1;
  }

  return 0;
}

unint64_t sub_1C06724FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE190F8;
  if (!qword_1EBE190F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE190F8);
  }

  return result;
}

unint64_t sub_1C0672554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE19100;
  if (!qword_1EBE19100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE19100);
  }

  return result;
}