uint64_t sub_24ADF27B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 49))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 48) >> 3) & 0xE | (*(a1 + 48) >> 7)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24ADF280C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t ItemModel.ImageDefinition.Emoji.init(symbol:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ItemModel.ImageDefinition.Emoji.symbol.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t static ItemModel.ImageDefinition.Emoji.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t ItemModel.ImageDefinition.Emoji.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

unint64_t sub_24ADF2980()
{
  result = qword_27EFAA458;
  if (!qword_27EFAA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA458);
  }

  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.init(category:model:color:variant:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a6;
  if (!a2 || !a4)
  {
    goto LABEL_5;
  }

  v11 = *a7;
  if (v11 == 9)
  {

LABEL_5:

    *(a8 + 48) = 0;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0u;
    *a8 = 0u;
    return result;
  }

  if (a6)
  {
    v12 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v12 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      v13 = result;
      v14 = a2;
      v15 = a3;

      result = v13;
      a3 = v15;
      a2 = v14;
      a5 = 0;
      v8 = 0;
    }
  }

  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v8;
  *(a8 + 48) = v11;
  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.category.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.ImageDefinition.ServerImage.model.getter()
{
  v1 = *(v0 + 16);
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.ImageDefinition.ServerImage.color.getter()
{
  v1 = *(v0 + 32);
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.ImageDefinition.ServerImage.Variant.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24AE09668();

  v6 = 9;
  if (v4 < 9)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t ItemModel.ImageDefinition.ServerImage.Variant.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x656E696C6E6FLL;
    v7 = 0x64656B636F6CLL;
    if (v1 != 2)
    {
      v7 = 0x6475427466656CLL;
    }

    if (*v0)
    {
      v6 = 0x656E696C66666FLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4364694C65736163;
    if (v1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (v1 == 4)
    {
      v4 = 0x6475427468676972;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24ADF2CE4()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24ADEFAF8(v3, v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF2D34(uint64_t a1)
{
  v2 = *v1;
  sub_24AE09838();
  sub_24ADEFAF8(v4, v2);
  return sub_24AE09868();
}

unint64_t sub_24ADF2D84@<X0>(unint64_t *a1@<X8>)
{
  result = ItemModel.ImageDefinition.ServerImage.Variant.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.init(category:model:color:variant:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  if (a6)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      v10 = result;
      v11 = a4;
      v12 = a8;
      v13 = a3;
      v14 = a2;

      result = v10;
      a2 = v14;
      a3 = v13;
      a8 = v12;
      a4 = v11;
      a5 = 0;
      a6 = 0;
    }
  }

  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

uint64_t ItemModel.ImageDefinition.ServerImage.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v3)
  {
    sub_24AE09048();
  }

  return sub_24ADEFAF8(a1, v4);
}

uint64_t ItemModel.ImageDefinition.ServerImage.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v1)
  {
    sub_24AE09048();
  }

  sub_24ADEFAF8(v4, v2);
  return sub_24AE09868();
}

uint64_t sub_24ADF2FA4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v3)
  {
    sub_24AE09048();
  }

  return sub_24ADEFAF8(a1, v4);
}

uint64_t sub_24ADF3048(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  if (v2)
  {
    sub_24AE09048();
  }

  sub_24ADEFAF8(v5, v3);
  return sub_24AE09868();
}

uint64_t _s10FindMyCore9ItemModelV15ImageDefinitionO06ServerF0V2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24AE097C8() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v3 == v10 && v5 == v9 || (sub_24AE097C8() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:

  return sub_24ADF66D4(v6, v11);
}

unint64_t sub_24ADF3220()
{
  result = qword_27EFAA460;
  if (!qword_27EFAA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA460);
  }

  return result;
}

unint64_t sub_24ADF3278()
{
  result = qword_27EFAA468;
  if (!qword_27EFAA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA468);
  }

  return result;
}

uint64_t sub_24ADF32CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24ADF3314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ItemModel.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

unint64_t sub_24ADF3424()
{
  result = qword_27EFAA470;
  if (!qword_27EFAA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA470);
  }

  return result;
}

uint64_t ItemModel.LostModeState.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24AE09668();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t ItemModel.LostModeState.rawValue.getter()
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

void sub_24ADF3578(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xD000000000000011;
  v5 = 0x800000024AE12E70;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000024AE12E90;
  }

  if (*v1)
  {
    v3 = 0x657669746361;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24ADF35FC()
{
  result = qword_27EFAA478;
  if (!qword_27EFAA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA478);
  }

  return result;
}

uint64_t sub_24ADF3650()
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF3714(uint64_t a1)
{
  sub_24AE09048();
}

uint64_t sub_24ADF37C4(uint64_t a1)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t ItemModel.Section.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08F58();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24AE08948();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24AE08F78();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = *v1 >> 62;
  if (v13 <= 1)
  {
    if (!v13)
    {
      sub_24AE08F08();
      *v8 = type metadata accessor for ModelsModule();
      (*(v6 + 104))(v8, *MEMORY[0x277CC9120], v5);
LABEL_11:
      sub_24AE08938();
      sub_24AE08728();
      v17 = sub_24AE08718();
      return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }

    sub_24AE08F48();
    sub_24AE08F38();
    sub_24AE08288();
    sub_24AE08F18();
    sub_24ADC3E58(v10, v11, v12);
    sub_24AE08F38();
    sub_24AE08F68();
LABEL_7:
    *v8 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v8, *MEMORY[0x277CC9120], v5);
    goto LABEL_11;
  }

  if (v13 == 2)
  {
    sub_24AE08F08();
    goto LABEL_7;
  }

  v14 = sub_24AE08718();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, 1, 1, v14);
}

Swift::Bool __swiftcall ItemModel.contains(search:)(Swift::String search)
{
  v1 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v1 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    return 1;
  }

  sub_24ADA16A8();
  return sub_24AE09468() & 1;
}

uint64_t ItemModel.Section.sortOrder.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (v4 <= 1)
  {
    if (v1)
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    if (v4)
    {
      v9 = 50;
      MEMORY[0x24C230FB0](v5, 0xE100000000000000);
      sub_24AE08288();
      MEMORY[0x24C230FB0](v2, v3);

      return v9;
    }

    v6 = 49;
LABEL_12:
    v9 = v6;
    MEMORY[0x24C230FB0](v5, 0xE100000000000000);
    return v9;
  }

  if (v4 == 2)
  {
    if (v1)
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    v6 = 51;
    goto LABEL_12;
  }

  if (v3 | v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v1 == 0xC000000000000000;
  }

  if (v8)
  {
    return 48;
  }

  else
  {
    return 52;
  }
}

void ItemModel.Section.category.getter(char *a1@<X8>)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 3;
    }

    else
    {
      if (*(v1 + 8) == 0 && *v1 == 0xC000000000000000)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4;
      }

      *a1 = v5;
    }
  }

  else
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    *a1 = v3;
  }
}

uint64_t sub_24ADF3E4C()
{
  result = sub_24ADDB814(&unk_285E2F3F8);
  qword_27EFB76C0 = result;
  return result;
}

uint64_t ItemModel.Section.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v2 == 0xC000000000000000 && *(v1 + 1) == 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4;
      }

      return MEMORY[0x24C231780](v5);
    }

    v4 = 3;
LABEL_6:
    MEMORY[0x24C231780](v4);
    v5 = v2 & 1;
    return MEMORY[0x24C231780](v5);
  }

  if (!v3)
  {
    v4 = 1;
    goto LABEL_6;
  }

  MEMORY[0x24C231780](2);
  MEMORY[0x24C231780](v2 & 1);

  return sub_24AE09048();
}

uint64_t ItemModel.Section.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_24AE09838();
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (v2 == 0xC000000000000000 && (v3 | v1) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_7;
    }

    v5 = 3;
  }

  else
  {
    if (v4)
    {
      MEMORY[0x24C231780](2);
      MEMORY[0x24C231780](v2 & 1);
      sub_24AE09048();
      return sub_24AE09868();
    }

    v5 = 1;
  }

  MEMORY[0x24C231780](v5);
  v6 = v2 & 1;
LABEL_7:
  MEMORY[0x24C231780](v6);
  return sub_24AE09868();
}

uint64_t sub_24ADF4040(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_24AE09838();
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (v3 == 0xC000000000000000 && (v4 | v2) == 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = 4;
      }

      goto LABEL_7;
    }

    v6 = 3;
  }

  else
  {
    if (v5)
    {
      MEMORY[0x24C231780](2);
      MEMORY[0x24C231780](v3 & 1);
      sub_24AE09048();
      return sub_24AE09868();
    }

    v6 = 1;
  }

  MEMORY[0x24C231780](v6);
  v7 = v3 & 1;
LABEL_7:
  MEMORY[0x24C231780](v7);
  return sub_24AE09868();
}

void sub_24ADF4110(char *a1@<X8>)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 3;
    }

    else
    {
      if (*(v1 + 8) == 0 && *v1 == 0xC000000000000000)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4;
      }

      *a1 = v5;
    }
  }

  else
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    *a1 = v3;
  }
}

uint64_t ItemModel.listSection(enabledSections:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 145);
  if (!*(v1 + 96))
  {
    result = sub_24ADDAAC0();
    if (result)
    {
      a1[2] = 0;
      *a1 = v3;
LABEL_12:
      a1[1] = 0;
      return result;
    }

LABEL_11:
    a1[2] = 0;
    *a1 = 0xC000000000000001;
    goto LABEL_12;
  }

  if ((v3 & 1) == 0)
  {
    result = sub_24ADDAAC0();
    if (result)
    {
      v10 = 0x8000000000000000;
    }

    else
    {
      v10 = 0xC000000000000001;
    }

    a1[1] = 0;
    a1[2] = 0;
    *a1 = v10;
    return result;
  }

  v5 = *(v1 + 128);
  v4 = *(v1 + 136);
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  result = sub_24ADDAAC0();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = v4;
  if (!v4)
  {
    sub_24AE08288();
    v5 = v7;
    v9 = v6;
  }

  *a1 = 0x4000000000000001;
  a1[1] = v5;
  a1[2] = v9;

  return sub_24AE08288();
}

uint64_t static Set<>.forSelection.getter()
{
  return sub_24ADF4A38(&qword_27EFA87B0, &qword_27EFAA480, sub_24ADF4268);
}

{
  return sub_24ADF4A38(&qword_27EFA87E0, &qword_27EFAA638, sub_24AE009A0);
}

uint64_t ItemModel.Tag.title.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      if (qword_27EFA8800 != -1)
      {
        swift_once();
      }

      v2 = qword_27EFB76F0;
      if (qword_27EFB76F0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_27EFA8800 != -1)
      {
        swift_once();
      }

      v2 = qword_27EFB76F0;
      if (qword_27EFB76F0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  if (v1 == 2)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v2 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v1 != 3)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v2 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_24;
    }

LABEL_25:
    v5 = objc_opt_self();
    sub_24AE08288();
    v4 = [v5 mainBundle];
    v3 = 0;
    goto LABEL_26;
  }

  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v2 = qword_27EFB76F0;
  if (!qword_27EFB76F0)
  {
    goto LABEL_25;
  }

LABEL_24:
  sub_24AE08288();
  v3 = v2;
  v4 = v3;
LABEL_26:
  v6 = v3;
  v7 = sub_24AE08F88();
  v8 = sub_24AE08F88();
  v9 = [v4 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_24AE08FB8();

  return v10;
}

uint64_t ItemModel.contains(tag:)(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1)
  {
    return !*a1 && *(v1 + 96) == 0;
  }

  else
  {
    v3 = *(v1 + 145);
    if (v2 != 3)
    {
      v3 ^= 1u;
    }

    if (v2 == 2)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24ADF4764(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1)
  {
    return !*a1 && *(v1 + 96) == 0;
  }

  else
  {
    v3 = *(v1 + 145);
    if (v2 != 3)
    {
      v3 ^= 1u;
    }

    if (v2 == 2)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24ADF47AC()
{
  result = sub_24ADDB828(&unk_285E2F420);
  qword_27EFB76C8 = result;
  return result;
}

uint64_t ItemModel.Sort.sortDescriptor<A>(rootKeyPath:)()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    KeyPath = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(KeyPath);
  }

  else if (v1 == 3)
  {
    v2 = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(v2);

    sub_24ADC3FB4();
  }

  else
  {
    v3 = swift_getKeyPath();
    KeyPath.appendingSendable<A>(path:)(v3);

    sub_24ADC3F18();
  }

  return sub_24AE086A8();
}

uint64_t sub_24ADF4944@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADF4950@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24ADF495C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t sub_24ADF49B4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  *a4 = *a3;

  return sub_24AE08288();
}

uint64_t static Set<>.stable.getter()
{
  return sub_24ADF4A38(&qword_27EFA87C0, &qword_27EFAA488, sub_24ADF4988);
}

{
  return sub_24ADF4A38(&qword_27EFA87F0, &qword_27EFAA640, sub_24AE01958);
}

uint64_t sub_24ADF4A38(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_24AE08288();
}

BOOL _s10FindMyCore9ItemModelV7SectionO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 >> 62;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v2 == 0xC000000000000000 && (v4 | v3) == 0)
      {
        if (v5 >> 62 != 3 || v5 != 0xC000000000000000 || (v7 | v6) != 0)
        {
          goto LABEL_34;
        }

        sub_24ADC3E58(0xC000000000000000, 0, 0);
        v10 = 0xC000000000000000;
      }

      else
      {
        if (v5 >> 62 != 3 || v5 != 0xC000000000000001 || (v7 | v6) != 0)
        {
          goto LABEL_34;
        }

        sub_24ADC3E58(0xC000000000000001, 0, 0);
        v10 = 0xC000000000000001;
      }

      v11 = 0;
      v12 = 0;
      goto LABEL_40;
    }

    if (v5 >> 62 == 2)
    {
      goto LABEL_7;
    }

LABEL_34:
    v18 = v5;
    v19 = v6;
    v20 = v7;
LABEL_35:
    sub_24ADC3E34(v18, v19, v20);
    sub_24ADC3E58(v2, v3, v4);
    sub_24ADC3E58(v5, v6, v7);
    return 0;
  }

  if (!v8)
  {
    if (v5 >> 62)
    {
      goto LABEL_34;
    }

LABEL_7:
    sub_24ADC3E58(*a1, v3, v4);
    sub_24ADC3E58(v5, v6, v7);
    return ((v5 ^ v2) & 1) == 0;
  }

  if (v5 >> 62 != 1)
  {
    sub_24AE08288();
    goto LABEL_34;
  }

  if ((v5 ^ v2))
  {
    sub_24ADC3E34(*a2, a2[1], v7);
    v18 = v2;
    v19 = v3;
    v20 = v4;
    goto LABEL_35;
  }

  if (v3 != v6 || v4 != v7)
  {
    v21 = sub_24AE097C8();
    sub_24ADC3E34(v5, v6, v7);
    sub_24ADC3E34(v2, v3, v4);
    sub_24ADC3E58(v2, v3, v4);
    sub_24ADC3E58(v5, v6, v7);
    return (v21 & 1) != 0;
  }

  sub_24ADC3E34(*a2, v3, v4);
  sub_24ADC3E34(v2, v3, v4);
  sub_24ADC3E58(v2, v3, v4);
  v10 = v5;
  v11 = v3;
  v12 = v4;
LABEL_40:
  sub_24ADC3E58(v10, v11, v12);
  return 1;
}

unint64_t sub_24ADF4CF8()
{
  result = qword_281519B90;
  if (!qword_281519B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B90);
  }

  return result;
}

unint64_t sub_24ADF4D80()
{
  result = qword_27EFAA4A0;
  if (!qword_27EFAA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4A0);
  }

  return result;
}

unint64_t sub_24ADF4DD4()
{
  result = qword_281519B98;
  if (!qword_281519B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B98);
  }

  return result;
}

unint64_t sub_24ADF4E54()
{
  result = qword_281519B88;
  if (!qword_281519B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B88);
  }

  return result;
}

unint64_t sub_24ADF4EA8()
{
  result = qword_281519B78;
  if (!qword_281519B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B78);
  }

  return result;
}

unint64_t sub_24ADF4F00()
{
  result = qword_281519B80;
  if (!qword_281519B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B80);
  }

  return result;
}

unint64_t sub_24ADF4F58()
{
  result = qword_281519B70;
  if (!qword_281519B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519B70);
  }

  return result;
}

unint64_t sub_24ADF4FB0()
{
  result = qword_27EFAA4A8;
  if (!qword_27EFAA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4A8);
  }

  return result;
}

unint64_t sub_24ADF5004(uint64_t a1)
{
  result = sub_24ADF502C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24ADF502C()
{
  result = qword_27EFAA4B0;
  if (!qword_27EFAA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4B0);
  }

  return result;
}

unint64_t sub_24ADF5084()
{
  result = qword_27EFAA4B8;
  if (!qword_27EFAA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4B8);
  }

  return result;
}

unint64_t sub_24ADF50DC()
{
  result = qword_281519BB0;
  if (!qword_281519BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BB0);
  }

  return result;
}

uint64_t sub_24ADF515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24ADF5198()
{
  result = qword_281519BA8;
  if (!qword_281519BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BA8);
  }

  return result;
}

uint64_t sub_24ADF521C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t get_enum_tag_for_layout_string_10FindMyCore9ItemModelV7SectionO(uint64_t a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24ADF5294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24ADF52E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

void *sub_24ADF533C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 3) >> 1;
    result[2] = 0;
    *result = (a2 - 3) & 1 | 0xC000000000000000;
  }

  return result;
}

