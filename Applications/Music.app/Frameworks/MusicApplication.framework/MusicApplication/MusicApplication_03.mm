id sub_46AC8(uint64_t a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for PageHeaderPlayButton();
  objc_msgSendSuper2(&v30, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 traitCollection];
  [v10 displayScale];

  v11 = [v1 effectiveUserInterfaceLayoutDirection];
  v12 = UIEdgeInsetsInsetRect_0(v3);
  v28 = v13;
  v29 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v1 layer];
  [v18 setCornerCurve:kCACornerCurveCircular];

  v19 = [v1 layer];
  v31.origin.x = v3;
  v31.origin.y = v5;
  v31.size.width = v7;
  v31.size.height = v9;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v3;
  v32.origin.y = v5;
  v32.size.width = v7;
  v32.size.height = v9;
  Height = CGRectGetHeight(v32);
  if (Height >= Width)
  {
    Height = Width;
  }

  v22 = Height * 0.5;
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  [v19 setCornerRadius:v22];

  v23 = *&v1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView];
  [v23 sizeThatFits:{v15, v17}];
  v25 = v24;
  if (v11 == &dword_0 + 1)
  {
    v26 = -0.5;
  }

  else
  {
    v26 = 0.5;
  }

  v33.origin.y = v28;
  v33.origin.x = v29;
  v33.size.width = v15;
  v33.size.height = v17;
  CGRectOffset(v33, v26, 0.0);
  sub_ABA470();
  sub_ABA490();
  return [v23 setFrame:v25];
}

void sub_46DDC(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for PageHeaderPlayButton();
  v11.receiver = v1;
  v11.super_class = v3;
  v4 = objc_msgSendSuper2(&v11, "isHighlighted");
  v10.receiver = v1;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, "setHighlighted:", v2 & 1);
  if (v4 != [v1 isHighlighted])
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_47164;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1B5EB4;
    v9[3] = &block_descriptor_4;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 animateWithDuration:0x20000 delay:v7 options:0 animations:0.5 completion:0.0];
    _Block_release(v7);
  }
}

void sub_46F28(char *a1)
{
  v2 = [a1 isHighlighted];
  v3 = *&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView];
  if (v2)
  {
    v4 = *&a1[OBJC_IVAR___MusicPageHeaderPlayButton_overlayColor];
    v5 = [*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor] _colorBlendedWithColor:v4];
    [v3 setTintColor:v5];

    v7 = [*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor] _colorBlendedWithColor:v4];
    [a1 setBackgroundColor:v7];
  }

  else
  {
    [*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView] setTintColor:*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor]];
    v6 = *&a1[OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor];

    [a1 setBackgroundColor:v6];
  }
}

id sub_47068(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PageHeaderPlayButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_4712C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_471A4()
{
  result = qword_DF1D30;
  if (!qword_DF1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1D30);
  }

  return result;
}

void sub_471F8()
{
  v1 = OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 whiteColor];
  v3 = OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor;
  v4 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v5 = *v4;
  *(v0 + v3) = *v4;
  v6 = OBJC_IVAR___MusicPageHeaderPlayButton_overlayColor;
  v7 = v5;
  v8 = [v2 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.5];

  *(v0 + v6) = v9;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_472EC()
{
  result = qword_DE8700;
  if (!qword_DE8700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8700);
  }

  return result;
}

id sub_47338(id result)
{
  v2 = v1[qword_E70B50];
  if (v2 == (result & 1))
  {
    return result;
  }

  v1[qword_DFE288] = v2;
  v3 = qword_DE8FD0;
  if (v2)
  {
    v4 = *&v1[qword_DE8FD0] == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    result = [v1 loadViewIfNeeded];
    v5 = *&v1[qword_DFE2F8];
    if (!v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    type metadata accessor for NoContentController();
    swift_allocObject();
    *&v1[v3] = sub_3B04BC(v5);

    sub_520E8();
  }

  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_52EFC(0);
  [v1 loadViewIfNeeded];
  result = *&v1[qword_DFE2F8];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return [result reloadData];
}

void sub_47478(void *a1)
{
  v2 = qword_E70B78;
  v3 = *&v1[qword_E70B78];
  *&v1[qword_E70B78] = a1;
  v7 = a1;

  if ([v1 isEditing])
  {
    if (v1[qword_E70B50] == 1 && (v1[qword_E70B60] & 1) == 0)
    {
      v4 = *&v1[v2];
      if (v4)
      {
        v5 = v4;
        if ([v1 isEditing])
        {
          v6 = v5;
          sub_48190(v4);
        }

        sub_3B4724(v4);
      }
    }
  }
}

void sub_47550(char a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[qword_DE8FA8] & 1) == 0 && (a1)
  {
    v12 = *&v1[qword_DFE2F0];
    if (v12)
    {
      v13 = [v12 request];
      if (v13)
      {
        v14 = *&v1[qword_E70B80];
        if (v14)
        {
          v23 = v13;
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);

          v22 = sub_ABA150();
          v15 = swift_allocObject();
          v16 = v23;
          v15[2] = v1;
          v15[3] = v16;
          v15[4] = v14;
          aBlock[4] = sub_57CD8;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B5EB4;
          aBlock[3] = &block_descriptor_278;
          v21 = _Block_copy(aBlock);

          v17 = v1;
          v23 = v23;

          sub_AB7C30();
          aBlock[0] = _swiftEmptyArrayStorage;
          v20 = sub_57DF0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
          sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
          sub_ABABB0();
          v19 = v21;
          v18 = v22;
          sub_ABA160();

          (*(v4 + 8))(v6, v3);
          (*(v8 + 8))(v11, v7);
          _Block_release(v19);
        }

        else
        {
        }
      }
    }
  }
}

void sub_478FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C18, &unk_AF8910);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v13[-v3];
  v5 = qword_DE8FB0;
  swift_beginAccess();
  *&v0[v5] = &_swiftEmptySetSingleton;

  v6 = *&v0[qword_E70B80];
  if (v6)
  {

    sub_AB4400();
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    *(v7 + 24) = v6;
    sub_36A00(&unk_DE9C20, &qword_DE9C18, &unk_AF8910, &protocol conformance descriptor for Published<A>.Publisher);

    v8 = v0;
    sub_AB55C0();
    (*(v2 + 8))(v4, v1);

    swift_beginAccess();
    sub_AB5440();
    swift_endAccess();
  }

  else
  {
    if (qword_DE6740 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_DE8F90);
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "editController was reset", v12, 2u);
    }
  }
}

void sub_47BA4(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_DFE2F0;
  v15 = *&a2[qword_DFE2F0];
  if (!v15 || (v16 = [v15 request]) == 0)
  {
    if (qword_DE6740 != -1)
    {
      swift_once();
    }

    v22 = sub_AB4BC0();
    __swift_project_value_buffer(v22, qword_DE8F90);
    v23 = a2;
    sub_480B4();

    v24 = v23;
    sub_480B4();

    v35 = sub_AB4BA0();
    v25 = sub_AB9F40();

    if (os_log_type_enabled(v35, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      v28 = *&a2[v14];
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2112;
      v29 = v28;
      if (v28)
      {
        v30 = [v29 request];
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v26 + 14) = v30;
      v27[1] = v31;
      _os_log_impl(&dword_0, v35, v25, "no request available %@, %@", v26, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9B20, &unk_AF8C60);
      swift_arrayDestroy();
    }

LABEL_13:
    v16 = v35;
    goto LABEL_14;
  }

  if ((a2[qword_DE8FA8] & 1) == 0)
  {
    v35 = v16;
    if ([a2 isEditing])
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v34 = sub_ABA150();
      v17 = swift_allocObject();
      v18 = v35;
      v17[2] = a2;
      v17[3] = v18;
      v17[4] = a3;
      aBlock[4] = sub_581CC;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_5;
      v33 = _Block_copy(aBlock);
      v19 = a2;
      v35 = v35;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_57DF0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      v20 = v33;
      v21 = v34;
      sub_ABA160();

      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v13, v9);
      _Block_release(v20);

      return;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_480DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicKitEditingModelResponse();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC16MusicApplication28MusicKitEditingModelResponse_musickitEditor] = a3;
  v11.receiver = v7;
  v11.super_class = v6;

  v8 = objc_msgSendSuper2(&v11, "initWithRequest:", a2);
  v9 = v8;
  if ([a1 isEditing])
  {
    v10 = v9;
    sub_48190(v8);
  }

  sub_3B4724(v8);
}

void sub_48190(void *a1)
{
  v2 = *&v1[qword_E70B88];
  *&v1[qword_E70B88] = a1;
  v5 = a1;

  if ([v1 isEditing] && (v3 = *&v1[qword_E70B68]) != 0)
  {
    v4 = *&v1[qword_E70B68 + 8];

    v3(v1);

    sub_17654(v3, v4);
  }

  else
  {
  }
}

void sub_48264(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v4 = &v70 - v3;
  v5 = sub_AB3820();
  v76 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v70 - v8;
  __chkstk_darwin();
  v10 = &v70 - v9;
  __chkstk_darwin();
  v82 = &v70 - v11;
  __chkstk_darwin();
  v81 = &v70 - v12;
  __chkstk_darwin();
  v80 = &v70 - v13;
  v87 = type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  v14 = *(v87 - 8);
  __chkstk_darwin();
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = v1;
  v72 = qword_E70B80;
  v17 = *&v1[qword_E70B80];
  if (!v17)
  {
    goto LABEL_35;
  }

  v83 = sub_AB43E0();
  if (!v83)
  {

LABEL_35:
    if (qword_DE6740 != -1)
    {
LABEL_45:
      swift_once();
    }

    v57 = sub_AB4BC0();
    __swift_project_value_buffer(v57, qword_DE8F90);
    v88 = sub_AB4BA0();
    v58 = sub_AB9F40();
    if (os_log_type_enabled(v88, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v88, v58, "attempting to edit a playlist in an invalid state", v59, 2u);
    }

    v60 = v88;

    return;
  }

  v78 = v17;
  v70 = v4;
  v18 = *(a1 + 16);
  if (v18)
  {
    v71 = v10;
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = v76 + 4;
    v74 = v76 + 2;
    v84 = *(v14 + 72);
    v85 = _swiftEmptyArrayStorage;
    v88 = v76 + 1;
    v86 = _swiftEmptyArrayStorage;
    v77 = v7;
    v73 = v76 + 4;
    while (1)
    {
      sub_57E38(v19, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v32 = *v16;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40, &qword_AF89B8);
      (v20->isa)(v82, v16 + *(v33 + 48), v5);
      if (sub_AB37E0() >= 1 && *&v75[v72] && (, v34 = sub_AB43E0(), , v34))
      {
        v35 = v7;
        v36 = v71;
        (v74->isa)(v71, v82, v5);
        v37 = sub_AB37D0();
        if (__OFSUB__(*v38, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        --*v38;
        v37(v89, 0);
        isa = sub_AB3770().super.isa;
        v40 = [v34 itemAtIndexPath:isa];
        (v88->isa)(v36, v5);

        v7 = v35;
        v20 = v73;
      }

      else
      {
        v40 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_6B564(0, v85[2] + 1, 1, v85);
      }

      v50 = v85[2];
      v49 = v85[3];
      if (v50 >= v49 >> 1)
      {
        v85 = sub_6B564((v49 > 1), v50 + 1, 1, v85);
      }

      (v88->isa)(v82, v5);
      v51 = v85;
      v85[2] = v50 + 1;
      v52 = &v51[2 * v50];
      v52[4] = v32;
      v52[5] = v40;
LABEL_7:
      v19 += v84;
      if (!--v18)
      {
        goto LABEL_42;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
      v41 = v20->isa;
      v42 = v80;
      (v20->isa)(v80, v16, v5);
      v43 = sub_AB3770().super.isa;
      v44 = [v83 itemAtIndexPath:v43];

      (v74->isa)(v81, v42, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_6AE4C(0, *(v86 + 2) + 1, 1, v86);
      }

      v46 = *(v86 + 2);
      v45 = *(v86 + 3);
      if (v46 >= v45 >> 1)
      {
        v86 = sub_6AE4C((v45 > 1), v46 + 1, 1, v86);
      }

      v47 = v86;
      *(v86 + 2) = v46 + 1;
      v48 = v76;
      v41(&v47[((LOBYTE(v48[10].isa) + 32) & ~LOBYTE(v48[10].isa)) + v76[9].isa * v46], v81, v5);
      sub_AB43D0();
      (v48[1].isa)(v80, v5);

      v7 = v77;
      goto LABEL_7;
    }

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38, &qword_AF89A0) + 48);
    v29 = v20->isa;
    (v20->isa)(v79, v16, v5);
    v29(v7, v16 + v28, v5);
    v30 = sub_AB37E0();
    if (sub_AB37E0() >= v30)
    {
      if (sub_AB37E0() < 1 || !*&v75[v72] || (, v53 = sub_AB43E0(), , !v53))
      {
        v21 = 0;
LABEL_6:
        v22 = v21;
        v23 = v79;
        v24 = sub_AB3770().super.isa;
        v25 = [v83 itemAtIndexPath:v24];

        sub_AB4390();
        v26 = v88->isa;
        v7 = v77;
        (v88->isa)(v77, v5);
        (v26)(v23, v5);

        v20 = v73;
        goto LABEL_7;
      }

      v54 = v71;
      (v74->isa)(v71, v7, v5);
      v55 = sub_AB37D0();
      if (__OFSUB__(*v56, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      --*v56;
      v55(v89, 0);
      v31.super.isa = sub_AB3770().super.isa;
      v21 = [v53 itemAtIndexPath:v31.super.isa];
      (v88->isa)(v54, v5);
    }

    else
    {
      v31.super.isa = sub_AB3770().super.isa;
      v21 = [v83 itemAtIndexPath:v31.super.isa];
    }

    goto LABEL_6;
  }

  v85 = _swiftEmptyArrayStorage;
  v86 = _swiftEmptyArrayStorage;
LABEL_42:
  v61 = v75;
  [v75 loadViewIfNeeded];
  v62 = *&v61[qword_DFE2F8];
  if (v62)
  {
    v63 = v62;
    v64 = sub_AB9740().super.isa;

    [v63 deleteItemsAtIndexPaths:v64];

    v65 = sub_AB9990();
    v66 = v70;
    (*(*(v65 - 8) + 56))(v70, 1, 1, v65);
    sub_AB9940();
    v67 = v78;

    v68 = sub_AB9930();
    v69 = swift_allocObject();
    v69[2] = v68;
    v69[3] = &protocol witness table for MainActor;
    v69[4] = v85;
    v69[5] = v67;
    sub_DBDC8(0, 0, v66, &unk_AF89B0, v69);
  }

  else
  {
LABEL_47:
    __break(1u);
  }
}

uint64_t sub_48CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_AB9940();
  v5[4] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_48D54, v7, v6);
}

uint64_t sub_48D54()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v3 = v1[4];
    v0[9] = v3;
    v4 = v1[5];
    v0[10] = v4;
    v5 = v3;
    v6 = v4;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_48E68;

    return MusicLibraryPlaylistEditViewModel.insert(_:after:)(v5, v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_48E68()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_58164;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_48F8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_48F8C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 64) + 1;
    *(v0 + 64) = v6;
    v7 = *(v0 + 16) + 16 * v6;
    v8 = *(v7 + 32);
    *(v0 + 72) = v8;
    v9 = *(v7 + 40);
    *(v0 + 80) = v9;
    v10 = v8;
    v11 = v9;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_48E68;

    return MusicLibraryPlaylistEditViewModel.insert(_:after:)(v10, v9);
  }
}

id sub_490BC()
{
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v0 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v1 = [objc_opt_self() kindWithVariants:215 playlistEntryKind:v0 options:0];

  return v1;
}

void sub_49134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = sub_AB3820();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *&v0[qword_E08848];
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (!v6)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v8 = *&v0[qword_DFE2F0];
  if (!v8)
  {
    v14 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = v6;
  v21 = v9;
  v11 = [v9 results];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  v6 = swift_allocObject();
  v6[2] = v0;
  v6[3] = v10;
  v6[4] = v4;
  v13 = swift_allocObject();
  v14 = sub_57940;
  *(v13 + 16) = sub_57940;
  *(v13 + 24) = v6;
  aBlock[4] = sub_5794C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_215;
  v15 = _Block_copy(aBlock);
  v16 = v10;
  v17 = v0;

  [v12 enumerateItemsUsingBlock:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_12;
  }

  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
LABEL_8:
  sub_15F84(v4, v2, &unk_DE8E20, &qword_AF7990);
  v19 = qword_E71990;
  swift_beginAccess();
  sub_57890(v2, &v0[v19]);
  swift_endAccess();
  if (*(p_cache[94] + v0))
  {
    sub_4F2D0();
    sub_46C570();
  }

  sub_12E1C(v2, &unk_DE8E20, &qword_AF7990);
  sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
  sub_17654(v14, v6);
}

void sub_49470(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v15 = [v10 innermostModelObject];
    v11 = [v15 identifiers];
    v12 = sub_468CF8(a5);

    if (v12)
    {
      sub_12E1C(a6, &unk_DE8E20, &qword_AF7990);
      v13 = sub_AB3820();
      v14 = *(v13 - 8);
      (*(v14 + 16))(a6, a2, v13);
      (*(v14 + 56))(a6, 0, 1, v13);
      *a3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_495FC(id result)
{
  v2 = qword_E08828;
  if (v1[qword_E08828] == (result & 1))
  {
    return result;
  }

  v3 = v1;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_E70DC0);
  v5 = v1;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    if (v3[v2])
    {
      v10 = 0x676E697265746E45;
    }

    else
    {
      v10 = 0x676E6974697845;
    }

    if (v3[v2])
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_425E68(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "%{public}s playlist search.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v13 = qword_DE8FD0;
  if (!*&v5[qword_DE8FD0] && v3[v2] == 1)
  {
    result = [v5 loadViewIfNeeded];
    v14 = *&v5[qword_DFE2F8];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    type metadata accessor for NoContentController();
    swift_allocObject();
    *&v5[v13] = sub_3B04BC(v14);

    sub_520E8();
  }

  sub_52EFC(0);
  sub_53034(0, 0);
  [v5 loadViewIfNeeded];
  result = *&v5[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  return [result reloadData];
}

void sub_498B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_AB8860();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_DE8FC0;
  swift_beginAccess();
  v35 = *(v4 + v13);
  v14 = *(v35 + 16);
  if (__OFADD__(a2, v14))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 + v14 >= 1 && (a4 & 1) == 0)
  {
    if (v14)
    {
      v28 = v13;
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v16 = *(v10 + 16);
      v15 = v10 + 16;
      v34 = v16;
      v17 = v35 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      v32 = v4;
      v33 = v18;
      v19 = (v15 - 8);

      v20 = 0;
      v21 = v14 - 1;
      v22 = 0.0;
      do
      {
        v34(v12, v17, v9);
        v23 = COERCE_DOUBLE(sub_AB8850());
        v25 = v24;
        (*v19)(v12, v9);
        if (v25)
        {
          v22 = v22 + 0.0;
          if (v21 == v20)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v22 = v22 + v23;
          if (v21 == v20)
          {
            goto LABEL_12;
          }
        }

        ++v20;
        v17 += v33;
      }

      while (v20 < *(v35 + 16));
      __break(1u);
LABEL_12:

      a1 = v31;
      v4 = v32;
      a2 = v29;
      a3 = v30;
      v13 = v28;
    }

    else
    {
      v22 = 0.0;
    }

    v26 = *(*(v4 + v13) + 16);
    if (!__OFADD__(a2, v26))
    {
      sub_468E80(a1, a2 + v26, COERCE__INT64(v22 + *&a3), 0);
      return;
    }

LABEL_18:
    __break(1u);
  }
}

void sub_49AF0()
{
  v1 = v0;
  sub_49134();
  sub_46C570();
  v2 = *&v0[qword_E70BA8];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v3 results];
  if (!v4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4;
  v6 = [v4 numberOfSections];

  if (v6 < 1 || (v7 = swift_dynamicCastObjCProtocolConditional()) == 0)
  {

LABEL_8:
    sub_46ACA0(0);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  v39 = sub_57834;
  v40 = v10;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_151E0;
  v38 = &block_descriptor_202;
  v11 = _Block_copy(&aBlock);
  v12 = v3;

  v13 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:0 responseHandler:v11];
  _Block_release(v11);
  v14 = [v12 request];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  ObjCClassFromObject = swift_getObjCClassFromObject();

  v17 = [ObjCClassFromObject preferredQueue];
  [v17 addOperation:v13];

LABEL_9:
  v18 = qword_DFE2F0;
  v19 = *&v1[qword_DFE2F0];
  if (v19)
  {
    v20 = [v19 results];
    if (!v20)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v21 = v20;
    v22 = [v20 firstSection];

    if (v22)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = [v23 type];
        swift_unknownObjectRelease();
        if (v24 == &dword_8 + 1)
        {
          v25 = qword_DE8FD0;
          if (!*&v1[qword_DE8FD0])
          {
            v26 = *&v1[v18];
            if (!v26 || [v26 isEmpty])
            {
              [v1 loadViewIfNeeded];
              v27 = *&v1[qword_DFE2F8];
              if (!v27)
              {
LABEL_29:
                __break(1u);
                return;
              }

              type metadata accessor for NoContentController();
              swift_allocObject();
              *&v1[v25] = sub_3B04BC(v27);

              sub_520E8();
            }
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  sub_52EFC(0);
  sub_53034(1, 0);
  [v1 loadViewIfNeeded];
  v28 = *&v1[qword_DFE2F8];
  if (!v28)
  {
    goto LABEL_25;
  }

  if ([v28 numberOfSections] >= 1)
  {
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v1;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_577DC;
    *(v31 + 24) = v30;
    v39 = sub_2D4D0;
    v40 = v31;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1822E0;
    v38 = &block_descriptor_195;
    v32 = _Block_copy(&aBlock);
    v33 = v1;

    [v29 performWithoutAnimation:v32];
    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }
}

double sub_49FA4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  v9 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_57884, v7);

  return result;
}

void sub_4A05C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_DFE2F0);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = a3;
      v10 = v6;
      sub_46ACA0(a3);
    }
  }
}

