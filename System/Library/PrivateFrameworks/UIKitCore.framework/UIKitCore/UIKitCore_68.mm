void sub_189185B68(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_12;
  }

  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v1 + 8);
  if (v5 != v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_188E498AC(*(v1 + 8), v3);
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
LABEL_9:
        *(v1 + 8) = v7;
        v9 = *(v1 + 16);
        v8 = *(v1 + 24);
        v10 = *(v9 + 16);
        if (v8 == v10)
        {

          goto LABEL_11;
        }

        if (v8 < v10)
        {
          v16 = (v9 + 160 * v8);
          v17 = v16[3];
          v29 = v16[2];
          v30 = v17;
          v18 = v16[4];
          v19 = v16[5];
          v20 = v16[7];
          v33 = v16[6];
          v34 = v20;
          v31 = v18;
          v32 = v19;
          v21 = v16[8];
          v22 = v16[9];
          v23 = v16[11];
          v37 = v16[10];
          v38 = v23;
          v35 = v21;
          v36 = v22;
          *(v1 + 24) = v8 + 1;
          *a1 = v6;
          v24 = v29;
          *(a1 + 24) = v30;
          *(a1 + 8) = v24;
          v25 = v33;
          *(a1 + 88) = v34;
          *(a1 + 72) = v25;
          v26 = v31;
          *(a1 + 56) = v32;
          *(a1 + 40) = v26;
          v27 = v37;
          *(a1 + 152) = v38;
          *(a1 + 136) = v27;
          v28 = v35;
          *(a1 + 120) = v36;
          *(a1 + 104) = v28;
          signpost_c2_entryLock_start();
          sub_188C464C4(&v29, v40);
          return;
        }

LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  *(v1 + 32) = 1;
LABEL_12:
  sub_189194CC4(&v29);
  v11 = v38;
  *(a1 + 128) = v37;
  *(a1 + 144) = v11;
  *(a1 + 160) = v39;
  v12 = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v12;
  v13 = v36;
  *(a1 + 96) = v35;
  *(a1 + 112) = v13;
  v14 = v30;
  *a1 = v29;
  *(a1 + 16) = v14;
  v15 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v15;
}

void sub_189185D18()
{
  v1 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties);
  v2 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
  if (v2 == 1)
  {
    v3 = v0 + OBJC_IVAR____UINavigationBarPlatterView_platter;
    swift_beginAccess();
    v4 = *(v3 + 168);
    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = v5;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
    if ((v1 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 16);
    v5 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8);
  }

  if (*(v0 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) != 2)
  {
    v26 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_contentView);
    v27 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
    v28 = *(v26 + OBJC_IVAR____UINavigationBarPlatterContentView_glassView);
    sub_189194E20(v1, v2);
    [v28 setClipsToBounds_];
    v29 = *(v26 + v27);
    *(&v40 + 1) = &_s15PlatterMaterialVN;
    v41 = &off_1EFAD7FB8;
    *&v39 = v6;
    *(&v39 + 1) = v5;
    v30 = v5;
    v31 = v29;
    UIView._background.setter(&v39);

    v32 = *(v26 + v27);
    v33 = [(UIView *)v32 _traitOverrides];
    v34 = [(_UITraitOverrides *)v33 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *&v39 = inited;
    sub_1890B3080(1);
    v36 = v39;
    v37 = [(UIView *)v32 _traitOverrides];
    v38 = *(v36 + 16);

    [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

    return;
  }

LABEL_7:
  v8 = *(v0 + OBJC_IVAR____UINavigationBarPlatterView_contentView);
  v9 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  v10 = *(v8 + OBJC_IVAR____UINavigationBarPlatterContentView_glassView);
  sub_189194E20(v1, v2);
  [v10 setClipsToBounds_];
  v11 = *(v8 + v9);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v12 = v11;
  UIView._background.setter(&v39);

  v13 = *(v8 + v9);
  v14 = [(UIView *)v13 _traitOverrides];
  v15 = [(_UITraitOverrides *)v14 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  v16 = swift_initStackObject();
  *(v16 + 16) = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v16 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = [(_UITraitOverrides *)*(v16 + 16) _swiftImplCopy];
    v19 = swift_allocObject();
    *(v19 + 16) = v18;

    v16 = v19;
  }

  v20 = qword_1ED491B40;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v22 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v23 = sub_18901C418(&type metadata for UIContainedInBarMaterialTraitDefinition, 0, 0);
  os_unfair_lock_unlock(v22[2]);
  [(_UITraitOverrides *)v21 _removeTraitToken:v23];

  swift_unknownObjectRelease();
  v24 = [(UIView *)v13 _traitOverrides];
  v25 = *(v16 + 16);

  [(_UITraitOverrides *)v24 _replaceWithOverrides:v25];
}

void sub_189186104(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_18A4A4A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____UINavigationBarPlatterView_transitionPhase;
  if (*(v2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) != a1)
  {
    sub_189185D18();
    v12 = *(v2 + OBJC_IVAR____UINavigationBarPlatterView_contentView);
    if (*(v2 + v11))
    {
      sub_188E5A020();
      (*(v5 + 16))(v7, &v10[*(v8 + 20)], v4);
      sub_189195250(v10, type metadata accessor for NavigationBarPlatterContainer.Settings);
      sub_18A4A4A68();
      (*(v5 + 8))(v7, v4);
    }

    sub_18918630C();
    if (*(v2 + v11))
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }

    [*(v12 + OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer) setAlpha_];
    [*(v12 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer) setAlpha_];
  }
}

void sub_18918630C()
{
  v1 = [*(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer) layer];
  v2 = sub_18A4A2D28();
  v3 = sub_18A4A7258();
  [v1 setValue:v2 forKeyPath:v3];

  v4 = [*(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer) layer];
  v5 = sub_18A4A2D28();
  v6 = sub_18A4A7258();
  [v4 setValue:v5 forKeyPath:v6];
}

void sub_189186438(double *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_18A4A29D8();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____UINavigationBarPlatterView_translationKick;
  _s11PlatterViewC13AnimationViewCMa();
  v8 = v7;
  v9 = objc_allocWithZone(v7);
  v10 = &v9[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v10 = 0x74616C736E617274;
  *(v10 + 1) = 0xEB000000006E6F69;
  v65.receiver = v9;
  v65.super_class = v8;
  v11 = objc_msgSendSuper2(&v65, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v11 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v6] = v11;
  v12 = OBJC_IVAR____UINavigationBarPlatterView_scaleOffset;
  v13 = objc_allocWithZone(v8);
  v14 = &v13[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v14 = 0x66664F656C616373;
  *(v14 + 1) = 0xEB00000000746573;
  v64.receiver = v13;
  v64.super_class = v8;
  v15 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v15 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v12] = v15;
  v16 = OBJC_IVAR____UINavigationBarPlatterView_transformViewA;
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v18 = 0x726F66736E617274;
  *(v18 + 1) = 0xEA0000000000416DLL;
  v63.receiver = v17;
  v63.super_class = v8;
  v19 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v19 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v16] = v19;
  v20 = OBJC_IVAR____UINavigationBarPlatterView_transformViewB;
  v21 = objc_allocWithZone(v8);
  v22 = &v21[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v22 = 0x726F66736E617274;
  *(v22 + 1) = 0xEA0000000000426DLL;
  v62.receiver = v21;
  v62.super_class = v8;
  v23 = objc_msgSendSuper2(&v62, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v23 _setIgnoresLayerTransformForSafeAreaInsets_];
  *&v2[v20] = v23;
  v24 = OBJC_IVAR____UINavigationBarPlatterView_contentView;
  _s11PlatterViewC18PlatterContentViewCMa();
  *&v2[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____UINavigationBarPlatterView_scalePulseScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = MEMORY[0x1E69E7CC0];
  *(v26 + 24) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *&v2[v25] = v26;
  v28 = OBJC_IVAR____UINavigationBarPlatterView_translationKickScheduler;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = sub_188E8D690(v27);
  *&v2[v28] = v29;
  v30 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = sub_188E8D690(v27);
  *&v2[v30] = v31;
  v2[OBJC_IVAR____UINavigationBarPlatterView_mode] = 0;
  *(v31 + 24) = v32;
  v33 = &v2[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  *v33 = xmmword_18A64C520;
  *(v33 + 2) = 0;
  v2[OBJC_IVAR____UINavigationBarPlatterView_transitionPhase] = 0;
  v34 = &v2[OBJC_IVAR____UINavigationBarPlatterView_pointerAssistantID];
  aBlock = 0;
  v56 = 0xE000000000000000;
  sub_18A4A80E8();

  aBlock = 0xD00000000000002DLL;
  v56 = 0x800000018A6AE4F0;
  v35 = v51;
  sub_18A4A29C8();
  v36 = sub_18A4A2988();
  v38 = v37;
  (*(v52 + 8))(v35, v53);
  MEMORY[0x18CFE22D0](v36, v38);

  v39 = v56;
  *v34 = aBlock;
  v34[1] = v39;
  sub_188C46270(a1, &v2[OBJC_IVAR____UINavigationBarPlatterView_id]);
  sub_188C45F1C(a1, &v2[OBJC_IVAR____UINavigationBarPlatterView_platter]);
  v40 = a1[5];
  v41 = a1[6];
  v42 = a1[7];
  v43 = a1[8];
  v61.receiver = v2;
  v61.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v61, sel_initWithFrame_, v40, v41, v42, v43);
  v45 = objc_opt_self();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_189195178;
  *(v47 + 24) = v46;
  v59 = sub_188E3FE50;
  v60 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_188A4A968;
  v58 = &block_descriptor_662;
  v48 = _Block_copy(&aBlock);
  v49 = v44;

  [v45 performWithoutAnimation_];
  _Block_release(v48);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  else
  {
    sub_18918584C(a1);

    sub_188C460F0(a1);
  }
}

void sub_1891869DC(char *a1)
{
  v2 = sub_18A4A4B78();
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for NavigationBarPlatterContainer.Settings(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_translationKick];
  v46 = a1;
  [a1 addSubview_];
  v15 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_scaleOffset];
  [v14 addSubview_];
  v16 = v15;
  v44 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_transformViewA];
  v17 = v44;
  [v16 addSubview_];
  v18 = *&a1[OBJC_IVAR____UINavigationBarPlatterView_transformViewB];
  v45 = v18;
  [v17 addSubview_];
  [v18 addSubview_];
  sub_188E5A020();
  v41 = v8;
  v19 = *(v8 + 32);
  v20 = v43;
  v40 = *(v43 + 2);
  v40(v7, &v13[v19], v2);
  v42 = type metadata accessor for NavigationBarPlatterContainer.Settings;
  sub_189195250(v13, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A98();
  v22 = sqrt(v21);
  sub_18A4A4A98();
  v23 = *(v20 + 1);
  v23(v7, v2);
  v43 = v23;
  v24 = v47;
  sub_188E5A020();
  v25 = v40;
  v40(v4, (v24 + *(v8 + 32)), v2);
  sub_189195250(v24, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A98();
  sub_18A4A4A98();
  v27 = sqrt(v26);
  v23(v4, v2);
  CATransform3DMakeScale(&v48, v22, v27, 1.0);
  [v44 setTransform3D_];
  sub_188E5A020();
  v28 = v41;
  v25(v7, &v13[*(v41 + 32)], v2);
  v29 = v25;
  v30 = v42;
  sub_189195250(v13, v42);
  sub_18A4A4A98();
  v32 = sqrt(v31);
  sub_18A4A4A98();
  v33 = v7;
  v34 = v2;
  v35 = v43;
  v43(v33, v2);
  v36 = v47;
  sub_188E5A020();
  v29(v4, v36 + *(v28 + 32), v34);
  sub_189195250(v36, v30);
  sub_18A4A4A98();
  sub_18A4A4A98();
  v38 = sqrt(v37);
  v35(v4, v34);
  CATransform3DMakeScale(&v48, 1.0 / v32, 1.0 / v38, 1.0);
  [v45 setTransform3D_];
  sub_189186E20();
}

id sub_189186E20()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_translationKick];
  v45.receiver = v0;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, sel_bounds);
  [v2 setBounds_];
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_bounds);
  MidX = CGRectGetMidX(v46);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_bounds);
  [v2 setCenter_];
  v4 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_scaleOffset];
  v42.receiver = v0;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_bounds);
  [v4 setBounds_];
  v41.receiver = v0;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_bounds);
  v5 = CGRectGetMidX(v48);
  v40.receiver = v0;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_bounds);
  [v4 setCenter_];
  v6 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_transformViewA];
  v39.receiver = v0;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_bounds);
  [v6 setBounds_];
  v38.receiver = v0;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_bounds);
  v7 = CGRectGetMidX(v50);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_bounds);
  [v6 setCenter_];
  v8 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_transformViewB];
  v36.receiver = v0;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_bounds);
  [v8 setBounds_];
  v35.receiver = v0;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_bounds);
  v9 = CGRectGetMidX(v52);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_bounds);
  [v8 setCenter_];
  v10 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_contentView];
  v11 = &v0[OBJC_IVAR____UINavigationBarPlatterView_platter];
  swift_beginAccess();
  [v10 setBounds_];
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, sel_bounds);
  v12 = CGRectGetMidX(v54);
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, sel_bounds);
  [v10 setCenter_];
  [v10 bounds];
  v14 = v13;
  v16 = v15;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_bounds);
  if (v14 == v18 && v16 == v17 || (v30.receiver = v0, v30.super_class = ObjectType, objc_msgSendSuper2(&v30, sel_bounds), CGRectGetWidth(v56) <= 0.0) || (v28.receiver = v0, v28.super_class = ObjectType, objc_msgSendSuper2(&v28, sel_bounds), CGRectGetHeight(v57) <= 0.0) || ([v10 bounds], CGRectGetWidth(v58) <= 0.0) || (objc_msgSend(v10, sel_bounds), CGRectGetHeight(v59) <= 0.0))
  {
    v29.a = 1.0;
    v29.b = 0.0;
    v29.c = 0.0;
    v29.d = 1.0;
    v29.tx = 0.0;
    v29.ty = 0.0;
    return [v10 setTransform_];
  }

  else
  {
    v27.receiver = v0;
    v27.super_class = ObjectType;
    objc_msgSendSuper2(&v27, sel_bounds);
    Width = CGRectGetWidth(v60);
    [v10 bounds];
    v20 = Width / CGRectGetWidth(v61);
    if (v20 > 0.5)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.5;
    }

    v26.receiver = v0;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, sel_bounds);
    Height = CGRectGetHeight(v62);
    [v10 bounds];
    v23 = Height / CGRectGetHeight(v63);
    if (v23 > 0.5)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.5;
    }

    CGAffineTransformMakeScale(&v29, v21, v24);
    return [v10 setTransform_];
  }
}

uint64_t sub_189187294()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties];
  v4 = *&v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8];
  if (v4 == 1)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v7 = *(v3 + 2);
    LOBYTE(v21) = *v3 & 1;
    *(&v21 + 1) = v4;
    *&v22 = v7;
    v8 = v4;
    v6 = sub_18A4A72F8();
    v5 = v9;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_18A4A80E8();

  v30 = 60;
  v31 = 0xE100000000000000;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v29, sel_description);
  v11 = sub_18A4A7288();
  v13 = v12;

  MEMORY[0x18CFE22D0](v11, v13);

  MEMORY[0x18CFE22D0](0x72676B636162203BLL, 0xEE00203A646E756FLL);
  v14 = *(*&v1[OBJC_IVAR____UINavigationBarPlatterView_contentView] + OBJC_IVAR____UINavigationBarPlatterContentView_glassView);
  v15 = [(UIView *)v14 _typedStorage];
  sub_188A6852C(&v21);

  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v26;
  v20[0] = v21;
  v20[1] = v22;
  if (*(&v22 + 1))
  {
    sub_188A53994(v20, v27);
    sub_188ACE668(v20);
  }

  else
  {
    sub_188A3F5FC(v20, &unk_1EA933EC0, &qword_18A65E090);
    memset(v27, 0, sizeof(v27));
    v28 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9A0, qword_18A6513A0);
  v16 = sub_18A4A72F8();
  MEMORY[0x18CFE22D0](v16);

  MEMORY[0x18CFE22D0](0x69727265766F203BLL, 0xEC000000203A6564);
  MEMORY[0x18CFE22D0](v6, v5);

  MEMORY[0x18CFE22D0](0x436D657469203B3ELL, 0xEE00203A746E756FLL);
  v17 = &v1[OBJC_IVAR____UINavigationBarPlatterView_platter];
  swift_beginAccess();
  *&v20[0] = *(*(v17 + 18) + 16);
  v18 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v18);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return v30;
}

