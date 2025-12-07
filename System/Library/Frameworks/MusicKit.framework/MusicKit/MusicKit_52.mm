uint64_t sub_217660EF8@<X0>(Swift::Int *a1@<X0>, Swift::String_optional *a2@<X8>)
{
  v4 = String.init(legacyModelRawValue:)(*a1);
  result = v4.value._countAndFlagsBits;
  *a2 = v4;
  return result;
}

Swift::Int sub_217660F24@<X0>(Swift::Int *a1@<X8>)
{
  result = String.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_217660F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B530;
  if (!qword_27CB2B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B530);
  }

  return result;
}

unint64_t sub_217660FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B538;
  if (!qword_27CB2B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B538);
  }

  return result;
}

uint64_t MusicLibrary.Error.errorDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_131(a1, a2, a3, a4);
  sub_217751DE8();
  sub_21756DDE4(&v5);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21766105C@<X0>(uint64_t *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (qword_27CB23BE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217751588();
      v5 = v8;
      v6 = sub_217751588();
      v7 = v9;
      result = sub_217751588();
      goto LABEL_21;
    case 2:
      if (qword_27CB23BE8 != -1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 3:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 4:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 5:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 6:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 7:
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_19;
      }

LABEL_22:
      swift_once();
LABEL_19:
      v3 = sub_217751588();
      v5 = v12;
      v6 = sub_217751588();
      v7 = v13;
      break;
    default:
      if (qword_27CB23BE8 != -1)
      {
        swift_once();
      }

      v3 = sub_217751588();
      v5 = v4;
      v6 = 0;
      v7 = 0;
      break;
  }

  result = 0;
  v11 = 0;
LABEL_21:
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = result;
  a1[5] = v11;
  a1[6] = 0;
  a1[7] = 0;
  return result;
}

uint64_t MusicLibrary.Error.failureReason.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_131(a1, a2, a3, a4);
  sub_217751DE8();
  sub_21756DDE4(v5);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrary.Error.recoverySuggestion.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_131(a1, a2, a3, a4);
  sub_217751DE8();
  sub_21756DDE4(v5);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrary.Error.helpAnchor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_131(a1, a2, a3, a4);
  sub_217751DE8();
  sub_21756DDE4(v5);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrary.Error.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      v2 = 0xD000000000000010;
      v3 = "permissionDenied";
      goto LABEL_5;
    case 2:
      v1 = 0xEF6D657449646441;
      v2 = 0x6F54656C62616E75;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v3 = "itemAlreadyAdded";
LABEL_5:
      v1 = (v3 - 32) | 0x8000000000000000;
      break;
    case 4:
    case 6:
      OUTLINED_FUNCTION_42();
      v2 = v6 | 4;
      break;
    case 5:
      OUTLINED_FUNCTION_42();
      v2 = v5 | 3;
      break;
    case 7:
      OUTLINED_FUNCTION_42();
      v2 = v4 | 2;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v2, v1);

  return 46;
}

unint64_t MusicLibrary.Error.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F54656C62616E75;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 6:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void MusicLibrary.Error.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 8;
  if (v3 < 8)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t sub_217661A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B540;
  if (!qword_27CB2B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B540);
  }

  return result;
}

unint64_t sub_217661B14@<X0>(unint64_t *a1@<X8>)
{
  result = MusicLibrary.Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *_s5ErrorOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicTokenRequestError.errorDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_106(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(&v6);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicTokenRequestError.failureReason.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_106(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(v6);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicTokenRequestError.recoverySuggestion.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_106(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(v6);
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicTokenRequestError.helpAnchor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_106(a1, a2, a3, a4, a5);
  sub_217751DE8();
  sub_21756DDE4(v6);
  return OUTLINED_FUNCTION_93();
}

char *sub_217661D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  switch(*v4)
  {
    case 1:
      v4 = "f error: .unableToAddItem.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
      }

      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      OUTLINED_FUNCTION_4_106();
      goto LABEL_28;
    case 2:
      v4 = "ple Account in the Music app.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
      }

      v6 = qword_27CB8A298;
      v7 = 0xD000000000000036;
      OUTLINED_FUNCTION_9_74(0xD000000000000012, 0x80000002177B4500);
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_9_74(0xD000000000000039, v9 | 0x8000000000000000);
      OUTLINED_FUNCTION_7_70();
      goto LABEL_10;
    case 3:
      if (qword_27CB23EC0 != -1)
      {
        a1 = swift_once();
      }

      v12 = qword_27CB2D388;
      v13 = unk_27CB2D390;
      v6 = byte_27CB2D398;
      v7 = qword_27CB2D3A0;
      v14 = unk_27CB2D3A8;
      v15 = byte_27CB2D3B0;
      v17[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
      v17[4] = sub_2171FEF88(a1, a2, a3);
      v16 = swift_allocObject();
      v17[0] = v16;
      *(v16 + 16) = v12;
      *(v16 + 24) = v13;
      *(v16 + 32) = v6;
      *(v16 + 40) = v7;
      *(v16 + 48) = v14;
      *(v16 + 56) = v15;
      LOBYTE(v12) = sub_217751978();
      __swift_destroy_boxed_opaque_existential_1(v17);
      v5 = 0x27CB23000;
      if (v12)
      {
        if (qword_27CB23BE8 == -1)
        {
          goto LABEL_25;
        }
      }

      else if (qword_27CB23BE8 == -1)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
LABEL_25:
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      v4 = "f error: .userNotSignedIn.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
LABEL_28:
      OUTLINED_FUNCTION_1_123();
LABEL_29:
      result = sub_217751588();
LABEL_30:
      *a4 = v4;
      a4[1] = v5;
      a4[2] = v6;
      a4[3] = v7;
      a4[4] = result;
      a4[5] = v11;
      a4[6] = 0;
      a4[7] = 0;
      return result;
    case 4:
      v4 = "eveloperTokenRequestFailed.";
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    case 5:
      v4 = "serTokenRequestFailed.";
      if (qword_27CB23BE8 == -1)
      {
        goto LABEL_6;
      }

LABEL_31:
      OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
LABEL_6:
      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_2_115();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      OUTLINED_FUNCTION_2_115();
      goto LABEL_28;
    case 6:
      v4 = "Description of error: .unknown.";
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
      }

      OUTLINED_FUNCTION_5_90();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_1_123();
      sub_217751588();
      OUTLINED_FUNCTION_7_70();
      OUTLINED_FUNCTION_2_115();
      OUTLINED_FUNCTION_1_123();
      goto LABEL_29;
    default:
      if (qword_27CB23BE8 != -1)
      {
        OUTLINED_FUNCTION_0_132(&qword_27CB23BE8);
      }

      OUTLINED_FUNCTION_2_4();
      sub_217751588();
      OUTLINED_FUNCTION_6_90();
      v6 = 0;
      v7 = 0;
LABEL_10:
      result = 0;
      v11 = 0;
      goto LABEL_30;
  }
}

uint64_t MusicTokenRequestError.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_72_0();
      break;
    case 3:
      v1 = 0xEF6E4964656E6769;
      v2 = 0x53746F4E72657375;
      break;
    case 4:
      OUTLINED_FUNCTION_72_0();
      v2 = 0xD00000000000001ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_72_0();
      v2 = 0xD00000000000001BLL;
      break;
    case 6:
      OUTLINED_FUNCTION_72_0();
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  MEMORY[0x21CEA23B0](v2, v1);

  return 46;
}

unint64_t MusicTokenRequestError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x53746F4E72657375;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

MusicKit::MusicTokenRequestError_optional __swiftcall MusicTokenRequestError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_21766264C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B548;
  if (!qword_27CB2B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B548);
  }

  return result;
}

unint64_t sub_2176626C4@<X0>(unint64_t *a1@<X8>)
{
  result = MusicTokenRequestError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicTokenRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21766280C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2176628AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21766280C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2176628D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217662A78(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217662914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217662A78(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t HomeSharingAsset.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B550, &qword_21778B5C0);
  OUTLINED_FUNCTION_41();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217662A78(v8, v9, v10);
  sub_2177532F8();
  sub_217752F58();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_217662A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B558;
  if (!qword_27CB2B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B558);
  }

  return result;
}

uint64_t HomeSharingAsset.hashValue.getter()
{
  sub_2177531E8();
  sub_217753208();
  return sub_217753238();
}

uint64_t HomeSharingAsset.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B560, &qword_21778B5C8);
  OUTLINED_FUNCTION_41();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217662A78(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    v14 = sub_217752E78();
    (*(v7 + 8))(v10, v3);
    *a2 = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217662CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B568;
  if (!qword_27CB2B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B568);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeSharingAsset(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for HomeSharingAsset.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_217662EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B570;
  if (!qword_27CB2B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B570);
  }

  return result;
}

unint64_t sub_217662F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B578;
  if (!qword_27CB2B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B578);
  }

  return result;
}

unint64_t sub_217662F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B580;
  if (!qword_27CB2B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B580);
  }

  return result;
}

void *CloudAudioAnalysis.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  result = memcpy((a7 + 16), __src, 0x318uLL);
  *(a7 + 808) = v8;
  *(a7 + 809) = v9;
  *(a7 + 810) = v10;
  return result;
}

__n128 CloudAudioAnalysis.Attributes.init(loudness:energy:beats:key:bpm:valence:melodicness:danceability:fades:acousticness:loudnessCurve:phrases:vocalActivity:)@<Q0>(void *__src@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, const void *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, __int128 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, __int128 *a11, __n128 *a12, uint64_t a13, uint64_t a14)
{
  v34 = a12[1].n128_u64[0];
  memcpy(a9, __src, 0xBBuLL);
  v22 = a2[1];
  *(a9 + 192) = *a2;
  *(a9 + 208) = v22;
  *(a9 + 224) = a2[2];
  *(a9 + 234) = *(a2 + 42);
  *(a9 + 256) = *a3;
  memcpy((a9 + 272), a4, 0x59uLL);
  v23 = a5[1];
  *(a9 + 368) = *a5;
  *(a9 + 384) = v23;
  *(a9 + 400) = a5[2];
  *(a9 + 410) = *(a5 + 42);
  v24 = a6[1];
  *(a9 + 432) = *a6;
  *(a9 + 448) = v24;
  *(a9 + 464) = a6[2];
  *(a9 + 474) = *(a6 + 42);
  v25 = *a7;
  v26 = a7[1];
  v27 = a7[2];
  *(a9 + 538) = *(a7 + 42);
  *(a9 + 512) = v26;
  *(a9 + 528) = v27;
  *(a9 + 496) = v25;
  *(a9 + 602) = *(a8 + 42);
  v28 = a8[2];
  *(a9 + 576) = a8[1];
  *(a9 + 592) = v28;
  *(a9 + 560) = *a8;
  *(a9 + 667) = *(a10 + 43);
  v29 = a10[2];
  *(a9 + 640) = a10[1];
  *(a9 + 656) = v29;
  *(a9 + 624) = *a10;
  v30 = *a11;
  v31 = a11[1];
  v32 = a11[2];
  *(a9 + 730) = *(a11 + 42);
  *(a9 + 704) = v31;
  *(a9 + 720) = v32;
  *(a9 + 688) = v30;
  result = *a12;
  *(a9 + 752) = *a12;
  *(a9 + 768) = v34;
  *(a9 + 776) = a13;
  *(a9 + 784) = a14;
  return result;
}

__n128 CloudAudioAnalysis.Attributes.energy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 192);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 224);
  result = *(v1 + 234);
  *(a1 + 42) = result;
  return result;
}

uint64_t CloudAudioAnalysis.Attributes.beats.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  *a1 = v2;
  a1[1] = v3;
  return sub_2176631DC(v2);
}

uint64_t sub_2176631DC(uint64_t result)
{
  if (result != 1)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

uint64_t CloudAudioAnalysis.Attributes.key.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 272), 0x59uLL);
  memcpy(a1, (v1 + 272), 0x59uLL);
  return sub_21738C4B0(__dst, &v4, &qword_27CB2B5A0, &qword_21778B7F0);
}

double CloudAudioAnalysis.Attributes.bpm.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 384);
  *a1 = *(v1 + 368);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 400)).n128_u64[0];
  return result;
}

double CloudAudioAnalysis.Attributes.valence.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 448);
  *a1 = *(v1 + 432);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 464)).n128_u64[0];
  return result;
}

double CloudAudioAnalysis.Attributes.melodicness.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 512);
  *a1 = *(v1 + 496);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 528)).n128_u64[0];
  return result;
}

double CloudAudioAnalysis.Attributes.danceability.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 576);
  *a1 = *(v1 + 560);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 592)).n128_u64[0];
  return result;
}

__n128 CloudAudioAnalysis.Attributes.fades.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 656);
  result = *(v1 + 667);
  *(a1 + 43) = result;
  return result;
}

double CloudAudioAnalysis.Attributes.acousticness.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 704);
  *a1 = *(v1 + 688);
  a1[1] = v2;
  *&result = OUTLINED_FUNCTION_2_116(a1, *(v1 + 720)).n128_u64[0];
  return result;
}

uint64_t CloudAudioAnalysis.Attributes.loudnessCurve.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[94];
  v3 = v1[95];
  v4 = v1[96];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21739AF10(v2, v3, v4);
}

