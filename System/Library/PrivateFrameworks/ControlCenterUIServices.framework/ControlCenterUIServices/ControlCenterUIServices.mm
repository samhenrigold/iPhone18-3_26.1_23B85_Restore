id sub_24429AB5C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2442B4878();

  return v3;
}

__CFString *static SBHIconGridSizeClass.controlCenterGridSizeClass(_:)(uint64_t a1)
{
  v1 = SBHIconGridSizeClassForCCUIGridSizeClass(a1);

  return v1;
}

__CFString *SBHIconGridSizeClassForCCUIGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"CCUIIconGridSizeClassSmall";
  }

  else
  {
    return off_278E10998[a1 - 1];
  }
}

uint64_t sub_24429AC0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24429AC2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_24429AC98(void *a1, uint64_t *a2)
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

void *sub_24429AD1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24429AD40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2442B48A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24429AD74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_24429ADBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredGallerySizeClass];
  *a2 = result;
  return result;
}

uint64_t sub_24429AE24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24429AE94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24429AECC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_24429AF0C@<X0>(char **a1@<X8>)
{
  result = CCUISControlsGalleryConfiguration.allowedControlSizes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24429AF64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_24429AFAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredGallerySizeClass];
  *a2 = result;
  return result;
}

uint64_t sub_24429B014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24429B058()
{
  MEMORY[0x245D5E730](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24429B090()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CCUIGridSizeClassForSBHIconGridSizeClass(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 == @"CCUIIconGridSizeClassSmall" || ([(__CFString *)v3 isEqualToString:@"CCUIIconGridSizeClassSmall"]& 1) != 0)
  {
    goto LABEL_3;
  }

  if (v4 == @"CCUIIconGridSizeClassSmallTall" || ([(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassSmallTall"]& 1) != 0)
  {
    v5 = 1;
    goto LABEL_32;
  }

  if (v4 == @"CCUIIconGridSizeClassSmallWide" || ([(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassSmallWide"]& 1) != 0)
  {
    v5 = 2;
    goto LABEL_32;
  }

  if (v4 == @"CCUIIconGridSizeClassSmallExtraWide" || ([(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassSmallExtraWide"]& 1) != 0)
  {
    v5 = 3;
    goto LABEL_32;
  }

  if (v4 == @"CCUIIconGridSizeClassMedium" || ([(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassMedium"]& 1) != 0)
  {
    v5 = 4;
    goto LABEL_32;
  }

  if (v4 == @"CCUIIconGridSizeClassMediumWide" || ([(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassMediumWide"]& 1) != 0)
  {
    v5 = 5;
    goto LABEL_32;
  }

  if (v4 == @"CCUIIconGridSizeClassLarge" || ([(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassLarge"]& 1) != 0)
  {
    v5 = 6;
    goto LABEL_32;
  }

  if (v4 == @"CCUIIconGridSizeClassLargeTall" || [(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassLargeTall"])
  {
    if ((a2 - 3) < 2)
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    if (v4 != @"CCUIIconGridSizeClassLargeExtraTall" && ![(__CFString *)v4 isEqualToString:@"CCUIIconGridSizeClassLargeExtraTall"])
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CCUIGridSizeClass CCUIGridSizeClassForSBHIconGridSizeClass(__strong SBHIconGridSizeClass _Nonnull, UIInterfaceOrientation)"}];
      [v7 handleFailureInFunction:v8 file:@"CCUIIconTypes.m" lineNumber:89 description:{@"Unimplemented Control Center grid size class: %@", v4}];

LABEL_3:
      v5 = 0;
      goto LABEL_32;
    }

    if ((a2 - 3) >= 2)
    {
      v5 = 9;
    }

    else
    {
      v5 = 10;
    }
  }

LABEL_32:

  return v5;
}

id SBHIconGridSizeClassSetForCCUIGridSizeClassMask(uint64_t a1)
{
  v1 = objc_alloc_init(MEMORY[0x277D66258]);
  v5 = MEMORY[0x277D85DD0];
  v6 = v1;
  v2 = v1;
  CCUIEnumerateGridSizeClassesWithBlock();
  v3 = [v2 copy];

  return v3;
}

void __SBHIconGridSizeClassSetForCCUIGridSizeClassMask_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & (1 << a2)) != 0)
  {
    v3 = *(a1 + 32);
    v4 = SBHIconGridSizeClassForCCUIGridSizeClass(a2);
    [v3 addGridSizeClass:v4];
  }
}

ControlCenterUIServices::ControlsGalleryCustomElementType_optional __swiftcall ControlsGalleryCustomElementType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24429B884()
{
  v1 = *v0;
  sub_2442B4C88();
  MEMORY[0x245D5E0D0](v1);
  return sub_2442B4CA8();
}

uint64_t sub_24429B8F8(uint64_t a1)
{
  v2 = *v1;
  sub_2442B4C88();
  MEMORY[0x245D5E0D0](v2);
  return sub_2442B4CA8();
}

void *sub_24429B93C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_24429B984()
{
  result = qword_27EDDCF48;
  if (!qword_27EDDCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDCF48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlsGalleryCustomElementType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlsGalleryCustomElementType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ControlsGalleryCustomCollections(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ControlsGalleryCustomCollections(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24429BC64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24429BC84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_24429BD00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_24429BD2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24429BDDC(uint64_t a1, id *a2)
{
  result = sub_2442B4888();
  *a2 = 0;
  return result;
}

uint64_t sub_24429BE54(uint64_t a1, id *a2)
{
  v3 = sub_2442B4898();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24429BED4@<X0>(uint64_t *a2@<X8>)
{
  sub_2442B48A8();
  v3 = sub_2442B4878();

  *a2 = v3;
  return result;
}

uint64_t sub_24429BF18()
{
  v0 = sub_2442B48A8();
  v1 = MEMORY[0x245D5DD40](v0);

  return v1;
}

uint64_t sub_24429BF54(uint64_t a1)
{
  sub_2442B48A8();
  sub_2442B48C8();
}

uint64_t sub_24429BFA8(uint64_t a1)
{
  sub_2442B48A8();
  sub_2442B4C88();
  sub_2442B48C8();
  v1 = sub_2442B4CA8();

  return v1;
}

uint64_t sub_24429C01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2442A0654(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24429C05C(void *a1, uint64_t *a2)
{
  v2 = sub_2442B48A8();
  v4 = v3;
  if (v2 == sub_2442B48A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2442B4C68();
  }

  return v7 & 1;
}

uint64_t sub_24429C0E4(uint64_t a1)
{
  v2 = sub_2442A03CC(&qword_27EDDD810, type metadata accessor for SBHIconGridSizeClass, &unk_2442B7724);
  v3 = sub_2442A03CC(&qword_27EDDD180, type metadata accessor for SBHIconGridSizeClass, &unk_2442B737C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24429C1A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2442B4878();

  *a2 = v3;
  return result;
}

uint64_t sub_24429C1E8(uint64_t a1)
{
  v2 = sub_2442A03CC(&qword_27EDDD168, type metadata accessor for SBIconLocation, &unk_2442B76E0);
  v3 = sub_2442A03CC(&unk_27EDDD170, type metadata accessor for SBIconLocation, &unk_2442B7490);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_24429C2A4()
{
  LOBYTE(v450) = 0;
  *(&v450 + 1) = 0;
  v451 = 0uLL;
  *&v452 = 0xD000000000000036;
  *(&v452 + 1) = 0x80000002442B8500;
  *&v453 = 0xD000000000000018;
  *(&v453 + 1) = 0x80000002442B8540;
  *&v454 = 0xD00000000000001FLL;
  *(&v454 + 1) = 0x80000002442B8560;
  LOBYTE(v455) = 0;
  *(&v455 + 1) = 0;
  v456 = 0uLL;
  *&v457 = 0xD00000000000002CLL;
  *(&v457 + 1) = 0x80000002442B81C0;
  *&v458 = 0xD000000000000013;
  *(&v458 + 1) = 0x80000002442B81F0;
  *&v459 = 0xD000000000000028;
  *(&v459 + 1) = 0x80000002442B8210;
  if (qword_27EDDCF30 != -1)
  {
    swift_once();
  }

  v0 = qword_27EDDE7F8;
  v1 = sub_2442B4878();
  v347 = v0;
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = sub_2442B48A8();
  v5 = v4;

  v6 = sub_2442B4878();
  v345 = objc_opt_self();
  v7 = [v345 systemImageNamed_];

  v344 = objc_opt_self();
  v8 = [v344 systemBlueColor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD088, &qword_2442B7A00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2442B6D60;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0xD000000000000029;
  *(v9 + 72) = 0x80000002442B8750;
  *(v9 + 80) = 0xD000000000000010;
  *(v9 + 88) = 0x80000002442B8780;
  *(v9 + 96) = 0xD000000000000020;
  *(v9 + 104) = 0x80000002442B87A0;
  v10 = v453;
  *(v9 + 144) = v452;
  *(v9 + 160) = v10;
  v11 = v451;
  *(v9 + 112) = v450;
  *(v9 + 128) = v11;
  v12 = v457;
  v13 = v458;
  v14 = v455;
  *(v9 + 208) = v456;
  *(v9 + 224) = v12;
  v15 = v459;
  *(v9 + 240) = v13;
  *(v9 + 256) = v15;
  *(v9 + 176) = v454;
  *(v9 + 192) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  sub_2442A0024(&v450, &v460);
  sub_2442A0024(&v455, &v460);
  v17 = [v16 init];
  v18 = [v17 UUIDString];

  v19 = sub_2442B48A8();
  v21 = v20;

  *&v460 = v3;
  *(&v460 + 1) = v5;
  v461 = 0uLL;
  *&v462 = v7;
  *(&v462 + 1) = v8;
  v463 = v9;
  *&v464 = 0;
  *(&v464 + 1) = v19;
  v465 = v21;
  sub_2442A005C(&v460, &v444);
  v22 = sub_2442A8708(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v348 = v22;
  if (v24 >= v23 >> 1)
  {
    v348 = sub_2442A8708((v23 > 1), v24 + 1, 1, v22);
  }

  *(v348 + 2) = v24 + 1;
  v25 = &v348[88 * v24];
  v26 = v461;
  *(v25 + 2) = v460;
  *(v25 + 3) = v26;
  v27 = v462;
  v28 = v463;
  v29 = v464;
  *(v25 + 14) = v465;
  *(v25 + 5) = v28;
  *(v25 + 6) = v29;
  *(v25 + 4) = v27;
  v30 = sub_2442B4878();
  v31 = [v347 localizedStringForKey:v30 value:0 table:0];

  v341 = sub_2442B48A8();
  v338 = v32;

  v33 = sub_2442B4878();
  v334 = [v345 systemImageNamed_];

  v34 = [v344 systemGreenColor];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2442B6D70;
  *(v35 + 32) = 1;
  *(v35 + 40) = xmmword_2442B6D80;
  *(v35 + 56) = 0x80000002442B8800;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0u;
  *(v35 + 96) = 0u;
  *(v35 + 112) = 0;
  *(v35 + 120) = 0;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 144) = 0xD00000000000002ALL;
  *(v35 + 152) = 0x80000002442B8830;
  *(v35 + 160) = 0xD000000000000015;
  *(v35 + 168) = 0x80000002442B8860;
  *(v35 + 176) = 0xD00000000000002ALL;
  *(v35 + 184) = 0x80000002442B8830;
  *(v35 + 192) = 0;
  *(v35 + 200) = 0;
  *(v35 + 208) = 0;
  *(v35 + 216) = 0;
  *(v35 + 224) = 0xD00000000000002ALL;
  *(v35 + 232) = 0x80000002442B8880;
  *(v35 + 240) = 0xD000000000000015;
  *(v35 + 248) = 0x80000002442B8860;
  *(v35 + 256) = 0xD00000000000002ALL;
  *(v35 + 264) = 0x80000002442B8880;
  *(v35 + 272) = 0;
  *(v35 + 280) = 0;
  *(v35 + 288) = 0;
  *(v35 + 296) = 0;
  *(v35 + 304) = 0xD000000000000028;
  *(v35 + 312) = 0x80000002442B88B0;
  *(v35 + 320) = 0xD000000000000015;
  *(v35 + 328) = 0x80000002442B8860;
  *(v35 + 336) = 0xD000000000000016;
  *(v35 + 344) = 0x80000002442B88E0;
  *(v35 + 352) = 1;
  *(v35 + 360) = 0;
  *(v35 + 368) = 0xD000000000000026;
  *(v35 + 376) = 0x80000002442B8900;
  *(v35 + 400) = 0u;
  *(v35 + 416) = 0u;
  *(v35 + 384) = 0u;
  *(v35 + 432) = 1;
  *(v35 + 440) = 0;
  *(v35 + 448) = 0xD000000000000028;
  *(v35 + 456) = 0x80000002442B8930;
  *(v35 + 464) = 0u;
  *(v35 + 480) = 0u;
  *(v35 + 496) = 0u;
  *(v35 + 512) = 1;
  *(v35 + 520) = 0;
  *(v35 + 528) = 0xD000000000000022;
  *(v35 + 536) = 0x80000002442B8960;
  *(v35 + 544) = 0u;
  *(v35 + 560) = 0u;
  *(v35 + 576) = 0u;
  *(v35 + 592) = 1;
  *(v35 + 600) = 0;
  *(v35 + 608) = 0xD000000000000023;
  *(v35 + 616) = 0x80000002442B8990;
  *(v35 + 640) = 0u;
  *(v35 + 656) = 0u;
  *(v35 + 624) = 0u;
  v36 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v37 = [v36 UUIDString];

  v38 = sub_2442B48A8();
  v40 = v39;

  *&v444 = v341;
  *(&v444 + 1) = v338;
  v445 = 0uLL;
  *&v446 = v334;
  *(&v446 + 1) = v34;
  v447 = v35;
  *&v448 = 0;
  *(&v448 + 1) = v38;
  v449 = v40;
  sub_2442A005C(&v444, &v438);
  v42 = *(v348 + 2);
  v41 = *(v348 + 3);
  if (v42 >= v41 >> 1)
  {
    v348 = sub_2442A8708((v41 > 1), v42 + 1, 1, v348);
  }

  *(v348 + 2) = v42 + 1;
  v43 = &v348[88 * v42];
  v44 = v445;
  *(v43 + 2) = v444;
  *(v43 + 3) = v44;
  v45 = v446;
  v46 = v447;
  v47 = v448;
  *(v43 + 14) = v449;
  *(v43 + 5) = v46;
  *(v43 + 6) = v47;
  *(v43 + 4) = v45;
  v48 = sub_2442B4878();
  v49 = [v347 localizedStringForKey:v48 value:0 table:0];

  v342 = sub_2442B48A8();
  v339 = v50;

  v51 = sub_2442B4878();
  v52 = [v345 systemImageNamed_];

  v53 = [v344 systemRedColor];
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2442B6D90;
  *(v54 + 32) = 1;
  *(v54 + 40) = xmmword_2442B6DA0;
  *(v54 + 56) = 0x80000002442B8A20;
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *(v54 + 96) = 0u;
  *(v54 + 112) = 0;
  *(v54 + 120) = 0;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 144) = 0xD000000000000036;
  *(v54 + 152) = 0x80000002442B82D0;
  *(v54 + 160) = 0xD000000000000015;
  *(v54 + 168) = 0x80000002442B8310;
  *(v54 + 176) = 0xD000000000000041;
  *(v54 + 184) = 0x80000002442B8A50;
  *(v54 + 192) = 1;
  *(v54 + 200) = xmmword_2442B6DB0;
  *(v54 + 216) = 0x80000002442B8AA0;
  *(v54 + 272) = 0;
  *(v54 + 240) = 0u;
  *(v54 + 256) = 0u;
  *(v54 + 224) = 0u;
  *(v54 + 280) = 0;
  *(v54 + 288) = 0;
  *(v54 + 296) = 0;
  *(v54 + 304) = 0xD000000000000033;
  *(v54 + 312) = 0x80000002442B85F0;
  *(v54 + 320) = 0xD00000000000001ALL;
  *(v54 + 328) = 0x80000002442B8630;
  *(v54 + 336) = 0xD00000000000003ALL;
  *(v54 + 344) = 0x80000002442B8650;
  *(v54 + 352) = 1;
  *(v54 + 360) = 0;
  *(v54 + 368) = 0xD00000000000002ELL;
  *(v54 + 376) = 0x80000002442B8690;
  *(v54 + 384) = 0u;
  *(v54 + 400) = 0u;
  *(v54 + 416) = 0u;
  v55 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v56 = [v55 UUIDString];

  v57 = sub_2442B48A8();
  v59 = v58;

  *&v438 = v342;
  *(&v438 + 1) = v339;
  v439 = 0uLL;
  *&v440 = v52;
  *(&v440 + 1) = v53;
  v441 = v54;
  *&v442 = 0;
  *(&v442 + 1) = v57;
  v443 = v59;
  sub_2442A005C(&v438, &v432);
  v61 = *(v348 + 2);
  v60 = *(v348 + 3);
  if (v61 >= v60 >> 1)
  {
    v348 = sub_2442A8708((v60 > 1), v61 + 1, 1, v348);
  }

  *(v348 + 2) = v61 + 1;
  v62 = &v348[88 * v61];
  v63 = v439;
  *(v62 + 2) = v438;
  *(v62 + 3) = v63;
  v64 = v440;
  v65 = v441;
  v66 = v442;
  *(v62 + 14) = v443;
  *(v62 + 5) = v65;
  *(v62 + 6) = v66;
  *(v62 + 4) = v64;
  v67 = sub_2442B4878();
  v68 = [v347 localizedStringForKey:v67 value:0 table:0];

  v69 = sub_2442B48A8();
  v71 = v70;

  v72 = sub_2442B4878();
  v73 = [v345 _systemImageNamed_];

  v74 = [v344 systemPinkColor];
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2442B6DC0;
  *(v75 + 32) = 1;
  *(v75 + 40) = xmmword_2442B6DD0;
  *(v75 + 56) = 0x80000002442B8B20;
  *(v75 + 64) = 0u;
  *(v75 + 80) = 0u;
  *(v75 + 96) = 0u;
  v76 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v77 = [v76 UUIDString];

  v78 = sub_2442B48A8();
  v80 = v79;

  *&v432 = v69;
  *(&v432 + 1) = v71;
  v433 = 0uLL;
  *&v434 = v73;
  *(&v434 + 1) = v74;
  v435 = v75;
  *&v436 = 0;
  *(&v436 + 1) = v78;
  v437 = v80;
  sub_2442A005C(&v432, &v426);
  v82 = *(v348 + 2);
  v81 = *(v348 + 3);
  if (v82 >= v81 >> 1)
  {
    v348 = sub_2442A8708((v81 > 1), v82 + 1, 1, v348);
  }

  *(v348 + 2) = v82 + 1;
  v83 = &v348[88 * v82];
  v84 = v433;
  *(v83 + 2) = v432;
  *(v83 + 3) = v84;
  v85 = v434;
  v86 = v435;
  v87 = v436;
  *(v83 + 14) = v437;
  *(v83 + 5) = v86;
  *(v83 + 6) = v87;
  *(v83 + 4) = v85;
  v88 = sub_2442B4878();
  v89 = [v347 localizedStringForKey:v88 value:0 table:0];

  v90 = sub_2442B48A8();
  v92 = v91;

  v93 = sub_2442B4878();
  v94 = [v345 systemImageNamed_];

  v95 = [v344 systemDarkPurpleColor];
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_2442B6DC0;
  *(v96 + 32) = 1;
  *(v96 + 40) = xmmword_2442B6DE0;
  *(v96 + 56) = 0x80000002442B8B80;
  *(v96 + 64) = 0u;
  *(v96 + 80) = 0u;
  *(v96 + 96) = 0u;
  v97 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v98 = [v97 UUIDString];

  v99 = sub_2442B48A8();
  v101 = v100;

  *&v426 = v90;
  *(&v426 + 1) = v92;
  v427 = 0uLL;
  *&v428 = v94;
  *(&v428 + 1) = v95;
  v429 = v96;
  *&v430 = 0;
  *(&v430 + 1) = v99;
  v431 = v101;
  sub_2442A005C(&v426, &v420);
  v103 = *(v348 + 2);
  v102 = *(v348 + 3);
  if (v103 >= v102 >> 1)
  {
    v348 = sub_2442A8708((v102 > 1), v103 + 1, 1, v348);
  }

  *(v348 + 2) = v103 + 1;
  v104 = &v348[88 * v103];
  v105 = v427;
  *(v104 + 2) = v426;
  *(v104 + 3) = v105;
  v106 = v428;
  v107 = v429;
  v108 = v430;
  *(v104 + 14) = v431;
  *(v104 + 5) = v107;
  *(v104 + 6) = v108;
  *(v104 + 4) = v106;
  v109 = sub_2442B4878();
  v110 = [v347 localizedStringForKey:v109 value:0 table:0];

  v337 = sub_2442B48A8();
  v333 = v111;

  v112 = sub_2442B4878();
  v113 = [v345 systemImageNamed_];

  v114 = [v344 systemBlueColor];
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_2442B6DF0;
  *(v115 + 32) = 1;
  *(v115 + 40) = xmmword_2442B6E00;
  *(v115 + 56) = 0x80000002442B8BD0;
  *(v115 + 64) = 0u;
  *(v115 + 80) = 0u;
  *(v115 + 96) = 0u;
  *(v115 + 112) = 1;
  *(v115 + 120) = xmmword_2442B6E10;
  *(v115 + 136) = 0x80000002442B8190;
  *(v115 + 144) = 0u;
  *(v115 + 160) = 0u;
  *(v115 + 176) = 0u;
  *(v115 + 192) = 1;
  *(v115 + 200) = xmmword_2442B6E20;
  *(v115 + 216) = 0x80000002442B8C00;
  *(v115 + 224) = 0u;
  *(v115 + 240) = 0u;
  *(v115 + 256) = 0u;
  *(v115 + 272) = 1;
  *(v115 + 280) = 0;
  *(v115 + 288) = 0xD00000000000002FLL;
  *(v115 + 296) = 0x80000002442B8460;
  *(v115 + 304) = 0u;
  *(v115 + 320) = 0u;
  *(v115 + 336) = 0u;
  *(v115 + 352) = 1;
  *(v115 + 360) = 0;
  *(v115 + 368) = 0xD000000000000034;
  *(v115 + 376) = 0x80000002442B85B0;
  *(v115 + 384) = 0u;
  *(v115 + 400) = 0u;
  *(v115 + 416) = 0u;
  *(v115 + 432) = 0;
  *(v115 + 440) = 0;
  *(v115 + 448) = 0;
  *(v115 + 456) = 0;
  *(v115 + 464) = 0xD000000000000036;
  *(v115 + 472) = 0x80000002442B82D0;
  *(v115 + 480) = 0xD000000000000015;
  *(v115 + 488) = 0x80000002442B8310;
  *(v115 + 496) = 0xD000000000000041;
  *(v115 + 504) = 0x80000002442B8330;
  *(v115 + 512) = 1;
  *(v115 + 520) = 0;
  *(v115 + 528) = 0xD000000000000029;
  *(v115 + 536) = 0x80000002442B8380;
  *(v115 + 544) = 0u;
  *(v115 + 560) = 0u;
  *(v115 + 576) = 0u;
  v116 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v117 = [v116 UUIDString];

  v118 = sub_2442B48A8();
  v120 = v119;

  *&v420 = v337;
  *(&v420 + 1) = v333;
  v421 = 0uLL;
  *&v422 = v113;
  *(&v422 + 1) = v114;
  v423 = v115;
  *&v424 = 0;
  *(&v424 + 1) = v118;
  v425 = v120;
  sub_2442A005C(&v420, &v414);
  v122 = *(v348 + 2);
  v121 = *(v348 + 3);
  if (v122 >= v121 >> 1)
  {
    v348 = sub_2442A8708((v121 > 1), v122 + 1, 1, v348);
  }

  v123 = &v348[88 * v122];
  *(v348 + 2) = v122 + 1;
  v124 = v421;
  *(v123 + 2) = v420;
  *(v123 + 3) = v124;
  v125 = v422;
  v126 = v423;
  v127 = v424;
  *(v123 + 14) = v425;
  *(v123 + 5) = v126;
  *(v123 + 6) = v127;
  *(v123 + 4) = v125;
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_2442B6E30;
  *(v128 + 32) = 0;
  *(v128 + 40) = 0;
  *(v128 + 48) = 0u;
  *(v128 + 64) = 0xD000000000000036;
  *(v128 + 72) = 0x80000002442B82D0;
  *(v128 + 80) = 0xD000000000000015;
  *(v128 + 88) = 0x80000002442B8310;
  *(v128 + 96) = 0xD000000000000041;
  *(v128 + 104) = 0x80000002442B83B0;
  *(v128 + 112) = 1;
  *(v128 + 120) = xmmword_2442B6E40;
  *(v128 + 136) = 0x80000002442B8400;
  *(v128 + 144) = 0u;
  *(v128 + 160) = 0u;
  *(v128 + 176) = 0u;
  *(v128 + 192) = 1;
  *(v128 + 200) = xmmword_2442B6E50;
  *(v128 + 216) = 0x80000002442B84D0;
  *(v128 + 272) = 0;
  *(v128 + 240) = 0u;
  *(v128 + 256) = 0u;
  *(v128 + 224) = 0u;
  *(v128 + 280) = 0u;
  *(v128 + 296) = 0;
  *(v128 + 304) = 0xD000000000000025;
  *(v128 + 312) = 0x80000002442B8C70;
  *(v128 + 320) = 0xD000000000000014;
  *(v128 + 328) = 0x80000002442B8CA0;
  *(v128 + 336) = 0xD00000000000002DLL;
  *(v128 + 344) = 0x80000002442B8CC0;
  *(v128 + 352) = 1;
  *(v128 + 360) = 0;
  *(v128 + 368) = 0xD00000000000002CLL;
  *(v128 + 376) = 0x80000002442B8CF0;
  *(v128 + 384) = 0u;
  *(v128 + 400) = 0u;
  *(v128 + 416) = 0u;
  *(v128 + 432) = 1;
  *(v128 + 440) = 0;
  *(v128 + 448) = 0xD000000000000030;
  *(v128 + 456) = 0x80000002442B8D20;
  *(v128 + 464) = 0u;
  *(v128 + 480) = 0u;
  *(v128 + 496) = 0u;
  *(v128 + 512) = 1;
  *(v128 + 520) = 0;
  *(v128 + 528) = 0xD00000000000002BLL;
  *(v128 + 536) = 0x80000002442B8D60;
  *(v128 + 592) = 0;
  *(v128 + 544) = 0u;
  *(v128 + 560) = 0u;
  *(v128 + 576) = 0u;
  *(v128 + 600) = 0u;
  *(v128 + 616) = 0;
  *(v128 + 624) = 0xD000000000000027;
  *(v128 + 632) = 0x80000002442B8D90;
  *(v128 + 640) = 0xD000000000000015;
  *(v128 + 648) = 0x80000002442B8DC0;
  *(v128 + 656) = 0xD00000000000002FLL;
  *(v128 + 664) = 0x80000002442B8DE0;
  *(v128 + 672) = 1;
  *(v128 + 680) = 0;
  *(v128 + 688) = 0xD00000000000002CLL;
  *(v128 + 696) = 0x80000002442B7CF0;
  *(v128 + 720) = 0u;
  *(v128 + 736) = 0u;
  *(v128 + 704) = 0u;
  *(v128 + 752) = 1;
  *(v128 + 760) = 0;
  *(v128 + 768) = 0xD000000000000028;
  *(v128 + 776) = 0x80000002442B8E10;
  *(v128 + 784) = 0u;
  *(v128 + 800) = 0u;
  v129 = v450;
  v130 = v451;
  *(v128 + 816) = 0u;
  *(v128 + 832) = v129;
  v131 = v452;
  v132 = v454;
  *(v128 + 880) = v453;
  *(v128 + 896) = v132;
  *(v128 + 848) = v130;
  *(v128 + 864) = v131;
  v133 = v455;
  v134 = v456;
  v135 = v459;
  v136 = v457;
  *(v128 + 960) = v458;
  *(v128 + 976) = v135;
  *(v128 + 928) = v134;
  *(v128 + 944) = v136;
  *(v128 + 912) = v133;
  sub_2442B4788();
  sub_2442A0024(&v455, &v414);
  if (sub_2442B4778())
  {
    v138 = *(v128 + 16);
    v137 = *(v128 + 24);
    if (v138 >= v137 >> 1)
    {
      v128 = sub_2442A85E8((v137 > 1), v138 + 1, 1, v128);
    }

    *(v128 + 16) = v138 + 1;
    v139 = v128 + 80 * v138;
    *(v139 + 32) = 1;
    *(v139 + 40) = xmmword_2442B6E60;
    *(v139 + 56) = 0x80000002442B9FC0;
    *(v139 + 64) = 0u;
    *(v139 + 80) = 0u;
    *(v139 + 96) = 0u;
  }

  v140 = sub_2442B4878();
  v141 = [v347 localizedStringForKey:v140 value:0 table:0];

  v142 = sub_2442B48A8();
  v144 = v143;

  v145 = sub_2442B4878();
  v146 = [v345 systemImageNamed_];

  v147 = [v344 systemPurpleColor];
  v148 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v149 = [v148 UUIDString];

  v150 = sub_2442B48A8();
  v152 = v151;

  *&v414 = v142;
  *(&v414 + 1) = v144;
  v415 = 0uLL;
  *&v416 = v146;
  *(&v416 + 1) = v147;
  v417 = v128;
  *&v418 = 0;
  *(&v418 + 1) = v150;
  v419 = v152;
  sub_2442A005C(&v414, &v409);
  v154 = *(v348 + 2);
  v153 = *(v348 + 3);
  if (v154 >= v153 >> 1)
  {
    v348 = sub_2442A8708((v153 > 1), v154 + 1, 1, v348);
  }

  v155 = &v348[88 * v154];
  *(v348 + 2) = v154 + 1;
  v156 = v415;
  *(v155 + 2) = v414;
  *(v155 + 3) = v156;
  v157 = v416;
  v158 = v417;
  v159 = v418;
  *(v155 + 14) = v419;
  *(v155 + 5) = v158;
  *(v155 + 6) = v159;
  *(v155 + 4) = v157;
  v160 = sub_2442B4878();
  v161 = [v347 localizedStringForKey:v160 value:0 table:0];

  v162 = sub_2442B48A8();
  v329 = v163;

  v164 = sub_2442B4878();
  v165 = [v345 systemImageNamed_];

  v166 = [v344 systemBlueColor];
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_2442B6DF0;
  *(v167 + 32) = 1;
  *(v167 + 40) = xmmword_2442B6E70;
  *(v167 + 56) = 0x80000002442B8E90;
  *(v167 + 64) = 0u;
  *(v167 + 80) = 0u;
  *(v167 + 96) = 0u;
  *(v167 + 112) = 0;
  *(v167 + 120) = 0;
  *(v167 + 128) = 0u;
  *(v167 + 144) = 0xD00000000000003ELL;
  *(v167 + 152) = 0x80000002442B8F70;
  *(v167 + 160) = 0xD00000000000001FLL;
  *(v167 + 168) = 0x80000002442B8FB0;
  *(v167 + 176) = 0xD00000000000003BLL;
  *(v167 + 184) = 0x80000002442B9010;
  *(v167 + 192) = 0;
  *(v167 + 200) = 0u;
  *(v167 + 216) = 0;
  *(v167 + 224) = 0xD00000000000001DLL;
  *(v167 + 232) = 0x80000002442B8F00;
  *(v167 + 240) = 0xD000000000000010;
  *(v167 + 248) = 0x80000002442B8F20;
  *(v167 + 256) = 0xD00000000000002BLL;
  *(v167 + 264) = 0x80000002442B8F40;
  *(v167 + 272) = 0;
  *(v167 + 280) = 0u;
  *(v167 + 296) = 0;
  *(v167 + 304) = 0xD00000000000003ELL;
  *(v167 + 312) = 0x80000002442B8F70;
  *(v167 + 320) = 0xD00000000000001FLL;
  *(v167 + 328) = 0x80000002442B8FB0;
  *(v167 + 336) = 0xD00000000000003CLL;
  *(v167 + 344) = 0x80000002442B8FD0;
  *(v167 + 352) = 1;
  *(v167 + 360) = 0;
  *(v167 + 368) = 0xD000000000000037;
  *(v167 + 376) = 0x80000002442B8EC0;
  *(v167 + 432) = 0;
  *(v167 + 400) = 0u;
  *(v167 + 416) = 0u;
  *(v167 + 384) = 0u;
  *(v167 + 440) = 0u;
  *(v167 + 456) = 0;
  *(v167 + 464) = 0xD00000000000003ELL;
  *(v167 + 472) = 0x80000002442B8F70;
  *(v167 + 480) = 0xD00000000000001FLL;
  *(v167 + 488) = 0x80000002442B8FB0;
  *(v167 + 496) = 0xD000000000000044;
  *(v167 + 504) = 0x80000002442B9050;
  *(v167 + 512) = 0;
  *(v167 + 536) = 0;
  *(v167 + 520) = 0u;
  *(v167 + 544) = 0xD00000000000003ELL;
  *(v167 + 552) = 0x80000002442B8F70;
  *(v167 + 560) = 0xD00000000000001FLL;
  *(v167 + 568) = 0x80000002442B8FB0;
  *(v167 + 576) = 0xD000000000000041;
  *(v167 + 584) = 0x80000002442B90A0;
  *&v409 = v162;
  *(&v409 + 1) = v329;
  v410 = 0uLL;
  *&v411 = v165;
  *(&v411 + 1) = v166;
  v412 = v167;
  *v413 = 0;
  strcpy(&v413[8], "ACCESSIBILITY");
  *&v413[22] = -4864;
  sub_2442A005C(&v409, &v403);
  v169 = *(v348 + 2);
  v168 = *(v348 + 3);
  if (v169 >= v168 >> 1)
  {
    v348 = sub_2442A8708((v168 > 1), v169 + 1, 1, v348);
  }

  v170 = &v348[88 * v169];
  *(v348 + 2) = v169 + 1;
  v171 = v410;
  *(v170 + 2) = v409;
  *(v170 + 3) = v171;
  v172 = v411;
  v173 = v412;
  v174 = *v413;
  *(v170 + 14) = *&v413[16];
  *(v170 + 5) = v173;
  *(v170 + 6) = v174;
  *(v170 + 4) = v172;
  v175 = sub_2442B4878();
  v176 = [v347 localizedStringForKey:v175 value:0 table:0];

  v177 = sub_2442B48A8();
  v328 = v178;
  v330 = v177;

  v179 = sub_2442B4878();
  v180 = [v345 systemImageNamed_];

  v181 = [v344 systemBlueColor];
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_2442B6E80;
  *(v182 + 32) = 0;
  *(v182 + 40) = 0;
  *(v182 + 48) = 0u;
  *(v182 + 64) = 0xD00000000000003ELL;
  *(v182 + 72) = 0x80000002442B8F70;
  *(v182 + 80) = 0xD00000000000001FLL;
  *(v182 + 88) = 0x80000002442B8FB0;
  *(v182 + 96) = 0xD000000000000048;
  *(v182 + 104) = 0x80000002442B9120;
  *(v182 + 112) = 0;
  *(v182 + 120) = 0;
  *(v182 + 128) = 0u;
  *(v182 + 144) = 0xD00000000000003ELL;
  *(v182 + 152) = 0x80000002442B8F70;
  *(v182 + 160) = 0xD00000000000001FLL;
  *(v182 + 168) = 0x80000002442B8FB0;
  *(v182 + 176) = 0xD000000000000047;
  *(v182 + 184) = 0x80000002442B9170;
  *(v182 + 192) = 0;
  *(v182 + 200) = 0u;
  *(v182 + 216) = 0;
  *(v182 + 224) = 0xD00000000000003ELL;
  *(v182 + 232) = 0x80000002442B8F70;
  *(v182 + 240) = 0xD00000000000001FLL;
  *(v182 + 248) = 0x80000002442B8FB0;
  *(v182 + 256) = 0xD000000000000042;
  *(v182 + 264) = 0x80000002442B91C0;
  *(v182 + 272) = 0;
  *(v182 + 280) = 0u;
  *(v182 + 296) = 0;
  *(v182 + 304) = 0xD00000000000003ELL;
  *(v182 + 312) = 0x80000002442B8F70;
  *(v182 + 320) = 0xD00000000000001FLL;
  *(v182 + 328) = 0x80000002442B8FB0;
  *(v182 + 336) = 0xD00000000000004BLL;
  *(v182 + 344) = 0x80000002442B9210;
  v183 = v459;
  v184 = v457;
  *(v182 + 400) = v458;
  *(v182 + 416) = v183;
  v185 = v455;
  *(v182 + 368) = v456;
  *(v182 + 384) = v184;
  *(v182 + 352) = v185;
  *(v182 + 432) = 1;
  *(v182 + 440) = 0;
  *(v182 + 448) = 0xD000000000000030;
  *(v182 + 456) = 0x80000002442B9260;
  *(v182 + 512) = 0;
  *(v182 + 464) = 0u;
  *(v182 + 480) = 0u;
  *(v182 + 496) = 0u;
  *(v182 + 536) = 0;
  *(v182 + 520) = 0u;
  *(v182 + 544) = 0xD00000000000003ELL;
  *(v182 + 552) = 0x80000002442B8F70;
  *(v182 + 560) = 0xD00000000000001FLL;
  *(v182 + 568) = 0x80000002442B8FB0;
  *(v182 + 576) = 0xD000000000000047;
  *(v182 + 584) = 0x80000002442B92A0;
  *(v182 + 592) = 0;
  *(v182 + 616) = 0;
  *(v182 + 600) = 0u;
  *(v182 + 624) = 0xD00000000000003ELL;
  *(v182 + 632) = 0x80000002442B8F70;
  *(v182 + 640) = 0xD00000000000001FLL;
  *(v182 + 648) = 0x80000002442B8FB0;
  *(v182 + 656) = 0xD00000000000004DLL;
  *(v182 + 664) = 0x80000002442B92F0;
  *(v182 + 672) = 0;
  v186 = *v395;
  *(v182 + 676) = *&v395[3];
  *(v182 + 673) = v186;
  *(v182 + 696) = 0;
  *(v182 + 680) = 0u;
  *(v182 + 704) = 0xD00000000000003ELL;
  *(v182 + 712) = 0x80000002442B8F70;
  *(v182 + 720) = 0xD00000000000001FLL;
  *(v182 + 728) = 0x80000002442B8FB0;
  *(v182 + 736) = 0xD00000000000004BLL;
  *(v182 + 744) = 0x80000002442B9340;
  *(v182 + 752) = 0;
  v187 = *v396;
  *(v182 + 756) = *&v396[3];
  *(v182 + 753) = v187;
  *(v182 + 776) = 0;
  *(v182 + 760) = 0u;
  *(v182 + 784) = 0xD00000000000003ELL;
  *(v182 + 792) = 0x80000002442B8F70;
  *(v182 + 800) = 0xD00000000000001FLL;
  *(v182 + 808) = 0x80000002442B8FB0;
  *(v182 + 816) = 0xD000000000000046;
  *(v182 + 824) = 0x80000002442B9390;
  *(v182 + 832) = 0;
  v188 = *v397;
  *(v182 + 836) = *&v397[3];
  *(v182 + 833) = v188;
  *(v182 + 856) = 0;
  *(v182 + 840) = 0u;
  *(v182 + 864) = 0xD00000000000003ELL;
  *(v182 + 872) = 0x80000002442B8F70;
  *(v182 + 880) = 0xD00000000000001FLL;
  *(v182 + 888) = 0x80000002442B8FB0;
  *(v182 + 896) = 0xD000000000000044;
  *(v182 + 904) = 0x80000002442B93E0;
  *(v182 + 912) = 0;
  v189 = *v398;
  *(v182 + 916) = *&v398[3];
  *(v182 + 913) = v189;
  *(v182 + 936) = 0;
  *(v182 + 920) = 0u;
  *(v182 + 944) = 0xD00000000000003ELL;
  *(v182 + 952) = 0x80000002442B8F70;
  *(v182 + 960) = 0xD00000000000001FLL;
  *(v182 + 968) = 0x80000002442B8FB0;
  *(v182 + 976) = 0xD00000000000003FLL;
  *(v182 + 984) = 0x80000002442B9430;
  *(v182 + 992) = 0;
  v190 = *v399;
  *(v182 + 996) = *&v399[3];
  *(v182 + 993) = v190;
  *(v182 + 1016) = 0;
  *(v182 + 1000) = 0u;
  *(v182 + 1024) = 0xD00000000000003ELL;
  *(v182 + 1032) = 0x80000002442B8F70;
  *(v182 + 1040) = 0xD00000000000001FLL;
  *(v182 + 1048) = 0x80000002442B8FB0;
  *(v182 + 1056) = 0xD000000000000037;
  *(v182 + 1064) = 0x80000002442B9470;
  *(v182 + 1072) = 0;
  v191 = *v400;
  *(v182 + 1076) = *&v400[3];
  *(v182 + 1073) = v191;
  *(v182 + 1096) = 0;
  *(v182 + 1080) = 0u;
  *(v182 + 1104) = 0xD00000000000003ELL;
  *(v182 + 1112) = 0x80000002442B8F70;
  *(v182 + 1120) = 0xD00000000000001FLL;
  *(v182 + 1128) = 0x80000002442B8FB0;
  *(v182 + 1136) = 0xD000000000000058;
  *(v182 + 1144) = 0x80000002442B94B0;
  *(v182 + 1152) = 0;
  v192 = *v401;
  *(v182 + 1156) = *&v401[3];
  *(v182 + 1153) = v192;
  *(v182 + 1176) = 0;
  *(v182 + 1160) = 0u;
  *(v182 + 1184) = 0xD00000000000003ELL;
  *(v182 + 1192) = 0x80000002442B8F70;
  *(v182 + 1200) = 0xD00000000000001FLL;
  *(v182 + 1208) = 0x80000002442B8FB0;
  *(v182 + 1216) = 0xD000000000000044;
  *(v182 + 1224) = 0x80000002442B9510;
  *(v182 + 1232) = 0;
  v193 = *v402;
  *(v182 + 1236) = *&v402[3];
  *(v182 + 1233) = v193;
  *(v182 + 1256) = 0;
  *(v182 + 1240) = 0u;
  *(v182 + 1264) = 0xD00000000000003ELL;
  *(v182 + 1272) = 0x80000002442B8F70;
  *(v182 + 1280) = 0xD00000000000001FLL;
  *(v182 + 1288) = 0x80000002442B8FB0;
  *(v182 + 1296) = 0xD00000000000003FLL;
  *(v182 + 1304) = 0x80000002442B9560;
  *&v403 = v330;
  *(&v403 + 1) = v328;
  v404 = 0uLL;
  *&v405 = v180;
  *(&v405 + 1) = v181;
  v406 = v182;
  *&v407 = 0;
  *(&v407 + 1) = 0xD000000000000014;
  v408 = 0x80000002442B8000;
  sub_2442A005C(&v403, &v389);
  v195 = *(v348 + 2);
  v194 = *(v348 + 3);
  if (v195 >= v194 >> 1)
  {
    v348 = sub_2442A8708((v194 > 1), v195 + 1, 1, v348);
  }

  *(v348 + 2) = v195 + 1;
  v196 = &v348[88 * v195];
  v197 = v404;
  *(v196 + 2) = v403;
  *(v196 + 3) = v197;
  v198 = v405;
  v199 = v406;
  v200 = v407;
  *(v196 + 14) = v408;
  *(v196 + 5) = v199;
  *(v196 + 6) = v200;
  *(v196 + 4) = v198;
  v201 = sub_2442B4878();
  v202 = [v347 localizedStringForKey:v201 value:0 table:0];

  v203 = sub_2442B48A8();
  v331 = v204;
  v332 = v203;

  v205 = sub_2442B4878();
  v206 = [v345 systemImageNamed_];

  v207 = [v344 systemBlueColor];
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_2442B6DF0;
  *(v208 + 32) = 0;
  *(v208 + 40) = 0;
  *(v208 + 48) = 0u;
  *(v208 + 64) = 0xD00000000000003ELL;
  *(v208 + 72) = 0x80000002442B8F70;
  *(v208 + 80) = 0xD00000000000001FLL;
  *(v208 + 88) = 0x80000002442B8FB0;
  *(v208 + 96) = 0xD000000000000048;
  *(v208 + 104) = 0x80000002442B95E0;
  *(v208 + 112) = 0;
  *(v208 + 120) = 0;
  *(v208 + 128) = 0u;
  *(v208 + 144) = 0xD00000000000003ELL;
  *(v208 + 152) = 0x80000002442B8F70;
  *(v208 + 160) = 0xD00000000000001FLL;
  *(v208 + 168) = 0x80000002442B8FB0;
  *(v208 + 176) = 0xD000000000000047;
  *(v208 + 184) = 0x80000002442B9630;
  *(v208 + 192) = 0;
  *(v208 + 200) = 0u;
  *(v208 + 216) = 0;
  *(v208 + 224) = 0xD00000000000003ELL;
  *(v208 + 232) = 0x80000002442B8F70;
  *(v208 + 240) = 0xD00000000000001FLL;
  *(v208 + 248) = 0x80000002442B8FB0;
  *(v208 + 256) = 0xD00000000000004DLL;
  *(v208 + 264) = 0x80000002442B9680;
  *(v208 + 272) = 0;
  *(v208 + 280) = 0u;
  *(v208 + 296) = 0;
  *(v208 + 304) = 0xD00000000000003ELL;
  *(v208 + 312) = 0x80000002442B8F70;
  *(v208 + 320) = 0xD00000000000001FLL;
  *(v208 + 328) = 0x80000002442B8FB0;
  *(v208 + 336) = 0xD000000000000049;
  *(v208 + 344) = 0x80000002442B96D0;
  *(v208 + 352) = 0;
  *(v208 + 360) = 0u;
  *(v208 + 376) = 0;
  *(v208 + 384) = 0xD00000000000003ELL;
  *(v208 + 392) = 0x80000002442B8F70;
  *(v208 + 400) = 0xD00000000000001FLL;
  *(v208 + 408) = 0x80000002442B8FB0;
  *(v208 + 416) = 0xD000000000000051;
  *(v208 + 424) = 0x80000002442B9720;
  *(v208 + 432) = 0;
  *(v208 + 440) = 0u;
  *(v208 + 456) = 0;
  *(v208 + 464) = 0xD00000000000003ELL;
  *(v208 + 472) = 0x80000002442B8F70;
  *(v208 + 480) = 0xD00000000000001FLL;
  *(v208 + 488) = 0x80000002442B8FB0;
  *(v208 + 496) = 0xD000000000000040;
  *(v208 + 504) = 0x80000002442B9780;
  *(v208 + 512) = 0;
  *(v208 + 536) = 0;
  *(v208 + 520) = 0u;
  *(v208 + 544) = 0xD00000000000003ELL;
  *(v208 + 552) = 0x80000002442B8F70;
  *(v208 + 560) = 0xD00000000000001FLL;
  *(v208 + 568) = 0x80000002442B8FB0;
  *(v208 + 576) = 0xD00000000000004ELL;
  *(v208 + 584) = 0x80000002442B97D0;
  *&v389 = v332;
  *(&v389 + 1) = v331;
  v390 = 0uLL;
  *&v391 = v206;
  *(&v391 + 1) = v207;
  v392 = v208;
  *&v393 = 0;
  *(&v393 + 1) = 0xD000000000000013;
  v394 = 0x80000002442B7FE0;
  sub_2442A005C(&v389, &v383);
  v210 = *(v348 + 2);
  v209 = *(v348 + 3);
  if (v210 >= v209 >> 1)
  {
    v348 = sub_2442A8708((v209 > 1), v210 + 1, 1, v348);
  }

  v211 = &v348[88 * v210];
  *(v348 + 2) = v210 + 1;
  v212 = v390;
  *(v211 + 2) = v389;
  *(v211 + 3) = v212;
  v213 = v391;
  v214 = v392;
  v215 = v393;
  *(v211 + 14) = v394;
  *(v211 + 5) = v214;
  *(v211 + 6) = v215;
  *(v211 + 4) = v213;
  v216 = sub_2442B4878();
  v217 = [v347 localizedStringForKey:v216 value:0 table:0];

  v218 = sub_2442B48A8();
  v335 = v219;
  v336 = v218;

  v220 = sub_2442B4878();
  v221 = [v345 systemImageNamed_];

  v222 = [v344 systemBlueColor];
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_2442B6E30;
  *(v223 + 32) = 1;
  *(v223 + 40) = xmmword_2442B6E90;
  *(v223 + 56) = 0x80000002442B9880;
  *(v223 + 64) = 0u;
  *(v223 + 80) = 0u;
  *(v223 + 96) = 0u;
  *(v223 + 112) = 0;
  *(v223 + 120) = 2;
  *(v223 + 128) = 0;
  *(v223 + 136) = 0;
  *(v223 + 144) = 0xD00000000000003ELL;
  *(v223 + 152) = 0x80000002442B8F70;
  *(v223 + 160) = 0xD00000000000001FLL;
  *(v223 + 168) = 0x80000002442B8FB0;
  *(v223 + 176) = 0xD000000000000024;
  *(v223 + 184) = 0x80000002442B98C0;
  *(v223 + 192) = 0;
  *(v223 + 200) = 0;
  *(v223 + 208) = 0;
  *(v223 + 216) = 0;
  *(v223 + 224) = 0xD00000000000003ELL;
  *(v223 + 232) = 0x80000002442B8F70;
  *(v223 + 240) = 0xD00000000000001FLL;
  *(v223 + 248) = 0x80000002442B8FB0;
  *(v223 + 256) = 0xD00000000000004BLL;
  *(v223 + 264) = 0x80000002442B98F0;
  *(v223 + 272) = 0;
  *(v223 + 280) = 0;
  *(v223 + 288) = 0;
  *(v223 + 296) = 0;
  *(v223 + 304) = 0xD00000000000003ELL;
  *(v223 + 312) = 0x80000002442B8F70;
  *(v223 + 320) = 0xD00000000000001FLL;
  *(v223 + 328) = 0x80000002442B8FB0;
  *(v223 + 336) = 0xD000000000000047;
  *(v223 + 344) = 0x80000002442B9940;
  *(v223 + 352) = 0;
  *(v223 + 360) = 0;
  *(v223 + 368) = 0;
  *(v223 + 376) = 0;
  *(v223 + 384) = 0xD00000000000003ELL;
  *(v223 + 392) = 0x80000002442B8F70;
  *(v223 + 400) = 0xD00000000000001FLL;
  *(v223 + 408) = 0x80000002442B8FB0;
  *(v223 + 416) = 0xD00000000000004ALL;
  *(v223 + 424) = 0x80000002442B9990;
  *(v223 + 432) = 1;
  *(v223 + 440) = 0;
  *(v223 + 448) = 0xD000000000000034;
  *(v223 + 456) = 0x80000002442B99E0;
  *(v223 + 464) = 0u;
  *(v223 + 480) = 0u;
  *(v223 + 496) = 0u;
  *(v223 + 512) = 1;
  *(v223 + 520) = 0;
  *(v223 + 528) = 0xD000000000000035;
  *(v223 + 536) = 0x80000002442B9A20;
  *(v223 + 560) = 0u;
  *(v223 + 576) = 0u;
  *(v223 + 544) = 0u;
  *(v223 + 592) = 1;
  *(v223 + 600) = 0;
  *(v223 + 608) = 0xD000000000000030;
  *(v223 + 616) = 0x80000002442B9A60;
  *(v223 + 640) = 0u;
  *(v223 + 656) = 0u;
  *(v223 + 624) = 0u;
  *(v223 + 672) = 1;
  v224 = *v379;
  *(v223 + 676) = *&v379[3];
  *(v223 + 673) = v224;
  *(v223 + 680) = 0;
  *(v223 + 688) = 0xD000000000000034;
  *(v223 + 696) = 0x80000002442B9AA0;
  *(v223 + 720) = 0u;
  *(v223 + 736) = 0u;
  *(v223 + 704) = 0u;
  *(v223 + 752) = 1;
  v225 = *v380;
  *(v223 + 756) = *&v380[3];
  *(v223 + 753) = v225;
  *(v223 + 760) = 0;
  *(v223 + 768) = 0xD00000000000003DLL;
  *(v223 + 776) = 0x80000002442B9AE0;
  *(v223 + 800) = 0u;
  *(v223 + 816) = 0u;
  *(v223 + 784) = 0u;
  *(v223 + 832) = 1;
  v226 = *v381;
  *(v223 + 836) = *&v381[3];
  *(v223 + 833) = v226;
  *(v223 + 840) = 0;
  *(v223 + 848) = 0xD000000000000031;
  *(v223 + 856) = 0x80000002442B9B20;
  *(v223 + 880) = 0u;
  *(v223 + 896) = 0u;
  *(v223 + 864) = 0u;
  *(v223 + 912) = 1;
  v227 = *v382;
  *(v223 + 916) = *&v382[3];
  *(v223 + 913) = v227;
  *(v223 + 920) = 0;
  *(v223 + 928) = 0xD000000000000033;
  *(v223 + 936) = 0x80000002442B9B60;
  *(v223 + 960) = 0u;
  *(v223 + 976) = 0u;
  *(v223 + 944) = 0u;
  *&v383 = v336;
  *(&v383 + 1) = v335;
  v384 = 0uLL;
  *&v385 = v221;
  *(&v385 + 1) = v222;
  v386 = v223;
  *&v387 = 0;
  *(&v387 + 1) = 0xD000000000000015;
  v388 = 0x80000002442B7FC0;
  sub_2442A005C(&v383, &v373);
  v229 = *(v348 + 2);
  v228 = *(v348 + 3);
  if (v229 >= v228 >> 1)
  {
    v348 = sub_2442A8708((v228 > 1), v229 + 1, 1, v348);
  }

  *(v348 + 2) = v229 + 1;
  v230 = &v348[88 * v229];
  v231 = v384;
  *(v230 + 2) = v383;
  *(v230 + 3) = v231;
  v232 = v385;
  v233 = v386;
  v234 = v387;
  *(v230 + 14) = v388;
  *(v230 + 5) = v233;
  *(v230 + 6) = v234;
  *(v230 + 4) = v232;
  v235 = sub_2442B4878();
  v236 = [v347 localizedStringForKey:v235 value:0 table:0];

  v237 = sub_2442B48A8();
  v239 = v238;

  v240 = sub_2442B4878();
  v241 = [v345 systemImageNamed_];

  v242 = [v344 systemBlueColor];
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_2442B6DC0;
  *(v243 + 32) = 1;
  *(v243 + 40) = xmmword_2442B6EA0;
  *(v243 + 56) = 0x80000002442B9BE0;
  *(v243 + 64) = 0u;
  *(v243 + 80) = 0u;
  *(v243 + 96) = 0u;
  v244 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v245 = [v244 UUIDString];

  v246 = sub_2442B48A8();
  v248 = v247;

  *&v373 = v237;
  *(&v373 + 1) = v239;
  v374 = 0uLL;
  *&v375 = v241;
  *(&v375 + 1) = v242;
  v376 = v243;
  *&v377 = 0;
  *(&v377 + 1) = v246;
  v378 = v248;
  sub_2442A005C(&v373, &v367);
  v250 = *(v348 + 2);
  v249 = *(v348 + 3);
  if (v250 >= v249 >> 1)
  {
    v348 = sub_2442A8708((v249 > 1), v250 + 1, 1, v348);
  }

  *(v348 + 2) = v250 + 1;
  v251 = &v348[88 * v250];
  v252 = v374;
  *(v251 + 2) = v373;
  *(v251 + 3) = v252;
  v253 = v375;
  v254 = v376;
  v255 = v377;
  *(v251 + 14) = v378;
  *(v251 + 5) = v254;
  *(v251 + 6) = v255;
  *(v251 + 4) = v253;
  v256 = sub_2442B4878();
  v257 = [v347 localizedStringForKey:v256 value:0 table:0];

  v343 = sub_2442B48A8();
  v340 = v258;

  v259 = sub_2442B4878();
  v346 = [v345 systemImageNamed_];

  v260 = [v344 systemBlueColor];
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_2442B6D70;
  *(v261 + 32) = 1;
  *(v261 + 40) = xmmword_2442B6E40;
  *(v261 + 56) = 0x80000002442B9C40;
  *(v261 + 64) = 0u;
  *(v261 + 80) = 0u;
  *(v261 + 96) = 0u;
  *(v261 + 112) = 1;
  *(v261 + 120) = xmmword_2442B6E50;
  *(v261 + 136) = 0x80000002442B9C70;
  *(v261 + 144) = 0u;
  *(v261 + 160) = 0u;
  *(v261 + 176) = 0u;
  *(v261 + 192) = 1;
  *(v261 + 200) = xmmword_2442B6E50;
  *(v261 + 216) = 0x80000002442B9CA0;
  *(v261 + 224) = 0u;
  *(v261 + 240) = 0u;
  *(v261 + 256) = 0u;
  *(v261 + 272) = 1;
  *(v261 + 280) = 0;
  *(v261 + 288) = 0xD000000000000028;
  *(v261 + 296) = 0x80000002442B9CD0;
  *(v261 + 304) = 0u;
  *(v261 + 320) = 0u;
  *(v261 + 336) = 0u;
  *(v261 + 352) = 1;
  *(v261 + 360) = 0;
  *(v261 + 368) = 0xD000000000000031;
  *(v261 + 376) = 0x80000002442B9D00;
  *(v261 + 384) = 0u;
  *(v261 + 400) = 0u;
  *(v261 + 416) = 0u;
  *(v261 + 432) = 1;
  *(v261 + 440) = 0;
  *(v261 + 448) = 0xD000000000000034;
  *(v261 + 456) = 0x80000002442B9D40;
  *(v261 + 480) = 0u;
  *(v261 + 496) = 0u;
  *(v261 + 464) = 0u;
  *(v261 + 512) = 1;
  *(v261 + 520) = 0;
  *(v261 + 528) = 0xD00000000000002DLL;
  *(v261 + 536) = 0x80000002442B9D80;
  *(v261 + 544) = 0u;
  *(v261 + 560) = 0u;
  *(v261 + 576) = 0u;
  *(v261 + 592) = 1;
  *(v261 + 600) = 0;
  *(v261 + 608) = 0xD000000000000026;
  *(v261 + 616) = 0x80000002442B9DB0;
  *(v261 + 624) = 0u;
  *(v261 + 640) = 0u;
  *(v261 + 656) = 0u;
  v262 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v263 = [v262 UUIDString];

  v264 = sub_2442B48A8();
  v266 = v265;

  *&v367 = v343;
  *(&v367 + 1) = v340;
  v368 = 0uLL;
  *&v369 = v346;
  *(&v369 + 1) = v260;
  v370 = v261;
  *&v371 = 0;
  *(&v371 + 1) = v264;
  v372 = v266;
  sub_2442A005C(&v367, &v362);
  v268 = *(v348 + 2);
  v267 = *(v348 + 3);
  if (v268 >= v267 >> 1)
  {
    v348 = sub_2442A8708((v267 > 1), v268 + 1, 1, v348);
  }

  *(v348 + 2) = v268 + 1;
  v269 = &v348[88 * v268];
  v270 = v368;
  *(v269 + 2) = v367;
  *(v269 + 3) = v270;
  v271 = v369;
  v272 = v370;
  v273 = v371;
  *(v269 + 14) = v372;
  *(v269 + 5) = v272;
  *(v269 + 6) = v273;
  *(v269 + 4) = v271;
  v274 = swift_allocObject();
  *(v274 + 16) = xmmword_2442B6EB0;
  *(v274 + 32) = 1;
  *(v274 + 40) = xmmword_2442B6EC0;
  *(v274 + 56) = 0x80000002442B9E10;
  *(v274 + 64) = 0u;
  *(v274 + 80) = 0u;
  *(v274 + 96) = 0u;
  *(v274 + 112) = 1;
  *(v274 + 120) = xmmword_2442B6ED0;
  *(v274 + 136) = 0x80000002442B8580;
  *(v274 + 144) = 0u;
  *(v274 + 160) = 0u;
  *(v274 + 176) = 0u;
  *(v274 + 192) = 0;
  *(v274 + 200) = 0;
  *(v274 + 208) = 0;
  *(v274 + 216) = 0;
  *(v274 + 224) = 0xD000000000000025;
  *(v274 + 232) = 0x80000002442B9E30;
  *(v274 + 240) = xmmword_2442B6EE0;
  *(v274 + 256) = 0xD00000000000001ALL;
  *(v274 + 264) = 0x80000002442B9E60;
  *(v274 + 272) = 0;
  *(v274 + 280) = 0;
  *(v274 + 288) = 0;
  *(v274 + 296) = 0;
  *(v274 + 304) = 0xD000000000000025;
  *(v274 + 312) = 0x80000002442B9E30;
  *(v274 + 320) = xmmword_2442B6EE0;
  *(v274 + 336) = 0xD000000000000023;
  *(v274 + 344) = 0x80000002442B9E80;
  v275 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v276 = [v275 UUIDString];

  v277 = sub_2442B48A8();
  v279 = v278;

  v363 = 0u;
  v364 = 0u;
  v362 = 0u;
  *&v365[8] = xmmword_2442B6EE0;
  *v365 = v274;
  *&v365[24] = v277;
  v366 = v279;
  sub_2442A005C(&v362, &v356);
  v281 = *(v348 + 2);
  v280 = *(v348 + 3);
  if (v281 >= v280 >> 1)
  {
    v348 = sub_2442A8708((v280 > 1), v281 + 1, 1, v348);
  }

  *(v348 + 2) = v281 + 1;
  v282 = &v348[88 * v281];
  v283 = v363;
  *(v282 + 2) = v362;
  *(v282 + 3) = v283;
  v284 = v364;
  v285 = *v365;
  v286 = *&v365[16];
  *(v282 + 14) = v366;
  *(v282 + 5) = v285;
  *(v282 + 6) = v286;
  *(v282 + 4) = v284;
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_2442B6EB0;
  *(v287 + 32) = 0;
  *(v287 + 40) = 0;
  *(v287 + 48) = 0;
  *(v287 + 56) = 0;
  *(v287 + 64) = 0xD000000000000026;
  *(v287 + 72) = 0x80000002442B80B0;
  *(v287 + 80) = 0xD000000000000015;
  *(v287 + 88) = 0x80000002442B80E0;
  *(v287 + 96) = 0xD000000000000023;
  *(v287 + 104) = 0x80000002442B8100;
  *(v287 + 112) = 0;
  *(v287 + 120) = 0;
  *(v287 + 128) = 0;
  *(v287 + 136) = 0;
  *(v287 + 144) = 0xD000000000000026;
  *(v287 + 152) = 0x80000002442B80B0;
  *(v287 + 160) = 0xD000000000000015;
  *(v287 + 168) = 0x80000002442B80E0;
  *(v287 + 176) = 0xD000000000000023;
  *(v287 + 184) = 0x80000002442B8130;
  *(v287 + 192) = 1;
  *(v287 + 200) = xmmword_2442B6E40;
  *(v287 + 216) = 0x80000002442B8160;
  *(v287 + 272) = 0;
  *(v287 + 240) = 0u;
  *(v287 + 256) = 0u;
  *(v287 + 224) = 0u;
  *(v287 + 280) = 0;
  *(v287 + 288) = 0;
  *(v287 + 296) = 0;
  *(v287 + 304) = 0xD000000000000026;
  *(v287 + 312) = 0x80000002442B80B0;
  *(v287 + 320) = 0xD000000000000015;
  *(v287 + 328) = 0x80000002442B80E0;
  *(v287 + 336) = 0xD000000000000027;
  *(v287 + 344) = 0x80000002442B8430;
  v288 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v289 = [v288 UUIDString];

  v290 = sub_2442B48A8();
  v292 = v291;

  v357 = 0u;
  v358 = 0u;
  v356 = 0u;
  *&v359 = v287;
  *(&v359 + 1) = 0xD000000000000015;
  *&v360 = 0x80000002442B80E0;
  *(&v360 + 1) = v290;
  v361 = v292;
  sub_2442A005C(&v356, &v350);
  v294 = *(v348 + 2);
  v293 = *(v348 + 3);
  if (v294 >= v293 >> 1)
  {
    v348 = sub_2442A8708((v293 > 1), v294 + 1, 1, v348);
  }

  *(v348 + 2) = v294 + 1;
  v295 = &v348[88 * v294];
  v296 = v357;
  *(v295 + 2) = v356;
  *(v295 + 3) = v296;
  v297 = v358;
  v298 = v359;
  v299 = v360;
  *(v295 + 14) = v361;
  *(v295 + 5) = v298;
  *(v295 + 6) = v299;
  *(v295 + 4) = v297;
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_2442B6D60;
  *(v300 + 32) = 1;
  *(v300 + 40) = xmmword_2442B6EF0;
  *(v300 + 56) = 0x80000002442B9EB0;
  *(v300 + 64) = 0u;
  *(v300 + 80) = 0u;
  *(v300 + 96) = 0u;
  *(v300 + 112) = 1;
  *(v300 + 120) = xmmword_2442B6F00;
  *(v300 + 136) = 0x80000002442B8490;
  *(v300 + 144) = 0u;
  *(v300 + 160) = 0u;
  *(v300 + 176) = 0u;
  *(v300 + 192) = 0;
  *(v300 + 200) = 0;
  *(v300 + 208) = 0;
  *(v300 + 216) = 0;
  *(v300 + 224) = 0xD000000000000025;
  *(v300 + 232) = 0x80000002442B86C0;
  *(v300 + 240) = 0xD000000000000015;
  *(v300 + 248) = 0x80000002442B86F0;
  *(v300 + 256) = 0xD000000000000036;
  *(v300 + 264) = 0x80000002442B8710;
  v301 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v302 = [v301 UUIDString];

  v303 = sub_2442B48A8();
  v305 = v304;

  v351 = 0u;
  v352 = 0u;
  v350 = 0u;
  *&v353 = v300;
  *(&v353 + 1) = 0xD000000000000015;
  *&v354 = 0x80000002442B86F0;
  *(&v354 + 1) = v303;
  v355 = v305;
  sub_2442A005C(&v350, v349);
  v307 = *(v348 + 2);
  v306 = *(v348 + 3);
  if (v307 >= v306 >> 1)
  {
    v348 = sub_2442A8708((v306 > 1), v307 + 1, 1, v348);
  }

  *(v348 + 2) = v307 + 1;
  v308 = &v348[88 * v307];
  v309 = v351;
  *(v308 + 2) = v350;
  *(v308 + 3) = v309;
  v310 = v352;
  v311 = v353;
  v312 = v354;
  *(v308 + 14) = v355;
  *(v308 + 5) = v311;
  *(v308 + 6) = v312;
  *(v308 + 4) = v310;
  v313 = sub_2442B4878();
  v314 = [v347 localizedStringForKey:v313 value:0 table:0];

  v315 = sub_2442B48A8();
  v317 = v316;

  v318 = swift_allocObject();
  *(v318 + 16) = xmmword_2442B6D60;
  *(v318 + 32) = 0;
  *(v318 + 40) = 0;
  *(v318 + 48) = 0;
  *(v318 + 56) = 0;
  *(v318 + 64) = 0xD00000000000001FLL;
  *(v318 + 72) = 0x80000002442B9EE0;
  *(v318 + 80) = xmmword_2442B6F10;
  *(v318 + 96) = 0xD00000000000001FLL;
  *(v318 + 104) = 0x80000002442B9F00;
  *(v318 + 112) = 0;
  *(v318 + 120) = 0;
  *(v318 + 128) = 0;
  *(v318 + 136) = 0;
  *(v318 + 144) = 0xD00000000000001FLL;
  *(v318 + 152) = 0x80000002442B9EE0;
  *(v318 + 160) = xmmword_2442B6F10;
  *(v318 + 176) = 0xD00000000000001FLL;
  *(v318 + 184) = 0x80000002442B9EE0;
  *(v318 + 192) = 0;
  *(v318 + 200) = 0;
  *(v318 + 208) = 0;
  *(v318 + 216) = 0;
  *(v318 + 224) = 0xD00000000000001FLL;
  *(v318 + 232) = 0x80000002442B9EE0;
  *(v318 + 240) = xmmword_2442B6F10;
  *(v318 + 256) = 0xD000000000000027;
  *(v318 + 264) = 0x80000002442B9F20;
  v319 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v320 = [v319 UUIDString];

  v321 = sub_2442B48A8();
  v323 = v322;

  v325 = *(v348 + 2);
  v324 = *(v348 + 3);
  if (v325 >= v324 >> 1)
  {
    v348 = sub_2442A8708((v324 > 1), v325 + 1, 1, v348);
  }

  sub_2442A0094(&v350);
  sub_2442A0094(&v356);
  sub_2442A0094(&v362);
  sub_2442A0094(&v367);
  sub_2442A0094(&v373);
  sub_2442A0094(&v383);
  sub_2442A0094(&v389);
  sub_2442A0094(&v403);
  sub_2442A0094(&v409);
  sub_2442A0094(&v414);
  sub_2442A0094(&v420);
  sub_2442A0094(&v426);
  sub_2442A0094(&v432);
  sub_2442A0094(&v438);
  sub_2442A0094(&v444);
  sub_2442A0094(&v460);
  result = v348;
  *(v348 + 2) = v325 + 1;
  v327 = &v348[88 * v325];
  *(v327 + 4) = v315;
  *(v327 + 5) = v317;
  *(v327 + 6) = 0xD000000000000023;
  *(v327 + 7) = 0x80000002442B9F90;
  *(v327 + 8) = 0;
  *(v327 + 9) = 0;
  *(v327 + 10) = v318;
  *(v327 + 11) = 0;
  *(v327 + 12) = 0;
  *(v327 + 13) = v321;
  *(v327 + 14) = v323;
  return result;
}

double sub_24429F7C8@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD088, &qword_2442B7A00);
  v2 = swift_allocObject();
  *(v2 + 264) = 0x80000002442B8130;
  *(v2 + 296) = 0x80000002442B8160;
  *(v2 + 376) = 0x80000002442B8190;
  *(v2 + 504) = 0x80000002442B8210;
  *(v2 + 552) = 0x80000002442B8240;
  *(v2 + 568) = 0x80000002442B8270;
  *(v2 + 584) = 0x80000002442B8290;
  *(v2 + 664) = 0x80000002442B8330;
  *(v2 + 596) = *&v10[3];
  *(v2 + 593) = *v10;
  *(v2 + 676) = *&v11[3];
  *(v2 + 673) = *v11;
  *(v2 + 756) = *&v12[3];
  *(v2 + 753) = *v12;
  *(v2 + 64) = 0xD000000000000026;
  *(v2 + 72) = 0x80000002442B8020;
  *(v2 + 88) = 0x80000002442B8050;
  *(v2 + 80) = 0xD000000000000013;
  *(v2 + 16) = xmmword_2442B6F20;
  *(v2 + 32) = 0;
  *(v2 + 96) = 0xD000000000000031;
  *(v2 + 104) = 0x80000002442B8070;
  *(v2 + 176) = 0xD000000000000023;
  *(v2 + 184) = 0x80000002442B8100;
  *(v2 + 40) = 4;
  *(v2 + 48) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0xD000000000000026;
  *(v2 + 152) = 0x80000002442B80B0;
  *(v2 + 160) = 0xD000000000000015;
  *(v2 + 168) = 0x80000002442B80E0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0xD000000000000026;
  *(v2 + 232) = 0x80000002442B80B0;
  *(v2 + 240) = 0xD000000000000015;
  *(v2 + 248) = 0x80000002442B80E0;
  *(v2 + 256) = 0xD000000000000023;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0xD00000000000002CLL;
  *(v2 + 272) = 1;
  *(v2 + 472) = 0x80000002442B81C0;
  *(v2 + 480) = 0xD000000000000013;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0xD000000000000029;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 1;
  *(v2 + 488) = 0x80000002442B81F0;
  *(v2 + 496) = 0xD000000000000028;
  *(v2 + 360) = 1;
  *(v2 + 368) = 0xD00000000000002FLL;
  *(v2 + 432) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 512) = 0;
  *(v2 + 536) = 0;
  *(v2 + 520) = 0u;
  *(v2 + 544) = 0xD000000000000021;
  *(v2 + 560) = 0xD000000000000014;
  *(v2 + 576) = 0xD000000000000037;
  *(v2 + 592) = 0;
  *(v2 + 616) = 0;
  *(v2 + 600) = 0u;
  *(v2 + 624) = 0xD000000000000036;
  *(v2 + 632) = 0x80000002442B82D0;
  *(v2 + 640) = 0xD000000000000015;
  *(v2 + 648) = 0x80000002442B8310;
  *(v2 + 696) = 0x80000002442B8380;
  *(v2 + 760) = 0u;
  *(v2 + 656) = 0xD000000000000041;
  *(v2 + 672) = 1;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0xD000000000000029;
  *(v2 + 752) = 0;
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0u;
  *(v2 + 704) = 0u;
  *(v2 + 776) = 0;
  *(v2 + 784) = 0xD000000000000036;
  *(v2 + 792) = 0x80000002442B82D0;
  *(v2 + 800) = 0xD000000000000015;
  *(v2 + 808) = 0x80000002442B8310;
  *(v2 + 816) = 0xD000000000000041;
  *(v2 + 824) = 0x80000002442B83B0;
  *(v2 + 832) = 1;
  *(v2 + 836) = *&v13[3];
  *(v2 + 833) = *v13;
  *(v2 + 840) = 0;
  *(v2 + 848) = 0xD000000000000029;
  *(v2 + 856) = 0x80000002442B8400;
  *(v2 + 912) = 0;
  *(v2 + 880) = 0u;
  *(v2 + 896) = 0u;
  *(v2 + 864) = 0u;
  *(v2 + 916) = *&v14[3];
  *(v2 + 913) = *v14;
  *(v2 + 920) = 2;
  *(v2 + 928) = 0u;
  *(v2 + 944) = 0xD000000000000026;
  *(v2 + 952) = 0x80000002442B80B0;
  *(v2 + 960) = 0xD000000000000015;
  *(v2 + 968) = 0x80000002442B80E0;
  *(v2 + 976) = 0xD000000000000027;
  *(v2 + 984) = 0x80000002442B8430;
  *(v2 + 992) = 1;
  *(v2 + 996) = *&v15[3];
  *(v2 + 993) = *v15;
  *(v2 + 1000) = 0;
  *(v2 + 1008) = 0xD00000000000002FLL;
  *(v2 + 1016) = 0x80000002442B8460;
  *(v2 + 1056) = 0u;
  *(v2 + 1040) = 0u;
  *(v2 + 1024) = 0u;
  *(v2 + 1072) = 1;
  *(v2 + 1076) = *&v16[3];
  *(v2 + 1073) = *v16;
  *(v2 + 1080) = 0;
  *(v2 + 1088) = 0xD000000000000034;
  *(v2 + 1096) = 0x80000002442B8490;
  *(v2 + 1152) = 0;
  *(v2 + 1136) = 0u;
  *(v2 + 1120) = 0u;
  *(v2 + 1104) = 0u;
  *(v2 + 1156) = *&v23[3];
  *(v2 + 1153) = *v23;
  *(v2 + 1176) = 0;
  *(v2 + 1160) = 0u;
  *(v2 + 1184) = 0xD000000000000025;
  *(v2 + 1192) = 0x80000002442B86C0;
  *(v2 + 1200) = 0xD000000000000015;
  *(v2 + 1208) = 0x80000002442B86F0;
  *(v2 + 1216) = 0xD000000000000036;
  *(v2 + 1224) = 0x80000002442B8710;
  *(v2 + 1232) = 1;
  *(v2 + 1236) = *&v17[3];
  *(v2 + 1233) = *v17;
  *(v2 + 1240) = 0;
  *(v2 + 1248) = 0xD000000000000027;
  *(v2 + 1256) = 0x80000002442B84D0;
  *(v2 + 1312) = 0;
  *(v2 + 1296) = 0u;
  *(v2 + 1280) = 0u;
  *(v2 + 1264) = 0u;
  *(v2 + 1316) = *&v18[3];
  *(v2 + 1313) = *v18;
  *(v2 + 1336) = 0;
  *(v2 + 1320) = 0u;
  *(v2 + 1344) = 0xD000000000000036;
  *(v2 + 1352) = 0x80000002442B8500;
  *(v2 + 1360) = 0xD000000000000018;
  *(v2 + 1368) = 0x80000002442B8540;
  *(v2 + 1376) = 0xD00000000000001FLL;
  *(v2 + 1384) = 0x80000002442B8560;
  *(v2 + 1392) = 1;
  *(v2 + 1396) = *&v19[3];
  *(v2 + 1393) = *v19;
  *(v2 + 1400) = 4;
  *(v2 + 1408) = 0xD000000000000026;
  *(v2 + 1416) = 0x80000002442B8580;
  *(v2 + 1456) = 0u;
  *(v2 + 1440) = 0u;
  *(v2 + 1424) = 0u;
  *(v2 + 1472) = 1;
  *(v2 + 1476) = *&v20[3];
  *(v2 + 1473) = *v20;
  *(v2 + 1480) = 0;
  *(v2 + 1488) = 0xD000000000000034;
  *(v2 + 1496) = 0x80000002442B85B0;
  *(v2 + 1552) = 0;
  *(v2 + 1536) = 0u;
  *(v2 + 1520) = 0u;
  *(v2 + 1504) = 0u;
  *(v2 + 1556) = *&v21[3];
  *(v2 + 1553) = *v21;
  *(v2 + 1576) = 0;
  *(v2 + 1560) = 0u;
  *(v2 + 1584) = 0xD000000000000033;
  *(v2 + 1592) = 0x80000002442B85F0;
  *(v2 + 1600) = 0xD00000000000001ALL;
  *(v2 + 1608) = 0x80000002442B8630;
  *(v2 + 1616) = 0xD00000000000003ALL;
  *(v2 + 1624) = 0x80000002442B8650;
  *(v2 + 1632) = 1;
  *(v2 + 1636) = *&v22[3];
  *(v2 + 1633) = *v22;
  *(v2 + 1640) = 0;
  *(v2 + 1648) = 0xD00000000000002ELL;
  *(v2 + 1656) = 0x80000002442B8690;
  *(v2 + 1696) = 0u;
  *(v2 + 1680) = 0u;
  *(v2 + 1664) = 0u;
  v3 = [objc_opt_self() systemPinkColor];
  v4 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v5 = [v4 UUIDString];

  v6 = sub_2442B48A8();
  v8 = v7;

  result = 0.0;
  *a1 = xmmword_2442B6F30;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8;
  return result;
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

uint64_t sub_2442A00F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2442A0118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2442A018C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442A01D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2442A0254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2442A02B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2442A03CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2442A0654(uint64_t a1)
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

void sub_2442A06A0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_2442A0744()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EDDE7F8 = result;
  return result;
}

uint64_t CCUISConfiguredControl.description.getter()
{
  v1 = v0;
  sub_2442B4B58();
  MEMORY[0x245D5DD10](0x7469746E65646928, 0xEA00000000003A79);
  v2 = [v0 identity];
  v3 = [v2 description];
  v4 = sub_2442B48A8();
  v6 = v5;

  MEMORY[0x245D5DD10](v4, v6);

  MEMORY[0x245D5DD10](0x203A65707974203BLL, 0xE800000000000000);
  [v1 type];
  v7 = sub_2442B49D8();
  MEMORY[0x245D5DD10](v7);

  MEMORY[0x245D5DD10](0x203A657A6973203BLL, 0xE800000000000000);
  [v1 size];
  type metadata accessor for CHSControlSize(0);
  sub_2442B4BD8();
  MEMORY[0x245D5DD10](41, 0xE100000000000000);
  return 0;
}

CCUISConfiguredControl __swiftcall CCUISConfiguredControl.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.size = v4;
  result.type = v3;
  result.identity = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for CCUISConfiguredControl()
{
  result = qword_27EDDD4A8;
  if (!qword_27EDDD4A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDD4A8);
  }

  return result;
}

uint64_t CCUIModuleIconElement.moduleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIModuleIconElement_moduleIdentifier);

  return v1;
}

uint64_t CCUIModuleIconElement.containerBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIModuleIconElement_containerBundleIdentifier);

  return v1;
}

id CCUIModuleIconElement.supportedGridSizeClasses.getter()
{
  v1 = [v0 _supportedGridSizeClasses];

  return v1;
}

uint64_t CCUIModuleIconElement.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIModuleIconElement_uniqueIdentifier);

  return v1;
}

uint64_t CCUIModuleIconElement.displayName.getter()
{
  v1 = (v0 + OBJC_IVAR___CCUIModuleIconElement_displayName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CCUIModuleIconElement.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CCUIModuleIconElement_displayName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_2442A0E98(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2442B48A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2442A0F00(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_2442B4878();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDisplayName_];
}

uint64_t CCUIModuleIconElement.preferredGallerySizeClass.getter()
{
  v1 = OBJC_IVAR___CCUIModuleIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CCUIModuleIconElement.preferredGallerySizeClass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CCUIModuleIconElement_preferredGallerySizeClass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_2442A10A0(char a1)
{
  if ([v1 expandsGridSizeClassesForAccessibility])
  {
    v3 = &selRef_accessibilitySupportedGridSizeClasses;
    if ((a1 & 1) == 0)
    {
      v3 = &selRef_standardSupportedGridSizeClasses;
    }

    v4 = [v1 *v3];
    [v1 set:v4 supportedGridSizeClasses:?];

    v5 = [objc_opt_self() sbh_leafIconDataSourceNotificationCenter];
    [v5 postNotificationName:*MEMORY[0x277D66730] object:v1];
  }
}

id CCUIModuleIconElement.init(moduleIdentifier:containerBundleIdentifier:standardSupportedGridSizeClasses:expandsGridSizeClassesForAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2442B4878();

  v10 = sub_2442B4878();

  v11 = [v8 initWithModuleIdentifier:v9 containerBundleIdentifier:v10 standardSupportedGridSizeClasses:a5 expandsGridSizeClassesForAccessibility:a6 & 1];

  return v11;
}

id CCUIModuleIconElement.init(moduleIdentifier:containerBundleIdentifier:standardSupportedGridSizeClasses:expandsGridSizeClassesForAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  HIDWORD(v16) = a6;
  v7 = sub_2442B4738();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2442B4728();
  sub_2442B4718();
  (*(v8 + 8))(v10, v7);
  v11 = sub_2442B4878();

  v12 = sub_2442B4878();

  v13 = sub_2442B4878();

  v14 = [v17 initWithUniqueIdentifier:v11 moduleIdentifier:v12 containerBundleIdentifier:v13 standardSupportedGridSizeClasses:a5 expandsGridSizeClassesForAccessibility:BYTE4(v16) & 1];

  return v14;
}

id CCUIModuleIconElement.init(uniqueIdentifier:moduleIdentifier:containerBundleIdentifier:standardSupportedGridSizeClasses:expandsGridSizeClassesForAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_2442B4878();

  v12 = sub_2442B4878();

  v13 = sub_2442B4878();

  v14 = [v10 initWithUniqueIdentifier:v11 moduleIdentifier:v12 containerBundleIdentifier:v13 standardSupportedGridSizeClasses:a7 expandsGridSizeClassesForAccessibility:a8 & 1];

  return v14;
}

{
  v9 = sub_2442A3150(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

void sub_2442A16B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = SBHIconGridSizeClassForCCUIGridSizeClass(a1);
  LODWORD(a2) = [a2 containsGridSizeClass_];

  if (a2)
  {
    CCUIAdjustGridSizeClassForAccessibility();
    v6 = CCUIGridSizeClassMaskForGridSizeClass();
    swift_beginAccess();
    v7 = *(a3 + 16);
    if ((v6 & ~v7) != 0)
    {
      *(a3 + 16) = v7 | v6;
    }
  }
}

uint64_t CCUIModuleIconElement.icon(_:displayNameForLocation:)()
{
  v1 = [v0 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2442B48A8();

  return v3;
}

id CCUIModuleIconElement.supportedGridSizeClasses(for:)()
{
  v1 = [v0 supportedGridSizeClasses];

  return v1;
}

id CCUIModuleIconElement.copyWithUniqueIdentifier()()
{
  swift_getObjectType();
  v1 = [v0 moduleIdentifier];
  if (!v1)
  {
    sub_2442B48A8();
    v1 = sub_2442B4878();
  }

  v2 = [v0 containerBundleIdentifier];
  if (!v2)
  {
    sub_2442B48A8();
    v2 = sub_2442B4878();
  }

  v3 = [v0 standardSupportedGridSizeClasses];
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithModuleIdentifier:v1 containerBundleIdentifier:v2 standardSupportedGridSizeClasses:v3 expandsGridSizeClassesForAccessibility:{objc_msgSend(v0, sel_expandsGridSizeClassesForAccessibility)}];

  v5 = [v0 displayName];
  [v4 setDisplayName_];

  [v4 setPreferredGallerySizeClass_];
  v6 = [v0 _supportedGridSizeClasses];
  [v4 set:v6 supportedGridSizeClasses:?];

  return v4;
}

unint64_t CCUIModuleIconElement.hash.getter()
{
  v1 = v0;
  v2 = [v0 uniqueIdentifier];
  v3 = sub_2442B48A8();
  v5 = v4;

  v18 = v3;
  v19 = v5;
  sub_2442A3370();
  v6 = sub_2442B4AE8();

  v7 = [v1 moduleIdentifier];
  v8 = sub_2442B48A8();
  v10 = v9;

  v17 = v8;
  v11 = sub_2442B4AE8();

  v12 = [v1 containerBundleIdentifier];
  sub_2442B48A8();

  v13 = sub_2442B4AE8();

  v14 = [v1 standardSupportedGridSizeClasses];
  v15 = [v14 hash];

  return v11 ^ v6 ^ v13 ^ v15 ^ [v1 expandsGridSizeClassesForAccessibility];
}

uint64_t CCUIModuleIconElement.isEqual(_:)(uint64_t a1)
{
  v2 = sub_2442A33C4(a1, v38);
  if (v39)
  {
    type metadata accessor for CCUIModuleIconElement(v2);
    if (swift_dynamicCast())
    {
      if (v37 == v1)
      {

        return 1;
      }

      v3 = [v1 uniqueIdentifier];
      v4 = sub_2442B48A8();
      v6 = v5;

      v7 = [v37 uniqueIdentifier];
      v8 = sub_2442B48A8();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v12 = sub_2442B4C68();

        if ((v12 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v13 = [v1 moduleIdentifier];
      v14 = sub_2442B48A8();
      v16 = v15;

      v17 = [v37 moduleIdentifier];
      v18 = sub_2442B48A8();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {
      }

      else
      {
        v21 = sub_2442B4C68();

        if ((v21 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v22 = [v1 containerBundleIdentifier];
      v23 = sub_2442B48A8();
      v25 = v24;

      v26 = [v37 containerBundleIdentifier];
      v27 = sub_2442B48A8();
      v29 = v28;

      if (v23 == v27 && v25 == v29)
      {

        goto LABEL_18;
      }

      v30 = sub_2442B4C68();

      if (v30)
      {
LABEL_18:
        sub_2442A34F8(0, &qword_27EDDD4F8, 0x277D82BB8);
        v31 = v1;
        v32 = [v1 standardSupportedGridSizeClasses];
        v33 = [v37 standardSupportedGridSizeClasses];
        v34 = sub_2442B4AB8();

        if (v34)
        {
          v35 = [v31 expandsGridSizeClassesForAccessibility];
          v36 = [v37 expandsGridSizeClassesForAccessibility];

          return v35 ^ v36 ^ 1;
        }
      }

LABEL_20:
    }
  }

  else
  {
    sub_2442A3434(v38);
  }

  return 0;
}

uint64_t CCUIModuleIconElement.description.getter()
{
  v1 = [objc_opt_self() descriptionForRootObject_];
  v2 = sub_2442B48A8();

  return v2;
}

id sub_2442A21CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v2 uniqueIdentifier];
  if (!v5)
  {
    sub_2442B48A8();
    v5 = sub_2442B4878();
  }

  v6 = [v2 moduleIdentifier];
  if (!v6)
  {
    sub_2442B48A8();
    v6 = sub_2442B4878();
  }

  v7 = [v2 containerBundleIdentifier];
  if (!v7)
  {
    sub_2442B48A8();
    v7 = sub_2442B4878();
  }

  v8 = [v2 standardSupportedGridSizeClasses];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUniqueIdentifier:v5 moduleIdentifier:v6 containerBundleIdentifier:v7 standardSupportedGridSizeClasses:v8 expandsGridSizeClassesForAccessibility:{objc_msgSend(v2, sel_expandsGridSizeClassesForAccessibility)}];

  v10 = [v2 displayName];
  [v9 setDisplayName_];

  result = [v9 setPreferredGallerySizeClass_];
  a1[3] = ObjectType;
  *a1 = v9;
  return result;
}

uint64_t CCUIModuleIconElement.appendDescription(to:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2442A34B0;
  *(v4 + 24) = v3;
  v9[4] = sub_2442A34B8;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2442A2964;
  v9[3] = &block_descriptor;
  v5 = _Block_copy(v9);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442A2550(void *a1, void *a2)
{
  result = [a1 hasSuccinctStyle];
  if ((result & 1) == 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2442A35E8;
    *(v6 + 24) = v5;
    v11[4] = sub_2442A3600;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2442A2964;
    v11[3] = &block_descriptor_17;
    v7 = _Block_copy(v11);
    v8 = a1;
    v9 = a2;

    [v8 appendBodySectionWithName:0 block:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2442A26C4(void *a1, id a2)
{
  v4 = [a2 moduleIdentifier];
  if (!v4)
  {
    sub_2442B48A8();
    v4 = sub_2442B4878();
  }

  v5 = sub_2442B4878();
  [a1 appendString:v4 withName:v5];

  v6 = [a2 containerBundleIdentifier];
  if (!v6)
  {
    sub_2442B48A8();
    v6 = sub_2442B4878();
  }

  v7 = sub_2442B4878();
  [a1 appendString:v6 withName:v7];

  v8 = [a2 supportedGridSizeClasses];
  v9 = sub_2442B4878();

  v10 = [a2 uniqueIdentifier];
  if (!v10)
  {
    sub_2442B48A8();
    v10 = sub_2442B4878();
  }

  v11 = sub_2442B4878();
  [a1 appendString:v10 withName:v11];

  v12 = [a2 displayName];
  v13 = sub_2442B4878();
  [a1 appendString:v12 withName:v13 skipIfEmpty:1];
}

id CCUIModuleIconElement.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t CCUIModuleIconElement.sbh_galleryItemIdentifier.getter()
{
  sub_2442B4B58();

  v1 = [v0 uniqueIdentifier];
  v2 = sub_2442B48A8();
  v4 = v3;

  MEMORY[0x245D5DD10](v2, v4);

  return 0xD00000000000001DLL;
}

uint64_t CCUIModuleIconElement.sbh_appName.getter()
{
  sub_2442A34F8(0, &qword_27EDDD500, 0x277CC1E90);
  v1 = [v0 containerBundleIdentifier];
  v2 = sub_2442B48A8();
  v4 = v3;

  v5 = sub_2442A2EC0(v2, v4, 1);
  if (v5)
  {
    v9 = v5;
    v7 = [v5 localizedName];
    v8 = sub_2442B48A8();
  }

  else
  {
    v6 = [v0 sbh_widgetName];
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = sub_2442B48A8();
  }

  return v8;
}

id sub_2442A2EC0(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2442B4878();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_2442B4708();

    swift_willThrow();
  }

  return v5;
}

uint64_t CCUIModuleIconElement.sbh_widgetName.getter()
{
  v1 = [v0 displayName];
  if (!v1)
  {
    v1 = [v0 moduleIdentifier];
  }

  v2 = v1;
  v3 = sub_2442B48A8();

  return v3;
}

id sub_2442A3150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v11 = &v8[OBJC_IVAR___CCUIModuleIconElement_displayName];
  *v11 = 0;
  v11[1] = 0;
  *&v8[OBJC_IVAR___CCUIModuleIconElement_preferredGallerySizeClass] = 0;
  v12 = &v8[OBJC_IVAR___CCUIModuleIconElement_uniqueIdentifier];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v8[OBJC_IVAR___CCUIModuleIconElement_moduleIdentifier];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v8[OBJC_IVAR___CCUIModuleIconElement_containerBundleIdentifier];
  *v14 = a5;
  v14[1] = a6;
  *&v8[OBJC_IVAR___CCUIModuleIconElement_standardSupportedGridSizeClasses] = a7;
  if (a8)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = a7;
    *(v16 + 24) = v15;
    v23[4] = sub_2442A35F0;
    v23[5] = v16;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2442A8B5C;
    v23[3] = &block_descriptor_26;
    v17 = _Block_copy(v23);
    v18 = a7;

    CCUIEnumerateGridSizeClassesWithBlock();
    _Block_release(v17);
    swift_beginAccess();
    v19 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask(*(v15 + 16));
    *&v8[OBJC_IVAR___CCUIModuleIconElement_accessibilitySupportedGridSizeClasses] = v19;
    v20 = [v18 gridSizeClassSetByUnioningWithGridSizeClassSet_];
    *&v8[OBJC_IVAR___CCUIModuleIconElement__supportedGridSizeClasses] = v20;
  }

  else
  {
    *&v8[OBJC_IVAR___CCUIModuleIconElement_accessibilitySupportedGridSizeClasses] = a7;
    *&v8[OBJC_IVAR___CCUIModuleIconElement__supportedGridSizeClasses] = a7;
    v21 = a7;
  }

  v8[OBJC_IVAR___CCUIModuleIconElement_expandsGridSizeClassesForAccessibility] = a8 & 1;
  v24.receiver = v8;
  v24.super_class = CCUIModuleIconElement;
  return objc_msgSendSuper2(&v24, sel_init);
}

unint64_t sub_2442A3370()
{
  result = qword_280F72330;
  if (!qword_280F72330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F72330);
  }

  return result;
}

uint64_t sub_2442A33C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD4F0, &qword_2442B77D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2442A3434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD4F0, &qword_2442B77D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2442A34F8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t CCUISControlsGalleryResult.description.getter()
{
  v1 = v0;
  sub_2442B4B58();

  v2 = [v0 control];
  v3 = [v2 description];
  v4 = sub_2442B48A8();
  v6 = v5;

  MEMORY[0x245D5DD10](v4, v6);

  MEMORY[0x245D5DD10](0xD00000000000001FLL, 0x80000002442BA710);
  v7 = [v1 promptsForUserConfiguration];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x245D5DD10](v9, v10);

  MEMORY[0x245D5DD10](41, 0xE100000000000000);
  return 0x6C6F72746E6F6328;
}

CCUISControlsGalleryResult __swiftcall CCUISControlsGalleryResult.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.control = v2;
  result.super.isa = v1;
  result.promptsForUserConfiguration = v3;
  return result;
}

unint64_t type metadata accessor for CCUISControlsGalleryResult()
{
  result = qword_27EDDD6B0;
  if (!qword_27EDDD6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDD6B0);
  }

  return result;
}

uint64_t sub_2442A397C()
{
  v0 = sub_2442B47A8();
  __swift_allocate_value_buffer(v0, qword_280F72340);
  __swift_project_value_buffer(v0, qword_280F72340);
  result = *MEMORY[0x277CFC900];
  if (*MEMORY[0x277CFC900])
  {
    sub_2442B48E8();
    return sub_2442B4798();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Logger.controlServices.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F72338 != -1)
  {
    swift_once();
  }

  v2 = sub_2442B47A8();
  v3 = __swift_project_value_buffer(v2, qword_280F72340);
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

id sub_2442A3DA0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ControlContainerViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_2442A3E08(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl] = 0;
  *&v1[OBJC_IVAR___CCUISControlsGalleryViewController_addWidgetSheetViewController] = 0;
  *&v1[OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager] = 0;
  swift_unknownObjectWeakInit();
  if (a1 && ([a1 copy], sub_2442B4AF8(), swift_unknownObjectRelease(), type metadata accessor for CCUISControlsGalleryConfiguration(0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v9;
  }

  else
  {
    v3 = [objc_allocWithZone(CCUISControlsGalleryConfiguration) init];
  }

  *&v1[OBJC_IVAR___CCUISControlsGalleryViewController_configuration] = v3;
  v10.receiver = v1;
  v10.super_class = CCUISControlsGalleryViewController;
  v4 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  objc_allocWithZone(type metadata accessor for ControlsGalleryManager());
  v5 = v4;
  v6 = sub_2442AB45C(v5);
  v7 = *&v5[OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager];
  *&v5[OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager] = v6;

  sub_2442A3F94();
  [v5 setPreferredContentSize_];

  return v5;
}

void sub_2442A3F94()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    CCUIReferenceScreenBounds();
    CGRectGetWidth(v5);
    CCUIScreenSafeAreaInsets();
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 1)
    {
      CCUIReferenceScreenBounds();
      CGRectGetWidth(v6);
    }
  }
}

id CCUISControlsGalleryViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

Swift::Void __swiftcall CCUISControlsGalleryViewController.viewDidLoad()()
{
  v1 = v0;
  v29.super_class = CCUISControlsGalleryViewController;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D66100]) init];
  if (qword_27EDDCF30 != -1)
  {
    swift_once();
  }

  v3 = qword_27EDDE7F8;
  v4 = sub_2442B4878();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  if (!v5)
  {
    sub_2442B48A8();
    v5 = sub_2442B4878();
  }

  [v2 setSearchPlaceholderText_];

  v6 = [objc_opt_self() labelColor];
  [v2 setSearchTintColor_];

  [v2 setBackgroundMaterial_];
  [v2 setApplicationCellIncludesGalleryListView_];
  [v2 setContentContainsInteractiveUIControls_];
  v7 = [objc_allocWithZone(type metadata accessor for ControlsGalleryIconListLayoutProvider()) init];
  [v2 setListLayoutProvider_];

  v8 = [v1 galleryManager];
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = *&v8[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_iconViewProvider];
  swift_unknownObjectRetain();

  [v2 setIconViewProvider_];
  swift_unknownObjectRelease();
  v11 = [objc_opt_self() controlCenterDomain];
  [v2 setGridSizeClassDomain_];

  v12 = SBHIconGridSizeClassForCCUIGridSizeClass(3);
  [v2 setGridSizeClassForContentWidth_];

  [v2 setWantsCustomApplicationsSection_];
  [v2 setWantsGlassGroupAppliedToGalleryContents_];
  _s19GalleryIconListViewCMa();
  [v2 setListViewClass_];
  v13 = [objc_allocWithZone(MEMORY[0x277D66110]) initWithConfiguration_];
  [v13 setOverrideUserInterfaceStyle_];
  v14 = v13;
  v15 = [v1 galleryManager];
  [v14 setDelegate_];

  v16 = [v1 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  [v14 setWantsBottomAttachedPresentation_];
  [v1 bs:v14 addChildViewController:?];

  v18 = [v1 galleryManager];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  sub_2442ABB5C();

  v20 = [v1 galleryManager];
  if (!v20)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = *&v20[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_applicationControlCollections];

  if (v22)
  {
    sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
    v23 = sub_2442B4948();

    [v14 setApplicationWidgetCollections_];
  }

  v24 = [v1 galleryManager];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  v26 = *&v24[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_galleryApplicationControlCollections];

  if (v26)
  {
    sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
    v27 = sub_2442B4948();

    [v14 setCustomApplicationWidgetCollections_];
  }

  v28 = *&v1[OBJC_IVAR___CCUISControlsGalleryViewController_addWidgetSheetViewController];
  *&v1[OBJC_IVAR___CCUISControlsGalleryViewController_addWidgetSheetViewController] = v14;
}

Swift::Void __swiftcall CCUISControlsGalleryViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = [v1 delegate];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      [v4 controlsGalleryViewControllerWillPresent_];
    }

    swift_unknownObjectRelease();
  }

  sub_2442A47F8();
  v5.receiver = v1;
  v5.super_class = CCUISControlsGalleryViewController;
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
}

void sub_2442A47F8()
{
  v1 = v0;
  v2 = sub_2442B47C8();
  MEMORY[0x28223BE20](v2);
  v3 = [v0 sheetPresentationController];
  if (v3)
  {
    v4 = v3;
    sub_2442B4AA8();
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    [v4 setPrefersGrabberVisible_];
    [v4 _setShouldDismissWhenTappedOutside_];
    v7 = v4;
    sub_2442B4A88();
    sub_2442B47B8();
    sub_2442B4A98();
  }
}

Swift::Void __swiftcall CCUISControlsGalleryViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1);
  v1 = [objc_allocWithZone(MEMORY[0x277CFA280]) init];
  v2 = sub_2442B4878();
  [v1 userEnteredAddGalleryForHost_];
}

id sub_2442A4BB8(char a1, SEL *a2, SEL *a3)
{
  v7 = [v3 delegate];
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector_])
    {
      [v8 *a2];
    }

    swift_unknownObjectRelease();
  }

  v10.receiver = v3;
  v10.super_class = CCUISControlsGalleryViewController;
  return objc_msgSendSuper2(&v10, *a3, a1 & 1);
}

void sub_2442A4C74(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  v9 = [v8 delegate];
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      [v10 *a4];
    }

    swift_unknownObjectRelease();
  }

  v11.receiver = v8;
  v11.super_class = CCUISControlsGalleryViewController;
  objc_msgSendSuper2(&v11, *a5, a3);
}

Swift::Void __swiftcall CCUISControlsGalleryViewController.viewWillLayoutSubviews()()
{
  v14.super_class = CCUISControlsGalleryViewController;
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___CCUISControlsGalleryViewController_addWidgetSheetViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_2442A501C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id CCUISControlsGalleryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_2442B4878();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void _sSo34CCUISControlsGalleryViewControllerC23ControlCenterUIServicesE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl) = 0;
  *(v0 + OBJC_IVAR___CCUISControlsGalleryViewController_addWidgetSheetViewController) = 0;
  *(v0 + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager) = 0;
  swift_unknownObjectWeakInit();
  sub_2442B4BE8();
  __break(1u);
}

uint64_t CCUIGridSizeClass.init(controlSize:)(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_2442B7838[a1 - 1];
  }
}

uint64_t sub_2442A56A8(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  CCUIGridSizeClassForSBHIconGridSizeClass(a1, 1);
  v7 = CCUINumberOfColumnsForGridSizeClass();
  v8 = CCUINumberOfRowsForGridSizeClass();
  v9 = a3(v7 | (v8 << 16));
  v10 = objc_opt_self();
  v11 = a1;
  v12 = [v10 sbh:v9 valueWithSBHIconGridSize:?];
  swift_beginAccess();
  sub_2442A5784(v12, v11);
  return swift_endAccess();
}

void sub_2442A5784(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2442A6584(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_2442B0DD8(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_2442A6858();
        v10 = v13;
      }

      sub_2442A63BC(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_2442A5888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2442A59E4(uint64_t result)
{
  v1 = ceil(vcvtd_n_f64_u32(result, 1uLL));
  v2 = v1 + v1;
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 65536.0)
  {
    return result & 0xFFFF0000 | v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_2442A5AB0(void *a1)
{
  sub_2442A5C6C();
  v4 = v3;
  v6 = v5;
  v7 = [*(v1 + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout_realIconGridSizeClassSizes) gridSizeForGridSizeClass_];
  v8 = v4 * v7 + v6 * (v7 - 1);
  CCUIGridSizeClassForSBHIconGridSizeClass(a1, 1);
  CCUICompactModuleContinuousCornerRadiusForGridSizeClass();
  sub_2442A5BE8();
  return v8;
}

void sub_2442A5BE8()
{
  v1 = v0 + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout____lazy_storage___displayScale;
  if (*(v1 + 8))
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 scale];
    v4 = v3;

    *v1 = v4;
    *(v1 + 8) = 0;
  }
}

void sub_2442A5C6C()
{
  v1 = v0 + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout____lazy_storage___gridGeometryInfo;
  if (*(v0 + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout____lazy_storage___gridGeometryInfo + 16))
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 != 1)
    {
      CCUIReferenceScreenBounds();
      CGRectGetWidth(v6);
    }

    sub_2442A5BE8();
    CCUICalculateGridGeometryInfo();
    *v1 = v4;
    *(v1 + 8) = v5;
    *(v1 + 16) = 0;
  }
}

id sub_2442A5DE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2442A5E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDD840, &qword_2442B78D8);
  v35 = v4;
  result = sub_2442B4C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2442B4C88();
      sub_2442B48C8();
      result = sub_2442B4CA8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2442A60F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD818, &unk_2442B78B0);
  v36 = v4;
  result = sub_2442B4C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_2442B48A8();
      sub_2442B4C88();
      sub_2442B48C8();
      v25 = sub_2442B4CA8();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_2442A63BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2442B4B28() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2442B48A8();
      sub_2442B4C88();
      v10 = v9;
      sub_2442B48C8();
      v11 = sub_2442B4CA8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_2442A6584(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2442B0DD8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2442A60F8(v13, a3 & 1);
      v8 = sub_2442B0DD8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for SBHIconGridSizeClass(0);
        sub_2442B4C78();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_2442A6858();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

id sub_2442A66EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDD840, &qword_2442B78D8);
  v2 = *v0;
  v3 = sub_2442B4C08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

id sub_2442A6858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD818, &unk_2442B78B0);
  v2 = *v0;
  v3 = sub_2442B4C08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

  return result;
}

id sub_2442A69B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  v5 = [objc_opt_self() controlCenterDomain];
  v6 = [v5 allNonDefaultGridSizeClasses];

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  v13[4] = sub_2442A6BDC;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2442A5888;
  v13[3] = &block_descriptor_0;
  v8 = _Block_copy(v13);

  [v6 enumerateGridSizeClassesUsingBlock_];
  _Block_release(v8);

  swift_beginAccess();
  v9 = objc_allocWithZone(MEMORY[0x277D661C0]);
  type metadata accessor for SBHIconGridSizeClass(0);
  sub_2442A6C00();
  sub_2442A6C4C(&qword_27EDDD810, type metadata accessor for SBHIconGridSizeClass, &unk_2442B7724);

  v10 = sub_2442B4818();

  v11 = [v9 initWithGridSizeClassSizes_];

  return v11;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2442A6C00()
{
  result = qword_27EDDD808;
  if (!qword_27EDDD808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDD808);
  }

  return result;
}

uint64_t sub_2442A6C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2442A6C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD838, &qword_2442B78D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2442A6CFC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v1 = sub_2442B4878();
  v2 = [v0 initWithString_];

  qword_27EDDE800 = v2;
}

void *CHSWidgetExtensionProvider.controlDescriptor(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDDB90, &unk_2442B79F0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD850, &qword_2442B78E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD858, &qword_2442B78E8);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = [a1 containerBundleIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_2442B48A8();

    sub_2442B4748();
    sub_2442A7488(v8);
    v10(v6, 0, 1, v9);
    sub_2442A7B78(v6, v8);
  }

  sub_2442B4A58();
  v13 = [a1 extensionBundleIdentifier];
  sub_2442B48A8();

  sub_2442B4748();
  v48 = v8;
  sub_2442A73A8(v8, v6);
  v50 = sub_2442B4A48();
  v14 = [a1 kind];
  v46[0] = sub_2442B48A8();
  v47 = v15;

  v16 = [v49 extensions];
  v17 = sub_2442A34F8(0, &qword_280F72318, 0x277CFA3A8);
  sub_2442A7418();
  v18 = sub_2442B4998();

  v49 = v17;
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2442B4B38();
    sub_2442B49A8();
    v19 = v52[1];
    v20 = v52[2];
    v21 = v52[3];
    v22 = v52[4];
    v23 = v52[5];
  }

  else
  {
    v24 = -1 << *(v18 + 32);
    v20 = (v18 + 56);
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = (v26 & *(v18 + 56));

    v22 = 0;
    v19 = v18;
  }

  v46[1] = v21;
  v27 = (v21 + 64) >> 6;
  if (v19 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v28 = v22;
  v29 = v23;
  v30 = v22;
  if (!v23)
  {
    do
    {
      v30 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v30 >= v27)
      {
        goto LABEL_21;
      }

      v29 = v20[v30];
      ++v28;
    }

    while (!v29);
  }

  v31 = (v29 - 1) & v29;
  v16 = *(*(v19 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
  if (!v16)
  {
LABEL_21:
    sub_2442A7480(v19);

    sub_2442A7488(v48);
LABEL_22:

    return 0;
  }

  while (1)
  {
    v52[0] = v16;
    if (sub_2442A74F0(v52, v50))
    {
      break;
    }

    v22 = v30;
    v23 = v31;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v32 = sub_2442B4B48();
    if (v32)
    {
      v51 = v32;
      swift_dynamicCast();
      v16 = v52[0];
      v30 = v22;
      v31 = v23;
      if (v52[0])
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_2442A7480(v19);

  v35 = [v16 orderedControlDescriptors];
  if (!v35)
  {
    sub_2442A7488(v48);

    goto LABEL_22;
  }

  v36 = v35;
  sub_2442A34F8(0, &qword_280F72308, 0x277CFA210);
  v30 = sub_2442B4958();

  v27 = v48;
  if (v30 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2442B4BF8())
  {
    v38 = 0;
    v49 = (v30 & 0xC000000000000001);
    while (1)
    {
      if (v49)
      {
        v39 = MEMORY[0x245D5DFA0](v38, v30);
      }

      else
      {
        if (v38 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v39 = *(v30 + 8 * v38 + 32);
      }

      v33 = v39;
      v27 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v40 = [v39 kind];
      v41 = sub_2442B48A8();
      v43 = v42;

      v44 = v41 == v46[0] && v43 == v47;
      if (v44)
      {

LABEL_44:
        sub_2442A7488(v48);

        return v33;
      }

      v45 = sub_2442B4C68();

      if (v45)
      {
        goto LABEL_44;
      }

      ++v38;
      v44 = v27 == i;
      v27 = v48;
      if (v44)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_49:

  sub_2442A7488(v27);
  return 0;
}

uint64_t sub_2442A73A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD850, &qword_2442B78E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2442A7418()
{
  result = qword_280F72310;
  if (!qword_280F72310)
  {
    sub_2442A34F8(255, &qword_280F72318, 0x277CFA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F72310);
  }

  return result;
}

uint64_t sub_2442A7488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD850, &qword_2442B78E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2442A74F0(void **a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD850, &qword_2442B78E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD858, &qword_2442B78E8);
  v48 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDDB90, &unk_2442B79F0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = *a1;
  v18 = [v17 identity];
  v19 = MEMORY[0x277CFA138];
  v20 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  v53 = v11;
  v21 = *(v11 + 16);
  v61 = v16;
  v22 = v16;
  v23 = v47;
  v21(v22, &v18[v20], v10);

  v24 = *v19;
  v25 = v48;
  v26 = v55;
  swift_beginAccess();
  v56 = v14;
  v27 = v14;
  v28 = v49;
  v54 = v10;
  v21(v27, (v26 + v24), v10);
  v29 = [v17 identity];
  v30 = MEMORY[0x277CFA130];
  v31 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_2442A73A8(v29 + v31, v28);

  v32 = *(v25 + 48);
  if (v32(v28, 1, v23) == 1)
  {
    v33 = v50;
    sub_2442B4748();
    if (v32(v28, 1, v23) != 1)
    {
      sub_2442A7488(v28);
    }
  }

  else
  {
    v33 = v50;
    (*(v25 + 32))(v50, v28, v23);
  }

  v34 = *v30;
  v35 = v55;
  swift_beginAccess();
  v36 = v35 + v34;
  v37 = v51;
  sub_2442A73A8(v36, v51);
  if (v32(v37, 1, v23) == 1)
  {
    v38 = v52;
    sub_2442B4748();
    if (v32(v37, 1, v23) != 1)
    {
      sub_2442A7488(v37);
    }
  }

  else
  {
    v38 = v52;
    (*(v25 + 32))(v52, v37, v23);
  }

  sub_2442A7C30(&qword_280F72358, &unk_27EDDDB90, &unk_2442B79F0);
  v39 = v54;
  sub_2442B4928();
  sub_2442B4928();
  if (v59 == v57 && v60 == v58)
  {
  }

  else
  {
    v40 = sub_2442B4C68();

    if ((v40 & 1) == 0)
    {
      v44 = *(v25 + 8);
      v44(v38, v23);
      v44(v33, v23);
      v45 = *(v53 + 8);
      v45(v56, v39);
      v45(v61, v39);
      v41 = 0;
      return v41 & 1;
    }
  }

  sub_2442A7C30(&qword_280F72360, &qword_27EDDD858, &qword_2442B78E8);
  sub_2442B4928();
  sub_2442B4928();
  if (v59 == v57 && v60 == v58)
  {
    v41 = 1;
  }

  else
  {
    v41 = sub_2442B4C68();
  }

  v42 = *(v25 + 8);
  v42(v38, v23);
  v42(v33, v23);
  v43 = *(v53 + 8);
  v43(v56, v39);
  v43(v61, v39);

  return v41 & 1;
}

uint64_t sub_2442A7B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD850, &qword_2442B78E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_2442A7C30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id CCUISControlsGalleryConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *(v0 + OBJC_IVAR___CCUISControlsGalleryConfiguration___allowedControlSizes) = 0;
  *(v0 + OBJC_IVAR___CCUISControlsGalleryConfiguration_disallowedControlIdentities) = 0;
  *(v0 + OBJC_IVAR___CCUISControlsGalleryConfiguration_disallowedExtensionIdentities) = 0;
  *(v0 + OBJC_IVAR___CCUISControlsGalleryConfiguration_suggestedControls) = 0;
  v2.super_class = CCUISControlsGalleryConfiguration;
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2442A7D10(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  if (*(a1 + *a3))
  {
    sub_2442A34F8(0, a4, a5);

    v5 = sub_2442B4948();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2442A7DA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, void *a6)
{
  if (a3)
  {
    sub_2442A34F8(0, a4, a5);
    v8 = sub_2442B4958();
  }

  else
  {
    v8 = 0;
  }

  *(a1 + *a6) = v8;
}

id sub_2442A7E38(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (*(a1 + *a3))
  {
    (a4)(0, a2);

    v4 = sub_2442B4948();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2442A7EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  if (a3)
  {
    (a4)(0, a2);
    v7 = sub_2442B4958();
  }

  else
  {
    v7 = 0;
  }

  *(a1 + *a5) = v7;
}

uint64_t sub_2442A7F7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CCUISControlsGalleryConfiguration) init];
  v5 = [v2 allowedControlSizes];
  [v4 setAllowedControlSizes_];

  v6 = [v2 disallowedExtensionIdentities];
  [v4 setDisallowedExtensionIdentities_];

  v7 = [v2 disallowedControlIdentities];
  [v4 setDisallowedControlIdentities_];

  v8 = [v2 suggestedControls];
  [v4 setSuggestedControls_];

  result = type metadata accessor for CCUISControlsGalleryConfiguration(v9);
  a1[3] = result;
  *a1 = v4;
  return result;
}

char *CCUISControlsGalleryConfiguration.allowedControlSizes.getter()
{
  v1 = [v0 allowedControlSizes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2442A34F8(0, &qword_27EDDD880, 0x277CCABB0);
  v3 = sub_2442B4958();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2442B4BF8())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D5DFA0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2442A8830(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_2442A8830((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  return v6;
}

void CCUISControlsGalleryConfiguration.allowedControlSizes.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v7 = MEMORY[0x277D84F90];
      sub_2442B4BA8();
      v4 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        sub_2442B4B88();
        sub_2442B4BB8();
        sub_2442B4BC8();
        sub_2442B4B98();
        v4 += 8;
        --v3;
      }

      while (v3);
    }

    sub_2442A34F8(0, &qword_27EDDD880, 0x277CCABB0);
    v6 = sub_2442B4948();

    [v1 setAllowedControlSizes_];
  }

  else
  {
    [v1 setAllowedControlSizes_];
  }
}

void (*CCUISControlsGalleryConfiguration.allowedControlSizes.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CCUISControlsGalleryConfiguration.allowedControlSizes.getter();
  return sub_2442A8590;
}

void sub_2442A8590(uint64_t *a1, char a2)
{
  if (a2)
  {

    CCUISControlsGalleryConfiguration.allowedControlSizes.setter(v2);
  }

  else
  {
    CCUISControlsGalleryConfiguration.allowedControlSizes.setter(*a1);
  }
}

char *sub_2442A85E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD088, &qword_2442B7A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442A8708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD8A8, &qword_2442B7900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442A8830(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD8A0, &qword_2442B78F8);
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

char *sub_2442A8948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD890, &qword_2442B78F0);
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

char *sub_2442A8A58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDDC00, &qword_2442B7908);
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

uint64_t sub_2442A8B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t CCUIControlIconElement.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIControlIconElement_uniqueIdentifier);

  return v1;
}

uint64_t CCUIControlIconElement.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIControlIconElement_kind);

  return v1;
}

