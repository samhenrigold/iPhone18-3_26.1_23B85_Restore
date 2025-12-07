id sub_188ECAC24()
{
  v1 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal];
  }

  else
  {
    v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
    [v4 setAutoresizingMask_];
    [v0 bounds];
    [v4 setFrame_];

    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_188ECACFC(uint64_t a1, void *a2, double a3)
{
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_region] = a1;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_radius] = a3;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView] = a2;
  type metadata accessor for _UIBlurredEdgeMask();
  v14.receiver = v3;
  v14.super_class = v5;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = [v7 layer];
  [v8 setContentsGravity_];

  v9 = [v7 layer];
  [v9 setNeedsDisplayOnBoundsChange_];

  v10 = [objc_opt_self() defaultCenter];
  v11 = [v6 superview];
  [v10 addObserver:v7 selector:sel__contentViewDidUpdate name:@"_UIVisualEffectContentViewDidUpdateNotification" object:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for _UIVisualEffectIsContentStaticTrait;
  *(inited + 40) = &off_1EE43C698;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();
  swift_setDeallocating();
  return v7;
}

id sub_188ECAEFC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = type metadata accessor for _UIBlurredEdgeMask();
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc, v2);
}

void sub_188ECB0DC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188ECC9C4;
  *(v4 + 24) = v3;
  v7[4] = sub_188A4B574;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_188A4A968;
  v7[3] = &block_descriptor_35;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_188ECB2A0()
{
  v1 = [*&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView] superview];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 _isContentViewStatic];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v6 = sub_18A4A7548();

  if (v6 >> 62)
  {
    v7 = sub_18A4A7F68();
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_188E49300(i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setHidden_];
  }

LABEL_16:

  v11 = [v0 layer];
  v12 = v11;
  if (v4)
  {
    v13 = sub_188ECBAE4();
    [v12 setContents_];
  }

  else
  {
    [v11 setContents_];

    sub_188ECC308();
  }
}

id sub_188ECB4B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView);
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v1, &unk_1EA936408);
  swift_endAccess();
  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_188A3F5FC(v9, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_8;
  }

  sub_188A34624(0, &qword_1EA92E808, 0x1E695DF90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    swift_beginAccess();
    v3 = v4;
    objc_setAssociatedObject(v1, &unk_1EA936408, v3, 1);
    swift_endAccess();

    return v3;
  }

  return v6;
}

void sub_188ECB61C()
{
  v1 = sub_188ECB4B4();
  *&v25[0] = 1802723693;
  *(&v25[0] + 1) = 0xE400000000000000;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(v25, &aBlock);
    __swift_project_boxed_opaque_existential_0(&aBlock, v22);
    v3 = sub_18A4A86A8();
    v4 = CFGetTypeID(v3);
    swift_unknownObjectRelease();
    if (v4 == CGImageGetTypeID())
    {
      sub_188A55538(&aBlock, v25);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  sub_188A34624(0, &unk_1EA936450, off_1E70E99D0);
  v5 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v5 setPreferredRange_];
  [v5 setOpaque_];
  [*&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView] bounds];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v5 format:{v6, v7, v8, v9}];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_188ECC578;
  *(v12 + 24) = v11;
  v23 = sub_188A86D40;
  v24 = v12;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v21 = sub_188DBDF04;
  v22 = &block_descriptor_20;
  v13 = _Block_copy(&aBlock);
  v14 = v0;

  v15 = [v10 imageWithActions_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v16 = [v15 CGImage];
    v17 = sub_188ECB4B4();
    v18 = sub_18A4A7258();
    v19 = v16;
    [v17 __swift_setObject_forKeyedSubscript_];
  }
}

void sub_188ECB9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView);
  v3 = [v2 layer];
  v4 = [v3 shadowPath];

  if (v4)
  {
    v5 = [objc_opt_self() blackColor];
    [v5 setFill];

    v6 = [objc_opt_self() bezierPathWithCGPath_];
    [v6 fill];
  }

  else
  {
    [v2 bounds];

    [v2 drawViewHierarchyInRect_];
  }
}

id sub_188ECBAE4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  [v2 displayScale];
  v4 = v3;

  v5 = [v1 layer];
  [v5 setContentsScale_];

  v6 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_region;
  v7 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_radius;
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  MEMORY[0x18CFE22D0](0x2D6F6C6168, 0xE500000000000000);
  type metadata accessor for Region(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](45, 0xE100000000000000);
  v8 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v8);

  v9 = sub_188ECB4B4();
  *&v55[0] = 0;
  *(&v55[0] + 1) = 0xE000000000000000;

  v10 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v10)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(v55, &v56);
    __swift_project_boxed_opaque_existential_0(&v56, v57);
    v11 = sub_18A4A86A8();
    v12 = CFGetTypeID(v11);
    swift_unknownObjectRelease();
    if (v12 == CGImageGetTypeID())
    {

      sub_188A55538(&v56, v55);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      return v54;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v56);
  }

  sub_188ECB61C();
  v13 = v14;
  if (!v14)
  {
LABEL_11:

    return v13;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936438, &unk_18A650AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  v17 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  type metadata accessor for CGColorSpace(0);
  v52 = v18;
  *(inited + 64) = v18;
  *(inited + 40) = DeviceGray;
  v19 = v17;
  v51 = DeviceGray;
  v20 = v13;
  sub_188E8E350(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934EC8, &qword_18A64E9C8);
  v21 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_188ECC530(&qword_1EA933958, type metadata accessor for CIImageOption, &unk_18A64AE70);
  v22 = sub_18A4A7088();

  v23 = [v21 initWithCGImage:v20 options:v22];
  v53 = v20;

  v24 = sub_18A4A7258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0, &unk_18A650B00);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_18A64BFB0;
  *(v25 + 32) = 0x6461527475706E69;
  v26 = v25 + 32;
  *(v25 + 40) = 0xEB00000000737569;
  v27 = v4 * *&v1[v7];
  *(v25 + 72) = MEMORY[0x1E69E7DE0];
  *(v25 + 48) = v27;
  sub_188AF3DD8(v25);
  swift_setDeallocating();
  sub_188A3F5FC(v26, &qword_1EA934DB8, &unk_18A668600);
  v28 = sub_18A4A7088();

  v29 = [v23 imageByApplyingFilter:v24 withInputParameters:v28];

  v30 = *&v1[v6];
  v31 = v23;
  v32 = v29;
  if (!v30 || (v31 = v29, v32 = v23, v30 == 1))
  {
    v33 = v31;
    v34 = v32;
    v35 = sub_18A4A7258();
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_18A64BFB0;
    *(v36 + 32) = 0xD000000000000014;
    *(v36 + 40) = 0x800000018A690BD0;
    *(v36 + 72) = sub_188A34624(0, &qword_1EA936440, 0x1E695F658);
    *(v36 + 48) = v34;
    v49 = v34;
    sub_188AF3DD8(v36);
    swift_setDeallocating();
    sub_188A3F5FC(v36 + 32, &qword_1EA934DB8, &unk_18A668600);
    v37 = sub_18A4A7088();

    v50 = v33;
    v38 = [v33 imageByApplyingFilter:v35 withInputParameters:v37];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936448, &unk_18A650B10);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_18A64BFB0;
    v40 = *MEMORY[0x1E695F868];
    *(v39 + 32) = *MEMORY[0x1E695F868];
    *(v39 + 64) = v52;
    *(v39 + 40) = v51;
    v41 = v51;
    v42 = v40;
    sub_188E8E374(v39);
    swift_setDeallocating();
    sub_188A3F5FC(v39 + 32, &qword_1EA934EB8, &qword_18A64E9B8);
    v43 = objc_allocWithZone(MEMORY[0x1E695F620]);
    type metadata accessor for CIContextOption(0);
    sub_188ECC530(&qword_1EA933948, type metadata accessor for CIContextOption, &unk_18A64AE2C);
    v44 = sub_18A4A7088();

    v45 = [v43 initWithOptions_];

    [v38 extent];
    v13 = [v45 createCGImage:v38 fromRect:*MEMORY[0x1E695F8C0] format:v41 colorSpace:?];
    if (v13)
    {
      v46 = sub_188ECB4B4();
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      v47 = v13;
      [v46 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      return v13;
    }

    goto LABEL_11;
  }

  *&v56 = *&v1[v6];
  result = sub_18A4A8768();
  __break(1u);
  return result;
}

void sub_188ECC308()
{
  v1 = sub_188ECABC0();
  v2 = [v1 layer];

  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (qword_1EA92ECA0 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  [v2 setValue:v3 forKeyPath:v4];

  v5 = *(v0 + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_region);
  if (v5)
  {
    if (v5 != 1)
    {
      type metadata accessor for Region(0);
      sub_18A4A8768();
      __break(1u);
      return;
    }

    v6 = 20;
  }

  else
  {
    v6 = 15;
  }

  v7 = sub_188ECAC24();
  [v7 setCompositingMode_];
}

uint64_t sub_188ECC530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_188ECC580(char *a1)
{
  v2 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
  [v2 setAutoresizingMask_];
  [a1 bounds];
  [v2 setFrame_];
  [a1 addSubview_];
  v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v4 = *MEMORY[0x1E6979BA0];
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKey:v5];

  v6 = sub_18A4A7258();
  [v3 setName_];

  v7 = [v2 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64BFB0;
  *(v8 + 56) = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  *(v8 + 32) = v3;
  v9 = v3;
  v10 = sub_18A4A7518();

  [v7 setFilters_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660, &unk_18A64D440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  if (qword_1EA92ECA0 != -1)
  {
    swift_once();
  }

  v12 = unk_1EA92ECB0;
  *(inited + 32) = qword_1EA92ECA8;
  *(inited + 40) = v12;

  sub_188B8AD8C(inited);
  swift_setDeallocating();
  sub_188ECC874(inited + 32);
  v13 = sub_18A4A7798();

  [v2 _setAdditionalAnimatableKeypaths_];

  return v2;
}

void sub_188ECC8C8()
{
  v1 = UIApp;
  if (UIApp)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_188ECC9BC;
    v6[5] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188A4A8F0;
    v6[3] = &block_descriptor_26_2;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 _performBlockAfterCATransactionCommits_];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_188ECC9E8(void *a1)
{
  v2 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView;
  v3 = *&v1[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 != a1)
  {
    if (!a1)
    {
LABEL_13:
      v12 = *&v1[v2];
      if (!v12)
      {
        return;
      }

      v13 = v12;
      [v13 setTranslatesAutoresizingMaskIntoConstraints_];
      goto LABEL_15;
    }

LABEL_9:
    v9 = a1;
    v10 = [v9 superview];
    if (v10)
    {
      v11 = v10;

      if (v11 == v1)
      {
        [v9 removeFromSuperview];
      }
    }

    goto LABEL_13;
  }

  v13 = v3;
  v4 = [v13 superview];
  if (v4)
  {
    v5 = v4;
    sub_188AF7A44();
    v6 = v1;
    v7 = sub_18A4A7C88();

    v8 = v13;
    if (v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = v13;
LABEL_16:
  v14 = v8;
  [v1 addSubview_];
  v8 = v14;
LABEL_17:
}

void sub_188ECCDF0(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (*a1)
  {
    if (a2)
    {
      v4 = *(*a1 + 16);
      v5 = *(a2 + 16);
      if (v4 == v5)
      {

        v7 = sub_188EF6C40(v6, v2);

        swift_bridgeObjectRelease_n();
        v2 = v7;
        goto LABEL_10;
      }

      if (v5 >= v4)
      {

        goto LABEL_10;
      }
    }

    v2 = *a1;
    goto LABEL_10;
  }

  if (a2)
  {
  }

LABEL_10:
  *a1 = v2;
}

void sub_188ECCEB0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 8) | (*(a2 + 36) << 32);
  v8 = *a1;
  if (*a1)
  {
    v10 = a1[1];
    v9 = a1[2];
    v11 = a1[3];
    v12 = *(a1 + 8);
    v13 = v12 | (*(a1 + 36) << 32);
    if (v4)
    {
      v23[0] = *a2;
      v23[1] = v3;
      v23[2] = v5;
      v23[3] = v6;
      v24 = v7;
      v25 = BYTE4(v7) & 1;
      v17 = v8;
      v18 = v10;
      v19 = v9;
      v20 = v11;
      v21 = v12;
      v22 = BYTE4(v13) & 1;
      sub_188F0D2E8(a2, v16);
      sub_188F0B550(v8, v10, v9, v11);
      sub_18908FD40(v23);
      sub_188F0B59C(v8, v10, v9, v11);

      v4 = v17;
      v3 = v18;
      v5 = v19;
      v6 = v20;
      v14 = 0x100000000;
      if (!v22)
      {
        v14 = 0;
      }

      v7 = v14 | v21;
    }

    else
    {
      v7 = v13 & 0x1FFFFFFFFLL;
      v4 = *a1;
      v3 = a1[1];
      v5 = a1[2];
      v6 = a1[3];
    }
  }

  else if (v4)
  {
    v15 = a2[1];
    sub_188F0D2E8(a2, v23);
    v3 = v15;
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  *(a1 + 8) = v7;
  *(a1 + 36) = BYTE4(v7);
}

void sub_188ECD024(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32) | (*(a2 + 36) << 32);
  v8 = *a1;
  if (*a1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = v12 | (*(a1 + 36) << 32);
    if (!v3)
    {
      v7 = v13 & 0x1FFFFFFFFLL;
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      goto LABEL_12;
    }

    v19 = *a2;
    v20 = v4;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v24 = BYTE4(v7) & 1;
    v18 = v12;

    sub_18908FE70(&v19);
    sub_188F0B59C(v8, v10, v9, v11);
    v4 = v10;
    v5 = v9;
    v6 = v11;
    v14 = v18;
    v15 = BYTE4(v13) & 1;
  }

  else
  {
    if (!v3)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v19 = *a2;
    v20 = v4;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v24 = BYTE4(v7) & 1;

    sub_18908FB80(-1.0);
    v8 = v19;
    v5 = v21;
    v14 = v23;
    v15 = v24;
  }

  v16 = v15 == 0;
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  v7 = v17 | v14;
LABEL_12:
  *a1 = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 36) = BYTE4(v7);
}

uint64_t sub_188ECD198(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      if (a1)
      {
        v13 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v13 = [Strong layer];
      }

      v14 = v13;

      v15 = sub_18A4A7258();
      v16 = [v14 valueForKeyPath_];

      if (v16)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v28, 0, sizeof(v28));
      }

      sub_188A3F29C(v28, &v26, &qword_1EA934050, qword_18A64CA10);
      if (v27)
      {
        sub_188A55538(&v26, v25);
        sub_188A55598(v25, v24);
        sub_188A55598(v24, v23);
        sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
        swift_dynamicCast();
        [v22 CACornerRadiiValue];

        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        sub_188A3F5FC(v28, &qword_1EA934050, qword_18A64CA10);
LABEL_15:
        v17 = swift_unknownObjectWeakLoadStrong();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *(v19 + 24) = a1 & 1;
        *(v19 + 32) = a2;
        *(v19 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C0, &unk_18A650C58);
        swift_allocObject();

        v10 = sub_18922C784(v29, v17, sub_188F0E03C, v19);

        *(v10 + 432) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v26 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v26, &unk_1EA930D18, &qword_1EA9364C0, &unk_18A650C58);

        *(v4 + 48) = v26;
        swift_endAccess();
        sub_188A34360(&unk_1EA930D18, &qword_1EA9364C0, &unk_18A650C58, &unk_18A662940);
        goto LABEL_16;
      }

      sub_188A3F5FC(v28, &qword_1EA934050, qword_18A64CA10);
    }

    memset(v29, 0, 64);
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C0, &unk_18A650C58);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&unk_1EA930D18, &qword_1EA9364C0, &unk_18A650C58, &unk_18A662940);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188ECD5C8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(*(v3 + 48) + 16) && (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D80, &qword_18A650C68);
    v10 = swift_dynamicCastClassUnconditional();
    sub_188A34360(&qword_1EA930FF8, &unk_1EA940D80, &qword_18A650C68, &unk_18A662940);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = v8;
    if (!Strong)
    {
      goto LABEL_13;
    }

    v12 = Strong;
    v13 = (a1 & 1) != 0 ? -[UIView _backing_outermostLayer](Strong) : [Strong layer];
    v14 = v13;

    v15 = sub_18A4A7258();
    v16 = [v14 valueForKeyPath_];

    if (v16)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v26[0] = v27;
    v26[1] = v28;
    if (*(&v28 + 1))
    {
      sub_188A55538(v26, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368, &qword_18A650800);
      swift_dynamicCast();
      v17 = v24;
    }

    else
    {
LABEL_13:
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1 & 1;
    *(v20 + 32) = a2;
    *(v20 + 40) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940D80, &qword_18A650C68);
    swift_allocObject();

    v10 = sub_188C84FFC(v17, v18, sub_188F0E03C, v20);

    *(v10 + 120) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[0] = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, v26, &qword_1EA930FF8, &unk_1EA940D80, &qword_18A650C68);

    *(v4 + 48) = *&v26[0];
    swift_endAccess();

    sub_188A34360(&qword_1EA930FF8, &unk_1EA940D80, &qword_18A650C68, &unk_18A662940);
    v8 = v23;
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188ECD978(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = a2;
    v38 = v8;
    v36 = a3;
    if (Strong)
    {
      v12 = Strong;
      if (a1)
      {
        v13 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v13 = [Strong layer];
      }

      v14 = v13;

      v15 = sub_18A4A7258();
      v16 = [v14 valueForKeyPath_];

      if (v16)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      sub_188A3F29C(&v48, &v43, &qword_1EA934050, qword_18A64CA10);
      if (v44)
      {
        sub_188A55538(&v43, v42);
        sub_188A55598(v42, v41);
        sub_188A55598(v41, v40);
        sub_188A34624(0, &qword_1EA92E860, 0x1E69793D8);
        swift_dynamicCast();
        sub_1890908B0(v39, v45);
        v18 = v45[0];
        v17 = v45[1];
        v19 = a1;
        v21 = v45[2];
        v20 = v45[3];
        v22 = v46;
        v23 = v47;

        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        sub_188A3F5FC(&v48, &qword_1EA934050, qword_18A64CA10);
        v24 = v20;
        a1 = v19;
        v25 = v21;
        v26 = 0x100000000;
        if (!v23)
        {
          v26 = 0;
        }

        v27 = v26 | v22;
        goto LABEL_17;
      }

      sub_188A3F5FC(&v48, &qword_1EA934050, qword_18A64CA10);
    }

    v18 = 0;
    v17 = 0;
    v25 = 0;
    v24 = 0;
    v27 = 0;
LABEL_17:
    *&v48 = v18;
    *(&v48 + 1) = v17;
    *&v49 = v25;
    *(&v49 + 1) = v24;
    v50 = v27;
    v51 = BYTE4(v27);
    v28 = v25;
    v35 = v25;
    v29 = v24;
    v30 = swift_unknownObjectWeakLoadStrong();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a1 & 1;
    *(v32 + 32) = v37;
    *(v32 + 40) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C8, &qword_18A650C70);
    swift_allocObject();
    sub_188F0B550(v18, v17, v28, v29);

    v10 = sub_18922CB4C(&v48, v30, sub_188F0E03C, v32);

    *(v10 + 272) = 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_188A5E4B4(v10, a1 & 1, v37, v36, isUniquelyReferenced_nonNull_native, v42, &unk_1EA92EC90, &qword_1EA9364C8, &qword_18A650C70);

    *(v4 + 48) = *&v42[0];
    swift_endAccess();
    sub_188F0B59C(v18, v17, v35, v29);
    sub_188A34360(&unk_1EA92EC90, &qword_1EA9364C8, &qword_18A650C70, &unk_18A662940);
    v8 = v38;
    goto LABEL_18;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364C8, &qword_18A650C70);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&unk_1EA92EC90, &qword_1EA9364C8, &qword_18A650C70, &unk_18A662940);
  swift_unknownObjectRetain();
LABEL_18:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t sub_188ECDE44(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) == 0))
  {
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = 0.0;
    if (Strong)
    {
      v13 = Strong;
      if (a1)
      {
        v14 = [(UIView *)Strong _backing_outermostLayer];
      }

      else
      {
        v14 = [Strong layer];
      }

      v15 = v14;

      v16 = sub_18A4A7258();
      v17 = [v15 valueForKeyPath_];

      if (v17)
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v36, 0, 32);
      }

      sub_188A3F29C(v36, &v34, &qword_1EA934050, qword_18A64CA10);
      if (v35)
      {
        sub_188A55538(&v34, v33);
        sub_188A55598(v33, v32);
        sub_188A55598(v32, v31);
        sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
        swift_dynamicCast();
        [v30 CGRectValue];
        v12 = v18;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        sub_188A3F5FC(v36, &qword_1EA934050, qword_18A64CA10);
LABEL_15:
        v25 = swift_unknownObjectWeakLoadStrong();
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = a1 & 1;
        *(v27 + 32) = a2;
        *(v27 + 40) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F0, &qword_18A650C98);
        swift_allocObject();

        v10 = sub_18922CF7C(v25, sub_188F0E03C, v27, v12, v20, v22, v24);

        *(v10 + 272) = 1;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_188A5E4B4(v10, a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native, &v34, &qword_1EA92F4E8, &qword_1EA9364F0, &qword_18A650C98);

        *(v4 + 48) = v34;
        swift_endAccess();
        sub_188A34360(&qword_1EA92F4E8, &qword_1EA9364F0, &qword_18A650C98, &unk_18A662940);
        goto LABEL_16;
      }

      sub_188A3F5FC(v36, &qword_1EA934050, qword_18A64CA10);
    }

    v20 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
    goto LABEL_15;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9364F0, &qword_18A650C98);
  v10 = swift_dynamicCastClassUnconditional();
  sub_188A34360(&qword_1EA92F4E8, &qword_1EA9364F0, &qword_18A650C98, &unk_18A662940);
  swift_unknownObjectRetain();
LABEL_16:
  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

id sub_188ECE29C()
{
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType] = 0;
  v1 = &v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive] = 0;
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 0;
  v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_flushPresentationModifiersOverride] = 2;
  v2 = &v0[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
  *v2 = 0;
  v2[8] = 1;
  v5.receiver = v0;
  v5.super_class = _s23InProcessAnimationStateCMa();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [v3 setDisallowInheritance_];
  return v3;
}

