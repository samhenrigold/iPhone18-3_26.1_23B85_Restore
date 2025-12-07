id PXSensitivityInterventionManager.init(asset:interventionType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 interventionType:a2];

  return v3;
}

char *PXSensitivityInterventionManager.init(asset:interventionType:)(void *a1, uint64_t a2)
{
  v4 = a1;
  if ([a1 isVideo])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [v2 initWithCompactSCSensitivityAnalysis:objc_msgSend(v4 analysisMediaType:sel_compactSCSensitivityAnalysis) interventionType:{v5, a2}];
  v7 = v6;
  if (v6)
  {
    v8 = *&v6[OBJC_IVAR___PXSensitivityInterventionManager_asset];
    *&v6[OBJC_IVAR___PXSensitivityInterventionManager_asset] = v4;
    v4 = v8;
  }

  return v7;
}

uint64_t sub_1A4451B24(void *a1)
{
  v3 = v1;
  v5 = sub_1A5246DD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  sub_1A4451CF4(a1);
  sub_1A524D924();
  (*(v6 + 16))(v8, v11, v5);
  v12 = sub_1A524D914();
  if (!v2)
  {
    v13 = v12;
    [v12 setModalInPresentation_];
    [v3 setInternalInterventionFlow_];
    v14 = [v3 internalInterventionFlow];
    if (v14)
    {
      v15 = v14;
      v16 = [v3 delegateHandler];
      [v15 setInterventionDelegate_];

      v13 = v16;
    }
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1A4451CF4(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246D74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4453B48(0, &qword_1EB13AD10, MEMORY[0x1E697B4C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = [v2 analysisMediaType];
  if (v15)
  {
    if (v15 == 2)
    {
      sub_1A5246D44();
    }

    else
    {
      if (v15 != 1)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD000000000000033, 0x80000001A53D8180);
        v31 = [v2 analysisMediaType];
        v29 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v29);

        goto LABEL_23;
      }

      sub_1A5246D34();
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1A5246D54();
  v18 = (*(*(v17 - 8) + 56))(v14, v16, 1, v17);
  sub_1A4453AB4(v14, v10, v18);
  v19 = a1;
  sub_1A5246D64();
  v20 = [v2 interventionType];
  if (v20 <= 1)
  {
    if (!v20)
    {
      sub_1A5246D94();
LABEL_20:
      (*(v5 + 8))(v7, v4);
      return sub_1A4453BAC(v14);
    }

    if (v20 == 1)
    {
      sub_1A5246DC4();
      goto LABEL_20;
    }
  }

  else
  {
    switch(v20)
    {
      case 2:
        sub_1A4453B48(0, &qword_1EB13AD18, MEMORY[0x1E697B4F0], MEMORY[0x1E69E6F90]);
        v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1A52F8E10;
        (*(v5 + 16))(v24 + v23, v7, v4);
        sub_1A5246D84();
        goto LABEL_17;
      case 3:
        sub_1A4453B48(0, &qword_1EB13AD18, MEMORY[0x1E697B4F0], MEMORY[0x1E69E6F90]);
        v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1A52F8E10;
        (*(v5 + 16))(v22 + v21, v7, v4);
        sub_1A5246DB4();
LABEL_17:

        goto LABEL_20;
      case 4:
        sub_1A4453B48(0, &qword_1EB13AD18, MEMORY[0x1E697B4F0], MEMORY[0x1E69E6F90]);
        v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1A52F8E10;
        (*(v5 + 16))(v26 + v25, v7, v4);
        sub_1A5246DA4();
        goto LABEL_17;
    }
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1A524E404();

  v32 = 0xD000000000000026;
  v33 = 0x80000001A53D8150;
  v31 = [v2 interventionType];
  v28 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v28);

LABEL_23:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4452300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() changeRequestForAsset_];
  if (a2 == 1)
  {
    v11 = [a3 compactAnalysis];
    [v18 setCompactVideoSCSensitivityAnalysis_];
    goto LABEL_5;
  }

  if (!a2)
  {
    v10 = [a3 compactAnalysis];
    [v18 setCompactImageSCSensitivityAnalysis_];
LABEL_5:
    v12 = v18;

    return;
  }

  v13 = sub_1A45D8754();
  (*(v7 + 16))(v9, v13, v6);
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_1A3C1C000, v14, v15, "Unexpected analysis type %ld", v16, 0xCu);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

void sub_1A445258C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 viewControllerToPresent];
  if (v6)
  {
    v7 = v6;
    if (a1)
    {
      v8[4] = a1;
      v8[5] = a2;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1A3C2E0D0;
      v8[3] = &block_descriptor_27_5;
      a1 = _Block_copy(v8);
    }

    [v7 dismissViewControllerAnimated:1 completion:a1];
    _Block_release(a1);
  }
}

void __swiftcall PXSensitivityInterventionManager.init()(PXSensitivityInterventionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1A44528CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

uint64_t sub_1A445293C(uint64_t a1, char a2)
{
  v2 = (a1 + OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion);
  v3 = *(a1 + OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion);
  if (v3)
  {
    v5 = v2[1];

    v3(a2 & 1);
    sub_1A3C33378(v3, v5);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;

  return sub_1A3C33378(v6, v7);
}

id sub_1A44529C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSensitivityInterventionManagerDelegateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A4452A58(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = [a2 internalInterventionFlow];
  if (v7)
  {
    v13 = v7;
    v8 = [a2 delegateHandler];
    v9 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion];
    v10 = *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion];
    v11 = *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion + 8];
    *v9 = sub_1A3DB5554;
    v9[1] = v6;

    sub_1A3C33378(v10, v11);

    [a1 presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    a3[2](a3, 0);
  }

  return result;
}

void sub_1A4452BAC(void *a1, uint64_t a2)
{
  v51 = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  sub_1A3C52C70(0, &qword_1EB12BB48, 0x1E697B670);
  v9 = sub_1A524D724();
  v10 = sub_1A45D8754();
  v11 = *(v4 + 16);
  v48 = v10;
  v49 = v4 + 16;
  v47 = v11;
  (v11)(v8);
  v12 = a1;
  v13 = sub_1A5246F04();
  v14 = sub_1A524D264();
  if (os_log_type_enabled(v13, v14))
  {
    v45 = v4;
    v46 = v3;
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315138;
    v16 = [v12 uuid];

    if (v16)
    {
      v17 = sub_1A524C674();
      v19 = v18;

      sub_1A3C2EF94(v17, v19, aBlock);
    }

    __break(1u);
  }

  else
  {

    v20 = *(v4 + 8);
    v20(v8, v3);
    v21 = [v12 photoLibrary];
    v22 = v51;
    if (!v21)
    {
      __break(1u);
    }

    v23 = v21;
    v24 = swift_allocObject();
    v24[2] = v12;
    v24[3] = v22;
    v24[4] = v9;
    aBlock[4] = sub_1A4453AA8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_33_4;
    v25 = _Block_copy(aBlock);
    v26 = v12;
    v27 = v9;

    aBlock[0] = 0;
    v28 = [v23 performChangesAndWait:v25 error:aBlock];
    _Block_release(v25);

    if (v28)
    {
      v29 = aBlock[0];
    }

    else
    {
      v30 = aBlock[0];
      v31 = sub_1A5240B84();

      swift_willThrow();
      aBlock[0] = v31;
      sub_1A3DBD9A0();
      sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
      swift_dynamicCast();
      v32 = v52;
      v33 = v50;
      v47(v50, v48, v3);
      v34 = v32;
      v35 = sub_1A5246F04();
      v36 = sub_1A524D244();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v45 = v4;
        v38 = v37;
        v53 = swift_slowAlloc();
        *v38 = 134218242;
        *(v38 + 4) = v22;
        *(v38 + 12) = 2080;
        v39 = [v34 localizedDescription];
        v40 = sub_1A524C674();
        v46 = v3;
        v41 = v40;
        v43 = v42;

        sub_1A3C2EF94(v41, v43, &v53);
      }

      v20(v33, v3);
    }
  }
}

void sub_1A445311C()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_manager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v11 = Strong;
  v12 = [Strong interventionType];
  if ((v12 - 2) >= 3)
  {
    if (v12 > 1)
    {
      aBlock = 0;
      v33 = 0xE000000000000000;
      sub_1A524E404();

      aBlock = 0xD000000000000026;
      v33 = 0x80000001A53D8150;
      v38 = [v11 interventionType];
      v30 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v30);

      goto LABEL_22;
    }

    v19 = [v11 asset];
    if (v19)
    {
      v20 = v19;
      [v11 overrideAnalysisFor:v19 :0];
      if ([v20 isPhotoIris] && objc_msgSend(v20, sel_canPlayPhotoIris) && !objc_msgSend(v20, sel_isPhotoIrisPlaceholder) || objc_msgSend(v20, sel_isVideo))
      {
        [v11 overrideAnalysisFor:v20 :1];
      }
    }
  }

  else
  {
    v13 = sub_1A45D8754();
    (*(v3 + 16))(v8, v13, v2);
    v14 = v11;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D224();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v9;
      v18 = v17;
      *v17 = 134217984;
      *(v17 + 4) = [v14 interventionType];

      _os_log_impl(&dword_1A3C1C000, v15, v16, "Skipping override asset's sensitivity analysis for %ld.", v18, 0xCu);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {

      v15 = v14;
    }

    (*(v3 + 8))(v8, v2);
  }

  v21 = sub_1A45D8754();
  (*(v3 + 16))(v5, v21, v2);
  v22 = sub_1A5246F04();
  v23 = sub_1A524D224();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1A3C1C000, v22, v23, "User confirmed intervention flow for assets.", v24, 2u);
    MEMORY[0x1A590EEC0](v24, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = 1;
    v36 = sub_1A4453C44;
    v37 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1A3C2E0D0;
    v35 = &block_descriptor_21_7;
    v28 = _Block_copy(&aBlock);
    v29 = v1;

    [v26 dismissInterventionFlow_];
    _Block_release(v28);

    return;
  }

  __break(1u);
