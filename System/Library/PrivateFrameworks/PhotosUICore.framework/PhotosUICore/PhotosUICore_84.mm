void sub_1A46DEE88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + 248) presentationValue];
    if (*(v2 + 400) != v3)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C79318();
      sub_1A52415C4();
    }

    sub_1A46E2BFC();
  }
}

void sub_1A46DEFB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + 256) presentationValue];
    if (*(v2 + 152) != v3)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C79318();
      sub_1A52415C4();
    }

    sub_1A46E2BFC();
  }
}

void sub_1A46DF0D8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v1 = *(v0 + 392);
  swift_getKeyPath();
  sub_1A52415D4();

  v2 = fmax(v1 - *(v0 + 224), 1.0);
  swift_getKeyPath();
  sub_1A52415D4();

  v3 = *(v0 + 400);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = v2 * v3;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata sharedInstance];
  swift_getKeyPath();
  sub_1A52415D4();

  v8 = *(v0 + 224);
  v9 = *(**(v0 + 264) + 152);
  v10 = v8 - v9(v7);
  [v6 curatedLibraryBottomPadding];
  v12 = v11;

  if (v10 - v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10 - v12;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v14 = v13 * *(v0 + 152);
  swift_getKeyPath();
  sub_1A52415D4();

  v15 = *(v0 + 392);
  swift_getKeyPath();
  sub_1A52415D4();

  v16 = fmax(v15 - *(v0 + 224), 1.0);
  v17 = [ObjCClassFromMetadata sharedInstance];
  swift_getKeyPath();
  sub_1A52415D4();

  v19 = *(v0 + 224);
  v20 = v19 - v9(v18);
  [v17 curatedLibraryBottomPadding];
  v22 = v21;

  v23 = v20 - v22;
  if (v20 - v22 < 0.0)
  {
    v23 = 0.0;
  }

  v24 = v16 + v23;
  if (v24 >= v4 + v14)
  {
    v25 = v4 + v14;
  }

  else
  {
    v25 = v24;
  }

  if (v25 != *(v0 + 336))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }
}

double sub_1A46DF494()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 368);
}

void sub_1A46DF504(double a1)
{
  if (*(v1 + 368) != a1)
  {
    sub_1A46DE748(a1);
  }
}

uint64_t sub_1A46DF518()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 344))
  {
    v1 = 0xD000000000000021;
  }

  else
  {
    v1 = 0xD000000000000020;
  }

  return sub_1A3C38BD4(v1);
}

unint64_t sub_1A46DF5C8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 344))
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000020;
  }
}

double sub_1A46DF66C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 72);
  if (v4)
  {
    if (a2)
    {
      v5 = *(v2 + 64) == a1 && v4 == a2;
      if (v5 || (sub_1A524EAB4() & 1) != 0)
      {

        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  MEMORY[0x1EEE9AC00](v7);
  if (v8)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = sub_1A47ED860(1);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A5248914();

  return result;
}

double sub_1A46DF8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    if (a3)
    {
      v7 = *(a1 + 64) == a2 && v6 == a3;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
LABEL_8:
        *(a1 + 64) = a2;
        *(a1 + 72) = a3;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C79318();
  sub_1A52415C4();

  if (((a3 != 0) ^ *(a1 + 80)))
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46DFAAC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46DFB44()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 80);
}

void sub_1A46DFBB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 80);
}

uint64_t sub_1A46DFC58()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 81);
}

void sub_1A46DFCC8(uint64_t a1)
{
  v2 = a1 & 1;
  if (*(v1 + 81) != (a1 & 1))
  {
    MEMORY[0x1EEE9AC00](a1);
    aBlock[0] = 0;
    v3 = sub_1A47ED860(1);
    MEMORY[0x1EEE9AC00](v3);
    sub_1A5248914();

    sub_1A3CA7D34(1);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    aBlock[4] = sub_1A46E5FE0;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_258;
    v6 = _Block_copy(aBlock);

    px_perform_after_ca_commit(v6);
    _Block_release(v6);
  }
}

void sub_1A46DFE94(uint64_t a1, char a2)
{
  if (*(a1 + 81) == (a2 & 1))
  {
    *(a1 + 81) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

double sub_1A46DFF78(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 82) != (a2 & 1))
    {
      MEMORY[0x1EEE9AC00](Strong);
      v5 = sub_1A47ED860(1);
      MEMORY[0x1EEE9AC00](v5);
      sub_1A5248914();
    }
  }

  return result;
}

void sub_1A46E00AC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 81);
}

uint64_t sub_1A46E0150()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 82);
}

void sub_1A46E01C0(uint64_t a1, char a2)
{
  if (*(a1 + 82) == (a2 & 1))
  {
    *(a1 + 82) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46E02A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 82);
}

uint64_t sub_1A46E0348()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 83);
}

void sub_1A46E03B8(uint64_t a1, char a2)
{
  if (*(a1 + 83) == (a2 & 1))
  {
    *(a1 + 83) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46E049C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 83);
}

double sub_1A46E053C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E05E0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 96);
}

void sub_1A46E0650(uint64_t a1, char a2)
{
  if (*(a1 + 96) == (a2 & 1))
  {
    *(a1 + 96) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46E0734(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 96);
}

uint64_t sub_1A46E07D8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 97);
}

void sub_1A46E0848(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 97) != (a1 & 1))
  {
    v3 = v1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    sub_1A3C52C70(0, &qword_1EB1208C0, off_1E77209F0);
    v6 = [swift_getObjCClassFromMetadata() sharedInstance];
    v7 = [v6 shouldWorkAround133571598];

    if (v7)
    {
      if (*(v3 + 97) == (a1 & 1))
      {
        *(v3 + 97) = v2;
      }

      else
      {
        v8 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v8);
        sub_1A52415C4();
      }
    }
  }
}

void sub_1A46E0A18(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 97);
}

uint64_t sub_1A46E0ABC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 98);
}

void sub_1A46E0B2C(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 98) != v2)
  {
    sub_1A46DD554(v2);
  }
}

void sub_1A46E0B44(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 98);
}

id sub_1A46E0BEC()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = [objc_allocWithZone(PXCuratedLibraryViewConfiguration) initWithPhotoLibrary_];
    [v4 setEnableDays_];
    [v4 setEnableFooter_];
    [v4 setEnableNavigationHeader_];
    [v4 setEnableSecondaryToolbarContainerView_];
    [v4 setIsExpandedInitially_];
    [v4 setAllowedInteractiveDismissBehaviors_];
    [v4 setInitialZoomLevel_];
    [v4 setSecondaryToolbarStyle_];
    v5 = [objc_allocWithZone(PXPhotosViewOptionsModel) initWithPhotoLibrary_];
    [v4 setViewOptionsModel_];

    [v4 setLayoutStyle_];
    v6 = [objc_allocWithZone(PXCuratedLibraryUIViewController) initWithConfiguration_];
    [v6 setModalPresentationStyle_];
    v7 = sub_1A46E158C();
    [v6 setDelegate_];

    v8 = *(v0 + 136);
    *(v0 + 136) = v6;
    v2 = v6;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1A46E0DA0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 99);
}

double sub_1A46E0E10(char a1)
{
  if (*(v1 + 99) != (a1 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46E0EE8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 99);
}

void sub_1A46E0F88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  if (!a2)
  {
    if (!v3)
    {
      return;
    }

LABEL_12:
    sub_1A46DD7A8(a1, a2);

    sub_1A3CA7B08();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  if (*(v2 + 104) != a1 || v3 != a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_1A524EAB4();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }
}

void sub_1A46E1034(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46E1110()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 120);
}

double sub_1A46E1180(char a1)
{
  if (*(v1 + 120) != (a1 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46E1258(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 120);
}

uint64_t sub_1A46E12F8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 121);
}

void sub_1A46E1368(char a1)
{
  if (*(v1 + 121) != (a1 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    if ((a1 & 1) == 0)
    {
      if (*(v1 + 464))
      {
        v4 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v4);
        sub_1A52415C4();
      }

      else
      {
        *(v1 + 464) = 0;
      }
    }
  }
}

void sub_1A46E14EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 121);
}

id sub_1A46E158C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = type metadata accessor for LemonadeCuratedLibraryViewModel.AllPhotosDelegateProxy();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    v6 = *(v0 + 128);
    *(v0 + 128) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void sub_1A46E162C(char a1, char a2)
{
  v4 = a1 & 1;
  if (*(v2 + 344) != v4)
  {
    sub_1A46DE254(v4);
    if (a1)
    {
      v5 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_1A3C79318();
      sub_1A52415D4();

      if (*(v2 + 464))
      {
        v5 = 3;
      }

      else
      {
        v5 = 1;
      }
    }

    if (*(v2 + 192) < 4u)
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 176);
    v7 = *(v2 + 184);
    if (v6 > 1)
    {
      if (v6 ^ 2 | v7 && v5 == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v6 | v7)
    {
      if (v5 == 1)
      {
LABEL_9:
        swift_getKeyPath();
        sub_1A3C79318();
        sub_1A52415D4();

        if (*(v2 + 344))
        {
          swift_getKeyPath();
          sub_1A52415D4();

          swift_getKeyPath();
          sub_1A52415F4();

          swift_beginAccess();
          ++*(v2 + 160);
          swift_getKeyPath();
          sub_1A52415E4();
        }

        sub_1A46E3D60();
        sub_1A3EF6938();
        sub_1A524C524();
      }
    }

    else if (!v5)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1A46DDD98(v5, 0, 4);
    goto LABEL_9;
  }
}

BOOL sub_1A46E1B98(char *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = a1;
    sub_1A46E162C(0, 0);
  }

  return Strong != 0;
}

id sub_1A46E1C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCuratedLibraryViewModel.AllPhotosDelegateProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A46E1CC8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 144);
}

double sub_1A46E1D4C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  result = *(v3 + 144);
  *a2 = result;
  return result;
}

double sub_1A46E1E04()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 304);
}

void sub_1A46E1E74(double a1, double a2)
{
  if (v2[38] != a1 || v2[39] != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    swift_getKeyPath();
    sub_1A52415D4();

    if (v2[48] != v2[39])
    {
      v5 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v5);
      sub_1A52415C4();
    }

    type metadata accessor for CuratedLibraryGeometryHelper();
    swift_getKeyPath();
    sub_1A52415D4();

    static CuratedLibraryGeometryHelper.carouselHeight(for:)(v2[38], v2[39]);
    if (v2[47] != v6)
    {
      v7 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v7);
      sub_1A52415C4();
    }
  }
}

double sub_1A46E2100()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 376);
}

double sub_1A46E2174()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 384);
}

double sub_1A46E21E8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 392);
}

double sub_1A46E225C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 336);
}

uint64_t sub_1A46E22CC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v1 = *(v0 + 176);
  if (*(v0 + 192) == 1)
  {
    if (v1 > 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = -v1;
    }

    swift_getKeyPath();
    sub_1A52415D4();

    v4 = *(v0 + 392);
    swift_getKeyPath();
    sub_1A52415D4();

    v5 = v4 - *(v0 + 224);
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    v2 = v3 - v5;
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    return *&v2;
  }

  if (!*(v0 + 192))
  {
    v2 = 0.0;
    if (v1 <= 0.0)
    {
      v2 = -v1;
    }

    return *&v2;
  }

  return 0;
}

double sub_1A46E2438()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 400);
}

double sub_1A46E24AC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 152);
}

void sub_1A46E251C(double a1)
{
  *(v1 + 152) = a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  sub_1A3EF6938();
  sub_1A524C524();
}

double sub_1A46E2600@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 152);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E26A0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 344);
}

uint64_t sub_1A46E2714()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 345);
}

uint64_t sub_1A46E2784()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 464);
}

double sub_1A46E27F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 176);
  v5 = *(v3 + 192);
  if (v5 <= 1)
  {
    if (*(v3 + 192))
    {
      if (a3 != 1)
      {
        return sub_1A46DDD98(a1, a2, a3);
      }
    }

    else if (a3)
    {
      return sub_1A46DDD98(a1, a2, a3);
    }

    result = *(v3 + 176);
    if (v4 == *&a1)
    {
      return result;
    }

    return sub_1A46DDD98(a1, a2, a3);
  }

  v6 = *(v3 + 184);
  if (v5 == 2)
  {
    if (a3 == 2)
    {
LABEL_10:
      result = *(v3 + 184);
      if (v4 != *&a1 || v6 != *&a2)
      {
        return sub_1A46DDD98(a1, a2, a3);
      }

      return result;
    }

    return sub_1A46DDD98(a1, a2, a3);
  }

  if (v5 == 3)
  {
    if (a3 != 3)
    {
      return sub_1A46DDD98(a1, a2, a3);
    }

    goto LABEL_10;
  }

  if (*&v4 > 1uLL)
  {
    if (*&v4 ^ 2 | *&v6)
    {
      if (a3 != 4 || a1 != 3)
      {
        return sub_1A46DDD98(a1, a2, a3);
      }
    }

    else if (a3 != 4 || a1 != 2)
    {
      return sub_1A46DDD98(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if (*&v4 | *&v6)
  {
    if (a3 != 4 || a1 != 1)
    {
      return sub_1A46DDD98(a1, a2, a3);
    }

LABEL_32:
    if (*&a2 == 0.0)
    {
      return result;
    }

    return sub_1A46DDD98(a1, a2, a3);
  }

  if (a3 != 4 || a2 | a1)
  {
    return sub_1A46DDD98(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1A46E290C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 160);
}

void sub_1A46E2990(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 160);
}

uint64_t sub_1A46E2A44()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 344))
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    if (*(v0 + 346) == 1 && (swift_getKeyPath(), sub_1A52415D4(), , *(v0 + 346) == 1))
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v1 = *(v0 + 344) ^ 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1A46E2B8C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 346);
}

