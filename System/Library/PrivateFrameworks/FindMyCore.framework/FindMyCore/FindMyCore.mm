Swift::Bool __swiftcall FeatureFlagsKey.isEnabled()()
{
  v3 = v1;
  v4 = v0;
  v10 = v0;
  v11 = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  v6 = sub_24AE08558();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24AD8AFD4(v4, v3);
  }

  return v7 & 1;
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

const char *sub_24AD8AF0C()
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

id sub_24AD8AFD4(uint64_t a1, uint64_t a2)
{
  sub_24AE08988();
  v2 = sub_24AE09518();
  MEMORY[0x24C230FB0](v2);

  MEMORY[0x24C230FB0](95, 0xE100000000000000);
  sub_24AE08998();
  v3 = sub_24AE09518();
  MEMORY[0x24C230FB0](v3);

  if (qword_27EFA8620 != -1)
  {
    swift_once();
  }

  if (byte_27EFA8CF0 == 1)
  {
    v4 = qword_27EFA8CE8;
    v5 = sub_24AE08F88();
    v6 = [v4 BOOLForKey_];

    return v6;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24AD8B114()
{
  qword_27EFA8CD8 = 0;
  unk_27EFA8CE0 = 0;
  qword_27EFA8CE8 = [objc_opt_self() standardUserDefaults];
  result = sub_24AE08538();
  byte_27EFA8CF0 = result & 1;
  return result;
}

uint64_t type metadata accessor for FindMyRelativeDate(uint64_t a1)
{
  result = qword_281519E60;
  if (!qword_281519E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AD8B1B8(uint64_t a1)
{
  result = sub_24AE088E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swiftcall PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)(FindMyCore::PublishedLocation::Label *__return_ptr retstr, Swift::String_optional customLabel, Swift::String_optional coarseLabel, Swift::String_optional streetLabel, Swift::String_optional smallLabel, Swift::String_optional mediumLabel, Swift::String_optional largeLabel, Swift::String_optional poiLabel)
{
  object = smallLabel.value._object;
  countAndFlagsBits = smallLabel.value._countAndFlagsBits;
  v10 = streetLabel.value._object;
  v11 = streetLabel.value._countAndFlagsBits;
  v12 = coarseLabel.value._object;
  v13 = coarseLabel.value._countAndFlagsBits;
  v14 = customLabel.value._object;
  v15 = customLabel.value._countAndFlagsBits;
  if (!customLabel.value._object)
  {
    goto LABEL_5;
  }

  v17 = HIBYTE(customLabel.value._object) & 0xF;
  if ((customLabel.value._object & 0x2000000000000000) == 0)
  {
    v17 = customLabel.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    v15 = 0;
    v14 = 0;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
    if (!coarseLabel.value._object)
    {
      goto LABEL_9;
    }
  }

  v18 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
LABEL_9:
    v19 = mediumLabel.value._object;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v12 = 0;
  v19 = mediumLabel.value._object;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  v20 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v20 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v34 = 0;
    v10 = 0;
    goto LABEL_19;
  }

LABEL_13:
  v34 = v11;
LABEL_19:
  v21 = largeLabel.value._object;
  v22 = mediumLabel.value._countAndFlagsBits;
  v32 = v15;
  if (!object)
  {
    goto LABEL_23;
  }

  v23 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v23 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    v22 = mediumLabel.value._countAndFlagsBits;
    v35 = 0;
    object = 0;
  }

  else
  {
LABEL_23:
    v35 = countAndFlagsBits;
  }

  v24 = poiLabel.value._object;
  v25 = largeLabel.value._countAndFlagsBits;
  v33 = v13;
  if (v19)
  {
    v26 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      v22 = 0;
      v19 = 0;
    }
  }

  v27 = poiLabel.value._countAndFlagsBits;
  if (largeLabel.value._object)
  {
    v28 = (largeLabel.value._object >> 56) & 0xF;
    if ((largeLabel.value._object & 0x2000000000000000) == 0)
    {
      v28 = largeLabel.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      v29 = v22;

      v22 = v29;
      v25 = 0;
      v21 = 0;
    }
  }

  if (poiLabel.value._object)
  {
    v30 = (poiLabel.value._object >> 56) & 0xF;
    if ((poiLabel.value._object & 0x2000000000000000) == 0)
    {
      v30 = poiLabel.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      v31 = v22;

      v22 = v31;
      v27 = 0;
      v24 = 0;
    }
  }

  retstr->customLabel.value._countAndFlagsBits = v32;
  retstr->customLabel.value._object = v14;
  retstr->coarseLabel.value._countAndFlagsBits = v33;
  retstr->coarseLabel.value._object = v12;
  retstr->streetLabel.value._countAndFlagsBits = v34;
  retstr->streetLabel.value._object = v10;
  retstr->smallLabel.value._countAndFlagsBits = v35;
  retstr->smallLabel.value._object = object;
  retstr->mediumLabel.value._countAndFlagsBits = v22;
  retstr->mediumLabel.value._object = v19;
  retstr->largeLabel.value._countAndFlagsBits = v25;
  retstr->largeLabel.value._object = v21;
  retstr->poiLabel.value._countAndFlagsBits = v27;
  retstr->poiLabel.value._object = v24;
}

Swift::String_optional __swiftcall PublishedLocation.Label.combinedNoFallbackLabel(maxLength:)(FindMyCore::PublishedLocation::Label::Length maxLength)
{
  v2 = *maxLength;
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (v2)
  {
    v7 = v1[6];
    v8 = v1[7];
    v9 = v1[1];
    if (v2 == 1)
    {
      if (!v3)
      {
        v10 = v1[2];
        v11 = v5;
        v6 = v7;
        if (!v8)
        {
LABEL_14:
          sub_24AE08288();
          v6 = v10;
          v8 = v11;
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else if (!v3)
    {
      if (!v1[9])
      {
        if (v8)
        {
          v10 = v1[6];
          v11 = v8;
        }

        else
        {
          v10 = v1[2];
          v11 = sub_24AE08288();
        }

        goto LABEL_14;
      }

      v6 = v1[8];
      v8 = v1[9];
LABEL_15:
      sub_24AE08288();
      v4 = v6;
      v9 = v8;
    }
  }

  else
  {
    v8 = v1[3];
    v9 = v1[1];
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  sub_24AE08288();
  v12 = v4;
  v13 = v9;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_24AD8B564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AE088E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 56) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AD8B638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE088E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 56);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AD8B6F8()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8B7D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE08FB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD8B810()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8B8E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE089A8();
  *a1 = result;
  return result;
}

uint64_t sub_24AD8B918()
{
  v1 = *(v0 + 48);
  v11[0] = *(v0 + 32);
  v10 = *&v11[0];
  v11[1] = v1;
  v2 = *(type metadata accessor for DataCache.CacheType(0, v11) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v10 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  if (!(*(*(v7 - 8) + 48))(v0 + v4, 1, v7))
  {
    v8 = sub_24AE08818();
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v10);

  return swift_deallocObject();
}

uint64_t sub_24AD8BAE0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_24AE092D8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24AD8BC84()
{

  return swift_deallocObject();
}

uint64_t sub_24AD8BCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD8BD34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AD8BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE08718();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AD8BE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AE08718();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AD8BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AE086E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD8BFE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE086E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_24AD8C09C@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_24AD8C0DC@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  return result;
}

double sub_24AD8C144@<D0>(double *a1@<X8>)
{
  sub_24AE08398();
  result = v3;
  *a1 = v3;
  return result;
}

void *sub_24AD8C1AC@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_24AD8C1EC@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24AD8C22C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8C2D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8C380@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

BOOL sub_24AD8C454(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24AD8C484@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24AD8C4B0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24AD8C588@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24AD8C5B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24ADB4BB4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24AD8C664(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8C710(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_24AD8C7E8@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_24AD8C828@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  return result;
}

double sub_24AD8C890@<D0>(double *a1@<X8>)
{
  sub_24AE08398();
  result = v3;
  *a1 = v3;
  return result;
}

void *sub_24AD8C8F8@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_24AD8C938@<X0>(void *a1@<X8>)
{
  result = sub_24AE08398();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24AD8C978()
{
  v1 = sub_24AE08E08();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8CA04()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8CAD8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8CB84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersonModel(0);
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

uint64_t sub_24AD8CDCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersonModel(0);
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

uint64_t sub_24AD8CE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AD8CEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AD8CFA4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24AD8D060(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8D114()
{
  v1 = sub_24AE08E08();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D1A0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AE08E08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8D24C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AE08E08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8D2F8()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D3C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AD8D47C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8D52C()
{
  v1 = sub_24AE08E08();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D5B4()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24AD8D688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AD8D760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
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

id sub_24AD8D828@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 coordinate];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_24AD8D884@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 horizontalAccuracy];
  *a2 = v4;
  return result;
}

__n128 sub_24AD8D8F8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_24AD8D93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08928();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AD8D9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08928();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AD8DA28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DA34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DA90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PersonModel.Relationship(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD8DB3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PersonModel.Relationship(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD8DBF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DC00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24AD8DC10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for PersonModel(0);
  v5 = a1 + *(result + 36);
  v6 = *v5;
  v7 = *(v5 + 8) == 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7)
  {
    v8 = v6;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_24AD8DC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersonModel.Relationship.Following(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD8DD74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PersonModel.Relationship.Following(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PersonModel.Relationship.Follower(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_10FindMyCore10ItemEntityVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Session.fetchPeople(logger:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08E08();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD8DFDC, 0, 0);
}

uint64_t sub_24AD8DFDC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8808, &qword_24AE0A2A8);
  *v7 = v0;
  v7[1] = sub_24AD8E140;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A2A0, v6, v8);
}

uint64_t sub_24AD8E140()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24AD8E2C8;
  }

  else
  {

    v2 = sub_24AD8E25C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD8E25C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD8E2C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD8E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24AD8E3D4;

  return sub_24AD8E764(a3);
}

uint64_t sub_24AD8E3D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_24AD8E520, 0, 0);
  }
}

uint64_t sub_24AD8E544(uint64_t a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD8E628;

  return sub_24AD8E334(a1, v6, v1 + v5);
}

uint64_t sub_24AD8E628()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_24AD8E764(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for PersonModel(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for PersonModel.Relationship.Follower(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for PersonModel.Relationship.Following(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = sub_24AE088E8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8870, &unk_24AE0A2C0);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8880, &qword_24AE0A2D0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_24AE089D8();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v4 = sub_24AE08BA8();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v5 = sub_24AE08B38();
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v6 = sub_24AE08A48();
  v1[44] = v6;
  v1[45] = *(v6 - 8);
  v7 = swift_task_alloc();
  v1[46] = v7;
  v8 = swift_task_alloc();
  v1[47] = v8;
  *v8 = v1;
  v8[1] = sub_24AD8EBF0;

  return MEMORY[0x28215FA68](v7);
}

uint64_t sub_24AD8EBF0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24AD9103C;
  }

  else
  {
    v2 = sub_24AD8ED04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24AD8ED04()
{
  v365 = v0;
  v1 = v0[48];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[25];
  v299 = v0[15];
  v5 = v0[13];
  v296 = v0[3];
  v297 = v0[5];
  v6 = sub_24AE08A38();
  v7 = sub_24AD92744(v6);

  v310 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v309 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v309 setStyle_];
  v311 = sub_24ADC2030(MEMORY[0x277D84F90]);
  v8 = v7;
  v9 = 0;
  v10 = v8 + 8;
  v11 = -1;
  v12 = -1 << *(v8 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & v8[8];
  v14 = (63 - v12) >> 6;
  v337 = (v3 + 8);
  v358 = (v2 + 8);
  v315 = *MEMORY[0x277D09030];
  v343 = (v4 + 8);
  v344 = (v4 + 104);
  v314 = *MEMORY[0x277D09020];
  v316 = *MEMORY[0x277D09028];
  v298 = (v2 + 56);
  v301 = (v2 + 48);
  v302 = (v5 + 56);
  v300 = (v5 + 48);
  v293 = (v5 + 32);
  v294 = (v5 + 8);
  v295 = (v2 + 32);
  v313 = *MEMORY[0x277D09018];
  v312 = *MEMORY[0x277D09010];
  v304 = v1;
  v345 = v0;
  v323 = v8;
LABEL_5:
  if (v13)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      (*(v0[45] + 8))(v0[46], v0[44]);

      v268 = v0[1];

      v268(v311);
      return;
    }

    v13 = v10[v15];
    ++v9;
    if (v13)
    {
      v9 = v15;
LABEL_10:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = v16 | (v9 << 6);
      v18 = (v8[6] + 16 * v17);
      v19 = v18[1];
      v20 = *(v8[7] + 8 * v17);
      if (v19)
      {
        if (*(v20 + 16))
        {
          v340 = *(v20 + 16);
          v325 = v13;
          v282 = *v18;
          v31 = v0[31];
          v32 = v0[28];
          v292 = v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          v356 = *(v2 + 16);
          (v356)(v0[43]);
          sub_24AE08288();
          v288 = v19;
          sub_24AE08288();
          sub_24AE08B28();
          sub_24AD91240(&v359);
          v326 = *v337;
          (*v337)(v31, v32);
          v33 = v359;
          v286 = v360;
          v280 = v361;
          v276 = v362;
          v34 = v363;
          v35 = *(v20 + 16);
          v338 = v20;
          v308 = v2;
          v274 = v14;
          v275 = v10;
          v278 = v359;
          if (v35)
          {
            v364[0] = MEMORY[0x277D84F90];
            sub_24ADFB078(0, v35, 0);
            v36 = v364[0];
            v317 = *(v2 + 72);
            v37 = v292;
            do
            {
              v38 = v345[42];
              v40 = v345[31];
              v39 = v345[32];
              v41 = v345[28];
              v356(v38, v37, v39);
              sub_24AE08B28();
              sub_24AD91240(&v359);
              v43 = v359;
              v42 = v360;
              v346 = v361;
              v329 = v362;
              v351 = v363;
              v326(v40, v41);
              (*v358)(v38, v39);
              v364[0] = v36;
              v45 = *(v36 + 16);
              v44 = *(v36 + 24);
              v46 = v45 + 1;
              if (v45 >= v44 >> 1)
              {
                sub_24ADFB078((v44 > 1), v45 + 1, 1);
                v36 = v364[0];
              }

              *(v36 + 16) = v46;
              v47 = v36 + 48 * v45;
              *(v47 + 32) = v43;
              *(v47 + 40) = v42;
              *(v47 + 48) = v346;
              *(v47 + 56) = v329;
              *(v47 + 64) = v351;
              v37 += v317;
              --v35;
            }

            while (v35);
            v48 = MEMORY[0x277D84F90];
          }

          else
          {
            v48 = MEMORY[0x277D84F90];
            v46 = *(MEMORY[0x277D84F90] + 16);
            if (!v46)
            {
              v49 = MEMORY[0x277D84F90];

              goto LABEL_28;
            }

            v36 = MEMORY[0x277D84F90];
          }

          v364[0] = v48;
          sub_24ADFB038(0, v46, 0);
          v49 = v364[0];
          v50 = *(v364[0] + 16);
          v51 = 40 * v50 + 64;
          v52 = (v36 + 64);
          do
          {
            v53 = *(v52 - 3);
            v330 = *(v52 - 16);
            v54 = *v52;
            v347 = *(v52 - 4);
            v352 = *(v52 - 1);
            v364[0] = v49;
            v55 = *(v49 + 24);
            sub_24AE08288();
            sub_24AE08288();
            if (v50 >= v55 >> 1)
            {
              sub_24ADFB038((v55 > 1), v50 + 1, 1);
              v49 = v364[0];
            }

            *(v49 + 16) = v50 + 1;
            v56 = (v49 + v51);
            *(v56 - 4) = v347;
            *(v56 - 3) = v53;
            *(v56 - 16) = v330;
            v51 += 40;
            v52 += 6;
            ++v50;
            *(v56 - 1) = v352;
            *v56 = v54;
            --v46;
          }

          while (v46);

          v0 = v345;
          v33 = v278;
LABEL_28:
          PersonModel.AssociatedHandles.init(allHandles:)(v49, &v359);
          v57 = v360;
          if (v360)
          {
            v58 = *(&v363 + 1);
            v291 = v363;
            v284 = v362;
            v285 = v361;
            v59 = v359;
          }

          else
          {
            sub_24AE08288();
            sub_24AE08288();
            v58 = sub_24AE08288();
            v59 = v33;
            v57 = v286;
            v285 = v280;
            v284 = v276;
            v291 = v34;
          }

          v289 = v58;
          v290 = v57;
          v283 = v59;
          if ((v33 != v59 || v286 != v57) && (sub_24AE097C8() & 1) == 0 || v280 != v285 || (v276 != v284 || v34 != v291) && (sub_24AE097C8() & 1) == 0)
          {
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            v353 = sub_24AE08DE8();
            v60 = sub_24AE093F8();

            if (os_log_type_enabled(v353, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v359 = v62;
              *v61 = 136315394;
              sub_24AE08288();
              v63 = sub_24AD9F840(v278, v286, &v359);

              *(v61 + 4) = v63;
              *(v61 + 12) = 2080;
              sub_24AE08288();
              v64 = sub_24AD9F840(v283, v57, &v359);

              *(v61 + 14) = v64;
              _os_log_impl(&dword_24AD89000, v353, v60, "Main Handle mismatch detected: SingleHandle: %s, cleanHandle: %s", v61, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C231F80](v62, -1, -1);
              MEMORY[0x24C231F80](v61, -1, -1);
            }
          }

          v65 = *(&v34 + 1);
          v66 = sub_24AE08288();
          v67 = sub_24ADADF80(v66);

          v68 = v289;
          v69 = sub_24AE08288();
          v70 = sub_24ADADF80(v69);

          v71 = sub_24AE0040C(v67, v70);

          if ((v71 & 1) == 0)
          {
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            v354 = sub_24AE08DE8();
            v72 = sub_24AE093F8();

            v348 = v72;
            if (os_log_type_enabled(v354, v72))
            {
              v73 = swift_slowAlloc();
              v318 = swift_slowAlloc();
              v364[0] = v318;
              *v73 = 136315394;
              v74 = *(*(&v34 + 1) + 16);
              v331 = v73;
              if (v74)
              {
                v359 = MEMORY[0x277D84F90];
                sub_24ADFB058(0, v74, 0);
                v75 = 0;
                v76 = v359;
                v77 = *(v359 + 16);
                v78 = 16 * v77;
                do
                {
                  v79 = *(v65 + v75 + 32);
                  v80 = *(v65 + v75 + 40);
                  v359 = v76;
                  v81 = *(v76 + 24);
                  sub_24AE08288();
                  if (v77 >= v81 >> 1)
                  {
                    sub_24ADFB058((v81 > 1), v77 + 1, 1);
                    v76 = v359;
                  }

                  *(v76 + 16) = v77 + 1;
                  v82 = v76 + v78;
                  *(v82 + 32) = v79;
                  *(v82 + 40) = v80;
                  v78 += 16;
                  v75 += 40;
                  ++v77;
                  --v74;
                  v65 = *(&v34 + 1);
                }

                while (v74);

                v84 = v283;
                v73 = v331;
              }

              else
              {

                v76 = MEMORY[0x277D84F90];
                v84 = v283;
              }

              v85 = MEMORY[0x24C231100](v76, MEMORY[0x277D837D0]);
              v87 = v86;

              v88 = sub_24AD9F840(v85, v87, v364);

              *(v73 + 4) = v88;
              *(v73 + 12) = 2080;
              v89 = *(v289 + 16);
              if (v89)
              {
                v359 = MEMORY[0x277D84F90];
                sub_24ADFB058(0, v89, 0);
                v90 = v359;
                v91 = *(v359 + 16);
                v92 = 16 * v91;
                v93 = (v289 + 40);
                do
                {
                  v94 = *(v93 - 1);
                  v95 = *v93;
                  v359 = v90;
                  v96 = *(v90 + 24);
                  sub_24AE08288();
                  if (v91 >= v96 >> 1)
                  {
                    sub_24ADFB058((v96 > 1), v91 + 1, 1);
                    v90 = v359;
                  }

                  *(v90 + 16) = v91 + 1;
                  v97 = v90 + v92;
                  *(v97 + 32) = v94;
                  *(v97 + 40) = v95;
                  v92 += 16;
                  v93 += 5;
                  ++v91;
                  --v89;
                }

                while (v89);
                v84 = v283;
                v73 = v331;
              }

              else
              {
                v90 = MEMORY[0x277D84F90];
              }

              v98 = MEMORY[0x24C231100](v90, MEMORY[0x277D837D0]);
              v100 = v99;

              v101 = sub_24AD9F840(v98, v100, v364);

              *(v73 + 14) = v101;
              _os_log_impl(&dword_24AD89000, v354, v348, "Other Handles mismatch detected: SingleHandle: %s, cleanHandle: %s", v73, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C231F80](v318, -1, -1);
              MEMORY[0x24C231F80](v73, -1, -1);

              v0 = v345;
              v68 = v289;
              v83 = v304;
LABEL_61:
              v359 = v84;
              v360 = v290;
              v361 = v285;
              v362 = v284;
              *&v363 = v291;
              *(&v363 + 1) = v68;
              v102 = sub_24ADFD714(&v359, v310);
              if (v83)
              {
                sub_24AE08288();
                v103 = sub_24AE08DE8();
                v104 = sub_24AE093F8();

                if (os_log_type_enabled(v103, v104))
                {
                  v105 = swift_slowAlloc();
                  v106 = swift_slowAlloc();
                  v359 = v106;
                  *v105 = 136315394;
                  *(v105 + 4) = sub_24AD9F840(0xD00000000000001BLL, 0x800000024AE12EC0, &v359);
                  *(v105 + 12) = 2082;
                  sub_24AE08288();
                  v107 = sub_24AD9F840(v282, v288, &v359);

                  *(v105 + 14) = v107;
                  _os_log_impl(&dword_24AD89000, v103, v104, "%s - Couldn't fetch CNContact for %{public}s", v105, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C231F80](v106, -1, -1);
                  MEMORY[0x24C231F80](v105, -1, -1);
                }

                v287 = 0;
                v108 = v308;
              }

              else
              {
                v108 = v308;
                if (v102)
                {
                  v133 = v102;
                  v134 = [v309 stringFromContact_];
                  v287 = v133;
                  if (v134)
                  {
                    v135 = v134;
                    v136 = sub_24AE08FB8();
                    v277 = v137;
                    v279 = v136;

                    v113 = v326;
                    goto LABEL_66;
                  }
                }

                else
                {
                  v287 = 0;
                }
              }

              v109 = v0[31];
              v110 = v0[28];
              sub_24AE08B28();
              v111 = sub_24AE08B48();
              v277 = v112;
              v279 = v111;
              v113 = v326;
              v326(v109, v110);
LABEL_66:
              sub_24AE08288();
              v349 = *(v108 + 72);
              v114 = v292;
              v115 = v340;
              v116 = MEMORY[0x277D84F90];
              do
              {
                v117 = v0[30];
                v118 = v0[28];
                v356(v0[41], v114, v0[32]);
                sub_24AE08B28();
                v119 = sub_24AE08B58();
                v121 = v120;
                v113(v117, v118);
                v122 = v0[41];
                v123 = v0[32];
                if (v121)
                {
                  v124 = sub_24AD9158C(v119, v121);
                  v126 = v125;
                  v355 = *v358;
                  (*v358)(v122, v123);
                  if ((v126 & 1) == 0)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v116 = sub_24ADAAB10(0, *(v116 + 2) + 1, 1, v116);
                    }

                    v128 = *(v116 + 2);
                    v127 = *(v116 + 3);
                    if (v128 >= v127 >> 1)
                    {
                      v116 = sub_24ADAAB10((v127 > 1), v128 + 1, 1, v116);
                    }

                    *(v116 + 2) = v128 + 1;
                    *&v116[8 * v128 + 32] = v124;
                  }
                }

                else
                {
                  v355 = *v358;
                  (*v358)(v0[41], v0[32]);
                }

                v114 += v349;
                --v115;
              }

              while (v115);
              v129 = *(v116 + 2);
              if (v129)
              {
                v130 = *(v116 + 4);
                v131 = v129 - 1;
                if (v129 != 1)
                {
                  if (v129 < 5)
                  {
                    v132 = 1;
                    goto LABEL_87;
                  }

                  v132 = v131 & 0xFFFFFFFFFFFFFFFCLL | 1;
                  v138 = vdupq_n_s64(v130);
                  v139 = (v116 + 56);
                  v140 = v131 & 0xFFFFFFFFFFFFFFFCLL;
                  v141 = v138;
                  do
                  {
                    v138 = vbslq_s8(vcgtq_s64(v138, v139[-1]), v139[-1], v138);
                    v141 = vbslq_s8(vcgtq_s64(v141, *v139), *v139, v141);
                    v139 += 2;
                    v140 -= 4;
                  }

                  while (v140);
                  v142 = vbslq_s8(vcgtq_s64(v141, v138), v138, v141);
                  v143 = vextq_s8(v142, v142, 8uLL).u64[0];
                  v130 = vbsl_s8(vcgtd_s64(v143, v142.i64[0]), *v142.i8, v143);
                  if (v131 != (v131 & 0xFFFFFFFFFFFFFFFCLL))
                  {
LABEL_87:
                    v144 = v129 - v132;
                    v145 = &v116[8 * v132 + 32];
                    do
                    {
                      v147 = *v145;
                      v145 += 8;
                      v146 = v147;
                      if (v147 < v130)
                      {
                        v130 = v146;
                      }

                      --v144;
                    }

                    while (v144);
                  }
                }
              }

              else
              {
                v130 = 0;
              }

              v272 = *(v116 + 2);
              v273 = v130;

              v148 = 0;
              v149 = v292;
              v150 = v338;
              do
              {
                v305 = v148;
                if (v340 == v148)
                {
                  break;
                }

                if (v148 >= *(v150 + 16))
                {
                  goto LABEL_172;
                }

                v332 = v149 + v349;
                ++v148;
                v151 = v0[40];
                v152 = v0[32];
                v154 = v0[26];
                v153 = v0[27];
                v155 = v0[24];
                (v356)(v151);
                sub_24AE08B08();
                (*v344)(v154, v315, v155);
                v156 = sub_24AE089C8();
                v157 = *v343;
                (*v343)(v154, v155);
                v157(v153, v155);
                v150 = v338;
                v0 = v345;
                v355(v151, v152);
                v149 = v332;
              }

              while ((v156 & 1) == 0);
              v158 = 0;
              v159 = v292;
              do
              {
                v303 = v158;
                if (v340 == v158)
                {
                  break;
                }

                if (v158 >= *(v150 + 16))
                {
                  goto LABEL_173;
                }

                v333 = v159 + v349;
                ++v158;
                v160 = v0[39];
                v161 = v0[32];
                v163 = v0[26];
                v162 = v0[27];
                v164 = v0[24];
                (v356)(v160);
                sub_24AE08B08();
                (*v344)(v163, v314, v164);
                v165 = sub_24AE089C8();
                v166 = *v343;
                (*v343)(v163, v164);
                v166(v162, v164);
                v150 = v338;
                v0 = v345;
                v355(v160, v161);
                v159 = v333;
              }

              while ((v165 & 1) == 0);
              v167 = 0;
              v168 = v292;
              while (1)
              {
                if (v167 >= *(v338 + 16))
                {
                  goto LABEL_171;
                }

                v170 = v0[26];
                v169 = v0[27];
                v171 = v0[24];
                v356(v0[38], v168, v0[32]);
                sub_24AE08B08();
                v334 = *v344;
                (*v344)(v170, v316, v171);
                v172 = sub_24AE089C8();
                v173 = *v343;
                (*v343)(v170, v171);
                v327 = v173;
                v173(v169, v171);
                if (v172)
                {
                  break;
                }

                ++v167;
                v355(v0[38], v0[32]);
                v168 += v349;
                if (v340 == v167)
                {
                  v174 = 1;
                  goto LABEL_105;
                }
              }

              (*v295)(v0[23], v0[38], v0[32]);
              v174 = 0;
LABEL_105:
              v175 = v0[32];
              v177 = v0[22];
              v176 = v0[23];
              (*v298)(v176, v174, 1, v175);
              sub_24AD92B7C(v176, v177, &qword_27EFA8880, &qword_24AE0A2D0);
              v319 = *v301;
              if ((*v301)(v177, 1, v175) == 1)
              {
                v178 = v0[19];
                v179 = v0[12];
                sub_24AD92BE4(v0[22], &qword_27EFA8880, &qword_24AE0A2D0);
                (*v302)(v178, 1, 1, v179);
              }

              else
              {
                v180 = v0[32];
                v181 = v0[22];
                sub_24AE08B18();
                v355(v181, v180);
              }

              v183 = v0[18];
              v182 = v0[19];
              v184 = v0[16];
              v185 = v0[12];
              sub_24AE08868();
              v186 = *v302;
              (*v302)(v183, 0, 1, v185);
              v187 = *(v299 + 48);
              sub_24AD92B7C(v182, v184, &qword_27EFA8878, &qword_24AE0E6E0);
              sub_24AD92B7C(v183, v184 + v187, &qword_27EFA8878, &qword_24AE0E6E0);
              v188 = *v300;
              v189 = (*v300)(v184, 1, v185);
              v190 = v0[12];
              v281 = v186;
              if (v189 == 1)
              {
                v191 = v0[19];
                sub_24AD92BE4(v0[18], &qword_27EFA8878, &qword_24AE0E6E0);
                sub_24AD92BE4(v191, &qword_27EFA8878, &qword_24AE0E6E0);
                if (v188(v184 + v187, 1, v190) == 1)
                {
                  sub_24AD92BE4(v0[16], &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_118:
                  v201 = v0[20];
                  v202 = v0[12];
                  goto LABEL_119;
                }
              }

              else
              {
                sub_24AD92B7C(v0[16], v0[17], &qword_27EFA8878, &qword_24AE0E6E0);
                v192 = v188(v184 + v187, 1, v190);
                v193 = v0[18];
                v194 = v0[19];
                v195 = v0[17];
                if (v192 != 1)
                {
                  v270 = v0[16];
                  v205 = v0[14];
                  v206 = v0[12];
                  (*v293)(v205, v184 + v187, v206);
                  sub_24AD92ED0(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                  v269 = sub_24AE08EF8();
                  v207 = *v294;
                  (*v294)(v205, v206);
                  sub_24AD92BE4(v193, &qword_27EFA8878, &qword_24AE0E6E0);
                  sub_24AD92BE4(v194, &qword_27EFA8878, &qword_24AE0E6E0);
                  v208 = v206;
                  v186 = v281;
                  v207(v195, v208);
                  sub_24AD92BE4(v270, &qword_27EFA8878, &qword_24AE0E6E0);
                  if (v269)
                  {
                    goto LABEL_118;
                  }

LABEL_114:
                  v197 = v0[32];
                  v198 = v0[21];
                  sub_24AD92B7C(v0[23], v198, &qword_27EFA8880, &qword_24AE0A2D0);
                  if (v319(v198, 1, v197) != 1)
                  {
                    v203 = v0[32];
                    v204 = v0[21];
                    sub_24AE08B18();
                    v355(v204, v203);
LABEL_120:
                    v271 = v319(v0[23], 1, v0[32]);
                    v209 = 0;
                    v210 = v292;
                    do
                    {
                      v211 = v209;
                      if (v340 == v209)
                      {
                        break;
                      }

                      if (v209 >= *(v338 + 16))
                      {
                        goto LABEL_174;
                      }

                      v320 = v210 + v349;
                      ++v209;
                      v212 = v345[37];
                      v213 = v345[32];
                      v215 = v345[26];
                      v214 = v345[27];
                      v216 = v345[24];
                      (v356)(v212);
                      sub_24AE08B08();
                      v334(v215, v313, v216);
                      v217 = sub_24AE089C8();
                      v327(v215, v216);
                      v327(v214, v216);
                      v355(v212, v213);
                      v210 = v320;
                    }

                    while ((v217 & 1) == 0);
                    v218 = 0;
                    v219 = v292;
                    do
                    {
                      v220 = v218;
                      if (v340 == v218)
                      {
                        break;
                      }

                      if (v218 >= *(v338 + 16))
                      {
                        goto LABEL_175;
                      }

                      v321 = v219 + v349;
                      ++v218;
                      v221 = v345[36];
                      v222 = v345[32];
                      v224 = v345[26];
                      v223 = v345[27];
                      v225 = v345[24];
                      (v356)(v221);
                      sub_24AE08B08();
                      v334(v224, v312, v225);
                      v226 = sub_24AE089C8();
                      v327(v224, v225);
                      v327(v223, v225);
                      v355(v221, v222);
                      v219 = v321;
                    }

                    while ((v226 & 1) == 0);
                    sub_24AE08288();
                    sub_24AE08288();
                    v227 = sub_24AE08DE8();
                    v228 = sub_24AE093E8();

                    if (os_log_type_enabled(v227, v228))
                    {
                      v335 = v345[32];
                      v229 = swift_slowAlloc();
                      v230 = swift_slowAlloc();
                      v359 = v230;
                      *v229 = 136315650;
                      *(v229 + 4) = sub_24AD9F840(0xD00000000000001BLL, 0x800000024AE12EC0, &v359);
                      *(v229 + 12) = 2080;
                      v231 = sub_24AD9F840(v282, v288, &v359);

                      *(v229 + 14) = v231;
                      *(v229 + 22) = 2080;
                      v232 = MEMORY[0x24C231100](v338, v335);
                      v234 = sub_24AD9F840(v232, v233, &v359);

                      *(v229 + 24) = v234;
                      _os_log_impl(&dword_24AD89000, v227, v228, "%s - compactMap %s - %s", v229, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x24C231F80](v230, -1, -1);
                      MEMORY[0x24C231F80](v229, -1, -1);
                    }

                    else
                    {
                    }

                    if (v340 == v305)
                    {
                      if (v340 == v303)
                      {
                        v235 = v345;
                        goto LABEL_137;
                      }

                      v235 = v345;
                      v238 = v345[10];
                    }

                    else
                    {
                      v235 = v345;
                      v236 = v345[12];
                      v237 = v345[10];
                      v238 = v237 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
                      v281(v237, 1, 1, v236);
                    }

                    v281(v238, 1, 1, v235[12]);
LABEL_137:
                    v240 = v235[10];
                    v239 = v235[11];
                    swift_storeEnumTagMultiPayload();
                    sub_24AD92C44(v240, v239, type metadata accessor for PersonModel.Relationship.Following);
                    if (v271 == 1)
                    {
                      if (v340 == v211 && v340 == v220)
                      {
                        v235 = v345;
                        v241 = v338;
                        v242 = v340;
LABEL_144:
                        v247 = v235[7];
                        v246 = v235[8];
                        swift_storeEnumTagMultiPayload();
                        sub_24AD92C44(v247, v246, type metadata accessor for PersonModel.Relationship.Follower);
                        v248 = 0;
                        v249 = v292;
                        while (1)
                        {
                          if (v248 >= *(v241 + 16))
                          {
                            goto LABEL_169;
                          }

                          v250 = v235[35];
                          v251 = v235[32];
                          v356(v250, v249, v251);
                          v252 = sub_24AE08AF8();
                          v355(v250, v251);
                          if (v252 != 2 && (v252 & 1) != 0)
                          {
                            break;
                          }

                          ++v248;
                          v249 += v349;
                          if (v242 == v248)
                          {
                            v341 = 0;
                            goto LABEL_151;
                          }
                        }

                        v341 = 1;
LABEL_151:
                        v253 = v292;
                        v254 = 0;
                        while (1)
                        {
                          if (v254 >= *(v241 + 16))
                          {
                            goto LABEL_170;
                          }

                          v255 = v235[34];
                          v256 = v235[32];
                          v356(v255, v253, v256);
                          v257 = sub_24AE08AF8();
                          v355(v255, v256);
                          if (v257 != 2 && (v257 & 1) == 0)
                          {
                            break;
                          }

                          ++v254;
                          v253 += v349;
                          if (v242 == v254)
                          {

                            if (v341)
                            {
                              v258 = 0;
                            }

                            else
                            {
                              v258 = 2;
                            }

LABEL_160:
                            v357 = v258;
                            sub_24AE08288();
                            if (v287)
                            {
                              v259 = [v287 identifier];

                              v322 = sub_24AE08FB8();
                              v306 = v260;
                            }

                            else
                            {
                              v287 = 0;
                              v322 = 0;
                              v306 = 0;
                            }

                            v0 = v345;
                            v339 = v345[32];
                            v342 = v345[43];
                            v350 = v345[23];
                            v336 = v345[20];
                            v328 = v345[11];
                            v261 = v345[8];
                            v262 = v345[4];
                            v263 = v345[5];
                            v264 = v263 + *(v296 + 32);
                            sub_24AD92CAC(v328, v264, type metadata accessor for PersonModel.Relationship.Following);
                            v265 = type metadata accessor for PersonModel.Relationship(0);
                            sub_24AD92CAC(v261, v264 + *(v265 + 20), type metadata accessor for PersonModel.Relationship.Follower);
                            *(v264 + *(v265 + 24)) = v357;
                            *v263 = v282;
                            *(v297 + 8) = v288;
                            *(v297 + 16) = v283;
                            *(v297 + 24) = v290;
                            *(v297 + 32) = v285;
                            *(v297 + 40) = v284;
                            *(v297 + 48) = v291;
                            *(v297 + 56) = v289;
                            *(v297 + 64) = v279;
                            *(v297 + 72) = v277;
                            *(v297 + 80) = v322;
                            *(v297 + 88) = v306;
                            v266 = v263 + *(v296 + 36);
                            *v266 = v273;
                            v266[8] = v272 == 0;
                            sub_24AD92CAC(v263, v262, type metadata accessor for PersonModel);
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            v359 = v311;
                            sub_24ADBEF5C(v262, v282, v288, isUniquelyReferenced_nonNull_native);

                            sub_24AD92D14(v261, type metadata accessor for PersonModel.Relationship.Follower);
                            sub_24AD92D14(v328, type metadata accessor for PersonModel.Relationship.Following);
                            sub_24AD92BE4(v336, &qword_27EFA8878, &qword_24AE0E6E0);
                            v355(v342, v339);
                            v311 = v359;
                            sub_24AD92D14(v263, type metadata accessor for PersonModel);
                            sub_24AD92BE4(v350, &qword_27EFA8880, &qword_24AE0A2D0);
                            v304 = 0;
                            v8 = v323;
                            v13 = v325;
                            v2 = v308;
                            v14 = v274;
                            v10 = v275;
                            goto LABEL_5;
                          }
                        }

                        v258 = v341 ^ 1;
                        goto LABEL_160;
                      }

                      v235 = v345;
                      v245 = v345[7];
                      v242 = v340;
                    }

                    else
                    {
                      v243 = v235[20];
                      v244 = v235[7];
                      v245 = v244 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
                      sub_24AD92B7C(v243, v244, &qword_27EFA8878, &qword_24AE0E6E0);
                      v242 = v340;
                    }

                    v281(v245, 1, 1, v235[12]);
                    v241 = v338;
                    goto LABEL_144;
                  }

                  v199 = v0[20];
                  v200 = v0[12];
                  sub_24AD92BE4(v0[21], &qword_27EFA8880, &qword_24AE0A2D0);
                  v201 = v199;
                  v202 = v200;
LABEL_119:
                  v186(v201, 1, 1, v202);
                  goto LABEL_120;
                }

                v196 = v0[12];
                sub_24AD92BE4(v0[18], &qword_27EFA8878, &qword_24AE0E6E0);
                sub_24AD92BE4(v194, &qword_27EFA8878, &qword_24AE0E6E0);
                (*v294)(v195, v196);
              }

              sub_24AD92BE4(v0[16], &qword_27EFA8870, &unk_24AE0A2C0);
              goto LABEL_114;
            }
          }

          v83 = v304;
          v84 = v283;
          goto LABEL_61;
        }
      }

      else
      {
        v324 = v13;
        sub_24AE08288();
        v21 = sub_24AE08DE8();
        v22 = sub_24AE093F8();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = v0[32];
          v24 = swift_slowAlloc();
          v307 = v2;
          v25 = swift_slowAlloc();
          v359 = v25;
          *v24 = 136315394;
          *(v24 + 4) = sub_24AD9F840(0xD00000000000001BLL, 0x800000024AE12EC0, &v359);
          *(v24 + 12) = 2080;
          v26 = MEMORY[0x24C231100](v20, v23);
          v28 = v27;

          v29 = sub_24AD9F840(v26, v28, &v359);

          *(v24 + 14) = v29;
          _os_log_impl(&dword_24AD89000, v21, v22, "%s - compactMap: Found NIL key with values: %s", v24, 0x16u);
          swift_arrayDestroy();
          v30 = v25;
          v2 = v307;
          MEMORY[0x24C231F80](v30, -1, -1);
          MEMORY[0x24C231F80](v24, -1, -1);
        }

        else
        {
        }

        v8 = v323;
        v13 = v324;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
}

uint64_t sub_24AD9103C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Handle.fmuiPersonServerIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE08B98();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD91240@<X0>(uint64_t x8_0@<X8>)
{
  v3 = sub_24AE08B48();
  PersonModel.Handle.init(rawValue:)(v3, v4, v39);
  v35[0] = v39[0];
  v35[1] = v39[1];
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v5 = sub_24AE08B78();
  v6 = *(v5 + 16);
  if (!v6)
  {

    return PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v35, x8_0);
  }

  v32 = x8_0;
  v34 = MEMORY[0x277D84F90];
  sub_24ADFB038(0, v6, 0);
  v7 = (v5 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = sub_24AE09008();
    v11 = v10;
    v13 = v12;
    v14 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      sub_24AE08288();
      v19 = 2;
      goto LABEL_17;
    }

    v33 = v10;
    sub_24AD92D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24AE0A280;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_24AD92DC0();
    *(v15 + 32) = 0xD000000000000029;
    *(v15 + 40) = 0x800000024AE12EE0;
    sub_24AE08288();
    v16 = sub_24AE093C8();
    v17 = sub_24AE08F88();
    v18 = [v16 evaluateWithObject_];

    if (v18)
    {
      v19 = 1;
    }

    else if (sub_24ADFEF04(v8, v9))
    {
      sub_24ADA4B88();
      v20 = sub_24AE08F88();
      v21 = sub_24AE08F88();

      v22 = CFPhoneNumberCreate();

      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = v22;
      String = CFPhoneNumberCreateString();
      if (!String)
      {

LABEL_15:
        v19 = 0;
        goto LABEL_16;
      }

      v25 = String;
      v8 = sub_24AE08FB8();
      v27 = v26;

      v19 = 0;
      v9 = v27;
    }

    else
    {
      v19 = 2;
    }

LABEL_16:
    v11 = v33;
LABEL_17:
    v29 = *(v34 + 16);
    v28 = *(v34 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_24ADFB038((v28 > 1), v29 + 1, 1);
    }

    *(v34 + 16) = v29 + 1;
    v30 = v34 + 40 * v29;
    *(v30 + 32) = v11;
    *(v30 + 40) = v13;
    *(v30 + 48) = v19;
    *(v30 + 56) = v8;
    *(v30 + 64) = v9;
    v7 += 2;
    --v6;
  }

  while (v6);

  x8_0 = v32;
  return PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v35, x8_0);
}

unint64_t sub_24AD9158C(unint64_t result, unint64_t a2)
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
        result = sub_24AE09568();
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

  v6 = sub_24AD91D44(result, a2, 10);
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

uint64_t Handle.fmuiPersonUniqueIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AE08B98();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD918BC(uint64_t a1, id *a2)
{
  result = sub_24AE08F98();
  *a2 = 0;
  return result;
}

uint64_t sub_24AD91934(uint64_t a1, id *a2)
{
  v3 = sub_24AE08FA8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24AD919B4@<X0>(uint64_t *a2@<X8>)
{
  sub_24AE08FB8();
  v3 = sub_24AE08F88();

  *a2 = v3;
  return result;
}

uint64_t sub_24AD919F8(uint64_t a1)
{
  v2 = sub_24AD92ED0(&qword_27EFA8910, type metadata accessor for SPBeaconType, &unk_24AE0A424);
  v3 = sub_24AD92ED0(&qword_27EFA8918, type metadata accessor for SPBeaconType, &unk_24AE0A3C4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AD91AB4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24AE08F88();

  *a2 = v3;
  return result;
}

uint64_t sub_24AD91AFC(uint64_t a1)
{
  v2 = sub_24AD92ED0(&qword_27EFA8900, type metadata accessor for SPBeaconLocationSource, &unk_24AE0A57C);
  v3 = sub_24AD92ED0(&qword_27EFA8908, type metadata accessor for SPBeaconLocationSource, &unk_24AE0A51C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AD91BB8()
{
  v0 = sub_24AE08FB8();
  v1 = MEMORY[0x24C231020](v0);

  return v1;
}

uint64_t sub_24AD91BF4(uint64_t a1)
{
  sub_24AE08FB8();
  sub_24AE09048();
}

uint64_t sub_24AD91C48(uint64_t a1)
{
  sub_24AE08FB8();
  sub_24AE09838();
  sub_24AE09048();
  v1 = sub_24AE09868();

  return v1;
}

uint64_t sub_24AD91CBC(void *a1, uint64_t *a2)
{
  v2 = sub_24AE08FB8();
  v4 = v3;
  if (v2 == sub_24AE08FB8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24AE097C8();
  }

  return v7 & 1;
}

unsigned __int8 *sub_24AD91D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_24AE08288();
  result = sub_24AE090F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24AD922D0(result, v5);
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
      result = sub_24AE09568();
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

uint64_t sub_24AD922D0(uint64_t a1, unint64_t a2)
{
  v2 = sub_24AE09108();
  v6 = sub_24AD92350(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24AD92350(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24AE09448();
    if (!v9 || (v10 = v9, v11 = sub_24AD9FC80(v9, 0), v12 = sub_24AD924A8(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_24AE08288(), , v12 == v10))
    {
      v13 = sub_24AE09038();

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
      return sub_24AE09038();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24AE09568();
LABEL_4:

  return sub_24AE09038();
}

unint64_t sub_24AD924A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24AD926C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24AE090B8();
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
          result = sub_24AE09568();
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

    result = sub_24AD926C8(v12, a6, a7);
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

    result = sub_24AE09098();
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

unint64_t sub_24AD926C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24AE090C8();
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
    v5 = MEMORY[0x24C230FE0](15, a1 >> 16);
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

void *sub_24AD92744(uint64_t a1)
{
  v2 = sub_24AE08BA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24AE08B38();
  v6 = MEMORY[0x28223BE20](v61);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v47 - v9;
  v10 = MEMORY[0x277D84F98];
  v62 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v49 = *(v12 + 64);
  v14 = *(v12 + 56);
  v54 = (v49 + 32) & ~v49;
  v15 = a1 + v54;
  v55 = (v3 + 8);
  v56 = v13;
  v58 = (v12 + 16);
  v48 = xmmword_24AE0A280;
  v50 = v5;
  v51 = v2;
  v52 = v14;
  v53 = v12;
  while (1)
  {
    v59 = v11;
    v56(v60, v15, v61);
    sub_24AE08B28();
    v19 = sub_24AE08B98();
    v21 = v20;
    v22 = v20 ? v19 : 0;
    v23 = v5;
    (*v55)(v5, v2);
    v25 = sub_24ADD69DC(v22, v21);
    v26 = v10[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_24ADBDA64(v28, 1);
      v10 = v62;
      v30 = sub_24ADD69DC(v22, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }

      v25 = v30;
    }

    if (v29)
    {

      v32 = v10[7];
      v33 = *v58;
      (*v58)(v57, v60, v61);
      v34 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_24ADAAC14(0, v34[2] + 1, 1, v34);
        *(v32 + 8 * v25) = v34;
      }

      v36 = v59;
      v38 = v34[2];
      v37 = v34[3];
      if (v38 >= v37 >> 1)
      {
        v34 = sub_24ADAAC14((v37 > 1), v38 + 1, 1, v34);
        *(v32 + 8 * v25) = v34;
      }

      v2 = v51;
      v16 = v52;
      v34[2] = v38 + 1;
      v17 = v34 + v54 + v38 * v16;
      v18 = v16;
      v33(v17, v57, v61);
      v5 = v50;
    }

    else
    {
      v39 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88B0, &unk_24AE0BA00);
      v40 = v54;
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      (*v58)((v41 + v40), v60, v61);
      v10[(v25 >> 6) + 8] |= 1 << v25;
      v42 = (v10[6] + 16 * v25);
      *v42 = v22;
      v42[1] = v21;
      *(v10[7] + 8 * v25) = v41;
      v43 = v10[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_21;
      }

      v10[2] = v45;
      v2 = v39;
      v18 = v52;
      v5 = v23;
      v36 = v59;
    }

    v15 += v18;
    v11 = v36 - 1;
    if (!v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88B8, &qword_24AE0A2F0);
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

uint64_t sub_24AD92B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AD92BE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AD92C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AD92CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AD92D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AD92D74()
{
  result = qword_27EFA8898;
  if (!qword_27EFA8898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFA8898);
  }

  return result;
}

unint64_t sub_24AD92DC0()
{
  result = qword_27EFA88A8;
  if (!qword_27EFA88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA88A8);
  }

  return result;
}

void sub_24AD92E3C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_24AD92ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24AD930A8(uint64_t a1)
{
  v52 = sub_24AE089B8();
  MEMORY[0x28223BE20](v52);
  v53 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v50 = *MEMORY[0x277D08FD8];
  v49 = (v2 + 104);
  v48 = *MEMORY[0x277D08FE0];
  v44 = v2 + 32;
  v45 = v2;
  v43 = (v2 + 8);
  v42 = xmmword_24AE0A280;
  v46 = a1;
  v47 = v10;
  while (v9)
  {
LABEL_9:
    v12 = *(a1 + 48) + 24 * (__clz(__rbit64(v9)) | (v4 << 6));
    v13 = *(v12 + 8);
    v51 = *v12;
    v14 = *(v12 + 16);
    if (v14)
    {
      v15 = v48;
    }

    else
    {
      v15 = v50;
    }

    v16 = v53;
    (*v49)(v53, v15, v52);
    sub_24AE08288();
    v18 = sub_24ADD6A80(v16);
    v19 = v5[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_26;
    }

    v22 = v17;
    if (v5[3] < v21)
    {
      sub_24ADBE0E8(v21, 1);
      v5 = v54;
      v23 = sub_24ADD6A80(v53);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_28;
      }

      v18 = v23;
    }

    v9 &= v9 - 1;
    if (v22)
    {
      (*v43)(v53, v52);
      v25 = v5[7];
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      v41 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_24ADAAC64(0, *(v26 + 2) + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v40 = v29 + 1;
        v37 = sub_24ADAAC64((v28 > 1), v29 + 1, 1, v26);
        v30 = v40;
        v26 = v37;
        *(v41 + 8 * v18) = v37;
      }

      *(v26 + 2) = v30;
      v31 = &v26[24 * v29];
      *(v31 + 4) = v51;
      *(v31 + 5) = v13;
      v31[48] = v14;
      a1 = v46;
      v10 = v47;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AE8, &qword_24AE0A768);
      v32 = swift_allocObject();
      *(v32 + 16) = v42;
      v33 = v52;
      *(v32 + 32) = v51;
      *(v32 + 40) = v13;
      *(v32 + 48) = v14;
      v5[(v18 >> 6) + 8] |= 1 << v18;
      (*(v45 + 32))(v5[6] + *(v45 + 72) * v18, v53, v33);
      *(v5[7] + 8 * v18) = v32;
      v34 = v5[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_27;
      }

      v5[2] = v36;
      v10 = v47;
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v11);
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

uint64_t Session.fetchPeopleLocations(_:logger:)(uint64_t *a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = sub_24AE08E08();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v7 = swift_task_alloc();
  v8 = *a1;
  v3[8] = v7;
  v3[9] = v8;

  return MEMORY[0x2822009F8](sub_24AD93528, 0, 0);
}

uint64_t sub_24AD93528()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v1;
  (*(v3 + 32))(v7 + v6, v2, v4);

  sub_24AE08288();
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA0, &qword_24AE0A628);
  *v8 = v0;
  v8[1] = sub_24AD936A0;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A620, v7, v9);
}

uint64_t sub_24AD936A0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24AD937BC;
  }

  else
  {

    v2 = sub_24AD8E25C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD937BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD9382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[2] = a3;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_24AD938E0;

  return sub_24AD93B34(v4 + 2);
}

uint64_t sub_24AD938E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_24AD93A2C;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_24AD93A08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD93A44(uint64_t a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD9B61C;

  return sub_24AD9382C(a1, v6, v7, v1 + v5);
}

uint64_t sub_24AD93B34(uint64_t *a1)
{
  v2[18] = v1;
  v4 = sub_24AE08AC8();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_24AE089F8();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_24AE088E8();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B00, &qword_24AE0A7A0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_24AE08BA8();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  v8 = sub_24AE08A48();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  v2[37] = v9;
  v2[38] = v10;

  return MEMORY[0x2822009F8](sub_24AD93DC0, 0, 0);
}

uint64_t sub_24AD93DC0()
{
  if (v0[38])
  {
    v1 = swift_task_alloc();
    v0[39] = v1;
    *v1 = v0;
    v1[1] = sub_24AD93F28;
    v2 = v0[37];

    return MEMORY[0x28215FA68](v2);
  }

  else
  {
    v3 = sub_24ADC2DB0(MEMORY[0x277D84F90]);

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_24AD93F28()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_24AD94DA0;
  }

  else
  {
    v2 = sub_24AD9403C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD9403C()
{
  v1 = v0;
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  v5 = sub_24AE08A28();
  v6 = (*(v2 + 8))(v3, v4);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v0[38];
    v11 = v0[33];
    v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v32 = v5 + v26;
    v34 = v10 + 56;
    v25 = (v11 + 32);
    v31 = (v11 + 8);
    v12 = MEMORY[0x277D84F90];
    v28 = *(v5 + 16);
    v29 = v5;
    v27 = v11;
    v35 = v10;
    while (v9 < *(v5 + 16))
    {
      v33 = *(v11 + 72);
      (*(v11 + 16))(v1[34], v32 + v33 * v9, v1[32]);
      v36 = sub_24AE08B98();
      if (v13)
      {
        v14 = v13;
        if (*(v10 + 16))
        {
          v30 = v12;
          sub_24AE09838();
          MEMORY[0x24C230FB0](v36, v14);
          sub_24AE09048();

          v15 = sub_24AE09868() & ~(-1 << *(v10 + 32));
          if ((*(v34 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            v16 = (*(v35 + 48) + 16 * v15);
            v18 = *v16;
            v17 = v16[1];
            sub_24AE08288();
            MEMORY[0x24C230FB0](v18, v17);
            MEMORY[0x24C230FB0](v36, v14);

            v12 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_24ADAAC3C(0, v30[2] + 1, 1, v30);
            }

            v1 = v0;
            v8 = v28;
            v5 = v29;
            v10 = v35;
            v20 = v12[2];
            v19 = v12[3];
            if (v20 >= v19 >> 1)
            {
              v12 = sub_24ADAAC3C((v19 > 1), v20 + 1, 1, v12);
            }

            v21 = v0[34];
            v22 = v0[32];
            v12[2] = v20 + 1;
            v6 = (*v25)(v12 + v26 + v20 * v33, v21, v22);
          }

          else
          {
            v1 = v0;
            (*v31)(v0[34], v0[32]);

            v5 = v29;
            v8 = v28;
            v10 = v35;
          }

          v11 = v27;
        }

        else
        {
          (*v31)(v1[34], v1[32]);
        }
      }

      else
      {
        v6 = (*v31)(v1[34], v1[32]);
      }

      if (++v9 == v8)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_20:
    v1[41] = v12;
    v23 = swift_task_alloc();
    v1[42] = v23;
    *v23 = v1;
    v23[1] = sub_24AD94484;
    v6 = v12;
    v7 = 1;
  }

  return MEMORY[0x28215FBA0](v6, v7);
}

uint64_t sub_24AD94484(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_24AD94E6C;
  }

  else
  {

    v4 = sub_24AD945A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD945A0()
{
  v91 = v0;
  v1 = v0[43];
  v2 = v0[33];
  v86 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v80 = sub_24ADC2DB0(MEMORY[0x277D84F90]);
  v6 = v1 + 64;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 64);
  v10 = (63 - v8) >> 6;
  v83 = v2;
  v85 = (v2 + 8);
  v78 = (v4 + 88);
  v79 = (v3 + 8);
  v77 = *MEMORY[0x277D09088];
  v74 = *MEMORY[0x277D09078];
  v72 = *MEMORY[0x277D09080];
  v70 = *MEMORY[0x277D09090];
  v68 = (v4 + 8);
  v76 = (v5 + 88);
  v75 = *MEMORY[0x277D090F8];
  v73 = *MEMORY[0x277D090E0];
  v71 = *MEMORY[0x277D09100];
  v69 = *MEMORY[0x277D090F0];
  v67 = *MEMORY[0x277D090E8];
  v65 = (v5 + 8);
  v66 = *MEMORY[0x277D090D8];
  v84 = v1;
  result = sub_24AE08288();
  v12 = 0;
  v81 = v10;
  v82 = v1 + 64;
LABEL_4:
  v13 = v12;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v12 = v13;
LABEL_9:
    v14 = *(v87 + 248);
    v15 = *(v87 + 240);
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v12 << 6);
    (*(v83 + 16))(v14, *(v84 + 48) + *(v83 + 72) * v17, *(v87 + 256));
    v18 = *(v84 + 56);
    v19 = sub_24AE08D28();
    v20 = *(v19 - 8);
    v21 = v19;
    (*(v20 + 16))(v14 + *(v86 + 48), v18 + *(v20 + 72) * v17);
    sub_24AD92B7C(v14, v15, &qword_27EFA8B00, &qword_24AE0A7A0);
    v22 = *(v86 + 48);
    v23 = sub_24AE08B98();
    v26 = *(v87 + 248);
    v25 = *(v87 + 256);
    v27 = *(v87 + 240);
    if (v24)
    {
      v63 = v24;
      v64 = v23;
      v53 = *(v87 + 232);
      v54 = *(v87 + 216);
      v55 = *(v87 + 200);
      v56 = *(v87 + 192);
      v58 = *(v87 + 176);
      v62 = *v85;
      (*v85)(v27, v25);
      v61 = *(v20 + 8);
      v61(v15 + v22, v21);
      sub_24AD92B7C(v26, v53, &qword_27EFA8B00, &qword_24AE0A7A0);
      v28 = *(v86 + 48);
      sub_24AE08CF8();
      v30 = v29;
      sub_24AE08D08();
      v32 = v31;
      sub_24AE08CD8();
      v34 = v33;
      sub_24AE08C88();
      v36 = v35;
      sub_24AE08C78();
      v38 = v37;
      sub_24AE08CA8();
      v40 = v39;
      sub_24AE08D18();
      sub_24AE088B8();
      v41 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v42 = sub_24AE08898();
      v43 = [v41 initWithCoordinate:v42 altitude:v30 horizontalAccuracy:v32 verticalAccuracy:v34 course:v36 courseAccuracy:v38 speed:0.0 speedAccuracy:0.0 timestamp:{v40, 0}];

      (*v79)(v54, v55);
      sub_24AE08C68();
      v44 = (*v78)(v56, v58);
      if (v44 == v77)
      {
        v59 = 0;
      }

      else
      {
        if (v44 == v74)
        {
          v45 = 1;
        }

        else if (v44 == v72)
        {
          v45 = 2;
        }

        else if (v44 == v70)
        {
          v45 = 3;
        }

        else
        {
          (*v68)(*(v87 + 192), *(v87 + 176));
          v45 = 5;
        }

        v59 = v45;
      }

      v46 = *(v87 + 168);
      v47 = *(v87 + 152);
      sub_24AE08C98();
      v48 = (*v76)(v46, v47);
      if (v48 != v75)
      {
        if (v48 == v73)
        {
          v49 = 1;
          goto LABEL_34;
        }

        if (v48 == v71)
        {
          v49 = 2;
          goto LABEL_34;
        }

        if (v48 == v69)
        {
          v49 = 3;
          goto LABEL_34;
        }

        if (v48 == v67)
        {
          v49 = 4;
          goto LABEL_34;
        }

        if (v48 == v66)
        {
          v49 = 5;
          goto LABEL_34;
        }

        (*v65)(*(v87 + 168), *(v87 + 152));
      }

      v49 = 0;
LABEL_34:
      v50 = *(v87 + 248);
      v60 = *(v87 + 256);
      v57 = *(v87 + 232);
      sub_24AD9A428(v89);
      *&v88[38] = v89[2];
      *&v88[22] = v89[1];
      *&v88[6] = v89[0];
      *&v88[102] = v89[6];
      *&v88[86] = v89[5];
      *&v88[70] = v89[4];
      *&v88[54] = v89[3];
      *(v87 + 16) = v43;
      *(v87 + 24) = v59;
      *(v87 + 25) = v49;
      *(v87 + 74) = *&v88[48];
      *(v87 + 58) = *&v88[32];
      *(v87 + 42) = *&v88[16];
      *(v87 + 26) = *v88;
      *(v87 + 136) = *&v88[110];
      *(v87 + 122) = *&v88[96];
      *(v87 + 106) = *&v88[80];
      *(v87 + 90) = *&v88[64];
      v61(v53 + v28, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v80;
      sub_24ADBF0C0((v87 + 16), v64, v63, isUniquelyReferenced_nonNull_native);

      sub_24AD92BE4(v50, &qword_27EFA8B00, &qword_24AE0A7A0);
      v80 = v90;
      result = (v62)(v57, v60);
      v10 = v81;
      v6 = v82;
      goto LABEL_4;
    }

    sub_24AD92BE4(v26, &qword_27EFA8B00, &qword_24AE0A7A0);
    (*v85)(v27, v25);
    result = (*(v20 + 8))(v15 + v22, v21);
    v13 = v12;
    v10 = v81;
    v6 = v82;
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v52 = *(v87 + 8);

  return v52(v80);
}

uint64_t sub_24AD94DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD94E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

__n128 Location.fmuiPublishedLocation.getter@<Q0>(uint64_t a1@<X8>)
{
  v38 = sub_24AE08AC8();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24AE089F8();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AE088E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE08CF8();
  v12 = v11;
  sub_24AE08D08();
  v14 = v13;
  sub_24AE08CD8();
  v16 = v15;
  sub_24AE08C88();
  v18 = v17;
  sub_24AE08C78();
  v20 = v19;
  sub_24AE08CA8();
  v22 = v21;
  sub_24AE08D18();
  sub_24AE088B8();
  v23 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v24 = sub_24AE08898();
  v25 = [v23 initWithCoordinate:v24 altitude:v12 horizontalAccuracy:v14 verticalAccuracy:v16 course:v18 courseAccuracy:v20 speed:0.0 speedAccuracy:0.0 timestamp:{v22, 0}];

  (*(v8 + 8))(v10, v7);
  sub_24AE08C68();
  v26 = v36;
  v27 = (*(v36 + 88))(v6, v4);
  if (v27 == *MEMORY[0x277D09088])
  {
    v28 = 0;
  }

  else if (v27 == *MEMORY[0x277D09078])
  {
    v28 = 1;
  }

  else if (v27 == *MEMORY[0x277D09080])
  {
    v28 = 2;
  }

  else if (v27 == *MEMORY[0x277D09090])
  {
    v28 = 3;
  }

  else
  {
    (*(v26 + 8))(v6, v4);
    v28 = 5;
  }

  sub_24AE08C98();
  v29 = v37;
  v30 = v38;
  v31 = (*(v37 + 88))(v3, v38);
  if (v31 != *MEMORY[0x277D090F8])
  {
    if (v31 == *MEMORY[0x277D090E0])
    {
      v32 = 1;
      goto LABEL_22;
    }

    if (v31 == *MEMORY[0x277D09100])
    {
      v32 = 2;
      goto LABEL_22;
    }

    if (v31 == *MEMORY[0x277D090F0])
    {
      v32 = 3;
      goto LABEL_22;
    }

    if (v31 == *MEMORY[0x277D090E8])
    {
      v32 = 4;
      goto LABEL_22;
    }

    if (v31 == *MEMORY[0x277D090D8])
    {
      v32 = 5;
      goto LABEL_22;
    }

    (*(v29 + 8))(v3, v30);
  }

  v32 = 0;
LABEL_22:
  sub_24AD9A428(v39);
  *a1 = v25;
  *(a1 + 8) = v28;
  *(a1 + 9) = v32;
  v33 = v39[5];
  *(a1 + 80) = v39[4];
  *(a1 + 96) = v33;
  *(a1 + 112) = v39[6];
  v34 = v39[1];
  *(a1 + 16) = v39[0];
  *(a1 + 32) = v34;
  result = v39[3];
  *(a1 + 48) = v39[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t Session.addSubscriptions(subscriptions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD953DC, 0, 0);
}

uint64_t sub_24AD953DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_24AE08288();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24AD954E0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v4, 0xD02AB486CEDC0000, 0, &unk_24AE0A640, v3, v5);
}

uint64_t sub_24AD954E0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24AD95614;
  }

  else
  {

    v2 = sub_24AD955FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD95614()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD95678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AD8E628;

  return sub_24AD95714(a3);
}

uint64_t sub_24AD95714(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08C48();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_24AE08C58();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_24AE089B8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_24AE08A48();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[21] = v8;
  v9 = swift_task_alloc();
  v2[22] = v9;
  *v9 = v2;
  v9[1] = sub_24AD959D0;

  return MEMORY[0x28215FA68](v8);
}

uint64_t sub_24AD959D0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24AD96544;
  }

  else
  {
    v2 = sub_24AD95AE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD95AE4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = sub_24AE08288();
  v6 = sub_24AD930A8(v5);
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  v8 = sub_24AD9B058(sub_24AD9B600, v7, v6);

  *(v0 + 16) = v8;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750, MEMORY[0x277D83520]);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710, MEMORY[0x277CC8C98]);
  v9 = sub_24AE09118();
  *(v0 + 192) = v9;
  (*(v3 + 8))(v2, v4);

  v14 = *(v9 + 16);
  *(v0 + 200) = v14;
  *(v0 + 240) = *MEMORY[0x277D094A8];
  if (v14)
  {
    v15 = *(v0 + 192);
    if (!*(v15 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FB30](v10, v11, v12, v13);
    }

    v16 = *(v0 + 112);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v18 = *(v17 - 8);
    sub_24AD92B7C(v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v16, &qword_27EFA8AD8, &qword_24AE0A758);
    v19 = 1;
    (*(v18 + 56))(v16, 0, 1, v17);
  }

  else
  {
    v20 = *(v0 + 112);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v19 = *(v0 + 200);
  }

  *(v0 + 208) = v19;
  v22 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) != 1)
  {
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(*(v0 + 120) + *(v23 + 48));
    *(v0 + 216) = v31;
    (*(v30 + 32))(v29);
    v32 = [objc_opt_self() mainBundle];
    v33 = [v32 bundleIdentifier];

    if (v33)
    {
      sub_24AE08FB8();
    }

    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v34 = swift_task_alloc();
    *(v0 + 224) = v34;
    *v34 = v0;
    v34[1] = sub_24AD95FE0;
    v11 = *(v0 + 104);
    v13 = *(v0 + 80);
    v10 = v31;
    v12 = 1;

    return MEMORY[0x28215FB30](v10, v11, v12, v13);
  }

  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v26 = *(v0 + 152);

  (*(v25 + 8))(v24, v26);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24AD95FE0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {

    v3 = sub_24AD96604;
  }

  else
  {
    v3 = sub_24AD9615C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD9615C()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v5 = *(v0 + 208);
  if (v5 == *(v0 + 200))
  {
    v6 = *(v0 + 112);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 200);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v0 + 192);
  if (v5 >= *(v9 + 16))
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x28215FB30](v1, v2, v3, v4);
  }

  v10 = *(v0 + 112);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v12 = *(v11 - 8);
  sub_24AD92B7C(v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v5, v10, &qword_27EFA8AD8, &qword_24AE0A758);
  v8 = v5 + 1;
  (*(v12 + 56))(v10, 0, 1, v11);
LABEL_6:
  *(v0 + 208) = v8;
  v13 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(*(v0 + 120) + *(v14 + 48));
    *(v0 + 216) = v22;
    (*(v21 + 32))(v20);
    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      sub_24AE08FB8();
    }

    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v25 = swift_task_alloc();
    *(v0 + 224) = v25;
    *v25 = v0;
    v25[1] = sub_24AD95FE0;
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v1 = v22;
    v3 = 1;

    return MEMORY[0x28215FB30](v1, v2, v3, v4);
  }

  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 152);

  (*(v16 + 8))(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24AD96544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD96604()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD966FC(uint64_t a1)
{
  v2 = sub_24AE08BA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  result = sub_24AE08A28();
  v9 = result;
  v41 = *(result + 16);
  if (v41)
  {
    v10 = 0;
    v40 = v3 + 16;
    v43 = a1 + 56;
    v30 = (v3 + 32);
    v39 = (v3 + 8);
    v32 = MEMORY[0x277D84F90];
    v36 = v2;
    v35 = v3;
    v34 = result;
    v33 = v7;
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v12 = *(v3 + 72);
      (*(v3 + 16))(v7, v9 + v11 + v12 * v10, v2);
      v44 = sub_24AE08B68();
      if (v13)
      {
        v14 = v13;
        v37 = v12;
        v38 = v11;
        if (*(a1 + 16))
        {
          sub_24AE09838();
          v45 = 0x3A3156444953;
          v46 = 0xE600000000000000;
          MEMORY[0x24C230FB0](v44, v14);
          sub_24AE09048();

          v15 = sub_24AE09868();
          v16 = -1 << *(a1 + 32);
          v17 = v15 & ~v16;
          if ((*(v43 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v42 = ~v16;
            while (1)
            {
              v18 = (*(a1 + 48) + 16 * v17);
              v19 = *v18;
              v20 = v18[1];
              v47 = 0x3A3156444953;
              v48 = 0xE600000000000000;
              sub_24AE08288();
              MEMORY[0x24C230FB0](v19, v20);
              v21 = v47;
              v22 = v48;
              v47 = 0x3A3156444953;
              v48 = 0xE600000000000000;
              MEMORY[0x24C230FB0](v44, v14);
              if (v21 == v47 && v22 == v48)
              {
                break;
              }

              v23 = sub_24AE097C8();

              if (v23)
              {
                goto LABEL_17;
              }

              v17 = (v17 + 1) & v42;
              if (((*(v43 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

LABEL_17:

            v24 = *v30;
            v7 = v33;
            v2 = v36;
            (*v30)(v31, v33, v36);
            v25 = v32;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24ADFB098(0, *(v25 + 16) + 1, 1);
              v25 = v49;
            }

            v28 = *(v25 + 16);
            v27 = *(v25 + 24);
            v29 = v37;
            if (v28 >= v27 >> 1)
            {
              sub_24ADFB098((v27 > 1), v28 + 1, 1);
              v25 = v49;
            }

            *(v25 + 16) = v28 + 1;
            v32 = v25;
            result = v24((v25 + v38 + v28 * v29), v31, v2);
            v3 = v35;
            v9 = v34;
            goto LABEL_5;
          }
        }

LABEL_3:

        v2 = v36;
        v3 = v35;
        v9 = v34;
        v7 = v33;
      }

      result = (*v39)(v7, v2);
LABEL_5:
      if (++v10 == v41)
      {
        goto LABEL_23;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_23:

  return v32;
}

uint64_t Session.stopSubscriptions(subscriptions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD96B9C, 0, 0);
}

uint64_t sub_24AD96B9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_24AE08288();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24AD96CA0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v4, 0xD02AB486CEDC0000, 0, &unk_24AE0A658, v3, v5);
}

uint64_t sub_24AD96CA0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24AD9B650;
  }

  else
  {

    v2 = sub_24AD9B63C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD96DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AD9B61C;

  return sub_24AD96E58(a3);
}

uint64_t sub_24AD96E58(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08C48();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_24AE08C58();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_24AE089B8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_24AE08A48();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[21] = v8;
  v9 = swift_task_alloc();
  v2[22] = v9;
  *v9 = v2;
  v9[1] = sub_24AD97114;

  return MEMORY[0x28215FA68](v8);
}

uint64_t sub_24AD97114()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24AD9B648;
  }

  else
  {
    v2 = sub_24AD97228;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD97228()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = sub_24AE08288();
  v6 = sub_24AD930A8(v5);
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  v8 = sub_24AD9B058(sub_24AD9B620, v7, v6);

  *(v0 + 16) = v8;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750, MEMORY[0x277D83520]);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710, MEMORY[0x277CC8C98]);
  v9 = sub_24AE09118();
  *(v0 + 192) = v9;
  (*(v3 + 8))(v2, v4);

  v13 = *(v9 + 16);
  *(v0 + 200) = v13;
  *(v0 + 240) = *MEMORY[0x277D094A8];
  if (v13)
  {
    v14 = *(v0 + 192);
    if (!*(v14 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FAF8](v10, v11, v12);
    }

    v15 = *(v0 + 112);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v17 = *(v16 - 8);
    sub_24AD92B7C(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v15, &qword_27EFA8AD8, &qword_24AE0A758);
    v18 = 1;
    (*(v17 + 56))(v15, 0, 1, v16);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v18 = *(v0 + 200);
  }

  *(v0 + 208) = v18;
  v21 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
  {
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(*(v0 + 120) + *(v22 + 48));
    *(v0 + 216) = v30;
    (*(v29 + 32))(v28);
    v31 = [objc_opt_self() mainBundle];
    v32 = [v31 bundleIdentifier];

    if (v32)
    {
      sub_24AE08FB8();
    }

    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v33 = swift_task_alloc();
    *(v0 + 224) = v33;
    *v33 = v0;
    v33[1] = sub_24AD97720;
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v10 = v30;

    return MEMORY[0x28215FAF8](v10, v11, v12);
  }

  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v25 = *(v0 + 152);

  (*(v24 + 8))(v23, v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_24AD97720()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {

    v3 = sub_24AD9B640;
  }

  else
  {
    v3 = sub_24AD9789C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD9789C()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v4 = *(v0 + 208);
  if (v4 == *(v0 + 200))
  {
    v5 = *(v0 + 112);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = *(v0 + 200);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v0 + 192);
  if (v4 >= *(v8 + 16))
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v9 = *(v0 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v11 = *(v10 - 8);
  sub_24AD92B7C(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v9, &qword_27EFA8AD8, &qword_24AE0A758);
  v7 = v4 + 1;
  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_6:
  *(v0 + 208) = v7;
  v12 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(*(v0 + 120) + *(v13 + 48));
    *(v0 + 216) = v21;
    (*(v20 + 32))(v19);
    v22 = [objc_opt_self() mainBundle];
    v23 = [v22 bundleIdentifier];

    if (v23)
    {
      sub_24AE08FB8();
    }

    (*(*(v0 + 48) + 104))(*(v0 + 56), *(v0 + 240), *(v0 + 40));
    sub_24AE08C38();
    v24 = swift_task_alloc();
    *(v0 + 224) = v24;
    *v24 = v0;
    v24[1] = sub_24AD97720;
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v1 = v21;

    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 152);

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t Session.renewSubscriptions(subscriptions:clientID:)(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_24AD97CA8, 0, 0);
}

uint64_t sub_24AD97CA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  sub_24AE08288();
  sub_24AE08288();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24AD97DC4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v6, 0xD02AB486CEDC0000, 0, &unk_24AE0A670, v5, v7);
}

uint64_t sub_24AD97DC4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24AD9B654;
  }

  else
  {

    v2 = sub_24AD9B63C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD97EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_24AD97F94;

  return sub_24AD980C8(a3, v5 + 2);
}

uint64_t sub_24AD97F94()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AD9B638, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24AD980C8(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v5 = sub_24AE08C48();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = sub_24AE08C58();
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_24AE089B8();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v3[16] = v8;
  v3[17] = *(v8 - 8);
  v3[18] = swift_task_alloc();
  v9 = sub_24AE08A48();
  v3[19] = v9;
  v3[20] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v3[21] = v10;
  v3[22] = v11;
  v3[23] = v12;
  v13 = swift_task_alloc();
  v3[24] = v13;
  *v13 = v3;
  v13[1] = sub_24AD98398;

  return MEMORY[0x28215FA68](v10);
}

uint64_t sub_24AD98398()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24AD9B64C;
  }

  else
  {
    v2 = sub_24AD984AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD984AC()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = sub_24AE08288();
  v6 = sub_24AD930A8(v5);
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  v8 = sub_24AD9B058(sub_24AD9B620, v7, v6);

  *(v0 + 16) = v8;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750, MEMORY[0x277D83520]);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710, MEMORY[0x277CC8C98]);
  v9 = sub_24AE09118();
  *(v0 + 208) = v9;
  (*(v3 + 8))(v2, v4);

  v14 = *(v9 + 16);
  *(v0 + 216) = v14;
  *(v0 + 256) = *MEMORY[0x277D094A0];
  if (v14)
  {
    v15 = *(v0 + 208);
    if (!*(v15 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FB10](v10, v11, v12, v13);
    }

    v16 = *(v0 + 112);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v18 = *(v17 - 8);
    sub_24AD92B7C(v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v16, &qword_27EFA8AD8, &qword_24AE0A758);
    v19 = 1;
    (*(v18 + 56))(v16, 0, 1, v17);
  }

  else
  {
    v20 = *(v0 + 112);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v19 = *(v0 + 216);
  }

  *(v0 + 224) = v19;
  v22 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
  v25 = *(v0 + 120);
  if (v24 != 1)
  {
    v31 = *(v0 + 256);
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 88);
    v36 = *(v0 + 48);
    v35 = *(v0 + 56);
    v37 = *(v0 + 40);
    v38 = *(v25 + *(v23 + 48));
    *(v0 + 232) = v38;
    (*(v33 + 32))(v32, v25, v34);
    (*(v36 + 104))(v35, v31, v37);
    sub_24AE08288();
    sub_24AE08C38();
    v39 = swift_task_alloc();
    *(v0 + 240) = v39;
    *v39 = v0;
    v39[1] = sub_24AD98954;
    v11 = *(v0 + 104);
    v13 = *(v0 + 80);
    v10 = v38;
    v12 = 1;

    return MEMORY[0x28215FB10](v10, v11, v12, v13);
  }

  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 152);

  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_24AD98954()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {

    v3 = sub_24AD9B644;
  }

  else
  {
    v3 = sub_24AD98AD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD98AD0()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v5 = *(v0 + 224);
  if (v5 == *(v0 + 216))
  {
    v6 = *(v0 + 112);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 216);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v0 + 208);
  if (v5 >= *(v9 + 16))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x28215FB10](v1, v2, v3, v4);
  }

  v10 = *(v0 + 112);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v12 = *(v11 - 8);
  sub_24AD92B7C(v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v5, v10, &qword_27EFA8AD8, &qword_24AE0A758);
  v8 = v5 + 1;
  (*(v12 + 56))(v10, 0, 1, v11);
