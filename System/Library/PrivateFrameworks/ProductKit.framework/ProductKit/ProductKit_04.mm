ProductKit::HeadphoneHardwareModel_optional __swiftcall HeadphoneHardwareModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69854();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_260E63570()
{
  v0 = HeadphoneHardwareModel.rawValue.getter();
  v2 = v1;
  if (v0 == HeadphoneHardwareModel.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_260E69834();
  }

  return v5 & 1;
}

uint64_t sub_260E6360C()
{
  sub_260E698F4();
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

double sub_260E63674(uint64_t a1)
{
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E690C4();

  return result;
}

uint64_t sub_260E636D8(uint64_t a1)
{
  sub_260E698F4();
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E690C4();

  return sub_260E69914();
}

unint64_t sub_260E63748@<X0>(unint64_t *a1@<X8>)
{
  result = HeadphoneHardwareModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ProductKit::HeadphoneHardwareModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeadphoneHardwareModel.init(productID:)(Swift::UInt32 productID)
{
  v2 = 0;
  while (v2 != 26)
  {
    v4 = byte_28735E578[v2 + 32];
    if (dword_260E70644[v4] != productID)
    {
      v3 = (v4 - 3) <= 7u ? dword_260E706AC[(v4 - 3)] : -1;
      ++v2;
      if (v3 != productID)
      {
        continue;
      }
    }

    *v1 = v4;
    return productID;
  }

  sub_260E15590();
  swift_allocError();
  *v5 = xmmword_260E6C120;
  *(v5 + 16) = 2;
  LOBYTE(productID) = swift_willThrow();
  return productID;
}

ProductKit::HeadphoneHardwareModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeadphoneHardwareModel.init(codename:)(Swift::String codename)
{
  object = codename._object;
  countAndFlagsBits = codename._countAndFlagsBits;
  v4 = v1;
  v5 = 0;
  while (2)
  {
    v6 = byte_28735E578[v5++ + 32];
    v7 = 0xE400000000000000;
    v8 = 943206754;
    switch(v6)
    {
      case 1:
        v9 = 943206754;
        goto LABEL_41;
      case 2:
        if (countAndFlagsBits != 943208034)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 3:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6538363762)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 4:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6D38363762)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 5:
        if (countAndFlagsBits != 892417378)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 6:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6335313562)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 7:
        if (countAndFlagsBits != 943272546)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 8:
        if (countAndFlagsBits != 943273570)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 9:
        if (countAndFlagsBits != 943208290)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 10:
        if (countAndFlagsBits != 876164194)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 11:
        if (countAndFlagsBits != 842347362)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 12:
        if (countAndFlagsBits != 959525986)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 13:
        if (countAndFlagsBits != 859059298)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 14:
        if (countAndFlagsBits != 859124834)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 15:
        if (countAndFlagsBits != 892744802)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 16:
        if (countAndFlagsBits != 926430306)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 17:
        if (countAndFlagsBits != 925906274)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 18:
        v9 = 925906274;
LABEL_41:
        if (v9 + 256 != countAndFlagsBits)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 19:
        v8 = 859190370;
        goto LABEL_50;
      case 20:
        if (countAndFlagsBits != 842543714)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 21:
        if (countAndFlagsBits != 842478434)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 22:
        if (countAndFlagsBits != 842085218)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 23:
        if (countAndFlagsBits != 875967330)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 24:
        if (countAndFlagsBits != 875836514)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 25:
        if (countAndFlagsBits != 943273058)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v8 != countAndFlagsBits)
        {
          goto LABEL_52;
        }

LABEL_51:
        if (v7 == object)
        {
          goto LABEL_69;
        }

LABEL_52:
        v10 = sub_260E69834();

        if (v10)
        {
          goto LABEL_70;
        }

        if (v6 == 8)
        {
          v12 = 0xE500000000000000;
          if (countAndFlagsBits == 0x6338393662)
          {
            goto LABEL_63;
          }

LABEL_64:
          v13 = sub_260E69834();

          if (v13)
          {
            goto LABEL_70;
          }

          if (v5 == 26)
          {

            sub_260E15590();
            swift_allocError();
            *v14 = xmmword_260E6C120;
            *(v14 + 16) = 2;
            return swift_willThrow();
          }

          continue;
        }

        if (v6 == 10)
        {
          v11 = 0x6234393462;
        }

        else
        {
          v11 = 808464482;
        }

        if (v6 == 10)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        if (v11 != countAndFlagsBits)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v12 != object)
        {
          goto LABEL_64;
        }