void static CloudAudioAnalysis.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = *(v2 + 192);
  v5 = *(v2 + 208);
  v6 = *(v2 + 224);
  *(v164 + 9) = *(v2 + 233);
  v164[0] = v6;
  v163 = v5;
  v162 = v4;
  v7 = *(v2 + 249);
  v8 = *(v2 + 256);
  v134 = *(v2 + 264);
  memcpy(__dst, (v2 + 272), 0x59uLL);
  v9 = *(v3 + 384);
  v166 = *(v3 + 368);
  v167 = v9;
  v168[0] = *(v3 + 400);
  *(v168 + 9) = *(v3 + 409);
  v133 = *(v3 + 425);
  v10 = *(v3 + 448);
  v169 = *(v3 + 432);
  v170 = v10;
  v171[0] = *(v3 + 464);
  *(v171 + 9) = *(v3 + 473);
  v131 = *(v3 + 489);
  *(v174 + 9) = *(v3 + 537);
  v11 = *(v3 + 512);
  v174[0] = *(v3 + 528);
  v12 = *(v3 + 496);
  v173 = v11;
  v172 = v12;
  v13 = *(v3 + 553);
  *(v177 + 9) = *(v3 + 601);
  v14 = *(v3 + 576);
  v177[0] = *(v3 + 592);
  v15 = *(v3 + 560);
  v176 = v14;
  v175 = v15;
  v127 = *(v3 + 617);
  v128 = v13;
  v16 = *(v3 + 624);
  v17 = *(v3 + 640);
  v18 = *(v3 + 656);
  *(v180 + 10) = *(v3 + 666);
  v180[0] = v18;
  v179 = v17;
  v178 = v16;
  v125 = *(v3 + 682);
  v19 = *(v3 + 688);
  v20 = *(v3 + 704);
  v21 = *(v3 + 720);
  *(v183 + 9) = *(v3 + 729);
  v183[0] = v21;
  v182 = v20;
  v181 = v19;
  v122 = *(v3 + 745);
  v120 = *(v3 + 752);
  v121 = *(v3 + 760);
  v123 = *(v3 + 768);
  v115 = *(v3 + 784);
  v116 = *(v3 + 776);
  v22 = *(v1 + 249);
  v23 = *(v1 + 256);
  v24 = *(v1 + 264);
  memcpy(v184, (v1 + 272), 0x59uLL);
  v25 = *(v1 + 384);
  v185 = *(v1 + 368);
  v186 = v25;
  v187[0] = *(v1 + 400);
  *(v187 + 9) = *(v1 + 409);
  v132 = *(v1 + 425);
  v26 = *(v1 + 448);
  v188 = *(v1 + 432);
  v189 = v26;
  v190[0] = *(v1 + 464);
  *(v190 + 9) = *(v1 + 473);
  v27 = *(v1 + 489);
  *(v193 + 9) = *(v1 + 537);
  v28 = *(v1 + 512);
  v193[0] = *(v1 + 528);
  v29 = *(v1 + 496);
  v192 = v28;
  v191 = v29;
  v129 = *(v1 + 553);
  v130 = v27;
  *(v196 + 9) = *(v1 + 601);
  v30 = *(v1 + 576);
  v196[0] = *(v1 + 592);
  v31 = *(v1 + 560);
  v195 = v30;
  v194 = v31;
  v126 = *(v1 + 617);
  v32 = *(v1 + 624);
  v33 = *(v1 + 640);
  v34 = *(v1 + 656);
  *(v198 + 10) = *(v1 + 666);
  v198[0] = v34;
  v197[1] = v33;
  v197[0] = v32;
  v124 = *(v1 + 682);
  v35 = *(v1 + 688);
  v36 = *(v1 + 704);
  v37 = *(v1 + 720);
  *(v201 + 9) = *(v1 + 729);
  v201[0] = v37;
  v200 = v36;
  v199 = v35;
  v38 = *(v1 + 745);
  v117 = *(v1 + 752);
  v118 = *(v1 + 760);
  v119 = *(v1 + 768);
  v39 = *(v1 + 776);
  v114 = *(v1 + 784);
  memcpy(v202, v3, 0xBBuLL);
  if (sub_217668FD4(v202) == 1)
  {
    memcpy(v139, v1, 0xBBuLL);
    if (sub_217668FD4(v139) != 1)
    {
      goto LABEL_42;
    }
  }

  else
  {
    memcpy(v139, v1, 0xBBuLL);
    if (sub_217668FD4(v139) == 1)
    {
      goto LABEL_42;
    }

    memcpy(v161, v1, 0xBAuLL);
    memcpy(v160, v3, 0xBAuLL);
    if ((sub_21766B3C0(v160, v161) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v7)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v22)
    {
      goto LABEL_42;
    }

    v40 = *(v1 + 208);
    v158[0] = *(v1 + 192);
    v158[1] = v40;
    v159[0] = *(v1 + 224);
    *(v159 + 9) = *(v1 + 233);
    v156[0] = v162;
    v156[1] = v163;
    v157[0] = v164[0];
    *(v157 + 9) = *(v164 + 9);
    if ((sub_21766B5D8(v156, v158) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v8 == 1)
  {
    sub_2176631DC(1);
    if (v23 == 1)
    {
      v41 = v38;
      sub_2176631DC(1);
      goto LABEL_14;
    }

    v59 = OUTLINED_FUNCTION_179();
    sub_2176631DC(v59);
    goto LABEL_20;
  }

  if (v23 == 1)
  {
    v57 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v57);
    sub_2176631DC(1);
    v58 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v58);

LABEL_20:
    v60 = OUTLINED_FUNCTION_30_1();
    sub_217668FF0(v60);
    v61 = OUTLINED_FUNCTION_179();
LABEL_41:
    sub_217668FF0(v61);
    goto LABEL_42;
  }

  if (v8)
  {
    if (!v23)
    {
      sub_2176631DC(v8);
      sub_2176631DC(0);
      v95 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v95);
      v74 = 0;
      goto LABEL_39;
    }

    if ((sub_2172717F0(v8, v23) & 1) == 0)
    {
      v62 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v62);
      v63 = OUTLINED_FUNCTION_179();
      sub_2176631DC(v63);
      v64 = v8;
LABEL_29:
      sub_2176631DC(v64);
      v74 = v23;
LABEL_39:
      sub_217668FF0(v74);
      goto LABEL_40;
    }
  }

  else if (v23)
  {
    sub_2176631DC(0);
    v73 = OUTLINED_FUNCTION_179();
    sub_2176631DC(v73);
    v64 = 0;
    goto LABEL_29;
  }

  if (v134)
  {
    if (!v24)
    {
      v96 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v96);
      sub_2176631DC(v23);
      v97 = OUTLINED_FUNCTION_30_1();
      sub_2176631DC(v97);
      v74 = v23;
      goto LABEL_39;
    }

    v75 = sub_2172717F0(v134, v24);
    v76 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v76);
    v77 = OUTLINED_FUNCTION_179();
    sub_2176631DC(v77);
    v78 = OUTLINED_FUNCTION_30_1();
    sub_2176631DC(v78);
    v79 = OUTLINED_FUNCTION_179();
    sub_217668FF0(v79);
    if ((v75 & 1) == 0)
    {
LABEL_40:

      v61 = OUTLINED_FUNCTION_30_1();
      goto LABEL_41;
    }
  }

  else
  {
    sub_2176631DC(v8);
    if (v24)
    {
      sub_2176631DC(v23);
      v64 = v8;
      goto LABEL_29;
    }

    sub_2176631DC(v23);
    sub_2176631DC(v8);
    sub_217668FF0(v23);
  }

  v41 = v38;

LABEL_14:
  v42 = OUTLINED_FUNCTION_30_1();
  sub_217668FF0(v42);
  v43 = __dst[0];
  v44 = __dst[1];
  OUTLINED_FUNCTION_93_14(v138);
  v45 = v184[0];
  if (v44 == 2)
  {
    if (*(&v184[0] + 1) == 2)
    {
      *&v139[0] = v43;
      *(&v139[0] + 1) = 2;
      OUTLINED_FUNCTION_93_14(&v139[1]);
      OUTLINED_FUNCTION_5_37();
      sub_21738C4B0(v46, v47, v48, v49);
      OUTLINED_FUNCTION_5_37();
      sub_21738C4B0(v50, v51, v52, v53);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v54, v55, v56);
      goto LABEL_35;
    }

