uint64_t sub_24ADA2D3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ADA2DB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_24ADA2EE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

const char *Feature.FindMyUI.feature.getter()
{
  v1 = *v0;
  v2 = "New_Contact_Picker";
  v3 = "People_Embedded_Revamp";
  v4 = "People_Embedded_Revamp_Beam";
  if (v1 != 3)
  {
    v4 = "People_Embedded_Revamp_Extra";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "New_People_List_Rows";
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

uint64_t Feature.FindMyUI.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t _s10FindMyCore9ItemModelV3TagO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t sub_24ADA3234(uint64_t a1)
{
  v2 = *v1;
  sub_24AE09838();
  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

unint64_t sub_24ADA327C()
{
  result = qword_27EFA8CD0;
  if (!qword_27EFA8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8CD0);
  }

  return result;
}

uint64_t _s8FindMyUIOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8FindMyUIOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t FindMyUserDefaults.Key.init(rawValue:internalBuildOnly:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t FindMyUserDefaults.value<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_24AE09438();
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-1] - v10;
  v12 = *(a1 + 16);
  if ((*(v4 + 24) & 1) == 0 && *(a1 + 16))
  {
    return (*(a3 + 8))(a2, a3);
  }

  v14 = *(v4 + 16);
  v15 = *(a1 + 8);
  v18[0] = *a1;
  v18[1] = v15;
  v19 = v12;
  (*(a3 + 16))(v14, v18, a2, a3);
  v16 = *(a2 - 8);
  (*(v16 + 56))(v11, 0, 1, a2);
  return (*(v16 + 32))(a4, v11, a2);
}

id static FindMyUserDefaults.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8620 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27EFA8CE0;
  v2 = qword_27EFA8CE8;
  v6 = qword_27EFA8CE8;
  v3 = byte_27EFA8CF0;
  *a1 = qword_27EFA8CD8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  sub_24AE08288();

  return v6;
}

Swift::Void __swiftcall FindMyUserDefaults.resetAllValues()()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 16);
    v3 = sub_24AE08F88();
    [v1 removePersistentDomainForName_];
  }

  else
  {
    v2 = objc_opt_self();

    [v2 resetStandardUserDefaults];
  }
}

void FindMyUserDefaults.set<A>(_:for:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(v3 + 24) & 1) != 0 || !*(a2 + 16))
  {
    v4 = *(v3 + 16);
    v5 = sub_24AE097B8();
    v6 = sub_24AE08F88();
    [v4 setObject:v5 forKey:v6];
    swift_unknownObjectRelease();
  }
}

id static Bool.value(from:and:)(void *a1, void *a2)
{
  v3 = sub_24AE08F88();
  v4 = [a1 BOOLForKey_];

  return v4;
}

void sub_24ADA38E8(void *a1@<X0>, _BYTE *a3@<X8>)
{
  v5 = sub_24AE08F88();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *a3 = a1;
}

id static Int.value(from:and:)(void *a1, void *a2)
{
  v3 = sub_24AE08F88();
  v4 = [a1 integerForKey_];

  return v4;
}

void sub_24ADA39AC(void *a1@<X0>, void *a3@<X8>)
{
  v5 = sub_24AE08F88();
  v6 = [a1 integerForKey_];

  *a3 = v6;
}

double static Double.value(from:and:)(void *a1, void *a2)
{
  v3 = sub_24AE08F88();
  [a1 doubleForKey_];
  v5 = v4;

  return v5;
}

void sub_24ADA3A78(void *a1@<X0>, void *a3@<X8>)
{
  v5 = sub_24AE08F88();
  [a1 doubleForKey_];
  v7 = v6;

  *a3 = v7;
}

uint64_t static Optional<A>.value(from:and:)(void *a1, void *a2)
{
  v3 = sub_24AE08F88();
  v4 = [a1 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_24AE08FB8();

  return v5;
}

void sub_24ADA3B80(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_24AE08F88();
  v6 = [a1 stringForKey_];

  if (v6)
  {
    v7 = sub_24AE08FB8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a3 = v7;
  a3[1] = v9;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24ADA3C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADA3C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ADA3CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24ADA3D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24ADA3D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LabelInfo.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08718();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LabelInfo.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LabelInfo(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
  sub_24AE08288();

  return sub_24AE08288();
}

uint64_t type metadata accessor for LabelInfo(uint64_t a1)
{
  result = qword_27EFA8D78;
  if (!qword_27EFA8D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADA3F40(uint64_t a1)
{
  result = sub_24AE08718();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::String __swiftcall String.fmLocalized(replacements:table:)(Swift::OpaquePointer_optional replacements, FindMyCore::FindMyLocalizationTable_optional *table)
{
  rawValue = replacements.value._rawValue;
  v3 = *(*&replacements.is_nil + 8);
  v4 = *(*&replacements.is_nil + 16);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = sub_24AE08F88();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = v4;
    v7 = sub_24AE08F88();
  }

  v3 = sub_24AE08F88();
LABEL_8:
  v8 = [v6 localizedStringForKey:v7 value:0 table:v3];

  v9 = sub_24AE08FB8();
  v11 = v10;

  if (rawValue)
  {
    v12 = sub_24AE08FC8();
    v14 = v13;

    v15 = v12;
    v16 = v14;
  }

  else
  {

    v15 = v9;
    v16 = v11;
  }

  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t FindMyLocalizationTable.tableName.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

void *FindMyLocalizationTable.tableBundle.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

FindMyCore::FindMyLocalizationTable __swiftcall FindMyLocalizationTable.init(tableName:tableBundle:)(FindMyCore::FindMyLocalizationTable tableName, NSBundle_optional tableBundle)
{
  *v2 = tableName.tableName;
  v2[1]._countAndFlagsBits = tableBundle.value.super.isa;
  tableName.tableBundle = tableBundle;
  return tableName;
}

uint64_t FindMyLocalizationTableDescription.name.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t FindMyLocalizationTableDescription.bundleDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FindMyLocalizationTableDescription(0) + 20);
  v4 = sub_24AE086E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FindMyLocalizationTableDescription(uint64_t a1)
{
  result = qword_27EFA8D88;
  if (!qword_27EFA8D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FindMyLocalizationTableDescription.init(name:bundleDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for FindMyLocalizationTableDescription(0) + 20);
  v7 = sub_24AE086E8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24ADA42DC(uint64_t a1, int a2)
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

uint64_t sub_24ADA4324(uint64_t result, int a2, int a3)
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

uint64_t sub_24ADA439C(uint64_t a1)
{
  result = sub_24AE086E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LocalizedStringResource(separating:_:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if (a2)
  {
    sub_24AE08288();
    sub_24AE086D8();
    v14 = sub_24AE08718();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_24AE08718();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (a4)
  {
    sub_24AE08288();
    sub_24AE086D8();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_24AE08718();
  (*(*(v17 - 8) + 56))(v11, v16, 1, v17);
  LocalizedStringResource(separating:_:)(v13, v11, x8_0);
  sub_24ADA4AB0(v11);
  return sub_24ADA4AB0(v13);
}

uint64_t LocalizedStringResource(separating:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_24AE08948();
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24AE086E8();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24AE08F78();
  MEMORY[0x28223BE20](v8 - 8);
  v33[1] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AE08F58();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24AE08718();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8DA0, &qword_24AE0AD78);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v33 - v20;
  v22 = *(v19 + 56);
  sub_24ADA4B18(a1, v33 - v20);
  sub_24ADA4B18(a2, &v21[v22]);
  v23 = *(v12 + 48);
  LODWORD(a1) = v23(v21, 1, v11);
  v24 = v23(&v21[v22], 1, v11);
  if (a1 != 1)
  {
    v27 = *(v12 + 32);
    if (v24 == 1)
    {
      v26 = v38;
      v27(v38, v21, v11);
    }

    else
    {
      v27(v17, v21, v11);
      v27(v15, &v21[v22], v11);
      sub_24AE08F48();
      sub_24AE08F38();
      sub_24AE08F28();
      sub_24AE08F38();
      sub_24AE08F28();
      sub_24AE08F38();
      sub_24AE08F68();
      v28 = type metadata accessor for GeneralModule();
      v29 = v34;
      v30 = v35;
      *v35 = v28;
      (*(v29 + 104))(v30, *MEMORY[0x277CC9120], v36);
      sub_24AE08938();
      v26 = v38;
      sub_24AE08728();
      v31 = *(v12 + 8);
      v31(v15, v11);
      v31(v17, v11);
    }

    goto LABEL_8;
  }

  if (v24 != 1)
  {
    v26 = v38;
    (*(v12 + 32))(v38, &v21[v22], v11);
LABEL_8:
    v25 = 0;
    return (*(v12 + 56))(v26, v25, 1, v11);
  }

  v25 = 1;
  v26 = v38;
  return (*(v12 + 56))(v26, v25, 1, v11);
}

uint64_t sub_24ADA4AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADA4B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADA4B88()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = sub_24AE08FB8();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = sub_24AE08FB8();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = sub_24AE08FB8();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = sub_24AE08FB8();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_24ADA4CC4(uint64_t a1, uint64_t a2)
{
  sub_24ADA4B88();
  v3 = sub_24AE08F88();
  v4 = sub_24AE08F88();

  v5 = CFPhoneNumberCreate();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:
    sub_24AE08288();
    return a1;
  }

  v8 = String;
  a1 = sub_24AE08FB8();

  return a1;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_24AE08288();
  return a1;
}

uint64_t sub_24ADA4E0C(uint64_t a1)
{
  result = sub_24AE09438();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ADA4EA0()
{
  v1 = *(*v0 + 88);
  v2 = sub_24AE09438();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t NSUserDefaults.set<A>(codableValue:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24AE085D8();
  swift_allocObject();
  sub_24AE085C8();
  v8 = sub_24AE085B8();
  v10 = v9;

  if (!v7)
  {
    v12 = sub_24AE08848();
    v13 = sub_24AE08F88();
    [v6 setValue:v12 forKey:v13];

    return sub_24ADA06A4(v8, v10);
  }

  return result;
}

uint64_t NSUserDefaults.codable<A>(forKey:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_24AE08F88();
  v10 = [v5 dataForKey_];

  if (!v10)
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v11 = sub_24AE08858();
  v13 = v12;

  sub_24AE085A8();
  swift_allocObject();
  sub_24AE08598();
  sub_24AE08588();
  if (v6)
  {

    return sub_24ADA06A4(v11, v13);
  }

  else
  {
    sub_24ADA06A4(v11, v13);

    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }
}

uint64_t ItemLocationSubscription.Priority.hashValue.getter()
{
  sub_24AE09838();
  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

uint64_t ItemLocationSubscription.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C230FB0](*v1, v1[1]);
  sub_24AE09048();

  return MEMORY[0x24C231780](0);
}

uint64_t ItemLocationSubscription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

uint64_t sub_24ADA5368()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

uint64_t sub_24ADA53F8(uint64_t a1)
{
  MEMORY[0x24C230FB0](*v1, v1[1]);
  sub_24AE09048();

  return MEMORY[0x24C231780](0);
}

uint64_t sub_24ADA5468(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v2, v3);
  sub_24AE09048();

  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

uint64_t _s10FindMyCore24ItemLocationSubscriptionV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

unint64_t sub_24ADA55C4()
{
  result = qword_27EFA8E28;
  if (!qword_27EFA8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E28);
  }

  return result;
}

unint64_t sub_24ADA561C()
{
  result = qword_27EFA8E30;
  if (!qword_27EFA8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E30);
  }

  return result;
}

uint64_t sub_24ADA56F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24ADA5740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24ADA5794(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24ADA57AC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t PersonLocationSubscription.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

void *PersonLocationSubscription.init(identifier:priority:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t PersonLocationSubscription.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t PersonLocationSubscription.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  MEMORY[0x24C230FB0](*v1, *(v1 + 8));
  sub_24AE09048();

  return MEMORY[0x24C231780](v2);
}

uint64_t PersonLocationSubscription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  MEMORY[0x24C231780](v3);
  return sub_24AE09868();
}

uint64_t sub_24ADA59A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  MEMORY[0x24C231780](v3);
  return sub_24AE09868();
}

uint64_t sub_24ADA5A34(uint64_t a1)
{
  v2 = *(v1 + 16);
  MEMORY[0x24C230FB0](*v1, *(v1 + 8));
  sub_24AE09048();

  return MEMORY[0x24C231780](v2);
}

uint64_t sub_24ADA5AAC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_24AE09838();
  MEMORY[0x24C230FB0](v2, v3);
  sub_24AE09048();

  MEMORY[0x24C231780](v4);
  return sub_24AE09868();
}

uint64_t _s10FindMyCore26PersonLocationSubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  MEMORY[0x24C230FB0](*a1, *(a1 + 8));
  MEMORY[0x24C230FB0](v3, v4);

  return v2 ^ v5 ^ 1u;
}

unint64_t sub_24ADA5C2C()
{
  result = qword_27EFA8E38;
  if (!qword_27EFA8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E38);
  }

  return result;
}

unint64_t sub_24ADA5C84()
{
  result = qword_27EFA8E40;
  if (!qword_27EFA8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonLocationSubscription.Priority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonLocationSubscription.Priority(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static ItemModel.UniqueIdentifier.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24AE08288();

  return ItemModel.UniqueIdentifier.init(rawValue:)(a1, a2, a3);
}

uint64_t sub_24ADA5F24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24AE08288();

  return ItemModel.UniqueIdentifier.init(rawValue:)(a1, a2, a3);
}

uint64_t sub_24ADA5F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_24AE08718();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = sub_24AE08508();
  __swift_allocate_value_buffer(v5, qword_27EFA8E48);
  __swift_project_value_buffer(v5, qword_27EFA8E48);
  sub_24AE086D8();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_24AE084F8();
}

uint64_t static LocationLabelEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8628 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA8E48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t LocationLabelEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_24AE08718();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24AE08F58();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = v0[5];
  v23 = v0[4];
  v24 = v12;
  v25 = v0[6];
  v13 = v0[1];
  v19 = *v0;
  v20 = v13;
  v14 = v0[3];
  v21 = v0[2];
  v22 = v14;
  sub_24AE08F48();
  sub_24AE08F38();
  v18 = 2;
  sub_24ADE7D84(0, &v18, v10);
  sub_24AE08FE8();
  sub_24AE08F18();

  sub_24AE08F38();
  sub_24AE086F8();
  (*(v8 + 56))(v6, 1, 1, v7);
  v15 = sub_24AE08478();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  return sub_24AE08488();
}

uint64_t LocationLabelEntity.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_24AD9B858(v10, &v9);
}

uint64_t LocationLabelEntity.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E68, &qword_24AE0B0F0);
  *(a1 + 112) = sub_24AE08408();
  *(a1 + 120) = sub_24AE08408();
  *(a1 + 128) = sub_24AE08408();
  *(a1 + 136) = sub_24AE08408();
  *(a1 + 144) = sub_24AE08408();
  *(a1 + 152) = sub_24AE08408();
  *(a1 + 160) = sub_24AE08408();
  if (qword_27EFA8688 != -1)
  {
    swift_once();
  }

  v2 = xmmword_27EFA9E48;
  v3 = xmmword_27EFA9E58;
  v10[4] = xmmword_27EFA9E48;
  v10[5] = xmmword_27EFA9E58;
  v4 = xmmword_27EFA9E68;
  v10[6] = xmmword_27EFA9E68;
  v5 = xmmword_27EFA9E18;
  v10[0] = xmmword_27EFA9E08;
  v10[1] = xmmword_27EFA9E18;
  v7 = xmmword_27EFA9E28;
  v6 = xmmword_27EFA9E38;
  v10[2] = xmmword_27EFA9E28;
  v10[3] = xmmword_27EFA9E38;
  *a1 = xmmword_27EFA9E08;
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_24AD9B858(v10, &v9);
}