LABEL_22:
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A4453634()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = sub_1A45D8754();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D224();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "User rejected intervention flow for assets.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = 0;
      aBlock[4] = sub_1A4453A9C;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_190;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      [v12 dismissInterventionFlow_];
      _Block_release(v14);

      return;
    }

    __break(1u);
  }

  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A44538C4()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() openChatWithParents];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = sub_1A45D8754();
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_1A5246F04();
    v7 = sub_1A524D224();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, v7, "User contacted someone in intervention flow for assets.", v8, 2u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4453AB4(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A4453B48(0, &qword_1EB13AD10, MEMORY[0x1E697B4C0], MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4453B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4453BAC(uint64_t a1)
{
  sub_1A4453B48(0, &qword_1EB13AD10, MEMORY[0x1E697B4C0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SyntheticPerson.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v3);
  v11 = &v10[OBJC_IVAR___PXSyntheticPerson_px_localIdentifier];
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v10[OBJC_IVAR___PXSyntheticPerson_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  v17.receiver = v10;
  v17.super_class = v3;
  return objc_msgSendSuper2(&v17, sel_init);
}

id SyntheticPerson.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1A52411C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR___PXSyntheticPerson_px_localIdentifier];
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v3[OBJC_IVAR___PXSyntheticPerson_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t SyntheticPerson.requestFaceCropImage(withTargetSize:displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t))
{
  v6 = sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  a5(0, v6);

  return 0;
}

id SyntheticPerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyntheticPerson.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44542F0()
{
  sub_1A4462A80(0, &qword_1EB13B1E8, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v12)
  {
    return v11;
  }

  v2 = *v0;
  v3 = [*v0 displayName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  v9 = [v2 displayAddress];
  v10 = sub_1A524C674();

  return v10;
}

void sub_1A4454400(uint64_t a1@<X8>)
{
  v3 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = [*v1 emailAddressString];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A524C674();
    v34 = v14;
    v35 = v13;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v15 = [v10 phoneNumberString];
  if (v15)
  {
    v16 = v15;
    v33 = sub_1A524C674();
    v18 = v17;
  }

  else
  {
    v33 = 0;
    v18 = 0;
  }

  v19 = [v10 firstName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1A524C674();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v10 lastName];
  if (v24)
  {
    v26 = v24;
    v27 = sub_1A524C674();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  sub_1A482211C(v25);
  v30 = sub_1A41F7694();
  sub_1A481E150(v35, v34, v33, v18, v21, v23, v27, v29, v9, v30, v5);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4461D4C(0, &qword_1EB13AD38, &qword_1EB13AD40, sub_1A4454F6C);
  sub_1A44546BC(v9, v1, a1 + *(v31 + 44));
}

void sub_1A44546BC(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v49[3] = a3;
  v5 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  sub_1A44550B4(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  sub_1A4461DC8(a1, v12 + v11, type metadata accessor for ShareParticipantImageConfiguration);
  sub_1A493BE2C(&v57);
  v13 = v9;
  sub_1A493BE50(v12, &v57, v9, 32.0);
  v54 = sub_1A5249584();
  LOBYTE(v56) = 1;
  *&v57 = sub_1A44542F0();
  *(&v57 + 1) = v14;
  v49[1] = sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v17 = v16;
  LOBYTE(v9) = v18;
  sub_1A524A214();
  sub_1A524A104();

  v51 = sub_1A524A3C4();
  v52 = v19;
  v21 = v20;
  v53 = v22;

  sub_1A3E04DF4(v15, v17, v9 & 1);

  v23 = sub_1A44542F0();
  v25 = v24;
  v26 = *a2;
  v27 = [*a2 displayAddress];
  v28 = sub_1A524C674();
  v30 = v29;

  v49[4] = v13;
  if (v23 == v28 && v25 == v30)
  {
  }

  else
  {
    v31 = sub_1A524EAB4();

    if ((v31 & 1) == 0)
    {
      v32 = [v26 displayAddress];
      v33 = sub_1A524C674();
      v35 = v34;

      *&v57 = v33;
      *(&v57 + 1) = v35;
      v36 = sub_1A524A464();
      v38 = v37;
      LOBYTE(v35) = v39;
      sub_1A524A254();
      v40 = sub_1A524A3C4();
      v42 = v41;
      v44 = v43;
      LODWORD(v50) = v21;

      sub_1A3E04DF4(v36, v38, v35 & 1);

      sub_1A524B334();
      v45 = sub_1A524A364();
      v47 = v46;
      LOBYTE(v35) = v48;

      sub_1A3E04DF4(v40, v42, v44 & 1);

      sub_1A3E75E68(v45, v47, v35 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A3E75E68(v51, v52, v21 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4454F6C(uint64_t a1)
{
  if (!qword_1EB13AD48)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
    sub_1A4455020(255);
    sub_1A3C39938(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13AD48);
    }
  }
}

void sub_1A4455020(uint64_t a1)
{
  if (!qword_1EB13AD50)
  {
    sub_1A44550B4(255, &qword_1EB13AD58, sub_1A4455118, MEMORY[0x1E6981F40]);
    sub_1A44551A4();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AD50);
    }
  }
}

void sub_1A44550B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4455118(uint64_t a1)
{
  if (!qword_1EB13AD60)
  {
    sub_1A3C39938(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13AD60);
    }
  }
}

unint64_t sub_1A44551A4()
{
  result = qword_1EB13AD70;
  if (!qword_1EB13AD70)
  {
    sub_1A44550B4(255, &qword_1EB13AD58, sub_1A4455118, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AD70);
  }

  return result;
}

void sub_1A445528C(uint64_t a1)
{
  if (!qword_1EB13AD80)
  {
    sub_1A44550B4(255, &qword_1EB13AD40, sub_1A4454F6C, MEMORY[0x1E6981F40]);
    sub_1A4455320();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AD80);
    }
  }
}

unint64_t sub_1A4455320()
{
  result = qword_1EB13AD88;
  if (!qword_1EB13AD88)
  {
    sub_1A44550B4(255, &qword_1EB13AD40, sub_1A4454F6C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AD88);
  }

  return result;
}

double sub_1A44553E0()
{
  v1 = v0;
  sub_1A44550B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v14 = *(v0 + 32);
  v12[0] = *(v0 + 32);
  v15 = *(&v14 + 1);
  sub_1A4461DC8(&v15, &v13, sub_1A445E630);
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v13 & 1) != 0 || (v12[0] = *(v0 + 48), sub_1A524B6A4(), (v13))
  {
    sub_1A445E6AC(&v14, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  }

  else
  {
    v12[0] = v14;
    LOBYTE(v13) = 1;
    sub_1A524B6B4();
    sub_1A445E6AC(&v14, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524CC74();
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    sub_1A524CC54();
    sub_1A44553A8(v0, v12);
    v7 = sub_1A524CC44();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    v10 = v1[1];
    *(v8 + 32) = *v1;
    *(v8 + 48) = v10;
    v11 = v1[3];
    *(v8 + 64) = v1[2];
    *(v8 + 80) = v11;
    sub_1A3D4D930(0, 0, v4, &unk_1A533DC00, v8);
  }

  return result;
}

uint64_t sub_1A4455654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1A44550B4(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  v4[18] = swift_task_alloc();
  v5 = sub_1A5240A24();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_1A524CC54();
  v4[22] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44557A4, v7, v6);
}

uint64_t sub_1A44557A4()
{
  v1 = *(v0 + 136);

  v2 = [*v1 matchingContact];
  if (v2)
  {
    v3 = *(v0 + 160);
    v31 = *(v0 + 168);
    v29 = v3;
    v33 = *(v0 + 152);
    v30 = *(v0 + 144);
    v32 = *(v0 + 136);
    v4 = v2;
    v5 = [v2 namePrefix];
    sub_1A524C674();

    v6 = [v4 givenName];
    sub_1A524C674();

    v7 = [v4 middleName];
    sub_1A524C674();

    v8 = [v4 familyName];
    sub_1A524C674();

    v9 = [v4 nameSuffix];
    v10 = sub_1A524C674();
    v12 = v11;

    v13 = [v4 nickname];
    v14 = sub_1A524C674();
    v16 = v15;

    (*(v3 + 56))(v30, 1, 1, v33);
    sub_1A52409F4();
    v17 = objc_opt_self();
    v18 = sub_1A5240A04();
    v19 = [v17 localizedStringFromPersonNameComponents:v18 style:2 options:{0, v10, v12, v14, v16, v30}];

    v20 = sub_1A524C674();
    v22 = v21;

    *(v0 + 16) = *(v32 + 8);
    v23 = *(v32 + 24);
    v24 = *(v32 + 8);
    *(v0 + 88) = v20;
    *(v0 + 40) = v24;
    *(v0 + 120) = v23;
    *(v0 + 32) = v23;
    *(v0 + 96) = v22;
    v25 = MEMORY[0x1E69E6158];
    sub_1A4461718(v0 + 40, v0 + 104, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
    sub_1A4461DC8(v0 + 120, v0 + 128, sub_1A4462A0C);
    sub_1A4462A80(0, &qword_1EB13B1E8, MEMORY[0x1E6981790]);
    sub_1A524B6B4();

    sub_1A445E6AC(v0 + 40, &qword_1EB126FA0, v25, MEMORY[0x1E69E6720]);
    sub_1A445F380(v0 + 120, sub_1A4462A0C);
    (*(v29 + 8))(v31, v33);
  }

  v26 = *(v0 + 136);
  *(v0 + 56) = *(v26 + 48);
  *(v0 + 184) = 1;
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  *(v0 + 72) = *(v26 + 32);
  *(v0 + 185) = 0;
  sub_1A524B6B4();

  v27 = *(v0 + 8);

  return v27();
}

void sub_1A4455BD8(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = [a1 fullName];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A524C674();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = [a1 appleID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A524C674();
  }

  else
  {
    v13 = 0;
  }

  sub_1A5249314();
  v16 = 1;
  sub_1A4455F44(a2, a3, v8, v10, v13, &v15);
}

void sub_1A4455F44(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a7@<X8>)
{
  v15[2] = a5;
  v15[8] = a7;
  v11 = sub_1A524B554();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  sub_1A445D28C(0);
  sub_1A524B6A4();
  sub_1A524B524();
  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  v15[9] = sub_1A524B5C4();

  (*(v12 + 8))(v14, v11);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v21) = 1;
  *&v16[3] = v17;
  *&v16[19] = v18;
  *&v16[35] = v19;
  v15[7] = sub_1A5249584();
  v20 = 1;
  v21 = a3;
  v22 = a4;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4456514(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v16 = a3;
    v17 = sub_1A3C56D80();
    (*(v13 + 16))(v15, v17, v12);
    v18 = a3;
    v19 = a4;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v22 = 138412546;
      v24 = [v19 dsid];
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2080;
      v33 = a3;
      v25 = a3;
      sub_1A3C34400(0, &qword_1EB126160, MEMORY[0x1E69E7280]);
      v26 = sub_1A524C714();
      sub_1A3C2EF94(v26, v27, v34);
    }

    (*(v13 + 8))(v15, v12);
  }

  else if (a2 >> 60 != 15)
  {
    v28 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1A3D602A8(a1, a2);
    sub_1A3D602A8(a1, a2);
    v29 = sub_1A5240E84();
    v30 = [v28 initWithData_];

    sub_1A3DB556C(a1, a2);
    if (v30)
    {
      v34[0] = a5;
      v34[1] = a6;
      v33 = v30;
      sub_1A445D28C(0);
      v31 = a5;

      sub_1A524B6B4();
      sub_1A3DB556C(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1A445687C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1A5240EA4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_1A3DB556C(v6, v10);

  return result;
}

__n128 sub_1A4456944@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A445D630(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  sub_1A445D6C4(0, &qword_1EB13ADD0, sub_1A445D738, sub_1A3E42C88);
  sub_1A445D864();
  v14 = a1;

  swift_unknownObjectRetain();
  sub_1A524B704();
  sub_1A524BC74();
  sub_1A5248AD4();
  (*(v10 + 32))(a4, v12, v9);
  sub_1A445DB34(0);
  v16 = a4 + *(v15 + 36);
  v17 = v20[5];
  *(v16 + 64) = v20[4];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[6];
  v18 = v20[1];
  *v16 = v20[0];
  *(v16 + 16) = v18;
  result = v20[3];
  *(v16 + 32) = v20[2];
  *(v16 + 48) = result;
  return result;
}

void sub_1A4456B60()
{
  sub_1A5249314();
  sub_1A3C38BD4(0xD000000000000025);
  sub_1A3D5F9DC();
  v2 = sub_1A524A464();
  sub_1A3E75E68(v2, v4, v3 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4456D9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  sub_1A445DC40(0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v41 - v6;
  v8 = *(a1 + 8);
  v48 = *a1;
  v9 = v48;
  v49 = v8;
  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v41[2] = v10;
  v11 = sub_1A524B6A4();
  v12 = v50;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v50) + 0x2B0))(v11);

  v48 = v13;
  v41[1] = swift_getKeyPath();
  v50 = v8;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  v18 = v9;
  swift_unknownObjectRetain();
  sub_1A4462940(&v50, &v47, &qword_1EB13AE38, sub_1A445DB70, MEMORY[0x1E69E6720]);
  sub_1A3DA3304(0);
  sub_1A445DD08(0);
  sub_1A445D81C(&qword_1EB13AED0, sub_1A3DA3304, MEMORY[0x1E69E6338]);
  sub_1A445D9B8(&qword_1EB13B1B8, sub_1A445DD08, sub_1A44623C4);
  v41[0] = v15;
  v42 = v7;
  v19 = v18;
  sub_1A524B9B4();
  v48 = v18;
  v49 = v8;
  v20 = sub_1A524B6A4();
  v21 = v47;
  v22 = (*((*MEMORY[0x1E69E7D40] & *v47) + 0x2B0))(v20);

  if (!v15)
  {

LABEL_7:
    v48 = v19;
    v49 = v8;
    sub_1A524B6A4();
    type metadata accessor for SharedAlbumActionViewModel(0);
    swift_unknownObjectRetain();
    sub_1A524B694();
    v26 = v48;
    v27 = v49;

    swift_unknownObjectRetain();
    v28 = v26;
    goto LABEL_8;
  }

  if (v22 >> 62)
  {
    v23 = sub_1A524E2B4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v41[0];

  CanAddParticipants = PXSharedAlbumsCanAddParticipants(v24, v23);

  if (CanAddParticipants)
  {
    goto LABEL_7;
  }

  v26 = 0;
  v27 = 0;
  v14 = 0;
LABEL_8:
  v30 = v44;
  v29 = v45;
  v31 = *(v45 + 16);
  v32 = v42;
  v33 = v46;
  v31(v44, v42, v46);
  v34 = v43;
  v31(v43, v30, v33);
  sub_1A445DBAC(0);
  v36 = &v34[*(v35 + 48)];
  sub_1A4462474(v26, v27, v14);
  v37 = sub_1A44624CC(v26, v27, v14);
  *v36 = v26;
  *(v36 + 1) = v27;
  *(v36 + 2) = v14;
  v38 = *(v29 + 8);
  v38(v32, v33, v37);
  v39 = sub_1A44624CC(v26, v27, v14);
  return (v38)(v30, v33, v39);
}

void sub_1A445727C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayAddress];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

double sub_1A44572D4@<D0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v96 = a3;
  sub_1A445DDD0(0, a4);
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445DD44(0, v7);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445DD08(0);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445E0E8(0);
  v85 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44550B4(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v78 - v16;
  v80 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  MEMORY[0x1EEE9AC00](v80);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445FD48(0, &unk_1EB13AE90, type metadata accessor for SharedAlbumSubscriberDetailsView, sub_1A445E0B4, MEMORY[0x1E697D438]);
  v84 = v20;
  v82 = *(v20 - 1);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v78 - v22;
  sub_1A445DF5C(0, v21);
  v87 = v23;
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v97 = a2;
  v98 = &v78 - v26;
  v27 = *a1;
  v28 = a2[1];
  v102 = *a2;
  v29 = v102;
  v103 = v28;
  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v88 = v29;
  v106 = v29;
  v107 = v28;
  v86 = v28;
  v30 = v27;
  sub_1A524B6C4();
  v31 = v102;
  v32 = v103;
  v33 = v104;
  swift_getKeyPath();
  v102 = v31;
  v103 = v32;
  v104 = v33;
  sub_1A44550B4(0, &qword_1EB13E370, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v34 = v106;
  v35 = v107;
  v36 = v108;

  sub_1A4050694();
  v99 = v30;
  v37 = v36;
  v38 = v79;
  sub_1A405071C(v17, v30, v34, v35, v37, v19);
  LODWORD(v31) = *(v97 + 32);
  v39 = v80;
  v40 = sub_1A445E0B4();
  sub_1A524AF24();
  sub_1A445F380(v19, type metadata accessor for SharedAlbumSubscriberDetailsView);
  if (v31 == 1)
  {
    v41 = v81;
    sub_1A524B704();
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v81;
  }

  sub_1A4462B04(0, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
  (*(*(v43 - 8) + 56))(v41, v42, 1, v43);
  v102 = v39;
  v103 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_1A445E56C(&unk_1EB13AEB0, sub_1A445E0E8, sub_1A445E16C, MEMORY[0x1E6982090]);
  v46 = v98;
  v47 = v84;
  v48 = v85;
  sub_1A524ACD4();
  sub_1A445F380(v41, sub_1A445E0E8);
  (*(v82 + 8))(v38, v47);
  v49 = v87;
  v50 = (*(v100 + 16))(v83, v46, v87);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v99;
  *(&v78 - 2) = v99;
  sub_1A445E1F0();
  v102 = v47;
  v103 = v48;
  v104 = OpaqueTypeConformance2;
  v105 = v45;
  swift_getOpaqueTypeConformance2();
  v52 = v90;
  sub_1A5248444();
  v53 = [v51 displayAddress];
  v54 = sub_1A524C674();
  v56 = v55;

  v57 = [v51 invalidAddressString];
  if (v57)
  {
    v58 = v57;
    v59 = sub_1A524C674();
    v61 = v60;

    if (v54 == v59 && v56 == v61)
    {
      v62 = 1;
    }

    else
    {
      v62 = sub_1A524EAB4();
    }
  }

  else
  {
    v62 = 0;
  }

  KeyPath = swift_getKeyPath();
  v64 = swift_allocObject();
  *(v64 + 16) = v62 & 1;
  v65 = v95;
  (*(v91 + 32))(v95, v52, v92);
  v66 = &v65[*(v89 + 36)];
  *v66 = KeyPath;
  v66[1] = sub_1A3E07024;
  v66[2] = v64;
  v67 = sub_1A5249564();
  (*(v100 + 8))(v98, v49);
  v102 = v86;
  v68 = v97;
  v106 = v97[2];
  v69 = swift_allocObject();
  v70 = v99;
  *(v69 + 16) = v99;
  v71 = *(v68 + 1);
  *(v69 + 24) = *v68;
  *(v69 + 40) = v71;
  *(v69 + 56) = *(v68 + 32);
  v72 = v65;
  v73 = v93;
  sub_1A44627D0(v72, v93, sub_1A445DD44);
  v74 = (v73 + *(v94 + 36));
  *v74 = v67;
  v74[1] = sub_1A4462560;
  v74[2] = v69;
  sub_1A44627D0(v73, v96, sub_1A445DD08);
  v75 = v70;
  v76 = v88;
  sub_1A4462940(&v102, v101, &qword_1EB13AE38, sub_1A445DB70, MEMORY[0x1E69E6720]);
  sub_1A4461DC8(&v106, v101, sub_1A4462838);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A4457D38@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharingDisplayNameIncludingEmail:1 allowsEmail:1];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A524C674();
    v6 = v5;

    v7 = sub_1A524C634();
    v8 = PXLocalizedString(v7);

    sub_1A524C674();
    sub_1A3E072BC(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A52F8E10;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1A3D710E8();
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    v10 = sub_1A524C6C4();
    v12 = v11;

    *&v29 = v10;
    *(&v29 + 1) = v12;
  }

  else
  {
    v23 = sub_1A524C634();
    v24 = PXLocalizedString(v23);

    v25 = sub_1A524C674();
    v27 = v26;

    *&v29 = v25;
    *(&v29 + 1) = v27;
  }

  sub_1A3D5F9DC();
  v13 = sub_1A524A464();
  v15 = v14;
  v17 = v16;
  sub_1A524A254();
  v18 = sub_1A524A3C4();
  v20 = v19;
  v22 = v21;

  sub_1A3E04DF4(v13, v15, v17 & 1);

  sub_1A524B334();
  sub_1A524A364();

  sub_1A3E04DF4(v18, v20, v22 & 1);

  sub_1A5249744();
  result = *&v29;
  *a1 = v29;
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  return result;
}

uint64_t sub_1A4458094()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [objc_opt_self() sharedAlbumIsOwned_];
  }

  sub_1A44550B4(0, &qword_1EB13AE48, sub_1A445DBAC, MEMORY[0x1E6981F40]);
  sub_1A3C39938(0, &qword_1EB13AEE0, &type metadata for SubscribersSection.creatorInvitationInfo, MEMORY[0x1E69E6720]);
  sub_1A445E244();
  sub_1A445E2CC();
  return sub_1A524BA44();
}

void sub_1A44581CC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A445E49C(0);
  sub_1A445D81C(&qword_1EB13AF18, sub_1A445E49C, MEMORY[0x1E69E6338]);
  sub_1A445E504();
  sub_1A445E5DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44582C0(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A524C634();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
    sub_1A524B694();
    *a2 = v3;
    a2[1] = v6;
    a2[2] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A445838C()
{
  sub_1A3C38BD4(0xD00000000000002BLL);
  sub_1A3D5F9DC();
  sub_1A524DFA4();

  sub_1A524A464();
  sub_1A445E3C4(0);
  sub_1A445E56C(&qword_1EB13AF28, sub_1A445E3C4, sub_1A445E5DC, MEMORY[0x1E69819D0]);
  return sub_1A524BA34();
}

uint64_t sub_1A44584D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  sub_1A3EE53E0(0);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445D774(0, &qword_1EB13AF38, sub_1A445E8E4, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  sub_1A445EAE8(0);
  v10 = v9;
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445EC9C(0);
  v59 = v13;
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445EF80(0);
  v62 = v15;
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445F0A8(0);
  v64 = v17;
  v65 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v2;
  *&v68 = sub_1A3C38BD4(0xD000000000000027);
  *(&v68 + 1) = v19;
  sub_1A3D5F9DC();
  *&v68 = sub_1A524A464();
  *(&v68 + 1) = v20;
  LOBYTE(v69) = v21 & 1;
  v70 = v22;
  sub_1A445A7D0(v2, v8);
  sub_1A44550B4(0, &qword_1EB13AF70, sub_1A445EBC8, MEMORY[0x1E6981F40]);
  sub_1A445EE10();
  sub_1A445EE98();
  sub_1A524BA44();
  v72 = *(v2 + 8);
  v68 = *(v2 + 8);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v23 = sub_1A524B6A4();
  (*(*v71 + 360))(v23);

  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = *(v2 + 80);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_1A445F348(v2, &v68);
  v27 = sub_1A445ED84();
  v28 = sub_1A445E56C(&unk_1EB13AFD0, sub_1A3EE53E0, sub_1A4397634, MEMORY[0x1E69E7C80]);
  v29 = v58;
  sub_1A524B144();

  sub_1A445F380(v5, sub_1A3EE53E0);
  (*(v56 + 8))(v12, v10);
  v68 = v72;
  v30 = sub_1A524B6A4();
  LOBYTE(v5) = (*(*v71 + 312))(v30);

  LOBYTE(v71) = v5 & 1;
  v31 = swift_allocObject();
  v32 = *(v2 + 48);
  *(v31 + 48) = *(v2 + 32);
  *(v31 + 64) = v32;
  *(v31 + 80) = *(v2 + 64);
  *(v31 + 96) = *(v2 + 80);
  v33 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v33;
  sub_1A445F348(v2, &v68);
  *&v68 = v10;
  *(&v68 + 1) = v29;
  v69 = v27;
  v70 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x1E69E6370];
  v36 = MEMORY[0x1E69E6388];
  v37 = v57;
  v38 = v59;
  v39 = v55;
  sub_1A524B144();

  v40 = v38;
  (*(v60 + 8))(v39, v38);
  v68 = v72;
  v41 = sub_1A524B6A4();
  LOBYTE(v38) = (*(*v71 + 408))(v41);

  LOBYTE(v71) = v38 & 1;
  v42 = swift_allocObject();
  v43 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = *(v2 + 80);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  sub_1A445F348(v2, &v68);
  *&v68 = v40;
  *(&v68 + 1) = v35;
  v69 = OpaqueTypeConformance2;
  v70 = v36;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v61;
  v47 = v62;
  sub_1A524B144();

  (*(v63 + 8))(v37, v47);
  v68 = v72;
  v48 = sub_1A524B6A4();
  v49 = (*(*v71 + 456))(v48);

  LOBYTE(v71) = v49 & 1;
  v50 = swift_allocObject();
  v51 = *(v2 + 48);
  *(v50 + 48) = *(v2 + 32);
  *(v50 + 64) = v51;
  *(v50 + 80) = *(v2 + 64);
  *(v50 + 96) = *(v2 + 80);
  v52 = *(v2 + 16);
  *(v50 + 16) = *v2;
  *(v50 + 32) = v52;
  sub_1A445F348(v2, &v68);
  *&v68 = v47;
  *(&v68 + 1) = v35;
  v69 = v45;
  v70 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v53 = v64;
  sub_1A524B144();

  return (*(v65 + 8))(v46, v53);
}

uint64_t sub_1A4458E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  sub_1A3FF75A0(0);
  v100 = v3;
  v98 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1A44550B4(0, &unk_1EB13AF90, sub_1A3FF75A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v89 - v11;
  sub_1A4462B04(0, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v13 = v12;
  v104 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v89 - v14;
  sub_1A3FF705C(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44550B4(0, &unk_1EB13AF80, sub_1A3FF705C, v7);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v89 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v89 - v32;
  v34 = objc_opt_self();
  v115 = *(a1 + 8);
  v111 = *(a1 + 8);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v103 = v35;
  v36 = sub_1A524B6A4();
  v37 = (*(*v114 + 216))(v36);

  v105 = v34;
  v38 = [v34 canSetMultipleContributorsEnabledForSharedAlbum_];

  v106 = v33;
  v94 = v13;
  v92 = v20;
  if (v38)
  {
    *&v113 = sub_1A3C38BD4(0xD000000000000034);
    *(&v113 + 1) = v39;
    v114 = *(a1 + 24);
    v112 = *(a1 + 24);
    sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    sub_1A3D5F9DC();
    v33 = v106;
    sub_1A524B864();
    v111 = v114;
    sub_1A524B6A4();
    v40 = swift_allocObject();
    v41 = *(a1 + 48);
    *(v40 + 48) = *(a1 + 32);
    *(v40 + 64) = v41;
    *(v40 + 80) = *(a1 + 64);
    *(v40 + 96) = *(a1 + 80);
    v42 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v42;
    sub_1A445F348(a1, &v111);
    sub_1A3FF7120();
    sub_1A524B144();

    (*(v104 + 8))(v15, v13);
    (*(v18 + 32))(v33, v20, v17);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v93 = v18;
  v44 = *(v18 + 56);
  v45 = 1;
  v44(v33, v43, 1, v17);
  v111 = v115;
  v46 = sub_1A524B6A4();
  v47 = (*(*v113 + 216))(v46);

  v48 = [v105 canSetNotificationsEnabledForSharedAlbum_];

  if (v48)
  {
    *&v112 = sub_1A3C38BD4(0xD000000000000029);
    *(&v112 + 1) = v49;
    v113 = *(a1 + 40);
    v110 = *(a1 + 40);
    sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    sub_1A3D5F9DC();
    sub_1A524B864();
    v111 = v113;
    sub_1A524B6A4();
    v50 = swift_allocObject();
    v51 = *(a1 + 48);
    *(v50 + 48) = *(a1 + 32);
    *(v50 + 64) = v51;
    *(v50 + 80) = *(a1 + 64);
    *(v50 + 96) = *(a1 + 80);
    v52 = *(a1 + 16);
    *(v50 + 16) = *a1;
    *(v50 + 32) = v52;
    sub_1A445F348(a1, &v111);
    sub_1A3FF7120();
    v53 = v92;
    v54 = v94;
    sub_1A524B144();

    (*(v104 + 8))(v15, v54);
    (*(v93 + 32))(v108, v53, v17);
    v45 = 0;
  }

  v55 = 1;
  v44(v108, v45, 1, v17);
  v111 = v115;
  v56 = sub_1A524B6A4();
  v57 = (*(*v112 + 216))(v56);

  v58 = [v105 canSetPublicURLEnabledForSharedAlbum_];

  if (v58)
  {
    *&v110 = sub_1A3C38BD4(0xD000000000000029);
    *(&v110 + 1) = v59;
    v112 = *(a1 + 56);
    v109 = *(a1 + 56);
    sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    sub_1A3D5F9DC();
    sub_1A524B864();
    v111 = v112;
    sub_1A524B6A4();
    v60 = swift_allocObject();
    v61 = *(a1 + 48);
    *(v60 + 48) = *(a1 + 32);
    *(v60 + 64) = v61;
    *(v60 + 80) = *(a1 + 64);
    *(v60 + 96) = *(a1 + 80);
    v62 = *(a1 + 16);
    *(v60 + 16) = *a1;
    *(v60 + 32) = v62;
    sub_1A445F348(a1, &v111);
    sub_1A3FF7120();
    v63 = v92;
    v64 = v94;
    sub_1A524B144();

    (*(v104 + 8))(v15, v64);
    (*(v93 + 32))(v107, v63, v17);
    v55 = 0;
  }

  v65 = 1;
  v44(v107, v55, 1, v17);
  v111 = v115;
  v66 = sub_1A524B6A4();
  v67 = (*(*v110 + 312))(v66);

  v68 = v100;
  v69 = v99;
  v70 = v98;
  if (v67)
  {
    v111 = v115;
    v71 = sub_1A524B6A4();
    v72 = v91;
    (*(*v110 + 360))(v71);

    v73 = sub_1A5240E64();
    v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
    sub_1A445F380(v72, sub_1A3EE53E0);
    if (v74 != 1)
    {
      v75 = swift_allocObject();
      v76 = *(a1 + 48);
      *(v75 + 48) = *(a1 + 32);
      *(v75 + 64) = v76;
      *(v75 + 80) = *(a1 + 64);
      *(v75 + 96) = *(a1 + 80);
      v77 = *(a1 + 16);
      *(v75 + 16) = *a1;
      *(v75 + 32) = v77;
      sub_1A445F348(a1, &v111);
      sub_1A3FF7634(0);
      sub_1A445D81C(&qword_1EB13AFA0, sub_1A3FF7634, MEMORY[0x1E69817F8]);
      v78 = v90;
      sub_1A524B704();
      (*(v70 + 32))(v69, v78, v68);
      v65 = 0;
    }
  }

  (*(v70 + 56))(v69, v65, 1, v68);
  v79 = v95;
  sub_1A3CFE47C(v106, v95);
  v80 = v96;
  sub_1A3CFE47C(v108, v96);
  v81 = v107;
  v82 = v97;
  sub_1A3CFE47C(v107, v97);
  v83 = MEMORY[0x1E69E6720];
  v84 = v101;
  sub_1A4462940(v69, v101, &unk_1EB13AF90, sub_1A3FF75A0, MEMORY[0x1E69E6720]);
  v85 = v102;
  sub_1A3CFE47C(v79, v102);
  sub_1A445EBC8(0);
  v87 = v86;
  sub_1A3CFE47C(v80, v85 + *(v86 + 48));
  sub_1A3CFE47C(v82, v85 + *(v87 + 64));
  sub_1A4462940(v84, v85 + *(v87 + 80), &unk_1EB13AF90, sub_1A3FF75A0, v83);
  sub_1A44629B0(v69, &unk_1EB13AF90, sub_1A3FF75A0, v83);
  sub_1A3CFE510(v81);
  sub_1A3CFE510(v108);
  sub_1A3CFE510(v106);
  sub_1A44629B0(v84, &unk_1EB13AF90, sub_1A3FF75A0, v83);
  sub_1A3CFE510(v82);
  sub_1A3CFE510(v80);
  return sub_1A3CFE510(v79);
}

void sub_1A4459DB8(char a1, uint64_t a2, const char *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v10 = sub_1A3C56D80();
    (*(v7 + 16))(v9, v10, v6);
    sub_1A445F348(a2, v23);
    v11 = sub_1A5246F04();
    v12 = sub_1A524D264();
    sub_1A44622F4(a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21[1] = a3;
      v14 = v13;
      v22 = swift_slowAlloc();
      *v14 = 136446210;
      v23[0] = *(a2 + 8);
      sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
      v15 = sub_1A524B6A4();
      v16 = (*(*v21[2] + 216))(v15);

      v17 = [v16 uuid];

      v18 = sub_1A524C674();
      v20 = v19;

      sub_1A3C2EF94(v18, v20, &v22);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1A445A04C()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v0 + 8);
  aBlock = *(v0 + 8);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v13 = sub_1A524B6A4();
  (*(*v40 + 360))(v13);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A445F380(v8, sub_1A3EE53E0);
    v14 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v14, v2);
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "Share Link: Cannot display share sheet, publicURL is nil.", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    aBlock = v41;
    v19 = sub_1A524B6A4();
    v20 = (*(*v40 + 216))(v19);

    v21 = [objc_allocWithZone(PXSharedAlbumPublicURLActivityItemSource) initWithSharedAlbum_];

    v22 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
    aBlock = v41;
    v23 = sub_1A524B6A4();
    v24 = (*(*v40 + 216))(v23);

    v25 = [v24 localizedTitle];

    if (v25)
    {
      sub_1A524C674();
    }

    v26 = sub_1A524C634();

    [v22 setTitle_];

    v27 = sub_1A5240D44();
    [v22 setOriginalURL_];

    sub_1A3C39938(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1A52F8E10;
    *(v28 + 56) = sub_1A3C52C70(0, &qword_1EB13B1B0, off_1E771F6A0);
    *(v28 + 32) = v21;
    v29 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v30 = v21;
    v31 = sub_1A524CA14();

    v32 = [v29 initWithActivityItems:v31 applicationActivities:0];

    [v32 setPhotosHeaderMetadata_];
    [v32 setShowKeyboardAutomatically_];
    [v32 setAllowsCustomPresentationStyle_];
    [v32 setModalPresentationStyle_];
    v33 = *v1;
    v38 = PXDisplayCollectionDetailedCountsMake;
    v39 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v36 = sub_1A3C2E0D0;
    v37 = &block_descriptor_128_0;
    v34 = _Block_copy(&aBlock);
    [v33 presentViewController:v32 animated:1 completionHandler:v34];
    _Block_release(v34);

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1A445A6A8()
{
  sub_1A5249314();
  v2 = sub_1A524C634();
  v3 = PLServicesLocalizedFrameworkString();

  if (v3)
  {
    sub_1A524C674();

    sub_1A3D5F9DC();
    v4 = sub_1A524A464();
    sub_1A3E75E68(v4, v6, v5 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

uint64_t sub_1A445A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A445D774(0, &qword_1EB13B198, sub_1A445E8E4, MEMORY[0x1E6981148], MEMORY[0x1E697F948]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - v6;
  sub_1A445E8E4(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 72);
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v34 == 1)
  {
    *v11 = sub_1A5249314();
    *(v11 + 1) = 0;
    v11[16] = 1;
    sub_1A4461D4C(0, &unk_1EB13B1A0, &qword_1EB13AF48, sub_1A445E978);
    sub_1A445AB70(&v11[*(v12 + 44)]);
    sub_1A4461DC8(v11, v7, sub_1A445E8E4);
    swift_storeEnumTagMultiPayload();
    sub_1A445D81C(&qword_1EB13AFC8, sub_1A445E8E4, MEMORY[0x1E69817F8]);
    sub_1A5249744();
    return sub_1A445F380(v11, sub_1A445E8E4);
  }

  else
  {
    sub_1A445AFD4();
    *&v35 = v14;
    *(&v35 + 1) = v15;
    sub_1A3D5F9DC();
    v16 = sub_1A524A464();
    v18 = v17;
    v20 = v19;
    sub_1A524A254();
    v21 = sub_1A524A3C4();
    v33[2] = a2;
    v33[3] = v9;
    v23 = v22;
    v25 = v24;
    v33[1] = v5;

    sub_1A3E04DF4(v16, v18, v20 & 1);

    sub_1A524B3D4();
    v26 = sub_1A524A364();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_1A3E04DF4(v21, v23, v25 & 1);

    *v7 = v26;
    *(v7 + 1) = v28;
    v7[16] = v30 & 1;
    *(v7 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_1A445D81C(&qword_1EB13AFC8, sub_1A445E8E4, MEMORY[0x1E69817F8]);
    return sub_1A5249744();
  }
}

uint64_t sub_1A445AB70@<X0>(uint64_t a1@<X8>)
{
  sub_1A445E9E4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  sub_1A445AD10();
  v22 = v10;
  v23 = v11;
  sub_1A3D5F9DC();
  sub_1A5248084();
  LOBYTE(v22) = 1;
  v12 = *(v4 + 16);
  v12(v6, v9, v3);
  v21 = 1;
  v13 = v22;
  *a1 = 0;
  *(a1 + 8) = v13;
  sub_1A445E978(0);
  v15 = v14;
  v12((a1 + *(v14 + 48)), v6, v3);
  v16 = a1 + *(v15 + 64);
  v17 = v21;
  *v16 = 0;
  *(v16 + 8) = v17;
  v18 = *(v4 + 8);
  v18(v9, v3);
  return (v18)(v6, v3);
}

void sub_1A445AD10()
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 8);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v4 = sub_1A524B6A4();
  (*(*v12 + 360))(v4);

  v12 = *(v0 + 56);
  v13 = v12;
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v11 == 1)
  {
    v5 = sub_1A5240E64();
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
    {
      v6 = sub_1A524C634();
      v7 = PLServicesLocalizedFrameworkString();

      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }
  }

  v12 = v13;
  sub_1A524B6A4();
  if (v11)
  {
    goto LABEL_10;
  }

  v8 = sub_1A5240E64();
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    goto LABEL_10;
  }

  v9 = sub_1A524C634();
  v7 = PLServicesLocalizedFrameworkString();

  if (v7)
  {
LABEL_9:
    sub_1A524C674();

LABEL_10:
    sub_1A445F380(v3, sub_1A3EE53E0);
    return;
  }

  __break(1u);
}

void sub_1A445AFD4()
{
  v1 = v0;
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = objc_opt_self();
  v49 = *(v0 + 8);
  v50 = v49;
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v15 = sub_1A524B6A4();
  v16 = (*(*v48 + 216))(v15);

  v17 = [v14 sharedAlbumIsAppleFamily_];

  if ((v17 & 1) == 0)
  {
    v49 = v50;
    v18 = sub_1A524B6A4();
    v19 = (*(*v48 + 216))(v18);

    v20 = [v14 sharedAlbumIsOwned_];

    if (v20)
    {
      v49 = *(v1 + 56);
      sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      if (v48 != 1 || (v49 = v50, v21 = sub_1A524B6A4(), (*(*v48 + 360))(v21), , v22 = sub_1A5240E64(), v23 = *(v22 - 8), v24 = *(v23 + 48), v25 = v24(v13, 1, v22), sub_1A445F380(v13, sub_1A3EE53E0), v25 == 1))
      {
        v26 = sub_1A524C634();
        v27 = PLServicesLocalizedFrameworkString();

        if (v27)
        {
          sub_1A524C674();

          return;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v39 = sub_1A524C634();
      v40 = PLServicesLocalizedFrameworkString();

      if (!v40)
      {
LABEL_22:
        __break(1u);
        return;
      }

      sub_1A524C674();

      v49 = v50;
      v41 = sub_1A524B6A4();
      (*(*v48 + 360))(v41);

      if (v24(v10, 1, v22) != 1)
      {
        v42 = sub_1A5240CD4();
        v43 = v45;
        (*(v23 + 8))(v10, v22);
        goto LABEL_19;
      }

      v38 = v10;
    }

    else
    {
      v49 = v50;
      v28 = sub_1A524B6A4();
      v29 = (*(*v48 + 312))(v28);

      if ((v29 & 1) == 0)
      {
        return;
      }

      v49 = v50;
      v30 = sub_1A524B6A4();
      (*(*v48 + 360))(v30);

      v31 = sub_1A5240E64();
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      v34 = v33(v7, 1, v31);
      sub_1A445F380(v7, sub_1A3EE53E0);
      if (v34 == 1)
      {
        return;
      }

      v35 = sub_1A524C634();
      v36 = PLServicesLocalizedFrameworkString();

      if (!v36)
      {
        goto LABEL_21;
      }

      sub_1A524C674();

      v49 = v50;
      v37 = sub_1A524B6A4();
      (*(*v48 + 360))(v37);

      if (v33(v4, 1, v31) != 1)
      {
        v42 = sub_1A5240CD4();
        v43 = v44;
        (*(v32 + 8))(v4, v31);
        goto LABEL_19;
      }

      v38 = v4;
    }

    sub_1A445F380(v38, sub_1A3EE53E0);
    v42 = 0;
    v43 = 0xE000000000000000;
LABEL_19:
    sub_1A3E072BC(0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1A52F8E10;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1A3D710E8();
    *(v46 + 32) = v42;
    *(v46 + 40) = v43;
    sub_1A524C6C4();
  }
}

uint64_t sub_1A445B7A0()
{
  sub_1A4460980(0, &qword_1EB130160, sub_1A3FF746C, MEMORY[0x1E6981E70]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v21 - v4;
  sub_1A4460A88(0, &unk_1EB13B020, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = [objc_opt_self() sharedAlbumIsAppleFamily_];
  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    sub_1A3FF8B58(v10);
    return sub_1A5249744();
  }

  else
  {
    v21[3] = v21;
    MEMORY[0x1EEE9AC00](v9);
    v21[2] = &v21[-4];
    v21[-2] = v0;
    sub_1A3FF746C(0);
    v21[1] = v12;
    sub_1A3FF75A0(255);
    v14 = v13;
    sub_1A44550B4(255, &unk_1EB121030, sub_1A3FF7794, MEMORY[0x1E6981F40]);
    v16 = v15;
    v17 = sub_1A445D81C(&unk_1EB13B010, sub_1A3FF75A0, MEMORY[0x1E697D680]);
    v18 = sub_1A3D5F9DC();
    v19 = sub_1A445FA54();
    v21[4] = v14;
    v21[5] = MEMORY[0x1E69E6158];
    v21[6] = v16;
    v21[7] = MEMORY[0x1E6981148];
    v21[8] = v17;
    v21[9] = v18;
    v21[10] = v19;
    v21[11] = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_1A524BA54();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1A3FF8B58(v20);
    sub_1A5249744();
    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1A445BAF0(uint64_t a1)
{
  sub_1A3FF75A0(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = swift_allocObject();
  v5 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = *(a1 + 112);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  v7 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v7;
  sub_1A4461A60(a1, v8);
  sub_1A3FF7634(0);
  sub_1A445D81C(&qword_1EB13AFA0, sub_1A3FF7634, MEMORY[0x1E69817F8]);
  sub_1A524B704();
  *&v8[120] = *(a1 + 56);
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A445BE24(uint64_t a1@<X0>, char *a2@<X8>)
{
  v12[3] = a2;
  sub_1A44550B4(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A4462B04(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  MEMORY[0x1EEE9AC00](v4);
  v12[2] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v12[1] = v12 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v12[0] = v12 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v11 = *(a1 + 96);
  v12[19] = *(a1 + 88);
  v12[20] = v11;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A445C20C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *v24 = *a3;
    sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    v10 = sub_1A524B6A4();
    v11 = v23;
    (*((*MEMORY[0x1E69E7D40] & *v23) + 0x148))(v10);

    v12 = sub_1A4654ADC();

    if (v12)
    {
      [v12 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v13 = sub_1A3C56D80();
    (*(v7 + 16))(v9, v13, v6);
    sub_1A4461A60(a3, v24);
    v14 = a2;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();
    sub_1A4461D1C(a3);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v17 = 136446466;
      v18 = [*(a3 + 16) uuid];
      v19 = sub_1A524C674();
      v21 = v20;

      sub_1A3C2EF94(v19, v21, v24);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_1A445C5CC(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A445FAE4(0);
  sub_1A524B694();
  type metadata accessor for SharedAlbumActionViewModel(0);
  v7 = a1;
  sub_1A524B694();
  *a4 = v8;

  sub_1A524B694();

  *(a4 + 16) = v8;
  *(a4 + 32) = a3;
  sub_1A445E49C(0);
  sub_1A524B694();

  *(a4 + 40) = v8;
}

void SharedAlbumSettingsView.body.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v3;
  v15[2] = *(v1 + 32);
  v16 = *(v1 + 48);
  v17 = v3;
  sub_1A44550B4(0, &qword_1EB13B038, sub_1A445FAE4, MEMORY[0x1E6981790]);
  v4 = sub_1A524B6A4();
  v5 = v14;
  if (v14)
  {

    sub_1A524B6A4();
    v6 = objc_opt_self();
    v7 = (*(*v14 + 216))();

    v5 = [v6 sharedAlbumIsAppleFamily_];
  }

  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A445FB18(0);
  v9 = sub_1A445C880(v15, v5, a1 + *(v8 + 44));
  v10 = sub_1A478C2E4(v9);
  v11 = sub_1A524A064();
  sub_1A4460168(0);
  v13 = a1 + *(v12 + 36);
  *v13 = v10;
  *(v13 + 8) = v11;
}

uint64_t sub_1A445C880@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a3;
  sub_1A445FE78(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445FDD4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = MEMORY[0x1E697CF38];
  sub_1A445FD48(0, &qword_1EB13B070, sub_1A445FDD4, sub_1A44600B8, MEMORY[0x1E697CF38]);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - v16;
  sub_1A445FC18(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v42 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v39 - v22;
  v44 = a1;
  v45 = a2;
  sub_1A44550B4(0, &qword_1EB13B090, sub_1A445FF0C, MEMORY[0x1E6981F40]);
  sub_1A445FFFC();
  sub_1A524A294();
  sub_1A4460084();
  sub_1A524ADD4();
  (*(v7 + 8))(v9, v6);
  LOBYTE(v9) = sub_1A524A054();
  sub_1A478C2D8();
  sub_1A5247BC4();
  v24 = &v13[*(v11 + 36)];
  *v24 = v9;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = sub_1A44600B8();
  sub_1A524AB34();
  sub_1A4461448(v13, sub_1A445FDD4);
  v46[0] = v11;
  v46[1] = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  sub_1A524AEB4();
  (*(v41 + 8))(v17, v30);
  v31 = swift_allocObject();
  v32 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(a1 + 32);
  *(v31 + 64) = *(a1 + 48);
  v33 = &v23[*(v19 + 44)];
  *v33 = sub_1A4461300;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v42;
  sub_1A3CFE3A4(v23, v42);
  v35 = v43;
  sub_1A3CFE3A4(v34, v43);
  sub_1A445FBB0(0);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_1A4461410(a1, v46);
  sub_1A4461448(v23, sub_1A445FC18);
  return sub_1A4461448(v34, sub_1A445FC18);
}

uint64_t sub_1A445CCCC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BEE4();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = sub_1A3C56D80();
    (*(v7 + 16))(v9, v17, v6);
    v18 = a2;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v21 = 136315138;
      aBlock[0] = a2;
      v22 = a2;
      sub_1A421A438(0);
      v23 = sub_1A524C714();
      sub_1A3C2EF94(v23, v24, v33);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v26 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v27 = sub_1A524D474();
    v28 = swift_allocObject();
    v29 = *(a3 + 16);
    *(v28 + 16) = *a3;
    *(v28 + 32) = v29;
    *(v28 + 48) = *(a3 + 32);
    *(v28 + 64) = *(a3 + 48);
    *(v28 + 72) = a1;
    aBlock[4] = sub_1A4461518;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_89_1;
    v30 = _Block_copy(aBlock);
    sub_1A4461410(a3, v33);
    v31 = a1;

    sub_1A524BF14();
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_1A445D81C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A44550B4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v16, v12, v30);
    _Block_release(v30);

    (*(v32 + 8))(v12, v10);
    return (*(v26 + 8))(v16, v13);
  }
}

__n128 sub_1A445D184@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C39938(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  *a2 = a1;
  result = v5;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5.n128_u8[0];
  *(a2 + 33) = v5.n128_u32[0];
  *(a2 + 36) = *(v5.n128_u32 + 3);
  *(a2 + 40) = v5.n128_u64[1];
  *(a2 + 48) = v5.n128_u8[0];
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  *(a2 + 56) = v5.n128_u64[1];
  return result;
}

void sub_1A445D28C(uint64_t a1)
{
  if (!qword_1EB134470)
  {
    sub_1A3C52C70(255, &qword_1EB126630, 0x1E69DCAB8);
    v1 = sub_1A524B6D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134470);
    }
  }
}

void sub_1A445D2F4(uint64_t a1)
{
  if (!qword_1EB13AD98)
  {
    sub_1A445D36C(255);
    sub_1A40745F4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13AD98);
    }
  }
}

void sub_1A445D36C(uint64_t a1)
{
  if (!qword_1EB13ADA0)
  {
    sub_1A445D6C4(255, &qword_1EB13ADA8, sub_1A445D3FC, sub_1A3FA95D4);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ADA0);
    }
  }
}

void sub_1A445D3FC(uint64_t a1)
{
  if (!qword_1EB13ADB0)
  {
    sub_1A4462B04(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ADB0);
    }
  }
}

void sub_1A445D488()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [v1 dsid];
  v5 = [objc_allocWithZone(MEMORY[0x1E699C078]) initWithFamilyMemberDSID:v4 size:1 localFallback:1];

  if (v5)
  {
    v6 = [v1 fullName];
    [v5 setFullname_];

    [v5 setUseMonogramAsLastResort_];
    [v5 setMonogramDiameter_];
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v1;
    v7[4] = v2;
    v7[5] = v3;
    v11[4] = sub_1A44628A0;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A445687C;
    v11[3] = &block_descriptor_149;
    v8 = _Block_copy(v11);

    v9 = v1;
    v10 = v2;

    [v5 startRequestWithCompletionHandler_];
    _Block_release(v8);
  }
}

void sub_1A445D630(uint64_t a1)
{
  if (!qword_1EB13ADC8)
  {
    sub_1A445D6C4(255, &qword_1EB13ADD0, sub_1A445D738, sub_1A3E42C88);
    sub_1A445D864();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13ADC8);
    }
  }
}

void sub_1A445D6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A445D774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A445D81C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A445D864()
{
  result = qword_1EB13AE08;
  if (!qword_1EB13AE08)
  {
    sub_1A445D6C4(255, &qword_1EB13ADD0, sub_1A445D738, sub_1A3E42C88);
    sub_1A445D9B8(&qword_1EB13AE10, sub_1A445D738, sub_1A445D97C);
    sub_1A445D81C(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AE08);
  }

  return result;
}

uint64_t sub_1A445D9B8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A445DA6C()
{
  v1 = *(v0 + 32);
  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6D8))(v1);
}

void sub_1A445DBAC(uint64_t a1)
{
  if (!qword_1EB13AE50)
  {
    sub_1A445DC40(255);
    sub_1A3C39938(255, &qword_1EB13AED8, &type metadata for AddSubscribersButton, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13AE50);
    }
  }
}

void sub_1A445DC40(uint64_t a1)
{
  if (!qword_1EB13AE58)
  {
    sub_1A3DA3304(255);
    sub_1A445DD08(255);
    sub_1A445D81C(&qword_1EB13AED0, sub_1A3DA3304, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AE58);
    }
  }
}

void sub_1A445DD44(uint64_t a1, double a2)
{
  if (!qword_1EB13AE78)
  {
    sub_1A445DDD0(255, a2);
    sub_1A3C39938(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13AE78);
    }
  }
}

void sub_1A445DDD0(uint64_t a1, double a2)
{
  if (!qword_1EB13AE80)
  {
    sub_1A445DF5C(255, a2);
    sub_1A445E1F0();
    sub_1A445FD48(255, &unk_1EB13AE90, type metadata accessor for SharedAlbumSubscriberDetailsView, sub_1A445E0B4, MEMORY[0x1E697D438]);
    sub_1A445E0E8(255);
    type metadata accessor for SharedAlbumSubscriberDetailsView(255);
    sub_1A445E0B4();
    swift_getOpaqueTypeConformance2();
    sub_1A445E56C(&unk_1EB13AEB0, sub_1A445E0E8, sub_1A445E16C, MEMORY[0x1E6982090]);
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A5248454();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13AE80);
    }
  }
}

