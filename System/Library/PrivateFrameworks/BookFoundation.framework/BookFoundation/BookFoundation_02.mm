uint64_t sub_241CB0DA4()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CB0E2C(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CB0EA0(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CB0F24@<X0>(char *a2@<X8>)
{
  v3 = sub_241CF9838();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_241CB0F84(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x6F43676E69746172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746E75;
  }

  *a1 = v2;
  a1[1] = v3;
}

double MAsset.averageRating.getter()
{
  ObjectType = swift_getObjectType();
  v10[1] = 24;
  v1 = sub_241CF1C04(0);
  v2 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB4490();
  sub_241CD7154(v1, v2, &v11);

  v3 = v11;
  v4 = 0.0;
  if (v11)
  {
    v10[0] = 0;
    v5 = sub_241CB47F8();
    v6 = sub_241CD73D8(v10, v3, ObjectType, &type metadata for MAsset.UserRatingKeys, &off_2853DD9B8, v5);

    if (v6)
    {
      [v6 doubleValue];
      v8 = v7;

      return v8 / 5.0;
    }
  }

  return v4;
}

uint64_t MAsset.ratingCount.getter()
{
  swift_getObjectType();
  v6 = 24;
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v4);

  v2 = v4;
  if (v4 && (v6 = 1, sub_241CB47F8(), sub_241CD7154(v2, MEMORY[0x277D83E88], &v4), , v5 != 1))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MAsset.ratingCountForAnalytics.getter()
{
  sub_241C93918(&qword_27EC6A020, &qword_241CFBC40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_241CFAAF0;
  v2 = [v0 ratingCount];
  v3 = MEMORY[0x277D83B08];
  *(v1 + 56) = MEMORY[0x277D83A90];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = sub_241CF9048();
  v9 = 0.0;
  v6 = sub_241CB4344(v4, v5, &v9);

  v8 = 0.0;
  if (v6)
  {
    v8 = v9;
    if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  if (v8 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 < 1.8447e19)
  {
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_241CB13AC()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CB1464(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CB1508(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

unint64_t sub_241CB15BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241CB5398(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_241CB15EC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE500000000000000;
  v5 = 0x74726F6873;
  if (*v1 != 2)
  {
    v5 = 0x656E696C676174;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x647261646E617473;
    v2 = 0xE800000000000000;
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

uint64_t MAsset.standardNotes.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v4);

  v2 = v4;
  sub_241CB484C();
  sub_241CD7154(v2, MEMORY[0x277D837D0], &v4);

  return v4;
}

uint64_t MAsset.standardDescription.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v4);

  v2 = v4;
  sub_241CB48A0();
  sub_241CD7154(v2, MEMORY[0x277D837D0], &v4);

  return v4;
}

BookFoundation::MAsset::OfferType_optional __swiftcall MAsset.OfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MAsset.OfferType.rawValue.getter()
{
  v1 = 7959906;
  v2 = 0x6F6C6E776F646572;
  if (*v0 != 2)
  {
    v2 = 0x726564726F657270;
  }

  if (*v0)
  {
    v1 = 7628135;
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

uint64_t sub_241CB19A4()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CB1A5C(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CB1B00(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241CB1BC0(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7959906;
  v4 = 0xEA00000000006461;
  v5 = 0x6F6C6E776F646572;
  if (*v1 != 2)
  {
    v5 = 0x726564726F657270;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 7628135;
    v2 = 0xE300000000000000;
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

BookFoundation::MAsset::OfferType MAsset.offerType.getter@<W0>(_BYTE *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 offer];
  if (v3)
  {
    v4 = v3;
    v5 = sub_241CF8EF8();
  }

  else
  {
    v5 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v5, MEMORY[0x277D837D0], &rawValue);

  object = rawValue._object;
  if (rawValue._object)
  {
    countAndFlagsBits = rawValue._countAndFlagsBits;
    return MAsset.OfferType.init(rawValue:)(*(&object - 1)).value;
  }

  else
  {
    *a1 = 4;
  }

  return result;
}

uint64_t MAsset.rawOfferType.getter()
{
  swift_getObjectType();
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v3, MEMORY[0x277D837D0], &v5);

  return v5;
}

uint64_t sub_241CB1E14(uint64_t a1)
{
  sub_241CF90B8();
}

unint64_t sub_241CB1F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241CB53E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_241CB1F54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737465737361;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  if (v2 != 5)
  {
    v6 = 1701869940;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEE0064657474616DLL;
  v8 = 0x726F466563697270;
  if (v2 != 3)
  {
    v8 = 0x6563697270;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000241D00090;
  v10 = 0xD000000000000013;
  if (v2 != 1)
  {
    v10 = 0x6E6F697461727564;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_241CB202C()
{
  swift_getObjectType();
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CB48F4();
  sub_241CD7154(v3, v4, &v7);

  if (!v7)
  {
    return 0;
  }

  if (!*(v7 + 16))
  {

    return 0;
  }

  v5 = *(v7 + 32);

  return v5;
}

uint64_t MAsset.duration.getter()
{
  swift_getObjectType();
  v0 = sub_241CB202C();
  sub_241CB48F4();
  sub_241CD7154(v0, MEMORY[0x277D84A28], &v2);

  return v2;
}

uint64_t MAsset.expectedReleaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = sub_241CF8D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241CF8E38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 1;
  v11 = [v1 offer];
  if (v11)
  {
    v12 = v11;
    v13 = sub_241CF8EF8();
  }

  else
  {
    v13 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v13, MEMORY[0x277D837D0], v22);

  if (v22[1])
  {
    v20 = a1;
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    sub_241CF8E28();
    v15 = sub_241CF8E18();
    (*(v8 + 8))(v10, v7);
    [v14 setTimeZone_];

    [v14 setFormatOptions_];
    v16 = sub_241CF9008();

    v17 = [v14 dateFromString_];

    if (v17)
    {
      sub_241CF8D78();

      a1 = v20;
      (*(v4 + 32))(v20, v6, v3);
      v18 = 0;
    }

    else
    {

      v18 = 1;
      a1 = v20;
    }
  }

  else
  {
    v18 = 1;
  }

  return (*(v4 + 56))(a1, v18, 1, v3);
}

uint64_t MAsset.fileSize.getter()
{
  swift_getObjectType();
  v0 = sub_241CB202C();
  sub_241CB48F4();
  sub_241CD7154(v0, MEMORY[0x277D84A28], &v2);

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t MAsset.isPreorder.getter()
{
  swift_getObjectType();
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v3, MEMORY[0x277D837D0], &v7);

  v4 = v8;
  if (v8)
  {
    v5 = sub_241CF9838();

    v4 = 0;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
LABEL_11:
        v4 = sub_241CF98C8();
        goto LABEL_12;
      }

      if (v5 == 3)
      {
        v4 = 1;
LABEL_12:
      }
    }

    else if (v5 <= 1)
    {
      goto LABEL_11;
    }
  }

  return v4 & 1;
}

id sub_241CB29B4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_241CF9008();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t MAsset.priceFormatted.getter()
{
  swift_getObjectType();
  v10 = 4;
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v3, MEMORY[0x277D839F8], &v8);

  result = 0;
  if ((v9 & 1) == 0 && v8 != 0.0)
  {
    v10 = 3;
    v5 = [v0 offer];
    if (v5)
    {
      v6 = v5;
      v7 = sub_241CF8EF8();
    }

    else
    {
      v7 = 0;
    }

    sub_241CD7154(v7, MEMORY[0x277D837D0], &v8);

    if (v9)
    {
      return *&v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MAsset.price.getter()
{
  swift_getObjectType();
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v3, MEMORY[0x277D839F8], &v5);

  return v5;
}

uint64_t MAsset.PreviewKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_241CF9838();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_241CB2D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_241CF9998();
  sub_241CF90B8();
  return sub_241CF99C8();
}

uint64_t sub_241CB2D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_241CF9998();
  sub_241CF90B8();
  return sub_241CF99C8();
}

uint64_t sub_241CB2DEC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_241CF9838();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_241CB2E58(char a1)
{
  swift_getObjectType();
  v1 = sub_241CF1C04(0);
  v2 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CB4490();
  sub_241CD7154(v1, v2, &v5);

  if (!v5)
  {
    return 0;
  }

  if (!*(v5 + 16))
  {

    return 0;
  }

  v3 = *(v5 + 32);

  return v3;
}

uint64_t MAsset.previewURL.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = MAsset.preview.getter();
  sub_241CB4948();
  sub_241CD7154(v2, MEMORY[0x277D837D0], v5);

  if (v5[1])
  {
    sub_241CF8CD8();
  }

  else
  {
    v4 = sub_241CF8CF8();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

BookFoundation::MAsset::ArtworkKeys_optional __swiftcall MAsset.ArtworkKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MAsset.ArtworkKeys.rawValue.getter()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6874646977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696568;
  }
}

uint64_t sub_241CB32A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  if (v2 != 1)
  {
    v4 = 0x6874646977;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696568;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (*a2 != 1)
  {
    v8 = 0x6874646977;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696568;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CB338C()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CB3420(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CB34A0(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241CB353C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (v2 != 1)
  {
    v5 = 0x6874646977;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t MAsset.artworkURL.getter()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork);
  sub_241CB499C();
  sub_241CD7154(v1, MEMORY[0x277D837D0], &v3);
  return v3;
}

id sub_241CB36E8(char a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork);
  v5 = sub_241CB499C();
  result = sub_241CD73D8(&v10, v4, ObjectType, &type metadata for MAsset.ArtworkKeys, &off_2853DD9B8, v5);
  v7 = result;
  if (result)
  {
    [result doubleValue];
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t MAsset.seriesResource.getter()
{
  result = sub_241CB3890();
  if (!result)
  {
    return result;
  }

  result = sub_241CF1840();
  if (!result)
  {
LABEL_11:

    return 0;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_241CF97D8();
    result = v4;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245CFDE40](0);
    goto LABEL_8;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);
LABEL_8:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_241CB3890()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v12);
  v1 = BFMCatalogRequestRelationshipAudiobookSeries;
  if (v12 == 3)
  {
    v1 = BFMCatalogRequestRelationshipBookSeries;
  }

  v2 = *v1;
  v3 = sub_241CBC9DC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_241CF9038();
    if (v4[2])
    {
      v7 = sub_241C8E1DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        v10 = *(v4[7] + 8 * v7);

        return v10;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

char *MAsset.enrichIfNeeded(with:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MAsset.seriesResource.getter();
  if (v3)
  {

    v4 = v0;
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC14BookFoundation9MResource_config + 8];
    v13[0] = v0[OBJC_IVAR____TtC14BookFoundation9MResource_config];
    v14 = v5;
    v6 = *(ObjectType + 128);
    v7 = v5;

    v9 = v6(v8, v13);
    v1 = v9;
    if (v9)
    {
      v10 = v9;
      v11 = MSeries.trimmed()();
      sub_241CB4624(v11);
    }
  }

  return v1;
}

unint64_t sub_241CB3A88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241CB3B54(v11, 0, 0, 1, a1, a2);
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
    sub_241C93664(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_241C8EEE8(v11);
  return v7;
}

unint64_t sub_241CB3B54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_241CB3C60(a5, a6);
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
    result = sub_241CF9708();
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

void *sub_241CB3C60(uint64_t a1, unint64_t a2)
{
  v3 = sub_241CB3CAC(a1, a2);
  sub_241CB3DDC(&unk_2853DB370);
  return v3;
}

void *sub_241CB3CAC(uint64_t a1, unint64_t a2)
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

  v6 = sub_241CB3EC8(v5, 0);
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

  result = sub_241CF9708();
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
        v10 = sub_241CF9128();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241CB3EC8(v10, 0);
        result = sub_241CF96A8();
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

uint64_t sub_241CB3DDC(uint64_t result)
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

  result = sub_241CB3F3C(result, v11, 1, v3);
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

void *sub_241CB3EC8(uint64_t a1, uint64_t a2)
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

  sub_241C93918(&qword_27EC6A0B8, &unk_241CFC470);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241CB3F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC6A0B8, &unk_241CFC470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

_OWORD *sub_241CB4030(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_241CF45F0(a2 & 1);
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
      sub_241CC8604();
      v9 = v17;
      goto LABEL_8;
    }

    sub_241CC7138(v14, a3 & 1);
    v9 = sub_241CF45F0(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_241CF9938();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_241C8EEE8(v20);

    return sub_241C8E30C(a1, v20);
  }

  else
  {

    return sub_241CB42D8(v9, a2 & 1, a1, v19);
  }
}

uint64_t sub_241CB415C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_241C8E1DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_241CC73CC(v16, a4 & 1);
      v11 = sub_241C8E1DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_241CF9938();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_241CC8780();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_241CB42D8(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_241C8E30C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

BOOL sub_241CB4344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_241CF96B8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_241CB443C()
{
  result = qword_27EC69FF8;
  if (!qword_27EC69FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69FF8);
  }

  return result;
}

unint64_t sub_241CB4490()
{
  result = qword_27EC6A000;
  if (!qword_27EC6A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A000);
  }

  return result;
}

unint64_t sub_241CB44E4()
{
  result = qword_27EC6A008;
  if (!qword_27EC6A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A008);
  }

  return result;
}

void sub_241CB4538(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(v10);
  v2 = BFMCatalogRequestRelationshipAudiobookSeries;
  if (LOBYTE(v10[0]) == 3)
  {
    v2 = BFMCatalogRequestRelationshipBookSeries;
  }

  v3 = *v2;
  v4 = sub_241CBCA04(v10);
  if (*v5)
  {
    v6 = sub_241CF9038();
    v8 = v7;

    sub_241CAC2E4(v9, v6, v8);
  }

  v4(v10, 0);
}

uint64_t sub_241CB4624(void *a1)
{
  if (a1)
  {
    sub_241C93918(&qword_27EC6A0A0, &qword_241CFC458);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_241CFBC10;
    *(v3 + 32) = a1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource_config);
  v5 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource_config + 8);
  type metadata accessor for MResourceSet();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F98];
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = v3;
  v7 = v5;
  v8 = a1;
  sub_241CB4538(v6);
}

unint64_t sub_241CB4704(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF9838();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_241CB4750(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF98F8();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_241CB47A4()
{
  result = qword_27EC6A010;
  if (!qword_27EC6A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A010);
  }

  return result;
}

unint64_t sub_241CB47F8()
{
  result = qword_27EC6A018;
  if (!qword_27EC6A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A018);
  }

  return result;
}

unint64_t sub_241CB484C()
{
  result = qword_27EC6A028;
  if (!qword_27EC6A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A028);
  }

  return result;
}

unint64_t sub_241CB48A0()
{
  result = qword_27EC6A030;
  if (!qword_27EC6A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A030);
  }

  return result;
}

unint64_t sub_241CB48F4()
{
  result = qword_27EC6A038;
  if (!qword_27EC6A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A038);
  }

  return result;
}

unint64_t sub_241CB4948()
{
  result = qword_27EC6A040;
  if (!qword_27EC6A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A040);
  }

  return result;
}

unint64_t sub_241CB499C()
{
  result = qword_27EC6A710;
  if (!qword_27EC6A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A710);
  }

  return result;
}

unint64_t sub_241CB49F4()
{
  result = qword_27EC6A048;
  if (!qword_27EC6A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A048);
  }

  return result;
}

