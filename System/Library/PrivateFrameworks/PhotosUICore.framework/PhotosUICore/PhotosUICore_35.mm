void sub_1A4091A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4091A84(double a1, double a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a3;
  v5.f64[1] = a4;
  v4[3] = vcvt_f32_f64(v5);
  sub_1A524D9E4();
}

uint64_t sub_1A4091B5C(unint64_t a1)
{
  if (a1 > 2)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53B4830);
    type metadata accessor for PHPersonAssetSortOrder(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v1 = sub_1A524C634();
    v2 = PXLocalizedString(v1);

    v3 = sub_1A524C674();
    return v3;
  }

  return result;
}

uint64_t sub_1A4091E14()
{
  result = sub_1A524C634();
  qword_1EB15C828 = result;
  return result;
}

uint64_t sub_1A4091E4C()
{
  result = sub_1A524C634();
  qword_1EB15C838 = result;
  return result;
}

void sub_1A4091E84()
{
  v1 = v0;
  v2 = sub_1A409222C();
  v3 = [v0 sendingAction];
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  v5 = [v3 identifier];

  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = qword_1EB15C820;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_1A524C674();
  v10 = v9;
  if (v8 == sub_1A524C674() && v10 == v11)
  {

    goto LABEL_16;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_17;
  }

  if (qword_1EB15C830 != -1)
  {
    swift_once();
  }

  v14 = sub_1A524C674();
  v16 = v15;
  if (v14 != sub_1A524C674() || v16 != v17)
  {
    v19 = sub_1A524EAB4();

    if (v19)
    {
      v18 = 2;
      goto LABEL_21;
    }

LABEL_20:
    v20 = [v2 assetSortOrder];
    sub_1A3C52C70(0, &qword_1EB131328, off_1E771EA68);
    v18 = static PXPeopleUtilities.oppositeSortOrder(of:)(v20);
    goto LABEL_21;
  }

  v18 = 2;
LABEL_17:

LABEL_21:
  v21 = [objc_allocWithZone(PXChangePersonAssetsSortOrderAction) initWithPerson:v2 sortOrder:v18];
  v22 = [v1 undoManager];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v23;
  v27[4] = sub_1A40929DC;
  v27[5] = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1A3D6084C;
  v27[3] = &block_descriptor_91;
  v25 = _Block_copy(v27);
  v26 = v2;

  [v21 executeWithUndoManager:v22 completionHandler:v25];

  _Block_release(v25);
}

id sub_1A409222C()
{
  v1 = [v0 people];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 firstObject];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [v3 localIdentifier];
  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  v5 = [v3 photoLibrary];
  if (!v5)
  {
    __break(1u);
LABEL_10:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = [objc_opt_self() personWithLocalIdentifier:v4 photoLibrary:v5];

  if (v7)
  {

    return v7;
  }

  return v3;
}

id sub_1A4092488(__n128 a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PhotoKitAssetCollectionChangePersonSortOrder(a2, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_1A40924C0(id result)
{
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      result = [v1 people];
      if (!result)
      {
        return result;
      }

      v2 = result;
      v3 = [result firstObject];
      if (v3)
      {
        v4 = v3;
        v5 = sub_1A4091B5C([v3 assetSortOrder]);

        return v5;
      }
    }

    return 0;
  }

  return result;
}

void sub_1A40925A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = [a1 people];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 firstObject];
  if (!v8)
  {

LABEL_12:
    __break(1u);
    return;
  }

  v30 = v8;
  v9 = [v8 assetSortOrder];
  sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
  v10 = sub_1A524C634();
  v11 = PXLocalizedString(v10);

  sub_1A524C674();
  if (qword_1EB15C830 != -1)
  {
    swift_once();
  }

  v31 = v7;
  v12 = qword_1EB15C838;
  v13 = swift_allocObject();
  *(v13 + 16) = v9 != 1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = v12;

  v15 = sub_1A524DC64();
  v16 = sub_1A524C634();
  v17 = PXLocalizedString(v16);

  sub_1A524C674();
  if (qword_1EB15C820 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB15C828;
  v19 = swift_allocObject();
  *(v19 + 16) = v9 != 1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;

  v20 = v18;
  v21 = sub_1A524DC64();
  v22 = v21;
  if (v9 != 1)
  {
    v21 = v15;
  }

  [v21 setState_];
  v23 = sub_1A524C634();
  v24 = [objc_opt_self() systemImageNamed_];

  sub_1A3C52C70(0, &qword_1EB120608, 0x1E69DCC60);
  v25 = sub_1A524C634();
  v26 = PXLocalizedString(v25);

  sub_1A524C674();
  sub_1A401FC1C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A52F9DE0;
  *(v27 + 32) = v22;
  *(v27 + 40) = v15;
  v28 = v22;
  v29 = v15;
  sub_1A524DAF4();
}

void sub_1A40929DC(char a1, id a2)
{
  if ((a1 & 1) == 0 && a2)
  {
    v5 = *(v2 + 16);
    v6 = a2;
    v7 = sub_1A524D244();
    v8 = PLPeopleGetLog();
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    if (os_log_type_enabled(v8, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v5;
      *v11 = v5;
      *(v10 + 12) = 2112;
      v12 = a2;
      v13 = v5;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_1A3C1C000, v9, v7, "Error changing sort order for person %@: %@", v10, 0x16u);
      sub_1A3D3F118(0);
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v11, -1, -1);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      v17 = sub_1A5240B74();
    }

    else
    {
      v17 = 0;
    }

    [v16 completeUserInteractionTaskWithSuccess:a1 & 1 error:v17];
  }
}

uint64_t sub_1A4092BB4()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return (*(v0 + 24))();
  }

  return result;
}

uint64_t sub_1A4092BE8()
{
  if (*(v0 + 16) == 1)
  {
    return (*(v0 + 24))();
  }

  return result;
}

uint64_t type metadata accessor for LemonadeFeatureAvailabilityProcessingView(uint64_t a1)
{
  result = qword_1EB15D710;
  if (!qword_1EB15D710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4092C6C@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a1;
  sub_1A524B694();
  *a9 = v24;
  *(a9 + 8) = v25;
  *(a9 + 16) = 0;
  v17 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView(0);
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  v18 = *(v17 + 60);
  v19 = *MEMORY[0x1E69C1E80];
  v20 = sub_1A5242524();
  result = (*(*(v20 - 8) + 104))(a9 + v18, v19, v20);
  *(a9 + 24) = v16;
  *(a9 + 34) = a2;
  *(a9 + 28) = a3;
  *(a9 + 32) = BYTE4(a3) & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 33) = 2;
  *(a9 + 88) = a6;
  *(a9 + 89) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  return result;
}

void sub_1A4092D8C(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  sub_1A524B694();
  *a9 = v25;
  *(a9 + 8) = v26;
  *(a9 + 16) = 0;
  v19 = *(type metadata accessor for LemonadeFeatureAvailabilityProcessingView(0) + 60);
  v20 = *MEMORY[0x1E69C1E80];
  v21 = sub_1A5242524();
  (*(*(v21 - 8) + 104))(a9 + v19, v20, v21);
  *(a9 + 24) = a1[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature];
  *(a9 + 34) = 2;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v22 = [swift_getObjCClassFromMetadata() sharedInstance];
  LOBYTE(v19) = [v22 forceShowProcessingUI];

  if (v19)
  {
  }

  else
  {
    *(a9 + 16) = a1;
  }

  *(a9 + 28) = a2;
  *(a9 + 32) = BYTE4(a2) & 1;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 33) = a3;
  *(a9 + 88) = a8 & 1;
  *(a9 + 89) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
}

uint64_t sub_1A4092F30()
{
  if (qword_1EB176600 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EB0C8);
}

void sub_1A4092F94(double a1)
{
  v2 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4093F94(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v8 forceHideProcessingUI])
  {
    goto LABEL_2;
  }

  if (([v8 forceShowProcessingUI] & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB120A48, off_1E771F5D8);
    v9 = [swift_getObjCClassFromMetadata() sharedInstance];
    v10 = [v9 forceIndexingFooter];

    if (!v10)
    {
      v15 = *(v1 + 16);
      if (!v15)
      {
LABEL_2:

        return;
      }

      v16 = v15;
      v17 = LemonadeFeatureAvailabilityMonitor.progress.getter();
      if (v17 == *sub_1A488BFBC())
      {

        goto LABEL_2;
      }

      v18 = LemonadeFeatureAvailabilityMonitor.progress.getter() * 100.0;
      if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
      }

      else if (v18 > -9.2234e18)
      {
        if (v18 < 9.2234e18)
        {
          v19[1] = v18;
          sub_1A5241234();
          sub_1A3DA24EC();
          sub_1A52408F4();
          sub_1A4093FF0(&qword_1EB12B0C8, sub_1A4093F94, MEMORY[0x1E69688F8]);
          sub_1A524E064();

          (*(v5 + 8))(v7, v4);
          return;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }

  if (qword_1EB176600 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB1EB0C8);
  v12 = sub_1A524D224();
  v13 = sub_1A5246F04();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v13, v12, "Force setting the processing percentage to 62%%.", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }
}