LABEL_26:
    *&v139[0] = v43;
    *(&v139[0] + 1) = v44;
    OUTLINED_FUNCTION_93_14(&v139[1]);
    v139[6] = v45;
    memcpy(&v139[7], &v184[1], 0x49uLL);
    OUTLINED_FUNCTION_5_37();
    sub_21738C4B0(v65, v66, v67, v68);
    OUTLINED_FUNCTION_5_37();
    sub_21738C4B0(v69, v70, v71, v72);
    sub_2171F0738(v139, &qword_27CB2B5A8, &qword_21778B7F8);
    goto LABEL_42;
  }

  if (*(&v184[0] + 1) == 2)
  {
    goto LABEL_26;
  }

  __src[0] = v184[0];
  memcpy(&__src[1], &v184[1], 0x49uLL);
  memcpy(v139, __src, 0x59uLL);
  OUTLINED_FUNCTION_93_14(&v155);
  *&v154 = v43;
  *(&v154 + 1) = v44;
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v80, v81, v82, v83);
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v84, v85, v86, v87);
  v88 = sub_21766B684(&v154, v139);
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v89, v90, v91);
  *&v136 = v43;
  *(&v136 + 1) = v44;
  memcpy(v137, v138, 0x49uLL);
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v92, v93, v94);
  if (!v88)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v133)
  {
    if ((v132 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v132)
    {
      goto LABEL_42;
    }

    __src[0] = v185;
    __src[1] = v186;
    __src[2] = v187[0];
    *(&__src[2] + 9) = *(v187 + 9);
    v138[0] = v166;
    v138[1] = v167;
    v138[2] = v168[0];
    *(&v138[2] + 9) = *(v168 + 9);
    if ((sub_21766B5D8(v138, __src) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v131)
  {
    if ((v130 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v130)
    {
      goto LABEL_42;
    }

    v152[0] = v188;
    v152[1] = v189;
    v153[0] = v190[0];
    *(v153 + 9) = *(v190 + 9);
    v150[0] = v169;
    v150[1] = v170;
    v151[0] = v171[0];
    *(v151 + 9) = *(v171 + 9);
    if ((sub_21766B5D8(v150, v152) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v128)
  {
    if ((v129 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v129)
    {
      goto LABEL_42;
    }

    v148[0] = v191;
    v148[1] = v192;
    v149[0] = v193[0];
    *(v149 + 9) = *(v193 + 9);
    v146[0] = v172;
    v146[1] = v173;
    v147[0] = v174[0];
    *(v147 + 9) = *(v174 + 9);
    if ((sub_21766B5D8(v146, v148) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v127)
  {
    if ((v126 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v126)
    {
      goto LABEL_42;
    }

    v144[0] = v194;
    v144[1] = v195;
    v145[0] = v196[0];
    *(v145 + 9) = *(v196 + 9);
    v142[0] = v175;
    v142[1] = v176;
    v143[0] = v177[0];
    *(v143 + 9) = *(v177 + 9);
    if ((sub_21766B5D8(v142, v144) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v125)
  {
    if ((v124 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v136 = v178;
    v137[0] = v179;
    v137[1] = v180[0];
    *(&v137[1] + 10) = *(v180 + 10);
    BYTE10(v137[2]) = v125;
    if ((v124 & 1) != 0 || !static CloudAudioAnalysis.CloudFades.== infix(_:_:)(&v136, v197))
    {
      goto LABEL_42;
    }
  }

  if (v122)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v41)
    {
      goto LABEL_42;
    }

    v136 = v199;
    v137[0] = v200;
    v137[1] = v201[0];
    *(&v137[1] + 9) = *(v201 + 9);
    v140[0] = v181;
    v140[1] = v182;
    v141[0] = v183[0];
    *(v141 + 9) = *(v183 + 9);
    if ((sub_21766B5D8(v140, &v136) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v123 != 1)
  {
    if (v119 == 1)
    {
      sub_21739AF10(v120, v121, v123);
      sub_21739AF10(v117, v118, 1);
      OUTLINED_FUNCTION_58_3();
      sub_21739AF10(v98, v99, v100);

LABEL_85:
      sub_21733B290(v120, v121, v123);
      v101 = v117;
      v102 = v118;
      v103 = v119;
LABEL_107:
      sub_21733B290(v101, v102, v103);
      goto LABEL_42;
    }

    if (v121)
    {
      if ((v118 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else if ((v118 & 1) != 0 || *&v120 != *&v117)
    {
      goto LABEL_104;
    }

    if (v123)
    {
      if (!v119)
      {
        v119 = 0;
LABEL_104:
        v109 = v123;
        sub_21739AF10(v120, v121, v123);
        goto LABEL_105;
      }

      v104 = sub_217271798(v123, v119);
      v105 = OUTLINED_FUNCTION_173();
      sub_21739AF10(v105, v106, v123);
      sub_21739AF10(v117, v118, v119);
      v107 = OUTLINED_FUNCTION_173();
      sub_21739AF10(v107, v108, v123);
      sub_21733B290(v117, v118, v119);
      if ((v104 & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      sub_21739AF10(v120, v121, 0);
      v109 = 0;
      if (v119)
      {
LABEL_105:
        sub_21739AF10(v117, v118, v119);
        sub_21739AF10(v120, v121, v109);
        sub_21733B290(v117, v118, v119);
LABEL_106:

        v101 = v120;
        v102 = v121;
        v103 = v123;
        goto LABEL_107;
      }

      v110 = OUTLINED_FUNCTION_56_0();
      sub_21739AF10(v110, v111, 0);
      sub_21739AF10(v120, v121, 0);
      v112 = OUTLINED_FUNCTION_56_0();
      sub_21733B290(v112, v113, 0);
    }

    goto LABEL_78;
  }

  sub_21739AF10(v120, v121, 1);
  if (v119 != 1)
  {
    sub_21739AF10(v117, v118, v119);
    goto LABEL_85;
  }

  v123 = 1;
  sub_21739AF10(v117, v118, 1);
LABEL_78:
  sub_21733B290(v120, v121, v123);
  if (v116)
  {
    if (!v39 || (sub_217271600(v116, v39) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v39)
  {
    goto LABEL_42;
  }

  if (v115 && v114)
  {
    sub_217751DE8();
    sub_217271698(v115, v114);
  }

LABEL_42:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217663F64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374616562 && a2 == 0xE500000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7955819 && a2 == 0xE300000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7172194 && a2 == 0xE300000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6369646F6C656DLL && a2 == 0xEB00000000737365;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69626165636E6164 && a2 == 0xEC0000007974696CLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365646166 && a2 == 0xE500000000000000;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x63697473756F6361 && a2 == 0xEC0000007373656ELL;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7373656E64756F6CLL && a2 == 0xED00006576727543;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x7463416C61636F76 && a2 == 0xED00007974697669)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_217753058();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_217664354(char a1)
{
  result = 0x7373656E64756F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x796772656E65;
      break;
    case 2:
      v3 = 1952540002;
      goto LABEL_13;
    case 3:
      result = 7955819;
      break;
    case 4:
      result = 7172194;
      break;
    case 5:
      result = 0x65636E656C6176;
      break;
    case 6:
      result = 0x6E6369646F6C656DLL;
      break;
    case 7:
      result = 0x69626165636E6164;
      break;
    case 8:
      v3 = 1701077350;
LABEL_13:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 9:
      result = 0x63697473756F6361;
      break;
    case 11:
      result = 0x73657361726870;
      break;
    case 12:
      result = 0x7463416C61636F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176644D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217663F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176644F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766BD60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217664534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766BD60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5B0, &qword_21778B800);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = v64 - v32;
  v34 = *(v25 + 256);
  v70 = *(v25 + 264);
  v71 = v34;
  memcpy(v78, (v25 + 272), 0x59uLL);
  v35 = *(v25 + 752);
  v68 = *(v25 + 760);
  v69 = v35;
  v36 = *(v25 + 768);
  v66 = *(v25 + 776);
  v67 = v36;
  v65 = *(v25 + 784);
  v37 = OUTLINED_FUNCTION_160(v27, v27[3]);
  sub_21766BD60(v37, v38, v39);
  sub_2177532F8();
  memcpy(v77, v25, 0xBBuLL);
  v76[0] = 0;
  v40 = OUTLINED_FUNCTION_154();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  OUTLINED_FUNCTION_4_107();
  sub_21737CD60(v42);
  v72 = v33;
  sub_217752F38();
  if (v24)
  {
    (*(v30 + 8))(v72, v28);
  }

  else
  {
    v44 = v70;
    v43 = v71;
    v64[0] = v30;
    v64[1] = v28;
    v45 = *(v25 + 208);
    v77[0] = *(v25 + 192);
    v77[1] = v45;
    v77[2] = *(v25 + 224);
    *(&v77[2] + 10) = *(v25 + 234);
    v76[0] = 1;
    v46 = OUTLINED_FUNCTION_154();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
    OUTLINED_FUNCTION_4_107();
    sub_21737CD60(v49);
    sub_217752F38();
    *&v77[0] = v43;
    *(&v77[0] + 1) = v44;
    v76[0] = 2;
    v50 = sub_2176631DC(v43);
    sub_21766BDB4(v50, v51, v52);
    sub_217752F38();
    v71 = v48;
    sub_217668FF0(*&v77[0]);
    memcpy(v77, v78, 0x59uLL);
    sub_21738C4B0(v78, v76, &qword_27CB2B5A0, &qword_21778B7F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5E8, &qword_21778B818);
    OUTLINED_FUNCTION_4_107();
    sub_21737CD60(v53);
    sub_217752F38();
    memcpy(v76, v77, 0x59uLL);
    sub_2171F0738(v76, &qword_27CB2B5A0, &qword_21778B7F0);
    v56 = *(v25 + 384);
    v73 = *(v25 + 368);
    v74 = v56;
    v75[0] = *(v25 + 400);
    *(v75 + 10) = *(v25 + 410);
    sub_217752F38();
    OUTLINED_FUNCTION_7_71(v25 + 432);
    OUTLINED_FUNCTION_8_75(5);
    OUTLINED_FUNCTION_7_71(v25 + 496);
    OUTLINED_FUNCTION_8_75(6);
    OUTLINED_FUNCTION_7_71(v25 + 560);
    v57 = OUTLINED_FUNCTION_8_75(7);
    v58 = *(v25 + 640);
    v73 = *(v25 + 624);
    v74 = v58;
    v75[0] = *(v25 + 656);
    *(v75 + 11) = *(v25 + 667);
    sub_21766BE08(v57, v59, v60);
    OUTLINED_FUNCTION_10_61();
    sub_217752F38();
    OUTLINED_FUNCTION_7_71(v25 + 688);
    OUTLINED_FUNCTION_8_75(9);
    *&v73 = v69;
    *(&v73 + 1) = v68;
    *&v74 = v67;
    v61 = sub_21739AF10(v69, v68, v67);
    sub_21766BE5C(v61, v62, v63);
    OUTLINED_FUNCTION_10_61();
    sub_217752F38();
    sub_21733B290(v73, *(&v73 + 1), v74);
    *&v73 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B608, &qword_21778B820);
    sub_21766CDA8(&unk_27CB2B610);
    OUTLINED_FUNCTION_10_61();
    sub_217752F38();
    *&v73 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B620, &qword_21778B828);
    sub_21766BF04(&unk_27CB2B628);
    sub_217752F38();
    v54 = OUTLINED_FUNCTION_154();
    v55(v54);
  }

  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = v0[1];
  v36 = *v0;
  v52 = v0[3];
  v53 = v0[2];
  v51 = v0[4];
  v49 = *(v0 + 41);
  v50 = *(v0 + 40);
  v4 = *(v0 + 42);
  v111 = *(v0 + 23);
  v110 = v4;
  v55 = v3;
  v56 = v0[6];
  v62 = v0[7];
  v60 = v0[9];
  v61 = v0[8];
  v59 = v0[10];
  v58 = *(v0 + 88);
  v57 = *(v0 + 89);
  v5 = *(v0 + 90);
  v120 = *(v0 + 47);
  v119 = v5;
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[16];
  v35 = *(v0 + 136);
  v63 = *(v0 + 137);
  v11 = *(v0 + 138);
  v129 = *(v0 + 71);
  v128 = v11;
  v12 = v0[18];
  v33 = v0[20];
  v34 = v0[19];
  v31 = v0[22];
  v32 = v0[21];
  v30 = *(v0 + 184);
  v13 = *(v0 + 12);
  v14 = *(v0 + 13);
  v15 = *(v0 + 14);
  *(v98 + 9) = *(v0 + 233);
  v98[0] = v15;
  v97 = v14;
  v96 = v13;
  v54 = *(v0 + 185);
  v47 = *(v0 + 186);
  v39 = *(v0 + 249);
  v40 = v0[32];
  v41 = v0[33];
  v42 = v0[35];
  memcpy(__dst, v0 + 36, sizeof(__dst));
  v16 = *(v0 + 24);
  v100 = *(v0 + 23);
  v101 = v16;
  v102[0] = *(v0 + 25);
  *(v102 + 9) = *(v0 + 409);
  v17 = *(v0 + 425);
  v18 = *(v0 + 28);
  v102[2] = *(v0 + 27);
  v102[3] = v18;
  v103[0] = *(v0 + 29);
  *(v103 + 9) = *(v0 + 473);
  v43 = v17;
  v44 = *(v0 + 489);
  v19 = *(v0 + 32);
  v103[2] = *(v0 + 31);
  v103[3] = v19;
  v104[0] = *(v0 + 33);
  *(v104 + 9) = *(v0 + 537);
  v20 = *(v0 + 553);
  v21 = *(v0 + 36);
  v104[2] = *(v0 + 35);
  v104[3] = v21;
  v105[0] = *(v0 + 37);
  *(v105 + 9) = *(v0 + 601);
  v45 = v20;
  v46 = *(v0 + 617);
  *(v106 + 9) = *(v0 + 729);
  v22 = *(v0 + 44);
  v106[0] = *(v0 + 45);
  v23 = *(v0 + 43);
  v105[3] = v22;
  v105[2] = v23;
  v38 = *(v0 + 745);
  v28 = v0[94];
  v29 = v0[95];
  v24 = v0[96];
  v137 = v47;
  v48 = v0[97];
  v37 = v0[98];
  v107[0] = v36;
  v107[1] = v55;
  v107[2] = v53;
  v107[3] = v52;
  v107[4] = v51;
  v108 = v50;
  v109 = v49;
  v112 = v56;
  v113 = v62;
  v114 = v61;
  v115 = v60;
  v116 = v59;
  v117 = v58;
  v118 = v57;
  v121 = v6;
  v122 = v7;
  v123 = v8;
  v124 = v9;
  v125 = v10;
  v126 = v35;
  v127 = v63;
  v130 = v12;
  v131 = v34;
  v132 = v33;
  v133 = v32;
  v134 = v31;
  v135 = v30;
  v136 = v54;
  if (sub_217668FD4(v107) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    v89 = v36;
    v90 = v55;
    v91 = v53;
    v92 = v52;
    v93 = v51;
    v94 = v50;
    v95 = v49 & 1;
    sub_217265760(v2);
    v82 = v56;
    v83 = v62;
    v84 = v61;
    v85 = v60;
    v86 = v59;
    v87 = v58;
    v88 = v57 & 1;
    sub_217265760(v2);
    v75 = v6;
    v76 = v7;
    v77 = v8;
    v78 = v9;
    v79 = v10;
    v80 = v35;
    v81 = v63 & 1;
    sub_217265760(v2);
    v68 = v12;
    v69 = v34;
    v70 = v33;
    v71 = v32;
    v72 = v31;
    v73 = v30;
    v74 = v54 & 1;
    sub_217265760(v2);
  }

  if (v39)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v65 = v96;
    v66 = v97;
    v67[0] = v98[0];
    *(v67 + 9) = *(v98 + 9);
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v40 != 1)
  {
    OUTLINED_FUNCTION_24();
    if (v40)
    {
      OUTLINED_FUNCTION_24();
      sub_2172822A0();
      if (v41)
      {
LABEL_10:
        OUTLINED_FUNCTION_24();
        sub_2172822A0();
        goto LABEL_13;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (v41)
      {
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_13:
  if (v42 == 2)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v64, __dst, sizeof(v64));
    OUTLINED_FUNCTION_24();
    sub_21766C74C(v2);
  }

  if (v43)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v44)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v45)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v46)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  sub_217265660(v2, v25, v26);
  if (v38)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21766CA98();
  }

  if (v24 != 1)
  {
    OUTLINED_FUNCTION_24();
    if (v29)
    {
      OUTLINED_FUNCTION_25();
      if (v24)
      {
LABEL_34:
        OUTLINED_FUNCTION_24();
        sub_217282254();
        goto LABEL_40;
      }
    }

    else
    {
      OUTLINED_FUNCTION_24();
      if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v27 = v28;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x21CEA3580](v27);
      if (v24)
      {
        goto LABEL_34;
      }
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_40:
  if (!v48)
  {
    OUTLINED_FUNCTION_25();
    if (v37)
    {
      goto LABEL_42;
    }

LABEL_44:
    OUTLINED_FUNCTION_25();
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_24();
  sub_2172821BC();
  if (!v37)
  {
    goto LABEL_44;
  }

LABEL_42:
  OUTLINED_FUNCTION_24();
  sub_2172820A8();
LABEL_45:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudAudioAnalysis.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudAudioAnalysis.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudAudioAnalysis.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B638, &qword_21778B830);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21766BD60(v6, v7, v8);
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5C0, &qword_21778B808);
    v92 = 0;
    OUTLINED_FUNCTION_5_91();
    v11 = sub_21737CD60(v10);
    OUTLINED_FUNCTION_57_22(v9, &v92, v106, v9, v11);
    memcpy(v105, v93, 0xBBuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5D0, &qword_21778B810);
    v88 = 1;
    OUTLINED_FUNCTION_5_91();
    v13 = sub_21737CD60(v12);
    v14 = OUTLINED_FUNCTION_3_107(v13, &v88);
    v105[12] = v89;
    v105[13] = v90;
    v105[14] = *v91;
    *(&v105[14] + 10) = *&v91[10];
    LOBYTE(v49[0]) = 2;
    v17 = sub_21766CCAC(v14, v15, v16);
    OUTLINED_FUNCTION_57_22(&type metadata for CloudAudioAnalysis.CloudEventTimes, v49, v106, &type metadata for CloudAudioAnalysis.CloudEventTimes, v17);
    v45 = v50[0];
    v46 = v50[1];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B5E8, &qword_21778B818);
    v86 = 3;
    OUTLINED_FUNCTION_5_91();
    v20 = sub_21737CD60(v19);
    OUTLINED_FUNCTION_57_22(v18, &v86, v106, v18, v20);
    v21 = memcpy(v104, v87, sizeof(v104));
    v82 = 4;
    v22 = OUTLINED_FUNCTION_3_107(v21, &v82);
    *&v103[7] = v83;
    *&v103[23] = v84;
    *&v103[39] = *v85;
    *&v103[49] = *&v85[10];
    v78 = 5;
    v23 = OUTLINED_FUNCTION_3_107(v22, &v78);
    v101[2] = v79;
    v101[3] = v80;
    *v102 = *v81;
    *&v102[10] = *&v81[10];
    v74 = 6;
    v24 = OUTLINED_FUNCTION_3_107(v23, &v74);
    v100[2] = v75;
    v100[3] = v76;
    v101[0] = *v77;
    *(v101 + 10) = *&v77[10];
    v70 = 7;
    v25 = OUTLINED_FUNCTION_3_107(v24, &v70);
    *&v99[17] = v71;
    *&v99[25] = v72;
    v100[0] = *v73;
    *(v100 + 10) = *&v73[10];
    v66 = 8;
    v28 = sub_21766CD00(v25, v26, v27);
    v29 = OUTLINED_FUNCTION_57_22(&type metadata for CloudAudioAnalysis.CloudFades, &v66, v106, &type metadata for CloudAudioAnalysis.CloudFades, v28);
    *&v98[39] = v67;
    *&v98[55] = v68;
    *v99 = *v69;
    *(&v99[5] + 1) = *&v69[11];
    v62 = 9;
    v30 = OUTLINED_FUNCTION_3_107(v29, &v62);
    v96 = v63;
    v97 = v64;
    *v98 = *v65;
    *&v98[10] = *&v65[10];
    LOBYTE(v49[0]) = 10;
    v33 = sub_21766CD54(v30, v31, v32);
    OUTLINED_FUNCTION_57_22(&type metadata for CloudAudioAnalysis.CloudLoudnessCurve, v49, v106, &type metadata for CloudAudioAnalysis.CloudLoudnessCurve, v33);
    v34 = v50[0];
    v47 = v50[2];
    v48 = v50[1];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B608, &qword_21778B820);
    LOBYTE(v49[0]) = 11;
    v36 = sub_21766CDA8(&unk_27CB2B670);
    OUTLINED_FUNCTION_57_22(v35, v49, v106, v35, v36);
    v37 = v50[0];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B620, &qword_21778B828);
    v60 = 12;
    v39 = sub_21766BF04(&unk_27CB2B680);
    OUTLINED_FUNCTION_57_22(v38, &v60, v106, v38, v39);
    v40 = OUTLINED_FUNCTION_19_41();
    v41(v40);
    v42 = v61;
    memcpy(v49, v105, 0x100uLL);
    v49[32] = v45;
    v49[33] = v46;
    memcpy(&v49[34], v104, 0x59uLL);
    memcpy(&v49[45] + 1, v103, 0x41uLL);
    OUTLINED_FUNCTION_76_16(&v49[53] + 2);
    OUTLINED_FUNCTION_27_45(v43);
    OUTLINED_FUNCTION_31_41();
    v49[94] = v34;
    v49[95] = v48;
    v49[96] = v47;
    v49[97] = v37;
    v49[98] = v42;
    memcpy(v4, v49, 0x318uLL);
    sub_21766CEBC(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v50, v105, 0x100uLL);
    v50[32] = v45;
    v50[33] = v46;
    memcpy(v51, v104, sizeof(v51));
    memcpy(v52, v103, sizeof(v52));
    OUTLINED_FUNCTION_76_16(v53);
    OUTLINED_FUNCTION_27_45(v44);
    OUTLINED_FUNCTION_31_41();
    v53[80] = v94;
    v54 = v95;
    v55 = v34;
    v56 = v48;
    v57 = v47;
    v58 = v37;
    v59 = v42;
    sub_21766CEF4(v50);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217665AE4(uint64_t a1)
{
  sub_2177531E8();
  CloudAudioAnalysis.Attributes.hash(into:)();
  return sub_217753238();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.init(main:beginning:ending:percentDeviation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_2177528F8();
  OUTLINED_FUNCTION_43();
  v21 = *(v17 + 32);
  v21(a8, a1, v16);
  v18 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute(0, a5, a6, a7);
  v21(a8 + v18[11], a2, v16);
  v21(a8 + v18[12], a3, v16);
  v19 = a8 + v18[13];

  return (v21)(v19, a4, v16);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.main.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_93();

  return v2(v1);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.beginning.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_68_22();

  return v2(v1);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.ending.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_68_22();

  return v2(v1);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute.percentDeviation.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_94_14(a1);
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_68_22();

  return v2(v1);
}

uint64_t sub_217665DC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000002177B4660 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_217665F28(char a1)
{
  result = 1852399981;
  switch(a1)
  {
    case 1:
      result = 0x6E696E6E69676562;
      break;
    case 2:
      result = 0x676E69646E65;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217665FE0(uint64_t a1)
{
  sub_2177531E8();
  sub_217230440(v3, *v1);
  return sub_217753238();
}

uint64_t sub_21766603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217665DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217666098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172D6288();
  *a1 = result;
  return result;
}

uint64_t sub_2176660CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217666120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void CloudAudioAnalysis.CloudCompositeAttribute.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v42 = v24;
  v43 = v25;
  v27 = v26;
  v30 = v28[2];
  v29 = v28[3];
  v41[0] = v28;
  v41[1] = v30;
  v31 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute.CodingKeys(255, v30, v29, v28[4]);
  OUTLINED_FUNCTION_35_35(v31, v32, v33);
  v34 = sub_217752F98();
  OUTLINED_FUNCTION_0_0();
  v36 = v35;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v39 = v41 - v38;
  OUTLINED_FUNCTION_160(v27, v27[3]);
  sub_2177532F8();
  OUTLINED_FUNCTION_18_51();
  v40 = v43;
  sub_217752F38();
  if (!v40)
  {
    OUTLINED_FUNCTION_18_51();
    sub_217752F38();
    OUTLINED_FUNCTION_18_51();
    sub_217752F38();
    OUTLINED_FUNCTION_18_51();
    sub_217752F38();
  }

  (*(v36 + 8))(v39, v34);
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudCompositeAttribute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v68 = v33;
  v77 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v71 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_31();
  v69 = v36;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_99();
  v70 = v38;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_99();
  v72 = v40;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v41);
  v76 = v66 - v42;
  v43 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute.CodingKeys(255, v30, v28, v26);
  OUTLINED_FUNCTION_35_35(v43, v44, v45);
  v75 = sub_217752ED8();
  OUTLINED_FUNCTION_0_0();
  v73 = v46;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  v49 = v66 - v48;
  v74 = v30;
  v78 = v28;
  v50 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute(0, v30, v28, v26);
  OUTLINED_FUNCTION_0_0();
  v67 = v51;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  v54 = v66 - v53;
  OUTLINED_FUNCTION_160(v32, v32[3]);
  v79 = v49;
  sub_2177532C8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v55 = v72;
    v80 = v54;
    v56 = v32;
    v57 = v77;
    OUTLINED_FUNCTION_39_29();
    sub_217752E58();
    v58 = v76;
    v76 = *(v71 + 32);
    (v76)(v80, v58, v57);
    OUTLINED_FUNCTION_50_27();
    v59 = v55;
    OUTLINED_FUNCTION_39_29();
    sub_217752E58();
    v60 = v80;
    (v76)(&v80[v50[11]], v59, v77);
    v61 = v70;
    OUTLINED_FUNCTION_39_29();
    v66[1] = 0;
    sub_217752E58();
    v72 = v56;
    (v76)(&v60[v50[12]], v61, v77);
    v62 = v69;
    sub_217752E58();
    v63 = OUTLINED_FUNCTION_25_53();
    v64(v63, v75);
    (v76)(&v60[v50[13]], v62, v77);
    v65 = v67;
    (*(v67 + 16))(v68, v60, v50);
    __swift_destroy_boxed_opaque_existential_1(v72);
    (*(v65 + 8))(v60, v50);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

void __swiftcall CloudAudioAnalysis.CloudStatistics.init(value:range:peak:)(MusicKit::CloudAudioAnalysis::CloudStatistics *__return_ptr retstr, Swift::Double_optional value, Swift::Double_optional range, Swift::Double_optional peak)
{
  OUTLINED_FUNCTION_90_16(retstr, *&value.is_nil, range.is_nil, *&peak.is_nil, v4);
  *(v6 + 32) = v5;
  *(v6 + 40) = v7 & 1;
}

uint64_t static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2176668D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1801545072 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2176669E8(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 1801545072;
}

uint64_t sub_217666A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176668D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217666A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766CF54(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217666A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766CF54(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudStatistics.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B690, &qword_21778B838);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_74_16();
  v8 = OUTLINED_FUNCTION_13_61(v3);
  sub_21766CF54(v8, v9, v10);
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  OUTLINED_FUNCTION_84_14();
  sub_217752F18();
  if (!v0)
  {
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudStatistics.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_217753208();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *v0;
    sub_217753208();
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x21CEA3580](v10);
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x21CEA3580](v6);
      if (!v4)
      {
        goto LABEL_7;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (v4)
  {
    return sub_217753208();
  }

LABEL_7:
  sub_217753208();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x21CEA3580](v7);
}

uint64_t CloudAudioAnalysis.CloudStatistics.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_238();
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x21CEA3580](v7);
  }

  if (v4)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CEA3580](v8);
  }

  if (v6)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CEA3580](v9);
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudStatistics.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6A0, &qword_21778B840);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128();
  v6 = OUTLINED_FUNCTION_6_91();
  v9 = sub_21766CF54(v6, v7, v8);
  OUTLINED_FUNCTION_23_49(&type metadata for CloudAudioAnalysis.CloudStatistics.CodingKeys, v10, v9);
  if (!v2)
  {
    OUTLINED_FUNCTION_17_54();
    v11 = sub_217752E38();
    v13 = v12;
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_17_54();
    v14 = sub_217752E38();
    v19 = v15;
    v18 = v14;
    OUTLINED_FUNCTION_17_54();
    sub_217752E38();
    v16 = OUTLINED_FUNCTION_71_18();
    v17(v16);
    *v3 = v11;
    *(v3 + 8) = v13 & 1;
    *(v3 + 16) = v18;
    *(v3 + 24) = v19 & 1;
    *(v3 + 32) = v1;
    *(v3 + 40) = v4 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217666F84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = *(v1 + 40);
  sub_2177531E8();
  if (v3 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x21CEA3580](v8);
  }

  if (v5)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CEA3580](v9);
  }

  if (v7)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x21CEA3580](v10);
  }

  return sub_217753238();
}

__n128 CloudAudioAnalysis.CloudCompositeAttributeTonality.init(tonic:mode:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  return result;
}

uint64_t static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }

    v8 = *a1 == *a2 && v4 == v6;
    if (!v8 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (v5 == 3)
    {
      if (v7 != 3)
      {
        return 0;
      }
    }

    else if (v7 == 3 || (sub_217706E6C(v5, v7) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v6)
  {

    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_217667134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696E6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2176671F8(char a1)
{
  if (a1)
  {
    return 1701080941;
  }

  else
  {
    return 0x63696E6F74;
  }
}

uint64_t sub_217667244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217667134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21766726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766CFA8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176672A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766CFA8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudCompositeAttributeTonality.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6A8, &qword_21778B848);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_87_2();
  v8 = OUTLINED_FUNCTION_13_61(v3);
  sub_21766CFA8(v8, v9, v10);
  sub_217751DE8();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  v11 = sub_2177532F8();
  sub_21766CFFC(v11, v12, v13);
  OUTLINED_FUNCTION_82_13();
  sub_217752F38();

  if (!v0)
  {
    sub_21766D050(v14, v15, v16);
    OUTLINED_FUNCTION_82_13();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  (*(v6 + 8))(v1, v4, v17);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

double CloudAudioAnalysis.CloudCompositeAttributeTonality.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  if (v2 == 3)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    OUTLINED_FUNCTION_83_18();
    sub_217751FF8();
  }

  return result;
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v2 != 3)
  {
    OUTLINED_FUNCTION_83_18();
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudCompositeAttributeTonality.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6C8, &qword_21778B850);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128();
  v6 = OUTLINED_FUNCTION_6_91();
  sub_21766CFA8(v6, v7, v8);
  OUTLINED_FUNCTION_22();
  v9 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_21766D0A4(v9, v10, v11);
    OUTLINED_FUNCTION_38_33();
    v12 = sub_217752E58();
    sub_21766D0F8(v12, v13, v14);
    OUTLINED_FUNCTION_38_33();
    sub_217752E58();
    v15 = OUTLINED_FUNCTION_1_37();
    v16(v15);
    *v4 = v17;
    *(v4 + 8) = v18;
    *(v4 + 16) = v17;
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176677F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudAudioAnalysis.CloudCompositeAttributeTonality.hash(into:)(v4);
  return sub_217753238();
}