uint64_t LocationLabelEntity.init(model:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v16 = a1[4];
  v17 = v4;
  v18 = a1[6];
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  v6 = a1[3];
  v14 = a1[2];
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E68, &qword_24AE0B0F0);
  *(a2 + 112) = sub_24AE08408();
  *(a2 + 120) = sub_24AE08408();
  *(a2 + 128) = sub_24AE08408();
  *(a2 + 136) = sub_24AE08408();
  *(a2 + 144) = sub_24AE08408();
  *(a2 + 152) = sub_24AE08408();
  *(a2 + 160) = sub_24AE08408();
  v7 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = a1[6];
  v8 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v9;
  v11[7] = v12;
  sub_24AD9B858(&v12, v11);
  sub_24AE08288();
  sub_24AE083A8();
  v11[0] = v13;
  sub_24AE08288();
  sub_24AE083A8();
  v11[0] = v14;
  sub_24AE08288();
  sub_24AE083A8();
  v11[0] = v15;
  sub_24AE08288();
  sub_24AE083A8();
  v11[0] = v16;
  sub_24AE08288();
  sub_24AE083A8();
  v11[0] = v17;
  sub_24AE08288();
  sub_24AE083A8();
  v11[0] = v18;
  sub_24AE08288();
  sub_24AE083A8();
  return sub_24ADA6B3C(&v12);
}

uint64_t sub_24ADA6788@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E68, &qword_24AE0B0F0);
  *(a1 + 112) = sub_24AE08408();
  *(a1 + 120) = sub_24AE08408();
  *(a1 + 128) = sub_24AE08408();
  *(a1 + 136) = sub_24AE08408();
  *(a1 + 144) = sub_24AE08408();
  *(a1 + 152) = sub_24AE08408();
  *(a1 + 160) = sub_24AE08408();
  if (qword_27EFA8688 != -1)
  {
    swift_once();
  }

  v2 = xmmword_27EFA9E48;
  v3 = xmmword_27EFA9E58;
  v10[4] = xmmword_27EFA9E48;
  v10[5] = xmmword_27EFA9E58;
  v4 = xmmword_27EFA9E68;
  v10[6] = xmmword_27EFA9E68;
  v5 = xmmword_27EFA9E18;
  v10[0] = xmmword_27EFA9E08;
  v10[1] = xmmword_27EFA9E18;
  v7 = xmmword_27EFA9E28;
  v6 = xmmword_27EFA9E38;
  v10[2] = xmmword_27EFA9E28;
  v10[3] = xmmword_27EFA9E38;
  *a1 = xmmword_27EFA9E08;
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_24AD9B858(v10, &v9);
}

uint64_t sub_24ADA6898(uint64_t a1)
{
  v2 = sub_24ADA7088();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24ADA68E4(uint64_t a1)
{
  v2 = sub_24ADA7088();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_24ADA6934@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8628 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA8E48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADA69DC(uint64_t a1)
{
  v2 = sub_24ADA6B90();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADA6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD8E628;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_24ADA6AF0(uint64_t a1)
{
  v2 = sub_24ADA6E40();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24ADA6B90()
{
  result = qword_27EFA8E70;
  if (!qword_27EFA8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E70);
  }

  return result;
}

unint64_t sub_24ADA6BE8()
{
  result = qword_27EFA8E78;
  if (!qword_27EFA8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E78);
  }

  return result;
}

unint64_t sub_24ADA6C40()
{
  result = qword_27EFA8E80;
  if (!qword_27EFA8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E80);
  }

  return result;
}

unint64_t sub_24ADA6C98()
{
  result = qword_27EFA8E88;
  if (!qword_27EFA8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8E88);
  }

  return result;
}

unint64_t sub_24ADA6D40()
{
  result = qword_27EFA8EA0;
  if (!qword_27EFA8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8EA0);
  }

  return result;
}

unint64_t sub_24ADA6D94()
{
  result = qword_27EFA8EA8;
  if (!qword_27EFA8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8EA8);
  }

  return result;
}

unint64_t sub_24ADA6DE8()
{
  result = qword_27EFA8EB0;
  if (!qword_27EFA8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8EB0);
  }

  return result;
}

unint64_t sub_24ADA6E40()
{
  result = qword_27EFA8EB8;
  if (!qword_27EFA8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8EB8);
  }

  return result;
}

unint64_t sub_24ADA6E98()
{
  result = qword_27EFA8EC0;
  if (!qword_27EFA8EC0)
  {
    sub_24AE08928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8EC0);
  }

  return result;
}

unint64_t sub_24ADA6F38()
{
  result = qword_27EFA8ED8;
  if (!qword_27EFA8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8ED8);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_24ADA6FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADA7010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ADA7088()
{
  result = qword_27EFA8EE0;
  if (!qword_27EFA8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8EE0);
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

uint64_t static PersonModel.UniqueIdentifier.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24AE08288();

  return PersonModel.UniqueIdentifier.init(rawValue:)(a1, a2, a3);
}

uint64_t sub_24ADA7230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24AE08288();

  return PersonModel.UniqueIdentifier.init(rawValue:)(a1, a2, a3);
}

uint64_t sub_24ADA7284()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v0 - 8);
  v12[0] = v12 - v1;
  v2 = sub_24AE08948();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24AE086E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24AE08718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24AE08508();
  __swift_allocate_value_buffer(v10, qword_27EFA8EE8);
  __swift_project_value_buffer(v10, qword_27EFA8EE8);
  sub_24AE08F08();
  *v6 = type metadata accessor for IntelligenceModule();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9120], v3);
  sub_24AE08938();
  sub_24AE08728();
  (*(v9 + 56))(v12[0], 1, 1, v8);
  return sub_24AE084F8();
}

uint64_t static ItemLocationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8630 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA8EE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_24ADA762C()
{
  v0 = type metadata accessor for ItemLocationEntityQuery(0);
  __swift_allocate_value_buffer(v0, qword_27EFA8F00);
  __swift_project_value_buffer(v0, qword_27EFA8F00);
  sub_24AE095E8();
  __break(1u);
}

uint64_t static ItemLocationEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ItemLocationEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA8F00);

  return sub_24ADA772C(v3, a1);
}