void sub_18918766C()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties + 8] == 1)
  {
    v2 = &v0[OBJC_IVAR____UINavigationBarPlatterView_platter];
    swift_beginAccess();
    v3 = 0.0;
    if ((v2[168] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0.0;
    if ((*&v0[OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_bounds);
  Width = CGRectGetWidth(v11);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_bounds);
  Height = CGRectGetHeight(v12);
  if (Height >= Width)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  v7 = Height * 0.5;
  if (v7 >= v6)
  {
    v3 = v6;
  }

  else
  {
    v3 = v7;
  }

LABEL_11:
  v8 = [*(*&v0[OBJC_IVAR____UINavigationBarPlatterView_contentView] + OBJC_IVAR____UINavigationBarPlatterContentView_glassView) layer];
  [v8 setCornerRadius_];
}

void sub_18918778C(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
  if (a1)
  {
    v9 = objc_opt_self();
    sub_188C45F1C(a2, &v52);
    v10 = swift_allocObject();
    v11 = v61;
    *(v10 + 144) = v60;
    *(v10 + 160) = v11;
    v12 = v63;
    *(v10 + 176) = v62;
    *(v10 + 192) = v12;
    v13 = v57;
    *(v10 + 80) = v56;
    *(v10 + 96) = v13;
    v14 = v59;
    *(v10 + 112) = v58;
    *(v10 + 128) = v14;
    v15 = v53;
    *(v10 + 16) = v52;
    *(v10 + 32) = v15;
    v16 = v55;
    *(v10 + 48) = v54;
    *(v10 + 64) = v16;
    *(v10 + 208) = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_189194DA0;
    *(v17 + 24) = v10;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_370_0;
    v18 = _Block_copy(aBlock);
    v19 = a3;

    [v9 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      goto LABEL_7;
    }

    v42 = sub_189194DA0;
    v8 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
  }

  else
  {
    v42 = 0;
    v10 = 0;
  }

  sub_188C45F1C(a2, &v52);
  v20 = swift_allocObject();
  v21 = v61;
  *(v20 + 152) = v60;
  *(v20 + 168) = v21;
  v22 = v63;
  *(v20 + 184) = v62;
  *(v20 + 200) = v22;
  v23 = v57;
  *(v20 + 88) = v56;
  *(v20 + 104) = v23;
  v24 = v59;
  *(v20 + 120) = v58;
  *(v20 + 136) = v24;
  v25 = v53;
  *(v20 + 24) = v52;
  *(v20 + 40) = v25;
  v26 = v55;
  *(v20 + 56) = v54;
  *(v20 + 16) = a1 & 1;
  *(v20 + 72) = v26;
  *(v20 + 216) = a3;
  sub_188C3DF9C(a4 + 16, aBlock);
  sub_188C3DF9C(a4 + 16, v49);
  v27 = swift_allocObject();
  v28 = v49[3];
  *(v27 + 48) = v49[2];
  *(v27 + 64) = v28;
  *(v27 + 80) = *v50;
  *(v27 + 89) = *&v50[9];
  v29 = v49[1];
  *(v27 + 16) = v49[0];
  *(v27 + 32) = v29;
  *(v27 + 112) = signpost_c2_entryLock_start;
  *(v27 + 120) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  v31[3] = 0;
  v31[4] = 0;
  v31[2] = v30;
  v41 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_189194D90;
  *(v32 + 24) = v20;
  *&v46 = sub_188E3FE50;
  *(&v46 + 1) = v32;
  *&v44 = MEMORY[0x1E69E9820];
  *(&v44 + 1) = v8[308];
  v33 = *(&v44 + 1);
  *&v45 = sub_188A4A968;
  *(&v45 + 1) = &block_descriptor_350;
  v34 = _Block_copy(&v44);
  v35 = a3;

  sub_188C3DFF8(aBlock, &v44);
  v36 = swift_allocObject();
  v37 = v47;
  *(v36 + 56) = v46;
  *(v36 + 72) = v37;
  *(v36 + 88) = *v48;
  *(v36 + 97) = *&v48[9];
  v38 = v45;
  *(v36 + 24) = v44;
  *(v36 + 16) = v30;
  *(v36 + 40) = v38;
  *(v36 + 113) = 0;
  *(v36 + 120) = sub_188E5C7FC;
  *(v36 + 128) = v27;
  v43[4] = sub_1891953A4;
  v43[5] = v36;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = v33;
  v43[2] = sub_188A4A8F0;
  v43[3] = &block_descriptor_357;
  v39 = _Block_copy(v43);

  *&v46 = sub_188E5C82C;
  *(&v46 + 1) = v31;
  *&v44 = MEMORY[0x1E69E9820];
  *(&v44 + 1) = v33;
  *&v45 = sub_188ABD010;
  *(&v45 + 1) = &block_descriptor_360_0;
  v40 = _Block_copy(&v44);

  [v41 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v40);
  _Block_release(v39);
  _Block_release(v34);

  sub_188C3E234(aBlock);

  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  sub_188A55B8C(v42, v10);
  if ((v40 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

uint64_t sub_189187DD8(double *a1, id a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[10];
  [a2 bounds];
  v9 = v8;
  v11 = v10;
  [a2 bounds];
  v34.origin.x = v12;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v5;
  v31.size.height = v6;
  if (!CGRectEqualToRect(v31, v34))
  {
    [a2 setBounds_];
  }

  v32.origin.x = v3;
  v32.origin.y = v4;
  v32.size.width = v5;
  v32.size.height = v6;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v3;
  v33.origin.y = v4;
  v33.size.width = v5;
  v33.size.height = v6;
  MidY = CGRectGetMidY(v33);
  [a2 center];
  if (MidX != v19 || MidY != v18)
  {
    [a2 setCenter_];
  }

  CGAffineTransformMakeScale(&v30, v7, v7);
  v24 = *&v30.a;
  v25 = *&v30.c;
  v29 = v30;
  tx = v30.tx;
  ty = v30.ty;
  [a2 transform];
  result = sub_18A4A7A08();
  if ((result & 1) == 0)
  {
    v26[0] = v24;
    v26[1] = v25;
    v27 = tx;
    v28 = ty;
    return [a2 setTransform_];
  }

  return result;
}

void sub_189187F74(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    sub_188FE53B8(a3, 0);
  }

  v4 = *(a3 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(a3 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v4);
  sub_189185D18();
  sub_18918766C();
}

void sub_189187FE4(uint64_t a1, unint64_t a2, int a3, void *a4, double a5)
{
  LODWORD(v291) = a3;
  v302 = a1;
  v278 = sub_18A4A5FA8();
  v273 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v277 = v272 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v276 = v272 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v285 = v272 - v13;
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  v288 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v283 = v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v279 = v272 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v280 = v272 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v272 - v21;
  v281 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v292 = v272 - v25;
  v275 = OBJC_IVAR____UINavigationBarPlatterContentView_itemViews;
  v26 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____UINavigationBarPlatterContentView_itemViews);

  v282 = MEMORY[0x1E69E7CC0];
  v27 = sub_188E8D7C0(MEMORY[0x1E69E7CC0]);
  if (v26 >> 62)
  {
    goto LABEL_209;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v293 = v22;
  v300 = a2;
  v289 = a4;
  v305 = isEscapingClosureAtFileLocation;
  if (!v28)
  {
LABEL_25:

    v369 = v27;
    v368 = MEMORY[0x1E69E7CC0];
    v45 = *(v302 + 144);
    v46 = v45[2];
    v298 = v45;
    if (!v46)
    {
LABEL_129:

      v272[0] = v27;
      sub_188F94140(v113);
      v115 = v114;
      if ((v114 & 0xC000000000000001) != 0)
      {
        if (v114 < 0)
        {
          isEscapingClosureAtFileLocation = v114;
        }

        else
        {
          isEscapingClosureAtFileLocation = v114 & 0xFFFFFFFFFFFFFF8;
        }

        v116 = sub_18A4A7F68();
        v115 = sub_188E72EFC(isEscapingClosureAtFileLocation, v116);
      }

      v117 = sub_189190EC8(v282, v115);
      v118 = v117;
      if ((v117 & 0xC000000000000001) != 0)
      {
        isEscapingClosureAtFileLocation = sub_18A4A7F18();
        type metadata accessor for PlatterItemView();
        v26 = v119;
        sub_1891952B0(&qword_1EA931380, type metadata accessor for PlatterItemView, MEMORY[0x1E69E81B8]);
        sub_18A4A77D8();
        v118 = v370;
        a2 = v371;
        v120 = v372;
        v27 = v373;
        a4 = v374;
      }

      else
      {
        v27 = 0;
        v121 = -1 << *(v117 + 32);
        a2 = v117 + 56;
        v120 = ~v121;
        v122 = -v121;
        if (v122 < 64)
        {
          v123 = ~(-1 << v122);
        }

        else
        {
          v123 = -1;
        }

        a4 = (v123 & *(v117 + 56));
      }

      v297 = v120;
      v22 = (v120 + 64) >> 6;
      v286 = v281 + 7;
      LODWORD(v287) = v291 & 1;
      v303 = a2;
      v301 = v22;
      v299 = v118;
      while (1)
      {
        if (v118 < 0)
        {
          v128 = sub_18A4A7FB8();
          if (!v128)
          {
            goto LABEL_170;
          }

          *&v327 = v128;
          type metadata accessor for PlatterItemView();
          swift_dynamicCast();
          v26 = v337;
          v126 = v27;
          v127 = a4;
          if (!v337)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v124 = v27;
          v125 = a4;
          v126 = v27;
          if (!a4)
          {
            do
            {
              v126 = v124 + 1;
              if (__OFADD__(v124, 1))
              {
                goto LABEL_197;
              }

              if (v126 >= v22)
              {
                goto LABEL_170;
              }

              v125 = *(a2 + 8 * v126);
              ++v124;
            }

            while (!v125);
          }

          v127 = ((v125 - 1) & v125);
          v26 = *(*(v118 + 48) + ((v126 << 9) | (8 * __clz(__rbit64(v125)))));
          if (!v26)
          {
LABEL_170:
            sub_188E036A4(v118);
            v363 = v282;
            v364 = 0;
            v365 = v45;
            v366 = 0;
            v367 = 0;
            v296 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;

            sub_189185B68(v351);
            isEscapingClosureAtFileLocation = v351;
            v360 = *&v351[128];
            v361 = *&v351[144];
            v362 = *&v351[160];
            v356 = *&v351[64];
            v357 = *&v351[80];
            v359 = *&v351[112];
            v358 = *&v351[96];
            v352 = *v351;
            v353 = *&v351[16];
            v355 = *&v351[48];
            v354 = *&v351[32];
            enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0 = get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v352);
            v298 = 0;
            v299 = 0;
            v290 = 0;
            v291 = 0;
            a4 = v300;
            if (enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0 == 1)
            {
LABEL_171:

              v344 = *&v351[128];
              v345 = *&v351[144];
              *&v346 = *&v351[160];
              v341[0] = *&v351[64];
              v341[1] = *&v351[80];
              v343 = *&v351[112];
              v342 = *&v351[96];
              v337 = *v351;
              v338 = *&v351[16];
              v340 = *&v351[48];
              v339 = *&v351[32];
              sub_188A3F5FC(&v337, &qword_1EA93F038, &qword_18A66CF80);
              *&v305[v275] = v282;

              sub_188A55B8C(v299, v298);
              sub_188A55B8C(v291, v290);
              return;
            }

            v166 = 0;
            v290 = 0;
            v291 = 0;
            v298 = 0;
            v299 = 0;
            v284 = &v322;
            v297 = &v338;
            v167 = v273;
            v273 += 2;
            v274 = (v167 + 1);
            v272[1] = v307;
            v272[2] = &v309;
            while (!__OFADD__(v166, 1))
            {
              v349[4] = *&v351[80];
              v349[3] = *&v351[64];
              *&v350[48] = *&v351[160];
              *&v350[32] = *&v351[144];
              *&v350[16] = *&v351[128];
              v349[5] = *&v351[96];
              *v350 = *&v351[112];
              v348 = *v351;
              v349[0] = *&v351[16];
              v349[2] = *&v351[48];
              v349[1] = *&v351[32];
              v174 = *v351;
              v27 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;

              sub_1891948E8(&v348, &v337);
              sub_188E56D00();

              v175 = [v174 superview];
              if (v175)
              {
                v176 = *&v305[v296];
                v177 = v175;

                v22 = v177 == v176;
              }

              else
              {
                v22 = 0;
              }

              sub_188C45F1C(v302, &v337);
              v178 = swift_allocObject();
              *(v178 + 120) = *&v351[104];
              *(v178 + 136) = *&v351[120];
              *(v178 + 152) = *&v351[136];
              *(v178 + 168) = *&v351[152];
              *(v178 + 56) = *&v351[40];
              *(v178 + 72) = *&v351[56];
              *(v178 + 88) = *&v351[72];
              *(v178 + 104) = *&v351[88];
              *(v178 + 24) = *&v351[8];
              *(v178 + 40) = *&v351[24];
              v179 = v344;
              v180 = v346;
              v181 = v347;
              *(v178 + 328) = v345;
              *(v178 + 344) = v180;
              *(v178 + 360) = v181;
              v182 = v341[1];
              *(v178 + 248) = v341[0];
              v183 = v342;
              v184 = v343;
              *(v178 + 264) = v182;
              *(v178 + 280) = v183;
              *(v178 + 296) = v184;
              *(v178 + 312) = v179;
              v185 = v338;
              *(v178 + 184) = v337;
              *(v178 + 200) = v185;
              v186 = v340;
              *(v178 + 216) = v339;
              *(v178 + 16) = v174;
              *(v178 + 232) = v186;
              *(v178 + 376) = v305;
              *(v178 + 384) = v166;
              v303 = v166;
              v304 = v174;
              v301 = v178;
              if (a4 && v22)
              {
                v187 = *&v174[v27];
                v188 = swift_allocObject();
                *(v188 + 2) = a4;
                *(v188 + 3) = sub_189194958;
                *(v188 + 4) = v178;
                v189 = a4;
                v190 = v174;
                v191 = *(v187 + 16);
                *(v187 + 16) = v191 + 1;
                if (a5 == 0.0)
                {
                  v192 = swift_allocObject();
                  v192[2] = sub_189194958;
                  v192[3] = v178;
                  v193 = v192;
                  v294 = v192;
                  sub_188C3DF9C((v189 + 2), &v327);
                  sub_188C3DF9C((v189 + 2), &v316);
                  v194 = swift_allocObject();
                  v295 = v188;
                  v26 = v189;
                  v195 = v194;
                  v196 = v319;
                  *(v194 + 48) = v318;
                  *(v194 + 64) = v196;
                  *(v194 + 80) = v320[0];
                  *(v194 + 89) = *(v320 + 9);
                  v197 = v317;
                  *(v194 + 16) = v316;
                  *(v194 + 32) = v197;
                  *(v194 + 112) = signpost_c2_entryLock_start;
                  *(v194 + 120) = 0;
                  a2 = swift_allocObject();
                  *(a2 + 16) = 0;
                  v22 = swift_allocObject();
                  *(v22 + 24) = 0;
                  *(v22 + 32) = 0;
                  *(v22 + 16) = a2;
                  v293 = objc_opt_self();
                  v198 = swift_allocObject();
                  *(v198 + 16) = sub_188A4A9DC;
                  *(v198 + 24) = v193;
                  v323 = sub_188E3FE50;
                  v324 = v198;
                  *&v321 = MEMORY[0x1E69E9820];
                  *(&v321 + 1) = 1107296256;
                  *&v322 = sub_188A4A968;
                  *(&v322 + 1) = &block_descriptor_162_2;
                  v292 = _Block_copy(&v321);
                  swift_retain_n();
                  swift_retain_n();
                  v199 = v305;
                  v200 = v190;
                  sub_188C464C4(&v348 + 8, &v337);

                  sub_188C3DFF8(&v327, &v337);
                  v201 = swift_allocObject();
                  v202 = v340;
                  *(v201 + 56) = v339;
                  *(v201 + 72) = v202;
                  *(v201 + 88) = v341[0];
                  *(v201 + 97) = *(v341 + 9);
                  v203 = v338;
                  *(v201 + 24) = v337;
                  *(v201 + 16) = a2;
                  *(v201 + 40) = v203;
                  *(v201 + 113) = 0;
                  *(v201 + 120) = sub_188E5C7FC;
                  *(v201 + 128) = v195;
                  v323 = sub_1891953A4;
                  v324 = v201;
                  *&v321 = MEMORY[0x1E69E9820];
                  *(&v321 + 1) = 1107296256;
                  *&v322 = sub_188A4A8F0;
                  *(&v322 + 1) = &block_descriptor_169;
                  a4 = _Block_copy(&v321);

                  *&v339 = sub_188E5C82C;
                  *(&v339 + 1) = v22;
                  *&v337 = MEMORY[0x1E69E9820];
                  *(&v337 + 1) = 1107296256;
                  *&v338 = sub_188ABD010;
                  *(&v338 + 1) = &block_descriptor_172_1;
                  v204 = _Block_copy(&v337);

                  v27 = v292;
                  [v293 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
                  _Block_release(v204);
                  _Block_release(a4);
                  _Block_release(v27);

                  sub_188C3E234(&v327);

                  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                  if (isEscapingClosureAtFileLocation)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  v254 = sub_18A4A76C8();
                  v255 = v285;
                  (*(*(v254 - 8) + 56))(v285, 1, 1, v254);
                  v256 = swift_allocObject();
                  swift_weakInit();
                  sub_18A4A76A8();
                  swift_retain_n();
                  v257 = v305;

                  v258 = v190;
                  sub_188C464C4(&v348 + 8, &v337);

                  v259 = sub_18A4A7698();
                  v260 = swift_allocObject();
                  *(v260 + 16) = v259;
                  *(v260 + 24) = MEMORY[0x1E69E85E0];
                  *(v260 + 32) = v256;
                  *(v260 + 40) = a5;
                  *(v260 + 48) = v191;
                  *(v260 + 56) = sub_189194A10;
                  *(v260 + 64) = v188;

                  v261 = sub_188E59CB0(0, 0, v255, &unk_18A66CF98, v260);
                  swift_beginAccess();

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v327 = *(v187 + 24);
                  *(v187 + 24) = 0x8000000000000000;
                  sub_188E9DE78(v261, v191, isUniquelyReferenced_nonNull_native);
                  *(v187 + 24) = v327;
                  swift_endAccess();
                }
              }

              else
              {
                v26 = objc_opt_self();
                v205 = swift_allocObject();
                *(v205 + 2) = sub_189194958;
                *(v205 + 3) = v178;
                v206 = v305;

                isEscapingClosureAtFileLocation = v174;
                sub_188C464C4(&v348 + 8, &v337);
                sub_188A55B8C(v299, v298);
                a4 = swift_allocObject();
                a4[2] = sub_188E5C7F8;
                a4[3] = v205;
                *&v339 = sub_188E3FE50;
                *(&v339 + 1) = a4;
                *&v337 = MEMORY[0x1E69E9820];
                *(&v337 + 1) = 1107296256;
                *&v338 = sub_188A4A968;
                *(&v338 + 1) = &block_descriptor_86_2;
                v207 = _Block_copy(&v337);
                a2 = *(&v339 + 1);

                [v26 performWithoutAnimation_];
                _Block_release(v207);
                LOBYTE(v207) = swift_isEscapingClosureAtFileLocation();

                if (v207)
                {
                  goto LABEL_204;
                }

                if (!v300 || (v22 & 1) != 0)
                {
                  v298 = v205;
                  v299 = sub_188E5C7F8;
                }

                else
                {
                  v299 = v205;
                  v208 = v26;
                  v26 = v289;
                  v209 = v280;
                  sub_189195180(v289, v280, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  v22 = *(v288 + 80);
                  v210 = swift_allocObject();
                  *(v210 + 16) = isEscapingClosureAtFileLocation;
                  *(v210 + 24) = v287;
                  sub_1891951E8(v209, v210 + ((v22 + 25) & ~v22), type metadata accessor for NavigationBarPlatterContainer.Settings);
                  v298 = isEscapingClosureAtFileLocation;
                  sub_188A55B8C(v291, v290);
                  a4 = swift_allocObject();
                  a4[2] = sub_1891953A8;
                  a4[3] = v210;
                  v295 = v210;
                  *&v339 = sub_188E3FE50;
                  *(&v339 + 1) = a4;
                  *&v337 = MEMORY[0x1E69E9820];
                  *(&v337 + 1) = 1107296256;
                  *&v338 = sub_188A4A968;
                  *(&v338 + 1) = &block_descriptor_96_2;
                  v211 = _Block_copy(&v337);
                  a2 = *(&v339 + 1);

                  v294 = v208;
                  [v208 performWithoutAnimation_];
                  _Block_release(v211);
                  LOBYTE(v211) = swift_isEscapingClosureAtFileLocation();

                  if (v211)
                  {
                    goto LABEL_207;
                  }

                  v212 = *&v304[v27];
                  v213 = v279;
                  sub_189195180(v26, v279, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  sub_188C45F1C(v302, &v337);
                  v214 = v283;
                  sub_189195180(v213, v283, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  sub_188C45F1C(&v337, &v327);
                  v215 = (v22 + 16) & ~v22;
                  v216 = (v286 + v215) & 0xFFFFFFFFFFFFFFF8;
                  v217 = swift_allocObject();
                  sub_1891951E8(v213, v217 + v215, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  v218 = v298;
                  *(v217 + v216) = v298;
                  v219 = (v217 + ((v216 + 15) & 0xFFFFFFFFFFFFFFF8));
                  v220 = v340;
                  v219[2] = v339;
                  v219[3] = v220;
                  v221 = v338;
                  *v219 = v337;
                  v219[1] = v221;
                  v222 = v343;
                  v219[6] = v342;
                  v219[7] = v222;
                  v223 = v341[1];
                  v219[4] = v341[0];
                  v219[5] = v223;
                  v224 = v347;
                  v219[10] = v346;
                  v219[11] = v224;
                  v225 = v345;
                  v219[8] = v344;
                  v219[9] = v225;
                  v226 = *(v212 + 16);
                  *(v212 + 16) = v226 + 1;
                  if (a5 == 0.0)
                  {
                    v227 = v218;
                    v228 = v277;
                    v229 = sub_18A4A4B98();
                    MEMORY[0x18CFE0ED0](v229);
                    v230 = *v274;
                    v231 = v278;
                    (*v274)(v228, v278);
                    v232 = v276;
                    sub_18A4A5F78();
                    v233 = (*v273)(v228, v232, v231);
                    LOBYTE(v316) = 1;
                    v315[0] = 1;
                    v234 = MEMORY[0x18CFE0EE0](v233);
                    sub_18A4A5F58();
                    v236 = v235;
                    v230(v228, v231);
                    v230(v232, v231);
                    *&v321 = v234;
                    *(&v321 + 1) = v236;
                    *&v322 = 0;
                    *(&v322 + 1) = v316 & 1;
                    v323 = 0;
                    v324 = v315[0] & 1 | 0x8000000000000000;
                    v325 = 0u;
                    memset(v326, 0, sizeof(v326));
                    sub_188C45F1C(&v327, &v316);
                    v237 = swift_allocObject();
                    v238 = v320[5];
                    *(v237 + 152) = v320[4];
                    *(v237 + 168) = v238;
                    v239 = v320[7];
                    *(v237 + 184) = v320[6];
                    *(v237 + 200) = v239;
                    v240 = v320[1];
                    *(v237 + 88) = v320[0];
                    *(v237 + 104) = v240;
                    v241 = v320[3];
                    *(v237 + 120) = v320[2];
                    *(v237 + 136) = v241;
                    v242 = v317;
                    *(v237 + 24) = v316;
                    *(v237 + 40) = v242;
                    v243 = v319;
                    *(v237 + 56) = v318;
                    v244 = v227;
                    *(v237 + 16) = v227;
                    *(v237 + 72) = v243;
                    sub_188C3DF9C(&v321, v315);
                    sub_188C3DF9C(&v321, v313);
                    v245 = swift_allocObject();
                    v246 = v313[3];
                    *(v245 + 48) = v313[2];
                    *(v245 + 64) = v246;
                    *(v245 + 80) = v314[0];
                    *(v245 + 89) = *(v314 + 9);
                    v247 = v313[1];
                    *(v245 + 16) = v313[0];
                    *(v245 + 32) = v247;
                    *(v245 + 112) = signpost_c2_entryLock_start;
                    *(v245 + 120) = 0;
                    v248 = swift_allocObject();
                    *(v248 + 16) = 0;
                    v22 = swift_allocObject();
                    *(v22 + 24) = 0;
                    *(v22 + 32) = 0;
                    *(v22 + 16) = v248;
                    v249 = swift_allocObject();
                    *(v249 + 16) = sub_189194A04;
                    *(v249 + 24) = v237;
                    *&v310 = sub_188E3FE50;
                    *(&v310 + 1) = v249;
                    *&v308 = MEMORY[0x1E69E9820];
                    *(&v308 + 1) = 1107296256;
                    *&v309 = sub_188A4A968;
                    *(&v309 + 1) = &block_descriptor_124_4;
                    v298 = _Block_copy(&v308);
                    v250 = v244;

                    sub_188C3DFF8(v315, &v308);
                    v251 = swift_allocObject();
                    v252 = v311;
                    *(v251 + 56) = v310;
                    *(v251 + 72) = v252;
                    *(v251 + 88) = v312[0];
                    *(v251 + 97) = *(v312 + 9);
                    v253 = v309;
                    *(v251 + 24) = v308;
                    *(v251 + 16) = v248;
                    *(v251 + 40) = v253;
                    *(v251 + 113) = 0;
                    *(v251 + 120) = sub_188E5C7FC;
                    *(v251 + 128) = v245;
                    v307[2] = sub_1891953A4;
                    v307[3] = v251;
                    v306[0] = MEMORY[0x1E69E9820];
                    v306[1] = 1107296256;
                    v307[0] = sub_188A4A8F0;
                    v307[1] = &block_descriptor_131_1;
                    v27 = _Block_copy(v306);

                    *&v310 = sub_188E5C82C;
                    *(&v310 + 1) = v22;
                    *&v308 = MEMORY[0x1E69E9820];
                    *(&v308 + 1) = 1107296256;
                    *&v309 = sub_188ABD010;
                    *(&v309 + 1) = &block_descriptor_134_2;
                    a4 = _Block_copy(&v308);

                    a2 = v298;
                    [v294 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
                    _Block_release(a4);
                    _Block_release(v27);
                    _Block_release(a2);

                    sub_188C3E234(v315);

                    v26 = swift_isEscapingClosureAtFileLocation();

                    isEscapingClosureAtFileLocation = v299;
                    if (v26)
                    {
                      goto LABEL_208;
                    }

                    sub_188AAFF20(&v321);
                    sub_188C460F0(&v327);
                    sub_189195250(v283, type metadata accessor for NavigationBarPlatterContainer.Settings);
                  }

                  else
                  {
                    v263 = sub_18A4A76C8();
                    v264 = v285;
                    (*(*(v263 - 8) + 56))(v285, 1, 1, v263);
                    v265 = v214;
                    v266 = swift_allocObject();
                    swift_weakInit();
                    sub_18A4A76A8();
                    v267 = v218;

                    v268 = sub_18A4A7698();
                    v269 = swift_allocObject();
                    *(v269 + 16) = v268;
                    *(v269 + 24) = MEMORY[0x1E69E85E0];
                    *(v269 + 32) = v266;
                    *(v269 + 40) = a5;
                    *(v269 + 48) = v226;
                    *(v269 + 56) = sub_18919496C;
                    *(v269 + 64) = v217;

                    v270 = sub_188E59CB0(0, 0, v264, &unk_18A66CF90, v269);
                    swift_beginAccess();

                    v271 = swift_isUniquelyReferenced_nonNull_native();
                    *&v321 = *(v212 + 24);
                    *(v212 + 24) = 0x8000000000000000;
                    sub_188E9DE78(v270, v226, v271);
                    *(v212 + 24) = v321;
                    swift_endAccess();

                    sub_188C460F0(&v327);
                    sub_189195250(v265, type metadata accessor for NavigationBarPlatterContainer.Settings);
                    isEscapingClosureAtFileLocation = v299;
                  }

                  v298 = isEscapingClosureAtFileLocation;
                  v299 = sub_188E5C7F8;
                  v290 = v295;
                  v291 = sub_1891953A8;
                }
              }

              v168 = &v348 + 1;
              if (BYTE8(v349[0]))
              {
                v168 = v349;
              }

              *&v327 = *v168;
              BYTE8(v329) = 0;
              v169 = *&v350[8];
              v170 = *&v350[24];
              v26 = *&v350[16];
              a2 = *&v350[40];
              v171 = *&v350[32];
              v27 = *&v350[48];
              v337 = *&v350[8];
              v338 = *&v350[24];
              v339 = *&v350[40];
              v172 = v304;
              v22 = v304;
              sub_188EC2284(v169, v26, v170, v171, a2, v27);
              a4 = v300;
              sub_18918D8E0(&v327, v172, &v337, v300, v302);

              sub_188C46888(&v348 + 8);

              sub_188A3F5FC(&v348, &unk_1EA93F040, &qword_18A66CF88);
              sub_188EC2210(v337, *(&v337 + 1), v338, *(&v338 + 1), v339, *(&v339 + 1));
              sub_188C4680C(&v327);
              sub_189185B68(v351);
              isEscapingClosureAtFileLocation = v351;
              v360 = *&v351[128];
              v361 = *&v351[144];
              v362 = *&v351[160];
              v356 = *&v351[64];
              v357 = *&v351[80];
              v359 = *&v351[112];
              v358 = *&v351[96];
              v352 = *v351;
              v353 = *&v351[16];
              v355 = *&v351[48];
              v354 = *&v351[32];
              v173 = get_enum_tag_for_layout_string_xSbRi_zRi0_zlyq_Isegnd_Sg_0(&v352);
              v166 = v303 + 1;
              if (v173 == 1)
              {
                goto LABEL_171;
              }
            }

LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            v28 = sub_18A4A7F68();
            goto LABEL_3;
          }
        }

        v304 = v127;
        v129 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;

        sub_188E56D00();

        if (v300)
        {
          v130 = *(v26 + v129);
          v131 = v292;
          sub_189195180(v289, v292, type metadata accessor for NavigationBarPlatterContainer.Settings);
          v132 = v293;
          sub_189195180(v131, v293, type metadata accessor for NavigationBarPlatterContainer.Settings);
          v133 = (*(v288 + 80) + 16) & ~*(v288 + 80);
          v134 = (v286 + v133) & 0xFFFFFFFFFFFFFFF8;
          v135 = swift_allocObject();
          sub_1891951E8(v131, v135 + v133, type metadata accessor for NavigationBarPlatterContainer.Settings);
          v136 = v135 + v134;
          *v136 = v26;
          *(v136 + 8) = v287;
          v137 = *(v130 + 16);
          *(v130 + 16) = v137 + 1;
          v138 = v26;
          if (a5 == 0.0)
          {
            sub_18918E7D0(v132, v138, v291 & 1);

            sub_189195250(v132, type metadata accessor for NavigationBarPlatterContainer.Settings);
          }

          else
          {
            sub_189195250(v132, type metadata accessor for NavigationBarPlatterContainer.Settings);
            v139 = sub_18A4A76C8();
            v140 = v285;
            (*(*(v139 - 8) + 56))(v285, 1, 1, v139);
            v141 = swift_allocObject();
            swift_weakInit();
            sub_18A4A76A8();

            v142 = sub_18A4A7698();
            v143 = swift_allocObject();
            *(v143 + 16) = v142;
            *(v143 + 24) = MEMORY[0x1E69E85E0];
            *(v143 + 32) = v141;
            *(v143 + 40) = a5;
            *(v143 + 48) = v137;
            *(v143 + 56) = sub_189194A24;
            *(v143 + 64) = v135;

            v144 = sub_188E59CB0(0, 0, v140, &unk_18A66CFA8, v143);
            swift_beginAccess();

            v145 = swift_isUniquelyReferenced_nonNull_native();
            *&v327 = *(v130 + 24);
            *(v130 + 24) = 0x8000000000000000;
            sub_188E9DE78(v144, v137, v145);
            *(v130 + 24) = v327;
            swift_endAccess();
          }

          v45 = v298;
          v118 = v299;
          a2 = v303;
          v22 = v301;
        }

        else
        {
          [v26 removeFromSuperview];
        }

        v146 = (v26 + OBJC_IVAR____UINavigationBarPlatterItemView_item);
        if (*(v26 + OBJC_IVAR____UINavigationBarPlatterItemView_item + 16))
        {
          v146 = (v26 + OBJC_IVAR____UINavigationBarPlatterItemView_item + 8);
        }

        v147 = *v146;
        LOBYTE(v337) = 0;
        *&v327 = v147;
        BYTE8(v329) = 0;
        v148 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews;
        v149 = v305;
        swift_beginAccess();
        isEscapingClosureAtFileLocation = *&v149[v148];
        if (*(isEscapingClosureAtFileLocation + 16) && (v150 = sub_188C46540(&v327), (v151 & 1) != 0))
        {
          v152 = *(*(isEscapingClosureAtFileLocation + 56) + 8 * v150);
          swift_endAccess();
          swift_beginAccess();
          v153 = v152;
          v154 = sub_188FFFF94(&v327);
          swift_endAccess();

          v155 = v300;
          if (v300)
          {
            memset(v341, 0, 24);
            v340 = 0u;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            BYTE8(v341[1]) = -1;
            v156 = swift_allocObject();
            *(v156 + 16) = v153;
            v157 = swift_allocObject();
            v158 = v305;
            *(v157 + 16) = v153;
            *(v157 + 24) = v158;
            v159 = v153;

            v160 = v158;
            v161 = v159;
            isEscapingClosureAtFileLocation = v155;
            sub_188FE4298(&v337, sub_188F8656C, v156, sub_189194A1C, v157);

            sub_188A3F5FC(&v337, &qword_1EA9362D0, &qword_18A66CFA0);

            v45 = v298;
            a2 = v303;
            v22 = v301;
          }

          else
          {
            [v153 removeFromSuperview];
            isEscapingClosureAtFileLocation = *&v305[OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer];
            v162 = [isEscapingClosureAtFileLocation subviews];
            sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
            v163 = sub_18A4A7548();

            if (v163 >> 62)
            {
              v164 = sub_18A4A7F68();
            }

            else
            {
              v164 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v45 = v298;
            a2 = v303;

            v22 = v301;
            if (!v164)
            {
              [isEscapingClosureAtFileLocation removeFromSuperview];
            }
          }
        }

        else
        {
          swift_endAccess();
        }

        sub_188C4680C(&v327);
        v27 = v126;
        a4 = v304;
      }
    }

    v27 = 0;
    v22 = (v45 + 4);
    v290 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews;
    v287 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer;
    v294 = v46;
    v296 = (v45 + 4);
LABEL_27:
    v47 = (v22 + 160 * v27);
    v48 = *v47;
    v338 = v47[1];
    v337 = v48;
    v49 = v47[2];
    v50 = v47[3];
    v51 = v47[4];
    v341[1] = v47[5];
    v341[0] = v51;
    v340 = v50;
    v339 = v49;
    v52 = v47[6];
    v53 = v47[7];
    v54 = v47[8];
    v345 = v47[9];
    v344 = v54;
    v343 = v53;
    v342 = v52;
    v55 = v337;
    if (v338)
    {
      v56 = *(&v337 + 1);
      sub_188C464C4(&v337, &v327);
      sub_188C468DC(v55, v56, 1);

      v55 = v56;
    }

    else
    {
      sub_188C464C4(&v337, &v327);
    }

    LOBYTE(v327) = 0;
    *&v316 = v55;
    BYTE8(v318) = 0;
    isEscapingClosureAtFileLocation = v369;
    v57 = sub_188C46540(&v316);
    if (v58)
    {
      v59 = v57;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v327 = isEscapingClosureAtFileLocation;
      if (!v60)
      {
        sub_188FA0EE8();
        isEscapingClosureAtFileLocation = v327;
      }

      sub_188C4680C(*(isEscapingClosureAtFileLocation + 48) + 48 * v59);
      v61 = *(*(isEscapingClosureAtFileLocation + 56) + 8 * v59);
      sub_188C4D458();
      sub_188C4680C(&v316);
      v369 = isEscapingClosureAtFileLocation;
      goto LABEL_84;
    }

    a2 = *(&v341[1] + 1);
    v62 = v342;
    v22 = BYTE8(v342);
    sub_188C4680C(&v316);
    if (v22 == 255)
    {
      goto LABEL_83;
    }

    v297 = v27;
    v26 = isEscapingClosureAtFileLocation + 64;
    v63 = 1 << *(isEscapingClosureAtFileLocation + 32);
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v27 = v64 & *(isEscapingClosureAtFileLocation + 64);
    swift_bridgeObjectRetain_n();
    v303 = a2;
    v304 = v62;
    sub_188C46860(a2, v62, v22);
    v65 = 0;
    v66 = (v63 + 63) >> 6;
    while (1)
    {
      if (v27)
      {
        goto LABEL_45;
      }

      v67 = v303;
      a4 = v304;
      do
      {
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (v68 >= v66)
        {

          sub_188C46874(v67, a4, v22);
          v45 = v298;
          v46 = v294;
          goto LABEL_82;
        }

        v27 = *(v26 + 8 * v68);
        ++v65;
      }

      while (!v27);
      v65 = v68;
LABEL_45:
      v69 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v301 = *(*(isEscapingClosureAtFileLocation + 56) + ((v65 << 9) | (8 * v69)));
      a2 = &v301[OBJC_IVAR____UINavigationBarPlatterItemView_item];
      v70 = *&v301[OBJC_IVAR____UINavigationBarPlatterItemView_item + 88];
      v71 = *&v301[OBJC_IVAR____UINavigationBarPlatterItemView_item + 96];
      v72 = v301[OBJC_IVAR____UINavigationBarPlatterItemView_item + 104];
      if (v72 <= 2)
      {
        if (v301[OBJC_IVAR____UINavigationBarPlatterItemView_item + 104])
        {
          v299 = &v301[OBJC_IVAR____UINavigationBarPlatterItemView_item];
          if (v72 == 1)
          {
            a2 = v303;
            sub_188C46860(v303, v304, v22);
            v295 = v301;
            sub_188C46874(v70, v71, 1u);
            if (v22 != 1)
            {
              goto LABEL_73;
            }

LABEL_61:
            v73 = v70 == a2;
            a2 = v299;
            if (!v73)
            {
LABEL_62:

              continue;
            }
          }

          else
          {
            a2 = v303;
            sub_188C46860(v303, v304, v22);
            v295 = v301;
            sub_188C46874(v70, v71, 2u);
            if (v22 != 2)
            {
LABEL_73:

              sub_188C46874(a2, v304, v22);
              continue;
            }

            v73 = v70 == a2;
            a2 = v299;
            if (!v73)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          if (v22)
          {
            continue;
          }

          v74 = v70 == v303 && v71 == v304;
          if (!v74 && (sub_18A4A86C8() & 1) == 0)
          {
            continue;
          }

          v83 = v301;

          v77 = v303;
          v78 = v304;
          v79 = 0;
LABEL_92:
          sub_188C46874(v77, v78, v79);
        }

        v45 = v298;
        a4 = *(v298 + 2);
        v46 = v294;
        v22 = v296;
        if (!a4)
        {
LABEL_111:
          v94 = (a2 + 8);
          if (!*(a2 + 16))
          {
            v94 = a2;
          }

          v95 = *v94;
          LOBYTE(v327) = 0;
          *&v316 = v95;
          BYTE8(v318) = 0;
          v96 = v305;
          v97 = v290;
          swift_beginAccess();
          v98 = *&v97[v96];
          v27 = v297;
          if (*(v98 + 16) && (v99 = sub_188C46540(&v316), (v100 & 1) != 0))
          {
            v101 = *(*(v98 + 56) + 8 * v99);
            swift_endAccess();
            swift_beginAccess();
            v102 = v101;
            v103 = sub_188FFFF94(&v316);
            swift_endAccess();

            if (v300)
            {
              *&v332 = 0;
              v330 = 0u;
              v331 = 0u;
              v328 = 0u;
              v329 = 0u;
              v327 = 0u;
              BYTE8(v332) = -1;
              a4 = swift_allocObject();
              a4[2] = v102;
              v104 = swift_allocObject();
              v105 = v305;
              *(v104 + 16) = v102;
              *(v104 + 24) = v105;
              v106 = v102;

              v107 = v105;
              v27 = v297;
              sub_188FE4298(&v327, sub_188FE6668, a4, sub_1891953B4, v104);

              sub_188A3F5FC(&v327, &qword_1EA9362D0, &qword_18A66CFA0);

              goto LABEL_118;
            }

            [v102 removeFromSuperview];
            v110 = *&v305[v287];
            v111 = [v110 subviews];
            sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
            v112 = sub_18A4A7548();

            if (v112 >> 62)
            {
              a4 = sub_18A4A7F68();
            }

            else
            {
              a4 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v61 = v301;

            if (!a4)
            {
              [v110 removeFromSuperview];
            }
          }

          else
          {
            swift_endAccess();
LABEL_118:
            v61 = v301;
          }

          sub_188C4680C(&v316);
          v108 = (a2 + 8);
          if (!*(a2 + 16))
          {
            v108 = a2;
          }

          v109 = *v108;
          LOBYTE(v316) = 0;
          *&v327 = v109;
          BYTE8(v329) = 0;
          sub_188F282DC(0, &v327);
          v333 = v342;
          v334 = v343;
          v335 = v344;
          v336 = v345;
          v329 = v339;
          v330 = v340;
          v331 = v341[0];
          v332 = v341[1];
          v327 = v337;
          v328 = v338;
          sub_18918E4D0(&v327);
          goto LABEL_84;
        }

        v84 = 0;
        v27 = v296;
        while (2)
        {
          if (v84 >= v45[2])
          {
            goto LABEL_205;
          }

          v85 = *(v27 + 16);
          v327 = *v27;
          v328 = v85;
          v86 = *(v27 + 32);
          v87 = *(v27 + 48);
          v88 = *(v27 + 80);
          v331 = *(v27 + 64);
          v332 = v88;
          v329 = v86;
          v330 = v87;
          v89 = *(v27 + 96);
          v90 = *(v27 + 112);
          v91 = *(v27 + 128);
          v336 = *(v27 + 144);
          v335 = v91;
          v333 = v89;
          v334 = v90;
          isEscapingClosureAtFileLocation = v327;
          if (v328)
          {
            v26 = *(&v327 + 1);
            sub_188C464C4(&v327, &v316);
            sub_188C468DC(isEscapingClosureAtFileLocation, v26, 1);

            isEscapingClosureAtFileLocation = v26;
          }

          else
          {
            sub_188C464C4(&v327, &v316);
          }

          LOBYTE(v316) = 0;
          *&v352 = isEscapingClosureAtFileLocation;
          BYTE8(v354) = 0;
          v92 = (a2 + 8);
          if (!*(a2 + 16))
          {
            v92 = a2;
          }

          v93 = *v92;
          LOBYTE(v316) = 0;
          *v351 = v93;
          v351[40] = 0;
          sub_188C46604(&v352, &v316);
          sub_188C46604(v351, &v319);
          if (BYTE8(v318))
          {
            sub_188C46604(&v316, &v348);
            if (BYTE8(v320[1]))
            {
              v321 = v319;
              v322 = v320[0];
              v323 = *&v320[1];
              isEscapingClosureAtFileLocation = MEMORY[0x18CFE2F70](&v348, &v321);
              sub_188C46888(&v327);
              sub_188BBA15C(&v321);
              sub_188C4680C(v351);
              sub_188C4680C(&v352);
              sub_188BBA15C(&v348);
              sub_188C4680C(&v316);
              if (isEscapingClosureAtFileLocation)
              {
                break;
              }

              goto LABEL_97;
            }

            sub_188C46888(&v327);
            sub_188C4680C(v351);
            sub_188C4680C(&v352);
            sub_188BBA15C(&v348);
LABEL_96:
            sub_188A3F5FC(&v316, &unk_1EA93F050, &qword_18A64E750);
            goto LABEL_97;
          }

          sub_188C46888(&v327);
          sub_188C4680C(v351);
          sub_188C4680C(&v352);
          sub_188C46604(&v316, &v348);
          if (BYTE8(v320[1]))
          {
            goto LABEL_96;
          }

          isEscapingClosureAtFileLocation = v348;
          v26 = v319;
          sub_188C4680C(&v316);
          if (isEscapingClosureAtFileLocation != v26)
          {
LABEL_97:
            v84 = (v84 + 1);
            v27 += 160;
            if (a4 == v84)
            {
              goto LABEL_111;
            }

            continue;
          }

          break;
        }

LABEL_82:
        v27 = v297;
LABEL_83:
        v333 = v342;
        v334 = v343;
        v335 = v344;
        v336 = v345;
        v329 = v339;
        v330 = v340;
        v331 = v341[0];
        v332 = v341[1];
        v327 = v337;
        v328 = v338;
        type metadata accessor for PlatterItemView();
        v81 = objc_allocWithZone(v80);
        sub_188C464C4(&v337, &v316);
        v61 = sub_18918FC1C(&v327);
        v22 = v296;
LABEL_84:
        v26 = v61;
        isEscapingClosureAtFileLocation = &v368;
        MEMORY[0x18CFE2450]();
        if (*((v368 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v368 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a4 = *((v368 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_18A4A7588();
        }

        ++v27;
        sub_18A4A75F8();

        sub_188C46888(&v337);
        if (v27 == v46)
        {
          v27 = v369;
          v282 = v368;
          goto LABEL_129;
        }

        if (v27 >= v45[2])
        {
          goto LABEL_201;
        }

        goto LABEL_27;
      }

      if (v301[OBJC_IVAR____UINavigationBarPlatterItemView_item + 104] > 4u)
      {
        if (v72 != 5)
        {
          continue;
        }

        v299 = &v301[OBJC_IVAR____UINavigationBarPlatterItemView_item];
        a2 = v303;
        sub_188C46860(v303, v304, v22);
        v295 = v301;
        sub_188C46874(v70, v71, 5u);
        if (v22 != 5)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }

      if (v72 == 3)
      {
        if (v22 == 3)
        {
          v73 = v70 == v303 && v71 == v304;
          if (v73 || (sub_18A4A86C8() & 1) != 0)
          {
            v82 = v301;

            v77 = v303;
            v78 = v304;
            v79 = 3;
            goto LABEL_92;
          }
        }
      }

      else if (v22 == 4)
      {
        v75 = v70 == v303 && v71 == v304;
        if (v75 || (sub_18A4A86C8() & 1) != 0)
        {
          v76 = v301;

          v77 = v303;
          v78 = v304;
          v79 = 4;
          goto LABEL_92;
        }
      }
    }
  }

  a2 = 0;
  v304 = (v26 & 0xC000000000000001);
  while (1)
  {
    if (v304)
    {
      v30 = sub_188E498AC(a2, v26);
      v31 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_198;
      }
    }

    else
    {
      if (a2 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_199;
      }

      v30 = *(v26 + 8 * a2 + 32);
      v31 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_198;
      }
    }

    v32 = &v30[OBJC_IVAR____UINavigationBarPlatterItemView_item];
    if (v30[OBJC_IVAR____UINavigationBarPlatterItemView_item + 16])
    {
      v32 = &v30[OBJC_IVAR____UINavigationBarPlatterItemView_item + 8];
    }

    v33 = *v32;
    LOBYTE(v327) = 0;
    *&v337 = v33;
    BYTE8(v339) = 0;
    a4 = v30;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v327 = v27;
    isEscapingClosureAtFileLocation = v27;
    v34 = sub_188C46540(&v337);
    v36 = *(v27 + 16);
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    v40 = v35;
    if (*(isEscapingClosureAtFileLocation + 24) < v39)
    {
      break;
    }

    if (v22)
    {
      goto LABEL_17;
    }

    v22 = v34;
    sub_188FA0EE8();
    v34 = v22;
    v42 = v327;
    if ((v40 & 1) == 0)
    {
LABEL_18:
      *(v42 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v27 = v42;
      isEscapingClosureAtFileLocation = v34;
      sub_188C46604(&v337, *(v42 + 48) + 48 * v34);
      *(*(v27 + 56) + 8 * isEscapingClosureAtFileLocation) = a4;

      sub_188C4680C(&v337);
      v43 = *(v27 + 16);
      v38 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v38)
      {
        goto LABEL_203;
      }

      *(v27 + 16) = v44;
      goto LABEL_6;
    }

LABEL_5:
    v29 = *(v42 + 56);
    v27 = v42;
    isEscapingClosureAtFileLocation = *(v29 + 8 * v34);
    *(v29 + 8 * v34) = a4;

    sub_188C4680C(&v337);
LABEL_6:
    ++a2;
    if (v31 == v28)
    {
      goto LABEL_25;
    }
  }

  sub_1890BAC90(v39, v22);
  v34 = sub_188C46540(&v337);
  if ((v40 & 1) == (v41 & 1))
  {
LABEL_17:
    v42 = v327;
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  sub_18A4A87A8();
  __break(1u);
}

void sub_18918AB9C(uint64_t a1, void *a2)
{
  sub_188FE53B8(a2, 0);
  v3 = *(a2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(a2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v3);
  sub_189185D18();
  sub_18918766C();
}

uint64_t sub_18918AC08(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v34 - v10;
  v11 = sub_18A4A5FA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *&v4[OBJC_IVAR____UINavigationBarPlatterView_translationKickScheduler];
  v20 = *(v12 + 16);
  v20(&v34 - v17, a1, v11, v16);
  (v20)(v14, v18, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v12 + 32))(v22 + v21, v18, v11);
  *(v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v23 = *(v19 + 16);
  *(v19 + 16) = v23 + 1;
  if (a4 == 0.0)
  {
    sub_18918AFAC(v14, v4, a2, a3);
  }

  else
  {
    v24 = sub_18A4A76C8();
    v25 = v35;
    (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
    v26 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();
    v27 = v4;

    v28 = sub_18A4A7698();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    *(v29 + 16) = v28;
    *(v29 + 24) = v30;
    *(v29 + 32) = v26;
    *(v29 + 40) = a4;
    *(v29 + 48) = v23;
    *(v29 + 56) = sub_1891947DC;
    *(v29 + 64) = v22;

    v31 = sub_188E59CB0(0, 0, v25, &unk_18A66CF70, v29);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v19 + 24);
    *(v19 + 24) = 0x8000000000000000;
    sub_188E9DE78(v31, v23, isUniquelyReferenced_nonNull_native);
    *(v19 + 24) = v36;
    swift_endAccess();
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_18918AFAC(uint64_t a1, void *a2, CGFloat a3, CGFloat a4)
{
  if (a3 == 0.0 && a4 == 0.0)
  {
    v5 = *(MEMORY[0x1E69792E8] + 80);
    *&v39.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v39.m33 = v5;
    v6 = *(MEMORY[0x1E69792E8] + 112);
    *&v39.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v39.m43 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 16);
    *&v39.m11 = *MEMORY[0x1E69792E8];
    *&v39.m13 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 48);
    *&v39.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v39.m23 = v8;
  }

  else
  {
    v9 = a1;
    CATransform3DMakeTranslation(&v39, a3, a4, 0.0);
    a1 = v9;
  }

  sub_188C449C0(a1, v38);
  v10 = swift_allocObject();
  v11 = *&v39.m33;
  *(v10 + 88) = *&v39.m31;
  *(v10 + 104) = v11;
  v12 = *&v39.m43;
  *(v10 + 120) = *&v39.m41;
  *(v10 + 136) = v12;
  v13 = *&v39.m13;
  *(v10 + 24) = *&v39.m11;
  *(v10 + 40) = v13;
  v14 = *&v39.m23;
  *(v10 + 56) = *&v39.m21;
  *(v10 + 16) = a2;
  *(v10 + 72) = v14;
  sub_188C3DF9C(v38, v37);
  sub_188C3DF9C(v38, v35);
  v15 = swift_allocObject();
  v16 = v35[3];
  *(v15 + 48) = v35[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v36[0];
  *(v15 + 89) = *(v36 + 9);
  v17 = v35[1];
  *(v15 + 16) = v35[0];
  *(v15 + 32) = v17;
  *(v15 + 112) = signpost_c2_entryLock_start;
  *(v15 + 120) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v18;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18919486C;
  *(v21 + 24) = v10;
  *&v32 = sub_188A4B574;
  *(&v32 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_188A4A968;
  *(&v31 + 1) = &block_descriptor_138;
  v22 = _Block_copy(&aBlock);
  v23 = a2;

  sub_188C3DFF8(v37, &aBlock);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 56) = v32;
  *(v24 + 72) = v25;
  *(v24 + 88) = v34[0];
  *(v24 + 97) = *(v34 + 9);
  v26 = v31;
  *(v24 + 24) = aBlock;
  *(v24 + 16) = v18;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5B140;
  *(v24 + 128) = v15;
  v29[4] = sub_188C5745C;
  v29[5] = v24;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_188A4A8F0;
  v29[3] = &block_descriptor_61_3;
  v27 = _Block_copy(v29);

  *&v32 = sub_188ABBADC;
  *(&v32 + 1) = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_188ABD010;
  *(&v31 + 1) = &block_descriptor_64_4;
  v28 = _Block_copy(&aBlock);

  [v20 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v37);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v38);
  }
}

void sub_18918B3FC()
{
  v0 = sub_18A4A4A88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v1 + 16))(v3, &v7[*(v5 + 28)], v0);
  sub_189195250(v7, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A68();
  (*(v1 + 8))(v3, v0);
  sub_18918630C();
}

void sub_18918B584(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34[-1] - v7;
  v9 = sub_18A4A4BE8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v10 + 16))(v12, v15, v9);
  sub_189195250(v15, type metadata accessor for NavigationBarPlatterContainer.Settings);
  v16 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v16);
  v17 = *(v3 + 8);
  v17(v5, v2);
  sub_18A4A5F78();
  (*(v10 + 8))(v12, v9);
  v18 = sub_188C449C0(v8, v43);
  (v17)(v8, v2, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_188C3DF9C(v43, v42);
  sub_188C3DF9C(v43, v40);
  v20 = swift_allocObject();
  v21 = v40[3];
  *(v20 + 48) = v40[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = v41[0];
  *(v20 + 89) = *(v41 + 9);
  v22 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v23;
  v33 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_189194F80;
  *(v25 + 24) = v19;
  *&v37 = sub_188E3FE50;
  *(&v37 + 1) = v25;
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_188A4A968;
  *(&v36 + 1) = &block_descriptor_503;
  v26 = _Block_copy(&v35);
  v27 = a1;

  sub_188C3DFF8(v42, &v35);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 56) = v37;
  *(v28 + 72) = v29;
  *(v28 + 88) = v39[0];
  *(v28 + 97) = *(v39 + 9);
  v30 = v36;
  *(v28 + 24) = v35;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v34[4] = sub_1891953A4;
  v34[5] = v28;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_188A4A8F0;
  v34[3] = &block_descriptor_510;
  v31 = _Block_copy(v34);

  *&v37 = sub_188E5C82C;
  *(&v37 + 1) = v24;
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_188ABD010;
  *(&v36 + 1) = &block_descriptor_513;
  v32 = _Block_copy(&v35);

  [v33 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(v42);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v43);
  }
}

void sub_18918BB74(void *a1, double a2, double a3)
{
  v6 = sub_18A4A5FA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A4B78();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, &v17[*(v15 + 32)], v10);
  sub_189195250(v17, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4AB8();
  (*(v11 + 8))(v13, v10);
  v18 = sub_188C449C0(v9, v43);
  (*(v7 + 8))(v9, v6, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  sub_188C3DF9C(v43, v42);
  sub_188C3DF9C(v43, v40);
  v20 = swift_allocObject();
  v21 = v40[3];
  *(v20 + 48) = v40[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = v41[0];
  *(v20 + 89) = *(v41 + 9);
  v22 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v23;
  v33 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1891950E8;
  *(v25 + 24) = v19;
  *&v37 = sub_188E3FE50;
  *(&v37 + 1) = v25;
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_188A4A968;
  *(&v36 + 1) = &block_descriptor_610;
  v26 = _Block_copy(&v35);
  v27 = a1;

  sub_188C3DFF8(v42, &v35);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 56) = v37;
  *(v28 + 72) = v29;
  *(v28 + 88) = v39[0];
  *(v28 + 97) = *(v39 + 9);
  v30 = v36;
  *(v28 + 24) = v35;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v34[4] = sub_1891953A4;
  v34[5] = v28;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_188A4A8F0;
  v34[3] = &block_descriptor_617;
  v31 = _Block_copy(v34);

  *&v37 = sub_188E5C82C;
  *(&v37 + 1) = v24;
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_188ABD010;
  *(&v36 + 1) = &block_descriptor_620;
  v32 = _Block_copy(&v35);

  [v33 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(v42);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v43);
  }
}

void sub_18918C124(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1891950F4;
  *(v8 + 24) = v7;
  v11[4] = sub_188E3FE50;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A968;
  v11[3] = &block_descriptor_630;
  v9 = _Block_copy(v11);
  v10 = a1;

  [v6 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v9);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

id sub_18918C2A0(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + OBJC_IVAR____UINavigationBarPlatterView_scaleOffset);
  [v5 transform3D];
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v7 = v15;
  v8 = v16;
  *v14 = *v22;
  *&v14[16] = *&v22[16];
  v13 = a2;
  [v5 setTransform3D_];
  [v5 transform3D];
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  *&v14[8] = *&v22[8];
  *v14 = a3;
  return [v5 setTransform3D_];
}

void sub_18918C388(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A4B78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v7 + 16))(v9, &v13[*(v11 + 32)], v6);
  sub_189195250(v13, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4B18();
  (*(v7 + 8))(v9, v6);
  v14 = sub_188C449C0(v5, v39);
  (*(v3 + 8))(v5, v2, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_188C3DF9C(v39, v38);
  sub_188C3DF9C(v39, v36);
  v16 = swift_allocObject();
  v17 = v36[3];
  *(v16 + 48) = v36[2];
  *(v16 + 64) = v17;
  *(v16 + 80) = v37[0];
  *(v16 + 89) = *(v37 + 9);
  v18 = v36[1];
  *(v16 + 16) = v36[0];
  *(v16 + 32) = v18;
  *(v16 + 112) = signpost_c2_entryLock_start;
  *(v16 + 120) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v19;
  v29 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18919504C;
  *(v21 + 24) = v15;
  *&v33 = sub_188E3FE50;
  *(&v33 + 1) = v21;
  *&v31 = MEMORY[0x1E69E9820];
  *(&v31 + 1) = 1107296256;
  *&v32 = sub_188A4A968;
  *(&v32 + 1) = &block_descriptor_571;
  v22 = _Block_copy(&v31);
  v23 = a1;

  sub_188C3DFF8(v38, &v31);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 56) = v33;
  *(v24 + 72) = v25;
  *(v24 + 88) = v35[0];
  *(v24 + 97) = *(v35 + 9);
  v26 = v32;
  *(v24 + 24) = v31;
  *(v24 + 16) = v19;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5C7FC;
  *(v24 + 128) = v16;
  v30[4] = sub_1891953A4;
  v30[5] = v24;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_188A4A8F0;
  v30[3] = &block_descriptor_578;
  v27 = _Block_copy(v30);

  *&v33 = sub_188E5C82C;
  *(&v33 + 1) = v20;
  *&v31 = MEMORY[0x1E69E9820];
  *(&v31 + 1) = 1107296256;
  *&v32 = sub_188ABD010;
  *(&v32 + 1) = &block_descriptor_581;
  v28 = _Block_copy(&v31);

  [v29 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v38);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v39);
  }
}

void sub_18918C92C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_189195054;
  *(v4 + 24) = v3;
  v7[4] = sub_188E3FE50;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_188A4A968;
  v7[3] = &block_descriptor_591;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_18918CA94(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A4B78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v7 + 16))(v9, &v13[*(v11 + 32)], v6);
  sub_189195250(v13, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4B48();
  (*(v7 + 8))(v9, v6);
  v14 = sub_188C449C0(v5, v39);
  (*(v3 + 8))(v5, v2, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_188C3DF9C(v39, v38);
  sub_188C3DF9C(v39, v36);
  v16 = swift_allocObject();
  v17 = v36[3];
  *(v16 + 48) = v36[2];
  *(v16 + 64) = v17;
  *(v16 + 80) = v37[0];
  *(v16 + 89) = *(v37 + 9);
  v18 = v36[1];
  *(v16 + 16) = v36[0];
  *(v16 + 32) = v18;
  *(v16 + 112) = signpost_c2_entryLock_start;
  *(v16 + 120) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v19;
  v29 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_189194FB4;
  *(v21 + 24) = v15;
  *&v33 = sub_188E3FE50;
  *(&v33 + 1) = v21;
  *&v31 = MEMORY[0x1E69E9820];
  *(&v31 + 1) = 1107296256;
  *&v32 = sub_188A4A968;
  *(&v32 + 1) = &block_descriptor_532;
  v22 = _Block_copy(&v31);
  v23 = a1;

  sub_188C3DFF8(v38, &v31);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 56) = v33;
  *(v24 + 72) = v25;
  *(v24 + 88) = v35[0];
  *(v24 + 97) = *(v35 + 9);
  v26 = v32;
  *(v24 + 24) = v31;
  *(v24 + 16) = v19;
  *(v24 + 40) = v26;
  *(v24 + 113) = 0;
  *(v24 + 120) = sub_188E5C7FC;
  *(v24 + 128) = v16;
  v30[4] = sub_1891953A4;
  v30[5] = v24;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_188A4A8F0;
  v30[3] = &block_descriptor_539;
  v27 = _Block_copy(v30);

  *&v33 = sub_188E5C82C;
  *(&v33 + 1) = v20;
  *&v31 = MEMORY[0x1E69E9820];
  *(&v31 + 1) = 1107296256;
  *&v32 = sub_188ABD010;
  *(&v32 + 1) = &block_descriptor_542;
  v28 = _Block_copy(&v31);

  [v29 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v28);
  _Block_release(v27);
  _Block_release(v22);

  sub_188C3E234(v38);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v39);
  }
}

void sub_18918D038(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_189194FBC;
  *(v4 + 24) = v3;
  v7[4] = sub_188E3FE50;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_188A4A968;
  v7[3] = &block_descriptor_552;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_18918D1A0(void *a1, char a2, double a3)
{
  v6 = swift_allocObject();
  [a1 transform3D];
  v7 = v33;
  *(v6 + 80) = v32;
  *(v6 + 96) = v7;
  v8 = v35;
  *(v6 + 112) = v34;
  *(v6 + 128) = v8;
  v9 = v29;
  *(v6 + 16) = v28;
  *(v6 + 32) = v9;
  v10 = v31;
  *(v6 + 48) = v30;
  *(v6 + 64) = v10;
  if (a2)
  {
    *(v6 + 16) = a3;
  }

  if ((a2 & 2) != 0)
  {
    *(v6 + 56) = a3;
  }

  v11 = sub_18A4A5F58();
  v13 = v12;
  v14 = MEMORY[0x18CFE0EE0](v11);
  v15 = [objc_opt_self() behaviorWithDampingRatio:v13 response:v14];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v6;
  v26 = sub_189195100;
  v27 = v17;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A8F0;
  v25 = &block_descriptor_639;
  v18 = _Block_copy(&v22);
  v19 = v15;
  v20 = a1;

  v26 = signpost_c2_entryLock_start;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188C3DD6C;
  v25 = &block_descriptor_642;
  v21 = _Block_copy(&v22);
  [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v21);
  _Block_release(v18);
}

void sub_18918D3D4(void *a1, uint64_t a2)
{
  v3 = a2 + 16;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_189195108;
  *(v6 + 24) = v5;
  v9[4] = sub_188E3FE50;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_652;
  v7 = _Block_copy(v9);
  v8 = a1;

  [v4 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v7);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

char *sub_18918D68C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____UINavigationBarPlatterContentView_itemViews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews] = MEMORY[0x1E69E7CC8];
  v11 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  _s11PlatterViewC16PlatterGlassViewCMa();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;
  _s11PlatterViewC20SubviewContainerViewCMa();
  v14 = v13;
  v15 = objc_allocWithZone(v13);
  *&v5[v12] = sub_1891907F0(0x736D657449, 0xE500000000000000);
  v16 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer;
  v17 = objc_allocWithZone(v14);
  *&v5[v16] = sub_1891907F0(0x736567646142, 0xE600000000000000);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  v20 = *&v18[OBJC_IVAR____UINavigationBarPlatterContentView_glassView];
  v21 = v18;
  v22 = v20;
  [v21 bounds];
  [v22 setFrame_];

  [*&v18[v19] setAutoresizingMask_];
  [v21 addSubview_];
  v23 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;
  v24 = *&v18[v19];
  v25 = *&v21[OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer];
  [v24 bounds];
  [v25 setFrame_];

  [*&v21[v23] setAutoresizingMask_];
  [*&v18[v19] addSubview_];

  return v21;
}

void sub_18918D8E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v98 = *(a3 + 8);
  v99 = *a3;
  v11 = *(a3 + 24);
  v100 = *(a3 + 16);
  v13 = *(a3 + 32);
  v12 = *(a3 + 40);
  v14 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews;
  swift_beginAccess();
  v15 = *&v5[v14];
  if (!*(v15 + 16) || (v16 = sub_188C46540(a1), (v17 & 1) == 0))
  {
    swift_endAccess();
    if (v11 == 1)
    {
      return;
    }

    v97 = a4;
    v18 = 0;
    if (!a2)
    {
LABEL_12:
      sub_188EC22E0(v99, v98, v100);
      v29 = v11;
      v30 = v13;
      v31 = v12;

      sub_188EC226C(v99, v98, v100);
      return;
    }

LABEL_8:
    v24 = v12;
    v25 = *&v6[OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer];
    v95 = v24;
    v96 = v13;
    sub_188EC2284(v99, v98, v100, v11, v13, v24);
    v94 = a2;
    v26 = [v25 superview];
    if (v26)
    {

      if (v18)
      {
LABEL_10:
        v27 = v18;
        goto LABEL_15;
      }
    }

    else
    {
      [v6 bounds];
      [v25 setFrame_];
      [v25 setAutoresizingMask_];
      [v6 addSubview_];
      if (v18)
      {
        goto LABEL_10;
      }
    }

    v32 = [objc_allocWithZone(_UIBarBadgeView) init];
    swift_beginAccess();
    v27 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *&v6[v14];
    *&v6[v14] = 0x8000000000000000;
    sub_188E9DE38(v27, a1, isUniquelyReferenced_nonNull_native);
    *&v6[v14] = v108;
    swift_endAccess();
LABEL_15:
    v34 = v18;
    [v27 setBadgeColor_];
    [v27 setTextColor_];
    [v27 setFont_];
    if (v100)
    {
      if (v100 != 1)
      {
        v35 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      *&aBlock = v99;
      sub_189007B7C();
      sub_18A4A7DD8();
    }

    v35 = sub_18A4A7258();

LABEL_21:
    [v27 setText_];

    v36 = [v27 superview];
    v93 = v34;
    if (v36 && (v36, v36 == v25))
    {
      v92 = 0;
      v90 = 0;
      v91 = 1;
    }

    else
    {
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      v38[2] = v6;
      v38[3] = v27;
      v39 = swift_allocObject();
      v92 = sub_189194CE4;
      *(v39 + 16) = sub_189194CE4;
      *(v39 + 24) = v38;
      *&v103 = sub_188E3FE50;
      *(&v103 + 1) = v39;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v102 = sub_188A4A968;
      *(&v102 + 1) = &block_descriptor_307;
      v40 = _Block_copy(&aBlock);
      v41 = v6;
      v42 = v27;

      [v37 performWithoutAnimation_];
      _Block_release(v40);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_60;
      }

      v90 = v38;
      v91 = 0;
    }

    v44 = 0.0;
    [v27 sizeThatFits_];
    v46 = v45;
    v48 = v47;
    v49 = [*&v6[OBJC_IVAR____UINavigationBarPlatterContentView_glassView] layer];
    [v49 cornerRadius];

    v38 = &selRef__shouldCrossFadeNavigationBar;
    if ([v6 _shouldReverseLayoutDirection])
    {
      isEscapingClosureAtFileLocation = 1;
    }

    else
    {
      isEscapingClosureAtFileLocation = 2;
    }

    v50 = swift_allocObject();
    v51 = v94;
    [v51 center];
    v53 = v52;
    [v51 bounds];
    v54 = v53 + CGRectGetWidth(v109) * -0.5;
    v55 = [v6 traitCollection];
    v56 = [v55 _barPlattersHidden];

    if (*(*(a5 + 144) + 16) != 1 || (v56 & 1) != 0)
    {
      [v51 bounds];
      Width = CGRectGetWidth(v110);
      [v6 bounds];
      Height = CGRectGetHeight(v111);
      v62 = 0.0;
      if (v56)
      {
        v63 = [v6 _shouldReverseLayoutDirection];
        v62 = -6.0;
        if (v63)
        {
          v62 = 6.0;
        }

        v44 = 10.0;
      }

      _UICornerPointForRoundedRect(isEscapingClosureAtFileLocation, v62, v44, Width, Height);
      v58 = v54 + v64;
      *(v50 + 16) = v54 + v64;
      *(v50 + 24) = v65;
    }

    else
    {
      _UICornerPointForRoundedRect(isEscapingClosureAtFileLocation, 0.0, 0.0, *(a5 + 56), *(a5 + 64));
      v58 = v57;
      *(v50 + 16) = v57;
      *(v50 + 24) = v59;
    }

    if ([v6 _shouldReverseLayoutDirection])
    {
      v66 = v58 + -10.0;
    }

    else
    {
      v66 = v54;
    }

    if ([v6 _shouldReverseLayoutDirection])
    {
      [v51 bounds];
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;

      v112.origin.x = v68;
      v112.origin.y = v70;
      v112.size.width = v72;
      v112.size.height = v74;
      v75 = v54 + CGRectGetWidth(v112);
    }

    else
    {

      v75 = v58 + 10.0;
    }

    v76 = v75 - v46 * 0.5;
    v77 = v46 * 0.5 + v66;
    if (v76 < v77)
    {
      v77 = v76;
    }

    if (v77 <= v76)
    {
      sub_1891F0578(v77, v76);
      *(v50 + 16) = UIPointRoundToViewScale(v6, *(v50 + 16), *(v50 + 24));
      *(v50 + 24) = v78;
      if (v91)
      {
        v79 = 0;
        v80 = 0;
        if (v97)
        {
LABEL_48:
          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          aBlock = 0u;
          v107 = -1;
          v81 = swift_allocObject();
          *(v81 + 16) = v27;
          *(v81 + 24) = v46;
          *(v81 + 32) = v48;
          *(v81 + 40) = v50;

          v82 = v27;

          sub_188FE4298(&aBlock, sub_189194D68, v81, 0, 0);

          sub_188EC226C(v99, v98, v100);

          sub_188A3F5FC(&aBlock, &qword_1EA9362D0, &qword_18A66CFA0);

LABEL_52:
          sub_188A55B8C(v92, v90);
          sub_188A55B8C(v79, v80);
          return;
        }

LABEL_51:
        [v27 bounds];
        [v27 setBounds_];
        swift_beginAccess();
        [v27 setCenter_];
        [v27 setAlpha_];
        [v27 layoutIfNeeded];

        sub_188EC226C(v99, v98, v100);

        goto LABEL_52;
      }

      v83 = objc_opt_self();
      v80 = swift_allocObject();
      *(v80 + 16) = v27;
      *(v80 + 24) = v46;
      *(v80 + 32) = v48;
      *(v80 + 40) = v50;
      v84 = swift_allocObject();
      v79 = sub_189194D00;
      *(v84 + 16) = sub_189194D00;
      *(v84 + 24) = v80;
      *&v103 = sub_188E3FE50;
      *(&v103 + 1) = v84;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v102 = sub_188A4A968;
      *(&v102 + 1) = &block_descriptor_320;
      v85 = _Block_copy(&aBlock);
      v38 = *(&v103 + 1);
      v86 = v27;

      [v83 performWithoutAnimation_];
      _Block_release(v85);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v97)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      v89 = sub_18A4A7F68();
      goto LABEL_56;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v97 = a4;
  v18 = *(*(v15 + 56) + 8 * v16);
  swift_endAccess();
  if (v11 != 1)
  {
    v28 = v18;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  v11 = v18;
  v19 = sub_188FFFF94(a1);
  swift_endAccess();

  if (v97)
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    aBlock = 0u;
    v107 = -1;
    v20 = swift_allocObject();
    *(v20 + 16) = v11;
    v21 = swift_allocObject();
    *(v21 + 16) = v11;
    *(v21 + 24) = v6;
    v22 = v11;

    v23 = v6;
    sub_188FE4298(&aBlock, sub_188FE6668, v20, sub_1891953B4, v21);

    sub_188A3F5FC(&aBlock, &qword_1EA9362D0, &qword_18A66CFA0);

    return;
  }

  v38 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
  [v11 removeFromSuperview];
  isEscapingClosureAtFileLocation = *&v6[OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer];
  v87 = [isEscapingClosureAtFileLocation subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v88 = sub_18A4A7548();

  if (v88 >> 62)
  {
    goto LABEL_62;
  }

  v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_56:

  if (!v89)
  {
    [isEscapingClosureAtFileLocation v38[464]];
  }
}

void sub_18918E4D0(__int128 *a1)
{
  v3 = a1[7];
  v47 = a1[6];
  v48 = v3;
  v4 = a1[9];
  v49 = a1[8];
  v50 = v4;
  v5 = a1[3];
  v43 = a1[2];
  v44 = v5;
  v6 = a1[5];
  v45 = a1[4];
  v46 = v6;
  v7 = a1[1];
  v41 = *a1;
  v42 = v7;
  v8 = &v1[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  v9 = *&v1[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  v10 = v9;
  v11 = v41;

  if (v9 != v41)
  {
    v12 = *v8;
    v13 = [v12 superview];

    if (v13)
    {

      if (v13 == v1)
      {
        v14 = *v8;
        [v14 removeFromSuperview];
      }
    }
  }

  v15 = *(v8 + 7);
  v40[6] = *(v8 + 6);
  v40[7] = v15;
  v16 = *(v8 + 9);
  v40[8] = *(v8 + 8);
  v40[9] = v16;
  v17 = *(v8 + 3);
  v40[2] = *(v8 + 2);
  v40[3] = v17;
  v18 = *(v8 + 5);
  v40[4] = *(v8 + 4);
  v40[5] = v18;
  v19 = *(v8 + 1);
  v40[0] = *v8;
  v40[1] = v19;
  v20 = a1[7];
  *(v8 + 6) = a1[6];
  *(v8 + 7) = v20;
  v21 = a1[9];
  *(v8 + 8) = a1[8];
  *(v8 + 9) = v21;
  v22 = a1[3];
  *(v8 + 2) = a1[2];
  *(v8 + 3) = v22;
  v23 = a1[5];
  *(v8 + 4) = a1[4];
  *(v8 + 5) = v23;
  v24 = a1[1];
  *v8 = *a1;
  *(v8 + 1) = v24;
  sub_188C464C4(&v41, v39);
  sub_188C46888(v40);
  v25 = v11;
  v26 = [v25 superview];

  if (!v26 || (v26, v26 != v1))
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    v29 = v48;
    *(v28 + 120) = v47;
    *(v28 + 136) = v29;
    v30 = v50;
    *(v28 + 152) = v49;
    *(v28 + 168) = v30;
    v31 = v44;
    *(v28 + 56) = v43;
    *(v28 + 72) = v31;
    v32 = v46;
    *(v28 + 88) = v45;
    *(v28 + 104) = v32;
    v33 = v42;
    *(v28 + 24) = v41;
    *(v28 + 16) = v1;
    *(v28 + 40) = v33;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_189194AB8;
    *(v34 + 24) = v28;
    v38[4] = sub_188E3FE50;
    v38[5] = v34;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = sub_188A4A968;
    v38[3] = &block_descriptor_205;
    v35 = _Block_copy(v38);
    sub_188C464C4(&v41, v39);
    v36 = v1;

    [v27 performWithoutAnimation_];
    _Block_release(v35);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_18918E7D0(uint64_t a1, void *a2, int a3)
{
  LODWORD(v36) = a3;
  v35[0] = a2;
  v4 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_18A4A5FA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v14);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_18A4A5F78();
  v16 = sub_188C449C0(v13, v46);
  (v15)(v13, v7, v16);
  sub_189195180(a1, v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationBarPlatterContainer.Settings);
  v17 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = v35[0];
  *(v18 + 16) = v35[0];
  *(v18 + 24) = v36;
  sub_1891951E8(v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NavigationBarPlatterContainer.Settings);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = v20;
  sub_188C3DF9C(v46, v45);
  sub_188C3DF9C(v46, v43);
  v22 = swift_allocObject();
  v23 = v43[3];
  *(v22 + 48) = v43[2];
  *(v22 + 64) = v23;
  *(v22 + 80) = v44[0];
  *(v22 + 89) = *(v44 + 9);
  v24 = v43[1];
  *(v22 + 16) = v43[0];
  *(v22 + 32) = v24;
  *(v22 + 112) = signpost_c2_entryLock_start;
  *(v22 + 120) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = sub_18902C28C;
  v26[4] = v21;
  v35[1] = v21;
  v36 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_189194C64;
  *(v27 + 24) = v18;
  *&v40 = sub_188E3FE50;
  *(&v40 + 1) = v27;
  *&v38 = MEMORY[0x1E69E9820];
  *(&v38 + 1) = 1107296256;
  *&v39 = sub_188A4A968;
  *(&v39 + 1) = &block_descriptor_227_0;
  v28 = _Block_copy(&v38);
  v29 = v19;

  sub_188C3DFF8(v45, &v38);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 56) = v40;
  *(v30 + 72) = v31;
  *(v30 + 88) = v42[0];
  *(v30 + 97) = *(v42 + 9);
  v32 = v39;
  *(v30 + 24) = v38;
  *(v30 + 16) = v25;
  *(v30 + 40) = v32;
  *(v30 + 113) = 0;
  *(v30 + 120) = sub_188E5C7FC;
  *(v30 + 128) = v22;
  v37[4] = sub_1891953A4;
  v37[5] = v30;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 1107296256;
  v37[2] = sub_188A4A8F0;
  v37[3] = &block_descriptor_234_0;
  v33 = _Block_copy(v37);

  *&v40 = sub_188E5C82C;
  *(&v40 + 1) = v26;
  *&v38 = MEMORY[0x1E69E9820];
  *(&v38 + 1) = 1107296256;
  *&v39 = sub_188ABD010;
  *(&v39 + 1) = &block_descriptor_237_2;
  v34 = _Block_copy(&v38);

  [v36 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v34);
  _Block_release(v33);
  _Block_release(v28);

  sub_188C3E234(v45);

  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v46);
  }
}

id sub_18918EDB0(void *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 setFrame_];
  [a1 setHitTestInsets_];
  [a1 setAlpha_];
  v10 = [a1 layer];
  v11 = sub_18A4A2D28();
  v12 = sub_18A4A7258();
  [v10 setValue:v11 forKeyPath:v12];

  [*(a4 + OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer) insertSubview:a1 atIndex:a5];

  return [a1 layoutIfNeeded];
}

void sub_18918EED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_188C3DF9C(a1 + 16, v28);
  sub_188C3DF9C(a1 + 16, v26);
  v7 = swift_allocObject();
  v8 = v26[3];
  *(v7 + 48) = v26[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v27[0];
  *(v7 + 89) = *(v27 + 9);
  v9 = v26[1];
  *(v7 + 16) = v26[0];
  *(v7 + 32) = v9;
  *(v7 + 112) = signpost_c2_entryLock_start;
  *(v7 + 120) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v10;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188E5C7F8;
  *(v13 + 24) = v6;
  *&v23 = sub_188E3FE50;
  *(&v23 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_188A4A968;
  *(&v22 + 1) = &block_descriptor_287;
  v14 = _Block_copy(&aBlock);

  sub_188C3DFF8(v28, &aBlock);
  v15 = swift_allocObject();
  v16 = v24;
  *(v15 + 56) = v23;
  *(v15 + 72) = v16;
  *(v15 + 88) = v25[0];
  *(v15 + 97) = *(v25 + 9);
  v17 = v22;
  *(v15 + 24) = aBlock;
  *(v15 + 16) = v10;
  *(v15 + 40) = v17;
  *(v15 + 113) = 0;
  *(v15 + 120) = sub_188E5C7FC;
  *(v15 + 128) = v7;
  v20[4] = sub_1891953A4;
  v20[5] = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188A4A8F0;
  v20[3] = &block_descriptor_294;
  v18 = _Block_copy(v20);

  *&v23 = sub_188E5C82C;
  *(&v23 + 1) = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_188ABD010;
  *(&v22 + 1) = &block_descriptor_297_0;
  v19 = _Block_copy(&aBlock);

  [v12 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v19);
  _Block_release(v18);
  _Block_release(v14);

  sub_188C3E234(v28);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_18918F2B4(void *a1, char a2)
{
  [a1 setAlpha_];
  if ((a2 & 1) == 0)
  {
    type metadata accessor for NavigationBarPlatterContainer.Settings(0);
    sub_18A4A4A68();
    v4 = [a1 layer];
    v5 = sub_18A4A2D28();
    v6 = sub_18A4A7258();
    [v4 setValue:v5 forKeyPath:v6];
  }
}

void sub_18918F3B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_18A4A5FA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36[-1] - v10;
  v12 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v12);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_18A4A5F78();
  v14 = sub_188C449C0(v11, v46);
  (v13)(v11, v5, v14);
  sub_188C45F1C(a3, v45);
  v15 = swift_allocObject();
  v16 = v45[9];
  *(v15 + 152) = v45[8];
  *(v15 + 168) = v16;
  v17 = v45[11];
  *(v15 + 184) = v45[10];
  *(v15 + 200) = v17;
  v18 = v45[5];
  *(v15 + 88) = v45[4];
  *(v15 + 104) = v18;
  v19 = v45[7];
  *(v15 + 120) = v45[6];
  *(v15 + 136) = v19;
  v20 = v45[1];
  *(v15 + 24) = v45[0];
  *(v15 + 40) = v20;
  v21 = v45[3];
  *(v15 + 56) = v45[2];
  *(v15 + 16) = a2;
  *(v15 + 72) = v21;
  sub_188C3DF9C(v46, v44);
  sub_188C3DF9C(v46, v42);
  v22 = swift_allocObject();
  v23 = v42[3];
  *(v22 + 48) = v42[2];
  *(v22 + 64) = v23;
  *(v22 + 80) = v43[0];
  *(v22 + 89) = *(v43 + 9);
  v24 = v42[1];
  *(v22 + 16) = v42[0];
  *(v22 + 32) = v24;
  *(v22 + 112) = signpost_c2_entryLock_start;
  *(v22 + 120) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = v25;
  v35 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1891953B0;
  *(v27 + 24) = v15;
  *&v39 = sub_188E3FE50;
  *(&v39 + 1) = v27;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_188A4A968;
  *(&v38 + 1) = &block_descriptor_257;
  v28 = _Block_copy(&v37);
  v29 = a2;

  sub_188C3DFF8(v44, &v37);
  v30 = swift_allocObject();
  v31 = v40;
  *(v30 + 56) = v39;
  *(v30 + 72) = v31;
  *(v30 + 88) = v41[0];
  *(v30 + 97) = *(v41 + 9);
  v32 = v38;
  *(v30 + 24) = v37;
  *(v30 + 16) = v25;
  *(v30 + 40) = v32;
  *(v30 + 113) = 0;
  *(v30 + 120) = sub_188E5C7FC;
  *(v30 + 128) = v22;
  v36[4] = sub_1891953A4;
  v36[5] = v30;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = sub_188A4A8F0;
  v36[3] = &block_descriptor_264;
  v33 = _Block_copy(v36);

  *&v39 = sub_188E5C82C;
  *(&v39 + 1) = v26;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_188ABD010;
  *(&v38 + 1) = &block_descriptor_267;
  v34 = _Block_copy(&v37);

  [v35 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v34);
  _Block_release(v33);
  _Block_release(v28);

  sub_188C3E234(v44);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v46);
  }
}

void sub_18918F92C(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v3 = [a1 layer];
  v4 = sub_18A4A2D28();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];
}

void sub_18918F9E0(void *a1, uint64_t a2)
{
  [a1 removeFromSuperview];
  v3 = *(a2 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer);
  v4 = [v3 subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v5 = sub_18A4A7548();

  if (v5 >> 62)
  {
    v6 = sub_18A4A7F68();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {

    [v3 removeFromSuperview];
  }
}

id sub_18918FAC4(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  [a1 bounds];
  [a1 setBounds_];
  swift_beginAccess();
  [a1 setCenter_];
  [a1 setAlpha_];
  return [a1 layoutIfNeeded];
}

__int128 *sub_18918FC1C(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1[7];
  v39 = a1[6];
  v40 = v4;
  v5 = a1[9];
  v41 = a1[8];
  v42 = v5;
  v6 = a1[3];
  v35 = a1[2];
  v36 = v6;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  v9 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *&v1[v9] = v10;
  v11 = &v1[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  v12 = a1[7];
  *(v11 + 6) = a1[6];
  *(v11 + 7) = v12;
  v13 = a1[9];
  *(v11 + 8) = a1[8];
  *(v11 + 9) = v13;
  v14 = a1[3];
  *(v11 + 2) = a1[2];
  *(v11 + 3) = v14;
  v15 = a1[5];
  *(v11 + 4) = a1[4];
  *(v11 + 5) = v15;
  v16 = a1[1];
  *v11 = *a1;
  *(v11 + 1) = v16;
  v17 = *(&v34 + 1);
  v19 = v35;
  v18 = *&v36;
  sub_188C464C4(&v33, v32);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, sel_initWithFrame_, v17, v19, v18);
  v21 = v20;
  v22 = v33;
  if (v34)
  {
    v23 = v20;
    sub_188C468DC(v22, *(&v22 + 1), 1);
    sub_188C46888(&v33);
  }

  else
  {
    v24 = v20;
    sub_188C468DC(v22, *(&v22 + 1), 0);
    sub_188C46888(&v33);
  }

  [v21 addSubview_];

  v25 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v26 = [v21 layer];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A64BFB0;
  *(v27 + 56) = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  *(v27 + 32) = v25;
  v28 = v25;
  v29 = sub_18A4A7518();

  [v26 setFilters_];

  return v21;
}

id sub_18918FF38()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = OBJC_IVAR____UINavigationBarPlatterItemView_item;
  v2 = *&v0[OBJC_IVAR____UINavigationBarPlatterItemView_item];
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[v1];
  [v0 hitTestInsets];
  [v3 setHitTestInsets_];

  v4 = [v0 traitCollection];
  v5 = [v4 _containedInBarBackgroundMaterial];

  return [v0 setClipsToBounds_];
}

void sub_189190074(void *a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_188C468DC(*a2, v4, v6);
  sub_188C468DC(v5, v4, v6);
  sub_188C468DC(v5, v4, v6);
  v8 = v5;
  [a1 addSubview_];

  if (v6 == 1)
  {

    [v8 setBounds_];
  }

  else
  {
    [v8 setBounds_];
  }

  [a1 bounds];
  MidX = CGRectGetMidX(v10);
  [a1 bounds];
  [v8 setCenter_];

  if (v6)
  {
  }

  [v8 layoutIfNeeded];
}

id sub_1891902A4(uint64_t a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  if (!v7)
  {
    v8 = [v3 subviews];
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v9 = sub_18A4A7548();

    if (v9 >> 62)
    {
LABEL_17:
      v10 = sub_18A4A7F68();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_188E49300(i, v9);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = [v12 hitTest:a1 withEvent:{a2, a3}];

      if (v7)
      {

        return v7;
      }
    }

    return 0;
  }

  return v7;
}

unint64_t sub_1891904D4()
{
  ObjectType = swift_getObjectType();
  sub_18A4A80E8();

  v10 = 0xD000000000000017;
  v11 = 0x800000018A6AE4B0;
  v2 = *&v0[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  v3 = *&v0[OBJC_IVAR____UINavigationBarPlatterAnimationView_name + 8];

  MEMORY[0x18CFE22D0](v2, v3);

  MEMORY[0x18CFE22D0](2112034, 0xE300000000000000);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, sel_description);
  v5 = sub_18A4A7288();
  v7 = v6;

  v10 = 0xD000000000000017;
  v11 = 0x800000018A6AE4B0;

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);

  return v10;
}

id sub_1891907F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____UINavigationBarPlatterSubviewContainerView_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *MEMORY[0x1E6979928];
  v9 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v10 = v7;
  v11 = [v9 initWithType_];
  v12 = [v10 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64BFB0;
  *(v13 + 56) = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  *(v13 + 32) = v11;
  v14 = v11;
  v15 = sub_18A4A7518();

  [v12 setFilters_];

  return v10;
}

id sub_1891909D8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

unint64_t sub_189190A48()
{
  ObjectType = swift_getObjectType();
  sub_18A4A80E8();

  v8 = 0xD000000000000017;
  v9 = 0x800000018A6AE430;
  MEMORY[0x18CFE22D0](*&v0[OBJC_IVAR____UINavigationBarPlatterSubviewContainerView_name], *&v0[OBJC_IVAR____UINavigationBarPlatterSubviewContainerView_name + 8]);
  MEMORY[0x18CFE22D0](2112034, 0xE300000000000000);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_18A4A7288();
  v5 = v4;

  v8 = 0xD000000000000017;
  v9 = 0x800000018A6AE430;

  MEMORY[0x18CFE22D0](v3, v5);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);

  return v8;
}

unint64_t sub_189190E1C()
{
  result = qword_1EA93F028;
  if (!qword_1EA93F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F028);
  }

  return result;
}

unint64_t sub_189190E74()
{
  result = qword_1EA93F030;
  if (!qword_1EA93F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F030);
  }

  return result;
}