uint64_t CloudAudioAnalysis.CloudEventTimes.init(beatsInMilliseconds:barsInMilliseconds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static CloudAudioAnalysis.CloudEventTimes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (!v6 || (sub_2172717F0(v4, v6) & 1) == 0)
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
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_56_0();
      if (sub_2172717F0(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2176678CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002177B4680 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002177B46A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_2176679A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2176679E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176678CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217667A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D14C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217667A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D14C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudEventTimes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6E0, &qword_21778B858);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_87_2();
  v7 = OUTLINED_FUNCTION_13_61(v2);
  v10 = sub_21766D14C(v7, v8, v9);
  sub_217751DE8();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
  OUTLINED_FUNCTION_33_41();
  sub_21766D1A0(v11);
  OUTLINED_FUNCTION_44_2();
  sub_217752F38();

  if (!v10)
  {
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  (*(v5 + 8))(v0, v3, v12);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudEventTimes.hash(into:)()
{
  v1 = v0[1];
  if (!*v0)
  {
    sub_217753208();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_217753208();
    return;
  }

  sub_217753208();
  sub_2172822A0();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_217753208();

  sub_2172822A0();
}

uint64_t CloudAudioAnalysis.CloudEventTimes.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2)
  {
    sub_2172822A0();
  }

  sub_217753208();
  if (v1)
  {
    sub_2172822A0();
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudEventTimes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B700, &qword_21778B868);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_128();
  v20 = OUTLINED_FUNCTION_6_91();
  sub_21766D14C(v20, v21, v22);
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_32();
    sub_21766D1A0(v23);
    OUTLINED_FUNCTION_54_21();
    OUTLINED_FUNCTION_54_21();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
    v15[1] = a10;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217667F28(uint64_t a1)
{
  sub_2177531E8();
  CloudAudioAnalysis.CloudEventTimes.hash(into:)();
  return sub_217753238();
}

void __swiftcall CloudAudioAnalysis.CloudFades.init(fadeIn:fadeOut:)(MusicKit::CloudAudioAnalysis::CloudFades *__return_ptr retstr, MusicKit::CloudAudioAnalysis::CloudTimeRange_optional *fadeIn, MusicKit::CloudAudioAnalysis::CloudTimeRange_optional *fadeOut)
{
  v3 = *(&fadeIn->value.endInMilliseconds.value + 7);
  v4 = BYTE5(fadeIn[1].value.startInMilliseconds.value);
  v6 = *(&fadeOut->value.endInMilliseconds.value + 7);
  v7 = BYTE5(fadeOut[1].value.startInMilliseconds.value);
  v5 = BYTE6(fadeIn[1].value.startInMilliseconds.value);
  v8 = BYTE6(fadeOut[1].value.startInMilliseconds.value);
  *&retstr->fadeIn.value.startInMilliseconds.value = *&fadeIn->value.startInMilliseconds.value;
  *(&retstr->fadeIn.value.endInMilliseconds.value + 7) = v3;
  BYTE5(retstr->fadeOut.value.startInMilliseconds.value) = v4;
  BYTE6(retstr->fadeOut.value.startInMilliseconds.value) = v5;
  *(&retstr->fadeOut.value.endInMilliseconds.value + 4) = *&fadeOut->value.startInMilliseconds.value;
  *(&retstr[1].fadeIn.value.endInMilliseconds.value + 1) = v6;
  retstr[1].fadeIn.is_nil = v7;
  LOBYTE(retstr[1].fadeOut.value.startInMilliseconds.value) = v8;
}

BOOL static CloudAudioAnalysis.CloudFades.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a2 + 40);
  if (*(a1 + 25))
  {
    if ((*(a2 + 25) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (*(a2 + 25))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10 & 1 | (*a1 != *a2))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (v6)
    {
      return (*(a2 + 57) & 1) != 0;
    }

    if ((*(a2 + 57) & 1) == 0)
    {
      if (v3)
      {
        if ((v7 & 1) == 0)
        {
          return 0;
        }

LABEL_22:
        if (v5)
        {
          if (*(a2 + 56))
          {
            return 1;
          }
        }

        else if ((*(a2 + 56) & 1) == 0 && v4 == *(a2 + 48))
        {
          return 1;
        }

        return 0;
      }

      if (!(v7 & 1 | (v2 != *(a2 + 32))))
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  result = 0;
  if ((*(a2 + 24) & 1) == 0 && v9 == *(a2 + 16))
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2176680C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965646166 && a2 == 0xE600000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21766818C(char a1)
{
  if (a1)
  {
    return 0x74754F65646166;
  }

  else
  {
    return 0x6E4965646166;
  }
}

uint64_t sub_2176681C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176680C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176681F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D1F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21766822C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D1F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudFades.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B710, &qword_21778B870);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_87_2();
  v3 = OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_160(v3, v4);
  sub_21766D1F4(v5, v6, v7);
  OUTLINED_FUNCTION_125_4();
  v8 = sub_2177532F8();
  sub_21766BEB0(v8, v9, v10);
  OUTLINED_FUNCTION_82_13();
  sub_217752F38();
  if (!v0)
  {
    OUTLINED_FUNCTION_82_13();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  v11 = OUTLINED_FUNCTION_58_20();
  v12(v11, v1);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudFades.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v0 + 56);
  v5 = *(v0 + 57);
  if (*(v0 + 25) != 1)
  {
    v6 = *v0;
    v7 = v0[2];
    v8 = *(v0 + 24);
    v9 = *(v0 + 2);
    sub_217753208();
    if (v9)
    {
      sub_217753208();
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        sub_217753208();
        MEMORY[0x21CEA3550](v7);
        if (v5)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

  sub_217753208();
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_217753208();
  if ((v2 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v1);
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_217753208();
    goto LABEL_13;
  }

  sub_217753208();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_217753208();
  MEMORY[0x21CEA3550](v3);
LABEL_13:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudAudioAnalysis.CloudFades.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0[4];
  v7 = v0[5];
  v11 = v0[6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  OUTLINED_FUNCTION_238();
  if (v5 != 1)
  {
    OUTLINED_FUNCTION_1_35();
    if (v2)
    {
      sub_217753208();
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v1);
      if ((v4 & 1) == 0)
      {
LABEL_4:
        OUTLINED_FUNCTION_1_35();
        MEMORY[0x21CEA3550](v3);
        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

  sub_217753208();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_8:
  OUTLINED_FUNCTION_1_35();
  if ((v7 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v6);
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_217753208();
    return sub_217753238();
  }

  sub_217753208();
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_1_35();
  MEMORY[0x21CEA3550](v11);
  return sub_217753238();
}

void CloudAudioAnalysis.CloudFades.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B720, &qword_21778B878);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_128();
  v4 = OUTLINED_FUNCTION_6_91();
  v7 = sub_21766D1F4(v4, v5, v6);
  v9 = OUTLINED_FUNCTION_23_49(&type metadata for CloudAudioAnalysis.CloudFades.CodingKeys, v8, v7);
  if (!v1)
  {
    sub_21766CE14(v9, v10, v11);
    OUTLINED_FUNCTION_63_22(&type metadata for CloudAudioAnalysis.CloudTimeRange);
    OUTLINED_FUNCTION_63_22(&type metadata for CloudAudioAnalysis.CloudTimeRange);
    v12 = OUTLINED_FUNCTION_1_3();
    v13(v12);
    *v2 = v14;
    *(v2 + 16) = v15;
    *(v2 + 24) = v16;
    *(v2 + 25) = v17;
    *(v2 + 32) = v14;
    *(v2 + 48) = v15;
    *(v2 + 56) = v16;
    *(v2 + 57) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176687F0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = v1[4];
  v8 = v1[5];
  v12 = v1[6];
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  sub_2177531E8();
  if (v6 != 1)
  {
    sub_217753208();
    if (v3)
    {
      sub_217753208();
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v2);
      if ((v5 & 1) == 0)
      {
LABEL_4:
        sub_217753208();
        MEMORY[0x21CEA3550](v4);
        if (v10)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

  sub_217753208();
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_217753208();
  if ((v8 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v7);
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_217753208();
    return sub_217753238();
  }

  sub_217753208();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_217753208();
  MEMORY[0x21CEA3550](v12);
  return sub_217753238();
}

uint64_t static CloudAudioAnalysis.CloudTimeRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2176689B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002177B46C0 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002177B46E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_217668A8C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_217668ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176689B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217668AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D248(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217668B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D248(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudTimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B728, &qword_21778B880);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_87_2();
  v5 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21766D248(v5, v6, v7);
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F28();
  if (!v0)
  {
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_44_2();
    sub_217752F28();
  }

  v8 = OUTLINED_FUNCTION_58_20();
  v9(v8, v3);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudTimeRange.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v3 == 1)
  {
    sub_217753208();
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      return MEMORY[0x21CEA3550](v1);
    }
  }

  else
  {
    v5 = *v0;
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_217753208();
}

uint64_t CloudAudioAnalysis.CloudTimeRange.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2 != 1)
  {
    MEMORY[0x21CEA3550](v1);
  }

  sub_217753208();
  if (!v4)
  {
    MEMORY[0x21CEA3550](v3);
  }

  return sub_217753238();
}

void CloudAudioAnalysis.CloudTimeRange.init(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B738, &qword_21778B888);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128();
  v6 = OUTLINED_FUNCTION_6_91();
  v9 = sub_21766D248(v6, v7, v8);
  OUTLINED_FUNCTION_23_49(&type metadata for CloudAudioAnalysis.CloudTimeRange.CodingKeys, v10, v9);
  if (!v2)
  {
    OUTLINED_FUNCTION_17_54();
    v11 = sub_217752E48();
    v13 = v12;
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_17_54();
    sub_217752E48();
    v14 = OUTLINED_FUNCTION_71_18();
    v15(v14);
    *v3 = v11;
    *(v3 + 8) = v13 & 1;
    *(v3 + 16) = v1;
    *(v3 + 24) = v4 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

void __swiftcall CloudAudioAnalysis.CloudLoudnessCurve.init(samplingFrequency:value:)(MusicKit::CloudAudioAnalysis::CloudLoudnessCurve *__return_ptr retstr, Swift::Double_optional samplingFrequency, Swift::OpaquePointer_optional value)
{
  retstr->samplingFrequency.value = *&samplingFrequency.is_nil;
  retstr->samplingFrequency.is_nil = value.value._rawValue & 1;
  *(&retstr->value.value._rawValue + 7) = *&value.is_nil;
}

BOOL static CloudAudioAnalysis.CloudLoudnessCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v5)
  {
    return v7 && (sub_217271798(v5, v7) & 1) != 0;
  }

  return !v7;
}

uint64_t sub_217668FD4(uint64_t a1)
{
  if (*(a1 + 186))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_217668FF0(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_217669034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002177B4700 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_217669100(char a1)
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](a1 & 1);
  return sub_217753238();
}

uint64_t sub_217669140(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_217669178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176691CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217669034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176691F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D29C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217669230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D29C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudLoudnessCurve.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B740, &unk_21778B890);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_87_2();
  v5 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21766D29C(v5, v6, v7);
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F18();
  if (!v0)
  {
    OUTLINED_FUNCTION_50_27();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_33_41();
    sub_21766D2F0(v8);
    OUTLINED_FUNCTION_5_37();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
  }

  v9 = OUTLINED_FUNCTION_58_20();
  v10(v9, v3);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.CloudLoudnessCurve.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  if (v2 != 1)
  {
    v3 = *v0;
    sub_217753208();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CEA3580](v4);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_217753208();
    return;
  }

  sub_217753208();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_217753208();
  OUTLINED_FUNCTION_56_0();

  sub_217282254();
}

uint64_t CloudAudioAnalysis.CloudLoudnessCurve.hashValue.getter()
{
  sub_2177531E8();
  CloudAudioAnalysis.CloudLoudnessCurve.hash(into:)();
  return sub_217753238();
}

void CloudAudioAnalysis.CloudLoudnessCurve.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_43_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B760, &qword_21778B8A0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_128();
  v26 = OUTLINED_FUNCTION_6_91();
  v29 = sub_21766D29C(v26, v27, v28);
  OUTLINED_FUNCTION_23_49(&type metadata for CloudAudioAnalysis.CloudLoudnessCurve.CodingKeys, v30, v29);
  if (!v23)
  {
    OUTLINED_FUNCTION_17_54();
    v31 = sub_217752E38();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_50_27();
    OUTLINED_FUNCTION_32();
    sub_21766D2F0(v34);
    sub_217752E58();
    v35 = OUTLINED_FUNCTION_1_3();
    v36(v35);
    *v24 = v31;
    *(v24 + 8) = v33 & 1;
    *(v24 + 16) = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21766968C(uint64_t a1)
{
  sub_2177531E8();
  CloudAudioAnalysis.CloudLoudnessCurve.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21766978C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_15();
  sub_2177532A8();
  if (!v2)
  {
    OUTLINED_FUNCTION_160(v9, v9[3]);
    OUTLINED_FUNCTION_15();
    v5 = sub_217753078();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21766985C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_15();
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void *sub_217669974@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

__n128 CloudAudioAnalysis.CloudVocalActivity.init(startInMilliseconds:endInMilliseconds:strength:kind:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, char a5@<W3>)
{
  OUTLINED_FUNCTION_90_16(a4, a1, a2, a3, a5);
  result = *v5;
  v8 = *v7;
  *(v9 + 32) = *v5;
  *(v9 + 48) = v8;
  return result;
}

uint64_t static CloudAudioAnalysis.CloudVocalActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 16))
    {
      v15 = *(a2 + 24);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = v7 == *(a2 + 32) && v8 == v11;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      return 0;
    }
  }

  if (!v10)
  {
    if (!v12)
    {

      return 1;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (v9 != v13 || v10 != v12)
  {
    OUTLINED_FUNCTION_93();
    if ((sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217669AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002177B46C0 == a2;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002177B46E0 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1684957547 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_217669C64(char a1)
{
  result = 0x6874676E65727473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 1684957547;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_217669CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217669AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217669D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D344(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217669D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D344(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.CloudVocalActivity.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B770, &qword_21778B8A8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_74_16();
  v8 = OUTLINED_FUNCTION_13_61(v3);
  sub_21766D344(v8, v9, v10);
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  OUTLINED_FUNCTION_84_14();
  sub_217752F28();
  if (!v0)
  {
    OUTLINED_FUNCTION_44_2();
    v12 = sub_217752F28();
    v15 = sub_21766D398(v12, v13, v14);
    sub_217751DE8();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();

    if (!v15)
    {
      sub_21766D3EC(v16, v17, v18);
      sub_217751DE8();
      OUTLINED_FUNCTION_44_2();
      sub_217752F38();
    }
  }

  (*(v6 + 8))(v1, v4, v11);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.CloudVocalActivity.hash(into:)()
{
  OUTLINED_FUNCTION_45_33();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[5];
  v4 = v0[7];
  if (v5 == 1)
  {
    sub_217753208();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *v0;
    sub_217753208();
    MEMORY[0x21CEA3550](v7);
    if (!v2)
    {
LABEL_3:
      sub_217753208();
      MEMORY[0x21CEA3550](v1);
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_217753208();
      if (v4)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_217753208();
  OUTLINED_FUNCTION_154();
  sub_217751FF8();
  if (!v4)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();
  OUTLINED_FUNCTION_56_0();

  return sub_217751FF8();
}

uint64_t CloudAudioAnalysis.CloudVocalActivity.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudAudioAnalysis.CloudVocalActivity.hash(into:)();
  return sub_217753238();
}

void CloudAudioAnalysis.CloudVocalActivity.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B790, &qword_21778B8B0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128();
  v6 = OUTLINED_FUNCTION_6_91();
  sub_21766D344(v6, v7, v8);
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_91_15();
    v35 = v10 & 1;
    LOBYTE(v28) = 1;
    v11 = OUTLINED_FUNCTION_91_15();
    v34 = v12 & 1;
    sub_21766D440(v11, v12, v13);
    v14 = sub_217752E58();
    v23 = v28;
    sub_21766D494(v14, v15, v16);
    OUTLINED_FUNCTION_38_33();
    sub_217752E58();
    v17 = OUTLINED_FUNCTION_1_37();
    v18(v17);
    v19 = v33;
    *&v24 = v9;
    BYTE8(v24) = v35;
    *&v25 = v11;
    v20 = v34;
    BYTE8(v25) = v34;
    v26 = v28;
    v27 = v33;
    v21 = v25;
    *v4 = v24;
    v4[1] = v21;
    v22 = v27;
    v4[2] = v26;
    v4[3] = v22;
    sub_217283A4C(&v24, &v28);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *&v28 = v9;
    BYTE8(v28) = v35;
    v29 = v11;
    v30 = v20;
    v31 = v23;
    v32 = v19;
    sub_217283AA8(&v28);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21766A344(uint64_t a1)
{
  sub_2177531E8();
  CloudAudioAnalysis.CloudVocalActivity.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21766A388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D4E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21766A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D4E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21766A468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D53C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21766A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D53C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21766A5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D590(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21766A5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D590(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21766A65C()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  v7 = OUTLINED_FUNCTION_1_37();
  v8(v7);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

void CloudAudioAnalysis.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudAudioAnalysis.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_85_15();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x318uLL);
  return sub_21766CEBC(v8, v7);
}

uint64_t sub_21766A8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_27CB23B80 != -1)
  {
    swift_once();
  }

  v1 = unk_27CB26FB0;
  v2 = byte_27CB26FB8;
  *(v0 + 32) = qword_27CB26FA8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2B598 = v0;

  return sub_217751DE8();
}

void static CloudAudioAnalysis.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  memcpy(__dst, v2 + 2, sizeof(__dst));
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_85_15();
  memcpy(v8, v9, v10);
  v11 = v4 == v6 && v5 == v7;
  if (v11 || (sub_217753058() & 1) != 0)
  {
    sub_21766CEBC(__dst, v15);
    sub_21766CEBC(v19, v15);
    static CloudAudioAnalysis.Attributes.== infix(_:_:)();
    OUTLINED_FUNCTION_85_15();
    memcpy(v12, v13, v14);
    sub_21766CEF4(v16);
    memcpy(v17, v3 + 2, sizeof(v17));
    sub_21766CEF4(v17);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_21766AAB8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21766AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21766ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D5E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21766ABDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21766D5E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAudioAnalysis.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B7D8, &qword_21778B8D0);
  OUTLINED_FUNCTION_0_0();
  v42 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_85_15();
  memcpy(v11, v12, v13);
  v14 = *(v0 + 808);
  v40 = *(v0 + 809);
  v41 = v14;
  v39 = *(v0 + 810);
  v15 = OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21766D5E4(v15, v16, v17);
  sub_217751DE8();
  v18 = v8;
  v19 = sub_2177532F8();
  v47[0] = v9;
  v47[1] = v10;
  LOBYTE(v45[0]) = 0;
  sub_2172E1B18(v19, v20, v21);
  sub_217752F88();
  if (v1)
  {

    (*(v42 + 8))(v8, v4, v22);
  }

  else
  {
    v24 = v40;
    v23 = v41;
    v25 = v42;

    memcpy(v47, v48, sizeof(v47));
    v46 = 1;
    v26 = sub_21766CEBC(v48, v45);
    sub_21766D638(v26, v27, v28);
    OUTLINED_FUNCTION_44_28();
    sub_217752F88();
    memcpy(v45, v47, sizeof(v45));
    v29 = sub_21766CEF4(v45);
    v44 = v23;
    v43 = 2;
    sub_21766D68C(v29, v30, v31);
    OUTLINED_FUNCTION_44_28();
    v32 = sub_217752F38();
    v44 = v24;
    v43 = 3;
    sub_21766D6E0(v32, v33, v34);
    OUTLINED_FUNCTION_44_28();
    v35 = sub_217752F38();
    v44 = v39;
    v43 = 4;
    sub_21766D734(v35, v36, v37);
    OUTLINED_FUNCTION_44_28();
    sub_217752F38();
    (*(v25 + 8))(v18, v4);
  }

  OUTLINED_FUNCTION_60_27();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudAudioAnalysis.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  CloudAudioAnalysis.Attributes.hash(into:)();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t CloudAudioAnalysis.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  CloudAudioAnalysis.Attributes.hash(into:)();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

void CloudAudioAnalysis.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_171();
  v29 = v28;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B808, &qword_21778B8D8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_13_61(v29);
  sub_21766D5E4(v33, v34, v35);
  v36 = sub_2177532C8();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_2172E1C68(v36, v37, v38);
    OUTLINED_FUNCTION_40_33();
    v39 = sub_217752EA8();
    v40 = v56;
    v54 = v57;
    sub_21766D788(v39, v41, v42);
    OUTLINED_FUNCTION_40_33();
    sub_217752EA8();
    v43 = memcpy(v60, v59, sizeof(v60));
    sub_21766D7DC(v43, v44, v45);
    v46 = sub_217752E58();
    v61 = v56;
    LOBYTE(v55[0]) = 3;
    sub_21766D830(v46, v47, v48);
    OUTLINED_FUNCTION_40_33();
    v49 = sub_217752E58();
    v62 = v56;
    sub_21766D884(v49, v50, v51);
    OUTLINED_FUNCTION_40_33();
    sub_217752E58();
    v52 = OUTLINED_FUNCTION_69_19();
    v53(v52);
    v55[0] = v40;
    v55[1] = v54;
    memcpy(&v55[2], v60, 0x318uLL);
    LOBYTE(v55[101]) = v61;
    BYTE1(v55[101]) = v62;
    BYTE2(v55[101]) = a14;
    memcpy(v31, v55, 0x32BuLL);
    sub_21766D8D8(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v56 = v40;
    v57 = v54;
    memcpy(v58, v60, 0x318uLL);
    v58[792] = v61;
    v58[793] = v62;
    v58[794] = a14;
    sub_21766D910(&v56);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21766B384(uint64_t a1)
{
  sub_2177531E8();
  CloudAudioAnalysis.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_21766B3C0(__int128 *a1, uint64_t *a2)
{
  v4 = *(a2 + 41);
  if ((*(a1 + 41) & 1) == 0)
  {
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v9 = a2[4];
    v10 = *(a2 + 40);
    v11 = *(a1 + 40);
    v12 = *(a1 + 4);
    v13 = a1[1];
    v51 = *a1;
    v52 = v13;
    v53 = v12;
    v54 = v11;
    v55 = 0;
    if (v4)
    {
      return 0;
    }

    v45 = v6;
    v46 = v5 & 1;
    v47 = v8;
    v48 = v7 & 1;
    v49 = v9;
    v50 = v10 & 1;
    if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v14 = *(a2 + 89);
    if (*(a1 + 89))
    {
      if ((*(a2 + 89) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v16 = a2[6];
      v15 = a2[7];
      v18 = a2[8];
      v17 = a2[9];
      v19 = a2[10];
      v20 = *(a2 + 88);
      v21 = *(a1 + 88);
      v22 = *(a1 + 10);
      v23 = a1[4];
      v51 = a1[3];
      v52 = v23;
      v53 = v22;
      v54 = v21;
      v55 = 0;
      if (v14)
      {
        return 0;
      }

      v45 = v16;
      v46 = v15 & 1;
      v47 = v18;
      v48 = v17 & 1;
      v49 = v19;
      v50 = v20 & 1;
      if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
      {
        return 0;
      }
    }

    v24 = *(a2 + 137);
    if (*(a1 + 137))
    {
      if ((*(a2 + 137) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v26 = a2[12];
      v25 = a2[13];
      v28 = a2[14];
      v27 = a2[15];
      v29 = a2[16];
      v30 = *(a2 + 136);
      v31 = *(a1 + 136);
      v32 = *(a1 + 16);
      v33 = a1[7];
      v51 = a1[6];
      v52 = v33;
      v53 = v32;
      v54 = v31;
      v55 = 0;
      if (v24)
      {
        return 0;
      }

      v45 = v26;
      v46 = v25 & 1;
      v47 = v28;
      v48 = v27 & 1;
      v49 = v29;
      v50 = v30 & 1;
      if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
      {
        return 0;
      }
    }

    v34 = *(a2 + 185);
    if (*(a1 + 185))
    {
      if ((*(a2 + 185) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v36 = a2[18];
      v35 = a2[19];
      v38 = a2[20];
      v37 = a2[21];
      v39 = a2[22];
      v40 = *(a2 + 184);
      v41 = *(a1 + 184);
      v42 = *(a1 + 22);
      v43 = a1[10];
      v51 = a1[9];
      v52 = v43;
      v53 = v42;
      v54 = v41;
      v55 = 0;
      if (v34)
      {
        return 0;
      }

      v45 = v36;
      v46 = v35 & 1;
      v47 = v38;
      v48 = v37 & 1;
      v49 = v39;
      v50 = v40 & 1;
      if ((static CloudAudioAnalysis.CloudStatistics.== infix(_:_:)(&v51, &v45) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 41))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_21766B5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_21766B684(__int128 *a1, __int128 *a2)
{
  v53 = *a1;
  v4 = *(a1 + 16);
  v54 = v4;
  v6 = *(&v53 + 1);
  v5 = v53;
  v51 = *a2;
  v7 = *(a2 + 16);
  v52 = v7;
  v8 = *(&v51 + 1);
  v9 = v51;
  if (*(&v53 + 1) == 1)
  {
    if (*(&v51 + 1) != 1)
    {
      sub_21738C4B0(&v53, &v49, &qword_27CB2BAA8, &unk_21778D680);
      v12 = &v51;
      v13 = &v49;
      goto LABEL_22;
    }

    sub_21738C4B0(&v53, &v49, &qword_27CB2BAA8, &unk_21778D680);
    sub_21738C4B0(&v51, &v49, &qword_27CB2BAA8, &unk_21778D680);
    sub_217283988(v5, 1);
  }

  else
  {
    v49 = v53;
    v50 = v4;
    if (*(&v51 + 1) == 1)
    {
      sub_21738C4B0(&v53, &v47, &qword_27CB2BAA8, &unk_21778D680);
      v10 = &v51;
      v11 = &v47;
      goto LABEL_20;
    }

    v47 = v51;
    v48 = v7;
    sub_21738C4B0(&v53, &v45, &qword_27CB2BAA8, &unk_21778D680);
    sub_21738C4B0(&v51, &v45, &qword_27CB2BAA8, &unk_21778D680);
    sub_2171FB568(v5, v6);
    v15 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v49, &v47, v14);

    sub_217283988(v5, v6);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v49 = *(a1 + 24);
  v16 = *(a1 + 40);
  v50 = v16;
  v6 = *(&v49 + 1);
  v5 = v49;
  v47 = *(a2 + 24);
  v17 = *(a2 + 40);
  v48 = v17;
  v8 = *(&v47 + 1);
  v9 = v47;
  if (*(&v49 + 1) == 1)
  {
    if (*(&v47 + 1) == 1)
    {
      sub_21738C4B0(&v49, &v45, &qword_27CB2BAA8, &unk_21778D680);
      sub_21738C4B0(&v47, &v45, &qword_27CB2BAA8, &unk_21778D680);
      sub_217283988(v5, 1);
LABEL_15:
      v45 = a1[3];
      v20 = *(a1 + 64);
      v46 = v20;
      v6 = *(&v45 + 1);
      v5 = v45;
      v43 = a2[3];
      v21 = *(a2 + 64);
      v44 = v21;
      v8 = *(&v43 + 1);
      v9 = v43;
      if (*(&v45 + 1) == 1)
      {
        if (*(&v43 + 1) == 1)
        {
          sub_21738C4B0(&v45, &v41, &qword_27CB2BAA8, &unk_21778D680);
          sub_21738C4B0(&v43, &v41, &qword_27CB2BAA8, &unk_21778D680);
          sub_217283988(v5, 1);
LABEL_28:
          v41 = *(a1 + 72);
          v28 = *(a1 + 88);
          v42 = v28;
          v29 = v41;
          v39 = *(a2 + 72);
          v30 = *(a2 + 88);
          v40 = v30;
          v31 = v39;
          if (*(&v41 + 1) == 1)
          {
            if (*(&v39 + 1) == 1)
            {
              sub_21738C4B0(&v41, &v37, &qword_27CB2BAA8, &unk_21778D680);
              sub_21738C4B0(&v39, &v37, &qword_27CB2BAA8, &unk_21778D680);
              v24 = 1;
              sub_217283988(v29, 1);
              return v24;
            }

            sub_21738C4B0(&v41, &v37, &qword_27CB2BAA8, &unk_21778D680);
            sub_21738C4B0(&v39, &v37, &qword_27CB2BAA8, &unk_21778D680);
          }

          else
          {
            v37 = v41;
            v38 = v28;
            if (*(&v39 + 1) != 1)
            {
              v35 = v39;
              v36 = v30;
              sub_21738C4B0(&v41, v34, &qword_27CB2BAA8, &unk_21778D680);
              sub_21738C4B0(&v39, v34, &qword_27CB2BAA8, &unk_21778D680);
              sub_2171FB568(v29, *(&v29 + 1));
              v33 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v37, &v35, v32);

              sub_217283988(v29, *(&v29 + 1));
              return (v33 & 1) != 0;
            }

            sub_21738C4B0(&v41, &v35, &qword_27CB2BAA8, &unk_21778D680);
            sub_21738C4B0(&v39, &v35, &qword_27CB2BAA8, &unk_21778D680);
            sub_2171FB568(v29, *(&v29 + 1));
          }

          sub_217283988(v29, *(&v29 + 1));
          v23 = *(&v31 + 1);
          v22 = v31;
          goto LABEL_24;
        }

        sub_21738C4B0(&v45, &v41, &qword_27CB2BAA8, &unk_21778D680);
        v12 = &v43;
        v13 = &v41;
        goto LABEL_22;
      }

      v41 = v45;
      v42 = v20;
      if (*(&v43 + 1) != 1)
      {
        v39 = v43;
        v40 = v21;
        sub_21738C4B0(&v45, &v37, &qword_27CB2BAA8, &unk_21778D680);
        sub_21738C4B0(&v43, &v37, &qword_27CB2BAA8, &unk_21778D680);
        sub_2171FB568(v5, v6);
        v27 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v41, &v39, v26);

        sub_217283988(v5, v6);
        if ((v27 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_28;
      }

      sub_21738C4B0(&v45, &v39, &qword_27CB2BAA8, &unk_21778D680);
      v10 = &v43;
      v11 = &v39;
LABEL_20:
      sub_21738C4B0(v10, v11, &qword_27CB2BAA8, &unk_21778D680);
      sub_2171FB568(v5, v6);

LABEL_23:
      sub_217283988(v5, v6);
      v22 = v9;
      v23 = v8;
LABEL_24:
      sub_217283988(v22, v23);
      return 0;
    }

    sub_21738C4B0(&v49, &v45, &qword_27CB2BAA8, &unk_21778D680);
    v12 = &v47;
    v13 = &v45;
LABEL_22:
    sub_21738C4B0(v12, v13, &qword_27CB2BAA8, &unk_21778D680);
    goto LABEL_23;
  }

  v45 = v49;
  v46 = v16;
  if (*(&v47 + 1) == 1)
  {
    sub_21738C4B0(&v49, &v43, &qword_27CB2BAA8, &unk_21778D680);
    v10 = &v47;
    v11 = &v43;
    goto LABEL_20;
  }

  v43 = v47;
  v44 = v17;
  sub_21738C4B0(&v49, &v41, &qword_27CB2BAA8, &unk_21778D680);
  sub_21738C4B0(&v47, &v41, &qword_27CB2BAA8, &unk_21778D680);
  sub_2171FB568(v5, v6);
  v19 = static CloudAudioAnalysis.CloudCompositeAttributeTonality.== infix(_:_:)(&v45, &v43, v18);

  sub_217283988(v5, v6);
  if (v19)
  {
    goto LABEL_15;
  }

  return 0;
}

unint64_t sub_21766BD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B5B8;
  if (!qword_27CB2B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B5B8);
  }

  return result;
}

unint64_t sub_21766BDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B5E0;
  if (!qword_27CB2B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B5E0);
  }

  return result;
}

unint64_t sub_21766BE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B5F8;
  if (!qword_27CB2B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B5F8);
  }

  return result;
}

unint64_t sub_21766BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B600;
  if (!qword_27CB2B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B600);
  }

  return result;
}

unint64_t sub_21766BEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B618;
  if (!qword_27CB2B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B618);
  }

  return result;
}

unint64_t sub_21766BF04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B620, &qword_21778B828);
    v2();
    OUTLINED_FUNCTION_154();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B630;
  if (!qword_27CB2B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B630);
  }

  return result;
}

void static CloudAudioAnalysis.CloudCompositeAttribute<>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v97 = v0;
  v92 = v1;
  v93 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v99 = *(v3 - 8);
  MEMORY[0x28223BE20](v7);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_31();
  v87 = v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_99();
  v89 = v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_99();
  v91 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_0();
  v100 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_31();
  v88 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_99();
  v90 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v85 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v85 - v32;
  v101 = v12;
  v102 = v34;
  v35 = *(v34 + 48);
  v36 = *(v12 + 16);
  v98 = v8;
  v36(&v85 - v32, v8, v10, v31);
  v96 = v6;
  (v36)(&v33[v35], v6, v10);
  OUTLINED_FUNCTION_73(v33);
  v95 = v36;
  if (v38)
  {
    OUTLINED_FUNCTION_73(&v33[v35]);
    if (v38)
    {
      v37 = OUTLINED_FUNCTION_89_18();
      (v36)(v37);
      goto LABEL_11;
    }

LABEL_9:
    (*(v100 + 8))(v33, v102);
    goto LABEL_31;
  }

  (v36)(v21, v33, v10);
  OUTLINED_FUNCTION_73(&v33[v35]);
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_173();
    v40(v39);
    goto LABEL_9;
  }

  v41 = v99;
  v42 = OUTLINED_FUNCTION_67_18();
  v43(v42);
  v35 = sub_217751F08();
  v44 = *(v41 + 8);
  v44(v36, v4);
  v45 = OUTLINED_FUNCTION_173();
  (v44)(v45);
  v46 = OUTLINED_FUNCTION_89_18();
  (v36)(v46);
  if ((v35 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v47 = type metadata accessor for CloudAudioAnalysis.CloudCompositeAttribute(0, v4, v92, v93);
  v48 = v47[11];
  OUTLINED_FUNCTION_41_34();
  v49 = v95;
  (v95)(v29);
  v50 = v96;
  v49(&v29[v35], v96 + v48, v10);
  OUTLINED_FUNCTION_73(v29);
  if (v38)
  {
    OUTLINED_FUNCTION_73(&v29[v35]);
    if (!v38)
    {
      goto LABEL_20;
    }

    v51 = OUTLINED_FUNCTION_20_46();
    (v36)(v51);
  }

  else
  {
    v52 = v91;
    v49(v91, v29, v10);
    OUTLINED_FUNCTION_73(&v29[v35]);
    if (v53)
    {
      v54 = *(v99 + 8);
      v55 = v52;
LABEL_19:
      v54(v55, v4);
LABEL_20:
      (*(v100 + 8))(v29, v102);
      goto LABEL_31;
    }

    v93 = v47;
    v56 = v52;
    v57 = v99;
    v35 = v36;
    v58 = OUTLINED_FUNCTION_67_18();
    v59(v58);
    LODWORD(v92) = sub_217751F08();
    v60 = *(v57 + 8);
    v60(v36, v4);
    v61 = v56;
    v47 = v93;
    v60(v61, v4);
    v50 = v96;
    v62 = OUTLINED_FUNCTION_20_46();
    (v36)(v62);
    if ((v92 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v86 = v36;
  v63 = v47[12];
  OUTLINED_FUNCTION_41_34();
  v64 = v90;
  (v49)(v90);
  v49((v64 + v35), v50 + v63, v10);
  OUTLINED_FUNCTION_73(v64);
  if (v38)
  {
    OUTLINED_FUNCTION_73(v64 + v35);
    if (v38)
    {
      v65 = v64;
      v66 = v86;
      (v86)(v65, v10);
LABEL_33:
      v76 = v47[13];
      OUTLINED_FUNCTION_41_34();
      v29 = v88;
      (v49)(v88);
      v49(&v29[v35], v50 + v76, v10);
      OUTLINED_FUNCTION_73(v29);
      if (v38)
      {
        OUTLINED_FUNCTION_73(&v29[v35]);
        if (v38)
        {
          v77 = OUTLINED_FUNCTION_20_46();
          v66(v77);
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v49(v87, v29, v10);
      OUTLINED_FUNCTION_73(&v29[v35]);
      if (!v78)
      {
        v79 = v66;
        v80 = v99;
        v81 = v94;
        (*(v99 + 32))(v94, &v29[v35], v4);
        sub_217751F08();
        v82 = *(v80 + 8);
        v82(v81, v4);
        v83 = OUTLINED_FUNCTION_173();
        (v82)(v83);
        v84 = OUTLINED_FUNCTION_20_46();
        v79(v84);
        goto LABEL_31;
      }

      v55 = OUTLINED_FUNCTION_58_20();
      goto LABEL_19;
    }

LABEL_30:
    (*(v100 + 8))(v64, v102);
    goto LABEL_31;
  }

  v49(v89, v64, v10);
  OUTLINED_FUNCTION_73(v64 + v35);
  if (v67)
  {
    v68 = OUTLINED_FUNCTION_173();
    v69(v68);
    goto LABEL_30;
  }

  v70 = v99;
  v35 = v64;
  v71 = OUTLINED_FUNCTION_67_18();
  v72(v71);
  LODWORD(v96) = sub_217751F08();
  v73 = *(v70 + 8);
  v73(v64, v4);
  v74 = OUTLINED_FUNCTION_173();
  (v73)(v74);
  v75 = v64;
  v66 = v86;
  (v86)(v75, v10);
  v49 = v95;
  if (v96)
  {
    goto LABEL_33;
  }

LABEL_31:
  OUTLINED_FUNCTION_13();
}

double sub_21766C74C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  sub_217753208();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  if (v3 == 3)
  {
LABEL_5:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  v4 = *(v1 + 32);
  if (v4 == 1)
  {
    goto LABEL_11;
  }

  v5 = *(v1 + 40);
  sub_217753208();
  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  if (v5 == 3)
  {
LABEL_11:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  v6 = *(v1 + 56);
  if (v6 == 1)
  {
    goto LABEL_17;
  }

  v7 = *(v1 + 64);
  sub_217753208();
  sub_217753208();
  if (v6)
  {
    sub_217751FF8();
  }

  if (v7 == 3)
  {
LABEL_17:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  v8 = *(v1 + 80);
  if (v8 == 1)
  {
    goto LABEL_23;
  }

  v9 = *(v1 + 88);
  sub_217753208();
  sub_217753208();
  if (v8)
  {
    sub_217751FF8();
  }

  if (v9 == 3)
  {
LABEL_23:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  return result;
}

uint64_t sub_21766CA98()
{
  if (*(v0 + 8) == 1)
  {
    sub_217753208();
  }

  else
  {
    v1 = *v0;
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x21CEA3580](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = v0[2];
    sub_217753208();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CEA3580](v4);
  }

  if (*(v0 + 40) == 1)
  {
    sub_217753208();
  }

  else
  {
    v5 = v0[4];
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CEA3580](v6);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_217753208();
  }

  v8 = v0[6];
  sub_217753208();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x21CEA3580](v9);
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_2177528F8();
  OUTLINED_FUNCTION_59_21();
  OUTLINED_FUNCTION_59_21();
  OUTLINED_FUNCTION_59_21();
  return OUTLINED_FUNCTION_59_21();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttribute<>.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_238();
  CloudAudioAnalysis.CloudCompositeAttribute<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_21766CC58(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  CloudAudioAnalysis.CloudCompositeAttribute<>.hash(into:)(v4, a2);
  return sub_217753238();
}

unint64_t sub_21766CCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B650;
  if (!qword_27CB2B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B650);
  }

  return result;
}

unint64_t sub_21766CD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B660;
  if (!qword_27CB2B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B660);
  }

  return result;
}

unint64_t sub_21766CD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B668;
  if (!qword_27CB2B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B668);
  }

  return result;
}

unint64_t sub_21766CDA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B608, &qword_21778B820);
    v2();
    OUTLINED_FUNCTION_154();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766CE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B678;
  if (!qword_27CB2B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B678);
  }

  return result;
}

unint64_t sub_21766CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B688;
  if (!qword_27CB2B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B688);
  }

  return result;
}

unint64_t sub_21766CF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B698;
  if (!qword_27CB2B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B698);
  }

  return result;
}

unint64_t sub_21766CFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B6B0;
  if (!qword_27CB2B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6B0);
  }

  return result;
}