void sub_1A46E2BFC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if ((*(v0 + 346) & 1) == 0 && (*(v0 + 448) & 1) == 0)
  {
    v1 = *(v0 + 248);
    if (([v1 isAnimating] & 1) == 0 && (objc_msgSend(*(v0 + 256), sel_isAnimating) & 1) == 0)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v2 = *(v0 + 400);
      [v1 presentationValue];
      PXFloatApproximatelyEqualToFloat(v2);
    }
  }

  sub_1A46E54CC(1);
}

uint64_t sub_1A46E2D84(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    MEMORY[0x1A590A010](v7, a2, a3);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x1A590A040](v9);
  }

  if (a4 == 2)
  {
    v6 = 4;
    goto LABEL_8;
  }

  if (a4 == 3)
  {
    v6 = 5;
LABEL_8:
    MEMORY[0x1A590A010](v6);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1A590A040](v8);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x1A590A040](v9);
  }

  if (a2 > 1)
  {
    if (a2 ^ 2 | a3)
    {
      return MEMORY[0x1A590A010](7);
    }

    else
    {
      return MEMORY[0x1A590A010](6);
    }
  }

  else if (a2 | a3)
  {
    return MEMORY[0x1A590A010](1);
  }

  else
  {
    return MEMORY[0x1A590A010](0);
  }
}

uint64_t sub_1A46E2E6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A524EC94();
  sub_1A46E2D84(v5, v1, v2, v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A46E2ED4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1A524EC94();
  sub_1A46E2D84(v6, v2, v3, v4);
  return sub_1A524ECE4();
}

uint64_t sub_1A46E2F48()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 176);
}

__n128 sub_1A46E2FBC@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = v3[12].n128_u8[0];
  result = v3[11];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

void sub_1A46E3070(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = sub_1A5246F24();
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC12PhotosUICore31LemonadeCuratedLibraryViewModel___observationRegistrar;
  aBlock = v5;
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v5 + 360) == 1 && (a1 & 1) == 0)
  {
    v81 = v11;
    sub_1A46DE58C(*&a3, 0);
    swift_getKeyPath();
    aBlock = v5;
    v15 = v14;
    sub_1A52415D4();

    *(v5 + 232) = *(v5 + 400);
    *(v5 + 240) = 0;
    v16 = objc_opt_self();
    v17 = [v16 sharedScheduler];
    v18 = sub_1A524C634();
    v19 = [v17 startTrackedAnimationWithLabel_];

    v20 = *(v6 + 408);
    *(v6 + 408) = v19;
    if (v20)
    {
      v21 = v19;
      v22 = [v16 sharedScheduler];
      [v22 endTrackedAnimation_];
    }

    v23 = *(v6 + 16);
    v24 = sub_1A524C634();
    v25 = [v23 px:v24 beginPausingChangesWithTimeout:30.0 identifier:?];

    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A46E3C58(&aBlock);
    [*(v6 + 248) setPrepareForAnimation_];
    [*(v6 + 256) setPrepareForAnimation_];
    v14 = v15;
    v11 = v81;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v83 = [ObjCClassFromMetadata sharedInstance];
  v26 = *(v6 + 248);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3;
  v88 = sub_1A46E6304;
  v89 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1A3D59380;
  v87 = &block_descriptor_135_5;
  v28 = _Block_copy(&aBlock);

  [v26 performChangesWithoutAnimation_];
  _Block_release(v28);
  if (a5 <= 0.0 && (swift_getKeyPath(), aBlock = v6, sub_1A52415D4(), , *(v6 + 392) + -100.0 >= a3))
  {
    v31 = 0;
    if (a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v29 = COERCE_DOUBLE(sub_1A46E22CC());
    if (v30)
    {
      v31 = 1;
      if ((a1 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      v39 = *&a3;
      v40 = *&a5;
      if (*(v6 + 344) == 1)
      {
        if (v31)
        {
          v39 = 0;
          v40 = 0;
          v41 = 4;
        }

        else
        {
          v41 = 3;
        }
      }

      else if (v31)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }

      v44 = [v26 prepareForAnimation];
      v45 = sub_1A3C38A40();
      (*(v82 + 16))(v13, v45, v11);
      v79[1] = v14;
      if ((v44 & 1) == 0)
      {
        v46 = sub_1A5246F04();
        v47 = sub_1A524D244();
        if (os_log_type_enabled(v46, v47))
        {
          v81 = v11;
          v48 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v48 = 136315138;
          sub_1A3C2EF94(0xD00000000000002FLL, 0x80000001A53E61F0, &aBlock);
        }
      }

      (*(v82 + 8))(v13, v11);
      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      if (v31)
      {
        v49 = a5 < 0.0;
      }

      else
      {
        v49 = *(v6 + 344);
      }

      v50 = *(v6 + 448);
      *(v6 + 448) = 1;
      if ((v50 & 1) == 0)
      {
        sub_1A46E2BFC();
      }

      v51 = 0.0;
      v52 = 0.0;
      if ((v49 & 1) == 0)
      {
        swift_getKeyPath();
        aBlock = v6;
        sub_1A52415D4();

        v53 = *(v6 + 392);
        swift_getKeyPath();
        aBlock = v6;
        sub_1A52415D4();

        v52 = a5 / fmax(v53 - *(v6 + 224), 1.0);
      }

      v54 = v83;
      [v83 curatedLibraryExpansionGestureSpringStiffness];
      v56 = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = v6;
      *(v57 + 24) = v31;
      *(v57 + 32) = v54;
      v88 = sub_1A46E63B4;
      v89 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v85 = 1107296256;
      v86 = sub_1A3D59380;
      v87 = &block_descriptor_147_1;
      v58 = _Block_copy(&aBlock);

      v59 = v54;

      [v26 performChangesUsingSpringAnimationWithStiffness:v58 dampingRatio:v56 initialVelocity:1.0 changes:v52];
      _Block_release(v58);
      if ((v49 & 1) == 0)
      {
        v60 = [ObjCClassFromMetadata sharedInstance];
        swift_getKeyPath();
        aBlock = v6;
        sub_1A52415D4();

        v62 = *(v6 + 224);
        v63 = v62 - (*(**(v6 + 264) + 152))(v61);
        [v60 curatedLibraryBottomPadding];
        v65 = v64;

        v66 = v63 - v65;
        if (v63 - v65 < 1.0 || v66 < 0.0)
        {
          v66 = 1.0;
        }

        v51 = a5 / v66;
      }

      v68 = *(v6 + 256);
      [v59 curatedLibraryExpansionGestureSpringStiffness];
      v70 = v69;
      v88 = sub_1A46E64A8;
      v89 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v85 = 1107296256;
      v86 = sub_1A3D59380;
      v87 = &block_descriptor_150_0;
      v71 = _Block_copy(&aBlock);

      [v68 performChangesUsingSpringAnimationWithStiffness:v71 dampingRatio:v70 initialVelocity:1.0 changes:v51];
      _Block_release(v71);
      v72 = *(v6 + 448);
      *(v6 + 448) = 0;
      v34 = v83;
      if (v72 == 1)
      {
        sub_1A46E2BFC();
      }

      goto LABEL_55;
    }

    v31 = v29 <= 0.0;
    if (a1)
    {
      goto LABEL_14;
    }
  }

LABEL_10:
  swift_getKeyPath();
  aBlock = v6;
  sub_1A52415D4();

  sub_1A46DDD98(*&a3, 0, *(v6 + 344));
  sub_1A46E3D60();
  v33 = v32;
  if (v31)
  {
    v34 = v83;
    [v83 curatedLibraryTransitionChromeExpandPercentage];
    if (v35 <= v33)
    {
      v36 = 0;
      v37 = 1;
      v38 = 1.0;
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  v34 = v83;
  [v83 curatedLibraryTransitionChromeCollapsePercentage];
  if (v33 > v42)
  {
LABEL_21:
    [*(v6 + 256) value];
    v38 = v43;
    v36 = 0;
    v37 = 0;
    goto LABEL_47;
  }

  v37 = 0;
  v36 = 1;
  v38 = 0.0;
LABEL_47:
  v73 = *(v6 + 256);
  [v73 value];
  if (v74 != v38)
  {
    [v34 curatedLibraryChromeAutoAnimateSpringStiffness];
    v76 = v75;
    v77 = swift_allocObject();
    *(v77 + 16) = v38;
    v88 = sub_1A46E63A0;
    v89 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v85 = 1107296256;
    v86 = sub_1A3D59380;
    v87 = &block_descriptor_141_0;
    v78 = _Block_copy(&aBlock);

    [v73 performChangesUsingSpringAnimationWithStiffness:v78 dampingRatio:v76 initialVelocity:1.0 changes:0.0];
    _Block_release(v78);
  }

  if ([v73 isAnimating])
  {
    if (v37)
    {
      [v34 curatedLibraryTransitionChromeExpandPercentage];
      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      swift_getKeyPath();
      aBlock = v6;
      sub_1A52415D4();

      goto LABEL_54;
    }

    if (v36)
    {
      [v34 curatedLibraryTransitionChromeCollapsePercentage];
LABEL_54:
      PXFloatProgressBetween();
    }
  }

LABEL_55:
}

uint64_t sub_1A46E3C58(uint64_t a1)
{
  swift_beginAccess();
  sub_1A3EBECA4(v1 + 416, v9);
  swift_beginAccess();
  sub_1A423EEB8(a1, v1 + 416);
  swift_endAccess();
  sub_1A3EBECA4(v9, &v5);
  if (v6)
  {
    sub_1A3C57128(&v5, &v7);
    v3 = *(v1 + 16);
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    [v3 px:sub_1A524EA94() endPausingChanges:?];
    swift_unknownObjectRelease();
    sub_1A3C35B00(a1);
    sub_1A3C35B00(v9);
    return __swift_destroy_boxed_opaque_existential_0(&v7);
  }

  else
  {
    sub_1A3C35B00(a1);
    sub_1A3C35B00(v9);
    return sub_1A3C35B00(&v5);
  }
}

void sub_1A46E3D60()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v0 + 360) & 1) != 0 || (*(v0 + 240))
  {
    swift_getKeyPath();
    sub_1A52415D4();
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    swift_getKeyPath();
    sub_1A52415D4();
  }
}

void sub_1A46E3EC8()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if ((*(v0 + 216) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    PXFloatProgressBetween();
  }

  swift_getKeyPath();
  sub_1A52415D4();
}

uint64_t sub_1A46E40BC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 200);
}

__n128 sub_1A46E4130@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 216);
  result = *(v3 + 200);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

double sub_1A46E41B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415C4();

  return result;
}

double sub_1A46E4260()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 224);
}

void sub_1A46E42D0(double a1)
{
  if (*(v1 + 224) != a1)
  {
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if (*(v1 + 449) == 1)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      sub_1A46E3EC8();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }

    if (*(v1 + 224) == a1)
    {
      *(v1 + 224) = a1;
    }

    else
    {
      v4 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v4);
      sub_1A52415C4();
    }

    sub_1A46DF0D8();
  }
}

double sub_1A46E44DC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 224);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E457C()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 352);
}

double sub_1A46E45F0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A46E4668@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 272);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A46E4710()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A46E4788@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 288);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A46E4828(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415C4();

  return result;
}

double sub_1A46E48C0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A46DF0D8();
  }

  return result;
}

__n128 sub_1A46E4914@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = v3[19];
  *a2 = result;
  return result;
}

double sub_1A46E49B4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 336);
  *a2 = result;
  return result;
}

double sub_1A46E4A54()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if ((v0[344] & 1) == 0)
  {
    if ((v0[345] & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (v0[345] != ((v0[449] ^ 1) & 1))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A46E4BB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 344);
}

void sub_1A46E4C54(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 345);
}

void sub_1A46E4CF4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 346);
}

void sub_1A46E4D94(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v4 = *(v3 + 360);
  *a2 = *(v3 + 352);
  *(a2 + 8) = v4;
}

void sub_1A46E4E48(uint64_t result, uint64_t a2, char a3)
{
  *(result + 352) = a2;
  *(result + 360) = a3 & 1;
  if (*(result + 346) == (a3 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    sub_1A46E2BFC();
  }
}

double sub_1A46E4F50@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 368);
  *a2 = result;
  return result;
}

void sub_1A46E4FF0()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  v1 = v0[48];
  swift_getKeyPath();
  sub_1A52415D4();

  if (v0[49] != v1 - v0[47])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }
}

double sub_1A46E513C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 376);
  *a2 = result;
  return result;
}

double sub_1A46E51DC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 384);
  *a2 = result;
  return result;
}

double sub_1A46E527C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 392);
  *a2 = result;
  return result;
}

double sub_1A46E531C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  result = *(v3 + 400);
  *a2 = result;
  return result;
}

uint64_t sub_1A46E53BC()
{
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  return *(v0 + 449);
}

void sub_1A46E542C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 449);
}

void sub_1A46E54CC(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 449) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    (*(**(v1 + 456) + 184))(v2);
    sub_1A46E4A54();
    sub_1A46E55E8();
  }
}

void sub_1A46E55E8()
{
  v1 = v0;
  swift_getKeyPath();
  *&v6 = v0;
  sub_1A3C79318();
  sub_1A52415D4();

  if ((*(v0 + 449) & 1) == 0)
  {
    [*(v0 + 248) setPrepareForAnimation_];
    [*(v0 + 256) setPrepareForAnimation_];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v6 = v0;
    sub_1A52415C4();

    v3 = *(v0 + 408);
    if (v3)
    {
      *(v1 + 408) = 0;
      v4 = [objc_opt_self() sharedScheduler];
      [v4 endTrackedAnimation_];
    }

    swift_beginAccess();
    sub_1A3EBECA4(v1 + 416, &v6);
    v5 = *(&v7 + 1);
    sub_1A3C35B00(&v6);
    if (v5)
    {
      v6 = 0u;
      v7 = 0u;
      sub_1A46E3C58(&v6);
    }
  }
}