uint64_t sub_1A4093344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = sub_1A5242524();
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v6 forceHideProcessingUI])
  {
    if (qword_1EB176600 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1EB0C8);
    v8 = sub_1A524D224();
    v9 = sub_1A5246F04();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v8, "Force hiding all processing UI.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

LABEL_15:
    v17 = *(v2 + 48);
    v41 = v5;
    v42 = a1;
    if (v17)
    {
      goto LABEL_49;
    }

    v18 = *(v2 + 24);
    if (v18 > 3)
    {
      if (*(v2 + 24) <= 5u)
      {
        if (v18 == 4)
        {
          sub_1A4092F94(v11);
          if (!v22)
          {
            v36 = 0xD000000000000023;
            goto LABEL_48;
          }

          v23 = v21;
          v24 = v22;
          v25 = 0xD000000000000031;
        }

        else
        {
          sub_1A4092F94(v11);
          if (!v34)
          {
LABEL_47:
            v36 = 0xD000000000000024;
            goto LABEL_48;
          }

          v23 = v33;
          v24 = v34;
          v25 = 0xD000000000000032;
        }

LABEL_40:
        sub_1A3C38BD4(v25);
        sub_1A4093F30(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1A52F8E10;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1A3D710E8();
        *(v35 + 32) = v23;
        *(v35 + 40) = v24;
        sub_1A524C6C4();

        goto LABEL_49;
      }

      if (v18 != 6)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (*(v2 + 24) > 1u)
      {
        if (v18 == 2)
        {
          sub_1A4092F94(v11);
          v28 = v27;
          if (v27)
          {
            v29 = v26;
            sub_1A4093F30(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_1A52F8E10;
            *(v30 + 56) = MEMORY[0x1E69E6158];
            *(v30 + 64) = sub_1A3D710E8();
            *(v30 + 32) = v29;
            *(v30 + 40) = v28;
            sub_1A524C6C4();
          }

LABEL_49:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v36 = 0xD00000000000002BLL;
        goto LABEL_48;
      }

      if (*(v2 + 24))
      {
        goto LABEL_47;
      }
    }

    sub_1A4092F94(v11);
    if (v32)
    {
      v23 = v31;
      v24 = v32;
      v25 = 0xD000000000000033;
      goto LABEL_40;
    }

    v36 = 0xD000000000000025;
LABEL_48:
    sub_1A3C38BD4(v36);
    goto LABEL_49;
  }

  if ([v6 forceShowProcessingUI])
  {
    if (qword_1EB176600 != -1)
    {
      swift_once();
    }

    v12 = sub_1A5246F24();
    __swift_project_value_buffer(v12, qword_1EB1EB0C8);
    v13 = sub_1A524D224();
    v14 = sub_1A5246F04();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v14, v13, "Force showing all processing UI.", v15, 2u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    v16 = v6;
    goto LABEL_13;
  }

  if (*(v1 + 34) != 2 || (v19 = *(v1 + 16)) == 0)
  {

    goto LABEL_15;
  }

  if ((*(v1 + 32) & 1) == 0)
  {
    v37 = v19;
    LemonadeFeatureAvailabilityMonitor.progress.getter();

    goto LABEL_15;
  }

  v16 = v19;
  v20 = sub_1A488C1D8();
  switch(v20)
  {
    case 2:
      goto LABEL_51;
    case 1:
      v14 = v6;
LABEL_13:

      goto LABEL_15;
    case 0:
LABEL_51:

      goto LABEL_15;
  }

  v43 = v20;
  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A4093BF8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB0C8);
  __swift_project_value_buffer(v0, qword_1EB1EB0C8);
  sub_1A524C814();
  return sub_1A5246F14();
}

void sub_1A4093CE0(uint64_t a1)
{
  sub_1A4093EE0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1A4093F30(319, &qword_1EB125308, type metadata accessor for LemonadeFeatureAvailabilityMonitor, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A4093EE0(319, &qword_1EB120B50, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A4093EE0(319, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A4093EE0(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A4093F30(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1A5242524();
              if (v7 <= 0x3F)
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

void sub_1A4093EE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4093F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4093F94(uint64_t a1)
{
  if (!qword_1EB12B0C0)
  {
    sub_1A3DA24EC();
    v1 = sub_1A5240904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B0C0);
    }
  }
}

uint64_t sub_1A4093FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A4094038@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5246E54();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeShelvesStack(0);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v7;
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A3C56C94(&qword_1EB12A300, type metadata accessor for LemonadeShelvesStack, &unk_1A5316E78);
  MEMORY[0x1A5905890](v6, v14);
  v15 = sub_1A5246E94();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1A40A5E60(v13, sub_1A3E73E5C);
  }

  else
  {
    sub_1A40A46A4(v1, v10, type metadata accessor for LemonadeShelvesStack);
    sub_1A5246E44();
    v17 = sub_1A5246E84();
    v38 = sub_1A524D664();
    v39 = v17;
    if (sub_1A524DEC4())
    {
      v18 = swift_slowAlloc();
      v36 = v18;
      v37 = swift_slowAlloc();
      v57 = v37;
      *v18 = 136446210;
      v19 = sub_1A524A694();
      v21 = v20;
      sub_1A40A5E60(v10, type metadata accessor for LemonadeShelvesStack);
      sub_1A3C2EF94(v19, v21, &v57);
    }

    (*(v40 + 8))(v42, v41);
    sub_1A40A5E60(v10, type metadata accessor for LemonadeShelvesStack);
    (*(v16 + 8))(v13, v15);
  }

  v42 = sub_1A5249574();
  v51 = 0;
  v22 = *v2;
  v23 = *(v2 + 8);
  v24 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  v46[0] = 0;
  LOBYTE(v52) = 24;
  sub_1A40A60A0(0, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);

  sub_1A524B694();
  v26 = v57;
  v27 = v58;
  *&v52 = 0;
  sub_1A40A5034(0);
  sub_1A524B694();
  *(&v53 + 1) = *v49;
  DWORD1(v53) = *&v49[3];
  *(&v54 + 1) = *v48;
  DWORD1(v54) = *&v48[3];
  HIDWORD(v54) = *&v47[3];
  *(&v54 + 9) = *v47;
  *&v52 = v22;
  *(&v52 + 1) = v23;
  LOBYTE(v53) = v24;
  *(&v53 + 1) = KeyPath;
  LOBYTE(v54) = v46[0];
  BYTE8(v54) = v26;
  *&v55 = v27;
  *(&v55 + 1) = v57;
  v56 = v58;
  v57 = v22;
  v58 = v23;
  v59 = v24;
  *&v60[3] = *&v49[3];
  *v60 = *v49;
  v61 = KeyPath;
  v62 = v46[0];
  *&v63[3] = *&v48[3];
  *v63 = *v48;
  v64 = v26;
  *&v65[3] = *&v47[3];
  *v65 = *v47;
  v66 = __PAIR128__(*(&v55 + 1), v27);
  v67 = v56;
  sub_1A409470C(&v52, v46);
  sub_1A4094744(&v57);
  *(&v50[1] + 7) = v53;
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  *(&v50[4] + 7) = v56;
  *(v50 + 7) = v52;
  LOBYTE(v23) = v51;
  v28 = swift_getKeyPath();
  v29 = *v2;
  v30 = v45;
  sub_1A40A46A4(v2, v45, type metadata accessor for LemonadeShelvesStack);
  v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v32 = swift_allocObject();
  sub_1A40A5DF8(v30, v32 + v31, type metadata accessor for LemonadeShelvesStack);
  v33 = v50[0];
  *(a1 + 33) = v50[1];
  v34 = v50[3];
  *(a1 + 49) = v50[2];
  *(a1 + 65) = v34;
  *(a1 + 80) = *(&v50[3] + 15);
  *a1 = v42;
  *(a1 + 8) = 0;
  *(a1 + 16) = v23;
  *(a1 + 17) = v33;
  *(a1 + 96) = v28;
  *(a1 + 104) = 1;
  *(a1 + 112) = v29;
  *(a1 + 120) = sub_1A40947CC;
  *(a1 + 128) = v32;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;

  return result;
}

uint64_t type metadata accessor for LemonadeShelvesStack(uint64_t a1)
{
  result = qword_1EB188CE0;
  if (!qword_1EB188CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4094774@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248E34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A409485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v5 = type metadata accessor for LemonadeShelvesStack(0);
  v6 = v5[7];
  *(a4 + v6) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v7 = a4 + v5[8];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v5[9];
  *(a4 + v8) = swift_getKeyPath();
  sub_1A3E31270(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A409491C@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  sub_1A40A1080(0);
  v79 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v72[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4448(0);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A5246E54();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v87 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v13 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v72[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72[-v18];
  v20 = *(v1 + 16);
  v94 = *v1;
  v95 = v20;
  v21 = *(v1 + 48);
  v96 = *(v1 + 32);
  v97 = v21;
  v98 = *(v1 + 64);
  v22 = *(*v94 + 584);
  v88 = v94;
  v23 = v22();
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v84 = v13;
  v85 = v23;
  if (v24)
  {
    v26 = v23;
    v78 = v8;
    *&v92[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v24, 0);
    v25 = *&v92[0];
    v27 = v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v28 = *(v13 + 72);
    do
    {
      sub_1A40A46A4(v27, v19, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A40A5E60(v19, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v29 = v89[0];
      *&v92[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1A3C4ED58((v30 > 1), v31 + 1, 1);
        v25 = *&v92[0];
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + v31 + 32) = v29;
      v27 += v28;
      --v24;
    }

    while (v24);
    v8 = v78;
  }

  if ((*(*v88 + 592))())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v78 = MEMORY[0x1E69E7CC0];
  v32 = v85;
  v92[2] = v96;
  v92[3] = v97;
  v93 = v98;
  v92[0] = v94;
  v92[1] = v95;
  v33 = sub_1A40A0D38();
  v34 = v87;
  MEMORY[0x1A5905890](&type metadata for LemonadeOneColumnShelvesStack, v33);
  v35 = v34;
  v36 = sub_1A5246E94();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v37 = sub_1A40A5E60(v35, sub_1A3E73E5C);
  v38 = *(v32 + 16);
  v39 = v84;
  if (v38)
  {
    v40 = v76;
    sub_1A40A46A4(v32 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v76, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    sub_1A3C5322C();
    v37 = sub_1A40A5E60(v40, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v41 = v92[0];
  }

  else
  {
    v41 = 24;
  }

  result = (*(*v88 + 600))(v37);
  v43 = 24;
  if (v38 && (result & 1) != 0)
  {
    if (v38 > *(v32 + 16))
    {
      __break(1u);
      return result;
    }

    v44 = v73;
    sub_1A40A46A4(v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * (v38 - 1), v73, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    sub_1A3C5322C();
    result = sub_1A40A5E60(v44, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v43 = v92[0];
  }

  v45 = (*(*v88 + 256))(v89, result);
  MEMORY[0x1EEE9AC00](v45);
  sub_1A40956B8(sub_1A40A470C, v32, v8);
  if ((*(v39 + 48))(v8, 1, v77) == 1)
  {
    v46 = sub_1A40A5E60(v8, sub_1A40A4670);
    v47 = 24;
  }

  else
  {
    sub_1A3C5322C();
    v47 = v92[0];
    v46 = sub_1A40A5E60(v8, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  }

  (*(*v88 + 632))(v92, v46);
  LOBYTE(v90) = v92[0];
  v91[0] = 1;
  v48 = static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v90, v91);
  v90 = v32;
  swift_getKeyPath();
  sub_1A3C341C8(v89, v92);
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  *(v49 + 17) = v43;
  *(v49 + 18) = v48;
  sub_1A3C34460(v92, v49 + 24);
  v50 = v97;
  *(v49 + 96) = v96;
  *(v49 + 112) = v50;
  *(v49 + 128) = v98;
  v51 = v95;
  *(v49 + 64) = v94;
  *(v49 + 80) = v51;
  *(v49 + 136) = v47;
  sub_1A409470C(&v94, v92);
  sub_1A3F32024(0);
  sub_1A40A11F0(0);
  sub_1A3C56C94(&qword_1EB126F20, sub_1A3F32024, MEMORY[0x1E69E6338]);
  sub_1A3C3DEB4();
  sub_1A40A4204();
  v52 = v80;
  sub_1A524B9B4();
  v90 = v25;
  v53 = swift_allocObject();
  v54 = v97;
  *(v53 + 48) = v96;
  *(v53 + 64) = v54;
  *(v53 + 80) = v98;
  v55 = v95;
  *(v53 + 16) = v94;
  *(v53 + 32) = v55;
  sub_1A409470C(&v94, v92);
  v56 = MEMORY[0x1E69E62F8];
  sub_1A40A60A0(0, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
  sub_1A3C56C94(&qword_1EB125A30, sub_1A40A1080, &unk_1A5316EC8);
  sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v56, MEMORY[0x1E69E6320]);
  v57 = v82;
  sub_1A524B144();

  sub_1A40A554C(v52, sub_1A40A1080);

  v58 = swift_allocObject();
  v59 = v97;
  *(v58 + 48) = v96;
  *(v58 + 64) = v59;
  *(v58 + 80) = v98;
  v60 = v95;
  *(v58 + 16) = v94;
  *(v58 + 32) = v60;
  v61 = (v57 + *(v81 + 36));
  *v61 = 0;
  v61[1] = 0;
  v61[2] = sub_1A40A47C0;
  v61[3] = v58;
  LOBYTE(v90) = v41;
  v62 = swift_allocObject();
  v63 = v97;
  *(v62 + 48) = v96;
  *(v62 + 64) = v63;
  *(v62 + 80) = v98;
  v64 = v95;
  *(v62 + 16) = v94;
  *(v62 + 32) = v64;
  *(v62 + 88) = v41;
  sub_1A409470C(&v94, v92);
  sub_1A409470C(&v94, v92);
  v65 = MEMORY[0x1E69E6720];
  sub_1A40A60A0(0, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
  sub_1A40A48EC();
  sub_1A40A4600(&qword_1EB125868, &qword_1EB125870, v65, MEMORY[0x1E69E7C80]);
  v66 = v83;
  sub_1A524B144();

  v67 = sub_1A40A554C(v57, sub_1A40A4448);
  v68 = MEMORY[0x1A5907080](v67, 0.5, 1.0, 0.0);
  sub_1A40A5AE8(0, &qword_1EB123E18, sub_1A40A4A44, sub_1A40A4B40, MEMORY[0x1E697E830]);
  v70 = (v66 + *(v69 + 36));
  v71 = v78;
  *v70 = v68;
  v70[1] = v71;
  return __swift_destroy_boxed_opaque_existential_0(v89);
}

uint64_t sub_1A40956B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1A40A46A4(v12, v10, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1A40A5E60(v10, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      }

      if (v14)
      {
        break;
      }

      sub_1A40A5E60(v10, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1A40A5DF8(v10, v18, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1A4095884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C5322C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A40958C0@<X0>(uint64_t *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, char *a5@<X4>, void **a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v199) = a7;
  v211 = a5;
  LODWORD(v210) = a4;
  LODWORD(v209) = a3;
  v208 = a8;
  sub_1A40A5AE8(0, &qword_1EB122BE0, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F948]);
  v200 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v201 = &v171 - v12;
  v13 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v184 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v188 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v185 = &v171 - v17;
  sub_1A40A179C(0, v16);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v203 = (&v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v204 = (&v171 - v21);
  v22 = MEMORY[0x1E697E830];
  sub_1A40A5AE8(0, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
  v205 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v195 = (&v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v197 = &v171 - v26;
  sub_1A40A16B4(0);
  v207 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v196 = &v171 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v198 = &v171 - v32;
  sub_1A40A5AE8(0, &qword_1EB1232B0, sub_1A40A16B4, sub_1A40A3BA8, v22);
  v173 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v174 = &v171 - v34;
  sub_1A40A1678(0);
  v175 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v177 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1648(0);
  v176 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v179 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1580(0);
  v178 = v39;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v181 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A14E0(0, v40);
  v180 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v182 = &v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A14B8(0);
  v212 = v44;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v183 = &v171 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1434(0, v45);
  v48 = v47;
  v190 = *(v47 - 8);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v187 = &v171 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1378(0, v49);
  v52 = v51;
  v191 = *(v51 - 8);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v189 = &v171 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A128C(0, v53);
  v56 = v55;
  v193 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v192 = &v171 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
  v59 = v58;
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v171 - v61;
  sub_1A3C5322C();
  if (v218 == 24)
  {
    LODWORD(v202) = a2 == 24;
  }

  else
  {
    LOBYTE(v214) = v218;
    if (a2 == 24)
    {
      LODWORD(v202) = 0;
    }

    else
    {
      LOBYTE(v216) = a2;
      sub_1A3C4CDB0();
      LODWORD(v202) = sub_1A524C594();
    }
  }

  sub_1A3C5322C();
  v206 = a6;
  if (v218 == 24)
  {
    LODWORD(v63) = v209 == 24;
  }

  else
  {
    LOBYTE(v214) = v218;
    if (v209 == 24)
    {
      LODWORD(v63) = 0;
    }

    else
    {
      LOBYTE(v216) = v209;
      sub_1A3C4CDB0();
      LODWORD(v63) = sub_1A524C594();
    }
  }

  v64 = v211;
  if (v210)
  {
    LODWORD(v209) = v63;
    v210 = v48;
    v63 = v52;
    v211 = v62;
    v65 = v56;
    v66 = v60;
    v67 = v59;
    v69 = *(v64 + 3);
    v68 = *(v64 + 4);
    v70 = v64;
    v71 = a1;
    __swift_project_boxed_opaque_existential_1(v64, v69);
    sub_1A3C5322C();
    if ((*(v68 + 64))(&v218, v69, v68))
    {
      v72 = 1;
      v73 = v208;
      v59 = v67;
      v60 = v66;
      return (*(v60 + 56))(v73, v72, 1, v59);
    }

    v74 = *(v70 + 3);
    v75 = *(v70 + 4);
    __swift_project_boxed_opaque_existential_1(v70, v74);
    sub_1A3C5322C();
    v76 = (*(v75 + 72))(&v218, v74, v75);
    v59 = v67;
    v60 = v66;
    v56 = v65;
    a1 = v71;
    v62 = v211;
    v52 = v63;
    v48 = v210;
    LOBYTE(v63) = v209;
    if (v76)
    {
      v72 = 1;
      v73 = v208;
      return (*(v60 + 56))(v73, v72, 1, v59);
    }
  }

  if (!shouldUseNewCollectionsLayout()())
  {
    v84 = sub_1A5249574();
    v85 = v203;
    *v203 = v84;
    v85[1] = 0;
    *(v85 + 16) = 0;
    sub_1A40A50E4(0, v86);
    v87 = v206;
    sub_1A4097590(a1, v206, v63 & 1);
    KeyPath = swift_getKeyPath();
    v89 = 0;
    if (v202)
    {
      v89 = *(*v87 + 144);
    }

    v90 = v195;
    sub_1A40A5290(v203, v195, sub_1A40A179C);
    v91 = (v90 + *(v205 + 36));
    *v91 = KeyPath;
    v91[1] = v89;
    v92 = swift_getKeyPath();
    v93 = v90;
    v94 = v194;
    sub_1A40A514C(v93, v194, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
    v95 = v94 + *(v207 + 36);
    *v95 = v92;
    *(v95 + 8) = 0;
    v96 = v94;
    v97 = v196;
    sub_1A40A5290(v96, v196, sub_1A40A16B4);
    sub_1A3CD87FC(v97, v201);
    swift_storeEnumTagMultiPayload();
    v98 = sub_1A40A3C30();
    *&v218 = v212;
    *(&v218 + 1) = v98;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v218 = v48;
    *(&v218 + 1) = OpaqueTypeConformance2;
    v100 = swift_getOpaqueTypeConformance2();
    *&v218 = v52;
    *(&v218 + 1) = v100;
    swift_getOpaqueTypeConformance2();
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    sub_1A5249744();
    sub_1A40A554C(v97, sub_1A40A16B4);
    goto LABEL_43;
  }

  v210 = v48;
  v196 = v59;
  v77 = v206;
  v78 = *v206;

  v79 = sub_1A3C5322C();
  v80 = v218;
  v81 = (*(*v78 + 680))(v79);
  if (*(v81 + 16) && (v82 = sub_1A3C6246C(v80), (v83 & 1) != 0))
  {
    v209 = *(*(v81 + 56) + 8 * v82);
  }

  else
  {
    v209 = 0;
  }

  sub_1A3C5322C();
  if (v218 == 24)
  {
    v101 = v199 == 24;
  }

  else
  {
    LOBYTE(v214) = v218;
    if (v199 == 24)
    {
      v101 = 0;
    }

    else
    {
      LOBYTE(v216) = v199;
      sub_1A3C4CDB0();
      v101 = sub_1A524C594();
    }
  }

  v102 = sub_1A5249574();
  v103 = v204;
  *v204 = v102;
  v103[1] = 0;
  *(v103 + 16) = 0;
  sub_1A40A50E4(0, v104);
  sub_1A4097590(a1, v77, v63 & 1);
  v105 = swift_getKeyPath();
  v106 = 0;
  if (v202)
  {
    v106 = v78[18];
  }

  v211 = v62;
  v203 = a1;
  v199 = v56;
  v202 = v60;
  v107 = v197;
  sub_1A40A5290(v204, v197, sub_1A40A179C);
  v108 = (v107 + *(v205 + 36));
  *v108 = v105;
  v108[1] = v106;
  v109 = swift_getKeyPath();
  v110 = v107;
  v111 = v198;
  sub_1A40A514C(v110, v198, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
  v112 = v111 + *(v207 + 36);
  *v112 = v109;
  *(v112 + 8) = 0;
  result = swift_getKeyPath();
  v114 = v209;
  if (v209)
  {
    v115 = result;
    v116 = v174;
    sub_1A40A5290(v111, v174, sub_1A40A16B4);
    v117 = (v116 + *(v173 + 36));
    *v117 = v115;
    v117[1] = v114;
    v118 = swift_getKeyPath();
    v119 = *(*v78 + 736);

    v119(&v216, v120);
    LOBYTE(v223) = 2;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v218 == v214)
    {
    }

    else
    {
      v121 = sub_1A524EAB4();

      v101 &= v121;
    }

    v122 = v206;
    v123 = v184;
    v124 = v116;
    v125 = v177;
    sub_1A40A514C(v124, v177, &qword_1EB1232B0, sub_1A40A16B4, sub_1A40A3BA8, MEMORY[0x1E697E830]);
    v126 = v125 + *(v175 + 36);
    *v126 = v118;
    *(v126 + 8) = v101 & 1;
    v127 = swift_getKeyPath();
    (v119)(&v218);
    v128 = v218;
    v129 = v179;
    sub_1A40A5290(v125, v179, sub_1A40A1678);
    v130 = v129 + *(v176 + 36);
    *v130 = v127;
    *(v130 + 8) = v128;
    v131 = swift_getKeyPath();
    (*(*v78 + 632))(&v218);
    v132 = v218;
    v133 = v129;
    v134 = v181;
    v135 = sub_1A40A5290(v133, v181, sub_1A40A1648);
    v136 = v134 + *(v178 + 36);
    *v136 = v131;
    *(v136 + 8) = v132;
    v137 = MEMORY[0x1A5907080](v135, 0.5, 0.85, 0.0);
    (v119)(&v218);
    v138 = v218;
    v139 = v182;
    sub_1A40A5290(v134, v182, sub_1A40A1580);
    v140 = v139 + *(v180 + 36);
    *v140 = v137;
    *(v140 + 8) = v138;
    sub_1A3C5322C();
    v141 = v214;
    v223 = *(v122 + 5);
    v218 = *(v122 + 5);
    sub_1A40A5214(0);
    v206 = v142;
    sub_1A524B6A4();
    v172 = v52;
    v195 = v78;
    if (v141 == 24)
    {
      v143 = 1.0;
      if (v216 != 24)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    LOBYTE(v218) = v141;
    if (v216 == 24)
    {
      v143 = 1.0;
    }

    else
    {
      v213 = v216;
      sub_1A3C4CDB0();
      v143 = 1.0;
      if (sub_1A524C594())
      {
LABEL_41:
        v143 = 0.001;
      }
    }

LABEL_42:
    v144 = v183;
    sub_1A40A5290(v139, v183, sub_1A40A14E0);
    *(v144 + *(v212 + 36)) = v143;
    v145 = *(v122 + 3);
    v220 = *(v122 + 2);
    v221 = v145;
    v222 = v122[8];
    v146 = *(v122 + 1);
    v218 = *v122;
    v219 = v146;
    LODWORD(v205) = sub_1A40972B8();
    v216 = 0u;
    v217 = 0u;
    v147 = v203;
    v148 = v185;
    sub_1A40A46A4(v203, v185, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v149 = *(v123 + 80);
    v150 = swift_allocObject();
    sub_1A40A5DF8(v148, v150 + ((v149 + 16) & ~v149), type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v151 = v188;
    sub_1A40A46A4(v147, v188, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v152 = swift_allocObject();
    v153 = *(v122 + 3);
    *(v152 + 48) = *(v122 + 2);
    *(v152 + 64) = v153;
    *(v152 + 80) = v122[8];
    v154 = *(v122 + 1);
    *(v152 + 16) = *v122;
    *(v152 + 32) = v154;
    sub_1A40A5DF8(v151, v152 + ((v149 + 88) & ~v149), type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v155 = swift_allocObject();
    v156 = *(v122 + 3);
    *(v155 + 48) = *(v122 + 2);
    *(v155 + 64) = v156;
    *(v155 + 80) = v122[8];
    v157 = *(v122 + 1);
    *(v155 + 16) = *v122;
    *(v155 + 32) = v157;
    sub_1A409470C(v122, &v214);
    sub_1A409470C(v122, &v214);
    v170 = sub_1A40A3C30();
    v158 = v187;
    sub_1A524B024();

    sub_1A3C35B00(&v216);
    sub_1A40A554C(v144, sub_1A40A14B8);
    sub_1A40A5D34(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    sub_1A5246D14();
    *(swift_allocObject() + 16) = xmmword_1A52F8E10;
    sub_1A5246CB4();
    sub_1A3C5322C();
    v218 = v223;
    v159 = sub_1A524B6C4();
    v160 = v195;
    v216 = v214;
    LOBYTE(v217) = v215;
    v161 = (*(*v195 + 504))(v159);
    *(&v219 + 1) = &type metadata for ShelvesStackDropDelegate;
    *&v220 = sub_1A40A55AC();
    *&v218 = swift_allocObject();
    sub_1A4268F74(v160, &v213, &v216, v161, v218 + 16);
    v214 = __PAIR128__(v170, v212);
    v162 = swift_getOpaqueTypeConformance2();
    v163 = v189;
    v164 = v210;
    sub_1A524B044();

    (*(v190 + 8))(v158, v164);
    __swift_destroy_boxed_opaque_existential_0(&v218);
    *&v218 = v164;
    *(&v218 + 1) = v162;
    v165 = swift_getOpaqueTypeConformance2();
    v166 = v192;
    v167 = v172;
    sub_1A524AF14();
    (*(v191 + 8))(v163, v167);
    v168 = v193;
    v169 = v199;
    (*(v193 + 16))(v201, v166, v199);
    swift_storeEnumTagMultiPayload();
    *&v218 = v167;
    *(&v218 + 1) = v165;
    swift_getOpaqueTypeConformance2();
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    v62 = v211;
    sub_1A5249744();

    (*(v168 + 8))(v166, v169);
    v59 = v196;
    v60 = v202;
LABEL_43:
    v73 = v208;
    sub_1A40A514C(v62, v208, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
    v72 = 0;
    return (*(v60 + 56))(v73, v72, 1, v59);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4097260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248E14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A40972B8()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (((*(**v0 + 600))(v3) & 1) != 0 && ((*(*v6 + 632))(&v26), v25 = v26, v24 = 1, static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v25, &v24)))
  {
    v7 = (*(*v6 + 584))();
    v8 = *(v7 + 16);
    if (v8)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1A3C4ED58(0, v8, 0);
      v9 = v23;
      v10 = *(v2 + 80);
      v21 = v7;
      v11 = v7 + ((v10 + 32) & ~v10);
      v12 = *(v2 + 72);
      do
      {
        sub_1A40A46A4(v11, v5, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        sub_1A3C5322C();
        v13 = v22;
        sub_1A40A5E60(v5, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v23 = v9;
        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          sub_1A3C4ED58((v14 > 1), v15 + 1, 1);
          v9 = v23;
        }

        v9[2] = v15 + 1;
        *(v9 + v15 + 32) = v13;
        v11 += v12;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v18 = (*(*v6 + 504))(v17);
    sub_1A4097EA0(v18, v9);
    v16 = v19;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A4097590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1A40A568C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A194C(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + 16))
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  sub_1A4098088(a1, *(a2 + 8), v12, v3, v11);
  sub_1A3C5322C();
  sub_1A3C3DEB4();
  sub_1A524E384();
  v13 = sub_1A5242394();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1A40A37A4(&qword_1EB122370, sub_1A40A194C, sub_1A40A2A24, sub_1A40A35F0);
  sub_1A524A614();
  sub_1A40A5E60(v8, sub_1A40A568C);
  sub_1A3D5FAFC(v16);
  return sub_1A40A5E60(v11, sub_1A40A194C);
}

uint64_t sub_1A40977C8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v9 = v17;

  if ((v9 & 1) == 0)
  {
    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40A5E60(&v16, sub_1A40A50B0);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A40979AC(v8);
  sub_1A5242FA4();

  v12 = sub_1A40979AC(v8);
  v15 = *(a2 + 56);
  v14[1] = v12;
  sub_1A40A5D34(0, &qword_1EB121BF8, sub_1A40A5034, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A40979AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1A40A4BFC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      ++v4;
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A40A4BFC((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1A4097AAC(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 56);
  v35[0] = *(a1 + 56);
  sub_1A40A5D34(0, &qword_1EB121BF8, sub_1A40A5034, MEMORY[0x1E6981790]);
  v31[1] = v6;
  sub_1A524B6A4();
  if (v32)
  {
    v7 = v32;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(a1 + 24);
  v38 = v8;
  v39 = *(a1 + 32);
  v9 = v39;

  if (v9 == 1)
  {

    v31[0] = v8;
  }

  else
  {
    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    v12 = v10;
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A5246DF4(v12, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40A5E60(&v38, sub_1A40A50B0);
    v14 = *(v3 + 8);
    v14(v5, v2);
    v31[0] = *&v35[0];

    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, v13);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40A5E60(&v38, sub_1A40A50B0);
    v14(v5, v2);
  }

  v17 = sub_1A5242F94();

  if (!v17)
  {

LABEL_23:
    sub_1A5242FA4();

    v35[0] = v40;
    *&v32 = 0;
    sub_1A524B6B4();
    return;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_22:

    goto LABEL_23;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v19 < *(v17 + 16))
  {
    sub_1A3D5FB50(v17 + 32 + 40 * v19++, v35);
    v26 = *(v7 + 16) + 1;
    v27 = v7 + 32;
    while (--v26)
    {
      v28 = v27 + 40;
      v29 = MEMORY[0x1A59096D0]();
      v27 = v28;
      if (v29)
      {
        sub_1A3D5FAFC(v35);
        goto LABEL_13;
      }
    }

    v32 = v35[0];
    v33 = v35[1];
    v34 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A40A4BFC(0, *(v20 + 16) + 1, 1);
      v20 = v37;
    }

    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1A40A4BFC((v21 > 1), v22 + 1, 1);
      v20 = v37;
    }

    *(v20 + 16) = v22 + 1;
    v23 = v20 + 40 * v22;
    v24 = v32;
    v25 = v33;
    *(v23 + 64) = v34;
    *(v23 + 32) = v24;
    *(v23 + 48) = v25;
LABEL_13:
    if (v19 == v18)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1A4097EA0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v3 >= v2)
  {
    if ((v3 - v2) >= 0)
    {
      v5 = 0;
      v10 = a2 + 4;
      v6 = a1[2];
      while (v6 >= v5)
      {
        if (v5 == v3 + 1)
        {
          goto LABEL_30;
        }

        if (v3 == v2)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v8 = MEMORY[0x1E69E7CC0];
        if (v6 != v5)
        {
          if (v2)
          {
            sub_1A40A60A0(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
            v8 = swift_allocObject();
            v9 = _swift_stdlib_malloc_size(v8);
            v8[2] = v2;
            v8[3] = 2 * v9 - 64;
          }

          memcpy(v8 + 4, v10 + v5, v2);
        }

        if (v8[2] == v2)
        {
          if (!v2 || v8 == a1)
          {
LABEL_26:

            return;
          }

          v7 = 0;
          while (v7 < v8[2])
          {
            if (v2 == v7)
            {
              goto LABEL_28;
            }

            sub_1A3C4CDB0();
            if ((sub_1A524C594() & 1) == 0)
            {
              goto LABEL_18;
            }

            if (v2 == ++v7)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

LABEL_18:

        if (v5 == v3 - v2)
        {
          return;
        }

        v6 = ++v5 + v2;
        if (__OFADD__(v5, v2))
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1A4098088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v625 = a4;
  v624 = a3;
  v626 = a2;
  v632 = a1;
  v631 = a5;
  v517 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v517);
  v516 = &v454 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2990(0);
  v578 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v521 = &v454 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v512 = type metadata accessor for LemonadeSearchCollectionResultsFeature(0);
  MEMORY[0x1EEE9AC00](v512);
  v520 = &v454 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v515 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v515);
  v513 = &v454 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A28FC(0);
  v573 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v519 = &v454 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = type metadata accessor for LemonadeSuggestionsFeature(0);
  MEMORY[0x1EEE9AC00](v510);
  v518 = &v454 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697F948];
  sub_1A40A5AE8(0, &qword_1EB127EF8, sub_1A40A285C, sub_1A40A2990, MEMORY[0x1E697F948]);
  v574 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v576 = &v454 - v15;
  sub_1A40A56C0(0);
  v570 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v571 = &v454 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A285C(0, v17);
  v575 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v572 = &v454 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2814(0);
  v607 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v577 = &v454 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v569 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v514 = &v454 - v24;
  sub_1A40A4FCC(0, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v567 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v511 = &v454 - v26;
  sub_1A40A5760(0);
  v564 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v566 = &v454 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2740(0, v28);
  v603 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v568 = &v454 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v563 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v509 = &v454 - v33;
  v506 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v506);
  v505 = &v454 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A26AC(0);
  v565 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v508 = &v454 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = type metadata accessor for LemonadePhototypesFeature(0);
  MEMORY[0x1EEE9AC00](v503);
  v507 = &v454 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122AF8, sub_1A40A2588, sub_1A40A2814, v13);
  v604 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v606 = &v454 - v39;
  sub_1A40A5AE8(0, &qword_1EB122B68, sub_1A40A25D0, sub_1A40A2740, v13);
  v599 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v601 = &v454 - v41;
  sub_1A40A5AE8(0, &qword_1EB122CC0, sub_1A40A2618, sub_1A40A26AC, v13);
  v560 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v561 = &v454 - v43;
  sub_1A40A25D0(0);
  v600 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v562 = &v454 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2588(0);
  v605 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v602 = &v454 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2540(0);
  v630 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v608 = &v454 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v498);
  v496 = &v454 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2618(0);
  v559 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v504 = &v454 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v492 = type metadata accessor for LemonadePhotosChallengeFeature(0);
  MEMORY[0x1EEE9AC00](v492);
  v502 = &v454 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v494);
  v493 = &v454 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A24AC(0);
  v557 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v501 = &v454 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v491);
  v500 = &v454 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5834(0);
  v553 = v58;
  v59 = MEMORY[0x1EEE9AC00](v58);
  v555 = &v454 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A240C(0, v59);
  v598 = v61;
  MEMORY[0x1EEE9AC00](v61);
  v558 = &v454 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v552 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v499 = &v454 - v64;
  v490 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v490);
  v489 = &v454 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2378(0);
  v556 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v497 = &v454 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature(0);
  MEMORY[0x1EEE9AC00](v487);
  v495 = &v454 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122B70, sub_1A40A2268, sub_1A40A240C, v13);
  v594 = v69;
  MEMORY[0x1EEE9AC00](v69);
  v596 = &v454 - v70;
  sub_1A40A5AE8(0, &qword_1EB122CD8, sub_1A40A22B0, sub_1A40A2378, v13);
  v548 = v71;
  MEMORY[0x1EEE9AC00](v71);
  v551 = &v454 - v72;
  sub_1A40A2268(0);
  v595 = v73;
  MEMORY[0x1EEE9AC00](v73);
  v554 = &v454 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2220(0);
  v618 = v75;
  MEMORY[0x1EEE9AC00](v75);
  v597 = &v454 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v458);
  v457 = &v454 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A22E4(0);
  v485 = v78;
  v484 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v456 = &v454 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A22B0(0);
  v547 = v80;
  MEMORY[0x1EEE9AC00](v80);
  v550 = &v454 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for LemonadeImportSourcesFeature(0);
  MEMORY[0x1EEE9AC00](v455);
  v549 = &v454 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider(0);
  MEMORY[0x1EEE9AC00](v480);
  v479 = &v454 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A218C(0);
  v545 = v84;
  MEMORY[0x1EEE9AC00](v84);
  v488 = &v454 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = type metadata accessor for LemonadeSharedWithYouFeature(0);
  MEMORY[0x1EEE9AC00](v478);
  v486 = &v454 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A58D4(0);
  v543 = v87;
  v88 = MEMORY[0x1EEE9AC00](v87);
  v544 = &v454 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A20EC(0, v88);
  v593 = v90;
  MEMORY[0x1EEE9AC00](v90);
  v546 = &v454 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v542 = v92;
  MEMORY[0x1EEE9AC00](v92);
  v483 = &v454 - v93;
  v477 = type metadata accessor for LemonadeICloudLinksShelfProvider(0);
  MEMORY[0x1EEE9AC00](v477);
  v476 = &v454 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2058(0);
  v541 = v95;
  MEMORY[0x1EEE9AC00](v95);
  v482 = &v454 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v473 = type metadata accessor for LemonadeICloudLinksFeature(0);
  MEMORY[0x1EEE9AC00](v473);
  v481 = &v454 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122B08, sub_1A40A1F34, sub_1A40A2220, v13);
  v614 = v98;
  MEMORY[0x1EEE9AC00](v98);
  v616 = &v454 - v99;
  sub_1A40A5AE8(0, &qword_1EB122B88, sub_1A40A1F7C, sub_1A40A20EC, v13);
  v589 = v100;
  MEMORY[0x1EEE9AC00](v100);
  v591 = &v454 - v101;
  sub_1A40A5AE8(0, &qword_1EB122D00, sub_1A40A1FC4, sub_1A40A2058, v13);
  v538 = v102;
  MEMORY[0x1EEE9AC00](v102);
  v539 = &v454 - v103;
  sub_1A40A1F7C(0);
  v590 = v104;
  MEMORY[0x1EEE9AC00](v104);
  v540 = &v454 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1F34(0);
  v615 = v106;
  MEMORY[0x1EEE9AC00](v106);
  v592 = &v454 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1EEC(0);
  v622 = v108;
  MEMORY[0x1EEE9AC00](v108);
  v617 = &v454 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v469);
  v468 = &v454 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1FC4(0);
  v537 = v111;
  MEMORY[0x1EEE9AC00](v111);
  v475 = &v454 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for LemonadeMapFeature(0);
  MEMORY[0x1EEE9AC00](v467);
  v474 = &v454 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v535 = v114;
  v115 = MEMORY[0x1EEE9AC00](v114);
  v472 = &v454 - v116;
  sub_1A40A1DB0(0, &qword_1EB122CE0, MEMORY[0x1E697F948], v115);
  v533 = v117;
  v118 = MEMORY[0x1EEE9AC00](v117);
  v534 = &v454 - v119;
  sub_1A40A1D90(0, v118);
  v587 = v120;
  MEMORY[0x1EEE9AC00](v120);
  v536 = &v454 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C50BAC(0);
  v465 = v122;
  MEMORY[0x1EEE9AC00](v122);
  v463 = &v454 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1E58(0);
  v532 = v124;
  MEMORY[0x1EEE9AC00](v124);
  v471 = &v454 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v531 = v126;
  MEMORY[0x1EEE9AC00](v126);
  v470 = &v454 - v127;
  sub_1A40A5AE8(0, &qword_1EB122B78, sub_1A40A1CBC, sub_1A40A1D90, v13);
  v584 = v128;
  MEMORY[0x1EEE9AC00](v128);
  v586 = &v454 - v129;
  sub_1A40A5974(0);
  v528 = v130;
  v131 = MEMORY[0x1EEE9AC00](v130);
  v529 = &v454 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1CBC(0, v131);
  v585 = v133;
  MEMORY[0x1EEE9AC00](v133);
  v530 = &v454 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1C74(0);
  v613 = v135;
  MEMORY[0x1EEE9AC00](v135);
  v588 = &v454 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v527 = v137;
  MEMORY[0x1EEE9AC00](v137);
  v466 = &v454 - v138;
  v459 = type metadata accessor for LemonadeSocialGroupsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v459);
  v140 = &v454 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1BE0(0);
  v525 = v141;
  MEMORY[0x1EEE9AC00](v141);
  v464 = &v454 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4AFFC(0);
  v144 = v143;
  MEMORY[0x1EEE9AC00](v143);
  v462 = &v454 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5A48(0);
  v523 = v146;
  v147 = MEMORY[0x1EEE9AC00](v146);
  v524 = &v454 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1B40(0, v147);
  v583 = v149;
  MEMORY[0x1EEE9AC00](v149);
  v526 = &v454 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
  v522 = v151;
  MEMORY[0x1EEE9AC00](v151);
  v461 = &v454 - v152;
  sub_1A40A4FCC(0, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  MEMORY[0x1EEE9AC00](v153);
  v460 = &v454 - v154;
  sub_1A40A5AE8(0, &qword_1EB122AC0, sub_1A40A1994, sub_1A40A2540, v13);
  v627 = v155;
  MEMORY[0x1EEE9AC00](v155);
  v629 = &v454 - v156;
  sub_1A40A5AE8(0, &qword_1EB122AD0, sub_1A40A19DC, sub_1A40A1EEC, v13);
  v619 = v157;
  MEMORY[0x1EEE9AC00](v157);
  v621 = &v454 - v158;
  sub_1A40A5AE8(0, &qword_1EB122B00, sub_1A40A1A24, sub_1A40A1C74, v13);
  v609 = v159;
  MEMORY[0x1EEE9AC00](v159);
  v611 = &v454 - v160;
  sub_1A40A5AE8(0, &qword_1EB122B80, sub_1A40A1A6C, sub_1A40A1B40, v13);
  v579 = v161;
  MEMORY[0x1EEE9AC00](v161);
  v581 = &v454 - v162;
  sub_1A40A5B6C(0);
  v164 = MEMORY[0x1EEE9AC00](v163);
  v166 = &v454 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1A6C(0, v164);
  v580 = v167;
  MEMORY[0x1EEE9AC00](v167);
  v169 = &v454 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1A24(0);
  v610 = v170;
  MEMORY[0x1EEE9AC00](v170);
  v582 = &v454 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A19DC(0);
  v620 = v172;
  MEMORY[0x1EEE9AC00](v172);
  v612 = &v454 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1994(0);
  v628 = v174;
  MEMORY[0x1EEE9AC00](v174);
  v623 = &v454 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  MEMORY[0x1EEE9AC00](v176);
  v178 = &v454 - v177;
  v179 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v179);
  v181 = &v454 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A46A4(v632, v181, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v320 = *(v181 + 2);
      v632 = *(v181 + 1);
      v618 = v320;
      v321 = *(v181 + 3);
      LOBYTE(v320) = v181[32];
      v617 = *(v181 + 5);
      *&v636 = v321;
      BYTE8(v636) = v320;
      v322 = sub_1A3C445AC();
      v323 = v626;

      v324 = v321;
      v325 = sub_1A3C5A374();
      v326 = v460;
      sub_1A3EFC060(&v636, v323, v624, v325 & 1, v625 & 1, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v322, v460);
      sub_1A40A5C40(v326, v166, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2B44(v327);
      sub_1A40A2BD4(v328);
      sub_1A5249744();
      sub_1A40A46A4(v169, v581, sub_1A40A1A6C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64(v329);
      v330 = v582;
      sub_1A5249744();
      sub_1A40A5E60(v169, sub_1A40A1A6C);
      sub_1A40A46A4(v330, v611, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v331 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v330, sub_1A40A1A24);
      sub_1A40A46A4(v331, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v332 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v331, sub_1A40A19DC);
      sub_1A40A46A4(v332, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v332, sub_1A40A1994);
      v196 = v326;
      v197 = &qword_1EB125C08;
      v198 = sub_1A3C445AC;
      v199 = &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider;
      goto LABEL_35;
    case 2:
      v266 = *(v181 + 2);
      v268 = *(v181 + 16);
      *&v636 = *(v181 + 3);
      v267 = v636;
      WORD4(v636) = v268;
      v269 = sub_1A3C36888();
      v270 = v626;

      v271 = v267;
      v217 = &type metadata for LemonadePeopleShelfProvider;
      v272 = sub_1A3C5A374();
      v273 = v461;
      sub_1A3EFC060(&v636, v270, v624, v272 & 1, v625 & 1, &type metadata for LemonadePeopleShelfProvider, v269, v461);
      v274 = sub_1A3C36888;
      sub_1A40A5C40(v273, v524, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2D14(v275);
      sub_1A3C56C94(&qword_1EB125BF0, sub_1A40A1BE0, &unk_1A5306A30);
      v276 = v526;
      sub_1A5249744();
      sub_1A40A46A4(v276, v581, sub_1A40A1B40);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64(v277);
      v278 = v582;
      sub_1A5249744();
      sub_1A40A5E60(v276, sub_1A40A1B40);
      sub_1A40A46A4(v278, v611, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v279 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v278, sub_1A40A1A24);
      sub_1A40A46A4(v279, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v280 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v279, sub_1A40A19DC);
      sub_1A40A46A4(v280, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v280, sub_1A40A1994);
      v196 = v273;
      v197 = &qword_1EB12A688;
      goto LABEL_18;
    case 3:
      v293 = v462;
      sub_1A40A5DF8(v181, v462, sub_1A3C4AFFC);
      sub_1A40A46A4(v293 + *(v144 + 40), v140, type metadata accessor for LemonadeSocialGroupsShelfProvider);
      v294 = sub_1A3C56C94(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
      v295 = v626;

      v296 = v459;
      v297 = sub_1A3C5A374();
      v298 = v464;
      sub_1A3EFC060(v140, v295, v624, v297 & 1, v625 & 1, v296, v294, v464);
      sub_1A40A46A4(v298, v524, sub_1A40A1BE0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2D14(v299);
      sub_1A3C56C94(&qword_1EB125BF0, sub_1A40A1BE0, &unk_1A5306A30);
      v300 = v526;
      sub_1A5249744();
      sub_1A40A46A4(v300, v581, sub_1A40A1B40);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64(v301);
      v302 = v582;
      sub_1A5249744();
      sub_1A40A5E60(v300, sub_1A40A1B40);
      sub_1A40A46A4(v302, v611, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v303 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v302, sub_1A40A1A24);
      sub_1A40A46A4(v303, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v304 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v303, sub_1A40A19DC);
      sub_1A40A46A4(v304, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v304, sub_1A40A1994);
      sub_1A40A5E60(v298, sub_1A40A1BE0);
      v305 = sub_1A3C4AFFC;
      v306 = v293;
      goto LABEL_29;
    case 4:
      v211 = *(v181 + 2);
      v632 = *(v181 + 1);
      v241 = v181[32];
      *&v636 = *(v181 + 3);
      v240 = v636;
      BYTE8(v636) = v241;
      v242 = sub_1A3C440BC();
      v243 = v626;

      v216 = v240;
      v217 = &type metadata for LemonadeEventsFeature.ShelfProvider;
      v244 = sub_1A3C5A374();
      v219 = v466;
      sub_1A3EFC060(&v636, v243, v624, v244 & 1, v625 & 1, &type metadata for LemonadeEventsFeature.ShelfProvider, v242, v466);
      v220 = &qword_1EB12A768;
      v221 = sub_1A3C440BC;
      sub_1A40A5C40(v219, v529, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2E34(v245);
      sub_1A40A2EC4(v246);
      v247 = v530;
      sub_1A5249744();
      sub_1A40A46A4(v247, v586, sub_1A40A1CBC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54(v248);
      v249 = v588;
      sub_1A5249744();
      v250 = sub_1A40A1CBC;
      goto LABEL_22;
    case 5:
      v355 = *(v181 + 2);
      v632 = *(v181 + 1);
      v357 = *(v181 + 4);
      v358 = v181[40];
      *&v636 = *(v181 + 3);
      v356 = v636;
      *(&v636 + 1) = v357;
      v637[0] = v358;
      v359 = sub_1A3C441B4();
      v360 = v626;

      v361 = v356;
      v362 = v357;
      v217 = &type metadata for LemonadeTripsFeature.ShelfProvider;
      v363 = sub_1A3C5A374();
      v364 = v470;
      sub_1A3EFC060(&v636, v360, v624, v363 & 1, v625 & 1, &type metadata for LemonadeTripsFeature.ShelfProvider, v359, v470);
      v274 = sub_1A3C441B4;
      sub_1A40A5C40(v364, v529, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2E34(v365);
      sub_1A40A2EC4(v366);
      v367 = v530;
      sub_1A5249744();
      sub_1A40A46A4(v367, v586, sub_1A40A1CBC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54(v368);
      v369 = v588;
      sub_1A5249744();
      sub_1A40A5E60(v367, sub_1A40A1CBC);
      sub_1A40A46A4(v369, v611, sub_1A40A1C74);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v370 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v369, sub_1A40A1C74);
      sub_1A40A46A4(v370, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v371 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v370, sub_1A40A19DC);
      sub_1A40A46A4(v371, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v371, sub_1A40A1994);
      v196 = v364;
      v197 = &qword_1EB12A788;
LABEL_18:
      v198 = v274;
      goto LABEL_34;
    case 6:
      v211 = *(v181 + 2);
      v632 = *(v181 + 1);
      v394 = v181[32];
      *&v636 = *(v181 + 3);
      v393 = v636;
      BYTE8(v636) = v394;
      v395 = sub_1A3C43F6C();
      v396 = v626;

      v216 = v393;
      v217 = &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider;
      v397 = sub_1A3C5A374();
      v219 = v472;
      sub_1A3EFC060(&v636, v396, v624, v397 & 1, v625 & 1, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, v395, v472);
      v220 = &qword_1EB12A678;
      v221 = sub_1A3C43F6C;
      sub_1A40A5C40(v219, v534, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A710, sub_1A40A1E58, &unk_1A5306A30);
      sub_1A40A3004(v398);
      v247 = v536;
      sub_1A5249744();
      sub_1A40A46A4(v247, v586, sub_1A40A1D90);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54(v399);
      v249 = v588;
      sub_1A5249744();
      v250 = sub_1A40A1D90;
LABEL_22:
      sub_1A40A5E60(v247, v250);
      sub_1A40A46A4(v249, v611, sub_1A40A1C74);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v226 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v249, sub_1A40A1C74);
      sub_1A40A46A4(v226, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v227 = v623;
      sub_1A5249744();
      v228 = sub_1A40A19DC;
      goto LABEL_23;
    case 7:
      v307 = *(v181 + 1);
      v636 = *v181;
      *v637 = v307;
      *&v637[16] = *(v181 + 4);
      v308 = v463;
      sub_1A3C64A1C(EnumCaseMultiPayload, v183);
      v309 = sub_1A3C56C94(&qword_1EB129B88, sub_1A3C50BAC, &unk_1A5368674);
      v310 = v626;

      v311 = v465;
      v312 = sub_1A3C5A374();
      v313 = v471;
      sub_1A3EFC060(v308, v310, v624, v312 & 1, v625 & 1, v311, v309, v471);
      sub_1A40A46A4(v313, v534, sub_1A40A1E58);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A710, sub_1A40A1E58, &unk_1A5306A30);
      sub_1A40A3004(v314);
      v315 = v536;
      sub_1A5249744();
      sub_1A40A46A4(v315, v586, sub_1A40A1D90);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54(v316);
      v317 = v588;
      sub_1A5249744();
      sub_1A40A5E60(v315, sub_1A40A1D90);
      sub_1A40A46A4(v317, v611, sub_1A40A1C74);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v318 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v317, sub_1A40A1C74);
      sub_1A40A46A4(v318, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v319 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v318, sub_1A40A19DC);
      sub_1A40A46A4(v319, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      v633 = v636;
      sub_1A3C651B8(&v633);

      v634[0] = *&v637[8];
      sub_1A40A5E60(v634, sub_1A3FA1068);
      sub_1A40A5E60(v319, sub_1A40A1994);
      v305 = sub_1A40A1E58;
      v306 = v313;
      goto LABEL_29;
    case 8:
      v200 = v474;
      sub_1A40A5DF8(v181, v474, type metadata accessor for LemonadeMapFeature);
      v414 = v468;
      sub_1A40A46A4(v200 + *(v467 + 24), v468, type metadata accessor for LemonadeMapFeature.ShelfProvider);
      v415 = sub_1A3C56C94(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider, &unk_1A534D504);
      v416 = v626;

      v417 = v469;
      v418 = sub_1A3C5A374();
      v419 = v475;
      sub_1A3EFC060(v414, v416, v624, v418 & 1, v625 & 1, v417, v415, v475);
      sub_1A40A46A4(v419, v539, sub_1A40A1FC4);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&unk_1EB12A7A0, sub_1A40A1FC4, &unk_1A5306A30);
      sub_1A3C56C94(&qword_1EB12A6D0, sub_1A40A2058, &unk_1A5306A30);
      v420 = v540;
      sub_1A5249744();
      sub_1A40A46A4(v420, v591, sub_1A40A1F7C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3124();
      sub_1A40A3200(v421);
      v422 = v592;
      sub_1A5249744();
      sub_1A40A5E60(v420, sub_1A40A1F7C);
      sub_1A40A46A4(v422, v616, sub_1A40A1F34);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v423 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v422, sub_1A40A1F34);
      sub_1A40A46A4(v423, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v424 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v423, sub_1A40A1EEC);
      sub_1A40A46A4(v424, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v424, sub_1A40A1994);
      sub_1A40A5E60(v419, sub_1A40A1FC4);
      v210 = type metadata accessor for LemonadeMapFeature;
      goto LABEL_28;
    case 9:
      v200 = v481;
      sub_1A40A5DF8(v181, v481, type metadata accessor for LemonadeICloudLinksFeature);
      v256 = v476;
      sub_1A40A46A4(v200 + *(v473 + 20), v476, type metadata accessor for LemonadeICloudLinksShelfProvider);
      v257 = sub_1A40B1BE4(v624, 3);
      v258 = sub_1A3C56C94(&qword_1EB1296A0, type metadata accessor for LemonadeICloudLinksShelfProvider, &unk_1A5353460);
      v259 = v626;

      v260 = v482;
      sub_1A3EFC060(v256, v259, 1, !v257, v625 & 1, v477, v258, v482);
      sub_1A40A46A4(v260, v539, sub_1A40A2058);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&unk_1EB12A7A0, sub_1A40A1FC4, &unk_1A5306A30);
      sub_1A3C56C94(&qword_1EB12A6D0, sub_1A40A2058, &unk_1A5306A30);
      v261 = v540;
      sub_1A5249744();
      sub_1A40A46A4(v261, v591, sub_1A40A1F7C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3124();
      sub_1A40A3200(v262);
      v263 = v592;
      sub_1A5249744();
      sub_1A40A5E60(v261, sub_1A40A1F7C);
      sub_1A40A46A4(v263, v616, sub_1A40A1F34);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v264 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v263, sub_1A40A1F34);
      sub_1A40A46A4(v264, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v265 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v264, sub_1A40A1EEC);
      sub_1A40A46A4(v265, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v265, sub_1A40A1994);
      sub_1A40A5E60(v260, sub_1A40A2058);
      v210 = type metadata accessor for LemonadeICloudLinksFeature;
      goto LABEL_28;
    case 10:
      v408 = *(v181 + 2);
      v632 = *(v181 + 1);
      v409 = v181[24];
      v410 = *(v181 + 4);
      v411 = *(v181 + 5);
      v412 = v181[48];
      *&v636 = v408;
      BYTE8(v636) = v409;
      *v637 = v410;
      *&v637[8] = v411;
      v637[16] = v412;
      sub_1A3C54318();

      v413 = v408;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 11:
      v200 = v486;
      sub_1A40A5DF8(v181, v486, type metadata accessor for LemonadeSharedWithYouFeature);
      v229 = v479;
      sub_1A40A46A4(v200 + *(v478 + 20), v479, type metadata accessor for LemonadeSharedWithYouGridShelfProvider);
      v230 = sub_1A40B1BE4(v624, 3);
      v231 = sub_1A3C56C94(&qword_1EB1294E0, type metadata accessor for LemonadeSharedWithYouGridShelfProvider, &unk_1A5317B18);
      v232 = v626;

      v233 = v488;
      sub_1A3EFC060(v229, v232, 1, !v230, v625 & 1, v480, v231, v488);
      sub_1A40A46A4(v233, v544, sub_1A40A218C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A32B0(v234);
      sub_1A3C56C94(&qword_1EB12A6C0, sub_1A40A218C, &unk_1A5306A30);
      v235 = v546;
      sub_1A5249744();
      sub_1A40A46A4(v235, v591, sub_1A40A20EC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3124();
      sub_1A40A3200(v236);
      v237 = v592;
      sub_1A5249744();
      sub_1A40A5E60(v235, sub_1A40A20EC);
      sub_1A40A46A4(v237, v616, sub_1A40A1F34);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v238 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v237, sub_1A40A1F34);
      sub_1A40A46A4(v238, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v239 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v238, sub_1A40A1EEC);
      sub_1A40A46A4(v239, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v239, sub_1A40A1994);
      sub_1A40A5E60(v233, sub_1A40A218C);
      v210 = type metadata accessor for LemonadeSharedWithYouFeature;
      goto LABEL_28;
    case 12:
      v251 = v549;
      sub_1A40A5DF8(v181, v549, type metadata accessor for LemonadeImportSourcesFeature);
      if (shouldUseNewCollectionsLayout()())
      {
        v252 = 1;
        v253 = v629;
        v254 = v623;
        v255 = v550;
      }

      else
      {
        v444 = v457;
        sub_1A40A46A4(v251 + *(v455 + 20), v457, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider);
        v445 = sub_1A3C56C94(&qword_1EB129A08, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider, &unk_1A5352474);
        v446 = v626;

        v447 = v458;
        v448 = sub_1A3C5A374();
        v449 = v456;
        sub_1A3EFC060(v444, v446, v624, v448 & 1, v625 & 1, v447, v445, v456);
        v255 = v550;
        sub_1A40A5DF8(v449, v550, sub_1A40A22E4);
        v252 = 0;
        v253 = v629;
        v254 = v623;
      }

      (*(v484 + 56))(v255, v252, 1, v485);
      sub_1A40A46A4(v255, v551, sub_1A40A22B0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A424C(&qword_1EB125BF8, sub_1A40A22B0, sub_1A40A347C, MEMORY[0x1E6982090]);
      sub_1A3C56C94(&qword_1EB12A6A0, sub_1A40A2378, &unk_1A5306A30);
      v450 = v554;
      sub_1A5249744();
      sub_1A40A46A4(v450, v596, sub_1A40A2268);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0(v451);
      v452 = v597;
      sub_1A5249744();
      sub_1A40A5E60(v450, sub_1A40A2268);
      sub_1A40A46A4(v452, v616, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v453 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v452, sub_1A40A2220);
      sub_1A40A46A4(v453, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      sub_1A5249744();
      sub_1A40A5E60(v453, sub_1A40A1EEC);
      sub_1A40A46A4(v254, v253, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v254, sub_1A40A1994);
      sub_1A40A5E60(v550, sub_1A40A22B0);
      v305 = type metadata accessor for LemonadeImportSourcesFeature;
      v306 = v549;
      goto LABEL_29;
    case 13:
      v200 = v495;
      sub_1A40A5DF8(v181, v495, type metadata accessor for LemonadeSharedLibrarySuggestionsFeature);
      v383 = v489;
      sub_1A40A46A4(v200 + *(v487 + 20), v489, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider);
      v384 = sub_1A40B1BE4(v624, 3);
      v385 = sub_1A3C56C94(&qword_1EB129330, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider, &unk_1A5350DF4);
      v386 = v626;

      v387 = v497;
      sub_1A3EFC060(v383, v386, 1, !v384, v625 & 1, v490, v385, v497);
      sub_1A40A46A4(v387, v551, sub_1A40A2378);
      swift_storeEnumTagMultiPayload();
      sub_1A40A424C(&qword_1EB125BF8, sub_1A40A22B0, sub_1A40A347C, MEMORY[0x1E6982090]);
      sub_1A3C56C94(&qword_1EB12A6A0, sub_1A40A2378, &unk_1A5306A30);
      v388 = v554;
      sub_1A5249744();
      sub_1A40A46A4(v388, v596, sub_1A40A2268);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0(v389);
      v390 = v597;
      sub_1A5249744();
      sub_1A40A5E60(v388, sub_1A40A2268);
      sub_1A40A46A4(v390, v616, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v391 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v390, sub_1A40A2220);
      sub_1A40A46A4(v391, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v392 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v391, sub_1A40A1EEC);
      sub_1A40A46A4(v392, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v392, sub_1A40A1994);
      sub_1A40A5E60(v387, sub_1A40A2378);
      v210 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature;
      goto LABEL_28;
    case 14:
      v211 = *(v181 + 2);
      v632 = *(v181 + 1);
      v213 = v181[32];
      *&v636 = *(v181 + 3);
      v212 = v636;
      BYTE8(v636) = v213;
      v214 = sub_1A3C52190();
      v215 = v626;

      v216 = v212;
      v217 = &type metadata for LemonadeWallpaperFeature.ShelfProvider;
      v218 = sub_1A3C5A374();
      v219 = v499;
      sub_1A3EFC060(&v636, v215, v624, v218 & 1, v625 & 1, &type metadata for LemonadeWallpaperFeature.ShelfProvider, v214, v499);
      v220 = &qword_1EB12A738;
      v221 = sub_1A3C52190;
      sub_1A40A5C40(v219, v555, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3560(v222);
      sub_1A3C56C94(&qword_1EB12A6E0, sub_1A40A24AC, &unk_1A5306A30);
      v223 = v558;
      sub_1A5249744();
      sub_1A40A46A4(v223, v596, sub_1A40A240C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0(v224);
      v225 = v597;
      sub_1A5249744();
      sub_1A40A5E60(v223, sub_1A40A240C);
      sub_1A40A46A4(v225, v616, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v226 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v225, sub_1A40A2220);
      sub_1A40A46A4(v226, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v227 = v623;
      sub_1A5249744();
      v228 = sub_1A40A1EEC;
LABEL_23:
      sub_1A40A5E60(v226, v228);
      sub_1A40A46A4(v227, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      v400 = sub_1A40A1994;
      goto LABEL_32;
    case 15:
      v200 = v500;
      sub_1A40A5DF8(v181, v500, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
      v281 = v493;
      sub_1A40A46A4(v200 + *(v491 + 24), v493, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      v282 = sub_1A3C56C94(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
      v283 = v626;

      v284 = v494;
      v285 = sub_1A3C5A374();
      v286 = v501;
      sub_1A3EFC060(v281, v283, v624, v285 & 1, v625 & 1, v284, v282, v501);
      sub_1A40A46A4(v286, v555, sub_1A40A24AC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3560(v287);
      sub_1A3C56C94(&qword_1EB12A6E0, sub_1A40A24AC, &unk_1A5306A30);
      v288 = v558;
      sub_1A5249744();
      sub_1A40A46A4(v288, v596, sub_1A40A240C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0(v289);
      v290 = v597;
      sub_1A5249744();
      sub_1A40A5E60(v288, sub_1A40A240C);
      sub_1A40A46A4(v290, v616, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v291 = v617;
      sub_1A5249744();
      sub_1A40A5E60(v290, sub_1A40A2220);
      sub_1A40A46A4(v291, v621, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v292 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v291, sub_1A40A1EEC);
      sub_1A40A46A4(v292, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v292, sub_1A40A1994);
      sub_1A40A5E60(v286, sub_1A40A24AC);
      v210 = type metadata accessor for LemonadeMacSyncedAlbumsFeature;
      goto LABEL_28;
    case 16:
      v200 = v502;
      sub_1A40A5DF8(v181, v502, type metadata accessor for LemonadePhotosChallengeFeature);
      v201 = v496;
      sub_1A40A46A4(v200 + *(v492 + 24), v496, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
      v202 = sub_1A3C56C94(&qword_1EB12ADA0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider, &unk_1A535F3F0);
      v203 = v626;

      v204 = v498;
      v205 = sub_1A3C5A374();
      v206 = v504;
      sub_1A3EFC060(v201, v203, v624, v205 & 1, v625 & 1, v204, v202, v504);
      sub_1A40A46A4(v206, v561, sub_1A40A2618);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A670, sub_1A40A2618, &unk_1A5306A30);
      sub_1A3C56C94(&unk_1EB125C20, sub_1A40A26AC, &unk_1A5306A30);
      v207 = v562;
      sub_1A5249744();
      sub_1A40A46A4(v207, v601, sub_1A40A25D0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3680();
      sub_1A40A375C();
      v208 = v602;
      sub_1A5249744();
      sub_1A40A5E60(v207, sub_1A40A25D0);
      sub_1A40A46A4(v208, v606, sub_1A40A2588);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v209 = v608;
      sub_1A5249744();
      sub_1A40A5E60(v208, sub_1A40A2588);
      sub_1A40A46A4(v209, v629, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v209, sub_1A40A2540);
      sub_1A40A5E60(v206, sub_1A40A2618);
      v210 = type metadata accessor for LemonadePhotosChallengeFeature;
      goto LABEL_28;
    case 17:
      v200 = v507;
      sub_1A40A5DF8(v181, v507, type metadata accessor for LemonadePhototypesFeature);
      v333 = v505;
      sub_1A40A46A4(v200 + *(v503 + 20), v505, type metadata accessor for LemonadePhototypesFeature.ShelfProvider);
      v334 = sub_1A3C56C94(&qword_1EB125710, type metadata accessor for LemonadePhototypesFeature.ShelfProvider, &unk_1A536ACEC);
      v335 = v626;

      v336 = v506;
      v337 = sub_1A3C5A374();
      v338 = v508;
      sub_1A3EFC060(v333, v335, v624, v337 & 1, v625 & 1, v336, v334, v508);
      sub_1A40A46A4(v338, v561, sub_1A40A26AC);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A670, sub_1A40A2618, &unk_1A5306A30);
      sub_1A3C56C94(&unk_1EB125C20, sub_1A40A26AC, &unk_1A5306A30);
      v339 = v562;
      sub_1A5249744();
      sub_1A40A46A4(v339, v601, sub_1A40A25D0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3680();
      sub_1A40A375C();
      v340 = v602;
      sub_1A5249744();
      sub_1A40A5E60(v339, sub_1A40A25D0);
      sub_1A40A46A4(v340, v606, sub_1A40A2588);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v341 = v608;
      sub_1A5249744();
      sub_1A40A5E60(v340, sub_1A40A2588);
      sub_1A40A46A4(v341, v629, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v341, sub_1A40A2540);
      sub_1A40A5E60(v338, sub_1A40A26AC);
      v210 = type metadata accessor for LemonadePhototypesFeature;
      goto LABEL_28;
    case 18:
      v401 = *(v181 + 2);
      v632 = *(v181 + 1);
      v403 = v181[32];
      *&v636 = *(v181 + 3);
      v402 = v636;
      BYTE8(v636) = v403;
      v404 = sub_1A3C442E8();
      v405 = v626;

      v406 = v402;
      v217 = &type metadata for LemonadeMediaTypesFeature.ShelfProvider;
      v407 = sub_1A3C5A374();
      v219 = v509;
      sub_1A3EFC060(&v636, v405, v624, v407 & 1, v625 & 1, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, v404, v509);
      v220 = &qword_1EB12A728;
      v221 = sub_1A3C442E8;
      sub_1A40A5C40(v219, v566, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider);
      goto LABEL_31;
    case 19:
      v401 = *(v181 + 2);
      v632 = *(v181 + 1);
      v436 = v181[32];
      *&v636 = *(v181 + 3);
      v435 = v636;
      BYTE8(v636) = v436;
      v437 = sub_1A3C52114();
      v438 = v626;

      v406 = v435;
      v217 = &type metadata for LemonadeUtilitiesFeature.ShelfProvider;
      v439 = sub_1A3C5A374();
      v219 = v511;
      sub_1A3EFC060(&v636, v438, v624, v439 & 1, v625 & 1, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, v437, v511);
      v220 = &qword_1EB12A748;
      v221 = sub_1A3C52114;
      sub_1A40A5C40(v219, v566, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider);
LABEL_31:
      swift_storeEnumTagMultiPayload();
      sub_1A40A3830(v440);
      sub_1A40A38C0(v441);
      v442 = v568;
      sub_1A5249744();
      sub_1A40A46A4(v442, v601, sub_1A40A2740);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3680();
      sub_1A40A375C();
      v443 = v602;
      sub_1A5249744();
      sub_1A40A5E60(v442, sub_1A40A2740);
      sub_1A40A46A4(v443, v606, sub_1A40A2588);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v227 = v608;
      sub_1A5249744();
      sub_1A40A5E60(v443, sub_1A40A2588);
      sub_1A40A46A4(v227, v629, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      v400 = sub_1A40A2540;
LABEL_32:
      sub_1A40A5E60(v227, v400);
      v196 = v219;
      v197 = v220;
      goto LABEL_33;
    case 20:
      v342 = *(v181 + 2);
      v632 = *(v181 + 1);
      v344 = v181[32];
      *&v636 = *(v181 + 3);
      v343 = v636;
      BYTE8(v636) = v344;
      v345 = sub_1A3C43144();
      v346 = v626;

      v347 = v343;
      v217 = &type metadata for LemonadeBookmarksFeature.ShelfProvider;
      v348 = sub_1A3C5A374();
      v349 = v514;
      sub_1A3EFC060(&v636, v346, v624, v348 & 1, v625 & 1, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v345, v514);
      v221 = sub_1A3C43144;
      sub_1A40A5C40(v349, v571, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3AB0(v350);
      sub_1A3C56C94(&qword_1EB12A720, sub_1A40A28FC, &unk_1A5306A30);
      v351 = v572;
      sub_1A5249744();
      sub_1A40A46A4(v351, v576, sub_1A40A285C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3A00(v352);
      sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990, &unk_1A5306A30);
      v353 = v577;
      sub_1A5249744();
      sub_1A40A5E60(v351, sub_1A40A285C);
      sub_1A40A46A4(v353, v606, sub_1A40A2814);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v354 = v608;
      sub_1A5249744();
      sub_1A40A5E60(v353, sub_1A40A2814);
      sub_1A40A46A4(v354, v629, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v354, sub_1A40A2540);
      v196 = v349;
      v197 = &qword_1EB12A758;
LABEL_33:
      v198 = v221;
LABEL_34:
      v199 = v217;
      goto LABEL_35;
    case 21:
      v200 = v518;
      sub_1A40A5DF8(v181, v518, type metadata accessor for LemonadeSuggestionsFeature);
      v372 = v513;
      sub_1A40A46A4(v200 + *(v510 + 24), v513, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
      v373 = sub_1A3C56C94(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE74);
      v374 = v626;

      v375 = v515;
      v376 = sub_1A3C5A374();
      v377 = v519;
      sub_1A3EFC060(v372, v374, v624, v376 & 1, v625 & 1, v375, v373, v519);
      sub_1A40A46A4(v377, v571, sub_1A40A28FC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3AB0(v378);
      sub_1A3C56C94(&qword_1EB12A720, sub_1A40A28FC, &unk_1A5306A30);
      v379 = v572;
      sub_1A5249744();
      sub_1A40A46A4(v379, v576, sub_1A40A285C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3A00(v380);
      sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990, &unk_1A5306A30);
      v381 = v577;
      sub_1A5249744();
      sub_1A40A5E60(v379, sub_1A40A285C);
      sub_1A40A46A4(v381, v606, sub_1A40A2814);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v382 = v608;
      sub_1A5249744();
      sub_1A40A5E60(v381, sub_1A40A2814);
      sub_1A40A46A4(v382, v629, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v382, sub_1A40A2540);
      sub_1A40A5E60(v377, sub_1A40A28FC);
      v210 = type metadata accessor for LemonadeSuggestionsFeature;
      goto LABEL_28;
    case 22:
      v200 = v520;
      sub_1A40A5DF8(v181, v520, type metadata accessor for LemonadeSearchCollectionResultsFeature);
      v425 = v516;
      sub_1A40A46A4(v200 + *(v512 + 20), v516, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
      v426 = sub_1A3C56C94(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider, &unk_1A53290E4);
      v427 = v626;

      v428 = v517;
      v429 = sub_1A3C5A374();
      v430 = v521;
      sub_1A3EFC060(v425, v427, v624, v429 & 1, v625 & 1, v428, v426, v521);
      sub_1A40A46A4(v430, v576, sub_1A40A2990);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3A00(v431);
      sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990, &unk_1A5306A30);
      v432 = v577;
      sub_1A5249744();
      sub_1A40A46A4(v432, v606, sub_1A40A2814);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v433 = v608;
      sub_1A5249744();
      sub_1A40A5E60(v432, sub_1A40A2814);
      sub_1A40A46A4(v433, v629, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v433, sub_1A40A2540);
      sub_1A40A5E60(v430, sub_1A40A2990);
      v210 = type metadata accessor for LemonadeSearchCollectionResultsFeature;
LABEL_28:
      v305 = v210;
      v306 = v200;
LABEL_29:
      result = sub_1A40A5E60(v306, v305);
      break;
    default:
      v184 = *(v181 + 3);
      *&v637[16] = *(v181 + 2);
      v638 = v184;
      v639 = *(v181 + 4);
      v640 = v181[80];
      v185 = *(v181 + 1);
      v636 = *v181;
      *v637 = v185;
      v186 = *(v181 + 40);
      v634[0] = *(v181 + 24);
      v634[1] = v186;
      *v635 = *(v181 + 56);
      *&v635[9] = *(v181 + 65);
      sub_1A3FA1224(&v637[8], &v633);
      v187 = sub_1A3C51EF8();
      v188 = v626;

      v189 = sub_1A3C5A374();
      sub_1A3EFC060(v634, v188, v624, v189 & 1, v625 & 1, &type metadata for LemonadeAlbumsFeature.ShelfProvider, v187, v178);
      sub_1A40A5C40(v178, v166, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2B44(v190);
      sub_1A40A2BD4(v191);
      sub_1A5249744();
      sub_1A40A46A4(v169, v581, sub_1A40A1A6C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64(v192);
      v193 = v582;
      sub_1A5249744();
      sub_1A40A5E60(v169, sub_1A40A1A6C);
      sub_1A40A46A4(v193, v611, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v194 = v612;
      sub_1A5249744();
      sub_1A40A5E60(v193, sub_1A40A1A24);
      sub_1A40A46A4(v194, v621, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v195 = v623;
      sub_1A5249744();
      sub_1A40A5E60(v194, sub_1A40A19DC);
      sub_1A40A46A4(v195, v629, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A3FA1280(&v636);
      sub_1A40A5E60(v195, sub_1A40A1994);
      v196 = v178;
      v197 = &qword_1EB12A778;
      v198 = sub_1A3C51EF8;
      v199 = &type metadata for LemonadeAlbumsFeature.ShelfProvider;
LABEL_35:
      result = sub_1A40A5CC4(v196, v197, v198, v199);
      break;
  }

  return result;
}

uint64_t sub_1A409F504@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  sub_1A40A568C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5EC0(0);
  v61 = v7;
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A5242394();
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v64 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v53 = v52 - v13;
  v14 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  v55 = [v18 enableLoadingStatusHUD];

  v19 = *(*a2 + 584);
  v62 = a2;
  v20 = v19();
  v21 = *(v20 + 16);
  if (v21)
  {
    v52[1] = a3;
    v67[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v21, 0);
    v22 = v67[0];
    v23 = v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    do
    {
      sub_1A40A46A4(v23, v17, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A40A5E60(v17, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v25 = v65;
      v67[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1A3C4ED58((v26 > 1), v27 + 1, 1);
        v22 = v67[0];
      }

      *(v22 + 16) = v27 + 1;
      *(v22 + v27 + 32) = v25;
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v29 = *(v22 + 16);
  v30 = v58;
  v31 = v64;
  if (v29 >= 3)
  {
    sub_1A40A4D54(v22, v22 + 32, 0, 5uLL);
    v33 = v32;

    v29 = *(v33 + 16);
    v22 = v33;
  }

  v34 = v62;
  if (v29 > 1 || (v35 = v30, v36 = v53, (*(*v62 + 768))(v28), v37 = *MEMORY[0x1E69C1DC8], v38 = v63, v39 = v54, v62 = *(v63 + 104), v62(v54, v37, v35), v40 = sub_1A5242384(), v41 = *(v38 + 8), v41(v39, v35), v42 = v36, v30 = v35, v31 = v64, v28 = (v41)(v42, v30), (v40 & 1) != 0))
  {
    (*(*v34 + 768))(v28);
  }

  else
  {
    v62(v31, *MEMORY[0x1E69C1DD8], v30);
  }

  v65 = 0xD000000000000014;
  v66 = 0x80000001A5316E40;
  sub_1A524E384();
  v43 = v63;
  v44 = v60;
  (*(v63 + 16))(v60, v31, v30);
  (*(v43 + 56))(v44, 0, 1, v30);
  sub_1A40979AC(v22);

  sub_1A40A5F7C(0, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
  v46 = v45;
  v47 = sub_1A40A5FE4();
  v48 = v57;
  sub_1A524A614();

  sub_1A40A5E60(v44, sub_1A40A568C);
  v49 = sub_1A3D5FAFC(v67);
  (*(*v34 + 776))(v49);

  v67[0] = v46;
  v67[1] = v47;
  swift_getOpaqueTypeConformance2();
  v50 = v61;
  sub_1A524A6B4();

  sub_1A40A5E60(v44, sub_1A40A568C);
  (*(v59 + 8))(v48, v50);
  return (*(v43 + 8))(v64, v30);
}

uint64_t sub_1A409FC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_1A524B894();
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v8;
  v9 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5247CD4();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v38 - v15;
  v16 = sub_1A5249754();
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v38 - v17;
  if (qword_1EB17BEE0 != -1)
  {
    swift_once();
  }

  v18 = byte_1EB1EADF8;
  v19 = sub_1A5249584();
  MEMORY[0x1EEE9AC00](v19);
  *(&v38 - 4) = v2;
  *(&v38 - 3) = v3;
  *(&v38 - 2) = v43;
  if (v18 == 1)
  {
    sub_1A40A021C();
    sub_1A5247CC4();
    WitnessTable = swift_getWitnessTable();
    v22 = v39;
    v21 = v40;
    v23 = *(v40 + 16);
    v23(v39, v13, v11);
    v24 = *(v21 + 8);
    v24(v13, v11);
    v23(v13, v22, v11);
    v25 = swift_getWitnessTable();
    v26 = v44;
    sub_1A3DF4798(v13, v11, v4, WitnessTable, v25);
    v24(v13, v11);
    v24(v22, v11);
  }

  else
  {
    sub_1A524B884();
    v27 = swift_getWitnessTable();
    v29 = v41;
    v28 = v42;
    v30 = *(v42 + 16);
    v30(v41, v6, v4);
    v31 = *(v28 + 8);
    v31(v6, v4);
    v30(v6, v29, v4);
    v32 = swift_getWitnessTable();
    v26 = v44;
    sub_1A3DF4890(v6, v11, v4, v32, v27);
    v31(v6, v4);
    v31(v29, v4);
  }

  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v48 = v33;
  v49 = v34;
  v35 = v46;
  swift_getWitnessTable();
  v36 = v45;
  (*(v45 + 16))(v47, v26, v35);
  return (*(v36 + 8))(v26, v35);
}

uint64_t sub_1A40A021C()
{
  sub_1A5249944();
  sub_1A3C56C94(&qword_1EB122340, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1A524EE64();
}

uint64_t sub_1A40A029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1A40A0394()
{
  result = sub_1A40A03B8();
  byte_1EB1EADF8 = result & 1;
  return result;
}

uint64_t sub_1A40A03B8()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 enabledShelvesLazyVStack];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_1A524C634();
    v8 = [v6 BOOLForKey_];

    if (!v8)
    {
      return 0;
    }
  }

  v9 = sub_1A3C645A4();
  (*(v1 + 16))(v3, v9, v0);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "LemonadeShelvesStack using LazyVStack", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

void sub_1A40A0670(uint64_t a1)
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A40A5D34(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A40A60A0(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A40A5D34(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A40A07C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A40A0838(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A40A0978(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1A40A0BA8()
{
  result = qword_1EB131338;
  if (!qword_1EB131338)
  {
    sub_1A40A4470(255, &qword_1EB131340, sub_1A40A0C4C, MEMORY[0x1E69805D8]);
    sub_1A40A0D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131338);
  }

  return result;
}

void sub_1A40A0C74(uint64_t a1)
{
  if (!qword_1EB131350)
  {
    sub_1A40A5F7C(255, &qword_1EB131358, sub_1A40A0D38, &type metadata for LemonadeOneColumnShelvesStack, MEMORY[0x1E6981860]);
    sub_1A40A60A0(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131350);
    }
  }
}

unint64_t sub_1A40A0D38()
{
  result = qword_1EB17E090[0];
  if (!qword_1EB17E090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17E090);
  }

  return result;
}

unint64_t sub_1A40A0D8C()
{
  result = qword_1EB131360;
  if (!qword_1EB131360)
  {
    sub_1A40A0C4C(255);
    sub_1A40A3FB4(&qword_1EB131368, sub_1A40A0C74, sub_1A40A0E3C);
    sub_1A40A0F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131360);
  }

  return result;
}

unint64_t sub_1A40A0E3C()
{
  result = qword_1EB131370;
  if (!qword_1EB131370)
  {
    sub_1A40A5F7C(255, &qword_1EB131358, sub_1A40A0D38, &type metadata for LemonadeOneColumnShelvesStack, MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131370);
  }

  return result;
}

uint64_t sub_1A40A0ECC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A40A60A0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A0F30()
{
  result = qword_1EB1797D8[0];
  if (!qword_1EB1797D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1797D8);
  }

  return result;
}

uint64_t sub_1A40A0FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A40A0FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A40A1080(uint64_t a1)
{
  if (!qword_1EB125A28)
  {
    sub_1A40A1128(255);
    v3 = v2;
    v4 = sub_1A40A424C(&unk_1EB1214A8, sub_1A40A1128, sub_1A40A4204, MEMORY[0x1E69819D0]);
    v6 = type metadata accessor for LazyOrRegularVStack(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB125A28);
    }
  }
}

void sub_1A40A1128(uint64_t a1)
{
  if (!qword_1EB1214A0)
  {
    sub_1A3F32024(255);
    sub_1A40A11F0(255);
    sub_1A3C56C94(&qword_1EB126F20, sub_1A3F32024, MEMORY[0x1E69E6338]);
    sub_1A3C3DEB4();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1214A0);
    }
  }
}

void sub_1A40A11F0(uint64_t a1)
{
  if (!qword_1EB122680)
  {
    sub_1A40A5AE8(255, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122680);
    }
  }
}

void sub_1A40A128C(uint64_t a1, double a2)
{
  if (!qword_1EB121DF0)
  {
    sub_1A40A1378(255, a2);
    sub_1A40A1434(255, v2);
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DF0);
    }
  }
}

void sub_1A40A1378(uint64_t a1, double a2)
{
  if (!qword_1EB121DB8)
  {
    sub_1A40A1434(255, a2);
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DB8);
    }
  }
}

void sub_1A40A1434(uint64_t a1, double a2)
{
  if (!qword_1EB121DC0)
  {
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DC0);
    }
  }
}

void sub_1A40A14E0(uint64_t a1, double a2)
{
  if (!qword_1EB122FA8)
  {
    sub_1A40A1580(255);
    sub_1A40A4FCC(255, &qword_1EB122E40, sub_1A40A3BDC, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697F540]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122FA8);
    }
  }
}

void sub_1A40A15B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A40A60A0(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A40A16F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A40A5AE8(255, a3, a4, a5, MEMORY[0x1E697E830]);
    sub_1A40A60A0(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A40A179C(uint64_t a1, double a2)
{
  if (!qword_1EB121788)
  {
    sub_1A40A1884(255, a2);
    sub_1A40A194C(255);
    sub_1A40A37A4(&qword_1EB122370, sub_1A40A194C, sub_1A40A2A24, sub_1A40A35F0);
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A524B894();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121788);
    }
  }
}

void sub_1A40A1884(uint64_t a1, double a2)
{
  if (!qword_1EB121FD0)
  {
    sub_1A40A194C(255);
    sub_1A40A37A4(&qword_1EB122370, sub_1A40A194C, sub_1A40A2A24, sub_1A40A35F0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FD0);
    }
  }
}

void sub_1A40A1A6C(uint64_t a1, double a2)
{
  if (!qword_1EB1229D8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1229D8);
    }
  }
}

void sub_1A40A1B40(uint64_t a1, double a2)
{
  if (!qword_1EB122978)
  {
    sub_1A40A4FCC(255, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A1BE0(255);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122978);
    }
  }
}

void sub_1A40A1BE0(uint64_t a1)
{
  if (!qword_1EB125BE8)
  {
    v2 = type metadata accessor for LemonadeSocialGroupsShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider, &unk_1A537F178);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125BE8);
    }
  }
}

void sub_1A40A1CBC(uint64_t a1, double a2)
{
  if (!qword_1EB1229C8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1229C8);
    }
  }
}

void sub_1A40A1DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A40A1E58(255);
    v8 = v7;
    sub_1A40A4FCC(255, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A40A1E58(uint64_t a1)
{
  if (!qword_1EB12A708)
  {
    sub_1A3C50BAC(255);
    v3 = v2;
    v4 = sub_1A3C56C94(&qword_1EB129B88, sub_1A3C50BAC, &unk_1A5368674);
    v6 = type metadata accessor for LemonadeShelf(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12A708);
    }
  }
}

void sub_1A40A1FC4(uint64_t a1)
{
  if (!qword_1EB12A798)
  {
    v2 = type metadata accessor for LemonadeMapFeature.ShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider, &unk_1A534D504);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A798);
    }
  }
}

void sub_1A40A2058(uint64_t a1)
{
  if (!qword_1EB12A6C8)
  {
    v2 = type metadata accessor for LemonadeICloudLinksShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB1296A0, type metadata accessor for LemonadeICloudLinksShelfProvider, &unk_1A5353460);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A6C8);
    }
  }
}

void sub_1A40A20EC(uint64_t a1, double a2)
{
  if (!qword_1EB122988)
  {
    sub_1A40A4FCC(255, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A218C(255);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122988);
    }
  }
}

void sub_1A40A218C(uint64_t a1)
{
  if (!qword_1EB12A6B8)
  {
    v2 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB1294E0, type metadata accessor for LemonadeSharedWithYouGridShelfProvider, &unk_1A5317B18);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A6B8);
    }
  }
}

void sub_1A40A22E4(uint64_t a1)
{
  if (!qword_1EB12A6F8)
  {
    v2 = type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB129A08, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider, &unk_1A5352474);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A6F8);
    }
  }
}

void sub_1A40A2378(uint64_t a1)
{
  if (!qword_1EB12A698)
  {
    v2 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB129330, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider, &unk_1A5350DF4);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A698);
    }
  }
}

void sub_1A40A240C(uint64_t a1, double a2)
{
  if (!qword_1EB1229B8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A24AC(255);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1229B8);
    }
  }
}

void sub_1A40A24AC(uint64_t a1)
{
  if (!qword_1EB12A6D8)
  {
    v2 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A6D8);
    }
  }
}

void sub_1A40A2618(uint64_t a1)
{
  if (!qword_1EB12A668)
  {
    v2 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB12ADA0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider, &unk_1A535F3F0);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A668);
    }
  }
}

void sub_1A40A26AC(uint64_t a1)
{
  if (!qword_1EB125C18)
  {
    v2 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB125710, type metadata accessor for LemonadePhototypesFeature.ShelfProvider, &unk_1A536ACEC);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125C18);
    }
  }
}

void sub_1A40A2740(uint64_t a1, double a2)
{
  if (!qword_1EB127E28)
  {
    sub_1A40A4FCC(255, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB127E28);
    }
  }
}

void sub_1A40A285C(uint64_t a1, double a2)
{
  if (!qword_1EB127E38)
  {
    sub_1A40A4FCC(255, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A28FC(255);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB127E38);
    }
  }
}

void sub_1A40A28FC(uint64_t a1)
{
  if (!qword_1EB12A718)
  {
    v2 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE74);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A718);
    }
  }
}

void sub_1A40A2990(uint64_t a1)
{
  if (!qword_1EB12A6A8)
  {
    v2 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(255);
    v3 = sub_1A3C56C94(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider, &unk_1A53290E4);
    v5 = type metadata accessor for LemonadeShelf(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A6A8);
    }
  }
}