unint64_t sub_21766CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B6B8;
  if (!qword_27CB2B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6B8);
  }

  return result;
}

unint64_t sub_21766D050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B6C0;
  if (!qword_27CB2B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6C0);
  }

  return result;
}

unint64_t sub_21766D0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B6D0;
  if (!qword_27CB2B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6D0);
  }

  return result;
}

unint64_t sub_21766D0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B6D8;
  if (!qword_27CB2B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6D8);
  }

  return result;
}

unint64_t sub_21766D14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B6E8;
  if (!qword_27CB2B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B6E8);
  }

  return result;
}

unint64_t sub_21766D1A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B6F0, &qword_21778B860);
    result = OUTLINED_FUNCTION_92_16(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B718;
  if (!qword_27CB2B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B718);
  }

  return result;
}

unint64_t sub_21766D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B730;
  if (!qword_27CB2B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B730);
  }

  return result;
}

unint64_t sub_21766D29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B748;
  if (!qword_27CB2B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B748);
  }

  return result;
}

unint64_t sub_21766D2F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B750, &unk_21778E180);
    result = OUTLINED_FUNCTION_92_16(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21766D344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B778;
  if (!qword_27CB2B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B778);
  }

  return result;
}

unint64_t sub_21766D398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B780;
  if (!qword_27CB2B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B780);
  }

  return result;
}

