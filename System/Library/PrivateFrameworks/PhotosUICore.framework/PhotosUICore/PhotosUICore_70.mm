uint64_t sub_1A4502C8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(*(a3 + 8) + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 176))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  else
  {
    if (v16 == *off_1E7720FF8 || v16 == *off_1E7720FF0)
    {
      (*(v12 + 96))(v15, v4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A450301C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A44FECB4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A45030C4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1A3C47918();
}

void sub_1A4503118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for PlaceholderUIItem(255, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

uint64_t sub_1A45033F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4503498(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedConformanceWitness();
  sub_1A3C50E18(&qword_1EB13CCF8, sub_1A3C64F68, off_1E7720FA0);
  return swift_getWitnessTable();
}

uint64_t sub_1A450354C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A45035F0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_1A3C50D58(319, &qword_1EB124B08, sub_1A3C413B4);
    if (v2 <= 0x3F)
    {
      sub_1A3C50D58(319, &qword_1EB1201F0, sub_1A3C3637C);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A45036E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1A4503890(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFE)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t get_witness_table_12PhotosUICore36LemonadeSectionedFeedSectionProviderRzSO5Model_10IdentifierRTz0A12UIFoundation0aH0AC_4ItemRPzlxAaBHD1_AA0ceG0HI1_6FooterQz7SwiftUI4ViewHA3_Tm(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void *LemonadePhotoLibraryContext.pickerConfiguration.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *LemonadePhotoLibraryContext.init(photoLibrary:pickerConfiguration:bookmarksManager:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1A3C49C9C(a1, a2, a3);

  return v5;
}

id *LemonadePhotoLibraryContext.deinit()
{

  return v0;
}

uint64_t LemonadePhotoLibraryContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A4503CE4(uint64_t a1)
{
  sub_1A524EC94();
  (*(**v1 + 136))(v3);
  return sub_1A524ECE4();
}

uint64_t _s12PhotosUICore27LemonadePhotoLibraryContextC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (a1 == a2)
  {
    v10 = 1;
  }

  else
  {
    sub_1A3C7B6A4(0, a2);
    if ((sub_1A524DBF4() & 1) == 0)
    {
      goto LABEL_14;
    }

    if ((sub_1A524DBF4() & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_1A5243204();
    if ((sub_1A52431E4() & 1) == 0)
    {
      goto LABEL_14;
    }

    v5 = a1[5];
    v6 = a2[5];
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_14;
      }

      type metadata accessor for PickerConfiguration(0, v4);
      v7 = v6;
      v8 = v5;
      v9 = sub_1A524DBF4();

      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v6)
    {
LABEL_14:
      v10 = 0;
      return v10 & 1;
    }

    v11 = a2[7];
    if (!a1[7])
    {
      v10 = v11 == 0;
      return v10 & 1;
    }

    if (!v11)
    {
      goto LABEL_14;
    }

    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager(0);
    sub_1A4503FA8(&qword_1EB13CD08, 255, type metadata accessor for LemonadeMemoriesCreationAvailabilityManager, &protocol conformance descriptor for LemonadeMemoriesCreationAvailabilityManager);

    v10 = sub_1A524C594();
  }

  return v10 & 1;
}

uint64_t sub_1A4503FA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A450401C()
{
  result = sub_1A524C634();
  qword_1EB15A0F8 = result;
  return result;
}

uint64_t *sub_1A4504054()
{
  if (qword_1EB15A0F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB15A0F8;
}

uint64_t sub_1A45040C8()
{
  result = sub_1A524C634();
  qword_1EB1C58E8 = result;
  return result;
}

id sub_1A4504124(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1A4504184(uint64_t a1)
{
  v2 = sub_1A5244584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 >= 5)
  {
    v12 = v4;
    v8 = v4;
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    if (swift_dynamicCast())
    {
      v9 = (*(v3 + 88))(v6, v2);
      if (v9 == *MEMORY[0x1E69C0F08] || v9 == *MEMORY[0x1E69C0F18] || v9 == *MEMORY[0x1E69C0F28] || v9 == *MEMORY[0x1E69C0F20])
      {
        (*(v3 + 8))(v6, v2);
LABEL_9:

        LOBYTE(v7) = 0;
        return v7 & 1;
      }

      if (v9 == *MEMORY[0x1E69C0EF8])
      {
        goto LABEL_9;
      }

      (*(v3 + 8))(v6, v2);
    }

    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  v7 = 0xDu >> v4;
  return v7 & 1;
}

uint64_t sub_1A4504350()
{
  v1 = (*(*v0 + 1304))();
  result = 0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if ((*(*v0 + 800))(0))
      {
        return 1;
      }

      if ((*(*v0 + 1376))())
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    if (v1 == 4)
    {
      return result;
    }

LABEL_6:
    sub_1A3DB9B78(v1);
    return 3;
  }

  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1A4504450(uint64_t a1, uint64_t a2)
{
  v4 = (*v2 + 416);
  v5 = *v4;
  if ((*v4)() != a1 || v6 != a2)
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      return;
    }

    v10 = (*(*v2 + 488))(v9);
    if (v10)
    {
      v11 = v10;
      v12 = v5();
      (*(*v11 + 400))(v12);

      v14 = (*(*v2 + 1624))(v13);
      if (v14)
      {
        v15 = v14;
        v16 = v5();
        (*(*v15 + 224))(v16);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }
}

void sub_1A450464C(void *a1)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A450469C(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4504450(v5, v4);

  return result;
}

void sub_1A4504714()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4504788(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v6 == a1 && v5 == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[2] = a1;
    v2[3] = a2;
    sub_1A4504450(v6, v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 2272))(v10);
  }

  return result;
}

void sub_1A45048D8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4504930(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  sub_1A450464C(v4);
}

uint64_t sub_1A4504AAC()
{
  v0 = sub_1A5244AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1A5244B54();
  sub_1A5244AE4();
  sub_1A524E624();
  (*(v1 + 8))(v3, v0);
  return v5[0];
}

uint64_t sub_1A4504BA8()
{
  v1 = v0;
  v2 = (*v0 + 416);
  v3 = *v2;
  v4 = (*v2)();
  v6 = v5;

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = (v3)(v7);
  v11 = sub_1A452B420(v9, v10);

  if (!v11)
  {
    goto LABEL_16;
  }

  result = (*(*v1 + 1184))(v12);
  if (result)
  {
    v14 = (*(*result + 712))(result);

    v16 = (v3)(v15);
    v18 = v17;
    KeyPath = swift_getKeyPath();
    (*(*v1 + 2264))(KeyPath);

    v20 = v1[6];
    if (v20)
    {
      if (v16 == v1[5] && v20 == v18)
      {
        v21 = 1;
      }

      else
      {
        v21 = sub_1A524EAB4();
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = (*(*v1 + 1304))(v22);
    v24 = sub_1A4504184(v23);
    sub_1A3DB9B78(v23);
    if (v24)
    {
      if (v21)
      {
        v25 = v14 ^ 1;
        return v25 & 1;
      }

LABEL_17:
      v25 = 1;
      return v25 & 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v25 = 0;
    return v25 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1A4504DDC()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 intelligenceLightModeInPromptTextField];

  return v1 != 2;
}

uint64_t sub_1A4504E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x6974736567677553;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C6F686563616C50;
    }

    else
    {
      v5 = 0x6974736567677553;
    }

    if (v4)
    {
      v6 = 0xEB00000000726564;
    }

    else
    {
      v6 = 0xEB00000000736E6FLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6F72702072657355;
    v6 = 0xEB0000000074706DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6576656972746552;
    }

    else
    {
      v5 = 0x6465646E65747845;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0x6F72702072657355;
  v8 = 0xEB0000000074706DLL;
  v9 = 0x6576656972746552;
  v10 = 0xE900000000000064;
  if (a2 != 3)
  {
    v9 = 0x6465646E65747845;
    v10 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x6C6F686563616C50;
    v2 = 0xEB00000000726564;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A524EAB4();
  }

  return v13 & 1;
}

double sub_1A4505048()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  swift_beginAccess();

  return result;
}

uint64_t sub_1A45050CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4505120(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 496);

  return v2(v3);
}

double sub_1A450519C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;

  return result;
}

uint64_t (*sub_1A45051FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8(v4);
  return sub_1A450534C;
}

void sub_1A4505358()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45053CC(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 2264))();

  v4 = v3[6];
  *a2 = v3[5];
  a2[1] = v4;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A450546C(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 2272))(v9);

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v2[5] = a1;
  v2[6] = a2;

  return result;
}

void sub_1A45055BC(char a1)
{
  v2 = (*v1 + 584);
  v3 = *v2;
  if (((*v2)() & 1) != (a1 & 1))
  {
    v4 = v3();
    v5 = *v1;
    if (v4)
    {
      v6 = (*(v5 + 608))();
      v7 = (*(*v1 + 1624))(v6);
      if (!v7)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v8 = (*(v5 + 616))();
      v7 = (*(*v1 + 1624))(v8);
      if (!v7)
      {
        __break(1u);
        return;
      }
    }

    (*(*v7 + 472))(v4 & 1);
  }
}

uint64_t (*sub_1A450573C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_1A4505768;
}

void sub_1A4505768(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 56);
  *(v1 + 56) = v2;
  sub_1A45055BC(v3);
}

uint64_t sub_1A4505798()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  return v0[56];
}

uint64_t sub_1A45057FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

void sub_1A45058A4(char a1)
{
  v2 = a1 & 1;
  v3 = v1[56];
  if (v3 == v2)
  {
    v1[56] = v2;

    sub_1A45055BC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v5);
  }
}

uint64_t (*sub_1A45059AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A450573C(v4);
  return sub_1A4505AFC;
}

double sub_1A4505B08()
{
  v1 = (*(*v0 + 896))();
  (*(*v1 + 288))(1);

  v3 = (*(*v0 + 704))(v2);
  if (v3)
  {
    (*(*v3 + 1872))(v3);
  }

  return result;
}

uint64_t sub_1A4505C20()
{
  v1 = (*(*v0 + 896))();
  (*(*v1 + 288))(0);

  v3 = (*(*v0 + 704))(v2);
  if (v3)
  {
    (*(*v3 + 1880))(v3);
  }

  return sub_1A4505F68();
}

uint64_t sub_1A4505D90(uint64_t a1, uint64_t *a2)
{
  sub_1A452B8C0(0, &qword_1EB120BA0, sub_1A3F6D768, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  sub_1A452FAF4(a1, &v10[-v5], &qword_1EB120BA0, sub_1A3F6D768);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v11 = v7;
  v12 = v6;
  (*(*v7 + 2272))(KeyPath, sub_1A45303C0, v10, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A452EFF0(v6, &qword_1EB120BA0, sub_1A3F6D768);
}

uint64_t sub_1A4505EE8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation;
  swift_beginAccess();
  sub_1A452FF28(a2, a1 + v4, &qword_1EB120BA0, sub_1A3F6D768);
  return swift_endAccess();
}

uint64_t sub_1A4505F68()
{
  v1 = v0;
  sub_1A3F6D768();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB120BA0, sub_1A3F6D768, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 2264))(KeyPath);

  v14 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation;
  swift_beginAccess();
  sub_1A452FAF4(v1 + v14, v12, &qword_1EB120BA0, sub_1A3F6D768);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_1A452EFF0(v12, &qword_1EB120BA0, sub_1A3F6D768);
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_1A452EFF0(v12, &qword_1EB120BA0, sub_1A3F6D768);
    sub_1A524CBE4();
    (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 56))(v9, 1, 1, v3);
  v15 = swift_getKeyPath();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 2) = v1;
  *(&v18 - 1) = v9;
  (*(*v1 + 2272))(v16);

  return sub_1A452EFF0(v9, &qword_1EB120BA0, sub_1A3F6D768);
}

uint64_t sub_1A4506358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45063AC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 712);

  return v2(v3);
}

uint64_t (*sub_1A4506428(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A45062E4(v4);
  return sub_1A4506578;
}

uint64_t sub_1A45065F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result;
  return result;
}

uint64_t sub_1A450664C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 760);

  return v2(v3);
}

uint64_t (*sub_1A45066D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4506584(v4);
  return sub_1A4506820;
}

uint64_t sub_1A45068A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4506970(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A450682C(v4);
  return sub_1A4506AC0;
}

double sub_1A4506BBC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 2264))();

  swift_beginAccess();

  return result;
}

uint64_t sub_1A4506C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 896))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4506C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 904);

  return v2(v3);
}

double sub_1A4506D20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  swift_beginAccess();
  if (*(v3 + v5) != a1)
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 2272))(v7);
  }

  return result;
}

uint64_t (*sub_1A4506E20(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4506B48(v4);
  return sub_1A4506F70;
}

uint64_t sub_1A4506FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A45070DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4506F7C(v4);
  return sub_1A450722C;
}

void sub_1A45072AC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 2264))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4507348@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4507434(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = (v4 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    if (a2)
    {
      v9 = *v7 == a1 && v8 == a2;
      if (v9 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v7 = a1;
    v7[1] = a2;

    return result;
  }

  KeyPath = swift_getKeyPath();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v4 + 2272))(v12);

  return result;
}

uint64_t (*sub_1A450757C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4507238(v4);
  return sub_1A45076CC;
}

uint64_t sub_1A450774C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 2264))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A45077D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result & 1;
  return result;
}

void sub_1A45078A4(char a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  if (*(v3 + v5) == v4)
  {
    *(v3 + v5) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 2272))(v7);
  }
}

uint64_t (*sub_1A45079A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A45076D8(v4);
  return sub_1A4507AF0;
}

uint64_t sub_1A4507B70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1088))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4507BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1096);

  return v2(v3);
}

uint64_t (*sub_1A4507C40(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4507AFC(v4);
  return sub_1A4507D90;
}

uint64_t sub_1A4507E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4507E64(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1144);

  return v2(v3);
}

uint64_t (*sub_1A4507EE0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A4507D9C(v4);
  return sub_1A4508030;
}

double sub_1A45080D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__ambiguityManager[0];
  swift_beginAccess();
  *(a1 + v4) = a2;

  return result;
}