uint64_t CCUIControlIconElement.extensionBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIControlIconElement_extensionBundleIdentifier);

  return v1;
}

uint64_t CCUIControlIconElement.containerBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CCUIControlIconElement_containerBundleIdentifier);

  return v1;
}

uint64_t CCUIControlIconElement.displayName.getter()
{
  v1 = (v0 + OBJC_IVAR___CCUIControlIconElement_displayName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CCUIControlIconElement.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CCUIControlIconElement_displayName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t CCUIControlIconElement.preferredGallerySizeClass.getter()
{
  v1 = OBJC_IVAR___CCUIControlIconElement_preferredGallerySizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CCUIControlIconElement.preferredGallerySizeClass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CCUIControlIconElement_preferredGallerySizeClass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CCUIControlIconElement.supportedGridSizeClasses.getter()
{
  v1 = [v0 _supportedGridSizeClasses];

  return v1;
}

id CCUIControlIconElement.init(kind:controlType:extensionBundleIdentifier:containerBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_2442B4878();

  v10 = sub_2442B4878();

  if (a7)
  {
    v11 = sub_2442B4878();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKind:v9 controlType:a3 extensionBundleIdentifier:v10 containerBundleIdentifier:v11];

  return v12;
}

{
  v19 = a3;
  v18[1] = a6;
  v8 = sub_2442B4738();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2442B4728();
  sub_2442B4718();
  (*(v9 + 8))(v11, v8);
  v12 = sub_2442B4878();

  v13 = sub_2442B4878();

  v14 = sub_2442B4878();

  if (a7)
  {
    v15 = sub_2442B4878();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v20 initWithUniqueIdentifier:v12 kind:v13 controlType:v19 extensionBundleIdentifier:v14 containerBundleIdentifier:v15];

  return v16;
}

id CCUIControlIconElement.init(uniqueIdentifier:kind:controlType:extensionBundleIdentifier:containerBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = sub_2442B4878();

  v11 = sub_2442B4878();

  v12 = sub_2442B4878();

  if (a9)
  {
    v13 = sub_2442B4878();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUniqueIdentifier:v10 kind:v11 controlType:a5 extensionBundleIdentifier:v12 containerBundleIdentifier:v13];

  return v14;
}

{
  v10 = &v9[OBJC_IVAR___CCUIControlIconElement_displayName];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR___CCUIControlIconElement_preferredGallerySizeClass] = 0;
  v11 = &v9[OBJC_IVAR___CCUIControlIconElement_uniqueIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v9[OBJC_IVAR___CCUIControlIconElement_kind];
  *v12 = a3;
  *(v12 + 1) = a4;
  *&v9[OBJC_IVAR___CCUIControlIconElement_controlType] = a5;
  v13 = &v9[OBJC_IVAR___CCUIControlIconElement_extensionBundleIdentifier];
  *v13 = a6;
  *(v13 + 1) = a7;
  v14 = &v9[OBJC_IVAR___CCUIControlIconElement_containerBundleIdentifier];
  *v14 = a8;
  *(v14 + 1) = a9;
  if (qword_280F722E8 != -1)
  {
    swift_once();
  }

  v15 = qword_280F722F0;
  if (qword_280F722D0 != -1)
  {
    v18 = qword_280F722F0;
    swift_once();
    v15 = v18;
  }

  v16 = [v15 gridSizeClassSetByUnioningWithGridSizeClassSet_];
  *&v9[OBJC_IVAR___CCUIControlIconElement__supportedGridSizeClasses] = v16;
  v19.receiver = v9;
  v19.super_class = CCUIControlIconElement;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t CCUIControlIconElement.icon(_:displayNameForLocation:)()
{
  v1 = [v0 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2442B48A8();

  return v3;
}

id CCUIControlIconElement.supportedGridSizeClasses(for:)()
{
  v1 = [v0 supportedGridSizeClasses];

  return v1;
}

id CCUIControlIconElement.copyWithUniqueIdentifier()()
{
  swift_getObjectType();
  v1 = [v0 kind];
  if (!v1)
  {
    sub_2442B48A8();
    v1 = sub_2442B4878();
  }

  v2 = [v0 controlType];
  v3 = [v0 extensionBundleIdentifier];
  if (!v3)
  {
    sub_2442B48A8();
    v3 = sub_2442B4878();
  }

  v4 = [v0 containerBundleIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_2442B48A8();

    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v7 = sub_2442B4878();

    v8 = v6;
  }

  else
  {
    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v7 = 0;
  }

  v9 = [v8 initWithKind:v1 controlType:v2 extensionBundleIdentifier:v3 containerBundleIdentifier:v7];

  v10 = [v0 displayName];
  [v9 setDisplayName_];

  [v9 setPreferredGallerySizeClass_];
  v11 = [v0 _supportedGridSizeClasses];
  [v9 set:v11 supportedGridSizeClasses:?];

  return v9;
}

unint64_t CCUIControlIconElement.hash.getter()
{
  v1 = v0;
  v2 = [v0 uniqueIdentifier];
  v3 = sub_2442B48A8();
  v5 = v4;

  sub_2442A3370();
  v6 = sub_2442B4AE8();

  v7 = [v1 containerBundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2442B48A8();
    v11 = v10;

    v22 = v9;
    v23 = v11;
    v12 = sub_2442B4AE8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v1 kind];
  v14 = sub_2442B48A8();
  v16 = v15;

  v17 = sub_2442B4AE8();

  v18 = [v1 controlType];
  v19 = [v1 extensionBundleIdentifier];
  sub_2442B48A8();

  v20 = sub_2442B4AE8();

  return v12 ^ v6 ^ v17 ^ v18 ^ v20;
}

uint64_t CCUIControlIconElement.isEqual(_:)(uint64_t a1)
{
  v2 = sub_2442A33C4(a1, v44);
  if (v45)
  {
    type metadata accessor for CCUIControlIconElement(v2);
    if (swift_dynamicCast())
    {
      if (v43 == v1)
      {
        goto LABEL_32;
      }

      v3 = [v1 uniqueIdentifier];
      v4 = sub_2442B48A8();
      v6 = v5;

      v7 = [v43 uniqueIdentifier];
      v8 = sub_2442B48A8();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v11 = sub_2442B4C68();

        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v12 = [v1 kind];
      v13 = sub_2442B48A8();
      v15 = v14;

      v16 = [v43 kind];
      v17 = sub_2442B48A8();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {

        goto LABEL_13;
      }

      v20 = sub_2442B4C68();

      if (v20)
      {
LABEL_13:
        v21 = [v1 controlType];
        if (v21 == [v43 controlType])
        {
          v22 = [v1 extensionBundleIdentifier];
          v23 = sub_2442B48A8();
          v25 = v24;

          v26 = [v43 extensionBundleIdentifier];
          v27 = sub_2442B48A8();
          v29 = v28;

          if (v23 == v27 && v25 == v29)
          {

LABEL_18:
            v31 = [v1 containerBundleIdentifier];
            if (v31)
            {
              v32 = v31;
              v33 = sub_2442B48A8();
              v35 = v34;
            }

            else
            {
              v33 = 0;
              v35 = 0;
            }

            v38 = [v43 containerBundleIdentifier];
            if (v38)
            {
              v39 = v38;
              v40 = sub_2442B48A8();
              v42 = v41;

              if (!v35)
              {

                if (!v42)
                {
                  v36 = 1;
                  return v36 & 1;
                }

                goto LABEL_21;
              }

              if (v42)
              {
                if (v33 != v40 || v35 != v42)
                {
                  v36 = sub_2442B4C68();

                  return v36 & 1;
                }

                goto LABEL_32;
              }

              goto LABEL_31;
            }

            if (v35)
            {
LABEL_31:

              goto LABEL_21;
            }

LABEL_32:

            v36 = 1;
            return v36 & 1;
          }

          v30 = sub_2442B4C68();

          if (v30)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_20:
    }
  }

  else
  {
    sub_2442A3434(v44);
  }

LABEL_21:
  v36 = 0;
  return v36 & 1;
}

uint64_t CCUIControlIconElement.description.getter()
{
  v1 = [objc_opt_self() descriptionForRootObject_];
  v2 = sub_2442B48A8();

  return v2;
}

id CCUIControlIconElement.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v1 uniqueIdentifier];
  if (!v5)
  {
    sub_2442B48A8();
    v5 = sub_2442B4878();
  }

  v6 = [v1 kind];
  if (!v6)
  {
    sub_2442B48A8();
    v6 = sub_2442B4878();
  }

  v7 = [v1 controlType];
  v8 = [v1 extensionBundleIdentifier];
  if (!v8)
  {
    sub_2442B48A8();
    v8 = sub_2442B4878();
  }

  v9 = [v1 containerBundleIdentifier];
  if (v9)
  {
    v10 = v9;
    sub_2442B48A8();

    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = ObjectType;
    v13 = v11;
    v14 = v12;
    v15 = sub_2442B4878();

    v16 = v13;
  }

  else
  {
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = 0;
    v14 = ObjectType;
  }

  v17 = [v16 initWithUniqueIdentifier:v5 kind:v6 controlType:v7 extensionBundleIdentifier:v8 containerBundleIdentifier:v15];

  v18 = [v2 displayName];
  [v17 setDisplayName_];

  result = [v17 setPreferredGallerySizeClass_];
  a1[3] = v14;
  *a1 = v17;
  return result;
}

uint64_t CCUIControlIconElement.appendDescription(to:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2442AB400;
  *(v4 + 24) = v3;
  v9[4] = sub_2442AB408;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2442A2964;
  v9[3] = &block_descriptor_1;
  v5 = _Block_copy(v9);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442AA6B4(void *a1, void *a2)
{
  result = [a1 hasSuccinctStyle];
  if ((result & 1) == 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2442AB428;
    *(v6 + 24) = v5;
    v11[4] = sub_2442AB440;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2442A2964;
    v11[3] = &block_descriptor_17_0;
    v7 = _Block_copy(v11);
    v8 = a1;
    v9 = a2;

    [v8 appendBodySectionWithName:0 block:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2442AA828(void *a1, id a2)
{
  v4 = [a2 kind];
  if (!v4)
  {
    sub_2442B48A8();
    v4 = sub_2442B4878();
  }

  v5 = sub_2442B4878();
  [a1 appendString:v4 withName:v5];

  [a2 controlType];
  sub_2442B49D8();
  v6 = sub_2442B4878();

  v7 = sub_2442B4878();
  [a1 appendString:v6 withName:v7];

  v8 = [a2 extensionBundleIdentifier];
  if (!v8)
  {
    sub_2442B48A8();
    v8 = sub_2442B4878();
  }

  v9 = sub_2442B4878();
  [a1 appendString:v8 withName:v9];

  v10 = [a2 containerBundleIdentifier];
  v11 = sub_2442B4878();
  [a1 appendString:v10 withName:v11];

  v12 = [a2 supportedGridSizeClasses];
  v13 = sub_2442B4878();

  v14 = [a2 uniqueIdentifier];
  if (!v14)
  {
    sub_2442B48A8();
    v14 = sub_2442B4878();
  }

  v15 = sub_2442B4878();
  [a1 appendString:v14 withName:v15];

  v16 = [a2 displayName];
  v17 = sub_2442B4878();
  [a1 appendString:v16 withName:v17 skipIfEmpty:1];
}

id sub_2442AABC0()
{
  v0 = CCUIDefaultSupportedGridSizeClassesForChronoControls();
  result = SBHIconGridSizeClassSetForCCUIGridSizeClassMask(v0);
  qword_280F722F0 = result;
  return result;
}

uint64_t sub_2442AABEC()
{
  v0 = CCUIDefaultSupportedGridSizeClassesForChronoControls();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v6[4] = sub_2442AB430;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2442A8B5C;
  v6[3] = &block_descriptor_26_0;
  v3 = _Block_copy(v6);

  CCUIEnumerateGridSizeClassesWithBlock();
  _Block_release(v3);
  swift_beginAccess();
  v4 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask(*(v1 + 16));

  qword_280F722D8 = v4;
  return result;
}

uint64_t sub_2442AAD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CCUIGridSizeClassMaskForGridSizeClass();
  if ((result & ~a2) == 0)
  {
    CCUIAdjustGridSizeClassForAccessibility();
    v6 = CCUIGridSizeClassMaskForGridSizeClass();
    result = swift_beginAccess();
    v7 = *(a3 + 16);
    if ((v6 & ~v7) != 0)
    {
      *(a3 + 16) = v7 | v6;
    }
  }

  return result;
}

id CCUIControlIconElement.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t CCUIControlIconElement.sbh_galleryItemIdentifier.getter()
{
  sub_2442B4B58();

  v1 = [v0 uniqueIdentifier];
  v2 = sub_2442B48A8();
  v4 = v3;

  MEMORY[0x245D5DD10](v2, v4);

  return 0xD00000000000001ELL;
}

uint64_t CCUIControlIconElement.sbh_appName.getter()
{
  v1 = v0;
  v2 = [v0 containerBundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2442B48A8();
    v6 = v5;

    sub_2442A34F8(0, &qword_27EDDD500, 0x277CC1E90);
    v7 = sub_2442A2EC0(v4, v6, 1);
    if (v7)
    {
      v11 = v7;
      v9 = [v7 localizedName];
      v10 = sub_2442B48A8();

      goto LABEL_8;
    }
  }

  v8 = [v1 sbh_widgetName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2442B48A8();
LABEL_8:

    return v10;
  }

  return 0;
}

uint64_t CCUIControlIconElement.sbh_widgetName.getter()
{
  v1 = [v0 displayName];
  if (!v1)
  {
    v1 = [v0 kind];
  }

  v2 = v1;
  v3 = sub_2442B48A8();

  return v3;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_2442AB45C(void *a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_2442B4A08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2442B49F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2442B4808();
  MEMORY[0x28223BE20](v8 - 8);
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_iconViewProvider] = 0;
  v9 = OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_controlsLoadingQueue;
  sub_2442A34F8(0, &qword_27EDDDB10, 0x277D85C78);
  sub_2442B47F8();
  sub_2442B49E8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v3);
  *&v2[v9] = sub_2442B4A38();
  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_applicationControlCollections] = 0;
  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_galleryApplicationControlCollections] = 0;
  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_moduleUniqueIdentifiers] = 0;
  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager____lazy_storage___moduleContentMetrics] = 0;
  v10 = v23;
  swift_unknownObjectWeakAssign();
  v11 = [objc_opt_self() visibleControls];
  v12 = [objc_allocWithZone(MEMORY[0x277CFA3B8]) initWithOptions_];

  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_extensionProvider] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D66108]) initWithWidgetExtensionProvider_];
  *&v2[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_configurationManager] = v13;
  v14 = type metadata accessor for ControlsGalleryManager();
  v24.receiver = v2;
  v24.super_class = v14;
  v15 = objc_msgSendSuper2(&v24, sel_init);
  v16 = OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_configurationManager;
  v17 = *&v15[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_configurationManager];
  v18 = v15;
  [v17 setAllowsFakeWidgets_];
  [*&v15[v16] setConfigurationManagerDelegate_];
  v19 = [objc_allocWithZone(MEMORY[0x277D66288]) initWithDelegate_];

  type metadata accessor for ControlsGalleryManager.IconViewProvider();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v20 + 24) = v19;
  *&v18[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_iconViewProvider] = v20;

  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  return v18;
}