uint64_t ItemModel.Owner.status()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24AE086E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24AE08F78();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24AE08F58();
  MEMORY[0x28223BE20](v9 - 8);
  if (*(v1 + 8))
  {
    v17 = v4;
    v18 = a1;
    v10 = *(v1 + 48);
    sub_24AE08F48();
    sub_24AE08F38();
    if (!v10)
    {
      sub_24AE08288();
    }

    sub_24AE08288();
    sub_24AE08F18();

    sub_24AE08F38();
    sub_24AE08F68();
    *v7 = type metadata accessor for ModelsModule();
    (*(v5 + 104))(v7, *MEMORY[0x277CC9120], v17);
    sub_24AE08938();
    v14 = v18;
    sub_24AE08728();
    v15 = sub_24AE08718();
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v11 = sub_24AE08718();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t ItemModel.Owner.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x24C231780](0);
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  MEMORY[0x24C231780](1);
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  if (!v2)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();

  return sub_24AE09048();
}

uint64_t ItemModel.Owner.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  sub_24AE09838();
  if (v1)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
    MEMORY[0x24C231780](v2);
    sub_24AE09048();
    sub_24AE09858();
    if (v3)
    {
      sub_24AE09048();
    }
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF58EC(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x24C231780](0);
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  MEMORY[0x24C231780](1);
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();
  if (!v2)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();

  return sub_24AE09048();
}

uint64_t sub_24ADF59DC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  sub_24AE09838();
  if (v2)
  {
    MEMORY[0x24C231780](1);
    sub_24AE09048();
    MEMORY[0x24C231780](v3);
    sub_24AE09048();
    sub_24AE09858();
    if (v4)
    {
      sub_24AE09048();
    }
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  return sub_24AE09868();
}

void ItemModel.Owner.init(rawIdentifier:rawOwnerDisplayName:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1 == 0x6F6C4072656E776FLL && a2 == 0xEF74736F686C6163;
  if (v9 || (sub_24AE097C8() & 1) != 0)
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    a4 = 0;
  }

  else
  {
    PersonModel.Handle.init(rawValue:)(a1, a2, v17);
    v11 = v17[0];
    v12 = v17[1];
    v13 = v18;
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = 0;
    }

    v14 = v19;
    v15 = v20;
  }

  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  a5[4] = v15;
  a5[5] = v16;
  a5[6] = a4;
}

uint64_t ItemModel.Owner.rawIdentifier.getter()
{
  if (!v0[1])
  {
    return 0x6F6C4072656E776FLL;
  }

  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.Owner.rawOwnerDisplayName.getter()
{
  if (v0[1])
  {
    v1 = v0[6] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v2 = v0[5];
  sub_24AE08288();
  return v2;
}

BOOL _s10FindMyCore9ItemModelV5OwnerO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v63 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  if (!v2)
  {
    if (!v7)
    {
      v39 = a2[3];
      v40 = a2[4];
      v41 = a2[5];
      sub_24ADEFE3C(v3, 0, v4, a1[3], v63, a1[5], a1[6]);
      sub_24ADEFE3C(v8, 0, v10, v39, v40, v41, v13);
      return 1;
    }

    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    v56 = *a2;
    v57 = a2[1];
    v17 = a1[2];
    v18 = a1[6];
    v58 = a2[2];
    v62 = a2[5];
    v19 = a2[3];
    v20 = a2[4];
    v21 = a1[1];
    v22 = *a1;
    sub_24ADC4008(*a2, v57, v58, v9, v11, v12, v13);
    sub_24ADC4008(v22, v21, v17, v5, v63, v6, v18);
    sub_24ADEFE3C(v22, v21, v17, v5, v63, v6, v18);
    sub_24ADEFE3C(v56, v57, v58, v19, v20, v62, v13);
    return 0;
  }

  v54 = a1[1];
  v55 = a1[5];
  v14 = a1[6];
  v53 = *a1;
  v61 = a2[5];
  if (__PAIR128__(v2, v3) != __PAIR128__(v7, v8))
  {
    v16 = a1[2];
    v15 = *a2;
    v23 = a2[2];
    v24 = a2[3];
    v25 = a2[4];
    v26 = a2[5];
    v27 = sub_24AE097C8();
    v12 = v26;
    v9 = v24;
    v10 = v23;
    v11 = v25;
    if ((v27 & 1) != 0 && v23 == v16)
    {
      goto LABEL_10;
    }

LABEL_18:
    v59 = v10;
    v36 = v10;
    v37 = v9;
    v52 = v11;
    sub_24ADC4008(v15, v7, v36, v9, v11, v12, v13);
    sub_24ADC4008(v53, v54, v16, v5, v63, v55, v14);
    sub_24ADEFE3C(v53, v54, v16, v5, v63, v55, v14);
    sub_24ADEFE3C(v15, v7, v59, v37, v52, v61, v13);
    return 0;
  }

  v15 = *a2;
  v16 = a1[2];
  if (v10 != v4)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v5 != v9 || v63 != v11)
  {
    v28 = v10;
    v29 = v9;
    v30 = v11;
    v31 = v12;
    v32 = sub_24AE097C8();
    v12 = v31;
    v9 = v29;
    v10 = v28;
    v11 = v30;
    if ((v32 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (!v14)
  {
    v42 = v10;
    v48 = v9;
    v60 = v10;
    v43 = v11;
    sub_24ADC4008(v15, v7, v42, v9, v11, v12, v13);
    sub_24ADC4008(v53, v54, v16, v5, v63, v55, 0);
    sub_24AE08288();
    sub_24ADEFE3C(v53, v54, v16, v5, v63, v55, 0);
    sub_24ADEFE3C(v15, v7, v60, v48, v43, v61, v13);
    if (!v13)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v33 = v14;
  v51 = v11;
  if (!v13)
  {
    v49 = v9;
    sub_24ADC4008(v15, v7, v10, v9, v11, v12, 0);
    sub_24ADC4008(v53, v54, v16, v5, v63, v55, v14);
    swift_bridgeObjectRetain_n();
    sub_24ADEFE3C(v53, v54, v16, v5, v63, v55, v14);
    sub_24ADEFE3C(v15, v7, v10, v49, v51, v61, 0);

LABEL_24:

    return 0;
  }

  v34 = v13;
  if (v55 != v12 || v14 != v13)
  {
    v44 = v9;
    v50 = v9;
    v45 = v11;
    v46 = v12;
    v47 = sub_24AE097C8();
    sub_24ADC4008(v15, v7, v10, v44, v45, v46, v34);
    sub_24ADC4008(v53, v54, v16, v5, v63, v55, v33);
    swift_bridgeObjectRetain_n();
    sub_24AE08288();
    sub_24ADEFE3C(v53, v54, v16, v5, v63, v55, v33);
    sub_24ADEFE3C(v15, v7, v10, v50, v51, v61, v34);
    swift_bridgeObjectRelease_n();

    return (v47 & 1) != 0;
  }

  v35 = v9;
  sub_24ADC4008(v15, v7, v10, v9, v11, v55, v14);
  sub_24ADC4008(v53, v54, v16, v5, v63, v55, v14);
  swift_bridgeObjectRetain_n();
  sub_24AE08288();
  sub_24ADEFE3C(v53, v54, v16, v5, v63, v55, v14);
  sub_24ADEFE3C(v15, v7, v10, v35, v51, v55, v14);
  swift_bridgeObjectRelease_n();
LABEL_27:

  return 1;
}

unint64_t sub_24ADF6278()
{
  result = qword_27EFAA4D0;
  if (!qword_27EFAA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4D0);
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

uint64_t sub_24ADF62E8(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ADF6338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

double sub_24ADF6398(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24ADF63D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646575657571;
  v6 = 0xE600000000000000;
  v7 = 0x657669746361;
  if (a1 != 4)
  {
    v7 = 0x726F727265;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 6710895;
  if (a1 != 1)
  {
    v9 = 0x676E69646E6570;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x646575657571)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657669746361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x726F727265)
      {
LABEL_34:
        v13 = sub_24AE097C8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6710895)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E69646E6570)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24ADF6598(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2 == 2)
    {
      v4 = 0x800000024AE12E70;
    }

    else
    {
      v4 = 0x800000024AE12E90;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x657669746361;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v6 = 0x800000024AE12E70;
    }

    else
    {
      v6 = 0x800000024AE12E90;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x657669746361;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_24AE097C8();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_24ADF66D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x64656B636F6CLL;
    if (a1 != 2)
    {
      v13 = 0x6475427466656CLL;
      v12 = 0xE700000000000000;
    }

    v14 = 0x656E696C66666FLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x656E696C6E6FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4364694C65736163;
    v4 = 0xED00006465736F6CLL;
    v5 = 0x800000024AE12E30;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = 0x800000024AE12E50;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v8 = 0x6475427468676972;
    }

    else
    {
      v7 = 0x800000024AE12E00;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x64656B636F6CLL)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x6475427466656CLL)
        {
          goto LABEL_56;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x656E696C66666FLL)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x656E696C6E6FLL)
      {
        goto LABEL_56;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x6475427468676972)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v15 = 0x800000024AE12E00;
      if (v9 != 0xD00000000000001ALL)
      {
LABEL_56:
        v16 = sub_24AE097C8();
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED00006465736F6CLL;
    if (v9 != 0x4364694C65736163)
    {
      goto LABEL_56;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x800000024AE12E30;
    if (v9 != 0xD000000000000015)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v15 = 0x800000024AE12E50;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_56;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_56;
  }

  v16 = 1;
LABEL_57:

  return v16 & 1;
}

uint64_t sub_24ADF69B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000065;
  v5 = 0xE700000000000000;
  v6 = 0x6567617373656DLL;
  if (a1 != 4)
  {
    v6 = 0x726568746FLL;
    v5 = 0xE500000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x74696C6C65746173;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000024AE12D70;
  if (a1 != 1)
  {
    v7 = 1702259052;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x79636167656CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x74696C6C65746173)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6567617373656DLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x726568746FLL)
      {
LABEL_35:
        v12 = sub_24AE097C8();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0x800000024AE12D70;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1702259052)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x79636167656CLL)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_24ADF6B80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E6E7572;
  v6 = 0xE700000000000000;
  v7 = 0x676E696C637963;
  if (a1 != 4)
  {
    v7 = 0x69746F6D6F747561;
    v6 = 0xEA00000000006576;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x616E6F6974617473;
  v9 = 0xEA00000000007972;
  if (a1 != 1)
  {
    v8 = 0x676E696B6C6177;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 1)
    {
      v12 = 0x616E6F6974617473;
      v13 = 31090;
      goto LABEL_30;
    }

    v14 = 0xE700000000000000;
    v15 = 1802264951;
LABEL_27:
    if (v10 != (v15 | 0x676E6900000000))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 3)
  {
    v14 = 0xE700000000000000;
    v15 = 1852732786;
    goto LABEL_27;
  }

  if (a2 == 4)
  {
    v14 = 0xE700000000000000;
    v15 = 1818458467;
    goto LABEL_27;
  }

  v12 = 0x69746F6D6F747561;
  v13 = 25974;
LABEL_30:
  v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  if (v10 != v12)
  {
LABEL_33:
    v16 = sub_24AE097C8();
    goto LABEL_34;
  }

LABEL_31:
  if (v11 != v14)
  {
    goto LABEL_33;
  }

  v16 = 1;
LABEL_34:

  return v16 & 1;
}

uint64_t sub_24ADF6D4C(unsigned __int8 a1)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF6E4C(unsigned __int8 a1)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF6F5C(unsigned __int8 a1)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF7050(uint64_t a1, unsigned __int8 a2)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF715C(uint64_t a1, unsigned __int8 a2)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF7258(uint64_t a1, unsigned __int8 a2)
{
  sub_24AE09838();
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t ItemModel.PlaySoundState.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24AE09668();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t ItemModel.PlaySoundState.rawValue.getter()
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

void sub_24ADF7458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x646575657571;
  v7 = 0xE600000000000000;
  v8 = 0x657669746361;
  if (v2 != 4)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6710895;
  if (v2 != 1)
  {
    v10 = 0x676E69646E6570;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_24ADF7508()
{
  result = qword_27EFAA4D8;
  if (!qword_27EFAA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4D8);
  }

  return result;
}

uint64_t sub_24ADF7564(uint64_t a1)
{
  sub_24AE09048();
}

uint64_t ItemModel.Relationship.status(isRemote:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24AE08948();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24AE08F78();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *v2;
  if (v10 == 2 || (v10 & 1) != 0)
  {
    sub_24AE08F08();
    *v8 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v8, *MEMORY[0x277CC9120], v5);
    sub_24AE08938();
    sub_24AE08728();
    v11 = sub_24AE08718();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = sub_24AE08718();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t ItemModel.Relationship.thisDeviceStatus(isRemote:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_24AE08948();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24AE08F78();
  MEMORY[0x28223BE20](v9 - 8);
  if (*v2 == 2)
  {
    sub_24AE08F08();
    *v8 = type metadata accessor for ModelsModule();
    (*(v6 + 104))(v8, *MEMORY[0x277CC9120], v5);
    sub_24AE08938();
    sub_24AE08728();
    v12 = sub_24AE08718();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  else
  {
    v10 = sub_24AE08718();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

uint64_t ItemModel.Relationship.connectedStatus(isRemote:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24AE086E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24AE08F78();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *v1;
  if (v9 == 2 || (v9 & 1) == 0)
  {
    v12 = sub_24AE08718();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }

  else
  {
    sub_24AE08F08();
    *v7 = type metadata accessor for ModelsModule();
    (*(v5 + 104))(v7, *MEMORY[0x277CC9120], v4);
    sub_24AE08938();
    sub_24AE08728();
    v10 = sub_24AE08718();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }
}

BOOL static ItemModel.Relationship.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t ItemModel.Relationship.hash(into:)()
{
  if (*v0 == 2)
  {
    return MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C231780](1);
  return sub_24AE09858();
}

uint64_t ItemModel.Relationship.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1 == 2)
  {
    MEMORY[0x24C231780](0);
  }

  else
  {
    MEMORY[0x24C231780](1);
    sub_24AE09858();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF7FE4()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1 == 2)
  {
    MEMORY[0x24C231780](0);
  }

  else
  {
    MEMORY[0x24C231780](1);
    sub_24AE09858();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADF804C()
{
  if (*v0 == 2)
  {
    return MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C231780](1);
  return sub_24AE09858();
}

uint64_t sub_24ADF8098(uint64_t a1)
{
  v2 = *v1;
  sub_24AE09838();
  if (v2 == 2)
  {
    MEMORY[0x24C231780](0);
  }

  else
  {
    MEMORY[0x24C231780](1);
    sub_24AE09858();
  }

  return sub_24AE09868();
}

unint64_t sub_24ADF8100()
{
  result = qword_27EFAA4E0;
  if (!qword_27EFAA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4E0);
  }

  return result;
}

BOOL sub_24ADF8154(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t _s12RelationshipOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s12RelationshipOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24ADF82FC(unsigned __int8 *a1)
{
  v1 = *a1;
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

_BYTE *sub_24ADF8318(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t ItemModel.UniqueIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24AE090D8();
  if (result)
  {
    v7 = sub_24AE09058();
    v8 = sub_24ADF89E4(v7, a1, a2);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    a1 = MEMORY[0x24C230F60](v8, v10, v12, v14);
    a2 = v15;
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t ItemModel.UniqueIdentifier.baIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24AE08288();

  return ItemModel.BAIdentifier.init(rawValue:)(a1);
}

uint64_t ItemModel.UniqueIdentifier.rawValueWithoutPrefix.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t ItemModel.UniqueIdentifier.init(baIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24AE08908();
  v6 = v5;
  result = sub_24ADD515C(a1);
  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_24ADF84BC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF8540(uint64_t a1)
{
  MEMORY[0x24C230FB0](*v1, v1[1]);
  sub_24AE09048();
}

uint64_t sub_24ADF85B0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v2, v3);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADF863C@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x24C230FB0](*v1, v1[1]);
  *a1 = 0x3A315644494142;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_24ADF869C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24ADF8774(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24ADF8854(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

uint64_t _s10FindMyCore9ItemModelV16UniqueIdentifierV1loiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

unint64_t sub_24ADF89E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24AE09068();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24AE09108();
}

unint64_t sub_24ADF8A94()
{
  result = qword_281519BC0;
  if (!qword_281519BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BC0);
  }

  return result;
}

unint64_t sub_24ADF8B0C()
{
  result = qword_27EFAA4E8;
  if (!qword_27EFAA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA4E8);
  }

  return result;
}

uint64_t PersonModel.init(uniqueID:handles:displayName:contactIdentifier:relationship:favorite:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a1[1];
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = a2[3];
  v15 = *a3;
  v16 = a3[1];
  v17 = *a7;
  v18 = *(a7 + 8);
  *a8 = *a1;
  *(a8 + 8) = v10;
  *(a8 + 16) = v11;
  *(a8 + 24) = v12;
  *(a8 + 32) = v13;
  *(a8 + 40) = v14;
  *(a8 + 48) = *(a2 + 2);
  *(a8 + 64) = v15;
  *(a8 + 72) = v16;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  v19 = type metadata accessor for PersonModel(0);
  result = sub_24ADF8C50(a6, a8 + *(v19 + 32));
  v21 = a8 + *(v19 + 36);
  *v21 = v17;
  *(v21 + 8) = v18;
  return result;
}

uint64_t type metadata accessor for PersonModel(uint64_t a1)
{
  result = qword_27EFAA4F8;
  if (!qword_27EFAA4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADF8C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel.Relationship(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PersonModel.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t PersonModel.handles.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  sub_24AE08288();
  sub_24AE08288();

  return sub_24AE08288();
}

uint64_t PersonModel.displayName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t PersonModel.displayName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t PersonModel.contactIdentifier.getter()
{
  v1 = *(v0 + 80);
  sub_24AE08288();
  return v1;
}

uint64_t PersonModel.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PersonModel.relationship.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PersonModel(0) + 32);

  return sub_24ADF8E94(a1, v3);
}

uint64_t sub_24ADF8E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel.Relationship(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PersonModel.favorite.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PersonModel(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PersonModel.favorite.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for PersonModel(0);
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t PersonModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AE088E8();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v53 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v56 = &v52 - v18;
  MEMORY[0x28223BE20](v17);
  v57 = &v52 - v19;
  v20 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = v1[1];
  v60 = 0x3A3156444953;
  v61 = 0xE600000000000000;
  MEMORY[0x24C230FB0](v23, v24);
  sub_24AE09048();

  v25 = *(v1 + 32);
  v26 = v2[7];
  sub_24AE09048();
  MEMORY[0x24C231780](v25);
  sub_24AE09048();
  sub_24ADF9798(a1, v26);
  sub_24AE09048();
  if (v2[11])
  {
    sub_24AE09858();
    sub_24AE09048();
  }

  else
  {
    sub_24AE09858();
  }

  v27 = type metadata accessor for PersonModel(0);
  v28 = v2 + *(v27 + 32);
  sub_24ADF9A74(v28, v22, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v27;
      v31 = v22;
      v32 = v53;
      sub_24ADCC510(v31, v53);
      MEMORY[0x24C231780](2);
      sub_24ADF9ADC(v32, v11);
      v34 = v58;
      v33 = v59;
      if ((*(v58 + 48))(v11, 1, v59) == 1)
      {
        sub_24AE09858();
      }

      else
      {
        v42 = v55;
        (*(v34 + 32))(v55, v11, v33);
        sub_24AE09858();
        sub_24ADF9BFC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_24AE08EB8();
        (*(v34 + 8))(v42, v33);
      }

      sub_24ADF9B4C(v32);
      v27 = v30;
    }

    else
    {
      MEMORY[0x24C231780](1);
    }
  }

  else
  {
    v53 = v27;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v36 = v57;
    sub_24ADCC510(v22, v57);
    v37 = &v22[v35];
    v38 = v56;
    sub_24ADCC510(v37, v56);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v36, v16);
    v40 = v58;
    v39 = v59;
    v41 = *(v58 + 48);
    if (v41(v16, 1, v59) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v43 = v55;
      (*(v40 + 32))(v55, v16, v39);
      sub_24AE09858();
      sub_24ADF9BFC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      v44 = v43;
      v38 = v56;
      (*(v40 + 8))(v44, v39);
    }

    v45 = v54;
    sub_24ADF9ADC(v38, v54);
    if (v41(v45, 1, v39) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v46 = v55;
      (*(v40 + 32))(v55, v45, v39);
      sub_24AE09858();
      sub_24ADF9BFC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v40 + 8))(v46, v39);
    }

    sub_24ADF9B4C(v38);
    sub_24ADF9B4C(v57);
    v27 = v53;
  }

  v47 = type metadata accessor for PersonModel.Relationship(0);
  PersonModel.Relationship.Follower.hash(into:)(a1);
  v48 = *(v28 + *(v47 + 24));
  sub_24AE09858();
  if (v48 != 2)
  {
    MEMORY[0x24C231780](v48 & 1);
  }

  v49 = (v2 + *(v27 + 36));
  if (v49[1])
  {
    return sub_24AE09858();
  }

  v51 = *v49;
  sub_24AE09858();
  return MEMORY[0x24C231780](v51);
}

uint64_t PersonModel.hashValue.getter()
{
  sub_24AE09838();
  PersonModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF9714()
{
  sub_24AE09838();
  PersonModel.hash(into:)(v1);
  return sub_24AE09868();
}

uint64_t sub_24ADF9758(uint64_t a1)
{
  sub_24AE09838();
  PersonModel.hash(into:)(v2);
  return sub_24AE09868();
}

uint64_t sub_24ADF9798(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C231780](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      v6 = *(v5 - 16);
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE09048();
      MEMORY[0x24C231780](v6);
      sub_24AE09048();

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s10FindMyCore11PersonModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  MEMORY[0x24C230FB0](*a1, *(a1 + 8));
  MEMORY[0x24C230FB0](v4, v5);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 32);
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  if (*(a1 + 16) == *(a2 + 1))
  {
    if (v6 != v10)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_24AE097C8();
    result = 0;
    if ((v14 & 1) == 0 || v6 != v10)
    {
      return result;
    }
  }

  if ((v7 != v11 || v8 != v12) && (sub_24AE097C8() & 1) == 0 || (sub_24ADFFCDC(v9, v13) & 1) == 0 || (*(a1 + 64) != a2[8] || *(a1 + 72) != a2[9]) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 88);
  v17 = a2[11];
  if (v16)
  {
    if (!v17 || (*(a1 + 80) != a2[10] || v16 != v17) && (sub_24AE097C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = type metadata accessor for PersonModel(0);
  if ((static PersonModel.Relationship.== infix(_:_:)(a1 + *(v18 + 32), a2 + *(v18 + 32)) & 1) == 0)
  {
    return 0;
  }

  v19 = *(v18 + 36);
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = a2 + v19;
  v23 = v22[8];
  result = v21 & v23;
  if ((v21 & 1) == 0 && (v23 & 1) == 0)
  {
    return *v20 == *v22;
  }

  return result;
}

uint64_t sub_24ADF9A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ADF9ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADF9B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADF9BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24ADF9C6C(uint64_t a1)
{
  sub_24ADF9D20();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PersonModel.Relationship(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADF9D20()
{
  if (!qword_27EFAA508)
  {
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFAA508);
    }
  }
}

uint64_t PersonModel.AssociatedHandles.init(allHandles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v13[0] = *(a1 + 32);
    v13[1] = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    sub_24ADFC170(a1, a1 + 32, 1, (2 * v3) | 1);
    sub_24AE08288();
    sub_24AE08288();

    result = PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v13, v17);
    v9 = v17[1];
    v10 = v18;
    v11 = v19;
    v12 = v20;
    *a2 = v17[0];
    *(a2 + 8) = v9;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
    *a2 = 0u;
  }

  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v30 = *(a1 + 16);
  v4 = a1[4];
  v31 = *a1;
  v32 = a1[3];
  sub_24ADAE554();
  sub_24AE08288();
  sub_24AE08288();
  v5 = sub_24AE09198();

  v7 = *(v5 + 16);
  if (!v7)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v8 = 0;
  v9 = v5 + 64;
  v29 = *(v5 + 16);
  v25 = v7 - 1;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v27 = v10;
    v11 = (v9 + 40 * v8);
    v12 = v8;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = *(v11 - 4);
      v13 = *(v11 - 3);
      v15 = *(v11 - 16);
      v17 = *(v11 - 1);
      v16 = *v11;
      if (v14 == v31 && v13 == v3)
      {
        break;
      }

      result = sub_24AE097C8();
      if ((result & 1) == 0 || v15 != v30)
      {
        goto LABEL_21;
      }

LABEL_14:
      if (v17 != v32 || v16 != v4)
      {
        result = sub_24AE097C8();
        if ((result & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      ++v12;
      v11 += 5;
      if (v29 == v12)
      {
        v10 = v27;
        goto LABEL_29;
      }
    }

    if (v15 == v30)
    {
      goto LABEL_14;
    }

    v14 = v31;
LABEL_21:
    sub_24AE08288();
    sub_24AE08288();
    v10 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    v33 = v27;
    if ((result & 1) == 0)
    {
      result = sub_24ADFB038(0, *(v27 + 16) + 1, 1);
      v10 = v27;
    }

    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v28 = v21 + 1;
      v24 = *(v10 + 16);
      result = sub_24ADFB038((v20 > 1), v21 + 1, 1);
      v22 = v28;
      v21 = v24;
      v10 = v33;
    }

    v8 = v12 + 1;
    *(v10 + 16) = v22;
    v23 = v10 + 40 * v21;
    *(v23 + 32) = v14;
    *(v23 + 40) = v13;
    *(v23 + 48) = v15;
    *(v23 + 56) = v17;
    *(v23 + 64) = v16;
    v9 = v5 + 64;
  }

  while (v25 != v12);
LABEL_29:

  *a3 = v31;
  *(a3 + 8) = v3;
  *(a3 + 16) = v30;
  *(a3 + 24) = v32;
  *(a3 + 32) = v4;
  *(a3 + 40) = v10;
  return result;
}

uint64_t PersonModel.AssociatedHandles.mainHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

uint64_t PersonModel.AssociatedHandles.allHandles.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24AE0A280;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  *(v6 + 56) = v5;
  *(v6 + 64) = v4;
  v9 = v6;
  sub_24AE08288();
  sub_24AE08288();
  v7 = sub_24AE08288();
  sub_24ADFC258(v7);
  return v9;
}

uint64_t PersonModel.AssociatedHandles.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();

  return sub_24ADF9798(a1, v4);
}

uint64_t PersonModel.AssociatedHandles.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v1);
  sub_24AE09048();
  sub_24ADF9798(v4, v2);
  return sub_24AE09868();
}

uint64_t sub_24ADFA2D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v1);
  sub_24AE09048();
  sub_24ADF9798(v4, v2);
  return sub_24AE09868();
}