unint64_t sub_21766D3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B788;
  if (!qword_27CB2B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B788);
  }

  return result;
}

unint64_t sub_21766D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B798;
  if (!qword_27CB2B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B798);
  }

  return result;
}

unint64_t sub_21766D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7A0;
  if (!qword_27CB2B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7A0);
  }

  return result;
}

unint64_t sub_21766D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7B0;
  if (!qword_27CB2B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7B0);
  }

  return result;
}

unint64_t sub_21766D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7C0;
  if (!qword_27CB2B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7C0);
  }

  return result;
}

unint64_t sub_21766D590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7D0;
  if (!qword_27CB2B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7D0);
  }

  return result;
}

unint64_t sub_21766D5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7E0;
  if (!qword_27CB2B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7E0);
  }

  return result;
}

unint64_t sub_21766D638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7E8;
  if (!qword_27CB2B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7E8);
  }

  return result;
}

unint64_t sub_21766D68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7F0;
  if (!qword_27CB2B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7F0);
  }

  return result;
}

unint64_t sub_21766D6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B7F8;
  if (!qword_27CB2B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B7F8);
  }

  return result;
}

unint64_t sub_21766D734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B800;
  if (!qword_27CB2B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B800);
  }

  return result;
}

unint64_t sub_21766D788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B810;
  if (!qword_27CB2B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B810);
  }

  return result;
}