uint64_t sub_2442AB7F4(unint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v21 = v2;
    v22 = v1 & 0xC000000000000001;
    v18 = v1 + 32;
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    v20 = v1;
    while (1)
    {
      if (v22)
      {
        v5 = MEMORY[0x245D5DFA0](v4, v1);
        v6 = __OFADD__(v4, 1);
        v7 = v4 + 1;
        if (v6)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v4 >= *(v19 + 16))
        {
          goto LABEL_35;
        }

        v5 = *(v18 + 8 * v4);
        v6 = __OFADD__(v4, 1);
        v7 = v4 + 1;
        if (v6)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v2 = sub_2442B4BF8();
          goto LABEL_3;
        }
      }

      v23 = v5;
      v8 = [v5 widgetDescriptors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
      v9 = sub_2442B4958();

      if (v9 >> 62)
      {
        v10 = sub_2442B4BF8();
        v24 = v7;
        if (!v10)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v7;
        if (!v10)
        {
          goto LABEL_28;
        }
      }

      if (v10 < 1)
      {
        goto LABEL_34;
      }

      for (i = 0; i != v10; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245D5DFA0](i, v9);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v12 = sub_2442ADDAC(v13);
          MEMORY[0x245D5DD70]();
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2442B4968();
          }

          sub_2442B4988();
        }

        else
        {
          v14 = swift_unknownObjectRetain();
          MEMORY[0x245D5DD70](v14);
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2442B4968();
          }

          sub_2442B4988();
        }

        swift_unknownObjectRelease();
      }

      v1 = v20;
      v3 = MEMORY[0x277D84F90];