uint64_t sub_24ADFA368(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  sub_24AE09048();
  MEMORY[0x24C231780](v3);
  sub_24AE09048();

  return sub_24ADF9798(a1, v4);
}

uint64_t sub_24ADFA3E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v2);
  sub_24AE09048();
  sub_24ADF9798(v5, v3);
  return sub_24AE09868();
}

uint64_t PersonModel.AssociatedHandles.init(allHandles:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v3 = 0;
    v4 = (result + 40);
    v5 = MEMORY[0x277D84F90];
    v28 = result;
    while (v3 < *(v2 + 16))
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = sub_24AE09008();
      v30 = v9;
      v31 = v8;
      v10 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_24AD92D74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_24AE0A280;
        *(v11 + 56) = MEMORY[0x277D837D0];
        *(v11 + 64) = sub_24AD92DC0();
        *(v11 + 32) = 0xD000000000000029;
        *(v11 + 40) = 0x800000024AE12EE0;
        sub_24AE08288();
        v12 = sub_24AE093C8();
        v13 = sub_24AE08F88();
        v14 = [v12 evaluateWithObject_];

        if (v14)
        {
          LOBYTE(String) = 1;
        }

        else if (sub_24ADFEF04(v7, v6))
        {
          sub_24ADA4B88();
          v16 = sub_24AE08F88();
          v17 = sub_24AE08F88();

          v18 = CFPhoneNumberCreate();

          if (v18)
          {
            v19 = v18;
            String = CFPhoneNumberCreateString();
            v2 = v28;
            if (String)
            {
              v7 = sub_24AE08FB8();
              v21 = v20;

              LOBYTE(String) = 0;
              v6 = v21;
            }

            else
            {
            }
          }

          else
          {
            LOBYTE(String) = 0;
            v2 = v28;
          }
        }

        else
        {
          LOBYTE(String) = 2;
        }
      }

      else
      {
        sub_24AE08288();
        LOBYTE(String) = 2;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24ADAA9F0(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_24ADAA9F0((v22 > 1), v23 + 1, 1, v5);
        v5 = result;
      }

      ++v3;
      *(v5 + 16) = v23 + 1;
      v24 = v5 + 40 * v23;
      *(v24 + 32) = v31;
      *(v24 + 40) = v30;
      *(v24 + 48) = String;
      *(v24 + 56) = v7;
      *(v24 + 64) = v6;
      v4 += 2;
      if (v29 == v3)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_24:

    result = PersonModel.AssociatedHandles.init(allHandles:)(v5, v32);
    v25 = v32[1];
    v26 = v32[2];
    *a2 = v32[0];
    a2[1] = v25;
    a2[2] = v26;
  }

  return result;
}

FindMyCore::LiteContact __swiftcall PersonModel.AssociatedHandles.handlesOnlyContact()()
{
  v2 = v0;
  v11 = *v1;
  v12 = v1[1];
  LOBYTE(v13) = *(v1 + 16);
  v14 = v1[3];
  v15 = *(v1 + 2);
  v3 = sub_24ADFA854();
  v4 = [v3 identifier];
  v5 = sub_24AE08FB8();
  v7 = v6;

  *v2 = v5;
  v2[1] = v7;
  v2[2] = v3;
  result.rawValue.super.isa = v10;
  result.identifier._object = v9;
  result.identifier._countAndFlagsBits = v8;
  return result;
}

id sub_24ADFA854()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AE0A280;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 64) = v4;
  v19 = inited;
  sub_24AE08288();
  sub_24AE08288();
  v7 = sub_24AE08288();
  sub_24ADFC258(v7);
  v8 = v19;
  v9 = *(v19 + 16);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v9, 0);
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v20 + 16);
      v14 = *(v20 + 24);
      sub_24AE08288();
      if (v13 >= v14 >> 1)
      {
        sub_24ADFB058((v14 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v15 = v20 + 16 * v13;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v10 += 5;
      --v9;
    }

    while (v9);
  }

  v16 = sub_24AE091A8();

  v17 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v16];

  return v17;
}

Swift::Bool __swiftcall PersonModel.AssociatedHandles.contains(search:)(Swift::String search)
{
  v2 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v2 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = v1[4];
    v4 = v1[3];
    v5 = *(v1 + 16);
    v8 = v1;
    v6 = *v1;
    v7 = v8[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v6;
    *(inited + 40) = v7;
    *(inited + 48) = v5;
    *(inited + 56) = v4;
    *(inited + 64) = v3;
    v17 = inited;
    sub_24AE08288();
    sub_24AE08288();
    v10 = sub_24AE08288();
    result = sub_24ADFC258(v10);
    v12 = v17 + 40;
    v13 = -*(v17 + 16);
    v14 = -1;
    while (1)
    {
      v15 = v13 + v14 != -1;
      if (v13 + v14 == -1)
      {
LABEL_8:

        return v15;
      }

      if (++v14 >= *(v17 + 16))
      {
        break;
      }

      v16 = v12 + 40;
      sub_24ADA16A8();
      result = sub_24AE09468();
      v12 = v16;
      if (result)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t PersonModel.AssociatedHandles.match(handlesSet:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v2 & 1;
  }

  v38 = *v1;
  v39 = v1[1];
  v37 = *(v1 + 16);
  v36 = v1[3];
  v40 = v1[4];
  v42 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v41 = (v3 + 63) >> 6;
  v6 = sub_24AE08288();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v43 = v6;
  while (1)
  {
    if (v5)
    {
      v44 = v8;
      goto LABEL_12;
    }

    do
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      if (v9 >= v41)
      {

        v31 = sub_24ADADF80(v8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24AE0A280;
        *(inited + 32) = v38;
        *(inited + 40) = v39;
        *(inited + 48) = v37;
        *(inited + 56) = v36;
        *(inited + 64) = v40;
        v45 = inited;
        sub_24AE08288();
        sub_24AE08288();
        v33 = sub_24AE08288();
        sub_24ADFC258(v33);
        v34 = sub_24ADFC350(v45, v31);

        LOBYTE(v2) = v34 ^ 1;
        return v2 & 1;
      }

      v5 = *(v42 + 8 * v9);
      ++v7;
    }

    while (!v5);
    v44 = v8;
    v7 = v9;
LABEL_12:
    v10 = *(v6 + 48) + 48 * (__clz(__rbit64(v5)) | (v7 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v15 = *(v10 + 24);
    v14 = *(v10 + 32);
    v16 = *(v10 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_24AE0A280;
    v18 = (v17 + 16);
    *(v17 + 32) = v12;
    *(v17 + 40) = v11;
    *(v17 + 48) = v13;
    *(v17 + 56) = v15;
    *(v17 + 64) = v14;
    v19 = *(v16 + 16);
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    if (!v19)
    {

      v20 = *v18;
      goto LABEL_14;
    }

    v28 = sub_24ADAA9F0(1, v19 + 1, 1, v17);
    if (!*(v16 + 16))
    {
      goto LABEL_39;
    }

    v29 = v28;
    v18 = (v28 + 16);
    if ((*(v28 + 3) >> 1) - *(v28 + 2) < v19)
    {
      break;
    }

    swift_arrayInitWithCopy();

    v30 = *(v29 + 2);
    v20 = v30 + v19;
    if (__OFADD__(v30, v19))
    {
      goto LABEL_38;
    }

    *v18 = v20;
LABEL_14:
    v8 = v44;
    v21 = *(v44 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v22 > *(v44 + 3) >> 1)
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v8 = sub_24ADAA9F0(isUniquelyReferenced_nonNull_native, v24, 1, v44);
    }

    v5 &= v5 - 1;
    if (*v18)
    {
      if ((*(v8 + 3) >> 1) - *(v8 + 2) < v20)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      v6 = v43;
      if (v20)
      {
        v25 = *(v8 + 2);
        v26 = __OFADD__(v25, v20);
        v27 = v25 + v20;
        if (v26)
        {
          goto LABEL_36;
        }

        *(v8 + 2) = v27;
      }
    }

    else
    {

      v6 = v43;
      if (v20)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

unint64_t PersonModel.AssociatedHandles.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  sub_24AE094E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24AE0A280;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  *(v6 + 56) = v5;
  *(v6 + 64) = v4;
  v12 = v6;
  sub_24AE08288();
  sub_24AE08288();
  v7 = sub_24AE08288();
  sub_24ADFC258(v7);
  v8 = MEMORY[0x24C231120](v12, &type metadata for PersonModel.Handle);
  v10 = v9;

  MEMORY[0x24C230FB0](v8, v10);

  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

char *sub_24ADFB038(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFB3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24ADFB058(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFB4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24ADFB078(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFB604(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24ADFB098(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFA90C8, &qword_24AE0B9F0, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

char *sub_24ADFB0DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFB724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24ADFB0FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBBA0(a1, a2, a3, *v3, &qword_27EFAA570, &unk_24AE12020, &type metadata for ItemLocationEntity);
  *v3 = result;
  return result;
}

char *sub_24ADFB134(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFB950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24ADFB154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA560, &qword_24AE12008, &qword_27EFA9750, &qword_24AE12010);
  *v3 = result;
  return result;
}

char *sub_24ADFB194(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBCC0(a1, a2, a3, *v3, &qword_27EFAA568, &qword_24AE12018);
  *v3 = result;
  return result;
}

char *sub_24ADFB1C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24ADFB1E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA550, &unk_24AE11FF0, &qword_27EFA9738, &qword_24AE0DD48);
  *v3 = result;
  return result;
}

char *sub_24ADFB224(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBBA0(a1, a2, a3, *v3, &qword_27EFAA548, &qword_24AE11FE8, &type metadata for PersonLocationEntity);
  *v3 = result;
  return result;
}

void *sub_24ADFB25C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFAA540, &qword_24AE11FE0, MEMORY[0x277CB9DA8]);
  *v3 = result;
  return result;
}

void *sub_24ADFB2A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFA9058, &qword_24AE0B980, type metadata accessor for PersonModel);
  *v3 = result;
  return result;
}

void *sub_24ADFB2E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA530, &qword_24AE11FC8, &qword_27EFA96B8, &qword_24AE11FD0);
  *v3 = result;
  return result;
}

char *sub_24ADFB324(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBCC0(a1, a2, a3, *v3, &qword_27EFAA538, &qword_24AE11FD8);
  *v3 = result;
  return result;
}

void *sub_24ADFB354(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBDAC(a1, a2, a3, *v3, &qword_27EFAA528, &qword_24AE11FC0, type metadata accessor for PersonEntity);
  *v3 = result;
  return result;
}

void *sub_24ADFB398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24ADFBF88(a1, a2, a3, *v3, &qword_27EFAA520, &unk_24AE11FB0, &qword_27EFA9B40, &unk_24AE0EF00);
  *v3 = result;
  return result;
}

char *sub_24ADFB3D8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_24ADFB4F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA518, &qword_24AE11FA8);
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