void sub_1A46E57A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  *a2 = *(v3 + 464);
}

void sub_1A46E5844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 144) = v2;
}

void sub_1A46E5898()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 160) = v1;
}

void sub_1A46E58E8(uint64_t a1, double a2)
{
  if (*(a1 + 88) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

id sub_1A46E59CC()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A46E0BEC();
  v6 = [v5 canResetToInitialState];

  if (v6)
  {
    v7 = *(v0 + 136);
    aBlock[4] = sub_1A46E5BF8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3E01E70;
    aBlock[3] = &block_descriptor_159_0;
    v8 = _Block_copy(aBlock);
    v9 = v7;

    [v9 resetToInitialStateWithCompletionHandler_];
    _Block_release(v8);

    sub_1A46E162C(0, 2);
  }

  else
  {
    v10 = sub_1A3C38A40();
    (*(v2 + 16))(v4, v10, v1);
    v11 = sub_1A524D244();
    v12 = sub_1A5246F04();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, v11, "All Photos can not be reset to initial state at this point", v13, 2u);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

uint64_t sub_1A46E5BF8()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3C38A40();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A524D244();
  v6 = sub_1A5246F04();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, v5, "Unable to reset All Photos to initial state", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1A46E5D44(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3E01E70;
  v4[3] = &block_descriptor_162_3;
  v3 = _Block_copy(v4);

  [v2 resetToInitialStateWithCompletionHandler_];
  _Block_release(v3);
}

id *sub_1A46E5DF8()
{
  sub_1A46E6AD0((v0 + 3), &unk_1EB129F60, sub_1A3C6F5F0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1A3C35B00((v0 + 52));

  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeCuratedLibraryViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A46E5EE4()
{
  sub_1A46E5DF8();

  return swift_deallocClassInstance();
}

id sub_1A46E5F3C()
{
  result = [v0 viewProviderIfLoaded];
  if (result)
  {
    v2 = result;
    v3 = [result viewModel];

    [v3 currentDataSource];
    sub_1A524D634();
  }

  return result;
}

__n128 sub_1A46E6070()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 304) = result;
  return result;
}

double sub_1A46E6128()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 336) = result;
  return result;
}

BOOL sub_1A46E61C4(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }

      v6 = *&a1;
      v7 = *&a4;
    }

    else
    {
      if (a6)
      {
        return 0;
      }

      v6 = *&a1;
      v7 = *&a4;
    }

    return v6 == v7;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 3)
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (a6 == 4 && a4 == 3 && *&a5 == 0.0)
          {
            return 1;
          }
        }

        else if (a6 == 4 && a4 == 2 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a1 | a2)
      {
        if (a6 == 4 && a4 == 1 && *&a5 == 0.0)
        {
          return 1;
        }
      }

      else if (a6 == 4 && !(a5 | a4))
      {
        return 1;
      }

      return 0;
    }

    if (a6 != 3)
    {
      return 0;
    }
  }

  return *&a1 == *&a4 && *&a2 == *&a5;
}

void sub_1A46E6304(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v2 + 32);
  if ((*(v3 + 360) & 1) != 0 || *(v3 + 352) != *&v4)
  {
    sub_1A46DE58C(v4, 0);
  }

  sub_1A46E3D60();
  sub_1A3EF6938();
  sub_1A524C524();
}

void sub_1A46E63B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((*(v2 + 360) & 1) == 0)
  {
    sub_1A46DE58C(0, 1);
  }

  *(v2 + 232) = 0;
  *(v2 + 240) = 1;
  sub_1A46DE254(v3);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  sub_1A46E3D60();
  sub_1A3EF6938();
  sub_1A524C524();
}

void sub_1A46E64A8(void *a1)
{
  sub_1A46E3D60();
  sub_1A3EF6938();
  sub_1A524C524();
}

double sub_1A46E651C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 224) = result;
  return result;
}

__n128 sub_1A46E652C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 200) = result;
  *(v1 + 216) = v2;
  return result;
}

unint64_t sub_1A46E6558()
{
  result = qword_1EB140730;
  if (!qword_1EB140730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeCuratedLibraryViewModel.ExpansionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeCuratedLibraryViewModel.ExpansionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1A46E6678(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1A46E6690(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_1A46E66B8(char a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if ((*(Strong + 344) & 1) == 0)
    {
      if (a1)
      {
        v3 = 0;
      }

      else
      {
        v3 = 2;
      }

      sub_1A46E162C(1, v3);
    }
  }

  return Strong != 0;
}

__n128 sub_1A46E678C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[11] = result;
  v1[12].n128_u8[0] = v2;
  return result;
}

double sub_1A46E67A4()
{
  v1 = *(v0 + 16);
  *(v1 + 344) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v1 + 344) == 1)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v2 = *(v1 + 98);
  }

  else
  {
    v2 = 0;
  }

  sub_1A46E0848(v2);
  return sub_1A46E4A54();
}

void sub_1A46E6880()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 104) = v0[3];
  *(v1 + 112) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E68C0()
{
  v1 = *(v0 + 16);
  *(v1 + 98) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  if (*(v1 + 344) == 1)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v2 = *(v1 + 98);
  }

  else
  {
    v2 = 0;
  }

  sub_1A46E0848(v2);
}

void sub_1A46E69FC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E6A3C()
{
  v1 = *(v0 + 16);
  *(v1 + 368) = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C79318();
  sub_1A52415D4();

  sub_1A46DFCC8(*(v1 + 368) > 0.5);
}

uint64_t sub_1A46E6AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56940(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PhotosSearchBarLocalizedPlaceholder(_:)(uint64_t a1)
{
  sub_1A3C451FC(a1, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v5);
    return v3;
  }

  else
  {
    sub_1A3C2CE9C(v5);
    return sub_1A3C38BD4(0xD000000000000026);
  }
}

void LemonadeSearchableContainer.fetchAssetUUIDsForSearchScope(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 48))(a1, a2);
  v4 = [v3 count];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
LABEL_10:

      return;
    }

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v3 objectAtIndexedSubscript_];
      v10 = [v9 uuid];

      if (!v10)
      {
        break;
      }

      v11 = sub_1A524C674();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A3D3D914(0, *(v7 + 2) + 1, 1, v7);
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = sub_1A3D3D914((v14 > 1), v15 + 1, 1, v7);
      }

      ++v6;
      *(v7 + 2) = v15 + 1;
      v16 = &v7[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      objc_autoreleasePoolPop(v8);
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
}

uint64_t PHAssetCollection.localizedTitleForSearchScope.getter()
{
  sub_1A46E75F0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v2;
  *(inited + 48) = sub_1A524C674();
  *(inited + 56) = v3;
  *(inited + 64) = sub_1A524C674();
  *(inited + 72) = v4;
  v5 = [v0 transientIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A524C674();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v16[0] = v7;
  v16[1] = v9;
  MEMORY[0x1EEE9AC00](v5);
  v15[2] = v16;
  v10 = sub_1A46E7664(sub_1A46E7788, v15, inited);
  swift_setDeallocating();
  sub_1A3C39988(0, &qword_1EB126FA0, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();

  if ((v10 & 1) == 0)
  {
    return sub_1A3C38BD4(0xD000000000000024);
  }

  v11 = [v0 localizedTitle];
  if (!v11)
  {
    return sub_1A3C38BD4(0xD000000000000024);
  }

  v12 = v11;
  v13 = sub_1A524C674();

  return v13;
}

id PHAssetCollection.fetchAssetsForSearchScope(options:)(uint64_t a1)
{
  v2 = [objc_opt_self() fetchAssetsInAssetCollection:v1 options:a1];

  return v2;
}

id sub_1A46E7310(uint64_t a1)
{
  v2 = [objc_opt_self() fetchAssetsInAssetCollection:*v1 options:a1];

  return v2;
}

uint64_t sub_1A46E7384(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_1A524C674();

  return v3;
}

id sub_1A46E7400()
{
  result = [v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46E74B4(uint64_t a1, SEL *a2)
{
  result = [objc_opt_self() *a2];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1A46E750C()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46E7594(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [objc_opt_self() *a4];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A46E75F0(uint64_t a1)
{
  if (!qword_1EB1407A8)
  {
    sub_1A3C39988(255, &qword_1EB126FA0, MEMORY[0x1E69E6720]);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1407A8);
    }
  }
}

uint64_t sub_1A46E7664(uint64_t (*a1)(__int128 *, __n128), uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = *(a3 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

BOOL sub_1A46E7714(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1A524EAB4() & 1;
    }
  }

  return result;
}

uint64_t sub_1A46E784C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A46E7CBC(a1);
  (*(*(*(v2 + qword_1EB1EBF10) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1A46E78CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

void sub_1A46E7A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBF10), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBF10 + 8), a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, sel_viewWillLayoutSubviews);
  sub_1A46E7AFC();
}

void sub_1A46E7AB4(void *a1)
{
  v4 = a1;
  sub_1A46E7A34(v4, v1, v2, v3);
}

void sub_1A46E7AFC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      type metadata accessor for LemonadeFeedSpec(0);
      sub_1A46E7F24();
      v17.top = v10;
      v17.left = v12;
      v17.bottom = v14;
      v17.right = v16;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v17);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1A46E7C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBF10), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBF10 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A46E7CBC(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for LemonadeFeedSpec(255);
  v7 = *(v4 + qword_1EB1EBF10);
  v6 = *(v4 + qword_1EB1EBF10 + 8);
  v18[0] = v5;
  v18[1] = v7;
  v18[2] = &protocol witness table for LemonadeFeedSpec;
  v18[3] = v6;
  v8 = type metadata accessor for LemonadeSpecsProviderView(0, v18);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v11 = LemonadeFeedSpec.__allocating_init()();
  *(v2 + qword_1EB1407B0) = v11;
  v18[0] = v11;
  v14 = v7;
  v15 = v6;
  v16 = a1;

  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v17);
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(v18, &v17, sub_1A46E7F7C, v5, v7, &protocol witness table for LemonadeFeedSpec, v6, v10);
  swift_getWitnessTable();
  v18[0] = sub_1A524B8E4();
  return sub_1A5249624();
}

unint64_t sub_1A46E7F24()
{
  result = qword_1EB13C680;
  if (!qword_1EB13C680)
  {
    type metadata accessor for LemonadeFeedSpec(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C680);
  }

  return result;
}

uint64_t sub_1A46E7FAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46E8024()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return v0[25];
}

double sub_1A46E80CC(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524C594();
  if (v3)
  {
    v1[25] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v6);
  }

  return result;
}

uint64_t sub_1A46E8254@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46E82D4()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return v0[26];
}

double sub_1A46E837C(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524C594();
  if (v3)
  {
    v1[26] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v6);
  }

  return result;
}

uint64_t sub_1A46E851C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return v0[4];
}

uint64_t sub_1A46E85C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A46E851C();
  *a1 = result;
  return result;
}

double sub_1A46E8618(uint64_t a1)
{
  v3 = sub_1A524C594();
  if (v3)
  {
    v1[4] = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v6);
  }

  return result;
}

double sub_1A46E8788(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1A46E87EC()
{
  sub_1A46EE774();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E8814(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EE774();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46E887C(uint64_t a1)
{
  swift_beginAccess();
  v3 = MEMORY[0x1E69E62F8];
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A46F0074(&unk_1EB140910, &qword_1EB12D788, v3, MEMORY[0x1E69E6320]);
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A46E8788(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 824))(v7);

  return result;
}

double sub_1A46E8A90(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1A46E8AF4()
{
  sub_1A46EE844();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46E8B1C(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EE844();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46E8B84(uint64_t a1)
{
  swift_beginAccess();
  v3 = MEMORY[0x1E69E62F8];
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A46F0074(&unk_1EB140910, &qword_1EB12D788, v3, MEMORY[0x1E69E6320]);
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A46E8A90(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 824))(v7);

  return result;
}

double sub_1A46E8D98(void *a1, uint64_t a2)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v2, v3, v4);
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

double sub_1A46E8E9C()
{
  sub_1A46EE914();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A46E8EC4@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EE914();

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1A46E8F2C(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  (*(*v1 + 824))(KeyPath, sub_1A46F0170, &v5, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A46E9048()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 176));
}

uint64_t sub_1A46E9104@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A46E9048();
  *a1 = result;
  return result;
}

double sub_1A46E9158(uint64_t a1)
{
  v3 = sub_1A524C594();
  if (v3)
  {
    *(v1 + *(*v1 + 176)) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v6);
  }

  return result;
}

uint64_t sub_1A46E92F8()
{
  v0 = sub_1A524D264();
  v1 = *sub_1A486DB9C();
  sub_1A5246DF4(v0, &dword_1A3C1C000, v1, "OneUp adapter set on session coordinator", 40, 2, MEMORY[0x1E69E7CC0]);

  return sub_1A46EAE24();
}

uint64_t sub_1A46E9374@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 184);
  swift_beginAccess();
  return sub_1A46F01C0(v1 + v3, a1, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t sub_1A46E93F4(uint64_t a1)
{
  v3 = *(*v1 + 184);
  swift_beginAccess();
  sub_1A46EFEAC(a1, v1 + v3);
  swift_endAccess();
  sub_1A46E92F8();
  return sub_1A46EF8F4(a1, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t (*sub_1A46E9488(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46E94F8;
}

uint64_t sub_1A46E94F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A46E92F8();
  }

  return result;
}

uint64_t sub_1A46E9604@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 816))(KeyPath);

  return sub_1A46E9374(a1);
}