LABEL_69:

LABEL_70:

        *v4 = v6;
        return result;
    }
  }
}

unint64_t sub_260E63C98()
{
  result = qword_27FE553B0;
  if (!qword_27FE553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE553B0);
  }

  return result;
}

unint64_t sub_260E63CF0()
{
  result = qword_27FE553B8;
  if (!qword_27FE553B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE553C0, &qword_260E70570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE553B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneHardwareModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneHardwareModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_260E63EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260E68A04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_260E63F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260E68A04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetRequest(uint64_t a1)
{
  result = qword_27FE553C8;
  if (!qword_27FE553C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260E64094(uint64_t a1)
{
  sub_260E68A04();
  if (v1 <= 0x3F)
  {
    sub_260E64130();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_260E64130()
{
  if (!qword_27FE553D8)
  {
    v0 = sub_260E69584();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE553D8);
    }
  }
}

unint64_t sub_260E64194()
{
  result = qword_27FE553E0;
  if (!qword_27FE553E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE553E0);
  }

  return result;
}

id sub_260E641E8()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v3 = sub_260E68FF4();
  v4 = [v2 initWithType_];

  if (v4)
  {
    v5 = sub_260E68FF4();
    v6 = type metadata accessor for MobileAssetRequest(0);
    v7 = sub_260E68FF4();
    [v4 addKeyValuePair:v5 with:v7];

    if ((*(v1 + *(v6 + 28) + 8) & 1) == 0)
    {
      v8 = sub_260E68FF4();
      sub_260E69804();
      v9 = sub_260E68FF4();

      [v4 addKeyValuePair:v8 with:v9];
    }

    if ((*(v1 + *(v6 + 20)) & 1) == 0)
    {
      [v4 returnTypes_];
    }

    return v4;
  }

  else
  {
    result = sub_260E69704("Fatal error", 11, 2, 0xD00000000000002ELL, 0x8000000260E733A0, "ProductKit/MAAssetQuery+Additions.swift", 39, 2, 17, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_260E643C0()
{
  sub_260E69644();
  MEMORY[0x2666F0C00](0xD000000000000020, 0x8000000260E73310);
  sub_260E68A04();
  sub_260E4C918();
  v1 = sub_260E69804();
  MEMORY[0x2666F0C00](v1);

  MEMORY[0x2666F0C00](0x69726F697270202CLL, 0xED0000203D207974);
  v2 = type metadata accessor for MobileAssetRequest(0);
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 0x65736C6166;
  }

  else
  {
    v3 = 1702195828;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = sub_260E69804();
  MEMORY[0x2666F0C00](v5);

  MEMORY[0x2666F0C00](0xD00000000000001ALL, 0x8000000260E73340);
  MEMORY[0x2666F0C00](v3, v4);

  MEMORY[0x2666F0C00](8236, 0xE200000000000000);
  v6 = sub_260E641E8();
  v7 = [v6 queryParams];

  if (!v7)
  {
    sub_260E645F4();
    v7 = MEMORY[0x2666F1030](MEMORY[0x277D84F90]);
  }

  v8 = [v7 description];
  v9 = sub_260E69024();
  v11 = v10;

  MEMORY[0x2666F0C00](v9, v11);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_260E645F4()
{
  result = qword_27FE553E8;
  if (!qword_27FE553E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE553E8);
  }

  return result;
}

uint64_t sub_260E64640()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_260E659C0(0, v2, 0);
    v3 = v20;
    v4 = v1 + 40;
    do
    {
      v5 = sub_260E694F4();
      v7 = v6;
      v9 = v8;
      v10 = sub_260E694F4();
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v11;
        v19 = v10;
        v16 = v12;
        sub_260E659C0((v13 > 1), v14 + 1, 1);
        v11 = v18;
        v10 = v19;
        v12 = v16;
      }

      *(v20 + 16) = v14 + 1;
      v15 = (v20 + 48 * v14);
      v15[4] = v5;
      v15[5] = v7;
      v15[6] = v9;
      v15[7] = v10;
      v15[8] = v11;
      v15[9] = v12;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_260E64768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_260E68914();
  v6 = v5;
  if (qword_27FE53E40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55438, &qword_260E70798);
  sub_260E655F0(&qword_27FE55458, sub_260E65668, MEMORY[0x277D83978]);
  sub_260E68784();
  v7 = sub_260E68904();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = sub_260E15FB4(v4, v6);
  *a2 = v9;
  return result;
}

uint64_t sub_260E64A5C()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE553F0);
  v1 = __swift_project_value_buffer(v0, qword_27FE553F0);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E64B24()
{
  sub_260E687A4();
  swift_allocObject();
  result = sub_260E68794();
  qword_27FE55408 = result;
  return result;
}

ProductKit::VideoViewFeatureTimings::Section __swiftcall VideoViewFeatureTimings.Section.init(startTime:duration:)(Swift::Double startTime, Swift::Double duration)
{
  *v2 = startTime;
  v2[1] = duration;
  result.duration = duration;
  result.startTime = startTime;
  return result;
}

uint64_t sub_260E64B7C()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

void sub_260E64BBC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_260E69834() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_260E69834();

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
}

uint64_t sub_260E64CA0(uint64_t a1)
{
  v2 = sub_260E64EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E64CDC(uint64_t a1)
{
  v2 = sub_260E64EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoViewFeatureTimings.Section.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55410, &qword_260E70780);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E64EA0();
  sub_260E69944();
  v8[15] = 0;
  sub_260E697D4();
  if (!v1)
  {
    v8[14] = 1;
    sub_260E697D4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_260E64EA0()
{
  result = qword_27FE55418;
  if (!qword_27FE55418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55418);
  }

  return result;
}

uint64_t VideoViewFeatureTimings.Section.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55420, &qword_260E70788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E64EA0();
  sub_260E69934();
  if (!v2)
  {
    v16 = 0;
    sub_260E69794();
    v10 = v9;
    v15 = 1;
    sub_260E69794();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_260E650F4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_260E69834();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_260E6517C(uint64_t a1)
{
  v2 = sub_260E65398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E651B8(uint64_t a1)
{
  v2 = sub_260E65398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoViewFeatureTimings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55428, &qword_260E70790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E65398();

  sub_260E69944();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55438, &qword_260E70798);
  sub_260E655F0(&qword_27FE55440, sub_260E653EC, MEMORY[0x277D83948]);
  sub_260E697F4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_260E65398()
{
  result = qword_27FE55430;
  if (!qword_27FE55430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55430);
  }

  return result;
}

unint64_t sub_260E653EC()
{
  result = qword_27FE55448;
  if (!qword_27FE55448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55448);
  }

  return result;
}

uint64_t VideoViewFeatureTimings.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55450, &qword_260E707A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E65398();
  sub_260E69934();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55438, &qword_260E70798);
    sub_260E655F0(&qword_27FE55458, sub_260E65668, MEMORY[0x277D83978]);
    sub_260E697B4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E655F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE55438, &qword_260E70798);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260E65668()
{
  result = qword_27FE55460;
  if (!qword_27FE55460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55460);
  }

  return result;
}