char *sub_24ADFB604(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA578, &qword_24AE12090);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFB724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9070, &qword_24AE0B990);
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

char *sub_24ADFB830(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97B0, &qword_24AE0DE78);
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

char *sub_24ADFB950(char *result, int64_t a2, char a3, char *a4)
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

char *sub_24ADFBA78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA558, &qword_24AE12000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ADFBBA0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
      v15 = v14 + 31;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 6);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[64 * v11])
    {
      memmove(v16, v17, v11 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24ADFBCC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_24ADFBDAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_24ADFBF88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void sub_24ADFC170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_24ADFC258(char *result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24ADAA9F0(result, v10, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24ADFC350(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = 0;
  v25 = a1 + 32;
  v29 = a2 + 56;
  v24 = *(a1 + 16);
  while (1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_5;
    }

    v27 = v4;
    v5 = (v25 + 40 * v4);
    v7 = *v5;
    v6 = v5[1];
    v8 = *(v5 + 16);
    v10 = v5[3];
    v9 = v5[4];
    sub_24AE09838();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE09048();
    v28 = v8;
    MEMORY[0x24C231780](v8);
    v11 = v10;
    sub_24AE09048();
    v12 = sub_24AE09868();
    v13 = -1 << *(v3 + 32);
    v14 = v12 & ~v13;
    if ((*(v29 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      break;
    }

LABEL_4:

    v3 = a2;
    v4 = v27;
    v2 = v24;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v15 = ~v13;
  v16 = *(a2 + 48);
  while (1)
  {
    v17 = v16 + 40 * v14;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *v17 == v7 && *(v17 + 8) == v6;
    if (v21 || (sub_24AE097C8()) && v18 == v28)
    {
      v22 = v19 == v11 && v20 == v9;
      if (v22 || (sub_24AE097C8() & 1) != 0)
      {
        break;
      }
    }

    v14 = (v14 + 1) & v15;
    if (((*(v29 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t _s10FindMyCore11PersonModelV17AssociatedHandlesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24AE097C8() & 1) == 0 || v2 != v6 || (v3 != v7 || v4 != v8) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  return sub_24ADFFCDC(v5, v9);
}

unint64_t sub_24ADFC634()
{
  result = qword_27EFAA510;
  if (!qword_27EFAA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA510);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24ADFC69C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24ADFC6E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static PersonModel.fetchCNContact(for:using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  *(v2 + 40) = *(a1 + 24);
  *(v2 + 48) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_24ADFC780, 0, 0);
}

uint64_t sub_24ADFC780()
{
  v12 = v0;
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v8[0] = *(v0 + 24);
  v8[1] = v3;
  v9 = v1;
  v10 = v2;
  v11 = *(v0 + 48);
  v5 = sub_24ADFD714(v8, v4);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_24ADFC81C()
{
  v0 = sub_24AE08E08();
  __swift_allocate_value_buffer(v0, qword_27EFAA580);
  __swift_project_value_buffer(v0, qword_27EFAA580);
  return sub_24AE08DF8();
}

FindMyCore::LiteContact __swiftcall PersonModel.liteContact()()
{
  v1 = v0;
  v2 = sub_24ADFC908();
  v3 = [v2 identifier];
  v4 = sub_24AE08FB8();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v1[2] = v2;
  result.rawValue.super.isa = v9;
  result.identifier._object = v8;
  result.identifier._countAndFlagsBits = v7;
  return result;
}

id sub_24ADFC908()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AE0A280;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 64) = v4;
  v20 = inited;
  sub_24AE08288();
  sub_24AE08288();
  sub_24AE08288();
  v7 = sub_24AE08288();
  sub_24ADFC258(v7);
  v8 = v20;
  v9 = *(v20 + 16);
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v9, 0);
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      sub_24AE08288();
      if (v14 >= v13 >> 1)
      {
        sub_24ADFB058((v13 > 1), v14 + 1, 1);
      }

      *(v21 + 16) = v14 + 1;
      v15 = v21 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v10 += 5;
      --v9;
    }

    while (v9);
  }

  v16 = sub_24AE08F88();

  v17 = sub_24AE091A8();

  v18 = [objc_opt_self() contactWithDisplayName:v16 handleStrings:v17];

  return v18;
}

id static PersonModel.syncFetchCNContact(for:using:)(uint64_t a1, uint64_t a2, id a3)
{
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA518, &qword_24AE11FA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24AE0A280;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_24AE08288();
  v9 = sub_24AE091A8();

  v10 = [v7 predicateForContactsWithIdentifiers_];

  v11 = sub_24ADFD4FC(v10, a3);
  if (!v3)
  {
    v12 = v11;
    v13 = v11 >> 62;
    if (v11 >> 62)
    {
      if (sub_24AE095F8() == 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_12;
    }

    if (qword_27EFA87C8 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v14 = sub_24AE08E08();
      __swift_project_value_buffer(v14, qword_27EFAA580);
      sub_24AE08288();
      v15 = sub_24AE08DE8();
      v16 = sub_24AE093F8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        v18 = v13 ? sub_24AE095F8() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v17 + 4) = v18;

        _os_log_impl(&dword_24AD89000, v15, v16, "CNContact fetch: expected 1 result, got %ld", v17, 0xCu);
        MEMORY[0x24C231F80](v17, -1, -1);
      }

      else
      {
      }

LABEL_12:
      if (v13)
      {
        if (!sub_24AE095F8())
        {
LABEL_19:

          return 0;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v12 + 32);
LABEL_17:
        a3 = v19;

        return a3;
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

    v19 = MEMORY[0x24C231470](0, v12);
    goto LABEL_17;
  }

  return a3;
}

void CNContact.personAssociatedHandles()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5A0, &unk_24AE12060);
  v5 = sub_24AE091B8();

  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_24AE095F8();
    v6 = v5;
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = a1;
  v65 = v2;
  if (v7)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v67 = v6 & 0xC000000000000001;
      v9 = MEMORY[0x277D84F90];
      v69 = v7;
      v71 = v6;
      while (1)
      {
        if (v67)
        {
          v10 = MEMORY[0x24C231470](v8);
        }

        else
        {
          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = [v10 value];
        v13 = sub_24AE08FB8();
        v15 = v14;
        v16 = sub_24AE09008();
        v73 = v17;
        v18 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v18 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          sub_24ADD51D0(0, &qword_27EFA8898, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_24AE0A280;
          *(v19 + 56) = MEMORY[0x277D837D0];
          *(v19 + 64) = sub_24AD92DC0();
          *(v19 + 32) = 0xD000000000000029;
          *(v19 + 40) = 0x800000024AE12EE0;
          v20 = sub_24AE093C8();
          LODWORD(v19) = [v20 evaluateWithObject_];

          if (v19)
          {
            v21 = 1;
          }

          else if (sub_24ADFEF04(v13, v15))
          {
            sub_24ADA4B88();
            v22 = sub_24AE08F88();
            v23 = sub_24AE08F88();

            v24 = CFPhoneNumberCreate();

            if (!v24)
            {
              goto LABEL_21;
            }

            v25 = v24;
            String = CFPhoneNumberCreateString();
            if (!String)
            {

LABEL_21:
              v21 = 0;
              goto LABEL_22;
            }

            v27 = String;
            v13 = sub_24AE08FB8();
            v29 = v28;

            v21 = 0;
            v15 = v29;
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {

          v21 = 2;
        }

LABEL_22:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24ADAA9F0(0, *(v9 + 2) + 1, 1, v9);
        }

        v31 = *(v9 + 2);
        v30 = *(v9 + 3);
        if (v31 >= v30 >> 1)
        {
          v9 = sub_24ADAA9F0((v30 > 1), v31 + 1, 1, v9);
        }

        ++v8;

        *(v9 + 2) = v31 + 1;
        v32 = &v9[40 * v31];
        v6 = v71;
        *(v32 + 4) = v16;
        *(v32 + 5) = v73;
        v32[48] = v21;
        *(v32 + 7) = v13;
        *(v32 + 8) = v15;
        if (v69 == v8)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_29:

  v33 = [v65 phoneNumbers];
  v34 = sub_24AE091B8();

  if (v34 >> 62)
  {
    v35 = sub_24AE095F8();
    v36 = &loc_24AE0A000;
    if (v35)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = &loc_24AE0A000;
    if (v35)
    {
LABEL_31:
      if (v35 < 1)
      {
LABEL_64:
        __break(1u);
        return;
      }

      v37 = 0;
      v72 = v34 & 0xC000000000000001;
      v66 = v36[40];
      v68 = v34;
      v70 = v35;
      while (1)
      {
        v38 = v72 ? MEMORY[0x24C231470](v37, v34) : *(v34 + 8 * v37 + 32);
        v39 = v38;
        v40 = [v38 value];
        v41 = [v40 unformattedInternationalStringValue];

        if (v41)
        {
          break;
        }

LABEL_34:
        if (v35 == ++v37)
        {
          goto LABEL_60;
        }
      }

      v42 = sub_24AE08FB8();
      v44 = v43;

      v74 = sub_24AE09008();
      v46 = v45;
      v47 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v47 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v47)
      {
        v52 = 2;
LABEL_53:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24ADAA9F0(0, *(v9 + 2) + 1, 1, v9);
        }

        v62 = *(v9 + 2);
        v61 = *(v9 + 3);
        if (v62 >= v61 >> 1)
        {
          v9 = sub_24ADAA9F0((v61 > 1), v62 + 1, 1, v9);
        }

        *(v9 + 2) = v62 + 1;
        v63 = &v9[40 * v62];
        *(v63 + 4) = v74;
        *(v63 + 5) = v46;
        v63[48] = v52;
        *(v63 + 7) = v42;
        *(v63 + 8) = v44;
        v35 = v70;
        goto LABEL_34;
      }

      sub_24ADD51D0(0, &qword_27EFA8898, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
      v48 = swift_allocObject();
      *(v48 + 16) = v66;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = sub_24AD92DC0();
      *(v48 + 32) = 0xD000000000000029;
      *(v48 + 40) = 0x800000024AE12EE0;
      v49 = sub_24AE093C8();
      v50 = sub_24AE08F88();
      v51 = [v49 evaluateWithObject_];

      if (v51)
      {
        v52 = 1;
LABEL_52:
        v34 = v68;
        goto LABEL_53;
      }

      if (!sub_24ADFEF04(v42, v44))
      {
        v52 = 2;
        goto LABEL_52;
      }

      sub_24ADA4B88();
      v53 = sub_24AE08F88();
      v54 = sub_24AE08F88();

      v55 = CFPhoneNumberCreate();

      if (v55)
      {
        v56 = v55;
        v57 = CFPhoneNumberCreateString();
        if (v57)
        {
          v58 = v57;
          v42 = sub_24AE08FB8();
          v60 = v59;

          v52 = 0;
          v44 = v60;
          goto LABEL_52;
        }
      }

      v52 = 0;
      goto LABEL_52;
    }
  }

LABEL_60:

  PersonModel.AssociatedHandles.init(allHandles:)(v9, v64);
}

uint64_t sub_24ADFD4FC(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() authorizationStatusForEntityType_] != 3)
  {
    sub_24ADFE5B0();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5B8, &unk_24AE12070);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24AE12030;
  v5 = *MEMORY[0x277CBD018];
  v6 = *MEMORY[0x277CBCFC0];
  *(v2 + 32) = *MEMORY[0x277CBD018];
  *(v2 + 40) = v6;
  v7 = *MEMORY[0x277CBD098];
  *(v2 + 48) = *MEMORY[0x277CBD098];
  v8 = objc_opt_self();
  v9 = v5;
  v10 = v6;
  v11 = v7;
  *(v2 + 56) = [v8 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5C0, &unk_24AE12080);
  v12 = sub_24AE091A8();

  v18[0] = 0;
  v13 = [a2 unifiedContactsMatchingPredicate:a1 keysToFetch:v12 error:v18];

  v14 = v18[0];
  if (!v13)
  {
    v16 = v18[0];
    sub_24AE086C8();

    goto LABEL_6;
  }

  sub_24ADD51D0(0, &qword_27EFAA5C8, 0x277CBDA58);
  v2 = sub_24AE091B8();
  v15 = v14;

  return v2;
}

char *sub_24ADFD714(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  LODWORD(v129) = *(a1 + 16);
  v7 = *(a1 + 32);
  v122 = *(a1 + 24);
  v8 = *(a1 + 40);
  if (qword_27EFA87C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_74:
  swift_once();
LABEL_2:
  v9 = sub_24AE08E08();
  __swift_project_value_buffer(v9, qword_27EFAA580);
  sub_24AE08288();
  sub_24AE08288();
  sub_24AE08288();
  v10 = sub_24AE08DE8();
  v11 = sub_24AE093E8();

  v120 = v7;
  v121 = v5;
  v118 = v6;
  v119 = v8;
  v115 = a2;
  if (os_log_type_enabled(v10, v11))
  {
    v113 = v11;
    log = v10;
    v12 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v128[0] = v110;
    v112 = v12;
    *v12 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    *(inited + 48) = v129;
    *(inited + 56) = v122;
    *(inited + 64) = v7;
    v124 = inited;
    sub_24AE08288();
    sub_24AE08288();
    v14 = sub_24AE08288();
    sub_24ADFC258(v14);
    v15 = v124;
    v16 = *(v124 + 16);
    if (v16)
    {
      v108 = v3;
      v125 = MEMORY[0x277D84F90];
      sub_24ADFB058(0, v16, 0);
      v17 = (v15 + 40);
      do
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        v21 = *(v125 + 16);
        v20 = *(v125 + 24);
        sub_24AE08288();
        if (v21 >= v20 >> 1)
        {
          sub_24ADFB058((v20 > 1), v21 + 1, 1);
        }

        *(v125 + 16) = v21 + 1;
        v22 = v125 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
        v17 += 5;
        --v16;
      }

      while (v16);

      v7 = v120;
      v5 = v121;
      v3 = v108;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5E0, &qword_24AE12098);
    sub_24ADFE658();
    v23 = sub_24AE08EC8();
    v25 = v24;

    v26 = sub_24AD9F840(v23, v25, v128);

    *(v112 + 1) = v26;
    *(v112 + 6) = 2080;
    *(v112 + 14) = sub_24AD9F840(v6, v5, v128);
    _os_log_impl(&dword_24AD89000, log, v113, "Starting CNContact fetch for handles: %s, main handle: '%s'", v112, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v110, -1, -1);
    MEMORY[0x24C231F80](v112, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_24AE0A280;
  *(v27 + 32) = v6;
  *(v27 + 40) = v5;
  *(v27 + 48) = v129;
  *(v27 + 56) = v122;
  *(v27 + 64) = v7;
  v128[0] = v27;
  sub_24AE08288();
  sub_24AE08288();
  v28 = sub_24AE08288();
  sub_24ADFC258(v28);
  v29 = v128[0];
  v30 = *(v128[0] + 16);
  if (v30)
  {
    v128[0] = MEMORY[0x277D84F90];
    sub_24ADFB058(0, v30, 0);
    v31 = v128[0];
    v32 = (v29 + 40);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v128[0] = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      sub_24AE08288();
      if (v36 >= v35 >> 1)
      {
        sub_24ADFB058((v35 > 1), v36 + 1, 1);
        v31 = v128[0];
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v32 += 5;
      --v30;
    }

    while (v30);
  }

  v38 = objc_opt_self();
  v39 = sub_24AE091A8();

  v7 = [v38 predicateForContactsMatchingHandleStrings_];

  v40 = sub_24ADFD4FC(v7, v115);
  if (v3)
  {

    return v7;
  }

  v3 = v40;
  sub_24AE08288();
  v42 = sub_24AE08DE8();
  v43 = sub_24AE093E8();
  v44 = v3 >> 62;
  if (os_log_type_enabled(v42, v43))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    if (!v44)
    {
      v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

    goto LABEL_81;
  }

  while (!v44)
  {
    v116 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v116)
    {
      goto LABEL_76;
    }

LABEL_27:
    v111 = v7;
    v46 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x24C231470](0, v3);
      goto LABEL_30;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *(v3 + 32);
LABEL_30:
      a2 = v47;
      if (v44)
      {
        v6 = sub_24AE095F8();
      }

      else
      {
        v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v109 = a2;
      if (v6 != 1)
      {
        sub_24AE08288();
        a2 = sub_24AE08DE8();
        v48 = sub_24AE093F8();
        if (os_log_type_enabled(a2, v48))
        {
          v105 = v48;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v128[0] = v50;
          *v49 = 134218242;
          v107 = a2;
          v104 = v50;
          if (v44)
          {
            v51 = sub_24AE095F8();
          }

          else
          {
            v51 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v49 + 4) = v51;

          buf = v49;
          *(v49 + 12) = 2080;
          if (v6)
          {
            v126 = MEMORY[0x277D84F90];
            result = sub_24ADFB058(0, v6 & ~(v6 >> 63), 0);
            if (v6 < 0)
            {
              __break(1u);
              return result;
            }

            v52 = 0;
            v114 = v6;
            do
            {
              if (v46)
              {
                v53 = MEMORY[0x24C231470](v52, v3);
              }

              else
              {
                v53 = *(v3 + 8 * v52 + 32);
              }

              v54 = v53;
              v55 = [v54 identifier];
              v56 = sub_24AE08FB8();
              v7 = v57;

              v6 = *(v126 + 16);
              v58 = *(v126 + 24);
              if (v6 >= v58 >> 1)
              {
                sub_24ADFB058((v58 > 1), v6 + 1, 1);
              }

              ++v52;
              *(v126 + 16) = v6 + 1;
              v59 = v126 + 16 * v6;
              *(v59 + 32) = v56;
              *(v59 + 40) = v7;
            }

            while (v114 != v52);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5E0, &qword_24AE12098);
          sub_24ADFE658();
          v60 = sub_24AE08EC8();
          v62 = v61;

          v63 = sub_24AD9F840(v60, v62, v128);

          *(buf + 14) = v63;
          a2 = v107;
          _os_log_impl(&dword_24AD89000, v107, v105, "CNContact fetch: expected 1 result, got %ld - contact identifiers: %s", buf, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x24C231F80](v104, -1, -1);
          MEMORY[0x24C231F80](buf, -1, -1);
        }

        else
        {
        }
      }

      v8 = 0;
      v5 = v116;
      while (1)
      {
        if (v46)
        {
          v64 = MEMORY[0x24C231470](v8, v3);
        }

        else
        {
          if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v64 = *(v3 + 8 * v8 + 32);
        }

        v7 = v64;
        a2 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        CNContact.personAssociatedHandles()(v128);
        if (v128[1])
        {
          v127 = v128[4];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA578, &qword_24AE12090);
          v65 = swift_initStackObject();
          *(v65 + 32) = v118;
          *(v65 + 16) = xmmword_24AE0A280;
          *(v65 + 40) = v121;
          *(v65 + 48) = v129;
          *(v65 + 56) = v122;
          *(v65 + 64) = v120;
          *(v65 + 72) = v119;
          sub_24AE08288();
          sub_24AE08288();
          sub_24AE08288();
          v66 = sub_24ADDB450(v65);
          swift_setDeallocating();
          sub_24ADFE604(v65 + 32);
          LOBYTE(v65) = PersonModel.AssociatedHandles.match(handlesSet:)(v66);

          v6 = v127;

          if (v65)
          {

            v76 = [v7 identifier];
            v77 = sub_24AE08FB8();
            v79 = v78;

            v80 = [v109 identifier];
            v81 = sub_24AE08FB8();
            v83 = v82;

            if (v77 == v81 && v79 == v83)
            {

              return v7;
            }

            v84 = sub_24AE097C8();

            if (v84)
            {

              return v7;
            }

            sub_24AE08288();
            sub_24AE08288();
            sub_24AE08288();
            v85 = v109;
            v86 = v7;
            v87 = sub_24AE08DE8();
            v88 = sub_24AE093D8();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v129 = swift_slowAlloc();
              v128[0] = v129;
              *v89 = 136315650;
              v90 = [v85 identifier];
              v123 = v88;
              v91 = sub_24AE08FB8();
              v93 = v92;

              v94 = sub_24AD9F840(v91, v93, v128);

              *(v89 + 4) = v94;
              *(v89 + 12) = 2080;
              v95 = [v86 identifier];
              v96 = sub_24AE08FB8();
              v98 = v97;

              v99 = sub_24AD9F840(v96, v98, v128);

              *(v89 + 14) = v99;
              *(v89 + 22) = 2080;
              *(v89 + 24) = sub_24AD9F840(v118, v121, v128);
              _os_log_impl(&dword_24AD89000, v87, v123, "CNContact fetch: re-sorted contact selection changed from '%s' to '%s' based on main handle '%s'", v89, 0x20u);
              v100 = v129;
              swift_arrayDestroy();
              MEMORY[0x24C231F80](v100, -1, -1);
              MEMORY[0x24C231F80](v89, -1, -1);

              return v7;
            }

LABEL_63:
            return v7;
          }

          v5 = v116;
        }

        else
        {
        }

        ++v8;
        if (a2 == v5)
        {

          sub_24AE08288();
          sub_24AE08288();
          sub_24AE08288();
          v7 = v109;
          v67 = sub_24AE08DE8();
          v68 = sub_24AE093D8();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v128[0] = v70;
            *v69 = 136315394;
            *(v69 + 4) = sub_24AD9F840(v118, v121, v128);
            *(v69 + 12) = 2080;
            v71 = [v7 identifier];
            v72 = sub_24AE08FB8();
            v74 = v73;

            v75 = sub_24AD9F840(v72, v74, v128);

            *(v69 + 14) = v75;
            _os_log_impl(&dword_24AD89000, v67, v68, "CNContact fetch: no contact found containing main handle '%s', returning first result '%s'", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C231F80](v70, -1, -1);
            MEMORY[0x24C231F80](v69, -1, -1);
          }

          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    __break(1u);
LABEL_81:
    v45 = sub_24AE095F8();
LABEL_23:
    *(v39 + 1) = v45;

    _os_log_impl(&dword_24AD89000, v42, v43, "CNContact fetch returned %ld results", v39, 0xCu);
    MEMORY[0x24C231F80](v39, -1, -1);
  }

  v116 = sub_24AE095F8();
  if (v116)
  {
    goto LABEL_27;
  }

LABEL_76:

  v101 = sub_24AE08DE8();
  v102 = sub_24AE093D8();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_24AD89000, v101, v102, "CNContact fetch: no contacts found for handles", v103, 2u);
    MEMORY[0x24C231F80](v103, -1, -1);
  }

  return 0;
}

unint64_t sub_24ADFE5B0()
{
  result = qword_27EFAA5B0;
  if (!qword_27EFAA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA5B0);
  }

  return result;
}

unint64_t sub_24ADFE658()
{
  result = qword_27EFAA5E8;
  if (!qword_27EFAA5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFAA5E0, &qword_24AE12098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA5E8);
  }

  return result;
}

unint64_t sub_24ADFE6D0()
{
  result = qword_27EFAA5F0;
  if (!qword_27EFAA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA5F0);
  }

  return result;
}