void sub_188ECE354(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v523 = a8;
  v524 = a6;
  v520 = a5;
  v521 = a7;
  v522 = a4;
  v519 = a3;
  v13 = *a9;
  v14 = *a9;
  v525 = a9;
  v15 = *(v13 + 80);
  v16 = *(v15[-1].Description + 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v504 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v504 - v21;
  if (v15 == &type metadata for UIAnimatableColorMatrix)
  {
    v36 = a1[3];
    v528 = a1[2];
    v529 = v36;
    v37 = a1[4];
    v38 = a1[1];
    v526 = *a1;
    v527 = v38;
    v39 = a2[3];
    v533 = a2[2];
    v534 = v39;
    v535 = a2[4];
    v40 = *a2;
    v532 = a2[1];
    v530 = v37;
    v531 = v40;
    v41 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v41], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v42 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [v10 updateReason];
    v50 = v525;
    if (v42 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v57 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v52 = Strong, _s23InProcessAnimationStateCMa(), v53 = v10, v54 = sub_18A4A7C88(), v52, v53, (v54 & 1) == 0))
      {
        v55 = swift_unknownObjectWeakLoadStrong();
        if (v55)
        {

          v56 = swift_unknownObjectWeakLoadStrong();
          if (v56)
          {
            v56[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v57 = swift_allocObject();
      *(v57 + 16) = v10;
      v58 = v10;
      *&v518 = sub_188F0E06C;
    }

    v75 = v50[63];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (!v76)
    {
      LODWORD(v517) = v42 != 3;
      v50[63] = v77;
      v78 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v79 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v81 = v529;
      *(v80 + 64) = v528;
      *(v80 + 80) = v81;
      v82 = v527;
      *(v80 + 32) = v526;
      *(v80 + 48) = v82;
      v83 = v533;
      v84 = v534;
      v85 = v531;
      *(v80 + 128) = v532;
      *(v80 + 144) = v83;
      v86 = v535;
      *(v80 + 160) = v84;
      *(v80 + 176) = v86;
      *(v80 + 96) = v530;
      *(v80 + 112) = v85;
      sub_188A5EBAC(&v562, v80 + 192);
      v87 = v520;
      v88 = v522;
      *(v80 + 232) = v519;
      *(v80 + 240) = v88;
      v89 = v49;
      v90 = v524;
      *(v80 + 248) = v87;
      *(v80 + 256) = v90;
      v91 = v10;
      v92 = v523;
      *(v80 + 264) = v521;
      *(v80 + 272) = v92;
      *(v80 + 280) = v517;
      *(v80 + 284) = v89;
      *(v80 + 288) = v44;
      *(v80 + 292) = v46;
      *(v80 + 296) = v48;
      *(v80 + 304) = v78;
      *(v80 + 312) = v79;
      *(v80 + 320) = v518;
      *(v80 + 328) = v57;
      swift_retain_n();
      v93 = v91;

      v94 = sub_188F0CBF8;
      v95 = sub_188F0CB4C;
LABEL_81:
      sub_189214A14(v94, v50, v95, v80);

LABEL_95:

      __swift_destroy_boxed_opaque_existential_0Tm(v564);
      return;
    }

    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v15 == &type metadata for UIAnimatableSize)
  {
    *&v20 = *a1;
    v518 = v20;
    *&v20 = *(a1 + 1);
    v515 = v20;
    *&v20 = *a2;
    v517 = v20;
    *&v20 = *(a2 + 1);
    v516 = v20;
    v59 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v59], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v60 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    LODWORD(v514) = [v10 updateReason];
    v50 = v525;
    if (v60 == 3)
    {
      v513 = signpost_c2_entryLock_start;
      v73 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v67 = swift_unknownObjectWeakLoadStrong();
      if (!v67 || (v68 = v67, _s23InProcessAnimationStateCMa(), v69 = v10, v70 = sub_18A4A7C88(), v68, v69, (v70 & 1) == 0))
      {
        v71 = swift_unknownObjectWeakLoadStrong();
        if (v71)
        {

          v72 = swift_unknownObjectWeakLoadStrong();
          if (v72)
          {
            v72[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v73 = swift_allocObject();
      *(v73 + 16) = v10;
      v74 = v10;
      v513 = sub_188F0E06C;
    }

    v115 = v50[25];
    v76 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (!v76)
    {
      LODWORD(v512) = v60 != 3;
      v50[25] = v116;
      v117 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v118 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *&v119 = v518;
      *(&v119 + 1) = v515;
      *&v120 = v517;
      *(&v120 + 1) = v516;
      *(v80 + 32) = v119;
      *(v80 + 48) = v120;
      sub_188A5EBAC(&v562, v80 + 64);
      v121 = v520;
      v122 = v10;
      v124 = v522;
      v123 = v523;
      *(v80 + 104) = v519;
      *(v80 + 112) = v124;
      v125 = v524;
      *(v80 + 120) = v121;
      *(v80 + 128) = v125;
      *(v80 + 136) = v521;
      *(v80 + 144) = v123;
      *(v80 + 152) = v512;
      *(v80 + 156) = v514;
      *(v80 + 160) = v62;
      *(v80 + 164) = v64;
      *(v80 + 168) = v66;
      *(v80 + 176) = v117;
      *(v80 + 184) = v118;
      *(v80 + 192) = v513;
      *(v80 + 200) = v73;
      swift_retain_n();
      v126 = v122;

      v94 = sub_188F0E044;
      v95 = sub_188F0CABC;
      goto LABEL_81;
    }

    goto LABEL_199;
  }

  if (v15 == &type metadata for UIAnimatableColorArray)
  {
    v96 = *a1;
    v97 = *a2;
    v98 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v98], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v99 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LODWORD(v518) = [v10 updateReason];
    v106 = v525;
    if (v99 == 3)
    {
      *&v517 = signpost_c2_entryLock_start;
      v113 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v107 = swift_unknownObjectWeakLoadStrong();
      if (!v107 || (v108 = v107, _s23InProcessAnimationStateCMa(), v109 = v10, v110 = sub_18A4A7C88(), v108, v109, (v110 & 1) == 0))
      {
        v111 = swift_unknownObjectWeakLoadStrong();
        if (v111)
        {

          v112 = swift_unknownObjectWeakLoadStrong();
          if (v112)
          {
            v112[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v113 = swift_allocObject();
      *(v113 + 16) = v10;
      v114 = v10;
      *&v517 = sub_188F0E06C;
    }

    v147 = *(v106 + 128);
    v76 = __OFADD__(v147, 1);
    v148 = v147 + 1;
    if (!v76)
    {
      LODWORD(v516) = v99 != 3;
      *(v106 + 128) = v148;
      v149 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      LODWORD(v515) = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v150 = swift_allocObject();
      *(v150 + 16) = v106;
      *(v150 + 24) = v10;
      *(v150 + 32) = v96;
      *(v150 + 40) = v97;
      sub_188A5EBAC(&v562, v150 + 48);
      v151 = v520;
      v152 = v10;
      v153 = v522;
      *(v150 + 88) = v519;
      *(v150 + 96) = v153;
      v154 = v524;
      *(v150 + 104) = v151;
      *(v150 + 112) = v154;
      v155 = v523;
      *(v150 + 120) = v521;
      *(v150 + 128) = v155;
      *(v150 + 136) = v516;
      *(v150 + 140) = v518;
      *(v150 + 144) = v101;
      *(v150 + 148) = v103;
      *(v150 + 152) = v105;
      *(v150 + 160) = v149;
      *(v150 + 168) = v515;
      *(v150 + 176) = v517;
      *(v150 + 184) = v113;

      swift_retain_n();
      v156 = v152;

      v157 = sub_188F0CAA0;
      v158 = sub_188F0CA10;
LABEL_94:
      sub_189214A14(v157, v106, v158, v150);

      goto LABEL_95;
    }

    goto LABEL_200;
  }

  if (v15 == &type metadata for UIAnimatableCornerRadii)
  {
    v127 = a1[1];
    v536 = *a1;
    v537 = v127;
    v128 = a1[3];
    v538 = a1[2];
    v539 = v128;
    v129 = a2[1];
    v540 = *a2;
    v541 = v129;
    v130 = a2[3];
    v542 = a2[2];
    v543 = v130;
    v131 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v131], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v132 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v134 = v133;
    v136 = v135;
    v138 = v137;
    LODWORD(v518) = [v10 updateReason];
    v50 = v525;
    if (v132 == 3)
    {
      *&v517 = signpost_c2_entryLock_start;
      v145 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v139 = swift_unknownObjectWeakLoadStrong();
      if (!v139 || (v140 = v139, _s23InProcessAnimationStateCMa(), v141 = v10, v142 = sub_18A4A7C88(), v140, v141, (v142 & 1) == 0))
      {
        v143 = swift_unknownObjectWeakLoadStrong();
        if (v143)
        {

          v144 = swift_unknownObjectWeakLoadStrong();
          if (v144)
          {
            v144[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v145 = swift_allocObject();
      *(v145 + 16) = v10;
      v146 = v10;
      *&v517 = sub_188F0E06C;
    }

    v177 = v50[55];
    v76 = __OFADD__(v177, 1);
    v178 = v177 + 1;
    if (!v76)
    {
      LODWORD(v516) = v132 != 3;
      v50[55] = v178;
      v179 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v180 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v181 = v537;
      *(v80 + 32) = v536;
      *(v80 + 48) = v181;
      v182 = v539;
      *(v80 + 64) = v538;
      *(v80 + 80) = v182;
      v183 = v541;
      *(v80 + 96) = v540;
      *(v80 + 112) = v183;
      v184 = v543;
      *(v80 + 128) = v542;
      *(v80 + 144) = v184;
      sub_188A5EBAC(&v562, v80 + 160);
      v185 = v520;
      v186 = v10;
      v188 = v522;
      v187 = v523;
      *(v80 + 200) = v519;
      *(v80 + 208) = v188;
      v189 = v524;
      *(v80 + 216) = v185;
      *(v80 + 224) = v189;
      *(v80 + 232) = v521;
      *(v80 + 240) = v187;
      *(v80 + 248) = v516;
      *(v80 + 252) = v518;
      *(v80 + 256) = v134;
      *(v80 + 260) = v136;
      *(v80 + 264) = v138;
      *(v80 + 272) = v179;
      *(v80 + 280) = v180;
      *(v80 + 288) = v517;
      *(v80 + 296) = v145;
      swift_retain_n();
      v190 = v186;

      v94 = sub_188F0C990;
      v95 = sub_188F0C8F8;
      goto LABEL_81;
    }

LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  if (v15 == &type metadata for UIAnimatableVector)
  {
    v159 = *a1;
    v160 = *a2;
    v161 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v161], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v162 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v164 = v163;
    v166 = v165;
    v168 = v167;
    LODWORD(v518) = [v10 updateReason];
    v106 = v525;
    if (v162 == 3)
    {
      *&v517 = signpost_c2_entryLock_start;
      v175 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v169 = swift_unknownObjectWeakLoadStrong();
      if (!v169 || (v170 = v169, _s23InProcessAnimationStateCMa(), v171 = v10, v172 = sub_18A4A7C88(), v170, v171, (v172 & 1) == 0))
      {
        v173 = swift_unknownObjectWeakLoadStrong();
        if (v173)
        {

          v174 = swift_unknownObjectWeakLoadStrong();
          if (v174)
          {
            v174[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v175 = swift_allocObject();
      *(v175 + 16) = v10;
      v176 = v10;
      *&v517 = sub_188F0E06C;
    }

    v215 = *(v106 + 128);
    v76 = __OFADD__(v215, 1);
    v216 = v215 + 1;
    if (!v76)
    {
      LODWORD(v516) = v162 != 3;
      *(v106 + 128) = v216;
      *&v515 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      LODWORD(v514) = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v150 = swift_allocObject();
      *(v150 + 16) = v106;
      *(v150 + 24) = v10;
      *(v150 + 32) = v159;
      *(v150 + 40) = v160;
      sub_188A5EBAC(&v562, v150 + 48);
      v217 = v520;
      v218 = v10;
      v219 = v522;
      *(v150 + 88) = v519;
      *(v150 + 96) = v219;
      v220 = v524;
      *(v150 + 104) = v217;
      *(v150 + 112) = v220;
      v221 = v523;
      *(v150 + 120) = v521;
      *(v150 + 128) = v221;
      *(v150 + 136) = v516;
      *(v150 + 140) = v518;
      *(v150 + 144) = v164;
      *(v150 + 148) = v166;
      *(v150 + 152) = v168;
      *(v150 + 160) = v515;
      *(v150 + 168) = v514;
      *(v150 + 176) = v517;
      *(v150 + 184) = v175;
      swift_retain_n();
      v222 = v218;

      v157 = sub_188F0E04C;
      v158 = sub_188F0C8E0;
      goto LABEL_94;
    }

LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v15 == &type metadata for UIAnimatableMeshTransform)
  {
    v191 = *a1;
    *&v516 = *(a1 + 1);
    v192 = *(a1 + 3);
    *&v515 = *(a1 + 2);
    v513 = v191;
    *&v514 = v192;
    v510 = *(a1 + 36);
    v193 = *(a1 + 8);
    v194 = *a2;
    v195 = *(a2 + 1);
    v196 = *(a2 + 3);
    v512 = *(a2 + 2);
    *&v517 = v196;
    v509 = *(a2 + 36);
    v508 = *(a2 + 8);
    v197 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v197], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v198 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v200 = v199;
    v202 = v201;
    v204 = v203;
    v511 = [v10 updateReason];
    v205 = v525;
    *&v518 = v194;
    if (v198 == 3)
    {
      v214 = signpost_c2_entryLock_start;
      v212 = v195;
      v507 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v206 = swift_unknownObjectWeakLoadStrong();
      if (!v206 || (v207 = v206, _s23InProcessAnimationStateCMa(), v208 = v10, v209 = sub_18A4A7C88(), v207, v208, (v209 & 1) == 0))
      {
        v210 = swift_unknownObjectWeakLoadStrong();
        if (v210)
        {

          v211 = swift_unknownObjectWeakLoadStrong();
          if (v211)
          {
            v211[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      v212 = v195;
      [v10 _animationDidStartWithNilAnimation];
      v507 = swift_allocObject();
      *(v507 + 16) = v10;
      v213 = v10;
      v214 = sub_188F0E06C;
    }

    v241 = v524;
    v242 = *(v205 + 280);
    v76 = __OFADD__(v242, 1);
    v243 = v242 + 1;
    if (!v76)
    {
      v244 = v193 | (v510 << 32);
      v245 = v508 | (v509 << 32);
      LODWORD(v510) = v198 != 3;
      *(v205 + 280) = v243;
      v509 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      LODWORD(v508) = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v246 = swift_allocObject();
      *(v246 + 16) = v205;
      *(v246 + 24) = v10;
      v247 = v512;
      v248 = v516;
      *(v246 + 32) = v513;
      *(v246 + 40) = v248;
      v249 = v514;
      *(v246 + 48) = v515;
      *(v246 + 56) = v249;
      v505 = v245;
      v506 = v244;
      *(v246 + 68) = BYTE4(v244);
      *(v246 + 64) = v244;
      *(v246 + 72) = v518;
      *(v246 + 80) = v212;
      v250 = v517;
      *(v246 + 88) = v247;
      *(v246 + 96) = v250;
      *(v246 + 108) = BYTE4(v245);
      *(v246 + 104) = v245;
      sub_188A5EBAC(&v562, v246 + 112);
      v251 = v520;
      v252 = v10;
      v254 = v522;
      v253 = v523;
      *(v246 + 152) = v519;
      *(v246 + 160) = v254;
      *(v246 + 168) = v251;
      *(v246 + 176) = v241;
      *(v246 + 184) = v521;
      *(v246 + 192) = v253;
      *(v246 + 200) = v510;
      *(v246 + 204) = v511;
      *(v246 + 208) = v200;
      *(v246 + 212) = v202;
      *(v246 + 216) = v204;
      *(v246 + 224) = v509;
      *(v246 + 232) = v508;
      *(v246 + 240) = v214;
      *(v246 + 248) = v507;
      swift_retain_n();
      v255 = v252;

      sub_188F0B550(v513, v516, v515, v514);
      sub_188F0B550(v518, v212, v247, v517);

      sub_189214A14(sub_188F0C8C4, v205, sub_188F0C82C, v246);

      goto LABEL_95;
    }

    goto LABEL_203;
  }

  if (v15 == &type metadata for UIAnimatableFloat)
  {
    v223 = *a1;
    v224 = *a2;
    v225 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v225], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v226 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v228 = v227;
    v230 = v229;
    v232 = v231;
    LODWORD(v518) = [v10 updateReason];
    v50 = v525;
    if (v226 == 3)
    {
      *&v517 = signpost_c2_entryLock_start;
      v239 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v233 = swift_unknownObjectWeakLoadStrong();
      if (!v233 || (v234 = v233, _s23InProcessAnimationStateCMa(), v235 = v10, v236 = sub_18A4A7C88(), v234, v235, (v236 & 1) == 0))
      {
        v237 = swift_unknownObjectWeakLoadStrong();
        if (v237)
        {

          v238 = swift_unknownObjectWeakLoadStrong();
          if (v238)
          {
            v238[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v239 = swift_allocObject();
      *(v239 + 16) = v10;
      v240 = v10;
      *&v517 = sub_188F0E06C;
    }

    v272 = v50[20];
    v76 = __OFADD__(v272, 1);
    v273 = v272 + 1;
    if (!v76)
    {
      LODWORD(v516) = v226 != 3;
      v50[20] = v273;
      v274 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v275 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *(v80 + 32) = v223;
      *(v80 + 40) = v224;
      sub_188A5EBAC(&v562, v80 + 48);
      v276 = v520;
      v278 = v522;
      v277 = v523;
      *(v80 + 88) = v519;
      *(v80 + 96) = v278;
      v279 = v524;
      *(v80 + 104) = v276;
      *(v80 + 112) = v279;
      *(v80 + 120) = v521;
      *(v80 + 128) = v277;
      *(v80 + 136) = v516;
      *(v80 + 140) = v518;
      *(v80 + 144) = v228;
      *(v80 + 148) = v230;
      *(v80 + 152) = v232;
      *(v80 + 160) = v274;
      *(v80 + 168) = v275;
      *(v80 + 176) = v517;
      *(v80 + 184) = v239;
      swift_retain_n();
      v280 = v10;

      v94 = sub_188F0E048;
      v95 = sub_188F0C7A0;
      goto LABEL_81;
    }

LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  if (v15 == &type metadata for UIAnimatableNormalizedPoint)
  {
    *&v20 = *a1;
    v518 = v20;
    *&v20 = *(a1 + 1);
    v515 = v20;
    *&v20 = *a2;
    v517 = v20;
    *&v20 = *(a2 + 1);
    v516 = v20;
    v256 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v256], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v257 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v259 = v258;
    v261 = v260;
    v263 = v262;
    LODWORD(v514) = [v10 updateReason];
    v50 = v525;
    if (v257 == 3)
    {
      v513 = signpost_c2_entryLock_start;
      v270 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v264 = swift_unknownObjectWeakLoadStrong();
      if (!v264 || (v265 = v264, _s23InProcessAnimationStateCMa(), v266 = v10, v267 = sub_18A4A7C88(), v265, v266, (v267 & 1) == 0))
      {
        v268 = swift_unknownObjectWeakLoadStrong();
        if (v268)
        {

          v269 = swift_unknownObjectWeakLoadStrong();
          if (v269)
          {
            v269[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v270 = swift_allocObject();
      *(v270 + 16) = v10;
      v271 = v10;
      v513 = sub_188F0E06C;
    }

    v300 = v50[25];
    v76 = __OFADD__(v300, 1);
    v301 = v300 + 1;
    if (!v76)
    {
      LODWORD(v512) = v257 != 3;
      v50[25] = v301;
      v302 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v303 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *&v304 = v518;
      *(&v304 + 1) = v515;
      *&v305 = v517;
      *(&v305 + 1) = v516;
      *(v80 + 32) = v304;
      *(v80 + 48) = v305;
      sub_188A5EBAC(&v562, v80 + 64);
      v306 = v520;
      v308 = v522;
      v307 = v523;
      *(v80 + 104) = v519;
      *(v80 + 112) = v308;
      v309 = v524;
      *(v80 + 120) = v306;
      *(v80 + 128) = v309;
      *(v80 + 136) = v521;
      *(v80 + 144) = v307;
      *(v80 + 152) = v512;
      *(v80 + 156) = v514;
      *(v80 + 160) = v259;
      *(v80 + 164) = v261;
      *(v80 + 168) = v263;
      *(v80 + 176) = v302;
      *(v80 + 184) = v303;
      *(v80 + 192) = v513;
      *(v80 + 200) = v270;
      swift_retain_n();
      v310 = v10;

      v94 = sub_188F0C71C;
      v95 = sub_188F0C704;
      goto LABEL_81;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (v15 == &type metadata for UIAnimatableColor)
  {
    v281 = *a1;
    v517 = a1[1];
    v518 = v281;
    v282 = *a2;
    v515 = a2[1];
    v516 = v282;
    v283 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v283], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v284 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v286 = v285;
    v288 = v287;
    v290 = v289;
    v291 = [v10 updateReason];
    v50 = v525;
    LODWORD(v514) = v291;
    if (v284 == 3)
    {
      v513 = signpost_c2_entryLock_start;
      v298 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v292 = swift_unknownObjectWeakLoadStrong();
      if (!v292 || (v293 = v292, _s23InProcessAnimationStateCMa(), v294 = v10, v295 = sub_18A4A7C88(), v293, v294, (v295 & 1) == 0))
      {
        v296 = swift_unknownObjectWeakLoadStrong();
        if (v296)
        {

          v297 = swift_unknownObjectWeakLoadStrong();
          if (v297)
          {
            v297[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v298 = swift_allocObject();
      *(v298 + 16) = v10;
      v299 = v10;
      v513 = sub_188F0E06C;
    }

    v330 = v50[35];
    v76 = __OFADD__(v330, 1);
    v331 = v330 + 1;
    if (!v76)
    {
      LODWORD(v512) = v284 != 3;
      v50[35] = v331;
      v332 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v333 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v334 = v517;
      *(v80 + 32) = v518;
      *(v80 + 48) = v334;
      v335 = v515;
      *(v80 + 64) = v516;
      *(v80 + 80) = v335;
      sub_188A5EBAC(&v562, v80 + 96);
      v336 = v520;
      v338 = v522;
      v337 = v523;
      *(v80 + 136) = v519;
      *(v80 + 144) = v338;
      v339 = v524;
      *(v80 + 152) = v336;
      *(v80 + 160) = v339;
      *(v80 + 168) = v521;
      *(v80 + 176) = v337;
      *(v80 + 184) = v512;
      *(v80 + 188) = v514;
      *(v80 + 192) = v286;
      *(v80 + 196) = v288;
      *(v80 + 200) = v290;
      *(v80 + 208) = v332;
      *(v80 + 216) = v333;
      *(v80 + 224) = v513;
      *(v80 + 232) = v298;
      swift_retain_n();
      v340 = v10;

      v94 = sub_188F0E040;
      v95 = sub_188F0C684;
      goto LABEL_81;
    }

LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  if (v15 == &type metadata for UIAnimatableScaledFloat)
  {
    v311 = *a1;
    v312 = *a2;
    v313 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v313], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v314 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v316 = v315;
    v318 = v317;
    v320 = v319;
    v321 = [v10 updateReason];
    v50 = v525;
    LODWORD(v518) = v321;
    if (v314 == 3)
    {
      *&v517 = signpost_c2_entryLock_start;
      v328 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v322 = swift_unknownObjectWeakLoadStrong();
      if (!v322 || (v323 = v322, _s23InProcessAnimationStateCMa(), v324 = v10, v325 = sub_18A4A7C88(), v323, v324, (v325 & 1) == 0))
      {
        v326 = swift_unknownObjectWeakLoadStrong();
        if (v326)
        {

          v327 = swift_unknownObjectWeakLoadStrong();
          if (v327)
          {
            v327[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v328 = swift_allocObject();
      *(v328 + 16) = v10;
      v329 = v10;
      *&v517 = sub_188F0E06C;
    }

    v360 = v50[20];
    v76 = __OFADD__(v360, 1);
    v361 = v360 + 1;
    if (!v76)
    {
      LODWORD(v516) = v314 != 3;
      v50[20] = v361;
      v362 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v363 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      *(v80 + 32) = v311;
      *(v80 + 40) = v312;
      sub_188A5EBAC(&v562, v80 + 48);
      v364 = v520;
      v366 = v522;
      v365 = v523;
      *(v80 + 88) = v519;
      *(v80 + 96) = v366;
      v367 = v524;
      *(v80 + 104) = v364;
      *(v80 + 112) = v367;
      *(v80 + 120) = v521;
      *(v80 + 128) = v365;
      *(v80 + 136) = v516;
      *(v80 + 140) = v518;
      *(v80 + 144) = v316;
      *(v80 + 148) = v318;
      *(v80 + 152) = v320;
      *(v80 + 160) = v362;
      *(v80 + 168) = v363;
      *(v80 + 176) = v517;
      *(v80 + 184) = v328;
      swift_retain_n();
      v368 = v10;

      v94 = sub_188F0C668;
      v95 = sub_188F0C650;
      goto LABEL_81;
    }

LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  if (v15 == &type metadata for UIAnimatableRect)
  {
    v341 = *a1;
    v517 = a1[1];
    v518 = v341;
    v342 = *a2;
    v515 = a2[1];
    v516 = v342;
    v343 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v343], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v344 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v346 = v345;
    v348 = v347;
    v350 = v349;
    v351 = [v10 updateReason];
    v50 = v525;
    LODWORD(v514) = v351;
    if (v344 == 3)
    {
      v513 = signpost_c2_entryLock_start;
      v358 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v352 = swift_unknownObjectWeakLoadStrong();
      if (!v352 || (v353 = v352, _s23InProcessAnimationStateCMa(), v354 = v10, v355 = sub_18A4A7C88(), v353, v354, (v355 & 1) == 0))
      {
        v356 = swift_unknownObjectWeakLoadStrong();
        if (v356)
        {

          v357 = swift_unknownObjectWeakLoadStrong();
          if (v357)
          {
            v357[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v358 = swift_allocObject();
      *(v358 + 16) = v10;
      v359 = v10;
      v513 = sub_188F0E06C;
    }

    v387 = v50[35];
    v76 = __OFADD__(v387, 1);
    v388 = v387 + 1;
    if (!v76)
    {
      LODWORD(v512) = v344 != 3;
      v50[35] = v388;
      v389 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v390 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v391 = v517;
      *(v80 + 32) = v518;
      *(v80 + 48) = v391;
      v392 = v515;
      *(v80 + 64) = v516;
      *(v80 + 80) = v392;
      sub_188A5EBAC(&v562, v80 + 96);
      v393 = v520;
      v395 = v522;
      v394 = v523;
      *(v80 + 136) = v519;
      *(v80 + 144) = v395;
      v396 = v524;
      *(v80 + 152) = v393;
      *(v80 + 160) = v396;
      *(v80 + 168) = v521;
      *(v80 + 176) = v394;
      *(v80 + 184) = v512;
      *(v80 + 188) = v514;
      *(v80 + 192) = v346;
      *(v80 + 196) = v348;
      *(v80 + 200) = v350;
      *(v80 + 208) = v389;
      *(v80 + 216) = v390;
      *(v80 + 224) = v513;
      *(v80 + 232) = v358;
      swift_retain_n();
      v397 = v10;

      v94 = sub_188F0E040;
      v95 = sub_188F0C5BC;
      goto LABEL_81;
    }

LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  if (v15 == &type metadata for UIAnimatableNormalizedRect)
  {
    v369 = *a1;
    v517 = a1[1];
    v518 = v369;
    v370 = *a2;
    v515 = a2[1];
    v516 = v370;
    v371 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v371], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v372 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v374 = v373;
    v376 = v375;
    v378 = v377;
    LODWORD(v514) = [v10 updateReason];
    v50 = v525;
    if (v372 == 3)
    {
      v513 = signpost_c2_entryLock_start;
      v385 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v379 = swift_unknownObjectWeakLoadStrong();
      if (!v379 || (v380 = v379, _s23InProcessAnimationStateCMa(), v381 = v10, v382 = sub_18A4A7C88(), v380, v381, (v382 & 1) == 0))
      {
        v383 = swift_unknownObjectWeakLoadStrong();
        if (v383)
        {

          v384 = swift_unknownObjectWeakLoadStrong();
          if (v384)
          {
            v384[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v385 = swift_allocObject();
      *(v385 + 16) = v10;
      v386 = v10;
      v513 = sub_188F0E06C;
    }

    v422 = v50[35];
    v76 = __OFADD__(v422, 1);
    v423 = v422 + 1;
    if (!v76)
    {
      LODWORD(v512) = v372 != 3;
      v50[35] = v423;
      v424 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v425 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      sub_188A53994(v564, &v562);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v10;
      v426 = v517;
      *(v80 + 32) = v518;
      *(v80 + 48) = v426;
      v427 = v515;
      *(v80 + 64) = v516;
      *(v80 + 80) = v427;
      sub_188A5EBAC(&v562, v80 + 96);
      v428 = v520;
      v430 = v522;
      v429 = v523;
      *(v80 + 136) = v519;
      *(v80 + 144) = v430;
      v431 = v524;
      *(v80 + 152) = v428;
      *(v80 + 160) = v431;
      *(v80 + 168) = v521;
      *(v80 + 176) = v429;
      *(v80 + 184) = v512;
      *(v80 + 188) = v514;
      *(v80 + 192) = v374;
      *(v80 + 196) = v376;
      *(v80 + 200) = v378;
      *(v80 + 208) = v424;
      *(v80 + 216) = v425;
      *(v80 + 224) = v513;
      *(v80 + 232) = v385;
      swift_retain_n();
      v432 = v10;

      v94 = sub_188F0E040;
      v95 = sub_188F0C53C;
      goto LABEL_81;
    }

LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (v15 == &type metadata for UIAnimatableTransform)
  {
    v398 = a1[7];
    v550 = a1[6];
    v551 = v398;
    v552 = *(a1 + 128);
    v399 = a1[3];
    v546 = a1[2];
    v547 = v399;
    v400 = a1[5];
    v548 = a1[4];
    v549 = v400;
    v401 = a1[1];
    v544 = *a1;
    v545 = v401;
    v402 = a2[7];
    v559 = a2[6];
    v560 = v402;
    v561 = *(a2 + 128);
    v403 = a2[3];
    v555 = a2[2];
    v556 = v403;
    v404 = a2[5];
    v557 = a2[4];
    v558 = v404;
    v405 = a2[1];
    v553 = *a2;
    v554 = v405;
    v406 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v406], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v407 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v409 = v408;
    v411 = v410;
    v413 = v412;
    LODWORD(v517) = [v10 updateReason];
    v50 = v525;
    if (v407 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v420 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v414 = swift_unknownObjectWeakLoadStrong();
      if (!v414 || (v415 = v414, _s23InProcessAnimationStateCMa(), v416 = v10, v417 = sub_18A4A7C88(), v415, v416, (v417 & 1) == 0))
      {
        v418 = swift_unknownObjectWeakLoadStrong();
        if (v418)
        {

          v419 = swift_unknownObjectWeakLoadStrong();
          if (v419)
          {
            v419[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v420 = swift_allocObject();
      *(v420 + 16) = v10;
      v421 = v10;
      *&v518 = sub_188F0E06C;
    }

    v476 = v50[95];
    v76 = __OFADD__(v476, 1);
    v477 = v476 + 1;
    if (v76)
    {
      goto LABEL_211;
    }

    LODWORD(v516) = v407 != 3;
    v50[95] = v477;
    v478 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
    v479 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
    sub_188A53994(v564, &v562);
    v80 = swift_allocObject();
    v480 = v551;
    *(v80 + 128) = v550;
    *(v80 + 144) = v480;
    v481 = v547;
    *(v80 + 64) = v546;
    *(v80 + 80) = v481;
    v482 = v549;
    *(v80 + 96) = v548;
    *(v80 + 112) = v482;
    v483 = v545;
    *(v80 + 32) = v544;
    *(v80 + 48) = v483;
    v484 = v557;
    *(v80 + 248) = v558;
    v485 = v560;
    *(v80 + 264) = v559;
    *(v80 + 280) = v485;
    v486 = v553;
    *(v80 + 184) = v554;
    v487 = v556;
    *(v80 + 200) = v555;
    *(v80 + 216) = v487;
    *(v80 + 232) = v484;
    *(v80 + 16) = v50;
    *(v80 + 24) = v10;
    *(v80 + 160) = v552;
    *(v80 + 296) = v561;
    *(v80 + 168) = v486;
    sub_188A5EBAC(&v562, v80 + 304);
    v488 = v520;
    v490 = v522;
    v489 = v523;
    *(v80 + 344) = v519;
    *(v80 + 352) = v490;
    v491 = v524;
    *(v80 + 360) = v488;
    *(v80 + 368) = v491;
    *(v80 + 376) = v521;
    *(v80 + 384) = v489;
    *(v80 + 392) = v516;
    *(v80 + 396) = v517;
    *(v80 + 400) = v409;
    *(v80 + 404) = v411;
    *(v80 + 408) = v413;
    *(v80 + 416) = v478;
    *(v80 + 424) = v479;
    *(v80 + 432) = v518;
    *(v80 + 440) = v420;
    swift_retain_n();
    v492 = v10;

    v94 = sub_188F0C534;
    v95 = sub_188F0C450;
    goto LABEL_81;
  }

  if (v15 == &type metadata for UIAnimatablePoint)
  {
    *&v20 = *a1;
    v517 = v20;
    *&v20 = *(a1 + 1);
    v514 = v20;
    *&v20 = *a2;
    v516 = v20;
    *&v20 = *(a2 + 1);
    v515 = v20;
    v433 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
    swift_beginAccess();
    sub_188A3F29C(&v10[v433], &v562, &qword_1EA935C90, &qword_18A650CC0);
    if (!v563)
    {
      goto LABEL_213;
    }

    sub_188A5EBAC(&v562, v564);
    v434 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v436 = v435;
    v438 = v437;
    v440 = v439;
    v441 = [v10 updateReason];
    v50 = v525;
    LODWORD(v513) = v441;
    if (v434 == 3)
    {
      *&v518 = signpost_c2_entryLock_start;
      v448 = 0;
    }

    else
    {
      [v10 _incrementDidEndCount];
      v442 = swift_unknownObjectWeakLoadStrong();
      if (!v442 || (v443 = v442, _s23InProcessAnimationStateCMa(), v444 = v10, v445 = sub_18A4A7C88(), v443, v444, (v445 & 1) == 0))
      {
        v446 = swift_unknownObjectWeakLoadStrong();
        if (v446)
        {

          v447 = swift_unknownObjectWeakLoadStrong();
          if (v447)
          {
            v447[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      v448 = swift_allocObject();
      *(v448 + 16) = v10;
      v449 = v10;
      *&v518 = sub_188F0E06C;
    }

    v493 = v50[25];
    v76 = __OFADD__(v493, 1);
    v494 = v493 + 1;
    if (v76)
    {
      goto LABEL_212;
    }

    LODWORD(v512) = v434 != 3;
    v50[25] = v494;
    v495 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
    v496 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
    sub_188A53994(v564, &v562);
    v80 = swift_allocObject();
    *(v80 + 16) = v50;
    *(v80 + 24) = v10;
    *&v497 = v517;
    *(&v497 + 1) = v514;
    *&v498 = v516;
    *(&v498 + 1) = v515;
    *(v80 + 32) = v497;
    *(v80 + 48) = v498;
    sub_188A5EBAC(&v562, v80 + 64);
    v499 = v520;
    v501 = v522;
    v500 = v523;
    *(v80 + 104) = v519;
    *(v80 + 112) = v501;
    v502 = v524;
    *(v80 + 120) = v499;
    *(v80 + 128) = v502;
    *(v80 + 136) = v521;
    *(v80 + 144) = v500;
    *(v80 + 152) = v512;
    *(v80 + 156) = v513;
    *(v80 + 160) = v436;
    *(v80 + 164) = v438;
    *(v80 + 168) = v440;
    *(v80 + 176) = v495;
    *(v80 + 184) = v496;
    *(v80 + 192) = v518;
    *(v80 + 200) = v448;
    swift_retain_n();
    v503 = v10;

    v94 = sub_188F0E044;
    v95 = sub_188F0C438;
    goto LABEL_81;
  }

  *&v518 = v19;
  v23 = OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_animationAndComposerGetter;
  swift_beginAccess();
  sub_188A3F29C(&v10[v23], &v562, &qword_1EA935C90, &qword_18A650CC0);
  if (v563)
  {
    sub_188A5EBAC(&v562, v564);
    v24 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    [v10 preferredFrameRateRange];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LODWORD(v517) = [v10 updateReason];
    if (v24 == 3)
    {
      *&v515 = signpost_c2_entryLock_start;
      *&v516 = 0;
    }

    else
    {
      LODWORD(v514) = v24;
      [v10 _incrementDidEndCount];
      *&v516 = *(*v525 + 160);
      v31 = swift_unknownObjectWeakLoadStrong();
      if (!v31 || (v512 = v31, v513 = _s23InProcessAnimationStateCMa(), *&v515 = v10, v32 = sub_18A4A7C88(), v512, v515, (v32 & 1) == 0))
      {
        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {

          v34 = swift_unknownObjectWeakLoadStrong();
          if (v34)
          {
            v34[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted] = 1;
          }
        }

        swift_unknownObjectWeakAssign();
      }

      [v10 _animationDidStartWithNilAnimation];
      *&v516 = swift_allocObject();
      *(v516 + 16) = v10;
      v35 = v10;
      *&v515 = sub_188F0C304;
      v24 = v514;
    }

    v450 = *(*v525 + 176);
    v451 = *(v525 + v450);
    v76 = __OFADD__(v451, 1);
    v452 = v451 + 1;
    if (!v76)
    {
      *(v525 + v450) = v452;
      v513 = *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity];
      v453 = v10[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8];
      v511 = v24 != 3;
      LODWORD(v512) = v453;
      *&v514 = type metadata accessor for InProcessAnimationManager();
      v454 = a1;
      v455 = *(v518 + 16);
      v455(v22, v454, v15);
      v455(v17, a2, v15);
      sub_188A53994(v564, &v562);
      v456 = v518;
      v457 = *(v518 + 80);
      v458 = (v457 + 48) & ~v457;
      v504 = (v16 + v457 + v458) & ~v457;
      v505 = (v16 + v504 + 7) & 0xFFFFFFFFFFFFFFF8;
      v506 = (v505 + 47) & 0xFFFFFFFFFFFFFFF8;
      v507 = (v506 + 23) & 0xFFFFFFFFFFFFFFF8;
      v508 = (v507 + 23) & 0xFFFFFFFFFFFFFFF8;
      v459 = (v508 + 27) & 0xFFFFFFFFFFFFFFF8;
      v509 = (v459 + 35) & 0xFFFFFFFFFFFFFFF8;
      v510 = (v459 + 19) & 0xFFFFFFFFFFFFFFF8;
      v460 = swift_allocObject();
      *(v460 + 2) = v15;
      v461 = v525;
      *(v460 + 3) = *(v14 + 88);
      *(v460 + 4) = v461;
      *(v460 + 5) = v10;
      v462 = *(v456 + 32);
      v462(&v460[v458], v22, v15);
      v462(&v460[v504], v17, v15);
      sub_188A5EBAC(&v562, &v460[v505]);
      v463 = &v460[v506];
      v464 = v520;
      v466 = v522;
      v465 = v523;
      *v463 = v519;
      v463[1] = v466;
      v467 = &v460[v507];
      v468 = v524;
      *v467 = v464;
      v467[1] = v468;
      v469 = &v460[v508];
      *v469 = v521;
      *(v469 + 1) = v465;
      v469[16] = v511;
      *(v469 + 5) = v517;
      v470 = &v460[v459];
      *v470 = v26;
      *(v470 + 1) = v28;
      *(v470 + 2) = v30;
      v471 = &v460[v510];
      *v471 = v513;
      v471[8] = v512;
      v472 = &v460[v509];
      v473 = v516;
      *v472 = v515;
      *(v472 + 1) = v473;
      v474 = v10;
      v475 = v525;

      sub_18920BFF0(v475, sub_188F0C30C, v460);
      goto LABEL_95;
    }

    goto LABEL_210;
  }

LABEL_213:
  sub_188A3F5FC(&v562, &qword_1EA935C90, &qword_18A650CC0);
  sub_18A4A8398();
  __break(1u);
}

double sub_188ED1150(uint64_t a1, char a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = a3;
  sub_188A32084(sub_188F0DFAC, v5);

  return result;
}

void sub_188ED11D8(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, int a17, unint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  v158 = a8;
  v150 = a7;
  v143 = a6;
  v153 = a5;
  v154 = a4;
  v148 = a21;
  v146 = a20;
  v147 = a16;
  v152 = a14;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518, &qword_18A650CC8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936520, &qword_18A650CD0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v159 = (&v136 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528, &qword_18A650CD8);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v145 = &v136 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v139 = &v136 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v140 = &v136 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v156 = (&v136 - v40);
  v136 = a3;
  v144 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v41 = swift_allocObject();
  v41[2] = a12;
  v41[3] = a13;
  v157 = v41;
  v41[4] = a1;
  v42 = swift_allocObject();
  v42[2] = v152;
  v42[3] = a15;
  v42[4] = a1;
  v43 = *(a2 + 32);
  swift_retain_n();
  v44 = v153;

  os_unfair_lock_lock((v43 + 24));
  v45 = *(v43 + 16);
  v141 = (v43 + 16);

  v142 = v43;
  os_unfair_lock_unlock((v43 + 24));
  v151 = v30;
  v152 = a1;
  v46 = a2;
  v160 = a2;
  v47 = v154;
  v155 = v42;
  if (!v45)
  {
    (*(v31 + 56))(v159, 1, 1, v30);
    v76 = v47[2];
    v77 = v47[3];
    v78 = *v47;
    v173 = v47[1];
    v174 = v76;
    v79 = v47[4];
    v175 = v77;
    v176 = v79;
    v80 = v44[3];
    v169 = v44[2];
    v170 = v80;
    v171 = v44[4];
    v172 = v78;
    v81 = v44[1];
    v167 = *v44;
    v168 = v81;
    v82 = v143[3];
    v83 = v143[4];
    __swift_project_boxed_opaque_existential_0(v143, v82);
    swift_beginAccess();
    v84 = *(v46 + 397);
    v85 = *(v83 + 16);
    v86 = sub_188C5268C();
    v87 = v84;
    v88 = v159;
    v85(&v162, v87, v159, &v172, &v167, &type metadata for UIAnimatableColorMatrix, v86, v82, v83);
    v89 = sub_188A33550();
    swift_beginAccess();
    v179 = v174;
    v180 = v175;
    v177 = v172;
    v178 = v173;
    v183 = v168;
    v184 = v169;
    v185 = v170;
    v186 = v171;
    v181 = v176;
    v182 = v167;
    v69 = v156;
    sub_188C54CAC(v88, &v162, v144, &v177, &v182, v156, v89);
    swift_endAccess();
    sub_188AAFF20(&v162);
    sub_188A3F5FC(v88, &qword_1EA936520, &qword_18A650CD0);
    v75 = v149;
    goto LABEL_11;
  }

  v48 = v31;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v50 = v153;
    v49 = v154;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v45[2] + 16));
      signpost_c2_entryLock_start();
      v51 = *(*v45 + 104);
      swift_beginAccess();
      v52 = v140;
      sub_188A3F29C(v45 + v51, v140, &qword_1EA936528, &qword_18A650CD8);
      v53 = v52;
      v54 = v159;
      sub_188A3F29C(v53, v159, &qword_1EA936528, &qword_18A650CD8);
      (v48[7])(v54, 0, 1, v151);
      v55 = v49[2];
      v56 = v49[3];
      v57 = *v49;
      v173 = v49[1];
      v174 = v55;
      v58 = v49[4];
      v175 = v56;
      v176 = v58;
      v59 = v50[3];
      v169 = v50[2];
      v170 = v59;
      v171 = v50[4];
      v172 = v57;
      v60 = v50[1];
      v167 = *v50;
      v168 = v60;
      v61 = v143[3];
      v62 = v143[4];
      __swift_project_boxed_opaque_existential_0(v143, v61);
      v63 = v160;
      swift_beginAccess();
      v64 = *(v63 + 397);
      v65 = *(v62 + 16);
      v66 = sub_188C5268C();
      v65(&v162, v64, v159, &v172, &v167, &type metadata for UIAnimatableColorMatrix, v66, v61, v62);
      v67 = v152;
      v68 = sub_188A33550();
      swift_beginAccess();
      v179 = v174;
      v180 = v175;
      v177 = v172;
      v178 = v173;
      v183 = v168;
      v184 = v169;
      v185 = v170;
      v186 = v171;
      v181 = v176;
      v182 = v167;
      v69 = v156;
      v70 = v159;
      sub_188C54CAC(v159, &v162, v144, &v177, &v182, v156, v68);
      swift_endAccess();
      sub_188AAFF20(&v162);
      sub_188A3F5FC(v70, &qword_1EA936520, &qword_18A650CD0);
      v71 = *v45;
      v72 = v45 + *(*v45 + 112);
      v73 = *v72;
      if (*v72)
      {
        v74 = *(v72 + 1);
        *v72 = 0;
        *(v72 + 1) = 0;
        v73(v67, 0);
        sub_188A55B8C(v73, v74);
        v71 = *v45;
      }

      v75 = v149;
      *(v45 + *(v71 + 120)) = 1;
      sub_188A3F5FC(v140, &qword_1EA936528, &qword_18A650CD8);
      os_unfair_lock_unlock((v45[2] + 16));
    }

    else
    {
      v90 = *(*v45 + 104);
      swift_beginAccess();
      v91 = v45 + v90;
      v92 = v139;
      sub_188A3F29C(v91, v139, &qword_1EA936528, &qword_18A650CD8);
      v93 = v92;
      v94 = v159;
      sub_188A3F29C(v93, v159, &qword_1EA936528, &qword_18A650CD8);
      (v48[7])(v94, 0, 1, v151);
      v95 = v49[2];
      v96 = v49[3];
      v97 = *v49;
      v173 = v49[1];
      v174 = v95;
      v98 = v49[4];
      v175 = v96;
      v176 = v98;
      v99 = v50[3];
      v169 = v50[2];
      v170 = v99;
      v171 = v50[4];
      v172 = v97;
      v100 = v50[1];
      v167 = *v50;
      v168 = v100;
      v101 = v143[3];
      v102 = v143[4];
      __swift_project_boxed_opaque_existential_0(v143, v101);
      v103 = v160;
      swift_beginAccess();
      v104 = *(v103 + 397);
      v105 = *(v102 + 16);
      v106 = sub_188C5268C();
      v105(&v162, v104, v159, &v172, &v167, &type metadata for UIAnimatableColorMatrix, v106, v101, v102);
      v107 = v152;
      v108 = sub_188A33550();
      swift_beginAccess();
      v179 = v174;
      v180 = v175;
      v177 = v172;
      v178 = v173;
      v183 = v168;
      v184 = v169;
      v185 = v170;
      v186 = v171;
      v181 = v176;
      v182 = v167;
      v69 = v156;
      v109 = v159;
      sub_188C54CAC(v159, &v162, v144, &v177, &v182, v156, v108);
      swift_endAccess();
      sub_188AAFF20(&v162);
      sub_188A3F5FC(v109, &qword_1EA936520, &qword_18A650CD0);
      v110 = v45 + *(*v45 + 112);
      v111 = *v110;
      if (*v110)
      {
        v112 = *(v110 + 1);
        *v110 = 0;
        *(v110 + 1) = 0;
        v111(v107, 0);
        sub_188A55B8C(v111, v112);
      }

      sub_188A3F5FC(v139, &qword_1EA936528, &qword_18A650CD8);
      *(v45 + *(*v45 + 120)) = 1;

      v75 = v149;
    }

LABEL_11:
    v113 = v145;
    sub_188A3F29C(v69, v145, &qword_1EA936528, &qword_18A650CD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936530, &qword_18A650CE0);
    swift_allocObject();
    v114 = v148;

    v115 = sub_188AA785C(v113, v146, v114, &qword_1EA936528, &qword_18A650CD8);

    if (v147)
    {
      swift_unknownObjectWeakAssign();
    }

    v116 = v160;
    swift_beginAccess();
    if (*(v116 + 212))
    {
      if (a19)
      {
        goto LABEL_18;
      }

      sub_188C564AC(v153, v154, &v172);
      v117 = vdupq_n_s64(a18);
      v162 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v117, vcvtq_f64_f32(*v172.f32))), vmulq_f64(v117, vcvt_hight_f64_f32(v172)));
      v163 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v117, vcvtq_f64_f32(*v173.f32))), vmulq_f64(v117, vcvt_hight_f64_f32(v173)));
      v164 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v117, vcvtq_f64_f32(*v174.f32))), vmulq_f64(v117, vcvt_hight_f64_f32(v174)));
      v165 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v117, vcvtq_f64_f32(*v175.f32))), vmulq_f64(v117, vcvt_hight_f64_f32(v175)));
      v166 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v117, vcvtq_f64_f32(*v176.f32))), vmulq_f64(v117, vcvt_hight_f64_f32(v176)));
    }

    else
    {
      v118 = *(v116 + 164);
      v163 = *(v116 + 148);
      v164 = v118;
      v119 = *(v116 + 196);
      v165 = *(v116 + 180);
      v166 = v119;
      v162 = *(v116 + 132);
    }

    sub_188EFEB08(&v162);
LABEL_18:
    v120 = swift_allocObject();
    v161 = 1;
    *(v120 + 16) = 0u;
    *(v120 + 32) = 0u;
    *(v120 + 48) = 0u;
    *(v120 + 64) = 0u;
    *(v120 + 80) = 0u;
    *(v120 + 96) = 1;
    v121 = *(v116 + 496);
    sub_188A3F29C(v69, v75, &qword_1EA936528, &qword_18A650CD8);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v122 = v75;
      v123 = v137;
      sub_188A3F704(v122, v137, &qword_1EA936518, &qword_18A650CC8);
      v124 = *(v123 + *(v138 + 64));
      sub_188A3F5FC(v123, &qword_1EA936518, &qword_18A650CC8);
      v125 = (v124 == 2) | v124;
    }

    else
    {
      v125 = 0;
    }

    v126 = swift_allocObject();
    v127 = v150;
    v126[2] = v115;
    v126[3] = v127;
    v128 = v157;
    v126[4] = v158;
    v126[5] = v116;
    v129 = v152;
    v126[6] = v120;
    v126[7] = v129;
    v126[8] = sub_188F0CC00;
    v126[9] = v128;
    v130 = v155;
    v126[10] = sub_188F0CC70;
    v126[11] = v130;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v131 = swift_allocObject();
    *(v131 + 16) = a9;
    *(v131 + 20) = a10;
    *(v131 + 24) = a11;
    *(v131 + 28) = a17;
    *(v131 + 32) = v121;
    *(v131 + 33) = v125 & 1;
    *(v131 + 40) = sub_188F0CCA0;
    *(v131 + 48) = v126;
    v159 = *(v129 + 280);
    v132 = swift_allocObject();
    *(v132 + 16) = v129;
    *(v132 + 24) = v131;
    v133 = swift_allocObject();
    *(v133 + 16) = sub_188AA7334;
    *(v133 + 24) = v132;
    v169.i64[0] = sub_188A4B574;
    v169.i64[1] = v133;
    v167.i64[0] = MEMORY[0x1E69E9820];
    v167.i64[1] = 1107296256;
    v168.i64[0] = sub_188A4A968;
    v168.i64[1] = &block_descriptor_21;
    v48 = v115;
    v45 = _Block_copy(&v167);
    swift_retain_n();

    dispatch_sync(v159, v45);
    _Block_release(v45);
    LOBYTE(v130) = swift_isEscapingClosureAtFileLocation();

    if ((v130 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v134);
  *(&v136 - 2) = v48;
  v135 = v142;
  os_unfair_lock_lock(v142 + 6);
  sub_188F0E024(v141);
  os_unfair_lock_unlock(v135 + 6);

  sub_188A3F5FC(v156, &qword_1EA936528, &qword_18A650CD8);
}

void sub_188ED205C(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13, float a14, float a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, uint64_t a24)
{
  v138 = a6;
  v135 = a5;
  v128 = a4;
  v133 = a24;
  v131 = a23;
  v132 = a19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560, &qword_18A650D10);
  MEMORY[0x1EEE9AC00](v123);
  v122 = v121 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367D8, &qword_18A650F20);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = (v121 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936568, &qword_18A650D18);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v134 = v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v130 = v121 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v124 = v121 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v125 = v121 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v141 = (v121 - v50);
  v121[1] = a3;
  v129 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v51 = swift_allocObject();
  v51[2] = a7;
  v51[3] = a8;
  v52 = a1;
  v137 = v51;
  v51[4] = a1;
  v53 = swift_allocObject();
  v53[2] = a17;
  v53[3] = a18;
  v136 = v53;
  v53[4] = a1;
  v54 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v54 + 24));
  v55 = *(v54 + 16);
  v126 = (v54 + 16);

  v127 = v54;
  os_unfair_lock_unlock((v54 + 24));
  v142 = isEscapingClosureAtFileLocation;
  v140 = v52;
  v139 = v40;
  if (!v55)
  {
    v41[7](v39, 1, 1, v40);
    v143[0] = a9;
    v143[1] = a10;
    v147 = a11;
    v148 = a12;
    v76 = v128[3];
    v77 = v128[4];
    __swift_project_boxed_opaque_existential_0(v128, v76);
    swift_beginAccess();
    v78 = *(isEscapingClosureAtFileLocation + 153);
    v79 = *(v77 + 16);
    v80 = sub_188C52734();
    v79(aBlock, v78, v39, v143, &v147, &type metadata for UIAnimatableSize, v80, v76, v77);
    v81 = sub_188A33550();
    swift_beginAccess();
    v82.n128_f64[0] = a9;
    v83.n128_f64[0] = a10;
    v84.n128_f64[0] = a11;
    v85.n128_f64[0] = a12;
    v71 = v141;
    sub_188AAFF74(v39, aBlock, v129, &qword_1EA936568, &qword_18A650D18, &qword_1EA9367D8, &qword_18A650F20, &qword_1EA936560, v141, v82, v83, v84, v85, v81, &qword_18A650D10, sub_188EF7514, sub_188C52788, &type metadata for UIAnimatableSize, sub_188EF4E14);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v39, &qword_1EA9367D8, &qword_18A650F20);
    goto LABEL_12;
  }

  v56 = v128;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v57 = v39;
    v58 = v56;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v55[2] + 16));
      signpost_c2_entryLock_start();
      v59 = *(*v55 + 104);
      swift_beginAccess();
      v60 = v125;
      sub_188A3F29C(v55 + v59, v125, &qword_1EA936568, &qword_18A650D18);
      sub_188A3F29C(v60, v57, &qword_1EA936568, &qword_18A650D18);
      v41[7](v57, 0, 1, v139);
      v147 = a9;
      v148 = a10;
      v144 = a11;
      v145 = a12;
      v61 = v57;
      v62 = v58[4];
      __swift_project_boxed_opaque_existential_0(v58, v58[3]);
      swift_beginAccess();
      v63 = *(isEscapingClosureAtFileLocation + 153);
      v64 = *(v62 + 16);
      sub_188C52734();
      v64(aBlock, v63, v61, &v147, &v144);
      isEscapingClosureAtFileLocation = v142;
      v65 = v140;
      v66 = sub_188A33550();
      swift_beginAccess();
      v67.n128_f64[0] = a9;
      v68.n128_f64[0] = a10;
      v69.n128_f64[0] = a11;
      v70.n128_f64[0] = a12;
      v71 = v141;
      sub_188AAFF74(v61, aBlock, v129, &qword_1EA936568, &qword_18A650D18, &qword_1EA9367D8, &qword_18A650F20, &qword_1EA936560, v141, v67, v68, v69, v70, v66, &qword_18A650D10, sub_188EF7514, sub_188C52788, &type metadata for UIAnimatableSize, sub_188EF4E14);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v61, &qword_1EA9367D8, &qword_18A650F20);
      v72 = *v55;
      v73 = v55 + *(*v55 + 112);
      v74 = *v73;
      if (*v73)
      {
        v75 = *(v73 + 1);
        *v73 = 0;
        *(v73 + 1) = 0;
        v74(v65, 0);
        sub_188A55B8C(v74, v75);
        v72 = *v55;
      }

      *(v55 + *(v72 + 120)) = 1;
      sub_188A3F5FC(v125, &qword_1EA936568, &qword_18A650D18);
      os_unfair_lock_unlock((v55[2] + 16));
    }

    else
    {
      v86 = *(*v55 + 104);
      swift_beginAccess();
      v87 = v55 + v86;
      v88 = v124;
      sub_188A3F29C(v87, v124, &qword_1EA936568, &qword_18A650D18);
      sub_188A3F29C(v88, v57, &qword_1EA936568, &qword_18A650D18);
      v41[7](v57, 0, 1, v139);
      v147 = a9;
      v148 = a10;
      v144 = a11;
      v145 = a12;
      v89 = v56[4];
      __swift_project_boxed_opaque_existential_0(v56, v56[3]);
      swift_beginAccess();
      v90 = *(v142 + 153);
      v91 = *(v89 + 16);
      sub_188C52734();
      isEscapingClosureAtFileLocation = v142;
      v91(aBlock, v90, v57, &v147, &v144);
      v92 = v140;
      v93 = sub_188A33550();
      swift_beginAccess();
      v94.n128_f64[0] = a9;
      v95.n128_f64[0] = a10;
      v96.n128_f64[0] = a11;
      v97.n128_f64[0] = a12;
      v71 = v141;
      sub_188AAFF74(v57, aBlock, v129, &qword_1EA936568, &qword_18A650D18, &qword_1EA9367D8, &qword_18A650F20, &qword_1EA936560, v141, v94, v95, v96, v97, v93, &qword_18A650D10, sub_188EF7514, sub_188C52788, &type metadata for UIAnimatableSize, sub_188EF4E14);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v57, &qword_1EA9367D8, &qword_18A650F20);
      v98 = v55 + *(*v55 + 112);
      v99 = *v98;
      if (*v98)
      {
        v100 = *(v98 + 1);
        *v98 = 0;
        *(v98 + 1) = 0;
        v99(v92, 0);
        sub_188A55B8C(v99, v100);
      }

      sub_188A3F5FC(v124, &qword_1EA936568, &qword_18A650D18);
      *(v55 + *(*v55 + 120)) = 1;
    }

LABEL_12:
    v101 = v130;
    sub_188A3F29C(v71, v130, &qword_1EA936568, &qword_18A650D18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367E0, &qword_18A650F28);
    swift_allocObject();
    v102 = v133;

    v103 = sub_188AA785C(v101, v131, v102, &qword_1EA936568, &qword_18A650D18);

    if (v132)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 88))
    {
      if (a22)
      {
        goto LABEL_19;
      }

      v104 = (a11 - a9) * a21;
      v105 = (a12 - a10) * a21;
    }

    else
    {
      v104 = *(isEscapingClosureAtFileLocation + 72);
      v105 = *(isEscapingClosureAtFileLocation + 80);
    }

    sub_188EFF9E0(&qword_1EA936568, &qword_18A650D18, v104, v105);
LABEL_19:
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    *(v106 + 32) = 1;
    v107 = *(isEscapingClosureAtFileLocation + 192);
    v108 = v134;
    sub_188A3F29C(v71, v134, &qword_1EA936568, &qword_18A650D18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v109 = v122;
      sub_188A3F704(v108, v122, &qword_1EA936560, &qword_18A650D10);
      v110 = *(v109 + *(v123 + 64));
      sub_188A3F5FC(v109, &qword_1EA936560, &qword_18A650D10);
      v111 = (v110 == 2) | v110;
    }

    else
    {
      v111 = 0;
    }

    v112 = swift_allocObject();
    v113 = v135;
    v112[2] = v103;
    v112[3] = v113;
    v114 = v142;
    v112[4] = v138;
    v112[5] = v114;
    v139 = v103;
    v115 = v140;
    v112[6] = v106;
    v112[7] = v115;
    v116 = v106;
    v117 = v137;
    v112[8] = sub_188F0E0C0;
    v112[9] = v117;
    v118 = v136;
    v112[10] = sub_188F0E0D0;
    v112[11] = v118;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v39 = swift_allocObject();
    v39[4] = a13;
    v39[5] = a14;
    v39[6] = a15;
    *(v39 + 7) = a20;
    *(v39 + 32) = v107;
    *(v39 + 33) = v111 & 1;
    *(v39 + 5) = sub_188F0D510;
    *(v39 + 6) = v112;
    v135 = *(v115 + 280);
    v56 = swift_allocObject();
    v56[2] = v115;
    v56[3] = v39;
    v55 = swift_allocObject();
    v55[2] = sub_188F0E074;
    v55[3] = v56;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_894;
    v41 = _Block_copy(aBlock);
    swift_retain_n();

    v142 = v116;

    dispatch_sync(v135, v41);
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v119);
  v120 = v127;
  os_unfair_lock_lock(v127 + 6);
  sub_188F0E024(v126);
  os_unfair_lock_unlock(v120 + 6);

  sub_188A3F5FC(v141, &qword_1EA936568, &qword_18A650D18);
}

void sub_188ED2FF8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v147 = a8;
  v137 = a7;
  v130 = a6;
  v146 = a5;
  v143 = a4;
  v135 = a26;
  v133 = a25;
  v134 = a21;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590, &qword_18A650D38);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v121 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367E8, &qword_18A650F30);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = &v121 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598, &qword_18A650D40);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v136 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v132 = &v121 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v126 = &v121 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v127 = &v121 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v121 - v45);
  v123 = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v47 = swift_allocObject();
  v47[2] = a17;
  v47[3] = a18;
  v139 = v47;
  v47[4] = a1;
  v48 = swift_allocObject();
  v48[2] = a19;
  v48[3] = a20;
  v48[4] = a1;
  v49 = a2;
  v50 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v50 + 24));
  v51 = *(v50 + 16);
  v128 = (v50 + 16);

  v129 = v50;
  os_unfair_lock_unlock((v50 + 24));
  v141 = v46;
  v138 = v48;
  v145 = v49;
  v144 = v35;
  v142 = a1;
  v131 = a3;
  if (!v51)
  {
    v77 = v140;
    (*(v36 + 56))(v140, 1, 1, v35);
    v148[0] = v143;
    v152 = v146;
    v78 = v130[3];
    v79 = v130[4];
    v130 = __swift_project_boxed_opaque_existential_0(v130, v78);
    v61 = v49;
    swift_beginAccess();
    v80 = *(v49 + 96);
    v81 = *(v79 + 16);
    v82 = sub_188CD24A4();
    v81(aBlock, v80, v77, v148, &v152, &type metadata for UIAnimatableColorArray, v82, v78, v79);
    v83 = sub_188A33550();
    swift_beginAccess();
    v68 = v146;
    sub_188CD0040(*&v77, aBlock, v131, v143, v46, v83);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v77, &qword_1EA9367E8, &qword_18A650F30);
    v71 = v46;
    v76 = v136;
    goto LABEL_11;
  }

  v122 = v36;
  v52 = v130;
  v53 = v140;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v54 = v52;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v51[2] + 16));
      signpost_c2_entryLock_start();
      v55 = *(*v51 + 104);
      swift_beginAccess();
      v56 = v127;
      sub_188A3F29C(v51 + v55, v127, &qword_1EA936598, &qword_18A650D40);
      sub_188A3F29C(v56, v53, &qword_1EA936598, &qword_18A650D40);
      (*(v122 + 56))(v53, 0, 1, v144);
      v57 = v143;
      v152 = v143;
      v58 = v146;
      v149[0] = v146;
      v59 = v52[3];
      v60 = v52[4];
      __swift_project_boxed_opaque_existential_0(v52, v59);
      v61 = v145;
      swift_beginAccess();
      v62 = *(v61 + 96);
      v63 = *(v60 + 16);
      v64 = sub_188CD24A4();
      v65 = v62;
      v66 = v140;
      v67 = v59;
      v68 = v58;
      v63(aBlock, v65, v140, &v152, v149, &type metadata for UIAnimatableColorArray, v64, v67, v60);
      v69 = v142;
      v70 = sub_188A33550();
      swift_beginAccess();
      v71 = v141;
      sub_188CD0040(*&v66, aBlock, v131, v57, v141, v70);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v66, &qword_1EA9367E8, &qword_18A650F30);
      v72 = *v51;
      v73 = v51 + *(*v51 + 112);
      v74 = *v73;
      if (*v73)
      {
        v75 = *(v73 + 1);
        *v73 = 0;
        *(v73 + 1) = 0;
        v74(v69, 0);
        sub_188A55B8C(v74, v75);
        v72 = *v51;
      }

      v76 = v136;
      *(v51 + *(v72 + 120)) = 1;
      sub_188A3F5FC(v127, &qword_1EA936598, &qword_18A650D40);
      os_unfair_lock_unlock((v51[2] + 16));
    }

    else
    {
      v84 = *(*v51 + 104);
      swift_beginAccess();
      v85 = v126;
      sub_188A3F29C(v51 + v84, v126, &qword_1EA936598, &qword_18A650D40);
      sub_188A3F29C(v85, v53, &qword_1EA936598, &qword_18A650D40);
      (*(v122 + 56))(v53, 0, 1, v144);
      v86 = v53;
      v87 = v143;
      v152 = v143;
      v149[0] = v146;
      v88 = v52[3];
      v89 = v52[4];
      __swift_project_boxed_opaque_existential_0(v54, v54[3]);
      v90 = v145;
      swift_beginAccess();
      v91 = *(v90 + 96);
      v92 = *(v89 + 16);
      v93 = sub_188CD24A4();
      v92(aBlock, v91, v86, &v152, v149, &type metadata for UIAnimatableColorArray, v93, v88, v89);
      v61 = v90;
      v94 = v142;
      v95 = sub_188A33550();
      swift_beginAccess();
      v71 = v141;
      sub_188CD0040(*&v86, aBlock, v131, v87, v141, v95);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v86, &qword_1EA9367E8, &qword_18A650F30);
      v96 = v51 + *(*v51 + 112);
      v97 = *v96;
      if (*v96)
      {
        v98 = *(v96 + 1);
        *v96 = 0;
        *(v96 + 1) = 0;
        v97(v94, 0);
        sub_188A55B8C(v97, v98);
      }

      sub_188A3F5FC(v126, &qword_1EA936598, &qword_18A650D40);
      *(v51 + *(*v51 + 120)) = 1;

      v76 = v136;
      v68 = v146;
    }

LABEL_11:
    v99 = v132;
    sub_188A3F29C(v71, v132, &qword_1EA936598, &qword_18A650D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367F0, &qword_18A650F38);
    swift_allocObject();
    v100 = v135;

    v101 = sub_188AA785C(v99, v133, v100, &qword_1EA936598, &qword_18A650D40);

    if (v134)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(v61 + 56) == 1)
    {
      v102 = v68;
      v103 = v101;
      if ((a24 & 1) == 0)
      {
        sub_188CD18C0(v102, v143);
        aBlock[0] = v104;

        sub_188CD1B20(a23);

        sub_188EFED30(v105);
      }
    }

    else
    {

      v103 = v101;
      sub_188EFED30(v106);
    }

    v107 = swift_allocObject();
    *(v107 + 16) = 1;
    v108 = *(v61 + 120);
    sub_188A3F29C(v71, v76, &qword_1EA936598, &qword_18A650D40);
    v109 = v61;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v110 = v124;
      sub_188A3F704(v76, v124, &qword_1EA936590, &qword_18A650D38);
      v111 = *(v110 + *(v125 + 64));
      sub_188A3F5FC(v110, &qword_1EA936590, &qword_18A650D38);
      v112 = (v111 == 2) | v111;
    }

    else
    {
      sub_188A3F5FC(v76, &qword_1EA936598, &qword_18A650D40);
      v112 = 0;
    }

    v113 = swift_allocObject();
    v114 = v137;
    v113[2] = v103;
    v113[3] = v114;
    v113[4] = v147;
    v113[5] = v109;
    v113[6] = v107;
    v115 = v142;
    v113[7] = v142;
    v113[8] = sub_188F0D540;
    v113[9] = v139;
    v113[10] = sub_188F0E0D0;
    v113[11] = v138;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v116 = swift_allocObject();
    *(v116 + 16) = a9;
    *(v116 + 20) = a10;
    *(v116 + 24) = a11;
    *(v116 + 28) = a22;
    *(v116 + 32) = v108;
    *(v116 + 33) = v112 & 1;
    *(v116 + 40) = sub_188F0D58C;
    *(v116 + 48) = v113;
    v146 = *(v115 + 280);
    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = v116;
    v51 = swift_allocObject();
    v51[2] = sub_188F0E074;
    v51[3] = v117;
    aBlock[4] = sub_188E3FE50;
    v151 = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_934;
    v52 = _Block_copy(aBlock);
    v53 = v151;
    swift_retain_n();

    dispatch_sync(v146, v52);
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v119);
  *(&v121 - 2) = v103;
  v120 = v129;
  os_unfair_lock_lock(v129 + 6);
  sub_188AAFEC0(v128);
  os_unfair_lock_unlock(v120 + 6);

  sub_188A3F5FC(v141, &qword_1EA936598, &qword_18A650D40);
}

void sub_188ED3EC4(void *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v155 = a1;
  v156 = a8;
  v146 = a7;
  v139 = a6;
  v151 = a4;
  v152 = a5;
  v144 = a26;
  v142 = a25;
  v143 = a21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C0, &qword_18A650D60);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v131 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936800, &qword_18A650F48);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v148 = &v131 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C8, &qword_18A650D68);
  v138 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v145 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v141 = &v131 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v134 = &v131 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v135 = &v131 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v131 - v44);
  v131 = a3;
  v140 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v46 = swift_allocObject();
  v46[2] = a17;
  v46[3] = a18;
  v147 = v46;
  v46[4] = a1;
  v47 = swift_allocObject();
  v47[2] = a19;
  v47[3] = a20;
  v47[4] = a1;
  v48 = a2;
  v49 = *(a2 + 32);
  v50 = v152;
  swift_retain_n();

  os_unfair_lock_lock((v49 + 24));
  v51 = *(v49 + 16);
  v136 = (v49 + 16);

  v137 = v49;
  os_unfair_lock_unlock((v49 + 24));
  v153 = v45;
  v154 = v47;
  v52 = v151;
  v149 = v48;
  v150 = v35;
  if (!v51)
  {
    v77 = v148;
    (*(v138 + 56))();
    v78 = v52[1];
    v166 = *v52;
    v167 = v78;
    v79 = v52[3];
    v168 = v52[2];
    v169 = v79;
    v80 = *&v50[2].isa;
    v162 = *&v50->isa;
    v163 = v80;
    v81 = *&v50[6].isa;
    v164 = *&v50[4].isa;
    v165 = v81;
    v82 = v139[3];
    v83 = v139[4];
    __swift_project_boxed_opaque_existential_0(v139, v82);
    swift_beginAccess();
    v84 = *(v48 + 345);
    v85 = *(v83 + 16);
    v86 = sub_188D85AE4();
    v87 = v84;
    v88 = v77;
    v85(&v158, v87, v77, &v166, &v162, &type metadata for UIAnimatableCornerRadii, v86, v82, v83);
    v89 = sub_188A33550();
    swift_beginAccess();
    v170 = v166;
    v171 = v167;
    v172 = v168;
    v173 = v169;
    v174 = v162;
    v175 = v163;
    v176 = v164;
    v177 = v165;
    v71 = v153;
    sub_188EF9F2C(v88, &v158, v140, &v170, &v174, v153, v89);
    swift_endAccess();
    sub_188AAFF20(&v158);
    sub_188A3F5FC(v88, &qword_1EA936800, &qword_18A650F48);
    goto LABEL_11;
  }

  v53 = v148;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v54 = v151;
    v55 = v152;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v51[2] + 16));
      signpost_c2_entryLock_start();
      v56 = *(*v51 + 104);
      swift_beginAccess();
      v57 = v51 + v56;
      v58 = v135;
      sub_188A3F29C(v57, v135, &qword_1EA9365C8, &qword_18A650D68);
      sub_188A3F29C(v58, v53, &qword_1EA9365C8, &qword_18A650D68);
      (*(v138 + 56))(v53, 0, 1, v150);
      v59 = v54[1];
      v166 = *v54;
      v167 = v59;
      v60 = v54[3];
      v168 = v54[2];
      v169 = v60;
      v61 = *&v55[2].isa;
      v162 = *&v55->isa;
      v163 = v61;
      v62 = *&v55[6].isa;
      v164 = *&v55[4].isa;
      v165 = v62;
      v63 = v139[3];
      v64 = v139[4];
      __swift_project_boxed_opaque_existential_0(v139, v63);
      v48 = v149;
      swift_beginAccess();
      v65 = *(v48 + 345);
      v66 = *(v64 + 16);
      v67 = sub_188D85AE4();
      v68 = v148;
      v66(&v158, v65, v148, &v166, &v162, &type metadata for UIAnimatableCornerRadii, v67, v63, v64);
      v69 = v155;
      v70 = sub_188A33550();
      swift_beginAccess();
      v170 = v166;
      v171 = v167;
      v172 = v168;
      v173 = v169;
      v174 = v162;
      v175 = v163;
      v176 = v164;
      v177 = v165;
      v71 = v153;
      sub_188EF9F2C(v68, &v158, v140, &v170, &v174, v153, v70);
      swift_endAccess();
      sub_188AAFF20(&v158);
      sub_188A3F5FC(v68, &qword_1EA936800, &qword_18A650F48);
      v72 = *v51;
      v73 = v51 + *(*v51 + 112);
      v74 = *v73;
      if (*v73)
      {
        v75 = *(v73 + 1);
        *v73 = 0;
        *(v73 + 1) = 0;
        v74(v69, 0);
        sub_188A55B8C(v74, v75);
        v72 = *v51;
      }

      v76 = v145;
      *(v51 + *(v72 + 120)) = 1;
      sub_188A3F5FC(v135, &qword_1EA9365C8, &qword_18A650D68);
      os_unfair_lock_unlock((v51[2] + 16));
    }

    else
    {
      v90 = *(*v51 + 104);
      swift_beginAccess();
      v91 = v134;
      sub_188A3F29C(v51 + v90, v134, &qword_1EA9365C8, &qword_18A650D68);
      sub_188A3F29C(v91, v53, &qword_1EA9365C8, &qword_18A650D68);
      (*(v138 + 56))(v53, 0, 1, v150);
      v92 = v54[1];
      v166 = *v54;
      v167 = v92;
      v93 = v54[3];
      v168 = v54[2];
      v169 = v93;
      v94 = *&v55[2].isa;
      v162 = *&v55->isa;
      v163 = v94;
      v95 = *&v55[6].isa;
      v164 = *&v55[4].isa;
      v165 = v95;
      v96 = v139[3];
      v97 = v139[4];
      __swift_project_boxed_opaque_existential_0(v139, v96);
      v48 = v149;
      swift_beginAccess();
      v98 = *(v48 + 345);
      v99 = *(v97 + 16);
      v100 = sub_188D85AE4();
      v101 = v148;
      v99(&v158, v98, v148, &v166, &v162, &type metadata for UIAnimatableCornerRadii, v100, v96, v97);
      v102 = v155;
      v103 = sub_188A33550();
      swift_beginAccess();
      v170 = v166;
      v171 = v167;
      v172 = v168;
      v173 = v169;
      v174 = v162;
      v175 = v163;
      v176 = v164;
      v177 = v165;
      v71 = v153;
      sub_188EF9F2C(v101, &v158, v140, &v170, &v174, v153, v103);
      swift_endAccess();
      sub_188AAFF20(&v158);
      sub_188A3F5FC(v101, &qword_1EA936800, &qword_18A650F48);
      v104 = v51 + *(*v51 + 112);
      v105 = *v104;
      if (*v104)
      {
        v106 = *(v104 + 1);
        *v104 = 0;
        *(v104 + 1) = 0;
        v105(v102, 0);
        sub_188A55B8C(v105, v106);
      }

      sub_188A3F5FC(v134, &qword_1EA9365C8, &qword_18A650D68);
      *(v51 + *(*v51 + 120)) = 1;

LABEL_11:
      v76 = v145;
    }

    v107 = v141;
    sub_188A3F29C(v71, v141, &qword_1EA9365C8, &qword_18A650D68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936808, &qword_18A650F50);
    swift_allocObject();
    v108 = v144;

    v109 = sub_188AA785C(v107, v142, v108, &qword_1EA9365C8, &qword_18A650D68);

    if (v143)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(v48 + 184))
    {
      if (a24)
      {
        goto LABEL_19;
      }

      v110 = vmulq_n_f64(vsubq_f64(*&v152[2].isa, v151[1]), a23);
      v158 = vmulq_n_f64(vsubq_f64(*&v152->isa, *v151), a23);
      v159 = v110;
      v111 = vmulq_n_f64(vsubq_f64(*&v152[4].isa, v151[2]), a23);
      v112 = vmulq_n_f64(vsubq_f64(*&v152[6].isa, v151[3]), a23);
    }

    else
    {
      v113 = *(v48 + 136);
      v158 = *(v48 + 120);
      v159 = v113;
      v111 = *(v48 + 152);
      v112 = *(v48 + 168);
    }

    v160 = v111;
    v161 = v112;
    sub_188EFF040(&v158);