uint64_t (*sub_1A4508138(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  v4[7] = sub_1A450803C(v4);
  return sub_1A4508288;
}

void sub_1A4508294(uint64_t a1)
{
  v3 = (*(*v1 + 1184))();
  if (v3)
  {
    (*(*v3 + 696))(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4508330()
{
  result = (*(*v0 + 1184))();
  if (result)
  {
    v2 = (*(*result + 688))(result);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1A45083C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = (*v1 + 1184);
  v4 = *v3;
  a1[2] = *v3;
  a1[3] = v3 & 0xFFFFFFFFFFFFLL | 0x1A92000000000000;
  result = v4();
  if (result)
  {
    v6 = (*(*result + 688))(result);

    *a1 = v6;
    return sub_1A4508488;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4508488(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = (a1[2])();
  if (v3)
  {
    (*(*v3 + 696))(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4508560(uint64_t a1)
{
  sub_1A452B8C0(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  result = (*(*v1 + 1184))(v4);
  if (result)
  {
    v8 = result;
    sub_1A452FAF4(a1, v6, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
    (*(*v8 + 304))(v6);

    return sub_1A452EFF0(a1, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A45086CC()
{
  v1 = (*(*v0 + 1184))();
  if (v1)
  {
    (*(*v1 + 296))(v1);
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1A4508768(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1A452B8C0(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  v9 = (*v1 + 1184);
  v10 = *v9;
  v5[4] = *v9;
  v5[5] = v9 & 0xFFFFFFFFFFFFLL | 0x1A92000000000000;
  result = v10();
  if (result)
  {
    (*(*result + 296))(result);

    return sub_1A4508900;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4508900(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  if ((a2 & 1) == 0)
  {
    v11 = v4(a3);
    if (v11)
    {
      v12 = v11;
      v9 = v3[2];
      v8 = v3[3];
      v10 = v3[1];
      sub_1A452FAF4(v8, v9, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
      (*(*v12 + 304))(v9);

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v5 = sub_1A452FAF4(v3[3], v3[1], &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  v6 = (v4)(v5);
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v9 = v3[2];
  v8 = v3[3];
  v10 = v3[1];
  sub_1A452FAF4(v10, v9, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  (*(*v7 + 304))(v9);

  sub_1A452EFF0(v10, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
LABEL_6:
  sub_1A452EFF0(v8, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData);
  free(v8);
  free(v9);
  free(v10);

  free(v3);
}

uint64_t sub_1A4508AE0()
{
  v1 = (*(*v0 + 1304))();
  if (v1 >= 5)
  {
    v5 = v1;
    sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    if (swift_dynamicCast())
    {
      sub_1A440B338(v3, v4);
      if (v4 >= 4)
      {

        return 1;
      }
    }
  }

  else
  {
    sub_1A3DB9B78(v1);
  }

  return 0;
}

void *sub_1A4508BAC()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState);
  sub_1A452B924(v1);
  return v1;
}

uint64_t sub_1A4508C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1304))();
  *a2 = result;
  return result;
}

double sub_1A4508C98(void *a1)
{
  swift_getKeyPath();
  (*(*v1 + 2272))();
  sub_1A3DB9B78(a1);

  return result;
}

void sub_1A4508D40(uint64_t a1, void *a2, __n128 a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState);
  *(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState) = a2;
  sub_1A452B924(a2);
  sub_1A3DB9B78(v4);

  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v7 = 136315138;
    (*(*a1 + 1304))();
    v8 = sub_1A524C714();
    sub_1A3C2EF94(v8, v9, &v10);
  }

  sub_1A4526154();
}

void sub_1A4508ED0(uint64_t a1)
{
  v3 = (*v1 + 1408);
  v4 = *v3;
  v5 = (*v3)();
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = (*v1 + 1352);
  v8 = *v7;
  v9 = (*v7)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  (*(*v6 + 416))(sub_1A45304DC, v10);

  v12 = *((v8)(v11) + 16);

  if (v12 || !*(a1 + 16))
  {
    goto LABEL_6;
  }

  v14 = (v4)(v13);
  if (!v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  (*(*v14 + 440))(v14, 0.5);

LABEL_6:
  v15 = *((v8)(v13) + 16);

  if (v15 >= 2)
  {

    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = *(v8() + 16);

      *(v18 + 4) = v19;

      _os_log_impl(&dword_1A3C1C000, v16, v17, "Unexpected state for generatedStories to contain %ld stories", v18, 0xCu);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }
  }

  oslog = sub_1A5246F04();
  v20 = sub_1A524D264();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v21 = 136642819;
    v22 = v8();
    v23 = sub_1A5244664();
    v24 = MEMORY[0x1A5907DB0](v22, v23);
    v26 = v25;

    sub_1A3C2EF94(v24, v26, &v28);
  }
}

void sub_1A4509268()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45092E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1352))();
  *a2 = result;
  return result;
}

double sub_1A4509358(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 2272))();

  return result;
}

uint64_t sub_1A4509400()
{
  v1 = sub_1A5244664();
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 1352))(v3);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
      goto LABEL_6;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v1);
    sub_1A5244634();
    v12 = v11;
    result = (*(v2 + 8))(v5, v1);
    if (v12)
    {

LABEL_6:

      return v9 != v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A45095B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1408))();
  *a2 = result;
  return result;
}

double sub_1A4509644(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 2272))();

  return result;
}

uint64_t sub_1A45096E4()
{
  result = (*(*v0 + 1408))();
  if (result)
  {
    (*(*result + 280))(result);

    sub_1A452B998(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A452BA00(&qword_1EB125468, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation, &protocol conformance descriptor for PhotoKitItemListImplementation<A>);
    sub_1A52463B4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A45098C0()
{
  result = (*(*v0 + 1408))();
  if (result)
  {
    (*(*result + 280))(result);

    sub_1A452B998(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A452BA00(&qword_1EB125468, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation, &protocol conformance descriptor for PhotoKitItemListImplementation<A>);
    sub_1A52463B4();
  }

  __break(1u);
  return result;
}

double sub_1A4509A50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 2272))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A4509B6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (!*(v3 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 2272))(v8);

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);

  v6 = sub_1A524CD74();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v3 + v5) = a1;

  return result;
}

double sub_1A4509D0C@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  (*(*v6 + 2264))();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_1A4509E00(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 2264))();

  return result;
}

uint64_t sub_1A4509E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1624))();
  *a2 = result;
  return result;
}

double sub_1A4509EFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__suggestionViewModel;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__suggestionViewModel))
  {
    if (a1)
    {
      type metadata accessor for GenerativeStorySuggestionViewModel(0);
      sub_1A452FE78(&qword_1EB13CD18, type metadata accessor for GenerativeStorySuggestionViewModel, &protocol conformance descriptor for GenerativeStorySuggestionViewModel);
      swift_retain_n();
      v4 = sub_1A524C594();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v6);

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

void sub_1A450A0A8()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A450A124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1672))();
  *a2 = result;
  return result;
}

double sub_1A450A1A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__randomPlaceholderAssetUUIDs;
  if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__randomPlaceholderAssetUUIDs))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v5);

    return result;
  }

  if (!a1 || (sub_1A3D3D27C(*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__randomPlaceholderAssetUUIDs), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

void sub_1A450A2E4()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A450A364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1720))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A450A418(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__previousUserQuery);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__previousUserQuery + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 2272))(v10);

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1A450A588@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1768))();
  *a2 = result & 1;
  return result;
}

void sub_1A450A608(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__showAppleMusicPrivacyTip) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__showAppleMusicPrivacyTip) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v3);
  }
}

uint64_t sub_1A450A6F8()
{
  sub_1A452B8C0(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1624F8);
  v2 = __swift_project_value_buffer(v1, qword_1EB1624F8);
  v3 = sub_1A5241144();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

void sub_1A450A7FC(uint64_t a1)
{
  v2 = v1;
  v22[17] = a1;
  v22[13] = *v1;
  v3 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  v22[5] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22[6] = v4;
  v22[7] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22[16] = v22 - v7;
  sub_1A452B8C0(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v5);
  v22[9] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v22[8] = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v22[10] = v22 - v11;
  v12 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v12);
  v22[2] = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v22[1] = v22 - v15;
  v16 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v16);
  v22[0] = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  *(v2 + 56) = 0;
  v19 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation;
  sub_1A3F6D768();
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__vfxController) = 0;
  type metadata accessor for TimelineVFXEngineDataSource(0);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__vfxDataSource) = sub_1A461C738();
  *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__animationPlaying) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__vfxPrewarmTask) = 0;
  type metadata accessor for TimelineTextEngineModel(0);
  type metadata accessor for TimelineTextEngineSpec(0);
  v21 = sub_1A47F3754();
  sub_1A48E8774(v21);
}

uint64_t sub_1A450BF00(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A452B8C0(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__lastRequestedGenerationDate;
  swift_beginAccess();
  sub_1A452FAF4(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A452BF5C(v6, a1);
  sub_1A452EFF0(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    (*(*v1 + 2272))(v10);
  }

  else
  {
    v11 = MEMORY[0x1E6969530];
    sub_1A452FAF4(a1, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_beginAccess();
    sub_1A452C620(v6, v1 + v7, &qword_1EB12AFE0, v11);
    swift_endAccess();
  }

  return sub_1A452EFF0(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A450C12C(uint64_t a1)
{
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shortStoryWarningState;
  swift_beginAccess();
  sub_1A452FAF4(v1 + v6, v5, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  v7 = sub_1A452C2DC(v5, a1);
  sub_1A452EFF0(v5, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 2272))(v9);
  }

  else
  {
    sub_1A452FAF4(a1, v5, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
    swift_beginAccess();
    sub_1A452C620(v5, v1 + v6, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
    swift_endAccess();
  }

  return sub_1A452EFF0(a1, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
}

void sub_1A450C358(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep) = v2;

    sub_1A4526614(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v5);
  }
}

uint64_t sub_1A450C468(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 33) = a4;
  v7 = sub_1A5244AD4();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  v8 = sub_1A524E5E4();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  v9 = sub_1A524E5D4();
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A450C5F0, 0, 0);
}

uint64_t sub_1A450C5F0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_1A524E5B4();
  sub_1A524EE14();
  sub_1A524E5C4();
  v4 = *(v3 + 8);
  *(v0 + 136) = v4;
  *(v0 + 144) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_1A524EBB4();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = sub_1A452FE78(&unk_1EB1264D0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v5 = v0;
  v5[1] = sub_1A450C758;
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);

  return MEMORY[0x1EEE6DA68](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_1A450C758()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[16];
    v6 = v2[12];
    v5 = v2[13];
    v9 = v2 + 10;
    v7 = v2[10];
    v8 = v9[1];

    (*(v8 + 8))(v6, v7);
    v3(v4, v5);
  }

  else
  {
    v10 = v2[17];
    v11 = v2[16];
    v12 = v2[13];
    (*(v2[11] + 8))(v2[12], v2[10]);
    v10(v11, v12);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A450C8E8, 0, 0);
}

uint64_t sub_1A450C8E8(uint64_t a1)
{
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "Prewarming Memory Creation adapters", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];

  sub_1A5244B54();
  sub_1A5244AE4();
  sub_1A5244444();
  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1A450CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  sub_1A452FAF4(a3, v26 - v11, &qword_1EB12B270, v9);
  v13 = sub_1A524CCB4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A452EFF0(v12, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1A524CCA4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1A524CBC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1A524C744() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1A3C37FA0(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_1A3C37FA0(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1A450CD8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 81) = a4;
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v5 + 96) = swift_task_alloc();
  v6 = sub_1A524E5E4();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_1A524E5D4();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A450CF14, 0, 0);
}

uint64_t sub_1A450CF14()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1A524E5B4();
  sub_1A524EE14();
  sub_1A524E5C4();
  v4 = *(v3 + 8);
  *(v0 + 160) = v4;
  *(v0 + 168) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 1;
  sub_1A524EBB4();
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  v6 = sub_1A452FE78(&unk_1EB1264D0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v5 = v0;
  v5[1] = sub_1A450D07C;
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);

  return MEMORY[0x1EEE6DA68](v7, v0 + 64, v8, v9, v6);
}

uint64_t sub_1A450D07C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[19];
    v6 = v2[15];
    v5 = v2[16];
    v9 = v2 + 13;
    v7 = v2[13];
    v8 = v9[1];

    (*(v8 + 8))(v6, v7);
    v3(v4, v5);
  }

  else
  {
    v10 = v2[20];
    v11 = v2[19];
    v12 = v2[16];
    (*(v2[14] + 8))(v2[15], v2[13]);
    v10(v11, v12);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A450D20C, 0, 0);
}

uint64_t sub_1A450D20C()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata sharedInstance];
  v3 = [v2 isMemoryCreationImageAnimationEnabled];

  if (v3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[23] = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      v0[24] = v5;
      *v5 = v0;
      v5[1] = sub_1A450D4B4;

      return sub_1A450E72C();
    }
  }

  else
  {
    v7 = [ObjCClassFromMetadata sharedInstance];
    v8 = [v7 isMemoryCreationTextAnimationEnabled];

    if (v8)
    {
      v9 = v0[12];
      v10 = sub_1A524CCB4();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      v11 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_1A524CC54();

      v12 = sub_1A524CC44();
      v13 = swift_allocObject();
      v14 = MEMORY[0x1E69E85E0];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v11;

      sub_1A3EA52F4(0, 0, v9, &unk_1A53458B8, v13);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A450D4B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A450D640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A450D6D8, v6, v5);
}

uint64_t sub_1A450D6D8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    type metadata accessor for TimelineVFXEngineController(0);
    type metadata accessor for TimelineVFXEngineSpec(0);
    v2 = sub_1A47505D8();
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = [v3 vfxQualityPostProcessingFXHighQuality];

    v5 = sub_1A3E11240(v2, v4, MEMORY[0x1E69E7CC0]);
    (*(*Strong + 712))(v5);
  }

  **(v0 + 40) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A450D85C()
{
  sub_1A452CA60(&selRef_signalTaskStartedWithError_, "GenerativeStoryCreationViewModel - call to taskStarted failed with error: %@");
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A450D8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A450D8E8, 0, 0);
}

uint64_t sub_1A450D8E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1A450D9DC;

    return sub_1A451097C();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A450D9DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A450DAF4, 0, 0);
}

char *sub_1A450DB1C()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E85F0];
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  sub_1A524CC94();
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_1A3DCD53C(0, 0, v5, &unk_1A53451C0, v7);

  sub_1A452EFF0(v5, &qword_1EB12B270, v2);

  sub_1A452EFF0(&v0[OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation], &qword_1EB120BA0, sub_1A3F6D768);

  v8 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_signposter;
  v9 = sub_1A5246E94();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);

  sub_1A3DB9B78(*&v0[OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentState]);

  v10 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger;
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);

  v12 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_generationEntryPoint;
  v13 = sub_1A5244854();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);

  sub_1A452EFF0(&v0[OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__lastRequestedGenerationDate], &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  sub_1A452EFF0(&v0[OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shortStoryWarningState], &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);

  v14 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel___observationRegistrar;
  v15 = sub_1A5241614();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  return v0;
}

uint64_t sub_1A450DFA4()
{
  sub_1A450DB1C();

  return swift_deallocClassInstance();
}

double sub_1A450DFFC(uint64_t a1)
{
  if ((*(*a1 + 384))() == 2)
  {
    v3 = *((*(*a1 + 1352))() + 16);

    if (v3)
    {
      v5 = (*(*a1 + 1432))(v4);
      if (v5)
      {
      }

      else
      {
        v6 = sub_1A5246F04();
        v7 = sub_1A524D264();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_1A3C1C000, v6, v7, "Memory was manually deleted by the user, resetting state to idle", v8, 2u);
          MEMORY[0x1A590EEC0](v8, -1, -1);
        }

        sub_1A5247F84();
        sub_1A5248914();
      }
    }
  }

  return result;
}

double sub_1A450E1C0(uint64_t a1)
{
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-v3];
  KeyPath = swift_getKeyPath();
  v13 = a1;
  v14 = MEMORY[0x1E69E7CC0];
  v6 = *(*a1 + 2272);
  (v6)(KeyPath, sub_1A453041C, v12, MEMORY[0x1E69E7CA8] + 8);

  (*(*a1 + 952))(0, 0);
  (*(*a1 + 1000))(0, 0);
  v7 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1A450C12C(v4);
  swift_getKeyPath();
  v10 = a1;
  v11 = 0;
  v6();

  return result;
}

double sub_1A450E414(uint64_t a1)
{
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3EA52F4(0, 0, v3, &unk_1A5345888, v7);

  return result;
}

uint64_t sub_1A450E5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A450E650, v6, v5);
}

uint64_t sub_1A450E650()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A450E72C()
{
  v1[8] = v0;
  v2 = sub_1A524E5E4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1A5246984();
  v1[16] = swift_task_alloc();
  v4 = sub_1A5245454();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v5 = sub_1A5244FD4();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v6 = sub_1A52469C4();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A450E994, 0, 0);
}

uint64_t sub_1A450E994()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[26] = ObjCClassFromMetadata;
  v2 = [ObjCClassFromMetadata sharedInstance];
  v3 = [v2 isMemoryCreationImageAnimationEnabled];

  if (v3)
  {
    v0[27] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger;
    v4 = sub_1A5246F04();
    v5 = sub_1A524D224();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "prewarmAnimation() - Starting prewarm tasks", v6, 2u);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }

    v7 = v0[8];

    v8 = MEMORY[0x1E69C1878];
    sub_1A452B8C0(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A52FC9F0;
    sub_1A52469B4();
    sub_1A52469A4();
    v0[7] = v9;
    sub_1A452FE78(&qword_1EB124A50, MEMORY[0x1E69C1878], MEMORY[0x1E69C1880]);
    sub_1A452B8C0(0, &qword_1EB120C98, v8, MEMORY[0x1E69E62F8]);
    sub_1A452F9C4(&qword_1EB120C90, &qword_1EB120C98, v8);
    sub_1A524E224();
    sub_1A5245214();
    swift_allocObject();
    v0[28] = sub_1A52451F4();
    v10 = sub_1A52451B4();
    v0[29] = v10;
    v11 = *(v7 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
    PXSharingFilterFromPhotoLibrary(v11);
    sub_1A5244CE4();
    swift_allocObject();
    v12 = v11;
    sub_1A5244CD4();
    sub_1A5244FC4();
    sub_1A5245444();
    v13 = sub_1A5246F04();
    v14 = sub_1A524D224();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "prewarmAnimation() - Starting random placeholder asset fetching", v15, 2u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    v16 = sub_1A52469D4();
    v17 = MEMORY[0x1E69C1888];
    v0[5] = v16;
    v0[6] = v17;
    v0[2] = v10;

    sub_1A5246994();
    v0[30] = sub_1A5245434();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A450F014(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A450F114, 0, 0);
}

uint64_t sub_1A450F114()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = [v1 fetchedObjects];
    if (v2)
    {
      v3 = v2;
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v0[33] = sub_1A524CA34();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "prewarmAnimation() – Failed to generate placeholder assets – no assets available", v6, 2u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  sub_1A5246E84();
  sub_1A5246E24();
  v7 = sub_1A5246E84();
  v8 = sub_1A524D664();
  v9 = sub_1A524DEC4();
  v10 = v0[32];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, v8, v15, "prewarmAnimation() handleAssets (Failed)", "", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A450F62C()
{
  v1 = v0[34];

  v3 = v1(v2);
  v0[38] = v3;
  v7 = (*(*v3 + 384) + **(*v3 + 384));
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1A450F77C;
  v5 = v0[33];

  return v7(v5);
}

uint64_t sub_1A450F77C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_1A4510220;
  }

  else
  {

    v4 = sub_1A450F8A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A450F8A4(uint64_t a1)
{
  v2 = sub_1A5246F04();
  v3 = sub_1A524D224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "prewarmAnimation() - Finished vfxDataSource.prewarm() of placeholder assets", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = v1[40];
  v6 = v1[26];

  type metadata accessor for TimelineVFXEngineController(0);
  type metadata accessor for TimelineVFXEngineSpec(0);
  v7 = sub_1A47505D8();
  v8 = [v6 sharedInstance];
  v9 = [v8 vfxQualityPostProcessingFXHighQuality];

  v1[42] = sub_1A3E11240(v7, v9, v5);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D224();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "prewarmAnimation() - Finished setting up TimelineVFXEngineController", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  v13 = v1[26];

  v14 = [v13 sharedInstance];
  LOBYTE(v13) = [v14 simulateSlowPrewarmForLoadingAnimation];

  if (v13)
  {
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "prewarmAnimation() - Simulating animation prewarm delay", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    sub_1A524EBB4();
    v18 = swift_task_alloc();
    v1[43] = v18;
    *v18 = v1;
    v18[1] = sub_1A450FC8C;

    return sub_1A3DCFAB0(5000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v1[45] = v1[41];
    v20 = sub_1A5246F04();
    v21 = sub_1A524D264();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, v21, "prewarmAnimation() - Animation prewarm tasks are done", v22, 2u);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    v1[46] = sub_1A524CC44();
    v24 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A4510048, v24, v23);
  }
}

uint64_t sub_1A450FC8C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A450FF38;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A450FE24;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A450FE24(uint64_t a1)
{
  v1[45] = v1[44];
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "prewarmAnimation() - Animation prewarm tasks are done", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v1[46] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4510048, v6, v5);
}