void sub_4A0EC(char *a1)
{
  v2 = sub_AB3730();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 loadViewIfNeeded];
  v7 = *&a1[qword_DFE2F8];
  if (v7)
  {
    v12[1] = &off_CEFEA0;
    sub_57DF0(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C78, &qword_AF8950);
    sub_36A00(&qword_DE9C80, &qword_DE9C78, &qword_AF8950, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    sub_AB36C0(v9);
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    [v8 reloadSections:v11];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4A2BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v14 = a2;
  v15 = a1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2;
  v7 = *(v2 + qword_DE8FC8);
  v8 = *(v7 + 16);

  v10 = 0;
  while (1)
  {
    if (v8 == v10)
    {

      return sub_469178(v15, v14);
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v11 = sub_AB91C0();
    result = (*(v4 + 8))(v6, v3);
    if (v11)
    {

      return (*(v4 + 56))(v14, 1, 1, v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4A4A4(void *a1, uint64_t a2, void *a3, char *a4)
{
  v6 = a3;
  v7 = a1;
  sub_566DC(a4);
  v9 = v8;

  return v9;
}

void sub_4A4F8(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v4 = sub_AB8860();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin();
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30) - 8;
  __chkstk_darwin();
  v11 = &v35 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v35 - v13;
  v15 = qword_E719B8;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v42 = a2;
  v16(v14, a2, v6);
  (*(v7 + 56))(v14, 0, 1, v6);
  v17 = *(v9 + 56);
  sub_15F84(v2 + v15, v11, &unk_DE8E20, &qword_AF7990);
  sub_15F84(v14, &v11[v17], &unk_DE8E20, &qword_AF7990);
  v18 = *(v7 + 48);
  if (v18(v11, 1, v6) == 1)
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    if (v18(&v11[v17], 1, v6) == 1)
    {
      sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
      v19 = v42;
LABEL_13:
      sub_4695C8(v41, v19);
      return;
    }

    goto LABEL_6;
  }

  v20 = v40;
  sub_15F84(v11, v40, &unk_DE8E20, &qword_AF7990);
  if (v18(&v11[v17], 1, v6) == 1)
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    (*(v7 + 8))(v20, v6);
LABEL_6:
    sub_12E1C(v11, &unk_DF7930, &unk_B03B30);
    v19 = v42;
    goto LABEL_7;
  }

  v32 = v39;
  (*(v7 + 32))(v39, &v11[v17], v6);
  sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v33 = sub_AB91C0();
  v34 = *(v7 + 8);
  v34(v32, v6);
  sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
  v34(v20, v6);
  sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
  v19 = v42;
  if (v33)
  {
    goto LABEL_13;
  }

LABEL_7:
  v21 = *(v2 + qword_DE8FC8);

  v22 = sub_469AC8(v19, v21);
  v24 = v23;

  if (v24)
  {
    goto LABEL_13;
  }

  v25 = qword_DE8FC0;
  swift_beginAccess();
  if (v22 >= *(*(v2 + v25) + 16))
  {
    goto LABEL_13;
  }

  v26 = sub_3B3354(v19);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = *(v2 + v25);
    if (v22 < *(v27 + 16))
    {
      v28 = v26;
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 16))(v36, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v38);

      sub_55410(v28, v30);
      (*(v29 + 8))(v30, v31);

      return;
    }
  }

  __break(1u);
}