uint64_t sub_24ADA772C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemLocationEntityQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADA77E0(uint64_t *a1, uint64_t *a2)
{
  sub_24AE08288();

  sub_24AE083A8();
}

uint64_t sub_24ADA7918(id *a1, uint64_t *a2)
{
  v2 = *a1;

  v3 = v2;
  sub_24AE083A8();
}

uint64_t sub_24ADA7A48(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24AE08978();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *(v5 + 16);
  v11(v16 - v9, a1, v4);
  v12 = *a2;
  v16[5] = a2[1];
  v13 = a2[3];
  v16[3] = v12;
  v16[4] = v13;
  v14 = a2[5];
  v16[0] = a2[4];
  v16[1] = v14;
  v16[2] = a2[6];
  v11(v8, v10, v4);

  sub_24AE083A8();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_24ADA7C88(uint64_t *a1, uint64_t *a2)
{

  sub_24AE083A8();
}

uint64_t sub_24ADA7DAC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *(v5 + 16);
  v11(v16 - v9, a1, v4);
  v12 = a2[1];
  v16[4] = *a2;
  v16[5] = v12;
  v14 = a2[4];
  v13 = a2[5];
  v16[0] = a2[3];
  v16[1] = v14;
  v16[2] = v13;
  v16[3] = a2[6];
  v11(v8, v10, v4);

  sub_24AE083A8();
  (*(v5 + 8))(v10, v4);
}

uint64_t sub_24ADA7FF0(uint64_t *a1, uint64_t *a2)
{
  sub_24AE08288();

  sub_24AE083A8();
}

uint64_t sub_24ADA8128(uint64_t *a1, uint64_t *a2)
{
  sub_24AE08288();

  sub_24AE083A8();
}

uint64_t ItemLocationEntity.init(id:location:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AE088E8();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v45 - v9;
  v52 = sub_24AE08978();
  v50 = *(v52 - 8);
  v10 = MEMORY[0x28223BE20](v52);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = sub_24AE08718();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = a2[5];
  v85 = a2[4];
  v86 = v19;
  v20 = a2[7];
  v87 = a2[6];
  v88 = v20;
  v21 = a2[1];
  v81 = *a2;
  v82 = v21;
  v22 = a2[3];
  v83 = a2[2];
  v84 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F28, &qword_24AE0B450);
  *a3 = sub_24AE08408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F30, &qword_24AE0B458);
  a3[1] = sub_24AE08438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F38, &qword_24AE0B460);
  sub_24ADA915C(&qword_27EFA8F40, MEMORY[0x277CCB120], MEMORY[0x277CE41A0]);
  v46 = sub_24AE083E8();
  a3[2] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F48, &qword_24AE0B468);
  v47 = sub_24AE08428();
  a3[3] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F50, &qword_24AE0B470);
  v48 = sub_24AE083F8();
  a3[4] = v48;
  v51 = sub_24AE08408();
  a3[5] = v51;
  v54 = sub_24AE08408();
  a3[6] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F58, &qword_24AE0B478);
  sub_24ADA6B90();
  v58 = sub_24AE083C8();
  a3[7] = v58;
  v23 = 0xE700000000000000;
  *&v70 = 0x3A315644494142;
  *(&v70 + 1) = 0xE700000000000000;
  MEMORY[0x24C230FB0](v18, v17);

  sub_24AE083A8();
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  LOBYTE(v59) = 2;
  v24 = v81;
  sub_24ADE7D84(0, &v59, v16);
  sub_24AE08FE8();
  v25 = sub_24AE08F88();

  v26 = [objc_opt_self() placemarkWithLocation:v24 name:v25 postalAddress:0];

  *&v70 = v26;
  v27 = v26;
  sub_24AE083A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F60, &unk_24AE0B480);
  v28 = sub_24AE08958();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24AE0A280;
  *(v31 + v30) = v24;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x277CCB108], v28);
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  LOBYTE(v59) = 2;
  v32 = v24;
  sub_24ADE7D84(0, &v59, v16);
  sub_24AE08FE8();
  sub_24AE08968();
  v33 = v50;
  v34 = v52;
  (*(v50 + 16))(v49, v13, v52);
  sub_24AE083A8();
  (*(v33 + 8))(v13, v34);
  [v32 horizontalAccuracy];
  *&v70 = v35;
  sub_24AE083A8();
  v36 = [v32 timestamp];
  v37 = v53;
  sub_24AE088D8();

  v38 = v56;
  v39 = v57;
  (*(v56 + 16))(v55, v37, v57);
  sub_24AE083A8();
  (*(v38 + 8))(v37, v39);
  if (BYTE8(v81) > 2u)
  {
    if (BYTE8(v81) == 3)
    {
      v23 = 0xE900000000000065;
      v40 = 0x74696C6C65746173;
    }

    else if (BYTE8(v81) == 4)
    {
      v40 = 0x6567617373656DLL;
    }

    else
    {
      v23 = 0xE500000000000000;
      v40 = 0x726568746FLL;
    }
  }

  else if (BYTE8(v81))
  {
    if (BYTE8(v81) == 1)
    {
      v23 = 0x800000024AE12D70;
      v40 = 0xD000000000000012;
    }

    else
    {
      v23 = 0xE400000000000000;
      v40 = 1702259052;
    }
  }

  else
  {
    v23 = 0xE600000000000000;
    v40 = 0x79636167656CLL;
  }

  *&v70 = v40;
  *(&v70 + 1) = v23;
  sub_24AE083A8();
  if (BYTE9(v81) > 2u)
  {
    if (BYTE9(v81) == 3)
    {
      v41 = 0xE700000000000000;
      v43 = 1852732786;
    }

    else
    {
      if (BYTE9(v81) != 4)
      {
        v41 = 0xEA00000000006576;
        v42 = 0x69746F6D6F747561;
        goto LABEL_24;
      }

      v41 = 0xE700000000000000;
      v43 = 1818458467;
    }

    goto LABEL_22;
  }

  if (!BYTE9(v81))
  {
    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E75;
    goto LABEL_24;
  }

  if (BYTE9(v81) != 1)
  {
    v41 = 0xE700000000000000;
    v43 = 1802264951;
LABEL_22:
    v42 = v43 | 0x676E6900000000;
    goto LABEL_24;
  }

  v41 = 0xEA00000000007972;
  v42 = 0x616E6F6974617473;
LABEL_24:
  *&v70 = v42;
  *(&v70 + 1) = v41;
  sub_24AE083A8();
  v63 = v86;
  v64 = v87;
  v65 = v88;
  v59 = v82;
  v60 = v83;
  v61 = v84;
  v62 = v85;
  sub_24AD9B858(&v82, &v70);
  LocationLabelEntity.init(model:)(&v59, &v70);
  sub_24ADA8FB8(&v81);
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v66 = v77;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v62 = v73;
  return sub_24AE083A8();
}

uint64_t ItemLocationEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_24AE08718();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24AE08F58();
  MEMORY[0x28223BE20](v8 - 8);
  sub_24AE08F48();
  sub_24AE08F38();
  sub_24AE08398();
  sub_24AE08F18();

  sub_24AE08F38();
  sub_24AE086F8();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_24AE08478();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_24AE08488();
}

uint64_t sub_24ADA8CDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ItemLocationEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA8F00);

  return sub_24ADA772C(v3, a1);
}

void *sub_24ADA8D54@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24ADA8D90@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8630 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA8EE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADA8E38(uint64_t a1)
{
  v2 = sub_24ADA91B4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADA8E88(uint64_t a1)
{
  v2 = sub_24ADA930C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24ADA8ED4()
{
  sub_24ADA920C();
  v0 = MEMORY[0x24C230420]();
  MEMORY[0x24C230FB0](v0);

  qword_27EFA8F18 = 0xD000000000000011;
  unk_27EFA8F20 = 0x800000024AE13090;
  return result;
}

uint64_t static ItemLocationEntity.utTypeIdentifier.getter()
{
  if (qword_27EFA8640 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFA8F18;
  sub_24AE08288();
  return v0;
}

unint64_t sub_24ADA9010()
{
  result = qword_27EFA8F68;
  if (!qword_27EFA8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8F68);
  }

  return result;
}

unint64_t sub_24ADA9068()
{
  result = qword_27EFA8F70;
  if (!qword_27EFA8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8F70);
  }

  return result;
}

unint64_t sub_24ADA90C0()
{
  result = qword_27EFA8F78;
  if (!qword_27EFA8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8F78);
  }

  return result;
}

uint64_t sub_24ADA915C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ADA91B4()
{
  result = qword_27EFA8F88;
  if (!qword_27EFA8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8F88);
  }

  return result;
}

unint64_t sub_24ADA920C()
{
  result = qword_27EFA8F90;
  if (!qword_27EFA8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8F90);
  }

  return result;
}

unint64_t sub_24ADA9260()
{
  result = qword_27EFA8F98;
  if (!qword_27EFA8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8F98);
  }

  return result;
}

unint64_t sub_24ADA92B4()
{
  result = qword_27EFA8FA0;
  if (!qword_27EFA8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8FA0);
  }

  return result;
}

unint64_t sub_24ADA930C()
{
  result = qword_27EFA8FA8;
  if (!qword_27EFA8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8FA8);
  }

  return result;
}

unint64_t sub_24ADA9370()
{
  result = qword_27EFA8FB0;
  if (!qword_27EFA8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8FB8, &qword_24AE0B610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8FB0);
  }

  return result;
}

unint64_t sub_24ADA93D8()
{
  result = qword_27EFA8FC0;
  if (!qword_27EFA8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8FC0);
  }

  return result;
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