uint64_t sub_1A450FF38(uint64_t a1)
{
  *(v1 + 360) = 0;
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "prewarmAnimation() - Animation prewarm tasks are done", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  *(v1 + 368) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4510048, v6, v5);
}

void sub_1A4510048()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[30];
  v4 = v0[8];

  sub_1A4510418(v4, v2, v3);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1A4510114, 0, 0);
  }
}

uint64_t sub_1A4510114()
{
  v1 = v0[32];

  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A4510220()
{
  v1 = v0[32];

  v2 = v0[41];
  v3 = v2;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "prewarmAnimation() - failed with error: %@", v6, 0xCu);
    sub_1A3CB65E4(v7);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

void sub_1A4510418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246E54();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(*(*a1 + 704))(v7))
  {
    v22[3] = v9;
    v10 = *(*a1 + 712);

    v12 = v10(v11);
    if (*(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__vfxPrewarmTask))
    {
      KeyPath = swift_getKeyPath();
      v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      v22[-2] = a1;
      v22[-1] = 0;
      (*(*a1 + 2272))(v14);
    }

    if ((*(*a1 + 800))(v12))
    {
      v15 = sub_1A5246F04();
      v16 = sub_1A524D264();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = a3;
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1A3C1C000, v15, v16, "prewarmAnimation() - calling vfxController.playAnimation() because animation already needs to be playing", v18, 2u);
        v19 = v18;
        a3 = v17;
        MEMORY[0x1A590EEC0](v19, -1, -1);
      }

      (*(*a2 + 1760))();
    }

    v20 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__randomPlaceholderAssetUUIDs;
    if (*(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__randomPlaceholderAssetUUIDs))
    {
      if (sub_1A3D3D27C(*(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__randomPlaceholderAssetUUIDs), a3))
      {
        *(a1 + v20) = a3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v21 = swift_getKeyPath();
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v21);
    v22[-2] = a1;
    v22[-1] = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

uint64_t sub_1A451097C()
{
  v1[2] = v0;
  v2 = sub_1A524BFF4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4510A3C, 0, 0);
}

uint64_t sub_1A4510A3C(uint64_t a1)
{
  v1[6] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger;
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "Computing Apple Music status...", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v5 = sub_1A524D474();
  (*(v6 + 104))(v5, *MEMORY[0x1E69E8018], v7);
  v8 = sub_1A524C024();
  (*(v6 + 8))(v5, v7);
  if (v8)
  {
    sub_1A5244A94();
    v9 = swift_task_alloc();
    v1[7] = v9;
    *v9 = v1;
    v9[1] = sub_1A4510BE0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE29F48]();
}

uint64_t sub_1A4510BE0(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4510CE0, 0, 0);
}

uint64_t sub_1A4510CE0(uint64_t a1)
{
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 72);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "Apple Music status computed: %{BOOL}d", v5, 8u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  sub_1A524CC54();
  *(v1 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4510E04, v7, v6);
}

uint64_t sub_1A4510E04()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  byte_1EB13CD10 = v1;
  if (v1 == *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__showAppleMusicPrivacyTip))
  {
    *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__showAppleMusicPrivacyTip) = v1;
  }

  else
  {
    v3 = *(v0 + 16);
    KeyPath = swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    (*(*v3 + 2272))(KeyPath, sub_1A45303DC, v5, MEMORY[0x1E69E7CA8] + 8);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A4510F74@<X0>(uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  (*(*v5 + 2264))();

  v10 = *a2;
  swift_beginAccess();
  return sub_1A452FAF4(v5 + v10, a5, a3, a4);
}

uint64_t sub_1A4511050@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  (*(*v10 + 2264))();

  v11 = *a3;
  swift_beginAccess();
  return sub_1A452FAF4(v10 + v11, a6, a4, a5);
}

void sub_1A4511138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v7 = sub_1A52449C4();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v66 - v13;
  v14 = type metadata accessor for GenerativeStorySuggestion(0);
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5246E54();
  v75 = *(v16 - 8);
  v76 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v9);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  v24 = sub_1A5241144();
  v81 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], v9);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v66 - v31;
  sub_1A42C8F98(60);
  sub_1A452043C();
  if (!sub_1A452B420(a1, a2))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v68 = a1;
  if (((*(*v4 + 448))() & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v66 = a2;
  v67 = v4;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [ObjCClassFromMetadata sharedInstance];
  v35 = [v34 simulateCreationError];

  if (v35)
  {
    v36 = v67;
    v37 = sub_1A5246F04();
    v38 = sub_1A524D264();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1A3C1C000, v37, v38, "Skipping story generation in favor of simulated error", v39, 2u);
      MEMORY[0x1A590EEC0](v39, -1, -1);
    }

    (*(*v36 + 592))(0);
    sub_1A452C7C8();
    v40 = swift_allocError();
    v42 = v41;
    v43 = sub_1A5244B24();
    *v42 = 0;
    v42[1] = 0;
    (*(*(v43 - 8) + 56))(v32, 1, 1, v43);
    sub_1A452CCF8(v40, v32);
    sub_1A452EFF0(v32, &qword_1EB124C50, MEMORY[0x1E69C1138]);
  }

  else
  {
    v44 = [ObjCClassFromMetadata sharedInstance];
    v45 = [v44 replaceMemoryCreationWithMockData];

    if (!v45)
    {
      swift_getKeyPath();
      v60 = v67;
      (*(*v67 + 2264))();

      v61 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__lastRequestedGenerationDate;
      swift_beginAccess();
      sub_1A452FAF4(v60 + v61, v23, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v62 = v81;
      if ((*(v81 + 48))(v23, 1, v24) == 1)
      {
        sub_1A452EFF0(v23, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      }

      else
      {
        (*(v62 + 32))(v29, v23, v24);
        sub_1A5241104();
        sub_1A5241054();
        v64 = v63;
        v65 = *(v62 + 8);
        v65(v26, v24);
        if (v64 < 1.0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v65(v29, v24);
      }

      sub_1A5241104();
      (*(v62 + 56))(v20, 0, 1, v24);
      sub_1A450BF00(v20);
      sub_1A5241104();
      sub_1A3DE6EF8(v26);
    }

    v46 = v67;
    v47 = sub_1A5246F04();
    v48 = sub_1A524D264();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1A3C1C000, v47, v48, "Skipping story generation in favor of mock data", v49, 2u);
      MEMORY[0x1A590EEC0](v49, -1, -1);
    }

    sub_1A452B8C0(0, &qword_1EB120300, MEMORY[0x1E69C0F70], MEMORY[0x1E69E6F90]);
    v50 = *(sub_1A5244664() - 8);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1A52F8E10;
    sub_1A4512430(*(v46 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary), v52 + v51);
    KeyPath = swift_getKeyPath();
    v54.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *(&v66 - 2) = v46;
    *(&v66 - 1) = v52;
    v55 = *(*v46 + 2272);
    v55(v54);

    v57 = (*(*v46 + 1408))(v56);
    if (v57)
    {
      (*(*v57 + 440))(v57, 5.0);

      v58 = swift_getKeyPath();
      v59 = MEMORY[0x1EEE9AC00](v58);
      *(&v66 - 2) = v46;
      *(&v66 - 1) = 3;
      (v55)(v59);
    }

    else
    {
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
    }
  }
}

void sub_1A4512430(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1A5244A74();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A52411C4();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5244C14();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A452B8C0(0, &qword_1EB13CD88, MEMORY[0x1E69C1408], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = [a1 px_standardLibrarySpecificFetchOptions];
  v15 = [objc_opt_self() fetchBestRecentMemoryWithOptions_];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 localIdentifier];

    v20 = sub_1A524C674();
    v21 = v18;
  }

  else
  {
    v20 = 0xD000000000000011;
    v21 = 0x80000001A53DB320;
  }

  sub_1A5245134();
  v19 = sub_1A5245144();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  sub_1A5244C04();
  sub_1A52411B4();
  sub_1A5241164();
  (*(v6 + 8))(v8, v22);
  *v5 = 0;
  (*(v23 + 104))(v5, *MEMORY[0x1E69C10E0], v24);
  sub_1A5244654();
}

void sub_1A4512800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a6;
  v64 = a4;
  v65 = a2;
  v56 = a3;
  v66 = a1;
  v9 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = v50 - v11;
  sub_1A452B8C0(0, &qword_1EB124C88, MEMORY[0x1E69C1030], v9);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = v50 - v13;
  v14 = sub_1A5244854();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v61 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - v18;
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, v9);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v57 = v50 - v21;
  v51 = sub_1A5244B24();
  v50[5] = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v55 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v30 = v50 - v29;
  v31 = (*(*v7 + 488))(v28);
  if (v31)
  {
    v50[4] = a5;
    v59 = v15;
    v60 = v19;
    v58 = v14;
    (*(*v31 + 416))(v31);

    (*(*v7 + 1096))(0);
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = [ObjCClassFromMetadata sharedInstance];
    v33 = (*(*v7 + 1184))();
    if (v33)
    {
      v34 = (*(*v33 + 840))(v33);

      (*(*v34 + 456))(v35);

      v37 = *(*v7 + 1208);
      v38 = (v37)(v36);
      v39 = *(v38 + 16);
      v67 = v7;
      v50[2] = ObjCClassFromMetadata;
      if (v39)
      {
        sub_1A452EDA0(v38 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v26, type metadata accessor for GenerativeStoryAmbiguityData);

        sub_1A452FA8C(v26, v30, type metadata accessor for GenerativeStoryAmbiguityData);
        v40 = &v30[*(v23 + 28)];
        if (*v40 == v66 && *(v40 + 1) == v65)
        {
          v41 = 1;
        }

        else
        {
          v41 = sub_1A524EAB4();
        }

        v42 = [v63 ambiguousTokensBlockStoryGeneration];

        if (v41 & 1) != 0 && (v42)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v43 = v67;
        v44 = sub_1A5246F04();
        v45 = sub_1A524D264();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v46 = 136642819;
          v37();
          v47 = MEMORY[0x1A5907DB0]();
          v49 = v48;

          sub_1A3C2EF94(v47, v49, &v68);
        }

        (*(*v43 + 1216))(MEMORY[0x1E69E7CC0]);
        sub_1A452C768(v30, type metadata accessor for GenerativeStoryAmbiguityData);
      }

      else
      {
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1A45142A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 121) = v16;
  *(v8 + 184) = v15;
  *(v8 + 168) = v14;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = sub_1A5246F24();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1A524CC54();
  *(v8 + 224) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v8 + 232) = v11;
  *(v8 + 240) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A45143CC, v11, v10);
}

uint64_t sub_1A45143CC()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 200) + 16))(*(v0 + 216), Strong + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger, *(v0 + 192));

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    v7 = sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
    *v6 = v0;
    v6[1] = sub_1A45147A8;
    v8 = MEMORY[0x1E69E7288];
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 112, v1, v9, v7, v8);
  }

  else
  {
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    *(v0 + 256) = v3;
    if (v3)
    {
      swift_beginAccess();
      v4 = swift_weakLoadStrong();
      if (v4)
      {
        v5 = (*(*v4 + 1672))();
      }

      else
      {
        v5 = 0;
      }

      *(v0 + 264) = v5;
      v11 = swift_task_alloc();
      *(v0 + 272) = v11;
      *v11 = v0;
      v11[1] = sub_1A4514C24;
      v12 = *(v0 + 121);
      v13 = *(v0 + 176);
      v14 = *(v0 + 184);
      v15 = *(v0 + 160);
      v16 = *(v0 + 168);
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);

      return sub_1A451571C(v18, v17, v15, v16, v13, v14, v12, v5);
    }

    else
    {

      v10 = *(v0 + 8);

      return v10();
    }
  }
}

uint64_t sub_1A45147A8()
{
  v1 = *v0;

  sub_1A452FD58(*(v1 + 112), *(v1 + 120));
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1A45148E8, v3, v2);
}

uint64_t sub_1A45148E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(v0 + 200) + 16))(*(v0 + 208), Strong + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger, *(v0 + 192));

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  *(v0 + 256) = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (v3)
    {
      v4 = (*(*v3 + 1672))();
    }

    else
    {
      v4 = 0;
    }

    *(v0 + 264) = v4;
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = sub_1A4514C24;
    v8 = *(v0 + 121);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);

    return sub_1A451571C(v14, v13, v11, v12, v9, v10, v8, v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1A4514C24()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1A4514D84, v3, v2);
}

uint64_t sub_1A4514D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4514DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[89] = a6;
  v6[88] = a5;
  v6[87] = a4;
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], MEMORY[0x1E69E6720]);
  v6[90] = swift_task_alloc();
  v7 = sub_1A524E5E4();
  v6[91] = v7;
  v6[92] = *(v7 - 8);
  v6[93] = swift_task_alloc();
  v6[94] = sub_1A524CC54();
  v6[95] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v6[96] = v9;
  v6[97] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A4514F58, v9, v8);
}

uint64_t sub_1A4514F58(uint64_t a1)
{
  sub_1A524EBB4();
  v2 = swift_task_alloc();
  v1[98] = v2;
  *v2 = v1;
  v2[1] = sub_1A451501C;
  v3 = v1[88];
  v4 = v1[87];

  return sub_1A3DCFAB0(v4, v3, 0, 0, 1);
}

uint64_t sub_1A451501C()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *(*v1 + 736);
  v5 = *(*v1 + 728);
  *(*v1 + 792) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 776);
  v7 = *(v2 + 768);
  if (v0)
  {
    v8 = sub_1A4515394;
  }

  else
  {
    v8 = sub_1A45151B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A45151B4(uint64_t a1)
{
  v11 = v1;
  if ((sub_1A524CDC4() & 1) != 0 || (swift_beginAccess(), Strong = swift_weakLoadStrong(), (*(v1 + 800) = Strong) == 0))
  {

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    v3 = sub_1A5246F04();
    v4 = sub_1A524D264();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v5 = 136315138;
      v6 = sub_1A524EE04();
      sub_1A3C2EF94(v6, v7, &v10);
    }

    return MEMORY[0x1EEE6DFA0](sub_1A4515410, 0, 0);
  }
}

uint64_t sub_1A4515394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4515410(__n128 a1)
{
  *(v1 + 808) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451549C, v3, v2);
}

uint64_t sub_1A451549C()
{

  *(v0 + 816) = 0xE00000001;
  *(v0 + 824) = 1;
  v1 = getpid();
  *(v0 + 16) = 0u;
  *(v0 + 828) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 688) = 648;
  *(v0 + 48) = 0;
  sysctl((v0 + 816), 4u, (v0 + 16), (v0 + 688), 0, 0);
  if ((*(v0 + 49) & 8) == 0)
  {
    v2 = *(v0 + 720);
    sub_1A452C7C8();
    v3 = swift_allocError();
    *v4 = xmmword_1A5301350;
    v5 = *MEMORY[0x1E69C1110];
    v6 = sub_1A5244B24();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2, v5, v6);
    (*(v7 + 56))(v2, 0, 1, v6);
    sub_1A452CCF8(v3, v2);
    sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);
  }

  v8 = *(v0 + 776);
  v9 = *(v0 + 768);

  return MEMORY[0x1EEE6DFA0](sub_1A4515698, v9, v8);
}