void sub_1A445DF5C(uint64_t a1, double a2)
{
  if (!qword_1EB13AE88)
  {
    sub_1A445FD48(255, &unk_1EB13AE90, type metadata accessor for SharedAlbumSubscriberDetailsView, sub_1A445E0B4, MEMORY[0x1E697D438]);
    sub_1A445E0E8(255);
    type metadata accessor for SharedAlbumSubscriberDetailsView(255);
    sub_1A445E0B4();
    swift_getOpaqueTypeConformance2();
    sub_1A445E56C(&unk_1EB13AEB0, sub_1A445E0E8, sub_1A445E16C, MEMORY[0x1E6982090]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13AE88);
    }
  }
}

void sub_1A445E0E8(uint64_t a1)
{
  if (!qword_1EB13AEA0)
  {
    sub_1A4462B04(255, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AEA0);
    }
  }
}

unint64_t sub_1A445E16C()
{
  result = qword_1EB121A48;
  if (!qword_1EB121A48)
  {
    sub_1A4462B04(255, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121A48);
  }

  return result;
}

unint64_t sub_1A445E1F0()
{
  result = qword_1EB13AEC0;
  if (!qword_1EB13AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AEC0);
  }

  return result;
}

unint64_t sub_1A445E244()
{
  result = qword_1EB13AEE8;
  if (!qword_1EB13AEE8)
  {
    sub_1A44550B4(255, &qword_1EB13AE48, sub_1A445DBAC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AEE8);
  }

  return result;
}