uint64_t sub_1A46E96BC(uint64_t a1)
{
  v3 = *v1;
  sub_1A46E9374(v10);
  sub_1A46EF8F4(v10, &unk_1EB1407C0, sub_1A3E8814C);
  v9 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 824))(KeyPath, sub_1A46EE6F4, &v6, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A46EF8F4(a1, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t (*sub_1A46E97E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 816))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v9);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v6, v7, v10);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46E9488(v4);
  return sub_1A46E99B8;
}

void sub_1A46E99B8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v3, v4, v5);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

uint64_t OneUpSharePlaySessionCoordinator.Role.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A46E9B50(uint64_t a1)
{
  sub_1A524EC94();
  OneUpSharePlaySessionCoordinator.Role.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A46E9B8C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  swift_allocObject();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1A46E9C6C;

  return sub_1A46EE9D0(a1, a2, a3);
}

uint64_t sub_1A46E9C6C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v7 = *v1;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1A46E9E00(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = *v3;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1A46E9C6C;

  return sub_1A46EE9D0(a1, a2, a3);
}

double sub_1A46E9EF0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524C594();
  if (v3)
  {
    *(v1 + *(*v1 + 192)) = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v6);
  }

  return result;
}

double sub_1A46EA098()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1A46E837C(0);
  (*(*v0 + 592))(v21, v3);
  if (v21[3])
  {
    sub_1A3C341C8(v21, v18);
    sub_1A46EF8F4(v21, &unk_1EB1407C0, sub_1A3E8814C);
    v4 = v19;
    v5 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v5 + 8))(v4, v5);
    v6 = __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v6 = sub_1A46EF8F4(v21, &unk_1EB1407C0, sub_1A3E8814C);
  }

  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  KeyPath = swift_getKeyPath();
  v10 = *(*v0 + 816);
  (v10)(KeyPath);

  v21[0] = v0;
  MEMORY[0x1EEE9AC00](v11);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v7, v8, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v13 = *(*v0 + 152);
  swift_beginAccess();
  *(v1 + v13) = MEMORY[0x1E69E7CC0];

  sub_1A46E8D98(v1, &unk_1A5358FA0);
  MEMORY[0x1EEE9AC00](v14);
  swift_getKeyPath();
  v10();

  v18[0] = v1;
  MEMORY[0x1EEE9AC00](v15);
  swift_getKeyPath();
  sub_1A52415F4();

  v16 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v16) = MEMORY[0x1E69E7CC0];

  return sub_1A46E8D98(v1, &unk_1A5358FD8);
}

uint64_t sub_1A46EA43C()
{
  v1 = *v0;
  v2 = sub_1A5241BE4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52411C4();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 88);
  v32 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v28 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_1A5247804();
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v35 = v0[2];
  v14 = *(AssociatedConformanceWitness + 96);
  v34 = swift_checkMetadataState();
  v15 = AssociatedConformanceWitness;
  v14(v34, AssociatedConformanceWitness);
  sub_1A5247A74();
  (*(v29 + 8))(v9, AssociatedTypeWitness);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v19 = v32;
  v18 = v33;
  v17[2] = v32;
  v17[3] = v18;
  v17[4] = v16;

  v20 = v30;
  swift_getWitnessTable();
  sub_1A5247A94();

  (*(v31 + 8))(v13, v20);

  v44 = v19;
  v45 = v18;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  v46 = v0;
  v42 = v19;
  v43 = v18;
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v19, v18, v22);
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  sub_1A46E8D98(v0, &unk_1A5358FD8);
  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_1A524C634();
  [v23 BOOLForKey_];

  v25 = v37;
  (*(v15 + 128))(v34, v15);
  v26 = v36;
  sub_1A5241BD4();
  (*(v40 + 8))(v25, v41);
  return (*(v38 + 8))(v26, v39);
}

double sub_1A46EAAC8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v26 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = v6;
    v11 = *(*Strong + 296);
    v28 = *Strong + 296;
    v29 = v11;
    v12 = v11() & 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = *(AssociatedConformanceWitness + 120);
    if (v12 != (v14(AssociatedTypeWitness, AssociatedConformanceWitness) & 1))
    {
      v15 = sub_1A524D264();
      v16 = *sub_1A486DB9C();
      v17 = v27;
      (*(v27 + 16))(v8, a1, AssociatedTypeWitness);
      if (os_log_type_enabled(v16, v15))
      {
        v26[0] = v16;
        v18 = swift_slowAlloc();
        v26[1] = a1;
        v19 = v15;
        v20 = v18;
        *v18 = 67109120;
        v21 = v14(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
        (*(v17 + 8))(v8, AssociatedTypeWitness);
        *(v20 + 1) = v21;
        v22 = v26[0];
        _os_log_impl(&dword_1A3C1C000, v26[0], v19, "Updating isPaused=%{BOOL}d", v20, 8u);
        MEMORY[0x1A590EEC0](v20, -1, -1);
      }

      else
      {
        (*(v17 + 8))(v8, AssociatedTypeWitness);
      }

      v23 = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
      v24 = sub_1A46E837C(v23 & 1);
      v25 = v29(v24);
      sub_1A46ECD90(v25 & 1);
    }
  }

  return result;
}

uint64_t sub_1A46EAE24()
{
  v1 = v0;
  v2 = *v0;
  sub_1A46EFB70(0);
  v36 = v3;
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46EFCDC(0);
  v7 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46E9158(*off_1E7721F68);
  v44 = *(v2 + 80);
  v10 = v44;
  v11 = *(v2 + 88);
  v45 = v11;
  KeyPath = swift_getKeyPath();
  v13 = *v0;
  v38 = *(*v0 + 816);
  v39 = v13 + 816;
  (v38)(KeyPath);

  v14 = *(*v0 + 216);
  v48[0] = v1;
  v42 = v10;
  v43 = v11;
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v10, v11, v15);
  WitnessTable = swift_getWitnessTable();
  v41 = v14;
  v37 = WitnessTable;
  sub_1A52415F4();

  v17 = *(*v1 + 152);
  swift_beginAccess();
  *(v1 + v17) = MEMORY[0x1E69E7CC0];

  v18.n128_f64[0] = sub_1A46E8D98(v1, &unk_1A5358FA0);
  (*(*v1 + 592))(&v46, v18);
  if (!v47)
  {
    return sub_1A46EF8F4(&v46, &unk_1EB1407C0, sub_1A3E8814C);
  }

  v34 = v7;
  sub_1A3C34460(&v46, v48);
  v19 = v49;
  v20 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v21 = (*(v20 + 24))(v19, v20);
  v22 = [v21 identifier];

  sub_1A46E9158(v22);
  v23 = v49;
  v24 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  *&v46 = (*(v24 + 88))(v23, v24);
  sub_1A46EFBF8(0, &qword_1EB1408E0, &type metadata for OneUpSharePlayTileTransform, MEMORY[0x1E695BED0]);
  sub_1A46EFC60();
  sub_1A46EFDA8();
  sub_1A5247A84();

  if (qword_1EB1CEE40 != -1)
  {
    swift_once();
  }

  v25 = sub_1A524D454();
  __swift_project_value_buffer(v25, qword_1EB1CEE48);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v26 = sub_1A524D474();
  *&v46 = v26;
  sub_1A46EFF60(&qword_1EB1408F8, sub_1A46EFB70, MEMORY[0x1E695BD38]);
  sub_1A45EC164();
  v27 = v36;
  sub_1A5247A64();

  (*(v35 + 8))(v5, v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v10;
  v29[3] = v11;
  v29[4] = v28;
  sub_1A46EFF60(&qword_1EB140908, sub_1A46EFCDC, MEMORY[0x1E695BE68]);
  v30 = v34;
  sub_1A5247A94();

  v31 = (*(v40 + 8))(v9, v30);
  MEMORY[0x1EEE9AC00](v31);
  *(&v34 - 2) = v10;
  *(&v34 - 1) = v11;
  swift_getKeyPath();
  v38();

  *&v46 = v1;
  MEMORY[0x1EEE9AC00](v32);
  *(&v34 - 2) = v10;
  *(&v34 - 1) = v11;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  sub_1A46E8D98(v1, &unk_1A5358FA0);
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

void sub_1A46EB550(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_1A46EF014(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = *(a1 + 1);
  v25 = *(a1 + 2);
  v24 = v15;
  v16 = a1[6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v21 = v14;
    v22 = v13;
    v23 = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v17 = *(swift_getAssociatedConformanceWitness() + 72);
    swift_checkMetadataState();
    v17();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    if ((v19 & 1) == 0 && (sub_1A46EDA20() & 1) == 0)
    {
      v26 = v21;
      v27 = v22;
      v28 = v24;
      v29 = v25;
      v30 = v16;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A46EB948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = sub_1A524CC54();
  *(v5 + 80) = sub_1A524CC44();
  v7 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v7;
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = *(a5 + 48);
  v8 = swift_task_alloc();
  *(v5 + 88) = v8;
  *v8 = v5;
  v8[1] = sub_1A46EBA20;

  return sub_1A46ED108(v5 + 16);
}

uint64_t sub_1A46EBA20()
{

  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46EBB5C, v1, v0);
}

uint64_t sub_1A46EBB5C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A46EBBBC()
{
  v1 = v0;
  v2 = *v0;
  v28 = *(*v0 + 88);
  v3 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v25 - v7;
  v26 = &v25 - v7;
  sub_1A46EF014(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, &v1[*(*v1 + 144)], AssociatedTypeWitness);
  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 2) = v14;
  *(v17 + 3) = v18;
  v19 = v27;
  v20 = v28;
  *(v17 + 4) = v3;
  *(v17 + 5) = v20;
  (*(v5 + 32))(&v17[v15], v26, v19);
  *&v17[v16] = v13;

  v21 = sub_1A3D4D930(0, 0, v11, &unk_1A5359210, v17);
  sub_1A3EE1368(v21, MEMORY[0x1E69E7CA8] + 8);

  v31 = v3;
  v32 = v20;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 816))(KeyPath);

  v33 = v1;
  v29 = v3;
  v30 = v20;
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator(255, v3, v20, v23);
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  return sub_1A46E8D98(v1, &unk_1A5358FD8);
}

uint64_t sub_1A46EC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[35] = a6;
  v7[36] = a7;
  v7[33] = a4;
  v7[34] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[37] = AssociatedTypeWitness;
  v7[38] = *(AssociatedTypeWitness - 8);
  v7[39] = swift_task_alloc();
  sub_1A46EF014(0, &qword_1EB1408B8, sub_1A46EF964, MEMORY[0x1E69E6720]);
  v7[40] = swift_task_alloc();
  sub_1A46EF014(0, &qword_1EB1408C8, sub_1A46EF964, MEMORY[0x1E69E8698]);
  v7[41] = v9;
  v7[42] = *(v9 - 8);
  v7[43] = swift_task_alloc();
  sub_1A46EF014(0, &qword_1EB1408D0, sub_1A46EF964, MEMORY[0x1E69E8688]);
  v7[44] = v10;
  v7[45] = *(v10 - 8);
  v7[46] = swift_task_alloc();
  v7[47] = sub_1A524CC54();
  v7[48] = sub_1A524CC44();
  v12 = sub_1A524CBC4();
  v7[49] = v12;
  v7[50] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A46EC278, v12, v11);
}

uint64_t sub_1A46EC278()
{
  v2 = v0[42];
  v1 = v0[43];
  v16 = v0[41];
  sub_1A46EF5EC(0);
  v4 = v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = sub_1A46EFF60(&qword_1EB140890, sub_1A46EF5EC, &unk_1A52FD950);
  v8 = sub_1A46EFF60(&qword_1EB140898, sub_1A46EF5EC, &unk_1A52FD978);
  v15(v4, v4, v7, v8, v6, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v2 + 8))(v1, v16);
  swift_beginAccess();
  v9 = sub_1A524CC44();
  v0[51] = v9;
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_1A46EC4AC;
  v11 = v0[44];
  v12 = v0[40];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v9, v13, v11);
}

uint64_t sub_1A46EC4AC()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1A46EC5F0, v3, v2);
}