LABEL_6:
  *(v0 + 224) = v8;
  v13 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) != 1)
  {
    v20 = *(v0 + 256);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);
    v26 = *(*(v0 + 120) + *(v14 + 48));
    *(v0 + 232) = v26;
    (*(v22 + 32))(v21);
    (*(v24 + 104))(v23, v20, v25);
    sub_24AE08288();
    sub_24AE08C38();
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_24AD98954;
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v1 = v26;
    v3 = 1;

    return MEMORY[0x28215FB10](v1, v2, v3, v4);
  }

  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 152);

  (*(v16 + 8))(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t Session.stopSubscriptions(subscriptions:clientID:)(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_24AD98E8C, 0, 0);
}

uint64_t sub_24AD98E8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  sub_24AE08288();
  sub_24AE08288();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24AD98FA8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28215EB08](v6, 0xD02AB486CEDC0000, 0, &unk_24AE0A688, v5, v7);
}

uint64_t sub_24AD98FA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24AD990C4;
  }

  else
  {

    v2 = sub_24AD9B63C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD990C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD99128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_24AD991DC;

  return sub_24AD99310(a3, v5 + 2);
}

uint64_t sub_24AD991DC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AD93A2C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24AD99310(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v5 = sub_24AE08C48();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = sub_24AE08C58();
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v7 = sub_24AE089B8();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB8, &qword_24AE0A710);
  v3[16] = v8;
  v3[17] = *(v8 - 8);
  v3[18] = swift_task_alloc();
  v9 = sub_24AE08A48();
  v3[19] = v9;
  v3[20] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v3[21] = v10;
  v3[22] = v11;
  v3[23] = v12;
  v13 = swift_task_alloc();
  v3[24] = v13;
  *v13 = v3;
  v13[1] = sub_24AD995E0;

  return MEMORY[0x28215FA68](v10);
}