id sub_4AA9C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4A4F8(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

uint64_t sub_4ABC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v34 = &v32 - v11;
  v12 = [v2 traitCollection];
  v13 = UITraitCollection.isMediaPicker.getter(v12);

  if (v13)
  {
    v14 = sub_46DCF0(a2) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = UICollectionView.isDraggingCell(at:)();
  v16 = 0;
  if ((v15 & 1) == 0 && (v14 & 1) == 0)
  {
    v16 = [v3 isEditing] ^ 1;
  }

  v35 = v16;
  v33 = v3;
  v17 = *&v3[qword_DE8FC8];
  v18 = *(v17 + 16);

  v20 = 0;
  while (1)
  {
    if (v18 == v20)
    {

      v23 = v33;
      v22 = v34;
      sub_469178(a2, v34);
      goto LABEL_13;
    }

    if (v20 >= *(v17 + 16))
    {
      break;
    }

    (*(v6 + 16))(v8, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20++, v5);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v21 = sub_AB91C0();
    result = (*(v6 + 8))(v8, v5);
    if (v21)
    {

      v22 = v34;
      (*(v6 + 56))(v34, 1, 1, v5);
      v23 = v33;
LABEL_13:
      if (([v23 isEditing] & 1) != 0 && *(v23 + qword_E70B50) == 1)
      {
        if (v35)
        {
          v24 = (*(v6 + 48))(v22, 1, v5) == 1;
LABEL_25:
          sub_12E1C(v22, &unk_DE8E20, &qword_AF7990);
          return v24;
        }
      }

      else
      {
        v25 = [v23 traitCollection];
        v26 = UITraitCollection.isMediaPicker.getter(v25);

        if (!v26 || (v27 = v32, sub_15F84(v22, v32, &unk_DE8E20, &qword_AF7990), v28 = (*(v6 + 48))(v27, 1, v5), sub_12E1C(v27, &unk_DE8E20, &qword_AF7990), v28 == 1) || (v29 = sub_4AFF8(a2)) == 0)
        {
          v24 = v35;
          goto LABEL_25;
        }

        if (v35)
        {
          v30 = v29;
          v31 = [v29 type];

          v24 = v31 == &dword_0 + 1;
          goto LABEL_25;
        }
      }

      v24 = 0;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

id sub_4AFF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v25 = &v22 - v3;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v22 - v8;
  v24 = v1;
  v9 = *(v1 + qword_DE8FC8);
  v10 = *(v9 + 16);
  v11 = (v5 + 8);

  v13 = 0;
  while (1)
  {
    if (v10 == v13)
    {

      v16 = v24;
      v15 = v25;
      sub_469178(a1, v25);
      if ((*(v5 + 48))(v15, 1, v4) == 1)
      {
LABEL_7:
        sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
      }

      else
      {
        v17 = v23;
        (*(v5 + 32))(v23, v15, v4);
        v18 = *(v16 + qword_DFE2F0);
        if (v18)
        {
          result = [v18 results];
          if (!result)
          {
            goto LABEL_17;
          }

          v19 = result;
          isa = sub_AB3770().super.isa;
          v21 = [v19 itemAtIndexPath:isa];
          (*v11)(v17, v4);

          if (v21)
          {
            objc_opt_self();
            result = swift_dynamicCastObjCClass();
            if (result)
            {
              return result;
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
          (*v11)(v17, v4);
        }
      }

      return 0;
    }

    if (v13 >= *(v9 + 16))
    {
      break;
    }

    (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13++, v4);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v14 = sub_AB91C0();
    result = (*(v5 + 8))(v7, v4);
    if (v14)
    {

      v15 = v25;
      (*(v5 + 56))(v25, 1, 1, v4);
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_4B378(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  LOBYTE(a1) = sub_4ABC4(v11, v10);

  (*(v8 + 8))(v10, v7);
  return a1 & 1;
}

char *sub_4B490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v9 == a2 && v9[1] == a3;
  if (v11 || (sub_ABB3C0() & 1) != 0)
  {
    v12 = *&v4[qword_E08820];
    if (v12)
    {
      v13 = v12;
      if ([v4 isEditing])
      {
        v14 = type metadata accessor for ContainerDetailHeaderReusableView();
        v15 = static UICollectionReusableView.reuseIdentifier.getter();
        v17 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v14, a2, a3, a4, v15, v16, v14);

        v18 = *&v17[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
        *&v17[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView] = v12;
        v19 = v13;
        sub_1331DC(v18);

        v20 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView;
        v21 = *&v17[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView];
        *&v17[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView] = 0;
        [v21 removeFromSuperview];
        if (*&v17[v20])
        {
          [v17 addSubview:?];
        }

        [v17 setNeedsLayout];

        [*&v17[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator] setHidden:1];
        v22 = v17;
        [v22 frame];
        [a1 bounds];
        [v22 sizeThatFits:{v23, v24}];
        [v22 frame];
        [v22 setFrame:?];

        return v22;
      }
    }
  }

  return sub_469DDC(a1, a2, a3, a4, v10);
}

char *sub_4B6CC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_4B490(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

char *sub_4B82C(_BYTE *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v229 = a3;
  v7 = sub_AB4E30();
  v231 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v236 = &v224 - v10;
  v238 = sub_AB3820();
  v237 = *(v238 - 8);
  __chkstk_darwin();
  v240 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_AB2E20();
  __chkstk_darwin();
  v228 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D10, &qword_B0F380);
  __chkstk_darwin();
  v14 = (&v224 - v13);
  v15 = sub_AB2F20();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a2 innermostModelObject];
  v226 = a2;
  v235 = [a2 socialContributor];

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  v232 = v7;
  v230 = v9;
  v239 = v20;
  if (v21)
  {
    v22 = v21;
    v234 = v4;
    v241 = a1;
    v227 = v20;
    v23 = [v22 title];
    if (v23)
    {
      v24 = v23;
      v25 = sub_AB92A0();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v20 = v16;
    v36 = &v241[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
    v37 = *&v241[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
    v38 = *&v241[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
    *v36 = v25;
    v36[1] = v27;
    sub_142858(v37, v38);

    v39 = [v22 duration];
    sub_142E58(v39, v40);
    v41 = [v22 album];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 title];
      if (v43)
      {
        v44 = v43;
        v45 = sub_AB92A0();
        v47 = v46;

        goto LABEL_13;
      }
    }

    v45 = 0;
    v47 = 0xE000000000000000;
LABEL_13:
    a1 = v241;
    v48 = &v241[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
    v49 = *&v241[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
    v50 = *&v241[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
    *v48 = v45;
    v48[1] = v47;
    sub_142D1C(v49, v50);

    v51 = MPModelSong.preferredBylineAttribution(with:from:)(&off_CEFA70, 0, v14);
    if ((v20[6])(v14, 1, v15, v51) == 1)
    {
      sub_12E1C(v14, &unk_DE9D10, &qword_B0F380);
      v52 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v53 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v54 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v52 = 0;
      v52[1] = 0xE000000000000000;
      sub_142A70(v53, v54);
    }

    else
    {
      (v20[4])(v19, v14, v15);
      sub_AB2E10();
      sub_57DF0(&unk_DF86A0, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
      v55 = sub_AB9570();
      v56 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v57 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v58 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v56 = v55;
      v56[1] = v59;
      sub_142A70(v57, v58);
      v60 = v20[1];
      ++v20;
      (v60)(v19, v15);
    }

    v4 = v234;
    v61 = v227;

    v62 = sub_4A3F1C();
    v63 = v61;
    sub_10AC20(v22);
    v65 = v64;

    v66 = [v22 shouldVisuallyDisableFor:v65];
    v67 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v66;
    if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
    {
      v68 = v66;
      v69 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      v227 = v67;
      v70 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
      swift_beginAccess();
      *(v69 + v70) = v68;
      v67 = v227;
      v228 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
      v233 = v69;
      if (v68 != *(v69 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
      {
        v71 = v233;
        *(v228 + v233) = v68;
        v72 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
        swift_beginAccess();
        v73 = *(v71 + v72);
        if (!(v73 >> 62))
        {
          v74 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
          if (!v74)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }

        v74 = sub_ABB060();
        if (v74)
        {
LABEL_20:
          v225 = v63;
          v75 = v74 - 1;
          if (v74 < 1)
          {
            goto LABEL_168;
          }

          v224 = v233;

          v77 = 0;
          p_name = &JSDateDescriptor.name;
          while (1)
          {
            if ((v73 & 0xC000000000000001) != 0)
            {
              v79 = *(sub_36003C(v77, v73, v76) + 256);
              if (!v79)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v80 = *(v73 + 8 * v77 + 32);

              v79 = *(v80 + 256);
              if (!v79)
              {
LABEL_22:

                goto LABEL_23;
              }
            }

            v81 = v79;
            if ([v81 p_name[409]])
            {
              break;
            }

            v20 = v22;
            v82 = p_name;
            v83 = *(v228 + v233);
            v84 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
            swift_beginAccess();
            v85 = v81[v84];
            v81[v84] = v83;
            if (v83 == v85)
            {

              p_name = v82;
              v22 = v20;
LABEL_23:
              if (v75 == v77)
              {
                goto LABEL_40;
              }

              goto LABEL_24;
            }

            v86 = 1.0;
            if (v83)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v81 setAlpha:v86];

            p_name = v82;
            v22 = v20;
            if (v75 == v77)
            {
LABEL_40:

              a1 = v241;
              v4 = v234;
              v63 = v225;
              v67 = v227;
              goto LABEL_41;
            }

LABEL_24:
            ++v77;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_41:
    if (a1[v67])
    {
      v96 = 0;
    }

    else
    {
      v96 = 3;
    }

    sub_143E08([a1 setSelectionStyle:v96]);
    if ([v22 isFavorite])
    {
      v97 = [v4 isEditing];
      v98 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
      v99 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
      a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v97 ^ 1;
      v100 = v240;
      v101 = v239;
      if (v99 == (v97 ^ 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v98 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
      v102 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
      a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = 0;
      v100 = v240;
      v101 = v239;
      if ((v102 & 1) == 0)
      {
LABEL_51:

        goto LABEL_122;
      }

      v99 = 1;
    }

    sub_201644();
    v103 = sub_200954();
    [v103 setHidden:(*v98 & 1) == 0];

    if (v99 != *v98)
    {
      sub_14B200();
    }

    goto LABEL_51;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
    objc_opt_self();
    v87 = swift_dynamicCastObjCClass();
    if (v87)
    {
      v89 = v87;
      v90 = v20;
      v91 = [v89 title];
      if (v91)
      {
        v92 = v91;
        v93 = sub_AB92A0();
        v95 = v94;
      }

      else
      {
        v93 = 0;
        v95 = 0xE000000000000000;
      }

      v166 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v167 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v168 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
      *v166 = v93;
      v166[1] = v95;
      sub_142858(v167, v168);

      v169 = [v89 duration];
      sub_142E58(v169, v170);
      v171 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
      v172 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
      v173 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
      *v171 = 0;
      v171[1] = 0xE000000000000000;
      sub_142D1C(v172, v173);

      v174 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v175 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v176 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v174 = 0;
      v174[1] = 0xE000000000000000;
      sub_142A70(v175, v176);

      v177 = sub_4A3F1C();
      v69 = v90;
      sub_10AC20(v89);
      v71 = v178;

      v179 = [v89 shouldVisuallyDisableFor:v71];
      v63 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
      a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v179;
      if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
      {
        goto LABEL_117;
      }

      v180 = v179;
      v20 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      v181 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
      swift_beginAccess();
      *(v20 + v181) = v180;
      v233 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
      if (v180 == *(v20 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
      {
        goto LABEL_117;
      }

      v241 = a1;
      *(v20 + v233) = v180;
      v182 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v73 = *(v20 + v182);
      if (v73 >> 62)
      {
        goto LABEL_172;
      }

      v183 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
      a1 = v241;
      if (!v183)
      {
        goto LABEL_117;
      }

      goto LABEL_102;
    }

    v234 = v4;
    v88.n128_u64[0] = 0;
    sub_142E58(0, v88);
    v144 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
    v145 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
    v146 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
    *v144 = 0;
    v144[1] = 0xE000000000000000;
    sub_142858(v145, v146);

    v147 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
    v148 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
    v149 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
    *v147 = 0;
    v147[1] = 0xE000000000000000;
    sub_142D1C(v148, v149);

    v150 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
    v151 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
    v152 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
    *v150 = 0;
    v150[1] = 0xE000000000000000;
    sub_142A70(v151, v152);

    v71 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 0;
    if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
    {
      goto LABEL_161;
    }

    v4 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v153 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v4[v153] = 0;
    v233 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != 1)
    {
      goto LABEL_161;
    }

    v4[v233] = 0;
    v154 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v73 = *&v4[v154];
    if (v73 >> 62)
    {
      goto LABEL_175;
    }

    result = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_161;
    }

    goto LABEL_83;
  }

  v29 = v28;
  v30 = v20;
  v31 = [v29 title];
  if (v31)
  {
    v32 = v31;
    v33 = sub_AB92A0();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v104 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v105 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v106 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v104 = v33;
  v104[1] = v35;
  sub_142858(v105, v106);

  v107 = [v29 duration];
  sub_142E58(v107, v108);
  v109 = [v29 season];
  if (!v109 || (v110 = v109, MPModelTVSeason.title.getter(), v112 = v111, v114 = v113, v110, !v114))
  {

    v112 = 0;
    v114 = 0xE000000000000000;
  }

  v115 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v116 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v117 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
  *v115 = v112;
  v115[1] = v114;
  sub_142D1C(v116, v117);

  v118 = [v29 show];
  if (v118)
  {
    v119 = v118;
    v120 = [v118 title];
    if (v120)
    {
      v121 = v120;
      v122 = sub_AB92A0();
      v124 = v123;

      goto LABEL_61;
    }
  }

  v122 = 0;
  v124 = 0xE000000000000000;
LABEL_61:
  v125 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v126 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v127 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  *v125 = v122;
  v125[1] = v124;
  sub_142A70(v126, v127);

  v128 = sub_4A3F1C();
  v69 = v30;
  sub_10AC20(v29);
  v71 = v129;

  v130 = [v29 shouldVisuallyDisableFor:v71];
  v63 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v130;
  if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
  {
    goto LABEL_117;
  }

  v131 = v130;
  v20 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  v132 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  *(v20 + v132) = v131;
  v233 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v131 == *(v20 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
  {
    goto LABEL_117;
  }

  v241 = a1;
  *(v20 + v233) = v131;
  v133 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v73 = *(v20 + v133);
  if (v73 >> 62)
  {
    goto LABEL_169;
  }

  v134 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
  a1 = v241;
  if (!v134)
  {
    goto LABEL_117;
  }

LABEL_65:
  v227 = v63;
  v228 = v69;
  v234 = v4;
  v63 = v134 - 1;
  if (v134 >= 1)
  {
    v225 = v20;

    v136 = 0;
    if ((v73 & 0xC000000000000001) == 0)
    {
      goto LABEL_75;
    }

LABEL_67:
    v137 = *(sub_36003C(v136, v73, v135) + 256);
    if (v137)
    {
LABEL_68:
      v138 = v137;
      if (([v138 isHidden] & 1) == 0)
      {
        v139 = *(v20 + v233);
        v140 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v141 = v138[v140];
        v138[v140] = v139;
        if (v139 != v141)
        {
          v142 = 1.0;
          if (v139)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v138 setAlpha:v142];
        }
      }

      if (v63 != v136)
      {
        goto LABEL_77;
      }
    }

    else
    {
      while (1)
      {

        if (v63 == v136)
        {
          break;
        }

LABEL_77:
        ++v136;
        if ((v73 & 0xC000000000000001) != 0)
        {
          goto LABEL_67;
        }

LABEL_75:
        v143 = *(v73 + 8 * v136 + 32);

        v137 = *(v143 + 256);
        if (v137)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_116;
  }

  __break(1u);
LABEL_172:
  v183 = sub_ABB060();
  a1 = v241;
  if (v183)
  {
LABEL_102:
    v227 = v63;
    v228 = v69;
    v234 = v4;
    v184 = v183 - 1;
    if (v183 >= 1)
    {
      v225 = v20;

      v186 = 0;
      if ((v73 & 0xC000000000000001) == 0)
      {
        goto LABEL_112;
      }

LABEL_104:
      v187 = *(sub_36003C(v186, v73, v185) + 256);
      if (v187)
      {
LABEL_105:
        v188 = v187;
        if (([v188 isHidden] & 1) == 0)
        {
          v189 = *(v20 + v233);
          v190 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v191 = v188[v190];
          v188[v190] = v189;
          if (v189 != v191)
          {
            v192 = 1.0;
            if (v189)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v188 setAlpha:v192];
          }
        }

        if (v184 != v186)
        {
          goto LABEL_114;
        }
      }

      else
      {
        while (1)
        {

          if (v184 == v186)
          {
            break;
          }

LABEL_114:
          ++v186;
          if ((v73 & 0xC000000000000001) != 0)
          {
            goto LABEL_104;
          }

LABEL_112:
          v193 = *(v73 + 8 * v186 + 32);

          v187 = *(v193 + 256);
          if (v187)
          {
            goto LABEL_105;
          }
        }
      }

LABEL_116:

      a1 = v241;
      v4 = v234;
      v69 = v228;
      v63 = v227;
      goto LABEL_117;
    }

    __break(1u);
LABEL_175:
    result = sub_ABB060();
    if (result)
    {
LABEL_83:
      v228 = v71;
      v241 = a1;
      v156 = result - 1;
      if (result < 1)
      {
        __break(1u);
LABEL_178:
        __break(1u);
        return result;
      }

      v227 = v4;

      v158 = 0;
      v20 = &JSDateDescriptor.name;
      if ((v73 & 0xC000000000000001) == 0)
      {
        goto LABEL_93;
      }

LABEL_85:
      v159 = *(sub_36003C(v158, v73, v157) + 256);
      if (v159)
      {
LABEL_86:
        v160 = v159;
        if (([v160 isHidden] & 1) == 0)
        {
          v161 = v4[v233];
          v162 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v163 = v160[v162];
          v160[v162] = v161;
          if (v161 != v163)
          {
            v164 = 1.0;
            if (v161)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v160 setAlpha:v164];
          }
        }

        if (v156 != v158)
        {
          goto LABEL_95;
        }
      }

      else
      {
        while (1)
        {

          if (v156 == v158)
          {
            break;
          }

LABEL_95:
          ++v158;
          if ((v73 & 0xC000000000000001) != 0)
          {
            goto LABEL_85;
          }

LABEL_93:
          v165 = *(v73 + 8 * v158 + 32);

          v159 = *(v165 + 256);
          if (v159)
          {
            goto LABEL_86;
          }
        }
      }

      a1 = v241;
      v71 = v228;
    }

LABEL_161:
    if (a1[v71])
    {
      v223 = 0;
    }

    else
    {
      v223 = 3;
    }

    sub_143E08([a1 setSelectionStyle:v223]);
    v4 = v234;
    goto LABEL_121;
  }

LABEL_117:
  while (1)
  {
    v194 = a1[v63] ? 0 : 3;
    sub_143E08([a1 setSelectionStyle:v194]);

LABEL_121:
    v100 = v240;
    v101 = v239;
LABEL_122:
    v242[0] = v101;
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    v71 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D20, &unk_AF8990);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v246 = 0;
      memset(v245, 0, sizeof(v245));
    }

    sub_15F84(v245, v242, &unk_DE9C60, &unk_AF8940);
    v195 = v243;
    if (v243)
    {
      v196 = v244;
      __swift_project_boxed_opaque_existential_1(v242, v243);
      v197 = sub_4CAA30(&off_CEF8C8, v195, v196);
      __swift_destroy_boxed_opaque_existential_0(v242);
    }

    else
    {
      sub_12E1C(v242, &unk_DE9C60, &unk_AF8940);
      v197 = _swiftEmptyArrayStorage;
    }

    sub_178218(v197);

    v198 = (*&v4[qword_E08858 + 32] & 0xFELL) == 0xF8 || *&v4[qword_E08858] != 1;
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType] = v198;
    if (*&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver])
    {

      sub_259B30(v198);
    }

    v199 = *&v4[qword_DFE2F0];
    if (!v199)
    {
      goto LABEL_141;
    }

    v69 = v199;
    result = [v69 results];
    if (!result)
    {
      goto LABEL_178;
    }

    v73 = result;
    v63 = [result firstSection];

    if (!v63)
    {
      break;
    }

    objc_opt_self();
    v200 = swift_dynamicCastObjCClass();
    if (!v200 || [v200 type] != &dword_8)
    {

      swift_unknownObjectRelease();
      goto LABEL_141;
    }

    v201 = [v226 position];
    v202 = v201 + 1;
    if (!__OFADD__(v201, 1))
    {
      v203 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
      v204 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
      v205 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8];
      *v203 = v202;
      v203[8] = 0;
      sub_143794(v204, v205);
      v206 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = -32767;
      sub_143510(v206);

      swift_unknownObjectRelease();
      v207 = v238;
      goto LABEL_151;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    v134 = sub_ABB060();
    a1 = v241;
    if (v134)
    {
      goto LABEL_65;
    }
  }

LABEL_141:
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    LOWORD(v208) = 1;
    v207 = v238;
    v209 = v235;
  }

  else
  {
    objc_opt_self();
    v210 = swift_dynamicCastObjCClass();
    v207 = v238;
    v209 = v235;
    if (v210)
    {
      LOWORD(v208) = 1;
    }

    else
    {
      objc_opt_self();
      v208 = swift_dynamicCastObjCClass();
      if (v208)
      {
        LOWORD(v208) = [v208 hasVideo];
      }
    }
  }

  if (v209)
  {
    v211 = 16640;
  }

  else
  {
    v211 = 0x4000;
  }

  v212 = v211 | v208;
  v213 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
  *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = v212;
  sub_143510(v213);
LABEL_151:
  v214 = qword_E71990;
  swift_beginAccess();
  v215 = v236;
  sub_15F84(&v4[v214], v236, &unk_DE8E20, &qword_AF7990);
  v216 = v237;
  if ((*(v237 + 48))(v215, 1, v207) == 1)
  {
    sub_12E1C(v215, &unk_DE8E20, &qword_AF7990);
    goto LABEL_157;
  }

  (*(v216 + 32))(v100, v215, v207);
  if (sub_AB3780())
  {
    v217 = [v4 isEditing];
    (*(v216 + 8))(v100, v207);
    v218 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
    a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = v217 ^ 1;
    if (v218 == (v217 ^ 1))
    {
      goto LABEL_159;
    }

LABEL_158:
    v220 = [a1 _bridgedConfigurationState];
    v221 = v230;
    sub_AB4E00();
    isa = sub_AB4DF0().super.super.isa;
    (*(v231 + 8))(v221, v232);

    [a1 _bridgedUpdateConfigurationUsingState:isa];
    goto LABEL_159;
  }

  (*(v216 + 8))(v100, v207);
LABEL_157:
  v219 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
  a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = 0;
  if (v219)
  {
    goto LABEL_158;
  }

LABEL_159:

  return sub_12E1C(v245, &unk_DE9C60, &unk_AF8940);
}

char *sub_4D0E0(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 type];
  v47 = a3;
  if (v15 == &dword_0 + 3)
  {
    v18 = [a2 movie];
    if (!v18)
    {
      v19 = 0;
      goto LABEL_9;
    }

    v16 = v18;
    v17 = [v18 artworkCatalog];
LABEL_8:
    v19 = v17;

LABEL_9:
    v20 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
    *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v19;
    v21 = v19;
    goto LABEL_11;
  }

  if (v15 == &dword_0 + 2)
  {
    v16 = [a2 tvEpisode];
    v17 = [v16 artworkCatalog];
    goto LABEL_8;
  }

  if (v15 == &dword_0 + 1)
  {
    v16 = [a2 song];
    v17 = [v16 artworkCatalog];
    goto LABEL_8;
  }

  v19 = 0;
  v20 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
LABEL_11:

  sub_74EA4(v19);
  v22 = [a2 socialContributor];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 artworkCatalog];
    if (!v24)
    {
      v24 = MPModelPerson.monogramArtworkCatalog.getter();
    }

    v25 = v24;

    v22 = v25;
  }

  sub_143468(v22);
  v26 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  *&v48 = *v26;
  v27 = v48;
  *(&v48 + 1) = v28;
  v49 = v29;
  v50 = v30;
  v51 = *(v26 + 2);
  v31 = v29;
  v32 = v30;
  v33 = v27;
  v34 = v28;
  sub_1432BC(&v48);
  v35 = qword_E71990;
  swift_beginAccess();
  sub_15F84(v4 + v35, v9, &unk_DE8E20, &qword_AF7990);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    if (sub_AB3780())
    {
      goto LABEL_18;
    }

    v39 = sub_AB37F0();
    if (v39 == sub_AB37F0())
    {
      result = sub_AB37E0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (result + 1 == sub_AB37E0())
      {
LABEL_18:
        result = [a1 tableViewCell];
        if (!result)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v37 = result;
        [result setBackgroundColor:0];
        (*(v11 + 8))(v14, v10);

        v38 = 0;
        goto LABEL_25;
      }
    }

    (*(v11 + 8))(v14, v10);
  }

  v38 = 1;
LABEL_25:
  v40 = *(v4 + qword_DFE2F0);
  if (!v40)
  {
    goto LABEL_33;
  }

  result = [v40 results];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v41 = result;
  v42 = [result firstSection];

  if (!v42)
  {
    goto LABEL_33;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
LABEL_33:
    result = [a1 tableViewCell];
    if (result)
    {
      v45 = result;
      [result setSeparatorStyle:v38];
      v46 = 0;
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v44 = [v43 type];
  swift_unknownObjectRelease();
  if (v44 != &dword_8)
  {
    goto LABEL_33;
  }

  result = [a1 tableViewCell];
  if (result)
  {
    v45 = result;
    [result setSeparatorStyle:0];
    v46 = 1;
LABEL_35:

    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator] = v46;
    [a1 setNeedsLayout];
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = v46;
    return [a1 setNeedsLayout];
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_4D648()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 music_inheritedLayoutInsets];
    v3 = [v0 traitCollection];
    [v2 bounds];
    sub_14C0F8(v3, 0, &v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_4D6FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB7C10();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C50();
  v57 = *(v12 - 8);
  __chkstk_darwin();
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_AB7C80();
  v59 = *(v58 - 8);
  __chkstk_darwin();
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v50 - v17;
  v60 = [a1 innermostModelObject];
  sub_46BFE0(v60, a2, a3);
  if (v4[qword_E08828] == 1)
  {
    v52 = v11;
    v53 = v12;
    v54 = v9;
    v55 = v8;
    v19 = [v4 navigationItem];
    v20 = [v4 parentViewController];
    if (v20)
    {
      v21 = v20;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v22 = v21;
        v23 = [v22 navigationItem];

        v21 = [v22 parentViewController];
        v19 = v23;
        if (!v21)
        {
          goto LABEL_12;
        }
      }
    }

    v23 = v19;
LABEL_12:
    v25 = [v23 searchController];

    if (v25)
    {
      v26 = v25;
      v27 = UISearchController.searchText.getter();
      v29 = v28;

      if (v29)
      {

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          [v26 setActive:0];
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
          v50 = sub_ABA150();
          sub_AB7C70();
          sub_AB7CE0();
          v31 = *(v59 + 8);
          v59 += 8;
          v51 = v31;
          v31(v15, v58);
          v32 = swift_allocObject();
          v33 = v60;
          *(v32 + 16) = v4;
          *(v32 + 24) = v33;
          v65 = sub_57DE8;
          v66 = v32;
          aBlock = _NSConcreteStackBlock;
          v62 = 1107296256;
          v63 = sub_1B5EB4;
          v64 = &block_descriptor_290;
          v34 = _Block_copy(&aBlock);
          v35 = v4;
          v36 = v60;

          v37 = v56;
          sub_AB7C30();
          aBlock = _swiftEmptyArrayStorage;
          sub_57DF0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
          sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
          v38 = v52;
          v39 = v55;
          sub_ABABB0();
          v40 = v50;
          sub_ABA110();
          (*(v54 + 8))(v38, v39);
          (*(v57 + 8))(v37, v53);
          v51(v18, v58);
          _Block_release(v34);
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D00, &qword_B0C600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000000B4ACD0;
    v42 = *&v4[qword_DFE2F0];
    if (!v42)
    {
      v45 = 0;
      goto LABEL_22;
    }

    v43 = [v42 results];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 totalItemCount];

LABEL_22:
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = &off_D191F0;
      *(inited + 48) = v45;
      *(inited + 88) = 0x6E6F697461636F6CLL;
      *(inited + 96) = 0xE800000000000000;
      *(inited + 128) = &type metadata for String;
      *(inited + 136) = &off_D19220;
      *(inited + 104) = 1953720684;
      *(inited + 112) = 0xE400000000000000;
      v46 = sub_979E0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D08, &unk_AF8980);
      swift_arrayDestroy();
      v47 = sub_AB9260();
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      v65 = sub_57DA0;
      v66 = v48;
      aBlock = _NSConcreteStackBlock;
      v62 = 1107296256;
      v63 = sub_3A598C;
      v64 = &block_descriptor_284;
      v49 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v49);

      return;
    }

    __break(1u);
  }

  else
  {
    v24 = v60;
  }
}

void sub_4DF30(uint64_t a1, id a2)
{
  v3 = [a2 identifiers];
  v4 = *(a1 + qword_E08848);
  *(a1 + qword_E08848) = v3;
  v5 = v3;

  *(a1 + qword_E08860) = 0;
  sub_49134();
}

void sub_4DFB8(void *a1)
{
  v21 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v1 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;

  UIEdgeInsetsInsetRect(v6, v8, v10, v12, v16, v18);
  sub_14CD64(v21, 0x4000u, v19);
  [a1 setRowHeight:v20];
}

void sub_4E11C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v20 - v13;
  sub_AB3790();
  sub_AB3790();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a1;
  sub_56CA0(v14, v12);

  v19 = *(v10 + 8);
  v19(v12, v9);
  v19(v14, v9);
}

uint64_t sub_4E29C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

uint64_t sub_4E3B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v51 = &v45 - v6;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v45 - v10;
  __chkstk_darwin();
  v12 = &v45 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v45 - v14;
  __chkstk_darwin();
  v49 = &v45 - v15;
  __chkstk_darwin();
  v55 = &v45 - v16;
  v17 = __chkstk_darwin();
  v52 = &v45 - v18;
  v19 = *(v8 + 16);
  v54 = a3;
  v57 = v19;
  v58 = v8 + 16;
  (v19)(a3, a2, v7, v17);
  v56 = v3;
  v20 = *(v3 + qword_DE8FC8);
  v21 = *(v20 + 16);
  v22 = (v8 + 8);

  v24 = 0;
  while (1)
  {
    if (v21 == v24)
    {

      v26 = v52;
      v27 = v56;
      sub_469178(a2, v52);
      if ((*(v8 + 48))(v26, 1, v7) != 1)
      {
        sub_12E1C(v26, &unk_DE8E20, &qword_AF7990);
        v35 = v53;
        v34 = v54;
        goto LABEL_19;
      }

LABEL_7:
      sub_12E1C(v26, &unk_DE8E20, &qword_AF7990);
      v28 = v55;
      v57(v55, a2, v7);
      (*(v8 + 56))(v28, 0, 1, v7);
      v29 = qword_E719B8;
      swift_beginAccess();
      v30 = v51;
      v31 = *(v50 + 48);
      sub_15F84(v28, v51, &unk_DE8E20, &qword_AF7990);
      sub_15F84(v27 + v29, v30 + v31, &unk_DE8E20, &qword_AF7990);
      v32 = *(v8 + 48);
      if (v32(v30, 1, v7) == 1)
      {
        sub_12E1C(v28, &unk_DE8E20, &qword_AF7990);
        v33 = v32(v30 + v31, 1, v7);
        v35 = v53;
        v34 = v54;
        v27 = v56;
        if (v33 == 1)
        {
          sub_12E1C(v30, &unk_DE8E20, &qword_AF7990);
LABEL_19:
          v57(v35, v34, v7);
          (*(v8 + 56))(v35, 0, 1, v7);
          v42 = qword_DE8FB8;
          swift_beginAccess();
          sub_57CF8(v35, v27 + v42);
          return swift_endAccess();
        }
      }

      else
      {
        v36 = v49;
        sub_15F84(v30, v49, &unk_DE8E20, &qword_AF7990);
        if (v32(v30 + v31, 1, v7) != 1)
        {
          v43 = v45;
          (*(v8 + 32))(v45, v30 + v31, v7);
          sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v44 = sub_AB91C0();
          v37 = *(v8 + 8);
          v37(v43, v7);
          sub_12E1C(v55, &unk_DE8E20, &qword_AF7990);
          v37(v49, v7);
          sub_12E1C(v51, &unk_DE8E20, &qword_AF7990);
          v35 = v53;
          v34 = v54;
          v27 = v56;
          if (v44)
          {
            goto LABEL_19;
          }

LABEL_13:
          v37(v34, v7);
          v38 = qword_DE8FB8;
          swift_beginAccess();
          v39 = v27 + v38;
          v40 = v47;
          sub_15F84(v39, v47, &unk_DE8E20, &qword_AF7990);
          if (v32(v40, 1, v7) == 1)
          {
            v41 = v48;
            v57(v48, v46, v7);
            if (v32(v40, 1, v7) != 1)
            {
              sub_12E1C(v40, &unk_DE8E20, &qword_AF7990);
            }
          }

          else
          {
            v41 = v48;
            (*(v8 + 32))(v48, v40, v7);
          }

          (*(v8 + 32))(v34, v41, v7);
          goto LABEL_19;
        }

        sub_12E1C(v55, &unk_DE8E20, &qword_AF7990);
        (*v22)(v36, v7);
        v35 = v53;
        v34 = v54;
        v27 = v56;
      }

      sub_12E1C(v30, &unk_DF7930, &unk_B03B30);
      v37 = *v22;
      goto LABEL_13;
    }

    if (v24 >= *(v20 + 16))
    {
      break;
    }

    v57(v12, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24++, v7);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v25 = sub_AB91C0();
    result = (*(v8 + 8))(v12, v7);
    if (v25)
    {

      v26 = v52;
      (*(v8 + 56))(v52, 1, 1, v7);
      v27 = v56;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Class sub_4EBE0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v24 - v13;
  __chkstk_darwin();
  v16 = &v24 - v15;
  sub_AB3790();
  sub_AB3790();
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a1;
  sub_4E3B8(v14, v12, v16);

  v21 = *(v10 + 8);
  v21(v12, v9);
  v21(v14, v9);

  v22.super.isa = sub_AB3770().super.isa;
  v21(v16, v9);

  return v22.super.isa;
}

void sub_4EDA0(char a1, char a2)
{
  v3 = v2;
  v6 = [v3 isEditing];
  v7 = type metadata accessor for PlaylistDetailSongsViewController(0);
  v43.receiver = v3;
  v43.super_class = v7;
  objc_msgSendSuper2(&v43, "setEditing:animated:", a1 & 1, a2 & 1);
  v8 = [v3 isEditing];
  if (v6 == v8)
  {
    return;
  }

  v9 = v8;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E70DC0);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = a2;
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136446210;
    if (v9)
    {
      v15 = 0x676E697265746E45;
    }

    else
    {
      v15 = 0x676E6974697845;
    }

    if (v9)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_425E68(v15, v16, &v40);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "%{public}s playlist editing.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    a2 = v39;
  }

  if (!v9 || v3[qword_E70B50] != 1)
  {
    sub_48190(0);
    goto LABEL_19;
  }

  v18 = *&v3[qword_E70B78];
  if (v18)
  {
    v19 = v18;
    if ([v3 isEditing])
    {
      v20 = v19;
      sub_48190(v18);
    }

    sub_3B4724(v18);
    goto LABEL_19;
  }

  v22 = *&v3[qword_DFE2F0];
  if (!v22)
  {
LABEL_30:
    v34 = *&v3[qword_E70BA8];
    v35 = v34;
    sub_4FDF0(v34);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v23 results];
  if (!v24)
  {

    goto LABEL_30;
  }

  v25 = v24;
  v26 = *&v3[qword_E70B80];
  if (v26)
  {

    v27 = [v23 request];
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = v27;
    v29 = type metadata accessor for MusicKitEditingModelResponse();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC16MusicApplication28MusicKitEditingModelResponse_musickitEditor] = v26;
    v41.receiver = v30;
    v41.super_class = v29;

    v31 = objc_msgSendSuper2(&v41, "initWithRequest:", v28);

    v32 = v31;
    if ([v3 isEditing])
    {
      v33 = v32;
      sub_48190(v31);
    }

    sub_3B4724(v31);

LABEL_19:
    sub_53034(0, 0);
    [v3 loadViewIfNeeded];
    v21 = *&v3[qword_DFE2F8];
    if (v21)
    {
      [v21 reloadData];
      sub_52EFC(a2 & 1);
      v3[qword_E70B60] = 0;
      return;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  if (qword_DE6AA8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_E714D0);
  v36 = sub_AB4BA0();
  v37 = sub_AB9F40();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "attempting to edit without an edit controller", v38, 2u);
  }

  v42.receiver = v3;
  v42.super_class = v7;
  objc_msgSendSuper2(&v42, "setEditing:animated:", 0, a2 & 1);
}

void sub_4F274(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_4EDA0(a3, a4);
}

void sub_4F2D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v3 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = v60 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C40, &qword_AF8928);
  __chkstk_darwin();
  v6 = v60 - v5;
  v7 = sub_AB8860();
  v85 = *(v7 - 8);
  __chkstk_darwin();
  v79 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB3820();
  v81 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v60 - v12;
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = v60 - v15;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v64 = v13;
  [v0 loadViewIfNeeded];
  v17 = *&v0[qword_DFE2F8];
  if (!v17)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v18 indexPathsForVisibleItems];
  v20 = sub_AB9760();

  v78 = *(v20 + 16);
  if (!v78)
  {

    return;
  }

  v68 = v18;
  v21 = 0;
  v22 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v75 = qword_DE8FC8;
  v76 = v22;
  v74 = v20 + v22;
  v62 = qword_DFE2F0;
  v86 = v81 + 16;
  v83 = v81 + 56;
  v73 = (v85 + 6);
  v66 = (v85 + 4);
  v65 = v85 + 1;
  v85 = (v81 + 8);
  v67 = (v81 + 48);
  v63 = (v81 + 32);
  v77 = v6;
  v70 = v7;
  v71 = v3;
  v87 = v16;
  v72 = v1;
  v69 = v20;
  while (2)
  {
    if (v21 >= *(v20 + 16))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v24 = v81;
    v25 = *(v81 + 72);
    v84 = v21;
    v26 = *(v81 + 16);
    v26(v16, v74 + v25 * v21, v9);
    v27 = v80;
    v26(v80, v16, v9);
    v28 = v77;
    v82 = *(v24 + 56);
    v82(v27, 0, 1, v9);
    sub_51DB0(v27, v28);
    sub_12E1C(v27, &unk_DE8E20, &qword_AF7990);
    if ((*v73)(v28, 1, v7) != 1)
    {
      (*v66)(v79, v28, v7);
      isa = sub_AB3770().super.isa;
      v30 = [v68 cellForItemAtIndexPath:isa];

      if (v30)
      {
        type metadata accessor for SongCell(0);
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = v79;
          sub_55410(v31, v79);
          (*v65)(v32, v7);

          goto LABEL_16;
        }
      }

      (*v65)(v79, v7);
      goto LABEL_16;
    }

    sub_12E1C(v28, &unk_DE9C40, &qword_AF8928);
LABEL_16:
    ++v84;
    v33 = *&v1[v75];
    v34 = *(v33 + 16);
    v35 = v33 + v76;

    v36 = v35;
    v37 = -v34;
    v38 = -1;
    while (v37 + v38 != -1)
    {
      if (++v38 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v39 = v36 + v25;
      (v26)(v11);
      sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v40 = sub_AB91C0();
      v23 = *v85;
      (*v85)(v11, v9);
      v36 = v39;
      if (v40)
      {

        v41 = v71;
        v82(v71, 1, 1, v9);
        v1 = v72;
        v16 = v87;
        goto LABEL_6;
      }
    }

    v41 = v71;
    v1 = v72;
    v16 = v87;
    sub_469178(v87, v71);
    if ((*v67)(v41, 1, v9) == 1)
    {
      v23 = *v85;
LABEL_6:
      v23(v16, v9);
      sub_12E1C(v41, &unk_DE8E20, &qword_AF7990);
      v7 = v70;
      goto LABEL_7;
    }

    v42 = v64;
    (*v63)(v64, v41, v9);
    v43 = sub_AB3770().super.isa;
    v44 = [v68 cellForItemAtIndexPath:v43];

    v7 = v70;
    if (!v44)
    {
      goto LABEL_30;
    }

    type metadata accessor for SongCell(0);
    v45 = swift_dynamicCastClass();
    if (!v45)
    {

LABEL_30:
      v58 = *v85;
      (*v85)(v42, v9);
      v58(v16, v9);
      goto LABEL_7;
    }

    v46 = *&v1[v62];
    v82 = v44;
    if (!v46)
    {
      goto LABEL_33;
    }

    v61 = v45;
    v47 = v46;
    v48 = [v47 results];
    if (!v48)
    {
      v59 = *v85;
      (*v85)(v64, v9);

LABEL_34:
      v59(v16, v9);

      goto LABEL_7;
    }

    v49 = v48;

    v50 = sub_AB3770().super.isa;
    v51 = [v49 itemAtIndexPath:v50];

    if (!v51)
    {
LABEL_33:
      v59 = *v85;
      (*v85)(v64, v9);
      goto LABEL_34;
    }

    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    if (!v52)
    {
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v53 = v52;
    v60[1] = v51;
    v54 = v64;
    sub_4B82C(v61, v52, v64);
    v55 = v53;
    v56 = v54;
    sub_4D0E0(v61, v55, v54);
    v57 = *v85;
    (*v85)(v56, v9);
    v57(v16, v9);

    swift_unknownObjectRelease();
LABEL_7:
    v20 = v69;
    v21 = v84;
    if (v84 != v78)
    {
      continue;
    }

    break;
  }
}

void sub_4FC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + qword_E08858;
  v4 = *(v1 + qword_E08858 + 32);
  v5 = v4 & 0xFE;
  if ((v2 & 0xFE) == 0xF8)
  {
    if (v5 == 248)
    {
      return;
    }

LABEL_8:
    sub_4F2D0();
    return;
  }

  if (v5 == 248 || *a1 != *v3)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 40);
  v13 = *(v1 + qword_E08858 + 32);
  v14 = *(a1 + 32);
  v15 = v4 & 0xFE;
  if ((v2 & 0xFE) == 0x7A)
  {
    v16 = v15 == 122;
    goto LABEL_11;
  }

  if (v15 == 122)
  {
    goto LABEL_8;
  }

  v19 = *(a1 + 24);
  v20 = *(v3 + 24);
  v21 = v14 >> 1;
  if (v14 >> 1 <= 0x7C)
  {
    if (v21 == 62)
    {
      v16 = v15 == 124;
    }

    else
    {
      if (v21 != 63)
      {
        goto LABEL_38;
      }

      v16 = v15 == 126;
    }

LABEL_11:
    if (!v16 || v7 != v10)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  switch(v21)
  {
    case '}':
      v16 = v15 == 250;
      goto LABEL_11;
    case '~':
      v16 = v15 == 252;
      goto LABEL_11;
    case '\x7F':
      if (v13 < 0xFE || v7 != v10)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
  }

LABEL_38:
  if ((v13 >> 1) - 125 < 3 || (v13 >> 1) - 62 < 2)
  {
    goto LABEL_8;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    v16 = *&v19 == *&v20;
    goto LABEL_11;
  }

  if ((v4 & 0x80) != 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if (v4)
    {
      goto LABEL_8;
    }

    v16 = v19 == v20;
    goto LABEL_11;
  }

  if ((v4 & (v7 == v10)) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  if (vabdd_f64(v8, v11) > 0.00000011920929 || v9 != v12)
  {
    goto LABEL_8;
  }
}

void *JSShelfViewController.modelResponse.getter()
{
  v1 = *(v0 + qword_DFE2F0);
  v2 = v1;
  return v1;
}

void sub_4FDF0(void *a1)
{
  if (a1)
  {
    type metadata accessor for EditingModelResponse();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = a1;
      if ([v1 isEditing])
      {
        v6 = v5;
        sub_48190(v4);
      }

      goto LABEL_10;
    }
  }

  v7 = *&v1[qword_E70BA8];
  *&v1[qword_E70BA8] = a1;
  v8 = a1;

  if (![v1 isEditing])
  {
LABEL_10:

    sub_3B4724(a1);
    return;
  }
}

void (*sub_4FEDC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + qword_DFE2F0);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_4FF30;
}

void sub_4FF30(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_4FDF0(v2);
  }

  else
  {
    sub_4FDF0(*a1);
  }
}

id sub_4FF98()
{
  result = *(v0 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result firstSection];

    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_5002C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v26 - v8;
  v10 = qword_DFE2F0;
  v11 = *&v3[qword_DFE2F0];
  if (!v11)
  {
    goto LABEL_12;
  }

  result = [v11 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result firstSection];

  if (!v14)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_11;
  }

  if (a1)
  {
    v15 = a1;
    goto LABEL_9;
  }

  v16 = *&v3[v10];
  if (!v16)
  {
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v15 = v16;
LABEL_9:
  v17 = a1;
  if ([v15 isEmpty])
  {
    swift_unknownObjectRelease();

LABEL_12:
    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    v19 = *(*(v18 - 8) + 56);

    return v19(a3, 1, 1, v18);
  }

  v20 = v15;
  sub_46A200(v15, a2, v9);

  v21 = sub_AB3820();
  if ((*(*(v21 - 8) + 48))(a2, 1, v21) != 1 || (v22 = [v3 traitCollection], v23 = UITraitCollection.isMediaPicker.getter(v22), v22, v23) || (v24 = type metadata accessor for PlaybackIntentDescriptor(0), (*(*(v24 - 8) + 48))(v9, 1, v24)))
  {
  }

  else
  {
    v25 = MPModelPlaylist.supportsSing.getter();

    v9[*(v24 + 36)] = v25 & 1;
  }

  sub_36B0C(v9, a3, &unk_DEA510, "\b]\r");
  return swift_unknownObjectRelease();
}

id sub_502FC(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    v5 = [v3 type];
    if (v5 > 1)
    {
      if (v5 == &dword_0 + 2)
      {
        sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
        v6 = static MPModelTVEpisode.defaultMusicKind.getter();
LABEL_11:
        v7 = v6;

        return v7;
      }

      if (v5 == &dword_0 + 3)
      {
        sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
        v6 = static MPModelMovie.defaultMusicKind.getter();
        goto LABEL_11;
      }
    }

    else
    {
      if (!v5)
      {

        return 0;
      }

      if (v5 == &dword_0 + 1)
      {
        v6 = [objc_opt_self() kindWithVariants:3];
        goto LABEL_11;
      }
    }

    sub_ABAD90(24);
    v8._object = 0x8000000000B4AB80;
    v8._countAndFlagsBits = 0xD000000000000013;
    sub_AB94A0(v8);
    [v3 type];
    v9._countAndFlagsBits = 0xD000000000000018;
    v9._object = 0x8000000000B4ABA0;
    sub_AB94A0(v9);
    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    sub_AB94A0(v10);
    [v3 type];
    type metadata accessor for MPModelPlaylistEntryType(0);
    sub_ABAF70();
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

id sub_504FC(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result innermostModelObject];
  }

  return result;
}

void sub_5054C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8800;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_AB92A0();
  *(v0 + 232) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v15 = MPModelRelationshipPlaylistCurator;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF4EC0;
  *(v17 + 32) = sub_AB92A0();
  *(v17 + 40) = v18;
  v19 = v15;
  isa = sub_AB9740().super.isa;
  v21 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v21;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v22 = objc_allocWithZone(MPPropertySet);
  v23 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v24 = sub_AB8FD0().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  v26 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v27 = sub_2BAFF8(v26);
  v28 = [v25 propertySetByCombiningWithPropertySet:v27];

  qword_E70B40 = v28;
}