uint64_t sub_1A46EC5F0()
{
  v1 = *(v0 + 320);
  sub_1A46EF964(0);
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
  }

  else
  {
    v4 = *v1;
    v5 = *(v3 + 48);
    if (swift_weakLoadStrong())
    {
      log = v4;
      v18 = v1;
      v6 = *(v0 + 304);
      v7 = *(v0 + 312);
      v8 = *(v0 + 296);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      v9 = *(swift_getAssociatedConformanceWitness() + 72);
      swift_checkMetadataState();
      v9();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v11 = (*(AssociatedConformanceWitness + 120))(v8, AssociatedConformanceWitness);
      (*(v6 + 8))(v7, v8);
      if ((v11 & 1) == 0)
      {
        v16 = sub_1A46EF598();
        sub_1A3DC0EC0(log, &type metadata for OneUpSharePlayTileTransformMessageSchema, v16, (v0 + 72));
      }

      (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

      v12 = sub_1A5241BE4();
      (*(*(v12 - 8) + 8))(&v18[v5], v12);
    }

    else
    {
      (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

      v13 = sub_1A5241BE4();
      (*(*(v13 - 8) + 8))(v1 + v5, v13);
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A46ECD90(char a1)
{
  (*(*v1 + 592))(v9);
  if (v9[3])
  {
    sub_1A3C341C8(v9, v6);
    sub_1A46EF8F4(v9, &unk_1EB1407C0, sub_1A3E8814C);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 144))(a1 & 1, v3, v4);
    result = __swift_destroy_boxed_opaque_existential_0(v6);
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_1A46EF8F4(v9, &unk_1EB1407C0, sub_1A3E8814C);
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  if (v1[24] == 1)
  {
    return (*(*v1 + 800))(sub_1A46EF69C, v1);
  }

  return result;
}

void sub_1A46ECEF4(void *a1, void *a2)
{
  sub_1A4377480(0);
  if (swift_dynamicCastClass())
  {
    type metadata accessor for OneUpSharePlayVideoPlaybackDelegate();
    swift_unknownObjectRetain();
    v4 = swift_unknownObjectRetain();
    v5 = sub_1A4834328(v4);
    v14 = v5;
    sub_1A46E8F2C(v5);
    v6 = sub_1A524D264();
    v7 = *sub_1A486DB9C();
    if (os_log_type_enabled(v7, v6))
    {
      swift_unknownObjectRetain();
      v8 = v7;
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136446210;
      v10 = [a1 uuid];
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = sub_1A524C674();
        v13 = v12;

        sub_1A3C2EF94(v11, v13, &v16);
      }

      __break(1u);
    }

    else
    {
      [a2 setDelegate_];
      sub_1A524D6E4();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A46ED108(uint64_t a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = *(a1 + 16);
  *(v2 + 208) = *a1;
  *(v2 + 224) = v3;
  *(v2 + 240) = *(a1 + 32);
  *(v2 + 256) = *(a1 + 48);
  sub_1A524CC54();
  *(v2 + 264) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v2 + 272) = v5;
  *(v2 + 280) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A46ED1E0, v5, v4);
}

void sub_1A46ED1E0()
{
  v20 = v0;
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 288) = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = v3;
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136446466;
    *(v0 + 72) = v10;
    *(v0 + 80) = v9;
    *(v0 + 88) = v8;
    *(v0 + 96) = v7;
    *(v0 + 104) = v6;
    *(v0 + 112) = v5;
    *(v0 + 120) = v4;
    v13 = sub_1A3E57EB4();
    v14 = sub_1A3DC2858(&type metadata for OneUpSharePlayTileTransformMessagePayload, v13);
    sub_1A3C2EF94(v14, v15, &v19);
  }

  v16 = *(v0 + 216);
  v17 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 24) = v16;
  v18 = *(v0 + 240);
  *(v0 + 32) = *(v0 + 224);
  *(v0 + 48) = v18;
  *(v0 + 64) = v17;
  sub_1A46EF598();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46ED71C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A46ED898;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A46ED838;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A46ED838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A46ED898()
{

  v1 = v0[39];
  v2 = v0[36];
  v3 = sub_1A524D244();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "Error sending tile transform message: %@", v6, 0xCu);
    sub_1A3CB65E4(v7);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A46EDA20()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 192));
}

uint64_t sub_1A46EDADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A46EDA20();
  *a1 = result & 1;
  return result;
}

double sub_1A46EDB34(uint64_t a1)
{
  *(v1 + *(*v1 + 208)) = a1;

  return result;
}

double sub_1A46EDB58()
{
  sub_1A46EF4DC();

  return result;
}

double sub_1A46EDB80@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EF4DC();

  return result;
}

double sub_1A46EDBE8(uint64_t a1, __n128 a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A46EF014(0, &qword_1EB140920, MEMORY[0x1E695BF10], MEMORY[0x1E69E6720]);
  sub_1A46F0074(&qword_1EB13E870, &qword_1EB140920, v4, MEMORY[0x1E69E7C80]);
  v5 = sub_1A524C594();
  if (v5)
  {
    *(v2 + *(*v2 + 208)) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 824))(v8);
  }

  return result;
}

double sub_1A46EDDFC(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v23 = v3;
  sub_1A46EF014(0, &qword_1EB13E840, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  sub_1A46EF078(0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + *(v3 + 200));
  v10 = qword_1EB1CEE60;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1A524D454();
  __swift_project_value_buffer(v11, qword_1EB1CEE68);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v12 = sub_1A524D474();
  v26 = v12;
  v13 = sub_1A524D434();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_1A46EFBF8(0, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  sub_1A46EF1B4(&unk_1EB140800, MEMORY[0x1E695BF88]);
  sub_1A45EC164();
  sub_1A5247A54();
  sub_1A46EF8F4(v6, &qword_1EB13E840, MEMORY[0x1E69E8050]);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v23;
  v15[2] = *(v23 + 80);
  v15[3] = *(v16 + 88);
  v15[4] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A46EF158;
  *(v17 + 24) = v15;
  sub_1A46EFF60(&qword_1EB140810, sub_1A46EF078, MEMORY[0x1E695BE50]);
  v18 = v25;
  v19 = sub_1A5247A94();

  v20.n128_f64[0] = (*(v24 + 8))(v9, v18);
  return sub_1A46EDBE8(v19, v20);
}

uint64_t sub_1A46EE1F0(void (*a1)(double))
{
  v2 = sub_1A46E9EF0(1);
  a1(v2);
  sub_1A46EFBF8(0, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  sub_1A46EF1B4(&qword_1EB140818, MEMORY[0x1E695BF80]);
  return sub_1A5247994();
}

char *OneUpSharePlaySessionCoordinator.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  swift_unknownObjectRelease();
  sub_1A46EF8F4(v0 + *(*v0 + 184), &unk_1EB1407C0, sub_1A3E8814C);

  v3 = *(*v0 + 216);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OneUpSharePlaySessionCoordinator.__deallocating_deinit()
{
  OneUpSharePlaySessionCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A46EE67C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1A524D454();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_1A524D444();
}

uint64_t sub_1A46EE774()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  v2 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A46EE844()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  v2 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A46EE914()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 168));
}

uint64_t sub_1A46EE9D0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = *v3;
  *(v4 + 40) = *(*v3 + 88);
  *(v4 + 48) = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 56) = AssociatedTypeWitness;
  *(v4 + 64) = *(AssociatedTypeWitness - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 120) = *a3;
  *(v4 + 80) = sub_1A524CC54();
  *(v4 + 88) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v4 + 96) = v9;
  *(v4 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A46EEB1C, v9, v8);
}

uint64_t sub_1A46EEB1C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 120);
  v3 = *(v0 + 56);
  v20 = *(v0 + 64);
  v4 = *(v0 + 32);
  v19 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *v4;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x4091300000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *&v4[*(v6 + 152)] = MEMORY[0x1E69E7CC0];
  *&v4[*(*v4 + 160)] = v7;
  *&v4[*(*v4 + 168)] = 0;
  *&v4[*(*v4 + 176)] = *off_1E7721F68;
  v8 = &v4[*(*v4 + 184)];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v4[*(*v4 + 192)] = 0;
  v9 = *(*v4 + 200);
  sub_1A46EFBF8(0, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  swift_allocObject();
  *&v4[v9] = sub_1A5247904();
  *&v4[*(*v4 + 208)] = 0;
  sub_1A5241604();
  *(v4 + 2) = v5;
  v4[24] = v2;
  v10 = *(*v4 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v4[v10], v19, AssociatedTypeWitness);
  v12 = *(*v4 + 168);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v4[v12] = 0;
  v4[25] = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 72);
  swift_checkMetadataState();
  v13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 120))(v3, AssociatedConformanceWitness);
  (*(v20 + 8))(v1, v3);
  v4[26] = v15 & 1;
  sub_1A46EA43C();
  *(v0 + 112) = sub_1A524CC44();
  v17 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46EEF00, v17, v16);
}

uint64_t sub_1A46EEF00()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A46EEF64, v1, v2);
}

uint64_t sub_1A46EEF64()
{
  v1 = *(v0 + 32);

  v2.n128_f64[0] = sub_1A46EBBBC();
  (*(*v1 + 792))(v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 32);

  return v3(v4);
}

void sub_1A46EF014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46EF078(uint64_t a1)
{
  if (!qword_1EB1407F0)
  {
    sub_1A46EFBF8(255, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
    sub_1A3C52C70(255, &qword_1EB12B180, 0x1E69E9610);
    sub_1A46EF1B4(&unk_1EB140800, MEMORY[0x1E695BF88]);
    sub_1A45EC164();
    v1 = sub_1A5247824();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1407F0);
    }
  }
}

double sub_1A46EF158()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A46E9EF0(0);
  }

  return result;
}

uint64_t sub_1A46EF1B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A46EFBF8(255, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46EF23C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A46EF4DC()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 208));
}

unint64_t sub_1A46EF598()
{
  result = qword_1EB140880;
  if (!qword_1EB140880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140880);
  }

  return result;
}

void sub_1A46EF5EC(uint64_t a1)
{
  if (!qword_1EB140888)
  {
    v2 = sub_1A46EF598();
    v4 = type metadata accessor for OneUpSharePlayMessage(a1, &type metadata for OneUpSharePlayTileTransformMessageSchema, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB140888);
    }
  }
}

unint64_t sub_1A46EF648()
{
  result = qword_1EB1408A8;
  if (!qword_1EB1408A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1408A8);
  }

  return result;
}

uint64_t sub_1A46EF69C()
{
  (*(*v0 + 592))(v4);
  if (v4[3])
  {
    sub_1A3C341C8(v4, v3);
    sub_1A46EF8F4(v4, &unk_1EB1407C0, sub_1A3E8814C);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    static OneUpSharePlayTileTransform.identity(for:)(0, 0, &v2);
  }

  return sub_1A46EF8F4(v4, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t sub_1A46EF7C8()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A46EC00C(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t sub_1A46EF8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A46EF014(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A46EF964(uint64_t a1)
{
  if (!qword_1EB1408C0)
  {
    sub_1A46EF5EC(255);
    sub_1A5241BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1408C0);
    }
  }
}

uint64_t sub_1A46EF9D4()
{
  v1 = *(v0 + 24);
  (*(**(v0 + 16) + 592))(v13);
  if (!v13[3])
  {
    return sub_1A46EF8F4(v13, &unk_1EB1407C0, sub_1A3E8814C);
  }

  sub_1A3C341C8(v13, v10);
  sub_1A46EF8F4(v13, &unk_1EB1407C0, sub_1A3E8814C);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v8[2] = *(v1 + 32);
  v9 = *(v1 + 48);
  v5 = *(v3 + 128);
  sub_1A46EFB14(v1, v7);
  v5(v8, 1, v2, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void sub_1A46EFB70(uint64_t a1)
{
  if (!qword_1EB1408D8)
  {
    sub_1A46EFBF8(255, &qword_1EB1408E0, &type metadata for OneUpSharePlayTileTransform, MEMORY[0x1E695BED0]);
    sub_1A46EFC60();
    v1 = sub_1A52477E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1408D8);
    }
  }
}

void sub_1A46EFBF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A46EFC60()
{
  result = qword_1EB1408E8;
  if (!qword_1EB1408E8)
  {
    sub_1A46EFBF8(255, &qword_1EB1408E0, &type metadata for OneUpSharePlayTileTransform, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1408E8);
  }

  return result;
}

void sub_1A46EFCDC(uint64_t a1)
{
  if (!qword_1EB1408F0)
  {
    sub_1A46EFB70(255);
    sub_1A3C52C70(255, &qword_1EB12B180, 0x1E69E9610);
    sub_1A46EFF60(&qword_1EB1408F8, sub_1A46EFB70, MEMORY[0x1E695BD38]);
    sub_1A45EC164();
    v1 = sub_1A5247834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1408F0);
    }
  }
}

unint64_t sub_1A46EFDA8()
{
  result = qword_1EB140900;
  if (!qword_1EB140900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140900);
  }

  return result;
}

uint64_t sub_1A46EFE08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A46EB948(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A46EFEAC(uint64_t a1, uint64_t a2)
{
  sub_1A46EF014(0, &unk_1EB1407C0, sub_1A3E8814C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46EFF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A46F0074(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A46EF014(255, a2, MEMORY[0x1E695BF10], a3);
    sub_1A46EFF60(&qword_1EB13E878, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A46F0120()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 208)) = *(v0 + 24);
}

uint64_t sub_1A46F0170()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 168)) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A46F01C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A46EF014(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46F02C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A46F03E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0260(v4);
  return sub_1A46F0598;
}

uint64_t sub_1A46F05A4()
{
  v1 = qword_1EB140940;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F05E8(char a1)
{
  v3 = qword_1EB140940;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F0698@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F079C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0638(v4);
  return sub_1A46F0954;
}

uint64_t sub_1A46F09E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A46F0B00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0980(v4);
  return sub_1A46F0CB8;
}

uint64_t sub_1A46F0CC4()
{
  v1 = qword_1EB140950;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F0D08(char a1)
{
  v3 = qword_1EB140950;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F0DB8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F0EBC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0D58(v4);
  return sub_1A46F1074;
}

uint64_t sub_1A46F1100@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A46F1220(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F10A0(v4);
  return sub_1A46F13D8;
}

void sub_1A46F13E4(_BYTE *a1@<X8>)
{
  v3 = qword_1EB140960;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A46F1438(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB140960;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_1A46F14E8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A46F155C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A8))(&v4);
}

double sub_1A46F15E0(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140960;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8E8))(v9);
  }

  return result;
}

uint64_t (*sub_1A46F1790(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F1488(v4);
  return sub_1A46F1948;
}

uint64_t sub_1A46F19C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A46F1ACC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F1960(v4);
  return sub_1A46F1C84;
}

uint64_t sub_1A46F1CFC@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46F1DA4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x308);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A46F1E88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB140970);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A46F20C8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F1C9C(v4);
  return sub_1A46F2280;
}

void sub_1A46F228C(uint64_t a1)
{
  v3 = qword_1EB140978;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F2344@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x330))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F23A8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x338);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_1A46F2454(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F22E4(v4);
  return sub_1A46F260C;
}

double sub_1A46F2618(uint64_t a1)
{
  *(v1 + qword_1EB140980) = a1;

  return result;
}

double sub_1A46F2630()
{
  sub_1A4702348();

  return result;
}

double sub_1A46F2658@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4702348();

  return result;
}

double sub_1A46F26C0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*((*v3 & *v1) + 0x8E8))(KeyPath, sub_1A47048A4, &v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A46F27A8(uint64_t a1)
{
  v3 = qword_1EB140988;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F2860@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x390))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F28C4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x398);
  v4 = *a1;
  return v3(v2);
}