LABEL_28:

      v15 = sub_2442B4948();

      [v23 setWidgetDescriptors_];

      v16 = v23;
      MEMORY[0x245D5DD70]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2442B4968();
      }

      sub_2442B4988();

      v4 = v24;
      if (v24 == v21)
      {
        return v25;
      }
    }
  }

  return v3;
}

uint64_t sub_2442ABB5C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_configurationManager) applicationControlCollections];
  sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
  v2 = sub_2442B4958();

  v3 = sub_2442AB7F4(v2);

  sub_2442AD8C0(v130);
  v101 = v3;
  v4 = sub_2442AEADC(v130, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB88, &qword_2442B79E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2442B7920;
  *(v5 + 32) = v4;
  v110 = v0;
  *(v0 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_galleryApplicationControlCollections) = v5;
  v96 = v4;

  v6 = sub_24429C2A4();
  v129 = v6;
  v7 = *(v6 + 2);
  if (!v7)
  {
LABEL_15:
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
LABEL_18:
    v133 = v139;
    v134 = v140;
    v135 = v141;
    v136 = v142;
    *&v126[0] = MEMORY[0x277D84F90];
    *&v120 = MEMORY[0x277D84F90];
    v24 = v101;
    v131 = v137;
    v132 = v138;
    if (v101 >> 62)
    {
      goto LABEL_111;
    }

    v34 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v36 = 0;
      v99 = v34;
      v100 = v24 & 0xC000000000000001;
      v97 = v24 + 32;
      v98 = v24 & 0xFFFFFFFFFFFFFF8;
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v100)
        {
          v38 = MEMORY[0x245D5DFA0](v36);
          v39 = __OFADD__(v36, 1);
          v40 = v36 + 1;
          if (v39)
          {
            goto LABEL_109;
          }
        }

        else
        {
          if (v36 >= *(v98 + 16))
          {
            goto LABEL_110;
          }

          v38 = *(v97 + 8 * v36);
          v39 = __OFADD__(v36, 1);
          v40 = v36 + 1;
          if (v39)
          {
            goto LABEL_109;
          }
        }

        v103 = v38;
        v104 = v40;
        *&v118[0] = v35;
        v41 = [v38 widgetDescriptors];
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
        v42 = sub_2442B4958();

        if (v42 >> 62)
        {
          v43 = sub_2442B4BF8();
          if (v43)
          {
LABEL_30:
            v44 = 0;
            v111 = v129;
            v112 = v42 & 0xC000000000000001;
            v105 = v42 + 32;
            v106 = v42 & 0xFFFFFFFFFFFFFF8;
            v107 = v35;
            v108 = v43;
            v109 = v42;
            do
            {
              if (v112)
              {
                v45 = MEMORY[0x245D5DFA0](v44, v42);
                v39 = __OFADD__(v44, 1);
                v46 = v44 + 1;
                if (v39)
                {
                  goto LABEL_102;
                }
              }

              else
              {
                if (v44 >= *(v106 + 16))
                {
                  goto LABEL_103;
                }

                v45 = *(v105 + 8 * v44);
                swift_unknownObjectRetain();
                v39 = __OFADD__(v44, 1);
                v46 = v44 + 1;
                if (v39)
                {
                  goto LABEL_102;
                }
              }

              v113 = v46;
              v117 = sub_2442AE228(v45, v37, v111);
              if (v117)
              {
                v114 = v37 & 0xFFFFFFFFFFFFFF8;
                if (v37 >> 62)
                {
                  v116 = sub_2442B4BF8();
                }

                else
                {
                  v116 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v47 = 0;
                v115 = v37 & 0xC000000000000001;
                while (v116 != v47)
                {
                  if (v115)
                  {
                    v49 = MEMORY[0x245D5DFA0](v47, v37);
                  }

                  else
                  {
                    if (v47 >= *(v114 + 16))
                    {
                      goto LABEL_101;
                    }

                    v49 = *(v37 + 8 * v47 + 32);
                  }

                  v50 = v49;
                  if (__OFADD__(v47, 1))
                  {
                    __break(1u);
LABEL_101:
                    __break(1u);
LABEL_102:
                    __break(1u);
LABEL_103:
                    __break(1u);
LABEL_104:
                    __break(1u);
LABEL_105:
                    __break(1u);
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
                    v92 = v24;
                    v93 = sub_2442B4BF8();
                    v24 = v92;
                    v34 = v93;
                    goto LABEL_20;
                  }

                  v51 = v45;
                  v52 = v37;
                  v53 = [v49 uniqueIdentifier];
                  v54 = sub_2442B48A8();
                  v56 = v55;

                  v57 = [v117 uniqueIdentifier];
                  v58 = sub_2442B48A8();
                  v60 = v59;

                  if (v54 == v58 && v56 == v60)
                  {
                    swift_unknownObjectRelease();

                    v35 = MEMORY[0x277D84F90];
                    v37 = v52;
LABEL_31:
                    v43 = v108;
                    v42 = v109;
                    goto LABEL_32;
                  }

                  v48 = sub_2442B4C68();

                  ++v47;
                  v37 = v52;
                  v45 = v51;
                  if (v48)
                  {
                    swift_unknownObjectRelease();

                    v35 = MEMORY[0x277D84F90];
                    goto LABEL_31;
                  }
                }

                v62 = v117;
                MEMORY[0x245D5DD70]();
                v35 = MEMORY[0x277D84F90];
                v43 = v108;
                if (*((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2442B4968();
                }

                sub_2442B4988();

                swift_unknownObjectRelease();
                v37 = *&v126[0];
                v42 = v109;
              }

              else
              {
                v61 = swift_unknownObjectRetain();
                MEMORY[0x245D5DD70](v61);
                if (*((*&v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v118[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2442B4968();
                }

                sub_2442B4988();
                swift_unknownObjectRelease();
                v107 = *&v118[0];
              }

LABEL_32:
              v44 = v113;
            }

            while (v113 != v43);
            goto LABEL_63;
          }
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v43)
          {
            goto LABEL_30;
          }
        }

        v107 = v35;
LABEL_63:

        v63 = sub_2442B4948();

        v64 = v103;
        [v103 setWidgetDescriptors_];

        v65 = v64;
        MEMORY[0x245D5DD70]();
        if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2442B4968();
        }

        sub_2442B4988();

        v36 = v104;
        v24 = v101;
        if (v104 == v99)
        {
          goto LABEL_68;
        }
      }
    }

    v37 = MEMORY[0x277D84F90];
LABEL_68:

    v66 = v129;
    v67 = sub_2442B2DC0(v37, v129);

    sub_2442ACBF4(v68);
    sub_2442ACE58(&v120, &v131);
    v70 = v69;
    MEMORY[0x245D5DD70]();
    if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2442B4968();
    }

    sub_2442B4988();
    sub_2442ACDE0(&v120);
    *&v118[0] = v35;
    v116 = v120;
    if (v120 >> 62)
    {
      v71 = sub_2442B4BF8();
      if (v71)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v71 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v71)
      {
LABEL_72:
        v113 = v67;
        v114 = v70;
        v115 = v66;
        v72 = 0;
        v73 = v116;
        v74 = v116 & 0xC000000000000001;
        v75 = v116 & 0xFFFFFFFFFFFFFF8;
        v117 = v71;
        while (1)
        {
          if (v74)
          {
            v76 = MEMORY[0x245D5DFA0](v72, v73);
          }

          else
          {
            if (v72 >= *(v75 + 16))
            {
              goto LABEL_105;
            }

            v76 = *(v73 + 8 * v72 + 32);
          }

          v77 = v76;
          v78 = (v72 + 1);
          if (__OFADD__(v72, 1))
          {
            goto LABEL_104;
          }

          v79 = [v76 displayName];
          if (v79)
          {
            break;
          }

          v73 = v116;
LABEL_74:
          ++v72;
          if (v78 == v71)
          {
            v86 = 0;
            v87 = *&v118[0];
            *&v118[0] = MEMORY[0x277D84F90];
            while (1)
            {
              if (v74)
              {
                v88 = MEMORY[0x245D5DFA0](v86, v73);
              }

              else
              {
                if (v86 >= *(v75 + 16))
                {
                  goto LABEL_107;
                }

                v88 = *(v73 + 8 * v86 + 32);
              }

              v89 = v88;
              v90 = (v86 + 1);
              if (__OFADD__(v86, 1))
              {
                goto LABEL_106;
              }

              v128 = v88;
              MEMORY[0x28223BE20](v88);
              v95[2] = &v128;
              if (sub_2442AC9DC(sub_2442B4618, v95, v87))
              {
              }

              else
              {
                sub_2442B4B88();
                sub_2442B4BB8();
                v73 = v116;
                sub_2442B4BC8();
                sub_2442B4B98();
              }

              ++v86;
              if (v90 == v117)
              {
                v91 = *&v118[0];
                v70 = v114;
                goto LABEL_114;
              }
            }
          }
        }

        v80 = v79;
        v81 = sub_2442B48A8();
        v83 = v82;

        v84 = HIBYTE(v83) & 0xF;
        if ((v83 & 0x2000000000000000) == 0)
        {
          v84 = v81 & 0xFFFFFFFFFFFFLL;
        }

        if (v84)
        {
          sub_2442B4918();

          v85 = sub_2442B4838();

          if ((v85 & 1) == 0)
          {
            sub_2442B4B88();
            sub_2442B4BB8();
            sub_2442B4BC8();
            sub_2442B4B98();
LABEL_87:
            v73 = v116;
            v71 = v117;
            goto LABEL_74;
          }
        }

        else
        {
        }

        goto LABEL_87;
      }
    }

    v87 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
LABEL_114:

    *&v120 = v91;
    sub_2442ACBF4(v87);
    v94 = sub_2442B3440(v120);
    sub_2442A0094(v130);
    sub_2442B45B8(&v137, &qword_27EDDDBC8, &unk_2442B7A50);

    *(v110 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_applicationControlCollections) = v94;
  }

  v8 = v6;

  v9 = 0;
  v117 = (v7 - 1);
  v10 = 32;
  while (1)
  {
    v11 = *&v8[v10 + 16];
    v131 = *&v8[v10];
    v132 = v11;
    v12 = *&v8[v10 + 32];
    v13 = *&v8[v10 + 48];
    v14 = *&v8[v10 + 64];
    v136 = *&v8[v10 + 80];
    v134 = v13;
    v135 = v14;
    v133 = v12;
    v15 = v131;
    sub_2442A005C(&v131, &v137);
    v16 = qword_27EDDCF30;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_27EDDE7F8;
    v18 = sub_2442B4878();
    v19 = [v17 localizedStringForKey:v18 value:0 table:{0, v96}];

    v20 = sub_2442B48A8();
    v22 = v21;

    if (!*(&v15 + 1))
    {
      sub_2442A0094(&v131);

      goto LABEL_11;
    }

    if (v15 == __PAIR128__(v22, v20))
    {
      break;
    }

    v23 = sub_2442B4C68();
    sub_2442A0094(&v131);

    if (v23)
    {
      goto LABEL_16;
    }

LABEL_11:
    if (v117 == v9)
    {

      goto LABEL_15;
    }

    ++v9;
    v10 += 88;
    if (v9 >= *(v8 + 2))
    {
      goto LABEL_108;
    }
  }

  sub_2442A0094(&v131);