unint64_t sub_241CB4A4C()
{
  result = qword_27EC6A050;
  if (!qword_27EC6A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A050);
  }

  return result;
}

unint64_t sub_241CB4AA4()
{
  result = qword_27EC6A058;
  if (!qword_27EC6A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A058);
  }

  return result;
}

unint64_t sub_241CB4AFC()
{
  result = qword_27EC6A060;
  if (!qword_27EC6A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A060);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAsset.OfferKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MAsset.OfferKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Capabilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Capabilities(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AssetType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MAsset.Attributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAsset.Attributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241CB5134()
{
  result = qword_27EC6A068;
  if (!qword_27EC6A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A068);
  }

  return result;
}

unint64_t sub_241CB518C()
{
  result = qword_27EC6A070;
  if (!qword_27EC6A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A070);
  }

  return result;
}

unint64_t sub_241CB51E4()
{
  result = qword_27EC6A078;
  if (!qword_27EC6A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A078);
  }

  return result;
}

unint64_t sub_241CB523C()
{
  result = qword_27EC6A080;
  if (!qword_27EC6A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A080);
  }

  return result;
}

unint64_t sub_241CB5294()
{
  result = qword_27EC6A088;
  if (!qword_27EC6A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A088);
  }

  return result;
}

unint64_t sub_241CB52EC()
{
  result = qword_27EC6A090;
  if (!qword_27EC6A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A090);
  }

  return result;
}

unint64_t sub_241CB5344()
{
  result = qword_27EC6A098;
  if (!qword_27EC6A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A098);
  }

  return result;
}

unint64_t sub_241CB5398(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF9838();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_241CB53E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF9838();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_241CB5430@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t StaticFeatureFlagsKey.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t StaticFeatureFlagsKey.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 17) = 0;
  return result;
}

uint64_t static StaticFeatureFlagsKey.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_241CF96D8();
  v4 = v3;
  if (v2 == sub_241CF96D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_241CF98C8();
  }

  return v7 & 1;
}

uint64_t sub_241CB55C8@<X0>(uint64_t a1@<X8>)
{
  result = StaticFeatureFlagsKey.feature.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t static DynamicFeatureFlagsKey.domain.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_241CB5734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  _sSY14BookFoundation12FeatureFlags0cD3Key8RawValueRpzrlE3keyAEvg_0();
  v10 = a4(AssociatedTypeWitness, a3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10;
}

uint64_t RawRepresentable<>.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[3] = swift_getAssociatedTypeWitness();
  v5[4] = a3;
  sub_241CA8DEC(v5);
  _sSY14BookFoundation12FeatureFlags0cD3Key8RawValueRpzrlE3keyAEvg_0();
  LOBYTE(a3) = sub_241CF8E58();
  sub_241C8EEE8(v5);
  return a3 & 1;
}

uint64_t sub_241CB5974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_241CB59BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CB59DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

void AudiobookSeriesInfo.narratorInfo.getter(BookFoundation::SeriesArtistInfo_optional *a1@<X8>)
{
  v3 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  v9 = type metadata accessor for AudiobookSeriesInfo(0);
  sub_241CB5CDC(v1 + *(v9 + 24), v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_241CB5D4C(v8, v5);
      v11 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
      v12 = &v5[v11[23]];
      v13 = *v12;
      v14 = v12[8];
      v15 = *&v5[v11[24]];
      v16.value = v5[v11[25]];
      v30 = 1;

      v17 = &v30;
      v31.value = v13;
      v31.is_nil = v14;
      v18 = v15;
      SeriesArtistInfo.init(hasUniqueArtists:count:names:artistType:)(a1, v16, v31, *(&v17 - 1), v19);
      sub_241CB5F54(v5);
      return;
    }

    v20 = *v8;
  }

  else
  {
    v20 = *(v8 + *(sub_241C93918(&qword_27EC6A0D0, &qword_241CFC700) + 48));
    sub_241CB5F54(v8);
  }

  v21.value = v20[OBJC_IVAR____TtC14BookFoundation16MAudiobookSeries_hasUniqueNarrators];
  v22 = MAudiobookSeries.narratorCount.getter();
  v24 = v23;
  v25 = MAudiobookSeries.narratorNames.getter();
  v29 = 1;
  v32.is_nil = v24 & 1;
  v26 = &v29;
  v32.value = v22;
  SeriesArtistInfo.init(hasUniqueArtists:count:names:artistType:)(a1, v21, v32, *&v25, v27);
}

uint64_t type metadata accessor for AudiobookSeriesInfo(uint64_t a1)
{
  result = qword_27EC6A100;
  if (!qword_27EC6A100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CB5CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CB5D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudiobookSeriesInfo.dataSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudiobookSeriesInfo(0) + 24);

  return sub_241CB5CDC(v3, a1);
}

uint64_t AudiobookSeriesInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  *a2 = 1;
  v4 = type metadata accessor for AudiobookSeriesInfo(0);
  result = sub_241CB5FB0(a1, a2 + *(v4 + 24));
  *(a2 + *(v4 + 28)) = 0;
  return result;
}

uint64_t AudiobookSeriesInfo.additionalStoreAssetsForEnrichment.getter()
{
  type metadata accessor for AudiobookSeriesInfo(0);
}

uint64_t AudiobookSeriesInfo.init(dataSource:additionalStoreAssetsForEnrichment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  *a3 = 1;
  v6 = type metadata accessor for AudiobookSeriesInfo(0);
  result = sub_241CB5FB0(a1, a3 + *(v6 + 24));
  *(a3 + *(v6 + 28)) = a2;
  return result;
}

uint64_t sub_241CB5F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  *a3 = 1;
  result = sub_241CB5FB0(a1, a3 + *(a2 + 24));
  *(a3 + *(a2 + 28)) = 0;
  return result;
}