void sub_1A46F2948(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4702404(0, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
  sub_1A4444E20();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140988;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }
}

uint64_t (*sub_1A46F2B30(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F2800(v4);
  return sub_1A46F2CE8;
}

uint64_t (*sub_1A46F2CF4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46F2D58;
}

uint64_t sub_1A46F2D70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F2DD4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A46F2E58(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1A524C594();
  if (v4)
  {
    sub_1A470248C(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8E8))(v6);
  }
}

uint64_t (*sub_1A46F3034(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F2CF4(v4);
  return sub_1A46F31EC;
}

double sub_1A46F31F8(uint64_t a1)
{
  v3 = qword_1EB140998;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1A46F32B0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46F3384@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

double sub_1A46F3454(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3DC9268(0);
  sub_1A3DC92EC();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140998;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }

  return result;
}

uint64_t (*sub_1A46F3614(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F3250(v4);
  return sub_1A46F37CC;
}

uint64_t sub_1A46F37D8()
{
  v1 = qword_1EB1409A0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F381C(char a1)
{
  v3 = qword_1EB1409A0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F38CC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x420))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F39D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F386C(v4);
  return sub_1A46F3B88;
}

uint64_t sub_1A46F3C14@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x450))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46F3CB0(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x458);

  return v6(sub_1A3E30F88, v5);
}

uint64_t sub_1A46F3D70()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  v3 = (v0 + qword_1EB1409A8);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

double sub_1A46F3E54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x8E8))(KeyPath, sub_1A47025BC, &v10, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A46F3F68(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F3BB4(v4);
  return sub_1A46F4120;
}

double sub_1A46F412C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB1409B0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1A46F41EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x480))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A46F42D0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46F43B4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C398E8(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1A4444FB4();
  v6 = sub_1A524C594();
  if (v6)
  {
    v7 = (v2 + qword_1EB1409B0);
    swift_beginAccess();
    *v7 = a1;
    v7[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x8E8))(v10);
  }

  return result;
}

uint64_t (*sub_1A46F45A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F418C(v4);
  return sub_1A46F475C;
}

uint64_t sub_1A46F47E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A46F4908(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F4788(v4);
  return sub_1A46F4AC0;
}

uint64_t sub_1A46F4ACC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3C0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A46F4B8C()
{
  v1 = qword_1EB1409C0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F4BD0(char a1)
{
  v3 = qword_1EB1409C0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F4C80@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F4D84(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F4C20(v4);
  return sub_1A46F4F3C;
}

void sub_1A46F4F48(uint64_t a1)
{
  v3 = qword_1EB1409C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F5000@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x528))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F5064(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x530);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A46F50E8(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

void sub_1A46F51E0(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4702404(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    swift_beginAccess();
    v10 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x8E8))(v12);
  }
}

uint64_t (*sub_1A46F53C4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F4FA0(v4);
  return sub_1A46F557C;
}

uint64_t sub_1A46F5588()
{
  v1 = v0 + qword_1EB1409D0;
  swift_beginAccess();
  return *v1;
}

void sub_1A46F55D4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB1409D0;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
}

uint64_t sub_1A46F5698@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1A46F5770()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  v3 = v0 + qword_1EB1409D0;
  swift_beginAccess();
  return *v3;
}

double sub_1A46F5848(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4704BB8(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB1409D0;
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x8E8))(v13);
  }

  return result;
}

uint64_t (*sub_1A46F5A5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F5638(v4);
  return sub_1A46F5C14;
}

uint64_t sub_1A46F5C20()
{
  result = sub_1A4702348();
  if (result)
  {
    v1 = *(*result + 280);

    v3 = v1(v2);

    v4 = *(v3 + 24);
    v5 = v4;

    if (v4 && (v6 = [v5 fetchedObjects], v5, v6))
    {
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v7 = sub_1A524CA34();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A46F5D00(_BYTE *a1@<X8>)
{
  v3 = qword_1EB1409E0;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A46F5D54(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB1409E0;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_1A46F5E04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x590))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A46F5E78(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x598))(&v4);
}

void sub_1A46F5EFC(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v6 & *v3) + 0x8E0))(KeyPath);

  v8 = *a2;
  swift_beginAccess();
  *a3 = *(v3 + v8);
}

double sub_1A46F5FD4(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB1409E0;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8E8))(v9);
  }

  return result;
}

uint64_t (*sub_1A46F6184(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F5DA4(v4);
  return sub_1A46F633C;
}

uint64_t sub_1A46F6348()
{
  v1 = qword_1EB1409E8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F638C(char a1)
{
  v3 = qword_1EB1409E8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F643C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5C0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F6540(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F63DC(v4);
  return sub_1A46F66F8;
}

uint64_t sub_1A46F6704()
{
  v1 = qword_1EB1409F0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F6748(char a1)
{
  v3 = qword_1EB1409F0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F67F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5F0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F68FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F6798(v4);
  return sub_1A46F6AB4;
}

uint64_t sub_1A46F6AC0()
{
  v1 = qword_1EB1409F8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F6B04(char a1)
{
  v3 = qword_1EB1409F8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F6BB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x620))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F6CB8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F6B54(v4);
  return sub_1A46F6E70;
}

uint64_t sub_1A46F6E7C()
{
  v1 = qword_1EB140A00;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F6EC0(char a1)
{
  v3 = qword_1EB140A00;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F6F70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x650))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F7074(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F6F10(v4);
  return sub_1A46F722C;
}

uint64_t sub_1A46F72A4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46F734C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x688);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A46F7430(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB140A08);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A46F7670(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F7244(v4);
  return sub_1A46F7828;
}

uint64_t sub_1A46F7834@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x698))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46F78FC()
{
  v1 = qword_1EB140930;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F7940(char a1)
{
  v3 = qword_1EB140930;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F79F0()
{
  v1 = qword_1EB140A10;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F7A34(uint64_t a1)
{
  v3 = qword_1EB140A10;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F7AE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6C8))();
  *a2 = result;
  return result;
}

double sub_1A46F7BBC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A3C29E04(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType, &unk_1A5304CD0);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140A10;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }

  return result;
}

uint64_t (*sub_1A46F7D9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F7A84(v4);
  return sub_1A46F7F54;
}

uint64_t sub_1A46F7F60()
{
  v1 = qword_1EB140A18;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F7FA4(char a1)
{
  v3 = qword_1EB140A18;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F8068@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6F8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F8158(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F7FF4(v4);
  return sub_1A46F8310;
}

void sub_1A46F831C()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v77 = &v66 - v17;
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0))(v16);
  if (v19)
  {
  }

  v20 = (*((*v18 & *v0) + 0x700))(v19 == 0);
  v21 = (*v18 & *v0) + 1832;
  v22 = *((*v18 & *v0) + 0x728);
  v23 = *((v22)(v20) + 16);

  v24 = (*((*v18 & *v0) + 0x880))(v23);
  v25 = (*v18 & *v0) + 1928;
  v76 = *((*v18 & *v0) + 0x788);
  v26 = (v76)(v24);
  if (!*(v26 + 16))
  {

LABEL_7:
    v34 = (*((*v18 & *v0) + 0x3C0))(v33);
    if (v34)
    {

      v35 = 0;
    }

    else
    {
      v47 = v18;
      v48 = *(v76() + 16);

      if (v48)
      {
        v35 = 0;
        v18 = v47;
      }

      else
      {
        v18 = v47;
        if ((*((*v47 & *v0) + 0x878))(v49) < 1)
        {
          v35 = 0;
        }

        else
        {
          v55 = v22();
          if (*(v55 + 16))
          {
            v73 = v6;
            v56 = *(v2 + 80);
            v66 = v1;
            v57 = v2;
            v58 = *(v2 + 16);
            v76 = ((v56 + 32) & ~v56);
            v77 = v58;
            v59 = v74;
            (v58)(v74, v76 + v55, v1);

            v60 = v57;
            v61 = v73;
            v62 = v59;
            v63 = v66;
            (*(v57 + 32))(v73, v62, v66);
            sub_1A4704BB8(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
            v64 = v76;
            v65 = swift_allocObject();
            *(v65 + 16) = xmmword_1A52F8E10;
            (v77)(v64 + v65, v61, v63);
            v18 = v47;
            (*((*v47 & *v0) + 0x790))(v65);
            (*(v60 + 8))(v61, v63);
            v35 = 1;
          }

          else
          {

            v35 = 0;
          }
        }
      }
    }

    goto LABEL_15;
  }

  v71 = v11;
  v72 = v25;
  v73 = v6;
  v68 = *(v2 + 80);
  v27 = *(v2 + 16);
  v69 = (v68 + 32) & ~v68;
  v70 = v27;
  v27(v14, (v26 + v69), v1);

  v28 = v77;
  v67 = *(v2 + 32);
  v29 = v67(v77, v14, v1);
  v30 = (v22)(v29);
  v31 = sub_1A46F8B90(v28, v30);

  if (v31)
  {
    v33 = (*(v2 + 8))(v28, v1);
    v18 = MEMORY[0x1E69E7D40];
    v6 = v73;
    goto LABEL_7;
  }

  v36 = v2;
  v74 = v21;
  v76 = v22;
  v37 = (v22)(v32);
  if (*(v37 + 16))
  {
    v38 = v69;
    v39 = v75;
    v40 = v1;
    v41 = v1;
    v42 = v70;
    v70(v75, (v37 + v69), v41);

    v43 = v71;
    v67(v71, v39, v40);
    sub_1A4704BB8(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1A52F8E10;
    v42(v44 + v38, v43, v40);
    v45 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x790))(v44);
    v46 = *(v36 + 8);
    v46(v43, v40);
    v46(v77, v40);
    v18 = v45;
  }

  else
  {

    v18 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x790))(MEMORY[0x1E69E7CC0]);
    (*(v2 + 8))(v77, v1);
  }

  v35 = 1;
  v22 = v76;
LABEL_15:
  v50 = (*((*v18 & *v0) + 0x570))();
  if (v50)
  {
    if (v50 >> 62)
    {
      v51 = sub_1A524E2B4();

      if (v35)
      {
        return;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v35)
      {
        return;
      }
    }
  }

  else
  {
    if (v35)
    {
      return;
    }

    v51 = 0;
  }

  v52 = *((v22)(v50) + 16);

  if (v51 <= 4 && v51 < v52 || (v54 = *((v22)(v53) + 16), , v54 < v51))
  {
    sub_1A46FCE80();
  }
}

BOOL sub_1A46F8B90(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1A523FBB4();
    ++v2;
    sub_1A3C29E04(&qword_1EB1260F0, MEMORY[0x1E6985D18], MEMORY[0x1E6985D20]);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

double sub_1A46F8C9C(uint64_t a1)
{
  v3 = qword_1EB140A20;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A46F831C();
  return result;
}

uint64_t (*sub_1A46F8CF8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46F8D5C;
}

uint64_t sub_1A46F8D74(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A46F8DB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x728))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A46F8ED8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F8CF8(v4);
  return sub_1A46F9090;
}

uint64_t sub_1A46F909C()
{
  v1 = qword_1EB140A28;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F90E0(char a1)
{
  v3 = qword_1EB140A28;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F91A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x758))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A46F9294(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F9130(v4);
  return sub_1A46F944C;
}

void sub_1A46F9458(uint64_t a1)
{
  v3 = qword_1EB140A30;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x760))(1);
  sub_1A46FCE80();
}

void (*sub_1A46F9500(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46F9564;
}

void sub_1A46F9564(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x760))(1);
    sub_1A46FCE80();
  }
}

uint64_t sub_1A46F95D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x788))();
  *a2 = result;
  return result;
}

double sub_1A46F96F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4704BB8(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v9 = sub_1A524C594();
  if (v9)
  {
    a5(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v5) + 0x8E8))(v12);
  }

  return result;
}

uint64_t (*sub_1A46F98CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F9500(v4);
  return sub_1A46F9A84;
}

uint64_t sub_1A46F9A90()
{
  v1 = qword_1EB140A38;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46F9AD4(char a1)
{
  v3 = qword_1EB140A38;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F9B84@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46F9C60(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

double sub_1A46F9D50(char a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = a1 & 1;
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = *a2;
    swift_beginAccess();
    *(v5 + v10) = v8;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v5) + 0x8E8))(v13);
  }

  return result;
}

uint64_t (*sub_1A46F9F00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F9B24(v4);
  return sub_1A46FA0B8;
}

uint64_t sub_1A46FA130@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7E8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46FA1D8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x7F0);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t sub_1A46FA2BC(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6, v6[1]);
  return v7;
}

double sub_1A46FA39C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB140A40);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A46FA5DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FA0D0(v4);
  return sub_1A46FA794;
}

uint64_t sub_1A46FA820@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x818))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A46FA918(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46FAA1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = (v4 + *a3);
    swift_beginAccess();
    *v10 = a1;
    v10[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x8E8))(v13);
  }

  return result;
}

uint64_t (*sub_1A46FABE4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FA7C0(v4);
  return sub_1A46FAD9C;
}

uint64_t sub_1A46FAE14@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x848))();
  *a2 = result;
  return result;
}

void sub_1A46FAEF8(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46FAFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x8E8))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A46FB0F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FADB4(v4);
  return sub_1A46FB2A8;
}

uint64_t sub_1A46FB2B4()
{
  v1 = qword_1EB140A58;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46FB2F8(uint64_t a1)
{
  v3 = qword_1EB140A58;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46FB3A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x878))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46FB480(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

double sub_1A46FB548(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140A58;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }

  return result;
}

uint64_t (*sub_1A46FB6F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FB348(v4);
  return sub_1A46FB8AC;
}

void sub_1A46FB8B8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