unint64_t sub_1A40A2B44(double a1)
{
  result = qword_1EB12A780;
  if (!qword_1EB12A780)
  {
    sub_1A40A4FCC(255, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A780);
  }

  return result;
}

unint64_t sub_1A40A2BD4(double a1)
{
  result = qword_1EB125C10;
  if (!qword_1EB125C10)
  {
    sub_1A40A4FCC(255, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C10);
  }

  return result;
}

unint64_t sub_1A40A2C64(double a1)
{
  result = qword_1EB122980;
  if (!qword_1EB122980)
  {
    sub_1A40A1B40(255, a1);
    sub_1A40A2D14(v2);
    sub_1A3C56C94(&qword_1EB125BF0, sub_1A40A1BE0, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122980);
  }

  return result;
}

unint64_t sub_1A40A2D14(double a1)
{
  result = qword_1EB12A690;
  if (!qword_1EB12A690)
  {
    sub_1A40A4FCC(255, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A690);
  }

  return result;
}

unint64_t sub_1A40A2E34(double a1)
{
  result = qword_1EB12A770;
  if (!qword_1EB12A770)
  {
    sub_1A40A4FCC(255, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A770);
  }

  return result;
}

unint64_t sub_1A40A2EC4(double a1)
{
  result = qword_1EB12A790;
  if (!qword_1EB12A790)
  {
    sub_1A40A4FCC(255, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A790);
  }

  return result;
}