LABEL_16:

  if (v9 < *(v8 + 2))
  {
    v26 = *&v8[v10 + 16];
    v118[0] = *&v8[v10];
    v118[1] = v26;
    v27 = *&v8[v10 + 32];
    v28 = *&v8[v10 + 48];
    v29 = *&v8[v10 + 64];
    v119 = *&v8[v10 + 80];
    v118[3] = v28;
    v118[4] = v29;
    v118[2] = v27;
    v30 = *&v8[v10 + 16];
    v120 = *&v8[v10];
    v121 = v30;
    v31 = *&v8[v10 + 32];
    v32 = *&v8[v10 + 48];
    v33 = *&v8[v10 + 64];
    v125 = *&v8[v10 + 80];
    v123 = v32;
    v124 = v33;
    v122 = v31;
    sub_2442A005C(v118, &v137);
    sub_2442AC884(v9, &v137);
    v126[2] = v139;
    v126[3] = v140;
    v126[4] = v141;
    v127 = v142;
    v126[0] = v137;
    v126[1] = v138;
    sub_2442A0094(v126);
    v139 = v122;
    v140 = v123;
    v141 = v124;
    v142 = v125;
    v137 = v120;
    v138 = v121;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_2442AC7F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2442B2138(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2442AC884@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2442B219C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 88 * a1;
    v10 = *(v9 + 80);
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v9 + 96);
    *(a2 + 80) = *(v9 + 112);
    v11 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v11;
    result = memmove((v9 + 32), (v9 + 120), 88 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2442AC930(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2442AC9DC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245D5DFA0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2442B4BF8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2442ACB04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2442B4BF8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2442B4BF8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2442B1168(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2442B21B0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2442ACBF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2442B4BF8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2442B4BF8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2442B1168(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2442B2360(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_2442ACCE4(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 displayName];
  if (v3)
  {
    v4 = v3;
    sub_2442B48A8();
  }

  v5 = [v2 displayName];
  if (v5)
  {
    v6 = v5;
    sub_2442B48A8();
  }

  sub_2442A3370();
  v7 = sub_2442B4AD8();

  return v7 == -1;
}

uint64_t sub_2442ACDE0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2442B2138(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_2442B1208(v5);
  *a1 = v2;
  return result;
}

void sub_2442ACE58(unint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v53 = a2[1];
  v5 = a2[5];
  v51 = v4;
  v52 = v5;
  v6 = sub_2442B4868();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDBA0, qword_2442B7A08);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = v49 - v11;
  v79 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v85[0] = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0xD000000000000029;
  v90 = 0x80000002442B8750;
  v91 = 0xD000000000000010;
  v92 = 0x80000002442B8780;
  v93 = 0xD000000000000020;
  v49[1] = a1;
  v12 = *a1;
  v13 = *a1 >> 62;
  v94 = 0x80000002442B87A0;
  v14 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v13)
  {
    goto LABEL_68;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v63 = v2;
  if (!v15)
  {
LABEL_69:
    v61 = 0;
    v64 = MEMORY[0x277D84F90];
    v17 = -1;
    goto LABEL_70;
  }

LABEL_3:
  v16 = 0;
  v61 = 0;
  v70 = OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_extensionProvider;
  v74 = v12 & 0xC000000000000001;
  v50 = -1;
  v64 = MEMORY[0x277D84F90];
  v66 = v14;
  v67 = v12;
  do
  {
    v17 = v16;
    while (1)
    {
      if (v74)
      {
        v18 = MEMORY[0x245D5DFA0](v17, v12);
      }

      else
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_64;
        }

        v18 = *(v12 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v15 = sub_2442B4BF8();
        v63 = v2;
        if (!v15)
        {
          goto LABEL_69;
        }

        goto LABEL_3;
      }

      v2 = [v18 widgetDescriptors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
      v21 = sub_2442B4958();

      v22 = v21 >> 62;
      v76 = v19;
      if (!(v21 >> 62))
      {
        break;
      }

      v75 = sub_2442B4BF8();
      if (v75 < 1)
      {
        v2 = 0;
        goto LABEL_21;
      }

LABEL_11:
      if ((v21 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245D5DFA0](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24 && (v25 = [v24 containerBundleIdentifier]) != 0)
      {
        v26 = v25;
        sub_2442B48A8();

        LOBYTE(v26) = sub_2442B48F8();
        v14 = v66;
        v12 = v67;

        swift_unknownObjectRelease();
        if (v26)
        {
          v2 = 1;
          LODWORD(v23) = 1;
          if (!v22)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v2 = 0;
      LODWORD(v23) = 0;
      if (!v22)
      {
        goto LABEL_24;
      }

LABEL_21:
      v27 = sub_2442B4BF8();
      LODWORD(v23) = v2;
      if (v27)
      {
        goto LABEL_31;
      }

LABEL_25:

      ++v17;
      if (v20 == v15)
      {
        v17 = v50;
        goto LABEL_70;
      }
    }

    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v23;
    if (v23)
    {
      goto LABEL_11;
    }

    v75 = 0;
LABEL_24:
    v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_25;
    }

LABEL_31:
    v62 = v23;
    v14 = 0;
    v72 = v17 + 1;
    v73 = v21 & 0xC000000000000001;
    v68 = v21 & 0xFFFFFFFFFFFFFF8;
    v69 = v15;
    while (1)
    {
LABEL_32:
      if (v73)
      {
        MEMORY[0x245D5DFA0](v14, v21);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v14 >= *(v68 + 16))
        {
          goto LABEL_67;
        }

        swift_unknownObjectRetain();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_65;
        }
      }

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (!v28)
      {
        swift_unknownObjectRelease();
        goto LABEL_58;
      }

      v29 = v28;
      v2 = *(v71 + v70);
      swift_unknownObjectRetain();
      v30 = CHSWidgetExtensionProvider.controlDescriptor(for:)(v29);
      swift_unknownObjectRelease();
      if (!v30)
      {
        goto LABEL_48;
      }

      v31 = [v30 actionMetadata];
      if (!v31)
      {

LABEL_48:
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      v2 = v31;
      if (([v31 isCameraCapture] & 1) == 0)
      {
        break;
      }

      v65 = v2;
      v32 = swift_unknownObjectRetain();
      if (v62)
      {
        MEMORY[0x245D5DD70](v32);
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2442B4968();
        }

        sub_2442B4988();
        v64 = v79;
      }

      else
      {
        MEMORY[0x245D5DD70](v32);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49[0] = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2442B4968();
        }

        sub_2442B4988();
      }

      swift_unknownObjectRetain_n();
      v2 = sub_2442B30B8(v29, v85);

      swift_unknownObjectRelease_n();
      if (v75 != 1)
      {
        goto LABEL_57;
      }

      v15 = v69;
      v16 = v72;
      if ((v2 & 1) == 0)
      {
        goto LABEL_59;
      }

      v61 = 1;
      v50 = v17;
      v14 = v12;
      if (v12 == v27)
      {
        v50 = v17;
        goto LABEL_61;
      }
    }

    swift_unknownObjectRelease();

LABEL_57:
    v15 = v69;
LABEL_58:
    v16 = v72;
LABEL_59:
    ++v14;
    if (v12 != v27)
    {
      goto LABEL_32;
    }

    v17 = v50;
LABEL_61:

    v14 = v66;
    v12 = v67;
  }

  while (v16 != v15);
LABEL_70:
  v33 = v63;
  v34 = *(v63 + 48);
  if (v34)
  {
    v35 = *(v63 + 16);
    v81[0] = *v63;
    v81[1] = v35;
    v81[2] = *(v63 + 32);
    v82 = v34;
    v83 = *(v63 + 56);
    v84 = *(v63 + 72);
    sub_2442B4550(v63, &v77, &qword_27EDDDBC8, &unk_2442B7A50);
    sub_2442B28CC(v64, v81);
    sub_2442B45B8(v33, &qword_27EDDDBC8, &unk_2442B7A50);
  }

  swift_getKeyPath();
  v36 = v54;
  sub_2442B4858();
  v37 = v56;
  v38 = v57;
  (*(v56 + 16))(v55, v36, v57);
  v39 = v58;
  sub_2442B46E8();
  (*(v37 + 8))(v36, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDBA8, &qword_2442B7A48);
  sub_2442B4680(&qword_27EDDDBB0, &qword_27EDDDBA8, &qword_2442B7A48, MEMORY[0x277D83960]);
  sub_2442B4680(&qword_27EDDDBB8, &qword_27EDDDBA8, &qword_2442B7A48, MEMORY[0x277D83980]);
  sub_2442B4680(&qword_27EDDDBC0, &qword_27EDDDBA0, qword_2442B7A08, MEMORY[0x277CC8A08]);
  v40 = v60;
  sub_2442B4848();
  (*(v59 + 8))(v39, v40);

  sub_2442ACB04(v41);

  sub_2442ACB04(v42);
  if (v61)
  {
  }

  if (!*(v63 + 48))
  {
    __break(1u);
    goto LABEL_79;
  }

  if (!v52)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v53)
  {
    v43 = *(v63 + 32);
    v44 = v52;
    sub_2442B44F0(v85);

    v45 = objc_allocWithZone(MEMORY[0x277D66130]);
    v46 = sub_2442B4878();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
    v47 = sub_2442B4948();

    v48 = sub_2442B4878();
    [v45 initWithCustomImage:v43 iconBackgroundColor:v44 displayName:v46 galleryItems:v47 vendorName:v48];

    return;
  }

LABEL_80:
  __break(1u);
}

void sub_2442AD858(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sbh_appName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2442B48A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2442AD8C0(uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR___CCUISControlsGalleryViewController_configuration);
  v6 = [v5 suggestedControls];
  if (!v6)
  {

LABEL_19:
    sub_24429F7C8(&v33);
    v19 = *&v36[24];
    v20 = v37;
    v21 = *&v36[8];
    v11 = *v36;
    v22 = v34;
    v23 = v35;
    v24 = v33;
LABEL_24:
    *a2 = v24;
    *(a2 + 16) = v22;
    *(a2 + 32) = v23;
    *(a2 + 48) = v11;
    *(a2 + 56) = v21;
    *(a2 + 72) = v19;
    *(a2 + 80) = v20;
    return;
  }

  v7 = v6;
  type metadata accessor for CCUISConfiguredControl();
  v8 = sub_2442B4958();

  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_22:

    v11 = MEMORY[0x277D84F90];
LABEL_23:
    v25 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v26 = [v25 UUIDString];

    v19 = sub_2442B48A8();
    v20 = v27;

    v24 = xmmword_2442B6F30;
    v22 = 0uLL;
    v23 = 0uLL;
    v21 = 0uLL;
    goto LABEL_24;
  }

  while (1)
  {
    v28 = v5;
    v29 = v4;
    v30 = a2;
    v32 = MEMORY[0x277D84F90];
    sub_2442B1028(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v10 = 0;
    v11 = v32;
    v4 = (v9 - 1);
    a2 = 80;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x245D5DFA0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v31 = v12;
      sub_2442ADB74(&v31, &v33);

      v32 = v11;
      v5 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v5 >= v14 >> 1)
      {
        sub_2442B1028((v14 > 1), v5 + 1, 1);
        v11 = v32;
      }

      *(v11 + 16) = v5 + 1;
      v15 = (v11 + 80 * v5);
      v15[2] = v33;
      v16 = v34;
      v17 = v35;
      v18 = *&v36[16];
      v15[5] = *v36;
      v15[6] = v18;
      v15[3] = v16;
      v15[4] = v17;
      if (v4 == v10)
      {

        v4 = v29;
        a2 = v30;
        v5 = v28;
        goto LABEL_23;
      }

      ++v10;
    }

    while (!__OFADD__(v10, 1));
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v9 = sub_2442B4BF8();
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_2442ADB74(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 size] - 1;
  if (v4 > 2)
  {
    v5 = [v3 identity];
  }

  else
  {
    v5 = [v3 identity];
  }

  v6 = v5;
  v7 = [v6 extensionIdentity];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDDB90, &unk_2442B79F0);
  v8 = sub_2442B4768();
  v10 = v9;
  swift_endAccess();

  v11 = [v3 identity];
  v12 = [v11 extensionIdentity];

  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD858, &qword_2442B78E8);
  v15 = 0;
  v16 = 0;
  if (!(*(*(v14 - 8) + 48))(&v12[v13], 1, v14))
  {
    v15 = sub_2442B4768();
    v16 = v17;
  }

  swift_endAccess();

  v18 = [v3 identity];
  v19 = [v18 kind];

  v20 = sub_2442B48A8();
  v22 = v21;

  *a2 = 0;
  *(a2 + 8) = v23;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v20;
  *(a2 + 72) = v22;
}