uint64_t sub_260E656EC(uint64_t *a1, int a2)
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

uint64_t sub_260E65734(uint64_t result, int a2, int a3)
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

unint64_t sub_260E657B4()
{
  result = qword_27FE55468;
  if (!qword_27FE55468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55468);
  }

  return result;
}

unint64_t sub_260E6580C()
{
  result = qword_27FE55470;
  if (!qword_27FE55470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55470);
  }

  return result;
}

unint64_t sub_260E65864()
{
  result = qword_27FE55478;
  if (!qword_27FE55478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55478);
  }

  return result;
}

unint64_t sub_260E658BC()
{
  result = qword_27FE55480;
  if (!qword_27FE55480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55480);
  }

  return result;
}

unint64_t sub_260E65914()
{
  result = qword_27FE55488;
  if (!qword_27FE55488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55488);
  }

  return result;
}

unint64_t sub_260E6596C()
{
  result = qword_27FE55490;
  if (!qword_27FE55490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE55490);
  }

  return result;
}

char *sub_260E659C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_260E65A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_260E659E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_260E65B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_260E65A00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_260E65C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_260E65A20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_260E65E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_260E65A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55498, &qword_260E70AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_260E65B5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554B8, &qword_260E70B00);
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

void *sub_260E65C68(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554A0, &unk_260E70AE0);
  v10 = *(type metadata accessor for iosmacHardware(0) - 8);
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
  v15 = *(type metadata accessor for iosmacHardware(0) - 8);
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