unint64_t sub_1A40A2F54(double a1)
{
  result = qword_1EB1229B0;
  if (!qword_1EB1229B0)
  {
    sub_1A40A1D90(255, a1);
    sub_1A3C56C94(&qword_1EB12A710, sub_1A40A1E58, &unk_1A5306A30);
    sub_1A40A3004(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229B0);
  }

  return result;
}

unint64_t sub_1A40A3004(double a1)
{
  result = qword_1EB12A680;
  if (!qword_1EB12A680)
  {
    sub_1A40A4FCC(255, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A680);
  }

  return result;
}

unint64_t sub_1A40A3124()
{
  result = qword_1EB1229F0;
  if (!qword_1EB1229F0)
  {
    sub_1A40A1F7C(255);
    sub_1A3C56C94(&unk_1EB12A7A0, sub_1A40A1FC4, &unk_1A5306A30);
    sub_1A3C56C94(&qword_1EB12A6D0, sub_1A40A2058, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229F0);
  }

  return result;
}

unint64_t sub_1A40A3200(double a1)
{
  result = qword_1EB122990;
  if (!qword_1EB122990)
  {
    sub_1A40A20EC(255, a1);
    sub_1A40A32B0(v2);
    sub_1A3C56C94(&qword_1EB12A6C0, sub_1A40A218C, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122990);
  }

  return result;
}