id sub_2442ADDAC(void *a1)
{
  v2 = [a1 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDDB90, &unk_2442B79F0);
  sub_2442B4768();
  swift_endAccess();
  v3 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD858, &qword_2442B78E8);
  v5 = 0;
  v6 = 0;
  if (!(*(*(v4 - 8) + 48))(&v2[v3], 1, v4))
  {
    v5 = sub_2442B4768();
    v6 = v7;
  }

  swift_endAccess();
  v8 = [a1 kind];
  if (!v8)
  {
    sub_2442B48A8();
    v8 = sub_2442B4878();
  }

  v9 = [a1 controlType];

  v10 = sub_2442B4878();

  if (v6)
  {
    v11 = sub_2442B4878();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(CCUIControlIconElement) initWithKind:v8 controlType:v9 extensionBundleIdentifier:v10 containerBundleIdentifier:v11];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR___CCUISControlsGalleryViewController_configuration);
    v16 = [a1 preferredControlSize];
    v17 = CCUISControlsGalleryConfiguration.allowedControlSizes.getter();
    if (v17)
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v19 = (v17 + 32);
        do
        {
          if (!v18)
          {
            break;
          }

          v20 = *v19++;
          --v18;
        }

        while (v20 != v16);
      }
    }

    v21 = [objc_opt_self() sharedApplication];
    v22 = [v21 preferredContentSizeCategory];

    sub_2442B4A68();
    [v12 setPreferredGallerySizeClass_];
  }

  sub_2442AE130(a1, v5, v6);
  v24 = v23;

  if (v24)
  {
    v25 = sub_2442B4878();
  }

  else
  {
    v25 = 0;
  }

  [v12 setDisplayName_];

  return v12;
}