void *sub_260E65E40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554A8, &qword_260E70AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554B0, &qword_260E70AF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_260E65F88(uint64_t a1)
{
  sub_260E69024();
  sub_260E698F4();
  sub_260E690C4();
  v2 = sub_260E69914();

  return sub_260E6605C(a1, v2);
}

unint64_t sub_260E66018(uint64_t a1)
{
  v2 = sub_260E695E4();

  return sub_260E66160(a1, v2);
}

unint64_t sub_260E6605C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_260E69024();
      v8 = v7;
      if (v6 == sub_260E69024() && v8 == v9)
      {
        break;
      }

      v11 = sub_260E69834();

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

unint64_t sub_260E66160(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_260E62D78(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666F1100](v9, a1);
      sub_260E62DD4(v9);
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

unint64_t sub_260E66228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554F0, &qword_260E70B38);
    v3 = sub_260E69744();
    v4 = a1 + 32;

    while (1)
    {
      sub_260E15684(v4, &v13, &qword_27FE542B8, &qword_260E6BFD0);
      v5 = v13;
      v6 = v14;
      result = sub_260E35BFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260E145CC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_260E6637C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_260E69744();
    v10 = a1 + 32;

    while (1)
    {
      sub_260E15684(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_260E65F88(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_260E145CC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

CGImageRef sub_260E66494()
{
  v0 = sub_260E68D84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_260E68DA4();
  v6 = v5;
  v7 = sub_260E68974();
  v8 = CGImageSourceCreateWithData(v7, 0);

  if (!v8)
  {
    sub_260E15FB4(v4, v6);
    return 0;
  }

  if (CGImageSourceGetCount(v8) <= 0)
  {
    sub_260E15FB4(v4, v6);

    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, 0);

  sub_260E15FB4(v4, v6);
  if (ImageAtIndex)
  {
    sub_260E68D94();
    v10 = sub_260E68D74();
    (*(v1 + 8))(v3, v0);
    if (v10 == 1)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v12 = sub_260E68FF4();
      v13 = [objc_opt_self() kernelWithString_];

      v14 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:0.803921569 Y:0.807843137 Z:0.819607843];
      if (v13)
      {
        v15 = v13;
        [v11 extent];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
        v24 = swift_allocObject();
        v48 = xmmword_260E6BDD0;
        *(v24 + 16) = xmmword_260E6BDD0;
        *(v24 + 56) = sub_260E157C4(0, &qword_27FE554C0, 0x277CBF758);
        *(v24 + 32) = v11;
        *(v24 + 88) = sub_260E157C4(0, &qword_27FE554C8, 0x277CBF788);
        *(v24 + 64) = v14;
        v25 = v11;
        v26 = v14;
        v27 = sub_260E691A4();

        v28 = [v15 applyWithExtent:v27 arguments:{v17, v19, v21, v23}];

        if (v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554D0, &qword_260E70B20);
          inited = swift_initStackObject();
          v47 = v26;
          v30 = *MEMORY[0x277CBF910];
          *(inited + 32) = *MEMORY[0x277CBF910];
          *(inited + 16) = v48;
          v31 = MEMORY[0x277D839B0];
          *(inited + 40) = 0;
          v32 = *MEMORY[0x277CBF948];
          *(inited + 64) = v31;
          *(inited + 72) = v32;
          v33 = objc_allocWithZone(MEMORY[0x277CBEB68]);
          v34 = v30;
          v35 = v32;
          v36 = [v33 init];
          *(inited + 104) = sub_260E157C4(0, &qword_27FE554D8, 0x277CBEB68);
          *(inited + 80) = v36;
          sub_260E6637C(inited, &qword_27FE554E8, &qword_260E70B30, &qword_27FE554E0, &qword_260E70B28);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554E0, &qword_260E70B28);
          swift_arrayDestroy();
          v37 = objc_allocWithZone(MEMORY[0x277CBF740]);
          type metadata accessor for CIContextOption(0);
          sub_260E66A4C();
          v38 = sub_260E68F84();

          v39 = [v37 initWithOptions_];

          [v25 extent];
          v40 = [v39 createCGImage:v28 fromRect:?];

          return v40;
        }
      }

      if (qword_27FE53E68 != -1)
      {
        swift_once();
      }

      v41 = sub_260E68E94();
      __swift_project_value_buffer(v41, qword_27FE5CBB8);
      v42 = sub_260E68E74();
      v43 = sub_260E69454();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_260E02000, v42, v43, "Failed to generate image from kernel", v44, 2u);
        MEMORY[0x2666F1EF0](v44, -1, -1);
      }

      return 0;
    }
  }

  return ImageAtIndex;
}