unint64_t sub_1A40A32B0(double a1)
{
  result = qword_1EB12A6F0;
  if (!qword_1EB12A6F0)
  {
    sub_1A40A4FCC(255, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A6F0);
  }

  return result;
}

unint64_t sub_1A40A3388()
{
  result = qword_1EB1229A0;
  if (!qword_1EB1229A0)
  {
    sub_1A40A2268(255);
    sub_1A40A424C(&qword_1EB125BF8, sub_1A40A22B0, sub_1A40A347C, MEMORY[0x1E6982090]);
    sub_1A3C56C94(&qword_1EB12A6A0, sub_1A40A2378, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229A0);
  }

  return result;
}

unint64_t sub_1A40A34B0(double a1)
{
  result = qword_1EB1229C0;
  if (!qword_1EB1229C0)
  {
    sub_1A40A240C(255, a1);
    sub_1A40A3560(v2);
    sub_1A3C56C94(&qword_1EB12A6E0, sub_1A40A24AC, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229C0);
  }

  return result;
}

unint64_t sub_1A40A3560(double a1)
{
  result = qword_1EB12A740;
  if (!qword_1EB12A740)
  {
    sub_1A40A4FCC(255, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A740);
  }

  return result;
}

unint64_t sub_1A40A3680()
{
  result = qword_1EB122970;
  if (!qword_1EB122970)
  {
    sub_1A40A25D0(255);
    sub_1A3C56C94(&qword_1EB12A670, sub_1A40A2618, &unk_1A5306A30);
    sub_1A3C56C94(&unk_1EB125C20, sub_1A40A26AC, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122970);
  }

  return result;
}