uint64_t sub_1A4515698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A451571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 200) = a8;
  *(v9 + 208) = v8;
  *(v9 + 1630) = a7;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
  v10 = sub_1A5244AC4();
  *(v9 + 216) = v10;
  *(v9 + 224) = *(v10 - 8);
  *(v9 + 232) = swift_task_alloc();
  v11 = sub_1A5244B34();
  *(v9 + 240) = v11;
  *(v9 + 248) = *(v11 - 8);
  *(v9 + 256) = swift_task_alloc();
  v12 = sub_1A5244584();
  *(v9 + 264) = v12;
  *(v9 + 272) = *(v12 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  sub_1A452ED20(0);
  *(v9 + 304) = v13;
  *(v9 + 312) = *(v13 - 8);
  *(v9 + 320) = swift_task_alloc();
  sub_1A5246984();
  *(v9 + 328) = swift_task_alloc();
  v14 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB120210, sub_1A452ED20, MEMORY[0x1E69E6720]);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  v15 = sub_1A5244E14();
  *(v9 + 352) = v15;
  *(v9 + 360) = *(v15 - 8);
  *(v9 + 368) = swift_task_alloc();
  sub_1A5244734();
  *(v9 + 376) = swift_task_alloc();
  v16 = sub_1A5244AD4();
  *(v9 + 384) = v16;
  *(v9 + 392) = *(v16 - 8);
  *(v9 + 400) = swift_task_alloc();
  v17 = sub_1A5244DB4();
  *(v9 + 408) = v17;
  *(v9 + 416) = *(v17 - 8);
  *(v9 + 424) = swift_task_alloc();
  sub_1A452B8C0(0, &qword_1EB124C58, MEMORY[0x1E69C10E8], v14);
  *(v9 + 432) = swift_task_alloc();
  sub_1A5244DC4();
  *(v9 + 440) = swift_task_alloc();
  v18 = sub_1A5244B04();
  *(v9 + 448) = v18;
  *(v9 + 456) = *(v18 - 8);
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  sub_1A452B8C0(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, v14);
  *(v9 + 480) = swift_task_alloc();
  v19 = type metadata accessor for GenerativeStorySuggestion(0);
  *(v9 + 488) = v19;
  *(v9 + 496) = *(v19 - 8);
  *(v9 + 504) = swift_task_alloc();
  v20 = sub_1A52444D4();
  *(v9 + 512) = v20;
  *(v9 + 520) = *(v20 - 8);
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], v14);
  *(v9 + 544) = swift_task_alloc();
  v21 = sub_1A52469C4();
  *(v9 + 552) = v21;
  *(v9 + 560) = *(v21 - 8);
  *(v9 + 568) = swift_task_alloc();
  v22 = sub_1A5244854();
  *(v9 + 576) = v22;
  *(v9 + 584) = *(v22 - 8);
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v23 = sub_1A5241144();
  *(v9 + 608) = v23;
  *(v9 + 616) = *(v23 - 8);
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], v14);
  *(v9 + 648) = swift_task_alloc();
  v24 = sub_1A5245364();
  *(v9 + 656) = v24;
  *(v9 + 664) = *(v24 - 8);
  *(v9 + 672) = swift_task_alloc();
  v25 = sub_1A52453A4();
  *(v9 + 680) = v25;
  *(v9 + 688) = *(v25 - 8);
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4515F98, 0, 0);
}

uint64_t sub_1A4515F98(uint64_t a1)
{
  v2 = sub_1A524CDC4();
  v1[92] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Skipping performGenerationRequest execution because Task was cancelled", v6, 2u);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }

    v7 = v1[1];

    return v7();
  }

  else
  {
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Starting performGenerationRequest execution", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    v10 = v1[26];

    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager(0);
    v11 = *(v10 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
    v1[93] = v11;
    v12 = swift_task_alloc();
    v1[94] = v12;
    *v12 = v1;
    v12[1] = sub_1A4516350;
    v13 = v1[90];

    return static LemonadeMemoriesCreationAvailabilityManager.generateFeatureAvailabilityState(using:photoLibrary:)(v13, 0, v11);
  }
}

uint64_t sub_1A4516350(void *a1)
{
  *(*v2 + 760) = v1;

  if (v1)
  {
    v4 = sub_1A451A634;
  }

  else
  {

    v4 = sub_1A451646C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A451646C()
{
  v91 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  (*(v3 + 32))(v1, *(v0 + 720), v4);
  v5 = *(v3 + 16);
  v5(v2, v1, v4);
  v6 = (*(v3 + 88))(v2, v4);
  v7 = *(v0 + 712);
  v8 = *(v0 + 688);
  v9 = *(v0 + 680);
  if (v6 == *MEMORY[0x1E69C1480])
  {
    v10 = *(v0 + 672);
    v11 = *(v0 + 664);
    v12 = *(v0 + 656);
    (*(v8 + 96))(*(v0 + 712), v9);
    v13 = (*(v11 + 32))(v10, v7, v12);
    if (MEMORY[0x1A5900660](v13))
    {
      v14 = sub_1A5246F04();
      v15 = sub_1A524D264();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1A3C1C000, v14, v15, "MC is unavailable, not proceeding with generation and transitioning to error state", v16, 2u);
        MEMORY[0x1A590EEC0](v16, -1, -1);
      }

      v17 = *(v0 + 648);
      v18 = *(v0 + 264);
      v19 = *(v0 + 272);

      sub_1A452FE78(&qword_1EB13CD58, MEMORY[0x1E69C0F30], MEMORY[0x1E69C0F38]);
      *(v0 + 768) = swift_allocError();
      (*(v19 + 104))(v20, *MEMORY[0x1E69C0EF8], v18);
      v21 = sub_1A5244B24();
      (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
      sub_1A524CC54();
      *(v0 + 776) = sub_1A524CC44();
      v22 = sub_1A524CBC4();
      v24 = v23;
      v25 = sub_1A45172D4;
      goto LABEL_33;
    }

    (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
  }

  else
  {
    (*(v8 + 8))(*(v0 + 712), v9);
  }

  v26 = *(v0 + 704);
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  (*(v27 + 104))(v26, *MEMORY[0x1E69C1498], v28);
  v29 = sub_1A5245394();
  v30 = *(v27 + 8);
  *(v0 + 784) = v30;
  *(v0 + 792) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v28);
  if ((v29 & 1) == 0)
  {
    v5(*(v0 + 696), *(v0 + 728), *(v0 + 680));
    v41 = sub_1A5246F04();
    v42 = sub_1A524D264();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 696);
    v45 = *(v0 + 680);
    if (v43)
    {
      v46 = swift_slowAlloc();
      v90[0] = swift_slowAlloc();
      *v46 = 136315138;
      sub_1A452FE78(&qword_1EB124BE8, MEMORY[0x1E69C14A0], MEMORY[0x1E69C14B0]);
      v47 = sub_1A524EA44();
      v49 = v48;
      v30(v44, v45);
      sub_1A3C2EF94(v47, v49, v90);
    }

    v30(v44, v45);
    v66 = *(v0 + 648);
    sub_1A452C7C8();
    *(v0 + 1264) = swift_allocError();
    *v67 = xmmword_1A5344DC0;
    v68 = sub_1A5244B24();
    (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
    sub_1A524CC54();
    *(v0 + 1272) = sub_1A524CC44();
    v22 = sub_1A524CBC4();
    v24 = v69;
    v25 = sub_1A451A338;
    goto LABEL_33;
  }

  v31 = *(v0 + 744);
  v32 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 584);
  v35 = *(v0 + 576);
  v36 = *(v0 + 192);
  v30(*(v0 + 728), *(v0 + 680));
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v37 = [swift_getObjCClassFromMetadata() sharedInstance];
  *(v0 + 800) = v37;
  sub_1A5241104();
  (*(v34 + 16))(v32, v36, v35);
  v38 = v31;
  [v37 shouldForceDiagnosticAsSeedOrFCS];
  v88 = v37;
  [v37 saveCurationInFolder];
  sub_1A5245524();
  swift_allocObject();
  v39 = sub_1A52454E4();
  *(v0 + 808) = v39;
  (*(v34 + 104))(v33, *MEMORY[0x1E69C0FE8], v35);
  sub_1A452FE78(&qword_1EB124C90, MEMORY[0x1E69C1030], MEMORY[0x1E69C1040]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (*(v0 + 56) == *(v0 + 72) && *(v0 + 64) == *(v0 + 80))
  {
    v40 = 1;
  }

  else
  {
    v40 = sub_1A524EAB4();
  }

  *(v0 + 1631) = v40 & 1;
  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

  if ((v40 & 1) != 0 && v39)
  {

    sub_1A52454C4();

    sub_1A52447F4();
  }

  v50 = *(v0 + 200);
  if (v50)
  {
    v51 = *(v0 + 760);
    if (v39)
    {

      sub_1A5241134();
      *(v0 + 144) = v50;
      sub_1A3C37FA0(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1A452F104();
      sub_1A52452B4();
      if (v51)
      {
      }

      v52 = *(v0 + 632);
      v53 = *(v0 + 624);
      v54 = *(v0 + 616);
      v55 = *(v0 + 608);
      sub_1A5245514();
      (*(v54 + 16))(v53, v52, v55);
      v56 = sub_1A5246F04();
      v57 = sub_1A524D264();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 640);
        v87 = *(v0 + 632);
        v59 = *(v0 + 624);
        v60 = *(v0 + 616);
        v61 = *(v0 + 608);
        v62 = swift_slowAlloc();
        *v62 = 134217984;
        sub_1A5241134();
        sub_1A5241054();
        v64 = v63;
        v65 = *(v60 + 8);
        v65(v58, v61);
        v65(v59, v61);
        *(v62 + 4) = v64;
        _os_log_impl(&dword_1A3C1C000, v56, v57, "Placeholder Random Assets saved in diagnostic context in %f seconds", v62, 0xCu);
        MEMORY[0x1A590EEC0](v62, -1, -1);

        v65(v87, v61);
      }

      else
      {
        v70 = *(v0 + 632);
        v71 = *(v0 + 624);
        v72 = *(v0 + 616);
        v73 = *(v0 + 608);

        v74 = *(v72 + 8);
        v74(v71, v73);
        v74(v70, v73);
      }

      v51 = 0;
    }
  }

  else
  {
    v51 = *(v0 + 760);
  }

  *(v0 + 816) = v51;
  if ((sub_1A524CDC4() & 1) == 0)
  {
    v89 = *(v0 + 544);
    v77 = *(v0 + 208);
    v78 = MEMORY[0x1E69C1878];
    sub_1A452B8C0(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1A52FC9F0;
    sub_1A52469B4();
    sub_1A52469A4();
    *(v0 + 88) = v79;
    sub_1A452FE78(&qword_1EB124A50, MEMORY[0x1E69C1878], MEMORY[0x1E69C1880]);
    sub_1A452B8C0(0, &qword_1EB120C98, v78, MEMORY[0x1E69E62F8]);
    sub_1A452F9C4(&qword_1EB120C90, &qword_1EB120C98, v78);
    sub_1A524E224();
    *(v0 + 824) = sub_1A5245214();
    swift_allocObject();
    v80 = sub_1A52451F4();
    *(v0 + 832) = v80;
    *(v0 + 840) = sub_1A52451B4();
    v81 = sub_1A524CCB4();
    (*(*(v81 - 8) + 56))(v89, 1, 1, v81);
    *(v0 + 848) = sub_1A524CC54();

    v82 = sub_1A524CC44();
    v83 = swift_allocObject();
    v84 = MEMORY[0x1E69E85E0];
    v83[2] = v82;
    v83[3] = v84;
    v83[4] = v77;
    v83[5] = v39;
    v83[6] = v80;
    sub_1A3D4D930(0, 0, v89, &unk_1A5345780, v83);

    v85 = *v77 + 1184;
    *(v0 + 856) = *v85;
    *(v0 + 864) = v85 & 0xFFFFFFFFFFFFLL | 0x1A92000000000000;
    *(v0 + 872) = sub_1A524CC44();
    v22 = sub_1A524CBC4();
    v24 = v86;
    v25 = sub_1A45175FC;
LABEL_33:

    return MEMORY[0x1EEE6DFA0](v25, v22, v24);
  }

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_1A45172D4()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 648);

  sub_1A452CCF8(v1, v2);
  sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);

  return MEMORY[0x1EEE6DFA0](sub_1A4517388, 0, 0);
}