uint64_t PersonModel.DisplayName.init(name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PersonModel.DisplayName.value.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t static PersonModel.DisplayName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t PersonModel.DisplayName.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t static PersonModel.DisplayName.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

Swift::Bool __swiftcall PersonModel.DisplayName.contains(search:)(Swift::String search)
{
  v1 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v1 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    return 1;
  }

  sub_24ADA16A8();
  return sub_24AE09468() & 1;
}

unint64_t sub_24ADFE88C()
{
  result = qword_27EFAA600;
  if (!qword_27EFAA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA600);
  }

  return result;
}

uint64_t PersonModel.Favorite.init(order:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t PersonModel.Favorite.sortOrder.getter()
{
  if (v0[8])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *v0;
  }
}

uint64_t PersonModel.Favorite.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    if (qword_27EFA86E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27EFA9FE0;
    v4 = *algn_27EFA9FE8;
    v5 = qword_27EFA9FF0;
    v6 = unk_27EFA9FF8;
    v7 = word_27EFAA000 | (HIBYTE(word_27EFAA000) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t static PersonModel.Favorite.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
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

  return 1;
}

uint64_t PersonModel.Favorite.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return sub_24AE09858();
  }

  v2 = *v0;
  sub_24AE09858();
  return MEMORY[0x24C231780](v2);
}

uint64_t PersonModel.Favorite.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24AE09838();
  sub_24AE09858();
  if (v2 != 1)
  {
    MEMORY[0x24C231780](v1);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADFEAF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24AE09838();
  sub_24AE09858();
  if (v2 != 1)
  {
    MEMORY[0x24C231780](v1);
  }

  return sub_24AE09868();
}

uint64_t sub_24ADFEB64()
{
  if (*(v0 + 8) == 1)
  {
    return sub_24AE09858();
  }

  v2 = *v0;
  sub_24AE09858();
  return MEMORY[0x24C231780](v2);
}

uint64_t sub_24ADFEBB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_24AE09838();
  sub_24AE09858();
  if (v3 != 1)
  {
    MEMORY[0x24C231780](v2);
  }

  return sub_24AE09868();
}

unint64_t sub_24ADFEC24()
{
  result = qword_27EFAA608;
  if (!qword_27EFAA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA608);
  }

  return result;
}

uint64_t sub_24ADFEC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s8FavoriteVwet(uint64_t a1, int a2)
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

uint64_t _s8FavoriteVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

void PersonModel.Handle.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AE09008();
  v8 = v7;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  sub_24AD92D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24AE0A280;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_24AD92DC0();
  *(v10 + 32) = 0xD000000000000029;
  *(v10 + 40) = 0x800000024AE12EE0;
  v11 = sub_24AE093C8();
  v12 = sub_24AE08F88();
  v13 = [v11 evaluateWithObject_];

  if ((v13 & 1) == 0)
  {
    if (sub_24ADFEF04(a1, a2))
    {
      a1 = sub_24ADA4CC4(a1, a2);
      v16 = v15;

      v14 = 0;
      a2 = v16;
      goto LABEL_9;
    }

LABEL_8:
    v14 = 2;
    goto LABEL_9;
  }

  v14 = 1;
LABEL_9:
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v14;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t PersonModel.Handle.rawValue.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t PersonModel.Handle.label.getter()
{
  v1 = *(v0 + 24);
  sub_24AE08288();
  return v1;
}

BOOL sub_24ADFEF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08688();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_24AE08648();
  sub_24AE08668();
  v11 = objc_opt_self();
  v12 = [v11 controlCharacterSet];
  sub_24AE08658();

  sub_24AE08678();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v14 = [v11 whitespaceAndNewlineCharacterSet];
  sub_24AE08658();

  sub_24AE08678();
  v13(v8, v4);
  v20[0] = a1;
  v20[1] = a2;
  sub_24ADA16A8();
  v20[0] = sub_24AE09458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA5E0, &qword_24AE12098);
  sub_24ADFE658();
  v15 = sub_24AE08EC8();
  v17 = v16;

  v13(v10, v4);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  return v18 == 0;
}

uint64_t PersonModel.Handle.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t static PersonModel.Handle.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_24AE097C8();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_24AE097C8();
}

uint64_t PersonModel.Handle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24AE09048();
  MEMORY[0x24C231780](v2);

  return sub_24AE09048();
}

uint64_t PersonModel.Handle.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v1);
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADFF384()
{
  v1 = *(v0 + 16);
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v1);
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADFF404(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24AE09048();
  MEMORY[0x24C231780](v2);

  return sub_24AE09048();
}

uint64_t sub_24ADFF46C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24AE09838();
  sub_24AE09048();
  MEMORY[0x24C231780](v2);
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADFF4E8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_24AE097C8();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_24AE097C8();
}

uint64_t static PersonModel.Handle.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t PersonModel.Handle.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return 91;
}

uint64_t sub_24ADFF688()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return 91;
}

uint64_t DefaultStringInterpolation.appendInterpolation(_:)(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {

    JUMPOUT(0x24C230FB0);
  }

  v2 = *a1;
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v2, v1);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  MEMORY[0x24C230FB0](91, 0xE100000000000000);
}

{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_24AE08FF8();
  MEMORY[0x24C230FB0](v3);

  MEMORY[0x24C230FB0](10333, 0xE200000000000000);
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  MEMORY[0x24C230FB0](91, 0xE100000000000000);
}

unint64_t sub_24ADFF8EC()
{
  result = qword_27EFAA610;
  if (!qword_27EFAA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA610);
  }

  return result;
}