LABEL_19:
    LODWORD(v152) = a22;
    v114 = swift_allocObject();
    v157 = 1;
    *(v114 + 16) = 0u;
    *(v114 + 32) = 0u;
    *(v114 + 48) = 0u;
    *(v114 + 64) = 0u;
    *(v114 + 80) = 1;
    v115 = *(v48 + 432);
    sub_188A3F29C(v71, v76, &qword_1EA9365C8, &qword_18A650D68);
    v116 = v48;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v117 = v132;
      sub_188A3F704(v76, v132, &qword_1EA9365C0, &qword_18A650D60);
      v118 = *(v117 + *(v133 + 64));
      sub_188A3F5FC(v117, &qword_1EA9365C0, &qword_18A650D60);
      v119 = (v118 == 2) | v118;
    }

    else
    {
      v119 = 0;
    }

    v120 = swift_allocObject();
    v121 = v109;
    v122 = v146;
    v123 = v147;
    v120[2] = v109;
    v120[3] = v122;
    v120[4] = v156;
    v120[5] = v116;
    v124 = v154;
    v125 = v155;
    v120[6] = v114;
    v120[7] = v125;
    v120[8] = sub_188F0D7D0;
    v120[9] = v123;
    v120[10] = sub_188F0E0D0;
    v120[11] = v124;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v126 = swift_allocObject();
    *(v126 + 16) = a9;
    *(v126 + 20) = a10;
    *(v126 + 24) = a11;
    *(v126 + 28) = v152;
    *(v126 + 32) = v115;
    *(v126 + 33) = v119 & 1;
    *(v126 + 40) = sub_188F0D830;
    *(v126 + 48) = v120;
    v152 = v125[35];
    v127 = swift_allocObject();
    *(v127 + 16) = v125;
    *(v127 + 24) = v126;
    v128 = swift_allocObject();
    *(v128 + 16) = sub_188F0E074;
    *(v128 + 24) = v127;
    *&v168.f64[0] = sub_188E3FE50;
    *&v168.f64[1] = v128;
    *&v166.f64[0] = MEMORY[0x1E69E9820];
    *&v166.f64[1] = 1107296256;
    *&v167.f64[0] = sub_188A4A968;
    *&v167.f64[1] = &block_descriptor_974;
    v53 = _Block_copy(&v166);
    v51 = v123;
    swift_retain_n();
    v155 = v121;

    dispatch_sync(v152, v53);
    _Block_release(v53);
    LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

    if ((v123 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v129);
  *(&v131 - 2) = v155;
  v130 = v137;
  os_unfair_lock_lock(v137 + 6);
  sub_188F0E024(v136);
  os_unfair_lock_unlock(v130 + 6);

  sub_188A3F5FC(v153, &qword_1EA9365C8, &qword_18A650D68);
}