unint64_t sub_1A445E2CC()
{
  result = qword_1EB13AEF0;
  if (!qword_1EB13AEF0)
  {
    sub_1A3C39938(255, &qword_1EB13AEE0, &type metadata for SubscribersSection.creatorInvitationInfo, MEMORY[0x1E69E6720]);
    sub_1A445E368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AEF0);
  }

  return result;
}

unint64_t sub_1A445E368()
{
  result = qword_1EB1C1E60[0];
  if (!qword_1EB1C1E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C1E60);
  }

  return result;
}

void sub_1A445E3C4(uint64_t a1)
{
  if (!qword_1EB13AF00)
  {
    sub_1A445E49C(255);
    sub_1A3C52C70(255, &qword_1EB13AF10, 0x1E699C060);
    sub_1A445D81C(&qword_1EB13AF18, sub_1A445E49C, MEMORY[0x1E69E6338]);
    sub_1A445E504();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AF00);
    }
  }
}

void sub_1A445E49C(uint64_t a1)
{
  if (!qword_1EB13AF08)
  {
    sub_1A3C52C70(255, &qword_1EB13AF10, 0x1E699C060);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AF08);
    }
  }
}

unint64_t sub_1A445E504()
{
  result = qword_1EB13AF20;
  if (!qword_1EB13AF20)
  {
    sub_1A3C52C70(255, &qword_1EB13AF10, 0x1E699C060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AF20);
  }

  return result;
}

uint64_t sub_1A445E56C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A445E5DC()
{
  result = qword_1EB13AF30;
  if (!qword_1EB13AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AF30);
  }

  return result;
}

void sub_1A445E630(uint64_t a1)
{
  if (!qword_1EB1248C0)
  {
    sub_1A3C39938(255, &unk_1EB1248D0, MEMORY[0x1E69E6370], MEMORY[0x1E697DB98]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1248C0);
    }
  }
}

uint64_t sub_1A445E6AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1A3C39938(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *sub_1A445E708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A524B694();
  type metadata accessor for SharedAlbumObservableModel(0);

  v5 = sub_1A524B694();
  (*(*a1 + 456))(v5);
  v6 = sub_1A524B694();
  (*(*a1 + 408))(v6);
  v7 = sub_1A524B694();
  (*(*a1 + 312))(v7);
  result = sub_1A524B694();
  *a3 = a2;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  *(a3 + 72) = v10;
  *(a3 + 80) = v11;
  return result;
}

void sub_1A445E8E4(uint64_t a1)
{
  if (!qword_1EB13AF40)
  {
    sub_1A44550B4(255, &qword_1EB13AF48, sub_1A445E978, MEMORY[0x1E6981F40]);
    sub_1A445EA60();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AF40);
    }
  }
}

void sub_1A445E978(uint64_t a1)
{
  if (!qword_1EB13AF50)
  {
    sub_1A445E9E4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13AF50);
    }
  }
}

void sub_1A445E9E4()
{
  if (!qword_1EB13AF58)
  {
    v0 = sub_1A5248094();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13AF58);
    }
  }
}

unint64_t sub_1A445EA60()
{
  result = qword_1EB13AF60;
  if (!qword_1EB13AF60)
  {
    sub_1A44550B4(255, &qword_1EB13AF48, sub_1A445E978, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AF60);
  }

  return result;
}

void sub_1A445EAE8(uint64_t a1)
{
  if (!qword_1EB13AF68)
  {
    sub_1A44550B4(255, &qword_1EB13AF70, sub_1A445EBC8, MEMORY[0x1E6981F40]);
    sub_1A445D774(255, &qword_1EB13AF38, sub_1A445E8E4, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AF68);
    }
  }
}

void sub_1A445EBC8(uint64_t a1)
{
  if (!qword_1EB13AF78)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1A44550B4(255, &unk_1EB13AF80, sub_1A3FF705C, MEMORY[0x1E69E6720]);
    sub_1A44550B4(255, &unk_1EB13AF90, sub_1A3FF75A0, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13AF78);
    }
  }
}

void sub_1A445EC9C(uint64_t a1)
{
  if (!qword_1EB13AFA8)
  {
    sub_1A445EAE8(255);
    sub_1A3EE53E0(255);
    sub_1A445ED84();
    sub_1A445E56C(&unk_1EB13AFD0, sub_1A3EE53E0, sub_1A4397634, MEMORY[0x1E69E7C80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13AFA8);
    }
  }
}

unint64_t sub_1A445ED84()
{
  result = qword_1EB13AFB0;
  if (!qword_1EB13AFB0)
  {
    sub_1A445EAE8(255);
    sub_1A445EE10();
    sub_1A445EE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AFB0);
  }

  return result;
}

unint64_t sub_1A445EE10()
{
  result = qword_1EB13AFB8;
  if (!qword_1EB13AFB8)
  {
    sub_1A44550B4(255, &qword_1EB13AF70, sub_1A445EBC8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AFB8);
  }

  return result;
}

unint64_t sub_1A445EE98()
{
  result = qword_1EB13AFC0;
  if (!qword_1EB13AFC0)
  {
    sub_1A445D774(255, &qword_1EB13AF38, sub_1A445E8E4, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A445D81C(&qword_1EB13AFC8, sub_1A445E8E4, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AFC0);
  }

  return result;
}

void sub_1A445EF80(uint64_t a1)
{
  if (!qword_1EB13AFE0)
  {
    sub_1A445EC9C(255);
    sub_1A445EAE8(255);
    sub_1A3EE53E0(255);
    sub_1A445ED84();
    sub_1A445E56C(&unk_1EB13AFD0, sub_1A3EE53E0, sub_1A4397634, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13AFE0);
    }
  }
}

void sub_1A445F0A8(uint64_t a1)
{
  if (!qword_1EB13AFE8)
  {
    sub_1A445EF80(255);
    sub_1A445EC9C(255);
    sub_1A445EAE8(255);
    sub_1A3EE53E0(255);
    sub_1A445ED84();
    sub_1A445E56C(&unk_1EB13AFD0, sub_1A3EE53E0, sub_1A4397634, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13AFE8);
    }
  }
}

void *sub_1A445F1FC(uint64_t a1, uint64_t a2)
{
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v6 == 1)
  {
    v3 = sub_1A5240E64();
    if ((*(*(v3 - 8) + 48))(a2, 1, v3) != 1)
    {
      return sub_1A524B6B4();
    }
  }

  result = sub_1A524B6A4();
  if ((v6 & 1) == 0)
  {
    v5 = sub_1A5240E64();
    result = (*(*(v5 - 8) + 48))(a2, 1, v5);
    if (result == 1)
    {
      return sub_1A524B6B4();
    }
  }

  return result;
}

uint64_t sub_1A445F380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A445F530(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A524B694();
  v6 = sub_1A524C634();
  v7 = PXLocalizedString(v6);

  v8 = sub_1A524C674();
  v10 = v9;

  *&v61 = a1;
  type metadata accessor for SharedAlbumActionViewModel(0);
  v56 = a1;
  sub_1A524B694();
  v11 = v69;
  v57 = v70;
  v12 = objc_opt_self();
  v59 = a2;
  v58 = v10;
  if ([v12 sharedAlbumIsOwned_])
  {
    v13 = sub_1A524C634();
    v14 = PLServicesLocalizedFrameworkString();

    if (v14)
    {
LABEL_5:
      v54 = v69;
      v55 = v70;
      v16 = sub_1A524C674();
      v52 = v17;
      v53 = v16;

      v18 = sub_1A524C634();

      v19 = PXLocalizedString(v18);

      sub_1A524C674();
      sub_1A3E072BC(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1A52F8E10;
      v21 = [v59 localizedTitle];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1A524C674();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      *(v20 + 56) = MEMORY[0x1E69E6158];
      v26 = sub_1A3D710E8();
      *(v20 + 64) = v26;
      if (v25)
      {
        v27 = v23;
      }

      else
      {
        v27 = 0;
      }

      v28 = 0xE000000000000000;
      if (v25)
      {
        v28 = v25;
      }

      *(v20 + 32) = v27;
      *(v20 + 40) = v28;
      v51 = sub_1A524C6C4();
      v30 = v29;

      v31 = sub_1A524C634();

      v32 = PXLocalizedString(v31);

      sub_1A524C674();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1A52F8E10;
      v34 = [v59 localizedTitle];

      if (v34)
      {
        v35 = sub_1A524C674();
        v37 = v36;

        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = v26;
        if (v37)
        {
LABEL_18:
          *(v33 + 32) = v35;
          *(v33 + 40) = v37;
          v38 = sub_1A524C6C4();
          v40 = v39;

          v41 = sub_1A524C634();

          v42 = PXLocalizedString(v41);

          v43 = sub_1A524C674();
          v45 = v44;

          *&v61 = v11;
          *(&v61 + 1) = v57;
          *&v62 = v59;
          BYTE8(v62) = v54;
          *(&v62 + 9) = v85[0];
          HIDWORD(v62) = *(v85 + 3);
          *&v63 = v55;
          *(&v63 + 1) = v53;
          *&v64 = v52;
          *(&v64 + 1) = v51;
          *&v65 = v30;
          *(&v65 + 1) = v38;
          *&v66 = v40;
          *(&v66 + 1) = v43;
          *&v67 = v45;
          *(&v67 + 1) = v8;
          v68 = v58;
          v69 = v11;
          v70 = v57;
          v71 = v59;
          v72 = v54;
          *&v73[3] = *(v85 + 3);
          *v73 = v85[0];
          v74 = v55;
          v75 = v53;
          v76 = v52;
          v77 = v51;
          v78 = v30;
          v79 = v38;
          v80 = v40;
          v81 = v43;
          v82 = v45;
          v83 = v8;
          v84 = v58;
          sub_1A4461A60(&v61, v60);
          sub_1A4461D1C(&v69);
          v46 = v66;
          v47 = v67;
          v48 = v64;
          *(a3 + 64) = v65;
          *(a3 + 80) = v46;
          *(a3 + 96) = v47;
          v49 = v62;
          v50 = v63;
          *a3 = v61;
          *(a3 + 16) = v49;
          *(a3 + 112) = v68;
          *(a3 + 32) = v50;
          *(a3 + 48) = v48;
          return;
        }

        v35 = 0;
      }

      else
      {
        v35 = 0;
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = v26;
      }

      v37 = 0xE000000000000000;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    v15 = sub_1A524C634();
    v14 = PLServicesLocalizedFrameworkString();

    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

unint64_t sub_1A445FA54()
{
  result = qword_1EB121040;
  if (!qword_1EB121040)
  {
    sub_1A44550B4(255, &unk_1EB121030, sub_1A3FF7794, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121040);
  }

  return result;
}

void sub_1A445FB18(uint64_t a1)
{
  if (!qword_1EB13B048)
  {
    sub_1A44550B4(255, &qword_1EB13B050, sub_1A445FBB0, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B048);
    }
  }
}

void sub_1A445FBB0(uint64_t a1)
{
  if (!qword_1EB13B058)
  {
    sub_1A445FC18(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13B058);
    }
  }
}

void sub_1A445FC54(uint64_t a1, double a2)
{
  if (!qword_1EB13B068)
  {
    sub_1A445FD48(255, &qword_1EB13B070, sub_1A445FDD4, sub_1A44600B8, MEMORY[0x1E697CF38]);
    sub_1A445FDD4(255);
    sub_1A44600B8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B068);
    }
  }
}