unint64_t sub_24ADFF940()
{
  result = qword_27EFAA618;
  if (!qword_27EFAA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA618);
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

uint64_t sub_24ADFF9A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24ADFF9F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PersonModel.Section.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE08948();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24AE086E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24AE08F78();
  MEMORY[0x28223BE20](v8 - 8);
  if (*v1 && *v1 == 1)
  {
    sub_24AE08F08();
    *v7 = type metadata accessor for ModelsModule();
    (*(v5 + 104))(v7, *MEMORY[0x277CC9120], v4);
    sub_24AE08938();
    sub_24AE08728();
    v9 = sub_24AE08718();
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = sub_24AE08718();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_24ADFFCDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v5 = *(v3 - 16);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      if (*(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3))
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_24AE097C8();
        result = 0;
        if ((v12 & 1) == 0 || v5 != v8)
        {
          return result;
        }
      }

      v14 = v6 == v9 && v7 == v10;
      if (!v14 && (sub_24AE097C8() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24ADFFDD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v18 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v22 = a2 + 56;
  v19 = v7;
  v20 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v21 = (v6 - 1) & v6;
LABEL_13:
      v11 = (*(result + 48) + 16 * (v8 | (v3 << 6)));
      v13 = *v11;
      v12 = v11[1];
      sub_24AE09838();
      sub_24AE08288();
      MEMORY[0x24C230FB0](v13, v12);
      sub_24AE09048();

      v14 = sub_24AE09868() & ~(-1 << *(a2 + 32));
      if (((*(v22 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        break;
      }

      v15 = (*(a2 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_24AE08288();
      MEMORY[0x24C230FB0](v17, v16);
      MEMORY[0x24C230FB0](v13, v12);

      v7 = v19;
      result = v20;
      v6 = v21;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v18 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v21 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE00090(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v42 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v54 = a2 + 56;
  v43 = v6;
  v44 = result;
  v47 = a2;
  while (v5)
  {
    v7 = __clz(__rbit64(v5));
    v45 = (v5 - 1) & v5;
LABEL_15:
    v46 = v2;
    v10 = *(result + 48) + 48 * (v7 | (v2 << 6));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v15 = *(v10 + 24);
    v14 = *(v10 + 32);
    v16 = *(v10 + 40);
    v17 = a2;
    sub_24AE09838();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE09048();
    v51 = v13;
    MEMORY[0x24C231780](v13);
    v48 = v15;
    v50 = v14;
    sub_24AE09048();
    v49 = v16;
    sub_24ADF9798(v57, v16);
    v18 = sub_24AE09868();
    v19 = v11;
    v20 = -1 << *(v17 + 32);
    v21 = v18 & ~v20;
    if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_50:

      return 0;
    }

    v22 = v12;
    v52 = ~v20;
    v53 = v12;
    v55 = v11;
    v56 = *(v47 + 48);
    while (1)
    {
      v23 = v56 + 48 * v21;
      result = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = *(v23 + 40);
      v28 = *v23 == v22 && *(v23 + 8) == v19;
      if (v28 || (result = sub_24AE097C8(), (result & 1) != 0))
      {
        if (v24 == v51)
        {
          v29 = v25 == v48 && v26 == v50;
          if (v29 || (result = sub_24AE097C8(), (result & 1) != 0))
          {
            v30 = *(v27 + 16);
            if (v30 == *(v49 + 16))
            {
              break;
            }
          }
        }
      }

LABEL_17:
      v22 = v53;
      v21 = (v21 + 1) & v52;
      v19 = v55;
      if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v30)
    {
      v31 = v27 == v49;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      v32 = (v27 + 64);
      v33 = (v49 + 64);
      while (v30)
      {
        result = *(v32 - 4);
        v34 = *(v32 - 16);
        v35 = *(v32 - 1);
        v36 = *v32;
        v37 = *(v33 - 16);
        v39 = *(v33 - 1);
        v38 = *v33;
        if (result != *(v33 - 4) || *(v32 - 3) != *(v33 - 3))
        {
          result = sub_24AE097C8();
          if ((result & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v34 != v37)
        {
          goto LABEL_17;
        }

        if (v35 != v39 || v36 != v38)
        {
          result = sub_24AE097C8();
          if ((result & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v32 += 5;
        v33 += 5;
        if (!--v30)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_7:

    v2 = v46;
    a2 = v47;
    v6 = v43;
    result = v44;
    v5 = v45;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v42 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v45 = (v9 - 1) & v9;
      goto LABEL_15;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_24AE0040C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v29 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v36 = a2 + 56;
  v30 = v6;
  v31 = result;
  v33 = a2;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v32 = (v5 - 1) & v5;
LABEL_13:
      v10 = *(result + 48) + 40 * (v7 | (v2 << 6));
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = a2;
      sub_24AE09838();
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE09048();
      v34 = v13;
      MEMORY[0x24C231780](v13);
      v35 = v14;
      v17 = v15;
      sub_24AE09048();
      v18 = sub_24AE09868();
      v19 = -1 << *(v16 + 32);
      v20 = v18 & ~v19;
      if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      v22 = *(v33 + 48);
      while (1)
      {
        v23 = v22 + 40 * v20;
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
        v26 = *(v23 + 32);
        v27 = *v23 == v12 && *(v23 + 8) == v11;
        if (v27 || (sub_24AE097C8()) && v24 == v34)
        {
          v28 = v25 == v35 && v26 == v17;
          if (v28 || (sub_24AE097C8() & 1) != 0)
          {
            break;
          }
        }

        v20 = (v20 + 1) & v21;
        if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v6 = v30;
      result = v31;
      v5 = v32;
      a2 = v33;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v29 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v32 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t KeyPath.appendingSendable<A>(path:)(uint64_t a1)
{
  v2 = sub_24AE09898();

  return MEMORY[0x2821FD258](a1, v2);
}

uint64_t sub_24AE006FC()
{
  v0 = sub_24AE08E08();
  __swift_allocate_value_buffer(v0, qword_27EFAA620);
  __swift_project_value_buffer(v0, qword_27EFAA620);
  return sub_24AE08DF8();
}

Swift::Bool __swiftcall PersonModel.contains(search:)(Swift::String search)
{
  v1 = HIBYTE(search._object) & 0xF;
  if ((search._object & 0x2000000000000000) == 0)
  {
    v1 = search._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    object = search._object;
    countAndFlagsBits = search._countAndFlagsBits;
    sub_24ADA16A8();
    v4 = sub_24AE09468();
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = object;
    LOBYTE(object) = PersonModel.AssociatedHandles.contains(search:)(v5);

    v6 = v4 | object;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_24AE0089C()
{
  result = sub_24ADDB83C(&unk_285E2F5B8);
  qword_27EFB76D0 = result;
  return result;
}

uint64_t PersonModel.listSection(enabledSections:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersonModel(0);
  result = PersonModel.Relationship.pendingAction.getter(&v7);
  if (v7 == 2 || (result = sub_24ADDAAC0(), v6 = 0, (result & 1) == 0))
  {
    if ((*(v2 + *(v4 + 36) + 8) & 1) != 0 || (v6 = 1, result = sub_24ADDAAC0(), (result & 1) == 0))
    {
      v6 = 2;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t PersonModel.Tag.title.getter()
{
  if (*v0 == 1)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v1 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*v0)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v1 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = objc_opt_self();
    sub_24AE08288();
    v3 = [v4 mainBundle];
    v2 = 0;
    goto LABEL_16;
  }

  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFB76F0;
  if (!qword_27EFB76F0)
  {
    goto LABEL_15;
  }

LABEL_14:
  sub_24AE08288();
  v2 = v1;
  v3 = v2;
LABEL_16:
  v5 = v2;
  v6 = sub_24AE08F88();
  v7 = sub_24AE08F88();
  v8 = [v3 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_24AE08FB8();

  return v9;
}

uint64_t PersonModel.Tag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x24C231780](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x24C231780](v4);
  }

  MEMORY[0x24C231780](2);

  return sub_24ADF0718(a1, v3);
}

uint64_t PersonModel.Tag.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C231780](2);
      sub_24ADF0718(v4, v1);
      return sub_24AE09868();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

uint64_t sub_24AE00DC4()
{
  v1 = *v0;
  sub_24AE09838();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C231780](2);
      sub_24ADF0718(v4, v1);
      return sub_24AE09868();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C231780](v2);
  return sub_24AE09868();
}

uint64_t sub_24AE00E38(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x24C231780](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x24C231780](v4);
  }

  MEMORY[0x24C231780](2);

  return sub_24ADF0718(a1, v3);
}

uint64_t sub_24AE00EB8(uint64_t a1)
{
  v2 = *v1;
  sub_24AE09838();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x24C231780](2);
      sub_24ADF0718(v5, v2);
      return sub_24AE09868();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x24C231780](v3);
  return sub_24AE09868();
}

uint64_t PersonModel.contains(tag:)(unint64_t *a1)
{
  v3 = type metadata accessor for PersonModel(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v53 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v53 - v11);
  v13 = *a1;
  if (!v13)
  {
    return 1;
  }

  if (v13 != 1)
  {
    v25 = *(v1 + 16);
    v24 = *(v1 + 24);
    v26 = *(v1 + 32);
    v27 = *(v1 + 40);
    v28 = *(v1 + 48);
    v29 = v1;
    v30 = *(v1 + 56);
    v55 = v25;
    v56 = v24;
    v57 = v26;
    v58 = v27;
    *&v59 = v28;
    *(&v59 + 1) = v30;
    sub_24AE08288();
    sub_24AE08288();
    sub_24AE08288();
    LOBYTE(v30) = PersonModel.AssociatedHandles.match(handlesSet:)(v13);

    if ((v30 & 1) == 0)
    {
      if (qword_27EFA87D0 != -1)
      {
        swift_once();
      }

      v32 = sub_24AE08E08();
      __swift_project_value_buffer(v32, qword_27EFAA620);
      sub_24AE02024(v29, v9, type metadata accessor for PersonModel);
      sub_24AE02024(v29, v6, type metadata accessor for PersonModel);
      sub_24AE08288();
      v33 = sub_24AE08DE8();
      v34 = sub_24AE09408();
      sub_24ADC3E14(v13);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54 = v36;
        *v35 = 136315650;
        v37 = *v9;
        v38 = v9[1];
        v55 = 0x3A3156444953;
        v56 = 0xE600000000000000;
        MEMORY[0x24C230FB0](v37, v38);
        v39 = v55;
        v40 = v56;
        sub_24AE0208C(v9, type metadata accessor for PersonModel);
        v41 = sub_24AD9F840(v39, v40, &v54);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2080;
        v42 = *(v6 + 3);
        v43 = v6[32];
        v44 = *(v6 + 5);
        v55 = *(v6 + 2);
        v56 = v42;
        v57 = v43;
        v58 = v44;
        v59 = *(v6 + 3);
        v45 = PersonModel.AssociatedHandles.debugDescription.getter();
        v47 = v46;
        sub_24AE0208C(v6, type metadata accessor for PersonModel);
        v48 = sub_24AD9F840(v45, v47, &v54);

        *(v35 + 14) = v48;
        *(v35 + 22) = 2080;
        sub_24AE01A58();
        v49 = sub_24AE09328();
        v51 = sub_24AD9F840(v49, v50, &v54);

        *(v35 + 24) = v51;
        _os_log_impl(&dword_24AD89000, v33, v34, "PersonModel: %s is not part of specificHandles - contains:false - handles: %s, specificHandles: %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C231F80](v36, -1, -1);
        MEMORY[0x24C231F80](v35, -1, -1);

        return 0;
      }

      sub_24AE0208C(v9, type metadata accessor for PersonModel);
      v52 = v6;
LABEL_16:
      sub_24AE0208C(v52, type metadata accessor for PersonModel);
      return 0;
    }

    return 1;
  }

  if (*(v1 + *(v10 + 36) + 8) != 1)
  {
    return 1;
  }

  if (qword_27EFA87D0 != -1)
  {
    swift_once();
  }

  v14 = sub_24AE08E08();
  __swift_project_value_buffer(v14, qword_27EFAA620);
  sub_24AE02024(v1, v12, type metadata accessor for PersonModel);
  v15 = sub_24AE08DE8();
  v16 = sub_24AE09408();
  if (!os_log_type_enabled(v15, v16))
  {

    v52 = v12;
    goto LABEL_16;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v54 = v18;
  *v17 = 136315138;
  v19 = *v12;
  v20 = v12[1];
  v55 = 0x3A3156444953;
  v56 = 0xE600000000000000;
  MEMORY[0x24C230FB0](v19, v20);
  v21 = v55;
  v22 = v56;
  sub_24AE0208C(v12, type metadata accessor for PersonModel);
  v23 = sub_24AD9F840(v21, v22, &v54);

  *(v17 + 4) = v23;
  _os_log_impl(&dword_24AD89000, v15, v16, "PersonModel: %s is not favorite - contains:false", v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x24C231F80](v18, -1, -1);
  MEMORY[0x24C231F80](v17, -1, -1);

  return 0;
}

uint64_t sub_24AE014A0()
{
  result = sub_24ADDB850(&unk_285E2F5E0);
  qword_27EFB76D8 = result;
  return result;
}

uint64_t PersonModel.Sort.sortDescriptor<A>(rootKeyPath:)(uint64_t a1, uint64_t a2)
{
  if (*v2 > 1u)
  {
    if (*v2 == 2)
    {
      KeyPath = swift_getKeyPath();
      v6 = KeyPath.appendingSendable<A>(path:)(KeyPath);

      v8 = sub_24ADC3CF8();
      v7 = &type metadata for PersonModel.DisplayName;
    }

    else
    {
      v9 = swift_getKeyPath();
      v6 = KeyPath.appendingSendable<A>(path:)(v9);

      v8 = sub_24ADC3BD4();
      v7 = &type metadata for PersonModel.UniqueIdentifier;
    }
  }

  else
  {
    v5 = swift_getKeyPath();
    v6 = KeyPath.appendingSendable<A>(path:)(v5);

    v7 = MEMORY[0x277D83B88];
    v8 = MEMORY[0x277D83BA0];
  }

  return sub_24ADF4914(v6, 0, a2, v7, v8);
}

uint64_t sub_24AE015E8()
{
  v1 = (v0 + *(type metadata accessor for PersonModel(0) + 36));
  if (v1[8])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_24AE01620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t sub_24AE0166C()
{
  v1 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(type metadata accessor for PersonModel(0) + 32);
  PersonModel.Relationship.pendingAction.getter(&v8);
  if (v8 != 2)
  {
    return ~v8 & 1;
  }

  sub_24AE02024(v0 + v4, v3, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24AE0208C(v3, type metadata accessor for PersonModel.Relationship.Following);
    return 3;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24ADF9B4C(&v3[*(v6 + 48)]);
    sub_24ADF9B4C(v3);
    return 2;
  }
}

void *sub_24AE017A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for PersonModel(0) + 32);
  result = PersonModel.Relationship.pendingAction.getter(&v12);
  if (v12 == 2)
  {
    sub_24AE02024(a1 + v7, v6, type metadata accessor for PersonModel.Relationship.Following);
    if (swift_getEnumCaseMultiPayload())
    {
      result = sub_24AE0208C(v6, type metadata accessor for PersonModel.Relationship.Following);
      v9 = 3;
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
      sub_24ADF9B4C(&v6[*(v10 + 48)]);
      result = sub_24ADF9B4C(v6);
      v9 = 2;
    }
  }

  else
  {
    v9 = (v12 & 1) == 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_24AE018DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24AE018E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
  return sub_24AE08288();
}

uint64_t _s10FindMyCore11PersonModelV3TagO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_24ADC3E24(*a2);
      sub_24ADC3E24(v2);
      v4 = sub_24AE00090(v2, v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_24ADC3E24(*a2);
    sub_24ADC3E24(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_24ADC3E14(v2);
  sub_24ADC3E14(v3);
  return v4 & 1;
}

unint64_t sub_24AE01A58()
{
  result = qword_27EFAA648;
  if (!qword_27EFAA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA648);
  }

  return result;
}

unint64_t sub_24AE01AB0()
{
  result = qword_27EFAA650;
  if (!qword_27EFAA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA650);
  }

  return result;
}

unint64_t sub_24AE01B08()
{
  result = qword_27EFAA658;
  if (!qword_27EFAA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA658);
  }

  return result;
}

unint64_t sub_24AE01B5C()
{
  result = qword_27EFAA660;
  if (!qword_27EFAA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA660);
  }

  return result;
}

unint64_t sub_24AE01BDC()
{
  result = qword_27EFAA668;
  if (!qword_27EFAA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA668);
  }

  return result;
}

unint64_t sub_24AE01C64()
{
  result = qword_27EFAA680;
  if (!qword_27EFAA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA680);
  }

  return result;
}

unint64_t sub_24AE01CB8(uint64_t a1)
{
  result = sub_24AE01CE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AE01CE0()
{
  result = qword_27EFAA688;
  if (!qword_27EFAA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA688);
  }

  return result;
}

unint64_t sub_24AE01D38()
{
  result = qword_27EFAA690;
  if (!qword_27EFAA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA690);
  }

  return result;
}

unint64_t sub_24AE01D90()
{
  result = qword_27EFAA698;
  if (!qword_27EFAA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA698);
  }

  return result;
}

unint64_t sub_24AE01DE8()
{
  result = qword_27EFAA6A0;
  if (!qword_27EFAA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA6A0);
  }

  return result;
}

uint64_t sub_24AE01E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24AE01EA4()
{
  result = qword_27EFAA6A8;
  if (!qword_27EFAA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA6A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FindMyCore11PersonModelV3TagO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24AE01F54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AE01FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24AE02024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AE0208C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonModel.Relationship.init(following:follower:replyState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for PersonModel.Relationship(0);
  v9 = *(v8 + 24);
  *(a4 + v9) = 2;
  sub_24AD92C44(a1, a4, type metadata accessor for PersonModel.Relationship.Following);
  result = sub_24AD92C44(a2, a4 + *(v8 + 20), type metadata accessor for PersonModel.Relationship.Follower);
  *(a4 + v9) = v7;
  return result;
}

BOOL sub_24AE0228C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = v3;
  v7 = a1(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_24AE0239C(v6, &v13 - v8, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_24AE02404(v9, a3);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v9[*(v11 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v9, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  return EnumCaseMultiPayload == 0;
}

uint64_t sub_24AE0239C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AE02404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonModel.Relationship.Follower.expiryDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v2, v6, type metadata accessor for PersonModel.Relationship.Follower);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24AE088E8();
    (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
    return sub_24AE02404(v6, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24AE05B10(v6, a1, &qword_27EFA8878, &qword_24AE0E6E0);
    return sub_24AD92BE4(&v6[v9], &qword_27EFA8878, &qword_24AE0E6E0);
  }
}

BOOL sub_24AE025F4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = v3;
  v7 = a1(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_24AE0239C(v6, &v12 - v8, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24AD92BE4(v9, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24AE02404(v9, a3);
  }

  return EnumCaseMultiPayload == 1;
}

BOOL PersonModel.Relationship.Follower.isPendingOffer.getter()
{
  v1 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v0, v3, type metadata accessor for PersonModel.Relationship.Follower);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_24AD92BE4(v3, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24AE02404(v3, type metadata accessor for PersonModel.Relationship.Follower);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t PersonModel.Relationship.pendingAction.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersonModel.Relationship(0);
  sub_24AE0239C(v1 + *(v6 + 20), v5, type metadata accessor for PersonModel.Relationship.Follower);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_24AD92BE4(v5, &qword_27EFA8878, &qword_24AE0E6E0);
    v8 = 0;
  }

  else
  {
    v9 = *(v1 + *(v6 + 24));
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    result = sub_24AE02404(v5, type metadata accessor for PersonModel.Relationship.Follower);
  }

  *a1 = v8;
  return result;
}

uint64_t PersonModel.Relationship.sortOrder.getter()
{
  v1 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonModel.Relationship.pendingAction.getter(&v7);
  if (v7 != 2)
  {
    return ~v7 & 1;
  }

  sub_24AE0239C(v0, v3, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24AE02404(v3, type metadata accessor for PersonModel.Relationship.Following);
    return 3;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v3[*(v5 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v3, &qword_27EFA8878, &qword_24AE0E6E0);
    return 2;
  }
}

uint64_t PersonModel.Relationship.replyState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PersonModel.Relationship(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PersonModel.Relationship.replyState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PersonModel.Relationship(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_24AE02C30()
{
  v0 = type metadata accessor for PersonModel.Relationship(0);
  __swift_allocate_value_buffer(v0, qword_27EFAA6C0);
  v1 = __swift_project_value_buffer(v0, qword_27EFAA6C0);
  type metadata accessor for PersonModel.Relationship.Following(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PersonModel.Relationship.Follower(0);
  result = swift_storeEnumTagMultiPayload();
  *(v1 + *(v0 + 24)) = 2;
  return result;
}

uint64_t static PersonModel.Relationship.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA87F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonModel.Relationship(0);
  v3 = __swift_project_value_buffer(v2, qword_27EFAA6C0);
  return sub_24AE0239C(v3, a1, type metadata accessor for PersonModel.Relationship);
}

uint64_t PersonModel.Relationship.isMutual.getter()
{
  v1 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v0, v6, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    v7 = type metadata accessor for PersonModel.Relationship.Following;
    v8 = v6;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v6[*(v9 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v6, &qword_27EFA8878, &qword_24AE0E6E0);
    v10 = type metadata accessor for PersonModel.Relationship(0);
    sub_24AE0239C(v0 + *(v10 + 20), v3, type metadata accessor for PersonModel.Relationship.Follower);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_24AD92BE4(&v3[*(v9 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
      sub_24AD92BE4(v3, &qword_27EFA8878, &qword_24AE0E6E0);
      return 1;
    }

    v7 = type metadata accessor for PersonModel.Relationship.Follower;
    v8 = v3;
  }

  sub_24AE02404(v8, v7);
  return 0;
}

uint64_t PersonModel.Relationship.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  PersonModel.Relationship.pendingAction.getter(&v19);
  if (v19 == 2)
  {
    v9 = type metadata accessor for PersonModel.Relationship(0);
    sub_24AE0239C(v1 + *(v9 + 20), v8, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_5:
      result = sub_24AE02404(v8, type metadata accessor for PersonModel.Relationship.Follower);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_9;
    }

    sub_24AE0239C(v8, v6, type metadata accessor for PersonModel.Relationship.Follower);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v11 = sub_24AE088E8();
    if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
    {
      sub_24AD92BE4(&v6[v10], &qword_27EFA8878, &qword_24AE0E6E0);
      sub_24AD92BE4(v6, &qword_27EFA8878, &qword_24AE0E6E0);
      goto LABEL_5;
    }

    v18 = v10;
    if (qword_27EFA86E8 != -1)
    {
      swift_once();
    }

    v13 = qword_27EFAA008;
    v14 = unk_27EFAA010;
    v15 = qword_27EFAA018;
    v16 = unk_27EFAA020;
    v17 = word_27EFAA028 | (HIBYTE(word_27EFAA028) << 8);
    sub_24AE08288();
    sub_24AE08288();
    sub_24AD92BE4(v6, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(&v6[v18], &qword_27EFA8878, &qword_24AE0E6E0);
    result = sub_24AE02404(v8, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    if (qword_27EFA86D8 != -1)
    {
      swift_once();
    }

    v13 = qword_27EFA9FB8;
    v14 = unk_27EFA9FC0;
    v15 = qword_27EFA9FC8;
    v16 = unk_27EFA9FD0;
    v17 = word_27EFA9FD8 | (HIBYTE(word_27EFA9FD8) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

LABEL_9:
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  return result;
}

uint64_t PersonModel.Relationship.status(isLocationSharingOn:isCapableOfRunningActions:includePendingActionStatus:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char *a4@<X8>)
{
  LODWORD(v58) = a3;
  LODWORD(v57) = a2;
  v52 = a1;
  v6 = sub_24AE08948();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24AE086E8();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24AE08F78();
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v59);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PersonModel.Relationship.Following(0);
  v12 = MEMORY[0x28223BE20](v63);
  v62 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA6D8, &qword_24AE12838);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v49 - v19;
  v20 = sub_24AE08718();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  PersonModel.Relationship.pendingAction.getter(&v65);
  if (v65 == 2)
  {
    v58 = a4;
    v27 = v20;
  }

  else
  {
    v50 = v17;
    v64 = v65 & 1;
    PersonModel.Relationship.PendingAction.compactStatus(isCapableOfRunningActions:)(v24);
    v28 = *(v21 + 32);
    v28(v26, v24, v20);
    v27 = v20;
    if (v58)
    {
      v28(a4, v26, v20);
      return (*(v21 + 56))(a4, 0, 1, v20);
    }

    (*(v21 + 8))(v26, v20);
    v58 = a4;
    v17 = v50;
  }

  v30 = type metadata accessor for PersonModel.Relationship(0);
  v31 = *(v15 + 48);
  sub_24AE0239C(v4 + *(v30 + 20), v17, type metadata accessor for PersonModel.Relationship.Follower);
  sub_24AE0239C(v4, &v17[v31], type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = v60;
  v34 = v62;
  if (!EnumCaseMultiPayload)
  {
    v36 = v51;
    sub_24AE0239C(&v17[v31], v51, type metadata accessor for PersonModel.Relationship.Following);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v35 = v61;
    (*(v21 + 56))(v61, 1, 1, v27);
    sub_24AD92BE4(v36 + v37, &qword_27EFA8878, &qword_24AE0E6E0);
    v38 = v36;
LABEL_11:
    sub_24AD92BE4(v38, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE02404(&v17[v31], type metadata accessor for PersonModel.Relationship.Following);
LABEL_18:
    v44 = type metadata accessor for PersonModel.Relationship.Follower;
    v45 = v17;
LABEL_24:
    sub_24AE02404(v45, v44);
    return sub_24AE05B10(v35, v58, &qword_27EFA8D98, &qword_24AE0B490);
  }

  v35 = v61;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  sub_24AE0239C(&v17[v31], v62, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24AD92BE4(v34, &qword_27EFAA6E0, &qword_24AE12840);
    goto LABEL_15;
  }

  v57 = v21;
  sub_24AE0239C(v17, v33, type metadata accessor for PersonModel.Relationship.Follower);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
  if (v52)
  {
    sub_24AE08F08();
    v40 = type metadata accessor for ModelsModule();
    v41 = v53;
    *v53 = v40;
    (*(v55 + 104))(v41, *MEMORY[0x277CC9120], v56);
    sub_24AE08938();
    sub_24AE08728();
    (*(v57 + 56))(v35, 0, 1, v27);
    sub_24AD92BE4(v62, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v33 + v39, &qword_27EFA8878, &qword_24AE0E6E0);
    v38 = v33;
    goto LABEL_11;
  }

  sub_24AD92BE4(v62, &qword_27EFA8878, &qword_24AE0E6E0);
  sub_24AD92BE4(v33 + v39, &qword_27EFA8878, &qword_24AE0E6E0);
  sub_24AD92BE4(v33, &qword_27EFA8878, &qword_24AE0E6E0);
  v21 = v57;
LABEL_15:
  if (!swift_getEnumCaseMultiPayload())
  {
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    if (v52)
    {
      sub_24AE08F08();
      v47 = type metadata accessor for ModelsModule();
      v48 = v53;
      *v53 = v47;
      (*(v55 + 104))(v48, *MEMORY[0x277CC9120], v56);
      sub_24AE08938();
      sub_24AE08728();
      (*(v21 + 56))(v35, 0, 1, v27);
    }

    else
    {
      (*(v21 + 56))(v35, 1, 1, v27);
    }

    sub_24AD92BE4(&v17[v46], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v17, &qword_27EFA8878, &qword_24AE0E6E0);
    v44 = type metadata accessor for PersonModel.Relationship.Following;
    v45 = &v17[v31];
    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AE08F08();
    v42 = type metadata accessor for ModelsModule();
    v43 = v53;
    *v53 = v42;
    (*(v55 + 104))(v43, *MEMORY[0x277CC9120], v56);
    sub_24AE08938();
    sub_24AE08728();
    (*(v21 + 56))(v35, 0, 1, v27);
    sub_24AD92BE4(&v17[v31], &qword_27EFA8878, &qword_24AE0E6E0);
    goto LABEL_18;
  }

  (*(v21 + 56))(v35, 1, 1, v27);
  sub_24AD92BE4(v17, &qword_27EFAA6D8, &qword_24AE12838);
  return sub_24AE05B10(v35, v58, &qword_27EFA8D98, &qword_24AE0B490);
}

uint64_t PersonModel.Relationship.PendingAction.compactStatus(isCapableOfRunningActions:)@<X0>(uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24AE08948();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24AE086E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24AE08F78();
  MEMORY[0x28223BE20](v8 - 8);
  v19 = sub_24AE08718();
  v9 = *(v19 - 8);
  v10 = MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *v2;
  v16 = (v5 + 104);
  if (v15)
  {
    sub_24AE08F08();
    *v7 = type metadata accessor for ModelsModule();
    (*v16)(v7, *MEMORY[0x277CC9120], v4);
    sub_24AE08938();
    v14 = v12;
  }

  else
  {
    sub_24AE08F08();
    *v7 = type metadata accessor for ModelsModule();
    (*v16)(v7, *MEMORY[0x277CC9120], v4);
    sub_24AE08938();
  }

  sub_24AE08728();
  return (*(v9 + 32))(v20, v14, v19);
}

uint64_t PersonModel.Relationship.PendingAction.status(isCapableOfRunningActions:)(uint64_t a1, uint64_t a2, char a3)
{
  v44 = a1;
  v45 = a2;
  v5 = sub_24AE08948();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AE086E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA6E8, &qword_24AE12848);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v21 = *v3;
  v42 = *(v18 + 48);
  v43 = v18;
  v22 = (v7 + 104);
  if (v21)
  {
    sub_24AE08F08();
    if (a3)
    {
      *v9 = type metadata accessor for ModelsModule();
      (*v22)(v9, *MEMORY[0x277CC9120], v6);
      sub_24AE08938();
      sub_24AE08728();
      v23 = 1;
      v24 = v42;
    }

    else
    {
      v27 = type metadata accessor for ModelsModule();
      *v9 = v27;
      v28 = *MEMORY[0x277CC9120];
      v29 = *v22;
      (*v22)(v9, v28, v6);
      sub_24AE08938();
      sub_24AE08728();
      sub_24AE08F08();
      *v9 = v27;
      v29(v9, v28, v6);
      sub_24AE08938();
      v24 = v42;
      sub_24AE08728();
      v23 = 0;
    }

    v30 = sub_24AE08718();
    v31 = *(v30 - 8);
    (*(v31 + 56))(&v14[v24], v23, 1, v30);
    v32 = v43;
    v33 = *(v43 + 48);
    (*(v31 + 32))(v20, v14, v30);
    v34 = &v14[v33];
  }

  else
  {
    sub_24AE08F08();
    if (a3)
    {
      *v9 = type metadata accessor for ModelsModule();
      (*v22)(v9, *MEMORY[0x277CC9120], v6);
      sub_24AE08938();
      sub_24AE08728();
      v25 = 1;
      v26 = v42;
    }

    else
    {
      v35 = type metadata accessor for ModelsModule();
      *v9 = v35;
      v36 = *MEMORY[0x277CC9120];
      v37 = *v22;
      (*v22)(v9, v36, v6);
      sub_24AE08938();
      sub_24AE08728();
      sub_24AE08F08();
      *v9 = v35;
      v37(v9, v36, v6);
      sub_24AE08938();
      v26 = v42;
      sub_24AE08728();
      v25 = 0;
    }

    v30 = sub_24AE08718();
    v38 = *(v30 - 8);
    (*(v38 + 56))(&v17[v26], v25, 1, v30);
    v32 = v43;
    v33 = *(v43 + 48);
    (*(v38 + 32))(v20, v17, v30);
    v34 = &v17[v33];
  }

  sub_24AE05B10(v34, &v20[v33], &qword_27EFA8D98, &qword_24AE0B490);
  v39 = *(v32 + 48);
  sub_24AE08718();
  (*(*(v30 - 8) + 32))(v44, v20, v30);
  return sub_24AE05B10(&v20[v39], v45, &qword_27EFA8D98, &qword_24AE0B490);
}

uint64_t PersonModel.Relationship.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v2;
  sub_24AE0239C(v2, v27, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24AE05B10(v27, v16, &qword_27EFA8878, &qword_24AE0E6E0);
      MEMORY[0x24C231780](2);
      sub_24ADF9ADC(v16, v13);
      v29 = v48;
      v30 = v49;
      if ((*(v49 + 48))(v13, 1, v48) == 1)
      {
        sub_24AE09858();
      }

      else
      {
        v36 = v47;
        (*(v30 + 32))(v47, v13, v29);
        sub_24AE09858();
        sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_24AE08EB8();
        (*(v30 + 8))(v36, v29);
      }

      sub_24AD92BE4(v16, &qword_27EFA8878, &qword_24AE0E6E0);
      v35 = v50;
    }

    else
    {
      MEMORY[0x24C231780](1);
      v35 = v50;
    }
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24AE05B10(v27, v24, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v27[v31], v22, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v24, v19);
    v33 = v48;
    v32 = v49;
    v34 = *(v49 + 48);
    if (v34(v19, 1, v48) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v37 = *(v32 + 32);
      v46 = v34;
      v38 = v47;
      v37(v47, v19, v33);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      v39 = v38;
      v34 = v46;
      (*(v32 + 8))(v39, v33);
    }

    v35 = v50;
    sub_24ADF9ADC(v22, v10);
    if (v34(v10, 1, v33) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v40 = v49;
      v41 = v47;
      (*(v49 + 32))(v47, v10, v33);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v40 + 8))(v41, v33);
    }

    sub_24AD92BE4(v22, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v24, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  v42 = type metadata accessor for PersonModel.Relationship(0);
  PersonModel.Relationship.Follower.hash(into:)(a1);
  v43 = *(v35 + *(v42 + 24));
  if (v43 == 2)
  {
    return sub_24AE09858();
  }

  sub_24AE09858();
  return MEMORY[0x24C231780](v43 & 1);
}

uint64_t PersonModel.Relationship.Follower.hash(into:)(uint64_t a1)
{
  v51 = a1;
  v2 = sub_24AE088E8();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v47 = &v46 - v26;
  v27 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v1, v29, type metadata accessor for PersonModel.Relationship.Follower);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x24C231780](1);
    }

    sub_24AE05B10(v29, v10, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](3);
    sub_24ADF9ADC(v10, v7);
    v37 = v49;
    v36 = v50;
    if ((*(v49 + 48))(v7, 1, v50) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v42 = v48;
      (*(v37 + 32))(v48, v7, v36);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v37 + 8))(v42, v36);
    }

    v43 = v10;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24AE05B10(v29, v16, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](2);
    sub_24ADF9ADC(v16, v13);
    v39 = v49;
    v38 = v50;
    if ((*(v49 + 48))(v13, 1, v50) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v44 = v48;
      (*(v39 + 32))(v48, v13, v38);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v39 + 8))(v44, v38);
    }

    v43 = v16;
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    v32 = v47;
    sub_24AE05B10(v29, v47, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v29[v31], v25, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v32, v22);
    v34 = v49;
    v33 = v50;
    v35 = *(v49 + 48);
    if (v35(v22, 1, v50) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v41 = v48;
      (*(v34 + 32))(v48, v22, v33);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v34 + 8))(v41, v33);
    }

    sub_24ADF9ADC(v25, v19);
    if (v35(v19, 1, v33) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v45 = v48;
      (*(v34 + 32))(v48, v19, v33);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v34 + 8))(v45, v33);
    }

    sub_24AD92BE4(v25, &qword_27EFA8878, &qword_24AE0E6E0);
    v43 = v47;
  }

  return sub_24AD92BE4(v43, &qword_27EFA8878, &qword_24AE0E6E0);
}

uint64_t PersonModel.Relationship.Following.hash(into:)(uint64_t a1)
{
  v40 = a1;
  v2 = sub_24AE088E8();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = type metadata accessor for PersonModel.Relationship.Following(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AE0239C(v1, v24, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x24C231780](1);
    }

    sub_24AE05B10(v24, v10, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](2);
    sub_24ADF9ADC(v10, v7);
    v26 = v39;
    if ((*(v39 + 48))(v7, 1, v2) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v31 = v38;
      (*(v26 + 32))(v38, v7, v2);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v26 + 8))(v31, v2);
    }

    v32 = v10;
  }

  else
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24AE05B10(v24, v21, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v24[v27], v19, &qword_27EFA8878, &qword_24AE0E6E0);
    MEMORY[0x24C231780](0);
    sub_24ADF9ADC(v21, v16);
    v28 = v39;
    v29 = *(v39 + 48);
    if (v29(v16, 1, v2) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v33 = *(v28 + 32);
      v37 = v29;
      v34 = v38;
      v33(v38, v16, v2);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      v35 = v34;
      v29 = v37;
      (*(v28 + 8))(v35, v2);
    }

    sub_24ADF9ADC(v19, v13);
    if (v29(v13, 1, v2) == 1)
    {
      sub_24AE09858();
    }

    else
    {
      v36 = v38;
      (*(v28 + 32))(v38, v13, v2);
      sub_24AE09858();
      sub_24AE074CC(&qword_27EFA9DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24AE08EB8();
      (*(v28 + 8))(v36, v2);
    }

    sub_24AD92BE4(v19, &qword_27EFA8878, &qword_24AE0E6E0);
    v32 = v21;
  }

  return sub_24AD92BE4(v32, &qword_27EFA8878, &qword_24AE0E6E0);
}