id LemonadeCollectionCustomizationAlbumsModel.init(collection:)(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = sub_1A3C38BD4(0xD000000000000034);
  v5 = (v1 + qword_1EB140938);
  *v5 = v4;
  v5[1] = v6;
  *(v1 + qword_1EB140940) = 1;
  v7 = sub_1A3C38BD4(0xD000000000000036);
  v8 = (v1 + qword_1EB140948);
  *v8 = v7;
  v8[1] = v9;
  *(v1 + qword_1EB140950) = 1;
  v10 = sub_1A3C38BD4(0xD00000000000003FLL);
  v11 = (v1 + qword_1EB140958);
  *v11 = v10;
  v11[1] = v12;
  *(v1 + qword_1EB140960) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB140968) = MEMORY[0x1E69E7CC0];
  v14 = (v1 + qword_1EB140970);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + qword_1EB140978) = 0;
  *(v1 + qword_1EB140980) = 0;
  v15 = qword_1EB140988;
  *(v1 + qword_1EB140988) = 0;
  *(v1 + qword_1EB140990) = 0;
  *(v1 + qword_1EB140998) = 0;
  *(v1 + qword_1EB1409A0) = 1;
  v16 = (v1 + qword_1EB1409A8);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  v17 = (v1 + qword_1EB1409B0);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + qword_1EB1409B8);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + qword_1EB1409C0) = 1;
  *(v1 + qword_1EB1409C8) = 0;
  v19 = v1 + qword_1EB1409D0;
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v1 + qword_1EB1409D8) = 5;
  *(v1 + qword_1EB1409E0) = 0;
  *(v1 + qword_1EB1409E8) = 0;
  *(v1 + qword_1EB1409F0) = 0;
  *(v1 + qword_1EB1409F8) = 1;
  *(v1 + qword_1EB140A00) = 0;
  v20 = (v1 + qword_1EB140A08);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + qword_1EB140930) = 0;
  *(v1 + qword_1EB140A10) = 0;
  *(v1 + qword_1EB140A18) = 0;
  *(v1 + qword_1EB140A20) = v13;
  *(v1 + qword_1EB140A28) = 0;
  *(v1 + qword_1EB140A30) = v13;
  *(v1 + qword_1EB140A38) = 1;
  v21 = (v1 + qword_1EB140A40);
  *v21 = 0;
  v21[1] = 0;
  v22 = sub_1A3C38BD4(0xD00000000000002DLL);
  v23 = (v1 + qword_1EB140A48);
  *v23 = v22;
  v23[1] = v24;
  *(v1 + qword_1EB140A50) = v13;
  *(v1 + qword_1EB140A58) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (result)
  {
    *(v1 + qword_1EB140928) = result;

    *(v1 + v15) = 0;
    v28 = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(0, *(v3 + 80), v26, v27);
    v36.receiver = v1;
    v36.super_class = v28;
    v29 = objc_msgSendSuper2(&v36, sel_init);
    v30 = a1;
    sub_1A46F2E58(a1);
    v31 = 0xE000000000000000;
    v32 = [v30 localizedTitle];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1A524C674();
      v31 = v35;
    }

    else
    {
      v34 = 0;
    }

    sub_1A46F48E0(v34, v31);
    sub_1A46FC184();

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46FBDF4(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1A3C38BD4(0xD000000000000034);
  v7 = (v2 + qword_1EB140938);
  *v7 = v6;
  v7[1] = v8;
  *(v2 + qword_1EB140940) = 1;
  v9 = sub_1A3C38BD4(0xD000000000000036);
  v10 = (v2 + qword_1EB140948);
  *v10 = v9;
  v10[1] = v11;
  *(v2 + qword_1EB140950) = 1;
  v12 = sub_1A3C38BD4(0xD00000000000003FLL);
  v13 = (v2 + qword_1EB140958);
  *v13 = v12;
  v13[1] = v14;
  *(v2 + qword_1EB140960) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v2 + qword_1EB140968) = MEMORY[0x1E69E7CC0];
  v16 = (v2 + qword_1EB140970);
  *v16 = 0;
  v16[1] = 0;
  *(v2 + qword_1EB140978) = 0;
  *(v2 + qword_1EB140980) = 0;
  *(v2 + qword_1EB140988) = 0;
  *(v2 + qword_1EB140990) = 0;
  *(v2 + qword_1EB140998) = 0;
  *(v2 + qword_1EB1409A0) = 1;
  v17 = (v2 + qword_1EB1409A8);
  *v17 = PXDisplayCollectionDetailedCountsMake;
  v17[1] = 0;
  v18 = (v2 + qword_1EB1409B0);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v2 + qword_1EB1409B8);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v2 + qword_1EB1409C0) = 1;
  *(v2 + qword_1EB1409C8) = 0;
  v20 = v2 + qword_1EB1409D0;
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *(v2 + qword_1EB1409D8) = 5;
  *(v2 + qword_1EB1409E0) = 0;
  *(v2 + qword_1EB1409E8) = 0;
  *(v2 + qword_1EB1409F0) = 0;
  *(v2 + qword_1EB1409F8) = 1;
  *(v2 + qword_1EB140A00) = 0;
  v21 = (v2 + qword_1EB140A08);
  *v21 = 0;
  v21[1] = 0;
  *(v2 + qword_1EB140930) = 0;
  *(v2 + qword_1EB140A10) = 0;
  *(v2 + qword_1EB140A18) = 0;
  *(v2 + qword_1EB140A20) = v15;
  *(v2 + qword_1EB140A28) = 0;
  *(v2 + qword_1EB140A30) = v15;
  *(v2 + qword_1EB140A38) = 1;
  v22 = (v2 + qword_1EB140A40);
  *v22 = 0;
  v22[1] = 0;
  v23 = sub_1A3C38BD4(0xD00000000000002DLL);
  v24 = (v2 + qword_1EB140A48);
  *v24 = v23;
  v24[1] = v25;
  *(v2 + qword_1EB140A50) = v15;
  *(v2 + qword_1EB140A58) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (result)
  {
    *(v2 + qword_1EB140928) = result;
    v29 = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(0, *(v5 + 80), v27, v28);
    v32.receiver = v2;
    v32.super_class = v29;
    v30 = objc_msgSendSuper2(&v32, sel_init);
    v31 = a1;
    sub_1A46F2948(a1);
    sub_1A46F3454(a2);
    sub_1A46FC184();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A46FC184()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_1A46FC524();
  (*((*v1 & *v0) + 0x730))(v3);
  (*((*v1 & *v0) + 0x700))(0);
  v4 = sub_1A46FCAA4();
  (*((*v1 & *v0) + 0x790))(v4);
  v5 = (*((*v1 & *v0) + 0x760))(0);
  v6 = *((*v1 & *v0) + 0x3F0);
  v7 = v6(v5);
  if (v7)
  {
  }

  (*((*v1 & *v0) + 0x428))(v7 == 0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v10 = *(v2 + 80);
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  v11 = *((*v1 & *v0) + 0x458);

  v11(sub_1A4704C1C, v9);

  if (v6(v12))
  {
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    v16 = *((*v1 & *v0) + 0x7F0);

    v16(sub_1A4704CD8, v15);
  }

  return result;
}

void *sub_1A46FC524()
{
  v25 = sub_1A523FBB4();
  MEMORY[0x1EEE9AC00](v25);
  v24[4] = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0))(v5);
  if (v9)
  {
    if (v9 >> 62)
    {
      sub_1A524E2B4();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = (*((*v8 & *v0) + 0x3C0))();
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v10;
  v12 = [v10 photoLibrary];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 photoLibraryURL];

    sub_1A5240DE4();
    v15 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v16 = sub_1A5240D44();
    v17 = [v15 initWithPhotoLibraryURL_];

    (*(v4 + 8))(v7, v3);
    v18 = [v17 librarySpecificFetchOptions];
    v19 = [objc_opt_self() fetchAssetsInAssetCollection:v11 options:v18];
    v20 = [v19 fetchedObjects];

    if (v20)
    {
      v21 = v11;
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      sub_1A524CA34();

      v11 = v18;
      v18 = v21;
      v17 = v20;
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  v22 = MEMORY[0x1E69E7CC0];

  return v22;
}

id sub_1A46FCAA4()
{
  v1 = v0;
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524C2C4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3C0))(v11);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = v14;
  v28 = v2;
  result = [v14 photoLibrary];
  if (result)
  {
    v17 = result;
    v18 = [result photoLibraryURL];

    sub_1A5240DE4();
    v19 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v20 = sub_1A5240D44();
    v21 = [v19 initWithPhotoLibraryURL_];

    (*(v10 + 8))(v13, v9);
    v22 = v21;
    sub_1A524C2A4();
    sub_1A524C254();
    MEMORY[0x1A59075D0](20);
    v23 = sub_1A524C294();
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x480))(v23);
    if (v24)
    {
      sub_1A523FB54();
      sub_1A4704BB8(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
      v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A52F8E10;
      (*(v3 + 32))(v26 + v25, v5, v28);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    (*(v29 + 8))(v8, v30);
    return v26;
  }

  __break(1u);
  return result;
}

void sub_1A46FCE80()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1A523FBB4();
  v76 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v75 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v70 - v8;
  v10 = (*(v3 + 960))(v7);
  if (v10)
  {
    v74 = v10;
    if ((*((*v2 & *v0) + 0x6F8))() & 1) != 0 || ((*((*v2 & *v0) + 0x758))())
    {

      goto LABEL_5;
    }

    v48 = [v74 photoLibrary];
    if (!v48)
    {
      v68 = &v84;
LABEL_59:
      v69 = *(v68 - 32);

      return;
    }

    v49 = v48;
    sub_1A4702404(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v50 = swift_allocObject();
    v50[2] = *(v3 + 80);
    v50[3] = v49;
    v50[4] = v74;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v51 = v49;
    v76 = v74;
    sub_1A43FD8EC();
    v52 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v51, 0, &v80);
    sub_1A46F26C0(v52);
    v53 = sub_1A4702348();
    if (v53)
    {
      v54 = *(*v53 + 440);

      v54(v55, INFINITY);
    }

    v56 = sub_1A4702348();
    if (v56)
    {
      v57 = *(*v56 + 280);

      v59 = v57(v58);

      v60 = *(v59 + 24);
      v61 = v60;

      if (v60)
      {
        v62 = [v61 firstObject];

        if (v62)
        {
          v63 = [v62 localIdentifier];

          v64 = sub_1A524C674();
          v66 = v65;

          v67 = v66;
          v56 = v64;
LABEL_58:
          (*((*v2 & *v1) + 0x488))(v56, v67);

          v68 = &v85;
          goto LABEL_59;
        }
      }

      v56 = 0;
    }

    v67 = 0;
    goto LABEL_58;
  }