uint64_t sub_2442AE130(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 displayName];
  if (v5)
  {
    v6 = v5;
    a2 = sub_2442B48A8();
  }

  else if (a3)
  {
    sub_2442A34F8(0, &qword_27EDDD500, 0x277CC1E90);

    v7 = sub_2442A2EC0(a2, a3, 1);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 localizedName];
      a2 = sub_2442B48A8();
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

id sub_2442AE228(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = (a3 + 32); ; i = (i + 88))
  {
    v7 = i[3];
    v64 = i[2];
    v65 = v7;
    v66 = i[4];
    v67 = *(i + 10);
    v8 = i[1];
    v62 = *i;
    v63 = v8;
    sub_2442A005C(&v62, v59);
    sub_2442AE9C0(a1, &v62, &v60);
    if (v61 != 1)
    {
      break;
    }

    sub_2442A0094(&v62);
    if (!--v3)
    {
      return 0;
    }
  }

  v10 = sub_2442AEE80(a1, *(&v60 + 1));
  sub_2442B45B8(&v60, &qword_27EDDDB80, &qword_2442B79E0);
  v58 = v10;
  if (a2 >> 62)
  {
LABEL_40:
    v11 = sub_2442B4BF8();
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = *(&v66 + 1);
  v13 = v67;
  v57 = v66;
  v55 = v64;
  v56 = *(&v63 + 1);
  if (v11)
  {
    v14 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x245D5DFA0](v14, a2);
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v15 = *(a2 + 8 * v14 + 32);
      }

      v9 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v17 = v12;
      v18 = v13;
      v19 = [v15 uniqueIdentifier];
      v20 = sub_2442B48A8();
      v22 = v21;

      v13 = v18;
      if (v20 == v17 && v22 == v18)
      {
        break;
      }

      v12 = v17;
      v24 = sub_2442B4C68();

      if (v24)
      {
        goto LABEL_29;
      }

      ++v14;
      if (v16 == v11)
      {
        goto LABEL_22;
      }
    }