void sub_1A445FD48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A445FDD4(uint64_t a1)
{
  if (!qword_1EB13B078)
  {
    sub_1A445FD48(255, &qword_1EB13B080, sub_1A445FE78, sub_1A4460084, MEMORY[0x1E697D278]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B078);
    }
  }
}

void sub_1A445FE78(uint64_t a1)
{
  if (!qword_1EB13B088)
  {
    sub_1A44550B4(255, &qword_1EB13B090, sub_1A445FF0C, MEMORY[0x1E6981F40]);
    sub_1A445FFFC();
    v1 = sub_1A524A2A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B088);
    }
  }
}

void sub_1A445FF0C(uint64_t a1)
{
  if (!qword_1EB13B098)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1A3C39938(255, &qword_1EB13B0A0, &type metadata for ToggleSettingsSection, MEMORY[0x1E69E6720]);
    sub_1A4462B04(255, &qword_1EB13B0A8, &type metadata for FamilyMembersSection, &type metadata for SubscribersSection, MEMORY[0x1E697F960]);
    sub_1A3C39938(255, &qword_1EB13B0B0, &type metadata for DeleteAlbumSection, v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13B098);
    }
  }
}

unint64_t sub_1A445FFFC()
{
  result = qword_1EB13B0B8;
  if (!qword_1EB13B0B8)
  {
    sub_1A44550B4(255, &qword_1EB13B090, sub_1A445FF0C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B0B8);
  }

  return result;
}

unint64_t sub_1A44600B8()
{
  result = qword_1EB13B0C8;
  if (!qword_1EB13B0C8)
  {
    sub_1A445FDD4(255);
    sub_1A445FE78(255);
    sub_1A4460084();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B0C8);
  }

  return result;
}

void sub_1A4460168(uint64_t a1)
{
  if (!qword_1EB13B0D0)
  {
    sub_1A44601FC(255);
    sub_1A4462B04(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B0D0);
    }
  }
}

void sub_1A44601FC(uint64_t a1)
{
  if (!qword_1EB13B0D8)
  {
    sub_1A44550B4(255, &qword_1EB13B050, sub_1A445FBB0, MEMORY[0x1E6981F40]);
    sub_1A4460290();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B0D8);
    }
  }
}

unint64_t sub_1A4460290()
{
  result = qword_1EB13B0E0;
  if (!qword_1EB13B0E0)
  {
    sub_1A44550B4(255, &qword_1EB13B050, sub_1A445FBB0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B0E0);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A4460484(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1A44604CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A44605B8(uint64_t a1)
{
  if (!qword_1EB13B110)
  {
    sub_1A44550B4(255, &qword_1EB13AD90, sub_1A445D2F4, MEMORY[0x1E6981F40]);
    sub_1A446064C();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B110);
    }
  }
}

unint64_t sub_1A446064C()
{
  result = qword_1EB13B118;
  if (!qword_1EB13B118)
  {
    sub_1A44550B4(255, &qword_1EB13AD90, sub_1A445D2F4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B118);
  }

  return result;
}

unint64_t sub_1A446073C()
{
  result = qword_1EB13B138;
  if (!qword_1EB13B138)
  {
    sub_1A44607C8(255);
    sub_1A445E244();
    sub_1A445E2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B138);
  }

  return result;
}

void sub_1A44607C8(uint64_t a1)
{
  if (!qword_1EB13B140)
  {
    sub_1A44550B4(255, &qword_1EB13AE48, sub_1A445DBAC, MEMORY[0x1E6981F40]);
    sub_1A3C39938(255, &qword_1EB13AEE0, &type metadata for SubscribersSection.creatorInvitationInfo, MEMORY[0x1E69E6720]);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B140);
    }
  }
}

unint64_t sub_1A446088C()
{
  result = qword_1EB13B148;
  if (!qword_1EB13B148)
  {
    sub_1A4460980(255, &qword_1EB13B150, sub_1A445E3C4, MEMORY[0x1E6981148]);
    sub_1A445E56C(&qword_1EB13AF28, sub_1A445E3C4, sub_1A445E5DC, MEMORY[0x1E69819D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B148);
  }

  return result;
}

void sub_1A4460980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A524BA74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A44609EC(double a1)
{
  result = qword_1EB13B158;
  if (!qword_1EB13B158)
  {
    sub_1A4460A88(255, &qword_1EB13B160, MEMORY[0x1E697F960]);
    sub_1A3FF8B58(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B158);
  }

  return result;
}

void sub_1A4460A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E6981E70];
    sub_1A4460980(255, &qword_1EB130160, sub_1A3FF746C, MEMORY[0x1E6981E70]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A4460B14()
{
  result = qword_1EB13B168;
  if (!qword_1EB13B168)
  {
    sub_1A4460168(255);
    sub_1A445D81C(&unk_1EB13B170, sub_1A44601FC, MEMORY[0x1E6981870]);
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B168);
  }

  return result;
}

uint64_t sub_1A4460BF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v110 = *(v3 + 16);
  *v71 = *(v3 + 16);
  sub_1A44550B4(0, &qword_1EB13B038, sub_1A445FAE4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v96)
  {
    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
    sub_1A445E708(v96, v5, v95);
    v69 = v95[1];
    v70 = v95[0];
    v67 = v95[3];
    v68 = v95[2];
    v65 = v95[5];
    v66 = v95[4];
    v63 = v95[7];
    v64 = v95[6];
    v61 = v95[9];
    v62 = v95[8];
    v60 = v95[10];

    if (v4)
    {
LABEL_3:
      *v71 = *(v3 + 40);
      sub_1A44550B4(0, &qword_1EB13B040, sub_1A445E49C, MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      *(&v96 + 1) = *(v3 + 32);
      v97 = 0;
      v98 = 0;
      LOWORD(v99) = 0;
      sub_1A44615F0();
      sub_1A4461644();
      swift_unknownObjectRetain();
      goto LABEL_9;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v60 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v6 = v96;
  *v71 = v110;
  v7 = sub_1A524B6A4();
  if (v96)
  {
    v8 = (*(*v96 + 216))(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 32);
  v10 = swift_unknownObjectRetain();
  v11 = MEMORY[0x1A590D320](v10) ^ 1;
  *&v96 = v6;
  type metadata accessor for SharedAlbumActionViewModel(0);
  sub_1A524B694();
  v96 = *v71;
  v97 = v8;
  v98 = v9;
  LOBYTE(v99) = v11;
  BYTE1(v99) = 1;
  sub_1A44615F0();
  sub_1A4461644();
LABEL_9:
  sub_1A5249744();
  v12 = *v71;
  v13 = v71[33];
  *v71 = v110;
  v58 = v12;
  v59 = *&v71[16];
  v14 = v12;
  v15 = *&v71[16];
  v16 = v71[32];
  sub_1A4461698(v12, *(&v12 + 1), *&v71[16], *&v71[24], v71[32], v71[33]);
  v17 = sub_1A524B6A4();
  if (v96)
  {
    v18 = (*(*v96 + 216))(v17);

    *v71 = *v3;
    sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    sub_1A445F530(v96, v18, &v96);
    v20 = *(&v96 + 1);
    v19 = v96;
    v21 = v97;
    v22 = v98;
    v23 = v99;
    v24 = v100;
    v25 = v101;
    v26 = v102;
    v27 = v103;
    v28 = v104;
    v29 = v105;
    v30 = v106;
    v31 = v107;
    v32 = v108;
    v33 = v109;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  v45 = v21;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v33;
  v54 = v32;
  v55 = v31;
  v56 = v30;
  v57 = v29;
  *&v73 = v70;
  *(&v73 + 1) = v69;
  *&v74 = v68;
  *(&v74 + 1) = v67;
  *&v75 = v66;
  *(&v75 + 1) = v65;
  *&v76 = v64;
  *(&v76 + 1) = v63;
  *&v77 = v62;
  *(&v77 + 1) = v61;
  v78 = v60;
  *&v79 = v19;
  v92 = v60;
  v89 = v75;
  v90 = v76;
  v91 = v77;
  v87 = v73;
  v88 = v74;
  v72 = v71[33];
  *(&v79 + 1) = v20;
  *&v80 = v21;
  *(&v80 + 1) = v22;
  *&v81 = v23;
  *(&v81 + 1) = v24;
  *&v82 = v25;
  *(&v82 + 1) = v26;
  *&v83 = v27;
  *(&v83 + 1) = v28;
  *&v84 = v29;
  *(&v84 + 1) = v30;
  *&v85 = v31;
  *(&v85 + 1) = v32;
  v86 = v33;
  sub_1A4461718(&v73, v71, &qword_1EB13B0A0, &type metadata for ToggleSettingsSection);
  sub_1A4461698(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v13);
  sub_1A4461718(&v79, v71, &qword_1EB13B0B0, &type metadata for DeleteAlbumSection);
  sub_1A4461798(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v13);
  *&v71[70] = v83;
  *&v71[86] = v84;
  *&v71[102] = v85;
  *&v71[118] = v86;
  *&v71[6] = v79;
  *&v71[22] = v80;
  *&v71[38] = v81;
  *&v71[54] = v82;
  v34 = v72;
  v35 = v90;
  *(a1 + 32) = v89;
  *(a1 + 48) = v35;
  *(a1 + 64) = v91;
  *(a1 + 80) = v92;
  v36 = v88;
  *a1 = v87;
  *(a1 + 16) = v36;
  *(a1 + 88) = v58;
  *(a1 + 104) = v59;
  *(a1 + 120) = v16;
  *(a1 + 121) = v34;
  v37 = *v71;
  v38 = *&v71[16];
  v39 = *&v71[32];
  *(a1 + 170) = *&v71[48];
  *(a1 + 154) = v39;
  *(a1 + 138) = v38;
  *(a1 + 122) = v37;
  v40 = *&v71[64];
  v41 = *&v71[80];
  v42 = *&v71[96];
  *(a1 + 232) = *&v71[110];
  *(a1 + 218) = v42;
  *(a1 + 202) = v41;
  *(a1 + 186) = v40;
  v93[0] = v19;
  v93[1] = v20;
  v93[2] = v45;
  v93[3] = v46;
  v93[4] = v47;
  v93[5] = v48;
  v93[6] = v49;
  v93[7] = v50;
  v93[8] = v51;
  v93[9] = v52;
  v93[10] = v57;
  v93[11] = v56;
  v93[12] = v55;
  v93[13] = v54;
  v93[14] = v53;
  v43 = MEMORY[0x1E69E6720];
  sub_1A445E6AC(v93, &qword_1EB13B0B0, &type metadata for DeleteAlbumSection, MEMORY[0x1E69E6720]);
  sub_1A4461798(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v13);
  v94[0] = v70;
  v94[1] = v69;
  v94[2] = v68;
  v94[3] = v67;
  v94[4] = v66;
  v94[5] = v65;
  v94[6] = v64;
  v94[7] = v63;
  v94[8] = v62;
  v94[9] = v61;
  v94[10] = v60;
  return sub_1A445E6AC(v94, &qword_1EB13B0A0, &type metadata for ToggleSettingsSection, v43);
}

void sub_1A4461300()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
  v2 = swift_allocObject();
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = *(v0 + 64);
  aBlock[4] = sub_1A4461510;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D54680;
  aBlock[3] = &block_descriptor_191;
  v4 = _Block_copy(aBlock);
  sub_1A4461410(v0 + 16, v5);

  [v1 startRequestWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_1A4461448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_79Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4461518()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [v1 members];
    sub_1A3C52C70(0, &qword_1EB13AF10, 0x1E699C060);
    sub_1A524CA34();
  }

  sub_1A44550B4(0, &qword_1EB13B040, sub_1A445E49C, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

unint64_t sub_1A44615F0()
{
  result = qword_1EB13B180;
  if (!qword_1EB13B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B180);
  }

  return result;
}

unint64_t sub_1A4461644()
{
  result = qword_1EB13B188;
  if (!qword_1EB13B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B188);
  }

  return result;
}

double sub_1A4461698(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;

  return result;
}

uint64_t sub_1A4461718(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A3C39938(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A4461798(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A446181C()
{
  v5 = *(v0 + 40);
  v4[1] = *(v0 + 40);
  v6 = *(&v5 + 1);
  sub_1A4461DC8(&v6, v4, sub_1A445E630);
  v1 = MEMORY[0x1E69E6370];
  v2 = MEMORY[0x1E6981790];
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v4[0] = v5;
  sub_1A524B6B4();
  return sub_1A445E6AC(&v5, &qword_1EB1274B0, v1, v2);
}

void sub_1A446190C()
{
  sub_1A5249314();
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4461B10()
{
  sub_1A3C39938(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A52F9790;
  v2 = *(v0 + 32);
  *(v1 + 32) = v2;
  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v3 = v2;
  v4 = sub_1A524CA14();

  v5 = swift_allocObject();
  v6 = *(v0 + 96);
  *(v5 + 80) = *(v0 + 80);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 112);
  *(v5 + 128) = *(v0 + 128);
  v7 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v7;
  v8 = *(v0 + 64);
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = v8;
  aBlock[4] = sub_1A4461D14;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_101_1;
  v9 = _Block_copy(aBlock);
  sub_1A4461A60(v0 + 16, v10);

  PXSharedAlbumsDeleteSharedAlbums(v4, 0, v9);
  _Block_release(v9);
}

uint64_t objectdestroy_91Tm_0()
{

  return swift_deallocObject();
}

void sub_1A4461D4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A44550B4(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4461DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4461E54(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *a2;
  v12[0] = *(v2 + 88);
  LOBYTE(aBlock[0]) = 1;
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v5 = objc_opt_self();
  v12[0] = *(v2 + 24);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v6 = sub_1A524B6A4();
  v7 = (*(*aBlock[0] + 216))(v6);

  v8 = swift_allocObject();
  v9 = *(v3 + 64);
  *(v8 + 48) = *(v3 + 48);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v3 + 80);
  *(v8 + 96) = *(v3 + 96);
  v10 = *(v3 + 32);
  *(v8 + 16) = *(v3 + 16);
  *(v8 + 32) = v10;
  aBlock[4] = sub_1A446238C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_125_1;
  v11 = _Block_copy(aBlock);
  sub_1A445F348(v3 + 16, v12);

  [v5 setPublicURLEnabled:v4 forSharedAlbum:v7 completionHandler:{v11, v12[0]}];
  _Block_release(v11);
}

void sub_1A4462048(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = objc_opt_self();
  v12[0] = *(v2 + 24);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v6 = sub_1A524B6A4();
  v7 = (*(*aBlock[0] + 216))(v6);

  v8 = swift_allocObject();
  v9 = *(v3 + 64);
  *(v8 + 48) = *(v3 + 48);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v3 + 80);
  *(v8 + 96) = *(v3 + 96);
  v10 = *(v3 + 32);
  *(v8 + 16) = *(v3 + 16);
  *(v8 + 32) = v10;
  aBlock[4] = sub_1A44622D0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_119_1;
  v11 = _Block_copy(aBlock);
  sub_1A445F348(v3 + 16, v12);

  [v5 setNotificationsEnabled:v4 forSharedAlbum:v7 completionHandler:{v11, v12[0]}];
  _Block_release(v11);
}

void sub_1A44621F0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = objc_opt_self();
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v4 = sub_1A524B6A4();
  v5 = (*(*v6 + 216))(v4);

  [v3 setMultipleContributorsEnabled:v2 forSharedAlbum:v5 completionHandler:0];
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1A44623C4(double a1)
{
  result = qword_1EB13B1C0;
  if (!qword_1EB13B1C0)
  {
    sub_1A445DD44(255, a1);
    sub_1A445D81C(&qword_1EB13B1C8, sub_1A445DDD0, MEMORY[0x1E697C090]);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B1C0);
  }

  return result;
}

id sub_1A4462474(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;

    swift_unknownObjectRetain();

    return v3;
  }

  return result;
}

double sub_1A44624CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A4462518@<D0>(_OWORD *a1@<X8>)
{
  sub_1A445D184(*(v1 + 16), v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

void sub_1A4462560()
{
  v1 = [*(v0 + 16) personID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v6 = sub_1A524B6A4();
  v7 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x2B0))(v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_16:

    goto LABEL_17;
  }

  v8 = sub_1A524E2B4();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_6:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v7 + 8 * v10 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v11 = MEMORY[0x1A59097F0](v10, v7);
LABEL_11:
  v12 = v11;

  v13 = [v12 personID];

  if (v13)
  {
    v14 = sub_1A524C674();
    v16 = v15;

    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
  v16 = 0;
  if (!v5)
  {
LABEL_13:
    if (!v16)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (!v16)
  {
LABEL_22:

LABEL_23:
    v17 = sub_1A5249564();
    MEMORY[0x1A5903910](v17);
    return;
  }

  if (v3 == v14 && v5 == v16)
  {

    return;
  }

  v18 = sub_1A524EAB4();

  if ((v18 & 1) == 0)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1A44627D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4462838(uint64_t a1)
{
  if (!qword_1EB120A30)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120A30);
    }
  }
}

uint64_t sub_1A44628B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3D60150;

  return sub_1A4455654(v2, v3, v4, v0 + 32);
}

uint64_t sub_1A4462940(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A44550B4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A44629B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A44550B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A4462A0C(uint64_t a1)
{
  if (!qword_1EB13B1D8)
  {
    sub_1A4462A80(255, &qword_1EB13B1E0, MEMORY[0x1E697DB98]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B1D8);
    }
  }
}

void sub_1A4462A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3C39938(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4462B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4462B88@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 448))(KeyPath);

  v4 = *(*v1 + 128);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1A4462D88(uint64_t a1)
{
  sub_1A4465A88(a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524DF24();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void sub_1A4462ED0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5245904();
}

uint64_t sub_1A4462FA0()
{
  result = (*(*(*v0 + 88) + 48))(*(*v0 + 80));
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A446309C()
{
  result = (*(*v0 + 272))();
  if (v2 == 1)
  {
    return 0;
  }

  return result;
}

void sub_1A44631D0()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v1 + 224))(v3);
  swift_getAssociatedConformanceWitness();
  sub_1A5246414();
}

uint64_t sub_1A4463404()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 448))(KeyPath);

  v2 = *(*v0 + 136);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A44634D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