uint64_t sub_24AD995E0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24AD9A0A4;
  }

  else
  {
    v2 = sub_24AD996F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD996F4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = sub_24AE08288();
  v6 = sub_24AD930A8(v5);
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  v8 = sub_24AD9B058(sub_24AD9B620, v7, v6);

  *(v0 + 16) = v8;
  swift_getKeyPath();
  sub_24AE086B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AC0, &qword_24AE0A750);
  sub_24AD9B548(&qword_27EFA8AC8, &qword_27EFA8AC0, &qword_24AE0A750, MEMORY[0x277D83520]);
  sub_24AD9B548(&qword_27EFA8AD0, &qword_27EFA8AB8, &qword_24AE0A710, MEMORY[0x277CC8C98]);
  v9 = sub_24AE09118();
  *(v0 + 208) = v9;
  (*(v3 + 8))(v2, v4);

  v13 = *(v9 + 16);
  *(v0 + 216) = v13;
  *(v0 + 256) = *MEMORY[0x277D094A0];
  if (v13)
  {
    v14 = *(v0 + 208);
    if (!*(v14 + 16))
    {
      __break(1u);
      return MEMORY[0x28215FAF8](v10, v11, v12);
    }

    v15 = *(v0 + 112);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    v17 = *(v16 - 8);
    sub_24AD92B7C(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v15, &qword_27EFA8AD8, &qword_24AE0A758);
    v18 = 1;
    (*(v17 + 56))(v15, 0, 1, v16);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v18 = *(v0 + 216);
  }

  *(v0 + 224) = v18;
  v21 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  v24 = *(v0 + 120);
  if (v23 != 1)
  {
    v30 = *(v0 + 256);
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = *(v0 + 88);
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = *(v24 + *(v22 + 48));
    *(v0 + 232) = v37;
    (*(v32 + 32))(v31, v24, v33);
    (*(v35 + 104))(v34, v30, v36);
    sub_24AE08288();
    sub_24AE08C38();
    v38 = swift_task_alloc();
    *(v0 + 240) = v38;
    *v38 = v0;
    v38[1] = sub_24AD99B98;
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v10 = v37;

    return MEMORY[0x28215FAF8](v10, v11, v12);
  }

  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);

  (*(v26 + 8))(v25, v27);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_24AD99B98()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {

    v3 = sub_24AD9A164;
  }

  else
  {
    v3 = sub_24AD99D14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD99D14()
{
  v1 = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v4 = *(v0 + 224);
  if (v4 == *(v0 + 216))
  {
    v5 = *(v0 + 112);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = *(v0 + 216);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 208);
  if (v4 >= *(v8 + 16))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v9 = *(v0 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  v11 = *(v10 - 8);
  sub_24AD92B7C(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v9, &qword_27EFA8AD8, &qword_24AE0A758);
  v7 = v4 + 1;
  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_6:
  *(v0 + 224) = v7;
  v12 = *(v0 + 120);
  sub_24AD9B590(*(v0 + 112), v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AD8, &qword_24AE0A758);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    v19 = *(v0 + 256);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);
    v25 = *(*(v0 + 120) + *(v13 + 48));
    *(v0 + 232) = v25;
    (*(v21 + 32))(v20);
    (*(v23 + 104))(v22, v19, v24);
    sub_24AE08288();
    sub_24AE08C38();
    v26 = swift_task_alloc();
    *(v0 + 240) = v26;
    *v26 = v0;
    v26[1] = sub_24AD99B98;
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v1 = v25;

    return MEMORY[0x28215FAF8](v1, v2, v3);
  }

  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 152);

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD9A0A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD9A164()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD9A25C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_24ADFB0DC(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
      sub_24AE08288();
      if (v9 >= v10 >> 1)
      {
        sub_24ADFB0DC((v10 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v11 = v15 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 3;
      --v4;
    }

    while (v4);
  }

  v12 = sub_24ADAE028(v5);

  v13 = sub_24AD966FC(v12);

  *a2 = v13;
  return result;
}

uint64_t PeopleLocationSubscriptionClientID.rawValue.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t PersonModel.Handle.fmlHandle.getter()
{
  sub_24AE08288();
  sub_24AD9B35C(MEMORY[0x277D84F90]);
  return sub_24AE08B88();
}

uint64_t sub_24AD9A428@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AF0, &qword_24AE0A788);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v59 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = sub_24AD9ADB0();
  v63 = v19;
  v64 = v18;
  sub_24AE08CC8();
  v20 = sub_24AE08DA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v17, 1, v20);
  v70 = v21;
  if (v23 == 1)
  {
    sub_24AD92BE4(v17, &qword_27EFA8AF0, &qword_24AE0A788);
    v62 = 0;
    v65 = 0;
  }

  else
  {
    v69 = v12;
    v62 = sub_24AE08D78();
    v65 = v24;
    v12 = v69;
    (*(v21 + 8))(v17, v20);
  }

  sub_24AE08CC8();
  if (v22(v15, 1, v20) == 1)
  {
    sub_24AD92BE4(v15, &qword_27EFA8AF0, &qword_24AE0A788);
    v69 = 0;
    v25 = 0;
  }

  else
  {
    v69 = sub_24AE08D48();
    v25 = v26;
    (*(v70 + 8))(v15, v20);
  }

  sub_24AE08CC8();
  if (v22(v12, 1, v20) == 1)
  {
    sub_24AD92BE4(v12, &qword_27EFA8AF0, &qword_24AE0A788);
    v68 = 0;
    v27 = 0;
  }

  else
  {
    v68 = sub_24AE08D68();
    v27 = v28;
    (*(v70 + 8))(v12, v20);
  }

  sub_24AE08CC8();
  if (v22(v9, 1, v20) == 1)
  {
    sub_24AD92BE4(v9, &qword_27EFA8AF0, &qword_24AE0A788);
    v67 = 0;
    v29 = 0;
  }

  else
  {
    v67 = sub_24AE08D88();
    v29 = v30;
    (*(v70 + 8))(v9, v20);
  }

  v31 = v60;
  sub_24AE08CC8();
  if (v22(v31, 1, v20) == 1)
  {
    sub_24AD92BE4(v31, &qword_27EFA8AF0, &qword_24AE0A788);
    v66 = 0;
    v32 = 0;
  }

  else
  {
    v66 = sub_24AE08D58();
    v33 = v31;
    v32 = v34;
    (*(v70 + 8))(v33, v20);
  }

  v35 = v61;
  sub_24AE08CC8();
  if (v22(v35, 1, v20) == 1)
  {
    result = sub_24AD92BE4(v35, &qword_27EFA8AF0, &qword_24AE0A788);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = sub_24AE08D38();
    v39 = v35;
    v38 = v40;
    result = (*(v70 + 8))(v39, v20);
  }

  v42 = v63;
  v41 = v64;
  v43 = v62;
  v44 = v65;
  if (v63)
  {
    v45 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v45 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {

      v44 = v65;
      v41 = 0;
      v42 = 0;
    }
  }

  if (v44)
  {
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {

      v43 = 0;
      v44 = 0;
    }
  }

  if (v25)
  {
    v47 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v47 = v69 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {
      v48 = v44;

      v44 = v48;
      v69 = 0;
      v25 = 0;
    }
  }

  if (v27)
  {
    v49 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v49 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
      v50 = v44;

      v44 = v50;
      v68 = 0;
      v27 = 0;
    }
  }

  if (v29)
  {
    v51 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v51 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (!v51)
    {
      v52 = v44;

      v44 = v52;
      v67 = 0;
      v29 = 0;
    }
  }

  if (v32)
  {
    v53 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v53 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (!v53)
    {
      v54 = v44;

      v44 = v54;
      v66 = 0;
      v32 = 0;
    }
  }

  if (v38)
  {
    v55 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v55 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {
      v56 = v44;

      v44 = v56;
      v37 = 0;
      v38 = 0;
    }
  }

  *a1 = v41;
  a1[1] = v42;
  a1[2] = v43;
  a1[3] = v44;
  v57 = v68;
  a1[4] = v69;
  a1[5] = v25;
  a1[6] = v57;
  a1[7] = v27;
  v58 = v66;
  a1[8] = v67;
  a1[9] = v29;
  a1[10] = v58;
  a1[11] = v32;
  a1[12] = v37;
  a1[13] = v38;
  return result;
}