unint64_t sub_260E66A4C()
{
  result = qword_27FE54088;
  if (!qword_27FE54088)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54088);
  }

  return result;
}

unint64_t sub_260E66AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE554F8, &qword_260E70B40);
    v3 = sub_260E69744();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_260E65F88(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_260E66BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
    v7 = sub_260E69744();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_260E15684(v9, v5, &qword_27FE54720, &qword_260E6D6A8);
      v12 = *v5;
      v11 = v5[1];
      result = sub_260E35BFC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
      result = sub_260E66D84(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_260E66D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E66DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_260E69924();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  (*(*(a3 - 8) + 32))(&v17 - v14, a2, a3, v13);
  swift_storeEnumTagMultiPayload();
  return sub_260E66F10(a1, v15, a3, a4, a5, a6);
}

uint64_t sub_260E66F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v8 = *(type metadata accessor for UnsafeResumption(0, a3, a4, a5) + 44);
  v9 = sub_260E69924();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a2, v9);
}

uint64_t sub_260E66FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260E69924();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  (*(v21 + 16))(&v24 - v19, a1, v17, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v20, a4);
    return sub_260E6722C(v16, v25, a3, a4, a5);
  }

  else
  {
    v23 = *(v9 + 32);
    v23(v11, v20, a3);
    v23(*(*(v25 + 64) + 40), v11, a3);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_260E6722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x282200958](a2, v8);
}