double sub_1A446357C(char a1)
{
  v2 = v1;
  v4 = *(*v2 + 136);
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    *(v2 + v4) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 456))(v8);
  }

  return result;
}

uint64_t (*sub_1A4463728(uint64_t *a1))()
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
  (*(*v1 + 448))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v9);
  swift_getKeyPath();
  type metadata accessor for LemonadeSectionedFeedViewModel(255, v6, v7, v10);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4463398(v4);
  return sub_1A44638F8;
}

void sub_1A44638F8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  swift_getKeyPath();
  type metadata accessor for LemonadeSectionedFeedViewModel(255, v3, v4, v5);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

void sub_1A44639F8()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v1 + 224))(v3);
  swift_getAssociatedConformanceWitness();
  sub_1A5246394();
}

void sub_1A4463C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 128);
  v7 = *(*(v5 + 88) + 8);
  v8 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v3 + v6, 1, 1, AssociatedTypeWitness);
  *(v3 + *(*v3 + 136)) = 0;
  v10 = (v3 + *(*v3 + 144));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *(*v3 + 152));
  *v11 = 0;
  v11[1] = 0;
  sub_1A5241604();
  sub_1A3C66934(a1, v8, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5245914();
}

uint64_t sub_1A4464228(uint64_t a1, double a2)
{
  result = sub_1A52431A4();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4464268(uint64_t a1)
{
  v44 = a1;
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(swift_getAssociatedConformanceWitness() + 16);
  v39 = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - v6;
  v7 = sub_1A524DF24();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v36 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  (*(v2 + 192))(v18);
  (*(v5 + 16))(v16, v44, v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v41 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = *(v11 + 16);
  v22(v10, v20, v7);
  v43 = v21;
  v22(&v10[v21], v16, v7);
  v42 = v5;
  v23 = *(v5 + 48);
  v44 = v4;
  if (v23(v10, 1, v4) != 1)
  {
    v36 = v20;
    v26 = v7;
    v22(v45, v10, v7);
    v27 = v43;
    v28 = v44;
    if (v23(&v10[v43], 1, v44) != 1)
    {
      v30 = v42;
      v31 = v37;
      (*(v42 + 32))(v37, &v10[v27], v28);
      swift_getAssociatedConformanceWitness();
      v32 = v45;
      v25 = sub_1A524C594();
      v33 = *(v30 + 8);
      v33(v31, v28);
      v34 = *(v11 + 8);
      v34(v16, v26);
      v34(v36, v26);
      v33(v32, v28);
      v34(v10, v26);
      return v25 & 1;
    }

    v29 = *(v11 + 8);
    v29(v16, v7);
    v29(v36, v7);
    (*(v42 + 8))(v45, v28);
    goto LABEL_6;
  }

  v24 = *(v11 + 8);
  v24(v16, v7);
  v24(v20, v7);
  if (v23(&v10[v43], 1, v44) != 1)
  {
LABEL_6:
    (*(v40 + 8))(v10, v41);
    v25 = 0;
    return v25 & 1;
  }

  v24(v10, v7);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1A44647DC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1A524DF24();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(&v11 - v6, a1, AssociatedTypeWitness, v5);
  (*(v8 + 56))(v7, 0, 1, AssociatedTypeWitness);
  v9 = sub_1A4465A88(v7);
  (*(v4 + 8))(v7, v3, v9);
  return sub_1A44654DC();
}

void sub_1A44649B4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7[5] = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v8);
  v7[11] = v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v7[3] = v7 - v2;
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v7[9] = v7 - v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[12] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_1A5245904();
}

uint64_t sub_1A4464F98()
{
  v18 = *v0;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15[4] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15[3] = v15 - v2;
  v3 = swift_checkMetadataState();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = AssociatedConformanceWitness;
  v4 = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - v12;
  (*(v18 + 192))(v11);
  if ((*(v9 + 48))(v8, 1, v4) != 1)
  {
    (*(v9 + 32))(v13, v8, v4);
    (*(*v0 + 352))(v13);
    swift_checkMetadataState();
    sub_1A5242604();
    sub_1A5246234();
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

uint64_t sub_1A44654DC()
{
  result = sub_1A4464F98();
  if (result)
  {
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    sub_1A5245904();
  }

  return result;
}

uint64_t *sub_1A4465800()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  swift_unknownObjectRelease();

  v1 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524DF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(*v0 + 160);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A4465A30()
{
  sub_1A4465800();

  return swift_deallocClassInstance();
}

double sub_1A4465A88(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v3 = *v1;
  v17 = *(*v1 + 88);
  v4 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = *(v3 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = v18;
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  v11 = sub_1A524C594();
  v12 = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, v10, v5);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v14 = v17;
    *(&v17 - 2) = v4;
    *(&v17 - 1) = v14;
    KeyPath = swift_getKeyPath();
    v16.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v10;
    (*(*v2 + 456))(v16);
  }

  return result;
}

void sub_1A4465DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 136);
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A4465EA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1A524DF24();
    if (v3 <= 0x3F)
    {
      result = sub_1A5241614();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A4466060()
{
  result = qword_1EB128CB0;
  if (!qword_1EB128CB0)
  {
    sub_1A52461D4();
  }

  return result;
}

unint64_t sub_1A44660B8()
{
  result = qword_1EB13B1F8;
  if (!qword_1EB13B1F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13B1F8);
  }

  return result;
}

uint64_t sub_1A446611C(uint64_t a1)
{
  sub_1A4466178(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4466178(uint64_t a1)
{
  if (!qword_1EB13B200)
  {
    sub_1A44660B8();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B200);
    }
  }
}

uint64_t sub_1A44661D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*v2 + 128);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

uint64_t TCCAuthorizationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A44663BC(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = a1;
  if (a3)
  {
    v4 = swift_task_alloc();
    v3[3] = v4;
    *v4 = v3;
    v4[1] = sub_1A4466508;

    return MEMORY[0x1EEE6DDE0](v3 + 5, 0, 0, 0xD000000000000021, 0x80000001A53D8550, sub_1A4466B7C, 0, &type metadata for TCCAuthorizationStatus);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[4] = v5;
    *v5 = v3;
    v5[1] = sub_1A4466624;

    return sub_1A44667D4((v3 + 5));
  }
}

uint64_t sub_1A4466508()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4466604, 0, 0);
}

uint64_t sub_1A4466624()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4467208, 0, 0);
}

void TCCService.id.getter()
{
  if (*MEMORY[0x1E69D5580])
  {
    v0 = *MEMORY[0x1E69D5580];
    sub_1A524C674();
  }

  else
  {
    __break(1u);
  }
}

double sub_1A446677C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);

  return result;
}

void sub_1A44667F4()
{
  if (*MEMORY[0x1E69D5580])
  {
    v1 = *MEMORY[0x1E69D5580];
    v2 = TCCAccessPreflight();

    if (v2 >= 3)
    {
      sub_1A524E404();
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      MEMORY[0x1A5907B60](0xD00000000000001DLL, 0x80000001A53D85F0);
      *(v0 + 40) = v2;
      type metadata accessor for TCCAccessPreflightResult();
      sub_1A524E624();
      sub_1A524E6E4();
    }

    else
    {
      **(v0 + 32) = 2 - v2;
      v3 = *(v0 + 8);

      v3();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A446696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 88) + **(**v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A3D60150;

  return v10(a1, a2, a3);
}

uint64_t TCCService.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

void sub_1A4466B20(uint64_t *a1@<X8>)
{
  if (*MEMORY[0x1E69D5580])
  {
    v2 = *MEMORY[0x1E69D5580];
    v3 = sub_1A524C674();
    v5 = v4;

    *a1 = v3;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4466B7C(uint64_t a1)
{
  sub_1A44670D8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  if (*MEMORY[0x1E69D5580])
  {
    v6 = *(v4 + 16);
    v7 = *MEMORY[0x1E69D5580];
    v6(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    aBlock[4] = sub_1A4467138;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A446677C;
    aBlock[3] = &block_descriptor_192;
    v10 = _Block_copy(aBlock);

    TCCAccessRequest();
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A4466D3C()
{
  result = qword_1EB13B208;
  if (!qword_1EB13B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B208);
  }

  return result;
}

unint64_t sub_1A4466D94()
{
  result = qword_1EB13B210;
  if (!qword_1EB13B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B210);
  }

  return result;
}

uint64_t dispatch thunk of TCCStatusProvider.requestAuthorization(for:allowPromptingForAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SystemTCCStatusProvider.requestAuthorization(for:allowPromptingForAccess:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 88) + **(*v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A3CA8098;

  return v10(a1, a2, a3);
}

void sub_1A44670D8()
{
  if (!qword_1EB13B218)
  {
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B218);
    }
  }
}

void type metadata accessor for TCCAccessPreflightResult()
{
  if (!qword_1EB13B220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB13B220);
    }
  }
}

id sub_1A446720C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A4467260(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4467308(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A4467374(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

char *sub_1A4467460(void *a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x1E69DDC50];
  *&v3[OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_maxContentSizeCategory] = *MEMORY[0x1E69DDC50];
  *&v3[OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_hasSiblingWidgetAbove] = 0;
  v3[OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_hasSiblingWidgetBelow] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset] = a1;
  swift_beginAccess();
  v21 = a2;
  sub_1A3C52C70(0, &qword_1EB126C78, off_1E77209E0);
  v8 = v7;
  v9 = a1;
  v10 = a2;
  sub_1A52479A4();
  swift_endAccess();
  *&v3[OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_context] = a3;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for PhotosDetailsWidgetViewModel(0);
  v11 = a3;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset;
  swift_beginAccess();
  v14 = *&v12[v13];
  v15 = v12;
  result = [v14 photoLibrary];
  if (result)
  {
    v17 = result;
    v18 = v15;
    [v17 registerChangeObserver_];

    v19 = [objc_opt_self() defaultCenter];
    [v19 addObserver:v18 selector:sel_preferredContentSizeDidChangeWithNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsWidgetViewModel(uint64_t a1)
{
  result = qword_1EB190260;
  if (!qword_1EB190260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44676B8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1A52479F4();
}

uint64_t sub_1A4467724()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A4467798@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

void (*sub_1A4467858(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3E4FCF4;
}

uint64_t sub_1A44678FC()
{
  swift_beginAccess();
  sub_1A4467AD8(0, &unk_1EB128B20, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A4467980(uint64_t a1, __n128 a2)
{
  sub_1A4467AD8(0, &qword_1EB13B248, MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  swift_beginAccess();
  sub_1A4467AD8(0, &unk_1EB128B20, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void sub_1A4467AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126C78, off_1E77209E0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void (*sub_1A4467B48(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A4467AD8(0, &qword_1EB13B248, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel__spec;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A4467AD8(0, &unk_1EB128B20, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41BE354;
}

id sub_1A4467CD8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_context;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A4467D2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_context;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4467DE4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_hasSiblingWidgetAbove;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4467E28(char a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_hasSiblingWidgetAbove;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4467ED8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_hasSiblingWidgetBelow;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4467F1C(char a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_hasSiblingWidgetBelow;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1A4467FCC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v2 = [v1 sizeClass];

  return v2 == 2;
}

id sub_1A446803C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v2 = [v1 userInterfaceIdiom];

  return v2;
}

uint64_t sub_1A4468130()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A44681C8()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v3 = sub_1A524DC34();

  if (v3)
  {
    v4 = [v3 objectAfterChanges];

    if (v4)
    {
      v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsWidgetViewModel_asset;
      swift_beginAccess();
      v6 = *(v1 + v5);
      *(v1 + v5) = v4;
    }
  }
}

id sub_1A446841C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsWidgetViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A446851C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosDetailsWidgetViewModel(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

void sub_1A4468564(uint64_t a1)
{
  sub_1A4467AD8(319, &unk_1EB128B20, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UIContentSizeCategory()
{
  if (!qword_1EB126930)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126930);
    }
  }
}

uint64_t sub_1A4468690(uint64_t a1)
{
  sub_1A44687C4(&qword_1EB13B270, &unk_1A533E1CC);
  sub_1A44687C4(&qword_1EB13B278, &unk_1A533E16C);

  return sub_1A524E7E4();
}

uint64_t sub_1A44687C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIContentSizeCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A4468C58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysShowBanner];
  *a2 = result;
  return result;
}

id sub_1A4468CA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 debugBannerStyle];
  *a2 = result;
  return result;
}

id sub_1A4468CE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 debugBannerAttribution];
  *a2 = result;
  return result;
}

id sub_1A4468D30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ignoreNegativeSuggestionFeedback];
  *a2 = result;
  return result;
}

id sub_1A4468D78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 negativeFeedbackWaitPeriodMinutes];
  *a2 = result;
  return result;
}

id sub_1A4468DC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ignoreAttributionFiltering];
  *a2 = result;
  return result;
}

id sub_1A4468E08()
{
  v0 = objc_opt_self();

  return [v0 resetTemporarilySuppressedBootstrapOrSuggestions];
}

id sub_1A4468E40@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 mockProcessingUpdates];
  *a2 = result;
  return result;
}

id sub_1A4468E88@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 mockEmptyContentUpdates];
  *a2 = result;
  return result;
}

id sub_1A4468ED0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysShowMe];
  *a2 = result;
  return result;
}

void sub_1A4468F18()
{
  v0 = [objc_opt_self() standardUserDefaults];
  [v0 removeObjectForKey_];
  [v0 synchronize];
}

id sub_1A4468F94@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showUUIDIfNoName];
  *a2 = result;
  return result;
}

id sub_1A4468FDC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableReviewPhotosDemoMode];
  *a2 = result;
  return result;
}

id sub_1A4469024@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useReviewPhotosMockDataSource];
  *a2 = result;
  return result;
}

id sub_1A446906C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showReviewPhotosObjectType];
  *a2 = result;
  return result;
}

id sub_1A44690B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceReviewMorePhotosInterimLoading];
  *a2 = result;
  return result;
}

id sub_1A44690FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayReviewMorePhotosSuggestionType];
  *a2 = result;
  return result;
}

id sub_1A4469144@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayReviewMorePhotosDate];
  *a2 = result;
  return result;
}

id sub_1A446918C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysShowBootstrap];
  *a2 = result;
  return result;
}

id sub_1A44691D4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableBootstrapDemoMode];
  *a2 = result;
  return result;
}

id sub_1A446921C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useBootstrapMockDataSource];
  *a2 = result;
  return result;
}

id sub_1A4469264@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayBootstrapSuggestionType];
  *a2 = result;
  return result;
}

id sub_1A44692AC()
{
  result = [objc_allocWithZone(type metadata accessor for PeopleSettingsUI.ContactDelegate()) init];
  qword_1EB1C26B8 = result;
  return result;
}

char *sub_1A4469E44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4469EBC(a1, a2, a3, *v3, &qword_1EB13B328, type metadata accessor for PXPeopleUISettingsDebugBannerAttribution);
  *v3 = result;
  return result;
}

char *sub_1A4469E80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4469EBC(a1, a2, a3, *v3, &qword_1EB13B330, type metadata accessor for PXPeopleUISettingsDebugBannerStyle);
  *v3 = result;
  return result;
}

char *sub_1A4469EBC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
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
    sub_1A446AD98(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void sub_1A4469FBC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  v3 = v2;
  if (qword_1EB1C26B0 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 setDelegate_];
  [a1 presentViewController:v3 animated:1 completion:0];
}

void sub_1A446AC74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A446B0C4(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A446AD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A446ADF8(void *a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v10 = MEMORY[0x1E69E7CC0];
  v4 = a1[2];
  sub_1A3F41E2C(v4, 0);
  a2(0, v4, 0);
  if (v4)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v10 + 16);
    if (v7)
    {
      v8 = (v10 + 40);
      do
      {
        v9 = *(v8 - 1) == v6 && *v8 == v5;
        if (v9 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A446AFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A446B058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A446B0C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A446B118(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A446B1B0, v4, v3);
}

uint64_t sub_1A446B1B0()
{
  v1 = v0[10];
  v2 = sub_1A3C6E9EC();
  v3 = sub_1A3C5A374();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1A446B2FC;
  v6 = v0[9];

  return (v8)(v6, v2, v3 & 1);
}

uint64_t sub_1A446B2FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);
  if (v1)
  {
    v7 = sub_1A446BB2C;
  }

  else
  {
    v7 = sub_1A446B440;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A446B440()
{
  v1 = [v0[15] viewIfLoaded];
  v0[17] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];
    v0[18] = v3;
    if (v3)
    {
      v4 = v0[9];
      v5 = (v4 + *(type metadata accessor for PhotosUnifiedScrollTestDefinition(0) + 20));
      v7 = *v5;
      v6 = v5[1];
      v0[8] = MEMORY[0x1E69E7CC0];
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = v6;
      v8[4] = v0 + 8;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1A446BD40;
      *(v9 + 24) = v8;
      v0[6] = sub_1A3D9C868;
      v0[7] = v9;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1A3D9A79C;
      v0[5] = &block_descriptor_193;
      _Block_copy(v0 + 2);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v12 = v0[15];

    sub_1A446BC1C();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v10 = v0[15];

    sub_1A446BC1C();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 0;
    swift_willThrow();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A446B958()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1A446BB90;
  }

  else
  {
    v5 = sub_1A446BA94;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A446BA94()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A446BB2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A446BB90()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

unint64_t sub_1A446BC1C()
{
  result = qword_1EB1C2860[0];
  if (!qword_1EB1C2860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C2860);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore0A11PPTTestCaseC5Error33_B8B41EE30B153725A92B3C94454954CALLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1A446BC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A446BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1A446BD18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1A446BD40(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [a1 accessibilityIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A524C674();
    v10 = v9;

    if (v8 == v3 && v10 == v4)
    {
    }

    else
    {
      v12 = sub_1A524EAB4();

      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    v13 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }
}

unint64_t sub_1A446BE38()
{
  result = qword_1EB1C28F0[0];
  if (!qword_1EB1C28F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C28F0);
  }

  return result;
}

uint64_t sub_1A446BE98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A446BEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1A446BFE0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsAlbumAttributionWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A446C120(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1E0))(a2);
  }
}

void (*sub_1A446C1B0(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A446C1F8;
}

void sub_1A446C1F8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A446BFE0(v3);
  }

  else
  {
    sub_1A446BFE0(v2);
  }
}

uint64_t sub_1A446C260(void *a1)
{
  v2 = v1;
  sub_1A446C560(0);
  v18[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(0);
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v11 = v10();
  v12 = (*(v8 + 376))();

  result = 0;
  if (v12)
  {
    v14 = *((*v9 & *v2) + 0x108);
    v18[0] = v6;
    v15 = a1;
    v16 = v14();
    v17 = v10();
    sub_1A46DBE9C(v15, v16, v17);
  }

  return result;
}

void sub_1A446C560(uint64_t a1)
{
  if (!qword_1EB128888)
  {
    type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(255);
    sub_1A446C5C8(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128888);
    }
  }
}

void sub_1A446C5C8(uint64_t a1)
{
  if (!qword_1EB127860)
  {
    sub_1A5248334();
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127860);
    }
  }
}