uint64_t sub_24ADA9440(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24ADA9488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ItemLocationEntityQuery.Dependencies.fetchWithOptions.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ItemLocationEntityQuery.Dependencies.init(fetchWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADA9528(uint64_t *a1, int a2)
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

uint64_t sub_24ADA9570(uint64_t result, int a2, int a3)
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

uint64_t sub_24ADA9628(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v59 = MEMORY[0x277D84F90];
  sub_24ADFB0FC(0, v1, 0);
  v2 = v59;
  v37 = a1 + 64;
  result = sub_24AE09488();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v60 = *(a1 + 36);
    v36 = v1;
    v6 = 1;
    while (1)
    {
      v7 = v5 >> 6;
      if ((*(v37 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      if (v60 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v8 = (*(a1 + 48) + 16 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = (*(a1 + 56) + (v5 << 7));
      v12 = v11[3];
      v14 = *v11;
      v13 = v11[1];
      v48[2] = v11[2];
      v48[3] = v12;
      v48[0] = v14;
      v48[1] = v13;
      v15 = v11[7];
      v17 = v11[4];
      v16 = v11[5];
      v48[6] = v11[6];
      v48[7] = v15;
      v48[4] = v17;
      v48[5] = v16;
      v18 = v11[5];
      v44 = v11[4];
      v45 = v18;
      v19 = v11[1];
      v40 = *v11;
      v41 = v19;
      v20 = v11[3];
      v42 = v11[2];
      v43 = v20;
      v21 = v11[7];
      v46 = v11[6];
      v47 = v21;
      v49[0] = v9;
      v49[1] = v10;
      v54 = v44;
      v55 = v18;
      v56 = v46;
      v57 = v21;
      v50 = v40;
      v51 = v19;
      v52 = v42;
      v53 = v20;
      sub_24AE08288();
      sub_24ADAE7A8(v48, v39);
      sub_24ADAE804(v49, v39);
      sub_24ADA8FB8(&v50);
      v38[0] = v9;
      v38[1] = v10;
      sub_24ADAE804(v49, v39);

      v39[4] = v54;
      v39[5] = v55;
      v39[6] = v56;
      v39[7] = v57;
      v39[0] = v50;
      v39[1] = v51;
      v39[2] = v52;
      v39[3] = v53;
      ItemLocationEntity.init(id:location:)(v38, v39, v58);
      result = sub_24ADAE874(v49);
      v59 = v2;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_24ADFB0FC((v22 > 1), v23 + 1, 1);
        v2 = v59;
      }

      *(v2 + 16) = v23 + 1;
      v24 = (v2 + (v23 << 6));
      v25 = v58[0];
      v26 = v58[1];
      v27 = v58[3];
      v24[4] = v58[2];
      v24[5] = v27;
      v24[2] = v25;
      v24[3] = v26;
      v28 = 1 << *(a1 + 32);
      if (v5 >= v28)
      {
        goto LABEL_27;
      }

      v29 = *(v37 + 8 * v7);
      if ((v29 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v60 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v30 = v29 & (-2 << (v5 & 0x3F));
      if (v30)
      {
        v5 = __clz(__rbit64(v30)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v7 << 6;
        v32 = v7 + 1;
        v33 = (a1 + 72 + 8 * v7);
        while (v32 < (v28 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_24ADAE8DC(v5, v60, 0);
            v5 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = sub_24ADAE8DC(v5, v60, 0);
        v5 = v28;
      }

LABEL_19:
      if (v6 == v36)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        ++v6;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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
  return result;
}

__n128 ItemLocationEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for ItemLocationEntityQuery(0);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for ItemLocationEntityQuery(uint64_t a1)
{
  result = qword_27EFA8FF0;
  if (!qword_27EFA8FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemLocationEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ADA9A88, 0, 0);
}

uint64_t sub_24ADA9A88()
{
  v31 = v0;
  type metadata accessor for ItemLocationEntityQuery(0);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v30);
    *(v4 + 12) = 2082;
    v6 = MEMORY[0x24C231100](v3, MEMORY[0x277D837D0]);
    v8 = sub_24AD9F840(v6, v7, &v30);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - ids: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = v0[3];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v14 = *(v11 - 1);
      v13 = *v11;
      sub_24AE08288();
      if (sub_24AE090D8())
      {
        v15 = sub_24AE09058();
        v16 = sub_24ADF89E4(v15, v14, v13);
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v14 = MEMORY[0x24C230F60](v16, v18, v20, v22);
        v13 = v23;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24ADAB120(0, *(v12 + 2) + 1, 1, v12, &qword_27EFA90C0, &unk_24AE0B9E0, &type metadata for ItemModel.UniqueIdentifier);
      }

      v25 = *(v12 + 2);
      v24 = *(v12 + 3);
      if (v25 >= v24 >> 1)
      {
        v12 = sub_24ADAB120((v24 > 1), v25 + 1, 1, v12, &qword_27EFA90C0, &unk_24AE0B9E0, &type metadata for ItemModel.UniqueIdentifier);
      }

      *(v12 + 2) = v25 + 1;
      v26 = &v12[16 * v25];
      *(v26 + 4) = v14;
      *(v26 + 5) = v13;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v27 = sub_24ADAE0E8(v12);

  v0[2] = v27;
  v28 = swift_task_alloc();
  v0[5] = v28;
  *v28 = v0;
  v28[1] = sub_24ADA9DE0;

  return sub_24ADA9FAC(v0 + 2);
}

uint64_t sub_24ADA9DE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    v5 = sub_24ADA9F94;
  }

  else
  {
    *(v4 + 56) = a1;

    v5 = sub_24ADA9F14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ADA9F14()
{
  v1 = sub_24ADA9628(*(v0 + 56));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ADA9FAC(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_24ADA9FD0, 0, 0);
}

uint64_t sub_24ADA9FD0()
{
  v14 = v0;
  *(v0 + 72) = *(type metadata accessor for ItemLocationEntityQuery(0) + 20);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v13);
    *(v4 + 12) = 2080;
    *(v0 + 24) = v3;
    sub_24AE08288();
    v6 = sub_24AE08FF8();
    v8 = sub_24AD9F840(v6, v7, &v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - will call fetchWithOptions %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = **(v0 + 32);
  *(v0 + 16) = *(v0 + 40);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_24ADAA224;

  return v12(v0 + 16);
}

uint64_t sub_24ADAA224(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_24ADAA4EC;
  }

  else
  {
    v4 = sub_24ADAA338;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADAA338()
{
  v12 = v0;
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v11);
    *(v3 + 12) = 2080;
    sub_24ADAE8E8();
    v5 = sub_24AE08E28();
    v7 = sub_24AD9F840(v5, v6, &v11);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - did receive fetchWithOptions %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 56);

  return v8(v9);
}

uint64_t sub_24ADAA560(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return ItemLocationEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADAA5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD8E628;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_24ADAA6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24ADAA768;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_24ADAA768(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24ADAA868(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24ADAE510(&qword_27EFA8F80, &protocol conformance descriptor for ItemLocationEntityQuery);
  *v5 = v2;
  v5[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_24ADAA938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD8E628;

  return MEMORY[0x28210C148](a1, a2, a3);
}

char *sub_24ADAA9F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
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

char *sub_24ADAAB10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90D0, &qword_24AE0B9F8);
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

char *sub_24ADAAC64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AE8, &qword_24AE0A768);
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

void *sub_24ADAAD80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9090, &qword_24AE0B9B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9098, &qword_24AE0B9B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADAAEB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9050, &qword_24AE0B978);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24ADAAFB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A0, &qword_24AE0B9C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADAB120(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24ADAB22C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9040, &qword_24AE0B968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9048, &qword_24AE0B970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24ADAB388(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_24ADAB588(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

uint64_t sub_24ADAB6BC(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_24AE09838();
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v33 = a2;
  v9 = a2[3];
  v8 = a2[4];
  sub_24AE09048();
  v35 = v7;
  MEMORY[0x24C231780](v7);
  v36 = v9;
  v10 = v8;
  sub_24AE09048();
  v11 = sub_24AE09868();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v31 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = v16 + 40 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *v17 == v5 && *(v17 + 8) == v6;
      if (v21 || (sub_24AE097C8()) && v18 == v35)
      {
        v22 = v19 == v36 && v20 == v10;
        if (v22 || (sub_24AE097C8() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_24ADAE604(v33);
    v23 = *(v31 + 48) + 40 * v14;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    *a1 = *v23;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
    sub_24AE08288();
    sub_24AE08288();
    return 0;
  }

  else
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v32;
    sub_24ADAE5A8(v33, v38);
    sub_24ADAC720(v33, v14, isUniquelyReferenced_nonNull_native);
    *v32 = v37;
    v30 = *(v33 + 1);
    *a1 = *v33;
    *(a1 + 16) = v30;
    *(a1 + 32) = v33[4];
    return 1;
  }
}

uint64_t sub_24ADAB8D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v9 = *v6;
  sub_24AE09838();
  v21 = a3;
  MEMORY[0x24C230FB0](a2, a3);
  sub_24AE09048();

  v10 = sub_24AE09868() & ~(-1 << *(v9 + 32));
  if ((*(v9 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = (*(v9 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_24AE08288();
    MEMORY[0x24C230FB0](v12, v13);
    MEMORY[0x24C230FB0](a2, v21);

    v15 = (*(v9 + 48) + 16 * v10);
    v16 = v15[1];
    *a1 = *v15;
    a1[1] = v16;
    sub_24AE08288();
    return 0;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_24AE08288();
    a6(a2, v21, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    a1[1] = v21;
    return 1;
  }
}

uint64_t sub_24ADABAE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AE09838();
  sub_24AE09048();
  v8 = sub_24AE09868();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AE097C8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_24AE08288();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24AE08288();
    sub_24ADACDFC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ADABC34(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_24AE09838();
  MEMORY[0x24C231780](a2);
  v12 = sub_24AE09868();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_24ADACF7C(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ADABD54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9008, &qword_24AE0B938);
  result = sub_24AE094B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_24AE09838();
      sub_24AE09048();
      MEMORY[0x24C231780](v21);
      sub_24AE09048();
      result = sub_24AE09868();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ADABFFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_24AE094B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = (*(v7 + 48) + 16 * (v19 | (v10 << 6)));
      v23 = *v22;
      v24 = v22[1];
      sub_24AE09838();
      MEMORY[0x24C230FB0](v23, v24);
      sub_24AE09048();

      result = sub_24AE09868();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v23;
      v18[1] = v24;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v32 = 1 << *(v7 + 32);
    if (v32 >= 64)
    {
      bzero((v7 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    v6 = v5;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_24ADAC278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A8, &qword_24AE0B9C8);
  result = sub_24AE094B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AE09838();
      sub_24AE09048();
      result = sub_24AE09868();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ADAC4D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_24AE094B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_24AE09838();
      MEMORY[0x24C231780](v19);
      result = sub_24AE09868();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_24ADAC720(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_24ADABD54(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24ADAD0EC();
      goto LABEL_23;
    }

    sub_24ADAD650(v6 + 1);
  }

  v8 = *v3;
  sub_24AE09838();
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v13 = *(v5 + 24);
  v12 = *(v5 + 32);
  sub_24AE09048();
  v33 = v11;
  MEMORY[0x24C231780](v11);
  v34 = v13;
  v14 = v12;
  sub_24AE09048();
  result = sub_24AE09868();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 48);
    while (1)
    {
      v19 = v18 + 40 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v9 && *(v19 + 8) == v10;
      if (v23 || (result = sub_24AE097C8(), (result & 1) != 0))
      {
        if (v20 == v33)
        {
          if (v21 == v34 && v22 == v14)
          {
            break;
          }

          result = sub_24AE097C8();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
      if (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = sub_24AE097D8();
    __break(1u);
  }

LABEL_23:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

uint64_t sub_24ADAC92C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v18 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a4 & 1) != 0)
  {
    goto LABEL_10;
  }

  if (a4)
  {
    sub_24ADABFFC(v6 + 1, &qword_27EFA9068, &qword_24AE0B988, 0x3A3156444953, 0xE600000000000000);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24ADAD264(&qword_27EFA9068, &qword_24AE0B988);
      goto LABEL_10;
    }

    sub_24ADAD8DC(v6 + 1, &qword_27EFA9068, &qword_24AE0B988, 0x3A3156444953, 0xE600000000000000);
  }

  v8 = *v4;
  sub_24AE09838();
  MEMORY[0x24C230FB0](v18, a2);
  sub_24AE09048();

  result = sub_24AE09868();
  a3 = result & ~(-1 << *(v8 + 32));
  if ((*(v8 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v9 = (*(v8 + 48) + 16 * a3);
    v11 = *v9;
    v10 = v9[1];
    sub_24AE08288();
    MEMORY[0x24C230FB0](v11, v10);
    MEMORY[0x24C230FB0](v18, a2);
    goto LABEL_13;
  }

LABEL_10:
  v12 = *v17;
  *(*v17 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v13 = (*(v12 + 48) + 16 * a3);
  *v13 = v18;
  v13[1] = a2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v12 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_13:

  result = sub_24AE097D8();
  __break(1u);
  return result;
}

uint64_t sub_24ADACB90(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v18 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a4 & 1) != 0)
  {
    goto LABEL_10;
  }

  if (a4)
  {
    sub_24ADABFFC(v6 + 1, &qword_27EFA90B8, &qword_24AE0B9D8, 0x3A315644494142, 0xE700000000000000);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24ADAD264(&qword_27EFA90B8, &qword_24AE0B9D8);
      goto LABEL_10;
    }

    sub_24ADAD8DC(v6 + 1, &qword_27EFA90B8, &qword_24AE0B9D8, 0x3A315644494142, 0xE700000000000000);
  }

  v8 = *v4;
  sub_24AE09838();
  MEMORY[0x24C230FB0](v18, a2);
  sub_24AE09048();

  result = sub_24AE09868();
  a3 = result & ~(-1 << *(v8 + 32));
  if ((*(v8 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v9 = (*(v8 + 48) + 16 * a3);
    v11 = *v9;
    v10 = v9[1];
    sub_24AE08288();
    MEMORY[0x24C230FB0](v11, v10);
    MEMORY[0x24C230FB0](v18, a2);
    goto LABEL_13;
  }

LABEL_10:
  v12 = *v17;
  *(*v17 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v13 = (*(v12 + 48) + 16 * a3);
  *v13 = v18;
  v13[1] = a2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v12 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_13:

  result = sub_24AE097D8();
  __break(1u);
  return result;
}

uint64_t sub_24ADACDFC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24ADAC278(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24ADAD3B0();
      goto LABEL_16;
    }

    sub_24ADADB30(v8 + 1);
  }

  v10 = *v4;
  sub_24AE09838();
  sub_24AE09048();
  result = sub_24AE09868();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AE097C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AE097D8();
  __break(1u);
  return result;
}

uint64_t sub_24ADACF7C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ADAC4D8(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_24ADAD520(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_24ADADD68(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_24AE09838();
  MEMORY[0x24C231780](v7);
  result = sub_24AE09868();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AE097D8();
  __break(1u);
  return result;
}

void *sub_24ADAD0EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9008, &qword_24AE0B938);
  v2 = *v0;
  v3 = sub_24AE094A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
        sub_24AE08288();
        result = sub_24AE08288();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24ADAD264(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24AE094A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = (*(v6 + 48) + v19);
        *v22 = *v20;
        v22[1] = v21;
        result = sub_24AE08288();
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

      v18 = *(v4 + 56 + 8 * v10);
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

  return result;
}

void *sub_24ADAD3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A8, &qword_24AE0B9C8);
  v2 = *v0;
  v3 = sub_24AE094A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_24AE08288();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_24ADAD520(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24AE094A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

  return result;
}

uint64_t sub_24ADAD650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9008, &qword_24AE0B938);
  result = sub_24AE094B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_24AE09838();
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE09048();
      MEMORY[0x24C231780](v21);
      sub_24AE09048();
      result = sub_24AE09868();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24ADAD8DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_24AE094B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = (*(v7 + 48) + 16 * (v18 | (v10 << 6)));
      v22 = *v21;
      v23 = v21[1];
      sub_24AE09838();
      sub_24AE08288();
      MEMORY[0x24C230FB0](v22, v23);
      sub_24AE09048();

      result = sub_24AE09868();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v9 + 48) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v5;
        goto LABEL_26;
      }

      v20 = *(v7 + 56 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_24ADADB30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A8, &qword_24AE0B9C8);
  result = sub_24AE094B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24AE09838();
      sub_24AE08288();
      sub_24AE09048();
      result = sub_24AE09868();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24ADADD68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_24AE094B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_24AE09838();
      MEMORY[0x24C231780](v18);
      result = sub_24AE09868();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_24ADADF80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24ADAE554();
  result = MEMORY[0x24C231250](v2, &type metadata for PersonModel.Handle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_24ADAE5A8(v9, &v7);
      sub_24ADAB6BC(&v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24ADAE028(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24ADAE700();
  result = MEMORY[0x24C231250](v2, &type metadata for PersonModel.UniqueIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_24AE08288();
      sub_24ADAB8D0(&v8, v7, v6, 0x3A3156444953, 0xE600000000000000, sub_24ADAC92C);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24ADAE0E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24ADAE8E8();
  result = MEMORY[0x24C231250](v2, &type metadata for ItemModel.UniqueIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_24AE08288();
      sub_24ADAB8D0(&v8, v7, v6, 0x3A315644494142, 0xE700000000000000, sub_24ADACB90);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24ADAE1AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C231250](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_24AE08288();
      sub_24ADABAE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24ADAE2A4(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a1 + 16);
  v10 = a2();
  result = MEMORY[0x24C231250](v9, a3, v10);
  v15 = result;
  if (v9)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = *v12++;
      sub_24ADABC34(&v14, v13, a4, a5, a3);
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t sub_24ADAE408()
{
  result = qword_27EFA8FE0;
  if (!qword_27EFA8FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8FE8, qword_24AE0B870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8FE0);
  }

  return result;
}

uint64_t sub_24ADAE494(uint64_t a1)
{
  result = sub_24AE08E08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADAE510(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ItemLocationEntityQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ADAE554()
{
  result = qword_27EFA9000;
  if (!qword_27EFA9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9000);
  }

  return result;
}

unint64_t sub_24ADAE658()
{
  result = qword_27EFA9018;
  if (!qword_27EFA9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9018);
  }

  return result;
}

unint64_t sub_24ADAE6AC()
{
  result = qword_27EFA9030;
  if (!qword_27EFA9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9030);
  }

  return result;
}

unint64_t sub_24ADAE700()
{
  result = qword_27EFA9060;
  if (!qword_27EFA9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9060);
  }

  return result;
}

unint64_t sub_24ADAE754()
{
  result = qword_281519BB8;
  if (!qword_281519BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BB8);
  }

  return result;
}

uint64_t sub_24ADAE804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90B0, &qword_24AE0B9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADAE874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90B0, &qword_24AE0B9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADAE8DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_24ADAE8E8()
{
  result = qword_281519BC8;
  if (!qword_281519BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BC8);
  }

  return result;
}

uint64_t sub_24ADAE940(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v2, 0);
    v4 = v30;
    v5 = v1 + 56;
    result = sub_24AE09488();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24AE08288();
      MEMORY[0x24C230FB0](v11, v12);

      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_24ADFB058((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = 0x3A315644494142;
      *(v17 + 40) = 0xE700000000000000;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_24ADAE8DC(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_24ADAE8DC(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24ADAEBA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24ADAEBFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v0 - 8);
  v12[0] = v12 - v1;
  v2 = sub_24AE08948();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24AE086E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24AE08718();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24AE08508();
  __swift_allocate_value_buffer(v10, qword_27EFA90D8);
  __swift_project_value_buffer(v10, qword_27EFA90D8);
  sub_24AE08F08();
  *v6 = type metadata accessor for IntelligenceModule();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9120], v3);
  sub_24AE08938();
  sub_24AE08728();
  (*(v9 + 56))(v12[0], 1, 1, v8);
  return sub_24AE084F8();
}

uint64_t static ItemEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8648 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA90D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_24ADAEFA4()
{
  v0 = type metadata accessor for ItemEntityQuery(0);
  __swift_allocate_value_buffer(v0, qword_27EFA90F0);
  __swift_project_value_buffer(v0, qword_27EFA90F0);
  sub_24AE095E8();
  __break(1u);
}

uint64_t static ItemEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8650 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ItemEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA90F0);

  return sub_24ADAF0A4(v3, a1);
}

uint64_t sub_24ADAF0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemEntityQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ItemEntity.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t ItemEntity.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 88);
  *(a1 + 176) = *(v1 + 88);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_24ADAF1D4(v18, v17);
}

double ItemEntity.init(model:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9108, &qword_24AE0BA28);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v57 - v7;
  v8 = sub_24AE08318();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v59 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v60 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v58 = &v57 - v13;
  v61 = sub_24AE082E8();
  v14 = *(v61 - 8);
  v15 = MEMORY[0x28223BE20](v61);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v57 - v18;
  v70 = sub_24AE08378();
  v19 = *(v70 - 8);
  v20 = MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = &v57 - v22;
  v23 = a1[9];
  v96 = a1[8];
  v97 = v23;
  v98 = a1[10];
  v99 = *(a1 + 88);
  v24 = a1[5];
  v92 = a1[4];
  v93 = v24;
  v25 = a1[7];
  v94 = a1[6];
  v95 = v25;
  v26 = a1[1];
  v88 = *a1;
  v89 = v26;
  v27 = a1[3];
  v90 = a1[2];
  v91 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F28, &qword_24AE0B450);
  v28 = sub_24AE08408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
  v66 = sub_24AE083D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9118, &unk_24AE0BA30);
  v29 = sub_24AE08418();
  v30 = a1[9];
  v84 = a1[8];
  v85 = v30;
  v86 = a1[10];
  LOWORD(v87) = *(a1 + 88);
  v31 = a1[5];
  v80 = a1[4];
  v81 = v31;
  v32 = a1[7];
  v82 = a1[6];
  v83 = v32;
  v33 = a1[1];
  v76 = *a1;
  v77 = v33;
  v34 = a1[3];
  v78 = a1[2];
  v79 = v34;
  v75 = v89;
  sub_24AE08288();
  sub_24ADAF1D4(&v88, v72);
  v67 = v28;
  sub_24AE083A8();
  LOBYTE(v72[0]) = v97 == 2;
  v65 = v29;
  sub_24AE083A8();
  if (v94)
  {
    v58 = v19;
    v35 = v62;
    v36 = v63;
    v37 = v68;
    v38 = v96;
    v72[0] = *(&v93 + 1);
    v72[1] = v94;
    v73 = BYTE8(v94);
    v74 = v95;
    v39 = *MEMORY[0x277CB9CD8];
    v40 = *(v14 + 104);
    v57 = v17;
    v40(v17, v39, v61);
    if (*(&v38 + 1))
    {
      v41 = v59;
      *v59 = v38;
      (*(v35 + 104))(v41, *MEMORY[0x277CB9CF8], v36);
      (*(v35 + 32))(v60, v41, v36);
    }

    else
    {
      (*(v35 + 104))(v60, *MEMORY[0x277CB9D18], v36);
    }

    sub_24AE08288();
    sub_24ADAF938(v72, v71);
    v45 = sub_24AE08478();
    (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
    v44 = v64;
    sub_24AE082F8();
    v19 = v58;
  }

  else
  {
    (*(v14 + 104))(v57, *MEMORY[0x277CB9CD8], v61);
    (*(v62 + 104))(v58, *MEMORY[0x277CB9D18], v63);
    v42 = sub_24AE08368();
    (*(*(v42 - 8) + 56))(v71, 1, 1, v42);
    v43 = sub_24AE08478();
    (*(*(v43 - 8) + 56))(v68, 1, 1, v43);
    v44 = v64;
    sub_24AE082F8();
  }

  sub_24ADAFAD4(&v88);
  v46 = v70;
  (*(v19 + 2))(v69, v44, v70);
  v47 = v66;
  sub_24AE083A8();
  (*(v19 + 1))(v44, v46);
  v48 = v85;
  *(a2 + 128) = v84;
  *(a2 + 144) = v48;
  *(a2 + 160) = v86;
  v49 = v87;
  v50 = v81;
  *(a2 + 64) = v80;
  *(a2 + 80) = v50;
  v51 = v83;
  *(a2 + 96) = v82;
  *(a2 + 112) = v51;
  v52 = v77;
  *a2 = v76;
  *(a2 + 16) = v52;
  result = *&v78;
  v54 = v79;
  *(a2 + 32) = v78;
  *(a2 + 48) = v54;
  v55 = v67;
  *(a2 + 176) = v49;
  *(a2 + 184) = v55;
  v56 = v65;
  *(a2 + 192) = v47;
  *(a2 + 200) = v56;
  return result;
}

uint64_t sub_24ADAF938@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AE08358();
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      (*(v5 + 104))(v7, *MEMORY[0x277CB9D48]);
      sub_24AE08288();
      sub_24AE08338();
    }

    else
    {
      sub_24AE08288();
      sub_24AE08348();
    }
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CB9D48]);
    sub_24AE08288();
    sub_24AE08328();
  }

  v8 = sub_24AE08368();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t ItemEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_24AE08718();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24AE08F58();
  MEMORY[0x28223BE20](v8 - 8);
  sub_24AE08F48();
  sub_24AE08F38();
  sub_24AE08288();
  sub_24AE08F18();

  sub_24AE08F38();
  sub_24AE086F8();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_24AE08478();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_24AE08488();
}

uint64_t sub_24ADAFD8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8650 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ItemEntityQuery(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFA90F0);

  return sub_24ADAF0A4(v3, a1);
}

uint64_t sub_24ADAFE04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADAFE10@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8648 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA90D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADAFEB8(uint64_t a1)
{
  v2 = sub_24ADB401C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADAFF08(uint64_t a1)
{
  v2 = sub_24ADB4174();

  return MEMORY[0x28210C4B8](a1, v2);
}

double ItemEntity.init(noHydration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F28, &qword_24AE0B450);
  *(a2 + 184) = sub_24AE08408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
  *(a2 + 192) = sub_24AE083D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9118, &unk_24AE0BA30);
  *(a2 + 200) = sub_24AE08418();
  MEMORY[0x24C230FB0](v3, v4);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0x3A315644494142;
  *(a2 + 24) = 0xE700000000000000;
  *&result = 9674210;
  *(a2 + 32) = xmmword_24AE0BA10;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0x80;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 130) = 0u;
  v6 = MEMORY[0x277D84FA0];
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = v6;
  *(a2 + 176) = 0;
  return result;
}

uint64_t static ItemEntity.transferRepresentation.getter()
{
  v0 = sub_24AE08DD8();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24AE08DC8();
  sub_24ADB38EC();
  return sub_24AE08DB8();
}

uint64_t sub_24ADB0100(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = v2;
  *(v1 + 176) = *(a1 + 160);
  *(v1 + 192) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v3;
  v4 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v4;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  v6 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v6;
  sub_24ADAF1D4(v1 + 16, v1 + 200);

  return MEMORY[0x2822009F8](sub_24ADB01A4, 0, 0);
}

uint64_t sub_24ADB01A4()
{
  v17 = v0;
  sub_24AE085D8();
  swift_allocObject();
  sub_24AE085C8();
  v1 = *(v0 + 160);
  v15[8] = *(v0 + 144);
  v15[9] = v1;
  v15[10] = *(v0 + 176);
  v16 = *(v0 + 192);
  v2 = *(v0 + 96);
  v15[4] = *(v0 + 80);
  v15[5] = v2;
  v3 = *(v0 + 128);
  v15[6] = *(v0 + 112);
  v15[7] = v3;
  v4 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v4;
  v5 = *(v0 + 64);
  v15[2] = *(v0 + 48);
  v15[3] = v5;
  sub_24ADB0338(v15, v0 + 200);
  sub_24ADB7934();
  v6 = sub_24AE085B8();
  v7 = *(v0 + 280);
  *(v0 + 448) = *(v0 + 264);
  *(v0 + 464) = v7;
  *(v0 + 480) = *(v0 + 296);
  v8 = *(v0 + 216);
  *(v0 + 384) = *(v0 + 200);
  *(v0 + 400) = v8;
  v9 = *(v0 + 248);
  *(v0 + 416) = *(v0 + 232);
  *(v0 + 432) = v9;
  v10 = v6;
  v12 = v11;
  sub_24ADB3E2C(v0 + 384);

  v13 = *(v0 + 8);

  return v13(v10, v12);
}

__n128 sub_24ADB0338@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 144);
  v32 = *(a1 + 128);
  v33 = v3;
  v34 = *(a1 + 160);
  v35 = *(a1 + 176);
  v4 = *(a1 + 80);
  v28 = *(a1 + 64);
  v29 = v4;
  v5 = *(a1 + 112);
  v30 = *(a1 + 96);
  v31 = v5;
  v6 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v6;
  v7 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v7;
  v8 = v33;
  v9 = BYTE1(v33);
  v10 = *(&v7 + 1);
  v11 = *(&v28 + 1);
  v12 = v29;
  v24 = v26;
  if (v29 < 0)
  {
    sub_24ADB7988(v26, *(&v26 + 1), v7, *(&v7 + 1), v28, *(&v28 + 1), v29);
    v22 = 0;
    v23 = 0;
    v11 = 0;
    v10 = 0;
    v21 = 0u;
    v12 = 9;
  }

  else
  {
    v22 = v7;
    v23 = v28;
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    v21 = v26;
    v24 = 0u;
  }

  v20 = sub_24ADB2C30(v25);
  if ((BYTE8(v34) & 1) == 0)
  {
    if ((BYTE8(v34) & 2) != 0)
    {
      v13 = 2;
      if ((BYTE8(v34) & 4) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      if ((BYTE8(v34) & 4) == 0)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ((BYTE8(v34) & 2) == 0)
  {
    v13 = 1;
    if ((BYTE8(v34) & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 3;
  if ((BYTE8(v34) & 4) != 0)
  {
LABEL_14:
    v13 |= 4uLL;
  }

LABEL_15:
  v14 = v35;
  v15 = v9 ^ 1;
  v16 = sub_24AE08288();
  v17 = sub_24ADAE940(v16);
  sub_24ADAFAD4(v25);

  v18 = sub_24ADAE1AC(v17);

  *a2 = v8 & 1;
  *(a2 + 1) = v15;
  *(a2 + 24) = v21;
  result = v24;
  *(a2 + 8) = v24;
  *(a2 + 40) = v22;
  *(a2 + 48) = v10;
  *(a2 + 56) = v23;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v20;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v18;
  return result;
}

uint64_t sub_24ADB0524(uint64_t a1)
{
  v2 = sub_24ADB8884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB0560(uint64_t a1)
{
  v2 = sub_24ADB8884();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ADB059C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656E696C6E6FLL;
    v6 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x6475427466656CLL;
    }

    if (a1)
    {
      v5 = 0x656E696C66666FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4364694C65736163;
    if (a1 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0x6475427468676972;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24ADB06B8(void *a1, int a2)
{
  LODWORD(v68) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA94D0, &qword_24AE0D200);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA94D8, &qword_24AE0D208);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA94E0, &qword_24AE0D210);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA94E8, &qword_24AE0D218);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA94F0, &qword_24AE0D220);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA94F8, &qword_24AE0D228);
  v67 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v66 = &v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9500, &qword_24AE0D230);
  v65 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v64 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9508, &qword_24AE0D238);
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9510, &qword_24AE0D240);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9518, &qword_24AE0D248);
  v19 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB8788();
  v69 = v21;
  sub_24AE09888();
  v22 = (v19 + 8);
  v23 = v68;
  if (v68 <= 3u)
  {
    v61 = v16;
    v68 = v22;
    v30 = v62;
    v29 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v73 = 2;
        sub_24ADB89D4();
        v38 = v31;
        v40 = v69;
        v39 = v70;
        sub_24AE09708();
        (*(v32 + 8))(v38, v45);
      }

      else
      {
        v74 = 3;
        sub_24ADB8980();
        v42 = v33;
        v40 = v69;
        v39 = v70;
        sub_24AE09708();
        (*(v34 + 8))(v42, v46);
      }
    }

    else
    {
      if (!v23)
      {
        v71[0] = 0;
        sub_24ADB8A7C();
        v35 = v69;
        v36 = v70;
        sub_24AE09708();
        (*(v30 + 8))(v18, v61);
        return (*v68)(v35, v36);
      }

      v72 = 1;
      sub_24ADB8A28();
      v40 = v69;
      v39 = v70;
      sub_24AE09708();
      (*(v29 + 8))(v15, v13);
    }

    return (*v68)(v40, v39);
  }

  else
  {
    if (v68 <= 5u)
    {
      if (v68 == 4)
      {
        v75 = 4;
        sub_24ADB892C();
        v41 = v47;
        v25 = v69;
        v26 = v70;
        sub_24AE09708();
        (*(v48 + 8))(v41, v49);
      }

      else
      {
        v76 = 5;
        sub_24ADB88D8();
        v43 = v50;
        v25 = v69;
        v26 = v70;
        sub_24AE09708();
        (*(v51 + 8))(v43, v52);
      }
    }

    else
    {
      if (v68 == 6)
      {
        v77 = 6;
        sub_24ADB8884();
        v24 = v53;
        v25 = v69;
        v26 = v70;
        sub_24AE09708();
        v28 = v54;
        v27 = v55;
      }

      else if (v68 == 7)
      {
        v78 = 7;
        sub_24ADB8830();
        v24 = v56;
        v25 = v69;
        v26 = v70;
        sub_24AE09708();
        v28 = v57;
        v27 = v58;
      }

      else
      {
        v79 = 8;
        sub_24ADB87DC();
        v24 = v59;
        v25 = v69;
        v26 = v70;
        sub_24AE09708();
        v28 = v60;
        v27 = v61;
      }

      (*(v28 + 8))(v24, v27);
    }

    return (*v22)(v25, v26);
  }
}