LABEL_5:
  if (((*((*v2 & *v0) + 0x6F8))() & 1) == 0 && ((*((*v2 & *v0) + 0x758))() & 1) == 0)
  {
    return;
  }

  v11 = (*((*v2 & *v0) + 0x788))();
  v12 = *(v11 + 16);
  v71 = v0;
  if (v12)
  {
    v73 = *(v76 + 2);
    v13 = (v76[80] + 32) & ~v76[80];
    v70[1] = v11;
    v14 = v11 + v13;
    v72 = *(v76 + 9);
    v74 = v76 + 16;
    v15 = (v76 + 8);
    v16 = MEMORY[0x1E69E7CC0];
    v73(v9, v11 + v13, v4);
    while (1)
    {
      v18 = sub_1A523FB64();
      v20 = v19;
      (*v15)(v9, v4);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A3D3D914(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1A3D3D914((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v17 = &v16[16 * v22];
        *(v17 + 4) = v18;
        *(v17 + 5) = v20;
      }

      v14 += v72;
      if (!--v12)
      {
        break;
      }

      v73(v9, v14, v4);
    }

    v1 = v71;
    v2 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v83 = v16;
  v24 = (*((*v2 & *v1) + 0x728))(v23);
  v25 = *(v24 + 16);
  if (!v25)
  {

    v29 = MEMORY[0x1E69E7CC0];
    v37 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v37)
    {
      goto LABEL_29;
    }

LABEL_41:
    v38 = MEMORY[0x1E69E7CC0];
LABEL_42:

    if (*(v38 + 16) >= 5uLL)
    {
      sub_1A3ECD684(v38, v38 + 32, 0, 9uLL);
      v44 = v43;

      v38 = v44;
    }

    v45 = v71;
    sub_1A3D3A048(v38);
    v46 = v83;
    if (*(v83 + 2))
    {
      sub_1A4702404(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = v46;
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return;
  }

  v74 = *(v76 + 2);
  v26 = (v76[80] + 32) & ~v76[80];
  v72 = v24;
  v27 = v24 + v26;
  v73 = *(v76 + 9);
  v76 += 16;
  v28 = (v76 - 8);
  v29 = MEMORY[0x1E69E7CC0];
  do
  {
    v31 = v75;
    (v74)(v75, v27, v4);
    v32 = sub_1A523FB64();
    v34 = v33;
    (*v28)(v31, v4);
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1A3D3D914(0, *(v29 + 2) + 1, 1, v29);
      }

      v36 = *(v29 + 2);
      v35 = *(v29 + 3);
      if (v36 >= v35 >> 1)
      {
        v29 = sub_1A3D3D914((v35 > 1), v36 + 1, 1, v29);
      }

      *(v29 + 2) = v36 + 1;
      v30 = &v29[16 * v36];
      *(v30 + 4) = v32;
      *(v30 + 5) = v34;
    }

    v27 += v73;
    --v25;
  }

  while (v25);

  v37 = *(v29 + 2);
  if (!v37)
  {
    goto LABEL_41;
  }

LABEL_29:
  v38 = MEMORY[0x1E69E7CC0];
  v76 = (v29 + 40);
  v39 = v29 + 40;
  v40 = 0;
  while (v40 < v37)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_63;
    }

    if (!*(v16 + 2) || (*(v39 - 1) == *(v16 + 4) ? (v42 = *v39 == *(v16 + 5)) : (v42 = 0), !v42 && (sub_1A524EAB4() & 1) == 0))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    ++v40;
    v39 += 2;
    if (v41 == v37)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

id sub_1A46FD8F0(uint64_t a1, void *a2)
{
  v15 = *(a1 + qword_1EB140928);
  v3 = [v15 librarySpecificFetchOptions];
  if (a2[2])
  {
    objc_opt_self();
    sub_1A3C398E8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v5 = a2[4];
    v6 = a2[5];
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F8E10;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = sub_1A3D35BE4(MEMORY[0x1E69E7CC0], v4);
  sub_1A4440428(v8, v9);

  sub_1A524C674();
  v10 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v11 = sub_1A524CA14();

  v12 = sub_1A524C634();

  v13 = [v10 initWithObjects:v11 photoLibrary:v15 fetchType:v12 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v13;
}

void sub_1A46FDBD8(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t, void *), uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v13 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x4B0);
  v14 = v13();
  v16 = v15;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    (v13)(v17);
    v19 = objc_allocWithZone(PXRenameCollectionAction);
    v20 = sub_1A524C634();

    v21 = [v19 initWithCollection:a1 title:v20];

    if (!v21)
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v22 = v21;
    MEMORY[0x1A5907D70]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v12 = v49;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_9:
  v23 = objc_allocWithZone(PXEditCollectionAssetsAction);
  v24 = a2;
  v25 = [v23 initWithAssetCollection:a1 assets:v24];
  if (v25)
  {
    v26 = v25;
    MEMORY[0x1A5907D70]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v12 = v49;
  }

  else
  {
  }

LABEL_16:
  if (a3)
  {
    v27 = objc_allocWithZone(PXMakeKeyAssetAction);
    v28 = a3;
    [v27 initWithAssetCollection:a1 keyAsset:v28];
    MEMORY[0x1A5907D70]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v12 = v49;
  }

  if (v12 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_22;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_22:
    v29 = objc_allocWithZone(PXActionGroup);
    sub_1A3C52C70(0, &qword_1EB12DBC0, off_1E771CF30);
    v30 = sub_1A524CA14();

    v31 = [v29 initWithActions_];

    v32 = sub_1A524C634();
    v33 = PXLocalizedString(v32);

    if (!v33)
    {
      sub_1A524C674();
      v33 = sub_1A524C634();
    }

    [v31 setLocalizedActionName_];

    v34 = swift_allocObject();
    v34[2] = v7;
    v34[3] = a1;
    v34[4] = a5;
    v34[5] = a6;
    aBlock[4] = sub_1A47048E8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_253;
    v35 = _Block_copy(aBlock);
    v36 = v7;
    v37 = a1;

    [v31 executeWithUndoManager:a4 completionHandler:v35];
    _Block_release(v35);

    return;
  }

  v38 = sub_1A524D224();
  v39 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v39, v38))
  {
    v40 = v39;
    v41 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v41 = 136446210;
    v42 = [a1 localIdentifier];
    v43 = sub_1A524C674();
    v45 = v44;

    sub_1A3C2EF94(v43, v45, aBlock);
  }

  a5(1, a1);
}

void sub_1A46FE17C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x390))();
  if (v12)
  {
    v13 = v12;
    v34 = a3;
    v14 = *((*v11 & *v5) + 0x4B0);
    v15 = v14();
    v17 = v16;

    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      (v14)(v18);
    }

    else
    {
      sub_1A3C38BD4(0xD00000000000003CLL);
    }

    v22 = objc_allocWithZone(PXCreateAssetCollectionAction);
    v23 = a1;
    v24 = v13;
    v25 = sub_1A524C634();

    v26 = [v22 initWithTitle:v25 parentCollectionList:v24 selectedAssets:v23 keyAsset:a2];

    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = a4;
    v27[4] = a5;
    aBlock[4] = sub_1A4702A40;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_259;
    v28 = _Block_copy(aBlock);
    v29 = v26;

    [v29 executeWithUndoManager:v34 completionHandler:v28];
    _Block_release(v28);
    v30 = sub_1A44E6630();
    v31 = *(**v30 + 264);

    v31(aBlock, v32);

    if (LemonadeAlbumsContentFilter.isFilterApplied.getter() && (aBlock[0] = *sub_1A44E7304(), sub_1A43FED2C(), (sub_1A524E114() & 1) != 0))
    {
      v33 = *v30;

      aBlock[0] = *sub_1A44E6F70();
      (*(*v33 + 272))(aBlock);
    }

    else
    {
    }
  }

  else
  {
    v20 = sub_1A524D234();
    v21 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Root collection list is unavailable", 35, 2, MEMORY[0x1E69E7CC0]);

    a4(0, 0);
  }
}

void sub_1A46FE530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = a3;
  v67 = sub_1A523FBB4();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v57 - v12;
  v64 = [*(v4 + qword_1EB140928) librarySpecificFetchOptions];
  v14 = [v64 setWantsIncrementalChangeDetails_];
  v15 = MEMORY[0x1E69E7D40];
  v16 = 0;
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x6F8))(v14))
  {
    v61 = a2;
    v17 = (*((*v15 & *v4) + 0x728))();
    v18 = *(v17 + 16);
    if (v18)
    {
      v59 = a4;
      v60 = v4;
      v57[1] = v17;
      v58 = v8;
      v19 = *(v8 + 16);
      v20 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v65 = *(v8 + 72);
      v66 = v19;
      v21 = (v8 + 8);
      v22 = MEMORY[0x1E69E7CC0];
      do
      {
        v24 = v67;
        v66(v13, v20, v67);
        v25 = sub_1A523FB64();
        v27 = v26;
        (*v21)(v13, v24);
        if (v27)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1A3D3D914(0, *(v22 + 2) + 1, 1, v22);
          }

          v29 = *(v22 + 2);
          v28 = *(v22 + 3);
          if (v29 >= v28 >> 1)
          {
            v22 = sub_1A3D3D914((v28 > 1), v29 + 1, 1, v22);
          }

          *(v22 + 2) = v29 + 1;
          v23 = &v22[16 * v29];
          *(v23 + 4) = v25;
          *(v23 + 5) = v27;
        }

        v20 += v65;
        --v18;
      }

      while (v18);

      a4 = v59;
      v5 = v60;
      v8 = v58;
    }

    else
    {
    }

    v30 = objc_opt_self();
    v31 = sub_1A524CA14();

    v16 = [v30 fetchAssetsWithLocalIdentifiers:v31 options:v64];

    a2 = v61;
    v15 = MEMORY[0x1E69E7D40];
  }

  if ((*((*v15 & *v5) + 0x758))())
  {
    v32 = (*((*v15 & *v5) + 0x788))();
    if (*(v32 + 16))
    {
      v33 = *(v8 + 16);
      v34 = v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v35 = v62;
      v36 = v8;
      v37 = v67;
      v33(v62, v34, v67);

      v38 = sub_1A523FB64();
      v40 = v39;
      (*(v36 + 8))(v35, v37);
      if (v40)
      {
        v41 = v15;
        v42 = objc_opt_self();
        sub_1A3C398E8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1A52F8E10;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v44 = sub_1A524CA14();

        v45 = v42;
        v15 = v41;
        v46 = [v45 fetchAssetsWithLocalIdentifiers:v44 options:v64];

        v47 = [v46 firstObject];
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v47 = 0;
LABEL_20:
  v48 = (*((*v15 & *v5) + 0x3C0))();
  if (v48)
  {
    v49 = v48;
    v50 = swift_allocObject();
    v51 = v63;
    *(v50 + 16) = v63;
    *(v50 + 24) = a4;
    v52 = v49;
    sub_1A3C66EE8(v51, a4);
    sub_1A46FDBD8(v52, v16, v47, a2, sub_1A4702D40, v50);
  }

  else
  {
    v53 = swift_allocObject();
    v54 = v63;
    *(v53 + 16) = v63;
    *(v53 + 24) = a4;
    v55 = *((*v15 & *v5) + 0x8C8);
    v56 = sub_1A3C66EE8(v54, a4);
    v55(v16, v47, a2, sub_1A4702D38, v53, v56);
  }
}

void sub_1A46FEB84(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB6C8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_259_0;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3, a4);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29E04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A4704BB8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3, a4);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

void sub_1A46FEEA8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB230;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_266;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3, a4);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29E04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A4704BB8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3, a4);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

id LemonadeCollectionCustomizationAlbumsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeCollectionCustomizationAlbumsModel.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A46FF41C(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB140970), *(a1 + qword_1EB140970 + 8));

  sub_1A3C33378(*(a1 + qword_1EB140A08), *(a1 + qword_1EB140A08 + 8));

  sub_1A3C33378(*(a1 + qword_1EB140A40), *(a1 + qword_1EB140A40 + 8));

  v2 = qword_1EB1CF100;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A46FF600@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3C0))();
  *a1 = result;
  return result;
}

void (*sub_1A46FF6C4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3D0))();
  return sub_1A3E658B0;
}

void (*sub_1A46FF8E0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1C0))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFA48(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1F0))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFBAC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x220))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFD10(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x460))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFE78(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x250))();
  return sub_1A3E658B0;
}

void (*sub_1A4700038(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4C0))();
  return sub_1A3E658B0;
}

void (*sub_1A47001B0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2B0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700314(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2E0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700478(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x310))();
  return sub_1A3E658B0;
}

void (*sub_1A47005DC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x340))();
  return sub_1A3E658B0;
}

void (*sub_1A47007A8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x538))();
  return sub_1A3E658B0;
}

void (*sub_1A4700914(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x568))();
  return sub_1A3E658B0;
}

void (*sub_1A4700A8C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5A0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700C50(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5D0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700DB8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x600))();
  return sub_1A3E658B0;
}

void (*sub_1A4700F20(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x430))();
  return sub_1A3E658B0;
}

void (*sub_1A4701084(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x738))();
  return sub_1A3E658B0;
}

void (*sub_1A47011E8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x798))();
  return sub_1A3E658B0;
}

void (*sub_1A470134C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6D8))();
  return sub_1A3E658B0;
}

void (*sub_1A47014B4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7C8))();
  return sub_1A3E62A10;
}

void (*sub_1A4701618(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7F8))();
  return sub_1A3E658B0;
}

void (*sub_1A470177C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x828))();
  return sub_1A3E658B0;
}

void (*sub_1A47018E0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x858))();
  return sub_1A3E658B0;
}

void (*sub_1A4701A70(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x888))();
  return sub_1A3E658B0;
}

void (*sub_1A4701BD8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x630))();
  return sub_1A3E658B0;
}

void (*sub_1A4701D40(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x660))();
  return sub_1A3E658B0;
}

void (*sub_1A4701EA4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x690))();
  return sub_1A3E658B0;
}

void (*sub_1A470200C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6A8))();
  return sub_1A3E658B0;
}

uint64_t sub_1A47021A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4C8))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4702348()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  return *(v0 + qword_1EB140980);
}

void sub_1A4702404(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A470248C(void *a1)
{
  v3 = qword_1EB140990;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A46FCE80();
}

void sub_1A47024EC()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1A470248C(v1);
}

double sub_1A47025BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB1409A8);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

void sub_1A47026FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB1409D0;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

uint64_t sub_1A4702838(uint64_t (*a1)(uint64_t, uint64_t, double))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1A3C66EE8(v3, v4);
  return a1(v3, v4, v5);
}

void sub_1A4702A40(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = [*(v2 + 16) createdAssetCollection];
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = v6;
      v9 = sub_1A524D224();
      v10 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v10, v9))
      {
        v10;
        v11 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v11 = 136446210;
        v12 = [v8 localIdentifier];
        v13 = sub_1A524C674();
        v15 = v14;

        sub_1A3C2EF94(v13, v15, &v25);
      }
    }

    else
    {
      v23 = sub_1A524D244();
      v24 = *sub_1A3CAA3FC();
      sub_1A5246DF4(v23, &dword_1A3C1C000, v24, "Created assetCollection should not be nil since the action has been executed successfully", 89, 2, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v16 = sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = a2;
      sub_1A4704BB8(0, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
      v21 = sub_1A524C714();
      sub_1A3C2EF94(v21, v22, &v25);
    }
  }

  v5(a1 & 1, v7);
}

uint64_t sub_1A4702D78(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4702DD0(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

id sub_1A4704838()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) librarySpecificFetchOptions];
  v3 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v1 options:v2];

  return v3;
}

void sub_1A47048A4()
{
  *(*(v0 + 16) + qword_1EB140980) = *(v0 + 24);
}

void sub_1A47048E8(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = v2[3];
  v5 = v2[4];
  if (a1)
  {
    v6 = *(v2[2] + qword_1EB140928);
    v7 = [v4 localIdentifier];
    if (!v7)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();
    }

    v8 = [v6 px:v7 assetCollectionWithLocalIdentifier:?];

    if (v8)
    {
      v9 = v8;
      v10 = v9;
      goto LABEL_14;
    }

    v20 = sub_1A524D244();
    v21 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v21, v20))
    {
      loga = v21;
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v22 = 136446210;
      v23 = [v4 localIdentifier];
      v24 = sub_1A524C674();
      v26 = v25;

      sub_1A3C2EF94(v24, v26, &v29);
    }
  }

  else
  {
    v12 = sub_1A524D244();
    v13 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_1A3C1C000, v14, v12, "Unable to update asset collection: %@", v15, 0xCu);
      sub_1A3CB65E4(v16);
      MEMORY[0x1A590EEC0](v16, -1, -1);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }
  }

  v9 = v4;
  v10 = 0;
LABEL_14:
  log = v9;
  v5(v3 & 1);
}