uint64_t sub_24AD9AA50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD8E628;

  return sub_24AD95678(a1, v5, v4);
}

uint64_t objectdestroy_5Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24AD9AB3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return sub_24AD96DBC(a1, v5, v4);
}

uint64_t sub_24AD9ABE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD9B61C;

  return sub_24AD97EE0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24AD9ACF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD9B61C;

  return sub_24AD99128(a1, v4, v5, v7, v6);
}

uint64_t sub_24AD9ADB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AF8, &qword_24AE0A790);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_24AE08CB8();
  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
    swift_bridgeObjectRetain_n();

    sub_24AE08AA8();
    v5 = sub_24AE08AB8();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {
      sub_24AD92BE4(v2, &qword_27EFA8AF8, &qword_24AE0A790);
    }

    else
    {
      v4 = sub_24AE08A98();
      (*(v6 + 8))(v2, v5);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

unint64_t sub_24AD9AF28(uint64_t a1, uint64_t a2)
{
  sub_24AE09838();
  sub_24AE09048();
  v4 = sub_24AE09868();

  return sub_24AD9AFA0(a1, a2, v4);
}

unint64_t sub_24AD9AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AE097C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AD9B058(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v4 = sub_24AE089B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AE0, &qword_24AE0A760);
  result = sub_24AE09608();
  v11 = v4;
  v12 = result;
  v13 = 0;
  v45 = a3;
  v46 = v5;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v36 = (v17 + 63) >> 6;
  v37 = v15;
  v38 = result + 64;
  v42 = result;
  v39 = v5 + 32;
  v40 = v5 + 16;
  if (v19)
  {
    while (1)
    {
      v20 = v8;
      v21 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = v45;
      v26 = v46;
      v27 = *(v46 + 72) * v24;
      v28 = v41;
      v29 = v11;
      (*(v46 + 16))(v41, *(v45 + 48) + v27, v11);
      v50 = *(*(v25 + 56) + 8 * v24);
      v30 = *(v26 + 32);
      v30(v20, v28, v29);
      sub_24AE08288();
      v31 = v48;
      v43(&v49, &v50);
      v48 = v31;
      if (v31)
      {
        break;
      }

      *(v38 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v32 = *(v42 + 48) + v27;
      v12 = v42;
      result = (v30)(v32, v20, v29);
      *(*(v12 + 56) + 8 * v24) = v49;
      v33 = *(v12 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      v11 = v29;
      v8 = v20;
      *(v12 + 16) = v35;
      v19 = v47;
      if (!v47)
      {
        goto LABEL_5;
      }
    }

    v12 = v42;

    (*(v46 + 8))(v20, v29);

    return v12;
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v36)
      {
        return v12;
      }

      v23 = *(v37 + 8 * v13);
      ++v22;
      if (v23)
      {
        v20 = v8;
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_24AD9B35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA8, &qword_24AE0A6F8);
    v3 = sub_24AE09628();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_24AE08288();
      result = sub_24AD9AF28(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AD9B46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24AD9B4B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24AD9B548(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24AD9B590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AB0, &qword_24AE0A708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SPBeaconLocation.fmuiPublishedLocation(label:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24AE088E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[5];
  v32 = a1[4];
  v33 = v10;
  v34 = a1[6];
  v11 = a1[1];
  v28 = *a1;
  v29 = v11;
  v12 = a1[3];
  v30 = a1[2];
  v31 = v12;
  [v3 latitude];
  v14 = v13;
  [v3 longitude];
  v16 = v15;
  [v3 horizontalAccuracy];
  v18 = v17;
  v19 = [v3 timestamp];
  sub_24AE088D8();

  v20 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v21 = sub_24AE08898();
  v22 = [v20 initWithCoordinate:v21 altitude:v14 horizontalAccuracy:v16 verticalAccuracy:0.0 course:v18 courseAccuracy:0.0 speed:0.0 speedAccuracy:0.0 timestamp:{0.0, 0}];

  (*(v7 + 8))(v9, v6);
  *a2 = v22;
  *(a2 + 8) = 5;
  v23 = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v23;
  *(a2 + 112) = v34;
  v24 = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = v24;
  v25 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v25;
  return sub_24AD9B858(&v28, v27);
}

uint64_t DataCache.__allocating_init(cacheType:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DataCache.init(cacheType:)(a1);
  return v2;
}

char *DataCache.init(cacheType:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B08, &qword_24AE0A7C8);
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - v6;
  v8 = *(v4 + 88);
  v38[0] = *(v4 + 80);
  v7 = v38[0];
  v38[1] = v8;
  v37 = *(v5 + 96);
  v39 = v37;
  v9 = type metadata accessor for DataCache.CacheType(0, v38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  swift_defaultActor_initialize();
  sub_24AE08DF8();
  v13 = *(*v2 + 136);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  v14 = sub_24AE092F8();
  swift_getTupleTypeMetadata2();
  v15 = sub_24AE091F8();
  v16 = sub_24AD9FFCC(v15, v7, v14, *(v37 + 8));

  *&v2[v13] = v16;
  v17 = *(v10 + 16);
  v17(&v2[*(*v2 + 120)], a1, v9);
  v17(v12, a1, v9);

  v18 = sub_24AE08DE8();
  v19 = sub_24AE09408();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *&v37 = a1;
    v21 = v20;
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v21 = 136446466;
    v22 = sub_24AD9F380(0xD000000000000010, 0x800000024AE12F10);
    v24 = sub_24AD9F840(v22, v23, v38);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_24ADA0DF0(v9, v35);
    v25 = sub_24AE08FF8();
    v27 = v26;
    v28 = *(v10 + 8);
    v28(v12, v9);
    v29 = sub_24AD9F840(v25, v27, v38);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_24AD89000, v18, v19, "%{public}s: DataCache created for path: %s", v21, 0x16u);
    v30 = v34;
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v30, -1, -1);
    MEMORY[0x24C231F80](v21, -1, -1);

    v28(v37, v9);
  }

  else
  {

    v31 = *(v10 + 8);
    v31(a1, v9);
    v31(v12, v9);
  }

  return v2;
}

uint64_t sub_24AD9BD78(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  return MEMORY[0x2822009F8](sub_24AD9BDC4, v2, 0);
}

uint64_t sub_24AD9BDC4()
{
  v15 = v0;

  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136446210;
    v5 = sub_24AD9F380(0xD00000000000001FLL, 0x800000024AE12F30);
    v7 = sub_24AD9F840(v5, v6, &v14);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_24AD89000, v1, v2, "%{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v8 + 96);
  *(v0 + 16) = *(v8 + 80);
  *(v0 + 32) = v10;
  type metadata accessor for DataCache(255, v0 + 16);
  swift_getWitnessTable();
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *(v11 + 16) = *(v0 + 48);
  *(v11 + 32) = v9;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_24AD9BFFC;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_24AD9BFFC()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD9C128, v1, 0);
}

uint64_t sub_24AD9C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v7 = *a5;
  v5[14] = *a5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8);
  v5[15] = v8;
  v5[16] = *(v8 + 64);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = *(v7 + 80);
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v5[21] = *(v10 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD9C2D0, a5, 0);
}