void sub_188ED4C94(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, NSObject *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v147 = a8;
  v137 = a7;
  v130 = a6;
  v146 = a5;
  v141 = a4;
  v135 = a26;
  v133 = a25;
  v134 = a21;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0, &qword_18A650D88);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v121 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936810, &qword_18A650F58);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = &v121 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8, &qword_18A650D90);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v136 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v132 = &v121 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v126 = &v121 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v127 = &v121 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v121 - v45);
  v123 = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v47 = swift_allocObject();
  v47[2] = a17;
  v47[3] = a18;
  v139 = v47;
  v47[4] = a1;
  v48 = swift_allocObject();
  v48[2] = a19;
  v48[3] = a20;
  v48[4] = a1;
  v49 = a2;
  v50 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v50 + 24));
  v51 = *(v50 + 16);
  v128 = (v50 + 16);

  v129 = v50;
  os_unfair_lock_unlock((v50 + 24));
  v142 = v46;
  v138 = v48;
  v145 = v49;
  v144 = v35;
  v143 = a1;
  v131 = a3;
  if (!v51)
  {
    v77 = v140;
    (*(v36 + 56))(v140, 1, 1, v35);
    v148[0] = v141;
    v152 = v146;
    v78 = v130[3];
    v79 = v130[4];
    v130 = __swift_project_boxed_opaque_existential_0(v130, v78);
    v61 = v49;
    swift_beginAccess();
    v80 = *(v49 + 96);
    v81 = *(v79 + 16);
    v82 = sub_188D75420();
    v81(aBlock, v80, v77, v148, &v152, &type metadata for UIAnimatableVector, v82, v78, v79);
    v83 = sub_188A33550();
    swift_beginAccess();
    v68 = v146;
    sub_188D86100(v77, aBlock, v131, v141, v146, v46, v83);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v77, &qword_1EA936810, &qword_18A650F58);
    v71 = v46;
    v76 = v136;
    goto LABEL_11;
  }

  v122 = v36;
  v52 = v130;
  v53 = v140;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v54 = v52;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v51[2] + 16));
      signpost_c2_entryLock_start();
      v55 = *(*v51 + 104);
      swift_beginAccess();
      v56 = v127;
      sub_188A3F29C(v51 + v55, v127, &qword_1EA9365F8, &qword_18A650D90);
      sub_188A3F29C(v56, v53, &qword_1EA9365F8, &qword_18A650D90);
      (*(v122 + 56))(v53, 0, 1, v144);
      v57 = v141;
      v152 = v141;
      v58 = v146;
      v149[0] = v146;
      v59 = v52[3];
      v60 = v52[4];
      __swift_project_boxed_opaque_existential_0(v52, v59);
      v61 = v145;
      swift_beginAccess();
      v62 = *(v61 + 96);
      v63 = *(v60 + 16);
      v64 = sub_188D75420();
      v65 = v62;
      v66 = v140;
      v67 = v59;
      v68 = v58;
      v63(aBlock, v65, v140, &v152, v149, &type metadata for UIAnimatableVector, v64, v67, v60);
      v69 = v143;
      v70 = sub_188A33550();
      swift_beginAccess();
      v71 = v142;
      sub_188D86100(v66, aBlock, v131, v57, v58, v142, v70);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v66, &qword_1EA936810, &qword_18A650F58);
      v72 = *v51;
      v73 = v51 + *(*v51 + 112);
      v74 = *v73;
      if (*v73)
      {
        v75 = *(v73 + 1);
        *v73 = 0;
        *(v73 + 1) = 0;
        v74(v69, 0);
        sub_188A55B8C(v74, v75);
        v72 = *v51;
      }

      v76 = v136;
      *(v51 + *(v72 + 120)) = 1;
      sub_188A3F5FC(v127, &qword_1EA9365F8, &qword_18A650D90);
      os_unfair_lock_unlock((v51[2] + 16));
    }

    else
    {
      v84 = *(*v51 + 104);
      swift_beginAccess();
      v85 = v126;
      sub_188A3F29C(v51 + v84, v126, &qword_1EA9365F8, &qword_18A650D90);
      sub_188A3F29C(v85, v53, &qword_1EA9365F8, &qword_18A650D90);
      (*(v122 + 56))(v53, 0, 1, v144);
      v86 = v53;
      v87 = v141;
      v152 = v141;
      v149[0] = v146;
      v88 = v52[3];
      v89 = v52[4];
      __swift_project_boxed_opaque_existential_0(v54, v54[3]);
      v90 = v145;
      swift_beginAccess();
      v91 = *(v90 + 96);
      v92 = *(v89 + 16);
      v93 = sub_188D75420();
      v92(aBlock, v91, v86, &v152, v149, &type metadata for UIAnimatableVector, v93, v88, v89);
      v61 = v90;
      v94 = v143;
      v95 = sub_188A33550();
      swift_beginAccess();
      v71 = v142;
      sub_188D86100(v86, aBlock, v131, v87, v146, v142, v95);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v86, &qword_1EA936810, &qword_18A650F58);
      v96 = v51 + *(*v51 + 112);
      v97 = *v96;
      if (*v96)
      {
        v98 = *(v96 + 1);
        *v96 = 0;
        *(v96 + 1) = 0;
        v97(v94, 0);
        sub_188A55B8C(v97, v98);
      }

      sub_188A3F5FC(v126, &qword_1EA9365F8, &qword_18A650D90);
      *(v51 + *(*v51 + 120)) = 1;

      v76 = v136;
      v68 = v146;
    }

LABEL_11:
    v99 = v132;
    sub_188A3F29C(v71, v132, &qword_1EA9365F8, &qword_18A650D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936818, &qword_18A650F60);
    swift_allocObject();
    v100 = v135;

    v101 = sub_188AA785C(v99, v133, v100, &qword_1EA9365F8, &qword_18A650D90);

    if (v134)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(v61 + 56))
    {

      v103 = v101;
      sub_188EFF23C(v102);
    }

    else
    {
      v104 = v68;
      v103 = v101;
      if ((a24 & 1) == 0)
      {
        sub_188D7EBC0(v104, v141);
        aBlock[0] = v105;

        sub_188D85638(a23);

        sub_188EFF23C(v106);
      }
    }

    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    v108 = *(v61 + 120);
    sub_188A3F29C(v71, v76, &qword_1EA9365F8, &qword_18A650D90);
    v109 = v61;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v110 = v124;
      sub_188A3F704(v76, v124, &qword_1EA9365F0, &qword_18A650D88);
      v111 = *(v110 + *(v125 + 64));
      sub_188A3F5FC(v110, &qword_1EA9365F0, &qword_18A650D88);
      v112 = (v111 == 2) | v111;
    }

    else
    {
      sub_188A3F5FC(v76, &qword_1EA9365F8, &qword_18A650D90);
      v112 = 0;
    }

    v113 = swift_allocObject();
    v114 = v137;
    v113[2] = v103;
    v113[3] = v114;
    v113[4] = v147;
    v113[5] = v109;
    v113[6] = v107;
    v115 = v143;
    v113[7] = v143;
    v113[8] = sub_188F0D540;
    v113[9] = v139;
    v113[10] = sub_188F0E0D0;
    v113[11] = v138;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v116 = swift_allocObject();
    *(v116 + 16) = a9;
    *(v116 + 20) = a10;
    *(v116 + 24) = a11;
    *(v116 + 28) = a22;
    *(v116 + 32) = v108;
    *(v116 + 33) = v112 & 1;
    *(v116 + 40) = sub_188F0D8C4;
    *(v116 + 48) = v113;
    v146 = *(v115 + 280);
    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = v116;
    v51 = swift_allocObject();
    v51[2] = sub_188F0E074;
    v51[3] = v117;
    aBlock[4] = sub_188E3FE50;
    v151 = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1014;
    v52 = _Block_copy(aBlock);
    v53 = v151;
    swift_retain_n();

    dispatch_sync(v146, v52);
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v119);
  *(&v121 - 2) = v103;
  v120 = v129;
  os_unfair_lock_lock(v129 + 6);
  sub_188F0E024(v128);
  os_unfair_lock_unlock(v120 + 6);

  sub_188A3F5FC(v142, &qword_1EA9365F8, &qword_18A650D90);
}

void sub_188ED5B58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, os_unfair_lock_s *a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v150 = a8;
  v151 = a4;
  v146 = a7;
  v138 = a6;
  v144 = a5;
  v143 = a26;
  v141 = a25;
  v142 = a21;
  v137 = a19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936620, &qword_18A650DB0);
  MEMORY[0x1EEE9AC00](v133);
  v132 = v131 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936828, &qword_18A650F70);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = (v131 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628, &qword_18A650DB8);
  isa = v36[-1].isa;
  MEMORY[0x1EEE9AC00](v36);
  v145 = v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v140 = v131 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v134 = v131 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v135 = (v131 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v152 = v131 - v46;
  v131[1] = a3;
  v139 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v47 = swift_allocObject();
  v47[2] = a17;
  v47[3] = a18;
  v147 = v47;
  v47[4] = a1;
  v48 = swift_allocObject();
  v48[2] = v137;
  v48[3] = a20;
  v48[4] = a1;
  v153 = a2;
  v49 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v49 + 24));
  v50 = *(v49 + 16);
  v136 = (v49 + 16);

  v137 = v49;
  os_unfair_lock_unlock((v49 + 24));
  v148 = v36;
  v149 = v48;
  if (!v50)
  {
    (*(isa + 7))(v35, 1, 1, v36);
    v64 = v151;
    v72 = *(v151 + 1);
    v160 = *v151;
    *v161 = v72;
    *&v161[13] = *(v151 + 29);
    v56 = v144;
    v73 = v144[1];
    v158 = *v144;
    *v159 = v73;
    *&v159[13] = *(v144 + 29);
    v74 = v138[3];
    v75 = v138[4];
    v138 = __swift_project_boxed_opaque_existential_0(v138, v74);
    v76 = v153;
    swift_beginAccess();
    v77 = *(v76 + 221);
    v135 = *(v75 + 16);
    v78 = sub_188E95028();
    (v135)(&v154, v77, v35, &v160, &v158, &type metadata for UIAnimatableMeshTransform, v78, v74, v75);
    v79 = v152;
    v80 = sub_188A33550();
    swift_beginAccess();
    v67 = v79;
    sub_188EFB164(v35, &v154, v139, v64, v56, v79, v80);
    swift_endAccess();
    sub_188AAFF20(&v154);
    sub_188A3F5FC(v35, &qword_1EA936828, &qword_18A650F70);
    v65 = a1;
    goto LABEL_12;
  }

  v131[0] = a1;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v51 = v35;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v50[2] + 16));
      signpost_c2_entryLock_start();
      v52 = *(*v50 + 104);
      swift_beginAccess();
      v53 = v135;
      sub_188A3F29C(v50 + v52, v135, &qword_1EA936628, &qword_18A650DB8);
      sub_188A3F29C(v53, v35, &qword_1EA936628, &qword_18A650DB8);
      (*(isa + 7))(v35, 0, 1, v148);
      v54 = v151;
      v55 = *(v151 + 1);
      v160 = *v151;
      *v161 = v55;
      *&v161[13] = *(v151 + 29);
      v56 = v144;
      v57 = v144[1];
      v158 = *v144;
      *v159 = v57;
      *&v159[13] = *(v144 + 29);
      v58 = v138[3];
      v59 = v138[4];
      v138 = __swift_project_boxed_opaque_existential_0(v138, v58);
      v60 = v153;
      swift_beginAccess();
      v61 = *(v60 + 221);
      v62 = *(v59 + 16);
      v63 = sub_188E95028();
      v62(&v154, v61, v51, &v160, &v158, &type metadata for UIAnimatableMeshTransform, v63, v58, v59);
      v64 = v54;
      v65 = v131[0];
      v66 = sub_188A33550();
      swift_beginAccess();
      v67 = v152;
      sub_188EFB164(v51, &v154, v139, v54, v56, v152, v66);
      swift_endAccess();
      sub_188AAFF20(&v154);
      sub_188A3F5FC(v51, &qword_1EA936828, &qword_18A650F70);
      v68 = *v50;
      v69 = v50 + *(*v50 + 112);
      v70 = *v69;
      if (*v69)
      {
        v71 = *(v69 + 1);
        *v69 = 0;
        *(v69 + 1) = 0;
        v70(v65, 0);
        sub_188A55B8C(v70, v71);
        v68 = *v50;
      }

      *(v50 + *(v68 + 120)) = 1;
      sub_188A3F5FC(v135, &qword_1EA936628, &qword_18A650DB8);
      os_unfair_lock_unlock((v50[2] + 16));
    }

    else
    {
      v81 = *(*v50 + 104);
      swift_beginAccess();
      v82 = v134;
      sub_188A3F29C(v50 + v81, v134, &qword_1EA936628, &qword_18A650DB8);
      sub_188A3F29C(v82, v51, &qword_1EA936628, &qword_18A650DB8);
      (*(isa + 7))(v51, 0, 1, v148);
      v83 = v151;
      v84 = *(v151 + 1);
      v160 = *v151;
      *v161 = v84;
      *&v161[13] = *(v151 + 29);
      v85 = v153;
      v86 = v144;
      v87 = v144[1];
      v158 = *v144;
      *v159 = v87;
      *&v159[13] = *(v144 + 29);
      v88 = v138[3];
      v89 = v138[4];
      v138 = __swift_project_boxed_opaque_existential_0(v138, v88);
      swift_beginAccess();
      v90 = *(v85 + 221);
      v135 = *(v89 + 16);
      v91 = sub_188E95028();
      v92 = v89;
      v56 = v86;
      v64 = v83;
      (v135)(&v154, v90, v51, &v160, &v158, &type metadata for UIAnimatableMeshTransform, v91, v88, v92);
      v65 = v131[0];
      v93 = sub_188A33550();
      swift_beginAccess();
      v67 = v152;
      sub_188EFB164(v51, &v154, v139, v83, v56, v152, v93);
      swift_endAccess();
      sub_188AAFF20(&v154);
      sub_188A3F5FC(v51, &qword_1EA936828, &qword_18A650F70);
      v94 = v50 + *(*v50 + 112);
      v95 = *v94;
      if (*v94)
      {
        v96 = *(v94 + 1);
        *v94 = 0;
        *(v94 + 1) = 0;
        v95(v65, 0);
        sub_188A55B8C(v95, v96);
      }

      sub_188A3F5FC(v134, &qword_1EA936628, &qword_18A650DB8);
      *(v50 + *(*v50 + 120)) = 1;
    }

LABEL_12:
    v97 = v140;
    sub_188A3F29C(v67, v140, &qword_1EA936628, &qword_18A650DB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936830, &qword_18A650F78);
    swift_allocObject();
    v98 = v143;

    v99 = sub_188AA785C(v97, v141, v98, &qword_1EA936628, &qword_18A650DB8);

    if (v142)
    {
      swift_unknownObjectWeakAssign();
    }

    v100 = v153;
    swift_beginAccess();
    v101 = *(v100 + 88);
    v151 = v99;
    if (v101 == 1)
    {
      if ((a24 & 1) == 0)
      {
        sub_1890905D8(v56, v64, &v158);
        v102 = *(&v158 + 1);
        v103 = *&v159[8];
        v104 = *v159;
        v105 = *&v159[16] | (v159[20] << 32);
        if (v158)
        {
          v154 = v158;
          v155 = *v159;
          LODWORD(v156) = *&v159[16];
          BYTE4(v156) = BYTE4(v105) & 1;

          sub_18908FB80(a23);
          v102 = *(&v154 + 1);
          v106 = v154;
          v103 = *(&v155 + 1);
          v104 = v155;
          v107 = 0x100000000;
          if (!BYTE4(v156))
          {
            v107 = 0;
          }

          v105 = v107 | v156;
        }

        else
        {
          v106 = 0;
        }

        *&v160 = v106;
        *(&v160 + 1) = v102;
        *v161 = v104;
        *&v161[8] = v103;
        *&v161[16] = v105;
        v161[20] = BYTE4(v105);
        sub_188F0B550(v106, v102, v104, v103);
        sub_188EFF54C(&v160);
        sub_188F0B59C(v106, v102, v104, v103);
        sub_188F0D344(&v158);
        v67 = v152;
      }
    }

    else
    {
      v108 = *(v153 + 124);
      v109 = *(v153 + 120);
      v110 = *(v153 + 104);
      v111 = *(v153 + 112);
      v112 = *(v153 + 96);
      *&v160 = v101;
      *(&v160 + 1) = v112;
      *v161 = v110;
      *&v161[8] = v111;
      v161[20] = v108;
      *&v161[16] = v109;
      sub_188F0B550(v101, v112, v110, v111);
      sub_188EFF54C(&v160);
    }

    v113 = v65;
    LODWORD(v144) = a22;
    v35 = swift_allocObject();
    v35[2] = 1;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    *(v35 + 45) = 0;
    v114 = *(v153 + 272);
    v115 = v67;
    v116 = v145;
    sub_188A3F29C(v115, v145, &qword_1EA936628, &qword_18A650DB8);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v117 = v153;
      v118 = v132;
      sub_188A3F704(v116, v132, &qword_1EA936620, &qword_18A650DB0);
      v119 = *(v118 + *(v133 + 64));
      sub_188A3F5FC(v118, &qword_1EA936620, &qword_18A650DB0);
      v120 = (v119 == 2) | v119;
    }

    else
    {
      v117 = v153;
      sub_188A3F5FC(v116, &qword_1EA936628, &qword_18A650DB8);
      v120 = 0;
    }

    v121 = swift_allocObject();
    v122 = v146;
    v123 = v147;
    v121[2] = v151;
    v121[3] = v122;
    v124 = v149;
    v121[4] = v150;
    v121[5] = v117;
    v121[6] = v35;
    v121[7] = v113;
    v121[8] = sub_188F0D93C;
    v121[9] = v123;
    v121[10] = sub_188F0E0D0;
    v121[11] = v124;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v125 = swift_allocObject();
    *(v125 + 16) = a9;
    *(v125 + 20) = a10;
    *(v125 + 24) = a11;
    *(v125 + 28) = v144;
    *(v125 + 32) = v114;
    *(v125 + 33) = v120 & 1;
    *(v125 + 40) = sub_188F0D948;
    *(v125 + 48) = v121;
    v148 = *(v113 + 280);
    v126 = swift_allocObject();
    *(v126 + 16) = v113;
    *(v126 + 24) = v125;
    v127 = swift_allocObject();
    *(v127 + 16) = sub_188F0E074;
    *(v127 + 24) = v126;
    v156 = sub_188E3FE50;
    v157 = v127;
    *&v154 = MEMORY[0x1E69E9820];
    *(&v154 + 1) = 1107296256;
    *&v155 = sub_188A4A968;
    *(&v155 + 1) = &block_descriptor_1054;
    v128 = _Block_copy(&v154);
    isa = v157;
    v50 = v123;
    swift_retain_n();

    dispatch_sync(v148, v128);
    _Block_release(v128);
    LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

    if ((v123 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v129);
  v131[-2] = v151;
  v130 = v137;
  os_unfair_lock_lock(v137 + 6);
  sub_188F0E024(v136);
  os_unfair_lock_unlock(v130 + 6);

  sub_188A3F5FC(v152, &qword_1EA936628, &qword_18A650DB8);
}

void sub_188ED69D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, double a9, double a10, float a11, float a12, float a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, char *a24)
{
  v129 = a7;
  v130 = a6;
  v127 = a5;
  v121 = a4;
  v125 = a24;
  v123 = a23;
  v124 = a19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658, &qword_18A650DE0);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v114 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936858, &qword_18A650FA0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = v114 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936660, &qword_18A650DE8);
  isa = v36[-1].isa;
  MEMORY[0x1EEE9AC00](v36);
  v126 = v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v122 = v114 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v117 = v114 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v118 = v114 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = (v114 - v46);
  v114[1] = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v49 = swift_allocObject();
  *(v49 + 2) = v129;
  *(v49 + 3) = a8;
  v129 = v49;
  *(v49 + 4) = a1;
  v50 = swift_allocObject();
  v50[2] = a17;
  v50[3] = a18;
  v128 = v50;
  v50[4] = a1;
  v51 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v51 + 24));
  v52 = *(v51 + 16);
  v119 = (v51 + 16);

  v120 = v51;
  os_unfair_lock_unlock((v51 + 24));
  v131 = v47;
  v133 = a2;
  v132 = v36;
  if (!v52)
  {
    (*(isa + 7))(v35, 1, 1, v36);
    v134[0] = a9;
    v137 = a10;
    v73 = v121[3];
    v74 = v121[4];
    __swift_project_boxed_opaque_existential_0(v121, v73);
    LODWORD(v121) = a3;
    swift_beginAccess();
    v75 = *(a2 + 121);
    v76 = *(v74 + 16);
    v77 = sub_188A6D678();
    v76(aBlock, v75, v35, v134, &v137, &type metadata for UIAnimatableFloat, v77, v73, v74);
    v78 = sub_188A33550();
    swift_beginAccess();
    sub_188EFD030(v35, aBlock, v121, v47, a9, a10, v78);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v35, &qword_1EA936858, &qword_18A650FA0);
    v72 = a1;
    v71 = v126;
    v66 = v47;
    goto LABEL_11;
  }

  v53 = v121;
  v114[0] = a1;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v54 = a3;
    v55 = v53;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v52[2] + 16));
      signpost_c2_entryLock_start();
      v56 = *(*v52 + 104);
      swift_beginAccess();
      v57 = v118;
      sub_188A3F29C(v52 + v56, v118, &qword_1EA936660, &qword_18A650DE8);
      sub_188A3F29C(v57, v35, &qword_1EA936660, &qword_18A650DE8);
      (*(isa + 7))(v35, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v58 = v55[3];
      v59 = v55[4];
      __swift_project_boxed_opaque_existential_0(v55, v58);
      v60 = v133;
      swift_beginAccess();
      v61 = *(v60 + 121);
      v62 = *(v59 + 16);
      v63 = sub_188A6D678();
      v62(aBlock, v61, v35, &v137, v135, &type metadata for UIAnimatableFloat, v63, v58, v59);
      v64 = v114[0];
      v65 = sub_188A33550();
      swift_beginAccess();
      v66 = v131;
      sub_188EFD030(v35, aBlock, v54, v131, a9, a10, v65);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v35, &qword_1EA936858, &qword_18A650FA0);
      v67 = *v52;
      v68 = v52 + *(*v52 + 112);
      v69 = *v68;
      if (*v68)
      {
        v70 = *(v68 + 1);
        *v68 = 0;
        *(v68 + 1) = 0;
        v69(v64, 0);
        sub_188A55B8C(v69, v70);
        v67 = *v52;
      }

      v71 = v126;
      v72 = v64;
      *(v52 + *(v67 + 120)) = 1;
      sub_188A3F5FC(v118, &qword_1EA936660, &qword_18A650DE8);
      os_unfair_lock_unlock((v52[2] + 16));
    }

    else
    {
      v79 = *(*v52 + 104);
      swift_beginAccess();
      v80 = v117;
      sub_188A3F29C(v52 + v79, v117, &qword_1EA936660, &qword_18A650DE8);
      sub_188A3F29C(v80, v35, &qword_1EA936660, &qword_18A650DE8);
      (*(isa + 7))(v35, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v81 = v53[3];
      v82 = v55[4];
      __swift_project_boxed_opaque_existential_0(v55, v55[3]);
      v83 = v133;
      swift_beginAccess();
      v84 = v35;
      v85 = *(v83 + 121);
      v86 = *(v82 + 16);
      v87 = sub_188A6D678();
      v86(aBlock, v85, v84, &v137, v135, &type metadata for UIAnimatableFloat, v87, v81, v82);
      v88 = v114[0];
      v89 = sub_188A33550();
      swift_beginAccess();
      v66 = v131;
      sub_188EFD030(v84, aBlock, v54, v131, a9, a10, v89);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v84, &qword_1EA936858, &qword_18A650FA0);
      v90 = v52 + *(*v52 + 112);
      v91 = *v90;
      if (*v90)
      {
        v92 = *(v90 + 1);
        *v90 = 0;
        *(v90 + 1) = 0;
        v91(v88, 0);
        sub_188A55B8C(v91, v92);
      }

      v72 = v88;
      sub_188A3F5FC(v117, &qword_1EA936660, &qword_18A650DE8);
      *(v52 + *(*v52 + 120)) = 1;

      v71 = v126;
    }

LABEL_11:
    v93 = v122;
    sub_188A3F29C(v66, v122, &qword_1EA936660, &qword_18A650DE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936860, &qword_18A650FA8);
    swift_allocObject();
    v94 = v125;

    v95 = sub_188AA785C(v93, v123, v94, &qword_1EA936660, &qword_18A650DE8);

    if (v124)
    {
      swift_unknownObjectWeakAssign();
    }

    v96 = v133;
    swift_beginAccess();
    v97 = v72;
    if (*(v96 + 72))
    {
      if (a22)
      {
        goto LABEL_18;
      }

      v98 = (a10 - a9) * a21;
    }

    else
    {
      v98 = *(v96 + 64);
    }

    sub_188D4DBD0(&qword_1EA936660, &qword_18A650DE8, v98);