unint64_t sub_21766D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B818;
  if (!qword_27CB2B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B818);
  }

  return result;
}

unint64_t sub_21766D830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B820;
  if (!qword_27CB2B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B820);
  }

  return result;
}

unint64_t sub_21766D884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B828;
  if (!qword_27CB2B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B828);
  }

  return result;
}

unint64_t sub_21766D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B830;
  if (!qword_27CB2B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B830);
  }

  return result;
}

unint64_t sub_21766D99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B838;
  if (!qword_27CB2B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B838);
  }

  return result;
}

unint64_t sub_21766D9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B840;
  if (!qword_27CB2B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B840);
  }

  return result;
}

unint64_t sub_21766DA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B848;
  if (!qword_27CB2B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B848);
  }

  return result;
}

unint64_t sub_21766DAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B850;
  if (!qword_27CB2B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B850);
  }

  return result;
}

unint64_t sub_21766DAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B858;
  if (!qword_27CB2B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B858);
  }

  return result;
}

unint64_t sub_21766DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B860;
  if (!qword_27CB2B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B860);
  }

  return result;
}

unint64_t sub_21766DBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B868;
  if (!qword_27CB2B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B868);
  }

  return result;
}

unint64_t sub_21766DC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B870;
  if (!qword_27CB2B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B870);
  }

  return result;
}

unint64_t sub_21766DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B878;
  if (!qword_27CB2B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B878);
  }

  return result;
}

unint64_t sub_21766DCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B880;
  if (!qword_27CB2B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B880);
  }

  return result;
}

unint64_t sub_21766DD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B888;
  if (!qword_27CB2B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B888);
  }

  return result;
}

unint64_t sub_21766DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B890;
  if (!qword_27CB2B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B890);
  }

  return result;
}

unint64_t sub_21766DDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B898[0];
  if (!qword_27CB2B898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB2B898);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C10EventTimesVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C26CompositeAttributeTonalityVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C18CompositeAttributeVy_AC0cfG8TonalityVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C13LoudnessCurveVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766DF10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 811))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766DF50(uint64_t result, int a2, int a3)
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
    *(result + 810) = 0;
    *(result + 808) = 0;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 811) = 1;
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

    *(result + 811) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21766E080(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 792))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 776);
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

uint64_t sub_21766E0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 792) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 792) = 0;
    }

    if (a2)
    {
      *(result + 776) = a2;
    }
  }

  return result;
}

uint64_t sub_21766E204(uint64_t a1)
{
  result = sub_2177528F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21766E278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = *(v5 + 80);
    v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_7;
    }

    v14 = ((v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_22;
        }

LABEL_14:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          switch(v11)
          {
            case 2:
              LODWORD(v11) = *a1;
              break;
            case 3:
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v11) = *a1;
              break;
            default:
              LODWORD(v11) = *a1;
              break;
          }
        }

        return v7 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_21766E410(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  v12 = *(v8 + 80);
  v13 = ((v11 + v12 + ((v11 + v12 + ((v11 + v12) & ~v12)) & ~v12)) & ~v12) + v11;
  v14 = 8 * v13;
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v17 = ((v16 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v17))
      {
        v6 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v6 = v18;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 >= 2)
          {
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v22, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    if (v13 < 4)
    {
      v20 = (v19 >> v14) + 1;
      if (v13)
      {
        v21 = v19 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v13 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v19;
      v20 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v13] = v20;
        break;
      case 2:
        *&a1[v13] = v20;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v13] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21766E65C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_21766E6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21766E710(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21766E764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21766E7DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 58))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21766E7FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 58) = v3;
  return result;
}

uint64_t sub_21766E874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_21766E8C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_21766E950(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_40_5(a1);
}