uint64_t sub_189190EC8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v53[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = sub_18A4A7F68();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = (v2 + 56);
      while (1)
      {
        if (v50)
        {
          a1 = sub_188E498AC(v4, v49);
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_18A4A7C78();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for PlatterItemView();
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_18A4A7C88();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        MEMORY[0x1EEE9AC00](v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = *(v2 + 16);
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = sub_18A4A7F68();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_189192ABC(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = sub_188E498AC(v4, v49);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_18A4A7C78();
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(*(v24 + 48) + 8 * v26);
              v31 = sub_18A4A7C88();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = MEMORY[0x1E69E7CD0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      sub_189193300(v39, v42, v37, v8, v53);
      v2 = v40;

      MEMORY[0x18CFEA5B0](v39, -1, -1);
    }

LABEL_40:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_189191398(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130, qword_18A66CFF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v66 - v9);
  v11 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v66 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_188A3F5FC(v30, &unk_1EA93C130, qword_18A66CFF0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_1891952B0(&qword_1EA92F720, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    v32 = sub_18A4A7198();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_1891952B0(&qword_1EA92F710, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
    v36 = sub_18A4A7248();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_188A3F5FC(v24, &unk_1EA93C130, qword_18A66CFF0);
        a2 = sub_189192CB0(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_18A4A7198();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_18A4A7248();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_18A4A7248();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_189193530(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x18CFEA5B0](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_188E036A4(v59);
  return a2;
}

uint64_t sub_189191DFC(uint64_t a1, uint64_t a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F060, &unk_18A66CFE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - v9;
  v102 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  MEMORY[0x1EEE9AC00](v102);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v87 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v87 - v20;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v88 = v10;
  v92 = v7;
  v87 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v101 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v93 = (63 - v23) >> 6;
  v100 = (v19 + 56);
  v89 = v19;
  v99 = (v19 + 48);
  v107 = (a2 + 56);

  v27 = 0;
  v98 = a1;
  v97 = a1 + 56;
  while (1)
  {
    v28 = v25;
    v29 = v27;
    v106 = v25;
    if (v25)
    {
LABEL_15:
      v33 = (v28 - 1) & v28;
      v34 = v88;
      sub_189195180(*(a1 + 48) + v89[9] * (__clz(__rbit64(v28)) | (v29 << 6)), v88, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v35 = 0;
      v31 = v29;
    }

    else
    {
      v30 = v93 <= v27 + 1 ? v27 + 1 : v93;
      v31 = v30 - 1;
      v32 = v27;
      while (1)
      {
        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_68;
        }

        if (v29 >= v93)
        {
          break;
        }

        v28 = *(v22 + 8 * v29);
        ++v32;
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v33 = 0;
      v35 = 1;
      v34 = v88;
    }

    v36 = v102;
    v96 = *v100;
    v96(v34, v35, 1, v102);
    v114 = a1;
    v115 = v22;
    v116 = v101;
    v117 = v31;
    v118 = v33;
    v95 = *v99;
    if (v95(v34, 1, v36) == 1)
    {
      sub_188A3F5FC(v34, &qword_1EA93F060, &unk_18A66CFE0);
      v79 = a1;
      goto LABEL_64;
    }

    v104 = v33;
    v37 = v90;
    sub_1891951E8(v34, v90, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    sub_18A4A8888();
    v105 = *(v37 + 32);
    sub_18A4A7C98();
    v112 = 0;
    v113 = 0xE000000000000000;
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v108 = *v37;
    v109 = v39;
    v110 = v40;
    v111 = v41;
    type metadata accessor for CGRect(0);
    v94 = v42;
    sub_18A4A82D8();
    sub_18A4A7348();

    v43 = *(v37 + 40);
    v91 = *(v37 + 48);
    sub_18A4A7348();
    v44 = sub_18A4A88E8();
    v45 = -1 << *(a2 + 32);
    v25 = v44 & ~v45;
    v2 = v25 >> 6;
    v29 = 1 << v25;
    if (((1 << v25) & v107[v25 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_189195250(v90, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v27 = v31;
    v25 = v104;
    v22 = v97;
    a1 = v98;
  }

  v46 = ~v45;
  v106 = v89[9];
  while (1)
  {
    sub_189195180(*(a2 + 48) + v106 * v25, v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v120.origin.x = v38;
    v120.origin.y = v39;
    v120.size.width = v40;
    v120.size.height = v41;
    if (!CGRectEqualToRect(*v17, v120) || ![v17[4] isEqualToTextRange_])
    {
      sub_189195250(v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      goto LABEL_20;
    }

    if (v17[5] == v43 && v17[6] == v91)
    {
      break;
    }

    v47 = sub_18A4A86C8();
    sub_189195250(v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    if (v47)
    {
      goto LABEL_30;
    }

LABEL_20:
    v25 = (v25 + 1) & v46;
    v2 = v25 >> 6;
    v29 = 1 << v25;
    if ((v107[v25 >> 6] & (1 << v25)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_189195250(v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_30:
  v48 = sub_189195250(v90, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  v49 = *(a2 + 32);
  v88 = ((1 << v49) + 63) >> 6;
  v26 = 8 * v88;
  v27 = v92;
  a1 = v98;
  if ((v49 & 0x3Fu) > 0xD)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v89 = &v87;
    MEMORY[0x1EEE9AC00](v48);
    v51 = &v87 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v51, v107, v50);
    v52 = *(a2 + 16);
    v53 = *&v51[8 * v2] & ~v29;
    v91 = v51;
    *&v51[8 * v2] = v53;
    v54 = v52 - 1;
    v25 = v97;
    v55 = v93;
    v56 = v104;
LABEL_32:
    v90 = v54;
LABEL_34:
    while (2)
    {
      if (v56)
      {
        v57 = v31;
LABEL_44:
        v60 = __clz(__rbit64(v56));
        v61 = (v56 - 1) & v56;
        sub_189195180(*(a1 + 48) + (v60 | (v57 << 6)) * v106, v27, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v62 = 0;
LABEL_45:
        v63 = v102;
        v96(v27, v62, 1, v102);
        v114 = a1;
        v115 = v25;
        v116 = v101;
        v117 = v31;
        v118 = v61;
        if (v95(v27, 1, v63) == 1)
        {
          sub_188A3F5FC(v27, &qword_1EA93F060, &unk_18A66CFE0);
          a2 = sub_189192FD8(v91, v88, v90, a2);
          goto LABEL_63;
        }

        v104 = v61;
        v64 = v103;
        sub_1891951E8(v27, v103, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        sub_18A4A8888();
        v65 = *(v64 + 32);
        sub_18A4A7C98();
        v112 = 0;
        v113 = 0xE000000000000000;
        v66 = *v64;
        v67 = *(v64 + 8);
        v68 = *(v64 + 16);
        v69 = *(v64 + 24);
        v108 = *v64;
        v109 = v67;
        v110 = v68;
        v111 = v69;
        sub_18A4A82D8();
        sub_18A4A7348();

        v2 = *(v64 + 40);
        v105 = *(v64 + 48);
        sub_18A4A7348();
        v70 = sub_18A4A88E8();
        v71 = a2;
        v72 = -1 << *(a2 + 32);
        v73 = v70 & ~v72;
        v29 = v73 >> 6;
        v74 = 1 << v73;
        if (((1 << v73) & v107[v73 >> 6]) == 0)
        {
LABEL_33:
          sub_189195250(v103, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          a2 = v71;
          a1 = v98;
          v27 = v92;
          v25 = v97;
          v55 = v93;
          v56 = v104;
          continue;
        }

        v75 = ~v72;
        while (1)
        {
          sub_189195180(*(v71 + 48) + v73 * v106, v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          v121.origin.x = v66;
          v121.origin.y = v67;
          v121.size.width = v68;
          v121.size.height = v69;
          if (CGRectEqualToRect(*v12, v121) && [*(v12 + 4) isEqualToTextRange_])
          {
            if (*(v12 + 5) == v2 && *(v12 + 6) == v105)
            {
              sub_189195250(v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_58:
              sub_189195250(v103, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
              v77 = v91[v29];
              v91[v29] = v77 & ~v74;
              v78 = (v77 & v74) == 0;
              a2 = v71;
              a1 = v98;
              v27 = v92;
              v25 = v97;
              v55 = v93;
              v56 = v104;
              if (!v78)
              {
                v54 = v90 - 1;
                if (__OFSUB__(v90, 1))
                {
                  __break(1u);
                }

                if (v90 == 1)
                {

                  a2 = MEMORY[0x1E69E7CD0];
                  goto LABEL_63;
                }

                goto LABEL_32;
              }

              goto LABEL_34;
            }

            v76 = sub_18A4A86C8();
            sub_189195250(v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
            if (v76)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sub_189195250(v12, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          }

          v73 = (v73 + 1) & v75;
          v29 = v73 >> 6;
          v74 = 1 << v73;
          if ((v107[v73 >> 6] & (1 << v73)) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      break;
    }

    v58 = v55 <= v31 + 1 ? v31 + 1 : v55;
    v59 = v58 - 1;
    while (1)
    {
      v57 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        v61 = 0;
        v62 = 1;
        v31 = v59;
        goto LABEL_45;
      }

      v56 = *(v25 + 8 * v57);
      ++v31;
      if (v56)
      {
        v31 = v57;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v81 = v26;

    v82 = v81;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v83 = swift_slowAlloc();
  memcpy(v83, v107, v82);
  v84 = v87;
  sub_189193A04(v83, v88, a2, v25, &v114);
  v86 = v85;

  if (v84)
  {

    result = MEMORY[0x18CFEA5B0](v83, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x18CFEA5B0](v83, -1, -1);
    a2 = v86;
LABEL_63:
    v79 = v114;
LABEL_64:
    sub_188E036A4(v79);
    return a2;
  }

  return result;
}

uint64_t sub_189192ABC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A00, &qword_18A64D548);
  result = sub_18A4A8088();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_18A4A7C78();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_189192CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_18A4A2B48();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A68, &qword_18A64D5B0);
  result = sub_18A4A8088();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1891952B0(&qword_1EA92F720, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    result = sub_18A4A7198();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_189192FD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934A60, &qword_18A64D5A8);
  result = sub_18A4A8088();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_189195180(v19 + v20 * (v16 | (v14 << 6)), v10, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    sub_18A4A8888();
    sub_18A4A7C98();
    v35 = 0;
    v36 = 0xE000000000000000;
    v21 = v10[1];
    v33 = *v10;
    v34 = v21;
    type metadata accessor for CGRect(0);
    sub_18A4A82D8();
    sub_18A4A7348();

    sub_18A4A7348();
    result = sub_18A4A88E8();
    v22 = -1 << *(v11 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v15 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1891951E8(v10, *(v11 + 48) + v25 * v20, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_189193300(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_18A4A7F68();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_189192ABC(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_188E498AC(v5[1], v11);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_18A4A7C78();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for PlatterItemView();
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_18A4A7C88();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_18A4A7C88();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_189193530(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130, qword_18A66CFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_188A3F5FC(v11, &unk_1EA93C130, qword_18A66CFF0);
          v45 = v61;

          sub_189192CB0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1891952B0(&qword_1EA92F720, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
        v35 = sub_18A4A7198();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1891952B0(&qword_1EA92F710, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
        v43 = sub_18A4A7248();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_189193A04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v52 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F060, &unk_18A66CFE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - v10;
  v59 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  MEMORY[0x1EEE9AC00](v59);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v51 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v54 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v58 = (v20 + 56);
  v60 = v20;
  v57 = (v20 + 48);
  v70 = a3;
  v63 = a3 + 56;
  v56 = a5;
  v55 = v11;
  do
  {
    v53 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_189195180(*(v21 + 48) + *(v60 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v59;
        (*v58)(v11, v31, 1, v59);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v57)(v11, 1, v32) == 1)
        {
          sub_188A3F5FC(v11, &qword_1EA93F060, &unk_18A66CFE0);
          v50 = v70;

          sub_189192FD8(v54, v52, v53, v50);
          return;
        }

        v33 = v61;
        sub_1891951E8(v11, v61, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v34 = v70;
        sub_18A4A8888();
        v35 = *(v33 + 32);
        sub_18A4A7C98();
        v68 = 0;
        v69 = 0xE000000000000000;
        v36 = *v33;
        v37 = *(v33 + 8);
        v38 = *(v33 + 16);
        v39 = *(v33 + 24);
        v64 = *v33;
        v65 = v37;
        v66 = v38;
        v67 = v39;
        type metadata accessor for CGRect(0);
        sub_18A4A82D8();
        sub_18A4A7348();

        v40 = *(v33 + 40);
        v62 = *(v33 + 48);
        sub_18A4A7348();
        v41 = sub_18A4A88E8();
        v42 = -1 << *(v34 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v63 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_189195250(v61, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        a5 = v56;
        v11 = v55;
      }

      v46 = ~v42;
      v47 = *(v60 + 72);
      while (1)
      {
        sub_189195180(*(v70 + 48) + v47 * v43, v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v71.origin.x = v36;
        v71.origin.y = v37;
        v71.size.width = v38;
        v71.size.height = v39;
        if (!CGRectEqualToRect(*v13, v71) || ![v13[4] isEqualToTextRange_])
        {
          sub_189195250(v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          goto LABEL_18;
        }

        if (v13[5] == v40 && v13[6] == v62)
        {
          break;
        }

        v48 = sub_18A4A86C8();
        sub_189195250(v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        if (v48)
        {
          goto LABEL_27;
        }

LABEL_18:
        v43 = (v43 + 1) & v46;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if ((*(v63 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_189195250(v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
LABEL_27:
      sub_189195250(v61, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v49 = v54[v44];
      v54[v44] = v49 & ~v45;
      a5 = v56;
      v11 = v55;
    }

    while ((v49 & v45) == 0);
    v19 = v53 - 1;
    if (__OFSUB__(v53, 1))
    {
      goto LABEL_33;
    }
  }

  while (v53 != 1);
}

void sub_189193FE0()
{
  v1 = sub_18A4A29D8();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____UINavigationBarPlatterView_translationKick;
  _s11PlatterViewC13AnimationViewCMa();
  v6 = v5;
  v7 = objc_allocWithZone(v5);
  v8 = &v7[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v8 = 0x74616C736E617274;
  *(v8 + 1) = 0xEB000000006E6F69;
  v44.receiver = v7;
  v44.super_class = v6;
  v9 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v4) = v9;
  v10 = OBJC_IVAR____UINavigationBarPlatterView_scaleOffset;
  v11 = objc_allocWithZone(v6);
  v12 = &v11[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v12 = 0x66664F656C616373;
  *(v12 + 1) = 0xEB00000000746573;
  v43.receiver = v11;
  v43.super_class = v6;
  v13 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v13 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v10) = v13;
  v14 = OBJC_IVAR____UINavigationBarPlatterView_transformViewA;
  v15 = objc_allocWithZone(v6);
  v16 = &v15[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v16 = 0x726F66736E617274;
  *(v16 + 1) = 0xEA0000000000416DLL;
  v42.receiver = v15;
  v42.super_class = v6;
  v17 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v17 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v14) = v17;
  v18 = OBJC_IVAR____UINavigationBarPlatterView_transformViewB;
  v19 = objc_allocWithZone(v6);
  v20 = &v19[OBJC_IVAR____UINavigationBarPlatterAnimationView_name];
  *v20 = 0x726F66736E617274;
  *(v20 + 1) = 0xEA0000000000426DLL;
  v41.receiver = v19;
  v41.super_class = v6;
  v21 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v21 _setIgnoresLayerTransformForSafeAreaInsets_];
  *(v0 + v18) = v21;
  v22 = OBJC_IVAR____UINavigationBarPlatterView_contentView;
  _s11PlatterViewC18PlatterContentViewCMa();
  *(v0 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____UINavigationBarPlatterView_scalePulseScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v24 + 24) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *(v0 + v23) = v24;
  v26 = OBJC_IVAR____UINavigationBarPlatterView_translationKickScheduler;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = sub_188E8D690(v25);
  *(v0 + v26) = v27;
  v28 = OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = sub_188E8D690(v25);
  *(v0 + v28) = v29;
  *(v0 + OBJC_IVAR____UINavigationBarPlatterView_mode) = 0;
  *(v29 + 24) = v30;
  v31 = v0 + OBJC_IVAR____UINavigationBarPlatterView_overrideBackgroundProperties;
  *v31 = xmmword_18A64C520;
  *(v31 + 16) = 0;
  *(v0 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  v32 = (v0 + OBJC_IVAR____UINavigationBarPlatterView_pointerAssistantID);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_18A4A80E8();

  v39 = 0xD00000000000002DLL;
  v40 = 0x800000018A6AE4F0;
  sub_18A4A29C8();
  v33 = sub_18A4A2988();
  v35 = v34;
  (*(v37 + 8))(v3, v38);
  MEMORY[0x18CFE22D0](v33, v35);

  v36 = v40;
  *v32 = v39;
  v32[1] = v36;
  sub_18A4A8398();
  __break(1u);
}

void sub_18919440C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_itemViews) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____UINavigationBarPlatterContentView_badgeViews) = MEMORY[0x1E69E7CC8];
  v2 = OBJC_IVAR____UINavigationBarPlatterContentView_glassView;
  _s11PlatterViewC16PlatterGlassViewCMa();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____UINavigationBarPlatterContentView_itemContainer;
  _s11PlatterViewC20SubviewContainerViewCMa();
  v5 = v4;
  v6 = objc_allocWithZone(v4);
  *(v1 + v3) = sub_1891907F0(0x736D657449, 0xE500000000000000);
  v7 = OBJC_IVAR____UINavigationBarPlatterContentView_badgeContainer;
  v8 = objc_allocWithZone(v5);
  *(v1 + v7) = sub_1891907F0(0x736567646142, 0xE600000000000000);
  sub_18A4A8398();
  __break(1u);
}

id sub_189194524(void *a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    v7 = a1;
    [v6 request:a2 locationInView:v2];
    v8 = [v2 hitTest:0 withEvent:?];
    if (!v8)
    {
LABEL_5:

      return 0;
    }

    v9 = v8;
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v10 = v9;
    v11 = v2;
    v12 = sub_18A4A7C88();

    if (v12)
    {

      goto LABEL_5;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13 || ([v13 isEnabled] & 1) != 0)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        [v14 _buttonBarHitRect];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
        v24 = sub_18A4A7CB8();
        v25 = [v6 createRegionFromRect:v15 targetView:v24 identifier:objc_msgSend(v15 selected:{sel_isSelected), v17, v19, v21, v23}];
LABEL_14:
        v36 = v25;

        return v36;
      }

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        [v26 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
        v24 = sub_18A4A7CB8();
        v25 = [v6 createRegionFromRect:v27 targetView:v24 identifier:objc_msgSend(v27 selected:{sel_isSelected), v29, v31, v33, v35}];
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

void sub_1891947DC()
{
  v1 = *(sub_18A4A5FA8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_18918AFAC(v0 + v2, v5, v3, v4);
}

id sub_18919486C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v7[0] = *(v0 + 24);
  v7[1] = v2;
  v3 = *(v0 + 72);
  v7[2] = *(v0 + 56);
  v7[3] = v3;
  v4 = *(v0 + 136);
  v7[6] = *(v0 + 120);
  v7[7] = v4;
  v5 = *(v0 + 104);
  v7[4] = *(v0 + 88);
  v7[5] = v5;
  return [*(v1 + OBJC_IVAR____UINavigationBarPlatterView_translationKick) setTransform3D_];
}

uint64_t sub_1891948E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F040, &qword_18A66CF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18919496C()
{
  v1 = *(type metadata accessor for NavigationBarPlatterContainer.Settings(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);

  sub_18918F3B4(v0 + v2, v4, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

void sub_189194A24()
{
  v1 = *(type metadata accessor for NavigationBarPlatterContainer.Settings(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_18918E7D0(v0 + v2, v4, v5);
}

uint64_t objectdestroy_88Tm()
{
  v1 = (type metadata accessor for NavigationBarPlatterContainer.Settings(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_18A4A4BE8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_18A4A4A88();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_18A4A4B78();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = sub_18A4A4C78();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_189194CC4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_312Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_362Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

id sub_189194E20(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t objectdestroy_382Tm()
{
  v1 = sub_18A4A5FA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_189194EF8()
{
  sub_18A4A5FA8();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  sub_18918D1A0(v1, v2, v3);
}

id sub_189194FBC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____UINavigationBarPlatterView_scaleOffset);
  [v1 transform3D];
  v3[4] = v11;
  v3[5] = v12;
  v3[0] = v7;
  v3[1] = v8;
  v3[2] = v9;
  v3[3] = v10;
  v6 = v14;
  v4 = v13;
  v5 = 0;
  return [v1 setTransform3D_];
}

id sub_189195054()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____UINavigationBarPlatterView_scaleOffset);
  [v1 transform3D];
  v3[2] = v9;
  v3[3] = v10;
  v3[4] = v11;
  v3[5] = v12;
  v3[0] = v7;
  v3[1] = v8;
  v5 = v13;
  v6 = v14;
  v4 = 0;
  return [v1 setTransform3D_];
}

id sub_189195108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v10[2] = v2[2];
  v10[3] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v10[6] = v2[6];
  v10[7] = v8;
  v10[4] = v6;
  v10[5] = v7;
  return [v1 setTransform3D_];
}

uint64_t sub_189195180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1891951E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_189195250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1891952B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_189195464(char *a1)
{
  v2 = v1;
  v4 = sub_18A4A2D68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(&v28 - v7, v2 + v8, v4);
  swift_beginAccess();
  v10 = *(v5 + 24);
  v32 = a1;
  v10(v2 + v8, a1, v4);
  v11 = swift_endAccess();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v29 = v9;
  v30 = v7;
  v13 = &v28 - v7;
  (v9)(&v28 - v7, v2 + v8, v4, v12);
  sub_1891964A0();
  v31 = &v28 - v7;
  v14 = sub_18A4A7248();
  v15 = *(v5 + 8);
  v16 = v15(v13, v4);
  if ((v14 & 1) == 0)
  {
    v28 = &v28;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = v30;
    v19 = &v28 - v30;
    v20 = v29(&v28 - v30, v2 + v8, v4, v17);
    v21 = MEMORY[0x1EEE9AC00](v20);
    v22 = &v28 - v18;
    (*(v5 + 104))(&v28 - v18, *MEMORY[0x1E6999C50], v4, v21);
    LOBYTE(v18) = sub_18A4A2D58();
    v15(v22, v4);
    v15(v19, v4);
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating);
    }

    *(v2 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift) = v23;
    v24 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v25 = objc_opt_self();
    aBlock[4] = sub_189196600;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_22_4;
    v26 = _Block_copy(aBlock);

    [v25 animateWithDuration:2 delay:v26 options:0 animations:0.2 completion:0.0];

    _Block_release(v26);
  }

  v15(v32, v4);
  return v15(v31, v4);
}

id sub_189195824(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView;
  *&v4[v10] = [objc_allocWithZone(_UILiquidLensView) init];
  v4[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift] = 0;
  v11 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  v12 = *MEMORY[0x1E6999C48];
  v13 = sub_18A4A2D68();
  (*(*(v13 - 8) + 104))(&v4[v11], v12, v13);
  v4[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for _UISwitchDesignLibraryKnobView(0);
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1891959AC();

  return v14;
}

void sub_1891959AC()
{
  v1 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView;
  v2 = [*&v0[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView] layer];
  [v2 setCornerCurve_];

  v3 = [*&v0[v1] layer];
  [v3 setCornerRadius_];

  v4 = [*&v0[v1] layer];
  [v4 setShadowPathIsBounds_];

  v5 = *&v0[v1];
  v6 = objc_allocWithZone(UIColor);
  v27[4] = sub_189195DF0;
  v27[5] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188BC2240;
  v27[3] = &block_descriptor_17_3;
  v7 = _Block_copy(v27);
  v8 = v5;
  v9 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  [v8 setBackgroundColor_];

  v10 = *&v0[v1];
  [v0 bounds];
  [v10 setFrame_];

  [*&v0[v1] setAutoresizingMask_];
  [v0 addSubview_];
  v11 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView;
  [*&v0[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView] setAlpha_];
  [*&v0[v11] setLifted:0 animated:1 alongsideAnimations:0 completion:0];
  [*&v0[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64B810;
  v14 = [*&v0[v11] leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v13 + 32) = v16;
  v17 = [*&v0[v11] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v13 + 40) = v19;
  v20 = [*&v0[v11] topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v13 + 48) = v22;
  v23 = [*&v0[v11] bottomAnchor];
  v24 = [v0 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v13 + 56) = v25;
  sub_1890ECC04();
  v26 = sub_18A4A7518();

  [v12 activateConstraints_];
}

id sub_189195DF0(void *a1)
{
  v2 = [a1 userInterfaceIdiom];
  v3 = [a1 userInterfaceStyle];
  if (v2 == 8)
  {
    v4 = objc_opt_self();
    if (v3 == 2)
    {
      v5 = [v4 darkGrayColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

LABEL_10:

    return v5;
  }

  if (v3 != 2)
  {
    v5 = [objc_opt_self() whiteColor];
    goto LABEL_10;
  }

  v6 = objc_allocWithZone(UIColor);

  return [v6 initWithWhite:1.0 alpha:0.85];
}

void sub_189195EDC(char a1)
{
  v3 = sub_18A4A2D68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  swift_beginAccess();
  v8 = (*(v4 + 16))(v6, v1 + v7, v3);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v4 + 104))(v6, *MEMORY[0x1E6999C50], v3, v9);
  v10 = sub_18A4A2D58();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v6, v3);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating);
  }

  *(v1 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v14 = objc_opt_self();
    aBlock[4] = sub_189196498;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_139;
    v15 = _Block_copy(aBlock);

    [v14 animateWithDuration:2 delay:v15 options:0 animations:0.2 completion:0.0];

    _Block_release(v15);
  }

  else
  {

    sub_18919617C(v16);
  }
}

void sub_18919617C(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView];

  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = v3[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift];

  [v2 setLifted:v4 animated:1 alongsideAnimations:0 completion:0];
  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = *&v5[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView];

  v7 = swift_unknownObjectUnownedLoadStrong();
  LODWORD(v5) = v7[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift];

  if (v5)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v6 setAlpha_];

  v9 = swift_unknownObjectUnownedLoadStrong();
  v13 = *&v9[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView];

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = v10[OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift];

  if (v11)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  [v13 setAlpha_];
}

id sub_1891962D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UISwitchDesignLibraryKnobView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _UISwitchDesignLibraryKnobView(uint64_t a1)
{
  result = qword_1EA92F918;
  if (!qword_1EA92F918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1891963EC(uint64_t a1)
{
  result = sub_18A4A2D68();
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

unint64_t sub_1891964A0()
{
  result = qword_1EA92FAB8;
  if (!qword_1EA92FAB8)
  {
    sub_18A4A2D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FAB8);
  }

  return result;
}

void sub_1891964EC()
{
  v1 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_knobView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_liquidLensKnobView;
  *(v0 + v2) = [objc_allocWithZone(_UILiquidLensView) init];
  *(v0 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_shouldLift) = 0;
  v3 = OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_state;
  v4 = *MEMORY[0x1E6999C48];
  v5 = sub_18A4A2D68();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  *(v0 + OBJC_IVAR____TtC5UIKit30_UISwitchDesignLibraryKnobView_isAnimating) = 0;
  sub_18A4A8398();
  __break(1u);
}

void sub_189196668(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_189196700()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1EA93F080 = result;
  return result;
}

uint64_t static UITraitSplitViewControllerLayoutEnvironment.affectsColorAppearance.getter()
{
  if (qword_1EA931F90 != -1)
  {
    swift_once();
  }

  return byte_1EA93F080;
}

uint64_t sub_1891967E4()
{
  if (qword_1EA931F90 != -1)
  {
    swift_once();
  }

  return byte_1EA93F080;
}

uint64_t UIMutableTraits.splitViewControllerLayoutEnvironment.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_1891968B0();
  v4(&v7, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v5, a1, a2);
  return v7;
}

unint64_t sub_1891968B0()
{
  result = qword_1EA93F088;
  if (!qword_1EA93F088)
  {
    type metadata accessor for LayoutEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F088);
  }

  return result;
}

uint64_t UIMutableTraits.splitViewControllerLayoutEnvironment.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_1891968B0();
  return v5(&v8, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v6, a2, a3);
}

void (*UIMutableTraits.splitViewControllerLayoutEnvironment.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_1891968B0();
  v8(&type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v9, a2, a3);
  return sub_189196A4C;
}

void sub_189196A4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_1891968B0();
  v4(v1, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &type metadata for UITraitSplitViewControllerLayoutEnvironment, &protocol witness table for UITraitSplitViewControllerLayoutEnvironment, v5, v3, v2);

  free(v1);
}

uint64_t AttributeScopes.UIKitAttributes.accessibility.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A24C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttributeScopes.UIKitAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributeScopes.UIKitAttributes(0) + 104);
  v4 = sub_18A4A24B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_189196C70(uint64_t a1)
{
  sub_188B9BD08(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);

  return sub_18A4A2468();
}

uint64_t sub_189196CEC(uint64_t a1)
{
  sub_188B9BD08(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);

  return sub_18A4A2468();
}

double sub_189196F28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_18A4A8718();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_189196FD8(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    v2 = sub_18A4A86E8();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return v2;
}

void sub_189197074(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    v4 = sub_18A4A86E8();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    *a2 = v4;
  }
}

double sub_18919711C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_18A4A8718();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

double static AttributeScopes.UIKitAttributes.TextEffectAttribute.encode(_:to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  sub_18A4A7288();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_18A4A8708();

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static AttributeScopes.UIKitAttributes.TextEffectAttribute.decode(from:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    sub_18A4A86D8();
    v2 = sub_18A4A7258();

    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return v2;
}

void sub_1891973C8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    sub_18A4A86D8();
    v4 = sub_18A4A7258();

    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    *a2 = v4;
  }
}

double sub_18919748C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  sub_18A4A7288();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_18A4A8708();

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

void AttributedString.AdaptiveImageGlyph.init(_:)(void *a1)
{
  v1 = [a1 _CTAdaptiveImageGlyph];
  sub_18A4A2558();
}

id NSAdaptiveImageGlyph.init(_:)(uint64_t a1)
{
  sub_188A34624(0, &qword_1EA93F098, 0x1E69655D8);
  v2 = sub_18A4A7B38();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCTAdaptiveImageGlyph_];

  v4 = sub_18A4A2568();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.runBoundaries.getter@<X0>(void *a1@<X8>)
{
  *a1 = 12369903;
  a1[1] = 0xA300000000000000;
  v2 = *MEMORY[0x1E6968700];
  v3 = sub_18A4A2508();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

id static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.objectiveCValue(for:)(uint64_t a1)
{
  v2 = sub_18A4A2568();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  sub_188A34624(0, &qword_1EA93F098, 0x1E69655D8);
  v7 = sub_18A4A7B38();
  v8 = [objc_allocWithZone(off_1E70ECAF8) initWithCTAdaptiveImageGlyph_];

  (*(v3 + 8))(v6, v2);
  return v8;
}

double static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.encode(_:to:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_18A4A2568();
  sub_188B9BD08(&qword_1EA93F0A0, MEMORY[0x1E69655A0], MEMORY[0x1E69655A8]);
  sub_18A4A8728();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

double static AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute.decode(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    sub_18A4A2568();
    sub_188B9BD08(&qword_1EA93F0A8, MEMORY[0x1E69655A0], MEMORY[0x1E69655B8]);
    sub_18A4A86F8();
    return __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return result;
}

unint64_t sub_189197D34()
{
  result = qword_1EA93F0B0;
  if (!qword_1EA93F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0B0);
  }

  return result;
}

unint64_t sub_189197D88()
{
  result = qword_1EA93F0B8;
  if (!qword_1EA93F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0B8);
  }

  return result;
}

unint64_t sub_189197DE8()
{
  result = qword_1EA93F0C0;
  if (!qword_1EA93F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0C0);
  }

  return result;
}

unint64_t sub_189197E3C()
{
  result = qword_1EA93F0C8;
  if (!qword_1EA93F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0C8);
  }

  return result;
}

unint64_t sub_189197E90()
{
  result = qword_1EA93F0D0;
  if (!qword_1EA93F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0D0);
  }

  return result;
}

unint64_t sub_189197EE4()
{
  result = qword_1EA93F0D8;
  if (!qword_1EA93F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0D8);
  }

  return result;
}

unint64_t sub_189197F38()
{
  result = qword_1EA93F0E0;
  if (!qword_1EA93F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0E0);
  }

  return result;
}

unint64_t sub_189197FBC()
{
  result = qword_1EA93F0E8;
  if (!qword_1EA93F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0E8);
  }

  return result;
}

unint64_t sub_189198058()
{
  result = qword_1EA92F740;
  if (!qword_1EA92F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F740);
  }

  return result;
}

unint64_t sub_1891980AC()
{
  result = qword_1EA93F0F0;
  if (!qword_1EA93F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0F0);
  }

  return result;
}

unint64_t sub_189198100()
{
  result = qword_1EA93F0F8;
  if (!qword_1EA93F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F0F8);
  }

  return result;
}

unint64_t sub_189198154()
{
  result = qword_1EA93F100;
  if (!qword_1EA93F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F100);
  }

  return result;
}

unint64_t sub_1891981A8()
{
  result = qword_1EA93F108;
  if (!qword_1EA93F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F108);
  }

  return result;
}

unint64_t sub_1891981FC()
{
  result = qword_1EA93F110;
  if (!qword_1EA93F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F110);
  }

  return result;
}

unint64_t sub_189198250()
{
  result = qword_1EA93F118;
  if (!qword_1EA93F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F118);
  }

  return result;
}

double sub_1891982A4(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8988();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    sub_18A4A2568();
    sub_188B9BD08(&qword_1EA93F0A8, MEMORY[0x1E69655A0], MEMORY[0x1E69655B8]);
    sub_18A4A86F8();
    return __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return result;
}

double sub_189198390(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_18A4A89B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_18A4A2568();
  sub_188B9BD08(&qword_1EA93F0A0, MEMORY[0x1E69655A0], MEMORY[0x1E69655A8]);
  sub_18A4A8728();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_189198470(uint64_t a1)
{
  v2 = sub_18A4A2568();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  sub_188A34624(0, &qword_1EA93F098, 0x1E69655D8);
  v7 = sub_18A4A7B38();
  v8 = [objc_allocWithZone(off_1E70ECAF8) initWithCTAdaptiveImageGlyph_];

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_189198638@<X0>(void *a1@<X8>)
{
  *a1 = 12369903;
  a1[1] = 0xA300000000000000;
  v2 = *MEMORY[0x1E6968700];
  v3 = sub_18A4A2508();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

unint64_t sub_18919878C()
{
  result = qword_1EA92F708;
  if (!qword_1EA92F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F708);
  }

  return result;
}

unint64_t sub_1891987E0()
{
  result = qword_1EA92EEB0;
  if (!qword_1EA92EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EEB0);
  }

  return result;
}

void sub_1891989BC(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_189198A54()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1EA93F148 = result;
  return result;
}

uint64_t static UITraitColorVariant.affectsColorAppearance.getter()
{
  if (qword_1EA931FB0 != -1)
  {
    swift_once();
  }

  return byte_1EA93F148;
}

uint64_t sub_189198B38()
{
  if (qword_1EA931FB0 != -1)
  {
    swift_once();
  }

  return byte_1EA93F148;
}

Swift::Void __swiftcall UIHostingViewBase._sceneWillDeactivate()()
{
  UIHostingViewBase.updateSceneActivationState()();
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(v0 + v1) = 1;
}

void sub_189198BF4()
{
  UIHostingViewBase.updateSceneActivationState()();
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(v0 + v1) = 0;
  UIHostingViewBase.requestUpdateForFidelity()();
}

Swift::Void __swiftcall UIHostingViewBase._sceneWillEnterForeground()()
{
  UIHostingViewBase.updateSceneActivationState()();
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  v0[v1] = 1;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  sub_188BA94B8(sub_188C48568, v2);

  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  v3[v4] = 0;
  UIHostingViewBase.requestUpdateForFidelity()();
}

void sub_189198D10(void *a1)
{
  v2 = v1;
  v4 = [v1 _effectiveUISettings];
  v5 = 0;
  if (v4 && (v6 = v4, v7 = [v4 cornerRadiusConfiguration], v6, v7))
  {
    [v7 topLeft];
    v5 = v8;
    [v7 topRight];
    v10 = v9;
    [v7 bottomLeft];
    v12 = v11;
    [v7 bottomRight];
    v14 = v13;

    v15 = 0;
  }

  else
  {
    v15 = -1;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  v16 = [v2 _coordinateSpace];
  v17 = [(UIWindowScene *)v2 _typedStorage];
  v18 = sub_18901F404();

  if (v18)
  {
    v20 = *(v18 + 48);
    v19 = *(v18 + 64);
    v37 = *(v18 + 96);
    v21 = *(v18 + 80);
    v35 = v19;
    v36 = v21;
    v33 = *(v18 + 32);
    v34 = v20;
    *(v18 + 32) = v5;
    *(v18 + 40) = v15;
    *(v18 + 48) = v10;
    *(v18 + 56) = v15;
    *(v18 + 64) = v12;
    *(v18 + 72) = v15;
    *(v18 + 80) = v14;
    *(v18 + 88) = v15;
    *(v18 + 96) = MEMORY[0x1E69E7CC0];

    sub_188E4342C(&v33);
    swift_getKeyPath();
    sub_188E434C4();
    sub_18A4A2C08();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong || (swift_unknownObjectRelease(), Strong != v16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_unknownObjectRetain();
      sub_18A4A2BF8();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *&v33 = v5;
    BYTE8(v33) = v15;
    *&v34 = v10;
    BYTE8(v34) = v15;
    *&v35 = v12;
    BYTE8(v35) = v15;
    *&v36 = v14;
    BYTE8(v36) = v15;
    v37 = MEMORY[0x1E69E7CC0];
    type metadata accessor for _UICornerProvider(0);
    v24 = swift_allocObject();
    swift_getObjectType();
    v25 = swift_unknownObjectRetain();
    v18 = sub_188F2E28C(v25, &v33, v24);
    swift_unknownObjectRelease();

    v26 = [(UIWindowScene *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936900, &unk_18A651020);
    v27 = swift_allocObject();
    *(v27 + 16) = v18;
    v28 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(&v26->super.isa + v28);
    *(&v26->super.isa + v28) = 0x8000000000000000;
    sub_188A40430(v27, &_s17CornerProviderKeyVN_0, isUniquelyReferenced_nonNull_native);
    *(&v26->super.isa + v28) = v32;
    swift_endAccess();
  }

  sub_188F2BF74();
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v30 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B6CC(&type metadata for _UICornerProvider.Trait, sub_188E192C0, 0);
  os_unfair_lock_unlock(v30[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v31 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a1 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1891992A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v4 = type metadata accessor for IdentityWeakBox(255, *(a2 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for CompactableSet(0, v4, WitnessTable, v6);
  return sub_1890FA954(&v9, v7);
}

uint64_t sub_189199310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for IdentityWeakBox(255, *(a1 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for CompactableSet.Iterator(0, v4, WitnessTable, v6);
  sub_1890FAC24(v7, &v9);
  return v9;
}

uint64_t sub_18919937C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_189199310(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

double sub_1891993A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for IdentityWeakBox(0, a2, a3, a4);
  swift_getWitnessTable();
  sub_1890FABE8(a1, v10);
  v7 = v11;
  result = *v10;
  v9 = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = v9;
  *(a5 + 32) = v7;
  return result;
}

double sub_189199424@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1891993A4(*v4, *(a1 + 16), a2, a3, v8);

  result = *v8;
  v7 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v9;
  return result;
}

uint64_t sub_18919947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for IdentityWeakBox(0, a3, a3, a4);
  WitnessTable = swift_getWitnessTable();

  return sub_1890FB3E4(a1, a2, v6, WitnessTable);
}

void sub_189199504(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = sub_1891997C4(a1, *(a2 + 16));

  *a3 = v4;
}

uint64_t sub_189199548(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_189199584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - v12;
  v16 = type metadata accessor for IdentityWeakBox(0, a2, v14, v15);
  swift_getWitnessTable();
  v25 = sub_1890FAB6C(v16);
  (*(v7 + 16))(v9, a1, a3);
  sub_18A4A7458();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    do
    {
      sub_18A4A7D78();
      v19 = v24;
    }

    while (!v24);
    if (v24 == 1)
    {
      break;
    }

    v20 = type metadata accessor for WeakSet(0, a2, v17, v18);
    sub_1891992A0(v19, v20, v21, v22);
    sub_189199838(v19);
  }

  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return v25;
}

unint64_t sub_1891997C4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_18A4A7D38();
  v3 = sub_18A4A7648();
  WitnessTable = swift_getWitnessTable();
  return sub_189199584(&v6, a2, v3, WitnessTable);
}

double sub_189199838(uint64_t a1)
{
  if (a1 != 1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_189199848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1891998A8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView;
  type metadata accessor for _UITabBarPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v2] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView;
  *&v0[v4] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelAction] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing] = 0;
  v5 = objc_opt_self();
  v6 = [v5 configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
  v7 = [v5 configurationWithWeight_];
  v8 = [v6 configurationByApplyingConfiguration_];

  v9 = [objc_opt_self() plainButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30, &unk_18A64F460);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v11 = sub_18A4A7258();
  v12 = [objc_opt_self() systemImageNamed_];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v13 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18919A1FC();
    swift_dynamicCast();
    v13 = v28;
    v14 = swift_allocObject();
    *(v14 + 16) = v28;

    inited = v14;
  }

  [v13 setImage_];

  v15 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18919A1FC();
    swift_dynamicCast();
    v16 = v28;
    v17 = swift_allocObject();
    *(v17 + 16) = v28;

    inited = v17;
  }

  [v16 setPreferredSymbolConfigurationForImage_];

  v18 = [objc_opt_self() labelColor];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_18919A1FC();
    swift_dynamicCast();
    v19 = swift_allocObject();
    *(v19 + 16) = v28;

    inited = v19;
  }

  [*(inited + 16) setBaseForegroundColor_];

  v20 = [objc_opt_self() buttonWithConfiguration:*(inited + 16) primaryAction:0];
  [v20 setAutoresizingMask_];
  *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelButton] = v20;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v21 = v20;
  v22 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView;
  v24 = *&v22[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView];
  v25 = v22;
  [v24 setHidden_];
  [*&v22[v23] addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];

  return v25;
}

id sub_189199DD4()
{
  v40 = *MEMORY[0x1E69E9840];
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  v1 = [v0 _shouldReverseLayoutDirection];
  if (v1)
  {
    v2 = CGRectMinXEdge;
  }

  else
  {
    v2 = CGRectMaxXEdge;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v41);
  [v0 bounds];
  v35 = v5;
  v36 = v4;
  v33 = v7;
  v34 = v6;
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v42, &slice, &remainder, Height, v2);
  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  v11 = slice.size.height;
  v12 = remainder.origin.x;
  v13 = remainder.origin.y;
  v14 = remainder.size.width;
  v15 = remainder.size.height;
  v16 = *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView];
  [v16 frame];
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = v11;
  if (!CGRectEqualToRect(v43, v45))
  {
    [v16 setFrame_];
    [v16 layoutIfNeeded];
  }

  v17 = v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction];
  v18 = 8;
  if (v1)
  {
    v18 = 2;
  }

  v20 = v35;
  v19 = v36;
  if (v17 == 1)
  {
    v19 = v12;
    v20 = v13;
  }

  v22 = v33;
  v21 = v34;
  if (v17 == 1)
  {
    v21 = v14;
    v22 = v15;
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  v24 = UIRectInsetEdges(v23, v19, v20, v21, v22, *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing]);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *&v0[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
  [v31 frame];
  v46.origin.x = v24;
  v46.origin.y = v26;
  v46.size.width = v28;
  v46.size.height = v30;
  result = CGRectEqualToRect(v44, v46);
  if ((result & 1) == 0)
  {
    [v31 setFrame_];
    return [v31 layoutIfNeeded];
  }

  return result;
}

void sub_18919A128()
{
  v1 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView;
  type metadata accessor for _UITabBarPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelAction) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_showsCancelAction) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_interPlatterSpacing) = 0;
  sub_18A4A8398();
  __break(1u);
}

unint64_t sub_18919A1FC()
{
  result = qword_1EA930A50;
  if (!qword_1EA930A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930A50);
  }

  return result;
}

uint64_t sub_18919A2A8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_18919A34C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

id sub_18919A3F8(void *a1)
{
  v3 = [v1 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 windowScene];

    if (v5)
    {
      v6 = [v5 _effectiveUISettings];

      v7 = [v6 cornerRadiusConfiguration];
      if (v7)
      {
        return v7;
      }
    }
  }

  [a1 displayCornerRadius];
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x1E698E668]);

  return [v11 initWithCornerRadius_];
}

double sub_18919A500(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_18919A550(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C0, &qword_18A66ECA8);
    v2 = sub_18A4A8088();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    v12 = sub_18A4A8018();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    v10 = *(v2 + 48) + 40 * v9;
    *(v10 + 32) = v22;
    *v10 = v20;
    *(v10 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_18919A864()
{
  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0x47417465656853, 0xE700000000000000, 0);

    byte_1ED48E910 = v2 & 1;
  }

  else
  {
    __break(1u);
  }
}

_UISheetLayoutInfoProvider __swiftcall _UISheetLayoutInfoProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18919A984()
{
  result = AGGraphCreate();
  qword_1EA93F208 = result;
  return result;
}

id sub_18919A9A4()
{
  ObjectType = swift_getObjectType();
  AGSubgraphInvalidate();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18919AC04(char a1)
{
  v3 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v3;
  if (Strong)
  {
    v6 = v3;
    do
    {
      v5 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v6 = v5;
    }

    while (Strong);
  }

  v21 = v5;
  v7 = v21;
  if ((a1 & 1) == 0)
  {
LABEL_5:
    v8 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated];
    if (v8)
    {
      v9 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated + 8];

      v8(v10);
      sub_188A55B8C(v8, v9);
    }

    v11 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated];
    if (v11)
    {
      v12 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8];

      v11(v13);
      sub_188A55B8C(v11, v12);
    }

    v14 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated];
    if (v14)
    {
      v15 = *&v7[OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8];

      v14(v16);
      sub_188A55B8C(v14, v15);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      [v17 _sheetLayoutInfoDidInvalidateDetentValues_];
      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  while (1)
  {
LABEL_13:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      [v18 _sheetLayoutInfoDidInvalidateUntransformedFrame_];
      swift_unknownObjectRelease();
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      [v19 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }

    v20 = swift_unknownObjectWeakLoadStrong();

    if (!v20)
    {
      break;
    }

    v7 = v20;
    if ((a1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }
}

void sub_18919B0BC()
{
  v3[1] = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
  }

  swift_weakInit();
  swift_weakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8, &qword_18A66ECB0);
  v2 = AGGraphSetValue();
  sub_188A3F5FC(v3, &qword_1EA93F3C8, &qword_18A66ECB0);
  if (v2)
  {
    sub_18919AC04(0);
  }
}

void sub_18919B218()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0, &qword_18A66ECB8);
  v2 = AGGraphSetValue();

  if (v2)
  {
    sub_18919AC04(0);
  }
}

void sub_18919B348(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    swift_getObjectType();
    swift_dynamicCastClassUnconditional();
  }

  swift_unknownObjectWeakAssign();
  v8 = a1;
  v7 = swift_unknownObjectRetain();
  a5(v7);
  swift_unknownObjectRelease();
}

void sub_18919C1D8(char a1)
{
  if (AGGraphSetValue())
  {
    AGGraphClearUpdate();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0, &qword_18A653940);
    v3 = *AGGraphGetValue();
    v4 = v3;
    AGGraphSetUpdate();
    if (v3)
    {
      v5 = &selRef__addBoundingPathChangeObserver_;
      if ((a1 & 1) == 0)
      {
        v5 = &selRef__removeBoundingPathChangeObserver_;
      }

      [v4 *v5];
    }

    sub_18919AC04(0);
  }
}

void sub_18919E084(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_9;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380, &qword_18A66EC88);
  v1 = AGGraphSetValue();

  if (v1)
  {
    if (AGGraphSetValue())
    {
      sub_18919AC04(0);
    }

    sub_18919AC04(0);
  }
}

double (*sub_1891A0048())()
{
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E0, &qword_18A66ECC8);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  sub_188A52E38(*Value, v2);
  AGGraphSetUpdate();
  if (!v1)
  {
    return 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  return sub_1891BA97C;
}

void sub_1891A01B8()
{
  AGGraphInvalidateValue();
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v1;
  if (Strong)
  {
    v4 = v1;
    do
    {
      v3 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v4 = v3;
    }

    while (Strong);
  }

  v9 = v3;
  v5 = v9;
  do
  {
    v6 = v5;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      [v7 _sheetLayoutInfoDidInvalidateUntransformedFrame_];
      swift_unknownObjectRelease();
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      [v8 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }

    v5 = swift_unknownObjectWeakLoadStrong();
  }

  while (v5);
}

id sub_1891A0920(void *a1)
{
  v1 = a1;
  AGGraphClearUpdate();
  sub_188A34624(0, &qword_1ED490410, off_1E70EABD0);
  v2 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v2;
}

double sub_1891A0A84()
{
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  v8 = *AGGraphGetValue();
  Height = CGRectGetHeight(v8);
  Value = AGGraphGetValue();
  v2 = 0.0;
  if (*Value == 1)
  {
    v3 = *AGGraphGetValue();
    type metadata accessor for UIEdgeInsets(0);
    v4 = AGGraphGetValue();
    v5 = 16;
    if (v3)
    {
      v5 = 0;
    }

    v2 = *(v4 + v5);
  }

  v6 = Height - v2;
  AGGraphSetUpdate();
  return v6;
}

double sub_1891A0B68()
{
  type metadata accessor for CGRect(0);
  v7 = *AGGraphGetValue();
  Height = CGRectGetHeight(v7);
  Value = AGGraphGetValue();
  v2 = 0.0;
  if (*Value == 1)
  {
    v3 = *AGGraphGetValue();
    type metadata accessor for UIEdgeInsets(0);
    v4 = AGGraphGetValue();
    v5 = 16;
    if (v3)
    {
      v5 = 0;
    }

    v2 = *(v4 + v5);
  }

  return Height - v2;
}

double sub_1891A0CB4()
{
  AGGraphClearUpdate();
  v0 = *AGGraphGetValue();
  v1 = sub_1891A0B68();
  if (v0 == 1)
  {
    type metadata accessor for CGRect(0);
    v4 = *AGGraphGetValue();
    MinY = CGRectGetMinY(v4);
    type metadata accessor for UIEdgeInsets(0);
    v1 = v1 + MinY - *AGGraphGetValue();
  }

  AGGraphSetUpdate();
  return v1;
}

void sub_1891A0D7C()
{
  v0 = *AGGraphGetValue();
  sub_1891A0B68();
  if (v0 == 1)
  {
    type metadata accessor for CGRect(0);
    v1 = *AGGraphGetValue();
    CGRectGetMinY(v1);
    type metadata accessor for UIEdgeInsets(0);
    AGGraphGetValue();
  }
}

double sub_1891A1020()
{
  AGGraphClearUpdate();
  if (*AGGraphGetValue())
  {
    v0 = 1.0 - *AGGraphGetValue();
  }

  else
  {
    v0 = *(AGGraphGetValue() + 8);
  }

  AGGraphSetUpdate();
  return v0;
}

double sub_1891A10BC()
{
  if (*AGGraphGetValue())
  {
    return 1.0 - *AGGraphGetValue();
  }

  else
  {
    return *(AGGraphGetValue() + 8);
  }
}

double sub_1891A1168()
{
  AGGraphClearUpdate();
  type metadata accessor for CGPoint(0);
  v0 = *(AGGraphGetValue() + 8);
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v2 = *(Value + 8);
  v5 = *(Value + 16);
  v4 = *(Value + 24);
  v6 = *AGGraphGetValue();
  type metadata accessor for UIEdgeInsets(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[2];
  v10 = *AGGraphGetValue();
  if (*AGGraphGetValue() == 1)
  {
    v11 = sub_1891A10BC();
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v16.origin.x = v3;
      v16.origin.y = v2;
      v16.size.width = v5;
      v16.size.height = v4;
      v12 = CGRectGetMaxY(v16) - v0;
      v13 = v12 - v9 * v11;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1.0;
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  v17.origin.x = v3;
  v17.origin.y = v2;
  v17.size.width = v5;
  v17.size.height = v4;
  v12 = v0 + CGRectGetMinY(v17);
  v13 = v8 * v11 + v12;
LABEL_6:
  if (v6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  AGGraphSetUpdate();
  return v14;
}

double sub_1891A1A6C()
{
  AGGraphClearUpdate();
  AGGraphGetValue();
  type metadata accessor for CGRect(0);
  v0 = *AGGraphGetValue();
  AGGraphSetUpdate();
  return v0;
}

void sub_1891A1B94()
{
  v0 = *AGGraphGetValue();
  if (*AGGraphGetValue() == 1)
  {
    type metadata accessor for CGRect(0);
    AGGraphGetValue();
    return;
  }

  v1 = *AGGraphGetValue();
  v2 = *AGGraphGetValue();
  v3 = *AGGraphGetValue();
  v4 = *AGGraphGetValue();
  v5 = *AGGraphGetValue();
  v6 = *(AGGraphGetValue() + 8);

  v7 = *(AGGraphGetValue() + 48);
  sub_188A34624(0, &qword_1ED490410, off_1E70EABD0);
  [*AGGraphGetValue() displayScale];
  v9 = v8;
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v12 = *Value;
  v11 = *(Value + 8);
  v14 = *(Value + 16);
  v13 = *(Value + 24);
  type metadata accessor for UIEdgeInsets(0);
  v33 = *AGGraphGetValue();
  v34 = v5;
  if (v2 != 1)
  {
    if (v3)
    {
      if (v1)
      {
        v16 = v7;

        v17 = INFINITY;
LABEL_17:
        v15 = v34 + _UIClamp_0(v16, v0, v17);
        goto LABEL_18;
      }

      if (v6 >> 62)
      {
        if (sub_18A4A7F68())
        {
LABEL_13:
          if ((v6 & 0xC000000000000001) == 0)
          {
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v16 = v7;
              v19 = *(v6 + 32);
LABEL_16:
              v20 = v19;

              [v20 _value];
              v17 = v21;

              goto LABEL_17;
            }

            __break(1u);
LABEL_41:
            __break(1u);
            return;
          }

LABEL_38:
          v16 = v7;
          v19 = sub_188E4B080(0, v6);
          goto LABEL_16;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (v1)
      {

        v18 = -INFINITY;
        goto LABEL_25;
      }

      if (!(v6 >> 62))
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        goto LABEL_21;
      }
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_37;
    }

LABEL_21:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v23 = v7;
      v24 = sub_188E4B080(0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v23 = v7;
      v24 = *(v6 + 32);
    }

    v25 = v24;

    [v25 _value];
    v27 = v26;

    v18 = v27;
    v7 = v23;
LABEL_25:
    v15 = v34 + _UIClamp_0(v18, v0, v7);
LABEL_26:
    v36.origin.x = v12;
    v36.origin.y = v11;
    v36.size.width = v14;
    v36.size.height = v13;
    v22 = v15 - CGRectGetMinY(v36);
    goto LABEL_27;
  }

  v15 = v0 + v5;
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v35.origin.x = v12;
  v35.origin.y = v11;
  v35.size.width = v14;
  v35.size.height = v13;
  v22 = CGRectGetMaxY(v35) - v15;
LABEL_27:
  if (v4)
  {
    v28 = v33;
  }

  else
  {
    v28 = 0.0;
  }

  v37.origin.x = v12;
  v37.origin.y = v11;
  v37.size.width = v14;
  v37.size.height = v13;
  Height = CGRectGetHeight(v37);
  UIRoundToScale(Height - v22, v9);
  v31 = v30;
  v38.origin.x = v12;
  v38.origin.y = v11;
  v38.size.width = v14;
  v38.size.height = v13;
  CGRectGetMinX(v38);
  if (v3)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0.0;
  }

  UIRoundToScale(v0 + v34 - v28 - v32, v9);
  v39.origin.x = v12;
  v39.origin.y = v11;
  v39.size.width = v14;
  v39.size.height = v13;
  CGRectGetWidth(v39);
}

void sub_1891A2914()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    do
    {
      v3 = Strong;

      Strong = swift_unknownObjectWeakLoadStrong();
      v1 = v3;
    }

    while (Strong);
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;
  v15 = v4;
  while (1)
  {
    v5 = v4;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      [v7 _sheetLayoutInfoPrelayout_];

      swift_unknownObjectRelease();
    }

    v9 = swift_unknownObjectWeakLoadStrong();

    if (!v9)
    {
      break;
    }

    v4 = v9;
  }

  for (i = v15; ; i = v14)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = i;
      [v12 _sheetLayoutInfoLayout_];

      swift_unknownObjectRelease();
    }

    v14 = swift_unknownObjectWeakLoadStrong();

    if (!v14)
    {
      break;
    }
  }
}

BOOL sub_1891A2B84()
{
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3C8, &qword_18A66ECB0);
  AGGraphGetValue();
  if (swift_weakLoadStrong())
  {

    v0 = 1;
  }

  else
  {
    type metadata accessor for CGRect(0);
    v2 = *AGGraphGetValue();
    v0 = !CGRectIsNull(v2);
  }

  AGGraphSetUpdate();
  return v0;
}

id sub_1891A2D60(void *a1)
{
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  v8 = sub_18A4A7258();

  type metadata accessor for UIEdgeInsets(0);
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = sub_18A4A7258();

  sub_188A34624(0, &qword_1ED490410, off_1E70EABD0);
  v15 = *AGGraphGetValue();
  v16 = sub_18A4A7258();

  v17 = *AGGraphGetValue();
  v18 = sub_18A4A7258();

  type metadata accessor for _UISheetMode(0);
  *&v295[0] = *AGGraphGetValue();
  v19 = sub_18A4A8778();
  v20 = sub_18A4A7258();

  swift_unknownObjectRelease();
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = sub_18A4A7258();
  v27 = *MEMORY[0x1E695F050];
  v28 = *(MEMORY[0x1E695F050] + 16);
  v29 = *(MEMORY[0x1E695F050] + 24);
  v30 = v22;
  v31 = *(MEMORY[0x1E695F050] + 8);

  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v32 = *AGGraphGetValue();
  v33 = sub_18A4A7258();

  v34 = *AGGraphGetValue();
  v35 = sub_18A4A7258();

  v36 = *AGGraphGetValue();
  v37 = sub_18A4A7258();

  v38 = *AGGraphGetValue();
  v39 = sub_18A4A7258();

  v40 = *AGGraphGetValue();
  v41 = sub_18A4A7258();

  v42 = AGGraphGetValue();
  v43 = *v42;
  v44 = v42[1];
  v46 = v42[2];
  v45 = v42[3];
  v47 = sub_18A4A7258();
  v292 = v27;
  v48 = v27;
  v49 = v31;

  v50 = *AGGraphGetValue();
  v51 = sub_18A4A7258();

  v52 = *AGGraphGetValue();
  v53 = sub_18A4A7258();

  v54 = *AGGraphGetValue();
  v55 = sub_18A4A7258();

  v56 = *AGGraphGetValue();
  v57 = sub_18A4A7258();

  v58 = *AGGraphGetValue();
  v59 = sub_18A4A7258();

  v60 = *AGGraphGetValue();
  v61 = sub_18A4A7258();

  v62 = *AGGraphGetValue();
  v63 = sub_18A4A7258();

  v64 = *AGGraphGetValue();
  v65 = sub_18A4A7258();

  v66 = *AGGraphGetValue();
  v67 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380, &qword_18A66EC88);
  AGGraphGetValue();
  sub_188A34624(0, &unk_1ED490400, off_1E70EA6B8);

  v68 = sub_18A4A7518();

  v69 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390, &qword_18A66EC90);
  v70 = *AGGraphGetValue();
  v71 = sub_18A4A7258();

  sub_188A34624(0, &qword_1EA930A70, off_1E70EC238);
  v72 = *AGGraphGetValue();
  v73 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0, &qword_18A66EC98);
  v74 = *AGGraphGetValue();
  v75 = sub_18A4A7258();

  v76 = *AGGraphGetValue();
  v77 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140, &qword_18A648D50);
  if (*(AGGraphGetValue() + 8))
  {

    v78 = sub_18A4A7258();
  }

  else
  {
    v78 = 0;
  }

  v79 = sub_18A4A7258();
  [a1 appendString:v78 withName:v79 skipIfEmpty:1];

  if (*(AGGraphGetValue() + 8))
  {

    v80 = sub_18A4A7258();
  }

  else
  {
    v80 = 0;
  }

  v81 = sub_18A4A7258();
  [a1 appendString:v80 withName:v81 skipIfEmpty:1];

  v82 = *AGGraphGetValue();
  v83 = sub_18A4A7258();

  v84 = *AGGraphGetValue();
  v85 = sub_18A4A7258();

  v86 = *AGGraphGetValue();
  v87 = sub_18A4A7258();

  v88 = *AGGraphGetValue();
  v89 = sub_18A4A7258();

  v90 = *AGGraphGetValue();
  v91 = sub_18A4A7258();

  v92 = *AGGraphGetValue();
  v93 = sub_18A4A7258();

  v94 = *AGGraphGetValue();
  v95 = sub_18A4A7258();

  v96 = *AGGraphGetValue();
  v97 = sub_18A4A7258();

  v98 = *AGGraphGetValue();
  v99 = sub_18A4A7258();

  v100 = AGGraphGetValue();
  v101 = *v100;
  v102 = v100[1];
  v103 = v100[2];
  v104 = v100[3];
  v105 = sub_18A4A7258();

  v106 = *AGGraphGetValue();
  v107 = sub_18A4A7258();

  v108 = *AGGraphGetValue();
  v109 = sub_18A4A7258();

  v110 = *AGGraphGetValue();
  v111 = sub_18A4A7258();
  v112 = *(v1 + 48);
  [v112 preferredShadowOpacity];

  v114 = *AGGraphGetValue();
  v115 = sub_18A4A7258();
  [v112 shadowRadius];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0, &qword_18A65C630);
  AGGraphGetValue();

  sub_18905769C(v117);

  v118 = sub_18A4A7518();

  v119 = sub_18A4A7258();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B8, &qword_18A66ECA0);
  AGGraphGetValue();

  sub_18919A550(v120);

  v121 = sub_18A4A7798();

  v122 = sub_18A4A7258();

  v123 = *AGGraphGetValue();
  v124 = sub_18A4A7258();

  v125 = AGGraphGetValue();
  v126 = *v125;
  v127 = v125[1];
  v128 = v125[2];
  v129 = v125[3];
  v130 = sub_18A4A7258();

  v131 = AGGraphGetValue();
  v132 = *v131;
  v133 = v131[1];
  v134 = v131[2];
  v135 = v131[3];
  v136 = sub_18A4A7258();

  type metadata accessor for CGSize(0);
  v137 = AGGraphGetValue();
  v138 = *v137;
  v139 = v137[1];
  v140 = sub_18A4A7258();

  v141 = *(AGGraphGetValue() + 8);
  v142 = sub_18A4A7258();

  v143 = *AGGraphGetValue();
  v144 = sub_18A4A7258();

  v145 = *AGGraphGetValue();
  v146 = sub_18A4A7258();

  v147 = *AGGraphGetValue();
  v148 = sub_18A4A7258();

  v149 = *AGGraphGetValue();
  v150 = sub_18A4A7258();

  v151 = *AGGraphGetValue();
  v152 = sub_18A4A7258();

  v153 = *AGGraphGetValue();
  v154 = sub_18A4A7258();

  v155 = *AGGraphGetValue();
  v156 = sub_18A4A7258();

  v157 = *AGGraphGetValue();
  v158 = sub_18A4A7258();

  v159 = *AGGraphGetValue();
  v160 = sub_18A4A7258();

  v161 = AGGraphGetValue();
  v162 = *v161;
  v163 = v161[1];
  v164 = v161[2];
  v165 = v161[3];
  v166 = sub_18A4A7258();

  v167 = AGGraphGetValue();
  v168 = *v167;
  v169 = v167[1];
  v170 = v167[2];
  v171 = v167[3];
  v172 = sub_18A4A7258();

  v173 = *AGGraphGetValue();
  v174 = sub_18A4A7258();

  v175 = AGGraphGetValue();
  v176 = *v175;
  v177 = v175[1];
  v178 = v175[2];
  v179 = v175[3];
  v180 = sub_18A4A7258();

  v181 = AGGraphGetValue();
  v182 = *v181;
  v183 = v181[1];
  v184 = v181[2];
  v185 = v181[3];
  v186 = sub_18A4A7258();

  v187 = *AGGraphGetValue();
  v188 = sub_18A4A7258();

  v189 = *AGGraphGetValue();
  v190 = sub_18A4A7258();

  v191 = *AGGraphGetValue();
  v192 = sub_18A4A7258();

  type metadata accessor for CGPoint(0);
  v193 = AGGraphGetValue();
  v194 = *v193;
  v195 = v193[1];
  v196 = sub_18A4A7258();

  v197 = *AGGraphGetValue();
  v198 = sub_18A4A7258();

  v199 = *AGGraphGetValue();
  v200 = sub_18A4A7258();

  v201 = *AGGraphGetValue();
  v202 = sub_18A4A7258();

  v203 = *AGGraphGetValue();
  v204 = sub_18A4A7258();

  v205 = *AGGraphGetValue();
  v206 = sub_18A4A7258();

  v207 = *AGGraphGetValue();
  v208 = sub_18A4A7258();

  AGGraphGetValue();
  sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);

  v209 = sub_18A4A7518();

  v210 = sub_18A4A7258();

  AGGraphGetValue();
  sub_188A34624(0, &unk_1ED48C6A0, off_1E70EC208);

  v211 = sub_18A4A7518();

  v212 = sub_18A4A7258();

  v213 = *(AGGraphGetValue() + 16);
  v214 = sub_18A4A7258();

  v215 = *(AGGraphGetValue() + 32);
  v216 = sub_18A4A7258();

  v217 = *(AGGraphGetValue() + 48);
  v218 = sub_18A4A7258();

  v219 = *(AGGraphGetValue() + 56);
  v220 = sub_18A4A7258();

  v221 = *AGGraphGetValue();
  v222 = sub_18A4A7258();

  type metadata accessor for _UISheetGrabberAction(0);
  *&v295[0] = *AGGraphGetValue();
  v223 = sub_18A4A8778();
  v224 = sub_18A4A7258();

  swift_unknownObjectRelease();
  v225 = *AGGraphGetValue();
  v226 = sub_18A4A7258();

  v227 = *AGGraphGetValue();
  v228 = sub_18A4A7258();

  v229 = *AGGraphGetValue();
  v230 = sub_18A4A7258();

  v231 = AGGraphGetValue();
  v232 = *v231;
  v233 = v231[1];
  v234 = v231[2];
  v235 = v231[3];
  v236 = sub_18A4A7258();

  v237 = AGGraphGetValue();
  v238 = *v237;
  v239 = v237[1];
  v240 = v237[2];
  v241 = v237[3];
  v242 = sub_18A4A7258();

  v243 = AGGraphGetValue();
  v244 = *v243;
  v245 = v243[1];
  v246 = v243[2];
  v247 = v243[3];
  v248 = sub_18A4A7258();

  v249 = AGGraphGetValue();
  v250 = *v249;
  v251 = v249[1];
  v252 = v249[2];
  v253 = v249[3];
  v254 = sub_18A4A7258();

  type metadata accessor for UIRectCornerRadii(0);
  v255 = AGGraphGetValue();
  v256 = *v255;
  v257 = v255[1];
  v258 = v255[2];
  v259 = v255[3];
  v260 = sub_18A4A7258();

  type metadata accessor for CGAffineTransform(0);
  v261 = AGGraphGetValue();
  v262 = *(v261 + 32);
  v263 = *(v261 + 40);
  v294 = *v261;
  v293 = *(v261 + 16);
  v264 = sub_18A4A7258();
  v295[1] = v293;
  v295[0] = v294;
  v296 = v262;
  v297 = v263;

  v265 = *AGGraphGetValue();
  v266 = sub_18A4A7258();

  v267 = *AGGraphGetValue();
  v268 = sub_18A4A7258();

  v269 = *(AGGraphGetValue() + 8);
  v270 = sub_18A4A7258();

  v271 = *(AGGraphGetValue() + 24);
  v272 = sub_18A4A7258();

  v273 = *AGGraphGetValue();
  v274 = sub_18A4A7258();

  v275 = *AGGraphGetValue();
  v276 = sub_18A4A7258();

  v277 = *AGGraphGetValue();
  v278 = sub_18A4A7258();

  v279 = *AGGraphGetValue();
  v280 = sub_18A4A7258();

  v281 = *AGGraphGetValue();
  v282 = sub_18A4A7258();

  v283 = *AGGraphGetValue();
  v284 = sub_18A4A7258();

  v285 = *AGGraphGetValue();
  v286 = sub_18A4A7258();

  v287 = *AGGraphGetValue();
  v288 = sub_18A4A7258();

  result = [a1 build];
  if (result)
  {
    v290 = result;
    v291 = sub_18A4A7288();

    return v291;
  }

  else
  {
    __break(1u);
  }

  return result;
}