LABEL_18:
    v99 = v95;
    LODWORD(v126) = a20;
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v101 = v100;
    *(v100 + 24) = 1;
    v124 = *(v96 + 152);
    sub_188A3F29C(v66, v71, &qword_1EA936660, &qword_18A650DE8);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v102 = v115;
      sub_188A3F704(v71, v115, &qword_1EA936658, &qword_18A650DE0);
      v103 = *(v102 + *(v116 + 64));
      sub_188A3F5FC(v102, &qword_1EA936658, &qword_18A650DE0);
      v104 = (v103 == 2) | v103;
    }

    else
    {
      v104 = 0;
    }

    v105 = swift_allocObject();
    v106 = v127;
    v105[2] = v95;
    v105[3] = v106;
    v107 = v133;
    v105[4] = v130;
    v105[5] = v107;
    v125 = v101;
    v105[6] = v101;
    v105[7] = v97;
    v108 = v129;
    v105[8] = sub_188F0E0C4;
    v105[9] = v108;
    v109 = v128;
    v105[10] = sub_188F0E0D0;
    v105[11] = v109;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    a3 = swift_allocObject();
    *(a3 + 16) = a11;
    *(a3 + 20) = a12;
    *(a3 + 24) = a13;
    *(a3 + 28) = v126;
    *(a3 + 32) = v124;
    *(a3 + 33) = v104 & 1;
    *(a3 + 40) = sub_188F0D9AC;
    *(a3 + 48) = v105;
    v132 = *(v97 + 280);
    v110 = swift_allocObject();
    *(v110 + 16) = v97;
    *(v110 + 24) = a3;
    v52 = swift_allocObject();
    v52[2] = sub_188F0E074;
    v52[3] = v110;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1094;
    v53 = _Block_copy(aBlock);
    swift_retain_n();
    v111 = v99;

    v35 = v125;
    isa = v108;

    dispatch_sync(v132, v53);
    _Block_release(v53);
    LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

    if ((v108 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v112);
  v114[-2] = v111;
  v113 = v120;
  os_unfair_lock_lock(v120 + 6);
  sub_188F0E024(v119);
  os_unfair_lock_unlock(v113 + 6);

  sub_188A3F5FC(v131, &qword_1EA936660, &qword_18A650DE8);
}

void sub_188ED77F4(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13, float a14, float a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, uint64_t a24)
{
  v138 = a6;
  v135 = a5;
  v128 = a4;
  v133 = a24;
  v131 = a23;
  v132 = a19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936688, &qword_18A650E08);
  MEMORY[0x1EEE9AC00](v123);
  v122 = v121 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936868, &qword_18A650FB0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = (v121 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936690, &qword_18A650E10);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v134 = v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v130 = v121 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v124 = v121 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v125 = v121 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v141 = (v121 - v50);
  v121[1] = a3;
  v129 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v51 = swift_allocObject();
  v51[2] = a7;
  v51[3] = a8;
  v52 = a1;
  v137 = v51;
  v51[4] = a1;
  v53 = swift_allocObject();
  v53[2] = a17;
  v53[3] = a18;
  v136 = v53;
  v53[4] = a1;
  v54 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v54 + 24));
  v55 = *(v54 + 16);
  v126 = (v54 + 16);

  v127 = v54;
  os_unfair_lock_unlock((v54 + 24));
  v142 = isEscapingClosureAtFileLocation;
  v140 = v52;
  v139 = v40;
  if (!v55)
  {
    v41[7](v39, 1, 1, v40);
    v143[0] = a9;
    v143[1] = a10;
    v147 = a11;
    v148 = a12;
    v76 = v128[3];
    v77 = v128[4];
    __swift_project_boxed_opaque_existential_0(v128, v76);
    swift_beginAccess();
    v78 = *(isEscapingClosureAtFileLocation + 153);
    v79 = *(v77 + 16);
    v80 = sub_188D246D4();
    v79(aBlock, v78, v39, v143, &v147, &type metadata for UIAnimatableNormalizedPoint, v80, v76, v77);
    v81 = sub_188A33550();
    swift_beginAccess();
    v82.n128_f64[0] = a9;
    v83.n128_f64[0] = a10;
    v84.n128_f64[0] = a11;
    v85.n128_f64[0] = a12;
    v71 = v141;
    sub_188AAFF74(v39, aBlock, v129, &qword_1EA936690, &qword_18A650E10, &qword_1EA936868, &qword_18A650FB0, &qword_1EA936688, v141, v82, v83, v84, v85, v81, &qword_18A650E08, sub_188EF86C0, sub_188D247CC, &type metadata for UIAnimatableNormalizedPoint, sub_188EF5D08);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v39, &qword_1EA936868, &qword_18A650FB0);
    goto LABEL_12;
  }

  v56 = v128;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v57 = v39;
    v58 = v56;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v55[2] + 16));
      signpost_c2_entryLock_start();
      v59 = *(*v55 + 104);
      swift_beginAccess();
      v60 = v125;
      sub_188A3F29C(v55 + v59, v125, &qword_1EA936690, &qword_18A650E10);
      sub_188A3F29C(v60, v57, &qword_1EA936690, &qword_18A650E10);
      v41[7](v57, 0, 1, v139);
      v147 = a9;
      v148 = a10;
      v144 = a11;
      v145 = a12;
      v61 = v57;
      v62 = v58[4];
      __swift_project_boxed_opaque_existential_0(v58, v58[3]);
      swift_beginAccess();
      v63 = *(isEscapingClosureAtFileLocation + 153);
      v64 = *(v62 + 16);
      sub_188D246D4();
      v64(aBlock, v63, v61, &v147, &v144);
      isEscapingClosureAtFileLocation = v142;
      v65 = v140;
      v66 = sub_188A33550();
      swift_beginAccess();
      v67.n128_f64[0] = a9;
      v68.n128_f64[0] = a10;
      v69.n128_f64[0] = a11;
      v70.n128_f64[0] = a12;
      v71 = v141;
      sub_188AAFF74(v61, aBlock, v129, &qword_1EA936690, &qword_18A650E10, &qword_1EA936868, &qword_18A650FB0, &qword_1EA936688, v141, v67, v68, v69, v70, v66, &qword_18A650E08, sub_188EF86C0, sub_188D247CC, &type metadata for UIAnimatableNormalizedPoint, sub_188EF5D08);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v61, &qword_1EA936868, &qword_18A650FB0);
      v72 = *v55;
      v73 = v55 + *(*v55 + 112);
      v74 = *v73;
      if (*v73)
      {
        v75 = *(v73 + 1);
        *v73 = 0;
        *(v73 + 1) = 0;
        v74(v65, 0);
        sub_188A55B8C(v74, v75);
        v72 = *v55;
      }

      *(v55 + *(v72 + 120)) = 1;
      sub_188A3F5FC(v125, &qword_1EA936690, &qword_18A650E10);
      os_unfair_lock_unlock((v55[2] + 16));
    }

    else
    {
      v86 = *(*v55 + 104);
      swift_beginAccess();
      v87 = v55 + v86;
      v88 = v124;
      sub_188A3F29C(v87, v124, &qword_1EA936690, &qword_18A650E10);
      sub_188A3F29C(v88, v57, &qword_1EA936690, &qword_18A650E10);
      v41[7](v57, 0, 1, v139);
      v147 = a9;
      v148 = a10;
      v144 = a11;
      v145 = a12;
      v89 = v56[4];
      __swift_project_boxed_opaque_existential_0(v56, v56[3]);
      swift_beginAccess();
      v90 = *(v142 + 153);
      v91 = *(v89 + 16);
      sub_188D246D4();
      isEscapingClosureAtFileLocation = v142;
      v91(aBlock, v90, v57, &v147, &v144);
      v92 = v140;
      v93 = sub_188A33550();
      swift_beginAccess();
      v94.n128_f64[0] = a9;
      v95.n128_f64[0] = a10;
      v96.n128_f64[0] = a11;
      v97.n128_f64[0] = a12;
      v71 = v141;
      sub_188AAFF74(v57, aBlock, v129, &qword_1EA936690, &qword_18A650E10, &qword_1EA936868, &qword_18A650FB0, &qword_1EA936688, v141, v94, v95, v96, v97, v93, &qword_18A650E08, sub_188EF86C0, sub_188D247CC, &type metadata for UIAnimatableNormalizedPoint, sub_188EF5D08);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v57, &qword_1EA936868, &qword_18A650FB0);
      v98 = v55 + *(*v55 + 112);
      v99 = *v98;
      if (*v98)
      {
        v100 = *(v98 + 1);
        *v98 = 0;
        *(v98 + 1) = 0;
        v99(v92, 0);
        sub_188A55B8C(v99, v100);
      }

      sub_188A3F5FC(v124, &qword_1EA936690, &qword_18A650E10);
      *(v55 + *(*v55 + 120)) = 1;
    }

LABEL_12:
    v101 = v130;
    sub_188A3F29C(v71, v130, &qword_1EA936690, &qword_18A650E10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936870, &qword_18A650FB8);
    swift_allocObject();
    v102 = v133;

    v103 = sub_188AA785C(v101, v131, v102, &qword_1EA936690, &qword_18A650E10);

    if (v132)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 88))
    {
      if (a22)
      {
        goto LABEL_19;
      }

      v104 = (a11 - a9) * a21;
      v105 = (a12 - a10) * a21;
    }

    else
    {
      v104 = *(isEscapingClosureAtFileLocation + 72);
      v105 = *(isEscapingClosureAtFileLocation + 80);
    }

    sub_188EFF9E0(&qword_1EA936690, &qword_18A650E10, v104, v105);
LABEL_19:
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    *(v106 + 32) = 1;
    v107 = *(isEscapingClosureAtFileLocation + 192);
    v108 = v134;
    sub_188A3F29C(v71, v134, &qword_1EA936690, &qword_18A650E10);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v109 = v122;
      sub_188A3F704(v108, v122, &qword_1EA936688, &qword_18A650E08);
      v110 = *(v109 + *(v123 + 64));
      sub_188A3F5FC(v109, &qword_1EA936688, &qword_18A650E08);
      v111 = (v110 == 2) | v110;
    }

    else
    {
      v111 = 0;
    }

    v112 = swift_allocObject();
    v113 = v135;
    v112[2] = v103;
    v112[3] = v113;
    v114 = v142;
    v112[4] = v138;
    v112[5] = v114;
    v139 = v103;
    v115 = v140;
    v112[6] = v106;
    v112[7] = v115;
    v116 = v106;
    v117 = v137;
    v112[8] = sub_188F0D9DC;
    v112[9] = v117;
    v118 = v136;
    v112[10] = sub_188F0E0D0;
    v112[11] = v118;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v39 = swift_allocObject();
    v39[4] = a13;
    v39[5] = a14;
    v39[6] = a15;
    *(v39 + 7) = a20;
    *(v39 + 32) = v107;
    *(v39 + 33) = v111 & 1;
    *(v39 + 5) = sub_188F0D9E0;
    *(v39 + 6) = v112;
    v135 = *(v115 + 280);
    v56 = swift_allocObject();
    v56[2] = v115;
    v56[3] = v39;
    v55 = swift_allocObject();
    v55[2] = sub_188F0E074;
    v55[3] = v56;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1132;
    v41 = _Block_copy(aBlock);
    swift_retain_n();

    v142 = v116;

    dispatch_sync(v135, v41);
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v119);
  v120 = v127;
  os_unfair_lock_lock(v127 + 6);
  sub_188F0E024(v126);
  os_unfair_lock_unlock(v120 + 6);

  sub_188A3F5FC(v141, &qword_1EA936690, &qword_18A650E10);
}

void sub_188ED8790(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, double a24, char a25, uint64_t a26, uint64_t a27)
{
  v191 = a6;
  v185 = a5;
  v178 = a4;
  v182 = a27;
  v180 = a26;
  v181 = a19;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8, &qword_18A650E30);
  MEMORY[0x1EEE9AC00](v172);
  v171 = v170 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936878, &qword_18A650FC0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = v170 - v41;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0, &qword_18A650E38);
  isa = v190[-1].isa;
  MEMORY[0x1EEE9AC00](v190);
  v184 = v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v179 = v170 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v173 = v170 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v174 = v170 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v170 - v52);
  v170[1] = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v55 = swift_allocObject();
  v55[2] = a7;
  v55[3] = a8;
  v187 = v55;
  v55[4] = a1;
  v56 = swift_allocObject();
  v56[2] = a17;
  v56[3] = a18;
  v186 = v56;
  v56[4] = a1;
  v57 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v57 + 24));
  v58 = *(v57 + 16);
  v176 = (v57 + 16);

  v177 = v57;
  os_unfair_lock_unlock((v57 + 24));
  v189 = a1;
  v188 = v53;
  v183 = a9;
  if (!v58)
  {
    (*(isa + 7))(v42, 1, 1, v190);
    v198 = a9;
    v199 = a10;
    v200 = a11;
    v201 = a12;
    v194 = a13;
    v195 = a14;
    v196 = a15;
    v197 = a16;
    v93 = a2;
    LODWORD(v175) = a3;
    v94 = v178[3];
    v95 = v178[4];
    __swift_project_boxed_opaque_existential_0(v178, v94);
    swift_beginAccess();
    v96 = *(a2 + 217);
    v97 = *(v95 + 16);
    v98 = sub_188C520C4();
    v97(aBlock, v96, v42, &v198, &v194, &type metadata for UIAnimatableColor, v98, v94, v95);
    v99 = a10;
    v100 = a13;
    v101 = a11;
    v102 = a14;
    v103 = a12;
    v104 = a15;
    v105 = a16;
    v106 = sub_188A33550();
    swift_beginAccess();
    v168 = v106;
    a16 = v105;
    a15 = v104;
    a12 = v103;
    a14 = v102;
    a11 = v101;
    a13 = v100;
    a10 = v99;
    a9 = v183;
    v107.n128_f64[0] = v183;
    v108.n128_f64[0] = a10;
    v109.n128_f64[0] = a11;
    v110.n128_f64[0] = a12;
    v111.n128_f64[0] = a13;
    v112.n128_f64[0] = a14;
    v113.n128_f64[0] = a15;
    v114.n128_f64[0] = a16;
    sub_188C51044(v42, aBlock, v175, v53, v107, v108, v109, v110, v111, v112, v113, v114, v168);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v42, &qword_1EA936878, &qword_18A650FC0);
    goto LABEL_12;
  }

  v59 = v178;
  v175 = a2;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v60 = a3;
    v61 = v42;
    v62 = v59;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v58[2] + 16));
      signpost_c2_entryLock_start();
      v63 = *(*v58 + 104);
      swift_beginAccess();
      v64 = v174;
      sub_188A3F29C(v58 + v63, v174, &qword_1EA9366C0, &qword_18A650E38);
      sub_188A3F29C(v64, v42, &qword_1EA9366C0, &qword_18A650E38);
      (*(isa + 7))(v42, 0, 1, v190);
      v198 = a9;
      v199 = a10;
      v200 = a11;
      v201 = a12;
      v194 = a13;
      v195 = a14;
      v196 = a15;
      v197 = a16;
      v65 = v62[3];
      v66 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v65);
      v67 = v42;
      v68 = v175;
      swift_beginAccess();
      v69 = *(v68 + 217);
      v70 = *(v66 + 16);
      v71 = sub_188C520C4();
      v70(aBlock, v69, v67, &v198, &v194, &type metadata for UIAnimatableColor, v71, v65, v66);
      v72 = v189;
      v73 = a10;
      v74 = a13;
      v75 = a11;
      v76 = a14;
      v77 = a12;
      v78 = a15;
      v79 = a16;
      v80 = sub_188A33550();
      swift_beginAccess();
      v167 = v80;
      a16 = v79;
      a15 = v78;
      a12 = v77;
      a14 = v76;
      a11 = v75;
      a13 = v74;
      a10 = v73;
      a9 = v183;
      v53 = v188;
      v81.n128_f64[0] = v183;
      v82.n128_f64[0] = a10;
      v83.n128_f64[0] = a11;
      v84.n128_f64[0] = a12;
      v85.n128_f64[0] = a13;
      v86.n128_f64[0] = a14;
      v87.n128_f64[0] = a15;
      v88.n128_f64[0] = a16;
      sub_188C51044(v67, aBlock, v60, v188, v81, v82, v83, v84, v85, v86, v87, v88, v167);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v67, &qword_1EA936878, &qword_18A650FC0);
      v89 = *v58;
      v90 = v58 + *(*v58 + 112);
      v91 = *v90;
      if (*v90)
      {
        v92 = *(v90 + 1);
        *v90 = 0;
        *(v90 + 1) = 0;
        v91(v72, 0);
        sub_188A55B8C(v91, v92);
        v89 = *v58;
      }

      *(v58 + *(v89 + 120)) = 1;
      sub_188A3F5FC(v174, &qword_1EA9366C0, &qword_18A650E38);
      os_unfair_lock_unlock((v58[2] + 16));
    }

    else
    {
      v115 = *(*v58 + 104);
      swift_beginAccess();
      v116 = v173;
      sub_188A3F29C(v58 + v115, v173, &qword_1EA9366C0, &qword_18A650E38);
      sub_188A3F29C(v116, v61, &qword_1EA9366C0, &qword_18A650E38);
      (*(isa + 7))(v61, 0, 1, v190);
      v198 = a9;
      v199 = a10;
      v200 = a11;
      v201 = a12;
      v194 = a13;
      v195 = a14;
      v196 = a15;
      v197 = a16;
      v117 = v59[3];
      v118 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      v119 = v61;
      v120 = v175;
      swift_beginAccess();
      v121 = *(v120 + 217);
      v122 = *(v118 + 16);
      v123 = sub_188C520C4();
      v122(aBlock, v121, v119, &v198, &v194, &type metadata for UIAnimatableColor, v123, v117, v118);
      v124 = v189;
      v125 = a10;
      v126 = a13;
      v127 = a11;
      v128 = a14;
      v129 = a12;
      v130 = a15;
      v131 = a16;
      v132 = sub_188A33550();
      swift_beginAccess();
      v169 = v132;
      a16 = v131;
      a15 = v130;
      a12 = v129;
      a14 = v128;
      a11 = v127;
      a13 = v126;
      a10 = v125;
      a9 = v183;
      v53 = v188;
      v133.n128_f64[0] = v183;
      v134.n128_f64[0] = a10;
      v135.n128_f64[0] = a11;
      v136.n128_f64[0] = a12;
      v137.n128_f64[0] = a13;
      v138.n128_f64[0] = a14;
      v139.n128_f64[0] = a15;
      v140.n128_f64[0] = a16;
      sub_188C51044(v119, aBlock, v60, v188, v133, v134, v135, v136, v137, v138, v139, v140, v169);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v119, &qword_1EA936878, &qword_18A650FC0);
      v141 = v58 + *(*v58 + 112);
      v142 = *v141;
      if (*v141)
      {
        v143 = *(v141 + 1);
        *v141 = 0;
        *(v141 + 1) = 0;
        v142(v124, 0);
        sub_188A55B8C(v142, v143);
      }

      sub_188A3F5FC(v173, &qword_1EA9366C0, &qword_18A650E38);
      *(v58 + *(*v58 + 120)) = 1;
    }

    v93 = v175;
LABEL_12:
    v144 = v179;
    sub_188A3F29C(v53, v179, &qword_1EA9366C0, &qword_18A650E38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936880, &qword_18A650FC8);
    swift_allocObject();
    v145 = v182;

    v146 = sub_188AA785C(v144, v180, v145, &qword_1EA9366C0, &qword_18A650E38);

    if (v181)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    v147 = v184;
    if (*(v93 + 120))
    {
      if (a25)
      {
        goto LABEL_19;
      }

      v148 = (a13 - a9) * a24;
      v149 = (a14 - a10) * a24;
      v150 = (a15 - a11) * a24;
      v151 = (a16 - a12) * a24;
    }

    else
    {
      v150 = *(v93 + 104);
      v151 = *(v93 + 112);
      v148 = *(v93 + 88);
      v149 = *(v93 + 96);
    }

    sub_188EFFBBC(&qword_1EA9366C0, &qword_18A650E38, v148, v149, v150, v151);
LABEL_19:
    LODWORD(a15) = a22;
    LODWORD(a16) = a23;
    LODWORD(a12) = a21;
    v152 = swift_allocObject();
    *(v152 + 16) = 0u;
    *(v152 + 32) = 0u;
    *(v152 + 48) = 1;
    v153 = *(v93 + 272);
    sub_188A3F29C(v53, v147, &qword_1EA9366C0, &qword_18A650E38);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v154 = v147;
      v155 = v171;
      sub_188A3F704(v154, v171, &qword_1EA9366B8, &qword_18A650E30);
      v156 = *(v155 + *(v172 + 64));
      sub_188A3F5FC(v155, &qword_1EA9366B8, &qword_18A650E30);
      v157 = (v156 == 2) | v156;
    }

    else
    {
      v157 = 0;
    }

    v158 = swift_allocObject();
    v159 = v185;
    v158[2] = v146;
    v158[3] = v159;
    v158[4] = v191;
    v158[5] = v93;
    v160 = v189;
    v158[6] = v152;
    v158[7] = v160;
    v59 = v187;
    v158[8] = sub_188F0DA30;
    v158[9] = v59;
    v185 = v146;
    v161 = v186;
    v158[10] = sub_188F0E0D0;
    v158[11] = v161;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v162 = v152;
    v163 = swift_allocObject();
    *(v163 + 16) = a21;
    *(v163 + 20) = a22;
    *(v163 + 24) = a23;
    *(v163 + 28) = a20;
    *(v163 + 32) = v153;
    *(v163 + 33) = v157 & 1;
    *(v163 + 40) = sub_188F0DA80;
    *(v163 + 48) = v158;
    v190 = *(v160 + 280);
    a3 = swift_allocObject();
    *(a3 + 16) = v160;
    *(a3 + 24) = v163;
    v58 = swift_allocObject();
    v58[2] = sub_188F0E074;
    v58[3] = a3;
    aBlock[4] = sub_188E3FE50;
    v193 = v58;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1172;
    v164 = _Block_copy(aBlock);
    v42 = v193;
    swift_retain_n();

    isa = v59;

    v191 = v162;

    dispatch_sync(v190, v164);
    _Block_release(v164);
    LOBYTE(v162) = swift_isEscapingClosureAtFileLocation();

    if ((v162 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v165);
  v166 = v177;
  os_unfair_lock_lock(v177 + 6);
  sub_188F0E024(v176);
  os_unfair_lock_unlock(v166 + 6);

  sub_188A3F5FC(v188, &qword_1EA9366C0, &qword_18A650E38);
}

void sub_188ED96F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, double a9, double a10, float a11, float a12, float a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, char *a24)
{
  v129 = a7;
  v130 = a6;
  v127 = a5;
  v121 = a4;
  v125 = a24;
  v123 = a23;
  v124 = a19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8, &qword_18A650E58);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v114 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936888, &qword_18A650FD0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = v114 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0, &qword_18A650E60);
  isa = v36[-1].isa;
  MEMORY[0x1EEE9AC00](v36);
  v126 = v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v122 = v114 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v117 = v114 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v118 = v114 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = (v114 - v46);
  v114[1] = a3;
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v49 = swift_allocObject();
  *(v49 + 2) = v129;
  *(v49 + 3) = a8;
  v129 = v49;
  *(v49 + 4) = a1;
  v50 = swift_allocObject();
  v50[2] = a17;
  v50[3] = a18;
  v128 = v50;
  v50[4] = a1;
  v51 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v51 + 24));
  v52 = *(v51 + 16);
  v119 = (v51 + 16);

  v120 = v51;
  os_unfair_lock_unlock((v51 + 24));
  v131 = v47;
  v133 = a2;
  v132 = v36;
  if (!v52)
  {
    (*(isa + 7))(v35, 1, 1, v36);
    v134[0] = a9;
    v137 = a10;
    v73 = v121[3];
    v74 = v121[4];
    __swift_project_boxed_opaque_existential_0(v121, v73);
    LODWORD(v121) = a3;
    swift_beginAccess();
    v75 = *(a2 + 121);
    v76 = *(v74 + 16);
    v77 = sub_188A919BC();
    v76(aBlock, v75, v35, v134, &v137, &type metadata for UIAnimatableScaledFloat, v77, v73, v74);
    v78 = sub_188A33550();
    swift_beginAccess();
    sub_188EFDD9C(v35, aBlock, v121, v47, a9, a10, v78);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v35, &qword_1EA936888, &qword_18A650FD0);
    v72 = a1;
    v71 = v126;
    v66 = v47;
    goto LABEL_11;
  }

  v53 = v121;
  v114[0] = a1;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v54 = a3;
    v55 = v53;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v52[2] + 16));
      signpost_c2_entryLock_start();
      v56 = *(*v52 + 104);
      swift_beginAccess();
      v57 = v118;
      sub_188A3F29C(v52 + v56, v118, &qword_1EA9366F0, &qword_18A650E60);
      sub_188A3F29C(v57, v35, &qword_1EA9366F0, &qword_18A650E60);
      (*(isa + 7))(v35, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v58 = v55[3];
      v59 = v55[4];
      __swift_project_boxed_opaque_existential_0(v55, v58);
      v60 = v133;
      swift_beginAccess();
      v61 = *(v60 + 121);
      v62 = *(v59 + 16);
      v63 = sub_188A919BC();
      v62(aBlock, v61, v35, &v137, v135, &type metadata for UIAnimatableScaledFloat, v63, v58, v59);
      v64 = v114[0];
      v65 = sub_188A33550();
      swift_beginAccess();
      v66 = v131;
      sub_188EFDD9C(v35, aBlock, v54, v131, a9, a10, v65);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v35, &qword_1EA936888, &qword_18A650FD0);
      v67 = *v52;
      v68 = v52 + *(*v52 + 112);
      v69 = *v68;
      if (*v68)
      {
        v70 = *(v68 + 1);
        *v68 = 0;
        *(v68 + 1) = 0;
        v69(v64, 0);
        sub_188A55B8C(v69, v70);
        v67 = *v52;
      }

      v71 = v126;
      v72 = v64;
      *(v52 + *(v67 + 120)) = 1;
      sub_188A3F5FC(v118, &qword_1EA9366F0, &qword_18A650E60);
      os_unfair_lock_unlock((v52[2] + 16));
    }

    else
    {
      v79 = *(*v52 + 104);
      swift_beginAccess();
      v80 = v117;
      sub_188A3F29C(v52 + v79, v117, &qword_1EA9366F0, &qword_18A650E60);
      sub_188A3F29C(v80, v35, &qword_1EA9366F0, &qword_18A650E60);
      (*(isa + 7))(v35, 0, 1, v132);
      v137 = a9;
      v135[0] = a10;
      v81 = v53[3];
      v82 = v55[4];
      __swift_project_boxed_opaque_existential_0(v55, v55[3]);
      v83 = v133;
      swift_beginAccess();
      v84 = v35;
      v85 = *(v83 + 121);
      v86 = *(v82 + 16);
      v87 = sub_188A919BC();
      v86(aBlock, v85, v84, &v137, v135, &type metadata for UIAnimatableScaledFloat, v87, v81, v82);
      v88 = v114[0];
      v89 = sub_188A33550();
      swift_beginAccess();
      v66 = v131;
      sub_188EFDD9C(v84, aBlock, v54, v131, a9, a10, v89);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v84, &qword_1EA936888, &qword_18A650FD0);
      v90 = v52 + *(*v52 + 112);
      v91 = *v90;
      if (*v90)
      {
        v92 = *(v90 + 1);
        *v90 = 0;
        *(v90 + 1) = 0;
        v91(v88, 0);
        sub_188A55B8C(v91, v92);
      }

      v72 = v88;
      sub_188A3F5FC(v117, &qword_1EA9366F0, &qword_18A650E60);
      *(v52 + *(*v52 + 120)) = 1;

      v71 = v126;
    }

LABEL_11:
    v93 = v122;
    sub_188A3F29C(v66, v122, &qword_1EA9366F0, &qword_18A650E60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936890, &qword_18A650FD8);
    swift_allocObject();
    v94 = v125;

    v95 = sub_188AA785C(v93, v123, v94, &qword_1EA9366F0, &qword_18A650E60);

    if (v124)
    {
      swift_unknownObjectWeakAssign();
    }

    v96 = v133;
    swift_beginAccess();
    v97 = v72;
    if (*(v96 + 72))
    {
      if (a22)
      {
        goto LABEL_18;
      }

      v98 = (a10 - a9) * a21;
    }

    else
    {
      v98 = *(v96 + 64);
    }

    sub_188D4DBD0(&qword_1EA9366F0, &qword_18A650E60, v98);
LABEL_18:
    v99 = v95;
    LODWORD(v126) = a20;
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v101 = v100;
    *(v100 + 24) = 1;
    v124 = *(v96 + 152);
    sub_188A3F29C(v66, v71, &qword_1EA9366F0, &qword_18A650E60);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v102 = v115;
      sub_188A3F704(v71, v115, &qword_1EA9366E8, &qword_18A650E58);
      v103 = *(v102 + *(v116 + 64));
      sub_188A3F5FC(v102, &qword_1EA9366E8, &qword_18A650E58);
      v104 = (v103 == 2) | v103;
    }

    else
    {
      v104 = 0;
    }

    v105 = swift_allocObject();
    v106 = v127;
    v105[2] = v95;
    v105[3] = v106;
    v107 = v133;
    v105[4] = v130;
    v105[5] = v107;
    v125 = v101;
    v105[6] = v101;
    v105[7] = v97;
    v108 = v129;
    v105[8] = sub_188F0DAFC;
    v105[9] = v108;
    v109 = v128;
    v105[10] = sub_188F0E0D0;
    v105[11] = v109;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    a3 = swift_allocObject();
    *(a3 + 16) = a11;
    *(a3 + 20) = a12;
    *(a3 + 24) = a13;
    *(a3 + 28) = v126;
    *(a3 + 32) = v124;
    *(a3 + 33) = v104 & 1;
    *(a3 + 40) = sub_188F0DB4C;
    *(a3 + 48) = v105;
    v132 = *(v97 + 280);
    v110 = swift_allocObject();
    *(v110 + 16) = v97;
    *(v110 + 24) = a3;
    v52 = swift_allocObject();
    v52[2] = sub_188F0E074;
    v52[3] = v110;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1210;
    v53 = _Block_copy(aBlock);
    swift_retain_n();
    v111 = v99;

    v35 = v125;
    isa = v108;

    dispatch_sync(v132, v53);
    _Block_release(v53);
    LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

    if ((v108 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v112);
  v114[-2] = v111;
  v113 = v120;
  os_unfair_lock_lock(v120 + 6);
  sub_188F0E024(v119);
  os_unfair_lock_unlock(v113 + 6);

  sub_188A3F5FC(v131, &qword_1EA9366F0, &qword_18A650E60);
}