void sub_508A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  v4 = MPModelRelationshipPlaylistEntrySocialContributor;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF85F0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_AB92A0();
  *(v6 + 56) = v8;
  v113 = v4;
  isa = sub_AB9740().super.isa;
  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  v12 = MPModelRelationshipPlaylistEntrySong;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF8810;
  *(v14 + 32) = sub_AB92A0();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_AB92A0();
  *(v14 + 56) = v16;
  *(v14 + 64) = sub_AB92A0();
  *(v14 + 72) = v17;
  *(v14 + 80) = sub_AB92A0();
  *(v14 + 88) = v18;
  *(v14 + 96) = sub_AB92A0();
  *(v14 + 104) = v19;
  *(v14 + 112) = sub_AB92A0();
  *(v14 + 120) = v20;
  *(v14 + 128) = sub_AB92A0();
  *(v14 + 136) = v21;
  *(v14 + 144) = sub_AB92A0();
  *(v14 + 152) = v22;
  *(v14 + 160) = sub_AB92A0();
  *(v14 + 168) = v23;
  *(v14 + 176) = sub_AB92A0();
  *(v14 + 184) = v24;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_AF8820;
  v26 = MPModelRelationshipSongArtist;
  *(v25 + 32) = sub_AB92A0();
  *(v25 + 40) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v28 + 32) = sub_AB92A0();
  *(v28 + 40) = v29;
  v112 = v12;
  v110 = v26;
  v30 = sub_AB9740().super.isa;
  v31 = v10;
  v32 = [v10 propertySetWithProperties:v30];

  *(v25 + 48) = v32;
  v33 = MPModelRelationshipSongComposer;
  *(v25 + 56) = sub_AB92A0();
  *(v25 + 64) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF4EC0;
  *(v35 + 32) = sub_AB92A0();
  *(v35 + 40) = v36;
  v37 = v33;
  v38 = sub_AB9740().super.isa;
  v114 = v31;
  v39 = [v31 propertySetWithProperties:v38];

  *(v25 + 72) = v39;
  v40 = MPModelRelationshipSongAlbum;
  *(v25 + 80) = sub_AB92A0();
  *(v25 + 88) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_AF85F0;
  *(v42 + 32) = sub_AB92A0();
  *(v42 + 40) = v43;
  *(v42 + 48) = sub_AB92A0();
  *(v42 + 56) = v44;
  v45 = v40;
  v46 = sub_AB9740().super.isa;
  v47 = [v31 propertySetWithProperties:v46];

  *(v25 + 96) = v47;
  sub_96EA4(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(MPPropertySet);
  v49 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v50 = sub_AB8FD0().super.isa;

  v51 = [v48 initWithProperties:v49 relationships:v50];

  v52 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v53 = sub_10F414(v52);
  v54 = [v51 propertySetByCombiningWithPropertySet:v53];

  v55 = sub_2BAFF8(v52);
  v56 = [v54 propertySetByCombiningWithPropertySet:v55];

  *(inited + 72) = v56;
  v57 = MPModelRelationshipPlaylistEntryTVEpisode;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_AF85D0;
  *(v59 + 32) = sub_AB92A0();
  *(v59 + 40) = v60;
  *(v59 + 48) = sub_AB92A0();
  *(v59 + 56) = v61;
  *(v59 + 64) = sub_AB92A0();
  *(v59 + 72) = v62;
  *(v59 + 80) = sub_AB92A0();
  *(v59 + 88) = v63;
  v64 = swift_initStackObject();
  *(v64 + 16) = xmmword_AF85F0;
  v65 = MPModelRelationshipTVEpisodeShow;
  *(v64 + 32) = sub_AB92A0();
  *(v64 + 40) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_AF4EC0;
  *(v67 + 32) = sub_AB92A0();
  *(v67 + 40) = v68;
  v115 = v57;
  v111 = v65;
  v69 = sub_AB9740().super.isa;
  v70 = [v114 propertySetWithProperties:v69];

  *(v64 + 48) = v70;
  v71 = MPModelRelationshipTVEpisodeSeason;
  *(v64 + 56) = sub_AB92A0();
  *(v64 + 64) = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_AF85F0;
  *(v73 + 32) = sub_AB92A0();
  *(v73 + 40) = v74;
  *(v73 + 48) = sub_AB92A0();
  *(v73 + 56) = v75;
  v76 = v71;
  v77 = sub_AB9740().super.isa;
  v78 = [v114 propertySetWithProperties:v77];

  *(v64 + 72) = v78;
  sub_96EA4(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  v79 = objc_allocWithZone(MPPropertySet);
  v80 = sub_AB9740().super.isa;

  v81 = sub_AB8FD0().super.isa;

  v82 = [v79 initWithProperties:v80 relationships:v81];

  v83 = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v84 = sub_10F414(v83);
  v85 = [v82 propertySetByCombiningWithPropertySet:v84];

  v86 = sub_2BAFF8(v83);
  v87 = [v85 propertySetByCombiningWithPropertySet:v86];

  *(inited + 96) = v87;
  v88 = MPModelRelationshipPlaylistEntryMovie;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_AF85D0;
  *(v90 + 32) = sub_AB92A0();
  *(v90 + 40) = v91;
  *(v90 + 48) = sub_AB92A0();
  *(v90 + 56) = v92;
  *(v90 + 64) = sub_AB92A0();
  *(v90 + 72) = v93;
  *(v90 + 80) = sub_AB92A0();
  *(v90 + 88) = v94;
  v95 = v88;
  v96 = sub_AB9740().super.isa;
  v97 = [v114 propertySetWithProperties:v96];

  v98 = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v99 = sub_10F414(v98);
  v100 = [v97 propertySetByCombiningWithPropertySet:v99];

  v101 = sub_2BAFF8(v98);
  v102 = [v100 propertySetByCombiningWithPropertySet:v101];

  *(inited + 120) = v102;
  sub_96EA4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v103 = objc_allocWithZone(MPPropertySet);
  v104 = sub_AB9740().super.isa;

  v105 = sub_AB8FD0().super.isa;

  v106 = [v103 initWithProperties:v104 relationships:v105];

  v107 = sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v108 = sub_2BAFF8(v107);
  v109 = [v106 propertySetByCombiningWithPropertySet:v108];

  qword_E70B48 = v109;
}

void sub_51420(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((v2[qword_E08828] & 1) == 0 && ([v2 isEditing] & 1) == 0 && a1)
  {
    v6 = a1;
    v7 = [v6 results];
    if (!v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = v7;
    v9 = [v7 numberOfSections];

    if (v9 >= 1)
    {
      v10 = [v6 results];
      if (!v10)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v11 = v10;
      v12 = [v6 results];
      if (!v12)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v13 = v12;
      v14 = [v12 numberOfSections];

      if (__OFSUB__(v14, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v15 = [v11 numberOfItemsInSection:v14 - 1];

      if (v15 > 0 || (v16 = qword_DE8FC0, swift_beginAccess(), *(*&v2[v16] + 16)))
      {
        v17 = [v6 results];
        if (!v17)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v18 = v17;
        v19 = [v17 numberOfSections];

        v20 = v19 - 1;
        if (!__OFSUB__(v19, 1))
        {
          v21 = [v6 results];
          if (!v21)
          {
LABEL_26:
            __break(1u);
            return;
          }

          v22 = v21;
          v23 = [v21 numberOfItemsInSection:v20];

          v24 = qword_DE8FC0;
          swift_beginAccess();
          if (!__OFADD__(v23, *(*&v2[v24] + 16)))
          {
            sub_AB37C0();
            v25 = sub_AB3820();
            (*(*(v25 - 8) + 56))(a2, 0, 1, v25);

            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }
  }

  v4 = sub_AB3820();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

void sub_516B8(void *a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  __chkstk_darwin();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C90, &unk_AF8960);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v44 = (&v41 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C88, &qword_AF8958);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v41 - v12;
  v14 = qword_DE8FC0;
  swift_beginAccess();
  if (*(*(v1 + v14) + 16))
  {
    v15 = a1 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v45 = v8;
    v49 = v6;
    v42 = a1;
    v16 = [v42 results];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 numberOfSections];

      if (v18 < 1 || (*(v1 + qword_E08828) & 1) != 0)
      {

        return;
      }

      v19 = [v42 results];
      if (!v19)
      {
        goto LABEL_32;
      }

      v20 = v19;
      v21 = [v19 numberOfSections];

      v48 = v21 - 1;
      if (!__OFSUB__(v21, 1))
      {
        v22 = [v42 results];
        if (!v22)
        {
LABEL_33:
          __break(1u);
          return;
        }

        v23 = v22;
        v46 = [v22 numberOfItemsInSection:v48];

        v24 = *(v1 + v14);
        v47 = *(v24 + 16);
        v25 = (v45 + 56);
        v26 = (v45 + 48);
        v45 = v51 + 32;
        v43 = v24;

        v27 = 0;
        v28 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v27 == v47)
          {
            v29 = 1;
            v27 = v47;
          }

          else
          {
            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v27 >= *(v43 + 16))
            {
              goto LABEL_29;
            }

            v30 = v43;
            v31 = sub_AB8860();
            v32 = *(v31 - 8);
            v33 = *(v32 + 16);
            v34 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27;
            v35 = *(v7 + 48);
            v36 = v44;
            *v44 = v27;
            v33(v36 + v35, v34, v31);
            sub_36B0C(v36, v11, &unk_DE9C90, &unk_AF8960);
            v29 = 0;
            ++v27;
          }

          (*v25)(v11, v29, 1, v7);
          sub_36B0C(v11, v13, &qword_DE9C88, &qword_AF8958);
          if ((*v26)(v13, 1, v7) == 1)
          {

            return;
          }

          if (__OFADD__(v46, *v13))
          {
            break;
          }

          sub_AB37A0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_6AE4C(0, v28[2] + 1, 1, v28);
          }

          v38 = v28[2];
          v37 = v28[3];
          if (v38 >= v37 >> 1)
          {
            v28 = sub_6AE4C((v37 > 1), v38 + 1, 1, v28);
          }

          v39 = *(v7 + 48);
          v28[2] = v38 + 1;
          (*(v51 + 32))(v28 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v49, v50);
          v40 = sub_AB8860();
          (*(*(v40 - 8) + 8))(&v13[v39], v40);
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

void sub_51BE4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C90, &unk_AF8960);
  v5 = __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v4;
      v12 = sub_AB8860();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_36B0C(v7, a1, &unk_DE9C90, &unk_AF8960);
        (*(v19 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_51DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v6, &unk_DE8E20, &qword_AF7990);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
LABEL_9:
    v21 = sub_AB8860();
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = qword_DE8FC0;
  swift_beginAccess();
  if (!*(*(v2 + v11) + 16) || (v12 = *(v2 + qword_DE8FC8), , v13 = sub_469AC8(v10, v12), v15 = v14, result = , (v15 & 1) != 0) || (v17 = *(v2 + v11), v13 >= *(v17 + 16)))
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_9;
  }

  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_AB8860();
    v19 = *(v18 - 8);
    (*(v19 + 16))(a2, v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13, v18);
    v20 = *(v8 + 8);

    v20(v10, v7);
    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return result;
}

double sub_520E8()
{
  v1 = v0;
  v2 = qword_DE8FD0;
  v3 = *(v0 + qword_DE8FD0);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *(*v3 + 248);

    v5(sub_569F8, v4);

    v7 = *(v1 + v2);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = *(v7 + 64);
      v10 = *(v7 + 72);
      *(v7 + 64) = sub_56A00;
      *(v7 + 72) = v8;

      sub_17654(v9, v10);
    }
  }

  return result;
}

id sub_52238@<X0>(uint64_t a2@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong[qword_E70B50];
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5[qword_E08828];
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_15:
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v8 = v7;
  v9 = *(v7 + qword_DFE2F0);
  if (!v9)
  {
LABEL_14:

    goto LABEL_15;
  }

  result = [v9 results];
  if (result)
  {
    v11 = result;
    v12 = [result firstSection];

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();

      if (v13)
      {
        [v13 type];
        swift_unknownObjectRelease();
        if ((v6 & 1) == 0)
        {
LABEL_18:
          sub_AB91E0();
          sub_AB3550();
          v14 = sub_AB9320();
          if (v4)
          {
            v16 = v14;
            v17 = v15;
            sub_AB91E0();
            sub_AB3550();
            v18 = sub_AB9320();
            v20 = v19;
            v21 = swift_allocObject();
            swift_beginAccess();
            v22 = swift_unknownObjectWeakLoadStrong();
            swift_unknownObjectWeakInit();

            v15 = v17;
            v14 = v16;
            v23 = sub_5779C;
            v24 = 1;
LABEL_21:
            v29 = 0uLL;
            *&v30 = v14;
            *(&v30 + 1) = v15;
            *&v31 = 0;
            *(&v31 + 1) = v18;
            *&v32 = v20;
            *(&v32 + 1) = v24;
            *&v33 = v23;
            *(&v33 + 1) = v21;
            v34 = 0;
            v35[0] = 0;
            v35[1] = 0;
            v35[2] = v14;
            v35[3] = v15;
            v35[4] = 0;
            v35[5] = v18;
            v35[6] = v20;
            v35[7] = v24;
            v35[8] = v23;
            v35[9] = v21;
            v35[10] = 0;
            sub_576EC(&v29, &v28);
            result = sub_57748(v35);
            v25 = v32;
            v26 = v33;
            v27 = v30;
            *(a2 + 32) = v31;
            *(a2 + 48) = v25;
            *(a2 + 64) = v26;
            *(a2 + 80) = v34;
            *a2 = v29;
            *(a2 + 16) = v27;
            return result;
          }

LABEL_20:
          v18 = 0;
          v20 = 0;
          v24 = 0;
          v23 = 0;
          v21 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if ((v6 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_16:
      sub_AB91E0();
      sub_AB3550();
      v14 = sub_AB9320();
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_52664(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + qword_E70B70);
    if (v3)
    {
      v4 = *(Strong + qword_E70B70 + 8);

      v3(v2);
      sub_17654(v3, v4);
    }
  }
}

void sub_526F4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v5 loadViewIfNeeded];
    v6 = qword_DFE2F8;
    v7 = *&v5[qword_DFE2F8];
    if (v7)
    {
      v8 = [v7 collectionViewLayout];
      type metadata accessor for ContainerDetailCollectionTableLayout();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {

        goto LABEL_9;
      }

      v10 = v9;
      [v5 loadViewIfNeeded];
      v11 = *&v5[v6];
      if (v11)
      {
        v12 = v11;
        v13 = sub_4713C4(v12);

        [v5 loadViewIfNeeded];
        v14 = *&v5[v6];
        if (v14)
        {
          v15 = v14;

          [v15 bounds];
          v17 = v16;
          v19 = v18;

          v26.origin.x = UIEdgeInsetsInsetRect(0.0, 0.0, v17, v19, v13, 0.0);
          x = v26.origin.x;
          y = v26.origin.y;
          width = v26.size.width;
          [a2 sizeThatFits:{CGRectGetWidth(v26), 1.79769313e308}];
          v24 = v23;
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = v24;
          Height = CGRectGetHeight(v27);

          *(v10 + OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout_contentHeightAdjustment) = Height;
LABEL_9:

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_528F8(uint64_t a1)
{
  if (*&v1[qword_E70B80])
  {
    v2 = v1;

    v4 = sub_AB43E0();

    if (v4)
    {
      if ([v2 isEditing])
      {
        if (qword_DE67E0 != -1)
        {
          swift_once();
        }

        v5 = sub_AB4BC0();
        __swift_project_value_buffer(v5, qword_E70DC0);
        v6 = v4;
        v7 = v2;

        v8 = sub_AB4BA0();
        v9 = sub_AB9F10();

        if (!os_log_type_enabled(v8, v9))
        {

LABEL_26:
          v29 = v7[qword_DE8FA8];
          v7[qword_DE8FA8] = 1;
          sub_47550(v29);
          [v7 loadViewIfNeeded];
          v30 = *&v7[qword_DFE2F8];
          if (v30)
          {
            v31 = swift_allocObject();
            *(v31 + 16) = v7;
            *(v31 + 24) = a1;
            v32 = swift_allocObject();
            *(v32 + 16) = sub_57C28;
            *(v32 + 24) = v31;
            v45 = sub_36C08;
            v46 = v32;
            aBlock = _NSConcreteStackBlock;
            v42 = 1107296256;
            v43 = sub_1822E0;
            v44 = &block_descriptor_266;
            v33 = _Block_copy(&aBlock);
            v34 = v7;

            v35 = v30;

            v36 = swift_allocObject();
            *(v36 + 16) = v34;
            v45 = sub_57C5C;
            v46 = v36;
            aBlock = _NSConcreteStackBlock;
            v42 = 1107296256;
            v43 = sub_1811AC;
            v44 = &block_descriptor_272;
            v37 = _Block_copy(&aBlock);
            v38 = v34;

            [v35 performBatchUpdates:v33 completion:v37];

            _Block_release(v37);
            _Block_release(v33);

            v38[qword_E70B60] = 1;

            return;
          }

          __break(1u);
          goto LABEL_29;
        }

        v10 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v10 = 136446722;
        v11 = *&v7[qword_DFE2F0];
        if (v11)
        {
          v12 = [v11 results];
          if (!v12)
          {
LABEL_29:

            __break(1u);
            return;
          }

          v13 = v12;

          v14 = [v13 firstSection];

          if (!v14)
          {
            goto LABEL_24;
          }

          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = [v15 identifiers];
            swift_unknownObjectRelease();
            v14 = MPIdentifierSet.publicLoggingDescription.getter();
            v18 = v17;

LABEL_25:
            aBlock = v14;
            v42 = v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
            v22 = sub_AB9350();
            v24 = sub_425E68(v22, v23, &v40);

            *(v10 + 4) = v24;
            *(v10 + 12) = 2050;
            v25 = [v6 totalItemCount];

            *(v10 + 14) = v25;
            *(v10 + 22) = 2082;
            type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
            v26 = sub_AB9770();
            v28 = sub_425E68(v26, v27, &v40);

            *(v10 + 24) = v28;
            _os_log_impl(&dword_0, v8, v9, "Updating playlist=%{public}s, current totalItemCount=%{public}ld) with changeRecords=%{public}s", v10, 0x20u);
            swift_arrayDestroy();

            goto LABEL_26;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v14 = 0;
LABEL_24:
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  if (qword_DE6740 != -1)
  {
    swift_once();
  }

  v19 = sub_AB4BC0();
  __swift_project_value_buffer(v19, qword_DE8F90);
  oslog = sub_AB4BA0();
  v20 = sub_AB9F40();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, oslog, v20, "attempting to make edits using MusicKit in an invalid state", v21, 2u);
  }
}

void sub_52EFC(char a1)
{
  v3 = qword_DFE2F0;
  v4 = *(v1 + qword_DFE2F0);
  if (v4 && [v4 isEmpty])
  {
    v5 = *(v1 + v3);
    if (v5)
    {
      v6 = [v5 results];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = [v6 firstSection];

      if (v8)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = [v9 userEditableComponents];
          swift_unknownObjectRelease();
          if (v10)
          {
            v11 = *(v1 + qword_E08828);
            goto LABEL_12;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  if (*(v1 + qword_DE8FD0))
  {

    sub_3B0720(v11, a1 & 1);
  }
}

id sub_53034(int a1, void *a2)
{
  v3 = v2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v130 = &v114 - v6;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = &v114 - v9;
  __chkstk_darwin();
  v129 = &v114 - v11;
  __chkstk_darwin();
  v13 = (&v114 - v12);
  v140 = sub_AB3820();
  v137 = *(v140 - 8);
  __chkstk_darwin();
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v114 - v15;
  v16 = sub_AB8860();
  v136 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v114 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C88, &qword_AF8958);
  __chkstk_darwin();
  v144 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = __chkstk_darwin().n128_u64[0];
  v143 = &v114 - v22;
  result = [v3 isViewLoaded];
  if (result)
  {
    [v3 loadViewIfNeeded];
    v122 = qword_DFE2F8;
    result = *&v3[qword_DFE2F8];
    if (!result)
    {
      __break(1u);
      goto LABEL_69;
    }

    result = [result numberOfSections];
    if (result >= 1 && (v3[qword_E70B58] & 1) == 0)
    {
      v116 = v7;
      v117 = v8;
      v120 = a1;
      v118 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v119 = v10;
      v155 = _swiftEmptyArrayStorage;
      v24 = qword_DE8FC0;
      swift_beginAccess();
      v25 = *(*&v3[v24] + 16);
      v121 = a2;
      if (v25)
      {
        v115 = v13;
        v26 = *&v3[qword_DFE2F0];
        v27 = v26;
        v28 = a2;
        v29 = v27;
        v30 = sub_55DEC(v26, v28);

        v154 = v30;
        v31 = *&v3[v24];
        v149 = 0;
        v150 = 0;
        aBlock = v31;
        v142 = (v136 + 32);
        v135 = qword_DE8FC8;
        v123 = v136 + 16;
        v13 = (v136 + 8);
        v127 = v137 + 16;
        v126 = (v137 + 32);

        v146 = 0;
        v32 = _swiftEmptyArrayStorage;
        *&v33 = 136446210;
        v124 = v33;
        v34 = v138;
        v35 = v143;
        while (1)
        {
          v36 = v144;
          sub_51BE4(v144);
          sub_36B0C(v36, v35, &qword_DE9C88, &qword_AF8958);
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C90, &unk_AF8960);
          if ((*(*(v37 - 8) + 48))(v35, 1, v37) == 1)
          {
            break;
          }

          v145 = *v35;
          (*v142)(v34, v35 + *(v37 + 48), v16);
          __chkstk_darwin();
          *(&v114 - 2) = v34;
          v38 = v146;
          sub_543C0(sub_57B5C, (&v114 - 4), v39);
          v146 = v38;
          if ((v41 & 1) == 0)
          {
            v141 = v40;
            if (qword_DE67E0 != -1)
            {
              swift_once();
            }

            v42 = sub_AB4BC0();
            __swift_project_value_buffer(v42, qword_E70DC0);
            v43 = v3;
            v44 = sub_AB4BA0();
            v45 = sub_AB9F30();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v147 = v47;
              *v46 = v124;
              if ((v145 & 0x8000000000000000) != 0)
              {
                goto LABEL_65;
              }

              v48 = *&v3[v24];
              if (v145 >= *(v48 + 16))
              {
                goto LABEL_66;
              }

              v133 = v46;
              v49 = v136;
              v50 = v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v145;
              v51 = *(v136 + 16);
              v134 = v47;
              v51(v18, v50, v16);
              sub_57DF0(&qword_E073D0, &type metadata accessor for Track, &protocol conformance descriptor for Track);
              v132 = v45;

              v131 = v44;
              v52 = sub_ABB330();
              v54 = v53;
              v55 = *(v49 + 8);
              v34 = v138;
              v55(v18, v16);

              v56 = sub_425E68(v52, v54, &v147);

              v57 = v133;
              *(v133 + 1) = v56;
              v58 = v131;
              _os_log_impl(&dword_0, v131, v132, "Found temporary track=%{public}s in response", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v134);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = v143;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v32 = sub_6AE9C(0, *(v32 + 2) + 1, 1, v32);
            }

            v61 = *(v32 + 2);
            v60 = *(v32 + 3);
            v62 = v145;
            if (v61 >= v60 >> 1)
            {
              v71 = sub_6AE9C((v60 > 1), v61 + 1, 1, v32);
              v62 = v145;
              v32 = v71;
            }

            *(v32 + 2) = v61 + 1;
            *&v32[8 * v61 + 32] = v62;
            v63 = v62;

            v64 = *&v3[v135];
            v65 = *(v64 + 16);
            if (v65)
            {
              if (v63 >= v65)
              {
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              v66 = (*(v137 + 80) + 32) & ~*(v137 + 80);
              v141 = *(v137 + 72);
              (*(v137 + 16))(v139, v64 + v66 + v141 * v63, v140);
              v67 = v155;

              v68 = swift_isUniquelyReferenced_nonNull_native();
              v145 = v66;
              if ((v68 & 1) == 0)
              {
                v67 = sub_6AE4C(0, v67[2] + 1, 1, v67);
                v155 = v67;
              }

              v70 = v67[2];
              v69 = v67[3];
              if (v70 >= v69 >> 1)
              {
                v67 = sub_6AE4C((v69 > 1), v70 + 1, 1, v67);
              }

              v67[2] = v70 + 1;
              (*v126)(v67 + v145 + v70 * v141, v139, v140);
              v155 = v67;

              v34 = v138;
              v35 = v143;
            }
          }

          (*v13)(v34, v16);
        }

        v72 = *(v32 + 2);
        if (!v72)
        {
LABEL_33:

          v13 = v115;
          a2 = v121;
          goto LABEL_34;
        }

        swift_beginAccess();
        while (1)
        {
          v73 = *(v32 + 2);
          if (v72 > v73)
          {
            break;
          }

          v34 = v72 - 1;
          sub_2E5F4C(*&v32[8 * v72 + 24], v18);
          (*v13)(v18, v16);
          v72 = v34;
          if (!v34)
          {
            swift_endAccess();
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_43:
        v79 = *(v73 - 32);
        v80 = &v32[v16];
        v81 = v125;
        (*(v79 + 32))(v125, v80, v35);
        sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v82 = sub_AB91C0();
        v83 = *(v79 + 8);
        v83(v81, v35);
        v83(v34, v35);
        sub_12E1C(v32, &unk_DE8E20, &qword_AF7990);
        if (v82)
        {
LABEL_44:
          if (!v155[2])
          {
            sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
          }
        }

LABEL_45:
        if (qword_DE67E0 != -1)
        {
LABEL_67:
          swift_once();
        }

        v84 = sub_AB4BC0();
        __swift_project_value_buffer(v84, qword_E70DC0);
        v85 = sub_AB4BA0();
        v86 = sub_AB9F50();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          aBlock = v88;
          *v87 = 136446210;
          v89 = v120;
          if (v120)
          {
            v90 = 1702195828;
          }

          else
          {
            v90 = 0x65736C6166;
          }

          if (v120)
          {
            v91 = 0xE400000000000000;
          }

          else
          {
            v91 = 0xE500000000000000;
          }

          v92 = sub_425E68(v90, v91, &aBlock);

          *(v87 + 4) = v92;
          _os_log_impl(&dword_0, v85, v86, "Updating augmented rows with animation=%{public}s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
        }

        else
        {

          v89 = v120;
        }

        v93 = v121;
        if ((v89 & 1) == 0)
        {
          v107 = v146;
          v108 = v146;
          if (!v121)
          {
            v93 = *&v3[qword_DFE2F0];
            v108 = v93;
          }

          v109 = v107;
          sub_516B8(v93);
          v111 = v110;

          *&v3[qword_DE8FC8] = v111;

          v112 = v119;
          sub_15F84(v13, v119, &unk_DE8E20, &qword_AF7990);
          v113 = v118;
          sub_15F84(&v3[v24], v118, &unk_DE8E20, &qword_AF7990);
          swift_beginAccess();
          sub_57890(v112, &v3[v24]);
          swift_endAccess();
          sub_46EB6C(v113);
          sub_12E1C(v113, &unk_DE8E20, &qword_AF7990);
          sub_12E1C(v112, &unk_DE8E20, &qword_AF7990);
          sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
        }

        result = [v3 loadViewIfNeeded];
        v94 = *&v3[v122];
        if (v94)
        {
          v95 = v119;
          sub_15F84(v13, v119, &unk_DE8E20, &qword_AF7990);
          v96 = (*(v116 + 80) + 24) & ~*(v116 + 80);
          v97 = (v117 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
          v98 = swift_allocObject();
          *(v98 + 16) = v3;
          sub_36B0C(v95, v98 + v96, &unk_DE8E20, &qword_AF7990);
          *(v98 + v97) = v121;
          *(v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v155;
          v99 = swift_allocObject();
          *(v99 + 16) = sub_57A90;
          *(v99 + 24) = v98;
          v152 = sub_36C08;
          v153 = v99;
          aBlock = _NSConcreteStackBlock;
          v149 = 1107296256;
          v150 = sub_1822E0;
          v151 = &block_descriptor_225;
          v100 = _Block_copy(&aBlock);
          v101 = v3;
          v102 = v146;
          v103 = v94;

          v104 = swift_allocObject();
          *(v104 + 16) = v101;
          v152 = sub_57B38;
          v153 = v104;
          aBlock = _NSConcreteStackBlock;
          v149 = 1107296256;
          v150 = sub_1811AC;
          v151 = &block_descriptor_231;
          v105 = _Block_copy(&aBlock);
          v106 = v101;

          [v103 performBatchUpdates:v100 completion:v105];
          sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
          _Block_release(v105);
          _Block_release(v100);
        }

LABEL_69:
        __break(1u);
        return result;
      }

LABEL_34:
      v74 = a2;
      if (!a2)
      {
        v74 = *&v3[qword_DFE2F0];
        v75 = v74;
      }

      v146 = a2;
      sub_51420(v74, v13);

      v24 = qword_E719B8;
      swift_beginAccess();
      v16 = *(v128 + 48);
      v32 = v130;
      sub_15F84(v13, v130, &unk_DE8E20, &qword_AF7990);
      sub_15F84(&v3[v24], &v32[v16], &unk_DE8E20, &qword_AF7990);
      v76 = *(v137 + 48);
      v35 = v140;
      v77 = v76(v32, 1, v140);
      v34 = v129;
      if (v77 == 1)
      {
        if (v76(&v32[v16], 1, v35) == 1)
        {
          sub_12E1C(v32, &unk_DE8E20, &qword_AF7990);
          goto LABEL_44;
        }
      }

      else
      {
        sub_15F84(v32, v129, &unk_DE8E20, &qword_AF7990);
        v78 = v76(&v32[v16], 1, v35);
        v73 = &v156;
        if (v78 != 1)
        {
          goto LABEL_43;
        }

        (*(v137 + 8))(v34, v35);
      }

      sub_12E1C(v32, &unk_DF7930, &unk_B03B30);
      goto LABEL_45;
    }
  }

  return result;
}

void sub_541F0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_opt_self() kindWithVariants:1];
  v10[2] = a2;
  v5 = objc_allocWithZone(MPIdentifierSet);
  v6 = sub_AB9260();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_57B7C;
  *(v7 + 24) = v10;
  aBlock[4] = sub_57B84;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_237;
  v8 = _Block_copy(aBlock);

  v9 = [v5 initWithSource:v6 modelKind:v4 block:v8];
  _Block_release(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v3 intersectsSet:v9];
  }
}

void sub_543C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_360310(v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_544D4(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v27 - v9;
  __chkstk_darwin();
  v12 = &v27 - v11;
  v28 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v13 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(&a1[v13], v12, &unk_DE8E20, &qword_AF7990);
  sub_15F84(a2, v10, &unk_DE8E20, &qword_AF7990);
  sub_15F84(&a1[v13], v8, &unk_DE8E20, &qword_AF7990);
  swift_beginAccess();
  sub_57890(v10, &a1[v13]);
  swift_endAccess();
  sub_46EB6C(v8);
  sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
  sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
  v14 = a3;
  if (!a3)
  {
    v14 = *&a1[qword_DFE2F0];
    v15 = v14;
  }

  v16 = a3;
  sub_516B8(v14);
  v18 = v17;

  *&a1[qword_DE8FC8] = v18;

  sub_15F84(&a1[v13], v10, &unk_DE8E20, &qword_AF7990);
  sub_54824(v12, v10, &v29, &v28);
  sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
  swift_beginAccess();

  sub_19650(v19);
  [a1 loadViewIfNeeded];
  v20 = qword_DFE2F8;
  v21 = *&a1[qword_DFE2F8];
  if (v21)
  {
    swift_beginAccess();
    sub_AB3820();
    v22 = v21;
    isa = sub_AB9740().super.isa;

    [v22 insertItemsAtIndexPaths:isa];

    [a1 loadViewIfNeeded];
    v24 = *&a1[v20];
    if (v24)
    {
      v25 = v24;
      v26 = sub_AB9740().super.isa;

      [v25 deleteItemsAtIndexPaths:v26];
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_54824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v35 - v9;
  __chkstk_darwin();
  v36 = &v35 - v11;
  __chkstk_darwin();
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v17 = *(v16 + 56);
  sub_15F84(a1, &v35 - v14, &unk_DE8E20, &qword_AF7990);
  sub_15F84(a2, &v15[v17], &unk_DE8E20, &qword_AF7990);
  v18 = *(v7 + 48);
  v19 = v18(v15, 1, v6);
  result = v18(&v15[v17], 1, v6);
  if (v19 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    v21 = *(v7 + 32);
    v21(v13, &v15[v17], v6);
    v22 = v36;
    (*(v7 + 16))(v36, v13, v6);
    v23 = v38;
    swift_beginAccess();
    v24 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_6AE4C(0, *(v24 + 2) + 1, 1, v24);
      *v23 = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_6AE4C((v26 > 1), v27 + 1, 1, v24);
      *v23 = v24;
    }

    *(v24 + 2) = v27 + 1;
    v21(&v24[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27], v22, v6);
  }

  else if (result == 1)
  {
    v28 = *(v7 + 32);
    v28(v10, v15, v6);
    v29 = v37;
    (*(v7 + 16))(v37, v10, v6);
    v30 = v39;
    swift_beginAccess();
    v31 = *v30;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_6AE4C(0, *(v31 + 2) + 1, 1, v31);
      *v30 = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = sub_6AE4C((v33 > 1), v34 + 1, 1, v31);
      *v30 = v31;
    }

    *(v31 + 2) = v34 + 1;
    v28(&v31[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v34], v29, v6);
    v13 = v10;
  }

  else
  {
    sub_12E1C(&v15[v17], &unk_DE8E20, &qword_AF7990);
    v13 = v15;
  }

  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_54C60(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  sub_AB9730();
  if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  return sub_AB97F0();
}

id sub_54CD4()
{
  v0[qword_E70B50] = 0;
  v0[qword_E70B58] = 0;
  v0[qword_E70B60] = 0;
  v1 = &v0[qword_E70B68];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[qword_E70B70];
  *v2 = 0;
  v2[1] = 0;
  *&v0[qword_E70B78] = 0;
  v0[qword_DE8FA8] = 0;
  *&v0[qword_DE8FB0] = &_swiftEmptySetSingleton;
  *&v0[qword_E70B80] = 0;
  *&v0[qword_E70B88] = 0;
  v3 = &v0[qword_E70B90];
  *v3 = 0;
  v3[1] = 0;
  v4 = qword_DE8FB8;
  v5 = sub_AB3820();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[qword_DE8FC0] = _swiftEmptyArrayStorage;
  *&v0[qword_DE8FC8] = _swiftEmptyArrayStorage;
  *&v0[qword_E70B98] = 0;
  *&v0[qword_E70BA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[qword_DE8FD0] = 0;
  *&v0[qword_E70BA8] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlaylistDetailSongsViewController(0);
  return objc_msgSendSuper2(&v7, "init");
}

id sub_54E74(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_57FA4(v3);

  return v4;
}

void sub_54EAC()
{
  sub_17654(*(v0 + qword_E70B68), *(v0 + qword_E70B68 + 8));
  sub_17654(*(v0 + qword_E70B70), *(v0 + qword_E70B70 + 8));

  sub_17654(*(v0 + qword_E70B90), *(v0 + qword_E70B90 + 8));
  sub_12E1C(v0 + qword_DE8FB8, &unk_DE8E20, &qword_AF7990);

  sub_176DC(v0 + qword_E70BA0);

  v1 = *(v0 + qword_E70BA8);
}

id sub_54FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistDetailSongsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_54FF0(uint64_t a1)
{
  sub_17654(*(a1 + qword_E70B68), *(a1 + qword_E70B68 + 8));
  sub_17654(*(a1 + qword_E70B70), *(a1 + qword_E70B70 + 8));

  sub_17654(*(a1 + qword_E70B90), *(a1 + qword_E70B90 + 8));
  sub_12E1C(a1 + qword_DE8FB8, &unk_DE8E20, &qword_AF7990);

  sub_176DC(a1 + qword_E70BA0);

  v2 = *(a1 + qword_E70BA8);
}

uint64_t type metadata accessor for PlaylistDetailSongsViewController(uint64_t a1)
{
  result = qword_DE9000;
  if (!qword_DE9000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_55154(uint64_t a1)
{
  sub_55244(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_55244(uint64_t a1)
{
  if (!qword_DE9010)
  {
    sub_AB3820();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_DE9010);
    }
  }
}

uint64_t sub_55348()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DE8F90);
  v1 = __swift_project_value_buffer(v0, qword_DE8F90);
  if (qword_DE6AA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_E714D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_55410(_BYTE *a1, uint64_t a2)
{
  v92 = sub_AB40A0();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v85 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  __chkstk_darwin();
  v7 = &v85 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v85 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB8840();
  v14 = sub_AB8A60();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    sub_12E1C(v7, &unk_DE9C50, &unk_AF8930);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
    v16 = 0;
    goto LABEL_7;
  }

  sub_AB8A50();
  (*(v15 + 8))(v7, v14);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v13, v9, v10);
  v17 = objc_allocWithZone(ICStoreArtworkInfo);
  sub_AB30F0(v18);
  v20 = v19;
  v21 = [v17 initWithArtworkURL:v19];

  v22 = [objc_opt_self() tokenWithImageArtworkInfo:v21];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 sharedStoreArtworkDataSource];
  if (!v25)
  {
    goto LABEL_49;
  }

  v26 = v25;
  v27 = objc_allocWithZone(MPArtworkCatalog);
  v28 = v24;
  v16 = [v27 initWithToken:v28 dataSource:v26];

  (*(v11 + 8))(v13, v10);
LABEL_7:
  v29 = sub_AB8830();
  v30 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v31 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v32 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v30 = v29;
  v30[1] = v33;
  sub_142858(v31, v32);

  v34 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v16;
  v88 = v16;

  sub_74EA4(v16);
  v35 = sub_AB8850();
  v36.n128_u64[0] = v35;
  if (v37)
  {
    v36.n128_f64[0] = 0.0;
  }

  sub_142E58(v35, v36);
  v38 = sub_AB87E0();
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  v42 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v43 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v44 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
  if (v39)
  {
    v41 = v39;
  }

  *v42 = v40;
  v42[1] = v41;
  sub_142D1C(v43, v44);

  v45 = sub_AB87F0();
  v46 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v47 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v48 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  *v46 = v45;
  v46[1] = v49;
  sub_142A70(v47, v48);

  v50 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 0;
  if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v51 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v52 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v51[v52] = 0;
    v93 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v94 = v51;
    if (v51[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] == 1)
    {
      v53 = v94;
      v94[v93] = 0;
      v54 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v55 = *&v53[v54];
      if (v55 >> 62)
      {
        v56 = sub_ABB060();
        if (v56)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
        if (v56)
        {
LABEL_18:
          v86 = v50;
          v87 = a2;
          v57 = v56 - 1;
          if (v56 >= 1)
          {
            v85 = v94;

            v59 = 0;
            if ((v55 & 0xC000000000000001) == 0)
            {
              goto LABEL_28;
            }

LABEL_20:
            v60 = *(sub_36003C(v59, v55, v58) + 256);
            if (v60)
            {
LABEL_21:
              v61 = v60;
              if (([v61 isHidden] & 1) == 0)
              {
                v62 = v94[v93];
                v63 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
                swift_beginAccess();
                v64 = v61[v63];
                v61[v63] = v62;
                if (v62 != v64)
                {
                  v65 = 1.0;
                  if (v62)
                  {
                    UIInterfaceGetContentDisabledAlpha();
                  }

                  [v61 setAlpha:v65];
                }
              }

              if (v57 != v59)
              {
                goto LABEL_30;
              }
            }

            else
            {
              while (1)
              {

                if (v57 == v59)
                {
                  break;
                }

LABEL_30:
                ++v59;
                if ((v55 & 0xC000000000000001) != 0)
                {
                  goto LABEL_20;
                }

LABEL_28:
                v66 = *(v55 + 8 * v59 + 32);

                v60 = *(v66 + 256);
                if (v60)
                {
                  goto LABEL_21;
                }
              }
            }

            a2 = v87;
            v50 = v86;
            goto LABEL_33;
          }

          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_33:
  if (a1[v50])
  {
    v67 = 0;
  }

  else
  {
    v67 = 3;
  }

  sub_143E08([a1 setSelectionStyle:v67]);
  v68 = v89;
  sub_AB87B0();
  v69 = v91;
  v70 = v90;
  v71 = v92;
  (*(v91 + 104))(v90, enum case for MusicFavoriteStatus.favorited(_:), v92);
  v72 = sub_AB4090();
  v73 = *(v69 + 8);
  v73(v70, v71);
  v73(v68, v71);
  v74 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v75 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v72 & 1;
  if ((v72 & 1) != v75)
  {
    sub_201644();
    v76 = sub_200954();
    [v76 setHidden:(a1[v74] & 1) == 0];

    v72 = a1[v74];
  }

  if (v75 != (v72 & 1))
  {
    sub_14B200();
  }

  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = 1;
  [a1 setNeedsLayout];
  v77 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v77 & 1) == 0)
  {
    [a1 setNeedsLayout];
  }

  v78 = sub_AB8860();
  v98[3] = v78;
  v98[4] = &off_D17B60;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v98);
  (*(*(v78 - 8) + 16))(boxed_opaque_existential_0, a2, v78);
  sub_15F84(v98, v95, &unk_DE9C60, &unk_AF8940);
  v80 = v96;
  if (v96)
  {
    v81 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    v82 = sub_4CAA30(&off_CEF8C8, v80, v81);
    __swift_destroy_boxed_opaque_existential_0(v95);
  }

  else
  {
    sub_12E1C(v95, &unk_DE9C60, &unk_AF8940);
    v82 = _swiftEmptyArrayStorage;
  }

  v83 = v88;
  sub_178218(v82);

  sub_12E1C(v98, &unk_DE9C60, &unk_AF8940);
  v84 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
  *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0x4000;
  sub_143510(v84);
}

void *sub_55DEC(void *a1, void *a2)
{
  v2 = _swiftEmptyArrayStorage;
  if (!a2)
  {
    return v2;
  }

  v94 = _swiftEmptyArrayStorage;
  v4 = a2;
  v5 = &selRef__authenticateReturningError_;
  v6 = [v4 results];
  if (!v6)
  {
    __break(1u);
    goto LABEL_98;
  }

  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &v94;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_58190;
  *(v9 + 24) = v8;
  v92 = sub_57B9C;
  v93 = v9;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_48D644;
  v91 = &block_descriptor_246;
  v10 = _Block_copy(&aBlock);

  v11 = &selRef_performWithResponseHandler_;
  [v7 enumerateItemIdentifiersUsingBlock:v10];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    goto LABEL_88;
  }

  if (!a1)
  {
    v2 = v94;

    return v2;
  }

  v87 = _swiftEmptyArrayStorage;
  v80 = a1;
  v12 = [v80 results];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = &v87;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_57BA4;
    *(v15 + 24) = v14;
    v92 = sub_581C8;
    v93 = v15;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_48D644;
    v91 = &block_descriptor_256;
    v16 = _Block_copy(&aBlock);

    [v13 enumerateItemIdentifiersUsingBlock:v16];
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      goto LABEL_90;
    }

    v79 = v4;
    v11 = sub_97100(_swiftEmptyArrayStorage);
    aBlock = _swiftEmptyArrayStorage;
    v5 = v87;
    if (v87 >> 62)
    {
LABEL_91:
      v17 = sub_ABB060();
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8));
      if (v17)
      {
LABEL_9:
        v18 = v5 & 0xC000000000000001;
        v85 = v5 & 0xFFFFFFFFFFFFFF8;

        v19 = 0;
        v83 = v5;
        while (1)
        {
          if (v18)
          {
            v20 = sub_360310(v19, v5);
          }

          else
          {
            if (v19 >= *(v85 + 16))
            {
              goto LABEL_80;
            }

            v20 = *(v5 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          if (v11[2])
          {
            v23 = sub_2EC474(v20);
            if (v24)
            {
              v5 = v17;
              v25 = v18;
              v26 = *&v11[7][8 * v23];
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_83;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v29 = sub_2EC474(v21);
              v31 = v11[2];
              v32 = (v30 & 1) == 0;
              v59 = __OFADD__(v31, v32);
              v33 = &v31[v32];
              if (v59)
              {
                goto LABEL_84;
              }

              v34 = v30;
              if (v11[3] >= v33)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_33;
                }

                v47 = v29;
                sub_3312A0();
                v29 = v47;
                if ((v34 & 1) == 0)
                {
                  goto LABEL_38;
                }

LABEL_34:
                *&v11[7][8 * v29] = v27;
              }

              else
              {
                sub_327954(v33, isUniquelyReferenced_nonNull_native);
                v29 = sub_2EC474(v21);
                if ((v34 & 1) != (v35 & 1))
                {
                  goto LABEL_99;
                }

LABEL_33:
                if (v34)
                {
                  goto LABEL_34;
                }

LABEL_38:
                v11[(v29 >> 6) + 8] = (v11[(v29 >> 6) + 8] | (1 << v29));
                *&v11[6][8 * v29] = v21;
                *&v11[7][8 * v29] = v27;
                v48 = v11[2];
                v59 = __OFADD__(v48, 1);
                v49 = v48 + 1;
                if (v59)
                {
                  goto LABEL_85;
                }

                v11[2] = v49;
              }

              v18 = v25;
              v17 = v5;
              v5 = v83;
              goto LABEL_11;
            }
          }

          v36 = swift_isUniquelyReferenced_nonNull_native();
          v37 = sub_2EC474(v21);
          v39 = v11[2];
          v40 = (v38 & 1) == 0;
          v59 = __OFADD__(v39, v40);
          v41 = &v39[v40];
          if (v59)
          {
            goto LABEL_79;
          }

          v42 = v38;
          if (v11[3] < v41)
          {
            break;
          }

          if (v36)
          {
            goto LABEL_29;
          }

          v46 = v37;
          sub_3312A0();
          v37 = v46;
          if (v42)
          {
LABEL_10:
            *&v11[7][8 * v37] = 1;

            goto LABEL_11;
          }

LABEL_30:
          v11[(v37 >> 6) + 8] = (v11[(v37 >> 6) + 8] | (1 << v37));
          *&v11[6][8 * v37] = v21;
          *&v11[7][8 * v37] = 1;
          v44 = v11[2];
          v59 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v59)
          {
            goto LABEL_82;
          }

          v11[2] = v45;
LABEL_11:
          ++v19;
          if (v22 == v17)
          {

            goto LABEL_43;
          }
        }

        sub_327954(v41, v36);
        v37 = sub_2EC474(v21);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_99;
        }

LABEL_29:
        if (v42)
        {
          goto LABEL_10;
        }

        goto LABEL_30;
      }
    }

LABEL_43:
    v50 = v94;
    if (v94 >> 62)
    {
      v51 = sub_ABB060();
      if (v51)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v51 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
      if (v51)
      {
LABEL_45:
        v52 = v50 & 0xC000000000000001;
        v86 = v50 & 0xFFFFFFFFFFFFFF8;

        v53 = 0;
        v2 = _swiftEmptyArrayStorage;
        v81 = v50 & 0xC000000000000001;
        v82 = v51;
        while (1)
        {
          if (v52)
          {
            v54 = sub_360310(v53, v50);
          }

          else
          {
            if (v53 >= *(v86 + 16))
            {
              goto LABEL_81;
            }

            v54 = *(v50 + 8 * v53 + 32);
          }

          v55 = v54;
          v5 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_78;
          }

          if (!v11[2] || (v56 = sub_2EC474(v54), (v57 & 1) == 0))
          {
            v64 = v55;
            sub_AB9730();
            if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();

            v2 = aBlock;
            goto LABEL_48;
          }

          v58 = *&v11[7][8 * v56];
          v59 = __OFSUB__(v58, 1);
          v60 = v58 - 1;
          if (!v60)
          {
            v61 = sub_2EC474(v55);
            if (v62)
            {
              v63 = v61;
              if (!swift_isUniquelyReferenced_nonNull_native())
              {
                sub_3312A0();
              }

              sub_27C804(v63, v11);
            }

            goto LABEL_48;
          }

          if (v59)
          {
            goto LABEL_86;
          }

          v84 = v60;
          v65 = v50;
          v66 = v2;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v69 = sub_2EC474(v55);
          v70 = v11[2];
          v71 = (v68 & 1) == 0;
          v72 = &v70[v71];
          if (__OFADD__(v70, v71))
          {
            goto LABEL_87;
          }

          v73 = v68;
          if (v11[3] >= v72)
          {
            if (v67)
            {
              if ((v68 & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            else
            {
              sub_3312A0();
              if ((v73 & 1) == 0)
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
            sub_327954(v72, v67);
            v74 = sub_2EC474(v55);
            if ((v73 & 1) != (v75 & 1))
            {
              goto LABEL_99;
            }

            v69 = v74;
            if ((v73 & 1) == 0)
            {
LABEL_68:
              v11[(v69 >> 6) + 8] = (v11[(v69 >> 6) + 8] | (1 << v69));
              *&v11[6][8 * v69] = v55;
              *&v11[7][8 * v69] = v84;
              v76 = v11[2];
              v59 = __OFADD__(v76, 1);
              v77 = v76 + 1;
              if (v59)
              {
                goto LABEL_89;
              }

              v11[2] = v77;
              goto LABEL_73;
            }
          }

          *&v11[7][8 * v69] = v84;

LABEL_73:
          v2 = v66;
          v50 = v65;
          v52 = v81;
          v51 = v82;
LABEL_48:
          ++v53;
          if (v5 == v51)
          {

            goto LABEL_95;
          }
        }
      }
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_95:

    return v2;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_566DC(char *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = sub_497570(a1);
  v7 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(v2 + v7, v5, &unk_DE8E20, &qword_AF7990);
  v8 = sub_AB3820();
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
  }

  else
  {
    v9 = sub_AB37F0();
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
    if (v9 == a1 && __OFADD__(v6++, 1))
    {
      goto LABEL_15;
    }
  }

  v11 = *(v2 + qword_DFE2F0);
  if (!v11)
  {
    return;
  }

  v12 = [v11 results];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 numberOfSections];

  v15 = v14 >= 1 && v14 - 1 == a1;
  if (v15 && __OFADD__(v6, *(*(v2 + qword_DE8FC8) + 16)))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

id sub_568B8(void *a1)
{
  v2 = [a1 type];
  if (v2 == &dword_0 + 3)
  {
    result = [a1 movie];
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v2 == &dword_0 + 2)
  {
    result = [a1 tvEpisode];
    if (!result)
    {
      return result;
    }

LABEL_9:
    v4 = result;
    v5 = [result artworkCatalog];

    return v5;
  }

  if (v2 != &dword_0 + 1)
  {
    return 0;
  }

  result = [a1 song];
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_569C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_56A08(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  if (*(v1 + qword_E70B50) == 1)
  {
    v13 = v1;
    v14 = &v13 - v7;
    v8 = *(v1 + qword_DE8FC8);
    v9 = *(v8 + 16);

    v10 = 0;
    while (1)
    {
      if (v9 == v10)
      {

        v12 = v14;
        sub_469178(a1, v14);
        (*(v4 + 48))(v12, 1, v3);
        goto LABEL_9;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v3);
      sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v11 = sub_AB91C0();
      (*(v4 + 8))(v6, v3);
      if (v11)
      {

        v12 = v14;
        (*(v4 + 56))(v14, 1, 1, v3);
LABEL_9:
        sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
        return;
      }
    }

    __break(1u);
  }
}

void sub_56CA0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v54 = a1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v43 - v6;
  __chkstk_darwin();
  v8 = &v43 - v7;
  __chkstk_darwin();
  v10 = &v43 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v43 - v12;
  __chkstk_darwin();
  v46 = &v43 - v13;
  __chkstk_darwin();
  v49 = &v43 - v14;
  __chkstk_darwin();
  v51 = v2;
  v52 = &v43 - v15;
  v48 = qword_DE8FC8;
  v16 = *(v2 + qword_DE8FC8);
  v17 = *(v16 + 16);
  v18 = (v4 + 16);
  v55 = (v4 + 8);

  v19 = 0;
  while (v17 != v19)
  {
    if (v19 >= *(v16 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    (*(v4 + 16))(v10, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v20 = sub_AB91C0();
    (*(v4 + 8))(v10, v3);
    if (v20)
    {

      (*(v4 + 56))(v52, 1, 1, v3);
      v21 = v51;
      goto LABEL_7;
    }
  }

  v21 = v51;
  sub_469178(v54, v52);
LABEL_7:
  v22 = *(v21 + v48);
  v23 = *(v22 + 16);

  v24 = 0;
  while (v23 != v24)
  {
    if (v24 >= *(v22 + 16))
    {
      goto LABEL_21;
    }

    (*(v4 + 16))(v8, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v25 = sub_AB91C0();
    (*(v4 + 8))(v8, v3);
    if (v25)
    {

      v26 = v49;
      (*(v4 + 56))(v49, 1, 1, v3);
      goto LABEL_13;
    }
  }

  v26 = v49;
  sub_469178(v53, v49);
LABEL_13:
  v27 = v52;
  v28 = v46;
  sub_15F84(v52, v46, &unk_DE8E20, &qword_AF7990);
  v29 = *(v4 + 48);
  if (v29(v28, 1, v3) == 1)
  {
    sub_12E1C(v26, &unk_DE8E20, &qword_AF7990);
    sub_12E1C(v27, &unk_DE8E20, &qword_AF7990);
    sub_12E1C(v28, &unk_DE8E20, &qword_AF7990);
  }

  else
  {
    v30 = *(v4 + 32);
    v30(v50, v28, v3);
    v31 = v45;
    sub_15F84(v26, v45, &unk_DE8E20, &qword_AF7990);
    if (v29(v31, 1, v3) == 1)
    {
      (*v55)(v50, v3);
      sub_12E1C(v49, &unk_DE8E20, &qword_AF7990);
      sub_12E1C(v27, &unk_DE8E20, &qword_AF7990);
      sub_12E1C(v31, &unk_DE8E20, &qword_AF7990);
      v21 = v51;
    }

    else
    {
      v32 = v44;
      v30(v44, v31, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D48, &unk_AF89C0);
      v33 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord(0) - 8);
      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_AF4EC0;
      v36 = v35 + v34;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38, &qword_AF89A0) + 48);
      v38 = *v18;
      v39 = v50;
      (*v18)(v36, v50, v3);
      v38(v36 + v37, v32, v3);
      v21 = v51;
      swift_storeEnumTagMultiPayload();
      sub_528F8(v35);
      v40 = *v55;
      (*v55)(v32, v3);
      v40(v39, v3);
      sub_12E1C(v49, &unk_DE8E20, &qword_AF7990);
      sub_12E1C(v52, &unk_DE8E20, &qword_AF7990);
    }
  }

  v41 = v47;
  (*(v4 + 56))(v47, 1, 1, v3);
  v42 = qword_DE8FB8;
  swift_beginAccess();
  sub_57CF8(v41, v21 + v42);
  swift_endAccess();
}

void sub_57440(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v14 = &v14 - v7;
  v15 = v1;
  v8 = *&v1[qword_DE8FC8];
  v9 = *(v8 + 16);

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      v12 = v14;
      v13 = v15;
      sub_469178(a1, v14);
      (*(v4 + 48))(v12, 1, v3);
      goto LABEL_7;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v11 = sub_AB91C0();
    (*(v4 + 8))(v6, v3);
    if (v11)
    {

      v12 = v14;
      (*(v4 + 56))(v14, 1, 1, v3);
      v13 = v15;
LABEL_7:
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      [v13 isEditing];
      return;
    }
  }

  __break(1u);
}

uint64_t sub_577A4()
{

  return swift_deallocObject();
}

uint64_t sub_577F4()
{

  return swift_deallocObject();
}

uint64_t sub_5783C()
{

  return swift_deallocObject();
}

uint64_t sub_57890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_57900()
{

  return swift_deallocObject();
}

uint64_t sub_57954()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

void sub_57A90()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_544D4(v4, v0 + v2, v5, v6);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

void sub_57C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_DE8FA8);
  *(v1 + qword_DE8FA8) = 0;
  sub_47550(v2);
}

uint64_t objectdestroy_180Tm()
{

  return swift_deallocObject();
}

uint64_t sub_57CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_57D68()
{

  return swift_deallocObject();
}

uint64_t sub_57DA8()
{

  return swift_deallocObject();
}

uint64_t sub_57DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_57E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_57E9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_57EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_48CBC(a1, v4, v5, v7, v6);
}

id sub_57FA4(uint64_t a1)
{
  v1[qword_E70B50] = 0;
  v1[qword_E70B58] = 0;
  v1[qword_E70B60] = 0;
  v3 = &v1[qword_E70B68];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[qword_E70B70];
  *v4 = 0;
  v4[1] = 0;
  *&v1[qword_E70B78] = 0;
  v1[qword_DE8FA8] = 0;
  *&v1[qword_DE8FB0] = &_swiftEmptySetSingleton;
  *&v1[qword_E70B80] = 0;
  *&v1[qword_E70B88] = 0;
  v5 = &v1[qword_E70B90];
  *v5 = 0;
  v5[1] = 0;
  v6 = qword_DE8FB8;
  v7 = sub_AB3820();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[qword_DE8FC0] = _swiftEmptyArrayStorage;
  *&v1[qword_DE8FC8] = _swiftEmptyArrayStorage;
  *&v1[qword_E70B98] = 0;
  *&v1[qword_E70BA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_DE8FD0] = 0;
  *&v1[qword_E70BA8] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlaylistDetailSongsViewController(0);
  return objc_msgSendSuper2(&v9, "initWithCoder:", a1);
}

void sub_58204()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for JSMenuViewController(0);
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v2 = *&v0[qword_DE9D68];
  v3 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *&v1[qword_DE9D70];
  *&v1[qword_DE9D70] = v4;
  v6 = v4;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 viewBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v1 loadViewIfNeeded];
    v10 = *&v1[qword_DFE2F8];
    if (v10)
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = v10;
      v12 = sub_AB3080();

      v13 = *&v1[qword_DE9D80];
      *&v1[qword_DE9D80] = v12;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_583BC(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v3 bounds];
    v6 = fmin(CGRectGetWidth(v11), 320.0);
    [v3 contentSize];
    [v5 setPreferredContentSize:{v6, fmin(v7, 480.0)}];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 view];

    if (v10)
    {
      [v10 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_584CC(void *a1)
{
  v1 = a1;
  sub_58204();
}

void sub_58514(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for JSMenuViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillAppear:", a3);
  v4[qword_DE9D60] = 0;
}

id sub_58584(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_AB9260();

  return v1;
}

Class sub_58614()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_5868C(void *a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for JSMenuViewController(0);
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    [v1 loadViewIfNeeded];
    v13 = *&v1[qword_DFE2F8];
    if (!v13)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v14 = [v13 collectionViewLayout];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = [v1 view];
      if (v17)
      {
        v18 = v17;
        v19 = [v1 traitCollection];
        [v18 music_inheritedLayoutInsets];
        [v18 bounds];
        sub_4F07D4(v19);
        [v16 setRowHeight:v20];
        [v16 invalidateLayout];

        return;
      }

      goto LABEL_14;
    }
  }
}

void sub_588F8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_5868C(a3);
}

void *sub_58964()
{
  v1 = qword_DE9D50;
  if (*&v0[qword_DE9D50])
  {
    v2 = *&v0[qword_DE9D50];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA438, &qword_AF8A68);
    swift_allocObject();
    v2 = sub_2BEEC0(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_58A30@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSMenuModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_7;
  }

  type metadata accessor for JSMenuItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v49);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = (*&stru_68.segname[(swift_isaMask & *v7) + 8])();
  v11 = v10;
  swift_unknownObjectRetain();
  v17 = 0uLL;
  *&v18 = v9;
  *(&v18 + 1) = v11;
  *&v19 = v8;
  *(&v19 + 1) = IndexPath.safeItem.getter();
  LOWORD(v20) = 512;
  BYTE2(v20) = 20;
  *(&v20 + 1) = 0;
  *&v21 = 0;
  *(&v21 + 1) = v8;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25[0] = 1;
  *&v25[8] = 0;
  *&v25[16] = 0;
  v25[24] = 2;
  v26[0] = 0;
  v26[1] = 0;
  v26[2] = v9;
  v26[3] = v11;
  v27 = __PAIR128__(*(&v19 + 1), v8);
  v28 = 512;
  v29 = 20;
  v30 = 0;
  v31 = 0;
  v32 = v8;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v36 = 1;
  v37 = 0;
  v38 = 0;
  v39 = 2;
  sub_465F4(&v17, &v49);
  sub_46650(v26);
  v46 = v23;
  v47 = v24;
  v48[0] = *v25;
  *(v48 + 9) = *&v25[9];
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v40 = v17;
  v41 = v18;
  UIScreen.Dimensions.size.getter();
  v55 = v46;
  v56 = v47;
  v57[0] = v48[0];
  *(v57 + 9) = *(v48 + 9);
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v49 = v40;
  v50 = v41;
LABEL_8:
  v12 = v56;
  a1[6] = v55;
  a1[7] = v12;
  a1[8] = v57[0];
  *(a1 + 137) = *(v57 + 9);
  v13 = v52;
  a1[2] = v51;
  a1[3] = v13;
  v14 = v54;
  a1[4] = v53;
  a1[5] = v14;
  result = *&v49;
  v16 = v50;
  *a1 = v49;
  a1[1] = v16;
  return result;
}

void sub_58C9C(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];
}

double sub_58D0C(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_5B600(v8, a5);
  v12 = v11;

  return v12;
}

double sub_58D84(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_5BA60(v13);
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_58EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

uint64_t sub_58F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

void sub_5904C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a2;
    v7 = [v5 tableViewCell];
    if (v7)
    {
      v8 = v7;
      [v7 _setDrawsSeparatorAtBottomOfSection:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_590FC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_3B38B0(v13, v14, v12);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v18 = v17;
  v14 = v14;
  v19 = [v18 tableViewCell];
  if (v19)
  {
    v20 = v19;
    [v19 _setDrawsSeparatorAtBottomOfSection:0];
    (*(v10 + 8))(v12, v9);

    v16 = v20;
LABEL_5:

    return;
  }

  __break(1u);
}

void sub_592A4()
{
  v1 = *&v0[qword_DE9D68];
  v2 = type metadata accessor for JSMenuModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel] = v1;
  v28.receiver = v3;
  v28.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v28, "init");
  sub_13C80(0, &unk_DEA538, off_CE5598);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF4EC0;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  isa = sub_AB9740().super.isa;
  v13 = objc_opt_self();
  v14 = [v13 propertySetWithProperties:isa];

  [v8 setSectionProperties:v14];
  sub_13C80(0, &qword_DEA548, off_CE5590);
  v15 = [v7 kindWithModelClass:swift_getObjCClassFromMetadata()];
  [v8 setItemKind:v15];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v19;
  *(inited + 48) = [v13 emptyPropertySet];
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v20 = objc_allocWithZone(MPPropertySet);
  v21 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v22 = sub_AB8FD0().super.isa;

  v23 = [v20 initWithProperties:v21 relationships:v22];

  [v8 setItemProperties:v23];
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  aBlock[4] = sub_5B484;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_6;
  v25 = _Block_copy(aBlock);
  v26 = v0;

  [v8 performWithResponseHandler:v25];
  _Block_release(v25);
}

double sub_596B4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);

  return result;
}

void sub_59784(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v39[-v9];
  v11 = [a2 title];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB92A0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = &a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
  *v16 = v13;
  *(v16 + 1) = v15;
  sub_4EE4B4(v17, v18);

  v19 = [a2 submenu];
  if (!v19)
  {
    v22 = *&v4[qword_DE9D68];
    v23 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
    swift_beginAccess();
    if (*(v22 + v23))
    {
      v24 = *&v4[qword_DFE2F0];
      if (v24)
      {
        type metadata accessor for JSMenuModelResponse();
        v25 = swift_dynamicCastClass();
        if (v25)
        {
          v26 = *&v4[qword_DE9D70];
          if (v26)
          {
            v27 = *(v25 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
            v28 = v24;
            v29 = v26;
            isa = sub_AB3770().super.isa;
            v31 = [v27 itemAtIndexPath:isa];

            type metadata accessor for JSMenuItem();
            if (swift_dynamicCastClass() == v29)
            {
              [a1 setAccessoryType:3];

              swift_unknownObjectRelease();
              v36 = sub_AB3820();
              v37 = *(v36 - 8);
              (*(v37 + 16))(v10, a3, v36);
              (*(v37 + 56))(v10, 0, 1, v36);
              v38 = qword_DE9D78;
              swift_beginAccess();
              sub_160B4(v10, &v4[v38], &unk_DE8E20, &qword_AF7990);
              swift_endAccess();

              goto LABEL_17;
            }

            swift_unknownObjectRelease();
          }
        }
      }
    }

    else if (([v4 _isInPopoverPresentation] & 1) == 0)
    {
      goto LABEL_6;
    }

    v20 = a1;
    v21 = 0;
    goto LABEL_16;
  }

LABEL_6:
  v20 = a1;
  v21 = 1;
LABEL_16:
  [v20 setAccessoryType:v21];
LABEL_17:
  if ([a1 accessoryType] == &dword_0 + 1 && (objc_msgSend(v4, "_isInPopoverPresentation") & 1) == 0)
  {
    v34 = [a1 accessoryView];
    if (v34)
    {
      v33 = v34;
      if (qword_DE6C68 != -1)
      {
        swift_once();
      }

      [v33 setTintColor:qword_E718A8];
      goto LABEL_25;
    }
  }

  else
  {
    v32 = [a1 accessoryView];
    if (v32)
    {
      v33 = v32;
      [v32 setTintColor:0];
LABEL_25:
    }
  }

  [a1 music_setLayoutInsets:{-1.0, -1.0, -1.0, 0.0}];
  v35 = [v4 viewBackgroundColor];
  [a1 setBackgroundColor:v35];
}

void sub_59BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v135 = a3;
  v139 = a2;
  v6 = sub_AB3430();
  v136 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v132 = &v118 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v137 = &v118 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v131 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v118 - v14;
  __chkstk_darwin();
  v16 = &v118 - v15;
  v17 = sub_AB3820();
  v138 = *(v17 - 8);
  __chkstk_darwin();
  v130 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v118 - v19;
  v21 = *&v3[qword_DFE2F0];
  if (!v21)
  {
    return;
  }

  type metadata accessor for JSMenuModelResponse();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    return;
  }

  v125 = v10;
  v126 = a1;
  v23 = *(v22 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
  v24 = v21;
  isa = sub_AB3770().super.isa;
  v26 = [v23 itemAtIndexPath:isa];

  type metadata accessor for JSMenuItem();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v124 = v8;
    v28 = v6;
    v127 = v24;
    v128 = v26;
    v129 = v4;
    v29 = v27;
    v30 = (*(&stru_68.offset + (swift_isaMask & *v27)))();
    if (v30)
    {
      v31 = v30;
      v129[qword_DE9D60] = 1;
      v32 = type metadata accessor for JSMenuViewController(0);
      v33 = objc_allocWithZone(v32);
      *&v33[qword_DE9D50] = 0;
      *&v33[qword_DE9D58] = 0;
      v33[qword_DE9D60] = 0;
      *&v33[qword_DE9D70] = 0;
      (*(v138 + 56))(&v33[qword_DE9D78], 1, 1, v17);
      *&v33[qword_DE9D80] = 0;
      *&v33[qword_DE9D68] = v31;
      v140.receiver = v33;
      v140.super_class = v32;
      v34 = v31;
      v35 = objc_msgSendSuper2(&v140, "init");
      v36 = *(&stru_68.reserved2 + (swift_isaMask & *v29));
      v37 = v35;
      v36();
      if (v38)
      {
        v39 = sub_AB9260();
      }

      else
      {
        v39 = 0;
      }

      [v37 setTitle:v39];

      [v129 showViewController:v37 sender:v129];
      swift_unknownObjectRelease();

      return;
    }

    v123 = v29;
    v40 = v129;
    v41 = *&v129[qword_DE9D68];
    v42 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
    swift_beginAccess();
    v121 = v42;
    v122 = v41;
    v43 = *(v41 + v42);
    v44 = &selRef__authenticateReturningError_;
    v119 = v28;
    v45 = v136;
    v46 = v135;
    if (v43 == 1)
    {
      v47 = *&v40[qword_DE9D70];
      *&v40[qword_DE9D70] = v123;
      swift_unknownObjectRetain();

      [v40 loadViewIfNeeded];
      v48 = qword_DFE2F8;
      v49 = *&v40[qword_DFE2F8];
      if (!v49)
      {
        goto LABEL_51;
      }

      v50 = v49;
      v51 = sub_AB3770().super.isa;
      v52 = [v50 cellForItemAtIndexPath:v51];

      v53 = v138;
      if (v52)
      {
        type metadata accessor for MenuCell(0);
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          [v54 setAccessoryType:3];
        }
      }

      v55 = qword_DE9D78;
      swift_beginAccess();
      sub_15F84(&v40[v55], v16, &unk_DE8E20, &qword_AF7990);
      v56 = (*(v53 + 48))(v16, 1, v17);
      v45 = v136;
      if (v56 == 1)
      {
        sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
        v44 = &selRef__authenticateReturningError_;
      }

      else
      {
        (*(v53 + 32))(v20, v16, v17);
        sub_5C058(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v57 = sub_AB91C0();
        v58 = v53;
        v44 = &selRef__authenticateReturningError_;
        if (v57)
        {
          (*(v58 + 8))(v20, v17);
        }

        else
        {
          [v40 loadViewIfNeeded];
          v59 = *&v40[v48];
          if (!v59)
          {
LABEL_53:
            __break(1u);
            return;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
          v60 = v138;
          v61 = (*(v138 + 80) + 32) & ~*(v138 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_AF4EC0;
          (*(v60 + 16))(v62 + v61, v20, v17);
          v63 = v59;
          v64 = sub_AB9740().super.isa;

          [v63 reloadItemsAtIndexPaths:v64];
          (*(v60 + 8))(v20, v17);

          v46 = v135;
        }
      }
    }

    [v40 v44[171]];
    v139 = qword_DFE2F8;
    v65 = *&v40[qword_DFE2F8];
    if (v65)
    {
      v66 = v65;
      v67 = sub_AB3770().super.isa;
      v68 = [v66 cellForItemAtIndexPath:v67];

      if (v68)
      {
        sub_D5958(v146);
        v135 = v146[0];
        v120 = v146[1];
        v69 = v147;
        v70 = v148;
        v71 = v149;

        v72 = v120;
        v73 = v135;
      }

      else
      {
        v69 = 0;
        v71 = 0;
        v73 = 0uLL;
        v70 = 255;
        v72 = 0uLL;
      }

      v150[0] = v73;
      v150[1] = v72;
      v151 = v69;
      v152 = v70;
      v153 = v71;
      v74 = v129;
      v75 = v129;
      PresentationSource.init(viewController:position:)(v75, v150, v145);
      *&v135 = JSSegueCoordinator.shared.unsafeMutableAddressor();
      v76 = v44[171];
      *&v120 = v75;
      [v75 v76];
      if (*&v74[v139])
      {
        v77 = _s30CollectionViewSelectionHandlerVMa(0);
        v144[3] = v77;
        v144[4] = &off_CF7E60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v144);
        v79 = *(v138 + 16);
        v79(boxed_opaque_existential_0 + *(v77 + 20), v46, v17);
        swift_unknownObjectWeakInit();
        v80 = type metadata accessor for PlaybackIntentDescriptor(0);
        (*(*(v80 - 8) + 56))(v137, 1, 1, v80);
        sub_15F84(v144, &v141, &unk_DE8E30, "\b]\r");
        v81 = v133;
        if (*(&v142 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
          v82 = v132;
          v83 = swift_dynamicCast();
          v84 = *(v77 - 8);
          (*(v84 + 56))(v82, v83 ^ 1u, 1, v77);
          if ((*(v84 + 48))(v82, 1, v77) != 1)
          {
            v79(v81, v82 + *(v77 + 20), v17);
            sub_2D6C0(v82, _s30CollectionViewSelectionHandlerVMa);
            v85 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          sub_12E1C(&v141, &unk_DE8E30, "\b]\r");
          v82 = v132;
          (*(*(v77 - 8) + 56))(v132, 1, 1, v77);
        }

        sub_12E1C(v82, &qword_E037A0, &unk_AF8B30);
        v85 = 1;
LABEL_34:
        v86 = v138;
        (*(v138 + 56))(v81, v85, 1, v17);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v88 = Strong, sub_12B2FC(), v90 = v89, v92 = v91, v88, v90))
        {
          ObjectType = swift_getObjectType();
          (*(v92 + 8))(ObjectType, v92);
          v95 = v94;
          swift_unknownObjectRelease();
          v96 = v131;
          sub_15F84(v81, v131, &unk_DE8E20, &qword_AF7990);
          if ((*(v86 + 48))(v96, 1, v17) == 1)
          {
            sub_12E1C(v96, &unk_DE8E20, &qword_AF7990);
            v141 = 0u;
            v142 = 0u;
            v143 = 0;
          }

          else
          {
            (*(v86 + 32))(v130, v96, v17);
            sub_5C058(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            sub_ABAD10();
          }

          v98 = swift_getObjectType();
          v99 = v124;
          sub_3B8F68(v98);
          v97 = sub_21CCAC(1, v99, &v141, v98, v95);
          (*(v45 + 8))(v99, v119);
          sub_12E1C(&v141, &qword_DF2BD0, &unk_AFDC00);
          sub_12E1C(v81, &unk_DE8E20, &qword_AF7990);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_12E1C(v81, &unk_DE8E20, &qword_AF7990);
          v97 = 0;
        }

        v100 = swift_unknownObjectWeakLoadStrong();
        if (v100)
        {
          v101 = v100;
          sub_12AFE8();
          v103 = v102;
        }

        else
        {
          v103 = 0;
        }

        sub_15F28(v145, &v141);
        v104 = v125;
        sub_15F84(v144, (v125 + 104), &unk_DE8E30, "\b]\r");
        v105 = v134;
        v106 = v137;
        sub_15F84(v137, v104 + *(v134 + 28), &unk_DEA510, "\b]\r");
        *v104 = 0u;
        *(v104 + 16) = 0u;
        *(v104 + 32) = 0u;
        *(v104 + 48) = 0u;
        *(v104 + 64) = 1;
        *(v104 + 72) = 0;
        *(v104 + 80) = 0;
        *(v104 + 88) = 0;
        sub_160B4(&v141, v104, &unk_DEA520, &unk_AFDBF0);
        v107 = v126;
        *(v104 + 96) = v126;
        v108 = *v135;
        *(&v142 + 1) = v105;
        v109 = __swift_allocate_boxed_opaque_existential_0(&v141);
        sub_2D604(v104, v109);
        v110 = v107;
        v111 = v108;
        JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v123, 0, v97, v103, &v141);
        sub_12E1C(v106, &unk_DEA510, "\b]\r");
        sub_2D6C0(v104, _s23MusicPerformanceContextVMa);

        sub_12E1C(&v141, &unk_DE8E40, &unk_AF8050);

        sub_12E1C(v144, &unk_DE8E30, "\b]\r");
        if ((*(v122 + v121) & 1) == 0)
        {
          sub_1611C(v145);

          swift_unknownObjectRelease();
          return;
        }

        v112 = v120;
        [v120 loadViewIfNeeded];
        v113 = *&v129[v139];
        v114 = v127;
        if (v113)
        {
          [v113 setUserInteractionEnabled:0];
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
          v115 = sub_ABA150();
          v116 = swift_allocObject();
          *(v116 + 16) = v112;
          v117 = v112;
          OS_dispatch_queue.asyncAfter(_:block:)(sub_5B47C, v116, 0.28);
          swift_unknownObjectRelease();
          sub_1611C(v145);

          return;
        }

        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  swift_unknownObjectRelease();
}

id sub_5AB90(char *a1)
{
  [a1 loadViewIfNeeded];
  result = *&a1[qword_DFE2F8];
  if (result)
  {
    [result setUserInteractionEnabled:1];

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5AC04()
{
  v1 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  isa = sub_AB9740().super.isa;
  [v1 _setFloatingElementKinds:isa];

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [v0 traitCollection];
    [v4 music_inheritedLayoutInsets];
    [v4 bounds];
    sub_4F07D4(v5);
    [v1 setRowHeight:v6];
    [v1 invalidateLayout];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5AD3C()
{

  sub_12E1C(v0 + qword_DE9D78, &unk_DE8E20, &qword_AF7990);
  v1 = *(v0 + qword_DE9D80);
}

id sub_5ADCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMenuViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_5AE04(uint64_t a1)
{

  sub_12E1C(a1 + qword_DE9D78, &unk_DE8E20, &qword_AF7990);
  v2 = *(a1 + qword_DE9D80);
}

uint64_t type metadata accessor for JSMenuViewController(uint64_t a1)
{
  result = qword_DE9E10;
  if (!qword_DE9E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5AEEC(uint64_t a1)
{
  sub_55244(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_5B02C(void *a1)
{
  v3 = *v1;
  v4 = [*v1 view];
  if (v4)
  {
    v5 = v4;
    v7 = [v3 traitCollection];
    [v5 music_inheritedLayoutInsets];
    [v5 bounds];
    sub_4F07D4(v7);
    [a1 setRowHeight:v6];
    [a1 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

double sub_5B118@<D0>(_OWORD *a1@<X8>)
{
  sub_58A30(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_5B1C4()
{
  result = qword_DEA430;
  if (!qword_DEA430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEA438, &qword_AF8A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEA430);
  }

  return result;
}

uint64_t sub_5B228(uint64_t a1)
{
  *(a1 + 8) = sub_5C058(&qword_DEA468, type metadata accessor for JSMenuViewController, &unk_AF8A48);
  result = sub_5C058(&qword_DEA470, type metadata accessor for JSMenuViewController, &unk_AF8A70);
  *(a1 + 16) = result;
  return result;
}

void sub_5B2AC(char *a1, id a2)
{
  v3 = [a2 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v8 = v5;
  *(v8 + 1) = v7;

  v9 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  sub_2EB704();
  [a1 setNeedsLayout];
  TitleSectionHeaderView.titleMaximumNumberOfLines.setter(2);
  v11 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v11 = xmmword_AF89D0;
  v11[16] = 1;
  sub_1846A0();
  v12 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v12 = xmmword_AF8610;
  v12[16] = 1;
  sub_1848CC();
}

uint64_t sub_5B444()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5B4A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5B4DC()
{

  return swift_deallocObject();
}

void sub_5B51C()
{
  *(v0 + qword_DE9D50) = 0;
  *(v0 + qword_DE9D58) = 0;
  *(v0 + qword_DE9D60) = 0;
  *(v0 + qword_DE9D70) = 0;
  v1 = qword_DE9D78;
  v2 = sub_AB3820();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_DE9D80) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_5B600(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = JSMenu.sections.getter();
  if ((v10 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) > a2)
    {
      v12 = *(v10 + 8 * a2 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v12 = sub_35FCC4(a2, v10, v11);
LABEL_5:
  v13 = v12;
  v14 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_title];
  swift_beginAccess();
  v16 = *v14;
  v15 = *(v14 + 1);

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *&v2[qword_DFE2F0];
    if (v18)
    {
      v19 = [v18 results];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 sectionAtIndex:a2];

        if (!v21)
        {
          return;
        }

        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          return;
        }

        v23 = v22;
        v24 = *&v3[qword_DE9D58];
        v25 = &selRef__authenticateReturningError_;
        if (v24)
        {
          v26 = *&v3[qword_DE9D58];
        }

        else
        {
          v43 = qword_DE9D58;
          v44 = v22;
          v45 = a1;
          v27 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v28 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
          swift_beginAccess();
          v27[v28] = 1;
          v26 = v27;
          [v26 setHidden:1];
          [v26 setUserInteractionEnabled:0];
          v29 = *&v3[direct field offset for BrowseCollectionViewController.textDrawingCache];
          v30 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
          swift_beginAccess();
          *&v26[v30] = v29;
          v25 = &selRef__authenticateReturningError_;

          v31 = [v3 view];
          if (!v31)
          {
LABEL_26:
            __break(1u);
            return;
          }

          v32 = v31;
          [v31 addSubview:v26];

          v33 = *&v3[v43];
          *&v3[v43] = v26;

          v24 = 0;
          v23 = v44;
          a1 = v45;
        }

        v34 = v24;
        sub_AB3810();
        sub_5B2AC(v26, v23);
        (*(v7 + 8))(v9, v6);
        v35 = [v3 v25[342]];
        if (v35)
        {
          v36 = v35;
          [v35 music_inheritedLayoutInsets];
          v38 = v37;
          v40 = v39;

          [a1 bounds];
          v41 = CGRectGetWidth(v46) - v38 - v40;
          v42 = v26;
          [a1 bounds];
          [v42 setFrame:{0.0, 0.0, v41, CGRectGetHeight(v47)}];

          sub_18A3F8(*&v42[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle], *&v42[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 8], v42[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 16], 8.0);
          [v42 layoutIfNeeded];
          swift_unknownObjectRelease();

          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }
}

void sub_5BA60(void *a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 music_inheritedLayoutInsets];

    [a1 bounds];
    v6 = *&v1[qword_DFE2F0];
    if (v6)
    {
      type metadata accessor for JSMenuModelResponse();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
        v9 = v6;
        isa = sub_AB3770().super.isa;
        v11 = [v8 itemAtIndexPath:isa];

        type metadata accessor for JSMenuItem();
        v12 = swift_dynamicCastClass();
        if (v12 && ((*&stru_68.segname[(swift_isaMask & *v12) + 8])(), v13))
        {
          v14 = [v2 traitCollection];
          [a1 bounds];
          Width = CGRectGetWidth(v31);
          v16 = [v14 preferredContentSizeCategory];
          v17 = sub_ABA320();

          if (v17)
          {
            v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
            v19 = sub_AB9260();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_AF4EC0;
            *(inited + 32) = NSFontAttributeName;
            *(inited + 64) = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
            *(inited + 40) = v18;
            v21 = NSFontAttributeName;
            v22 = v18;
            sub_96EB8(inited);
            swift_setDeallocating();
            sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
            type metadata accessor for Key(0);
            sub_5C058(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
            v23 = sub_AB8FD0().super.isa;

            [v19 boundingRectWithSize:1 options:v23 attributes:0 context:{Width, 1.79769313e308}];

            v24 = [objc_opt_self() defaultMetrics];
            sub_AB9EF0();

            swift_unknownObjectRelease();
          }

          else
          {
            sub_4F05D0(v28);
            v25 = v28[0];
            v29 = v28[3];
            v30 = v28[2];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
            v26 = swift_initStackObject();
            *(v26 + 16) = xmmword_AF82B0;
            *(v26 + 32) = v25;
            type metadata accessor for CGSize(0);
            if ((sub_AB38D0() & 1) == 0)
            {
              type metadata accessor for UIEdgeInsets(0);
              sub_AB38D0();
            }

            sub_2F48A4(v26, v14, 0, 0);

            v27 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
            [v27 scaledValueForValue:52.0];

            [v14 displayScale];
            sub_AB3A00();

            sub_12E1C(&v30, &unk_DEA560, &unk_AF8B40);
            sub_5C004(&v29);

            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5C058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_5C0AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void sub_5C174()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for JSMusicVideoDetailViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_E71898];
    type metadata accessor for MusicVideoDetailHeaderLockupView();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
    *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView] = v3;
    v5 = v3;

    [v2 addSubview:v5];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = &v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler];
    v8 = *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler];
    v9 = *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler + 8];
    *v7 = sub_5F25C;
    v7[1] = v6;

    sub_17654(v8, v9);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = &v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler];
    v12 = *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler];
    v13 = *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler + 8];
    *v11 = sub_5F264;
    v11[1] = v10;

    sub_17654(v12, v13);

    *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusControllableDelegate + 8] = &off_D127D8;
    swift_unknownObjectWeakAssign();
    v14 = *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem];
    if (v14)
    {
      v15 = v14;
      sub_5EA54();
      v16 = [v15 song];
      sub_27914C(v16);

      v2 = v16;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_5C3C8(uint64_t a1)
{
  v1 = sub_AB3430();
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin();
  v61 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB3820();
  v64 = *(v3 - 8);
  __chkstk_darwin();
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v9 = &v53 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v53 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v15 = &v53 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
    if (!v18)
    {
LABEL_21:

      return;
    }

    v58 = v5;
    v59 = v15;
    v57 = v18;
    v19 = v18;
    v20 = JSMusicVideoViewModel.item.getter();
    if (!v20)
    {

      return;
    }

    v21 = v20;
    v54 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    memset(v71, 0, sizeof(v71));
    v72 = 0;
    v73 = xmmword_AF7710;
    v55 = v17;
    PresentationSource.init(viewController:position:)(v55, v71, v70);
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    v53 = v19;
    v22 = [v53 innerObject];
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    v56 = v21;
    sub_2641C4(v22, v23, static MPMediaLibraryFilteringOptions.none.getter, 0, v59);

    sub_15F84(v68, &v65, &unk_DE8E30, "\b]\r");
    if (*(&v66 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
      v24 = _s30CollectionViewSelectionHandlerVMa(0);
      v25 = swift_dynamicCast();
      v26 = *(v24 - 8);
      (*(v26 + 56))(v9, v25 ^ 1u, 1, v24);
      v27 = (*(v26 + 48))(v9, 1, v24);
      v28 = v64;
      if (v27 != 1)
      {
        (*(v64 + 16))(v13, &v9[*(v24 + 20)], v3);
        sub_2D6C0(v9, _s30CollectionViewSelectionHandlerVMa);
        v29 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      sub_12E1C(&v65, &unk_DE8E30, "\b]\r");
      v30 = _s30CollectionViewSelectionHandlerVMa(0);
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
      v28 = v64;
    }

    sub_12E1C(v9, &qword_E037A0, &unk_AF8B30);
    v29 = 1;
LABEL_10:
    (*(v28 + 56))(v13, v29, 1, v3);
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31 && (v32 = v31, sub_12B2FC(), v34 = v33, v36 = v35, v32, v34))
    {
      ObjectType = swift_getObjectType();
      (*(v36 + 8))(ObjectType, v36);
      v39 = v38;
      swift_unknownObjectRelease();
      sub_15F84(v13, v11, &unk_DE8E20, &qword_AF7990);
      if ((*(v28 + 48))(v11, 1, v3) == 1)
      {
        sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
        v65 = 0u;
        v66 = 0u;
        v67 = 0;
      }

      else
      {
        (*(v28 + 32))(v60, v11, v3);
        sub_2D668();
        sub_ABAD10();
      }

      v41 = swift_getObjectType();
      v42 = v61;
      sub_3B8F68(v41);
      v40 = sub_21CCAC(1, v42, &v65, v41, v39);
      (*(v62 + 8))(v42, v63);
      sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      v40 = 0;
    }

    v43 = swift_unknownObjectWeakLoadStrong();
    v44 = v58;
    if (v43)
    {
      v45 = v43;
      sub_12AFE8();
      v17 = v46;
    }

    else
    {
      v17 = 0;
    }

    sub_15F28(v70, &v65);
    sub_15F84(v68, (v7 + 104), &unk_DE8E30, "\b]\r");
    v47 = v59;
    sub_15F84(v59, &v7[*(v44 + 28)], &unk_DEA510, "\b]\r");
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 8) = 1;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    sub_2D594(&v65, v7);
    *(v7 + 12) = v57;
    v48 = *v54;
    *(&v66 + 1) = v44;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
    sub_2D604(v7, boxed_opaque_existential_0);
    v50 = v53;
    v51 = v48;
    v52 = v56;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v56, 0, v40, v17, &v65);

    sub_12E1C(v47, &unk_DEA510, "\b]\r");
    sub_12E1C(v68, &unk_DE8E30, "\b]\r");
    sub_1611C(v70);
    sub_2D6C0(v7, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v65, &unk_DE8E40, &unk_AF8050);

    goto LABEL_21;
  }
}

void sub_5CC50(void *a1, uint64_t a2)
{
  v3 = sub_AB3430();
  v67 = *(v3 - 8);
  __chkstk_darwin();
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v68 = *(v5 - 8);
  __chkstk_darwin();
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v11 = &v60 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v60 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v69 = &v60 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v60 = v3;
  v64 = v7;
  v19 = *(Strong + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel);
  v20 = OBJC_IVAR____TtC11MusicJSCore21JSMusicVideoViewModel_containerDetailLink;
  swift_beginAccess();
  v21 = *(v19 + v20);
  if (!v21)
  {

    return;
  }

  v63 = v21;
  v61 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v22 = v18;
  [a1 bounds];
  v84[0] = a1;
  v84[1] = v23;
  v84[2] = v24;
  v84[3] = v25;
  v84[4] = v26;
  v85 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v84, 15, v76);
  v80[0] = v76[0];
  v80[1] = v76[1];
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v27 = a1;
  v62 = v22;
  PresentationSource.init(viewController:position:)(v22, v80, v75);
  v28 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  (*(*(v28 - 8) + 56))(v69, 1, 1, v28);
  sub_15F84(v73, &v70, &unk_DE8E30, "\b]\r");
  if (*(&v71 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v29 = _s30CollectionViewSelectionHandlerVMa(0);
    v30 = swift_dynamicCast();
    v31 = *(v29 - 8);
    (*(v31 + 56))(v11, v30 ^ 1u, 1, v29);
    v32 = (*(v31 + 48))(v11, 1, v29);
    v33 = v64;
    v34 = v68;
    if (v32 != 1)
    {
      (*(v68 + 16))(v15, &v11[*(v29 + 20)], v5);
      sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
      v35 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v70, &unk_DE8E30, "\b]\r");
    v36 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
    v33 = v64;
    v34 = v68;
  }

  sub_12E1C(v11, &qword_E037A0, &unk_AF8B30);
  v35 = 1;
LABEL_9:
  (*(v34 + 56))(v15, v35, 1, v5);
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37 && (v38 = v37, sub_12B2FC(), v40 = v39, v42 = v41, v38, v40))
  {
    ObjectType = swift_getObjectType();
    (*(v42 + 8))(ObjectType, v42);
    v45 = v44;
    swift_unknownObjectRelease();
    sub_15F84(v15, v13, &unk_DE8E20, &qword_AF7990);
    if ((*(v34 + 48))(v13, 1, v5) == 1)
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      v70 = 0u;
      v71 = 0u;
      v72 = 0;
    }

    else
    {
      (*(v34 + 32))(v65, v13, v5);
      sub_2D668();
      sub_ABAD10();
    }

    v47 = swift_getObjectType();
    v48 = v66;
    sub_3B8F68(v47);
    v46 = sub_21CCAC(1, v48, &v70, v47, v45);
    (*(v67 + 8))(v48, v60);
    sub_12E1C(&v70, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    v46 = 0;
  }

  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    sub_12AFE8();
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  sub_15F28(v75, &v70);
  sub_15F84(v73, (v9 + 104), &unk_DE8E30, "\b]\r");
  v53 = v33;
  v54 = &v9[*(v33 + 28)];
  v55 = v69;
  sub_15F84(v69, v54, &unk_DEA510, "\b]\r");
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v70, v9);
  *(v9 + 12) = 0;
  v56 = *v61;
  *(&v71 + 1) = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
  sub_2D604(v9, boxed_opaque_existential_0);
  v58 = v56;
  v59 = v63;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v63, 0, v46, v52, &v70);

  sub_12E1C(v55, &unk_DEA510, "\b]\r");
  sub_12E1C(v73, &unk_DE8E30, "\b]\r");
  sub_1611C(v75);
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v70, &unk_DE8E40, &unk_AF8050);
}

void sub_5D534()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for JSMusicVideoDetailViewController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView;
    v14 = *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
    if (v14)
    {
      [v14 setFrame:{v5, v7, v9, v11}];
    }

    v15 = JSMusicVideoViewModel.item.getter();
    v16 = 1.0;
    if (v15)
    {

      v17 = *&v0[v13];
      if (v17)
      {
        v18 = v17;
        v16 = sub_27753C(v12, v9);
      }
    }

    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    [v1 setPreferredContentSize:{CGRectGetWidth(v20), v16}];
  }

  else
  {
    __break(1u);
  }
}