uint64_t sub_1A4517388()
{
  v1 = v0[91];
  v2 = v0[86];
  v3 = v0[85];
  (*(v0[83] + 8))(v0[84], v0[82]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45175FC()
{
  v1 = *(v0 + 856);

  *(v0 + 880) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4517680, 0, 0);
}

uint64_t sub_1A4517680(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[110];
  if (v5)
  {
    v6 = *v5 + 792;
    v4[111] = *v6;
    v4[112] = v6 & 0xFFFFFFFFFFFFLL | 0xDBC5000000000000;
    v4[113] = sub_1A524CC44();
    v7 = sub_1A524CBC4();
    v9 = v8;
    a1 = sub_1A4517740;
    a2 = v7;
    a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A4517740()
{
  v1 = *(v0 + 888);

  *(v0 + 912) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A45177CC, 0, 0);
}

uint64_t sub_1A45177CC(__n128 a1)
{
  if (*(v1 + 1631))
  {
    v2 = *(v1 + 1630);
    v3 = *(v1 + 176);
    (*(*(v1 + 520) + 104))(*(v1 + 536), *MEMORY[0x1E69C0EE8], *(v1 + 512), a1);
    v4 = sub_1A524CC44();
    if ((v2 & 1) != 0 || v3)
    {
      *(v1 + 1016) = v4;
      v5 = sub_1A524CBC4();
      v7 = v11;
      v8 = sub_1A45181B0;
    }

    else
    {
      *(v1 + 976) = v4;
      v5 = sub_1A524CBC4();
      v7 = v6;
      v8 = sub_1A4517F44;
    }
  }

  else
  {
    v9 = **(v1 + 208) + 1624;
    *(v1 + 920) = *v9;
    *(v1 + 928) = v9 & 0xFFFFFFFFFFFFLL | 0xA02E000000000000;
    *(v1 + 936) = sub_1A524CC44();
    v5 = sub_1A524CBC4();
    v7 = v10;
    v8 = sub_1A4517938;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A4517938()
{
  v1 = *(v0 + 920);

  *(v0 + 944) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A45179BC, 0, 0);
}

uint64_t sub_1A45179BC(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[118];
  if (v5)
  {
    v6 = *v5 + 272;
    v4[119] = *v6;
    v4[120] = v6 & 0xFFFFFFFFFFFFLL | 0xB986000000000000;
    v4[121] = sub_1A524CC44();
    v7 = sub_1A524CBC4();
    v9 = v8;
    a1 = sub_1A4517A7C;
    a2 = v7;
    a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A4517A7C()
{
  v1 = *(v0 + 952);

  v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4517B0C, 0, 0);
}

uint64_t sub_1A4517B0C()
{
  v1 = *(v0 + 480);
  if ((*(*(v0 + 496) + 48))(v1, 1, *(v0 + 488)) != 1)
  {
    sub_1A452FA8C(v1, *(v0 + 504), type metadata accessor for GenerativeStorySuggestion);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A452EFF0(v1, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v2 = *(v0 + 1630);
  v3 = *(v0 + 176);
  (*(*(v0 + 520) + 104))(*(v0 + 536), *MEMORY[0x1E69C0EE8], *(v0 + 512));
  v4 = sub_1A524CC44();
  if ((v2 & 1) != 0 || v3)
  {
    *(v0 + 1016) = v4;
    v5 = sub_1A524CBC4();
    v7 = v9;
    v8 = sub_1A45181B0;
  }

  else
  {
    *(v0 + 976) = v4;
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A4517F44;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A4517F44()
{
  v1 = *(v0 + 856);

  *(v0 + 984) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4517FC8, 0, 0);
}

uint64_t sub_1A4517FC8(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[123];
  if (v5)
  {
    v6 = *v5 + 1024;
    v4[124] = *v6;
    v4[125] = v6 & 0xFFFFFFFFFFFFLL | 0xEF74000000000000;
    v4[126] = sub_1A524CC44();
    v7 = sub_1A524CBC4();
    v9 = v8;
    a1 = sub_1A4518088;
    a2 = v7;
    a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A4518088()
{
  v1 = v0[124];
  v3 = v0[19];
  v2 = v0[20];

  v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4518124, 0, 0);
}

uint64_t sub_1A4518124(__n128 a1)
{
  *(v1 + 1016) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45181B0, v3, v2);
}

uint64_t sub_1A45181B0()
{
  v1 = *(v0 + 856);

  *(v0 + 1024) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4518234, 0, 0);
}

uint64_t sub_1A4518234(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[128];
  if (v5)
  {
    v6 = *v5 + 1016;
    v4[129] = *v6;
    v4[130] = v6 & 0xFFFFFFFFFFFFLL | 0x1F80000000000000;
    v4[131] = sub_1A524CC44();
    v7 = sub_1A524CBC4();
    v9 = v8;
    a1 = sub_1A45182F4;
    a2 = v7;
    a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A45182F4()
{
  v1 = v0[129];
  v3 = v0[19];
  v2 = v0[20];

  v0[132] = v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4518394, 0, 0);
}

uint64_t sub_1A45186D8()
{
  v1 = v0[26];

  KeyPath = swift_getKeyPath();
  v3 = *v1;
  v4 = *(*v1 + 2264);
  v0[135] = v4;
  v0[136] = (v3 + 2264) & 0xFFFFFFFFFFFFLL | 0x16EC000000000000;
  v4(KeyPath);

  v5 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__storyOrchestrator;
  v0[137] = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__storyOrchestrator;
  v0[138] = *(v1 + v5);

  return MEMORY[0x1EEE6DFA0](sub_1A45187C0, 0, 0);
}

uint64_t sub_1A45187C0()
{
  if (v0[138])
  {

    v0[141] = sub_1A524CC44();
    v1 = sub_1A524CBC4();
    v3 = v2;
    v4 = sub_1A4518D94;
  }

  else
  {
    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "Creating the StoryOrchestrator", v7, 2u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    v8 = v0[100];
    v25 = v0[93];
    v23 = v0[58];
    v21 = v0[59];
    v22 = v0[57];
    v24 = v0[56];
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v14 = v0[48];
    v15 = v0[49];

    v16 = sub_1A5244A74();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    sub_1A5244FB4();
    (*(v11 + 104))(v10, *MEMORY[0x1E69C1218], v12);
    (*(v15 + 104))(v13, *MEMORY[0x1E69C1108], v14);
    LOBYTE(v20) = 0;
    sub_1A5244DA4();
    [v8 shouldForceFallbackMemoryGeneration];
    [v8 simulateSlowCreation];
    sub_1A5244724();
    [objc_opt_self() enableStorytellingMomentFiltering];
    sub_1A5244AF4();
    (*(v22 + 16))(v23, v21, v24);
    sub_1A452FE78(&qword_1EB125390, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53453A8);
    sub_1A52469D4();
    sub_1A5244B54();
    swift_allocObject();
    v17 = v25;

    v0[139] = sub_1A5244B14();
    v0[140] = sub_1A524CC44();
    v1 = sub_1A524CBC4();
    v3 = v18;
    v4 = sub_1A4518BAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1A4518BAC()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 208);

  KeyPath = swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(*v2 + 2272);

  v5(KeyPath, sub_1A452EFBC, v4, MEMORY[0x1E69E7CA8] + 8);

  return MEMORY[0x1EEE6DFA0](sub_1A4518CD8, 0, 0);
}

uint64_t sub_1A4518CD8()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];

  (*(v3 + 8))(v1, v2);
  v0[141] = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4518D94, v5, v4);
}

uint64_t sub_1A4518D94()
{
  v1 = v0[137];
  v2 = v0[135];
  v3 = v0[26];

  swift_getKeyPath();
  v2();

  v0[142] = *(v3 + v1);

  return MEMORY[0x1EEE6DFA0](sub_1A4518E48, 0, 0);
}

uint64_t sub_1A4518E48(uint64_t a1)
{
  if (v1[142])
  {
    if ((sub_1A524CDC4() & 1) == 0)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v2 = v1[100];
    (*(v1[65] + 8))(v1[67], v1[64]);
  }

  else
  {

    v3 = sub_1A5246F04();
    v4 = sub_1A524D244();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[100];
    v7 = v1[67];
    v8 = v1[65];
    v13 = v1[64];
    if (v5)
    {
      v12 = v1[67];
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Failed to create StoryOrchestrator", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);

      (*(v8 + 8))(v12, v13);
    }

    else
    {

      (*(v8 + 8))(v7, v13);
    }
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1A45194FC()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {

    v3 = sub_1A451AB10;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_1A4519634;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A4519634(__n128 a1)
{
  v2 = v1[26];
  v1[147] = v1[12];
  v3 = *v2 + 1960;
  v1[148] = *v3;
  v1[149] = v3 & 0xFFFFFFFFFFFFLL | 0xCB2A000000000000;
  v1[150] = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45196F4, v5, v4);
}

uint64_t sub_1A45196F4()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[101];

  v1(v2, 0, 0xE000000000000000, v3);
  v4 = swift_task_alloc();
  v0[151] = v4;
  *v4 = v0;
  v4[1] = sub_1A45197C4;

  return sub_1A451ECDC();
}

uint64_t sub_1A45197C4(char a1)
{
  *(*v1 + 1632) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A45198C4, 0, 0);
}

uint64_t sub_1A45198C4(double a1)
{
  if (*(v1 + 1632) == 1)
  {
    v2 = *(v1 + 336);
    v3 = *(v1 + 304);
    v4 = *(v1 + 312);
    sub_1A452FAF4(*(v1 + 344), v2, &qword_1EB120210, sub_1A452ED20);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1A452EFF0(*(v1 + 336), &qword_1EB120210, sub_1A452ED20);
      *(v1 + 1224) = sub_1A524CC44();
      v5 = sub_1A524CBC4();
      v7 = v6;
      v8 = sub_1A4519E5C;
    }

    else
    {
      sub_1A452FA8C(*(v1 + 336), *(v1 + 320), sub_1A452ED20);
      *(v1 + 1216) = sub_1A524CC44();
      v5 = sub_1A524CBC4();
      v7 = v16;
      v8 = sub_1A4519D28;
    }

    return MEMORY[0x1EEE6DFA0](v8, v5, v7);
  }

  else
  {
    v21 = *(v1 + 1176);
    v9 = *(v1 + 1144);
    v10 = *(v1 + 800);
    v11 = *(v1 + 520);
    v18 = *(v1 + 512);
    v12 = *(v1 + 360);
    v17 = *(v1 + 368);
    v13 = *(v1 + 352);
    v19 = *(v1 + 536);
    v20 = *(v1 + 344);

    (*(v12 + 8))(v17, v13);
    (*(v11 + 8))(v19, v18);
    sub_1A452EFF0(v20, &qword_1EB120210, sub_1A452ED20);

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_1A4519D28()
{
  v1 = v0[40];
  v3 = v0[19];
  v2 = v0[20];

  sub_1A4521AF4(v1, v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4519DB4, 0, 0);
}

uint64_t sub_1A4519DB4()
{
  sub_1A452C768(*(v0 + 320), sub_1A452ED20);
  *(v0 + 1224) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4519E5C, v2, v1);
}

uint64_t sub_1A4519E5C()
{
  v1 = *(v0 + 856);

  *(v0 + 1232) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4519EE0, 0, 0);
}

uint64_t sub_1A4519EE0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[154];
  if (v4)
  {

    v5 = *v4 + 976;
    v3[155] = *v5;
    v3[156] = v5 & 0xFFFFFFFFFFFFLL | 0x8E3C000000000000;
    v3[157] = sub_1A524CC44();
    v6 = sub_1A524CBC4();
    v8 = v7;
    a1 = sub_1A4519FA8;
    a2 = v6;
    a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A4519FA8()
{
  v1 = *(v0 + 1240);

  v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A451A030, 0, 0);
}

uint64_t sub_1A451A030()
{
  v1 = v0[143];
  v2 = v0[100];
  v10 = v0[67];
  v3 = v0[65];
  v9 = v0[64];
  v4 = v0[45];
  v8 = v0[46];
  v5 = v0[44];
  v11 = v0[43];
  v12 = v0[147];

  (*(v4 + 8))(v8, v5);
  (*(v3 + 8))(v10, v9);
  sub_1A452EFF0(v11, &qword_1EB120210, sub_1A452ED20);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A451A338()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 648);

  sub_1A452CCF8(v1, v2);
  sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);

  return MEMORY[0x1EEE6DFA0](sub_1A451A3EC, 0, 0);
}

uint64_t sub_1A451A3EC()
{
  (*(v0 + 784))(*(v0 + 728), *(v0 + 680));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A451A634()
{
  v1 = v0[95];
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[95];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "Error checking MC availability before generation, transitioning to error state: %@", v6, 0xCu);
    sub_1A3CB65E4(v7);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  v10 = v0[81];

  sub_1A452C7C8();
  v0[160] = swift_allocError();
  *v11 = xmmword_1A5344DC0;
  v12 = sub_1A5244B24();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1A524CC54();
  v0[161] = sub_1A524CC44();
  v14 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451A820, v14, v13);
}

uint64_t sub_1A451A820()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 648);

  sub_1A452CCF8(v1, v2);
  sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);

  return MEMORY[0x1EEE6DFA0](sub_1A451A8D4, 0, 0);
}

uint64_t sub_1A451A8D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A451AB10()
{
  v1 = *(v0 + 1168);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1A452EFF0(v5, &qword_1EB120210, sub_1A452ED20);

  *(v0 + 104) = v1;
  v6 = v1;
  *(v0 + 1296) = sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 1168);
  if (v7)
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);

    (*(v12 + 32))(v9, v10, v11);
    if ((sub_1A524CDC4() & 1) == 0)
    {
      v26 = *(v0 + 280);
      v27 = *(v0 + 288);
      v28 = *(v0 + 264);
      v29 = *(v0 + 272);
      v30 = *(v29 + 16);
      *(v0 + 1304) = v30;
      *(v0 + 1312) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v30(v26, v27, v28);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v13 = *(v0 + 800);
    v14 = *(v0 + 520);
    v65 = *(v0 + 512);
    v66 = *(v0 + 536);
    v15 = *(v0 + 288);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v66, v65);

    goto LABEL_16;
  }

  *(v0 + 112) = v8;
  v18 = v8;
  if (swift_dynamicCast())
  {
    v19 = (*(*(v0 + 248) + 88))(*(v0 + 256), *(v0 + 240));
    *(v0 + 1624) = v19;
    if (v19 == *MEMORY[0x1E69C1160])
    {
      v21 = *(v0 + 248);
      v20 = *(v0 + 256);
      v22 = *(v0 + 240);

      (*(v21 + 96))(v20, v22);
      v23 = *v20;
      *(v0 + 1408) = *v20;
      v24 = *(v20 + 8);
      *(v0 + 1416) = v24;
      *(v0 + 1424) = *(v20 + 16);
      if (sub_1A524CDC4())
      {
        v25 = *(v0 + 800);
        (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

LABEL_16:

        v45 = *(v0 + 8);

        return v45();
      }

      v56 = *(v0 + 208);
      sub_1A524E404();

      v57 = [v23 description];
      v58 = sub_1A524C674();
      v60 = v59;

      MEMORY[0x1A5907B60](v58, v60);

      MEMORY[0x1A5907B60](10, 0xE100000000000000);
      v61 = sub_1A52444C4();
      v62 = MEMORY[0x1A5907DB0](v24, v61);
      MEMORY[0x1A5907B60](v62);

      *(v0 + 1432) = 0xD000000000000015;
      *(v0 + 1440) = 0x80000001A53DB1C0;
      v63 = *v56 + 1960;
      *(v0 + 1448) = *v63;
      *(v0 + 1456) = v63 & 0xFFFFFFFFFFFFLL | 0xCB2A000000000000;
      *(v0 + 1464) = sub_1A524CC44();
      v39 = sub_1A524CBC4();
      v41 = v64;
      v42 = sub_1A451C120;
      goto LABEL_21;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  }

  v31 = *(v0 + 1168);

  *(v0 + 120) = v31;
  v32 = v31;
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 224) + 88))(*(v0 + 232), *(v0 + 216)) == *MEMORY[0x1E69C1100])
    {
      v33 = *(v0 + 832);
      v34 = *(v0 + 808);
      v35 = *(v0 + 208);
      v37 = *(v0 + 152);
      v36 = *(v0 + 160);

      sub_1A451E890(v33, v34);
      sub_1A524E404();

      MEMORY[0x1A5907B60](v37, v36);
      MEMORY[0x1A5907B60](96, 0xE100000000000000);
      *(v0 + 1520) = 0xD000000000000021;
      *(v0 + 1528) = 0x80000001A53DB190;
      v38 = *v35 + 1960;
      *(v0 + 1536) = *v38;
      *(v0 + 1544) = v38 & 0xFFFFFFFFFFFFLL | 0xCB2A000000000000;
      *(v0 + 1552) = sub_1A524CC44();
      v39 = sub_1A524CBC4();
      v41 = v40;
      v42 = sub_1A451CF3C;
      goto LABEL_21;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  }

  if (sub_1A524CDC4())
  {
    v43 = *(v0 + 1168);
    v44 = *(v0 + 800);
    (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

    goto LABEL_16;
  }

  v47 = *(v0 + 1168);
  v48 = *(v0 + 208);
  v50 = *(v0 + 152);
  v49 = *(v0 + 160);
  v51 = v47;
  sub_1A524E404();

  MEMORY[0x1A5907B60](v50, v49);
  MEMORY[0x1A5907B60](2112096, 0xE300000000000000);
  *(v0 + 128) = v47;
  v52 = v47;
  v53 = sub_1A524C714();
  MEMORY[0x1A5907B60](v53);

  *(v0 + 1568) = 0xD000000000000022;
  *(v0 + 1576) = 0x80000001A53DB160;
  v54 = *v48 + 1960;
  *(v0 + 1584) = *v54;
  *(v0 + 1592) = v54 & 0xFFFFFFFFFFFFLL | 0xCB2A000000000000;
  *(v0 + 1600) = sub_1A524CC44();
  v39 = sub_1A524CBC4();
  v41 = v55;
  v42 = sub_1A451D504;
LABEL_21:

  return MEMORY[0x1EEE6DFA0](v42, v39, v41);
}

uint64_t sub_1A451B7E8()
{
  v1 = v0[170];
  v2 = v0[169];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[101];

  v1(v4, v3, v2, v5);

  v6 = swift_task_alloc();
  v0[173] = v6;
  *v6 = v0;
  v6[1] = sub_1A451B8D8;

  return sub_1A451ECDC();
}

uint64_t sub_1A451B8D8(char a1)
{
  *(*v1 + 1633) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A451B9D8, 0, 0);
}

uint64_t sub_1A451B9D8()
{
  if (*(v0 + 1633) == 1)
  {
    v1 = *(v0 + 1304);
    v2 = *(v0 + 648);
    v3 = *(v0 + 288);
    v4 = *(v0 + 264);
    *(v0 + 1392) = swift_allocError();
    v1(v5, v3, v4);
    v6 = sub_1A5244B24();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    *(v0 + 1400) = sub_1A524CC44();
    v8 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A451BDA0, v8, v7);
  }

  else
  {
    v9 = *(v0 + 800);
    v16 = *(v0 + 536);
    v17 = *(v0 + 1320);
    v10 = *(v0 + 520);
    v15 = *(v0 + 512);
    v11 = *(v0 + 288);
    v12 = *(v0 + 264);

    v17(v11, v12);
    (*(v10 + 8))(v16, v15);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1A451BDA0()
{
  v1 = *(v0 + 1392);
  v2 = *(v0 + 648);

  sub_1A452CCF8(v1, v2);
  sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);

  return MEMORY[0x1EEE6DFA0](sub_1A451BE54, 0, 0);
}

uint64_t sub_1A451BE54()
{
  v1 = *(v0 + 800);
  v8 = *(v0 + 536);
  v9 = *(v0 + 1320);
  v2 = *(v0 + 520);
  v7 = *(v0 + 512);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);

  v9(v3, v4);
  (*(v2 + 8))(v8, v7);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A451C120()
{
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[179];
  v4 = v0[101];

  v1(0, v3, v2, v4);

  v5 = swift_task_alloc();
  v0[184] = v5;
  *v5 = v0;
  v5[1] = sub_1A451C1FC;

  return sub_1A451ECDC();
}

uint64_t sub_1A451C1FC(char a1)
{
  *(*v1 + 1634) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A451C2FC, 0, 0);
}

uint64_t sub_1A451C2FC()
{
  if (*(v0 + 1634) == 1)
  {
    v1 = [*(v0 + 1408) string];
    v2 = sub_1A524C674();
    v4 = v3;

    *(v0 + 1480) = v2;
    *(v0 + 1488) = v4;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = *(v0 + 1408);
  v6 = *(v0 + 800);
  (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A451C678()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);

  *(v0 + 1635) = sub_1A4525B60(v2, v1, v4, v3) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A451C730, 0, 0);
}