void sub_188EDA510(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, double a24, char a25, uint64_t a26, uint64_t a27)
{
  v181 = a6;
  v178 = a5;
  v170 = a4;
  v175 = a27;
  v173 = a26;
  v174 = a19;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936718, &qword_18A650E80);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v163 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936898, &qword_18A650FE0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v163 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936720, &qword_18A650E88);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v177 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v172 = &v163 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v166 = &v163 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v167 = &v163 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v184 = (&v163 - v54);
  v163 = a3;
  v171 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v55 = swift_allocObject();
  v55[2] = a7;
  v55[3] = a8;
  v56 = a1;
  v180 = v55;
  v55[4] = a1;
  v57 = swift_allocObject();
  v57[2] = a17;
  v57[3] = a18;
  v179 = v57;
  v57[4] = a1;
  v58 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v58 + 24));
  v59 = *(v58 + 16);
  v168 = (v58 + 16);

  v169 = v58;
  os_unfair_lock_unlock((v58 + 24));
  v185 = isEscapingClosureAtFileLocation;
  v183 = v56;
  v182 = v44;
  v176 = a9;
  if (!v59)
  {
    v45[7](v43, 1, 1, v44);
    v191 = a9;
    v192 = a10;
    v193 = a11;
    v194 = a12;
    v187 = a13;
    v188 = a14;
    v189 = a15;
    v190 = a16;
    v91 = v170[3];
    v92 = v170[4];
    __swift_project_boxed_opaque_existential_0(v170, v91);
    swift_beginAccess();
    v93 = *(isEscapingClosureAtFileLocation + 217);
    v94 = *(v92 + 16);
    v95 = sub_188A5ED24();
    v94(aBlock, v93, v43, &v191, &v187, &type metadata for UIAnimatableRect, v95, v91, v92);
    v96 = a10;
    v97 = a13;
    v98 = a11;
    v99 = a14;
    v100 = a12;
    v101 = a15;
    v102 = a16;
    v103 = sub_188A33550();
    swift_beginAccess();
    v161 = v103;
    a16 = v102;
    a15 = v101;
    a12 = v100;
    a14 = v99;
    a11 = v98;
    a13 = v97;
    a10 = v96;
    a9 = v176;
    v104.n128_f64[0] = v176;
    v105.n128_f64[0] = a10;
    v106.n128_f64[0] = a11;
    v107.n128_f64[0] = a12;
    v108.n128_f64[0] = a13;
    v109.n128_f64[0] = a14;
    v110.n128_f64[0] = a15;
    v111.n128_f64[0] = a16;
    v86 = v184;
    sub_188AAEEC4(v43, aBlock, v171, &qword_1EA936720, &qword_18A650E88, &qword_1EA936898, &qword_18A650FE0, &qword_1EA936718, v184, v104, v105, v106, v107, v108, v109, v110, v111, v161, &qword_18A650E80, sub_188EF8C94, sub_188CE5E80, &type metadata for UIAnimatableRect, sub_188EF61CC);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v43, &qword_1EA936898, &qword_18A650FE0);
    goto LABEL_12;
  }

  v60 = v170;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v61 = v43;
    v62 = v60;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v59[2] + 16));
      signpost_c2_entryLock_start();
      v63 = *(*v59 + 104);
      swift_beginAccess();
      v64 = v167;
      sub_188A3F29C(v59 + v63, v167, &qword_1EA936720, &qword_18A650E88);
      sub_188A3F29C(v64, v61, &qword_1EA936720, &qword_18A650E88);
      v45[7](v61, 0, 1, v182);
      v191 = a9;
      v192 = a10;
      v193 = a11;
      v194 = a12;
      v187 = a13;
      v188 = a14;
      v189 = a15;
      v190 = a16;
      v65 = v61;
      v66 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      swift_beginAccess();
      v67 = *(isEscapingClosureAtFileLocation + 217);
      v68 = *(v66 + 16);
      sub_188A5ED24();
      v68(aBlock, v67, v65, &v191, &v187);
      isEscapingClosureAtFileLocation = v185;
      v69 = v183;
      v70 = a10;
      v71 = a13;
      v72 = a11;
      v73 = a14;
      v74 = a12;
      v75 = a15;
      v76 = a16;
      v77 = sub_188A33550();
      swift_beginAccess();
      v160 = v77;
      a16 = v76;
      a15 = v75;
      a12 = v74;
      a14 = v73;
      a11 = v72;
      a13 = v71;
      a10 = v70;
      a9 = v176;
      v78.n128_f64[0] = v176;
      v79.n128_f64[0] = a10;
      v80.n128_f64[0] = a11;
      v81.n128_f64[0] = a12;
      v82.n128_f64[0] = a13;
      v83.n128_f64[0] = a14;
      v84.n128_f64[0] = a15;
      v85.n128_f64[0] = a16;
      v86 = v184;
      sub_188AAEEC4(v65, aBlock, v171, &qword_1EA936720, &qword_18A650E88, &qword_1EA936898, &qword_18A650FE0, &qword_1EA936718, v184, v78, v79, v80, v81, v82, v83, v84, v85, v160, &qword_18A650E80, sub_188EF8C94, sub_188CE5E80, &type metadata for UIAnimatableRect, sub_188EF61CC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v65, &qword_1EA936898, &qword_18A650FE0);
      v87 = *v59;
      v88 = v59 + *(*v59 + 112);
      v89 = *v88;
      if (*v88)
      {
        v90 = *(v88 + 1);
        *v88 = 0;
        *(v88 + 1) = 0;
        v89(v69, 0);
        sub_188A55B8C(v89, v90);
        v87 = *v59;
      }

      *(v59 + *(v87 + 120)) = 1;
      sub_188A3F5FC(v167, &qword_1EA936720, &qword_18A650E88);
      os_unfair_lock_unlock((v59[2] + 16));
    }

    else
    {
      v112 = *(*v59 + 104);
      swift_beginAccess();
      v113 = v59 + v112;
      v114 = v166;
      sub_188A3F29C(v113, v166, &qword_1EA936720, &qword_18A650E88);
      sub_188A3F29C(v114, v61, &qword_1EA936720, &qword_18A650E88);
      v45[7](v61, 0, 1, v182);
      v191 = a9;
      v192 = a10;
      v193 = a11;
      v194 = a12;
      v187 = a13;
      v188 = a14;
      v189 = a15;
      v190 = a16;
      v115 = v60[4];
      __swift_project_boxed_opaque_existential_0(v60, v60[3]);
      swift_beginAccess();
      v116 = *(v185 + 217);
      v117 = *(v115 + 16);
      sub_188A5ED24();
      isEscapingClosureAtFileLocation = v185;
      v117(aBlock, v116, v61, &v191, &v187);
      v118 = v183;
      v119 = a10;
      v120 = a13;
      v121 = a11;
      v122 = a14;
      v123 = a12;
      v124 = a15;
      v125 = a16;
      v126 = sub_188A33550();
      swift_beginAccess();
      v162 = v126;
      a16 = v125;
      a15 = v124;
      a12 = v123;
      a14 = v122;
      a11 = v121;
      a13 = v120;
      a10 = v119;
      a9 = v176;
      v127.n128_f64[0] = v176;
      v128.n128_f64[0] = a10;
      v129.n128_f64[0] = a11;
      v130.n128_f64[0] = a12;
      v131.n128_f64[0] = a13;
      v132.n128_f64[0] = a14;
      v133.n128_f64[0] = a15;
      v134.n128_f64[0] = a16;
      v86 = v184;
      sub_188AAEEC4(v61, aBlock, v171, &qword_1EA936720, &qword_18A650E88, &qword_1EA936898, &qword_18A650FE0, &qword_1EA936718, v184, v127, v128, v129, v130, v131, v132, v133, v134, v162, &qword_18A650E80, sub_188EF8C94, sub_188CE5E80, &type metadata for UIAnimatableRect, sub_188EF61CC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v61, &qword_1EA936898, &qword_18A650FE0);
      v135 = v59 + *(*v59 + 112);
      v136 = *v135;
      if (*v135)
      {
        v137 = *(v135 + 1);
        *v135 = 0;
        *(v135 + 1) = 0;
        v136(v118, 0);
        sub_188A55B8C(v136, v137);
      }

      sub_188A3F5FC(v166, &qword_1EA936720, &qword_18A650E88);
      *(v59 + *(*v59 + 120)) = 1;
    }

LABEL_12:
    v138 = v172;
    sub_188A3F29C(v86, v172, &qword_1EA936720, &qword_18A650E88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368A0, &qword_18A650FE8);
    swift_allocObject();
    v139 = v175;

    v140 = sub_188AA785C(v138, v173, v139, &qword_1EA936720, &qword_18A650E88);

    if (v174)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 120))
    {
      if (a25)
      {
        goto LABEL_19;
      }

      v141 = (a13 - a9) * a24;
      v142 = (a14 - a10) * a24;
      v143 = (a15 - a11) * a24;
      v144 = (a16 - a12) * a24;
    }

    else
    {
      v143 = *(isEscapingClosureAtFileLocation + 104);
      v144 = *(isEscapingClosureAtFileLocation + 112);
      v141 = *(isEscapingClosureAtFileLocation + 88);
      v142 = *(isEscapingClosureAtFileLocation + 96);
    }

    sub_188EFFBBC(&qword_1EA936720, &qword_18A650E88, v141, v142, v143, v144);
LABEL_19:
    LODWORD(a15) = a22;
    LODWORD(a16) = a23;
    LODWORD(a12) = a21;
    v145 = swift_allocObject();
    *(v145 + 16) = 0u;
    *(v145 + 32) = 0u;
    *(v145 + 48) = 1;
    v146 = *(isEscapingClosureAtFileLocation + 272);
    v147 = v177;
    sub_188A3F29C(v86, v177, &qword_1EA936720, &qword_18A650E88);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v148 = v164;
      sub_188A3F704(v147, v164, &qword_1EA936718, &qword_18A650E80);
      v149 = *(v148 + *(v165 + 64));
      sub_188A3F5FC(v148, &qword_1EA936718, &qword_18A650E80);
      v150 = (v149 == 2) | v149;
    }

    else
    {
      v150 = 0;
    }

    v151 = swift_allocObject();
    v152 = v178;
    v151[2] = v140;
    v151[3] = v152;
    v153 = v185;
    v151[4] = v181;
    v151[5] = v153;
    v182 = v140;
    v154 = v183;
    v151[6] = v145;
    v151[7] = v154;
    v155 = v145;
    v156 = v180;
    v151[8] = sub_188F0E0C8;
    v151[9] = v156;
    v157 = v179;
    v151[10] = sub_188F0E0D0;
    v151[11] = v157;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v43 = swift_allocObject();
    *(v43 + 4) = a21;
    *(v43 + 5) = a22;
    *(v43 + 6) = a23;
    *(v43 + 7) = a20;
    v43[32] = v146;
    v43[33] = v150 & 1;
    *(v43 + 5) = sub_188F0DBE0;
    *(v43 + 6) = v151;
    v178 = *(v154 + 280);
    v60 = swift_allocObject();
    v60[2] = v154;
    v60[3] = v43;
    v59 = swift_allocObject();
    v59[2] = sub_188F0E074;
    v59[3] = v60;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1248;
    v45 = _Block_copy(aBlock);
    swift_retain_n();

    v185 = v155;

    dispatch_sync(v178, v45);
    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v158);
  v159 = v169;
  os_unfair_lock_lock(v169 + 6);
  sub_188F0E024(v168);
  os_unfair_lock_unlock(v159 + 6);

  sub_188A3F5FC(v184, &qword_1EA936720, &qword_18A650E88);
}

void sub_188EDB5DC(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, double a24, char a25, uint64_t a26, uint64_t a27)
{
  v181 = a6;
  v178 = a5;
  v170 = a4;
  v175 = a27;
  v173 = a26;
  v174 = a19;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936748, &qword_18A650EA8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v163 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368A8, &qword_18A650FF0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v163 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936750, &qword_18A650EB0);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v177 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v172 = &v163 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v166 = &v163 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v167 = &v163 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v184 = (&v163 - v54);
  v163 = a3;
  v171 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v55 = swift_allocObject();
  v55[2] = a7;
  v55[3] = a8;
  v56 = a1;
  v180 = v55;
  v55[4] = a1;
  v57 = swift_allocObject();
  v57[2] = a17;
  v57[3] = a18;
  v179 = v57;
  v57[4] = a1;
  v58 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v58 + 24));
  v59 = *(v58 + 16);
  v168 = (v58 + 16);

  v169 = v58;
  os_unfair_lock_unlock((v58 + 24));
  v185 = isEscapingClosureAtFileLocation;
  v183 = v56;
  v182 = v44;
  v176 = a9;
  if (!v59)
  {
    v45[7](v43, 1, 1, v44);
    v191 = a9;
    v192 = a10;
    v193 = a11;
    v194 = a12;
    v187 = a13;
    v188 = a14;
    v189 = a15;
    v190 = a16;
    v91 = v170[3];
    v92 = v170[4];
    __swift_project_boxed_opaque_existential_0(v170, v91);
    swift_beginAccess();
    v93 = *(isEscapingClosureAtFileLocation + 217);
    v94 = *(v92 + 16);
    v95 = sub_188E9507C();
    v94(aBlock, v93, v43, &v191, &v187, &type metadata for UIAnimatableNormalizedRect, v95, v91, v92);
    v96 = a10;
    v97 = a13;
    v98 = a11;
    v99 = a14;
    v100 = a12;
    v101 = a15;
    v102 = a16;
    v103 = sub_188A33550();
    swift_beginAccess();
    v161 = v103;
    a16 = v102;
    a15 = v101;
    a12 = v100;
    a14 = v99;
    a11 = v98;
    a13 = v97;
    a10 = v96;
    a9 = v176;
    v104.n128_f64[0] = v176;
    v105.n128_f64[0] = a10;
    v106.n128_f64[0] = a11;
    v107.n128_f64[0] = a12;
    v108.n128_f64[0] = a13;
    v109.n128_f64[0] = a14;
    v110.n128_f64[0] = a15;
    v111.n128_f64[0] = a16;
    v86 = v184;
    sub_188AAEEC4(v43, aBlock, v171, &qword_1EA936750, &qword_18A650EB0, &qword_1EA9368A8, &qword_18A650FF0, &qword_1EA936748, v184, v104, v105, v106, v107, v108, v109, v110, v111, v161, &qword_18A650EA8, sub_188EF8FA4, sub_188F0D468, &type metadata for UIAnimatableNormalizedRect, sub_188EF643C);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v43, &qword_1EA9368A8, &qword_18A650FF0);
    goto LABEL_12;
  }

  v60 = v170;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v61 = v43;
    v62 = v60;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v59[2] + 16));
      signpost_c2_entryLock_start();
      v63 = *(*v59 + 104);
      swift_beginAccess();
      v64 = v167;
      sub_188A3F29C(v59 + v63, v167, &qword_1EA936750, &qword_18A650EB0);
      sub_188A3F29C(v64, v61, &qword_1EA936750, &qword_18A650EB0);
      v45[7](v61, 0, 1, v182);
      v191 = a9;
      v192 = a10;
      v193 = a11;
      v194 = a12;
      v187 = a13;
      v188 = a14;
      v189 = a15;
      v190 = a16;
      v65 = v61;
      v66 = v62[4];
      __swift_project_boxed_opaque_existential_0(v62, v62[3]);
      swift_beginAccess();
      v67 = *(isEscapingClosureAtFileLocation + 217);
      v68 = *(v66 + 16);
      sub_188E9507C();
      v68(aBlock, v67, v65, &v191, &v187);
      isEscapingClosureAtFileLocation = v185;
      v69 = v183;
      v70 = a10;
      v71 = a13;
      v72 = a11;
      v73 = a14;
      v74 = a12;
      v75 = a15;
      v76 = a16;
      v77 = sub_188A33550();
      swift_beginAccess();
      v160 = v77;
      a16 = v76;
      a15 = v75;
      a12 = v74;
      a14 = v73;
      a11 = v72;
      a13 = v71;
      a10 = v70;
      a9 = v176;
      v78.n128_f64[0] = v176;
      v79.n128_f64[0] = a10;
      v80.n128_f64[0] = a11;
      v81.n128_f64[0] = a12;
      v82.n128_f64[0] = a13;
      v83.n128_f64[0] = a14;
      v84.n128_f64[0] = a15;
      v85.n128_f64[0] = a16;
      v86 = v184;
      sub_188AAEEC4(v65, aBlock, v171, &qword_1EA936750, &qword_18A650EB0, &qword_1EA9368A8, &qword_18A650FF0, &qword_1EA936748, v184, v78, v79, v80, v81, v82, v83, v84, v85, v160, &qword_18A650EA8, sub_188EF8FA4, sub_188F0D468, &type metadata for UIAnimatableNormalizedRect, sub_188EF643C);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v65, &qword_1EA9368A8, &qword_18A650FF0);
      v87 = *v59;
      v88 = v59 + *(*v59 + 112);
      v89 = *v88;
      if (*v88)
      {
        v90 = *(v88 + 1);
        *v88 = 0;
        *(v88 + 1) = 0;
        v89(v69, 0);
        sub_188A55B8C(v89, v90);
        v87 = *v59;
      }

      *(v59 + *(v87 + 120)) = 1;
      sub_188A3F5FC(v167, &qword_1EA936750, &qword_18A650EB0);
      os_unfair_lock_unlock((v59[2] + 16));
    }

    else
    {
      v112 = *(*v59 + 104);
      swift_beginAccess();
      v113 = v59 + v112;
      v114 = v166;
      sub_188A3F29C(v113, v166, &qword_1EA936750, &qword_18A650EB0);
      sub_188A3F29C(v114, v61, &qword_1EA936750, &qword_18A650EB0);
      v45[7](v61, 0, 1, v182);
      v191 = a9;
      v192 = a10;
      v193 = a11;
      v194 = a12;
      v187 = a13;
      v188 = a14;
      v189 = a15;
      v190 = a16;
      v115 = v60[4];
      __swift_project_boxed_opaque_existential_0(v60, v60[3]);
      swift_beginAccess();
      v116 = *(v185 + 217);
      v117 = *(v115 + 16);
      sub_188E9507C();
      isEscapingClosureAtFileLocation = v185;
      v117(aBlock, v116, v61, &v191, &v187);
      v118 = v183;
      v119 = a10;
      v120 = a13;
      v121 = a11;
      v122 = a14;
      v123 = a12;
      v124 = a15;
      v125 = a16;
      v126 = sub_188A33550();
      swift_beginAccess();
      v162 = v126;
      a16 = v125;
      a15 = v124;
      a12 = v123;
      a14 = v122;
      a11 = v121;
      a13 = v120;
      a10 = v119;
      a9 = v176;
      v127.n128_f64[0] = v176;
      v128.n128_f64[0] = a10;
      v129.n128_f64[0] = a11;
      v130.n128_f64[0] = a12;
      v131.n128_f64[0] = a13;
      v132.n128_f64[0] = a14;
      v133.n128_f64[0] = a15;
      v134.n128_f64[0] = a16;
      v86 = v184;
      sub_188AAEEC4(v61, aBlock, v171, &qword_1EA936750, &qword_18A650EB0, &qword_1EA9368A8, &qword_18A650FF0, &qword_1EA936748, v184, v127, v128, v129, v130, v131, v132, v133, v134, v162, &qword_18A650EA8, sub_188EF8FA4, sub_188F0D468, &type metadata for UIAnimatableNormalizedRect, sub_188EF643C);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v61, &qword_1EA9368A8, &qword_18A650FF0);
      v135 = v59 + *(*v59 + 112);
      v136 = *v135;
      if (*v135)
      {
        v137 = *(v135 + 1);
        *v135 = 0;
        *(v135 + 1) = 0;
        v136(v118, 0);
        sub_188A55B8C(v136, v137);
      }

      sub_188A3F5FC(v166, &qword_1EA936750, &qword_18A650EB0);
      *(v59 + *(*v59 + 120)) = 1;
    }

LABEL_12:
    v138 = v172;
    sub_188A3F29C(v86, v172, &qword_1EA936750, &qword_18A650EB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368B0, &qword_18A650FF8);
    swift_allocObject();
    v139 = v175;

    v140 = sub_188AA785C(v138, v173, v139, &qword_1EA936750, &qword_18A650EB0);

    if (v174)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 120))
    {
      if (a25)
      {
        goto LABEL_19;
      }

      v141 = (a13 - a9) * a24;
      v142 = (a14 - a10) * a24;
      v143 = (a15 - a11) * a24;
      v144 = (a16 - a12) * a24;
    }

    else
    {
      v143 = *(isEscapingClosureAtFileLocation + 104);
      v144 = *(isEscapingClosureAtFileLocation + 112);
      v141 = *(isEscapingClosureAtFileLocation + 88);
      v142 = *(isEscapingClosureAtFileLocation + 96);
    }

    sub_188EFFBBC(&qword_1EA936750, &qword_18A650EB0, v141, v142, v143, v144);
LABEL_19:
    LODWORD(a15) = a22;
    LODWORD(a16) = a23;
    LODWORD(a12) = a21;
    v145 = swift_allocObject();
    *(v145 + 16) = 0u;
    *(v145 + 32) = 0u;
    *(v145 + 48) = 1;
    v146 = *(isEscapingClosureAtFileLocation + 272);
    v147 = v177;
    sub_188A3F29C(v86, v177, &qword_1EA936750, &qword_18A650EB0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v148 = v164;
      sub_188A3F704(v147, v164, &qword_1EA936748, &qword_18A650EA8);
      v149 = *(v148 + *(v165 + 64));
      sub_188A3F5FC(v148, &qword_1EA936748, &qword_18A650EA8);
      v150 = (v149 == 2) | v149;
    }

    else
    {
      v150 = 0;
    }

    v151 = swift_allocObject();
    v152 = v178;
    v151[2] = v140;
    v151[3] = v152;
    v153 = v185;
    v151[4] = v181;
    v151[5] = v153;
    v182 = v140;
    v154 = v183;
    v151[6] = v145;
    v151[7] = v154;
    v155 = v145;
    v156 = v180;
    v151[8] = sub_188F0DBF8;
    v151[9] = v156;
    v157 = v179;
    v151[10] = sub_188F0E0D0;
    v151[11] = v157;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v43 = swift_allocObject();
    *(v43 + 4) = a21;
    *(v43 + 5) = a22;
    *(v43 + 6) = a23;
    *(v43 + 7) = a20;
    v43[32] = v146;
    v43[33] = v150 & 1;
    *(v43 + 5) = sub_188F0DBFC;
    *(v43 + 6) = v151;
    v178 = *(v154 + 280);
    v60 = swift_allocObject();
    v60[2] = v154;
    v60[3] = v43;
    v59 = swift_allocObject();
    v59[2] = sub_188F0E074;
    v59[3] = v60;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1286;
    v45 = _Block_copy(aBlock);
    swift_retain_n();

    v185 = v155;

    dispatch_sync(v178, v45);
    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v158);
  v159 = v169;
  os_unfair_lock_lock(v169 + 6);
  sub_188F0E024(v168);
  os_unfair_lock_unlock(v159 + 6);

  sub_188A3F5FC(v184, &qword_1EA936750, &qword_18A650EB0);
}

void sub_188EDC6A8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, int a22, double a23, char a24, uint64_t a25, uint64_t a26)
{
  v199 = a8;
  v200 = a5;
  v193 = a7;
  v185 = a6;
  v201 = a4;
  v191 = a26;
  v189 = a25;
  v190 = a21;
  v202 = a19;
  v32 = v206;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778, &qword_18A650ED0);
  MEMORY[0x1EEE9AC00](v179);
  v178 = v177 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368B8, &qword_18A651000);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v186 = v177 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780, &qword_18A650ED8);
  v184 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v192 = v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v188 = v177 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v180 = v177 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v181 = v177 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v177 - v45;
  v177[1] = a3;
  v187 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v47 = swift_allocObject();
  v47[2] = a17;
  v47[3] = a18;
  v197 = v47;
  v47[4] = a1;
  v48 = swift_allocObject();
  v48[2] = v202;
  v48[3] = a20;
  v48[4] = a1;
  v49 = *(a2 + 32);
  swift_retain_n();

  os_unfair_lock_lock((v49 + 24));
  v50 = *(v49 + 16);
  v182 = (v49 + 16);

  v183 = v49;
  v51 = (v49 + 24);
  v52 = a2;
  v53 = v201;
  os_unfair_lock_unlock(v51);
  v198 = a1;
  v54 = v50;
  v55 = v200;
  v202 = v52;
  v195 = v36;
  v196 = v46;
  v194 = v48;
  if (!v54)
  {
    v94 = v186;
    (*(v184 + 56))();
    v95 = *&v53[14].isa;
    v224 = *&v53[12].isa;
    v225 = v95;
    isa = v53[16].isa;
    v96 = *&v53[6].isa;
    v220 = *&v53[4].isa;
    v221 = v96;
    v97 = *&v53[10].isa;
    v222 = *&v53[8].isa;
    v223 = v97;
    v98 = *&v53[2].isa;
    v218 = *&v53->isa;
    v219 = v98;
    v99 = *(v55 + 112);
    v215 = *(v55 + 96);
    v216 = v99;
    v217 = *(v55 + 128);
    v100 = *(v55 + 48);
    v211 = *(v55 + 32);
    v212 = v100;
    v101 = *(v55 + 80);
    v213 = *(v55 + 64);
    v214 = v101;
    v102 = *(v55 + 16);
    v209 = *v55;
    v210 = v102;
    v103 = v185[3];
    v104 = v185[4];
    __swift_project_boxed_opaque_existential_0(v185, v103);
    swift_beginAccess();
    v105 = *(v52 + 601);
    v106 = *(v104 + 16);
    v107 = sub_188A91E48();
    v108 = v94;
    v106(v207, v105, v94, &v218, &v209, &type metadata for UIAnimatableTransform, v107, v103, v104);
    v93 = v202;
    sub_188A33550();
    swift_beginAccess();
    v233 = v224;
    v234 = v225;
    v235 = isa;
    v229 = v220;
    v230 = v221;
    v231 = v222;
    v232 = v223;
    v227 = v218;
    v228 = v219;
    v242 = v215;
    v243 = v216;
    v244 = v217;
    v238 = v211;
    v239 = v212;
    v240 = v213;
    v241 = v214;
    v236 = v209;
    v237 = v210;
    v87 = v196;
    sub_188AB1454(v108);
    swift_endAccess();
    sub_188AAFF20(v207);
    sub_188A3F5FC(v108, &qword_1EA9368B8, &qword_18A651000);
    goto LABEL_11;
  }

  v57 = v185;
  v56 = v186;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v58 = v195;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v54[2] + 16));
      signpost_c2_entryLock_start();
      v59 = *(*v54 + 104);
      swift_beginAccess();
      v60 = v54 + v59;
      v61 = v181;
      sub_188A3F29C(v60, v181, &qword_1EA936780, &qword_18A650ED8);
      sub_188A3F29C(v61, v56, &qword_1EA936780, &qword_18A650ED8);
      (*(v184 + 56))(v56, 0, 1, v58);
      v62 = v200;
      v63 = v201;
      v64 = *&v201[14].isa;
      v32[35] = *&v201[12].isa;
      v32[36] = v64;
      isa = v63[16].isa;
      v65 = *&v63[6].isa;
      v32[31] = *&v63[4].isa;
      v32[32] = v65;
      v66 = *&v63[10].isa;
      v32[33] = *&v63[8].isa;
      v32[34] = v66;
      v67 = *&v63[2].isa;
      v32[29] = *&v63->isa;
      v32[30] = v67;
      v68 = *(v62 + 112);
      v32[26] = *(v62 + 96);
      v32[27] = v68;
      v217 = *(v62 + 128);
      v69 = *(v62 + 48);
      v32[22] = *(v62 + 32);
      v32[23] = v69;
      v70 = *(v62 + 80);
      v32[24] = *(v62 + 64);
      v32[25] = v70;
      v71 = *(v62 + 16);
      v32[20] = *v62;
      v32[21] = v71;
      v72 = v57[3];
      v73 = v57[4];
      v185 = __swift_project_boxed_opaque_existential_0(v57, v72);
      v74 = v202;
      swift_beginAccess();
      v75 = *(v74 + 601);
      v76 = *(v73 + 16);
      v77 = sub_188A91E48();
      v76(v207, v75, v56, &v218, &v209, &type metadata for UIAnimatableTransform, v77, v72, v73);
      v78 = v198;
      sub_188A33550();
      swift_beginAccess();
      v79 = v32[36];
      v32[44] = v32[35];
      v32[45] = v79;
      v235 = isa;
      v80 = v32[32];
      v32[40] = v32[31];
      v32[41] = v80;
      v81 = v32[34];
      v32[42] = v32[33];
      v32[43] = v81;
      v82 = v32[30];
      v32[38] = v32[29];
      v32[39] = v82;
      v83 = v32[27];
      v32[53] = v32[26];
      v32[54] = v83;
      v244 = v217;
      v84 = v32[23];
      v32[49] = v32[22];
      v32[50] = v84;
      v85 = v32[25];
      v32[51] = v32[24];
      v32[52] = v85;
      v86 = v32[21];
      v32[47] = v32[20];
      v32[48] = v86;
      v87 = v196;
      sub_188AB1454(v56);
      swift_endAccess();
      sub_188AAFF20(v207);
      sub_188A3F5FC(v56, &qword_1EA9368B8, &qword_18A651000);
      v88 = *v54;
      v89 = v54 + *(*v54 + 112);
      v90 = *v89;
      if (*v89)
      {
        v91 = *(v89 + 1);
        *v89 = 0;
        *(v89 + 1) = 0;
        v90(v78, 0);
        sub_188A55B8C(v90, v91);
        v88 = *v54;
      }

      v92 = v192;
      *(v54 + *(v88 + 120)) = 1;
      sub_188A3F5FC(v181, &qword_1EA936780, &qword_18A650ED8);
      os_unfair_lock_unlock((v54[2] + 16));

      v93 = v202;
    }

    else
    {
      v109 = *(*v54 + 104);
      swift_beginAccess();
      v110 = v54 + v109;
      v111 = v180;
      sub_188A3F29C(v110, v180, &qword_1EA936780, &qword_18A650ED8);
      sub_188A3F29C(v111, v56, &qword_1EA936780, &qword_18A650ED8);
      (*(v184 + 56))(v56, 0, 1, v58);
      v112 = v200;
      v113 = v201;
      v114 = *&v201[14].isa;
      v32[35] = *&v201[12].isa;
      v32[36] = v114;
      isa = v113[16].isa;
      v115 = *&v113[6].isa;
      v32[31] = *&v113[4].isa;
      v32[32] = v115;
      v116 = *&v113[10].isa;
      v32[33] = *&v113[8].isa;
      v32[34] = v116;
      v117 = *&v113[2].isa;
      v32[29] = *&v113->isa;
      v32[30] = v117;
      v118 = *(v112 + 112);
      v32[26] = *(v112 + 96);
      v32[27] = v118;
      v217 = *(v112 + 128);
      v119 = *(v112 + 48);
      v32[22] = *(v112 + 32);
      v32[23] = v119;
      v120 = *(v112 + 80);
      v32[24] = *(v112 + 64);
      v32[25] = v120;
      v121 = *(v112 + 16);
      v32[20] = *v112;
      v32[21] = v121;
      v122 = v57[3];
      v123 = v57[4];
      v185 = __swift_project_boxed_opaque_existential_0(v57, v122);
      v124 = v202;
      swift_beginAccess();
      v125 = *(v124 + 601);
      v126 = *(v123 + 16);
      v127 = sub_188A91E48();
      v126(v207, v125, v56, &v218, &v209, &type metadata for UIAnimatableTransform, v127, v122, v123);
      v128 = v198;
      sub_188A33550();
      swift_beginAccess();
      v129 = v32[36];
      v32[44] = v32[35];
      v32[45] = v129;
      v235 = isa;
      v130 = v32[32];
      v32[40] = v32[31];
      v32[41] = v130;
      v131 = v32[34];
      v32[42] = v32[33];
      v32[43] = v131;
      v132 = v32[30];
      v32[38] = v32[29];
      v32[39] = v132;
      v133 = v32[27];
      v32[53] = v32[26];
      v32[54] = v133;
      v244 = v217;
      v134 = v32[23];
      v32[49] = v32[22];
      v32[50] = v134;
      v135 = v32[25];
      v32[51] = v32[24];
      v32[52] = v135;
      v136 = v32[21];
      v32[47] = v32[20];
      v32[48] = v136;
      v87 = v196;
      sub_188AB1454(v56);
      swift_endAccess();
      sub_188AAFF20(v207);
      sub_188A3F5FC(v56, &qword_1EA9368B8, &qword_18A651000);
      v137 = v54 + *(*v54 + 112);
      v138 = *v137;
      if (*v137)
      {
        v139 = *(v137 + 1);
        *v137 = 0;
        *(v137 + 1) = 0;
        v138(v128, 0);
        sub_188A55B8C(v138, v139);
      }

      sub_188A3F5FC(v180, &qword_1EA936780, &qword_18A650ED8);
      *(v54 + *(*v54 + 120)) = 1;

      v93 = v202;
LABEL_11:
      v92 = v192;
    }

    v140 = v188;
    sub_188A3F29C(v87, v188, &qword_1EA936780, &qword_18A650ED8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368C0, &qword_18A651008);
    swift_allocObject();
    v141 = v191;

    v142 = sub_188AA785C(v140, v189, v141, &qword_1EA936780, &qword_18A650ED8);

    if (v190)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    v143 = *(v93 + 264);
    v144 = v143;
    v145 = *(v93 + 280);
    v146 = *(v93 + 296);
    v32[16] = v145;
    v32[17] = v146;
    v208 = *(v93 + 312);
    v147 = *(v93 + 200);
    v148 = *(v93 + 232);
    v32[12] = *(v93 + 216);
    v32[13] = v148;
    v32[14] = *(v93 + 248);
    v32[15] = v143;
    v32[10] = *(v93 + 184);
    v32[11] = v147;
    v149 = *(v93 + 296);
    v32[26] = v145;
    v32[27] = v149;
    v217 = *(v93 + 312);
    v150 = *(v93 + 200);
    v151 = *(v93 + 232);
    v32[22] = *(v93 + 216);
    v32[23] = v151;
    v32[24] = *(v93 + 248);
    v32[25] = v144;
    v32[20] = *(v93 + 184);
    v32[21] = v150;
    if (sub_188AB3700(&v209) == 1)
    {
      if (a24)
      {
        goto LABEL_19;
      }

      sub_188AAA46C(v200, v201, v203);
      sub_188AB3714(a23);
      v156 = v203;
    }

    else
    {
      v152 = v32[17];
      v32[35] = v32[16];
      v32[36] = v152;
      isa = v208;
      v153 = v32[13];
      v32[31] = v32[12];
      v32[32] = v153;
      v154 = v32[15];
      v32[33] = v32[14];
      v32[34] = v154;
      v155 = v32[11];
      v156 = &v218;
      v32[29] = v32[10];
      v32[30] = v155;
    }

    sub_188EFFDD0(v156);