uint64_t sub_24AE05984(uint64_t (*a1)(void *))
{
  sub_24AE09838();
  a1(v3);
  return sub_24AE09868();
}

uint64_t sub_24AE059E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_24AE09838();
  a3(v5);
  return sub_24AE09868();
}

uint64_t sub_24AE05A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24AE09838();
  a4(v6);
  return sub_24AE09868();
}

uint64_t sub_24AE05AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AE05B10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

BOOL _s10FindMyCore11PersonModelV12RelationshipV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  if ((_s10FindMyCore11PersonModelV12RelationshipV9FollowingO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PersonModel.Relationship(0);
  if ((_s10FindMyCore11PersonModelV12RelationshipV8FollowerO2eeoiySbAG_AGtFZ_0(&a1[*(v4 + 20)], &a2[*(v4 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = a1[v5];
  v7 = a2[v5];
  if (v6 != 2)
  {
    return v7 != 2 && ((v7 ^ v6) & 1) == 0;
  }

  return v7 == 2;
}

uint64_t _s10FindMyCore11PersonModelV12RelationshipV9FollowingO2eeoiySbAG_AGtFZ_0(char *a1, char *a2)
{
  v82 = a1;
  v83 = a2;
  v2 = sub_24AE088E8();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v76 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8870, &unk_24AE0A2C0);
  v4 = MEMORY[0x28223BE20](v81);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v74 = &v74 - v7;
  MEMORY[0x28223BE20](v6);
  v80 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v74 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  v23 = type metadata accessor for PersonModel.Relationship.Following(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA760, &qword_24AE12AE0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v74 - v31;
  v33 = &v74 + *(v30 + 56) - v31;
  sub_24AE0239C(v82, &v74 - v31, type metadata accessor for PersonModel.Relationship.Following);
  sub_24AE0239C(v83, v33, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v40 = v80;
    v82 = v22;
    v83 = v20;
    v77 = v14;
    sub_24AE0239C(v32, v28, type metadata accessor for PersonModel.Relationship.Following);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_24AD92BE4(&v28[v41], &qword_27EFA8878, &qword_24AE0E6E0);
      goto LABEL_13;
    }

    v75 = v32;
    v44 = v82;
    sub_24AE05B10(&v28[v41], v82, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(&v33[v41], v83, &qword_27EFA8878, &qword_24AE0E6E0);
    v45 = *(v81 + 48);
    v46 = v28;
    v47 = v40;
    sub_24AE05B10(v46, v40, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v33, v40 + v45, &qword_27EFA8878, &qword_24AE0E6E0);
    v48 = v78;
    v49 = *(v78 + 48);
    v50 = v40;
    v51 = v79;
    if (v49(v50, 1, v79) == 1)
    {
      if (v49(v47 + v45, 1, v51) == 1)
      {
        sub_24AD92BE4(v47, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_30:
        v65 = *(v81 + 48);
        v66 = v44;
        v67 = v44;
        v68 = v74;
        sub_24ADF9ADC(v66, v74);
        v69 = v83;
        sub_24ADF9ADC(v83, v68 + v65);
        if (v49(v68, 1, v51) == 1)
        {
          sub_24AD92BE4(v69, &qword_27EFA8878, &qword_24AE0E6E0);
          sub_24AD92BE4(v67, &qword_27EFA8878, &qword_24AE0E6E0);
          if (v49(v68 + v65, 1, v51) == 1)
          {
            sub_24AD92BE4(v68, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_39:
            v42 = v75;
            goto LABEL_11;
          }
        }

        else
        {
          v70 = v77;
          sub_24ADF9ADC(v68, v77);
          if (v49(v68 + v65, 1, v51) != 1)
          {
            v71 = v76;
            (*(v48 + 32))(v76, v68 + v65, v51);
            sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v72 = sub_24AE08EF8();
            v73 = *(v48 + 8);
            v73(v71, v51);
            sub_24AD92BE4(v83, &qword_27EFA8878, &qword_24AE0E6E0);
            sub_24AD92BE4(v82, &qword_27EFA8878, &qword_24AE0E6E0);
            v73(v70, v51);
            sub_24AD92BE4(v68, &qword_27EFA8878, &qword_24AE0E6E0);
            if (v72)
            {
              goto LABEL_39;
            }

LABEL_37:
            sub_24AE02404(v75, type metadata accessor for PersonModel.Relationship.Following);
            return 0;
          }

          sub_24AD92BE4(v83, &qword_27EFA8878, &qword_24AE0E6E0);
          sub_24AD92BE4(v82, &qword_27EFA8878, &qword_24AE0E6E0);
          (*(v48 + 8))(v70, v51);
        }

        v55 = &qword_27EFA8870;
        v56 = &unk_24AE0A2C0;
        v54 = v68;
LABEL_36:
        sub_24AD92BE4(v54, v55, v56);
        goto LABEL_37;
      }
    }

    else
    {
      v53 = v17;
      sub_24ADF9ADC(v47, v17);
      if (v49(v47 + v45, 1, v51) != 1)
      {
        v61 = v76;
        (*(v48 + 32))(v76, v47 + v45, v51);
        sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v62 = sub_24AE08EF8();
        v63 = *(v48 + 8);
        v64 = v61;
        v44 = v82;
        v63(v64, v51);
        v63(v53, v51);
        sub_24AD92BE4(v47, &qword_27EFA8878, &qword_24AE0E6E0);
        if (v62)
        {
          goto LABEL_30;
        }

LABEL_26:
        sub_24AD92BE4(v83, &qword_27EFA8878, &qword_24AE0E6E0);
        v54 = v44;
        v55 = &qword_27EFA8878;
        v56 = &qword_24AE0E6E0;
        goto LABEL_36;
      }

      (*(v48 + 8))(v17, v51);
    }

    sub_24AD92BE4(v47, &qword_27EFA8870, &unk_24AE0A2C0);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_24AE0239C(v32, v26, type metadata accessor for PersonModel.Relationship.Following);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *(v81 + 48);
    v36 = v77;
    sub_24AE05B10(v26, v77, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v33, v36 + v35, &qword_27EFA8878, &qword_24AE0E6E0);
    v38 = v78;
    v37 = v79;
    v39 = *(v78 + 48);
    if (v39(v36, 1, v79) == 1)
    {
      if (v39(v36 + v35, 1, v37) == 1)
      {
        sub_24AD92BE4(v36, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_10:
        v42 = v32;
LABEL_11:
        sub_24AE02404(v42, type metadata accessor for PersonModel.Relationship.Following);
        return 1;
      }
    }

    else
    {
      v52 = v75;
      sub_24ADF9ADC(v36, v75);
      if (v39(v36 + v35, 1, v37) != 1)
      {
        v57 = v36 + v35;
        v58 = v76;
        (*(v38 + 32))(v76, v57, v37);
        sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v59 = sub_24AE08EF8();
        v60 = *(v38 + 8);
        v60(v58, v37);
        v60(v52, v37);
        sub_24AD92BE4(v36, &qword_27EFA8878, &qword_24AE0E6E0);
        if (v59)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }

      (*(v38 + 8))(v52, v37);
    }

    sub_24AD92BE4(v36, &qword_27EFA8870, &unk_24AE0A2C0);
LABEL_22:
    sub_24AE02404(v32, type metadata accessor for PersonModel.Relationship.Following);
    return 0;
  }

  v28 = v26;
LABEL_13:
  sub_24AD92BE4(v28, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_14:
  sub_24AD92BE4(v32, &qword_27EFAA760, &qword_24AE12AE0);
  return 0;
}

uint64_t _s10FindMyCore11PersonModelV12RelationshipV8FollowerO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE088E8();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8870, &unk_24AE0A2C0);
  v6 = MEMORY[0x28223BE20](v97);
  v93 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v86 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v87 = &v86 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v89 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v86 = &v86 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v88 = &v86 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v86 - v25;
  MEMORY[0x28223BE20](v24);
  v92 = &v86 - v26;
  v27 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v86 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFAA768, &qword_24AE12AE8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v86 + *(v37 + 56) - v38;
  v40 = a1;
  v41 = &v86 - v38;
  sub_24AE0239C(v40, &v86 - v38, type metadata accessor for PersonModel.Relationship.Follower);
  sub_24AE0239C(a2, v39, type metadata accessor for PersonModel.Relationship.Follower);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24AE0239C(v41, v35, type metadata accessor for PersonModel.Relationship.Follower);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24AD92BE4(&v35[v43], &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_18:
        sub_24AD92BE4(v35, &qword_27EFA8878, &qword_24AE0E6E0);
        goto LABEL_19;
      }

      v54 = v92;
      sub_24AE05B10(&v35[v43], v92, &qword_27EFA8878, &qword_24AE0E6E0);
      v55 = v94;
      sub_24AE05B10(&v39[v43], v94, &qword_27EFA8878, &qword_24AE0E6E0);
      v56 = *(v97 + 48);
      v57 = v35;
      v58 = v90;
      sub_24AE05B10(v57, v90, &qword_27EFA8878, &qword_24AE0E6E0);
      sub_24AE05B10(v39, v58 + v56, &qword_27EFA8878, &qword_24AE0E6E0);
      v60 = v95;
      v59 = v96;
      v61 = *(v95 + 48);
      if (v61(v58, 1, v96) == 1)
      {
        if (v61(v58 + v56, 1, v59) == 1)
        {
          sub_24AD92BE4(v58, &qword_27EFA8878, &qword_24AE0E6E0);
LABEL_38:
          v78 = *(v97 + 48);
          v79 = v87;
          sub_24ADF9ADC(v54, v87);
          sub_24ADF9ADC(v55, v79 + v78);
          if (v61(v79, 1, v59) == 1)
          {
            sub_24AD92BE4(v55, &qword_27EFA8878, &qword_24AE0E6E0);
            sub_24AD92BE4(v54, &qword_27EFA8878, &qword_24AE0E6E0);
            if (v61(v79 + v78, 1, v59) == 1)
            {
              v49 = v79;
              goto LABEL_41;
            }

            goto LABEL_45;
          }

          v81 = v86;
          sub_24ADF9ADC(v79, v86);
          if (v61(v79 + v78, 1, v59) == 1)
          {
            sub_24AD92BE4(v94, &qword_27EFA8878, &qword_24AE0E6E0);
            sub_24AD92BE4(v54, &qword_27EFA8878, &qword_24AE0E6E0);
            (*(v60 + 8))(v81, v59);
LABEL_45:
            v63 = &qword_27EFA8870;
            v64 = &unk_24AE0A2C0;
            v65 = v79;
            goto LABEL_46;
          }

          v82 = v91;
          (*(v60 + 32))(v91, v79 + v78, v59);
          sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v83 = v81;
          v84 = sub_24AE08EF8();
          v85 = *(v60 + 8);
          v85(v82, v59);
          sub_24AD92BE4(v94, &qword_27EFA8878, &qword_24AE0E6E0);
          sub_24AD92BE4(v54, &qword_27EFA8878, &qword_24AE0E6E0);
          v85(v83, v59);
          sub_24AD92BE4(v79, &qword_27EFA8878, &qword_24AE0E6E0);
          if (v84)
          {
            goto LABEL_42;
          }

LABEL_47:
          sub_24AE02404(v41, type metadata accessor for PersonModel.Relationship.Follower);
          return 0;
        }
      }

      else
      {
        v66 = v88;
        sub_24ADF9ADC(v58, v88);
        if (v61(v58 + v56, 1, v59) != 1)
        {
          v75 = v91;
          (*(v60 + 32))(v91, v58 + v56, v59);
          sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          LODWORD(v93) = sub_24AE08EF8();
          v76 = *(v60 + 8);
          v77 = v75;
          v55 = v94;
          v76(v77, v59);
          v54 = v92;
          v76(v66, v59);
          sub_24AD92BE4(v58, &qword_27EFA8878, &qword_24AE0E6E0);
          if (v93)
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        (*(v60 + 8))(v66, v59);
      }

      sub_24AD92BE4(v58, &qword_27EFA8870, &unk_24AE0A2C0);
LABEL_32:
      sub_24AD92BE4(v55, &qword_27EFA8878, &qword_24AE0E6E0);
      v65 = v54;
      v63 = &qword_27EFA8878;
      v64 = &qword_24AE0E6E0;
      goto LABEL_46;
    }

    sub_24AE0239C(v41, v33, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v33;
      goto LABEL_18;
    }

    v50 = *(v97 + 48);
    sub_24AE05B10(v33, v10, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v39, &v10[v50], &qword_27EFA8878, &qword_24AE0E6E0);
    v52 = v95;
    v51 = v96;
    v53 = *(v95 + 48);
    if (v53(v10, 1, v96) == 1)
    {
      if (v53(&v10[v50], 1, v51) == 1)
      {
        v49 = v10;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    sub_24ADF9ADC(v10, v19);
    if (v53(&v10[v50], 1, v51) == 1)
    {
      (*(v52 + 8))(v19, v51);
LABEL_28:
      v63 = &qword_27EFA8870;
      v64 = &unk_24AE0A2C0;
      v65 = v10;
      goto LABEL_46;
    }

    v72 = &v10[v50];
    v73 = v91;
    (*(v52 + 32))(v91, v72, v51);
    sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v69 = sub_24AE08EF8();
    v74 = *(v52 + 8);
    v74(v73, v51);
    v74(v19, v51);
    v71 = v10;
LABEL_35:
    sub_24AD92BE4(v71, &qword_27EFA8878, &qword_24AE0E6E0);
    if (v69)
    {
LABEL_42:
      sub_24AE02404(v41, type metadata accessor for PersonModel.Relationship.Follower);
      return 1;
    }

    goto LABEL_47;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24AE0239C(v41, v30, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v35 = v30;
      goto LABEL_18;
    }

    v44 = *(v97 + 48);
    v45 = v93;
    sub_24AE05B10(v30, v93, &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AE05B10(v39, v45 + v44, &qword_27EFA8878, &qword_24AE0E6E0);
    v47 = v95;
    v46 = v96;
    v48 = *(v95 + 48);
    if (v48(v45, 1, v96) == 1)
    {
      if (v48(v45 + v44, 1, v46) == 1)
      {
        v49 = v45;
LABEL_41:
        sub_24AD92BE4(v49, &qword_27EFA8878, &qword_24AE0E6E0);
        goto LABEL_42;
      }
    }

    else
    {
      v62 = v89;
      sub_24ADF9ADC(v45, v89);
      if (v48(v45 + v44, 1, v46) != 1)
      {
        v67 = v45 + v44;
        v68 = v91;
        (*(v47 + 32))(v91, v67, v46);
        sub_24AE074CC(&qword_27EFA8890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v69 = sub_24AE08EF8();
        v70 = *(v47 + 8);
        v70(v68, v46);
        v70(v62, v46);
        v71 = v45;
        goto LABEL_35;
      }

      (*(v47 + 8))(v62, v46);
    }

    v63 = &qword_27EFA8870;
    v64 = &unk_24AE0A2C0;
    v65 = v45;
LABEL_46:
    sub_24AD92BE4(v65, v63, v64);
    goto LABEL_47;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    goto LABEL_42;
  }

LABEL_19:
  sub_24AD92BE4(v41, &qword_27EFAA768, &qword_24AE12AE8);
  return 0;
}

unint64_t sub_24AE07430()
{
  result = qword_27EFAA6F0;
  if (!qword_27EFAA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA6F0);
  }

  return result;
}

uint64_t sub_24AE074CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AE075A8()
{
  result = qword_27EFAA710;
  if (!qword_27EFAA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA710);
  }

  return result;
}

void sub_24AE07624(uint64_t a1)
{
  type metadata accessor for PersonModel.Relationship.Following(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PersonModel.Relationship.Follower(319);
    if (v2 <= 0x3F)
    {
      sub_24AE076C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AE076C0()
{
  if (!qword_27EFAA728)
  {
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFAA728);
    }
  }
}

void sub_24AE07720(uint64_t a1)
{
  sub_24AE07794(319);
  if (v1 <= 0x3F)
  {
    sub_24AE07808();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24AE07794(uint64_t a1)
{
  if (!qword_27EFAA740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA8878, &qword_24AE0E6E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFAA740);
    }
  }
}

void sub_24AE07808()
{
  if (!qword_27EFAA748)
  {
    sub_24ADCC244(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EFAA748);
    }
  }
}

void sub_24AE07850(uint64_t a1)
{
  sub_24AE07794(319);
  if (v1 <= 0x3F)
  {
    sub_24AE07808();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t PersonModel.ServerIdentifier.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PersonModel.ServerIdentifier.rawValue.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t static PersonModel.ServerIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE097C8();
  }
}

uint64_t PersonModel.ServerIdentifier.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE09048();
  return sub_24AE09868();
}

unint64_t sub_24AE079B0()
{
  result = qword_27EFAA770;
  if (!qword_27EFAA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA770);
  }

  return result;
}

void *PersonModel.UniqueIdentifier.init(serverIdentifier:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t PersonModel.UniqueIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24AE090D8();
  if (result)
  {
    v7 = sub_24AE09058();
    v8 = sub_24ADF89E4(v7, a1, a2);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    a1 = MEMORY[0x24C230F60](v8, v10, v12, v14);
    a2 = v15;
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t PersonModel.UniqueIdentifier.rawValueWithoutPrefix.getter()
{
  v1 = *v0;
  sub_24AE08288();
  return v1;
}

uint64_t sub_24AE07B04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24AE07B84(uint64_t a1)
{
  MEMORY[0x24C230FB0](*v1, v1[1]);
  sub_24AE09048();
}

uint64_t sub_24AE07BF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24AE09838();
  MEMORY[0x24C230FB0](v2, v3);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24AE07C6C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24AE07D40@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x24C230FB0](*v1, v1[1]);
  *a1 = 0x3A3156444953;
  a1[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_24AE07D9C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24AE07E70(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 1;
}

uint64_t sub_24AE07F4C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x24C230FB0](*a2, a2[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

uint64_t _s10FindMyCore11PersonModelV16UniqueIdentifierV1loiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  MEMORY[0x24C230FB0](*a1, a1[1]);
  MEMORY[0x24C230FB0](v2, v3);

  return 0;
}

unint64_t sub_24AE080D4()
{
  result = qword_27EFAA778;
  if (!qword_27EFAA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA778);
  }

  return result;
}

unint64_t sub_24AE0814C()
{
  result = qword_27EFAA780;
  if (!qword_27EFAA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFAA780);
  }

  return result;
}

id sub_24AE081CC()
{
  type metadata accessor for ModelsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EFB76E0 = 0x736C65646F4DLL;
  *algn_27EFB76E8 = 0xE600000000000000;
  qword_27EFB76F0 = result;
  return result;
}