LABEL_29:
    swift_unknownObjectRetain();
    v42 = [v9 widgetDescriptors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
    v43 = sub_2442B4958();

    v59[0] = v43;
    MEMORY[0x245D5DD70]();
    if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2442B4968();
    }

    sub_2442B4988();
    v44 = sub_2442B4948();

    [v9 setWidgetDescriptors_];
    swift_unknownObjectRelease();
    sub_2442A0094(&v62);
  }

  else
  {
LABEL_22:
    if (v57)
    {
      v25 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v26 = [v25 UUIDString];

      if (!v26)
      {
        sub_2442B48A8();
        v26 = sub_2442B4878();
      }

      v27 = objc_allocWithZone(MEMORY[0x277D663F8]);
      v28 = sub_2442B4878();
      v29 = [v27 initWithLeafIdentifier:v26 applicationBundleID:v28];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB88, &qword_2442B79E8);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2442B7920;
      *(v30 + 32) = v58;
      v31 = objc_allocWithZone(MEMORY[0x277D66130]);
      v32 = v29;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
      v33 = sub_2442B4948();

      v34 = sub_2442B4878();
      v35 = sub_2442B4878();
      v9 = [v31 initWithIcon:v32 galleryItems:v33 vendorName:v34 uniqueIdentifier:v35];
      swift_unknownObjectRelease();
    }

    else if (v56)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB88, &qword_2442B79E8);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2442B7920;
      *(v36 + 32) = v58;
      v37 = objc_allocWithZone(MEMORY[0x277D66130]);
      swift_unknownObjectRetain();

      v38 = sub_2442B4878();

      v39 = sub_2442B4878();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
      v40 = sub_2442B4948();

      v41 = sub_2442B4878();
      v35 = sub_2442B4878();
      v9 = [v37 initWithCustomTypeIdentifier:v38 displayName:v39 galleryItems:v40 vendorName:v41 uniqueIdentifier:v35];
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(&v55 + 1))
      {
        v45 = v55;
        v46 = *(&v55 + 1);
      }

      else
      {
        v47 = objc_opt_self();
        v45 = v55;
        v46 = [v47 systemPinkColor];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB88, &qword_2442B79E8);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2442B7920;
      *(v48 + 32) = v58;
      v49 = objc_allocWithZone(MEMORY[0x277D66130]);
      swift_unknownObjectRetain();

      v50 = *(&v55 + 1);
      v51 = sub_2442B4878();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
      v52 = sub_2442B4948();

      v53 = sub_2442B4878();
      v35 = sub_2442B4878();
      v9 = [v49 initWithCustomImage:v45 iconBackgroundColor:v46 displayName:v51 galleryItems:v52 vendorName:v53 uniqueIdentifier:v35];
      swift_unknownObjectRelease();
    }

    sub_2442A0094(&v62);
  }

  return v9;
}

uint64_t sub_2442AE9C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a2 + 48);
  v5 = *(v4 + 16);
  v6 = xmmword_2442B7930;
  v7 = 0uLL;
  if (v5)
  {
    v8 = result;
    v9 = (v4 + 32);
    while (1)
    {
      v18[0] = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v18[3] = v9[3];
      v18[4] = v12;
      v18[1] = v10;
      v18[2] = v11;
      memmove(&__dst, v9, 0x50uLL);
      v17[2] = v21;
      v17[3] = v22;
      v17[4] = v23;
      v17[0] = __dst;
      v17[1] = v20;
      swift_getObjectType();
      sub_2442A0024(v18, v16);
      result = sub_2442B2624(v8, v17);
      if (result)
      {
        break;
      }

      result = sub_2442B44F0(&__dst);
      v9 += 5;
      if (!--v5)
      {
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v6 = xmmword_2442B7930;
        v7 = 0uLL;
        goto LABEL_8;
      }
    }

    v7 = __dst;
    v6 = v20;
    v13 = v21;
    v14 = v22;
    v15 = v23;
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

LABEL_8:
  *a3 = v7;
  a3[1] = v6;
  a3[2] = v13;
  a3[3] = v14;
  a3[4] = v15;
  return result;
}

id sub_2442AEADC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v35 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_31;
  }

  do
  {
    v5 = 0;
    v28 = v2 & 0xC000000000000001;
    v24 = v2 + 32;
    v25 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v26 = v4;
    v27 = v2;
    while (1)
    {
      if (v28)
      {
        v7 = MEMORY[0x245D5DFA0](v5, v2);
      }

      else
      {
        if (v5 >= *(v25 + 16))
        {
          goto LABEL_29;
        }

        v7 = *(v24 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v10 = [v7 widgetDescriptors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
      v11 = sub_2442B4958();

      if (v11 >> 62)
      {
        v12 = sub_2442B4BF8();
        if (v12)
        {
          goto LABEL_12;
        }

LABEL_25:

        if (v5 == v4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_25;
        }

LABEL_12:
        v13 = v12 - 1;
        if (v12 < 1)
        {
          goto LABEL_28;
        }

        v14 = 0;
        if ((v11 & 0xC000000000000001) != 0)
        {
LABEL_14:
          v15 = MEMORY[0x245D5DFA0](v14, v11);
          goto LABEL_16;
        }

        while (1)
        {
          v15 = *(v11 + 8 * v14 + 32);
          swift_unknownObjectRetain();
LABEL_16:
          sub_2442AE9C0(v15, a1, &v29);
          v34[2] = v31;
          v34[3] = v32;
          v34[4] = v33;
          v34[0] = v29;
          v34[1] = v30;
          if (*(&v30 + 1) == 1)
          {
            swift_unknownObjectRelease();
            if (v13 == v14)
            {
              break;
            }

            goto LABEL_22;
          }

          sub_2442AEE80(v15, *(&v34[0] + 1));
          sub_2442B45B8(v34, &qword_27EDDDB80, &qword_2442B79E0);
          v16 = swift_unknownObjectRetain();
          MEMORY[0x245D5DD70](v16);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2442B4968();
          }

          sub_2442B4988();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v6 = v35;
          if (v13 == v14)
          {
            break;
          }

LABEL_22:
          ++v14;
          if ((v11 & 0xC000000000000001) != 0)
          {
            goto LABEL_14;
          }
        }

        v4 = v26;
        v2 = v27;
        if (v5 == v26)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v4 = sub_2442B4BF8();
  }

  while (v4);
LABEL_31:
  v6 = MEMORY[0x277D84F90];
LABEL_32:
  sub_2442B28CC(v6, a1);

  v17 = [objc_opt_self() systemPinkColor];
  v18 = objc_allocWithZone(MEMORY[0x277D66130]);
  v19 = sub_2442B4878();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
  v20 = sub_2442B4948();

  v21 = sub_2442B4878();
  v22 = [v18 initWithCustomImage:0 iconBackgroundColor:v17 displayName:v19 galleryItems:v20 vendorName:v21];

  return v22;
}

uint64_t sub_2442AEE80(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_moduleUniqueIdentifiers;
    if (*(v2 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_moduleUniqueIdentifiers))
    {
      v8 = *(v2 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_moduleUniqueIdentifiers);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    swift_bridgeObjectRetain_n();
    v59[5] = a1;
    swift_unknownObjectRetain();
    v9 = [v6 uniqueIdentifier];
    v10 = sub_2442B48A8();
    v12 = v11;

    v60[0] = v10;
    v60[1] = v12;
    MEMORY[0x28223BE20](v13);
    v59[2] = v60;
    LOBYTE(v9) = sub_2442AC930(sub_2442B4498, v59, v8);

    if (v9)
    {
      v14 = [v6 copyWithUniqueIdentifier];
    }

    else
    {
      [v6 copy];
      sub_2442B4AF8();
      swift_unknownObjectRelease();
      type metadata accessor for CCUIModuleIconElement(0);
      if (swift_dynamicCast())
      {
        v14 = v59[6];
      }

      else
      {
        swift_unknownObjectRetain();
        v14 = v6;
      }
    }

    v16 = v14;
    v25 = [v16 uniqueIdentifier];
    v26 = sub_2442B48A8();
    v28 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2442A8948(0, *(v8 + 2) + 1, 1, v8);
    }

    v30 = *(v8 + 2);
    v29 = *(v8 + 3);
    if (v30 >= v29 >> 1)
    {
      v8 = sub_2442A8948((v29 > 1), v30 + 1, 1, v8);
    }

    *(v8 + 2) = v30 + 1;
    v31 = &v8[16 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v28;
    *(v2 + v7) = v8;

    v32 = [v16 expandsGridSizeClassesForAccessibility];
    v33 = a2;
    if (v32)
    {
      v34 = [objc_opt_self() sharedApplication];
      v35 = [v34 preferredContentSizeCategory];

      sub_2442B4A68();
      v33 = CCUIAdjustGridSizeClassForAccessibility();
    }

    [v16 setPreferredGallerySizeClass_];

    v36 = [v6 moduleIdentifier];
    v37 = sub_2442B48A8();
    v39 = v38;

    if (v37 == 0xD000000000000026 && 0x80000002442B8580 == v39)
    {
    }

    else
    {
      v40 = sub_2442B4C68();

      if ((v40 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (a2 == 2)
    {
      if (qword_27EDDCF30 != -1)
      {
        swift_once();
      }

      v41 = qword_27EDDE7F8;
      v42 = sub_2442B4878();
      v43 = [v41 localizedStringForKey:v42 value:0 table:0];

      if (!v43)
      {
        sub_2442B48A8();
        v43 = sub_2442B4878();
      }

      [v16 setDisplayName_];
    }

LABEL_34:
    v44 = [v6 moduleIdentifier];
    v45 = sub_2442B48A8();
    v47 = v46;

    if (v45 == 0xD000000000000023 && 0x80000002442B8990 == v47)
    {
    }

    else
    {
      v48 = sub_2442B4C68();

      if ((v48 & 1) == 0)
      {
LABEL_49:
        swift_unknownObjectRelease();
        return v16;
      }
    }

    v49 = sub_2442B4878();
    v50 = MGGetBoolAnswer();

    if (v50)
    {
      if (qword_27EDDCF30 != -1)
      {
        swift_once();
      }

      v51 = qword_27EDDE7F8;
      v52 = sub_2442B4878();
      v53 = [v51 localizedStringForKey:v52 value:0 table:0];

      if (!v53)
      {
        sub_2442B48A8();
        v53 = sub_2442B4878();
      }

      [v16 setDisplayName_];
    }

    goto LABEL_49;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  swift_unknownObjectRetain();
  if (v15)
  {
    v16 = [v15 copyWithUniqueIdentifier];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = *(Strong + OBJC_IVAR___CCUISControlsGalleryViewController_configuration);
      v20 = sub_2442B49C8();
      v21 = CCUISControlsGalleryConfiguration.allowedControlSizes.getter();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22)
        {
          v23 = (v21 + 32);
          do
          {
            if (!v22)
            {
              break;
            }

            v24 = *v23++;
            --v22;
          }

          while (v24 != v20);
        }
      }

      v56 = [v18 traitCollection];
      v57 = [v56 preferredContentSizeCategory];

      sub_2442B4A68();
      [v16 setPreferredGallerySizeClass_];
    }

    else
    {
      v54 = [objc_opt_self() sharedApplication];
      v55 = [v54 preferredContentSizeCategory];

      sub_2442B4A68();
      [v16 setPreferredGallerySizeClass_];
    }

    goto LABEL_49;
  }

  return a1;
}

id sub_2442AF5C4()
{
  v1 = OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager____lazy_storage___moduleContentMetrics;
  v2 = *(v0 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager____lazy_storage___moduleContentMetrics);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager____lazy_storage___moduleContentMetrics);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for ControlsGalleryIconListLayout()) init];
    v6 = SBHIconGridSizeClassForCCUIGridSizeClass(0);
    v7 = sub_2442A5AB0(v6);

    sub_2442A5C6C();
    v9 = [objc_opt_self() defaultMetricsForGridGeometryInfo_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_2442AF750()
{
  sub_24429AE6C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2442AF7C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlsGalleryManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2442AF95C(void *a1)
{
  v3 = sub_2442B47D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2442B4808();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 icon];
  if (result)
  {
    v12 = result;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      if ([v14 activeDataSource])
      {
        v47 = v8;
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          v17 = v16;
          v46 = v1;
          swift_unknownObjectRetain();
          v18 = CHSWidgetExtensionProvider.controlDescriptor(for:)(v17);
          if (v18)
          {
            v19 = v18;
            v45 = v4;
            v20 = type metadata accessor for ControlContainerViewController();
            v21 = objc_allocWithZone(v20);
            *&v21[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController] = 0;
            v21[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_showsSquareCorners] = 0;
            v21[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_deferredLoading] = 1;
            v22 = &v21[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_iconImageInfo];
            *v22 = 0u;
            v22[1] = 0u;
            v50.receiver = v21;
            v50.super_class = v20;
            v23 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
            [v23 setOverrideUserInterfaceStyle_];
            result = [v23 view];
            if (result)
            {
              v24 = result;
              [result ccui_applySubduedGlass];

              v25 = v46;
              v44 = *&v46[OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_controlsLoadingQueue];
              v26 = swift_allocObject();
              v26[2] = v19;
              v26[3] = v17;
              v26[4] = v15;
              v26[5] = v25;
              v26[6] = v23;
              aBlock[4] = sub_2442B4388;
              aBlock[5] = v26;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_2442B46CC;
              aBlock[3] = &block_descriptor_2;
              v41 = _Block_copy(aBlock);
              v43 = v15;
              swift_unknownObjectRetain();
              v42 = v19;
              v27 = v25;
              v28 = v23;
              sub_2442B47E8();
              v48 = MEMORY[0x277D84F90];
              sub_2442B43B8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB00, &unk_2442B79C8);
              sub_2442B4680(&qword_27EDDDB08, &qword_27EDDDB00, &unk_2442B79C8, MEMORY[0x277D83970]);
              sub_2442B4B18();
              v29 = v41;
              MEMORY[0x245D5DE60](0, v10, v6, v41);
              _Block_release(v29);
              v30 = v43;

              swift_unknownObjectRelease_n();
              (*(v45 + 8))(v6, v3);
              (*(v47 + 8))(v10, v7);

              return v28;
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          swift_unknownObjectRelease_n();
          return 0;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          v33 = [Strong customItemsDelegate];
          if (v33)
          {
            v34 = v33;
            sub_2442A34F8(0, &qword_27EDDDAF0, 0x277D750C8);
            v35 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v36 = swift_allocObject();
            *(v36 + 16) = v35;
            *(v36 + 24) = v14;
            v37 = v15;
            v38 = sub_2442B4AC8();
            v39 = sub_2442AF5C4();
            v40 = [v34 controlsGalleryViewController:v32 customImageViewControllerForWidgetIcon:v14 withPrimaryAction:v38 contentMetrics:v39];

            [v40 setOverrideUserInterfaceStyle_];
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return v40;
          }
        }

        swift_unknownObjectRelease();
      }

      return 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2442AFF68(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v38 = a4;
  v39 = a5;
  v8 = sub_2442B47D8();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2442B4808();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 extensionIdentity];
  v14 = [a1 kind];
  if (!v14)
  {
    sub_2442B48A8();
    v14 = sub_2442B4878();
  }

  v15 = [a1 defaultIntentReference];
  v16 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v13 kind:v14 intentReference:v15];

  v17 = v16;
  sub_2442B48B8();
  v18 = [a2 uniqueIdentifier];
  sub_2442B48A8();

  v19 = objc_allocWithZone(MEMORY[0x277CFA230]);
  v20 = sub_2442B4878();

  v21 = sub_2442B4878();

  v22 = [v19 initWithControl:v17 contentType:1 hostIdentifier:v20 configurationIdentifier:v21];

  sub_2442A34F8(0, &qword_27EDDDB10, 0x277D85C78);
  v23 = sub_2442B4A18();
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = v22;
  v26 = v38;
  v25 = v39;
  v24[4] = a3;
  v24[5] = v26;
  v24[6] = v25;
  aBlock[4] = sub_2442B4468;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2442B46CC;
  aBlock[3] = &block_descriptor_45;
  v27 = _Block_copy(aBlock);
  v28 = a2;
  v29 = v22;
  v30 = a3;
  v31 = v26;
  v32 = v25;

  sub_2442B47E8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2442B43B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB00, &unk_2442B79C8);
  sub_2442B4680(&qword_27EDDDB08, &qword_27EDDDB00, &unk_2442B79C8, MEMORY[0x277D83970]);
  v33 = v37;
  v34 = v43;
  sub_2442B4B18();
  MEMORY[0x245D5DE60](0, v12, v33, v27);
  _Block_release(v27);

  (*(v42 + 8))(v33, v34);
  return (*(v40 + 8))(v12, v41);
}

void sub_2442B03B8(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v8 = [objc_opt_self() instanceOfType:objc_msgSend(a1 instanceIdentity:{sel_controlType), a2}];
  v9 = [objc_allocWithZone(MEMORY[0x277CFC970]) initWithControlInstance_];
  v10 = [a3 gridSizeClass];
  v11 = CCUIGridSizeClassForSBHIconGridSizeClass(v10, 1);

  [v9 setGridSizeClass_];
  v12 = sub_2442AF5C4();
  [v9 setContentMetrics_];

  [v9 setDelegate_];
  v13 = *&a5[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController];
  *&a5[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController] = v9;
  v14 = v9;

  v28 = v14;
  [a5 bs:v28 addChildViewController:?];
  v15 = [v28 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = [a5 view];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame_];
  v27 = [v28 view];

  if (!v27)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v27 setAutoresizingMask_];
}