uint64_t sub_1A446C620()
{
  v0 = [objc_opt_self() px_sharedApplication];
  v1 = sub_1A5240D44();
  [v0 px:v1 navigateToPhotosURL:0 completionHandler:?];

  return MEMORY[0x1EEDDE398]();
}

uint64_t sub_1A446C6AC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsAlbumAttributionWidget____lazy_storage___hasSiblingWidgetAbove;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsAlbumAttributionWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v2 == 2)
  {
    v2 = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
    v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
    LOBYTE(v2) = (*(v2 + 440))();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1A446C760()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsAlbumAttributionWidget____lazy_storage___hasSiblingWidgetBelow;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsAlbumAttributionWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v3 == 2)
  {
    type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
    v5 = v4();
    v6 = sub_1A418D68C(v5);

    if (v6 & 1) != 0 || (type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel(0), v7 = v4(), v8 = sub_1A440737C(v7), v7, (v8))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      type metadata accessor for PhotosDetailsAssetProvenanceViewModel(0);
      v9 = v4();
      LOBYTE(v3) = sub_1A3FBD1E0(v9);
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

void sub_1A446C880(uint64_t a1)
{
  if (!qword_1EB13B358)
  {
    sub_1A446C560(255);
    v3 = v2;
    v4 = sub_1A446C8E4();
    v6 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB13B358);
    }
  }
}

unint64_t sub_1A446C8E4()
{
  result = qword_1EB13B360;
  if (!qword_1EB13B360)
  {
    sub_1A446C560(255);
    sub_1A446C9C4(&qword_1EB13B368, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView, &unk_1A534B614);
    sub_1A446C9C4(&qword_1EB13B370, sub_1A446C5C8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B360);
  }

  return result;
}

uint64_t sub_1A446C9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A446CA0C(uint64_t a1, uint64_t a2)
{
  sub_1A446C560(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A446CA70(uint64_t a1)
{
  sub_1A446C560(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A446CB28()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6E41F0);
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1A446CE94()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  if (sub_1A446C6AC())
  {
    return 2;
  }

  return 0;
}

uint64_t sub_1A446CF04(uint64_t result)
{
  if ((result & 2) != 0)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    if (result)
    {
      v2 = result;
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      v6[4] = sub_1A446D0F4;
      v6[5] = v3;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1A3C2E0D0;
      v6[3] = &block_descriptor_194;
      v4 = _Block_copy(v6);
      swift_unknownObjectRetain();
      v5 = v1;

      [v2 widget:v5 animateChanges:v4 withAnimationOptions:0];
      _Block_release(v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1A446D0B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAlbumAttributionWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A446D128()
{
  type metadata accessor for LemonadeStoryFilterProvider();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1A3C7E8B0(0, v1);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 alwaysFilterPlaceholder];

  v4 = 3;
  if (!v3)
  {
    v4 = 0;
  }

  *(v0 + 112) = v4;
  *(v0 + 120) = v3 ^ 1;
  qword_1EB1EB2C0 = v0;
}

uint64_t *sub_1A446D1BC()
{
  if (qword_1EB180420 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB2C0;
}

id sub_1A446D220(uint64_t a1, char a2)
{
  if (*(v2 + 120) == 1 && (a2 & 1) != 0)
  {
    return 0;
  }

  if (!*(v2 + 120))
  {
    a1 = *(v2 + 112);
  }

  v5 = [objc_opt_self() sharedRepository];
  swift_getObjectType();
  v6 = sub_1A48B49EC(a1);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A446D2A4(__n128 a1)
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v1);
}

uint64_t sub_1A446D2F8()
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
  __swift_allocate_value_buffer(v6, qword_1EB1EBDD8);
  __swift_project_value_buffer(v6, qword_1EB1EBDD8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A446D4E4()
{
  result = qword_1EB13B390;
  if (!qword_1EB13B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B390);
  }

  return result;
}

void sub_1A446D538(uint64_t a1)
{
  if (!qword_1EB13B3A0)
  {
    sub_1A447065C(255, &qword_1EB13B3A8, sub_1A446D5D0, &type metadata for FilterLibraryIntentViewMode, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B3A0);
    }
  }
}

unint64_t sub_1A446D5D0()
{
  result = qword_1EB13B3B0;
  if (!qword_1EB13B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3B0);
  }

  return result;
}

uint64_t sub_1A446D624(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A446D6BC, v4, v3);
}

uint64_t sub_1A446D6BC()
{
  *(v0 + 16) = *(v0 + 32);
  sub_1A523FF44();
  v1 = 0xE800000000000000;
  v2 = 0x6C616E6F73726570;
  if (*(v0 + 88) != 1)
  {
    v2 = 0x646572616873;
    v1 = 0xE600000000000000;
  }

  if (*(v0 + 88))
  {
    v3 = v2;
  }

  else
  {
    v3 = 1752461154;
  }

  if (*(v0 + 88))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  sub_1A446D4E4();
  *v5 = v0;
  v5[1] = sub_1A446D80C;
  v6 = *(v0 + 24);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, v3, v4, 0, 1, &unk_1A533EBA0);
}

uint64_t sub_1A446D80C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A446D928;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A446D928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A446D998(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A446DA30, v4, v3);
}

uint64_t sub_1A446DA30()
{
  sub_1A523FF44();
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1A446DAE4;

  return sub_1A446F868(v1);
}

uint64_t sub_1A446DAE4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1A446DC90;
  }

  else
  {
    v5 = sub_1A446DC20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A446DC20()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A446DC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A446DCF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A446D998(a1, v1);
}

uint64_t sub_1A446DD90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A446F868(a1);
}

uint64_t sub_1A446DE38(uint64_t a1)
{
  v31 = a1;
  v1 = sub_1A5240334();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1A44706C4(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = v24 - v7;
  sub_1A44706C4(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = v24 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v24[0] = sub_1A5240BB4();
  v16 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  sub_1A447065C(0, &qword_1EB13B3A8, sub_1A446D5D0, &type metadata for FilterLibraryIntentViewMode, MEMORY[0x1E695A1A0]);
  v24[1] = v17;
  sub_1A524C5B4();
  sub_1A5241244();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v11 + 104);
  v19(v13, v18, v10);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v19(v13, v18, v10);
  v20 = v25;
  sub_1A5240BC4();
  (*(v16 + 56))(v20, 0, 1, v24[0]);
  v32[0] = 3;
  v21 = sub_1A523FDB4();
  v22 = *(*(v21 - 8) + 56);
  v22(v26, 1, 1, v21);
  v22(v27, 1, 1, v21);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  sub_1A446FD94();
  return sub_1A523FF84();
}

uint64_t sub_1A446E39C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C2A10 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBDD8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A446E45C(uint64_t a1, uint64_t a2)
{
  sub_1A447065C(0, &qword_1EB13B388, sub_1A446D4E4, &type metadata for FilterLibraryIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A447065C(0, &qword_1EB13B398, sub_1A446D4E4, &type metadata for FilterLibraryIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A446D538(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A446E644(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A446D624(a1, v4);
}

uint64_t sub_1A446E6E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A446DE38(&unk_1F170FBF0);
  *a1 = result;
  return result;
}

uint64_t sub_1A446E714(uint64_t a1)
{
  v2 = sub_1A446D4E4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A446E750(double a1)
{
  sub_1A44706C4(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v13[0] = sub_1A5240BA4();
  v4 = *(v13[0] - 8);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1A5240394();
  __swift_allocate_value_buffer(v11, qword_1EB1EBDF0);
  __swift_project_value_buffer(v11, qword_1EB1EBDF0);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v13[0]);
  sub_1A5240BC4();
  (*(v10 + 56))(v3, 1, 1, v9);
  return sub_1A5240384();
}

uint64_t sub_1A446EA5C(double a1)
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A44706C4(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = v32 - v3;
  sub_1A44706C4(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = v32 - v5;
  v48 = sub_1A5240BA4();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v37 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A5240BB4();
  v12 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  sub_1A44706C4(0, &qword_1EB13B440, sub_1A4470728, MEMORY[0x1E69E6F90]);
  sub_1A4470728(0);
  v14 = v13;
  v36 = v13;
  v15 = *(*(v13 - 8) + 72);
  v16 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v38 = 2 * v15;
  v17 = swift_allocObject();
  v40 = v17;
  *(v17 + 16) = xmmword_1A52FF950;
  v50 = v17 + v16;
  v35 = *(v14 + 48);
  *(v17 + v16) = 0;
  v32[1] = v11;
  sub_1A524C5B4();
  sub_1A5241244();
  v49 = *MEMORY[0x1E6968DF0];
  v18 = *(v6 + 104);
  v34 = v6 + 104;
  v47 = v18;
  v19 = v37;
  v18(v37);
  sub_1A5240BC4();
  v33 = *(v12 + 56);
  v46 = v12 + 56;
  v20 = v39;
  v21 = v45;
  v33(v39, 1, 1, v45);
  v43 = sub_1A5240244();
  v22 = *(v43 - 8);
  v42 = *(v22 + 56);
  v44 = v22 + 56;
  v23 = v41;
  v42(v41, 1, 1, v43);
  v24 = v50;
  v25 = v23;
  sub_1A5240264();
  v26 = v36;
  v35 = *(v36 + 48);
  *(v24 + v15) = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v47(v19, v49, v48);
  sub_1A5240BC4();
  v27 = v21;
  v28 = v33;
  v33(v20, 1, 1, v27);
  v42(v25, 1, 1, v43);
  sub_1A5240264();
  v29 = (v50 + v38);
  v38 = *(v26 + 48);
  *v29 = 2;
  sub_1A524C5B4();
  sub_1A5241244();
  v47(v19, v49, v48);
  sub_1A5240BC4();
  v28(v20, 1, 1, v45);
  v42(v25, 1, 1, v43);
  sub_1A5240264();
  v30 = sub_1A446FDE8(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB1EBE08 = v30;
  return result;
}

uint64_t sub_1A446F140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C616E6F73726570;
  if (v2 != 1)
  {
    v4 = 0x646572616873;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1752461154;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C616E6F73726570;
  if (*a2 != 1)
  {
    v8 = 0x646572616873;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752461154;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A446F234()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A446F2CC(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A446F350(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A446F3E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A446FFA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A446F414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E6F73726570;
  if (v2 != 1)
  {
    v5 = 0x646572616873;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752461154;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A446F468@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C2A20 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240394();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBDF0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1A446F510(uint64_t a1)
{
  v2 = sub_1A446FD94();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

void sub_1A446F55C()
{
  if (qword_1EB1C2A28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A446F5D4(uint64_t a1)
{
  v2 = sub_1A447031C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A446F630(uint64_t a1)
{
  v1 = a1;
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A446F6EC(v1, v2);
}

unint64_t sub_1A446F6EC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE800000000000000;
          v8 = 0x6C616E6F73726570;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x646572616873;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1752461154)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1752461154;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6C616E6F73726570;
      }

      else
      {
        v10 = 0x646572616873;
      }

      if (v9 == 1)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1A524EAB4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_1A446F868(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1A524CC54();
  v1[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A446F95C, v4, v3);
}

uint64_t sub_1A446F95C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A3CB648C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Parameters: { viewMode: %{public}ld }", v8, 0xCu);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];

  (*(v10 + 8))(v9, v11);
  type metadata accessor for PXAppDependencyManager();
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1A446FAC4;

  return sub_1A4896234();
}

uint64_t sub_1A446FAC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = sub_1A446FD28;
  }

  else
  {
    v7 = sub_1A446FC08;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A446FC08()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  sub_1A48962D4(v3, 0);
  if (v2)
  {
    v4 = v0[10];
  }

  else
  {
    v6 = v0[10];
    v7 = v0[2];
    v8 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];
    [v8 setViewMode_];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A446FD28()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A446FD94()
{
  result = qword_1EB13B3B8;
  if (!qword_1EB13B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3B8);
  }

  return result;
}

unint64_t sub_1A446FDE8(uint64_t a1)
{
  sub_1A4470728(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4470790(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A44707FC(v10, v6);
      v12 = *v6;
      result = sub_1A446F630(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1A5240274();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_1A446FFA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A446FFF8()
{
  result = qword_1EB13B3C0;
  if (!qword_1EB13B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3C0);
  }

  return result;
}

unint64_t sub_1A4470050()
{
  result = qword_1EB13B3C8;
  if (!qword_1EB13B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3C8);
  }

  return result;
}

unint64_t sub_1A447010C()
{
  result = qword_1EB13B3D0;
  if (!qword_1EB13B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3D0);
  }

  return result;
}

unint64_t sub_1A4470164()
{
  result = qword_1EB13B3D8;
  if (!qword_1EB13B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3D8);
  }

  return result;
}

unint64_t sub_1A44701BC()
{
  result = qword_1EB13B3E0;
  if (!qword_1EB13B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3E0);
  }

  return result;
}

unint64_t sub_1A4470214()
{
  result = qword_1EB13B3E8;
  if (!qword_1EB13B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3E8);
  }

  return result;
}

unint64_t sub_1A447026C()
{
  result = qword_1EB13B3F0;
  if (!qword_1EB13B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3F0);
  }

  return result;
}

unint64_t sub_1A44702C4()
{
  result = qword_1EB13B3F8;
  if (!qword_1EB13B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B3F8);
  }

  return result;
}

unint64_t sub_1A447031C()
{
  result = qword_1EB13B400;
  if (!qword_1EB13B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B400);
  }

  return result;
}

unint64_t sub_1A44703C8()
{
  result = qword_1EB13B408;
  if (!qword_1EB13B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B408);
  }

  return result;
}

unint64_t sub_1A4470420()
{
  result = qword_1EB13B410;
  if (!qword_1EB13B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B410);
  }

  return result;
}

unint64_t sub_1A4470478()
{
  result = qword_1EB13B418;
  if (!qword_1EB13B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B418);
  }

  return result;
}

uint64_t sub_1A4470514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A447055C()
{
  if (!qword_1EB13B428)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B428);
    }
  }
}

unint64_t sub_1A44705CC()
{
  result = qword_1EB13B430;
  if (!qword_1EB13B430)
  {
    sub_1A447065C(255, &qword_1EB13B438, sub_1A446D4E4, &type metadata for FilterLibraryIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B430);
  }

  return result;
}

void sub_1A447065C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44706C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4470728(uint64_t a1)
{
  if (!qword_1EB13B448)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13B448);
    }
  }
}

void sub_1A4470790(uint64_t a1)
{
  if (!qword_1EB13B450)
  {
    sub_1A5240274();
    sub_1A4470478();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B450);
    }
  }
}

uint64_t sub_1A44707FC(uint64_t a1, uint64_t a2)
{
  sub_1A4470728(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4470868@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F88738(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeRootView(0);
  sub_1A4480FE8(v1 + *(v10 + 28), v9, sub_1A3F88738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A4481050(v9, a1, sub_1A3DC7D88);
  }

  v12 = sub_1A524D254();
  v13 = sub_1A524A014();
  sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t static LemonadeRootView.navigationTitle.getter()
{
  if (*sub_1A4630760())
  {
    v0 = 0xD000000000000020;
  }

  else
  {
    v0 = 0xD000000000000025;
  }

  return sub_1A3C38BD4(v0);
}

char *sub_1A4470AD4@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  type metadata accessor for LemonadeRootTitleSubtitleView(0, a1);
  v4 = 1;
  result = LemonadeRootTitleSubtitleView.__allocating_init(tabIdentifier:)(&v4);
  *a2 = result;
  return result;
}

uint64_t sub_1A4470B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v6 = type metadata accessor for LemonadeRootView(0);
  v7 = v6[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[8];
  sub_1A524B694();
  *v8 = v13;
  *(v8 + 8) = v14;
  v9 = a3 + v6[9];
  sub_1A524B694();
  *v9 = v13;
  *(v9 + 8) = v14;
  v10 = (a3 + v6[10]);
  sub_1A524B694();
  *v10 = v13;
  v10[1] = v14;
  shouldUseNewCollectionsLayout()();
  sub_1A3F93828();
  sub_1A52480C4();
  type metadata accessor for LemonadeRootTitleSubtitleView(0, v11);
  result = sub_1A5247C74();
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for LemonadeRootView(uint64_t a1)
{
  result = qword_1EB16D420;
  if (!qword_1EB16D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void LemonadeRootView.body.getter(char *a1@<X8>)
{
  v110 = a1;
  sub_1A4471B8C(0);
  v92 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v111 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475778(0);
  v95 = v4;
  v94 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v90 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475D74(0);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475D9C(0);
  v98 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v99 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475E9C(0);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v100 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475EE4(0);
  v102 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v103 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475F78(0);
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v107 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44744DC(0, &qword_1EB13B600, sub_1A4475F78, sub_1A4475FC0, &unk_1A5499F14);
  v108 = *(v16 - 8);
  v109 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v104 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v105 = v85 - v19;
  v20 = sub_1A5246E54();
  v88 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LemonadeRootView(0);
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v93 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v85 - v26;
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A4473744(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView, &protocol conformance descriptor for LemonadeRootView);
  MEMORY[0x1A5905890](v23, v31);
  v32 = sub_1A5246E94();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_1A447AACC(v30, sub_1A3E73E5C);
  }

  else
  {
    v87 = v20;
    sub_1A4480FE8(v1, v27, type metadata accessor for LemonadeRootView);
    sub_1A5246E44();
    v34 = sub_1A5246E84();
    v86 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v35 = swift_slowAlloc();
      v85[1] = v1;
      v36 = v35;
      v85[0] = swift_slowAlloc();
      v112[0] = v85[0];
      *v36 = 136446210;
      v37 = sub_1A524A694();
      v39 = v38;
      sub_1A447AACC(v27, type metadata accessor for LemonadeRootView);
      sub_1A3C2EF94(v37, v39, v112);
    }

    v88[1](v22, v87);
    sub_1A447AACC(v27, type metadata accessor for LemonadeRootView);
    (*(v33 + 8))(v30, v32);
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v40 = [swift_getObjCClassFromMetadata() sharedInstance];
  v41 = sub_1A4630760();
  v42 = *v1;
  v115 = *v1;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v1;
  v85[-4] = v1;
  LOBYTE(v85[-3]) = v44;
  BYTE1(v85[-3]) = v45;
  BYTE2(v85[-3]) = v46;
  BYTE3(v85[-3]) = v47;
  BYTE4(v85[-3]) = v48;
  v85[-2] = v40;
  v49 = type metadata accessor for LemonadeRootViewModel(0);
  sub_1A4471CB8(0);
  v51 = v50;
  sub_1A4471DAC(255);
  v53 = v52;
  sub_1A44756C4(255);
  v55 = v54;
  v56 = sub_1A4473744(&qword_1EB13B598, sub_1A4471DAC, &unk_1A5363448);

  v112[0] = v53;
  v112[1] = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112[0] = v53;
  v112[1] = v55;
  v113 = v56;
  v114 = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(v112);
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v115, v112, sub_1A44768E4, v49, v51, &off_1F171C838, v58, v111);
  v88 = v40;
  v59 = [v40 enableTabs];
  if (v59)
  {
    sub_1A3C52C70(0, &unk_1EB120978, off_1E771FA50);
    v60 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v60 pinCollectionsTabTitle];
  }

  MEMORY[0x1EEE9AC00](v59);
  v61 = v43;
  v85[-2] = v43;
  sub_1A44744DC(0, &qword_1EB13B5A8, sub_1A44758BC, sub_1A4475BB8, MEMORY[0x1E697D5B8]);
  v63 = v62;
  v64 = sub_1A4473744(&qword_1EB13B5C8, sub_1A4471B8C, &protocol conformance descriptor for LemonadeSpecsProviderView<A, B>);
  sub_1A44758BC(255);
  v66 = v65;
  v67 = sub_1A4475BB8();
  v112[0] = v66;
  v112[1] = v67;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v90;
  v70 = v92;
  v71 = v111;
  sub_1A524A584();
  sub_1A447A880(v71, sub_1A4471B8C);
  v115 = *(v61 + 8);
  v72 = v115;

  v112[0] = v70;
  v112[1] = v63;
  v113 = v64;
  v114 = v68;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v97;
  v75 = v95;
  MEMORY[0x1A5906490](&v115, v95, &type metadata for LemonadeInlinePlaybackEnvironmentModifier, v73);
  (*(v94 + 8))(v69, v75);
  swift_getKeyPath();
  v112[0] = *(*(v42 + 96) + 32);
  sub_1A4476250();

  v76 = v99;
  sub_1A524A964();

  sub_1A447A880(v74, sub_1A4475D74);
  swift_getKeyPath();
  v112[0] = *(v42 + 16);
  v77 = v112[0];
  sub_1A44761A0();
  v78 = v77;
  v79 = v100;
  sub_1A524A964();

  sub_1A447A880(v76, sub_1A4475D9C);
  strcpy(v112, "LemonadeRoot");
  BYTE5(v112[1]) = 0;
  HIWORD(v112[1]) = -5120;
  sub_1A44760F0();
  v80 = v103;
  sub_1A524AB54();
  sub_1A447A880(v79, sub_1A4475E9C);
  swift_getKeyPath();
  v112[0] = v72;
  sub_1A4476070();
  sub_1A524A964();

  sub_1A447A880(v80, sub_1A4475EE4);
  v81 = v93;
  sub_1A4480FE8(v61, v93, type metadata accessor for LemonadeRootView);
  v82 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v83 = swift_allocObject();
  sub_1A4481050(v81, v83 + v82, type metadata accessor for LemonadeRootView);
  v84 = sub_1A4475FC0();
  sub_1A427690C(sub_1A447AA6C, v83, v106, v84);
}

void sub_1A4471B8C(uint64_t a1)
{
  if (!qword_1EB13B458)
  {
    v2 = type metadata accessor for LemonadeRootViewModel(255);
    sub_1A4471CB8(255);
    v4 = v3;
    sub_1A4471DAC(255);
    sub_1A44756C4(255);
    sub_1A4473744(&qword_1EB13B598, sub_1A4471DAC, &unk_1A5363448);
    swift_getOpaqueTypeConformance2();
    v7[0] = v2;
    v7[1] = v4;
    v7[2] = &off_1F171C838;
    v7[3] = swift_getOpaqueTypeConformance2();
    v5 = type metadata accessor for LemonadeSpecsProviderView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13B458);
    }
  }
}