uint64_t sub_1A40A37A4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A3830(double a1)
{
  result = qword_1EB12A730;
  if (!qword_1EB12A730)
  {
    sub_1A40A4FCC(255, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A730);
  }

  return result;
}

unint64_t sub_1A40A38C0(double a1)
{
  result = qword_1EB12A750;
  if (!qword_1EB12A750)
  {
    sub_1A40A4FCC(255, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A750);
  }

  return result;
}

unint64_t sub_1A40A3950()
{
  result = qword_1EB127CE8;
  if (!qword_1EB127CE8)
  {
    sub_1A40A2814(255);
    sub_1A40A3A00(v1);
    sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CE8);
  }

  return result;
}

unint64_t sub_1A40A3A00(double a1)
{
  result = qword_1EB127E40;
  if (!qword_1EB127E40)
  {
    sub_1A40A285C(255, a1);
    sub_1A40A3AB0(v2);
    sub_1A3C56C94(&qword_1EB12A720, sub_1A40A28FC, &unk_1A5306A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E40);
  }

  return result;
}

unint64_t sub_1A40A3AB0(double a1)
{
  result = qword_1EB12A760;
  if (!qword_1EB12A760)
  {
    sub_1A40A4FCC(255, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A760);
  }

  return result;
}

unint64_t sub_1A40A3BDC()
{
  result = qword_1EB125688;
  if (!qword_1EB125688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125688);
  }

  return result;
}

unint64_t sub_1A40A3C30()
{
  result = qword_1EB122F90;
  if (!qword_1EB122F90)
  {
    sub_1A40A14B8(255);
    sub_1A40A3CB0(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122F90);
  }

  return result;
}

unint64_t sub_1A40A3CB0(double a1)
{
  result = qword_1EB122FB0;
  if (!qword_1EB122FB0)
  {
    sub_1A40A14E0(255, a1);
    sub_1A40A3D30();
    sub_1A40A4174(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FB0);
  }

  return result;
}

unint64_t sub_1A40A3D30()
{
  result = qword_1EB123038;
  if (!qword_1EB123038)
  {
    sub_1A40A1580(255);
    sub_1A40A3DC8();
    sub_1A40A0ECC(&qword_1EB122100, &qword_1EB1220F8, &type metadata for LemonadeShelvesViewModelDisplayState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123038);
  }

  return result;
}

unint64_t sub_1A40A3DC8()
{
  result = qword_1EB123090;
  if (!qword_1EB123090)
  {
    sub_1A40A1648(255);
    sub_1A40A3FB4(&qword_1EB123158, sub_1A40A1678, sub_1A40A3E90);
    sub_1A40A0ECC(&qword_1EB122140, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123090);
  }

  return result;
}

unint64_t sub_1A40A3E90()
{
  result = qword_1EB1232B8;
  if (!qword_1EB1232B8)
  {
    sub_1A40A5AE8(255, &qword_1EB1232B0, sub_1A40A16B4, sub_1A40A3BA8, MEMORY[0x1E697E830]);
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    sub_1A3C56C94(&unk_1EB122150, sub_1A40A3BA8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1232B8);
  }

  return result;
}

uint64_t sub_1A40A3FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A40A0ECC(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A4050()
{
  result = qword_1EB123B48;
  if (!qword_1EB123B48)
  {
    sub_1A40A5AE8(255, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
    sub_1A3C56C94(&qword_1EB121790, sub_1A40A179C, MEMORY[0x1E6981870]);
    sub_1A3C56C94(&qword_1EB122130, sub_1A40A3B40, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B48);
  }

  return result;
}

unint64_t sub_1A40A4174(double a1)
{
  result = qword_1EB122E48;
  if (!qword_1EB122E48)
  {
    sub_1A40A4FCC(255, &qword_1EB122E40, sub_1A40A3BDC, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E48);
  }

  return result;
}

uint64_t sub_1A40A424C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A42BC()
{
  result = qword_1EB122690;
  if (!qword_1EB122690)
  {
    sub_1A40A5AE8(255, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
    sub_1A40A1378(255, v1);
    sub_1A40A1434(255, v2);
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122690);
  }

  return result;
}

void sub_1A40A4470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A40A44D4(uint64_t a1)
{
  if (!qword_1EB121DB0)
  {
    sub_1A40A1080(255);
    v1 = MEMORY[0x1E69E62F8];
    sub_1A40A60A0(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A3C56C94(&qword_1EB125A30, sub_1A40A1080, &unk_1A5316EC8);
    sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v1, MEMORY[0x1E69E6320]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DB0);
    }
  }
}

uint64_t sub_1A40A4600(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40A60A0(255, a2, &type metadata for LemonadeShelfIdentifier, a3);
    sub_1A3C4CDB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A40A46A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1A40A470C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1A3C5322C();
  return ((*(v3 + 64))(&v5, v2, v3) & 1) == 0;
}

uint64_t sub_1A40A47C8(uint64_t result, unsigned __int8 *a2)
{
  v3 = *(v2 + 88);
  v4 = *a2;
  if (*result == 24)
  {
    if (v4 == 24)
    {
      return result;
    }
  }

  else if (v4 != 24)
  {
    sub_1A3C4CDB0();
    result = sub_1A524C594();
    if (result)
    {
      return result;
    }
  }

  v5 = *(*(v2 + 16) + 144);
  if (v3 == 24)
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    sub_1A40A60A0(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = v3;
    v8 = sub_1A40A4E2C(inited, COERCE_DOUBLE(1));
    swift_setDeallocating();
    v6 = v8;
  }

  return (*(*v5 + 216))(v6);
}

unint64_t sub_1A40A48EC()
{
  result = qword_1EB123E60;
  if (!qword_1EB123E60)
  {
    sub_1A40A4448(255);
    sub_1A40A1080(255);
    v1 = MEMORY[0x1E69E62F8];
    sub_1A40A60A0(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A3C56C94(&qword_1EB125A30, sub_1A40A1080, &unk_1A5316EC8);
    sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v1, MEMORY[0x1E69E6320]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E60);
  }

  return result;
}

void sub_1A40A4A44(uint64_t a1)
{
  if (!qword_1EB121D70)
  {
    sub_1A40A4448(255);
    v1 = MEMORY[0x1E69E6720];
    sub_1A40A60A0(255, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
    sub_1A40A48EC();
    sub_1A40A4600(&qword_1EB125868, &qword_1EB125870, v1, MEMORY[0x1E69E7C80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D70);
    }
  }
}

void sub_1A40A4B40(uint64_t a1)
{
  if (!qword_1EB122E10)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1A40A60A0(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v1, MEMORY[0x1E69E6320]);
    v2 = sub_1A52494B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122E10);
    }
  }
}

char *sub_1A40A4BFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A40A4C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A40A4C1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A40A60A0(0, &qword_1EB1261A8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A40A4D54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1A40A60A0(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1A40A4E2C(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A40A4FCC(0, &qword_1EB120540, sub_1A3C3DEB4, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6A10]);
    v4 = sub_1A524E3D4();
    v5 = v4 + 56;
    v18 = a1 + 32;
    sub_1A3C3DEB4();
    v6 = 0;
    while (1)
    {
      v10 = v2;
      v19 = *(v18 + v6);
      result = sub_1A524C4A4();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1A3C4CDB0();
        while (1)
        {
          result = sub_1A524C594();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v4 + 48) + v13) = v19;
        v7 = *(v4 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v9;
      }

      ++v6;
      v2 = v10;
      if (v6 == v10)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1A40A4FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A40A5034(uint64_t a1)
{
  if (!qword_1EB120BD0)
  {
    sub_1A40A60A0(255, &qword_1EB120BD8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120BD0);
    }
  }
}

void sub_1A40A50E4(uint64_t a1, double a2)
{
  if (!qword_1EB124460)
  {
    sub_1A40A1884(255, a2);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124460);
    }
  }
}

uint64_t sub_1A40A514C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1A40A5AE8(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

unint64_t sub_1A40A51C0()
{
  result = qword_1EB125680;
  if (!qword_1EB125680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125680);
  }

  return result;
}

void sub_1A40A5214(uint64_t a1)
{
  if (!qword_1EB121C50)
  {
    sub_1A40A60A0(255, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
    v1 = sub_1A524B6D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121C50);
    }
  }
}

uint64_t sub_1A40A5290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A40A52F8()
{
  type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  sub_1A3C5322C();
  sub_1A3C66768();
  sub_1A524EA44();
  v0 = sub_1A524C634();

  v1 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

  return v1;
}

double sub_1A40A53B4()
{
  type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  sub_1A524BCE4();
  sub_1A52483D4();

  return result;
}

uint64_t objectdestroy_32Tm_0(uint64_t a1)
{

  return swift_deallocObject();
}

double sub_1A40A54D0()
{
  v4 = *(v0 + 56);
  v3 = *(v0 + 56);
  v2[23] = 24;
  sub_1A40A46A4(&v4, v2, sub_1A40A5214);
  sub_1A40A5214(0);
  sub_1A524B6B4();

  return result;
}

uint64_t sub_1A40A554C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A40A55AC()
{
  result = qword_1EB1257D8;
  if (!qword_1EB1257D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257D8);
  }

  return result;
}

double sub_1A40A5600()
{
  v1 = *(v0 + 16);
  sub_1A3C5322C();
  v4 = *(v1 + 40);
  v5 = v4;
  sub_1A40A46A4(&v5, &v3, sub_1A40A5214);
  sub_1A40A5214(0);
  sub_1A524B6B4();

  return result;
}

void sub_1A40A56C0(uint64_t a1)
{
  if (!qword_1EB127F60)
  {
    sub_1A40A4FCC(255, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A28FC(255);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127F60);
    }
  }
}

void sub_1A40A5760(uint64_t a1)
{
  if (!qword_1EB127F58)
  {
    sub_1A40A4FCC(255, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127F58);
    }
  }
}

void sub_1A40A5834(uint64_t a1)
{
  if (!qword_1EB122CE8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A24AC(255);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122CE8);
    }
  }
}

void sub_1A40A58D4(uint64_t a1)
{
  if (!qword_1EB122CD0)
  {
    sub_1A40A4FCC(255, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A218C(255);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122CD0);
    }
  }
}

void sub_1A40A5974(uint64_t a1)
{
  if (!qword_1EB122CF0)
  {
    sub_1A40A4FCC(255, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122CF0);
    }
  }
}

void sub_1A40A5A48(uint64_t a1)
{
  if (!qword_1EB122CC8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A1BE0(255);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122CC8);
    }
  }
}

void sub_1A40A5AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A40A5B6C(uint64_t a1)
{
  if (!qword_1EB122CF8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v1 = sub_1A5249734();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122CF8);
    }
  }
}

uint64_t sub_1A40A5C40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1A40A4FCC(0, a3, a4, a5, type metadata accessor for LemonadeShelf);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A40A5CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1A40A4FCC(0, a2, a3, a4, type metadata accessor for LemonadeShelf);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A40A5D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A40A5D98()
{
  result = qword_1EB1254B0;
  if (!qword_1EB1254B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1254B0);
  }

  return result;
}

uint64_t sub_1A40A5DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40A5E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A40A5EC0(uint64_t a1)
{
  if (!qword_1EB127668)
  {
    sub_1A40A5F7C(255, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
    sub_1A40A5FE4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127668);
    }
  }
}

void sub_1A40A5F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A40A5FE4()
{
  result = qword_1EB127B90;
  if (!qword_1EB127B90)
  {
    sub_1A40A5F7C(255, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127B90);
  }

  return result;
}

void sub_1A40A60A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A40A60F0()
{
  result = qword_1EB123E20;
  if (!qword_1EB123E20)
  {
    sub_1A40A5AE8(255, &qword_1EB123E18, sub_1A40A4A44, sub_1A40A4B40, MEMORY[0x1E697E830]);
    sub_1A40A4448(255);
    v1 = MEMORY[0x1E69E6720];
    sub_1A40A60A0(255, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
    sub_1A40A48EC();
    sub_1A40A4600(&qword_1EB125868, &qword_1EB125870, v1, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    sub_1A3C56C94(&qword_1EB122E18, sub_1A40A4B40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E20);
  }

  return result;
}

id sub_1A40A6290(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for PXOneUpTipsHelper(a1 a2))];
  qword_1EB194528 = result;
  return result;
}

id PXOneUpTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PXOneUpTipsHelper.shared.getter()
{
  if (qword_1EB194520 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB194528;

  return v1;
}

void sub_1A40A654C(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3, void *a4)
{
  v6 = a2(a1);
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40A65D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1A524BEE4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1A524BF64();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1A524CC54();
  v4[16] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40A6728, v8, v7);
}

uint64_t sub_1A40A6728()
{
  v1 = v0[15];
  v2 = v0[14];
  v13 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  type metadata accessor for PXTipsHelper(0, v6);
  static PXTipsHelper.setup()();
  sub_1A3C29A58(0, v7);
  v12 = sub_1A524D474();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1A40A93C8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_92;
  v9 = _Block_copy(v0 + 2);

  sub_1A524BF14();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A3CB0AC0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C56408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v1, v3, v9);
  _Block_release(v9);

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

void sub_1A40A6980(uint64_t a1)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A3F42E24();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40A6C14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A40A65D8(v3, v4, v5, v2);
}

uint64_t sub_1A40A6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3CB8D98(0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A40A6E34, v7, v6);
}

uint64_t sub_1A40A6E34()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_1A5247414();
  v3 = v2;
  v4 = sub_1A3F42E24();
  v5 = *v4 == v1 && v4[1] == v3;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    v9 = sub_1A3F42F0C();
    (*(v7 + 16))(v6, v9, v8);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v11 = sub_1A40A72EC;
LABEL_7:
    v10[1] = v11;

    return MEMORY[0x1EEDE6BA0]();
  }

  v12 = sub_1A3F42E30();
  v13 = *v12 == v1 && v12[1] == v3;
  if (v13 || (sub_1A524EAB4() & 1) != 0)
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 24);

    v17 = sub_1A3F4313C();
    (*(v15 + 16))(v14, v17, v16);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v11 = sub_1A40A7470;
    goto LABEL_7;
  }

  v18 = sub_1A3F42E3C();
  v19 = *v18 == v1 && v18[1] == v3;
  if (v19 || (sub_1A524EAB4() & 1) != 0)
  {
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 24);

    v23 = sub_1A3F43530();
    (*(v21 + 16))(v20, v23, v22);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v11 = sub_1A40A75F4;
    goto LABEL_7;
  }

  v24 = sub_1A3F42E48();
  if (*v24 == v1 && v24[1] == v3 || (sub_1A524EAB4() & 1) != 0)
  {
    v26 = *(v0 + 32);
    v25 = *(v0 + 40);
    v27 = *(v0 + 24);

    v28 = sub_1A3F4366C();
    (*(v26 + 16))(v25, v28, v27);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v11 = sub_1A40A7778;
    goto LABEL_7;
  }

  v29 = sub_1A3F42E54();
  if (*v29 == v1 && v29[1] == v3 || (sub_1A524EAB4() & 1) != 0)
  {
    v31 = *(v0 + 32);
    v30 = *(v0 + 40);
    v32 = *(v0 + 24);

    v33 = sub_1A3F43848();
    (*(v31 + 16))(v30, v33, v32);
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v11 = sub_1A40A78FC;
    goto LABEL_7;
  }

  v34 = sub_1A3F42E60();
  if (*v34 == v1 && v34[1] == v3)
  {

LABEL_34:
    v37 = *(v0 + 32);
    v36 = *(v0 + 40);
    v38 = *(v0 + 24);
    v39 = sub_1A3F4413C();
    (*(v37 + 16))(v36, v39, v38);
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v11 = sub_1A40A7AE8;
    goto LABEL_7;
  }

  v35 = sub_1A524EAB4();

  if (v35)
  {
    goto LABEL_34;
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1A40A72EC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A7470()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A75F4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A7778()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A78FC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A7A80, v6, v5);
}

uint64_t sub_1A40A7A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40A7AE8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A7CCC()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A7DBC, v3, v2);
}

uint64_t sub_1A40A7DBC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3F430A0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A7E80;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A7E80()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A70, v6, v5);
}

double sub_1A40A8044(uint64_t a1, uint64_t a2)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1A524CC54();
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_1A3D4D930(0, 0, v5, a2, v8);

  return result;
}

uint64_t sub_1A40A8170()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A8260, v3, v2);
}

uint64_t sub_1A40A8260()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3FD5540();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A7E80;

  return MEMORY[0x1EEDE6BA0]();
}

double sub_1A40A8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A524CC54();
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  sub_1A3D4D930(0, 0, v7, a4, v10);

  return result;
}

uint64_t sub_1A40A8490()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A8580, v3, v2);
}

uint64_t sub_1A40A8580()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3F437AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A7E80;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A8684()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A8774, v3, v2);
}

uint64_t sub_1A40A8774()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3F441D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A8838;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A8838()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A40A89BC, v6, v5);
}

uint64_t sub_1A40A89BC()
{

  v1 = *(v0 + 8);

  return v1();
}

id PXOneUpTipsHelper.init()()
{
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  PXDisplayCollectionDetailedCountsMake();
  v0[OBJC_IVAR___PXOneUpTipsHelper_Swift_hasStartedTips] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PXOneUpTipsHelper(v1, v2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id PXOneUpTipsHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXOneUpTipsHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12PhotosUICore17PXOneUpTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A3F42E24();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {

    return sub_1A3F42E84(a3 & 1);
  }

  else
  {
    v9 = sub_1A3F42E30();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1A524EAB4() & 1) != 0)
    {

      return sub_1A3F43018(a3 & 1);
    }

    else
    {
      v11 = sub_1A3F42E3C();
      if (*v11 == a1 && v11[1] == a2 || (sub_1A524EAB4() & 1) != 0)
      {

        return sub_1A3F434A8(a3 & 1);
      }

      else
      {
        v12 = sub_1A3F42E48();
        if (*v12 == a1 && v12[1] == a2 || (sub_1A524EAB4() & 1) != 0)
        {

          return sub_1A3F435E4(a3 & 1);
        }

        else
        {
          v13 = sub_1A3F42E54();
          if (*v13 == a1 && v13[1] == a2 || (sub_1A524EAB4() & 1) != 0)
          {

            return sub_1A3F43724(a3 & 1);
          }

          else
          {
            v14 = sub_1A3F42E60();
            if (*v14 == a1 && v14[1] == a2 || (result = sub_1A524EAB4(), (result & 1) != 0))
            {

              return sub_1A3F440B4(a3 & 1);
            }
          }
        }
      }
    }
  }

  return result;
}

void _s12PhotosUICore17PXOneUpTipsHelperC21setTipActionPerformedyySSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1A5247634();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A45C1604();
  swift_beginAccess();
  if (*v11 == 1)
  {
    v12 = sub_1A45C1034();
    swift_beginAccess();
    v13 = *v12;
    if (v13 && *(v13 + 16) && (v14 = sub_1A3C5DCA4(a1, a2), (v15 & 1) != 0))
    {
      sub_1A3C341C8(*(v13 + 56) + 40 * v14, &v21);
      if (*(&v22 + 1))
      {
        sub_1A3C34460(&v21, v24);
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        (*(v8 + 104))(v10, *MEMORY[0x1E6982AE0], v7);
        sub_1A5247424();
        (*(v8 + 8))(v10, v7);
        v16 = sub_1A524CCB4();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        sub_1A3C341C8(v24, &v21);
        sub_1A524CC54();
        v17 = sub_1A524CC44();
        v18 = swift_allocObject();
        v19 = MEMORY[0x1E69E85E0];
        *(v18 + 16) = v17;
        *(v18 + 24) = v19;
        sub_1A3C34460(&v21, v18 + 32);
        sub_1A3D4D930(0, 0, v6, &unk_1A5317320, v18);

        __swift_destroy_boxed_opaque_existential_0(v24);
        return;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }

    sub_1A3CB4DE8(&v21, &qword_1EB128BC8, sub_1A3CB4F50);
  }
}

uint64_t sub_1A40A9040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A7CCC();
}

uint64_t sub_1A40A90CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A8170();
}

uint64_t sub_1A40A9158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A8490();
}

uint64_t sub_1A40A91E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A8684();
}

uint64_t sub_1A40A92AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A40A8684();
}

uint64_t sub_1A40A9338()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3CA8098;

  return sub_1A40A6D40(v2, v3, v4, v0 + 32);
}

void sub_1A40A93C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xD8))();

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *((*v1 & *v3) + 0x90);
      v6 = sub_1A40A9878();
      v5(v6, &type metadata for OneUpLivePhotosTip, v6);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    (*((*v1 & *v7) + 0xF0))();

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *((*v1 & *v9) + 0x90);
      v12 = sub_1A40A98CC();
      v11(v12, &type metadata for OneUpInfoPanelTip, v12);
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*((*v1 & *v13) + 0x108))();

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *((*v1 & *v15) + 0x90);
      v18 = sub_1A40A9920();
      v17(v18, &type metadata for OneUpSyndicatedPhotosTip, v18);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*((*v1 & *v19) + 0x120))();

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *((*v1 & *v21) + 0x90);
      v24 = sub_1A40A9974();
      v23(v24, &type metadata for OneUpActionsMenuTip, v24);
    }
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    (*((*v1 & *v25) + 0x138))();

    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = *((*v1 & *v27) + 0x90);
      v30 = sub_1A40A99C8();
      v29(v30, &type metadata for OneUpQuickCropTip, v30);
    }
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    (*((*v1 & *v31) + 0x150))();

    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *((*v1 & *v33) + 0x90);
      v36 = sub_1A40A9A1C();
      v35(v36, &type metadata for OneUpCleanUpTip, v36);
    }
  }
}

unint64_t sub_1A40A9878()
{
  result = qword_1EB12B230;
  if (!qword_1EB12B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B230);
  }

  return result;
}

unint64_t sub_1A40A98CC()
{
  result = qword_1EB12B220;
  if (!qword_1EB12B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B220);
  }

  return result;
}

unint64_t sub_1A40A9920()
{
  result = qword_1EB12B240;
  if (!qword_1EB12B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B240);
  }

  return result;
}

unint64_t sub_1A40A9974()
{
  result = qword_1EB12B200;
  if (!qword_1EB12B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B200);
  }

  return result;
}

unint64_t sub_1A40A99C8()
{
  result = qword_1EB12B210;
  if (!qword_1EB12B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B210);
  }

  return result;
}

unint64_t sub_1A40A9A1C()
{
  result = qword_1EB12AF00;
  if (!qword_1EB12AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF00);
  }

  return result;
}

uint64_t sub_1A40A9A78()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1A46B8);
  __swift_project_value_buffer(v6, qword_1EB1A46B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static FavoriteAssetsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1A46B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1A46B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A40A9DD8()
{
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1A46D8);
  __swift_project_value_buffer(v10, qword_1EB1A46D8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static FavoriteAssetsIntent.description.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1A46D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240094();
  __swift_project_value_buffer(v2, qword_1EB1A46D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A40AA228@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_1A40AA318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (*a5 == -1)
  {
    v10 = a6(0);
  }

  else
  {
    swift_once();
    v10 = a6(0);
  }

  v11 = v10;
  v12 = __swift_project_value_buffer(v10, a7);
  swift_beginAccess();
  (*(*(v11 - 8) + 24))(v12, a1, v11);
  return swift_endAccess();
}

uint64_t static FavoriteAssetsIntent.parameterSummary.getter()
{
  sub_1A40AD2C0(0, &qword_1EB131380, sub_1A40AA600, &type metadata for FavoriteAssetsIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A40AD2C0(0, &qword_1EB131390, sub_1A40AA600, &type metadata for FavoriteAssetsIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A40AA600();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A40AA678(0);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A40AA6FC(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A40AA600()
{
  result = qword_1EB131388;
  if (!qword_1EB131388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131388);
  }

  return result;
}

void sub_1A40AA678(uint64_t a1)
{
  if (!qword_1EB131398)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131398);
    }
  }
}

void sub_1A40AA6FC(uint64_t a1)
{
  if (!qword_1EB1313A0)
  {
    sub_1A40AD2C0(255, &qword_1EB1313A8, sub_1A40AA794, &type metadata for FavoriteAssetsIntentAction, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1313A0);
    }
  }
}

unint64_t sub_1A40AA794()
{
  result = qword_1EB1313B0;
  if (!qword_1EB1313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313B0);
  }

  return result;
}

uint64_t FavoriteAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A40AD328(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - v5;
  v41 = sub_1A5240334();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v10;
  v11 = sub_1A5240BA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = sub_1A5240BB4();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  sub_1A3F57E84(0);
  v37 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v14, v19, v11);
  v21 = v38;
  sub_1A5240BC4();
  v22 = *(v17 + 56);
  v23 = v21;
  v24 = v36;
  v22(v21, 0, 1, v36);
  v47 = 0;
  sub_1A5240174();
  v35 = *MEMORY[0x1E695A500];
  v25 = *(v45 + 104);
  v45 += 104;
  v34 = v25;
  v26 = v40;
  v27 = v41;
  v25(v40);
  sub_1A3FC2D54(&qword_1EB12EEC8, &qword_1EB12EEB8, &type metadata for AssetEntity);
  sub_1A3F58824();
  v28 = sub_1A5240034();
  v29 = v42;
  *v42 = v28;
  sub_1A40AD2C0(0, &qword_1EB1313A8, sub_1A40AA794, &type metadata for FavoriteAssetsIntentAction, MEMORY[0x1E695A1A0]);
  v22(v23, 1, 1, v24);
  v46 = 0;
  v30 = sub_1A523FDB4();
  v31 = *(*(v30 - 8) + 56);
  v31(v43, 1, 1, v30);
  v31(v44, 1, 1, v30);
  v34(v26, v35, v27);
  sub_1A40ABE60();
  result = sub_1A523FF74();
  v29[1] = result;
  return result;
}

uint64_t FavoriteAssetsIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A40AAF00, v4, v3);
}

uint64_t sub_1A40AAF00()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A40AA600();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A5317390);
}

uint64_t sub_1A40AB060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A40AB0FC, v5, v4);
}

uint64_t sub_1A40AB0FC()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A40AA600();
  v3 = AppIntent.px_intentName.getter(&type metadata for FavoriteAssetsIntent);
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A40AC154(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A40AB298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A40AC154(a1, a2, a3, a4);
}

void (*FavoriteAssetsIntent.assets.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void *sub_1A40AB468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

double sub_1A40AB4A4(char *a1)
{

  sub_1A523FF54();

  return result;
}

void (*FavoriteAssetsIntent.action.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A40AB5A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1A46B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1A46B8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A40AB66C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return FavoriteAssetsIntent.perform()(a1);
}

uint64_t sub_1A40AB708(uint64_t a1)
{
  v2 = sub_1A40AA600();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t static FavoriteAssetsIntentAction.typeDisplayRepresentation.getter()
{
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

PhotosUICore::FavoriteAssetsIntentAction_optional __swiftcall FavoriteAssetsIntentAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

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

  *v2 = v5;
  return result;
}

uint64_t FavoriteAssetsIntentAction.rawValue.getter()
{
  if (*v0)
  {
    return 0x69726F7661666E75;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t sub_1A40ABADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69726F7661666E75;
  }

  else
  {
    v3 = 0x657469726F766166;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v5 = 0x69726F7661666E75;
  }

  else
  {
    v5 = 0x657469726F766166;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A40ABB88()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A40ABC10(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A40ABC84(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A40ABD08(char *a2@<X8>)
{
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1A40ABD68(uint64_t *a1@<X8>)
{
  v2 = 0x657469726F766166;
  if (*v1)
  {
    v2 = 0x69726F7661666E75;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A40ABDB4(uint64_t a1)
{
  v2 = sub_1A40ABE60();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A40ABE04(uint64_t a1)
{
  v2 = sub_1A40AD030();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A40ABE60()
{
  result = qword_1EB1313B8;
  if (!qword_1EB1313B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313B8);
  }

  return result;
}

uint64_t sub_1A40ABEB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A40AB060(a1, v5, v4);
}

unint64_t sub_1A40ABF60(char a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A40AC00C(a1 & 1, v2);
}

unint64_t sub_1A40AC00C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x69726F7661666E75;
    }

    else
    {
      v6 = 0x657469726F766166;
    }

    if (a1)
    {
      v7 = 0xEA00000000006574;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x69726F7661666E75 : 0x657469726F766166;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006574 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1A524EAB4();

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

uint64_t sub_1A40AC154(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A40AC250, v7, v6);
}

void sub_1A40AC250()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A40AC5C0(uint64_t a1)
{
  sub_1A40AD38C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A40AD3F4(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A40AD460(v10, v6);
      result = sub_1A40ABF60(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore26FavoriteAssetsIntentActionO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A40AD328(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A40AD328(0, &qword_1EB131440, sub_1A40AD38C, MEMORY[0x1E69E6F90]);
  sub_1A40AD38C(0);
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A40AC5C0(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A40ACD54()
{
  result = qword_1EB1313C0;
  if (!qword_1EB1313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313C0);
  }

  return result;
}

unint64_t sub_1A40ACDAC()
{
  result = qword_1EB1313C8;
  if (!qword_1EB1313C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313C8);
  }

  return result;
}

unint64_t sub_1A40ACE20()
{
  result = qword_1EB1313D0;
  if (!qword_1EB1313D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313D0);
  }

  return result;
}

unint64_t sub_1A40ACE78()
{
  result = qword_1EB1313D8;
  if (!qword_1EB1313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313D8);
  }

  return result;
}

unint64_t sub_1A40ACED0()
{
  result = qword_1EB1313E0;
  if (!qword_1EB1313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313E0);
  }

  return result;
}

unint64_t sub_1A40ACF28()
{
  result = qword_1EB1313E8;
  if (!qword_1EB1313E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313E8);
  }

  return result;
}

unint64_t sub_1A40ACF80()
{
  result = qword_1EB1313F0;
  if (!qword_1EB1313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313F0);
  }

  return result;
}

unint64_t sub_1A40ACFD8()
{
  result = qword_1EB1313F8;
  if (!qword_1EB1313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313F8);
  }

  return result;
}

unint64_t sub_1A40AD030()
{
  result = qword_1EB131400;
  if (!qword_1EB131400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131400);
  }

  return result;
}

unint64_t sub_1A40AD0DC()
{
  result = qword_1EB131408;
  if (!qword_1EB131408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131408);
  }

  return result;
}

unint64_t sub_1A40AD134()
{
  result = qword_1EB131410;
  if (!qword_1EB131410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131410);
  }

  return result;
}

unint64_t sub_1A40AD18C()
{
  result = qword_1EB131418;
  if (!qword_1EB131418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131418);
  }

  return result;
}

unint64_t sub_1A40AD230()
{
  result = qword_1EB131430;
  if (!qword_1EB131430)
  {
    sub_1A40AD2C0(255, &qword_1EB131438, sub_1A40AA600, &type metadata for FavoriteAssetsIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131430);
  }

  return result;
}

void sub_1A40AD2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A40AD328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A40AD38C(uint64_t a1)
{
  if (!qword_1EB131448)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131448);
    }
  }
}

void sub_1A40AD3F4(uint64_t a1)
{
  if (!qword_1EB131450)
  {
    sub_1A5240274();
    sub_1A40AD18C();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131450);
    }
  }
}