uint64_t sub_241CB5F54(uint64_t a1)
{
  v2 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CB5FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CB60B0(uint64_t a1)
{
  result = sub_241CB6200(&qword_27EC6A0E0, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB6150(uint64_t a1)
{
  result = sub_241CB6200(&qword_27EC6A0F0, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB61A8(uint64_t a1)
{
  result = sub_241CB6200(&qword_27EC6A0F8, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB6200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_241CB6270(uint64_t a1)
{
  sub_241CB630C(319);
  if (v1 <= 0x3F)
  {
    sub_241CB6374(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241CB630C(uint64_t a1)
{
  if (!qword_27EC6A110)
  {
    v2 = type metadata accessor for LibraryAudiobookSeriesInfo(255);
    v3 = type metadata accessor for MAudiobookSeries(255);
    v5 = type metadata accessor for ContentDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EC6A110);
    }
  }
}

void sub_241CB6374(uint64_t a1)
{
  if (!qword_27EC6A118)
  {
    sub_241C9452C(&qword_27EC69F20, &unk_241CFB968);
    v1 = sub_241CF9598();
    if (!v2)
    {
      atomic_store(v1, &qword_27EC6A118);
    }
  }
}

uint64_t static Capabilities.isInternalBuild.setter(char a1)
{
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2810D5780 = a1 & 1;
  return result;
}

uint64_t (*static Capabilities.isInternalBuild.modify(uint64_t a1))()
{
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_241CB64E0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_2810D5780;
  return result;
}

uint64_t sub_241CB655C(char *a1)
{
  v1 = *a1;
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_2810D5780 = v1;
  return result;
}

uint64_t sub_241CB65F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CB6668(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CB6700(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0C8, &qword_241CFC7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CB67B8(uint64_t a1)
{
  result = sub_241CB6970(&qword_27EC6A0E8, type metadata accessor for LibraryAudiobookSeriesInfo, &protocol conformance descriptor for LibraryAudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibraryAudiobookSeriesInfo(uint64_t a1)
{
  result = qword_27EC6A130;
  if (!qword_27EC6A130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CB6868(uint64_t a1)
{
  result = sub_241CB6970(&qword_27EC6A0D8, type metadata accessor for LibraryAudiobookSeriesInfo, &protocol conformance descriptor for LibraryAudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB68C0(uint64_t a1)
{
  result = sub_241CB6970(&qword_27EC6A120, type metadata accessor for LibraryAudiobookSeriesInfo, &protocol conformance descriptor for LibraryAudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB6918(uint64_t a1)
{
  result = sub_241CB6970(&qword_27EC6A128, type metadata accessor for LibraryAudiobookSeriesInfo, &protocol conformance descriptor for LibraryAudiobookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB6970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_241CB69E4(uint64_t a1)
{
  sub_241CB6A50(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CB6A50(uint64_t a1)
{
  if (!qword_27EC6A140)
  {
    v2 = type metadata accessor for LibraryAudiobookInfo(255);
    v3 = sub_241CB6970(&qword_27EC69E68, type metadata accessor for LibraryAudiobookInfo, &protocol conformance descriptor for LibraryAudiobookInfo);
    v5 = type metadata accessor for CommonLibrarySeriesInfo(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EC6A140);
    }
  }
}

uint64_t static OS_dispatch_queue.dispatchAsyncOnMainIfNeeded(block:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_241CF8EA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_241CF8EC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_241CB6D9C();
  v13 = sub_241CF9538();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_241CB6DE8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241CB6E10;
  aBlock[3] = &unk_2853DD860;
  v15 = _Block_copy(aBlock);

  sub_241CF8EB8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_241CB6E6C();
  sub_241C93918(&qword_27EC6A148, &unk_241CFC8A8);
  sub_241CB6EC4();
  sub_241CF9618();
  MEMORY[0x245CFDCA0](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_241CB6D9C()
{
  result = qword_2810D56B0;
  if (!qword_2810D56B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D56B0);
  }

  return result;
}

uint64_t sub_241CB6E10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_241CB6E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_241CB6E6C()
{
  result = qword_2810D56F8;
  if (!qword_2810D56F8)
  {
    sub_241CF8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56F8);
  }

  return result;
}

unint64_t sub_241CB6EC4()
{
  result = qword_2810D56E8;
  if (!qword_2810D56E8)
  {
    sub_241C9452C(&qword_27EC6A148, &unk_241CFC8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56E8);
  }

  return result;
}

uint64_t sub_241CB6F3C(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {

    sub_241C93918(a2, a3);
    v3 = sub_241CF97A8();
  }

  else
  {
    v3 = a1;

    sub_241CF98D8();
  }

  return v3;
}

uint64_t MSeries.__authorCount.getter()
{
  MSeries.authorCount.getter();
  if (v0)
  {
    return 0;
  }

  else
  {
    return sub_241CF9408();
  }
}

unint64_t MSeries.__assets.getter()
{
  if (!MSeries.assetsResourceSet.getter())
  {
    return 0;
  }

  v0 = sub_241CF1858();

  if (v0)
  {

    if (v0 >> 62)
    {
      sub_241C93918(&unk_27EC6A150, &unk_241CFC8B8);
      v2 = sub_241CF97A8();
      swift_bridgeObjectRelease_n();
      return v2;
    }

    else
    {
      sub_241CF98D8();
    }
  }

  return v0;
}

unint64_t MSeries.__genres.getter()
{
  v0 = sub_241CA8170(@"genres");
  v1 = v0;
  if (v0)
  {
    if (v0 >> 62)
    {
      sub_241C93918(&unk_27EC6A700, &qword_241CFC8C8);
      v3 = sub_241CF97A8();

      return v3;
    }

    else
    {

      sub_241CF98D8();
    }
  }

  return v1;
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_241CF92F8();
  if (a1)
  {
    v11[7] = 0;
    v11[8] = result;
    v11[9] = a1;
    MEMORY[0x28223BE20](result);
    v11[2] = a3;
    v11[3] = a2;
    v11[4] = a1;
    v7 = sub_241C93918(&qword_27EC6A1C0, &qword_241CFC8D8);
    v8 = sub_241CF9308();
    v9 = sub_241CB7BF8();
    return sub_241CB7504(sub_241CB74E0, v11, v7, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_241CB740C@<X0>(uint64_t *result@<X0>, uint64_t a3@<X2>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    result = sub_241CF92F8();
    if (result >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= v5)
    {
      sub_241CF9328();
      sub_241CF9608();
      swift_getWitnessTable();
      result = sub_241CF9318();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241CB7504(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_241CF9598();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_241CF91D8();
  v63 = sub_241CF9748();
  v58 = sub_241CF9758();
  sub_241CF9728();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_241CF91C8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_241CF95B8();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_241CF9738();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_241CF95B8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_241CF9738();
      sub_241CF95B8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

unint64_t sub_241CB7BF8()
{
  result = qword_27EC6A1C8;
  if (!qword_27EC6A1C8)
  {
    sub_241C9452C(&qword_27EC6A1C0, &qword_241CFC8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A1C8);
  }

  return result;
}

BOOL Array<A>.containsDuplicates()(uint64_t a1, uint64_t a2)
{
  sub_241CF9778();
  v2 = objc_allocWithZone(MEMORY[0x277CCA940]);
  v3 = sub_241CF9288();

  v4 = [v2 initWithArray_];

  v5 = [v4 count];
  return v5 != sub_241CF92F8();
}

const char *sub_241CB7D14(char a1)
{
  result = "coverEffectV2";
  switch(a1)
  {
    case 1:
      result = "coverMaxSize";
      break;
    case 2:
      result = "bk_enhanced_personalization";
      break;
    case 3:
      result = "fuzzyFinishedDate";
      break;
    case 4:
      result = "iveReadThisFullFlow";
      break;
    case 5:
      result = "quoteSharing";
      break;
    case 6:
      result = "readingGoalHeader";
      break;
    case 7:
      result = "reading_loupe";
      break;
    case 8:
      result = "reasonForRecommendation";
      break;
    case 9:
      result = "swiftUIGenreList";
      break;
    case 10:
      result = "swiftUIGridRoom";
      break;
    case 11:
      result = "swiftUIGroupingPage";
      break;
    case 12:
      result = "swiftUIListRoom";
      break;
    case 13:
      result = "swiftUITopCharts";
      break;
    case 14:
      result = "unifiedProductPage";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t BooksFeatureFlag.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_241CF96D8();
  v5 = v4;
  if (v3 == sub_241CF96D8() && v5 == v6)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = sub_241CF98C8();

  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v11 = sub_241CF96D8();
    v13 = v12;
    if (v11 == sub_241CF96D8() && v13 == v14)
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }

    v15 = sub_241CF98C8();

    if (v15)
    {
      v10 = 1;
      goto LABEL_11;
    }

    v10 = 2;
    v16 = sub_241CF96D8();
    v18 = v17;
    if (v16 == sub_241CF96D8() && v18 == v19)
    {
      goto LABEL_10;
    }

    v20 = sub_241CF98C8();

    if (v20)
    {
      goto LABEL_11;
    }

    v21 = sub_241CF96D8();
    v23 = v22;
    if (v21 == sub_241CF96D8() && v23 == v24)
    {
      v10 = 3;
      goto LABEL_10;
    }

    v25 = sub_241CF98C8();

    if (v25)
    {
      v10 = 3;
      goto LABEL_11;
    }

    v26 = sub_241CF96D8();
    v28 = v27;
    if (v26 == sub_241CF96D8() && v28 == v29)
    {
      v10 = 4;
      goto LABEL_10;
    }

    v30 = sub_241CF98C8();

    if (v30)
    {
      v10 = 4;
      goto LABEL_11;
    }

    v31 = sub_241CF96D8();
    v33 = v32;
    if (v31 == sub_241CF96D8() && v33 == v34)
    {
      v10 = 5;
      goto LABEL_10;
    }

    v35 = sub_241CF98C8();

    if (v35)
    {
      v10 = 5;
      goto LABEL_11;
    }

    v36 = sub_241CF96D8();
    v38 = v37;
    if (v36 == sub_241CF96D8() && v38 == v39)
    {
      v10 = 6;
      goto LABEL_10;
    }

    v40 = sub_241CF98C8();

    if (v40)
    {
      v10 = 6;
      goto LABEL_11;
    }

    v41 = sub_241CF96D8();
    v43 = v42;
    if (v41 == sub_241CF96D8() && v43 == v44)
    {
      v10 = 7;
      goto LABEL_10;
    }

    v45 = sub_241CF98C8();

    if (v45)
    {
      v10 = 7;
      goto LABEL_11;
    }

    v46 = sub_241CF96D8();
    v48 = v47;
    if (v46 == sub_241CF96D8() && v48 == v49)
    {
      v10 = 8;
      goto LABEL_10;
    }

    v50 = sub_241CF98C8();

    if (v50)
    {
      v10 = 8;
      goto LABEL_11;
    }

    v51 = sub_241CF96D8();
    v53 = v52;
    if (v51 == sub_241CF96D8() && v53 == v54)
    {
      v10 = 9;
      goto LABEL_10;
    }

    v55 = sub_241CF98C8();

    if (v55)
    {
      v10 = 9;
      goto LABEL_11;
    }

    v56 = sub_241CF96D8();
    v58 = v57;
    if (v56 == sub_241CF96D8() && v58 == v59)
    {
      v10 = 10;
      goto LABEL_10;
    }

    v60 = sub_241CF98C8();

    if (v60)
    {
      v10 = 10;
      goto LABEL_11;
    }

    v61 = sub_241CF96D8();
    v63 = v62;
    if (v61 == sub_241CF96D8() && v63 == v64)
    {
      v10 = 11;
      goto LABEL_10;
    }

    v65 = sub_241CF98C8();

    if (v65)
    {
      v10 = 11;
      goto LABEL_11;
    }

    v66 = sub_241CF96D8();
    v68 = v67;
    if (v66 == sub_241CF96D8() && v68 == v69)
    {
      v10 = 12;
      goto LABEL_10;
    }

    v70 = sub_241CF98C8();

    if (v70)
    {
      v10 = 12;
      goto LABEL_11;
    }

    v71 = sub_241CF96D8();
    v73 = v72;
    if (v71 == sub_241CF96D8() && v73 == v74)
    {
      v10 = 13;
      goto LABEL_10;
    }

    v75 = sub_241CF98C8();

    if (v75)
    {
      v10 = 13;
      goto LABEL_11;
    }

    v76 = sub_241CF96D8();
    v78 = v77;
    v10 = 14;
    if (v76 == sub_241CF96D8() && v78 == v79)
    {
      goto LABEL_10;
    }

    v80 = sub_241CF98C8();

    if (v80)
    {
      v10 = 14;
    }

    else
    {
      v10 = 15;
    }
  }

LABEL_11:
  *a2 = v10;
  return result;
}

uint64_t BooksFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

void BooksFeatureFlag.rawValue.getter(uint64_t a1@<X8>)
{
  v2 = "coverEffectV2";
  v3 = 13;
  switch(*v1)
  {
    case 1:
      v2 = "coverMaxSize";
      v3 = 12;
      break;
    case 2:
      v2 = "bk_enhanced_personalization";
      v3 = 27;
      break;
    case 3:
      v2 = "fuzzyFinishedDate";
      v3 = 17;
      break;
    case 4:
      v2 = "iveReadThisFullFlow";
      v3 = 19;
      break;
    case 5:
      v2 = "quoteSharing";
      v3 = 12;
      break;
    case 6:
      v2 = "readingGoalHeader";
      v3 = 17;
      break;
    case 7:
      v2 = "reading_loupe";
      v3 = 13;
      break;
    case 8:
      v2 = "reasonForRecommendation";
      v3 = 23;
      break;
    case 9:
      v2 = "swiftUIGenreList";
      v3 = 16;
      break;
    case 0xA:
      v2 = "swiftUIGridRoom";
      v3 = 15;
      break;
    case 0xB:
      v2 = "swiftUIGroupingPage";
      v3 = 19;
      break;
    case 0xC:
      v2 = "swiftUIListRoom";
      v3 = 15;
      break;
    case 0xD:
      v2 = "swiftUITopCharts";
      v3 = 16;
      break;
    case 0xE:
      v2 = "unifiedProductPage";
      v3 = 18;
      break;
    default:
      break;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

void sub_241CB87E0()
{
  v10 = MEMORY[0x277D84F90];
  sub_241C94594(0, 15, 0);
  v0 = 0;
  v1 = v10;
  do
  {
    v2 = byte_2853DBCD0[v0 + 32];
    v3 = sub_241CF96D8();
    v10 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      v9 = v3;
      v8 = v4;
      sub_241C94594((v5 > 1), v6 + 1, 1);
      v4 = v8;
      v3 = v9;
      v1 = v10;
    }

    ++v0;
    *(v1 + 16) = v6 + 1;
    v7 = v1 + 24 * v6;
    *(v7 + 32) = v3;
    *(v7 + 40) = v4;
    *(v7 + 48) = v2;
  }

  while (v0 != 15);
  sub_241C93918(&qword_27EC6A1E8, &qword_241CFCA70);
  v10 = sub_241CF9808();
  sub_241CB8E78(v1, 1, &v10);
  off_2810D5758 = v10;
}

BookFoundation::BooksFeatureFlag_optional __swiftcall BooksFeatureFlag.init(key:)(Swift::String key)
{
  v2 = v1;
  if (qword_2810D5750 != -1)
  {
    countAndFlagsBits = key._countAndFlagsBits;
    object = key._object;
    swift_once();
    key._countAndFlagsBits = countAndFlagsBits;
    key._object = object;
  }

  v3 = off_2810D5758;
  if (!*(off_2810D5758 + 2))
  {

    goto LABEL_7;
  }

  v4 = sub_241C8E1DC(key._countAndFlagsBits, key._object);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 15;
    goto LABEL_8;
  }

  v8 = *(v3[7] + v4);
LABEL_8:
  *v2 = v8;
  return result;
}

Swift::Bool __swiftcall isFeatureEnabled(_:)(BookFoundation::BooksFeatureFlag a1)
{
  v1 = *a1;
  v4[3] = &type metadata for BooksFeatureFlag;
  v4[4] = sub_241CB8B8C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_241CF8E58();
  sub_241C8EEE8(v4);
  return v2 & 1;
}

unint64_t sub_241CB8B8C()
{
  result = qword_2810D5740;
  if (!qword_2810D5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5740);
  }

  return result;
}

unint64_t sub_241CB8BE4()
{
  result = qword_27EC6A1D0;
  if (!qword_27EC6A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A1D0);
  }

  return result;
}

unint64_t sub_241CB8C44(uint64_t a1)
{
  result = sub_241CB8C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241CB8C6C()
{
  result = qword_2810D5738;
  if (!qword_2810D5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5738);
  }

  return result;
}

unint64_t sub_241CB8CC4()
{
  result = qword_27EC6A1D8;
  if (!qword_27EC6A1D8)
  {
    sub_241C9452C(&qword_27EC6A1E0, &qword_241CFC9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A1D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BooksFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BooksFeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_241CB8E78(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_241C8E1DC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_241CC7674(v15, v5 & 1);
    v10 = sub_241C8E1DC(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_241CF9938();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_241CC8A94();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_241CF96C8();
    MEMORY[0x245CFD860](0xD00000000000001BLL, 0x8000000241D00B20);
    sub_241CF9788();
    MEMORY[0x245CFD860](39, 0xE100000000000000);
    sub_241CF9798();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v25 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_241C8E1DC(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_241CC7674(v31, 1);
        v27 = sub_241C8E1DC(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_241CB9208(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PDFInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PDFInfo(0);
  *(a2 + *(v4 + 20)) = 2;
  *(a2 + *(v4 + 24)) = 0;

  return sub_241CB931C(a1, a2);
}

uint64_t type metadata accessor for PDFInfo(uint64_t a1)
{
  result = qword_27EC6A228;
  if (!qword_27EC6A228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CB931C(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PDFInfo.assetType.setter(char a1)
{
  result = type metadata accessor for PDFInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PDFInfo.contentKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PDFInfo(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PDFInfo.contentKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PDFInfo(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_241CB9538(uint64_t a1)
{
  result = sub_241CB96AC(&qword_27EC6A208, type metadata accessor for PDFInfo, &protocol conformance descriptor for PDFInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB95E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 24);
  *(a3 + *(a2 + 20)) = 2;
  *(a3 + v3) = 0;
  return sub_241CB931C(a1, a3);
}

uint64_t sub_241CB95FC(uint64_t a1)
{
  result = sub_241CB96AC(&qword_27EC6A218, type metadata accessor for PDFInfo, &protocol conformance descriptor for PDFInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB9654(uint64_t a1)
{
  result = sub_241CB96AC(&qword_27EC6A220, type metadata accessor for PDFInfo, &protocol conformance descriptor for PDFInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CB96AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_241CB9720(uint64_t a1)
{
  sub_241CB97A4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CB97A4(uint64_t a1)
{
  if (!qword_27EC6A238)
  {
    v2 = type metadata accessor for LibraryPDFInfo(255);
    v3 = type metadata accessor for MAsset(255);
    v5 = type metadata accessor for ContentDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EC6A238);
    }
  }
}

uint64_t dispatch thunk of MCatalogRequestHandling.fetch<A>(resources:relationships:views:additionalParameters:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_241CB996C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_241CB996C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v5 = sub_241C93918(&qword_27EC6A240, &qword_241CFCB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for LibraryAudiobookInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_241C93918(&qword_27EC6A248, &unk_241CFCB68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for LibraryBookInfo(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C8E174(a1, &v46, &qword_27EC69F10, &qword_241CFB960);
  if (v47)
  {
    sub_241C914E4(&v46, v48);
    if (a2)
    {
      sub_241C96F9C(v48, &v46);
      v19 = a2;
      sub_241C93918(&qword_27EC6A250, &unk_241CFCB78);
      v20 = swift_dynamicCast();
      v21 = *(v16 + 56);
      if (v20)
      {
        v21(v14, 0, 1, v15);
        sub_241CBC278(v14, v18, type metadata accessor for LibraryBookInfo);
        type metadata accessor for MBook(0);
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = v22;
          v24 = type metadata accessor for BookInfo(0);
          v25 = v44;
          v44[3] = v24;
          v25[4] = sub_241CBC340(&qword_27EC69EE0, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
          v26 = sub_241CA8DEC(v25);
          v27 = *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48);
          sub_241CBC278(v18, v26, type metadata accessor for LibraryBookInfo);
          *(v26 + v27) = v23;
          sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
          swift_storeEnumTagMultiPayload();
          *(v26 + *(v24 + 20)) = 1;
LABEL_21:
          sub_241C8EEE8(v48);
          return;
        }

        sub_241CBC2E0(v18, type metadata accessor for LibraryBookInfo);
      }

      else
      {
        v21(v14, 1, 1, v15);
        sub_241C8EA54(v14, &qword_27EC6A248, &unk_241CFCB68);
      }

      sub_241C96F9C(v48, &v46);
      v30 = swift_dynamicCast();
      v31 = *(v9 + 56);
      if (v30)
      {
        v31(v7, 0, 1, v8);
        sub_241CBC278(v7, v11, type metadata accessor for LibraryAudiobookInfo);
        type metadata accessor for MAudiobook(0);
        v32 = swift_dynamicCastClass();
        if (v32)
        {
          v33 = v32;
          v34 = type metadata accessor for AudiobookInfo(0);
          v35 = v44;
          v44[3] = v34;
          v35[4] = sub_241CBC340(&qword_27EC69ED0, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
          v36 = sub_241CA8DEC(v35);
          v37 = *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48);
          sub_241CBC278(v11, v36, type metadata accessor for LibraryAudiobookInfo);
          *(v36 + v37) = v33;
          sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
          swift_storeEnumTagMultiPayload();
          *(v36 + *(v34 + 20)) = 0;
          *(v36 + *(v34 + 24)) = 1;
          goto LABEL_21;
        }

        sub_241CBC2E0(v11, type metadata accessor for LibraryAudiobookInfo);
      }

      else
      {
        v31(v7, 1, 1, v8);
        sub_241C8EA54(v7, &qword_27EC6A240, &qword_241CFCB60);
      }

      v38 = v49;
      v39 = sub_241C97000(v48, v49);
      v47 = v38;
      v40 = sub_241CA8DEC(&v46);
      (*(*(v38 - 8) + 16))(v40, v39, v38);
      v45[3] = type metadata accessor for MAsset(0);
      v45[0] = v19;
      v41 = sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
      sub_241CBBD1C(&v46, v45, v41);
      sub_241C8EEE8(v45);
      sub_241C8EEE8(&v46);
      v42 = v44;
      v44[4] = 0;
      *v42 = 0u;
      *(v42 + 1) = 0u;
      goto LABEL_21;
    }

    sub_241C8EEE8(v48);
  }

  else
  {
    sub_241C8EA54(&v46, &qword_27EC69F10, &qword_241CFB960);
  }

  sub_241C8E174(a1, &v46, &qword_27EC69F10, &qword_241CFB960);
  if (v47)
  {
    sub_241C914E4(&v46, v48);
    static ContentInfoUtilities.assetInfo(libraryAssetInfo:)(v48, v44);
    goto LABEL_21;
  }

  sub_241C8EA54(&v46, &qword_27EC69F10, &qword_241CFB960);
  if (a2)
  {
    v28 = a2;
    static ContentInfoUtilities.assetInfo(storeAsset:)(v28, v44);
  }

  else
  {
    v29 = v44;
    v44[4] = 0;
    *v29 = 0u;
    *(v29 + 1) = 0u;
  }
}

uint64_t static ContentInfoUtilities.assetInfo(libraryAssetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LibraryPDFInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryAudiobookInfo(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LibraryBookInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C96F9C(a1, v26);
  sub_241C93918(&qword_27EC6A250, &unk_241CFCB78);
  if (swift_dynamicCast())
  {
    v13 = type metadata accessor for BookInfo(0);
    *(a2 + 24) = v13;
    *(a2 + 32) = sub_241CBC340(&qword_27EC69EE0, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
    v14 = sub_241CA8DEC(a2);
    sub_241CBC278(v12, v14, type metadata accessor for LibraryBookInfo);
    sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
    swift_storeEnumTagMultiPayload();
    *(v14 + *(v13 + 20)) = 1;
  }

  else if (swift_dynamicCast())
  {
    v15 = type metadata accessor for AudiobookInfo(0);
    *(a2 + 24) = v15;
    *(a2 + 32) = sub_241CBC340(&qword_27EC69ED0, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
    v16 = sub_241CA8DEC(a2);
    sub_241CBC278(v9, v16, type metadata accessor for LibraryAudiobookInfo);
    sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
    swift_storeEnumTagMultiPayload();
    *(v16 + *(v15 + 20)) = 0;
    *(v16 + *(v15 + 24)) = 1;
  }

  else if (swift_dynamicCast())
  {
    v17 = type metadata accessor for PDFInfo(0);
    *(a2 + 24) = v17;
    *(a2 + 32) = sub_241CBC340(&qword_27EC6A268, type metadata accessor for PDFInfo, &protocol conformance descriptor for PDFInfo);
    v18 = sub_241CA8DEC(a2);
    sub_241CBC278(v6, v18, type metadata accessor for LibraryPDFInfo);
    sub_241C93918(&qword_27EC6A1F8, &qword_241CFCA78);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v17 + 20)) = 2;
    *(v18 + *(v17 + 24)) = 0;
  }

  else
  {
    v19 = a1[3];
    v20 = sub_241C97000(a1, v19);
    v25[3] = v19;
    v21 = sub_241CA8DEC(v25);
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    v22 = sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
    sub_241CBC000(v25, v22);
    sub_241C8EEE8(v25);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return sub_241C8EEE8(v26);
}

double static ContentInfoUtilities.assetInfo(storeAsset:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MBook(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for BookInfo(0);
    *(a2 + 24) = v5;
    *(a2 + 32) = sub_241CBC340(&qword_27EC69EE0, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
    v6 = sub_241CA8DEC(a2);
    *v6 = v4;
    sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
    swift_storeEnumTagMultiPayload();
    v7 = *(v5 + 20);
  }

  else
  {
    type metadata accessor for MAudiobook(0);
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      v16[3] = type metadata accessor for MAsset(0);
      v16[0] = a1;
      v13 = sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
      v14 = a1;
      sub_241CBC000(v16, v13);
      sub_241C8EEE8(v16);
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    v9 = v8;
    v10 = type metadata accessor for AudiobookInfo(0);
    *(a2 + 24) = v10;
    *(a2 + 32) = sub_241CBC340(&qword_27EC69ED0, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
    v6 = sub_241CA8DEC(a2);
    *v6 = v9;
    sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v10 + 20)) = 0;
    v7 = *(v10 + 24);
  }

  *(v6 + v7) = 1;

  v11 = a1;
  return result;
}

void static ContentInfoUtilities.seriesInfo(librarySeries:storeSeries:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v5 = sub_241C93918(&qword_27EC6A270, &qword_241CFCBB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_241C93918(&qword_27EC6A278, &qword_241CFCBB8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for LibraryBookSeriesInfo(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C8E174(a1, &v47, &qword_27EC69E58, &qword_241CFB200);
  if (v48)
  {
    sub_241C914E4(&v47, v49);
    if (a2)
    {
      sub_241C96F9C(v49, &v47);
      v19 = a2;
      sub_241C93918(&qword_27EC69E98, "2x");
      v20 = swift_dynamicCast();
      v21 = *(v16 + 56);
      if (v20)
      {
        v21(v14, 0, 1, v15);
        sub_241CBC278(v14, v18, type metadata accessor for LibraryBookSeriesInfo);
        type metadata accessor for MBookSeries(0);
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = v22;
          v24 = type metadata accessor for BookSeriesInfo(0);
          v25 = v45;
          v45[3] = v24;
          v25[4] = sub_241CBC340(&qword_27EC6A290, type metadata accessor for BookSeriesInfo, &protocol conformance descriptor for BookSeriesInfo);
          v26 = sub_241CA8DEC(v25);
          v27 = *(sub_241C93918(&qword_27EC6A298, &qword_241CFCBC8) + 48);
          sub_241CBC278(v18, v26, type metadata accessor for LibraryBookSeriesInfo);
          *(v26 + v27) = v23;
          sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
          swift_storeEnumTagMultiPayload();
          v28 = *(v24 + 20);
LABEL_18:
          *(v26 + v28) = 0;
          goto LABEL_22;
        }

        sub_241CBC2E0(v18, type metadata accessor for LibraryBookSeriesInfo);
      }

      else
      {
        v21(v14, 1, 1, v15);
        sub_241C8EA54(v14, &qword_27EC6A278, &qword_241CFCBB8);
      }

      sub_241C96F9C(v49, &v47);
      v31 = swift_dynamicCast();
      v32 = *(v9 + 56);
      if (v31)
      {
        v32(v7, 0, 1, v8);
        sub_241CBC278(v7, v11, type metadata accessor for LibraryAudiobookSeriesInfo);
        type metadata accessor for MAudiobookSeries(0);
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          v34 = v33;
          v35 = type metadata accessor for AudiobookSeriesInfo(0);
          v36 = v45;
          v45[3] = v35;
          v36[4] = sub_241CBC340(&qword_27EC6A288, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
          v26 = sub_241CA8DEC(v36);
          v37 = v26 + *(v35 + 24);
          v38 = *(sub_241C93918(&qword_27EC6A0D0, &qword_241CFC700) + 48);
          sub_241CBC278(v11, v37, type metadata accessor for LibraryAudiobookSeriesInfo);
          *(v37 + v38) = v34;
          sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
          swift_storeEnumTagMultiPayload();
          *v26 = 1;
          v28 = *(v35 + 28);
          goto LABEL_18;
        }

        sub_241CBC2E0(v11, type metadata accessor for LibraryAudiobookSeriesInfo);
      }

      else
      {
        v32(v7, 1, 1, v8);
        sub_241C8EA54(v7, &qword_27EC6A270, &qword_241CFCBB0);
      }

      v39 = v50;
      v40 = sub_241C97000(v49, v50);
      v48 = v39;
      v41 = sub_241CA8DEC(&v47);
      (*(*(v39 - 8) + 16))(v41, v40, v39);
      v46[3] = type metadata accessor for MSeries(0);
      v46[0] = v19;
      v42 = sub_241C93918(&qword_27EC6A280, &qword_241CFCBC0);
      sub_241CBBD1C(&v47, v46, v42);
      sub_241C8EEE8(v46);
      sub_241C8EEE8(&v47);
      v43 = v45;
      v45[4] = 0;
      *v43 = 0u;
      *(v43 + 1) = 0u;
      goto LABEL_22;
    }

    sub_241C8EEE8(v49);
  }

  else
  {
    sub_241C8EA54(&v47, &qword_27EC69E58, &qword_241CFB200);
  }

  sub_241C8E174(a1, &v47, &qword_27EC69E58, &qword_241CFB200);
  if (v48)
  {
    sub_241C914E4(&v47, v49);
    static ContentInfoUtilities.seriesInfo(librarySeries:)(v49, v45);
LABEL_22:
    sub_241C8EEE8(v49);
    return;
  }

  sub_241C8EA54(&v47, &qword_27EC69E58, &qword_241CFB200);
  if (a2)
  {
    v29 = a2;
    static ContentInfoUtilities.seriesInfo(storeSeries:)(v29, v45);
  }

  else
  {
    v30 = v45;
    v45[4] = 0;
    *v30 = 0u;
    *(v30 + 1) = 0u;
  }
}

uint64_t static ContentInfoUtilities.seriesInfo(librarySeries:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryBookSeriesInfo(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C96F9C(a1, v21);
  sub_241C93918(&qword_27EC69E98, "2x");
  if (swift_dynamicCast())
  {
    v10 = type metadata accessor for BookSeriesInfo(0);
    *(a2 + 24) = v10;
    *(a2 + 32) = sub_241CBC340(&qword_27EC6A290, type metadata accessor for BookSeriesInfo, &protocol conformance descriptor for BookSeriesInfo);
    v11 = sub_241CA8DEC(a2);
    sub_241CBC278(v9, v11, type metadata accessor for LibraryBookSeriesInfo);
    sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v10 + 20)) = 0;
  }

  else if (swift_dynamicCast())
  {
    v12 = type metadata accessor for AudiobookSeriesInfo(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = sub_241CBC340(&qword_27EC6A288, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
    v13 = sub_241CA8DEC(a2);
    sub_241CBC278(v6, v13 + *(v12 + 24), type metadata accessor for LibraryAudiobookSeriesInfo);
    sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
    swift_storeEnumTagMultiPayload();
    *v13 = 1;
    *(v13 + *(v12 + 28)) = 0;
  }

  else
  {
    v14 = a1[3];
    v15 = sub_241C97000(a1, v14);
    v20[3] = v14;
    v16 = sub_241CA8DEC(v20);
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    v17 = sub_241C93918(&qword_27EC6A280, &qword_241CFCBC0);
    sub_241CBC000(v20, v17);
    sub_241C8EEE8(v20);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return sub_241C8EEE8(v21);
}

double static ContentInfoUtilities.seriesInfo(storeSeries:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MBookSeries(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for BookSeriesInfo(0);
    *(a2 + 24) = v5;
    *(a2 + 32) = sub_241CBC340(&qword_27EC6A290, type metadata accessor for BookSeriesInfo, &protocol conformance descriptor for BookSeriesInfo);
    v6 = sub_241CA8DEC(a2);
    *v6 = v4;
    sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
    swift_storeEnumTagMultiPayload();
    v7 = *(v5 + 20);
  }

  else
  {
    type metadata accessor for MAudiobookSeries(0);
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      v16[3] = type metadata accessor for MSeries(0);
      v16[0] = a1;
      v13 = sub_241C93918(&qword_27EC6A280, &qword_241CFCBC0);
      v14 = a1;
      sub_241CBC000(v16, v13);
      sub_241C8EEE8(v16);
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    v9 = v8;
    v10 = type metadata accessor for AudiobookSeriesInfo(0);
    *(a2 + 24) = v10;
    *(a2 + 32) = sub_241CBC340(&qword_27EC6A288, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
    v6 = sub_241CA8DEC(a2);
    *(v6 + *(v10 + 24)) = v9;
    sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
    swift_storeEnumTagMultiPayload();
    *v6 = 1;
    v7 = *(v10 + 28);
  }

  *(v6 + v7) = 0;

  v11 = a1;
  return result;
}

void static ContentInfoUtilities.seriesInfo(librarySeries:storeSeries:additionalStoreAssetsForEnrichment:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v6 = sub_241C93918(&qword_27EC6A270, &qword_241CFCBB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_241C93918(&qword_27EC6A278, &qword_241CFCBB8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for LibraryBookSeriesInfo(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C8E174(a1, &v48, &qword_27EC69E58, &qword_241CFB200);
  if (v49)
  {
    sub_241C914E4(&v48, v50);
    if (a2)
    {
      sub_241C96F9C(v50, &v48);
      v20 = a2;
      sub_241C93918(&qword_27EC69E98, "2x");
      v21 = swift_dynamicCast();
      v22 = *(v17 + 56);
      if (v21)
      {
        v22(v15, 0, 1, v16);
        sub_241CBC278(v15, v19, type metadata accessor for LibraryBookSeriesInfo);
        type metadata accessor for MBookSeries(0);
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          v25 = type metadata accessor for BookSeriesInfo(0);
          v26 = v46;
          v46[3] = v25;
          v26[4] = sub_241CBC340(&qword_27EC6A290, type metadata accessor for BookSeriesInfo, &protocol conformance descriptor for BookSeriesInfo);
          v27 = sub_241CA8DEC(v26);
          v28 = *(sub_241C93918(&qword_27EC6A298, &qword_241CFCBC8) + 48);
          sub_241CBC278(v19, v27, type metadata accessor for LibraryBookSeriesInfo);
          *(v27 + v28) = v24;
          sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
          swift_storeEnumTagMultiPayload();
          v29 = *(v25 + 20);
LABEL_18:
          *(v27 + v29) = v45;

          goto LABEL_22;
        }

        sub_241CBC2E0(v19, type metadata accessor for LibraryBookSeriesInfo);
      }

      else
      {
        v22(v15, 1, 1, v16);
        sub_241C8EA54(v15, &qword_27EC6A278, &qword_241CFCBB8);
      }

      sub_241C96F9C(v50, &v48);
      v32 = swift_dynamicCast();
      v33 = *(v10 + 56);
      if (v32)
      {
        v33(v8, 0, 1, v9);
        sub_241CBC278(v8, v12, type metadata accessor for LibraryAudiobookSeriesInfo);
        type metadata accessor for MAudiobookSeries(0);
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          v35 = v34;
          v36 = type metadata accessor for AudiobookSeriesInfo(0);
          v37 = v46;
          v46[3] = v36;
          v37[4] = sub_241CBC340(&qword_27EC6A288, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
          v27 = sub_241CA8DEC(v37);
          v38 = v27 + *(v36 + 24);
          v39 = *(sub_241C93918(&qword_27EC6A0D0, &qword_241CFC700) + 48);
          sub_241CBC278(v12, v38, type metadata accessor for LibraryAudiobookSeriesInfo);
          *(v38 + v39) = v35;
          sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
          swift_storeEnumTagMultiPayload();
          *v27 = 1;
          v29 = *(v36 + 28);
          goto LABEL_18;
        }

        sub_241CBC2E0(v12, type metadata accessor for LibraryAudiobookSeriesInfo);
      }

      else
      {
        v33(v8, 1, 1, v9);
        sub_241C8EA54(v8, &qword_27EC6A270, &qword_241CFCBB0);
      }

      v40 = v51;
      v41 = sub_241C97000(v50, v51);
      v49 = v40;
      v42 = sub_241CA8DEC(&v48);
      (*(*(v40 - 8) + 16))(v42, v41, v40);
      v47[3] = type metadata accessor for MSeries(0);
      v47[0] = v20;
      v43 = sub_241C93918(&qword_27EC6A280, &qword_241CFCBC0);
      sub_241CBBD1C(&v48, v47, v43);
      sub_241C8EEE8(v47);
      sub_241C8EEE8(&v48);
      v44 = v46;
      v46[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      goto LABEL_22;
    }

    sub_241C8EEE8(v50);
  }

  else
  {
    sub_241C8EA54(&v48, &qword_27EC69E58, &qword_241CFB200);
  }

  sub_241C8E174(a1, &v48, &qword_27EC69E58, &qword_241CFB200);
  if (v49)
  {
    sub_241C914E4(&v48, v50);
    static ContentInfoUtilities.seriesInfo(librarySeries:additionalStoreAssetsForEnrichment:)(v50, v45, v46);
LABEL_22:
    sub_241C8EEE8(v50);
    return;
  }

  sub_241C8EA54(&v48, &qword_27EC69E58, &qword_241CFB200);
  if (a2)
  {
    v30 = a2;
    static ContentInfoUtilities.seriesInfo(storeSeries:)(v30, v46);
  }

  else
  {
    v31 = v46;
    v46[4] = 0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
  }
}

uint64_t static ContentInfoUtilities.seriesInfo(librarySeries:additionalStoreAssetsForEnrichment:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LibraryAudiobookSeriesInfo(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LibraryBookSeriesInfo(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C96F9C(a1, v23);
  sub_241C93918(&qword_27EC69E98, "2x");
  if (swift_dynamicCast())
  {
    v12 = type metadata accessor for BookSeriesInfo(0);
    *(a3 + 24) = v12;
    *(a3 + 32) = sub_241CBC340(&qword_27EC6A290, type metadata accessor for BookSeriesInfo, &protocol conformance descriptor for BookSeriesInfo);
    v13 = sub_241CA8DEC(a3);
    sub_241CBC278(v11, v13, type metadata accessor for LibraryBookSeriesInfo);
    sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
    swift_storeEnumTagMultiPayload();
    v14 = *(v12 + 20);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v16 = a1[3];
      v17 = sub_241C97000(a1, v16);
      v22[3] = v16;
      v18 = sub_241CA8DEC(v22);
      (*(*(v16 - 8) + 16))(v18, v17, v16);
      v19 = sub_241C93918(&qword_27EC6A280, &qword_241CFCBC0);
      sub_241CBC000(v22, v19);
      sub_241C8EEE8(v22);
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return sub_241C8EEE8(v23);
    }

    v15 = type metadata accessor for AudiobookSeriesInfo(0);
    *(a3 + 24) = v15;
    *(a3 + 32) = sub_241CBC340(&qword_27EC6A288, type metadata accessor for AudiobookSeriesInfo, &protocol conformance descriptor for AudiobookSeriesInfo);
    v13 = sub_241CA8DEC(a3);
    sub_241CBC278(v8, v13 + *(v15 + 24), type metadata accessor for LibraryAudiobookSeriesInfo);
    sub_241C93918(&qword_27EC6A0C0, &unk_241CFC6F0);
    swift_storeEnumTagMultiPayload();
    *v13 = 1;
    v14 = *(v15 + 28);
  }

  *(v13 + v14) = a2;

  return sub_241C8EEE8(v23);
}

void sub_241CBBD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_241CF9A08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C93664(a1, v24);
  sub_241CF99D8();
  sub_241CF99E8();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_241C93664(a2, v24);
  sub_241CF99D8();
  sub_241CF99E8();
  v9(v8, v5);
  if (qword_27EC69A98 != -1)
  {
    swift_once();
  }

  v10 = sub_241CF8E88();
  sub_241C936C0(v10, qword_27EC69E10);
  v11 = sub_241CF8E68();
  v12 = sub_241CF9518();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315650;
    v15 = sub_241CF9A58();
    v17 = sub_241CB3A88(v15, v16, v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_241CF9A58();
    v20 = sub_241CB3A88(v18, v19, v24);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    v21 = sub_241CF9A58();
    v23 = sub_241CB3A88(v21, v22, v24);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_241C8C000, v11, v12, "%s and/or %s cannot be used to create a valid %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v14, -1, -1);
    MEMORY[0x245CFE970](v13, -1, -1);
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }
}

void sub_241CBC000(uint64_t a1, uint64_t a2)
{
  v3 = sub_241CF9A08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C93664(a1, v18);
  sub_241CF99D8();
  sub_241CF99E8();
  (*(v4 + 8))(v6, v3);
  if (qword_27EC69A98 != -1)
  {
    swift_once();
  }

  v7 = sub_241CF8E88();
  sub_241C936C0(v7, qword_27EC69E10);
  v8 = sub_241CF8E68();
  v9 = sub_241CF9518();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315394;
    v12 = sub_241CF9A58();
    v14 = sub_241CB3A88(v12, v13, v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_241CF9A58();
    v17 = sub_241CB3A88(v15, v16, v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_241C8C000, v8, v9, "%s cannot be used to create a valid %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v11, -1, -1);
    MEMORY[0x245CFE970](v10, -1, -1);
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }
}

uint64_t sub_241CBC278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_241CBC2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_241CBC340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id MResource.init(with:config:)(uint64_t a1, char *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___relationships;
  *&v3[OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___relationships] = 1;
  v10 = OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___views;
  *&v3[OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___views] = 1;
  v52 = 5;
  sub_241CB443C();

  sub_241CD7154(a1, MEMORY[0x277D837D0], &v53);
  v11 = v54;
  if (v54)
  {
    v50 = v9;
    v12 = v53;
    v13 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v13 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v49 = v7;
      v52 = 4;
      v14 = sub_241CD7154(a1, MEMORY[0x277D837D0], &v53);
      v15 = v54;
      if (v54)
      {
        v48 = v10;
        v16 = v53;
        (*(ObjectType + 136))(&v53, v14);
        v17 = 0xEB00000000736B6FLL;
        v18 = 0x6F622D6F69647561;
        v19 = 0xE500000000000000;
        v20 = 0x736B6F6F62;
        v21 = 0x7265732D6B6F6F62;
        v22 = 0xE600000000000000;
        if (v53 == 4)
        {
          v22 = 0xEB00000000736569;
        }

        else
        {
          v21 = 0x7365726E6567;
        }

        if (v53 != 3)
        {
          v20 = v21;
          v19 = v22;
        }

        v23 = 0x8000000241D008F0;
        v24 = 0xD000000000000011;
        if (v53 != 1)
        {
          v24 = 0x73726F68747561;
          v23 = 0xE700000000000000;
        }

        if (v53)
        {
          v18 = v24;
          v17 = v23;
        }

        if (v53 <= 2u)
        {
          v25 = v18;
        }

        else
        {
          v25 = v20;
        }

        if (v53 <= 2u)
        {
          v26 = v17;
        }

        else
        {
          v26 = v19;
        }

        if (v16 == v25 && v15 == v26)
        {

          v27 = v8;
        }

        else
        {
          v28 = sub_241CF98C8();

          v27 = v8;
          if ((v28 & 1) == 0)
          {

LABEL_31:

            v9 = v50;
            v10 = v48;
            goto LABEL_32;
          }
        }

        v52 = 6;
        sub_241CD7154(a1, MEMORY[0x277D837D0], &v53);

        v29 = v54;
        if (v54)
        {
          v30 = v53;
          v31 = &v3[OBJC_IVAR____TtC14BookFoundation9MResource_id];
          *v31 = v12;
          v31[1] = v11;
          v32 = &v3[OBJC_IVAR____TtC14BookFoundation9MResource_href];
          *v32 = v30;
          v32[1] = v29;
          *&v3[OBJC_IVAR____TtC14BookFoundation9MResource_data] = a1;
          v33 = &v3[OBJC_IVAR____TtC14BookFoundation9MResource_config];
          *v33 = v49;
          *(v33 + 1) = v27;
          v51.receiver = v3;
          v51.super_class = type metadata accessor for MResource();
          return objc_msgSendSuper2(&v51, sel_init);
        }

        goto LABEL_31;
      }
    }

    v9 = v50;
  }

  else
  {
  }

LABEL_32:
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v35 = sub_241CF8E88();
  sub_241C936C0(v35, qword_27EC69E28);

  v36 = sub_241CF8E68();
  v37 = sub_241CF9508();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 136315394;
    v40 = sub_241CAE848(ObjectType);
    v42 = v10;
    v43 = sub_241CB3A88(v40, v41, &v53);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = sub_241CF8F08();
    v46 = v45;

    v47 = sub_241CB3A88(v44, v46, &v53);
    v10 = v42;

    *(v38 + 14) = v47;
    _os_log_impl(&dword_241C8C000, v36, v37, "Invalid data for %s: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v39, -1, -1);
    MEMORY[0x245CFE970](v38, -1, -1);
  }

  else
  {
  }

  sub_241CAB458(*&v3[v9]);
  sub_241CAB458(*&v3[v10]);
  type metadata accessor for MResource();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_241CBC9EC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___relationships);
  *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___relationships) = a1;
  return sub_241CAB458(v2);
}

uint64_t (*sub_241CBCA04(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_241CBC9DC();
  return sub_241CBCA4C;
}

void *sub_241CBCA68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v8 = a2;
    v5 = sub_241CBCBC8(&v8);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;

    sub_241CAB458(v6);
  }

  sub_241CABA10(v4);
  return v5;
}

uint64_t sub_241CBCAE0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___views);
  *(v1 + OBJC_IVAR____TtC14BookFoundation9MResource____lazy_storage___views) = a1;
  return sub_241CAB458(v2);
}

uint64_t (*sub_241CBCAF8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_241CBCA58();
  return sub_241CBCB40;
}

uint64_t sub_241CBCB4C(uint64_t *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = *(v3 + *a3);
  *(v3 + *a3) = *a1;
  if (a2)
  {

    sub_241CAB458(v4);
  }

  else
  {

    return sub_241CAB458(v4);
  }
}

void *sub_241CBCBC8(unsigned __int8 *a1)
{
  v2 = sub_241CF1C04(*a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2 + 64;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 64);
    v32 = v1 + OBJC_IVAR____TtC14BookFoundation9MResource_config;
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    v11 = MEMORY[0x277D84F98];
    v31 = v9;
    while (v7)
    {
LABEL_12:
      v13 = __clz(__rbit64(v7)) | (v10 << 6);
      sub_241CBE164(*(v3 + 48) + 40 * v13, v37);
      sub_241C93664(*(v3 + 56) + 32 * v13, v38);
      sub_241CBE164(v37, v36);
      if (swift_dynamicCast())
      {
        sub_241C93664(v38, v36);
        sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
        if (swift_dynamicCast())
        {
          v14 = *(v32 + 8);
          LOBYTE(v36[0]) = *v32;
          v36[1] = v14;
          type metadata accessor for MResourceSet();
          swift_allocObject();
          v15 = v14;
          v33 = MResourceSet.init(with:config:)(v34, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36[0] = v11;
          v18 = sub_241C8E1DC(v34, v35);
          v19 = v11[2];
          v20 = (v17 & 1) == 0;
          v21 = v19 + v20;
          if (__OFADD__(v19, v20))
          {
            goto LABEL_29;
          }

          v22 = v17;
          if (v11[3] >= v21)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_241CC8780();
            }

            v23 = v34;
          }

          else
          {
            sub_241CC73CC(v21, isUniquelyReferenced_nonNull_native);
            v23 = v34;
            v24 = sub_241C8E1DC(v34, v35);
            if ((v22 & 1) != (v25 & 1))
            {
              goto LABEL_31;
            }

            v18 = v24;
          }

          v3 = v31;
          v11 = v36[0];
          if (v22)
          {
            *(*(v36[0] + 56) + 8 * v18) = v33;
          }

          else
          {
            *(v36[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
            v26 = (v11[6] + 16 * v18);
            *v26 = v23;
            v26[1] = v35;
            *(v11[7] + 8 * v18) = v33;
            v27 = v11[2];
            v28 = __OFADD__(v27, 1);
            v29 = v27 + 1;
            if (v28)
            {
              goto LABEL_30;
            }

            v11[2] = v29;
          }
        }

        else
        {
        }
      }

      v7 &= v7 - 1;
      sub_241CBE1C0(v37);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        return v11;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_241CF9938();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_241CBCF0C()
{
  result = sub_241CBD364(*(v0 + OBJC_IVAR____TtC14BookFoundation9MResource_data));
  if (!result)
  {
    v2 = MEMORY[0x277D84F90];

    return sub_241C8E044(v2);
  }

  return result;
}

uint64_t MResource.resources<A>(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, const char *a10)
{
}

{
}

BookFoundation::MResource::Keys_optional __swiftcall MResource.Keys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MResource.Keys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7475626972747461;
  v3 = 1717924456;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 25705;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7377656976;
  if (v1 != 2)
  {
    v5 = 1635018093;
  }

  if (*v0)
  {
    v2 = 0x6E6F6974616C6572;
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

void sub_241CBD100(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007365;
  v4 = 0x7475626972747461;
  v5 = 0xE400000000000000;
  v6 = 1717924456;
  if (v2 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x8000000241D00100;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (v2 != 4)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7377656976;
  if (v2 != 2)
  {
    v10 = 1635018093;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6E6F6974616C6572;
    v3 = 0xED00007370696873;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t MResource.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation9MResource_id);

  return v1;
}

uint64_t MResource.href.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation9MResource_href);

  return v1;
}

unint64_t sub_241CBD364(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_241C93918(&qword_27EC6A2E8, &qword_241CFCE18);
    v2 = sub_241CF9808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_241CBE164(*(a1 + 48) + 40 * v12, v27);
        sub_241C93664(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_241CBE164(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_241C93664(v25 + 8, v20);
        sub_241CBE1C0(v24);
        v21 = v18;
        sub_241C8E30C(v20, v22);
        v13 = v21;
        sub_241C8E30C(v22, v23);
        sub_241C8E30C(v23, &v21);
        result = sub_241C8E1DC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_241C8EEE8(v10);
          result = sub_241C8E30C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_241C8E30C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_241CBE1C0(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id MResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MResource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241CBD780@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t static MResource.from<A>(response:config:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  sub_241CF9668();
  if (!*(a1 + 16) || (v6 = sub_241CF45AC(v16), (v7 & 1) == 0))
  {
    sub_241C93610(v16);
    goto LABEL_9;
  }

  sub_241C93664(*(a1 + 56) + 32 * v6, v18);
  sub_241C93610(v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    LOBYTE(v8) = 1;
    goto LABEL_10;
  }

  v8 = static MResourceType.classType(for:)(1701869940, 0xE400000000000000);

  if (v8)
  {
    v16[0] = v4;
    v17 = v5;
    v9 = *(v8 + 128);
    v10 = v5;

    v12 = v9(v11, v16);
    if (v12)
    {
      v13 = v12;
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_241CBDC04();
  swift_allocError();
  *v15 = a1;
  *(v15 + 8) = v8;
  swift_willThrow();
}

uint64_t sub_241CBD950(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), const char *a5, ...)
{
  ObjectType = swift_getObjectType();
  v11 = a3();
  if (v11)
  {
    v12 = v11;
    v13 = sub_241CF9038();
    if (*(v12 + 16))
    {
      sub_241C8E1DC(v13, v14);
      v16 = v15;

      if (v16)
      {

        v17 = a4(a2);

        return v17;
      }
    }

    else
    {
    }
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v19 = sub_241CF8E88();
  sub_241C936C0(v19, qword_27EC69E28);
  v20 = a1;
  v21 = sub_241CF8E68();
  v22 = sub_241CF9508();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315394;
    v25 = sub_241CF9038();
    v27 = sub_241CB3A88(v25, v26, &v31);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_241CAE848(ObjectType);
    v30 = sub_241CB3A88(v28, v29, &v31);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_241C8C000, v21, v22, a5, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v24, -1, -1);
    MEMORY[0x245CFE970](v23, -1, -1);
  }

  return 0;
}

unint64_t sub_241CBDC04()
{
  result = qword_27EC6A2D8;
  if (!qword_27EC6A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A2D8);
  }

  return result;
}

unint64_t sub_241CBDC5C()
{
  result = qword_27EC6A2E0;
  if (!qword_27EC6A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A2E0);
  }

  return result;
}

uint64_t sub_241CBDCBC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;

  return sub_241CAB458(v5);
}

uint64_t getEnumTagSinglePayload for MResource.Keys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MResource.Keys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_241CBE0A8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_241CBE0BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_241CBE104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_241CBE1C0(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC6A2F0, &qword_241CFCE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FloatingPoint.normalize(from:to:clamp:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v64) = a3;
  v59 = a6;
  v60 = a2;
  v62 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - v10;
  v57 = *(a5[3] + 8);
  v11 = sub_241CF8FE8();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v49 - v12;
  v13 = *(a5[2] + 8);
  v63 = *(v13 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = (&v49 - v18);
  v66 = *(a4 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v56 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v49 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v65 = v11;
  v29 = sub_241CF8FF8();
  v58 = v13;
  if (v29)
  {
    swift_getAssociatedConformanceWitness();
    sub_241CF9918();
    sub_241CF98A8();
    v30 = v66;
  }

  else
  {
    sub_241CF97C8();
    sub_241CF97C8();
    sub_241CF8F78();
    v30 = v66;
    v31 = *(v66 + 8);
    v31(v23, a4);
    v31(v26, a4);
  }

  if ((v64 & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_getAssociatedConformanceWitness();
  sub_241CF9918();
  sub_241CF98A8();
  sub_241CF9918();
  v32 = v56;
  sub_241CF98A8();
  result = sub_241CF8FD8();
  if (result)
  {
    v34 = *(v30 + 32);
    v63 = v26;
    v35 = v50;
    v34(v50, v23, a4);
    v36 = TupleTypeMetadata2;
    v34(&v35[*(TupleTypeMetadata2 + 48)], v32, a4);
    v62 = v23;
    v38 = v52;
    v37 = v53;
    (*(v52 + 16))(v53, v35, v36);
    v39 = *(v36 + 48);
    v64 = v28;
    v40 = v49;
    v34(v49, v37, a4);
    v61 = v34;
    v56 = *(v66 + 8);
    (v56)(&v37[v39], a4);
    v41 = v63;
    (*(v38 + 32))(v37, v35, v36);
    v23 = v62;
    v42 = *(v36 + 48);
    v43 = v65;
    v30 = v66;
    v34((v40 + *(v65 + 36)), &v37[v42], a4);
    v44 = v37;
    v45 = v56;
    (v56)(v44, a4);
    Comparable.clamped(_:)(v40, a4, v41);
    v46 = v43;
    v26 = v41;
    v47 = v40;
    v28 = v64;
    (*(v51 + 8))(v47, v46);
    v45(v28, a4);
    v61(v28, v41, a4);
LABEL_7:
    sub_241CF97C8();
    sub_241CF9418();
    v48 = *(v30 + 8);
    v48(v23, a4);
    sub_241CF97B8();
    v48(v26, a4);
    return (v48)(v28, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_241CBE94C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7107189;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7107189;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_241CF98C8();
  }

  return v8 & 1;
}

uint64_t sub_241CBE9E4()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CBEA58(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CBEAB8(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CBEB28@<X0>(char *a2@<X8>)
{
  v3 = sub_241CF9838();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_241CBEB88(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 7107189;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MAuthor.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name);

  return v1;
}

uint64_t MAuthor.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BookFoundation7MAuthor_url;
  v4 = sub_241CF8CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id MAuthor.init(with:config:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_241CF8CF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a2;
  v13 = *(a2 + 1);
  v39 = 0;

  v14 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v14, &v37);

  v15 = v37;
  if (v37)
  {
    v36 = v13;
    v34 = v10;
    v39 = 0;
    sub_241CBF348();
    sub_241CD7154(v15, MEMORY[0x277D837D0], &v37);
    v16 = v38;
    if (v38 && (v33 = v37, v39 = 1, sub_241CD7154(v15, MEMORY[0x277D837D0], &v37), , v38))
    {
      sub_241CF8CD8();

      v17 = v34;
      v18 = (*(v34 + 48))(v8, 1, v9);
      v19 = v36;
      if (v18 != 1)
      {
        (*(v17 + 32))(v12, v8, v9);
        v30 = (v3 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name);
        *v30 = v33;
        v30[1] = v16;
        (*(v17 + 16))(v3 + OBJC_IVAR____TtC14BookFoundation7MAuthor_url, v12, v9);
        LOBYTE(v37) = v35;
        v38 = v19;
        v31 = MResource.init(with:config:)(a1, &v37);
        (*(v17 + 8))(v12, v9);
        return v31;
      }

      sub_241CABCEC(v8);
    }

    else
    {
    }
  }

  else
  {
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v20 = sub_241CF8E88();
  sub_241C936C0(v20, qword_27EC69E28);

  v21 = sub_241CF8E68();
  v22 = sub_241CF9508();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_241CB3A88(0x73726F68747561, 0xE700000000000000, &v37);
    *(v23 + 12) = 2080;
    v25 = sub_241CF8F08();
    v27 = v26;

    v28 = sub_241CB3A88(v25, v27, &v37);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_241C8C000, v21, v22, "Missing author data for %s: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v24, -1, -1);
    MEMORY[0x245CFE970](v23, -1, -1);
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_241CBF214()
{

  v1 = OBJC_IVAR____TtC14BookFoundation7MAuthor_url;
  v2 = sub_241CF8CF8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id MAuthor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_241CBF348()
{
  result = qword_27EC6A300;
  if (!qword_27EC6A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A300);
  }

  return result;
}

uint64_t type metadata accessor for MAuthor(uint64_t a1)
{
  result = qword_27EC6A308;
  if (!qword_27EC6A308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CBF3F0(uint64_t a1)
{
  result = sub_241CF8CF8();
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

unint64_t sub_241CBF4A0()
{
  result = qword_27EC6A318;
  if (!qword_27EC6A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A318);
  }

  return result;
}

uint64_t ReflectedStringConvertible.description.getter(uint64_t a1)
{
  v3 = sub_241CF9A08();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = a1;
  v6 = sub_241CA8DEC(&v25);
  (*(*(a1 - 8) + 16))(v6, v1, a1);
  sub_241CF99D8();
  sub_241CF99E8();
  *&v25 = sub_241CF9A58();
  *(&v25 + 1) = v7;
  MEMORY[0x245CFD860](40, 0xE100000000000000);
  v28 = v25;
  v19 = v5;
  v18 = sub_241CF99F8();
  sub_241CF9768();
  sub_241CF9818();
  if (*(&v27 + 1))
  {
    v8 = MEMORY[0x277D84F90];
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      if (*(&v25 + 1))
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        MEMORY[0x245CFD860](*&v24[0]);
        MEMORY[0x245CFD860](8250, 0xE200000000000000);
        sub_241CF9788();
        v10 = v22;
        v9 = v23;
        sub_241CBF804(v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_241CBFC8C(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_241CBFC8C((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[16 * v12];
        *(v13 + 4) = v10;
        *(v13 + 5) = v9;
      }

      else
      {
        sub_241CBF804(v24);
      }

      sub_241CF9818();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *&v25 = v8;
  sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CAC078();
  v14 = sub_241CF8FA8();
  v16 = v15;

  MEMORY[0x245CFD860](v14, v16);

  MEMORY[0x245CFD860](41, 0xE100000000000000);
  (*(v20 + 8))(v19, v21);
  return v28;
}

uint64_t sub_241CBF804(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC6A320, &qword_241CFCF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_241CBF86C(void *result, int64_t a2, char a3, void *a4)
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
    sub_241C93918(&qword_27EC69BE0, &unk_241CFABE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_241C93918(&qword_27EC6A328, "$c");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_241CBF9B0(void *result, int64_t a2, char a3, void *a4)
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

  sub_241C93918(&qword_27EC69D90, &qword_241CFCF80);
  v10 = *(sub_241CF8B38() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_241CF8B38() - 8);
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

char *sub_241CBFB88(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC6A338, &unk_241CFED90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_241CBFC8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC69D98, &unk_241CFED80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_241CBFD98(void *result, int64_t a2, char a3, void *a4)
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
    sub_241C93918(&qword_27EC69DD0, &qword_241CFB0C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_241CBFEE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_241C93918(&qword_27EC6A330, &unk_241CFCF70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t Date.init(year:month:day:hour:minute:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[3] = a4;
  v30[4] = a5;
  v30[1] = a2;
  v30[2] = a3;
  v30[0] = a1;
  v31 = a7;
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = sub_241C93918(&qword_27EC6A340, &qword_241CFCF88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - v12;
  v14 = sub_241C93918(&qword_27EC6A348, &qword_241CFCF90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v30 - v15;
  v17 = sub_241CF8C48();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_241CF8E08();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v16, 1, 1, v21);
  v23 = sub_241CF8E38();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_241CF8C38();
  sub_241CF8BF8();
  sub_241CF8C08();
  sub_241CF8BD8();
  sub_241CF8BE8();
  sub_241CF8C28();
  sub_241CF8DD8();
  (*(v22 + 8))(a6, v21);
  (*(v18 + 8))(v20, v17);
  v24 = sub_241CF8D88();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v10, 1, v24) == 1)
  {
    sub_241CA0DE4(v10);
    v26 = 1;
    v27 = v31;
  }

  else
  {
    v28 = v31;
    (*(v25 + 32))(v31, v10, v24);
    v26 = 0;
    v27 = v28;
  }

  return (*(v25 + 56))(v27, v26, 1, v24);
}

uint64_t sub_241CC03F0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_241CF8DF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_241CF8DE8();
  (*(v4 + 8))(v6, v3);
  v10 = sub_241CF8D88();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a2, v9, v10);
  }

  __break(1u);
  return result;
}

uint64_t Date.isEqual(to:components:calendar:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_241CF8DF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241CF8C48();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v25 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241CF8DC8();
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;
  v23 = v4 + 8;
  v24 = v4 + 16;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    (*(v4 + 16))(v6, *(a2 + 48) + *(v4 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v3);
    v16 = sub_241CF8C18();
    v18 = v17;
    result = (*(v4 + 8))(v6, v3);
    if ((v18 & 1) == 0)
    {
      v11 &= v11 - 1;
      if (!v16)
      {
        continue;
      }
    }

    v19 = 0;
LABEL_13:
    (*(v21 + 8))(v25, v22);
    return v19;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v19 = 1;
      goto LABEL_13;
    }

    v11 = *(a2 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id MBookSeries.__allocating_init(with:config:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a2 + 8);
  v8[0] = *a2;
  v9 = v6;
  return MSeries.init(with:config:)(a1, v8);
}

id MBookSeries.init(with:config:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = *a2;
  v5 = v2;
  return MSeries.init(with:config:)(a1, v4);
}

id MBookSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MBookSeries(uint64_t a1)
{
  result = qword_27EC6A350;
  if (!qword_27EC6A350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CC09A0(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32))();
  if (!v5)
  {
    return 0;
  }

  v12[7] = v5;
  MEMORY[0x28223BE20](v5);
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_241CF9308();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_241CA2F08(sub_241CC3348, v12, v7, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  return v10;
}

uint64_t CommonLibrarySeriesInfoEmbedding.hasTooManyNarrators.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = v10[*(v7 + 100)];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.narratorCount.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *&v10[*(v7 + 92)];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.narratorNames.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *&v10[*(v7 + 96)];
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.assets.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *&v10[*(v7 + 60)];
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.authorCount.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *&v10[*(v7 + 64)];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.authorNames.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *&v10[*(v7 + 68)];
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.hasTooManyAuthors.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = v10[*(v7 + 72)];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.isExplicit.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = v10[*(v7 + 80)];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.isOrdered.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = v10[*(v7 + 84)];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.mappedSeriesInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  (*(a2 + 16))(a1, a2);
  v13 = &v12[*(v9 + 88)];
  v15 = *v13;
  v14 = *(v13 + 1);
  LOBYTE(a1) = v13[16];
  v16 = *(v10 + 8);

  result = v16(v12, v9);
  *a3 = v15;
  *(a3 + 8) = v14;
  *(a3 + 16) = a1;
  return result;
}

uint64_t CommonLibrarySeriesInfoEmbedding.assetLogID.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - v9);
  (*(a2 + 16))(a1, a2);
  v11 = *v10;
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.collectionMemberships.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *(v10 + 2);
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.id.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *(v10 + 3);
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.genreNames.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *&v10[*(v7 + 76)];
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.sortTitle.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *(v10 + 5);
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.storeID.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *(v10 + 7);
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.title.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = *(v10 + 9);
  v12 = *(v8 + 8);

  v12(v10, v7);
  return v11;
}

uint64_t CommonLibrarySeriesInfoEmbedding.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CommonLibrarySeriesInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  (*(a2 + 16))(a1, a2);
  sub_241CC22D0(&v12[*(v9 + 56)], a3);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_241CC22D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CommonLibrarySeriesInfo.assetLogID.getter()
{
  v0 = sub_241CC2DF0();

  return v0;
}

uint64_t CommonLibrarySeriesInfo.collectionMemberships.getter()
{
  sub_241CC2DF8();
}

uint64_t CommonLibrarySeriesInfo.id.getter()
{
  v0 = sub_241CC2DE8();

  return v0;
}

uint64_t CommonLibrarySeriesInfo.sortTitle.getter()
{
  v0 = sub_241CC2E00();

  return v0;
}

uint64_t CommonLibrarySeriesInfo.storeID.getter()
{
  v0 = sub_241CC2E08();

  return v0;
}

uint64_t CommonLibrarySeriesInfo.title.getter()
{
  v0 = sub_241CC2E10();

  return v0;
}

uint64_t CommonLibrarySeriesInfo.assets.getter(uint64_t a1)
{
  sub_241CC2DD0(a1);
}

uint64_t CommonLibrarySeriesInfo.authorNames.getter(uint64_t a1)
{
  sub_241CC2DDC(a1);
}

uint64_t CommonLibrarySeriesInfo.genreNames.getter(uint64_t a1)
{
  sub_241CC2E18(a1);
}

uint64_t CommonLibrarySeriesInfo.mappedSeriesInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 88));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
}

uint64_t CommonLibrarySeriesInfo.narratorNames.getter(uint64_t a1)
{
  sub_241CC2E24(a1);
}

uint64_t CommonLibrarySeriesInfo.init(assetLogID:collectionMemberships:id:sortTitle:storeID:title:url:assets:authorCount:authorNames:hasTooManyAuthors:isExplicit:isOrdered:genreNames:mappedSeriesInfo:narratorCount:narratorNames:hasTooManyNarrators:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, char a18, char a19, uint64_t a20, uint64_t *a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  v34 = a21[1];
  v35 = *a21;
  v33 = *(a21 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  v28 = type metadata accessor for CommonLibrarySeriesInfo(0, a26, a27, a4);
  result = sub_241CC2E30(a12, a9 + v28[14]);
  *(a9 + v28[15]) = a13;
  v30 = a9 + v28[16];
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  *(a9 + v28[17]) = a16;
  *(a9 + v28[18]) = a17;
  *(a9 + v28[20]) = a18;
  *(a9 + v28[21]) = a19;
  *(a9 + v28[19]) = a20;
  v31 = a9 + v28[23];
  *v31 = a22;
  *(v31 + 8) = a23 & 1;
  *(a9 + v28[24]) = a24;
  *(a9 + v28[25]) = a25;
  v32 = a9 + v28[22];
  *v32 = v35;
  *(v32 + 8) = v34;
  *(v32 + 16) = v33;
  return result;
}

uint64_t sub_241CC2718(uint64_t a1)
{
  sub_241CC2DD0(a1);
}

uint64_t sub_241CC275C(uint64_t a1)
{
  sub_241CC2DDC(a1);
}

uint64_t sub_241CC27AC(uint64_t a1)
{
  sub_241CC2E24(a1);
}

uint64_t sub_241CC27DC()
{
  v0 = sub_241CC2DF0();

  return v0;
}

uint64_t sub_241CC2814()
{
  sub_241CC2DF8();
}

uint64_t sub_241CC283C()
{
  v0 = sub_241CC2DE8();

  return v0;
}

uint64_t sub_241CC2874(uint64_t a1)
{
  sub_241CC2E18(a1);
}

uint64_t sub_241CC289C()
{
  v0 = sub_241CC2E00();

  return v0;
}

uint64_t sub_241CC28D4()
{
  v0 = sub_241CC2E08();

  return v0;
}

uint64_t sub_241CC290C()
{
  v0 = sub_241CC2E10();

  return v0;
}

uint64_t sub_241CC2948(uint64_t a1)
{
  swift_getWitnessTable();

  return ReflectedStringConvertible.description.getter(a1);
}

uint64_t sub_241CC299C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v12[4] = a4;
  v12[3] = a3;
  v8 = sub_241CA8DEC(v12);
  (*(*(a3 - 8) + 16))(v8, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LibraryAssetInfo.enriched(with:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
  return sub_241C8EEE8(v12);
}

uint64_t sub_241CC2AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_241C93918(a3, a4);
}

uint64_t sub_241CC2B38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_241C93918(a3, a4);
}

uint64_t sub_241CC2C58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_241C93918(a3, a4);
}

uint64_t sub_241CC2CD4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = (v3 + *(sub_241C93918(a1, a2) + 88));
  v7 = *v5;
  v6 = v5[1];
  LOBYTE(v5) = *(v5 + 16);
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
}

uint64_t sub_241CC2D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_241C93918(a3, a4);
}

uint64_t sub_241CC2D88@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = v3 + *(sub_241C93918(a1, a2) + 56);

  return sub_241CC22D0(v5, a3);
}

uint64_t sub_241CC2E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CC2EA8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CC2EE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CC2F20(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_241CC3080(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_241CC3240(319);
  if (v2 <= 0x3F)
  {
    sub_241CC32FC(319, &qword_27EC6A3E8, v1);
    if (v3 <= 0x3F)
    {
      sub_241CC32A4(319);
      if (v4 <= 0x3F)
      {
        sub_241CF9308();
        sub_241CF9598();
        if (v5 <= 0x3F)
        {
          sub_241CC32FC(319, &qword_27EC6A3F8, MEMORY[0x277D83B88]);
          if (v6 <= 0x3F)
          {
            sub_241CC32FC(319, &qword_27EC6A400, MEMORY[0x277D839B0]);
            if (v7 <= 0x3F)
            {
              sub_241CC32FC(319, &qword_27EC6A408, &type metadata for MappedSeriesInfo);
              if (v8 <= 0x3F)
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

void sub_241CC3240(uint64_t a1)
{
  if (!qword_27EC6A3E0)
  {
    sub_241C9452C(&qword_27EC69FC8, &unk_241CFBC30);
    v1 = sub_241CF9598();
    if (!v2)
    {
      atomic_store(v1, &qword_27EC6A3E0);
    }
  }
}

void sub_241CC32A4(uint64_t a1)
{
  if (!qword_27EC6A3F0)
  {
    sub_241CF8CF8();
    v1 = sub_241CF9598();
    if (!v2)
    {
      atomic_store(v1, &qword_27EC6A3F0);
    }
  }
}

void sub_241CC32FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_241CF9598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_241CC3384()
{
  sub_241CF9998();
  sub_241CF90B8();
  return sub_241CF99C8();
}

uint64_t sub_241CC33F8(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();
  return sub_241CF99C8();
}

uint64_t sub_241CC344C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_241CF9838();

  *a2 = v3 != 0;
  return result;
}

id MBook.__allocating_init(with:config:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a2 + 8);
  v8[0] = *a2;
  v9 = v6;
  return MAsset.init(with:config:)(a1, v8);
}

id MBook.init(with:config:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = *a2;
  v5 = v2;
  return MAsset.init(with:config:)(a1, v4);
}

id MBook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MBook.pageCount.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  sub_241CC361C();
  sub_241CD7154(v0, MEMORY[0x277D83B88], &v2);

  return v2;
}

unint64_t sub_241CC361C()
{
  result = qword_27EC6A418;
  if (!qword_27EC6A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A418);
  }

  return result;
}

uint64_t type metadata accessor for MBook(uint64_t a1)
{
  result = qword_27EC6A420;
  if (!qword_27EC6A420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_241CC3710()
{
  result = qword_27EC6A430;
  if (!qword_27EC6A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A430);
  }

  return result;
}

uint64_t OS_dispatch_group.wait(timeout:timeoutHandler:)(uint64_t a1, uint64_t (*a2)(void))
{
  sub_241CF9528();
  result = sub_241CF8E98();
  if (result)
  {
    return a2();
  }

  return result;
}

uint64_t ContentInfo.storeData.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 40))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    else
    {
      return *v10;
    }
  }

  else
  {
    v13 = *&v10[*(swift_getTupleTypeMetadata2() + 48)];
    (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
    return v13;
  }
}

uint64_t ContentInfo.id.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v5, a1, a2, &v7);

  return v7;
}

uint64_t ContentInfo.libraryData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v6, v7);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  (*(a2 + 40))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_5:
    v19 = *(v13 + 32);
    v19(v15, v12, AssociatedTypeWitness);
    v18 = v22;
    v19(v22, v15, AssociatedTypeWitness);
    v17 = 0;
    return (*(v13 + 56))(v18, v17, 1, AssociatedTypeWitness);
  }

  (*(v9 + 8))(v12, v8);
  v17 = 1;
  v18 = v22;
  return (*(v13 + 56))(v18, v17, 1, AssociatedTypeWitness);
}

void sub_241CC3C40(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v7 = *a1;
  v39 = a2;
  v46 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  v38 = *(v46 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v37 - v8;
  v11 = *v10;
  v14 = *v10;
  v40 = *(v12 + v13);
  v16 = type metadata accessor for ContentDataSource(0, v14, v40, v15);
  v41 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v42 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = *(a4 + 40);
  v43 = a3;
  v44 = a4;
  v25 = a3;
  v27 = v26;
  v24(v25, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(v41 + 8))(v21, v27);
      v29 = v46;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v30 = v45;
  (*(v45 + 32))(v23, v21, v11);
  swift_getAtKeyPath();
  (*(v30 + 8))(v23, v11);
  v29 = v46;
  v31 = *(v46 + 16);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v9, 1, v31) != 1)
  {
    v35 = v47;
    (*(v32 + 32))(v47, v9, v31);
    (*(v32 + 56))(v35, 0, 1, v31);
    return;
  }

  (*(v38 + 8))(v9, v29);
LABEL_7:
  v33 = v42;
  v24(v43, v44);
  v34 = swift_getEnumCaseMultiPayload();
  if (v34)
  {
    if (v34 == 1)
    {
      (*(*(*(v29 + 16) - 8) + 56))(v47, 1, 1);
      (*(v41 + 8))(v33, v27);
      return;
    }

    v36 = *v33;
  }

  else
  {
    v36 = *(v33 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v45 + 8))(v33, v11);
  }

  v48 = v36;
  swift_getAtKeyPath();
}

void sub_241CC40F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[0] = a4;
  v6 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, *(v6 + *MEMORY[0x277D84DE8]), v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v15 - v11);
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(*(*(v6 + *MEMORY[0x277D84DE8] + 8) + 16) - 8) + 56))(v15[0], 1, 1);
      (*(v10 + 8))(v12, v9);
      return;
    }

    v14 = *v12;
  }

  else
  {
    v14 = *(v12 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
  }

  v15[1] = v14;
  swift_getAtKeyPath();
}

void sub_241CC432C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a3;
  v20 = a5;
  v6 = *(*a2 + *MEMORY[0x277D84DE8]);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v18 - v8;
  v13 = type metadata accessor for ContentDataSource(0, v6, *(v10 + v11), v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v18 - v14);
  (*(a4 + 40))(v19, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v9, v15, v6);
      swift_getAtKeyPath();
      (*(v7 + 8))(v9, v6);
      return;
    }

    v17 = *v15;
  }

  else
  {
    v17 = *(v15 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v7 + 8))(v15, v6);
  }

  v21 = v17;
  swift_getAtKeyPath();
}

uint64_t sub_241CC4574@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a5;
  v6 = *(*a2 + *MEMORY[0x277D84DE8]);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - v8;
  v20 = v10;
  v13 = type metadata accessor for ContentDataSource(0, v6, *(v10 + v11), v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  (*(a4 + 40))(v21, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v9, v15, v6);
      swift_getAtKeyPath();
      return (*(v7 + 8))(v9, v6);
    }

    v18 = *v15;
  }

  else
  {
    v18 = *(v15 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v7 + 8))(v15, v6);
  }

  v23 = v18;
  v19 = v22;
  swift_getAtKeyPath();

  return (*(*(*(v20 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v19, 0, 1);
}

uint64_t ContentInfo.enrichingDataSource(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (v24 - v15);
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(AssociatedTypeWitness - 8) + 16))(v14, a1, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      (*(a3 + 48))(v14, a2, a3);
      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      v22 = *v16;
      v23 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(AssociatedTypeWitness - 8) + 16))(v14, a1, AssociatedTypeWitness);
      *&v14[v23] = v22;
      swift_storeEnumTagMultiPayload();
      return (*(a3 + 48))(v14, a2, a3);
    }
  }

  else
  {
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    v20 = *(v16 + v19);
    v21 = *(AssociatedTypeWitness - 8);
    (*(v21 + 16))(v14, a1, AssociatedTypeWitness);
    *&v14[v19] = v20;
    swift_storeEnumTagMultiPayload();
    (*(a3 + 48))(v14, a2, a3);
    return (*(v21 + 8))(v16, AssociatedTypeWitness);
  }
}

uint64_t ContentInfo.enrichingDataSource(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v34 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v35;
      (*(v7 + 32))(v35, v17, AssociatedTypeWitness);
      v20 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v7 + 16))(v15, v19, AssociatedTypeWitness);
      v21 = v36;
      *(v15 + v20) = v36;
      swift_storeEnumTagMultiPayload();
      v22 = *(a3 + 48);
      v23 = v21;
      v22(v15, a2, a3);
      return (*(v7 + 8))(v35, AssociatedTypeWitness);
    }

    else
    {
      (*(v12 + 8))(v17, v11);
      v31 = v36;
      *v15 = v36;
      swift_storeEnumTagMultiPayload();
      v32 = *(a3 + 48);
      v33 = v31;
      return v32(v15, a2, a3);
    }
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

    v26 = v35;
    (*(v7 + 32))(v35, v17, AssociatedTypeWitness);
    v27 = *(TupleTypeMetadata2 + 48);
    (*(v7 + 16))(v15, v26, AssociatedTypeWitness);
    v28 = v36;
    *(v15 + v27) = v36;
    swift_storeEnumTagMultiPayload();
    v29 = *(a3 + 48);
    v30 = v28;
    v29(v15, a2, a3);
    return (*(v7 + 8))(v26, AssociatedTypeWitness);
  }
}

uint64_t sub_241CC4F1C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 32);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t ContentInfo.title.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v20 - v6;
  v8 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v8, v9);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  (*(a2 + 40))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v12, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v15 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v5 + 8))(v7, AssociatedTypeWitness);
      return v15;
    }

    v16 = *v12;
  }

  else
  {
    v16 = *(v12 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v5 + 8))(v12, AssociatedTypeWitness);
  }

  type metadata accessor for MAsset(0);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = &OBJC_IVAR____TtC14BookFoundation6MAsset_name;
  }

  else
  {
    type metadata accessor for MSeries(0);
    v17 = swift_dynamicCastClass();
    if (!v17)
    {

      return 0;
    }

    v18 = &OBJC_IVAR____TtC14BookFoundation7MSeries_name;
  }

  v15 = *(v17 + *v18);

  return v15;
}

uint64_t ContentInfo.genres.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - v14);
  (*(a2 + 40))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v8, v15, AssociatedTypeWitness);
      v17 = sub_241CC58A4(v8, a1, a2);
      (*(v5 + 8))(v8, AssociatedTypeWitness);
    }

    else
    {
      v19 = *v15;
      v17 = sub_241CC54EC(*v15);
    }
  }

  else
  {
    v18 = *(v15 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v5 + 32))(v10, v15, AssociatedTypeWitness);
    v17 = sub_241CC54EC(v18);
    if (!v17)
    {
      v17 = sub_241CC58A4(v10, a1, a2);
    }

    (*(v5 + 8))(v10, AssociatedTypeWitness);
  }

  return v17;
}

uint64_t sub_241CC54EC(void *a1)
{
  type metadata accessor for MAsset(0);
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MSeries(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v2 = a1;
    v24 = sub_241CA8170(@"genres");
    if (v24)
    {
      v4 = v24;
      if (v24 >> 62)
      {
        goto LABEL_31;
      }

      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

LABEL_27:

    return 0;
  }

  v2 = a1;
  v3 = sub_241CA8170(@"genres");
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_241CF97D8();
    if (!v5)
    {
      goto LABEL_32;
    }

    goto LABEL_5;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v54 = MEMORY[0x277D84F90];
  sub_241C945D4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v54;
    v8 = v4;
    v43 = v2;
    v44 = v4 & 0xC000000000000001;
    v46 = v5;
    v48 = v4;
    do
    {
      v9 = v7;
      if (v44)
      {
        v10 = MEMORY[0x245CFDE40](v6, v8);
      }

      else
      {
        v10 = *(v8 + 8 * v6 + 32);
      }

      v11 = v10;
      v12 = *&v10[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
      v52 = *&v10[OBJC_IVAR____TtC14BookFoundation9MResource_id];
      v13 = *&v10[OBJC_IVAR____TtC14BookFoundation6MGenre_name + 8];
      v50 = *&v10[OBJC_IVAR____TtC14BookFoundation6MGenre_name];

      v14 = MGenre.parentId.getter();
      v16 = v15;
      v17 = MGenre.parentName.getter();
      v19 = v18;

      v7 = v9;
      v55 = v9;
      v20 = *(v9 + 16);
      v21 = *(v7 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_241C945D4((v21 > 1), v20 + 1, 1);
        v7 = v55;
      }

      ++v6;
      *(v7 + 16) = v20 + 1;
      v22 = (v7 + (v20 << 6));
      v22[4] = v52;
      v22[5] = v12;
      v22[6] = v50;
      v22[7] = v13;
      v22[8] = v14;
      v22[9] = v16;
      v22[10] = v17;
      v22[11] = v19;
      v8 = v48;
    }

    while (v46 != v6);
LABEL_26:
    v42 = v7;

    return v42;
  }

  __break(1u);
LABEL_31:
  v25 = sub_241CF97D8();
  if (!v25)
  {
    goto LABEL_32;
  }

LABEL_18:
  v56 = MEMORY[0x277D84F90];
  result = sub_241C945D4(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v7 = v56;
    v27 = v4;
    v43 = v2;
    v45 = v4 & 0xC000000000000001;
    v47 = v25;
    v49 = v4;
    do
    {
      v28 = v7;
      if (v45)
      {
        v29 = MEMORY[0x245CFDE40](v26, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = *&v29[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
      v53 = *&v29[OBJC_IVAR____TtC14BookFoundation9MResource_id];
      v32 = *&v29[OBJC_IVAR____TtC14BookFoundation6MGenre_name + 8];
      v51 = *&v29[OBJC_IVAR____TtC14BookFoundation6MGenre_name];

      v33 = MGenre.parentId.getter();
      v35 = v34;
      v36 = MGenre.parentName.getter();
      v38 = v37;

      v7 = v28;
      v57 = v28;
      v39 = *(v28 + 16);
      v40 = *(v7 + 24);
      if (v39 >= v40 >> 1)
      {
        sub_241C945D4((v40 > 1), v39 + 1, 1);
        v7 = v57;
      }

      ++v26;
      *(v7 + 16) = v39 + 1;
      v41 = (v7 + (v39 << 6));
      v41[4] = v53;
      v41[5] = v31;
      v41[6] = v51;
      v41[7] = v32;
      v41[8] = v33;
      v41[9] = v35;
      v41[10] = v36;
      v41[11] = v38;
      v27 = v49;
    }

    while (v47 != v26);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_241CC58A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  v6 = v4(v5, AssociatedConformanceWitness);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_241C945D4(0, v8, 0);
    v9 = v17;
    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v17 + 16);
      v14 = *(v17 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_241C945D4((v14 > 1), v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      v15 = v17 + (v13 << 6);
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = v12;
      *(v15 + 56) = v11;
      v10 += 2;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 0u;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

double ContentInfo.primaryGenre.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = ContentInfo.genres.getter(a1, a2);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = *(v4 + 48);
      v11 = *(v4 + 32);
      v12 = v5;
      v6 = *(v4 + 80);
      v13 = *(v4 + 64);
      v14 = v6;
      sub_241CC5AB0(&v11, &v10);

      v7 = v12;
      *a3 = v11;
      a3[1] = v7;
      result = *&v13;
      v9 = v14;
      a3[2] = v13;
      a3[3] = v9;
      return result;
    }
  }

  result = 0.0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void __swiftcall ContentInfo.topLevelPrimaryGenre(withExtraRootWithID:)(BookFoundation::GenreInfo_optional *__return_ptr retstr, Swift::String_optional withExtraRootWithID)
{
  v4 = v3;
  v5 = v2;
  *(&v65 + 1) = withExtraRootWithID.value._object;
  countAndFlagsBits = withExtraRootWithID.value._countAndFlagsBits;
  v8 = ContentInfo.genres.getter(v2, v3);
  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = v8;
  ContentInfo.primaryGenre.getter(v5, v4, &v77);
  v10 = *(&v78 + 1);
  v83 = v78;
  object = v79.value._object;
  v11 = v79.value._countAndFlagsBits;
  v81 = v80;
  v82 = v77;
  if (!*(&v78 + 1))
  {

LABEL_35:
    retstr->value.parentId = 0u;
    retstr->value.parentName = 0u;
    retstr->value.id = 0u;
    retstr->value.name = 0u;
    return;
  }

  *&v65 = countAndFlagsBits;
  v13 = sub_241CE066C(MEMORY[0x277D84F90]);
  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = v9 + 32;
  v17 = v14 - 1;
  while (2)
  {
    v18 = (v16 + (v15 << 6));
    v19 = v15;
    while (1)
    {
      if (v19 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v20 = v18[3];
      v22 = *v18;
      v21 = v18[1];
      v79 = v18[2];
      v80 = v20;
      v77 = v22;
      v78 = v21;
      v15 = v19 + 1;
      v23 = *(&v22 + 1);
      if (*(&v22 + 1))
      {
        break;
      }

      v18 += 4;
      ++v19;
      if (v14 == v15)
      {
        goto LABEL_21;
      }
    }

    v61 = v17;
    v62 = v16;
    v63 = retstr;
    v64 = v77;
    sub_241CC5AB0(&v77, &v73);
    sub_241CC5AB0(&v77, &v73);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v13;
    v25 = sub_241C8E1DC(v64, v23);
    v27 = v13[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v13[3] < v30)
    {
      v59 = v26;
      sub_241CC7688(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_241C8E1DC(v64, v23);
      v32 = v31 & 1;
      v26 = v59;
      if ((v59 & 1) != v32)
      {
        goto LABEL_40;
      }

LABEL_15:
      if (v26)
      {
        goto LABEL_16;
      }

LABEL_18:
      v13 = v66;
      v66[(v25 >> 6) + 8] |= 1 << v25;
      v42 = (v13[6] + 16 * v25);
      *v42 = v64;
      v42[1] = v23;
      v43 = (v13[7] + (v25 << 6));
      v45 = v79;
      v44 = v80;
      v46 = v78;
      *v43 = v77;
      v43[1] = v46;
      v43[2] = v45;
      v43[3] = v44;
      sub_241CC9238(&v77);
      v47 = v13[2];
      v29 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (!v29)
      {
        v13[2] = v48;
        goto LABEL_20;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      sub_241CF9938();
      __break(1u);
      return;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v60 = v25;
    v41 = v26;
    sub_241CC8AA8();
    v25 = v60;
    if ((v41 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v33 = v25;

    v13 = v66;
    v34 = (v66[7] + (v33 << 6));
    v35 = v34[3];
    v37 = *v34;
    v36 = v34[1];
    v75 = v34[2];
    v76 = v35;
    v73 = v37;
    v74 = v36;
    v38 = v77;
    v39 = v78;
    v40 = v80;
    v34[2] = v79;
    v34[3] = v40;
    *v34 = v38;
    v34[1] = v39;
    sub_241CC9238(&v73);
    sub_241CC9238(&v77);
LABEL_20:
    v16 = v62;
    retstr = v63;
    v17 = v61;
    if (v61 != v19)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v70 = v81;
  v71 = v82;
  v72 = v83;
  do
  {
    v50 = v11;
    v51 = object;
    if (!object || !v13[2] || (v52 = sub_241C8E1DC(v11, object), (v53 & 1) == 0) || (v54 = (v13[7] + (v52 << 6)), v55 = v54[1], v57 = v54[2], v56 = v54[3], v77 = *v54, v78 = v55, v79 = v57, v80 = v56, (object = v57.value._object) == 0))
    {
LABEL_32:

      goto LABEL_33;
    }

    if (*(&v65 + 1) && *(&v77 + 1))
    {
      if (v77 == v65 || (sub_241CF98C8() & 1) != 0)
      {
        goto LABEL_32;
      }

      object = v79.value._object;
    }

    v49 = *(&v78 + 1);
    v69 = v78;
    v11 = v79.value._countAndFlagsBits;
    v67 = v80;
    v68 = v77;
    v73 = v71;
    v74.value._countAndFlagsBits = v72;
    v74.value._object = v10;
    v75.value._countAndFlagsBits = v50;
    v75.value._object = v51;
    v76 = v70;
    sub_241CC5AB0(&v77, &v66);
    sub_241CC928C(&v73);
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v10 = v49;
  }

  while (v49);

  v50 = v11;
  v51 = object;
LABEL_33:
  v58 = v70;
  retstr->value.id = v71;
  retstr->value.name._countAndFlagsBits = v72;
  retstr->value.name._object = v10;
  retstr->value.parentId.value._countAndFlagsBits = v50;
  retstr->value.parentId.value._object = v51;
  retstr->value.parentName = v58;
}

uint64_t sub_241CC5F00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a4;
  v6 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, *(v6 + *MEMORY[0x277D84DE8]), v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v17 - v11);
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(*(v6 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v17[0], 1, 1);
      return (*(v10 + 8))(v12, v9);
    }

    v15 = *v12;
  }

  else
  {
    v15 = *(v12 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
  }

  v17[1] = v15;
  v16 = v17[0];
  swift_getAtKeyPath();

  return (*(*(*(v6 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v16, 0, 1);
}

uint64_t sub_241CC6184@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v8 = *a2;
  v40 = a2;
  v47 = *(*(v8 + *MEMORY[0x277D84DE8]) - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v39 = &v37 - v10;
  v48 = *(v11 + v12 + 8);
  v38 = *(v48 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  v16 = v15;
  v41 = *v17;
  v19 = type metadata accessor for ContentDataSource(0, v15, v41, v18);
  v42 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = (&v37 - v23);
  v25 = *(a4 + 40);
  v44 = a3;
  v45 = v5;
  v46 = a4;
  v43 = v25;
  v25(a3, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v42 + 8))(v24, v19);
      v28 = v48;
      v27 = v49;
      goto LABEL_8;
    }

    v29 = v49;
    v30 = *v24;
  }

  else
  {
    v29 = v49;
    v30 = *(v24 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v47 + 8))(v24, v16);
  }

  v28 = v48;
  v50 = v30;
  swift_getAtKeyPath();

  v31 = *(v28 + 16);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v14, 1, v31) != 1)
  {
    (*(v32 + 32))(v29, v14, v31);
    return (*(v32 + 56))(v29, 0, 1, v31);
  }

  (*(v38 + 8))(v14, v28);
  v27 = v29;
LABEL_8:
  v43(v44, v46);
  v33 = swift_getEnumCaseMultiPayload();
  if (v33)
  {
    if (v33 != 1)
    {
      (*(*(*(v28 + 16) - 8) + 56))(v27, 1, 1);
      return (*(v42 + 8))(v22, v19);
    }
  }

  else
  {
  }

  v35 = v47;
  v36 = v39;
  (*(v47 + 32))(v39, v22, v16);
  swift_getAtKeyPath();
  return (*(v35 + 8))(v36, v16);
}

uint64_t sub_241CC6640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v6 = *MEMORY[0x277D84DE8];
  v21 = *a1;
  v7 = *(v21 + v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource(0, v7, AssociatedTypeWitness, v9);
  v20 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v19 - v15;
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(*(*(*(v21 + *MEMORY[0x277D84DE8] + 8) + 16) - 8) + 56))(v22, 1, 1);
      return (*(v20 + 8))(v13, v10);
    }
  }

  else
  {
  }

  (*(v14 + 32))(v16, v13, v7);
  swift_getAtKeyPath();
  return (*(v14 + 8))(v16, v7);
}

uint64_t sub_241CC68E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v6 = *MEMORY[0x277D84DE8];
  v22 = *a1;
  v7 = *(v22 + v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource(0, v7, AssociatedTypeWitness, v9);
  v21 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(*(*(v22 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v23, 1, 1);
      return (*(v21 + 8))(v13, v10);
    }
  }

  else
  {
  }

  (*(v14 + 32))(v16, v13, v7);
  v19 = v23;
  swift_getAtKeyPath();
  (*(v14 + 8))(v16, v7);
  return (*(*(*(v22 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v19, 0, 1);
}

uint64_t sub_241CC6BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A440, "\ba");
  v30 = v4;
  result = sub_241CF97F8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_241CF9998();
      sub_241CF99B8();
      if (v20 != 6)
      {
        MEMORY[0x245CFE100](v20);
      }

      result = sub_241CF99C8();
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

LABEL_37:
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
        goto LABEL_37;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_35:
  *v3 = v7;
  return result;
}