uint64_t sub_1A451C730()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1416);
  if (*(v0 + 1635) == 1)
  {

    v3 = sub_1A5246F04();
    v4 = sub_1A524D264();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 1408);
    v7 = *(v0 + 800);
    if (v5)
    {
      v21 = *(v0 + 1408);
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Successfully converted ambiguousPrompt error into disambiguation flow", v8, 2u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v9 = *(v0 + 1408);
    v10 = *(v0 + 1624);
    v11 = *(v0 + 648);
    v12 = *(v0 + 240);
    v13 = *(v0 + 248);
    sub_1A452FE78(&qword_1EB13CD50, MEMORY[0x1E69C1188], MEMORY[0x1E69C1190]);
    *(v0 + 1504) = swift_allocError();
    *v14 = v9;
    v14[1] = v2;
    v14[2] = v1;
    (*(v13 + 104))(v14, v10, v12);
    v15 = sub_1A5244B24();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = v9;
    *(v0 + 1512) = sub_1A524CC44();
    v18 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A451CBE8, v18, v17);
  }
}

uint64_t sub_1A451CBE8()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 648);

  sub_1A452CCF8(v1, v2);
  sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);

  return MEMORY[0x1EEE6DFA0](sub_1A451CC9C, 0, 0);
}

uint64_t sub_1A451CC9C()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 800);

  (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A451CF3C()
{
  v1 = v0[192];
  v2 = v0[191];
  v3 = v0[190];
  v4 = v0[101];

  v1(0, v3, v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A451CFE8, 0, 0);
}

uint64_t sub_1A451D168()
{

  return MEMORY[0x1EEE6DFA0](sub_1A451D264, 0, 0);
}

uint64_t sub_1A451D264()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 536);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A451D504()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[146];
  v5 = v0[101];

  v1(v4, v3, v2, v5);

  return MEMORY[0x1EEE6DFA0](sub_1A451D5C4, 0, 0);
}

uint64_t sub_1A451D7B8(char a1)
{
  *(*v1 + 1636) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A451D8B8, 0, 0);
}

uint64_t sub_1A451D8B8()
{
  if (*(v0 + 1636) == 1)
  {
    v1 = *(v0 + 648);
    v2 = sub_1A5244B24();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    *(v0 + 1616) = sub_1A524CC44();
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A451DC1C, v4, v3);
  }

  else
  {
    v5 = *(v0 + 1168);
    v6 = *(v0 + 800);
    (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1A451DC1C()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 648);

  sub_1A452CCF8(v1, v2);
  sub_1A452EFF0(v2, &qword_1EB124C50, MEMORY[0x1E69C1138]);

  return MEMORY[0x1EEE6DFA0](sub_1A451DCC8, 0, 0);
}

uint64_t sub_1A451DCC8()
{
  v1 = v0[146];
  v2 = v0[100];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A451DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451E008, v8, v7);
}

uint64_t sub_1A451E008()
{
  v1 = *(v0 + 16);

  v2 = *(*v1 + 1096);

  v2(v3);
  v4 = *(*v1 + 1144);

  v4(v5);
  KeyPath = swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = 1;
  (*(*v1 + 2272))(KeyPath, sub_1A45303A8, v7, MEMORY[0x1E69E7CA8] + 8);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A451E194(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a3;
  v33 = a4;
  sub_1A452ED20(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - v18;
  result = sub_1A524CDC4();
  if ((result & 1) == 0)
  {
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v21 = sub_1A524CCB4();
    v22 = *(*(v21 - 8) + 56);
    v22(v19, 1, 1, v21);
    sub_1A524CC54();

    v34 = a1;
    v23 = sub_1A524CC44();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = a2;
    sub_1A3D4D930(0, 0, v19, &unk_1A5345790, v24);

    sub_1A452EDA0(v34, v16, sub_1A452ED20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v32;
      *v32 = *v16;
    }

    else
    {
      sub_1A452C768(v16, sub_1A452ED20);
    }

    sub_1A451E890(v33, v28);
    v22(v19, 1, 1, v21);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A451E518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451E5B0, v6, v5);
}

uint64_t sub_1A451E5B0()
{
  v1 = *(v0 + 16);

  KeyPath = swift_getKeyPath();
  (*(*v1 + 2264))(KeyPath);

  v3 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentAutoCancellationTask;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentAutoCancellationTask) && (sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]), , v4 = MEMORY[0x1E69E7CA8], sub_1A524CD94(), , *(v1 + v3)))
  {
    v5 = *(v0 + 16);
    v6 = swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 0;
    (*(*v5 + 2272))(v6, sub_1A4530464, v7, v4 + 8);
  }

  else
  {
    *(v1 + v3) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A451E774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451E810, v8, v7);
}

void sub_1A451E890(uint64_t a1, uint64_t a2)
{
  v20[1] = a1;
  v4 = sub_1A5240CB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (a2)
  {
    v21 = v18;
    v20[0] = v2;
    sub_1A5245504();
    (*(v9 + 32))(v17, v14, v8);
    if ((PFOSVariantHasInternalDiagnostics() & 1) != 0 && ([v21 shouldForceDiagnosticAsSeedOrFCS] & 1) == 0)
    {
      v22 = 0xD000000000000016;
      v23 = 0x80000001A53DB140;
      (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
      sub_1A3D5F9DC();
      sub_1A5240E44();
      (*(v5 + 8))(v7, v4);
      sub_1A52451C4();

      v19 = *(v9 + 8);
      v19(v11, v8);
      v19(v17, v8);
    }

    else
    {
      (*(v9 + 8))(v17, v8);
    }
  }

  else
  {
  }
}

uint64_t sub_1A451ECDC()
{
  *(v1 + 48) = v0;
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A451ED9C, 0, 0);
}

uint64_t sub_1A451ED9C()
{
  v1 = **(v0 + 48) + 584;
  *(v0 + 64) = *v1;
  *(v0 + 72) = v1 & 0xFFFFFFFFFFFFLL | 0x86AB000000000000;
  *(v0 + 80) = sub_1A524CC54();
  *(v0 + 88) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451EE5C, v3, v2);
}

uint64_t sub_1A451EE5C()
{
  v1 = *(v0 + 64);

  *(v0 + 240) = v1(v2) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A451EEE0, 0, 0);
}

uint64_t sub_1A451EEE0(__n128 a1)
{
  v2 = **(v1 + 48) + 1184;
  *(v1 + 96) = *v2;
  *(v1 + 104) = v2 & 0xFFFFFFFFFFFFLL | 0x1A92000000000000;
  *(v1 + 112) = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A451EF94, v4, v3);
}

uint64_t sub_1A451EF94()
{
  v1 = *(v0 + 96);

  *(v0 + 120) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A451F014, 0, 0);
}

uint64_t sub_1A451F014(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[15];
  if (v5)
  {
    v6 = *v5 + 656;
    v4[16] = *v6;
    v4[17] = v6 & 0xFFFFFFFFFFFFLL | 0xAFEC000000000000;
    v4[18] = sub_1A524CC44();
    v7 = sub_1A524CBC4();
    v9 = v8;
    a1 = sub_1A451F0D0;
    a2 = v7;
    a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A451F0D0()
{
  v1 = *(v0 + 128);

  *(v0 + 241) = v1(v2) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A451F158, 0, 0);
}

uint64_t sub_1A451F158(uint64_t a1)
{
  v2 = *(v1 + 241);
  v3 = *(v1 + 240);
  *(v1 + 152) = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D264();
  v6 = os_log_type_enabled(v4, v5);
  if ((v3 & 1) != 0 || v2)
  {
    if (v6)
    {
      v10 = *(v1 + 241);
      v11 = *(v1 + 240);
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = v11;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v10;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "Awaiting keyboard dismissal: %{BOOL}d or picker dismissal: %{BOOL}d", v12, 0xEu);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    *(v1 + 160) = sub_1A524CC44();
    v14 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A451F338, v14, v13);
  }

  else
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "Nothing blocking generation completion, immediately proceeding with state change", v7, 2u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    v8 = *(v1 + 8);

    return v8(1);
  }
}

uint64_t sub_1A451F338()
{
  v1 = *(v0 + 96);

  *(v0 + 168) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A451F3B8, 0, 0);
}

uint64_t sub_1A451F3B8(uint64_t (*a1)(), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4[21];
  if (v5)
  {
    v6 = *v5 + 744;
    v4[22] = *v6;
    v4[23] = v6 & 0xFFFFFFFFFFFFLL | 0x422C000000000000;
    v4[24] = sub_1A524CC44();
    v7 = sub_1A524CBC4();
    v9 = v8;
    a1 = sub_1A451F474;
    a2 = v7;
    a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A451F474()
{
  v1 = v0[22];

  v3 = v1(v2);
  v5 = v4;
  v0[2] = v3;
  v0[3] = v4;
  v0[4] = v6;
  v0[5] = v7;

  v0[25] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A451F504, 0, 0);
}

uint64_t sub_1A451F504()
{
  if (v0[25])
  {
    v1 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  v0[26] = v1;
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1A451F5FC;
  v3 = v0[6];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, 0, 0, 0xD000000000000024, 0x80000001A53DB110, sub_1A452EE08, v3, v4);
}

uint64_t sub_1A451F5FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A451F6F8, 0, 0);
}

uint64_t sub_1A451F6F8(uint64_t a1, __n128 a2)
{
  v17 = v2;
  if (*(v2 + 241) == 1)
  {
    *(v2 + 224) = sub_1A524CC44();
    v3 = sub_1A524CBC4();
    v5 = v4;
    v6 = sub_1A451F938;
LABEL_13:

    return MEMORY[0x1EEE6DFA0](v6, v3, v5);
  }

  v7 = sub_1A524CDC4();
  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136315138;
    if (v7)
    {
      v11 = 0x676E6974726F6261;
    }

    else
    {
      v11 = 0x69646565636F7270;
    }

    if (v7)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0xEA0000000000676ELL;
    }

    sub_1A3C2EF94(v11, v12, &v16);
  }

  if (v7)
  {
    *(v2 + 232) = sub_1A524CC44();
    v3 = sub_1A524CBC4();
    v5 = v13;
    v6 = sub_1A451FBC4;
    goto LABEL_13;
  }

  v14 = *(v2 + 8);

  return v14(1);
}

uint64_t sub_1A451F938()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  *(v0 + 242) = sub_1A45201C4(v1, v2 == 0) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A451F9C8, 0, 0);
}

uint64_t sub_1A451F9C8(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 242);
  v3 = sub_1A524CDC4() | v2;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D264();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315138;
    if (v3)
    {
      v7 = 0x676E6974726F6261;
    }

    else
    {
      v7 = 0x69646565636F7270;
    }

    if (v3)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xEA0000000000676ELL;
    }

    sub_1A3C2EF94(v7, v8, &v13);
  }

  if (v3)
  {
    *(v1 + 232) = sub_1A524CC44();
    v10 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A451FBC4, v10, v9);
  }

  else
  {

    v11 = *(v1 + 8);

    return v11(1);
  }
}

uint64_t sub_1A451FBC4()
{
  v1 = v0[6];
  v2 = v0[7];

  sub_1A524CC94();
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_pendingMemoryHandler);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;

  sub_1A3DCD53C(0, 0, v2, &unk_1A5345758, v5);

  sub_1A452EFF0(v2, &qword_1EB12B270, MEMORY[0x1E69E85F0]);

  v6 = v0[1];

  return v6(0);
}

double sub_1A451FD08(uint64_t a1, uint64_t a2)
{
  sub_1A3F6D768();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  sub_1A524CC54();

  v13 = sub_1A524CC44();
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = a2;
  (*(v6 + 32))(&v15[v14], v8, v5);
  sub_1A3D4D930(0, 0, v11, &unk_1A5345768, v15);

  return result;
}

uint64_t sub_1A451FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A452B8C0(0, &qword_1EB120BA0, sub_1A3F6D768, MEMORY[0x1E69E6720]);
  v5[4] = swift_task_alloc();
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A452001C, v7, v6);
}

uint64_t sub_1A452001C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  sub_1A3F6D768();
  v5 = v4;
  v6 = *(v4 - 8);
  (*(v6 + 16))(v1, v3, v4);
  (*(v6 + 56))(v1, 0, 1, v5);
  KeyPath = swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  (*(*v2 + 2272))(KeyPath, sub_1A452EEE8, v8, MEMORY[0x1E69E7CA8] + 8);

  sub_1A452EFF0(v1, &qword_1EB120BA0, sub_1A3F6D768);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A45201C4(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  result = (*(*v2 + 1184))();
  if (!result)
  {
    __break(1u);
    return result;
  }

  (*(*result + 744))(result);
  v6 = v5;
  v8 = v7;

  if (!v6)
  {
    return 0;
  }

  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v8;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Disambiguation version changed: %ld -> %ld", v11, 0x16u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  return v8 != a1;
}

uint64_t sub_1A4520328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 120) + **(*a4 + 120));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A3D60150;

  return v7();
}

double sub_1A452043C()
{
  v1 = sub_1A5244854();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_generationEntryPoint;
  v12 = *MEMORY[0x1E69C0FF0];
  v21 = *(v2 + 104);
  v21(&v19 - v9, v12, v1, v8);
  sub_1A452FE78(&qword_1EB124C90, MEMORY[0x1E69C1030], MEMORY[0x1E69C1040]);
  v20 = v0;
  v22 = v11;
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v25 == v23 && v26 == v24)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A524EAB4();
  }

  v14 = *(v2 + 8);
  v14(v10, v1);

  if (v13)
  {
    sub_1A40365A4();
    goto LABEL_12;
  }

  (v21)(v6, *MEMORY[0x1E69C1018], v1);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v25 == v23 && v26 == v24)
  {
    v14(v6, v1);

LABEL_11:
    sub_1A4036580();
    goto LABEL_12;
  }

  v15 = sub_1A524EAB4();
  v14(v6, v1);

  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v19;
  (v21)(v19, *MEMORY[0x1E69C1008], v1);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v25 == v23 && v26 == v24)
  {
    v14(v16, v1);

LABEL_18:
    sub_1A40365C8();
LABEL_12:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v17 = sub_1A524EAB4();
  v14(v16, v1);

  if (v17)
  {
    goto LABEL_18;
  }

  return result;
}