_BYTE *sub_21766E99C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioAnalysis.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_21766EBA0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioAnalysis.CloudStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_21766ED54(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioAnalysis.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        break;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21766EEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9A0;
  if (!qword_27CB2B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9A0);
  }

  return result;
}

unint64_t sub_21766EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9A8;
  if (!qword_27CB2B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9A8);
  }

  return result;
}

unint64_t sub_21766EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9B0;
  if (!qword_27CB2B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9B0);
  }

  return result;
}

unint64_t sub_21766F020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9B8;
  if (!qword_27CB2B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9B8);
  }

  return result;
}

unint64_t sub_21766F078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9C0;
  if (!qword_27CB2B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9C0);
  }

  return result;
}

unint64_t sub_21766F0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9C8;
  if (!qword_27CB2B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9C8);
  }

  return result;
}

unint64_t sub_21766F128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9D0;
  if (!qword_27CB2B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9D0);
  }

  return result;
}

unint64_t sub_21766F180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9D8;
  if (!qword_27CB2B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9D8);
  }

  return result;
}

unint64_t sub_21766F1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9E0;
  if (!qword_27CB2B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9E0);
  }

  return result;
}

unint64_t sub_21766F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9E8;
  if (!qword_27CB2B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9E8);
  }

  return result;
}

unint64_t sub_21766F288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9F0;
  if (!qword_27CB2B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9F0);
  }

  return result;
}

unint64_t sub_21766F2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B9F8;
  if (!qword_27CB2B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9F8);
  }

  return result;
}

unint64_t sub_21766F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA00;
  if (!qword_27CB2BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA00);
  }

  return result;
}

unint64_t sub_21766F390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA08;
  if (!qword_27CB2BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA08);
  }

  return result;
}

unint64_t sub_21766F3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA10;
  if (!qword_27CB2BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA10);
  }

  return result;
}

unint64_t sub_21766F440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA18;
  if (!qword_27CB2BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA18);
  }

  return result;
}

unint64_t sub_21766F498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA20;
  if (!qword_27CB2BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA20);
  }

  return result;
}

unint64_t sub_21766F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA28;
  if (!qword_27CB2BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA28);
  }

  return result;
}

unint64_t sub_21766F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA30;
  if (!qword_27CB2BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA30);
  }

  return result;
}

unint64_t sub_21766F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA38;
  if (!qword_27CB2BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA38);
  }

  return result;
}

unint64_t sub_21766F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA40;
  if (!qword_27CB2BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA40);
  }

  return result;
}

unint64_t sub_21766F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA48;
  if (!qword_27CB2BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA48);
  }

  return result;
}

unint64_t sub_21766F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA50;
  if (!qword_27CB2BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA50);
  }

  return result;
}

unint64_t sub_21766F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA58;
  if (!qword_27CB2BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA58);
  }

  return result;
}

unint64_t sub_21766F758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA60;
  if (!qword_27CB2BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA60);
  }

  return result;
}

unint64_t sub_21766F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA68;
  if (!qword_27CB2BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA68);
  }

  return result;
}

unint64_t sub_21766F808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA70;
  if (!qword_27CB2BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA70);
  }

  return result;
}

unint64_t sub_21766F860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA78;
  if (!qword_27CB2BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA78);
  }

  return result;
}

unint64_t sub_21766F8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA80;
  if (!qword_27CB2BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA80);
  }

  return result;
}

unint64_t sub_21766F910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA88;
  if (!qword_27CB2BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA88);
  }

  return result;
}

unint64_t sub_21766F968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA90;
  if (!qword_27CB2BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA90);
  }

  return result;
}

unint64_t sub_21766F9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BA98;
  if (!qword_27CB2BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA98);
  }

  return result;
}

unint64_t sub_21766FA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BAA0;
  if (!qword_27CB2BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BAA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_57@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return sub_217751DE8();
}

void OUTLINED_FUNCTION_49_28(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
}

uint64_t OUTLINED_FUNCTION_54_21()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_57_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_59_21()
{

  return sub_217752908();
}

uint64_t OUTLINED_FUNCTION_63_22(uint64_t a1)
{

  return sub_217752E58();
}

__n128 OUTLINED_FUNCTION_76_16@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void *OUTLINED_FUNCTION_90_16@<X0>(void *__return_ptr a1@<X8>, void *result@<X0>, char a3@<W1>, uint64_t a4@<X2>, char a5@<W3>)
{
  *a1 = result;
  *(a1 + 8) = a3 & 1;
  a1[2] = a4;
  *(a1 + 24) = a5 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_15()
{

  return sub_217752E48();
}

uint64_t OUTLINED_FUNCTION_92_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_93_14(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_94_14(uint64_t a1)
{

  return sub_2177528F8();
}

Swift::Int __swiftcall LegacyModelKeepLocalManagedStatus.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForKeepLocalManagedStatus_];
}

uint64_t sub_21766FE74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6974696177 && a2 == 0xE700000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x46676E6974696177 && a2 == 0xEF7972746552726FLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x52676E69646E6570 && a2 == 0xEC0000006E697065)
            {

              return 6;
            }

            else
            {
              v12 = sub_217753058();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2176700C4(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x64616F6C6E776F64;
      break;
    case 3:
      result = 0x676E6974696177;
      break;
    case 4:
      result = 0x46676E6974696177;
      break;
    case 5:
      result = 0x656C6C65636E6163;
      break;
    case 6:
      result = 0x52676E69646E6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21767019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670BE8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176701D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670BE8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21767021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21766FE74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217670244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670B40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217670280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670B40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176702BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670CE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176702F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670CE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217670334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670D38(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217670370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670D38(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176703AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670D8C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176703E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670D8C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217670424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670B94(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217670460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670B94(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21767049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670C90(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176704D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670C90(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217670514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670C3C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217670550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217670C3C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LegacyModelKeepLocalManagedStatus.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAB0, &qword_21778D690);
  OUTLINED_FUNCTION_0_0();
  v68 = v5;
  v69 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_150();
  v67 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAB8, &qword_21778D698);
  OUTLINED_FUNCTION_0_0();
  v65 = v9;
  v66 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v64 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAC0, &qword_21778D6A0);
  OUTLINED_FUNCTION_0_0();
  v62 = v13;
  v63 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_150();
  v61 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAC8, &qword_21778D6A8);
  OUTLINED_FUNCTION_0_0();
  v59 = v17;
  v60 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_150();
  v58 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAD0, &qword_21778D6B0);
  OUTLINED_FUNCTION_0_0();
  v56 = v21;
  v57 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_150();
  v55 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAD8, &qword_21778D6B8);
  OUTLINED_FUNCTION_0_0();
  v53 = v25;
  v54 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAE0, &qword_21778D6C0);
  OUTLINED_FUNCTION_0_0();
  v52 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v51 - v32;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAE8, &qword_21778D6C8);
  OUTLINED_FUNCTION_0_0();
  v35 = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v38 = &v51 - v37;
  v39 = *v2;
  v40 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217670B40(v40, v41, v42);
  v43 = sub_2177532F8();
  v46 = (v35 + 8);
  switch(v39)
  {
    case 1:
      v72 = 1;
      sub_217670D38(v43, v44, v45);
      OUTLINED_FUNCTION_2_117(&type metadata for LegacyModelKeepLocalManagedStatus.DownloadingCodingKeys, &v72);
      v50 = v53;
      v49 = v54;
      goto LABEL_9;
    case 2:
      v73 = 2;
      sub_217670CE4(v43, v44, v45);
      v28 = v55;
      OUTLINED_FUNCTION_2_117(&type metadata for LegacyModelKeepLocalManagedStatus.DownloadedCodingKeys, &v73);
      v50 = v56;
      v49 = v57;
      goto LABEL_9;
    case 3:
      v74 = 3;
      sub_217670C90(v43, v44, v45);
      v28 = v58;
      OUTLINED_FUNCTION_2_117(&type metadata for LegacyModelKeepLocalManagedStatus.WaitingCodingKeys, &v74);
      v50 = v59;
      v49 = v60;
      goto LABEL_9;
    case 4:
      v75 = 4;
      sub_217670C3C(v43, v44, v45);
      v28 = v61;
      OUTLINED_FUNCTION_2_117(&type metadata for LegacyModelKeepLocalManagedStatus.WaitingForRetryCodingKeys, &v75);
      v50 = v62;
      v49 = v63;
      goto LABEL_9;
    case 5:
      v76 = 5;
      sub_217670BE8(v43, v44, v45);
      v28 = v64;
      OUTLINED_FUNCTION_2_117(&type metadata for LegacyModelKeepLocalManagedStatus.CancelledCodingKeys, &v76);
      v50 = v65;
      v49 = v66;
      goto LABEL_9;
    case 6:
      v77 = 6;
      sub_217670B94(v43, v44, v45);
      v28 = v67;
      OUTLINED_FUNCTION_2_117(&type metadata for LegacyModelKeepLocalManagedStatus.PendingRepinCodingKeys, &v77);
      v50 = v68;
      v49 = v69;
LABEL_9:
      (*(v50 + 8))(v28, v49);
      result = (*v46)(v38, v29);
      break;
    default:
      v71 = 0;
      sub_217670D8C(v43, v44, v45);
      v47 = v70;
      sub_217752EE8();
      (*(v52 + 8))(v33, v29);
      result = (*v46)(v38, v47);
      break;
  }

  return result;
}

unint64_t sub_217670B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BAF0;
  if (!qword_27CB2BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BAF0);
  }

  return result;
}

unint64_t sub_217670B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BAF8;
  if (!qword_27CB2BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BAF8);
  }

  return result;
}

unint64_t sub_217670BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB00;
  if (!qword_27CB2BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB00);
  }

  return result;
}

unint64_t sub_217670C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB08;
  if (!qword_27CB2BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB08);
  }

  return result;
}

unint64_t sub_217670C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB10;
  if (!qword_27CB2BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB10);
  }

  return result;
}

unint64_t sub_217670CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB18;
  if (!qword_27CB2BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB18);
  }

  return result;
}

unint64_t sub_217670D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB20;
  if (!qword_27CB2BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB20);
  }

  return result;
}

unint64_t sub_217670D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB28;
  if (!qword_27CB2BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB28);
  }

  return result;
}

uint64_t LegacyModelKeepLocalManagedStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t LegacyModelKeepLocalManagedStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v90 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB30, &qword_21778D6D0);
  OUTLINED_FUNCTION_0_0();
  v86 = v3;
  v87 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v93 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB38, &qword_21778D6D8);
  OUTLINED_FUNCTION_0_0();
  v84 = v7;
  v85 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v92 = v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB40, &qword_21778D6E0);
  OUTLINED_FUNCTION_0_0();
  v83 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_150();
  v89 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB48, &qword_21778D6E8);
  OUTLINED_FUNCTION_0_0();
  v81 = v15;
  v82 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_150();
  v88 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB50, &qword_21778D6F0);
  OUTLINED_FUNCTION_0_0();
  v79 = v19;
  v80 = v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_150();
  v91 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB58, &qword_21778D6F8);
  OUTLINED_FUNCTION_0_0();
  v76 = v23;
  v77 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB60, &qword_21778D700);
  OUTLINED_FUNCTION_0_0();
  v75 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB68, &unk_21778D708);
  OUTLINED_FUNCTION_0_0();
  v34 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = v70 - v36;
  v38 = a1[3];
  v94 = a1;
  v39 = __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_217670B40(v39, v40, v41);
  v42 = v95;
  sub_2177532C8();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v73 = v31;
  v72 = v27;
  v74 = v26;
  v44 = v91;
  v43 = v92;
  v45 = v93;
  v95 = v32;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v48 == v49 >> 1)
  {
    goto LABEL_7;
  }

  v70[1] = 0;
  if (v48 >= (v49 >> 1))
  {
    __break(1u);
    return result;
  }

  v71 = *(v47 + v48);
  sub_21733CF64();
  v51 = v50;
  v53 = v52;
  v54 = swift_unknownObjectRelease();
  if (v51 != v53 >> 1)
  {
LABEL_7:
    v61 = v37;
    v62 = sub_217752B48();
    swift_allocError();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v64 = &type metadata for LegacyModelKeepLocalManagedStatus;
    v65 = v95;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v61, v65);
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v57 = v34;
  v58 = v90;
  v59 = v95;
  switch(v71)
  {
    case 1:
      v97 = 1;
      sub_217670D38(v54, v55, v56);
      v45 = v74;
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.DownloadingCodingKeys, &v97);
      swift_unknownObjectRelease();
      v68 = v76;
      v67 = v77;
      goto LABEL_15;
    case 2:
      v98 = 2;
      sub_217670CE4(v54, v55, v56);
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.DownloadedCodingKeys, &v98);
      swift_unknownObjectRelease();
      (*(v79 + 8))(v44, v80);
      break;
    case 3:
      v99 = 3;
      sub_217670C90(v54, v55, v56);
      v45 = v88;
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.WaitingCodingKeys, &v99);
      swift_unknownObjectRelease();
      v68 = v81;
      v67 = v82;
      goto LABEL_15;
    case 4:
      v100 = 4;
      sub_217670C3C(v54, v55, v56);
      v66 = v89;
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.WaitingForRetryCodingKeys, &v100);
      swift_unknownObjectRelease();
      (*(v83 + 8))(v66, v78);
      break;
    case 5:
      v101 = 5;
      sub_217670BE8(v54, v55, v56);
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.CancelledCodingKeys, &v101);
      swift_unknownObjectRelease();
      (*(v85 + 8))(v43, v84);
      break;
    case 6:
      v102 = 6;
      sub_217670B94(v54, v55, v56);
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.PendingRepinCodingKeys, &v102);
      swift_unknownObjectRelease();
      v67 = v86;
      v68 = v87;
LABEL_15:
      (*(v68 + 8))(v45, v67);
      break;
    default:
      v96 = 0;
      sub_217670D8C(v54, v55, v56);
      v60 = v73;
      OUTLINED_FUNCTION_1_124(&type metadata for LegacyModelKeepLocalManagedStatus.NoneCodingKeys, &v96);
      swift_unknownObjectRelease();
      (*(v75 + 8))(v60, v72);
      break;
  }

  (*(v57 + 8))(v37, v59);
  v69 = v94;
  *v58 = v71;
  return __swift_destroy_boxed_opaque_existential_1(v69);
}