void sub_1A4471CB8(uint64_t a1)
{
  if (!qword_1EB13B460)
  {
    sub_1A4471DAC(255);
    sub_1A44756C4(255);
    sub_1A4473744(&qword_1EB13B598, sub_1A4471DAC, &unk_1A5363448);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B460);
    }
  }
}

void sub_1A4471DAC(uint64_t a1)
{
  if (!qword_1EB13B468)
  {
    sub_1A4472058();
    v7 = v2;
    sub_1A44722F0(255);
    sub_1A4472554(255);
    sub_1A4475268(255);
    sub_1A4472724(255);
    sub_1A447303C(255, &qword_1EB13B510, sub_1A4473FAC, &type metadata for LemonadeTitleSubtitleViewModifier);
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4474F58();
    swift_getOpaqueTypeConformance2();
    sub_1A44754A8(255);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v5 = type metadata accessor for LemonadePresentationRoot(a1, v7, OpaqueTypeConformance2, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13B468);
    }
  }
}

void sub_1A4472058()
{
  if (!qword_1EB13B470)
  {
    sub_1A44722F0(255);
    sub_1A4472554(255);
    sub_1A4475268(255);
    sub_1A4472724(255);
    sub_1A447303C(255, &qword_1EB13B510, sub_1A4473FAC, &type metadata for LemonadeTitleSubtitleViewModifier);
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4474F58();
    swift_getOpaqueTypeConformance2();
    sub_1A44754A8(255);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B470);
    }
  }
}

void sub_1A44722F0(uint64_t a1)
{
  if (!qword_1EB13B478)
  {
    sub_1A4472554(255);
    sub_1A4475268(255);
    sub_1A4472724(255);
    sub_1A447303C(255, &qword_1EB13B510, sub_1A4473FAC, &type metadata for LemonadeTitleSubtitleViewModifier);
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4474F58();
    swift_getOpaqueTypeConformance2();
    sub_1A44754A8(255);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B478);
    }
  }
}

void sub_1A4472554(uint64_t a1)
{
  if (!qword_1EB13B480)
  {
    sub_1A4472724(255);
    sub_1A447303C(255, &qword_1EB13B510, sub_1A4473FAC, &type metadata for LemonadeTitleSubtitleViewModifier);
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4474F58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B480);
    }
  }
}

void sub_1A4472724(uint64_t a1)
{
  if (!qword_1EB13B488)
  {
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B488);
    }
  }
}

void sub_1A447288C(uint64_t a1)
{
  if (!qword_1EB13B490)
  {
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B490);
    }
  }
}

void sub_1A4472984(uint64_t a1)
{
  if (!qword_1EB13B498)
  {
    sub_1A4472A18(255);
    sub_1A4473744(&qword_1EB13B4F8, sub_1A4472A18, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B498);
    }
  }
}

void sub_1A4472A18(uint64_t a1)
{
  if (!qword_1EB13B4A0)
  {
    sub_1A44747A4(255, &qword_1EB13B4A8, sub_1A4472AA0, sub_1A4473A70);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B4A0);
    }
  }
}

void sub_1A4472AC8(uint64_t a1)
{
  if (!qword_1EB13B4B8)
  {
    sub_1A4472C50(255);
    sub_1A4472DB8(255);
    sub_1A4482548(255, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
    sub_1A4472EAC(255);
    sub_1A4472F7C(255);
    sub_1A4473014(255);
    sub_1A44738D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4473980();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5243574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B4B8);
    }
  }
}

void sub_1A4472C50(uint64_t a1)
{
  if (!qword_1EB13B4C0)
  {
    sub_1A4472DB8(255);
    sub_1A4482548(255, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
    sub_1A4472EAC(255);
    sub_1A4472F7C(255);
    sub_1A4473014(255);
    sub_1A44738D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4473980();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B4C0);
    }
  }
}

void sub_1A4472DB8(uint64_t a1)
{
  if (!qword_1EB13B4C8)
  {
    sub_1A4472EAC(255);
    sub_1A4472F7C(255);
    sub_1A4473014(255);
    sub_1A44738D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B4C8);
    }
  }
}

void sub_1A4472EAC(uint64_t a1)
{
  if (!qword_1EB13B4D0)
  {
    sub_1A4472F7C(255);
    sub_1A4473014(255);
    sub_1A44738D0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B4D0);
    }
  }
}

void sub_1A4472F7C(uint64_t a1)
{
  if (!qword_1EB13B4D8)
  {
    sub_1A4473014(255);
    sub_1A44738D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B4D8);
    }
  }
}

void sub_1A447303C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A44730A0(uint64_t a1)
{
  if (!qword_1EB122030)
  {
    sub_1A4473124(255);
    sub_1A4473878();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122030);
    }
  }
}

void sub_1A4473124(uint64_t a1)
{
  if (!qword_1EB1258B0)
  {
    sub_1A447323C(255);
    v3 = v2;
    sub_1A4473334(255);
    sub_1A447303C(255, &qword_1EB123AE0, sub_1A4473334, MEMORY[0x1E697E5E0]);
    sub_1A4473744(&qword_1EB121680, sub_1A4473334, MEMORY[0x1E6981870]);
    sub_1A447378C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6 = type metadata accessor for LemonadeRootScrollView(a1, v3, OpaqueTypeConformance2, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1258B0);
    }
  }
}

void sub_1A447323C(uint64_t a1)
{
  if (!qword_1EB121FE0)
  {
    sub_1A4473334(255);
    sub_1A447303C(255, &qword_1EB123AE0, sub_1A4473334, MEMORY[0x1E697E5E0]);
    sub_1A4473744(&qword_1EB121680, sub_1A4473334, MEMORY[0x1E6981870]);
    sub_1A447378C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FE0);
    }
  }
}

void sub_1A4473334(uint64_t a1)
{
  if (!qword_1EB121678)
  {
    sub_1A44733C8(255);
    sub_1A4473744(&qword_1EB120FB0, sub_1A44733C8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121678);
    }
  }
}

void sub_1A44733C8(uint64_t a1)
{
  if (!qword_1EB120FA8)
  {
    sub_1A447464C(255, &qword_1EB121838, sub_1A4473464, sub_1A44734E0, sub_1A4473564);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120FA8);
    }
  }
}

void sub_1A4473464()
{
  if (!qword_1EB1273B8)
  {
    v0 = sub_1A524B794();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1273B8);
    }
  }
}

void sub_1A44734E0(uint64_t a1)
{
  if (!qword_1EB1287E0)
  {
    sub_1A4482990(255, &qword_1EB1287E8, &type metadata for LemonadeExpandableCuratedLibraryView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1287E0);
    }
  }
}

void sub_1A44735B4(uint64_t a1)
{
  if (!qword_1EB121770)
  {
    sub_1A4473648(255);
    sub_1A4473744(&qword_1EB121308, sub_1A4473648, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121770);
    }
  }
}

void sub_1A447367C(uint64_t a1)
{
  if (!qword_1EB1259F8)
  {
    sub_1A4473710(255);
    sub_1A4482548(255, &qword_1EB1258A8, &type metadata for LemonadeRootViewFooter, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1259F8);
    }
  }
}

uint64_t sub_1A4473744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A447378C()
{
  result = qword_1EB123AE8;
  if (!qword_1EB123AE8)
  {
    sub_1A447303C(255, &qword_1EB123AE0, sub_1A4473334, MEMORY[0x1E697E5E0]);
    sub_1A4473744(&qword_1EB121680, sub_1A4473334, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AE8);
  }

  return result;
}

unint64_t sub_1A4473878()
{
  result = qword_1EB169FF0[0];
  if (!qword_1EB169FF0[0])
  {
    sub_1A4473124(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB169FF0);
  }

  return result;
}

unint64_t sub_1A44738D0()
{
  result = qword_1EB124010;
  if (!qword_1EB124010)
  {
    sub_1A4473014(255);
    sub_1A4473124(255);
    sub_1A4473878();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124010);
  }

  return result;
}

unint64_t sub_1A4473980()
{
  result = qword_1EB125910;
  if (!qword_1EB125910)
  {
    sub_1A4482548(255, &qword_1EB125930, &type metadata for LemonadeRootViewModel.ScrollRequest, MEMORY[0x1E69E6720]);
    sub_1A4473A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125910);
  }

  return result;
}

unint64_t sub_1A4473A1C()
{
  result = qword_1EB125938;
  if (!qword_1EB125938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125938);
  }

  return result;
}

void sub_1A4473A70(uint64_t a1)
{
  if (!qword_1EB13B4E0)
  {
    sub_1A4473B18(255);
    sub_1A4473B4C(&qword_1EB13B4E8, sub_1A4473B18, sub_1A4473BBC, MEMORY[0x1E6982090]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B4E0);
    }
  }
}

uint64_t sub_1A4473B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

void sub_1A4473BF0(uint64_t a1)
{
  if (!qword_1EB1275A8)
  {
    sub_1A4473CC4(255);
    sub_1A5249A24();
    sub_1A4473744(&qword_1EB129B38, sub_1A4473CC4, &protocol conformance descriptor for LemonadeNavigationContainer<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275A8);
    }
  }
}

void sub_1A4473CC4(uint64_t a1)
{
  if (!qword_1EB129B30)
  {
    v2 = type metadata accessor for LemonadeCustomizeView(255);
    v3 = sub_1A4473744(&qword_1EB12A230, type metadata accessor for LemonadeCustomizeView, &protocol conformance descriptor for LemonadeCustomizeView);
    v5 = type metadata accessor for LemonadeNavigationContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB129B30);
    }
  }
}

unint64_t sub_1A4473D58()
{
  result = qword_1EB128650;
  if (!qword_1EB128650)
  {
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473CC4(255);
    sub_1A5249A24();
    sub_1A4473744(&qword_1EB129B38, sub_1A4473CC4, &protocol conformance descriptor for LemonadeNavigationContainer<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128650);
  }

  return result;
}

void sub_1A4473E7C(uint64_t a1)
{
  if (!qword_1EB13B508)
  {
    sub_1A447288C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B508);
    }
  }
}

void sub_1A4473FAC(uint64_t a1)
{
  if (!qword_1EB13B518)
  {
    sub_1A4474218(255);
    sub_1A4472724(255);
    sub_1A44744DC(255, &qword_1EB13B528, sub_1A4474440, sub_1A4474EB0, MEMORY[0x1E697C790]);
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4474440(255);
    sub_1A4474EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B518);
    }
  }
}

void sub_1A4474218(uint64_t a1)
{
  if (!qword_1EB13B520)
  {
    sub_1A4472724(255);
    sub_1A44744DC(255, &qword_1EB13B528, sub_1A4474440, sub_1A4474EB0, MEMORY[0x1E697C790]);
    sub_1A447288C(255);
    sub_1A4473E7C(255);
    sub_1A4472984(255);
    sub_1A447303C(255, &qword_1EB128648, sub_1A4473BF0, MEMORY[0x1E69805D8]);
    sub_1A4473744(&qword_1EB13B500, sub_1A4472984, MEMORY[0x1E6981880]);
    sub_1A4473D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4474440(255);
    sub_1A4474EB0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B520);
    }
  }
}

void sub_1A4474440(uint64_t a1)
{
  if (!qword_1EB13B530)
  {
    sub_1A44744DC(255, &qword_1EB13B538, sub_1A4474568, sub_1A4474DA4, MEMORY[0x1E697C790]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13B530);
    }
  }
}

void sub_1A44744DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A44745B0(uint64_t a1)
{
  if (!qword_1EB122DB8)
  {
    sub_1A447464C(255, &qword_1EB122DC8, sub_1A44746E8, sub_1A44748C0, sub_1A4474A14);
    v1 = sub_1A52495C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122DB8);
    }
  }
}

void sub_1A447464C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A447471C(uint64_t a1)
{
  if (!qword_1EB122DD8)
  {
    sub_1A44747A4(255, &qword_1EB124640, sub_1A4474820, MEMORY[0x1E697BFF8]);
    v1 = sub_1A52495C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122DD8);
    }
  }
}

void sub_1A44747A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4474820(uint64_t a1)
{
  if (!qword_1EB124648)
  {
    type metadata accessor for LemonadeShelvesSortButton(255);
    sub_1A4473744(&qword_1EB1256D8, type metadata accessor for LemonadeShelvesSortButton, &unk_1A531F338);
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124648);
    }
  }
}

void sub_1A44748C0(uint64_t a1)
{
  if (!qword_1EB124388)
  {
    sub_1A4474974(255);
    sub_1A4473744(&qword_1EB124658, sub_1A4474974, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB124388);
    }
  }
}

void sub_1A4474974(uint64_t a1)
{
  if (!qword_1EB124650)
  {
    type metadata accessor for ProfileButton(255);
    sub_1A4473744(&qword_1EB12A660, type metadata accessor for ProfileButton, &unk_1A5363588);
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124650);
    }
  }
}

void sub_1A4474A48(uint64_t a1)
{
  if (!qword_1EB122330)
  {
    sub_1A4474C68(255, &qword_1EB124630, sub_1A4474AF0, &type metadata for LemonadeShelvesSearchButton);
    sub_1A4474B44();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122330);
    }
  }
}

unint64_t sub_1A4474AF0()
{
  result = qword_1EB125600;
  if (!qword_1EB125600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125600);
  }

  return result;
}

unint64_t sub_1A4474B44()
{
  result = qword_1EB124638;
  if (!qword_1EB124638)
  {
    sub_1A4474C68(255, &qword_1EB124630, sub_1A4474AF0, &type metadata for LemonadeShelvesSearchButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124638);
  }

  return result;
}

void sub_1A4474BC0(uint64_t a1)
{
  if (!qword_1EB13B548)
  {
    sub_1A4474C68(255, &qword_1EB13B550, sub_1A4474CD4, &type metadata for LemonadeShelvesSortConfirmationButton);
    sub_1A4474D28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B548);
    }
  }
}

void sub_1A4474C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1A5247F34();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4474CD4()
{
  result = qword_1EB13B558;
  if (!qword_1EB13B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B558);
  }

  return result;
}

unint64_t sub_1A4474D28()
{
  result = qword_1EB13B560;
  if (!qword_1EB13B560)
  {
    sub_1A4474C68(255, &qword_1EB13B550, sub_1A4474CD4, &type metadata for LemonadeShelvesSortConfirmationButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B560);
  }

  return result;
}

unint64_t sub_1A4474DA4()
{
  result = qword_1EB13B568;
  if (!qword_1EB13B568)
  {
    sub_1A4474568(255);
    sub_1A4473744(&qword_1EB122DC0, sub_1A44745B0, MEMORY[0x1E697C5E0]);
    sub_1A4474C68(255, &qword_1EB13B550, sub_1A4474CD4, &type metadata for LemonadeShelvesSortConfirmationButton);
    sub_1A4474D28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B568);
  }

  return result;
}

unint64_t sub_1A4474EB0()
{
  result = qword_1EB13B570;
  if (!qword_1EB13B570)
  {
    sub_1A4474440(255);
    sub_1A4474568(255);
    sub_1A4474DA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B570);
  }

  return result;
}