double sub_1A45208A8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16[8] = a2;
  v7 = sub_1A5244E34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5241144();
  v16[5] = *(v11 - 8);
  v16[6] = v11;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  if ((*(*v4 + 1136))(v12))
  {
    v16[3] = a3;
    v16[4] = v10;
    v16[2] = v7;
    if (a4)
    {
      sub_1A52454C4();
      sub_1A52447D4();

      sub_1A5244864();
    }

    v16[1] = v8;
    v14 = sub_1A5245204();
    v16[7] = a4;
    v16[11] = v14;
    v16[12] = v15;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A4520FBC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  sub_1A452B8C0(0, &qword_1EB120BA0, sub_1A3F6D768, v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1A5244B24();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69C1120], v9, v11);
  (*(*v1 + 1976))(v13);
  v14 = (*(v10 + 8))(v13, v9);
  result = (*(*v1 + 1624))(v14);
  if (result)
  {
    (*(*result + 224))(0, 0xE000000000000000);

    KeyPath = swift_getKeyPath();
    (*(*v1 + 2264))(KeyPath);

    v17 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__blockGenerationCompletionContinuation;
    swift_beginAccess();
    sub_1A452FAF4(v1 + v17, v8, &qword_1EB120BA0, sub_1A3F6D768);
    sub_1A3F6D768();
    LODWORD(v17) = (*(*(v18 - 8) + 48))(v8, 1, v18);
    sub_1A452EFF0(v8, &qword_1EB120BA0, sub_1A3F6D768);
    if (v17 == 1)
    {
      sub_1A524CC94();
      v19 = sub_1A524CCB4();
      (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
      v20 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_pendingMemoryHandler);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v20;

      sub_1A3DCD53C(0, 0, v5, &unk_1A5345220, v21);

      return sub_1A452EFF0(v5, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
    }

    else
    {
      return sub_1A4505F68();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4521410(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_1A5244B24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  KeyPath = swift_getKeyPath();
  v13 = (*v1 + 2264);
  v14 = *v13;
  (*v13)(KeyPath);

  v15 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentGenerationTask;
  v16 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentGenerationTask);
  if (v16)
  {
    v44 = v14;
    v46 = v4;
    v17 = *(*v1 + 1272);

    if (v17(v18))
    {
    }

    else
    {
      v39[1] = v13;
      v43 = v16;
      v19 = v46;
      v21 = v46 + 16;
      v20 = *(v46 + 16);
      v20(v11, v47, v3);
      v22 = sub_1A5246F04();
      v23 = sub_1A524D264();
      v24 = os_log_type_enabled(v22, v23);
      v41 = v20;
      v42 = v21;
      if (v24)
      {
        v25 = v3;
        v26 = swift_slowAlloc();
        v39[0] = swift_slowAlloc();
        v48 = v39[0];
        *v26 = 136315138;
        v20(v8, v11, v25);
        v27 = sub_1A524C714();
        v29 = v28;
        v40 = *(v46 + 8);
        v40(v11, v25);
        sub_1A3C2EF94(v27, v29, &v48);
      }

      v40 = *(v19 + 8);
      v40(v11, v3);
      swift_getKeyPath();
      v44();

      if (*(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__storyOrchestrator))
      {

        sub_1A5244AA4();
      }

      sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
      sub_1A524CD94();
      if (*(v2 + v15))
      {
        v30 = swift_getKeyPath();
        v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
        v39[-2] = v2;
        v39[-1] = 0;
        (*(*v2 + 2272))(v31);
      }

      v32 = v41;
      swift_getKeyPath();
      v44();

      v33 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentAutoCancellationTask;
      if (*(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentAutoCancellationTask) && (, sub_1A524CD94(), , *(v2 + v33)))
      {
        v34 = swift_getKeyPath();
        v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v34);
        v39[-2] = v2;
        v39[-1] = 0;
        (*(*v2 + 2272))(v35);
      }

      else
      {
        *(v2 + v33) = 0;
      }

      v36 = v45;
      v32(v45, v47, v3);
      if ((*(v46 + 88))(v36, v3) == *MEMORY[0x1E69C1120])
      {
        v40(v36, v3);
        v37 = swift_getKeyPath();
        v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
        v39[-2] = v2;
        v39[-1] = 4;
        (*(*v2 + 2272))(v38);
      }

      else
      {

        v40(v36, v3);
      }
    }
  }
}

void sub_1A4521AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v52 = a3;
  v6 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v45 - v8;
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], v6);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v45 - v10;
  v53 = sub_1A5246E54();
  v11 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = sub_1A5244664();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  sub_1A452ED20(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452EDA0(a1, v25, sub_1A452ED20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A5246E84();
    sub_1A5246E24();
    v26 = sub_1A5246E84();
    v27 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, v27, v29, "Handle Story Result (Failure)", "", v28, 2u);
      MEMORY[0x1A590EEC0](v28, -1, -1);
    }

    (*(v11 + 8))(v13, v53);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v30 = *(v18 + 32);
  v46 = v22;
  v49 = v17;
  v30(v22, v25, v17);
  sub_1A5246E84();
  sub_1A5246E24();
  v50 = v4;
  v31 = sub_1A5246E84();
  v32 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v31, v32, v34, "Handle Story Result", "", v33, 2u);
    MEMORY[0x1A590EEC0](v33, -1, -1);
  }

  (*(v11 + 8))(v16, v53);
  if ((sub_1A524CDC4() & 1) == 0)
  {
    (*(v18 + 16))(v47, v46, v49);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v35 = v50;
  v36 = sub_1A5246F04();
  v37 = sub_1A524D264();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v46;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1A3C1C000, v36, v37, "User cancelled generation, not proceeding with generated memory", v40, 2u);
    MEMORY[0x1A590EEC0](v40, -1, -1);
  }

  v41 = v48;
  sub_1A524CC94();
  v42 = sub_1A524CCB4();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = *&v35[OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_pendingMemoryHandler];
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v43;

  sub_1A3DCD53C(0, 0, v41, &unk_1A5345750, v44);

  sub_1A452EFF0(v41, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  (*(v18 + 8))(v39, v49);
}

uint64_t sub_1A4522548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A52449C4();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v37 = type metadata accessor for GenerativeStorySuggestion(0);
  v13 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5244664();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A45236A4(a1, a2, a3);
  if (v19 == 2)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v16 + 16))(&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
    v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    (*(v16 + 32))(v22 + v21, v18, v15);
    v23 = *(*v4 + 2000);

    v23(a1, sub_1A452EC80, v22);
  }

  v24 = (*v4 + 1624);
  v25 = *v24;
  result = (*v24)(v19);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  (*(*result + 272))(result);

  if ((*(v13 + 48))(v12, 1, v37) == 1)
  {
    return sub_1A452EFF0(v12, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  }

  v27 = v36;
  sub_1A452FA8C(v12, v36, type metadata accessor for GenerativeStorySuggestion);
  if (!sub_1A417DA90())
  {
    return sub_1A452C768(v27, type metadata accessor for GenerativeStorySuggestion);
  }

  result = v25();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = result;
  v30 = v33;
  v29 = v34;
  v31 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x1E69C1078], v35);
  (*(*v28 + 544))(v27, v30);

  (*(v29 + 8))(v30, v31);
  return sub_1A452C768(v27, type metadata accessor for GenerativeStorySuggestion);
}

void sub_1A4522A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], v7);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_1A5244634();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    sub_1A524CC74();
    v18 = sub_1A524CCB4();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    v19 = *(v4 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_pendingMemoryHandler);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v19;
    v20[5] = v16;
    v20[6] = v17;
    v20[7] = a2;
    v20[8] = a3;

    sub_1A3DCD53C(0, 0, v13, &unk_1A53452A8, v20);

    sub_1A452EFF0(v13, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1A452C7C8();
    v21 = swift_allocError();
    *v22 = xmmword_1A5344DD0;
    v23 = sub_1A5244B24();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    sub_1A452CCF8(v21, v10);
    sub_1A452EFF0(v10, &qword_1EB124C50, MEMORY[0x1E69C1138]);
  }
}

uint64_t sub_1A4522D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v13 = (*(*a4 + 112) + **(*a4 + 112));
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1A4522E3C;

  return v13(a5, a6);
}

uint64_t sub_1A4522E3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4522F38, 0, 0);
}

uint64_t sub_1A4522F38()
{
  sub_1A524CC54();
  *(v0 + 40) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4522FCC, v2, v1);
}

uint64_t sub_1A4522FCC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A45230EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(char *))
{
  sub_1A452B8C0(0, a5, a6, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1A452FAF4(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

void sub_1A45231B0(uint64_t a1)
{
  v12 = a1;
  v2 = sub_1A5244664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v14 = v1;
  v15 = 3;
  v7 = *(*v1 + 2272);
  (v7)(KeyPath, sub_1A45303A8, v13, MEMORY[0x1E69E7CA8] + 8);

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentGenerationTask))
  {
    v8 = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](v8);
    *(&v11 - 2) = v1;
    *(&v11 - 1) = 0;
    v7(v9);
  }

  (*(v3 + 16))(v5, v12, v2);
  v10 = swift_getKeyPath();
  (*(*v1 + 2264))(v10);

  v16 = v1;
  swift_getKeyPath();
  sub_1A452FE78(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel, &unk_1A53454B8);
  sub_1A52415F4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45236A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v28 - v9;
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, v7);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v28 - v12;
  v14 = sub_1A5244B24();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5244644();
  v28[4] = v17;
  v28[5] = v10;
  v19 = v29;
  v28[6] = v15;
  if (v18 <= 5)
  {
    v28[2] = v18;
    v28[3] = v14;
    v20 = (*v4 + 416);
    if ((*v20)() == a2 && v21 == v19)
    {
    }

    else
    {
      v28[1] = v20;
      v23 = sub_1A524EAB4();

      if ((v23 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v24 = sub_1A5244664();
    (*(*(v24 - 8) + 16))(v13, a1, v24);
    v25 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
    v26 = &v13[*(v25 + 20)];
    *v26 = a2;
    *(v26 + 1) = v19;
    v13[*(v25 + 24)] = 0;
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 2;
}

void sub_1A4523F04()
{
  v1 = sub_1A5244664();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v30 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 1272))(v12))
  {
    (*(*v0 + 2032))();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1A452FA8C(v9, v14, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      v29 = v2;
      v26 = *(v2 + 16);
      v26(v6, v14, v1);
      v22 = &v14[*(v10 + 20)];
      v23 = *(v22 + 1);
      v27 = *v22;
      v28 = v23;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A452EFF0(v9, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "Expected to have a pending story to proceed with short memory", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }
  }

  else
  {

    v30 = sub_1A5246F04();
    v18 = sub_1A524D244();

    if (os_log_type_enabled(v30, v18))
    {
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v19 = 136315138;
      v31 = (*(*v0 + 1304))();
      v20 = sub_1A524C714();
      sub_1A3C2EF94(v20, v21, &v32);
    }

    v24 = v30;
  }
}

double sub_1A45245C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v49 = a2;
  v5 = sub_1A524BEE4();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5244664();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v11;
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BEC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1A524BFC4();
  v42 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v37 - v19;
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v37 - v21;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v10 + 16))(v22, v49, v9);
    v23 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
    v24 = &v22[*(v23 + 20)];
    *v24 = a3;
    *(v24 + 1) = v38;
    v22[*(v23 + 24)] = 1;
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v38 = sub_1A524D474();
  sub_1A524BFA4();
  *v15 = 1;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E7F48], v12);
  v25 = v39;
  MEMORY[0x1A5907370](v17, v15);
  (*(v13 + 8))(v15, v12);
  v42 = *(v42 + 8);
  (v42)(v17, v50);
  v26 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v27 = v41;
  (*(v10 + 16))(v41, v49, v9);
  v28 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  (*(v10 + 32))(v29 + v28, v27, v9);
  aBlock[4] = sub_1A452F960;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_207;
  v30 = _Block_copy(aBlock);

  v31 = v43;
  sub_1A524BF14();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1A452FE78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v32 = MEMORY[0x1E69E7F60];
  sub_1A452B8C0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A452F9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v32);
  v33 = v46;
  v34 = v48;
  sub_1A524E224();
  v35 = v38;
  MEMORY[0x1A5908790](v25, v31, v33, v30);
  _Block_release(v30);

  (*(v47 + 8))(v33, v34);
  (*(v44 + 8))(v31, v45);
  (v42)(v25, v50);

  return result;
}

double sub_1A4524D24(uint64_t a1, uint64_t a2)
{
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A45231B0(a2);
  }

  return result;
}

uint64_t sub_1A4524E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_1A524CC54();
  v4[17] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4524EE0, v6, v5);
}

uint64_t sub_1A4524EE0()
{
  v20 = v0;
  v1 = *(v0[15] + 80);
  if (!v1)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138739971;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "Handle inserted suggestion: select %{sensitive}@", v5, 0xCu);
    sub_1A3CB65E4(v6);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v8 = v0[16];

  v9 = (*v8 + 1184);
  v10 = *v9;
  result = (*v9)();
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = v0[14];
  v13 = v0[13];
  LOBYTE(v19) = 0;
  (*(*result + 992))(v2, &v19, v13, v12);

  if (sub_1A3FDB9AC())
  {
    result = v10();
    if (result)
    {
      v15 = v0[13];
      v14 = v0[14];

      sub_1A452B8C0(0, &qword_1EB13CD28, sub_1A452D794, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = v15;
      *(inited + 40) = v14;
      v17 = objc_allocWithZone(MEMORY[0x1E6978A50]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_13;
  }

  v18 = v0[1];

  return v18();
}

void sub_1A45253B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A452B8C0(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

BOOL sub_1A4525760(void *a1)
{
  v2 = sub_1A5244584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v6 = a1;
  sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v7 = (*(v3 + 88))(v5, v2);
    v11 = v7 == *MEMORY[0x1E69C0F18] || v7 == *MEMORY[0x1E69C0F20] || v7 == *MEMORY[0x1E69C0F10] || v7 == *MEMORY[0x1E69C0F00];
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double sub_1A45258D4()
{
  swift_getKeyPath();
  (*(*v0 + 2272))();

  return result;
}

id sub_1A4525970(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_1A452B998(0, &unk_1EB129FF0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  ResultProvider = PhotoKitItemListManager.FetchResultProviderInput.photoLibrary.getter();
  v5 = [ResultProvider px_standardLibrarySpecificFetchOptions];

  [v5 setIncludeStoryMemories_];
  [v5 setIncludePendingMemories_];
  if (*(a3 + 16) && (sub_1A5244664(), v6 = sub_1A5244634(), v7))
  {
    v8 = v6;
    v9 = v7;
    sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1A3C37FA0(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v9;
    v12 = sub_1A524CA14();

    v13 = [ObjCClassFromMetadata fetchAssetCollectionsWithType:4 localIdentifiers:v12 options:v5];

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1A4525B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A5244B24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  KeyPath = swift_getKeyPath();
  (*(*v4 + 2264))(KeyPath);

  if (*(v4 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentGenerationTask))
  {

    if ((swift_task_isCancelled() & 1) == 0)
    {
      v11 = *(*v4 + 416);
      v16 = *v4 + 416;
      v17 = v11;
      if (v11() == a1 && v12 == a2)
      {
      }

      else
      {
        v15 = v8;
        v14 = sub_1A524EAB4();

        if ((v14 & 1) == 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return 1;
}

void sub_1A4526034(void *a1)
{
  v3 = [a1 string];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = (*(*v1 + 424))(v4, v6);
  v8 = (*(*v1 + 1184))(v7);
  if (v8)
  {
    (*(*v8 + 1000))(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4526154()
{
  v1 = (*(*v0 + 1304))();
  if ((v1 - 2) >= 3 && v1 != 0)
  {
    if (v1 == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep) == 1)
      {
        *(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep) = 1;
        v5 = 1;
        goto LABEL_9;
      }

LABEL_7:
      KeyPath = swift_getKeyPath();
      v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 2272))(v4);

      return;
    }

    sub_1A3DB9B78(v1);
  }

  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep))
  {
    goto LABEL_7;
  }

  *(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep) = 0;
  v5 = 0;
LABEL_9:

  sub_1A4526614(v5);
}

void *sub_1A4526354()
{
  swift_getKeyPath();
  (*(*v0 + 2264))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken);
  v2 = v1;
  return v1;
}

id sub_1A45263C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 2264))();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken);
  *a2 = v4;

  return v4;
}

void sub_1A4526458(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4526488(v1);
}

void sub_1A4526488(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 2272))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB13CD48, off_1E771D098);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1A4526614(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  v3 = (*v1 + 2264);
  v4 = *v3;
  (*v3)();

  v5 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep) != v2)
  {
    v11 = [objc_opt_self() sharedState];
    swift_getKeyPath();
    v4();

    if (*(v1 + v5) == 1)
    {
      v6 = sub_1A524C634();
      v7 = [v11 beginDisablingIdleTimerForReason_];

      sub_1A4526488(v7);
    }

    else
    {
      swift_getKeyPath();
      v4();

      v8 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken;
      if (*(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken))
      {
        [v11 endDisablingIdleTimer_];
        if (*(v1 + v8))
        {
          KeyPath = swift_getKeyPath();
          v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
          (*(*v1 + 2272))(v10);

          return;
        }
      }

      *(v1 + v8) = 0;
    }
  }
}

uint64_t sub_1A4526880(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 2264))();

  return *(v2 + *a2);
}

void sub_1A45268EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 2264))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep);
}

void (*sub_1A4526B2C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 432))();
  return sub_1A3D3D728;
}

void sub_1A4526BC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A5244B24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v37 - v11;
  v13 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A3FC7934(a1, a2))
  {
    return;
  }

  v40 = v14;
  v41 = a1;
  v37[3] = v12;
  v17 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_logger;

  v39 = v17;
  v18 = sub_1A5246F04();
  v19 = sub_1A524D264();

  v20 = os_log_type_enabled(v18, v19);
  v38 = v9;
  v37[2] = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v37[1] = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37[0] = v7;
    v42 = v23;
    *v22 = 136642819;
    v24 = (*(*v3 + 1208))(v23);
    v25 = MEMORY[0x1A5907DB0](v24);
    v27 = v26;

    sub_1A3C2EF94(v25, v27, &v42);
  }

  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v28 = [swift_getObjCClassFromMetadata() sharedInstance];
  v29 = v41;
  if (*(a2 + 16))
  {
    sub_1A452EDA0(a2 + ((v40[80] + 32) & ~v40[80]), v16, type metadata accessor for GenerativeStoryAmbiguityData);
    if (GenerativeStoryAmbiguityData.isResolved.getter())
    {
      v40 = v16;
      swift_getKeyPath();
      (*(*v3 + 2264))();

      if (v3[6])
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v30 = v40;
    }

    else
    {
      v30 = v16;
    }

    sub_1A452C768(v30, type metadata accessor for GenerativeStoryAmbiguityData);
  }

  swift_getKeyPath();
  (*(*v3 + 2264))();

  if (!*(v3 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentGenerationTask))
  {
LABEL_21:

    return;
  }

  if ((swift_task_isCancelled() & 1) != 0 || !*(v29 + 16) || ![v28 ambiguousTokensPauseStoryGeneration])
  {
LABEL_20:

    goto LABEL_21;
  }

  v31 = (*(*v3 + 1304))();
  if (v31 != 1)
  {
    sub_1A3DB9B78(v31);
    goto LABEL_20;
  }

  KeyPath = swift_getKeyPath();
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  v37[-2] = v3;
  v37[-1] = 2;
  (*(*v3 + 2272))(v33);

  v35 = (*(*v3 + 704))(v34);
  if (v35)
  {
    (*(*v35 + 1904))(v35);
  }

  v36 = v38;
  (*(v7 + 104))(v38, *MEMORY[0x1E69C1130], v6);
  (*(*v3 + 1976))(v36);

  (*(v7 + 8))(v36, v6);
}