LABEL_19:
    v157 = swift_allocObject();
    sub_188AA24A8(v206);
    v158 = v32[7];
    *(v157 + 112) = v32[6];
    *(v157 + 128) = v158;
    *(v157 + 144) = v206[128];
    v159 = v32[3];
    *(v157 + 48) = v32[2];
    *(v157 + 64) = v159;
    v160 = v32[5];
    *(v157 + 80) = v32[4];
    *(v157 + 96) = v160;
    v161 = v32[1];
    *(v157 + 16) = *v32;
    *(v157 + 32) = v161;
    v162 = *(v93 + 752);
    sub_188A3F29C(v87, v92, &qword_1EA936780, &qword_18A650ED8);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v163 = v92;
      v164 = v178;
      sub_188A3F704(v163, v178, &qword_1EA936778, &qword_18A650ED0);
      v165 = *(v164 + *(v179 + 64));
      sub_188A3F5FC(v164, &qword_1EA936778, &qword_18A650ED0);
      v166 = (v165 == 2) | v165;
    }

    else
    {
      v166 = 0;
    }

    v167 = swift_allocObject();
    v168 = v193;
    v169 = v194;
    v167[2] = v142;
    v167[3] = v168;
    v170 = v198;
    v171 = v202;
    v167[4] = v199;
    v167[5] = v171;
    v167[6] = v157;
    v167[7] = v170;
    v172 = v197;
    v167[8] = sub_188F0DC4C;
    v167[9] = v172;
    v167[10] = sub_188F0E0D0;
    v167[11] = v169;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v56 = swift_allocObject();
    *(v56 + 16) = a9;
    *(v56 + 20) = a10;
    *(v56 + 24) = a11;
    *(v56 + 28) = a22;
    *(v56 + 32) = v162;
    *(v56 + 33) = v166 & 1;
    *(v56 + 40) = sub_188F0DCDC;
    *(v56 + 48) = v167;
    v201 = *(v170 + 280);
    v173 = swift_allocObject();
    *(v173 + 16) = v170;
    *(v173 + 24) = v56;
    v174 = swift_allocObject();
    *(v174 + 16) = sub_188F0E074;
    *(v174 + 24) = v173;
    v204[4] = sub_188E3FE50;
    v205 = v174;
    v204[0] = MEMORY[0x1E69E9820];
    v204[1] = 1107296256;
    v204[2] = sub_188A4A968;
    v204[3] = &block_descriptor_1326;
    v57 = _Block_copy(v204);
    v32 = v205;
    swift_retain_n();
    v200 = v142;

    v54 = v197;

    dispatch_sync(v201, v57);
    _Block_release(v57);
    LOBYTE(v170) = swift_isEscapingClosureAtFileLocation();

    if ((v170 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v175);
  v177[-2] = v200;
  v176 = v183;
  os_unfair_lock_lock(v183 + 6);
  sub_188F0E024(v182);
  os_unfair_lock_unlock(v176 + 6);

  sub_188A3F5FC(v196, &qword_1EA936780, &qword_18A650ED8);
}

void sub_188EDD634(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13, float a14, float a15, double a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, double a21, char a22, uint64_t a23, uint64_t a24)
{
  v138 = a6;
  v135 = a5;
  v128 = a4;
  v133 = a24;
  v131 = a23;
  v132 = a19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367A8, &qword_18A650EF8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = v121 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368C8, &qword_18A651010);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = (v121 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367B0, &qword_18A650F00);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v134 = v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v130 = v121 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v124 = v121 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v125 = v121 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v141 = (v121 - v50);
  v121[1] = a3;
  v129 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v51 = swift_allocObject();
  v51[2] = a7;
  v51[3] = a8;
  v52 = a1;
  v137 = v51;
  v51[4] = a1;
  v53 = swift_allocObject();
  v53[2] = a17;
  v53[3] = a18;
  v136 = v53;
  v53[4] = a1;
  v54 = *(isEscapingClosureAtFileLocation + 32);
  swift_retain_n();

  os_unfair_lock_lock((v54 + 24));
  v55 = *(v54 + 16);
  v126 = (v54 + 16);

  v127 = v54;
  os_unfair_lock_unlock((v54 + 24));
  v142 = isEscapingClosureAtFileLocation;
  v140 = v52;
  v139 = v40;
  if (!v55)
  {
    v41[7](v39, 1, 1, v40);
    v143[0] = a9;
    v143[1] = a10;
    v147 = a11;
    v148 = a12;
    v76 = v128[3];
    v77 = v128[4];
    __swift_project_boxed_opaque_existential_0(v128, v76);
    swift_beginAccess();
    v78 = *(isEscapingClosureAtFileLocation + 153);
    v79 = *(v77 + 16);
    v80 = sub_188A5FEE8();
    v79(aBlock, v78, v39, v143, &v147, &type metadata for UIAnimatablePoint, v80, v76, v77);
    v81 = sub_188A33550();
    swift_beginAccess();
    v82.n128_f64[0] = a9;
    v83.n128_f64[0] = a10;
    v84.n128_f64[0] = a11;
    v85.n128_f64[0] = a12;
    v71 = v141;
    sub_188AAFF74(v39, aBlock, v129, &qword_1EA9367B0, &qword_18A650F00, &qword_1EA9368C8, &qword_18A651010, &qword_1EA9367A8, v141, v82, v83, v84, v85, v81, &qword_18A650EF8, sub_188EF96B0, sub_188CE5A78, &type metadata for UIAnimatablePoint, sub_188EF69DC);
    swift_endAccess();
    sub_188AAFF20(aBlock);
    sub_188A3F5FC(v39, &qword_1EA9368C8, &qword_18A651010);
    goto LABEL_12;
  }

  v56 = v128;
  if (qword_1ED48DC20 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v57 = v39;
    v58 = v56;
    if (byte_1EA931338)
    {
      signpost_c2_entryLock_start();
      os_unfair_lock_lock((v55[2] + 16));
      signpost_c2_entryLock_start();
      v59 = *(*v55 + 104);
      swift_beginAccess();
      v60 = v125;
      sub_188A3F29C(v55 + v59, v125, &qword_1EA9367B0, &qword_18A650F00);
      sub_188A3F29C(v60, v57, &qword_1EA9367B0, &qword_18A650F00);
      v41[7](v57, 0, 1, v139);
      v147 = a9;
      v148 = a10;
      v144 = a11;
      v145 = a12;
      v61 = v57;
      v62 = v58[4];
      __swift_project_boxed_opaque_existential_0(v58, v58[3]);
      swift_beginAccess();
      v63 = *(isEscapingClosureAtFileLocation + 153);
      v64 = *(v62 + 16);
      sub_188A5FEE8();
      v64(aBlock, v63, v61, &v147, &v144);
      isEscapingClosureAtFileLocation = v142;
      v65 = v140;
      v66 = sub_188A33550();
      swift_beginAccess();
      v67.n128_f64[0] = a9;
      v68.n128_f64[0] = a10;
      v69.n128_f64[0] = a11;
      v70.n128_f64[0] = a12;
      v71 = v141;
      sub_188AAFF74(v61, aBlock, v129, &qword_1EA9367B0, &qword_18A650F00, &qword_1EA9368C8, &qword_18A651010, &qword_1EA9367A8, v141, v67, v68, v69, v70, v66, &qword_18A650EF8, sub_188EF96B0, sub_188CE5A78, &type metadata for UIAnimatablePoint, sub_188EF69DC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v61, &qword_1EA9368C8, &qword_18A651010);
      v72 = *v55;
      v73 = v55 + *(*v55 + 112);
      v74 = *v73;
      if (*v73)
      {
        v75 = *(v73 + 1);
        *v73 = 0;
        *(v73 + 1) = 0;
        v74(v65, 0);
        sub_188A55B8C(v74, v75);
        v72 = *v55;
      }

      *(v55 + *(v72 + 120)) = 1;
      sub_188A3F5FC(v125, &qword_1EA9367B0, &qword_18A650F00);
      os_unfair_lock_unlock((v55[2] + 16));
    }

    else
    {
      v86 = *(*v55 + 104);
      swift_beginAccess();
      v87 = v55 + v86;
      v88 = v124;
      sub_188A3F29C(v87, v124, &qword_1EA9367B0, &qword_18A650F00);
      sub_188A3F29C(v88, v57, &qword_1EA9367B0, &qword_18A650F00);
      v41[7](v57, 0, 1, v139);
      v147 = a9;
      v148 = a10;
      v144 = a11;
      v145 = a12;
      v89 = v56[4];
      __swift_project_boxed_opaque_existential_0(v56, v56[3]);
      swift_beginAccess();
      v90 = *(v142 + 153);
      v91 = *(v89 + 16);
      sub_188A5FEE8();
      isEscapingClosureAtFileLocation = v142;
      v91(aBlock, v90, v57, &v147, &v144);
      v92 = v140;
      v93 = sub_188A33550();
      swift_beginAccess();
      v94.n128_f64[0] = a9;
      v95.n128_f64[0] = a10;
      v96.n128_f64[0] = a11;
      v97.n128_f64[0] = a12;
      v71 = v141;
      sub_188AAFF74(v57, aBlock, v129, &qword_1EA9367B0, &qword_18A650F00, &qword_1EA9368C8, &qword_18A651010, &qword_1EA9367A8, v141, v94, v95, v96, v97, v93, &qword_18A650EF8, sub_188EF96B0, sub_188CE5A78, &type metadata for UIAnimatablePoint, sub_188EF69DC);
      swift_endAccess();
      sub_188AAFF20(aBlock);
      sub_188A3F5FC(v57, &qword_1EA9368C8, &qword_18A651010);
      v98 = v55 + *(*v55 + 112);
      v99 = *v98;
      if (*v98)
      {
        v100 = *(v98 + 1);
        *v98 = 0;
        *(v98 + 1) = 0;
        v99(v92, 0);
        sub_188A55B8C(v99, v100);
      }

      sub_188A3F5FC(v124, &qword_1EA9367B0, &qword_18A650F00);
      *(v55 + *(*v55 + 120)) = 1;
    }

LABEL_12:
    v101 = v130;
    sub_188A3F29C(v71, v130, &qword_1EA9367B0, &qword_18A650F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368D0, &qword_18A651018);
    swift_allocObject();
    v102 = v133;

    v103 = sub_188AA785C(v101, v131, v102, &qword_1EA9367B0, &qword_18A650F00);

    if (v132)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_beginAccess();
    if (*(isEscapingClosureAtFileLocation + 88))
    {
      if (a22)
      {
        goto LABEL_19;
      }

      v104 = (a11 - a9) * a21;
      v105 = (a12 - a10) * a21;
    }

    else
    {
      v104 = *(isEscapingClosureAtFileLocation + 72);
      v105 = *(isEscapingClosureAtFileLocation + 80);
    }

    sub_188EFF9E0(&qword_1EA9367B0, &qword_18A650F00, v104, v105);
LABEL_19:
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    *(v106 + 32) = 1;
    v107 = *(isEscapingClosureAtFileLocation + 192);
    v108 = v134;
    sub_188A3F29C(v71, v134, &qword_1EA9367B0, &qword_18A650F00);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v109 = v122;
      sub_188A3F704(v108, v122, &qword_1EA9367A8, &qword_18A650EF8);
      v110 = *(v109 + *(v123 + 64));
      sub_188A3F5FC(v109, &qword_1EA9367A8, &qword_18A650EF8);
      v111 = (v110 == 2) | v110;
    }

    else
    {
      v111 = 0;
    }

    v112 = swift_allocObject();
    v113 = v135;
    v112[2] = v103;
    v112[3] = v113;
    v114 = v142;
    v112[4] = v138;
    v112[5] = v114;
    v139 = v103;
    v115 = v140;
    v112[6] = v106;
    v112[7] = v115;
    v116 = v106;
    v117 = v137;
    v112[8] = sub_188F0E0C0;
    v112[9] = v117;
    v118 = v136;
    v112[10] = sub_188F0E0D0;
    v112[11] = v118;
    type metadata accessor for InProcessAnimationManager.TickEntry();
    v39 = swift_allocObject();
    v39[4] = a13;
    v39[5] = a14;
    v39[6] = a15;
    *(v39 + 7) = a20;
    *(v39 + 32) = v107;
    *(v39 + 33) = v111 & 1;
    *(v39 + 5) = sub_188F0DE64;
    *(v39 + 6) = v112;
    v135 = *(v115 + 280);
    v56 = swift_allocObject();
    v56[2] = v115;
    v56[3] = v39;
    v55 = swift_allocObject();
    v55[2] = sub_188F0E074;
    v55[3] = v56;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_1364;
    v41 = _Block_copy(aBlock);
    swift_retain_n();

    v142 = v116;

    dispatch_sync(v135, v41);
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  MEMORY[0x1EEE9AC00](v119);
  v120 = v127;
  os_unfair_lock_lock(v127 + 6);
  sub_188F0E024(v126);
  os_unfair_lock_unlock(v120 + 6);

  sub_188A3F5FC(v141, &qword_1EA9367B0, &qword_18A650F00);
}

double sub_188EDE5D0(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, double d3_0, double d4_0, double d5_0, double d6_0, double d7_0, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, int a17, double a18, char a19, uint64_t a20, uint64_t a21)
{
  v26 = *a2;
  v35 = *(a3 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_isInteractive);
  v27 = swift_allocObject();
  v27[2] = *(v26 + 80);
  v27[3] = *(v26 + 88);
  v27[4] = a12;
  v27[5] = a13;
  v27[6] = a1;
  v28 = swift_allocObject();
  v28[2] = a14;
  v28[3] = a15;
  v28[4] = a1;
  swift_retain_n();

  sub_189096CB0(a3, a1, a4, a5, v35, a6, a7, a8, a9, a10, a11, v29, v30, v31, v32, v33, sub_188F0DF7C, v27, sub_188F0E0D0, v28, a16, a17, a18, a19 & 1, a20, a21);

  return result;
}