uint64_t sub_260E672D8(void *a1)
{
  result = sub_260E69334();
  if (v2 <= 0x3F)
  {
    result = sub_260E69924();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_260E67384(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v8 = v4 + ((v7 + 8) & ~v7) + 1;
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v11 = (a2 - 0x7FFFFFFF + ~(-1 << v9)) >> v9;
  if (v11 > 0xFFFE)
  {
    v10 = *(a1 + v8);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v11 <= 0xFE)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + v8);
    if (!*(a1 + v8))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
LABEL_5:
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

LABEL_19:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v12) ^ 0x80000000;
}

unsigned int *sub_260E67520(unsigned int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v7 = v5 + ((v6 + 8) & ~v6) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v8 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_33:
        *result = (a2 - 1);
        return result;
      }

      *(result + v7) = 0;
    }

    else if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v7 <= 3)
  {
    v9 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v7))) >> (8 * v7);
    if (v9 > 0xFFFE)
    {
      v8 = 4;
      if (a2 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    if (v9 < 0xFF)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_17:
  v11 = a2 & 0x7FFFFFFF;
  if (v7 >= 4)
  {
    v12 = result;
    bzero(result, v7);
    result = v12;
    *v12 = v11;
    v13 = 1;
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v13 = (v11 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_38:
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v14 = a2;
  v15 = a2 & ~(-1 << (8 * v7));
  v16 = result;
  bzero(result, v7);
  result = v16;
  if (v7 == 3)
  {
    *v16 = v15;
    *(v16 + 2) = BYTE2(v15);
    goto LABEL_38;
  }

  if (v7 == 2)
  {
    *v16 = v15;
    if (v8 > 1)
    {
LABEL_42:
      if (v8 == 2)
      {
        *(result + v7) = v13;
      }

      else
      {
        *(result + v7) = v13;
      }

      return result;
    }
  }

  else
  {
    *v16 = v14;
    if (v8 > 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v8)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_260E67764(uint64_t a1, uint64_t a2, int *a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_260E6785C;

  return v7();
}

uint64_t sub_260E6785C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E682A0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_260E67A3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_260E68E94();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_260E68E84();
}

uint64_t sub_260E67AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_260E67ADC, a4, 0);
}

uint64_t sub_260E67ADC()
{
  v1 = v0[10];
  v2 = *(v0[8] + 352);
  v0[2] = v0[9];
  v0[3] = v1;
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_260E67BE0;

  return v5(v0 + 2);
}

uint64_t sub_260E67BE0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_260E67CF4;
  }

  else
  {
    v2 = sub_260E5DEDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E67D10()
{
  v18 = v0;
  v1 = v0[12];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_260E43774(v7, v6, &v17);
    *(v8 + 12) = 2080;
    v0[4] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_260E02000, v3, v4, "### %s ERROR -- %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
    v14 = v0[12];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_260E67EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_260E67F98;

  return sub_260E20B28(a4, a5, a6);
}

uint64_t sub_260E67F98()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E680CC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_260E680CC()
{
  v18 = v0;
  v1 = v0[7];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_260E43774(v7, v6, &v17);
    *(v8 + 12) = 2080;
    v0[2] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_260E02000, v3, v4, "### %s ERROR -- %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
    v14 = v0[7];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_260E682EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_260E68350(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260E683D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MobileAssetResult(uint64_t a1)
{
  result = qword_27FE55608;
  if (!qword_27FE55608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_260E6848C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_260E68894();
  v2 = [v0 initWithURL_];

  if (v2)
  {
    return v2;
  }

  sub_260E69644();

  sub_260E68904();
  sub_260E194E8();
  v4 = sub_260E69804();
  MEMORY[0x2666F0C00](v4);

  result = sub_260E69704("Fatal error", 11, 2, 0xD000000000000013, 0x8000000260E734D0, "ProductKit/MobileAssetResult.swift", 34, 2, 18, 0);
  __break(1u);
  return result;
}

unint64_t sub_260E6859C()
{
  sub_260E69644();

  sub_260E68904();
  sub_260E194E8();
  v0 = sub_260E69804();
  MEMORY[0x2666F0C00](v0);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000012;
}