void sub_1A4527648()
{
  sub_1A452B8C0(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (*(*v0 + 1304))(v2);
  if (v3 == 1)
  {
    v4 = (*v0 + 1184);
    v5 = *v4;
    v6 = (*v4)();
    if (v6)
    {
      (*(*v6 + 744))(v6);
      v8 = v7;

      if (!v8)
      {
        goto LABEL_11;
      }

      v10 = (v5)(v9);
      if (v10)
      {
        (*(*v10 + 744))(v10);
        v12 = v11;

        if (v12)
        {

          KeyPath = swift_getKeyPath();
          (*(*v0 + 2264))(KeyPath);

          if (v0[6])
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v17 = sub_1A5246F04();
          v14 = sub_1A524D264();
          if (!os_log_type_enabled(v17, v14))
          {
            goto LABEL_14;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "Not re-starting generation with an updated disambiguation as there is no current prompt";
          goto LABEL_13;
        }

LABEL_11:
        v17 = sub_1A5246F04();
        v14 = sub_1A524D264();
        if (os_log_type_enabled(v17, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "Not re-starting generation with an updated disambiguation as there is no ambiguous prompt";
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    __break(1u);
    return;
  }

  sub_1A3DB9B78(v3);
  v17 = sub_1A5246F04();
  v14 = sub_1A524D264();
  if (os_log_type_enabled(v17, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Not re-starting generation with an updated disambiguation as generation is not ongoing";
LABEL_13:
    _os_log_impl(&dword_1A3C1C000, v17, v14, v16, v15, 2u);
    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

LABEL_14:
}

uint64_t sub_1A4527C5C()
{
  v1 = MEMORY[0x1E69C1030];
  sub_1A452B8C0(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = (*(*v0 + 416))(v3);
  v8 = v7;
  v9 = sub_1A5244854();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  (*(*v0 + 1896))(v6, v8, v5);

  return sub_1A452EFF0(v5, &qword_1EB124C88, v1);
}

uint64_t sub_1A4527DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A5244B44();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4527ED4, v8, v7);
}

void sub_1A4527ED4()
{
  v9 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  sub_1A524E404();

  strcpy(v8, "State change: ");
  v8[15] = -18;
  (*(v3 + 16))(v1, v5, v2);
  v6 = sub_1A524C714();
  MEMORY[0x1A5907B60](v6);

  v7 = MEMORY[0x1A5907B60](10, 0xE100000000000000);
  (*(*v4 + 944))(v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45280A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A3CA8098;

  return sub_1A452813C(a5);
}

uint64_t sub_1A452813C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A452815C, 0, 0);
}

uint64_t sub_1A452815C()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 isMemoryCreationTextAnimationEnabled];

  if (v2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A45283B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  sub_1A452930C(v2, v1, "handleTokens() - Received %ld tokens: %{sensitive}s", "Handle Tokens", "Number of Tokens: %ld – play animation with timelineTextEngineController", 0x5220736E656B6F54, "handleTokens() - finished");
}

uint64_t sub_1A4528478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A3CA8098;

  return sub_1A4528514(a5);
}

uint64_t sub_1A4528514(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A45285B0, v4, v3);
}

uint64_t sub_1A45285B0()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 isMemoryCreationTextAnimationEnabled];

  if (v2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A45287D0(__n128 a1)
{
  *(v1 + 72) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A452885C, v3, v2);
}

void sub_1A452885C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  sub_1A452930C(v2, v1, "handleTraits() - Received %ld traits: %{sensitive}s", "Handle Traits", "Number of Traits: %ld – play animation with timelineTextEngineController", 0x5220737469617254, "handleTraits() - finished");
}

uint64_t sub_1A4528908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A3CA8098;

  return sub_1A45289A8(a5, 1);
}

uint64_t sub_1A45289A8(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A45289CC, 0, 0);
}

uint64_t sub_1A45289CC()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 isMemoryCreationImageAnimationEnabled];

  if (v2)
  {
    v3 = **(v0 + 24) + 752;
    *(v0 + 32) = *v3;
    *(v0 + 40) = v3 & 0xFFFFFFFFFFFFLL | 0x1661000000000000;
    *(v0 + 48) = sub_1A524CC54();
    *(v0 + 56) = sub_1A524CC44();
    v5 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A4528B08, v5, v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1A4528B08()
{
  v1 = *(v0 + 32);

  *(v0 + 64) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4528B88, 0, 0);
}

uint64_t sub_1A4528B88()
{
  v1 = (*(**(v0 + 64) + 304))();

  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3E072BC(0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F8E10;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1A3D710E8();
    *(v3 + 32) = 0xD00000000000001CLL;
    *(v3 + 40) = 0x80000001A53D3C30;
    v2 = sub_1A524D134();
  }

  *(v0 + 72) = v2;
  v4 = *(*(v0 + 24) + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1A4528D44;
  v6 = *(v0 + 16);

  return sub_1A452E124(v6, v4, v2);
}

uint64_t sub_1A4528D44(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4528E44, 0, 0);
}

uint64_t sub_1A4528E44(__n128 a1)
{
  *(v1 + 96) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4528ED0, v3, v2);
}

uint64_t sub_1A4528ED0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = *(v0 + 104);

  sub_1A4529B48(v2, v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A4528F58, 0, 0);
}

uint64_t sub_1A4528F58()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4528FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A3CA8098;

  return sub_1A45289A8(a5, 2);
}

uint64_t sub_1A4529060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A3CA8098;

  return sub_1A45289A8(a5, 3);
}

uint64_t sub_1A4529100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A3CA8098;

  return sub_1A45289A8(a5, 4);
}

void sub_1A452930C(void *a1, uint64_t a2, const char *a3, const char *a4, const char *a5, uint64_t a6, const char *a7, ...)
{
  v7 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4529B48(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  KeyPath = swift_getKeyPath();
  (*(*a1 + 2264))(KeyPath);

  if (!*(a1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__currentGenerationTask))
  {
    return result;
  }

  if (swift_task_isCancelled())
  {

    return result;
  }

  if (a2)
  {
    v13 = [a2 fetchedObjects];
    if (v13)
    {
      v14 = v13;
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v15 = sub_1A524CA34();

      if (v15 >> 62)
      {
        if (sub_1A524E2B4() >= 1)
        {
          goto LABEL_10;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_10:
        v32[3] = v15 >> 62;
        v16 = (*(*a1 + 1304))();
        if (v16 == 1)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3DB9B78(v16);
      }
    }
  }

  v17 = sub_1A5246F04();
  v18 = sub_1A524D264();
  if (os_log_type_enabled(v17, v18))
  {
    v32[4] = v7;
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v20 = 0xEB00000000736E6FLL;
    *v19 = 136315138;
    v21 = 0x6F72702072657355;
    v22 = 0xEB0000000074706DLL;
    v23 = 0x6576656972746552;
    v24 = 0xE900000000000064;
    if (v3 != 3)
    {
      v23 = 0x6465646E65747845;
      v24 = 0xE800000000000000;
    }

    if (v3 != 2)
    {
      v21 = v23;
      v22 = v24;
    }

    v25 = 0x6C6F686563616C50;
    if (v3)
    {
      v20 = 0xEB00000000726564;
    }

    else
    {
      v25 = 0x6974736567677553;
    }

    if (v3 <= 1u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21;
    }

    if (v3 <= 1u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    sub_1A3C2EF94(v26, v27, &v33);
  }

  sub_1A5246E84();
  sub_1A5246E24();
  v28 = sub_1A5246E84();
  v29 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v28, v29, v31, "Handle Assets (Failed)", "", v30, 2u);
    MEMORY[0x1A590EEC0](v30, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
  return result;
}

uint64_t sub_1A452A584(unsigned __int8 a1)
{
  v1 = 0x6974736567677553;
  v2 = 0x6F72702072657355;
  v3 = 0x6576656972746552;
  if (a1 != 3)
  {
    v3 = 0x6465646E65747845;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6C6F686563616C50;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A452A658()
{
  sub_1A452CA60(&selRef_signalTaskStoppedWithError_, "GenerativeStoryCreationViewModel - call to taskStopped failed with error: %@");
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A452A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E85F0];
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1A524CC94();
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  sub_1A3DCD53C(0, 0, v8, a3, v10);

  return sub_1A452EFF0(v8, &qword_1EB12B270, v5);
}

uint64_t sub_1A452A82C()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A452A92C(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A452AA18(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A452AB14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A452E594(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A452AB44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000736E6FLL;
  v4 = 0x6974736567677553;
  v5 = 0xEB0000000074706DLL;
  v6 = 0x6F72702072657355;
  v7 = 0xE900000000000064;
  v8 = 0x6576656972746552;
  if (v2 != 3)
  {
    v8 = 0x6465646E65747845;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6F686563616C50;
    v3 = 0xEB00000000726564;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A452AC00()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB157998 = result;
  return result;
}

void *sub_1A452AC6C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A452B8C0(0, &qword_1EB120300, MEMORY[0x1E69C0F70], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A5244664() - 8);
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
  v15 = *(sub_1A5244664() - 8);
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

char *sub_1A452AE68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A452AE88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A452AE88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37FA0(0, &qword_1EB13CD78, &type metadata for GenerativeStoryUserSuggestion, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A452AFAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A452FEC0(0, &qword_1EB13CD80, &qword_1EB13CD38, 0x1E6978A50);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
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
    v14 = v6 + 64;
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
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
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
        return;
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
}

void sub_1A452B25C()
{
  v1 = v0;
  sub_1A452FEC0(0, &qword_1EB13CD80, &qword_1EB13CD38, 0x1E6978A50);
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A452B3D4(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

BOOL sub_1A452B420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52404F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_1A52404C4();
  sub_1A3D5F9DC();
  v8 = sub_1A524DFB4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 && sub_1A524C7A4() < 200;
}

void sub_1A452B588()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[56];
  v2[56] = *(v1 + 24);
  v4 = (*v2 + 584);
  v5 = *v4;
  if (v3 != ((*v4)() & 1))
  {
    v6 = v5();
    v7 = *v2;
    if (v6)
    {
      v8 = (*(v7 + 608))();
      v9 = (*(*v2 + 1624))(v8);
      if (v9)
      {
LABEL_6:
        (*(*v9 + 472))(v6 & 1);

        return;
      }

      __break(1u);
    }

    v10 = (*(v7 + 616))();
    v9 = (*(*v2 + 1624))(v10);
    if (!v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_6;
  }
}

void sub_1A452B78C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1A452B8C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A452B924(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_1A452B998(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A452BA00(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A452B998(255, a2, &qword_1EB1265E0, 0x1E69788F0, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A452BA90()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__previousUserQuery);
  *v2 = v0[3];
  v2[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A452BB1C()
{
  v2 = *(type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A450C468(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_1A452BBFC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A450CD8C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A452BCB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A450D840();
}

double (*sub_1A452BD4C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4530020;
}

uint64_t sub_1A452BDA4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A450D8C8(a1, v5, v6, v4);
}

uint64_t sub_1A452BE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244634();
  v6 = v5;
  v7 = sub_1A5244634();
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1A524EAB4();

        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_10;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_10:
  v11 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
  v12 = *(v11 + 20);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (v16 || (sub_1A524EAB4() & 1) != 0)
  {
    v9 = *(a1 + *(v11 + 24)) ^ *(a2 + *(v11 + 24)) ^ 1;
    return v9 & 1;
  }

LABEL_8:
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1A452BF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A452B8C0(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  sub_1A452FFA8(0, &qword_1EB12AFD0, &qword_1EB12AFE0, v8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v16 = *(v15 + 56);
  sub_1A452FAF4(a1, &v23 - v13, &qword_1EB12AFE0, v8);
  sub_1A452FAF4(a2, &v14[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A452FAF4(v14, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A452FE78(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v20 = sub_1A524C594();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v11, v4);
      sub_1A452EFF0(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    v18 = (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A452FE1C(v14, &qword_1EB12AFD0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v18);
    v19 = 1;
    return v19 & 1;
  }

  sub_1A452EFF0(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1A452C2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A452B8C0(0, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1A452FFA8(0, &qword_1EB13CD90, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1A452FAF4(a1, &v21 - v12, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  sub_1A452FAF4(a2, &v13[v15], &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A452FAF4(v13, v10, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1A452FA8C(&v13[v15], v7, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      v19 = sub_1A452BE44(v10, v7);
      sub_1A452C768(v7, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      sub_1A452C768(v10, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      sub_1A452EFF0(v13, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    sub_1A452C768(v10, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A452FE1C(v13, &qword_1EB13CD90, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, v17);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A452EFF0(v13, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A452C620(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A452B8C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A452C6DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A450DF88();
}

uint64_t sub_1A452C768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A452C7C8()
{
  result = qword_1EB13CD20;
  if (!qword_1EB13CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CD20);
  }

  return result;
}

uint64_t sub_1A452C81C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A452C83C, 0, 0);
}

uint64_t sub_1A452C83C()
{
  v1 = [*(v0 + 24) librarySpecificFetchOptions];
  sub_1A3C37FA0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9DE0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1A524C634();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1A524C634();
  v8 = [v6 initWithKey:v7 ascending:1];

  *(v2 + 40) = v8;
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v9 = sub_1A524CA14();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  v10 = objc_opt_self();
  v11 = sub_1A524CA14();
  v12 = [v10 fetchAssetsWithUUIDs:v11 options:v1];

  v13 = *(v0 + 8);

  return v13(v12);
}

id sub_1A452CA60(SEL *a1, const char *a2, ...)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v23[0] = 0;
  v9 = [v8 *a1];
  v10 = v23[0];
  if (v9)
  {

    return v10;
  }

  else
  {
    v22 = v23[0];
    v12 = v23[0];
    v13 = sub_1A5240B84();

    swift_willThrow();
    v14 = sub_1A3C4A780();
    (*(v5 + 16))(v7, v14, v4);
    v15 = v13;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1A3C1C000, v16, v17, a2, v18, 0xCu);
      sub_1A3CB65E4(v19);
      MEMORY[0x1A590EEC0](v19, -1, -1);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1A452CCF8(void *a1, void *a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_1A524BEE4();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1A524BF64();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A524BEC4();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1A524BFC4();
  v48 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v11;
  v12 = MEMORY[0x1E69C1138];
  sub_1A452B8C0(0, &qword_1EB124C50, MEMORY[0x1E69C1138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_1A5244B24();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v57 = v3;
  v58 = a1;
  v21 = a1;
  (*(*v3 + 2272))(KeyPath, sub_1A45303A8, v56, MEMORY[0x1E69E7CA8] + 8);

  sub_1A452FAF4(v42, v15, &qword_1EB124C50, v12);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    *v19 = a1;
    (*(v17 + 104))(v19, *MEMORY[0x1E69C1128], v16);
    v23 = v22(v15, 1, v16);
    v24 = v21;
    if (v23 != 1)
    {
      sub_1A452EFF0(v15, &qword_1EB124C50, MEMORY[0x1E69C1138]);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
  }

  (*(*v3 + 1976))(v19);
  v25 = (*(v17 + 8))(v19, v16);
  v26 = (*(*v3 + 1824))(v25);
  if ((*(*v3 + 704))(v26))
  {
    sub_1A3E207E0();
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v42 = sub_1A524D474();
  v27 = v44;
  sub_1A524BFA4();
  v28 = v43;
  *v43 = 500;
  v29 = v45;
  v30 = v46;
  (*(v45 + 104))(v28, *MEMORY[0x1E69E7F38], v46);
  v31 = v47;
  MEMORY[0x1A5907370](v27, v28);
  (*(v29 + 8))(v28, v30);
  v48 = *(v48 + 8);
  (v48)(v27, v55);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v21;
  aBlock[4] = sub_1A452FA28;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_362_0;
  v34 = _Block_copy(aBlock);
  v35 = v21;

  v36 = v49;
  sub_1A524BF14();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1A452FE78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v37 = MEMORY[0x1E69E7F60];
  sub_1A452B8C0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A452F9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v37);
  v38 = v51;
  v39 = v54;
  sub_1A524E224();
  v40 = v42;
  MEMORY[0x1A5908790](v31, v36, v38, v34);
  _Block_release(v34);

  (*(v53 + 8))(v38, v39);
  (*(v50 + 8))(v36, v52);
  (v48)(v31, v55);

  return result;
}