uint64_t sub_24ADB0FB4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9288, &qword_24AE0C638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB7448();
  sub_24AE09888();
  v10[15] = 0;
  sub_24AE09718();
  if (!v2)
  {
    v10[14] = 1;
    sub_24AE09718();
    v10[13] = 2;
    sub_24AE09718();
    v10[12] = 3;
    sub_24AE09718();
    v10[11] = *(v3 + 64);
    v10[10] = 4;
    sub_24ADB749C();
    sub_24AE09738();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ADB11D4(uint64_t a1)
{
  v2 = sub_24ADB8830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB1210(uint64_t a1)
{
  v2 = sub_24ADB8830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB124C(uint64_t a1)
{
  v2 = sub_24ADB88D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB1288(uint64_t a1)
{
  v2 = sub_24ADB88D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB12C4(uint64_t a1)
{
  v2 = sub_24ADB87DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB1300(uint64_t a1)
{
  v2 = sub_24ADB87DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB1344@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADB4BEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADB1378(uint64_t a1)
{
  v2 = sub_24ADB8788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB13B4(uint64_t a1)
{
  v2 = sub_24ADB8788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB13F0(uint64_t a1)
{
  v2 = sub_24ADB8980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB142C(uint64_t a1)
{
  v2 = sub_24ADB8980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB1468(uint64_t a1)
{
  v2 = sub_24ADB89D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB14A4(uint64_t a1)
{
  v2 = sub_24ADB89D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB14E0(uint64_t a1)
{
  v2 = sub_24ADB8A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB151C(uint64_t a1)
{
  v2 = sub_24ADB8A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB1558(uint64_t a1)
{
  v2 = sub_24ADB8A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB1594(uint64_t a1)
{
  v2 = sub_24ADB8A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB15D0(uint64_t a1)
{
  v2 = sub_24ADB892C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB160C(uint64_t a1)
{
  v2 = sub_24ADB892C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB1648@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24ADB4ED4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ADB1690()
{
  v1 = *v0;
  v2 = 0x696A6F6D65;
  v3 = 0x646F4D6567616D69;
  v4 = 0x6C6F436567616D69;
  if (v1 != 3)
  {
    v4 = 0x7261566567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461436567616D69;
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

uint64_t sub_24ADB1740@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADB5A28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADB1774(uint64_t a1)
{
  v2 = sub_24ADB7448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB17B0(uint64_t a1)
{
  v2 = sub_24ADB7448();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24ADB17EC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24ADB5BEC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24ADB1908(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92A0, &qword_24AE0C640);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92A8, &qword_24AE0C648);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92B0, &qword_24AE0C650);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92B8, &qword_24AE0C658);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92C0, &qword_24AE0C660);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92C8, &qword_24AE0C668);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA92D0, &qword_24AE0C670);
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB74F0();
  sub_24AE09888();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_24ADB75EC();
      v24 = v34;
      v25 = v43;
      sub_24AE09708();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_24ADB7598();
      v24 = v37;
      v25 = v43;
      sub_24AE09708();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_24ADB7544();
      v24 = v40;
      v25 = v43;
      sub_24AE09708();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_24ADB7694();
      v22 = v43;
      sub_24AE09708();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_24ADB7640();
    v25 = v43;
    sub_24AE09708();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_24ADB76E8();
    v25 = v43;
    sub_24AE09708();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

uint64_t sub_24ADB1EFC(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9310, &qword_24AE0C678);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9318, &qword_24AE0C680);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9320, &qword_24AE0C688);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9328, &qword_24AE0C690);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9330, &qword_24AE0C698);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB773C();
  sub_24AE09888();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24ADB77E4();
      v9 = v23;
      sub_24AE09708();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24ADB7790();
      v9 = v26;
      sub_24AE09708();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24ADB7838();
    sub_24AE09708();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24ADB788C();
  sub_24AE09708();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_24ADB2338()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t sub_24ADB2380(uint64_t a1)
{
  v2 = *v1;
  sub_24AE09838();
  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

uint64_t sub_24ADB2474(uint64_t a1)
{
  v2 = sub_24ADB7598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB24B0(uint64_t a1)
{
  v2 = sub_24ADB7598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB24EC()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646575657571;
  v4 = 0x657669746361;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6710895;
  if (v1 != 1)
  {
    v5 = 0x676E69646E6570;
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

uint64_t sub_24ADB2594@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADB5FB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADB25C8(uint64_t a1)
{
  v2 = sub_24ADB74F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB2604(uint64_t a1)
{
  v2 = sub_24ADB74F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2640(uint64_t a1)
{
  v2 = sub_24ADB7544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB267C(uint64_t a1)
{
  v2 = sub_24ADB7544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB26B8(uint64_t a1)
{
  v2 = sub_24ADB7694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB26F4(uint64_t a1)
{
  v2 = sub_24ADB7694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2730(uint64_t a1)
{
  v2 = sub_24ADB7640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB276C(uint64_t a1)
{
  v2 = sub_24ADB7640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB27A8(uint64_t a1)
{
  v2 = sub_24ADB75EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB27E4(uint64_t a1)
{
  v2 = sub_24ADB75EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2820(uint64_t a1)
{
  v2 = sub_24ADB76E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB285C(uint64_t a1)
{
  v2 = sub_24ADB76E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2898@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24ADB61A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ADB28E0(uint64_t a1)
{
  v2 = sub_24ADB7838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB291C(uint64_t a1)
{
  v2 = sub_24ADB7838();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ADB2958()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x657669746361;
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

uint64_t sub_24ADB29D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADB69AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADB2A08(uint64_t a1)
{
  v2 = sub_24ADB773C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB2A44(uint64_t a1)
{
  v2 = sub_24ADB773C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2A80(uint64_t a1)
{
  v2 = sub_24ADB77E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB2ABC(uint64_t a1)
{
  v2 = sub_24ADB77E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2AF8(uint64_t a1)
{
  v2 = sub_24ADB7790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB2B34(uint64_t a1)
{
  v2 = sub_24ADB7790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2B70(uint64_t a1)
{
  v2 = sub_24ADB788C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB2BAC(uint64_t a1)
{
  v2 = sub_24ADB788C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADB2BE8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24ADB6B18(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ADB2C30(uint64_t a1)
{
  result = 0;
  v3 = 0;
  v4 = *(a1 + 160);
  do
  {
    v8 = byte_285E2F3D0[v3 + 32];
    if (v8 > 0x3F || ((v4 >> v8) & 1) != 0)
    {
      if (byte_285E2F3D0[v3 + 32] > 3u)
      {
        v5 = result | 0x40;
        if (v8 != 6)
        {
          v5 = result | 0x80;
        }

        v6 = result | 0x10;
        if (v8 != 4)
        {
          v6 = result | 0x20;
        }

        v7 = byte_285E2F3D0[v3 + 32] <= 5u;
      }

      else
      {
        v5 = result | 4;
        if (v8 != 2)
        {
          v5 = result | 8;
        }

        v6 = result | 1;
        if (byte_285E2F3D0[v3 + 32])
        {
          v6 = result | 2;
        }

        v7 = byte_285E2F3D0[v3 + 32] <= 1u;
      }

      if (v7)
      {
        result = v6;
      }

      else
      {
        result = v5;
      }
    }

    ++v3;
  }

  while (v3 != 8);
  return result;
}

unint64_t sub_24ADB2CCC()
{
  v1 = *v0;
  v2 = 0x63656E6E6F437369;
  v3 = 0x65646F4D74736F6CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x696C696261706163;
  if (v1 != 4)
  {
    v4 = 0x6E756F5379616C70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6665446567616D69;
  if (v1 != 2)
  {
    v5 = 0x79726574746162;
  }

  if (*v0)
  {
    v2 = 0x6D6574497369;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ADB2DFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ADB7190(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ADB2E30(uint64_t a1)
{
  v2 = sub_24ADB3984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADB2E6C(uint64_t a1)
{
  v2 = sub_24ADB3984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ItemEntity.PayloadV1.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9128, &qword_24AE0BA48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v20 = *(v1 + 1);
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v33 = *(v1 + 40);
  v34 = v8;
  v35 = *(v1 + 72);
  v31 = *(v1 + 8);
  v32 = v7;
  v9 = *(v1 + 88);
  v19 = *(v1 + 80);
  v18 = v9;
  v17 = *(v1 + 96);
  v16 = *(v1 + 97);
  v10 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB3984();
  sub_24AE09888();
  LOBYTE(v26) = 0;
  v11 = v36;
  sub_24AE09758();
  if (!v11)
  {
    v12 = v19;
    v13 = v18;
    LOBYTE(v26) = 1;
    sub_24AE09758();
    v29 = v34;
    v30 = v35;
    v27 = v32;
    v28 = v33;
    v26 = v31;
    v25 = 2;
    sub_24ADB39D8(&v31, v23);
    sub_24ADB3A10();
    sub_24AE09768();
    v23[2] = v28;
    v23[3] = v29;
    v24 = v30;
    v23[1] = v27;
    v23[0] = v26;
    sub_24ADB3A64(v23);
    v22 = v12;
    v21 = 3;
    sub_24ADB3A94();
    sub_24AE09768();
    v22 = v13;
    v21 = 4;
    sub_24ADB3AE8();
    sub_24AE09768();
    LOBYTE(v22) = v17;
    v21 = 5;
    sub_24ADB3B3C();
    sub_24AE09768();
    LOBYTE(v22) = v16;
    v21 = 6;
    sub_24ADB3B90();
    sub_24AE09768();
    v22 = v10;
    v21 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9160, &qword_24AE0BA50);
    sub_24ADB3D88(&qword_27EFA9168, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_24AE09768();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ItemEntity.PayloadV1.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9170, &qword_24AE0BA58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_24ADB3984();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v51);
  }

  v10 = v6;
  v33[0] = 0;
  v11 = v5;
  v12 = sub_24AE096D8();
  v33[0] = 1;
  v29 = sub_24AE096D8();
  v44 = 2;
  sub_24ADB3BE4();
  sub_24AE096E8();
  *&v50[22] = v46;
  *&v50[38] = v47;
  *&v50[54] = v48;
  v50[70] = v49;
  *&v50[6] = v45;
  LOBYTE(v30[0]) = 3;
  sub_24ADB3C38();
  sub_24AE096E8();
  v13 = *v33;
  LOBYTE(v30[0]) = 4;
  sub_24ADB3C8C();
  sub_24AE096E8();
  v27 = *v33;
  v28 = v13;
  LOBYTE(v30[0]) = 5;
  sub_24ADB3CE0();
  sub_24AE096E8();
  LODWORD(v13) = v33[0];
  LOBYTE(v30[0]) = 6;
  sub_24ADB3D34();
  sub_24AE096E8();
  v26 = v13;
  LOBYTE(v13) = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9160, &qword_24AE0BA50);
  v42 = 7;
  sub_24ADB3D88(&qword_27EFA91A0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  sub_24AE096E8();
  v14 = v12 & 1;
  v25 = v12 & 1;
  v29 &= 1u;
  v15 = v29;
  (*(v10 + 8))(v8, v11);
  v16 = v43;
  LOBYTE(v30[0]) = v14;
  BYTE1(v30[0]) = v15;
  *(&v30[4] + 1) = *&v50[63];
  *(&v30[3] + 2) = *&v50[48];
  *(&v30[2] + 2) = *&v50[32];
  *(v30 + 2) = *v50;
  *(&v30[1] + 2) = *&v50[16];
  v17 = v13;
  v19 = v27;
  v18 = v28;
  *&v31 = v28;
  *(&v31 + 1) = v27;
  v20 = v26;
  LOBYTE(v32) = v26;
  BYTE1(v32) = v17;
  *(&v32 + 1) = v43;
  v21 = v31;
  a2[4] = v30[4];
  a2[5] = v21;
  a2[6] = v32;
  v22 = v30[1];
  *a2 = v30[0];
  a2[1] = v22;
  v23 = v30[3];
  a2[2] = v30[2];
  a2[3] = v23;
  sub_24ADB3DF4(v30, v33);
  __swift_destroy_boxed_opaque_existential_0(v51);
  v34 = *&v50[16];
  v35 = *&v50[32];
  *v36 = *&v50[48];
  v33[0] = v25;
  v33[1] = v29;
  *&v36[15] = *&v50[63];
  *&v33[2] = *v50;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v17;
  v41 = v16;
  return sub_24ADB3E2C(v33);
}

uint64_t sub_24ADB3840(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AE08DD8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_24AE08DC8();
  return sub_24AE08DB8();
}

unint64_t sub_24ADB38EC()
{
  result = qword_27EFA9120;
  if (!qword_27EFA9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9120);
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

unint64_t sub_24ADB3984()
{
  result = qword_27EFA9130;
  if (!qword_27EFA9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9130);
  }

  return result;
}

unint64_t sub_24ADB3A10()
{
  result = qword_27EFA9138;
  if (!qword_27EFA9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9138);
  }

  return result;
}

unint64_t sub_24ADB3A94()
{
  result = qword_27EFA9140;
  if (!qword_27EFA9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9140);
  }

  return result;
}

unint64_t sub_24ADB3AE8()
{
  result = qword_27EFA9148;
  if (!qword_27EFA9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9148);
  }

  return result;
}

unint64_t sub_24ADB3B3C()
{
  result = qword_27EFA9150;
  if (!qword_27EFA9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9150);
  }

  return result;
}

unint64_t sub_24ADB3B90()
{
  result = qword_27EFA9158;
  if (!qword_27EFA9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9158);
  }

  return result;
}

unint64_t sub_24ADB3BE4()
{
  result = qword_27EFA9178;
  if (!qword_27EFA9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9178);
  }

  return result;
}

unint64_t sub_24ADB3C38()
{
  result = qword_27EFA9180;
  if (!qword_27EFA9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9180);
  }

  return result;
}

unint64_t sub_24ADB3C8C()
{
  result = qword_27EFA9188;
  if (!qword_27EFA9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9188);
  }

  return result;
}

unint64_t sub_24ADB3CE0()
{
  result = qword_27EFA9190;
  if (!qword_27EFA9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9190);
  }

  return result;
}

unint64_t sub_24ADB3D34()
{
  result = qword_27EFA9198;
  if (!qword_27EFA9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9198);
  }

  return result;
}

uint64_t sub_24ADB3D88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA9160, &qword_24AE0BA50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ADB3E60()
{
  result = qword_27EFA91A8;
  if (!qword_27EFA91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91A8);
  }

  return result;
}

unint64_t sub_24ADB3EB8()
{
  result = qword_27EFA91B0;
  if (!qword_27EFA91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91B0);
  }

  return result;
}

unint64_t sub_24ADB3F10()
{
  result = qword_27EFA91B8;
  if (!qword_27EFA91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91B8);
  }

  return result;
}

unint64_t sub_24ADB3F68()
{
  result = qword_27EFA91C0;
  if (!qword_27EFA91C0)
  {
    type metadata accessor for ItemEntityQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91C0);
  }

  return result;
}

unint64_t sub_24ADB3FC4()
{
  result = qword_27EFA91C8;
  if (!qword_27EFA91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91C8);
  }

  return result;
}

unint64_t sub_24ADB401C()
{
  result = qword_27EFA91D0;
  if (!qword_27EFA91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91D0);
  }

  return result;
}

unint64_t sub_24ADB4074()
{
  result = qword_27EFA91D8;
  if (!qword_27EFA91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91D8);
  }

  return result;
}

unint64_t sub_24ADB40C8()
{
  result = qword_27EFA91E0;
  if (!qword_27EFA91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91E0);
  }

  return result;
}

unint64_t sub_24ADB411C()
{
  result = qword_27EFA91E8;
  if (!qword_27EFA91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91E8);
  }

  return result;
}

unint64_t sub_24ADB4174()
{
  result = qword_27EFA91F0;
  if (!qword_27EFA91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA91F0);
  }

  return result;
}

unint64_t sub_24ADB4214()
{
  result = qword_27EFA9208;
  if (!qword_27EFA9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9208);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FindMyCore9ItemModelV5OwnerO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_24ADB42E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_24ADB432C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24ADB43D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADB441C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24ADB44EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_24ADB4548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemEntity.PayloadV1.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ItemEntity.PayloadV1.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24ADB4714()
{
  result = qword_27EFA9220;
  if (!qword_27EFA9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9220);
  }

  return result;
}

unint64_t sub_24ADB4768()
{
  result = qword_27EFA9228;
  if (!qword_27EFA9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9228);
  }

  return result;
}

unint64_t sub_24ADB47C0()
{
  result = qword_27EFA9230;
  if (!qword_27EFA9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9230);
  }

  return result;
}

unint64_t sub_24ADB4818()
{
  result = qword_27EFA9238;
  if (!qword_27EFA9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9238);
  }

  return result;
}

unint64_t sub_24ADB4870()
{
  result = qword_27EFA9240;
  if (!qword_27EFA9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9240);
  }

  return result;
}

unint64_t sub_24ADB48C4()
{
  result = qword_27EFA9248;
  if (!qword_27EFA9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9248);
  }

  return result;
}

unint64_t sub_24ADB491C()
{
  result = qword_27EFA9250;
  if (!qword_27EFA9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9250);
  }

  return result;
}

unint64_t sub_24ADB4974()
{
  result = qword_27EFA9258;
  if (!qword_27EFA9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9258);
  }

  return result;
}

unint64_t sub_24ADB49CC()
{
  result = qword_27EFA9260;
  if (!qword_27EFA9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9260);
  }

  return result;
}

unint64_t sub_24ADB4A24()
{
  result = qword_27EFA9268;
  if (!qword_27EFA9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9268);
  }

  return result;
}

unint64_t sub_24ADB4A7C()
{
  result = qword_27EFA9270;
  if (!qword_27EFA9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9270);
  }

  return result;
}

unint64_t sub_24ADB4AD4()
{
  result = qword_27EFA9278;
  if (!qword_27EFA9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9278);
  }

  return result;
}

unint64_t sub_24ADB4B2C()
{
  result = qword_27EFA9280;
  if (!qword_27EFA9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9280);
  }

  return result;
}

uint64_t sub_24ADB4B80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ADB4BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24ADB4BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6475427466656CLL && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6475427468676972 && a2 == 0xE800000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024AE12E00 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4364694C65736163 && a2 == 0xED00006465736F6CLL || (sub_24AE097C8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024AE12E30 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024AE12E50 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24ADB4ED4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9570, &qword_24AE0D250);
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9578, &qword_24AE0D258);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9580, &qword_24AE0D260);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9588, &qword_24AE0D268);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9590, &qword_24AE0D270);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v47 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9598, &qword_24AE0D278);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v71 = &v47 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95A0, &qword_24AE0D280);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v67 = &v47 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95A8, &qword_24AE0D288);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95B0, &qword_24AE0D290);
  v49 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA95B8, &qword_24AE0D298);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  v24 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24ADB8788();
  v25 = v73;
  sub_24AE09878();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v17;
  v27 = v71;
  v26 = v72;
  v48 = v21;
  v73 = v20;
  v28 = v23;
  v29 = sub_24AE096F8();
  if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 9))
  {
    v36 = sub_24AE09558();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0);
    *v38 = &type metadata for ItemEntity.PayloadV1.ImageDefinition.Variant;
    v39 = v73;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v48 + 8))(v23, v39);
    swift_unknownObjectRelease();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v74);
    return 0;
  }

  if (*(v29 + 32) <= 3u)
  {
    if (*(v29 + 32) > 1u)
    {
      v33 = *(v29 + 32);
      if (v30 == 2)
      {
        v77 = 2;
        sub_24ADB89D4();
        v42 = v67;
        v43 = v73;
        sub_24AE09678();
        (*(v53 + 8))(v42, v52);
      }

      else
      {
        v78 = 3;
        sub_24ADB8980();
        v43 = v73;
        sub_24AE09678();
        (*(v55 + 8))(v27, v54);
      }

      (*(v48 + 8))(v23, v43);
    }

    else
    {
      v33 = *(v29 + 32);
      if (*(v29 + 32))
      {
        v76 = 1;
        sub_24ADB8A28();
        v44 = v16;
        v45 = v73;
        sub_24AE09678();
        (*(v51 + 8))(v44, v50);
        (*(v48 + 8))(v23, v45);
      }

      else
      {
        v75[0] = 0;
        sub_24ADB8A7C();
        v41 = v73;
        sub_24AE09678();
        (*(v49 + 8))(v19, v47);
        (*(v48 + 8))(v28, v41);
      }
    }

    goto LABEL_26;
  }

  v31 = v73;
  if (*(v29 + 32) <= 5u)
  {
    v33 = *(v29 + 32);
    v32 = v48;
    if (v30 == 4)
    {
      v79 = 4;
      sub_24ADB892C();
      v26 = v66;
      sub_24AE09678();
      v34 = v56;
      v35 = v57;
    }

    else
    {
      v80 = 5;
      sub_24ADB88D8();
      sub_24AE09678();
      v35 = v58;
      v34 = v59;
    }

    goto LABEL_24;
  }

  v32 = v48;
  if (v30 == 6)
  {
    v33 = *(v29 + 32);
    v81 = 6;
    sub_24ADB8884();
    v26 = v68;
    sub_24AE09678();
    v35 = v60;
    v34 = v61;
    goto LABEL_24;
  }

  v33 = *(v29 + 32);
  if (v30 == 7)
  {
    v82 = 7;
    sub_24ADB8830();
    v26 = v69;
    sub_24AE09678();
    v35 = v62;
    v34 = v63;
LABEL_24:
    (*(v35 + 8))(v26, v34);
    goto LABEL_25;
  }

  v83 = 8;
  sub_24ADB87DC();
  v46 = v70;
  sub_24AE09678();
  (*(v64 + 8))(v46, v65);
LABEL_25:
  (*(v32 + 8))(v28, v31);
LABEL_26:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v74);
  return v33;
}