uint64_t sub_24AD9C2D0()
{
  if (sub_24AE09228())
  {
    v1 = 0;
    v2 = *(v0 + 160);
    v29 = *(v0 + 168);
    v31 = *(v0 + 112);
    v32 = *(v0 + 120);
    v33 = v2;
    v34 = (v2 + 16);
    v30 = **(v0 + 80);
    do
    {
      v3 = sub_24AE09218();
      sub_24AE091D8();
      if (v3)
      {
        (*(v2 + 16))(*(v0 + 184), *(v0 + 88) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, *(v0 + 152));
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_24AE09528();
        if (v29 != 8)
        {
          __break(1u);
          return result;
        }

        v26 = *(v0 + 184);
        v27 = *(v0 + 152);
        *(v0 + 72) = result;
        (*v34)(v26, v0 + 72, v27);
        swift_unknownObjectRelease();
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v38 = v4;
      v39 = v1;
      v5 = *(v0 + 176);
      v6 = *(v0 + 168);
      v7 = *(v0 + 144);
      v8 = *(v0 + 152);
      v35 = v7;
      v10 = *(v0 + 96);
      v9 = *(v0 + 104);
      v36 = v10;
      v37 = *(v0 + 136);
      v11 = *(v2 + 32);
      v11(v5, *(v0 + 184), v8);
      sub_24ADA0394(v10, v7);
      v12 = (*(v2 + 80) + 72) & ~*(v2 + 80);
      v13 = (v6 + *(v32 + 80) + v12) & ~*(v32 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v8;
      *(v14 + 40) = *(v31 + 88);
      *(v14 + 56) = *(v31 + 104);
      *(v14 + 64) = v9;
      v11(v14 + v12, v5, v8);
      sub_24ADA0B24(v35, v14 + v13);
      sub_24ADA0394(v36, v37);
      v16 = sub_24AE092D8();
      v17 = *(v16 - 8);
      v18 = (*(v17 + 48))(v37, 1, v16);

      v19 = *(v0 + 136);
      if (v18 == 1)
      {
        sub_24AD92BE4(*(v0 + 136), &qword_27EFA8B18, &qword_24AE0A7F8);
        if (!*v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_24AE092C8();
        (*(v17 + 8))(v19, v16);
        if (!*v15)
        {
LABEL_10:
          v20 = 0;
          v22 = 0;
          goto LABEL_11;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_24AE09288();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_11:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_24AE0A898;
      *(v23 + 24) = v14;
      v24 = v22 | v20;
      if (v22 | v20)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      *(v0 + 48) = 1;
      *(v0 + 56) = v24;
      *(v0 + 64) = v30;
      swift_task_create();

      v1 = v39 + 1;
      v2 = v33;
    }

    while (v38 != sub_24AE09228());
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_24AD9C704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a3;
  v8 = *(*a3 + 88);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[9] = v9;
  v10 = swift_task_alloc();
  v5[10] = v10;
  *v10 = v5;
  v10[1] = sub_24AD9C828;

  return sub_24AD9CC1C(v9, a4, a5);
}

uint64_t sub_24AD9C828()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24AD9C9B4;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_24AD9C954;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD9C954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD9C9B4()
{
  v17 = v0;
  v1 = v0[11];
  v2 = v1;
  v3 = sub_24AE08DE8();
  v4 = sub_24AE093F8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AD9F840(0xD00000000000001FLL, 0x800000024AE12F30, &v16);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = sub_24AE08FF8();
    v11 = v10;

    v12 = sub_24AD9F840(v9, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s<uuid.>: Failed to preload data %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v7, -1, -1);
    MEMORY[0x24C231F80](v6, -1, -1);
  }

  else
  {
    v13 = v0[11];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AD9CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  *(v4 + 176) = v6;
  v7 = *(v6 - 8);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 + 64);
  *(v4 + 200) = swift_task_alloc();
  v8 = v5[11];
  *(v4 + 208) = v8;
  v9 = v5[12];
  *(v4 + 216) = v9;
  v10 = v5[13];
  *(v4 + 224) = v10;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *(v4 + 32) = v12;
  *(v4 + 16) = v11;
  v13 = type metadata accessor for DataCache.CacheType(0, v4 + 16);
  *(v4 + 232) = v13;
  v14 = *(v13 - 8);
  *(v4 + 240) = v14;
  *(v4 + 248) = *(v14 + 64);
  *(v4 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  *(v4 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B08, &qword_24AE0A7C8);
  *(v4 + 272) = swift_task_alloc();
  v15 = sub_24AE08818();
  *(v4 + 280) = v15;
  *(v4 + 288) = *(v15 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = *(v8 - 8);
  *(v4 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD9CEE4, v3, 0);
}

uint64_t sub_24AD9CEE4()
{
  v44 = v0;

  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v43 = v4;
    *v3 = 136446210;
    v5 = sub_24AD9F380(0xD000000000000015, 0x800000024AE12F50);
    v7 = sub_24AD9F840(v5, v6, &v43);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_24AD89000, v1, v2, "%{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  swift_beginAccess();
  sub_24AE08288();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  sub_24AE092F8();
  sub_24AE08E88();

  v9 = v0[16];
  v0[40] = v9;
  if (v9)
  {
    v10 = swift_task_alloc();
    v0[41] = v10;
    *v10 = v0;
    v10[1] = sub_24AD9D41C;
    v11 = v0[39];
    v12 = v0[26];
    v13 = MEMORY[0x277D84950];
    v14 = v9;
    v15 = v8;
  }

  else
  {
    v16 = v0[32];
    v17 = v0[30];
    v37 = v0[33];
    v38 = v0[31];
    v18 = v0[29];
    v34 = v18;
    v41 = v0[27];
    v42 = v0[28];
    v19 = v0[25];
    v35 = v19;
    v32 = v0[26];
    v33 = v0[24];
    v20 = v0[23];
    v40 = v0[22];
    v21 = v0[21];
    v22 = v0[19];
    sub_24ADA0394(v0[20], v37);
    (*(v17 + 16))(v16, v21 + *(*v21 + 120), v18);
    v36 = *(v20 + 16);
    v36(v19, v22, v40);
    v0[6] = v40;
    v0[7] = v32;
    v0[8] = v41;
    v0[9] = v42;
    type metadata accessor for DataCache(255, (v0 + 6));
    WitnessTable = swift_getWitnessTable();
    v24 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v25 = *(v20 + 80);
    v26 = v38 + v25 + v24;
    v39 = v8;
    v27 = v26 & ~v25;
    v28 = swift_allocObject();
    *(v28 + 2) = v21;
    *(v28 + 3) = WitnessTable;
    *(v28 + 4) = v40;
    *(v28 + 5) = v32;
    *(v28 + 6) = v41;
    *(v28 + 7) = v42;
    (*(v17 + 32))(&v28[v24], v16, v34);
    (*(v20 + 32))(&v28[v27], v35, v40);
    *&v28[(v33 + v27 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
    swift_retain_n();
    v29 = sub_24AD9F10C(0, 0, v37, &unk_24AE0A808, v28, v32);
    v0[43] = v29;
    v36(v35, v22, v40);
    v0[17] = v29;
    swift_beginAccess();
    sub_24AE08E58();

    sub_24AE08E98();
    swift_endAccess();
    v30 = swift_task_alloc();
    v0[44] = v30;
    *v30 = v0;
    v30[1] = sub_24AD9D7C4;
    v12 = v0[26];
    v11 = v0[18];
    v13 = MEMORY[0x277D84950];
    v14 = v29;
    v15 = v39;
  }

  return MEMORY[0x282200430](v11, v14, v12, v15, v13);
}

uint64_t sub_24AD9D41C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_24AD9D9A4;
  }

  else
  {
    v4 = sub_24AD9D548;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD9D548()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  sub_24ADA0DF0(v0[29], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[34];

    sub_24AD92BE4(v4, &qword_27EFA8B08, &qword_24AE0A7C8);
    goto LABEL_7;
  }

  v5 = v0[37];
  v6 = v0[27];
  v7 = v0[22];
  (*(v0[36] + 32))(v5, v0[34], v0[35]);
  if ((sub_24ADA0F7C(v5, v7, v6) & 1) != 0 || (v8 = (*(v0[28] + 24))(v0[26]), v9 >> 60 == 15))
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
LABEL_6:

    goto LABEL_7;
  }

  v12 = v0[42];
  v13 = v8;
  v14 = v9;
  sub_24ADA10F4(v8, v9, v0[37], v0[22], v0[27]);
  v15 = v12;
  v17 = v0[36];
  v16 = v0[37];
  v18 = v0[35];
  if (!v15)
  {
    (*(v17 + 8))(v0[37], v0[35]);
    sub_24ADA0690(v13, v14);
    goto LABEL_6;
  }

  sub_24ADA0690(v13, v14);
  (*(v17 + 8))(v16, v18);
LABEL_7:
  (*(v0[38] + 32))(v0[18], v0[39], v0[26]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AD9D7C4()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_24AD9DA58;
  }

  else
  {
    v4 = sub_24AD9D8F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD9D8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD9D9A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD9DA58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD9DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  v8 = *a6;
  v6[14] = *a6;
  v9 = *(v8 + 88);
  v6[15] = v9;
  v10 = sub_24AE09438();
  v6[16] = v10;
  v6[17] = *(v10 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B08, &qword_24AE0A7C8);
  v6[24] = swift_task_alloc();
  v11 = sub_24AE08818();
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD9DD5C, a6, 0);
}

uint64_t sub_24AD9DD5C()
{
  v1 = v0[14];
  v2 = v1[10];
  v0[2] = v2;
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[15];
  v0[32] = v2;
  v7 = v1[12];
  v0[33] = v7;
  v8 = v1[13];
  v0[34] = v8;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;
  v9 = type metadata accessor for DataCache.CacheType(0, (v0 + 2));
  sub_24ADA0DF0(v9, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_24AD92BE4(v0[24], &qword_27EFA8B08, &qword_24AE0A7C8);
    v28 = (*(v7 + 24) + **(v7 + 24));
    v10 = swift_task_alloc();
    v0[35] = v10;
    *v10 = v0;
    v11 = sub_24AD9E428;
LABEL_8:
    v10[1] = v11;

    return v28(v2, v7);
  }

  v12 = v0[31];
  (*(v0[26] + 32))(v12, v0[24], v0[25]);
  if ((sub_24ADA0F7C(v12, v2, v7) & 1) == 0)
  {
    v28 = (*(v7 + 24) + **(v7 + 24));
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v11 = sub_24AD9E604;
    goto LABEL_8;
  }

  v13 = v0[30];
  v14 = v0[29];
  v15 = v0[25];
  v16 = v0[26];
  sub_24ADA12F4(v0[31], v2, v7);
  (*(v16 + 16))(v14, v13, v15);
  (*(v8 + 16))(v14);
  v17 = v0[31];
  v18 = v0[25];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[15];
  v23 = v0[10];
  v24 = *(v0[26] + 8);
  v24(v0[30], v18);
  v24(v17, v18);
  (*(v21 + 56))(v20, 0, 1, v22);
  v25 = *(v21 + 32);
  v25(v19, v20, v22);
  v25(v23, v19, v22);

  v26 = v0[1];

  return v26();
}

uint64_t sub_24AD9E428(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[36] = a1;
  v4[37] = a2;
  v4[38] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[13];

    return MEMORY[0x2822009F8](sub_24AD9EE00, v7, 0);
  }
}

uint64_t sub_24AD9E604(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = v2;

  v6 = v4[13];
  if (v2)
  {
    v7 = sub_24AD9F000;
  }

  else
  {
    v7 = sub_24AD9E73C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD9E73C()
{
  v35 = v0;
  v1 = v0[42];
  sub_24ADA10F4(v0[40], v0[41], v0[31], v0[32], v0[33]);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = sub_24AE08DE8();
    v5 = sub_24AE093F8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE12F50, v34);
      *(v6 + 12) = 2080;
      swift_getErrorValue();
      v8 = *(v0[7] - 8);
      swift_task_alloc();
      (*(v8 + 16))();
      v9 = sub_24AE08FF8();
      v11 = v10;

      v12 = sub_24AD9F840(v9, v11, v34);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_24AD89000, v4, v5, "%s: Failed to save data %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C231F80](v7, -1, -1);
      MEMORY[0x24C231F80](v6, -1, -1);
    }

    v14 = v0[40];
    v13 = v0[41];
    v15 = *(v0[34] + 8);
    sub_24ADA0A7C(v14, v13);
    v15(v14, v13);
    v16 = v0[40];
    v17 = v0[41];
    (*(v0[26] + 8))(v0[31], v0[25]);
    sub_24ADA06A4(v16, v17);
  }

  else
  {
    v18 = v0[34];
    v20 = v0[27];
    v19 = v0[28];
    v21 = v0[25];
    v22 = v0[26];
    sub_24ADA12F4(v0[31], v0[32], v0[33]);
    (*(v22 + 16))(v20, v19, v21);
    (*(v18 + 16))(v20);
    v23 = v0[31];
    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[18];
    v29 = v0[15];
    v33 = v0[10];
    sub_24ADA06A4(v0[40], v0[41]);
    v30 = *(v26 + 8);
    v30(v24, v25);
    v30(v23, v25);
    (*(v27 + 56))(v28, 0, 1, v29);
    (*(v27 + 32))(v33, v28, v29);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_24AD9EE00()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = *(v0[34] + 8);
  sub_24ADA0A7C(v3, v1);
  v4(v3, v1);
  v6 = v0[36];
  v5 = v0[37];
  if (v2)
  {
    sub_24ADA0AD0();
    swift_allocError();
    sub_24ADA06A4(v6, v5);
  }

  else
  {
    sub_24ADA06A4(v0[36], v0[37]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AD9F000()
{
  (*(v0[26] + 8))(v0[31], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AD9F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_24ADA0394(a3, &v24[-1] - v11);
  v13 = sub_24AE092D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AD92BE4(v12, &qword_27EFA8B18, &qword_24AE0A7F8);
  }

  else
  {
    sub_24AE092C8();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24AE09288();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24AE09018();
      sub_24AD9F784(v20 + 32, v24);

      v21 = v24[0];
      sub_24AD92BE4(a3, &qword_27EFA8B18, &qword_24AE0A7F8);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AD92BE4(a3, &qword_27EFA8B18, &qword_24AE0A7F8);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24AD9F380(uint64_t a1, uint64_t a2)
{
  sub_24AE094E8();

  v4 = sub_24AE08EE8();
  MEMORY[0x24C230FB0](v4);

  MEMORY[0x24C230FB0](2108704, 0xE300000000000000);
  MEMORY[0x24C230FB0](a1, a2);
  return 0x6863614361746144;
}

uint64_t DataCache.deinit()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 96);
  v7[0] = *(*v0 + 80);
  v7[1] = v2;
  v3 = type metadata accessor for DataCache.CacheType(0, v7);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 128);
  v5 = sub_24AE08E08();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DataCache.__deallocating_deinit()
{
  DataCache.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AD9F5A4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD9F68C;

  return v4();
}

uint64_t sub_24AD9F68C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD9F784@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24AD9F840(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_24AE08288();
  v6 = sub_24AD9F90C(v11, 0, 0, 1, a1, a2);
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
    sub_24ADA0D90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AD9F90C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AD9FA18(a5, a6);
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
    result = sub_24AE09568();
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

void *sub_24AD9FA18(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AD9FA64(a1, a2);
  sub_24AD9FB94(&unk_285E2F3A8);
  return v3;
}

void *sub_24AD9FA64(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AD9FC80(v5, 0);
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

  result = sub_24AE09568();
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
        v10 = sub_24AE09088();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AD9FC80(v10, 0);
        result = sub_24AE094D8();
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

uint64_t sub_24AD9FB94(uint64_t result)
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

  result = sub_24AD9FCF4(result, v11, 1, v3);
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

void *sub_24AD9FC80(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8BB0, &qword_24AE0A8A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AD9FCF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8BB0, &qword_24AE0A8A8);
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

unint64_t sub_24AD9FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AE08EA8();

  return sub_24AD9FE44(a1, v6, a2, a3);
}

unint64_t sub_24AD9FE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_24AE08EF8();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_24AD9FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24AE09228())
  {
    sub_24AE09638();
    v13 = sub_24AE09628();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24AE09228();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24AE09218())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24AE09528();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24AD9FDE8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_24ADA02D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AD9B61C;

  return sub_24AD9C13C(a1, a2, v6, v7, v8);
}

uint64_t sub_24ADA0394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADA0404(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 48);
  v14 = *(v1 + 32);
  *(v3 + 16) = v14;
  *(v3 + 32) = v5;
  v6 = *(type metadata accessor for DataCache.CacheType(0, v3 + 16) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + ((*(*(v14 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 48) = v12;
  *v12 = v3;
  v12[1] = sub_24ADA059C;

  return sub_24AD9DB0C(a1, v9, v10, v1 + v7, v1 + v8, v11);
}

uint64_t sub_24ADA059C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24ADA0690(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24ADA06A4(result, a2);
  }

  return result;
}

uint64_t sub_24ADA06A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24ADA06FC(uint64_t a1)
{
  v6 = &unk_24AE0A870;
  v1 = *(a1 + 96);
  v5[0] = *(a1 + 80);
  v5[1] = v1;
  result = type metadata accessor for DataCache.CacheType(319, v5);
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = sub_24AE08E08();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      v9 = MEMORY[0x277D833F0] + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DataCache.preload(requests:taskPriority:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD8E628;

  return v8(a1, a2);
}

uint64_t dispatch thunk of DataCache.load(_:taskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD8E628;

  return v10(a1, a2, a3);
}

uint64_t sub_24ADA0A7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24ADA0AD0()
{
  result = qword_27EFA8BA8;
  if (!qword_27EFA8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8BA8);
  }

  return result;
}

uint64_t sub_24ADA0B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADA0B94()
{
  v2 = (*(*(v0[4] - 8) + 80) + 72) & ~*(*(v0[4] - 8) + 80);
  v3 = *(*(v0[4] - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B18, &qword_24AE0A7F8) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24AD9B61C;

  return sub_24AD9C704(v6, v7, v8, v0 + v2, v0 + v5);
}

uint64_t sub_24ADA0CE4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD9B61C;

  return sub_24AD9F5A4(v2);
}

uint64_t sub_24ADA0D90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24ADA0DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  v7 = 1;
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v9 = sub_24AE08818();
  v10 = *(v9 - 8);
  if (v8 != 1)
  {
    (*(*(v9 - 8) + 32))(a2, v4, v9);
    v7 = 0;
  }

  return (*(v10 + 56))(a2, v7, 1, v9);
}

id sub_24ADA0F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AE08818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  sub_24AE087E8();

  sub_24AE087B8();
  (*(v6 + 8))(v8, v5);
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_24AE08F88();

  v11 = [v9 fileExistsAtPath_];

  return v11;
}

uint64_t sub_24ADA10F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = sub_24AE08818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 16))(a4, a5);
  sub_24AE087E8();

  v11 = [objc_opt_self() defaultManager];
  v12 = sub_24AE087D8();
  v18[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v18];

  if (v13)
  {
    v14 = v18[0];
    sub_24AE08828();
  }

  else
  {
    v15 = v18[0];
    sub_24AE086C8();

    swift_willThrow();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24ADA12F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  sub_24AE087E8();
}

uint64_t sub_24ADA1360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AE08818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  sub_24AE087E8();

  v9 = sub_24AE08838();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t static DataCache.CacheType.memoryAndDisk(systemCacheSubdirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AE087A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AE08818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE087C8();
  v16[0] = a1;
  v16[1] = a2;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
  sub_24ADA16A8();
  sub_24AE08808();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFA8B20, &qword_24AE0A8B0);
  return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
}

unint64_t sub_24ADA16A8()
{
  result = qword_27EFA8BB8;
  if (!qword_27EFA8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA8BB8);
  }

  return result;
}

uint64_t DataCacheResultInitializationError.hashValue.getter()
{
  sub_24AE09838();
  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

uint64_t sub_24ADA1778()
{
  sub_24AE09838();
  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

uint64_t sub_24ADA17E4(uint64_t a1)
{
  sub_24AE09838();
  MEMORY[0x24C231780](0);
  return sub_24AE09868();
}

unint64_t sub_24ADA1828()
{
  result = qword_27EFA8BC0[0];
  if (!qword_27EFA8BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFA8BC0);
  }

  return result;
}

uint64_t sub_24ADA1894(uint64_t a1)
{
  sub_24ADA1930();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24ADA1930()
{
  if (!qword_27EFA8C48[0])
  {
    v0 = sub_24AE08818();
    if (!v1)
    {
      atomic_store(v0, qword_27EFA8C48);
    }
  }
}

uint64_t dispatch thunk of DataCacheRequest.produceData()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24ADA1AA4;

  return v7(a1, a2);
}

uint64_t sub_24ADA1AA4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t getEnumTagSinglePayload for DataCacheResultInitializationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DataCacheResultInitializationError(_WORD *result, int a2, int a3)
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

double Duration.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AE09958();
  sub_24AE09958();
  return v3 / 1.0e18 + v2;
}

uint64_t static Duration.minutes(_:)(uint64_t result)
{
  if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    result *= 0x40AAD21B3B700000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Duration.hours(_:)(uint64_t result)
{
  if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    if ((60 * result * 60) >> 64 == (3600 * result) >> 63)
    {
      result *= 0x28093E61EE400000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Duration.days(_:)(uint64_t result)
{
  if ((result * 24) >> 64 != (24 * result) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((24 * result * 60) >> 64 != (1440 * result) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((1440 * result * 60) >> 64 == (86400 * result) >> 63)
  {
    result *= 0xC0DDD92E56000000;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Either.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  type metadata accessor for Either(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a4, a1);
  type metadata accessor for Either(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.left.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t Either.right.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v43 = a1;
  v44 = a2;
  v41 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v11;
  v13 = type metadata accessor for Either(0, v12, v11, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v35 - v22;
  v24 = *(v21 + 48);
  v25 = *(v14 + 16);
  v25(&v35 - v22, v43, v13);
  v25(&v23[v24], v44, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25(v19, v23, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = v40;
      v32 = v35;
      (*(v40 + 32))(v35, &v23[v24], a3);
      v29 = sub_24AE08EF8();
      v33 = *(v31 + 8);
      v33(v32, a3);
      v33(v19, a3);
      goto LABEL_9;
    }

    (*(v40 + 8))(v19, a3);
    goto LABEL_7;
  }

  v25(v17, v23, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(v17, v42);
LABEL_7:
    v29 = 0;
    v14 = v39;
    v13 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v27 = v41;
  v26 = v42;
  v28 = v36;
  (*(v41 + 32))(v36, &v23[v24], v42);
  v29 = sub_24AE08EF8();
  v30 = *(v27 + 8);
  v30(v28, v26);
  v30(v17, v26);
LABEL_9:
  (*(v14 + 8))(v23, v13);
  return v29 & 1;
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, v5);
    MEMORY[0x24C231780](1);
    sub_24AE08EB8();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v17, v11);
    MEMORY[0x24C231780](0);
    sub_24AE08EB8();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AE09838();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return sub_24AE09868();
}

uint64_t sub_24ADA29F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_24AE09838();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return sub_24AE09868();
}

uint64_t Either<>.id.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v15, v4);
    sub_24AE09508();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v10 + 32))(v13, v15, v9);
    sub_24AE09508();
    return (*(v10 + 8))(v13, v9);
  }
}