void sub_188EDE7AC(void *a1, int a2, void (*a3)(void, void, void, void, void, void, void, void, void, void), uint64_t a4, id *a5, double *a6, double *a7, char a8, ValueMetadata *a9, uint64_t a10)
{
  v11 = v10;
  v636 = a5;
  v637 = a3;
  v638 = a4;
  LODWORD(v634) = a2;
  v635 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v629 - v18;
  if (a9 == &type metadata for UIAnimatableColorMatrix)
  {
    v35 = *(a6 + 3);
    v650 = *(a6 + 2);
    v651 = v35;
    v652 = *(a6 + 4);
    v36 = *(a6 + 1);
    v648 = *a6;
    v649 = v36;
    v37 = *(a7 + 3);
    v641 = *(a7 + 2);
    v642 = v37;
    v643 = *(a7 + 4);
    v38 = *(a7 + 1);
    v639 = *a7;
    v640 = v38;
    if ((a8 & 1) == 0)
    {
      v39 = *(a7 + 3);
      v659 = *(a7 + 2);
      v660 = v39;
      v661 = *(a7 + 4);
      v40 = *(a7 + 1);
      v657 = *a7;
      v658 = v40;
      v41 = *(a6 + 3);
      v671 = *(a6 + 2);
      v672 = v41;
      v673 = *(a6 + 4);
      v42 = *(a6 + 1);
      v669 = *a6;
      v670 = v42;
      if (sub_188F7BDB0(&v657, 0.01))
      {
        return;
      }
    }

    v43 = v11;
    [v11 preferredFrameRateRange];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v636;
    v51 = [(UIView *)v636 __swiftAnimationInfo];
    v52 = v638;
    if (!v51)
    {
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v54 = v50;
      v55 = sub_188A5DF40(v54, sub_188ABE008, v53);

      v56 = v54;
      v52 = v638;
      [(UIView *)v56 set__swiftAnimationInfo:v55];
    }

    v57 = v634 & 1;
    v58 = v637;
    v59 = sub_188C53068(v634 & 1, v637, v52);
    v633 = v60;
    v634 = v59;

    v61 = [v635 context];
    if (v61)
    {

      v635 = 0;
      v62 = sub_188AB3830;
    }

    else
    {
      v115 = swift_allocObject();
      *(v115 + 16) = 1;
      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v117 = swift_allocObject();
      v117[2] = v115;
      v117[3] = v116;
      v635 = v117;
      v62 = sub_188F0E070;
    }

    v632 = v62;
    v118 = v43[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v119 = sub_188AA977C;
    if (v58 == 0xD000000000000020 && 0x800000018A689070 == v52 || (v120 = sub_18A4A86C8(), v119 = sub_188AA977C, (v120 & 1) != 0) || (v119 = sub_188D39390, v58 == 0xD000000000000021) && 0x800000018A6890A0 == v52)
    {
      v121 = v119;
    }

    else if (sub_18A4A86C8())
    {
      v121 = sub_188D39390;
    }

    else
    {
      v121 = 0;
    }

    ObjectType = swift_getObjectType();
    v122 = swift_allocObject();
    *(v122 + 16) = v121;
    *(v122 + 24) = 0;
    *(v122 + 32) = v50;
    *(v122 + 40) = v45;
    *(v122 + 44) = v47;
    *(v122 + 48) = v49;
    *(v122 + 52) = v118 == 2;
    *(v122 + 56) = v57;
    v123 = v638;
    *(v122 + 64) = v58;
    *(v122 + 72) = v123;
    v124 = swift_allocObject();
    *(v124 + 16) = v50;
    *(v124 + 24) = v57;
    *(v124 + 32) = v58;
    *(v124 + 40) = v123;
    v125 = v50;
    v126 = v633;
    v127 = *(v633 + 200);
    v128 = v125;
    swift_bridgeObjectRetain_n();
    v129 = v128;
    sub_188A52E38(v121, 0);
    v127(&v648, &v639, v632, v635, sub_188F0B54C, v122, sub_188F0E0BC, v124, ObjectType, v126);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableSize)
  {
    v64 = *a6;
    v63 = a6[1];
    v66 = *a7;
    v65 = a7[1];
    *&v669 = *a6;
    *(&v669 + 1) = v63;
    *&v657 = v66;
    *(&v657 + 1) = v65;
    if ((a8 & 1) == 0)
    {
      v67 = objc_opt_self();
      v68 = +[(UIScreen *)v67];
      [v68 scale];
      v70 = v69;

      v17 = 1.0 / v70;
      v71 = vabdd_f64(v63, v65);
      if (vabdd_f64(v64, v66) <= 1.0 / v70 && v71 <= v17)
      {
        return;
      }
    }

    v73 = v11;
    [v11 preferredFrameRateRange];
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v636;
    v81 = [(UIView *)v636 __swiftAnimationInfo];
    v82 = v638;
    if (!v81)
    {
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v84 = v80;
      v85 = sub_188A5DF40(v84, sub_188ABE008, v83);

      v86 = v84;
      v82 = v638;
      [(UIView *)v86 set__swiftAnimationInfo:v85];
    }

    v87 = v634 & 1;
    v88 = v637;
    v89 = sub_188C527DC(v634 & 1, v637, v82);
    v633 = v90;
    v634 = v89;

    v91 = [v635 context];
    if (v91)
    {

      v635 = 0;
      v92 = sub_188AB3830;
    }

    else
    {
      v163 = swift_allocObject();
      *(v163 + 16) = 1;
      v164 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v165 = swift_allocObject();
      v165[2] = v163;
      v165[3] = v164;
      v635 = v165;
      v92 = sub_188F0E070;
    }

    v632 = v92;
    v166 = v73[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v167 = sub_188AA977C;
    if (v88 == 0xD000000000000020 && 0x800000018A689070 == v82 || (v168 = sub_18A4A86C8(), v167 = sub_188AA977C, (v168 & 1) != 0) || (v167 = sub_188D39390, v88 == 0xD000000000000021) && 0x800000018A6890A0 == v82)
    {
      v121 = v167;
    }

    else if (sub_18A4A86C8())
    {
      v121 = sub_188D39390;
    }

    else
    {
      v121 = 0;
    }

    ObjectType = swift_getObjectType();
    v169 = swift_allocObject();
    *(v169 + 16) = v121;
    *(v169 + 24) = 0;
    *(v169 + 32) = v80;
    *(v169 + 40) = v75;
    *(v169 + 44) = v77;
    *(v169 + 48) = v79;
    *(v169 + 52) = v166 == 2;
    *(v169 + 56) = v87;
    v170 = v638;
    *(v169 + 64) = v88;
    *(v169 + 72) = v170;
    v171 = swift_allocObject();
    *(v171 + 16) = v80;
    *(v171 + 24) = v87;
    *(v171 + 32) = v88;
    *(v171 + 40) = v170;
    v172 = v80;
    v173 = v633;
    v174 = *(v633 + 200);
    v175 = v172;
    swift_bridgeObjectRetain_n();
    v176 = v175;
    sub_188A52E38(v121, 0);
    v174(&v669, &v657, v632, v635, sub_188F0B540, v169, sub_188F0E0BC, v171, ObjectType, v173);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableColorArray)
  {
    v93 = *a6;
    v94 = *a7;
    *&v669 = *a6;
    *&v657 = v94;
    if ((a8 & 1) == 0 && sub_189149EF0(v94, v93, 0.01))
    {
      return;
    }

    v95 = v11;
    [v11 preferredFrameRateRange];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = v636;
    v103 = [(UIView *)v636 __swiftAnimationInfo];
    v104 = v638;
    if (!v103)
    {
      v105 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v106 = v102;
      v107 = sub_188A5DF40(v106, sub_188ABE008, v105);

      v108 = v106;
      v104 = v638;
      [(UIView *)v108 set__swiftAnimationInfo:v107];
    }

    v109 = v634 & 1;
    v110 = v637;
    v111 = sub_188CCF924(v634 & 1, v637, v104);
    v633 = v112;
    v634 = v111;

    v113 = [v635 context];
    if (v113)
    {

      v635 = 0;
      v114 = sub_188AB3830;
    }

    else
    {
      v199 = swift_allocObject();
      *(v199 + 16) = 1;
      v200 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v201 = swift_allocObject();
      v201[2] = v199;
      v201[3] = v200;
      v635 = v201;
      v114 = sub_188F0E070;
    }

    v632 = v114;
    v202 = v95[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v203 = sub_188AA977C;
    if (v110 == 0xD000000000000020 && 0x800000018A689070 == v104 || (v204 = sub_18A4A86C8(), v203 = sub_188AA977C, (v204 & 1) != 0) || (v203 = sub_188D39390, v110 == 0xD000000000000021) && 0x800000018A6890A0 == v104)
    {
      v121 = v203;
    }

    else if (sub_18A4A86C8())
    {
      v121 = sub_188D39390;
    }

    else
    {
      v121 = 0;
    }

    ObjectType = swift_getObjectType();
    v205 = swift_allocObject();
    *(v205 + 16) = v121;
    *(v205 + 24) = 0;
    *(v205 + 32) = v102;
    *(v205 + 40) = v97;
    *(v205 + 44) = v99;
    *(v205 + 48) = v101;
    *(v205 + 52) = v202 == 2;
    *(v205 + 56) = v109;
    v206 = v638;
    *(v205 + 64) = v110;
    *(v205 + 72) = v206;
    v207 = swift_allocObject();
    *(v207 + 16) = v102;
    *(v207 + 24) = v109;
    *(v207 + 32) = v110;
    *(v207 + 40) = v206;
    v208 = v102;
    v209 = v633;
    v210 = *(v633 + 200);
    v211 = v208;
    swift_bridgeObjectRetain_n();
    v212 = v211;
    sub_188A52E38(v121, 0);
    v210(&v669, &v657, v632, v635, sub_188F0B528, v205, sub_188F0E0BC, v207, ObjectType, v209);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableCornerRadii)
  {
    v131 = *a6;
    v130 = a6[1];
    v133 = a6[2];
    v132 = a6[3];
    v135 = a6[4];
    v134 = a6[5];
    v137 = a6[6];
    v136 = a6[7];
    v139 = *a7;
    v138 = a7[1];
    v141 = a7[2];
    v140 = a7[3];
    v143 = a7[4];
    v142 = a7[5];
    v145 = a7[6];
    v144 = a7[7];
    *&v669 = *a6;
    *(&v669 + 1) = v130;
    *&v670 = v133;
    *(&v670 + 1) = v132;
    *&v671 = v135;
    *(&v671 + 1) = v134;
    *&v672 = v137;
    *(&v672 + 1) = v136;
    *&v657 = v139;
    *(&v657 + 1) = v138;
    *&v658 = v141;
    *(&v658 + 1) = v140;
    *&v659 = v143;
    *(&v659 + 1) = v142;
    *&v660 = v145;
    *(&v660 + 1) = v144;
    if ((a8 & 1) != 0 || vabdd_f64(v131, v139) > 0.001 || vabdd_f64(v130, v138) > 0.001 || vabdd_f64(v133, v141) > 0.001 || vabdd_f64(v132, v140) > 0.001 || vabdd_f64(v135, v143) > 0.001 || vabdd_f64(v134, v142) > 0.001 || vabdd_f64(v137, v145) > 0.001 || vabdd_f64(v136, v144) > 0.001)
    {
      v146 = v11;
      [v11 preferredFrameRateRange];
      v148 = v147;
      v150 = v149;
      v152 = v151;
      v153 = v636;
      if (![(UIView *)v636 __swiftAnimationInfo])
      {
        v154 = swift_allocObject();
        swift_unknownObjectWeakInit();
        _s13AnimationInfoCMa();
        swift_allocObject();
        v155 = v153;
        v156 = sub_188A5DF40(v155, sub_188ABE008, v154);

        [(UIView *)v155 set__swiftAnimationInfo:v156];
      }

      v157 = v634 & 1;
      v158 = v637;
      sub_188ECD198(v634 & 1, v637, v638);
      v634 = v159;

      v160 = [v635 context];
      if (v160)
      {

        v161 = 0;
        v162 = sub_188AB3830;
      }

      else
      {
        v240 = swift_allocObject();
        *(v240 + 16) = 1;
        v241 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v161 = swift_allocObject();
        v161[2] = v240;
        v161[3] = v241;
        v162 = sub_188F0E070;
      }

      v633 = v162;
      v242 = v146[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
      v243 = sub_188AA977C;
      v635 = v161;
      if (v158 == 0xD000000000000020 && 0x800000018A689070 == v638 || (v244 = sub_18A4A86C8(), v243 = sub_188AA977C, (v244 & 1) != 0) || (v243 = sub_188D39390, v158 == 0xD000000000000021) && 0x800000018A6890A0 == v638)
      {
        v245 = v243;
        v246 = v638;
      }

      else
      {
        v246 = v638;
        if (sub_18A4A86C8())
        {
          v245 = sub_188D39390;
        }

        else
        {
          v245 = 0;
        }
      }

      v638 = swift_getObjectType();
      v247 = swift_allocObject();
      *(v247 + 16) = v245;
      *(v247 + 24) = 0;
      *(v247 + 32) = v153;
      *(v247 + 40) = v148;
      *(v247 + 44) = v150;
      *(v247 + 48) = v152;
      *(v247 + 52) = v242 == 2;
      *(v247 + 56) = v157;
      v248 = v637;
      *(v247 + 64) = v637;
      *(v247 + 72) = v246;
      v249 = swift_allocObject();
      *(v249 + 16) = v153;
      *(v249 + 24) = v157;
      *(v249 + 32) = v248;
      *(v249 + 40) = v246;
      v250 = v634;
      v251 = v153;
      v252 = *(v634 + 200);
      v253 = v251;
      swift_bridgeObjectRetain_n();
      v254 = v253;
      sub_188A52E38(v245, 0);
      v252(&v669, &v657, v633, v635, sub_188F0B524, v247, sub_188F0E0BC, v249, v638, v250);
      sub_188A55B8C(v245, 0);

      swift_unknownObjectRelease();

      goto LABEL_87;
    }

    return;
  }

  if (a9 == &type metadata for UIAnimatableVector)
  {
    v177 = *a6;
    v178 = *a7;
    *&v669 = *a6;
    *&v657 = v178;
    if (a8 & 1) == 0 && (sub_188BD69E4(v178, v177, 0.001))
    {
      return;
    }

    v179 = v11;
    [v11 preferredFrameRateRange];
    v181 = v180;
    v183 = v182;
    v185 = v184;
    v186 = v636;
    v187 = [(UIView *)v636 __swiftAnimationInfo];
    v188 = v638;
    if (!v187)
    {
      v189 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v190 = v186;
      v191 = sub_188A5DF40(v190, sub_188ABE008, v189);

      v192 = v190;
      v188 = v638;
      [(UIView *)v192 set__swiftAnimationInfo:v191];
    }

    v193 = v634 & 1;
    v194 = v637;
    v195 = sub_188ECD5C8(v634 & 1, v637, v188);
    v633 = v196;
    v634 = v195;

    v197 = [v635 context];
    if (v197)
    {

      v635 = 0;
      v198 = sub_188AB3830;
    }

    else
    {
      v279 = swift_allocObject();
      *(v279 + 16) = 1;
      v280 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v281 = swift_allocObject();
      v281[2] = v279;
      v281[3] = v280;
      v635 = v281;
      v198 = sub_188F0E070;
    }

    v632 = v198;
    v282 = v179[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v283 = sub_188AA977C;
    if (v194 == 0xD000000000000020 && 0x800000018A689070 == v188 || (v284 = sub_18A4A86C8(), v283 = sub_188AA977C, (v284 & 1) != 0) || (v283 = sub_188D39390, v194 == 0xD000000000000021) && 0x800000018A6890A0 == v188)
    {
      v121 = v283;
    }

    else if (sub_18A4A86C8())
    {
      v121 = sub_188D39390;
    }

    else
    {
      v121 = 0;
    }

    ObjectType = swift_getObjectType();
    v285 = swift_allocObject();
    *(v285 + 16) = v121;
    *(v285 + 24) = 0;
    *(v285 + 32) = v186;
    *(v285 + 40) = v181;
    *(v285 + 44) = v183;
    *(v285 + 48) = v185;
    *(v285 + 52) = v282 == 2;
    *(v285 + 56) = v193;
    v286 = v638;
    *(v285 + 64) = v194;
    *(v285 + 72) = v286;
    v287 = swift_allocObject();
    v288 = v194;
    v289 = v287;
    *(v287 + 16) = v186;
    *(v287 + 24) = v193;
    *(v287 + 32) = v288;
    *(v287 + 40) = v286;
    v290 = v633;
    v291 = v186;
    v292 = *(v633 + 200);
    v293 = v291;
    swift_bridgeObjectRetain_n();
    v294 = v293;
    sub_188A52E38(v121, 0);
    v292(&v669, &v657, v632, v635, sub_188F0B50C, v285, sub_188F0E0BC, v289, ObjectType, v290);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableMeshTransform)
  {
    v213 = *(a6 + 8);
    v214 = *(a6 + 36);
    v215 = *(a7 + 8);
    v216 = *(a7 + 36);
    v217 = *a6;
    v218 = *(a6 + 1);
    v669 = *a6;
    v670 = v218;
    BYTE4(v671) = v214;
    LODWORD(v671) = v213;
    v219 = *a7;
    v220 = *(a7 + 1);
    v657 = *a7;
    v658 = v220;
    BYTE4(v659) = v216;
    LODWORD(v659) = v215;
    v221 = v636;
    v222 = v637;
    v223 = v638;
    v224 = v11;
    if (a8)
    {
      goto LABEL_90;
    }

    v278 = v219;
    if (v217)
    {
      if (v219)
      {
        if (sub_189090B30(v219, v217, 0.00000001))
        {
          return;
        }

        goto LABEL_90;
      }

      v278 = v217;
    }

    else if (!v219)
    {
      return;
    }

    if (sub_189090ADC(v278, 0.00000001))
    {
      return;
    }

LABEL_90:
    [v11 preferredFrameRateRange];
    v226 = v225;
    v228 = v227;
    v230 = v229;
    if (![(UIView *)v221 __swiftAnimationInfo])
    {
      v231 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v232 = v221;
      v233 = sub_188A5DF40(v232, sub_188ABE008, v231);

      v223 = v638;
      [(UIView *)v232 set__swiftAnimationInfo:v233];
    }

    v234 = v634 & 1;
    sub_188ECD978(v634 & 1, v222, v223);
    v236 = v235;

    v237 = [v635 context];
    if (v237)
    {

      v238 = 0;
      v239 = sub_188AB3830;
    }

    else
    {
      v320 = swift_allocObject();
      *(v320 + 16) = 1;
      v321 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v238 = swift_allocObject();
      v238[2] = v320;
      v238[3] = v321;
      v239 = sub_188F0E070;
    }

    v322 = v224[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v634 = v239;
    v635 = v238;
    if (v222 == 0xD000000000000020 && 0x800000018A689070 == v223 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v323 = v234;
    }

    else
    {
      v323 = v234;
      if (v222 != 0xD000000000000021 || 0x800000018A6890A0 != v223)
      {
        v324 = v236;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_145;
      }

      v121 = sub_188D39390;
    }

    v324 = v236;
LABEL_145:
    v633 = swift_getObjectType();
    v325 = swift_allocObject();
    *(v325 + 16) = v121;
    *(v325 + 24) = 0;
    v326 = v636;
    *(v325 + 32) = v636;
    *(v325 + 40) = v226;
    *(v325 + 44) = v228;
    *(v325 + 48) = v230;
    *(v325 + 52) = v322 == 2;
    v327 = v323;
    *(v325 + 56) = v323;
    v328 = v638;
    *(v325 + 64) = v222;
    *(v325 + 72) = v328;
    v329 = swift_allocObject();
    v330 = v222;
    v331 = v329;
    *(v329 + 16) = v326;
    *(v329 + 24) = v327;
    *(v329 + 32) = v330;
    *(v329 + 40) = v328;
    v332 = v326;
    v333 = *(v324 + 200);
    v334 = v332;
    swift_bridgeObjectRetain_n();
    v335 = v334;
    sub_188A52E38(v121, 0);
    v627 = v324;
    v625 = v633;
    v336 = sub_188F0B508;
LABEL_146:
    v333(&v669, &v657, v634, v635, v336, v325, sub_188F0E0BC, v331, v625, v627);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableFloat)
  {
    v255 = *a6;
    v256 = *a7;
    *&v669 = *a6;
    *&v657 = v256;
    if ((a8 & 1) == 0 && vabdd_f64(v255, v256) <= 0.001)
    {
      return;
    }

    v257 = v11;
    [v11 preferredFrameRateRange];
    v259 = v258;
    v261 = v260;
    v263 = v262;
    v264 = v636;
    v265 = [(UIView *)v636 __swiftAnimationInfo];
    v266 = v638;
    if (!v265)
    {
      v267 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v268 = v264;
      v269 = sub_188A5DF40(v268, sub_188ABE008, v267);

      v270 = v268;
      v266 = v638;
      [(UIView *)v270 set__swiftAnimationInfo:v269];
    }

    v271 = v634 & 1;
    v272 = v637;
    v634 = sub_188A6D6CC(v634 & 1, v637, v266);
    v274 = v273;

    v275 = [v635 context];
    if (v275)
    {

      v276 = 0;
      v277 = sub_188AB3830;
    }

    else
    {
      v366 = swift_allocObject();
      *(v366 + 16) = 1;
      v367 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v276 = swift_allocObject();
      v276[2] = v366;
      v276[3] = v367;
      v277 = sub_188F0E070;
    }

    v368 = v257[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v635 = v276;
    v633 = v277;
    if (v272 == 0xD000000000000020 && 0x800000018A689070 == v266 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v369 = v271;
    }

    else
    {
      v369 = v271;
      if (v272 != 0xD000000000000021 || 0x800000018A6890A0 != v266)
      {
        v370 = v274;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_167;
      }

      v121 = sub_188D39390;
    }

    v370 = v274;
LABEL_167:
    v632 = swift_getObjectType();
    v371 = swift_allocObject();
    *(v371 + 16) = v121;
    *(v371 + 24) = 0;
    *(v371 + 32) = v264;
    *(v371 + 40) = v259;
    *(v371 + 44) = v261;
    *(v371 + 48) = v263;
    *(v371 + 52) = v368 == 2;
    v372 = v369;
    *(v371 + 56) = v369;
    v373 = v638;
    *(v371 + 64) = v272;
    *(v371 + 72) = v373;
    v374 = swift_allocObject();
    v375 = v272;
    v376 = v374;
    *(v374 + 16) = v264;
    *(v374 + 24) = v372;
    *(v374 + 32) = v375;
    *(v374 + 40) = v373;
    v377 = v264;
    v378 = *(v370 + 200);
    v379 = v377;
    swift_bridgeObjectRetain_n();
    v380 = v379;
    sub_188A52E38(v121, 0);
    v628 = v370;
    v626 = v632;
    v381 = sub_188F0DFF8;
LABEL_213:
    v378(&v669, &v657, v633, v635, v381, v371, sub_188F0E0BC, v376, v626, v628);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatableNormalizedPoint)
  {
    v296 = *a6;
    v295 = a6[1];
    v298 = *a7;
    v297 = a7[1];
    *&v669 = *a6;
    *(&v669 + 1) = v295;
    *&v657 = v298;
    *(&v657 + 1) = v297;
    if ((a8 & 1) == 0 && vabdd_f64(v296, v298) <= 0.001 && vabdd_f64(v295, v297) <= 0.001)
    {
      return;
    }

    v299 = v11;
    [v11 preferredFrameRateRange];
    v301 = v300;
    v303 = v302;
    v305 = v304;
    v306 = v636;
    v307 = [(UIView *)v636 __swiftAnimationInfo];
    v308 = v638;
    if (!v307)
    {
      v309 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v310 = v306;
      v311 = sub_188A5DF40(v310, sub_188ABE008, v309);

      v312 = v310;
      v308 = v638;
      [(UIView *)v312 set__swiftAnimationInfo:v311];
    }

    v313 = v634 & 1;
    v314 = v637;
    v634 = sub_188D248D0(v634 & 1, v637, v308);
    v316 = v315;

    v317 = [v635 context];
    if (v317)
    {

      v318 = 0;
      v319 = sub_188AB3830;
    }

    else
    {
      v402 = swift_allocObject();
      *(v402 + 16) = 1;
      v403 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v318 = swift_allocObject();
      v318[2] = v402;
      v318[3] = v403;
      v319 = sub_188F0E070;
    }

    v404 = v299[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v635 = v318;
    v633 = v319;
    if (v314 == 0xD000000000000020 && 0x800000018A689070 == v308 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v405 = v313;
    }

    else
    {
      v405 = v313;
      if (v314 != 0xD000000000000021 || 0x800000018A6890A0 != v308)
      {
        v406 = v316;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_185;
      }

      v121 = sub_188D39390;
    }

    v406 = v316;
LABEL_185:
    v632 = swift_getObjectType();
    v371 = swift_allocObject();
    *(v371 + 16) = v121;
    *(v371 + 24) = 0;
    *(v371 + 32) = v306;
    *(v371 + 40) = v301;
    *(v371 + 44) = v303;
    *(v371 + 48) = v305;
    *(v371 + 52) = v404 == 2;
    v407 = v405;
    *(v371 + 56) = v405;
    v408 = v638;
    *(v371 + 64) = v314;
    *(v371 + 72) = v408;
    v409 = swift_allocObject();
    v410 = v314;
    v376 = v409;
    *(v409 + 16) = v306;
    *(v409 + 24) = v407;
    *(v409 + 32) = v410;
    *(v409 + 40) = v408;
    v411 = v306;
    v378 = *(v406 + 200);
    v412 = v411;
    swift_bridgeObjectRetain_n();
    v413 = v412;
    sub_188A52E38(v121, 0);
    v628 = v406;
    v626 = v632;
    v381 = sub_188F0B4FC;
    goto LABEL_213;
  }

  if (a9 == &type metadata for UIAnimatableColor)
  {
    v338 = *a6;
    v337 = a6[1];
    v340 = a6[2];
    v339 = a6[3];
    v342 = *a7;
    v341 = a7[1];
    v344 = a7[2];
    v343 = a7[3];
    *&v669 = *a6;
    *(&v669 + 1) = v337;
    *&v670 = v340;
    *(&v670 + 1) = v339;
    *&v657 = v342;
    *(&v657 + 1) = v341;
    *&v658 = v344;
    *(&v658 + 1) = v343;
    if ((a8 & 1) == 0 && vabdd_f64(v338, v342) <= 0.01 && vabdd_f64(v337, v341) <= 0.01 && vabdd_f64(v340, v344) <= 0.01 && vabdd_f64(v339, v343) <= 0.01)
    {
      return;
    }

    v345 = v11;
    [v11 preferredFrameRateRange];
    v347 = v346;
    v349 = v348;
    v351 = v350;
    v352 = v636;
    v353 = [(UIView *)v636 __swiftAnimationInfo];
    v354 = v638;
    if (!v353)
    {
      v355 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v356 = v352;
      v357 = sub_188A5DF40(v356, sub_188ABE008, v355);

      v358 = v356;
      v354 = v638;
      [(UIView *)v358 set__swiftAnimationInfo:v357];
    }

    v359 = v634 & 1;
    v360 = v637;
    v634 = sub_188C52214(v634 & 1, v637, v354);
    v362 = v361;

    v363 = [v635 context];
    if (v363)
    {

      v364 = 0;
      v365 = sub_188AB3830;
    }

    else
    {
      v441 = swift_allocObject();
      *(v441 + 16) = 1;
      v442 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v364 = swift_allocObject();
      v364[2] = v441;
      v364[3] = v442;
      v365 = sub_188F0E070;
    }

    v443 = v345[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v635 = v364;
    v633 = v365;
    if (v360 == 0xD000000000000020 && 0x800000018A689070 == v354 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v444 = v359;
    }

    else
    {
      v444 = v359;
      if (v360 != 0xD000000000000021 || 0x800000018A6890A0 != v354)
      {
        v445 = v362;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_212;
      }

      v121 = sub_188D39390;
    }

    v445 = v362;
LABEL_212:
    v632 = swift_getObjectType();
    v371 = swift_allocObject();
    *(v371 + 16) = v121;
    *(v371 + 24) = 0;
    *(v371 + 32) = v352;
    *(v371 + 40) = v347;
    *(v371 + 44) = v349;
    *(v371 + 48) = v351;
    *(v371 + 52) = v443 == 2;
    v446 = v444;
    *(v371 + 56) = v444;
    v447 = v638;
    *(v371 + 64) = v360;
    *(v371 + 72) = v447;
    v448 = swift_allocObject();
    v449 = v360;
    v376 = v448;
    *(v448 + 16) = v352;
    *(v448 + 24) = v446;
    *(v448 + 32) = v449;
    *(v448 + 40) = v447;
    v450 = v352;
    v378 = *(v445 + 200);
    v451 = v450;
    swift_bridgeObjectRetain_n();
    v452 = v451;
    sub_188A52E38(v121, 0);
    v628 = v445;
    v626 = v632;
    v381 = sub_188F0B4F8;
    goto LABEL_213;
  }

  if (a9 == &type metadata for UIAnimatableScaledFloat)
  {
    v382 = *a6;
    v383 = *a7;
    *&v669 = *a6;
    *&v657 = v383;
    v384 = v636;
    v385 = v637;
    v386 = v638;
    v387 = v11;
    if ((a8 & 1) == 0)
    {
      if (qword_1EA931200 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1EA994F30;
      if (vabdd_f64(v382, v383) <= *&qword_1EA994F30)
      {
        return;
      }
    }

    [v11 preferredFrameRateRange];
    v389 = v388;
    v391 = v390;
    v393 = v392;
    if (![(UIView *)v384 __swiftAnimationInfo])
    {
      v394 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v395 = v384;
      v396 = sub_188A5DF40(v395, sub_188ABE008, v394);

      v386 = v638;
      [(UIView *)v395 set__swiftAnimationInfo:v396];
    }

    LODWORD(v634) = v634 & 1;
    sub_188A91A10(v634, v385, v386);
    v398 = v397;

    v399 = [v635 context];
    if (v399)
    {

      v400 = 0;
      v401 = sub_188AB3830;
    }

    else
    {
      v482 = swift_allocObject();
      *(v482 + 16) = 1;
      v483 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v400 = swift_allocObject();
      v400[2] = v482;
      v400[3] = v483;
      v401 = sub_188F0E070;
    }

    v633 = v401;
    v484 = v387[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v485 = sub_188AA977C;
    v635 = v400;
    if (v385 == 0xD000000000000020 && 0x800000018A689070 == v386 || (v486 = sub_18A4A86C8(), v485 = sub_188AA977C, (v486 & 1) != 0) || (v485 = sub_188D39390, v385 == 0xD000000000000021) && 0x800000018A6890A0 == v386)
    {
      v121 = v485;
    }

    else if (sub_18A4A86C8())
    {
      v121 = sub_188D39390;
    }

    else
    {
      v121 = 0;
    }

    v632 = swift_getObjectType();
    v487 = swift_allocObject();
    *(v487 + 16) = v121;
    *(v487 + 24) = 0;
    *(v487 + 32) = v384;
    *(v487 + 40) = v389;
    *(v487 + 44) = v391;
    *(v487 + 48) = v393;
    *(v487 + 52) = v484 == 2;
    v488 = v634;
    *(v487 + 56) = v634;
    v489 = v638;
    *(v487 + 64) = v385;
    *(v487 + 72) = v489;
    v490 = swift_allocObject();
    v491 = v385;
    v492 = v490;
    *(v490 + 16) = v384;
    *(v490 + 24) = v488;
    *(v490 + 32) = v491;
    *(v490 + 40) = v489;
    v493 = v384;
    v494 = *(v398 + 200);
    v495 = v493;
    swift_bridgeObjectRetain_n();
    v496 = v495;
    sub_188A52E38(v121, 0);
    v494(&v669, &v657, v633, v635, sub_188F0B4F4, v487, sub_188F0E0BC, v492, v632, v398);
LABEL_86:
    sub_188A55B8C(v121, 0);

    swift_unknownObjectRelease();

LABEL_87:

    return;
  }

  if (a9 == &type metadata for UIAnimatableRect)
  {
    v415 = *a6;
    v414 = a6[1];
    v417 = a6[2];
    v416 = a6[3];
    v418 = *a7;
    v419 = a7[1];
    v420 = a7[2];
    v421 = a7[3];
    *&v669 = *a6;
    *(&v669 + 1) = v414;
    *&v670 = v417;
    *(&v670 + 1) = v416;
    *&v657 = v418;
    *(&v657 + 1) = v419;
    *&v658 = v420;
    *(&v658 + 1) = v421;
    v422 = v636;
    v423 = v637;
    v424 = v638;
    v425 = v11;
    if ((a8 & 1) == 0)
    {
      if (qword_1ED48C638 != -1)
      {
        v632 = *&v418;
        v633 = *&v420;
        ObjectType = *&v414;
        swift_once();
        v414 = *&ObjectType;
        v418 = *&v632;
        v420 = *&v633;
      }

      if (vabdd_f64(v415, v418) <= *&xmmword_1ED4A3470 && vabdd_f64(v414, v419) <= *&xmmword_1ED4A3470 && vabdd_f64(v417, v420) <= *(&xmmword_1ED4A3470 + 1) && vabdd_f64(v416, v421) <= *(&xmmword_1ED4A3470 + 1))
      {
        return;
      }
    }

    [v11 preferredFrameRateRange];
    v427 = v426;
    v429 = v428;
    v431 = v430;
    if (![(UIView *)v422 __swiftAnimationInfo])
    {
      v432 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v433 = v422;
      v434 = sub_188A5DF40(v433, sub_188ABE008, v432);

      v424 = v638;
      [(UIView *)v433 set__swiftAnimationInfo:v434];
    }

    v435 = v634 & 1;
    sub_188A5EF10(v634 & 1, v423, v424);
    v437 = v436;

    v438 = [v635 context];
    if (v438)
    {

      v439 = 0;
      v440 = sub_188AB3830;
    }

    else
    {
      v530 = swift_allocObject();
      *(v530 + 16) = 1;
      v531 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v439 = swift_allocObject();
      v439[2] = v530;
      v439[3] = v531;
      v440 = sub_188F0E070;
    }

    v532 = v425[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v634 = v440;
    v635 = v439;
    if (v423 == 0xD000000000000020 && 0x800000018A689070 == v424 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v533 = v435;
    }

    else
    {
      v533 = v435;
      if (v423 != 0xD000000000000021 || 0x800000018A6890A0 != v424)
      {
        v534 = v437;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_255;
      }

      v121 = sub_188D39390;
    }

    v534 = v437;
LABEL_255:
    v633 = swift_getObjectType();
    v325 = swift_allocObject();
    *(v325 + 16) = v121;
    *(v325 + 24) = 0;
    v535 = v636;
    *(v325 + 32) = v636;
    *(v325 + 40) = v427;
    *(v325 + 44) = v429;
    *(v325 + 48) = v431;
    *(v325 + 52) = v532 == 2;
    v536 = v533;
    *(v325 + 56) = v533;
    v537 = v638;
    *(v325 + 64) = v423;
    *(v325 + 72) = v537;
    v538 = swift_allocObject();
    v539 = v423;
    v331 = v538;
    *(v538 + 16) = v535;
    *(v538 + 24) = v536;
    *(v538 + 32) = v539;
    *(v538 + 40) = v537;
    v540 = v535;
    v333 = *(v534 + 200);
    v541 = v540;
    swift_bridgeObjectRetain_n();
    v542 = v541;
    sub_188A52E38(v121, 0);
    v627 = v534;
    v625 = v633;
    v336 = sub_188F0DFFC;
    goto LABEL_146;
  }

  if (a9 == &type metadata for UIAnimatableNormalizedRect)
  {
    v454 = *a6;
    v453 = a6[1];
    v456 = a6[2];
    v455 = a6[3];
    v458 = *a7;
    v457 = a7[1];
    v460 = a7[2];
    v459 = a7[3];
    *&v669 = *a6;
    *(&v669 + 1) = v453;
    *&v670 = v456;
    *(&v670 + 1) = v455;
    *&v657 = v458;
    *(&v657 + 1) = v457;
    *&v658 = v460;
    *(&v658 + 1) = v459;
    if ((a8 & 1) == 0 && vabdd_f64(v454, v458) <= 0.001 && vabdd_f64(v453, v457) <= 0.001 && vabdd_f64(v456, v460) <= 0.001 && vabdd_f64(v455, v459) <= 0.001)
    {
      return;
    }

    v461 = v11;
    [v11 preferredFrameRateRange];
    v463 = v462;
    v465 = v464;
    v467 = v466;
    v468 = v636;
    v469 = [(UIView *)v636 __swiftAnimationInfo];
    v471 = v637;
    v470 = v638;
    if (!v469)
    {
      v472 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v473 = v468;
      v474 = sub_188A5DF40(v473, sub_188ABE008, v472);

      v475 = v473;
      v470 = v638;
      [(UIView *)v475 set__swiftAnimationInfo:v474];
    }

    v476 = v634 & 1;
    v634 = sub_188ECDE44(v634 & 1, v471, v470);
    v478 = v477;

    v479 = [v635 context];
    if (v479)
    {

      v480 = 0;
      v481 = sub_188AB3830;
    }

    else
    {
      v566 = swift_allocObject();
      *(v566 + 16) = 1;
      v567 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v480 = swift_allocObject();
      v480[2] = v566;
      v480[3] = v567;
      v481 = sub_188F0E070;
    }

    v568 = v461[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v635 = v480;
    v633 = v481;
    if (v471 == 0xD000000000000020 && 0x800000018A689070 == v470 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v569 = v476;
    }

    else
    {
      v569 = v476;
      if (v471 != 0xD000000000000021 || 0x800000018A6890A0 != v470)
      {
        v570 = v478;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_277;
      }

      v121 = sub_188D39390;
    }

    v570 = v478;
LABEL_277:
    v632 = swift_getObjectType();
    v371 = swift_allocObject();
    *(v371 + 16) = v121;
    *(v371 + 24) = 0;
    *(v371 + 32) = v468;
    *(v371 + 40) = v463;
    *(v371 + 44) = v465;
    *(v371 + 48) = v467;
    *(v371 + 52) = v568 == 2;
    v571 = v569;
    *(v371 + 56) = v569;
    v572 = v638;
    *(v371 + 64) = v471;
    *(v371 + 72) = v572;
    v573 = swift_allocObject();
    v574 = v471;
    v376 = v573;
    *(v573 + 16) = v468;
    *(v573 + 24) = v571;
    *(v573 + 32) = v574;
    *(v573 + 40) = v572;
    v575 = v468;
    v378 = *(v570 + 200);
    v576 = v575;
    swift_bridgeObjectRetain_n();
    v577 = v576;
    sub_188A52E38(v121, 0);
    v628 = v570;
    v626 = v632;
    v381 = sub_188F0B4F0;
    goto LABEL_213;
  }

  if (a9 == &type metadata for UIAnimatableTransform)
  {
    v497 = *(a6 + 7);
    v654 = *(a6 + 6);
    v655 = v497;
    v656 = *(a6 + 128);
    v498 = *(a6 + 3);
    v650 = *(a6 + 2);
    v651 = v498;
    v499 = *(a6 + 5);
    v652 = *(a6 + 4);
    v653 = v499;
    v500 = *(a6 + 1);
    v648 = *a6;
    v649 = v500;
    v501 = *(a7 + 7);
    v645 = *(a7 + 6);
    v646 = v501;
    v647 = *(a7 + 128);
    v502 = *(a7 + 3);
    v641 = *(a7 + 2);
    v642 = v502;
    v503 = *(a7 + 5);
    v643 = *(a7 + 4);
    v644 = v503;
    v504 = *(a7 + 1);
    v639 = *a7;
    v640 = v504;
    if ((a8 & 1) == 0)
    {
      v505 = objc_opt_self();
      v506 = +[(UIScreen *)v505];
      [v506 scale];
      v508 = v507;

      v663 = v645;
      v664 = v646;
      v665 = v647;
      v659 = v641;
      v660 = v642;
      v661 = v643;
      v662 = v644;
      v657 = v639;
      v658 = v640;
      v666 = xmmword_18A650B70;
      v667 = 1.0 / v508;
      v668 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v675 = v654;
      v676 = v655;
      v677 = v656;
      v671 = v650;
      v672 = v651;
      v673 = v652;
      v674 = v653;
      v669 = v648;
      v670 = v649;
      if (sub_189179CE0(&v657, &v666))
      {
        return;
      }
    }

    v509 = v11;
    [v11 preferredFrameRateRange];
    v511 = v510;
    v513 = v512;
    v515 = v514;
    v516 = v636;
    v517 = [(UIView *)v636 __swiftAnimationInfo];
    v518 = v638;
    if (!v517)
    {
      v519 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v520 = v516;
      v521 = sub_188A5DF40(v520, sub_188ABE008, v519);

      v522 = v520;
      v518 = v638;
      [(UIView *)v522 set__swiftAnimationInfo:v521];
    }

    v523 = v634 & 1;
    v524 = v637;
    v634 = sub_188A92230(v634 & 1, v637, v518);
    v526 = v525;

    v527 = [v635 context];
    if (v527)
    {

      v528 = 0;
      v529 = sub_188AB3830;
    }

    else
    {
      v597 = swift_allocObject();
      *(v597 + 16) = 1;
      v598 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v528 = swift_allocObject();
      v528[2] = v597;
      v528[3] = v598;
      v529 = sub_188F0E070;
    }

    v599 = v509[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v635 = v528;
    v633 = v529;
    if (v524 == 0xD000000000000020 && 0x800000018A689070 == v518 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v600 = v523;
    }

    else
    {
      v600 = v523;
      if (v524 != 0xD000000000000021 || 0x800000018A6890A0 != v518)
      {
        v601 = v526;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_301;
      }

      v121 = sub_188D39390;
    }

    v601 = v526;
LABEL_301:
    v632 = swift_getObjectType();
    v602 = swift_allocObject();
    *(v602 + 16) = v121;
    *(v602 + 24) = 0;
    *(v602 + 32) = v516;
    *(v602 + 40) = v511;
    *(v602 + 44) = v513;
    *(v602 + 48) = v515;
    *(v602 + 52) = v599 == 2;
    v603 = v600;
    *(v602 + 56) = v600;
    v604 = v638;
    *(v602 + 64) = v524;
    *(v602 + 72) = v604;
    v605 = swift_allocObject();
    v606 = v524;
    v607 = v605;
    *(v605 + 16) = v516;
    *(v605 + 24) = v603;
    *(v605 + 32) = v606;
    *(v605 + 40) = v604;
    v608 = v516;
    v609 = *(v601 + 200);
    v610 = v608;
    swift_bridgeObjectRetain_n();
    v611 = v610;
    sub_188A52E38(v121, 0);
    v609(&v648, &v639, v633, v635, sub_188F0B4EC, v602, sub_188F0E0BC, v607, v632, v601);
    goto LABEL_86;
  }

  if (a9 == &type metadata for UIAnimatablePoint)
  {
    v544 = *a6;
    v543 = a6[1];
    v546 = *a7;
    v545 = a7[1];
    *&v669 = *a6;
    *(&v669 + 1) = v543;
    *&v657 = v546;
    *(&v657 + 1) = v545;
    v547 = v636;
    v548 = v637;
    v549 = v638;
    v550 = v11;
    if ((a8 & 1) == 0)
    {
      if (qword_1ED48D080 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1ED4A3498;
      if (vabdd_f64(v544, v546) <= *&qword_1ED4A3498 && vabdd_f64(v543, v545) <= *&qword_1ED4A3498)
      {
        return;
      }
    }

    [v11 preferredFrameRateRange];
    v552 = v551;
    v554 = v553;
    v556 = v555;
    if (![(UIView *)v547 __swiftAnimationInfo])
    {
      v557 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v558 = v547;
      v559 = sub_188A5DF40(v558, sub_188ABE008, v557);

      v549 = v638;
      [(UIView *)v558 set__swiftAnimationInfo:v559];
    }

    v560 = v634 & 1;
    sub_188A5FF74(v634 & 1, v548, v549);
    v562 = v561;

    v563 = [v635 context];
    if (v563)
    {

      v564 = 0;
      v565 = sub_188AB3830;
    }

    else
    {
      v612 = swift_allocObject();
      *(v612 + 16) = 1;
      v613 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v564 = swift_allocObject();
      v564[2] = v612;
      v564[3] = v613;
      v565 = sub_188F0E070;
    }

    v614 = v550[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v634 = v565;
    v635 = v564;
    if (v548 == 0xD000000000000020 && 0x800000018A689070 == v549 || (sub_18A4A86C8() & 1) != 0)
    {
      v121 = sub_188AA977C;
      v615 = v560;
    }

    else
    {
      v615 = v560;
      if (v548 != 0xD000000000000021 || 0x800000018A6890A0 != v549)
      {
        v616 = v562;
        if (sub_18A4A86C8())
        {
          v121 = sub_188D39390;
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_308;
      }

      v121 = sub_188D39390;
    }

    v616 = v562;
LABEL_308:
    v633 = swift_getObjectType();
    v325 = swift_allocObject();
    *(v325 + 16) = v121;
    *(v325 + 24) = 0;
    v617 = v636;
    *(v325 + 32) = v636;
    *(v325 + 40) = v552;
    *(v325 + 44) = v554;
    *(v325 + 48) = v556;
    *(v325 + 52) = v614 == 2;
    v618 = v615;
    *(v325 + 56) = v615;
    v619 = v638;
    *(v325 + 64) = v548;
    *(v325 + 72) = v619;
    v620 = swift_allocObject();
    v621 = v548;
    v331 = v620;
    *(v620 + 16) = v617;
    *(v620 + 24) = v618;
    *(v620 + 32) = v621;
    *(v620 + 40) = v619;
    v622 = v617;
    v333 = *(v616 + 200);
    v623 = v622;
    swift_bridgeObjectRetain_n();
    v624 = v623;
    sub_188A52E38(v121, 0);
    v627 = v616;
    v625 = v633;
    v336 = sub_188F0E000;
    goto LABEL_146;
  }

  if ((a8 & 1) != 0 || ((*(a10 + 24))(a9, a10, v17), v20 = (*(a10 + 48))(a7, v19, a9, a10), (*(v16 + 8))(v19, AssociatedTypeWitness), (v20 & 1) == 0))
  {
    [v11 preferredFrameRateRange];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    if (![(UIView *)v636 __swiftAnimationInfo])
    {
      v27 = swift_allocObject();
      v28 = v636;
      swift_unknownObjectWeakInit();
      _s13AnimationInfoCMa();
      swift_allocObject();
      v29 = v28;
      v30 = sub_188A5DF40(v29, sub_188ABE008, v27);

      [(UIView *)v29 set__swiftAnimationInfo:v30];
    }

    LODWORD(v632) = v634 & 1;
    v634 = sub_188D48B28(v632, v637, v638, a9, a9, a10);
    v32 = v31;

    v33 = [v635 context];
    if (v33)
    {

      v635 = 0;
      v34 = sub_188AB3830;
    }

    else
    {
      v578 = swift_allocObject();
      *(v578 + 16) = 1;
      v579 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v580 = swift_allocObject();
      v580[2] = v578;
      v580[3] = v579;
      v635 = v580;
      v34 = sub_188F0E070;
    }

    ObjectType = v34;
    v581 = v11[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_updateType];
    v582 = sub_188AA977C;
    v633 = v32;
    if (v637 == 0xD000000000000020 && 0x800000018A689070 == v638 || (v583 = v637, v584 = sub_18A4A86C8(), v582 = sub_188AA977C, (v584 & 1) != 0) || (v582 = sub_188D39390, v583 == 0xD000000000000021) && 0x800000018A6890A0 == v638)
    {
      v585 = v582;
    }

    else if (sub_18A4A86C8())
    {
      v585 = sub_188D39390;
    }

    else
    {
      v585 = 0;
    }

    v629 = v585;
    v586 = v581 == 2;
    v630 = swift_getObjectType();
    v587 = swift_allocObject();
    *(v587 + 16) = a9;
    *(v587 + 24) = a10;
    *(v587 + 32) = v585;
    *(v587 + 40) = 0;
    v588 = v636;
    *(v587 + 48) = v636;
    *(v587 + 56) = v22;
    *(v587 + 60) = v24;
    *(v587 + 64) = v26;
    *(v587 + 68) = v586;
    v589 = v632;
    *(v587 + 72) = v632;
    v590 = v637;
    v591 = v638;
    *(v587 + 80) = v637;
    *(v587 + 88) = v591;
    v592 = swift_allocObject();
    *(v592 + 16) = v588;
    *(v592 + 24) = v589;
    *(v592 + 32) = v590;
    *(v592 + 40) = v591;
    v593 = v633;
    v637 = *(v633 + 200);
    v594 = v588;
    swift_bridgeObjectRetain_n();
    v595 = v594;
    v596 = v629;
    sub_188A52E38(v629, 0);
    v637(a6, a7, ObjectType, v635, sub_188F0B4A4, v587, sub_188F0E0BC, v592, v630, v593);
    sub_188A55B8C(v596, 0);

    swift_unknownObjectRelease();

    goto LABEL_87;
  }
}