uint64_t sub_1A40AD460(uint64_t a1, uint64_t a2)
{
  sub_1A40AD38C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40AD4CC(uint64_t a1)
{
  v2 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LemonadeInvitationModel(0);
  v5 = *(*a1 + 176);

  v5(&v12, v6);

  v7 = v12;
  v8 = *&v12[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry];

  v9 = sub_1A3C5A374();
  sub_1A3F639E8(v8, v9 & 1, v4);
  sub_1A4604AFC(v4);
  return a1;
}

__n128 sub_1A40AD5D8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a1 + 304))(v15);
  v5 = sub_1A5249584();
  v14 = 0;

  v6 = sub_1A3C30368();
  v9 = v17;
  v10 = v16;
  sub_1A4969A00(a2, v6 & 1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_1A40AD710(__dst, v11);
  sub_1A40AD76C(v19);
  memcpy(&v13[7], __dst, 0x118uLL);
  v7 = v14;
  LOBYTE(a2) = sub_1A524A064();
  sub_1A3DF76B0(v15);
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  memcpy((a3 + 17), v13, 0x11FuLL);
  *(a3 + 304) = a2;
  result = v10;
  *(a3 + 312) = v10;
  *(a3 + 328) = v9;
  *(a3 + 344) = 0;
  return result;
}

uint64_t sub_1A40AD7C8@<X0>(uint64_t a1@<X8>)
{
  sub_1A40AD924(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  *v7 = sub_1A5249574();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_1A40AEF58(0);
  sub_1A40ADCEC(&v7[*(v8 + 44)]);
  sub_1A40AEFF0(v7, v4);
  sub_1A40AEFF0(v4, a1);
  sub_1A40AD8BC(0);
  v10 = a1 + *(v9 + 48);
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_1A40AF054(v7);
  return sub_1A40AF054(v4);
}

void sub_1A40AD8BC(uint64_t a1)
{
  if (!qword_1EB131460)
  {
    sub_1A40AD924(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131460);
    }
  }
}

void sub_1A40AD924(uint64_t a1)
{
  if (!qword_1EB131468)
  {
    sub_1A40ADBB0(255, &qword_1EB131470, sub_1A40AD9D8, MEMORY[0x1E6981F40]);
    sub_1A40ADC88(&qword_1EB131488, &qword_1EB131470, sub_1A40AD9D8);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131468);
    }
  }
}

void sub_1A40AD9D8(uint64_t a1)
{
  if (!qword_1EB131478)
  {
    sub_1A40ADA48(255);
    sub_1A524B9A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131478);
    }
  }
}

void sub_1A40ADA48(uint64_t a1)
{
  if (!qword_1EB131480)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1A40ADBB0(255, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
    sub_1A40ADBB0(255, &qword_1EB130890, sub_1A3E05888, type metadata accessor for LemonadeSharedAlbumsActivityFeedInvitationCell);
    sub_1A40ADC2C(&qword_1EB12CD10, &unk_1EB12CCF0, v1, MEMORY[0x1E69E6338]);
    v2 = sub_1A524B9D4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB131480);
    }
  }
}

uint64_t sub_1A40ADB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A40ADBB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A40ADC2C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40ADBB0(255, a2, sub_1A3E05888, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A40ADC88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A40ADBB0(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A40ADCEC@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524B9A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - v7;
  sub_1A40ADA48(0);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  if (qword_1EB1A4E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EB1EBB10 >> 62)
  {
    v13 = sub_1A524E2B4();
  }

  else
  {
    v13 = *((qword_1EB1EBB10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = a1;
  v36 = v5;
  if (v13)
  {
    v37 = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v37 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E62F8];
  sub_1A40ADBB0(0, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
  sub_1A40ADBB0(0, &qword_1EB130890, sub_1A3E05888, type metadata accessor for LemonadeSharedAlbumsActivityFeedInvitationCell);
  sub_1A40ADC2C(&qword_1EB12CD10, &unk_1EB12CCF0, v14, MEMORY[0x1E69E6338]);
  sub_1A40ADC2C(&qword_1EB1308E0, &qword_1EB130890, type metadata accessor for LemonadeSharedAlbumsActivityFeedInvitationCell, &unk_1A53177A0);
  sub_1A40ADB68(&qword_1EB12CD98, sub_1A3E05888, &unk_1A5327138);
  v30 = v12;
  sub_1A524B9C4();
  v15 = v35;
  sub_1A524B994();
  v16 = v31;
  v17 = v32;
  v18 = *(v32 + 16);
  v19 = v12;
  v20 = v33;
  v18(v31, v19, v33);
  v21 = *(v3 + 16);
  v21(v36, v15, v2);
  v22 = v34;
  v18(v34, v16, v20);
  sub_1A40AD9D8(0);
  v24 = &v22[*(v23 + 48)];
  v25 = v36;
  v21(v24, v36, v2);
  v26 = *(v3 + 8);
  v26(v35, v2);
  v27 = *(v17 + 8);
  v27(v30, v20);
  v26(v25, v2);
  return (v27)(v16, v20);
}

uint64_t sub_1A40AE1F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  type metadata accessor for LemonadeInvitationModel(0);
  v8 = *(*v7 + 176);

  v8(&v15, v9);
  v10 = v15;
  v11 = *&v15[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry];

  v12 = sub_1A3C5A374();
  sub_1A3F639E8(v11, v12 & 1, v6);
  result = sub_1A4604AFC(v6);
  *a2 = v7;
  a2[1] = result;
  return result;
}

id sub_1A40AE300()
{
  result = sub_1A40AE320();
  qword_1EB1EBB10 = result;
  return result;
}

id sub_1A40AE320()
{
  v0 = sub_1A5241144();
  v49 = *(v0 - 8);
  v50 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52411C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [objc_opt_self() sharedPhotoLibrary];
  v7 = [objc_allocWithZone(PXSharedAlbumsActivityEntryAvatarConfiguration) init];
  v8 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v9 = sub_1A524C634();
  v10 = sub_1A524C634();
  v11 = [v8 initWithDisplayName:v9 email:v10];

  sub_1A52411B4();
  sub_1A5241164();
  (*(v4 + 8))(v6, v3);
  v51 = v2;
  sub_1A5241104();
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v13 = v12;
  v14 = swift_allocObject();
  v52 = xmmword_1A52F9790;
  *(v14 + 16) = xmmword_1A52F9790;
  *(v14 + 32) = v11;
  v48 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v52;
  *(v15 + 32) = v7;
  sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52F8E10;
  v17 = qword_1EB1A4E88;
  v47 = v11;
  v46 = v7;
  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EBB18 uuid];
  if (result)
  {
    v19 = result;
    v20 = sub_1A524C674();
    v22 = v21;

    *(v16 + 32) = v20;
    *(v16 + 40) = v22;
    v44 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
    v45 = v45;
    v43 = sub_1A524C634();

    v42 = sub_1A5241074();
    sub_1A3C52C70(0, &qword_1EB12CD78, off_1E771F6C8);
    v23 = sub_1A524CA14();

    sub_1A3C52C70(0, &unk_1EB12CD80, off_1E771F6C0);
    v24 = sub_1A524CA14();

    v25 = sub_1A524C634();
    v26 = sub_1A524C634();
    v27 = sub_1A524C634();
    v28 = sub_1A524CA14();

    v29 = sub_1A524CA14();
    LOBYTE(v41) = 1;
    v30 = v45;
    v32 = v42;
    v31 = v43;
    v44 = [v44 initWithPhotoLibrary:v45 uuid:v43 date:v42 type:5 isFromMe:0 contributors:v23 avatarConfigurations:v24 albumGUID:v25 albumName:v26 cloudOwnerIsAllowlisted:v41 message:v27 keyAssetUUIDs:v28 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v29 underlyingObject:0];

    (*(v49 + 8))(v51, v50);
    type metadata accessor for SharedAlbumsActivityEntryItem(0);
    v33 = swift_allocObject();
    *(v33 + 16) = v52;
    v34 = qword_1EB1EBB18;
    *(v33 + 32) = qword_1EB1EBB18;
    v35 = v44;
    v36 = v34;
    v37 = sub_1A3C5A374();
    v38 = sub_1A3C5A374();
    v39 = sub_1A4705FE8(v35, v37, v33, v38 & 1);
    v40 = swift_allocObject();
    *(v40 + 16) = v52;
    *(v40 + 32) = v39;

    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A40AE8C4()
{
  v0 = objc_allocWithZone(off_1E77218F8);
  v4[4] = sub_1A40AEEE4;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3D77CC4;
  v4[3] = &block_descriptor_93;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithConfiguration_];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    qword_1EB1EBB18 = v2;
  }

  return result;
}

unint64_t sub_1A40AE9FC()
{
  result = qword_1EB131498;
  if (!qword_1EB131498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131498);
  }

  return result;
}

uint64_t sub_1A40AEA6C(double a1)
{
  sub_1A524A044();
  sub_1A40ADBB0(0, &qword_1EB131458, sub_1A40AD8BC, MEMORY[0x1E6981F40]);
  sub_1A40ADC88(&qword_1EB131490, &qword_1EB131458, sub_1A40AD8BC);

  return sub_1A5247D14();
}

uint64_t sub_1A40AEB38(uint64_t a1)
{
  v2 = sub_1A40AEE90();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A40AEB84(uint64_t a1)
{
  v2 = sub_1A40AEE90();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A40AEBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A40AEC1C()
{
  result = qword_1EB1314A0;
  if (!qword_1EB1314A0)
  {
    sub_1A40AECCC(255);
    sub_1A40ADB68(&qword_1EB1314C0, sub_1A40AED2C, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1314A0);
  }

  return result;
}

void sub_1A40AECCC(uint64_t a1)
{
  if (!qword_1EB1314A8)
  {
    sub_1A40AED2C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1314A8);
    }
  }
}

void sub_1A40AED2C(uint64_t a1)
{
  if (!qword_1EB1314B0)
  {
    sub_1A40AED88();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1314B0);
    }
  }
}

unint64_t sub_1A40AED88()
{
  result = qword_1EB1314B8;
  if (!qword_1EB1314B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1314B8);
  }

  return result;
}

void sub_1A40AEDDC(uint64_t a1)
{
  if (!qword_1EB1314D0)
  {
    sub_1A40ADBB0(255, &qword_1EB131458, sub_1A40AD8BC, MEMORY[0x1E6981F40]);
    sub_1A40ADC88(&qword_1EB131490, &qword_1EB131458, sub_1A40AD8BC);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1314D0);
    }
  }
}

unint64_t sub_1A40AEE90()
{
  result = qword_1EB1314D8;
  if (!qword_1EB1314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1314D8);
  }

  return result;
}

void sub_1A40AEEE4(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() systemOrangeColor];
  [a1 setTintColor_];
}

void sub_1A40AEF58(uint64_t a1)
{
  if (!qword_1EB1314E0)
  {
    sub_1A40ADBB0(255, &qword_1EB131470, sub_1A40AD9D8, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1314E0);
    }
  }
}

uint64_t sub_1A40AEFF0(uint64_t a1, uint64_t a2)
{
  sub_1A40AD924(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40AF054(uint64_t a1)
{
  sub_1A40AD924(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AVPlayerItemVideoOutput __swiftcall AVPlayerItemVideoOutput.init(settings:)(PhotosUICore::VideoOutputSettings settings)
{
  v2 = **&settings.outputSize.is_nil;
  v1 = *(*&settings.outputSize.is_nil + 8);
  v3 = *(*&settings.outputSize.is_nil + 16);
  v4 = *(*&settings.outputSize.is_nil + 17);
  v5 = *(*&settings.outputSize.is_nil + 18);
  sub_1A4076128(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v4;
  v8 = sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  if ((v3 & 1) == 0)
  {
    v9 = sub_1A524C674();
    v11 = v10;
    v12 = MEMORY[0x1E69E7DE0];
    v26 = MEMORY[0x1E69E7DE0];
    *&v25 = v2;
    sub_1A3C57128(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v24, v9, v11, isUniquelyReferenced_nonNull_native);

    v14 = sub_1A524C674();
    v16 = v15;
    v26 = v12;
    *&v25 = v1;
    sub_1A3C57128(&v25, v24);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v24, v14, v16, v17);
  }

  if (v5)
  {
    v18 = sub_1A524C674();
    v20 = v19;
    sub_1A40AF590();
    v26 = v21;
    *&v25 = MEMORY[0x1E69E7CC8];
    sub_1A3C57128(&v25, v24);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v24, v18, v20, v22);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1A40AF310(v8);
}

void sub_1A40AF310(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A40AF6B4(0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40AF590()
{
  if (!qword_1EB1314E8)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314E8);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoOutputSettings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoOutputSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

void sub_1A40AF6B4(uint64_t a1)
{
  if (!qword_1EB1314F0)
  {
    sub_1A3DB7F50();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1314F0);
    }
  }
}

void sub_1A40AF750(void *a1)
{
  swift_unknownObjectWeakInit();
  v2 = &v1[OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_viewModelObservation];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_analysisProgress] = 0;
  v3 = OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_analyzer;
  *&v1[v3] = [objc_allocWithZone(PXSystemMediaAnalyzer) init];
  swift_beginAccess();
  v4 = swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_timeRanges] = MEMORY[0x1E69E7CC0];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DisplayAssetViewModelHighlightTimeRangeController(v4, v5);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;

  sub_1A524D1A4();
}

void sub_1A40AF924(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A40B0878(v2);
  }
}

void sub_1A40AF9EC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A40AFA48(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

void sub_1A40AFAE0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A40AFBAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_viewModelObservation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1A40AFC6C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v2 = v1();
  if (!v2)
  {
    return result;
  }

  v4 = v2;
  v5 = [v2 asset];

  if (!v5)
  {
    return result;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    return result;
  }

  sub_1A3C52C70(0, &qword_1EB1267E8, off_1E771DB88);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 showDummyTimeRangeHighlight];

  if (v7)
  {
    sub_1A3CB8F68();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52FF960;
    *(v8 + 32) = PXValueWithCMTimeRange(1.0, 9.0);
    *(v8 + 40) = PXValueWithCMTimeRange(15.0, 5.0);
    *(v8 + 48) = PXValueWithCMTimeRange(30.0, 60.0);
    sub_1A40B08EC(v8);
  }

  v9 = v1();
  if (v9 && (v10 = v9, v11 = [v9 personLocalIdentifiersToHighlight], v10, v11))
  {
    v12 = sub_1A524CA34();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = v1();
  if (v13 && (v14 = v13, v15 = [v13 sceneIdentifiersToHighlight], v14, v15))
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    v16 = sub_1A524CA34();

    v17 = v1();
    if (!v17)
    {
LABEL_21:
      v29 = MEMORY[0x1E69E7CC0];
      v20 = v1();
      if (!v20)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v1();
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v18 = v17;
  v19 = [v17 audioIdentifiersToHighlight];

  if (!v19)
  {
    goto LABEL_21;
  }

  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v29 = sub_1A524CA34();

  v20 = v1();
  if (!v20)
  {
LABEL_25:
    v23 = MEMORY[0x1E69E7CC0];
    if (*(v12 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_22:
  v21 = v20;
  v22 = [v20 humanActionIdentifiersToHighlight];

  if (!v22)
  {
    goto LABEL_25;
  }

  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v23 = sub_1A524CA34();

  if (*(v12 + 16))
  {
    goto LABEL_32;
  }

LABEL_26:
  if (v16 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      goto LABEL_32;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_32;
  }

  if (v29 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_32:
    v24 = v1();
    if (v24 && (v26 = v24, v27 = [v24 sceneIdentifiersToHighlight], v26, v27))
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      v28 = sub_1A524CA34();
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    sub_1A40B1618(v28, v25);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_30:
  if (v23 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_32;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_32;
  }

  swift_unknownObjectRelease();

  return result;
}

void sub_1A40B04B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = sub_1A524BEE4();
  v22 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v17 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v20 = *(v15 - 8);
  v21 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v19 = sub_1A524D474();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  aBlock[4] = sub_1A40B1768;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_23_3;
  _Block_copy(aBlock);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A40B07F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1A3C52C70(0, &qword_1EB1205F8, 0x1E696B098);
  v3 = sub_1A524CA34();

  v2(v3);

  return result;
}

void sub_1A40B0878(__int16 a1)
{
  if ((a1 & 0xF001) != 0)
  {
    sub_1A40B08EC(MEMORY[0x1E69E7CC0]);
  }
}

id sub_1A40B0A78(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DisplayAssetViewModelHighlightTimeRangeController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A40B0B28(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A40B115C(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A40B0D60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A40B1A9C(0);
    v2 = sub_1A524E3C4();
    v15 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A40B0F40(v9 + 1);
        }

        v2 = v15;
        result = sub_1A524DBE4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1A40B0F40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A40B1A9C(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1A524DBE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A40B115C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A40B0F40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A40B12CC();
      goto LABEL_12;
    }

    sub_1A40B1410(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

void sub_1A40B12CC()
{
  v1 = v0;
  sub_1A40B1A9C(0);
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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
}

void sub_1A40B1410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A40B1A9C(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A524DBE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

uint64_t sub_1A40B1618(unint64_t a1, __n128 a2)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v5 = sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    v6 = sub_1A3D92850();
    result = MEMORY[0x1A59082D0](i, v5, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A40B0B28(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = result;
  v8 = sub_1A524E2B4();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1A40B1768()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x80);
    v9 = v8();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 asset];

      if (v11)
      {
        v12 = swift_unknownObjectRelease();
        if (v11 == v1)
        {
          v13 = (v8)(v12);
          if (v13 && (v14 = v13, v15 = [v13 personLocalIdentifiersToHighlight], v14, v15))
          {
            v16 = sub_1A524CA34();
          }

          else
          {
            v16 = MEMORY[0x1E69E7CC0];
          }

          v17 = sub_1A3D3D27C(v2, v16);

          if (v17)
          {
            v19 = (v8)(v18);
            if (v19 && (v21 = v19, v22 = [v19 sceneIdentifiersToHighlight], v21, v22))
            {
              sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
              v23 = sub_1A524CA34();
            }

            else
            {
              v23 = MEMORY[0x1E69E7CC0];
            }

            v24 = sub_1A3D5B724(v4, v23, &qword_1EB126610, 0x1E696AD98, v20);

            if (v24)
            {
              v26 = (v8)(v25);
              if (v26 && (v28 = v26, v29 = [v26 audioIdentifiersToHighlight], v28, v29))
              {
                sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
                v30 = sub_1A524CA34();
              }

              else
              {
                v30 = MEMORY[0x1E69E7CC0];
              }

              v31 = sub_1A3D5B724(v3, v30, &qword_1EB126610, 0x1E696AD98, v27);

              if (v31)
              {
                v33 = (v8)(v32);
                if (v33 && (v35 = v33, v36 = [v33 humanActionIdentifiersToHighlight], v35, v36))
                {
                  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
                  v37 = sub_1A524CA34();
                }

                else
                {
                  v37 = MEMORY[0x1E69E7CC0];
                }

                v38 = sub_1A3D5B724(v5, v37, &qword_1EB126610, 0x1E696AD98, v34);

                if (v38)
                {
                  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                }
              }
            }
          }
        }
      }
    }
  }
}