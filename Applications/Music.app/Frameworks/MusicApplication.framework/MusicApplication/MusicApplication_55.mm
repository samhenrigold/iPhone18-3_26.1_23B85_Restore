void sub_4AFD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v26[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {

      return;
    }

    v12 = v11;
    v13 = v10;
    [v13 loadViewIfNeeded];
    v14 = *&v13[qword_DFE2F8];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = [v14 indexPathForCell:v12];
    if (!v15)
    {

      return;
    }

    v16 = v15;
    sub_AB3790();

    (*(v4 + 32))(v8, v6, v3);
    v17 = *&v13[qword_DFE2F0];
    v18 = v17;

    if (v17)
    {
      type metadata accessor for JSGridModelResponse();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {

LABEL_19:
        (*(v4 + 8))(v8, v3);
        return;
      }

      v20 = *(v19 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);

      isa = sub_AB3770().super.isa;
      v22 = [v20 itemAtIndexPath:isa];

      if (v22)
      {
        type metadata accessor for JSGridItem(0);
        if (swift_dynamicCastClass())
        {
          v23 = [v12 window];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 windowScene];

            if (v25)
            {
              sub_4154DC(v25);

              (*(v4 + 8))(v8, v3);
              swift_unknownObjectRelease();

              return;
            }
          }

          (*(v4 + 8))(v8, v3);
          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    (*(v4 + 8))(v8, v3);
LABEL_15:
  }
}

double sub_4B0058(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v9 = &v30 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + qword_DFE2F0);
    if (v13 && (type metadata accessor for JSGridModelResponse(), (v14 = swift_dynamicCastClass()) != 0))
    {
      v34 = a3;
      v15 = *(v14 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
      v33 = v13;
      isa = sub_AB3770().super.isa;
      v17 = [v15 itemAtIndexPath:isa];

      type metadata accessor for JSGridItem(0);
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        memset(v42, 0, sizeof(v42));
        v43 = 0;
        v44 = xmmword_AF7710;
        v31 = v18;
        v19 = v12;
        v32 = v19;
        PresentationSource.init(viewController:position:)(v19, v42, v40);
        v39 = 0;
        memset(v38, 0, sizeof(v38));
        v20 = [v34 contentItem];
        v21 = [v20 innerObject];

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        __chkstk_darwin();
        *(&v30 - 2) = v19;
        *(&v30 - 1) = a2;
        v23 = v31;
        sub_2641C4(v21, v22, sub_4BE20C, (&v30 - 4), v9);

        sub_15F84(v40, v36, &unk_DEA520, &unk_AFDBF0);
        sub_15F84(v38, (v7 + 104), &unk_DE8E30, "\b]\r");
        sub_15F84(v9, &v7[*(v5 + 28)], &unk_DEA510, "\b]\r");
        *v7 = 0u;
        *(v7 + 1) = 0u;
        *(v7 + 2) = 0u;
        *(v7 + 3) = 0u;
        *(v7 + 8) = 1;
        *(v7 + 9) = 0;
        *(v7 + 10) = 0;
        *(v7 + 11) = 0;
        v24 = v34;
        v25 = v34;
        sub_160B4(v36, v7, &unk_DEA520, &unk_AFDBF0);
        *(v7 + 12) = v24;
        v35[3] = v5;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
        sub_4BE210(v7, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
        sub_12E1C(v9, &unk_DEA510, "\b]\r");
        sub_12E1C(v38, &unk_DE8E30, "\b]\r");
        sub_12E1C(v40, &unk_DEA520, &unk_AFDBF0);
        memset(v37, 0, 32);
        v36[1] = 0;
        v36[2] = 0;
        v36[0] = v23;
        sub_160B4(v35, v37, &unk_DE8E40, &unk_AF8050);
        v27 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
        memset(v40, 0, sizeof(v40));
        v41 = 3;
        *&v27[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
        v28 = JSObject.init(type:)(v40);
        v29 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
        JSSegueCoordinator.perform(segue:with:)(v28, v36);

        sub_16170(v36);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

double sub_4B04C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v8 = &v27 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + qword_DFE2F0);
    if (v12 && (type metadata accessor for JSGridModelResponse(), (v13 = swift_dynamicCastClass()) != 0))
    {
      v14 = *(v13 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
      v29 = v12;
      isa = sub_AB3770().super.isa;
      v16 = [v14 itemAtIndexPath:isa];

      type metadata accessor for JSGridItem(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        memset(v37, 0, sizeof(v37));
        v38 = 0;
        v39 = xmmword_AF7710;
        v28 = v11;
        PresentationSource.init(viewController:position:)(v28, v37, v35);
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        v19 = [a3 contentItem];
        v20 = [v19 innerObject];

        swift_beginAccess();
        v21 = swift_unknownObjectWeakLoadStrong();
        sub_2641C4(v20, v21, static MPMediaLibraryFilteringOptions.none.getter, 0, v8);

        sub_15F84(v35, v31, &unk_DEA520, &unk_AFDBF0);
        sub_15F84(v33, (v6 + 104), &unk_DE8E30, "\b]\r");
        sub_15F84(v8, &v6[*(v4 + 28)], &unk_DEA510, "\b]\r");
        *v6 = 0u;
        *(v6 + 1) = 0u;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *(v6 + 8) = 1;
        *(v6 + 9) = 0;
        *(v6 + 10) = 0;
        *(v6 + 11) = 0;
        v22 = a3;
        sub_160B4(v31, v6, &unk_DEA520, &unk_AFDBF0);
        *(v6 + 12) = a3;
        v30[3] = v4;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
        sub_4BE210(v6, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
        sub_12E1C(v8, &unk_DEA510, "\b]\r");
        sub_12E1C(v33, &unk_DE8E30, "\b]\r");
        sub_12E1C(v35, &unk_DEA520, &unk_AFDBF0);
        memset(v32, 0, 32);
        v31[1] = 0;
        v31[2] = 0;
        v31[0] = v18;
        sub_160B4(v30, v32, &unk_DE8E40, &unk_AF8050);
        v24 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
        memset(v35, 0, sizeof(v35));
        v36 = 3;
        *&v24[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
        v25 = JSObject.init(type:)(v35);
        v26 = *JSSegueCoordinator.shared.unsafeMutableAddressor();
        JSSegueCoordinator.perform(segue:with:)(v25, v31);

        sub_16170(v31);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_4B08F0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ((*(&stru_428.reserved2 + (swift_isaMask & *a2)))())
    {
      (*(v8 + 16))(&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = a3;
      (*(v8 + 32))(v13 + v12, &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      aBlock[4] = sub_4BE344;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_153;
      v14 = _Block_copy(aBlock);
      v15 = v11;
      v16 = a3;

      [v15 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);
    }

    else
    {
      sub_4B3468(a3, a4);
    }
  }
}

void sub_4B0B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(a1 + 24);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_unknownObjectRelease();
      return;
    }

    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = (*(v5 + 16))(ObjectType, v5);
    if (v9)
    {
      v11 = v10;
      v12 = v9;
      v9();
      sub_17654(v12, v11);
    }

    v13 = *((*(v5 + 8))(ObjectType, v5) + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
    if (v13 == 255 || (v13 & 1) != 0)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v14 = *&v7[qword_E0A7A0];
      if (!v14)
      {
        swift_unknownObjectRelease();

        return;
      }

      v15 = *(*v14 + 184);

      v15(a3);
      swift_unknownObjectRelease();
    }
  }
}

id sub_4B0CD4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4A8714(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

void *sub_4B0DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + qword_E0A860) == a2 && *(v4 + qword_E0A860 + 8) == a3;
  if (v9 || (sub_ABB3C0() & 1) != 0)
  {
    v10 = type metadata accessor for SocialProfilesAccessoryView();
    v11 = static UICollectionReusableView.reuseIdentifier.getter();
    v13 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v10, a2, a3, a4, v11, v12, v10);

    [v13 setUserInteractionEnabled:0];
    return v13;
  }

  else
  {

    return sub_3DE1D8(a1, a4);
  }
}

id sub_4B0EF0(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = v13 == *&a1[qword_E0A860] && v15 == *&a1[qword_E0A860 + 8];
  if (v16 || (sub_ABB3C0() & 1) != 0)
  {
    v17 = type metadata accessor for SocialProfilesAccessoryView();
    v31 = a3;
    v32 = v9;
    v18 = a4;
    v19 = a5;
    v20 = a1;
    v21 = static UICollectionReusableView.reuseIdentifier.getter();
    v22 = v31;
    v24 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v17, v13, v15, v12, v21, v23, v17);
    v25 = v20;

    v26 = v24;
    [v26 setUserInteractionEnabled:0];
    (*(v10 + 8))(v12, v32);

    v27 = v26;
  }

  else
  {
    v25 = a3;
    v28 = a4;
    v29 = a5;
    v26 = a1;
    v27 = sub_3DE1D8(v25, v12);
    (*(v10 + 8))(v12, v9);
  }

  return v27;
}

void sub_4B1128(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v7 = &v43 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B41F4(a1, a2);
  v12 = *&v2[qword_DFE2F0];
  if (!v12)
  {
    return;
  }

  type metadata accessor for JSGridModelResponse();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    return;
  }

  v46 = v9;
  v14 = v13;
  v15 = *(v13 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  v48 = v12;
  isa = sub_AB3770().super.isa;
  v17 = [v15 itemAtIndexPath:isa];

  type metadata accessor for JSGridItem(0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

LABEL_14:

    swift_unknownObjectRelease();
    return;
  }

  v45 = v18;
  v47 = v17;
  v19 = [v14 results];
  if (!v19)
  {
    __break(1u);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = sub_AB3770().super.isa;
  [v20 itemAtIndexPath:v21];

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v3 traitCollection];
  v25 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v25)
  {
    v44 = v23;
    v26 = *&v3[qword_DFE298];
    if (v26)
    {

      v27 = [v25 selectionMode];
      v28 = [v44 pickableObjectFor:v27];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 musicTypeIdentifier];
        if (v30)
        {
          v31 = v30;

          v32 = [v44 contentItem];
          v33 = [v32 innerObject];

          sub_2641C4(v33, v3, static MPMediaLibraryFilteringOptions.none.getter, 0, v7);
          if ((*(v46 + 48))(v7, 1, v8) == 1)
          {

            sub_12E1C(v7, &unk_DEA510, "\b]\r");
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          v35 = v25;
          sub_4BE210(v7, v11, type metadata accessor for PlaybackIntentDescriptor);
          [v3 loadViewIfNeeded];
          v36 = *&v3[qword_DFE2F8];
          if (v36)
          {
            v37 = v36;
            v38 = sub_AB3770().super.isa;
            v39 = [v37 cellForItemAtIndexPath:v38];

            if (v39)
            {
              swift_getObjectType();
              v40 = swift_conformsToProtocol2();
              if (v40)
              {
                v41 = v40;
LABEL_29:
                sub_3B8FA0(v11, v44, v39, v41);
                v42 = sub_AB3770().super.isa;
                [a1 deselectItemAtIndexPath:v42 animated:1];

                sub_4BE48C(v11, type metadata accessor for PlaybackIntentDescriptor);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }

              v39 = 0;
            }

            v41 = 0;
            goto LABEL_29;
          }

LABEL_32:
          __break(1u);
          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_4B3468(a1, a2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v34 = v48;
}

void sub_4B16E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4B1128(v11, v10);

  (*(v8 + 8))(v10, v7);
}

void sub_4B17F4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  sub_4B8D60(a2);
  v6 = *(v3 + qword_E0A7A0);
  if (v6)
  {
    v7 = *(*v6 + 176);

    v7(a3);
  }

  type metadata accessor for ShowcaseCell(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
    *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = 0;
    v10 = a2;
    sub_203DB8(v9);
  }
}

void sub_4B18F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_4B17F4(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_4B1A24(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_4BDAF8(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_4B1B44(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB92A0();
  v16 = v15;
  sub_AB3790();
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a1;
  sub_4B3EE8(a4, v14, v16);
  (*(v11 + 8))(v13, v10);
}

void sub_4B1CC0(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a5(v13, v12);

  (*(v10 + 8))(v12, v9);
}

double sub_4B1DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a5;
  v12 = a1;
  sub_4B4D00();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = CGSize.nonNegative()(v14);

  return v15;
}

double sub_4B1EF8(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_4BE8F4(a5);
  v12 = v11;

  return v12;
}

void sub_4B1F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (sub_4B83D0(a5))
  {
  }

  else
  {
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 music_inheritedLayoutInsets];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_4B2028(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_4BED84(a5);
  v12 = v11;

  return v12;
}

unint64_t sub_4B209C(uint64_t a1)
{
  result = JSGrid.sections.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = result;
  v10 = sub_ABB060();
  result = v9;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = sub_35FC8C(0, result, v2);
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    v5 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
    swift_beginAccess();
    v6 = v4[v5];

    if (v6 <= 3)
    {
      goto LABEL_11;
    }

    if (v6 <= 5)
    {
      if (v6 == 4)
      {

        v7 = 0;
        return v7 & 1;
      }

LABEL_11:
      v8 = sub_ABB3C0();

      v7 = v8 ^ 1;
      return v7 & 1;
    }

    if (v6 == 6)
    {
      goto LABEL_11;
    }

LABEL_14:
    v7 = 1;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

void sub_4B227C()
{
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    type metadata accessor for JSGridModelResponse();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v3 results];
      if (v5)
      {
        v6 = v5;
        if ([v5 firstSection])
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (!v7)
          {

            goto LABEL_16;
          }

          if ([v7 uniformCellType] == &dword_4 + 1)
          {
            v8 = [v3 results];

            if (!v8)
            {
              __break(1u);
              return;
            }

            v9 = [v8 totalItemCount];

            if (v9 >= 1)
            {
              v10 = swift_allocObject();
              *(v10 + 16) = 1;
              sub_4B8148(0, sub_4BE58C, v10);
              v12 = v11;

              if (v12)
              {

                swift_unknownObjectRelease();
              }

              else
              {
                v13 = swift_allocObject();
                *(v13 + 16) = &off_CEFF78;
                sub_4B8148(0, sub_4BF00C, v13);

                swift_unknownObjectRelease();
              }

              return;
            }

LABEL_16:
            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

void *sub_4B24AC(void *a1, double a2)
{
  if (*&v2[qword_DFE2F0])
  {
    return 0;
  }

  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    if (v2[qword_E0A770])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 4;
  }

  sub_18A8A8(a1, v6, 0, 1);
  v7 = v2;
  v8 = JSGrid.sections.getter();
  if (!(v8 >> 62))
  {
    if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

LABEL_35:

    goto LABEL_36;
  }

  v30 = v8;
  v31 = sub_ABB060();
  v8 = v30;
  if (!v31)
  {
    goto LABEL_35;
  }

LABEL_10:
  v10 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = sub_35FC8C(0, v8, v9);
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_41;
    }

    v11 = *(v8 + 32);
  }

  v12 = v11;

  v13 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
  swift_beginAccess();
  v14 = v12[v13];

  if (v14 <= 3)
  {
    if (v14 <= 1)
    {
      if (v14)
      {
        sub_4B785C();
        return *&a2;
      }

LABEL_23:
      sub_4B72AC();
      return *&a2;
    }

    if (v14 == 2)
    {
      goto LABEL_23;
    }

    v15 = &v7[qword_E0A800];
    if ((v10[qword_E0A800 + 16] & 1) == 0)
    {
      return *&a2;
    }

    sub_4B459C();
    v17 = v28;
    v18 = [v10 traitCollection];
    [v18 displayScale];
    sub_AB3A00();
    v20 = v29;
LABEL_31:

    *v15 = v17;
    *(v15 + 1) = v20;
    v15[16] = 0;
    return *&a2;
  }

  if (v14 > 5)
  {
    if (v14 == 6)
    {
      sub_4B7D64();
      return *&a2;
    }

LABEL_36:
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v33 = v32;

    sub_2F48A4(v33, a1, 0, 0);

    if (qword_DE6948 == -1)
    {
LABEL_37:
      [a1 displayScale];
      sub_AB3A00();

      return *&a2;
    }

LABEL_41:
    swift_once();
    goto LABEL_37;
  }

  if (v14 == 4)
  {
    v15 = &v7[qword_E0A810];
    if ((v10[qword_E0A810 + 16] & 1) == 0)
    {
      return *&a2;
    }

    [v10 loadViewIfNeeded];
    result = *&v10[qword_DFE2F8];
    if (result)
    {
      [result bounds];
      v17 = v16;
      v18 = [v10 traitCollection];
      sub_BCDCC(v18, v17);
      v20 = v19;
      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    v21 = &v7[qword_E0A818];
    if ((v7[qword_E0A818 + 16] & 1) == 0)
    {
      return *&a2;
    }

    sub_4B4800();
    v23 = v22;
    [v7 loadViewIfNeeded];
    result = *&v7[qword_DFE2F8];
    if (result)
    {
      [result bounds];
      v24 = [v7 traitCollection];
      v25 = sub_234C6C(v24, v23);
      v27 = v26;

      *v21 = v25;
      *(v21 + 1) = v27;
      v21[16] = 0;
      return *&a2;
    }
  }

  __break(1u);
  return result;
}

void *sub_4B28CC()
{
  v1 = qword_E0A780;
  if (*&v0[qword_E0A780])
  {
    v2 = *&v0[qword_E0A780];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B398, &qword_B12418);
    swift_allocObject();
    v2 = sub_2BEB90(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_4B2998@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_12;
  }

  type metadata accessor for JSGridModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_12;
  }

  type metadata accessor for JSGridItem(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_465CC(&v84);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = (*&stru_3D8.segname[(swift_isaMask & *v7) - 8])();
  if (!v10)
  {
    v9 = (*(&stru_338.offset + (swift_isaMask & *v8)))(v9);
  }

  v11 = v9;
  v12 = v10;
  v47 = IndexPath.safeItem.getter();
  v13 = (*(&stru_B8.offset + (swift_isaMask & *v8)))();
  v46 = sub_27EE14(v13);

  v14 = sub_27EEA4(v8);
  v43 = v15;
  v44 = v14;
  if (!v12)
  {
    v16 = (*(&stru_B8.reserved2 + (swift_isaMask & *v8)))();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 name];
      if (v18)
      {
        v19 = v18;
        v11 = sub_AB92A0();
        v12 = v20;

        goto LABEL_16;
      }
    }

    v11 = 0;
    v12 = 0;
  }

LABEL_16:
  v45 = v11;
  v26 = *(&stru_338.reserved2 + (swift_isaMask & *v8));
  v27 = swift_unknownObjectRetain_n();
  v28 = v26(v27);
  if (v29)
  {
    v30 = v29;
    v48 = v28;
  }

  else
  {
    v48 = (*(&stru_388.flags + (swift_isaMask & *v8)))(v28);
    v30 = v31;
  }

  v42 = v12;
  if (!(*&stru_428.sectname[swift_isaMask & *v8])())
  {
    goto LABEL_22;
  }

  type metadata accessor for JSGridSection();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    type metadata accessor for JSShelfSection();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = &OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v34 = swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v33 = &OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title;
LABEL_25:
  v35 = (v32 + *v33);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];

  swift_unknownObjectRelease();
  v34 = swift_unknownObjectRelease();
  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    goto LABEL_30;
  }

LABEL_29:
  v37 = 0;
  v36 = 0;
LABEL_30:
  if (v30)
  {
    v39 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v39 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v48;
    }

    else
    {

      v40 = 0;
      v30 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = (*&stru_1A8.sectname[swift_isaMask & *v8])(v34);
  swift_unknownObjectRelease();

  *&v49 = v44;
  *(&v49 + 1) = v43;
  *&v50 = v45;
  *(&v50 + 1) = v42;
  *&v51 = v8;
  *(&v51 + 1) = v47;
  LOBYTE(v52) = v41 != 0;
  BYTE1(v52) = 2;
  BYTE2(v52) = v46;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  *(&v53 + 1) = v8;
  *&v54 = v37;
  *(&v54 + 1) = v36;
  *&v55 = v40;
  v56 = 0uLL;
  *(&v55 + 1) = v30;
  v57[0] = 1;
  *&v57[8] = 0;
  *&v57[16] = 0;
  v57[24] = 2;
  v58[0] = v44;
  v58[1] = v43;
  v58[2] = v45;
  v58[3] = v42;
  v58[4] = v8;
  v58[5] = v47;
  v59 = v41 != 0;
  v60 = 2;
  v61 = v46;
  v62 = 0;
  v63 = 0;
  v64 = v8;
  v65 = v37;
  v66 = v36;
  v67 = v40;
  v68 = v30;
  v69 = 0;
  v70 = 0;
  v71 = 1;
  v72 = 0;
  v73 = 0;
  v74 = 2;
  sub_465F4(&v49, &v84);
  sub_46650(v58);
  v81 = v55;
  v82 = v56;
  v83[0] = *v57;
  *(v83 + 9) = *&v57[9];
  v77 = v51;
  v78 = v52;
  v79 = v53;
  v80 = v54;
  v75 = v49;
  v76 = v50;
  UIScreen.Dimensions.size.getter();
  v90 = v81;
  v91 = v82;
  v92[0] = v83[0];
  *(v92 + 9) = *(v83 + 9);
  v86 = v77;
  v87 = v78;
  v88 = v79;
  v89 = v80;
  v84 = v75;
  v85 = v76;
LABEL_13:
  v21 = v91;
  a1[6] = v90;
  a1[7] = v21;
  a1[8] = v92[0];
  *(a1 + 137) = *(v92 + 9);
  v22 = v87;
  a1[2] = v86;
  a1[3] = v22;
  v23 = v89;
  a1[4] = v88;
  a1[5] = v23;
  result = *&v84;
  v25 = v85;
  *a1 = v84;
  a1[1] = v25;
  return result;
}

void sub_4B2F58(double a1, double a2)
{
  v3 = &v2[qword_E0A798];
  v4 = *&v2[qword_E0A798];
  v5 = *&v2[qword_E0A798 + 8];
  *v3 = a1;
  v3[1] = a2;
  if (v4 != a1 || v5 != a2)
  {
    v7 = [v2 parentViewController];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for JSSplitWidgetViewController();
      v9 = swift_dynamicCastClass();

      if (v9)
      {
        [v2 loadViewIfNeeded];
        v10 = *&v2[qword_DFE2F8];
        if (v10)
        {
          v12 = [v10 collectionViewLayout];
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            sub_4B8734(v11, 1);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_4B306C()
{
  v1 = qword_E0A828;
  if (v0[qword_E0A828] == 2)
  {
    v2 = [v0 traitCollection];
    if ([v2 horizontalSizeClass])
    {
      v3 = [v2 horizontalSizeClass] == &dword_0 + 1;
    }

    else
    {
      v4 = [v0 view];
      if (!v4)
      {
        goto LABEL_18;
      }

      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v26.origin.x = v7;
      v26.origin.y = v9;
      v26.size.width = v11;
      v26.size.height = v13;
      v3 = CGRectGetWidth(v26) < 650.0;
    }

    v14 = *&v0[qword_E0A790];
    v15 = OBJC_IVAR____TtC11MusicJSCore6JSGrid_adaptiveLayoutStyle;
    swift_beginAccess();
    if (*(v14 + v15) == 1)
    {
    }

    else
    {
      v16 = sub_ABB3C0();

      v3 &= v16;
    }

    v25 = 1;
    v17 = *&v0[qword_DFE2F0];
    if (v17)
    {
      v18 = v17;
      v19 = [v18 results];

      if (v19)
      {
        v20 = swift_allocObject();
        v20[2] = &v25;
        v20[3] = v0;
        v20[4] = &off_CEFB10;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_4BE534;
        *(v21 + 24) = v20;
        v24[4] = sub_3E12F8;
        v24[5] = v21;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 1107296256;
        v24[2] = sub_1B7EB0;
        v24[3] = &block_descriptor_236_0;
        v22 = _Block_copy(v24);
        v23 = v0;

        [v19 enumerateSectionsUsingBlock:v22];
        _Block_release(v22);
        LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

        if ((v22 & 1) == 0)
        {
          v3 &= v25;
          v19 = sub_4BE534;
LABEL_15:
          v0[v1] = v3 & 1;

          sub_17654(v19, v20);
          return;
        }

        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
    goto LABEL_15;
  }
}

void sub_4B33C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  if (*a4 == 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a6;

    sub_4B8148(a2, sub_4BE578, v9);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11 & 1;
}

void sub_4B3468(void *a1, uint64_t a2)
{
  v3 = v2;
  v89 = a1;
  v5 = sub_AB3430();
  v86 = *(v5 - 8);
  __chkstk_darwin();
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_AB3820();
  v90 = *(v87 - 8);
  __chkstk_darwin();
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v12 = &v74 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v84 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v74 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v16 = &v74 - v15;
  v17 = *&v2[qword_DFE2F0];
  if (!v17)
  {
    return;
  }

  type metadata accessor for JSGridModelResponse();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v76 = v5;
  v82 = v16;
  v80 = v8;
  v20 = *(v18 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
  v21 = v17;
  isa = sub_AB3770().super.isa;
  v23 = [v20 itemAtIndexPath:isa];

  type metadata accessor for JSGridItem(0);
  v81 = swift_dynamicCastClass();
  if (v81)
  {
    v78 = v21;
    v79 = v23;
    v24 = [v19 results];
    if (!v24)
    {
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = sub_AB3770().super.isa;
    v27 = [v25 itemAtIndexPath:v26];

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = 0;
    }

    v29 = v82;
    v30 = v28;
    v31 = [v28 contentItem];
    v32 = [v31 innerObject];

    __chkstk_darwin();
    *(&v74 - 2) = v3;
    *(&v74 - 1) = a2;
    sub_2641C4(v32, v3, sub_4BEFE8, (&v74 - 2), v29);

    v77 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v33 = sub_AB3770().super.isa;
    v34 = [v89 cellForItemAtIndexPath:v33];

    if (v34)
    {
      sub_D5958(v96);
      v74 = v96[1];
      v75 = v96[0];
      v35 = v97;
      v36 = v98;
      v37 = v99;

      v39 = v74;
      v38 = v75;
    }

    else
    {
      v35 = 0;
      v37 = 0;
      v38 = 0uLL;
      v36 = 255;
      v39 = 0uLL;
    }

    v100[0] = v38;
    v100[1] = v39;
    v101 = v35;
    v102 = v36;
    v103 = v37;
    PresentationSource.init(viewController:position:)(v3, v100, v95);
    v40 = _s30CollectionViewSelectionHandlerVMa(0);
    v94[3] = v40;
    v94[4] = &off_CF7E60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
    v42 = *(v90 + 16);
    v43 = a2;
    v44 = v87;
    v42(boxed_opaque_existential_0 + *(v40 + 20), v43, v87);
    swift_unknownObjectWeakInit();
    sub_15F84(v94, &v91, &unk_DE8E30, "\b]\r");
    v45 = *(&v92 + 1);
    v89 = v30;
    if (v45)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
      v46 = swift_dynamicCast();
      v47 = *(v40 - 8);
      (*(v47 + 56))(v12, v46 ^ 1u, 1, v40);
      if ((*(v47 + 48))(v12, 1, v40) != 1)
      {
        v42(v88, &v12[*(v40 + 20)], v44);
        sub_4BE48C(v12, _s30CollectionViewSelectionHandlerVMa);
        v48 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      sub_12E1C(&v91, &unk_DE8E30, "\b]\r");
      (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
    }

    sub_12E1C(v12, &qword_E037A0, &unk_AF8B30);
    v48 = 1;
LABEL_18:
    v49 = v90;
    v50 = v88;
    (*(v90 + 56))(v88, v48, 1, v44);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v52 = Strong, sub_12B2FC(), v54 = v53, v56 = v55, v52, v54))
    {
      ObjectType = swift_getObjectType();
      (*(v56 + 8))(ObjectType, v56);
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = v84;
      sub_15F84(v50, v84, &unk_DE8E20, &qword_AF7990);
      if ((*(v49 + 48))(v60, 1, v44) == 1)
      {
        sub_12E1C(v60, &unk_DE8E20, &qword_AF7990);
        v91 = 0u;
        v92 = 0u;
        v93 = 0;
      }

      else
      {
        (*(v49 + 32))(v83, v60, v44);
        sub_4BDE90(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        sub_ABAD10();
      }

      v62 = swift_getObjectType();
      v63 = v85;
      sub_3B8F68(v62);
      v61 = sub_21CCAC(1, v63, &v91, v62, v59);
      (*(v86 + 8))(v63, v76);
      sub_12E1C(&v91, &qword_DF2BD0, &unk_AFDC00);
      sub_12E1C(v50, &unk_DE8E20, &qword_AF7990);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v50, &unk_DE8E20, &qword_AF7990);
      v61 = 0;
    }

    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v65 = v64;
      sub_12AFE8();
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    sub_15F28(v95, &v91);
    sub_15F84(v94, (v10 + 104), &unk_DE8E30, "\b]\r");
    v68 = v80;
    v69 = v82;
    sub_15F84(v82, &v10[*(v80 + 28)], &unk_DEA510, "\b]\r");
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *(v10 + 8) = 1;
    *(v10 + 9) = 0;
    *(v10 + 10) = 0;
    *(v10 + 11) = 0;
    sub_160B4(&v91, v10, &unk_DEA520, &unk_AFDBF0);
    *(v10 + 12) = v30;
    v70 = *v77;
    *(&v92 + 1) = v68;
    v71 = __swift_allocate_boxed_opaque_existential_0(&v91);
    sub_2D604(v10, v71);
    v72 = v89;
    v73 = v70;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v81, 0, v61, v67, &v91);

    sub_1611C(v95);
    sub_12E1C(v69, &unk_DEA510, "\b]\r");
    sub_4BE48C(v10, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v91, &unk_DE8E40, &unk_AF8050);

    sub_12E1C(v94, &unk_DE8E30, "\b]\r");
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

void sub_4B3EE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *&v3[qword_E0A860] == a2 && *&v3[qword_E0A860 + 8] == a3;
  if (v5 || (sub_ABB3C0() & 1) != 0)
  {
    if (a1)
    {
      type metadata accessor for SocialProfilesAccessoryView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = *&v3[qword_DFE2F0];
        if (v7)
        {
          v8 = v6;
          v9 = a1;
          v26 = v7;
          if (([v26 isEmpty] & 1) != 0 || !objc_msgSend(v26, "isValid"))
          {
            goto LABEL_16;
          }

          [v3 loadViewIfNeeded];
          v10 = *&v3[qword_DFE2F8];
          if (!v10)
          {
            __break(1u);
            goto LABEL_28;
          }

          v11 = v10;
          isa = sub_AB3770().super.isa;
          v25 = [v11 cellForItemAtIndexPath:isa];

          if (v25)
          {
            swift_getObjectType();
            v13 = swift_conformsToProtocol2();
            if (v13)
            {
              v14 = v13;
              type metadata accessor for PosterCell(0);
              v15 = swift_dynamicCastClass();
              if (v15)
              {
                v16 = v25;
                sub_39C70();
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }

              v30[0] = 0;
              v30[1] = 0;
              v30[2] = v18;
              v30[3] = 0;
              v31 = v15 == 0;
              v20 = [v26 results];
              if (v20)
              {
                v21 = v20;
                v22 = sub_AB3770().super.isa;
                v23 = [v21 itemAtIndexPath:v22];

                v29 = v23;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E04518, &unk_B0D140);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  v28 = 0;
                  memset(v27, 0, sizeof(v27));
                }

                v24 = v25;
                sub_3AF4D0(v8, v27, v25, v14, v30);

                sub_12E1C(v27, &unk_E04520, &qword_B0CCC8);
                return;
              }

LABEL_28:
              __break(1u);
              return;
            }

            v19 = v25;
          }

          else
          {
LABEL_16:

            v19 = v26;
          }
        }
      }
    }
  }
}

void sub_4B41E0()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v1 horizontalSizeClass];
    [v3 music_inheritedLayoutInsets];
    v12.origin.x = v5;
    v12.origin.y = v7;
    v12.size.width = v9;
    v12.size.height = v11;
    CGRectGetWidth(v12);
    sub_471A4();
    sub_AB38F0();
    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    CGRectGetWidth(v13);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_4B4384()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 traitCollection];
    v5 = v3;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v4 horizontalSizeClass];
    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    CGRectGetWidth(v15);
    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    CGRectGetHeight(v16);
    [v5 music_inheritedLayoutInsets];

    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    CGRectGetWidth(v17);
    sub_471A4();
    sub_AB38F0();
    v14 = [v1 traitCollection];
    [v14 displayScale];

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    CGRectGetWidth(v18);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_4B459C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 traitCollection];
  [v11 displayScale];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  Width = CGRectGetWidth(v16);
  v14 = 0x408F400000000000;
  sub_471A4();
  if ((sub_AB38F0() & 1) == 0)
  {
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    Width = CGRectGetWidth(v17);
    v14 = 0x4084500000000000;
    sub_AB38F0();
  }

  [v13 music_inheritedLayoutInsets];
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetWidth(v18);
  sub_AB38F0();
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetWidth(v19);
  sub_AB3A00();
}

void sub_4B4800()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v0 traitCollection];
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    Width = CGRectGetWidth(v17);
    v14 = 0x408F400000000000;
    sub_471A4();
    if (sub_AB38F0())
    {
      [v11 horizontalSizeClass];
    }

    [v0 loadViewIfNeeded];
    v12 = *&v0[qword_DFE2F8];
    if (v12)
    {
      [v12 music_inheritedLayoutInsets];
      v18.origin.x = v4;
      v18.origin.y = v6;
      v18.size.width = v8;
      v18.size.height = v10;
      v16 = CGRectGetWidth(v18);
      sub_AB38F0();
      v13 = [v0 traitCollection];
      [v13 displayScale];

      v19.origin.x = v4;
      v19.origin.y = v6;
      v19.size.width = v8;
      v19.size.height = v10;
      CGRectGetWidth(v19);
      sub_AB3A00();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_4B4A50()
{
  v1 = v0;
  result = [v0 loadViewIfNeeded];
  v3 = *&v0[qword_DFE2F8];
  if (v3)
  {
    v4 = v3;
    [v4 bounds];
    Width = CGRectGetWidth(v9);
    sub_471A4();
    if (sub_AB38F0())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1[qword_E0A858];
    v1[qword_E0A858] = v5;
    if (v6 != 3 && v6 != v5)
    {
      [v4 reloadData];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4B4B3C()
{
  v1 = [v0 traitCollection];
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v0 loadViewIfNeeded];
  v5 = *&v0[v2];
  if (v5)
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_45BBB8(v1, v6, v8, v10, v12);
    [v4 music_inheritedLayoutInsets];
    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    sub_AB38F0();
    [v1 displayScale];
    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    CGRectGetWidth(v17);
    if (!__OFSUB__(v14, 1))
    {
      sub_AB3A00();

      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_4B4D00()
{
  v1 = v0;
  sub_AB4D10();
  v2 = [v0 traitCollection];
  [v0 loadViewIfNeeded];
  v3 = qword_DFE2F8;
  v4 = *&v0[qword_DFE2F8];
  if (!v4)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  [v4 music_inheritedLayoutInsets];
  v7 = qword_DFE2F0;
  v8 = *&v0[qword_DFE2F0];
  if (!v8)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v9 = v6;
  v10 = v5;
  v11 = [v8 results];
  if (!v11)
  {
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v12 = v11;
  v13 = [v11 sectionAtIndex:sub_AB37F0()];

  if (!v13)
  {
    v14 = 0;
    v15 = *&v1[v7];
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_10:

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
  }

  v15 = *&v1[v7];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_12:
  v338 = v2;
  v16 = v15;
  v17 = [v16 results];
  if (!v17)
  {

    return;
  }

  v18 = v17;
  v336 = v3;
  v337 = v14;

  isa = sub_AB3770().super.isa;
  v20 = [v18 itemAtIndexPath:isa];

  if (!v20)
  {

LABEL_29:
    return;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  v22 = v338;
  if (!v21)
  {
LABEL_28:

    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v335 = v21;
  if (v14)
  {
    v23 = [v14 uniformCellType];
    if (v23 > 3)
    {
      if (v23 > 5)
      {
        if (v23 != (&dword_4 + 2))
        {
          if (v23 == (&dword_4 + 3))
          {
            sub_4B7D64();
            [v338 horizontalSizeClass];
            [v338 displayScale];
            sub_AB3A00();

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_176;
        }

        v59 = &v1[qword_E0A818];
        if ((v1[qword_E0A818 + 16] & 1) == 0)
        {
LABEL_176:

          swift_unknownObjectRelease();
          return;
        }

        sub_4B4800();
        v61 = v60;
        [v1 loadViewIfNeeded];
        v62 = *&v1[v336];
        if (v62)
        {
          [v62 bounds];
          v63 = [v1 traitCollection];
          v64 = sub_234C6C(v63, v61);
          v66 = v65;

          *v59 = v64;
          *(v59 + 1) = v66;
          v59[16] = 0;

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_270;
      }

      if (v23 != &dword_4)
      {
        v39 = &v1[qword_E0A810];
        if (v1[qword_E0A810 + 16])
        {
          [v1 loadViewIfNeeded];
          v40 = *&v1[v336];
          if (!v40)
          {
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
            goto LABEL_271;
          }

          [v40 bounds];
          v42 = v41;
          v43 = [v1 traitCollection];
          sub_BCDCC(v43, v42);
          v45 = v44;

          *v39 = v42;
          *(v39 + 1) = v45;
          v39[16] = 0;
        }

        [v338 displayScale];
        [v338 horizontalSizeClass];
        sub_AB3A00();

        swift_unknownObjectRelease();
        return;
      }

      v53 = &v1[qword_E0A800];
      if (v1[qword_E0A800 + 16])
      {
        sub_4B459C();
        v55 = v54;
        v56 = [v1 traitCollection];
        [v56 displayScale];
        sub_AB3A00();
        v58 = v57;

        *v53 = v55;
        *(v53 + 1) = v58;
        v53[16] = 0;
      }

      [v338 displayScale];
      sub_AB3A00();

      swift_unknownObjectRelease();
      return;
    }

    if (v23 <= 1)
    {
      if (v23)
      {
        if (v23 != (&dword_0 + 1))
        {
          goto LABEL_176;
        }

        v24 = sub_AB37F0();
        v25 = *&v1[v7];
        if (!v25)
        {
          goto LABEL_175;
        }

        v26 = [v25 results];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 sectionAtIndex:v24];

          if (v28)
          {
            objc_opt_self();
            v29 = swift_dynamicCastObjCClass();
            if (v29)
            {
              v30 = [v29 isRankedList];
              swift_unknownObjectRelease();
              if (v30)
              {
                sub_4B73EC();
                goto LABEL_176;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

LABEL_175:
          sub_4B72AC();
          goto LABEL_176;
        }

        goto LABEL_268;
      }

      goto LABEL_30;
    }

    if (v23 == (&dword_0 + 2))
    {
      sub_4B785C();
      sub_4B306C();

      swift_unknownObjectRelease();
      return;
    }

    v46 = [v335 contentItem];
    if (v46)
    {
      v47 = v46;
      if ([v46 itemType] == &dword_4 + 3 && (v48 = objc_msgSend(v47, "song")) != 0)
      {
        v49 = v48;
        if ([v48 hasVideo])
        {
          v334 = v49;
          v50 = qword_E0A838;
          v51 = *&v1[qword_E0A838];
          if (v51)
          {
            v52 = *&v1[qword_E0A838];
          }

          else
          {
            type metadata accessor for CustomRoomMusicVideoCell(0);
            v245 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v246 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
            v247 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
            swift_beginAccess();
            *&v245[v247] = v246;
            swift_retain_n();
            v248 = v245;

            v249 = *&v248[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
            v250 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
            swift_beginAccess();
            v251 = *&v249[v250];
            *&v249[v250] = v246;

            v252 = v249;
            sub_2E6210(v251);

            v253 = *&v1[v50];
            *&v1[v50] = v248;
            v254 = v248;

            v52 = v254;
            v51 = 0;
          }

          v255 = v51;
          v256 = [v335 headlineText];
          if (v256)
          {
            v257 = v256;
            v258 = sub_AB92A0();
            v260 = v259;

            v261 = v258 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v261 = 0;
            v260 = 0xE000000000000000;
          }

          v262 = [v335 descriptionText];
          if (v262)
          {
            v263 = v262;
            v264 = sub_AB92A0();
            v266 = v265;

            v267 = v264 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v267 = 0;
            v266 = 0xE000000000000000;
          }

          [v1 loadViewIfNeeded];
          v268 = *&v1[v336];
          if (!v268)
          {
            goto LABEL_272;
          }

          v269 = &selRef__authenticateReturningError_;
          [v268 bounds];
          Width = CGRectGetWidth(v349);

          if ((v260 & 0x2000000000000000) != 0)
          {
            v271 = HIBYTE(v260) & 0xF;
          }

          else
          {
            v271 = v261;
          }

          if ((v266 & 0x2000000000000000) != 0)
          {
            v272 = HIBYTE(v266) & 0xF;
          }

          else
          {
            v272 = v267;
          }

          v273 = [v338 horizontalSizeClass];
          sub_14F78C(v338, v10, v9, Width);
          if (v271)
          {
            sub_14F8E0(v273, v341);
            sub_2F174(v341);
          }

          if (v273 == &dword_0 + 1)
          {
            swift_beginAccess();
            if (v272)
            {
LABEL_228:
              v274 = &v52[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
              swift_beginAccess();
              v342 = *v274;
              v343 = *(v274 + 1);
              v344 = *(v274 + 4);
              v345 = v344;

              sub_15F84(&v345, v339, &qword_DF1E78, &unk_B0D170);
              v275 = v338;
              v276 = sub_14E664(v338);

              v269 = &selRef__authenticateReturningError_;

              sub_12E1C(&v345, &qword_DF1E78, &unk_B0D170);
              goto LABEL_231;
            }
          }

          else if (v272)
          {
            goto LABEL_228;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
          v276 = swift_allocObject();
          *(v276 + 16) = xmmword_AF7C50;
          v277 = &v52[OBJC_IVAR____TtC16MusicApplication24CustomRoomMusicVideoCell_textComponents];
          swift_beginAccess();
          *(v276 + 32) = *(v277 + 1);
          *(v276 + 40) = *(v277 + 2);

          v275 = v338;
LABEL_231:
          sub_2F48A4(v276, v275, 0, 0);

          [v1 loadViewIfNeeded];
          v278 = *&v1[v336];
          if (v278)
          {
            v279 = v278;
            [v279 v269[56]];
            v281 = v280;
            v283 = v282;
            v285 = v284;
            v287 = v286;
            [v279 music_inheritedLayoutInsets];
            v289 = v288;
            v291 = v290;
            v350.origin.x = v281;
            v350.origin.y = v283;
            v350.size.width = v285;
            v350.size.height = v287;
            v292 = CGRectGetWidth(v350);

            sub_14F9EC(v275, v292 - v289 - v291, v10, v9);
            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_273;
        }
      }

      else
      {
        v49 = v47;
      }
    }

    v77 = qword_E0A830;
    v78 = *&v1[qword_E0A830];
    if (v78)
    {
      v68 = *&v1[qword_E0A830];
    }

    else
    {
      type metadata accessor for CustomRoomAlbumCell(0);
      v101 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v102 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v103 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v101[v103] = v102;
      swift_retain_n();
      v104 = v101;

      v105 = *&v104[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
      v106 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v107 = *&v105[v106];
      *&v105[v106] = v102;

      v108 = v105;
      sub_2E6210(v107);

      v109 = *&v1[v77];
      *&v1[v77] = v104;
      v110 = v104;

      v68 = v110;
      v78 = 0;
    }

    v111 = v78;
    v112 = [v335 headlineText];
    if (v112)
    {
      v113 = v112;
      v114 = sub_AB92A0();
      v116 = v115;

      v117 = v114 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v117 = 0;
      v116 = 0xE000000000000000;
    }

    v118 = [v335 descriptionText];
    if (v118)
    {
      v119 = v118;
      v120 = sub_AB92A0();
      v122 = v121;

      v123 = v120 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v123 = 0;
      v122 = 0xE000000000000000;
    }

    [v1 loadViewIfNeeded];
    v124 = *&v1[v336];
    if (!v124)
    {
      goto LABEL_267;
    }

    v125 = v124;
    [v125 bounds];
    v127 = v126;
    v129 = v128;
    v131 = v130;
    v133 = v132;
    [v125 music_inheritedLayoutInsets];
    v347.origin.x = v127;
    v347.origin.y = v129;
    v347.size.width = v131;
    v347.size.height = v133;
    CGRectGetWidth(v347);

    v134 = sub_4B4A50();

    if ((v116 & 0x2000000000000000) != 0)
    {
      v135 = HIBYTE(v116) & 0xF;
    }

    else
    {
      v135 = v117;
    }

    if ((v122 & 0x2000000000000000) != 0)
    {
      v136 = HIBYTE(v122) & 0xF;
    }

    else
    {
      v136 = v123;
    }

    if (v135)
    {
      swift_beginAccess();
    }

    v22 = v338;
    if (v134 == 2)
    {
      [v338 displayScale];
      sub_AB3A00();
      [v68 bounds];
      v138 = v137;
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v145 = &v68[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
      swift_beginAccess();
      v348.origin.x = UIEdgeInsetsInsetRect(v138, v140, v142, v144, *v145, v145[1]);
      CGRectGetWidth(v348);
      [v338 displayScale];
      sub_AB3A00();
    }

    v146 = &v68[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
    swift_beginAccess();
    v147 = &v68[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];
    sub_4C6D80(v134, v68[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment], v338, *&v68[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents], *&v68[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8], *&v68[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16]);
    if (v136)
    {
      v148 = *(v147 + 3);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_AF7C50;
      *(v148 + 32) = *v147;
      *(v148 + 40) = *(v147 + 1);

      v22 = v338;
    }

    v149.n128_f64[0] = sub_2F48A4(v148, v22, 0, 0);
    if (v148 >> 62)
    {
      v150 = sub_ABB060();
      if (v150)
      {
LABEL_126:
        v151 = __OFSUB__(v150, 1);
        v152 = v150 - 1;
        if (v151)
        {
          __break(1u);
        }

        else if ((v148 & 0xC000000000000001) == 0)
        {
          if ((v152 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v152 < *(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8)))
          {

LABEL_131:

            swift_beginAccess();

            v22 = v338;
            goto LABEL_257;
          }

          __break(1u);
          goto LABEL_264;
        }

        sub_36003C(v152, v148, v149);
        goto LABEL_131;
      }
    }

    else
    {
      v150 = *(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8));
      if (v150)
      {
        goto LABEL_126;
      }
    }

LABEL_257:

    if (v134 == 2)
    {
      [v22 displayScale];
      sub_AB3A00();
      [v68 bounds];
      v351.origin.x = UIEdgeInsetsInsetRect(v330, v331, v332, v333, *v146, v146[1]);
      CGRectGetWidth(v351);
      [v22 displayScale];
      sub_AB3A00();
    }

    goto LABEL_77;
  }

LABEL_30:
  if (*&v1[v7])
  {
    type metadata accessor for JSGridModelResponse();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
      v33 = sub_AB3770().super.isa;
      v34 = [v32 itemAtIndexPath:v33];

      v22 = v338;
      if (v34)
      {
        type metadata accessor for JSGridItemButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = qword_E0A840;
          v37 = *&v1[qword_E0A840];
          if (v37)
          {
            v38 = *&v1[qword_E0A840];
          }

          else
          {
            v79 = v35;
            type metadata accessor for GridItemButtonCell();
            v80 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v81 = *(&stru_338.offset + (swift_isaMask & *v79));
            v82 = swift_unknownObjectRetain();
            v83 = v81(v82);
            v84 = v79;
            v85 = &v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
            v86 = *&v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
            v87 = *&v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8];
            *v85 = v83;
            v85[1] = v88;
            sub_262F1C(v86, v87);

            v90 = (*(&stru_338.reserved2 + (swift_isaMask & *v79)))(v89);
            v92 = v91;
            swift_unknownObjectRelease();
            v93.n128_f64[0] = sub_263108(v90, v92);
            v94 = (*&stru_478.segname[swift_isaMask & *v84])(v93);
            if (v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
            {
              v95 = 0x64657265746E6563;
            }

            else
            {
              v95 = 1952867692;
            }

            if (v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
            {
              v96 = 0xE800000000000000;
            }

            else
            {
              v96 = 0xE400000000000000;
            }

            v97 = v94 & 1;
            v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] = v97;
            if (v97)
            {
              v98 = 0x64657265746E6563;
            }

            else
            {
              v98 = 1952867692;
            }

            if (v97)
            {
              v99 = 0xE800000000000000;
            }

            else
            {
              v99 = 0xE400000000000000;
            }

            if (v95 == v98 && v96 == v99)
            {
            }

            else
            {
              v172 = sub_ABB3C0();

              if ((v172 & 1) == 0)
              {
                v100 = [v80 setNeedsLayout];
              }
            }

            v173 = (*(&stru_478.size + (swift_isaMask & *v84)))(v100);
            if (v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle])
            {
              v174 = 0x656B6F727473;
            }

            else
            {
              v174 = 1819044198;
            }

            if (v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle])
            {
              v175 = 0xE600000000000000;
            }

            else
            {
              v175 = 0xE400000000000000;
            }

            v176 = v173 & 1;
            v80[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle] = v176;
            if (v176)
            {
              v177 = 0x656B6F727473;
            }

            else
            {
              v177 = 1819044198;
            }

            if (v176)
            {
              v178 = 0xE600000000000000;
            }

            else
            {
              v178 = 0xE400000000000000;
            }

            if (v174 == v177 && v175 == v178)
            {
            }

            else
            {
              v179 = sub_ABB3C0();

              if ((v179 & 1) == 0)
              {
                sub_263DA8();
              }
            }

            v180 = *&v1[v36];
            *&v1[v36] = v80;
            v38 = v80;

            v37 = 0;
          }

          v181 = v38;
          v182 = v37;
          v183 = [v1 traitCollection];
          v184 = [v183 preferredContentSizeCategory];

          sub_ABA6C0();
          sub_AB4CD0();
          sub_ABA6D0();
          [v181 updateTraitsIfNeeded];

          [v1 loadViewIfNeeded];
          v185 = *&v1[v336];
          if (v185)
          {
            [v185 bounds];
            v187 = v186;
            v189 = v188;
            v190 = *&v181[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
            v191 = type metadata accessor for SubtitledButton();
            v340.receiver = v190;
            v340.super_class = v191;
            v192 = v190;
            objc_msgSendSuper2(&v340, "sizeThatFits:", v187, v189);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_266;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v67 = [v335 contentItem];
  if (!v67)
  {
    goto LABEL_28;
  }

  v68 = v67;
  v69 = MPModelStoreBrowseContentItem.kind.getter();
  v71 = v69;
  v72 = v337;
  if (v70 <= 5u)
  {
    if (v70 > 2u)
    {
      switch(v70)
      {
        case 3u:
          if ([v69 curatorKind] != &dword_0 + 3)
          {
            v193 = &v1[qword_E0A7E8];
            if (v1[qword_E0A7E8 + 16])
            {
              sub_494D44();
              v195 = v194;
              v196 = [v1 traitCollection];
              v197 = sub_1FE9B0(v196, 0, v195);

              *v193 = v195;
              v193[1] = v197;
              *(v193 + 16) = 0;
            }

            sub_4B306C();

            sub_3EB30(v71, 3);
            swift_unknownObjectRelease();

            return;
          }

          sub_4B79A0();
          sub_4B306C();

          v160 = v71;
          v161 = 3;
          break;
        case 4u:
          sub_4B71E8();
          sub_4B306C();

          v160 = v71;
          v161 = 4;
          break;
        case 5u:
          sub_4B7588();

          sub_3EB30(v71, 5);
          swift_unknownObjectRelease();

          return;
        default:
          goto LABEL_151;
      }

LABEL_147:
      sub_3EB30(v160, v161);

      swift_unknownObjectRelease();
      return;
    }

    if (v70)
    {
      if (v70 == 1)
      {
        sub_4B785C();
        sub_4B306C();

        sub_3EB30(v71, 1);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_151;
    }

    v153 = sub_AB37F0();
    v154 = *&v1[v7];
    if (v154)
    {
      v155 = [v154 results];
      if (!v155)
      {
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
        return;
      }

      v156 = v155;
      v157 = [v155 sectionAtIndex:v153];

      v22 = v338;
      if (v157)
      {
        objc_opt_self();
        v158 = swift_dynamicCastObjCClass();
        if (v158)
        {
          v159 = [v158 isRankedList];
          swift_unknownObjectRelease();
          if (v159)
          {
            sub_4B73EC();
LABEL_209:

            sub_3EB30(v71, 0);
            swift_unknownObjectRelease();

            return;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    sub_4B72AC();
    goto LABEL_209;
  }

  if (v70 > 8u)
  {
    if (v70 == 9)
    {
      v165 = &v1[qword_E0A800];
      if (v1[qword_E0A800 + 16])
      {
        sub_4B459C();
        v167 = v166;
        v168 = [v1 traitCollection];
        [v168 displayScale];
        sub_AB3A00();
        v170 = v169;

        *v165 = v167;
        *(v165 + 1) = v170;
        v165[16] = 0;
      }

      [v22 displayScale];
      sub_AB3A00();

      sub_3EB30(v71, 9);
      swift_unknownObjectRelease();

      return;
    }

    if (v70 != 12)
    {
      if (v70 != 255)
      {
        goto LABEL_151;
      }

LABEL_77:

      swift_unknownObjectRelease();
      return;
    }

    if ([v22 horizontalSizeClass] != &dword_0 + 1)
    {
      sub_4B7B2C();
LABEL_241:
      [v22 displayScale];
      sub_AB3A00();

      v160 = v71;
      v161 = 12;
      goto LABEL_147;
    }

    v162 = qword_E0A848;
    v163 = *&v1[qword_E0A848];
    if (v163)
    {
      v164 = *&v1[qword_E0A848];
    }

    else
    {
      type metadata accessor for TVShowEpisodeCell(0);
      v198 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v199 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v200 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
      swift_beginAccess();
      *&v198[v200] = v199;
      swift_retain_n();

      sub_43B328();

      v201 = *&v1[v162];
      *&v1[v162] = v198;
      v202 = v198;

      v72 = v337;
      v164 = v202;
      v163 = 0;
    }

    v203 = v71;
    v204 = v163;
    v205 = [v335 headlineText];
    if (v205)
    {
      v206 = v205;
      v207 = sub_AB92A0();
      v209 = v208;
    }

    else
    {
      v207 = 0;
      v209 = 0xE000000000000000;
    }

    v210 = &v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
    v211 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
    v212 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8];
    *v210 = v207;
    v210[1] = v209;
    sub_43A730(v211, v212);

    v213 = [v335 titleText];
    if (v213)
    {
      v214 = v213;
      v215 = sub_AB92A0();
      v217 = v216;

      v218 = HIBYTE(v217) & 0xF;
      if ((v217 & 0x2000000000000000) == 0)
      {
        v218 = v215 & 0xFFFFFFFFFFFFLL;
      }

      if (v218)
      {
LABEL_234:
        v293 = &v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
        v294 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
        v295 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8];
        *v293 = v215;
        v293[1] = v217;
        sub_43A944(v294, v295);

        v296 = [v335 descriptionText];
        if (v296)
        {
          v297 = v296;
          v298 = sub_AB92A0();
          v300 = v299;

          v301 = HIBYTE(v300) & 0xF;
          if ((v300 & 0x2000000000000000) == 0)
          {
            v301 = v298 & 0xFFFFFFFFFFFFLL;
          }

          if (v301)
          {
            goto LABEL_240;
          }
        }

        v298 = 0;
        v300 = 0xE000000000000000;
LABEL_240:
        v302 = &v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
        v303 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
        v304 = *&v164[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
        *v302 = v298;
        v302[1] = v300;
        v305 = v164;
        sub_43ABF0(v303, v304);

        sub_4B41DC();
        sub_43C3DC(v306);

        v22 = v338;
        v71 = v203;
        goto LABEL_241;
      }
    }

    v219 = [v203 title];
    if (v219)
    {
      v220 = v219;
      v215 = sub_AB92A0();
      v217 = v221;
    }

    else
    {
      v215 = 0;
      v217 = 0xE000000000000000;
    }

    goto LABEL_234;
  }

  if (v70 == 6)
  {
    sub_4B7C9C();

    sub_3EB30(v71, 6);
    swift_unknownObjectRelease();

    return;
  }

  if (v70 != 7)
  {
    if (v70 == 8)
    {
      if ([v22 horizontalSizeClass] != &dword_0 + 1)
      {
        sub_4B7B4C();
LABEL_254:
        [v22 displayScale];
        sub_AB3A00();

        v160 = v71;
        v161 = 8;
        goto LABEL_147;
      }

      v73 = v71;
      v74 = qword_E0A848;
      v75 = *&v1[qword_E0A848];
      if (v75)
      {
        v76 = *&v1[qword_E0A848];
      }

      else
      {
        type metadata accessor for TVShowEpisodeCell(0);
        v222 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v223 = *&v1[direct field offset for BrowseCollectionViewController.textDrawingCache];
        v224 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
        swift_beginAccess();
        *&v222[v224] = v223;
        swift_retain_n();

        sub_43B328();

        v225 = *&v1[v74];
        *&v1[v74] = v222;
        v226 = v222;

        v72 = v337;
        v76 = v226;
        v75 = 0;
      }

      v227 = v75;
      v228 = [v335 headlineText];
      if (v228)
      {
        v229 = v228;
        v230 = sub_AB92A0();
        v232 = v231;
      }

      else
      {
        v230 = 0;
        v232 = 0xE000000000000000;
      }

      v233 = &v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
      v234 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
      v235 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8];
      *v233 = v230;
      v233[1] = v232;
      sub_43A730(v234, v235);

      v236 = [v335 titleText];
      if (v236)
      {
        v237 = v236;
        v238 = sub_AB92A0();
        v240 = v239;

        v241 = HIBYTE(v240) & 0xF;
        if ((v240 & 0x2000000000000000) == 0)
        {
          v241 = v238 & 0xFFFFFFFFFFFFLL;
        }

        if (v241)
        {
LABEL_243:
          v307 = &v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
          v308 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
          v309 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8];
          *v307 = v238;
          v307[1] = v240;
          sub_43A944(v308, v309);

          v310 = [v335 descriptionText];
          if (v310)
          {
            v311 = v310;
            v312 = sub_AB92A0();
            v314 = v313;

            v315 = HIBYTE(v314) & 0xF;
            if ((v314 & 0x2000000000000000) == 0)
            {
              v315 = v312 & 0xFFFFFFFFFFFFLL;
            }

            if (v315)
            {
              v316 = &v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
              v317 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
              v318 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
              *v316 = v312;
              v316[1] = v314;
              v319 = v76;
              sub_43ABF0(v317, v318);

LABEL_253:
              sub_4B41DC();
              sub_43C3DC(v329);

              v22 = v338;
              v71 = v73;
              goto LABEL_254;
            }
          }

          v320 = [v73 descriptionText];
          if (v320)
          {
            v321 = v320;
            v322 = sub_AB92A0();
            v324 = v323;
          }

          else
          {
            v322 = 0;
            v324 = 0xE000000000000000;
          }

          v325 = &v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
          v326 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
          v327 = *&v76[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
          *v325 = v322;
          v325[1] = v324;
          sub_43ABF0(v326, v327);

          v328 = v76;
          goto LABEL_253;
        }
      }

      v242 = [v73 title];
      if (v242)
      {
        v243 = v242;
        v238 = sub_AB92A0();
        v240 = v244;
      }

      else
      {
        v238 = 0;
        v240 = 0xE000000000000000;
      }

      goto LABEL_243;
    }

LABEL_151:
    v171 = v70;

    sub_3EB30(v71, v171);
    swift_unknownObjectRelease();

    return;
  }

  if ([v69 hasVideo])
  {
    sub_4B772C();
    [v22 displayScale];
    sub_AB3A00();
  }

  else
  {
    sub_4B7660();
    sub_14C0F8(v22, 0, v341);
  }

  sub_3EB30(v71, 7);
  swift_unknownObjectRelease();
}

void sub_4B71E8()
{
  v1 = &v0[qword_E0A7C0];
  if (v0[qword_E0A7C0 + 16])
  {
    sub_4B306C();
    if ((v2 & 1) == 0)
    {
      v10 = sub_4B72AC();
      goto LABEL_7;
    }

    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 bounds];
      v5 = v4;
      v6 = [v0 traitCollection];
      sub_1ACC94(v6);
      v8 = v7;

      v9 = v8;
      v10 = v5;
LABEL_7:
      *v1 = v10;
      *(v1 + 1) = v9;
      v1[16] = 0;
      return;
    }

    __break(1u);
  }
}

double sub_4B72AC()
{
  v1 = &v0[qword_E0A7A8];
  if ((v0[qword_E0A7A8 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_494D44();
  v3 = v2;
  v4 = [v0 traitCollection];
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v6 = v5;

  sub_2F48A4(v6, v4, 0, 0);

  if (qword_DE6948 != -1)
  {
    swift_once();
  }

  [v4 displayScale];
  sub_AB3A00();
  v8 = v7;

  *v1 = v3;
  *(v1 + 1) = v8;
  v1[16] = 0;
  return v3;
}

double sub_4B73EC()
{
  v1 = &v0[qword_E0A7B0];
  if ((v0[qword_E0A7B0 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_494D44();
  v3 = v2;
  v4 = [v0 traitCollection];
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v6 = v5;
  v11 = v5;

  v7 = sub_1AF620();
  if (v6 >> 62 && sub_ABB060() < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AF76C(0, 0, v7);

  sub_2F48A4(v11, v4, 0, 0);

  if (qword_DE6948 != -1)
  {
LABEL_9:
    swift_once();
  }

  [v4 displayScale];
  sub_AB3A00();
  v9 = v8;

  *v1 = v3;
  *(v1 + 1) = v9;
  v1[16] = 0;
  return v3;
}

void sub_4B7588()
{
  v1 = &v0[qword_E0A7C8];
  if (v0[qword_E0A7C8 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      [v3 bounds];
      Width = CGRectGetWidth(v8);
      v5 = [v0 traitCollection];
      [v3 bounds];
      CGRectGetWidth(v9);
      sub_B4734(v5);
      v7 = v6;

      *v1 = Width;
      *(v1 + 1) = v7;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B7660()
{
  v1 = &v0[qword_E0A7D0];
  if (v0[qword_E0A7D0 + 16])
  {
    v2 = [v0 traitCollection];
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      Width = CGRectGetWidth(v9);
      v6 = sub_14CD64(v2, 0x8000u, Width);
      v8 = v7;

      *v1 = v6;
      *(v1 + 1) = v8;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B772C()
{
  v1 = &v0[qword_E0A7D8];
  if (v0[qword_E0A7D8 + 16])
  {
    sub_4B4384();
    v3 = v2;
    v4 = [v0 traitCollection];
    sub_42C174();
    v6 = sub_2F48A4(v5, v4, 0, 0);
    if (qword_DE6BB8 != -1)
    {
      swift_once();
    }

    v7 = *&xmmword_E05F98;
    v8 = *&qword_E05FA8;

    *v1 = v3;
    v1[1] = v3 / 1.77777778 + v6 + v7 + v8;
    *(v1 + 16) = 0;
  }
}

void sub_4B785C()
{
  v1 = &v0[qword_E0A7E0];
  if (v0[qword_E0A7E0 + 16])
  {
    sub_4B306C();
    if ((v2 & 1) == 0)
    {
      sub_4B4B3C();
      v5 = v10;
      v11 = [v0 traitCollection];
      v12 = sub_1FE9B0(v11, 0, v5);

      v9 = v12;
      goto LABEL_7;
    }

    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 bounds];
      v5 = v4;
      v6 = [v0 traitCollection];
      sub_15E820();
      v8 = sub_2F48A4(v7, v6, 0, 0);

      v9 = fmax(v8, 80.0);
LABEL_7:
      *v1 = v5;
      v1[1] = v9;
      *(v1 + 16) = 0;
      return;
    }

    __break(1u);
  }
}

void sub_4B79A0()
{
  v1 = &v0[qword_E0A7F0];
  if (v0[qword_E0A7F0 + 16])
  {
    sub_4B306C();
    if ((v2 & 1) == 0)
    {
      sub_494D44();
      v12 = v11;
      v13 = [v0 traitCollection];
      v14 = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      *(inited + 32) = v14;

      v16 = sub_2F48A4(inited, v13, 0, 0);

      swift_setDeallocating();
      swift_arrayDestroy();

      v10 = v12;
      v9 = v12 + v16 + 0.0;
      goto LABEL_7;
    }

    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 bounds];
      v5 = v4;
      v6 = [v0 traitCollection];
      sub_1ACC94(v6);
      v8 = v7;

      v9 = v8;
      v10 = v5;
LABEL_7:
      *v1 = v10;
      v1[1] = v9;
      *(v1 + 16) = 0;
      return;
    }

    __break(1u);
  }
}

void sub_4B7B6C(void *a1, double (*a2)(void))
{
  v3 = &v2[*a1];
  if (v3[2])
  {
    v4 = a2();
    v5 = [v2 traitCollection];
    sub_43C4F8();
    v7 = sub_2F48A4(v6, v5, 0, 0);
    if (qword_DE6BD8 != -1)
    {
      swift_once();
    }

    v8 = *&xmmword_E07070;
    v9 = *&qword_E07080;

    *v3 = v4;
    v3[1] = v4 / 1.77777778 + v7 + v8 + v9;
    *(v3 + 16) = 0;
  }
}

void sub_4B7C9C()
{
  v1 = &v0[qword_E0A808];
  if (v0[qword_E0A808 + 16])
  {
    v2 = [v0 traitCollection];
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      v4 = v3;
      [v4 bounds];
      v6 = sub_B2768(v2, v5);
      v8 = v7;

      *v1 = v6;
      *(v1 + 1) = v8;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B7D64()
{
  v1 = &v0[qword_E0A820];
  if (v0[qword_E0A820 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v3 music_inheritedLayoutInsets];
      v13 = v12;
      v15 = v14;
      v21.origin.x = v5;
      v21.origin.y = v7;
      v21.size.width = v9;
      v21.size.height = v11;
      Width = CGRectGetWidth(v21);

      v17 = Width - v13 - v15;
      v18 = [v0 traitCollection];
      [v18 horizontalSizeClass];
      [v18 displayScale];
      sub_AB3A00();
      v20 = v19;

      *v1 = v17;
      v1[1] = v20 + 20.0;
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4B7EB4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v4 = sub_AB9260();
  [v3 appendSection:v4];

  v5 = *(v1 + qword_DFE2F0);
  if (v5)
  {
    v6 = [v5 results];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_3E0C5C;
      *(v9 + 24) = v8;
      v12[4] = sub_3E12F8;
      v12[5] = v9;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_1B7EB0;
      v12[3] = &block_descriptor_224;
      v10 = _Block_copy(v12);
      v11 = v3;

      [v7 enumerateItemsInSectionAtIndex:a1 usingBlock:v10];
      _Block_release(v10);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }
    }
  }
}

id sub_4B808C(uint64_t a1)
{
  result = *(v1 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (result)
    {
      v4 = result;
      v5 = [result sectionAtIndex:a1];

      if (v5)
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = [v6 isRankedList];
        }

        else
        {
          v7 = 0;
        }

        swift_unknownObjectRelease();
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_4B8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v4 = *(v3 + qword_DFE2F0);
  if (!v4 || (v8 = v4, v9 = [v8 results], v8, !v9))
  {
    v13 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = &v15;
  v10[5] = &v16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_3E0C40;
  *(v11 + 24) = v10;
  v14[4] = sub_2E34E8;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1B7EB0;
  v14[3] = &block_descriptor_214;
  v12 = _Block_copy(v14);

  [v9 enumerateItemsInSectionAtIndex:a1 usingBlock:v12];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    v13 = sub_3E0C40;
LABEL_6:
    sub_17654(v13, v10);
    return;
  }

  __break(1u);
}

uint64_t sub_4B8354(uint64_t a1, char a2)
{
  v3 = MPModelStoreBrowseContentItem.kind.getter();
  if (v4 == 255)
  {
    goto LABEL_5;
  }

  if (v4 != 7)
  {
    sub_3EB30(v3, v4);
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v5 = v3;
  v6 = [v3 hasVideo];
  sub_3EB30(v5, 7);
  v7 = v6 ^ a2 ^ 1;
  return v7 & 1;
}

id sub_4B83D0(uint64_t a1)
{
  v3 = *&v1[qword_DFE2F0];
  if (!v3)
  {
    goto LABEL_15;
  }

  result = [v3 results];
  if (result)
  {
    v5 = result;
    v6 = [result sectionAtIndex:a1];

    if (!v6)
    {
      goto LABEL_15;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    if ([v7 uniformCellType] == &dword_0 + 1 || objc_msgSend(v8, "uniformCellType") == &dword_0 + 3 || objc_msgSend(v8, "uniformCellType") == &dword_4)
    {
      swift_unknownObjectRelease();
      v9 = 0;
      return (v9 & 1);
    }

    if ([v8 uniformCellType] != &dword_4 + 2)
    {
LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    result = [v1 view];
    if (result)
    {
      v10 = result;
      [result bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [v1 traitCollection];
      v24.origin.x = v12;
      v24.origin.y = v14;
      v24.size.width = v16;
      v24.size.height = v18;
      Width = CGRectGetWidth(v24);
      sub_471A4();
      if (sub_AB38F0())
      {
        v20 = [v19 horizontalSizeClass];

        swift_unknownObjectRelease();
        if (v20 == &dword_0 + 2)
        {
          v9 = 0;
          return (v9 & 1);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

LABEL_15:
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_4B8148(a1, sub_4BE3D8, v21);
      v9 = v22;

      return (v9 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_4B8658(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_4B306C();
    if (v4)
    {
LABEL_3:

      return &dword_0 + 1;
    }

    v5 = MPModelStoreBrowseContentItem.kind.getter();
    if (v6 == 5)
    {
      sub_3EB30(v5, 5);
      goto LABEL_3;
    }

    if (v6 != 255)
    {
      if (v6 == 7)
      {
        v7 = v5;
        v8 = [v5 hasVideo];
        sub_3EB30(v7, 7);

        return ((v8 & 1) == 0);
      }

      sub_3EB30(v5, v6);
    }

    return 0;
  }

  return result;
}

void sub_4B8734(void *a1, char a2)
{
  v5 = v2 + qword_E0A7A8;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = v2 + qword_E0A7B0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v2 + qword_E0A7B8;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v2 + qword_E0A7C0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v2 + qword_E0A7C8;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v2 + qword_E0A7D0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = v2 + qword_E0A7D8;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = v2 + qword_E0A7E0;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = v2 + qword_E0A7F0;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v2 + qword_E0A7F8;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v2 + qword_E0A800;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v2 + qword_E0A808;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v2 + qword_E0A810;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_E0A818;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v2 + qword_E0A820;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  *(v2 + qword_E0A828) = 2;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
  swift_dynamicCastMetatypeUnconditional();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:?];
  if (a2)
  {
    sub_4B8938();
  }
}

void sub_4B8938()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v41 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v30 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1D10, &qword_B12560);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v0[qword_E0A860];
  v11 = *&v0[qword_E0A860 + 8];
  [v0 loadViewIfNeeded];
  v37 = v0;
  v12 = *&v0[qword_DFE2F8];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v35 = v11;
  v36 = v10;
  v14 = UICollectionView.visibleSupplementaryElements(of:)(v10, v11);
  v32 = v15;
  v33 = v16;

  v17 = 0;
  v30 = v2 + 16;
  v31 = v2;
  v18 = *(v14 + 16);
  v38 = (v2 + 56);
  v39 = v14;
  v19 = (v2 + 48);
  v20 = (v2 + 32);
  v21 = (v2 + 8);
  for (i = v18; ; v18 = i)
  {
    v22 = v40;
    if (v17 == v18)
    {
      v23 = 1;
      v17 = v18;
      goto LABEL_8;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v14 + 16))
    {
      goto LABEL_14;
    }

    (*(v31 + 16))(v40, v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v1);
    v23 = 0;
    ++v17;
LABEL_8:
    v24 = 1;
    (*v38)(v22, v23, 1, v1);
    v25 = v22;
    v26 = v41;
    sub_1766C(v25, v41);
    if ((*v19)(v26, 1, v1) != 1)
    {
      (*v20)(v4, v41, v1);
      v32(v4);
      (*v21)(v4, v1);
      v24 = 0;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20, &qword_AFFCE0);
    (*(*(v27 - 8) + 56))(v9, v24, 1, v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1D20, &qword_AFFCE0);
    if ((*(*(v28 - 8) + 48))(v9, 1, v28) == 1)
    {

      return;
    }

    v29 = *&v9[*(v28 + 48)];
    (*v20)(v4, v9, v1);
    sub_4B3EE8(v29, v36, v35);
    (*v21)(v4, v1);

    v14 = v39;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_4B8D60(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v409 - v4;
  v6 = qword_DFE2F0;
  v7 = *&v1[qword_DFE2F0];
  if (v7)
  {
    v8 = [v7 results];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 sectionAtIndex:sub_AB37F0()];

    if (v10)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v11 = *&v2[v6];
        if (!v11)
        {
          goto LABEL_29;
        }

LABEL_9:
        v428 = v7;
        v12 = v11;
        v13 = [v12 results];

        if (v13)
        {
          isa = sub_AB3770().super.isa;
          v15 = [v13 itemAtIndexPath:isa];

          if (v15)
          {
            objc_opt_self();
            v16 = swift_dynamicCastObjCClass();
            if (v16)
            {
              v17 = v16;
              v18 = &selRef_isMovingFromParentViewController;
              if (v428 && [v428 uniformCellType] == &dword_4 + 3)
              {
                type metadata accessor for PosterCell(0);
                v19 = swift_dynamicCastClass();
                if (v19)
                {
                  v20 = v19;
                  v21 = v15;
                  v22 = [v17 videoBackgroundArtworkCatalog];
                  v23 = *(v20 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog);
                  *(v20 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = v22;
                  v24 = v22;

                  v25 = v22;
                  v15 = v21;
                  sub_751F4(v25);
                  sub_45CBB4();
                }

                v26 = [v2 traitCollection];
                v27 = [v26 horizontalSizeClass];

                v28 = &selRef_editorialArtworkCatalog;
                if (v27 != &dword_0 + 2)
                {
                  v28 = &selRef_backgroundArtworkCatalog;
                }

                v427 = [v17 *v28];
                v18 = &selRef_isMovingFromParentViewController;
              }

              else
              {
                v427 = 0;
              }

              v29 = [v17 contentItem];
              if (v29)
              {
                v30 = v29;
                v426 = v17;
                v31 = MPModelStoreBrowseContentItem.kind.getter();
                if (v32 != 0xFF)
                {
                  v33 = v31;
                  LODWORD(v34) = v32;
                  type metadata accessor for FeaturedMaterialCell(0);
                  if (!swift_dynamicCastClass())
                  {
                    type metadata accessor for HorizontalLockupCollectionViewCell(0);
                    v35 = swift_dynamicCastClass();
                    v424 = v30;
                    v423 = v15;
                    v422 = v33;
                    if (v35)
                    {
                      v425 = v35;
                      v36 = [v30 innerObject];
                      if (v36)
                      {
                        v37 = v36;
                        MPModelObject.artworkPlaceholder.getter(&v429);

                        v38 = v433;
                        v39 = v432;
                        v40 = v431;
                        v41 = v430;
                        v42 = v429;
                        v43 = v429;
                        v44 = v430;
                        v419 = v431;
                      }

                      else
                      {
                        v51 = Artwork.Placeholder.music.unsafeMutableAddressor();
                        v43 = *v51;
                        v44 = v51[1];
                        v53 = v51[2];
                        v52 = v51[3];
                        v421 = *(v51 + 2);
                        v419 = v53;
                        v39 = v52;
                        v42 = v43;
                        v54 = v44;
                        v40 = v53;
                        v38 = v421;
                        v41 = v54;
                      }

                      v410 = v43;
                      v411 = v44;
                      v418 = v40;
                      v421 = v38;
                      v55 = &v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
                      v417 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
                      v416 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
                      v415 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
                      v414 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
                      v413 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
                      v412 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
                      *v55 = v43;
                      *(v55 + 1) = v44;
                      *(v55 + 2) = v40;
                      *(v55 + 3) = v39;
                      *(v55 + 2) = v38;
                      v56 = v42;
                      v57 = v41;
                      v58 = v419;
                      v59 = v39;
                      v60 = v56;
                      v61 = v57;
                      v62 = v58;
                      v419 = v59;
                      sub_2F1C8(v417, v416, v415, v414);
                      v63 = *&v425[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
                      v64 = *(v63 + 168);
                      v441[0] = *(v63 + 152);
                      v441[1] = v64;
                      v441[2] = *(v63 + 184);
                      v65 = v411;
                      *(v63 + 152) = v410;
                      *(v63 + 160) = v65;
                      *(v63 + 168) = v418;
                      *(v63 + 176) = v39;
                      *(v63 + 184) = v421;
                      v66 = v60;
                      v67 = v61;
                      v68 = v62;
                      v69 = v419;
                      sub_75948(v441);
                      sub_12E1C(v441, &unk_DF8690, &unk_AF9900);

                      v30 = v424;
                      v33 = v422;
                      v18 = &selRef_isMovingFromParentViewController;
                    }

                    type metadata accessor for VerticalLockupCollectionViewCell(0);
                    v70 = swift_dynamicCastClass();
                    if (v70)
                    {
                      *&v421 = v70;
                      v71 = [v30 innerObject];
                      v420 = v34;
                      if (v71)
                      {
                        v72 = v71;
                        MPModelObject.artworkPlaceholder.getter(&v434);

                        v74 = v438;
                        v73 = v439;
                        v75 = v436;
                        v425 = v437;
                        v76 = v434;
                        v77 = v435;
                        v78 = v434;
                        v418 = v435;
                        v419 = v436;
                      }

                      else
                      {
                        v79 = Artwork.Placeholder.music.unsafeMutableAddressor();
                        v80 = *v79;
                        v81 = v79[1];
                        v82 = v79[3];
                        v74 = v79[4];
                        v73 = v79[5];
                        v75 = v79[2];
                        v419 = v75;
                        v425 = v82;
                        v78 = v80;
                        v76 = v80;
                        v77 = v81;
                        v418 = v81;
                      }

                      v83 = v421 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder;
                      swift_beginAccess();
                      v84 = *(v83 + 8);
                      v417 = *v83;
                      v416 = v84;
                      v85 = *(v83 + 24);
                      v415 = *(v83 + 16);
                      v414 = v85;
                      v86 = *(v83 + 40);
                      v413 = *(v83 + 32);
                      v412 = v86;
                      *v83 = v78;
                      *(v83 + 8) = v77;
                      v410 = v77;
                      v411 = v75;
                      *(v83 + 16) = v75;
                      v87 = v425;
                      *(v83 + 24) = v425;
                      v425 = v87;
                      *(v83 + 32) = v74;
                      *(v83 + 40) = v73;
                      v88 = v76;
                      v89 = v418;
                      v90 = v419;
                      v91 = v87;
                      v92 = v88;
                      v93 = v89;
                      v94 = v90;
                      v34 = v91;
                      sub_2F1C8(v417, v416, v415, v414);
                      v95 = *(v421 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
                      v96 = *(v95 + 168);
                      v440[0] = *(v95 + 152);
                      v440[1] = v96;
                      v440[2] = *(v95 + 184);
                      v97 = v410;
                      *(v95 + 152) = v78;
                      *(v95 + 160) = v97;
                      v98 = v425;
                      *(v95 + 168) = v411;
                      *(v95 + 176) = v98;
                      *(v95 + 184) = v74;
                      *(v95 + 192) = v73;
                      v99 = v92;
                      v100 = v93;
                      v101 = v94;
                      v102 = v34;
                      sub_75948(v440);
                      sub_12E1C(v440, &unk_DF8690, &unk_AF9900);

                      v30 = v424;
                      v33 = v422;
                      v18 = &selRef_isMovingFromParentViewController;
                      LOBYTE(v34) = v420;
                    }
                  }

                  if (v34 <= 5u)
                  {
                    if (v34 > 2u)
                    {
                      if (v34 != 3)
                      {
                        if (v34 != 4)
                        {
                          v103 = v428;
                          if (v34 == 5)
                          {
                            v104 = v426;
                            if (v428)
                            {
                              if ([v428 v18[196]] == &dword_0 + 1)
                              {
                                type metadata accessor for AlbumCell(0);
                                v105 = swift_dynamicCastClass();
                                if (v105)
                                {
                                  v106 = v105;
                                  v107 = v33;
                                  v108 = [v104 backgroundArtworkCatalog];
                                  if (!v108)
                                  {
                                    goto LABEL_166;
                                  }

                                  goto LABEL_167;
                                }

                                goto LABEL_284;
                              }

                              if ([v428 v18[196]] == &dword_0 + 3)
                              {
                                type metadata accessor for CustomRoomAlbumCell(0);
                                v226 = swift_dynamicCastClass();
                                if (v226)
                                {
                                  v106 = v226;
                                  v107 = v33;
                                  v108 = [v104 backgroundArtworkCatalog];
                                  if (!v108)
                                  {
LABEL_166:
                                    v108 = [v107 artworkCatalog];
                                  }

LABEL_167:
                                  v227 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                                  swift_beginAccess();
                                  v228 = *(v106 + v227);
                                  *(v106 + v227) = v108;
                                  v229 = v108;

                                  sub_74EA4(v108);
                                  v126 = v107;
                                  v144 = 5;
                                  goto LABEL_355;
                                }

                                goto LABEL_284;
                              }

                              if ([v428 v18[196]] == &dword_4 + 1)
                              {
                                type metadata accessor for ShowcaseCell(0);
                                v277 = swift_dynamicCastClass();
                                if (v277)
                                {
                                  v278 = v277;
                                  v279 = [v104 backgroundArtworkCatalog];
                                  if (v279)
                                  {
LABEL_350:
                                    v343 = *(v278 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                                    *(v278 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v279;
                                    v342 = v33;
LABEL_351:
                                    v403 = v279;
                                    v404 = v279;

                                    sub_74EA4(v403);
                                    v126 = v342;
LABEL_354:
                                    v144 = 5;
                                    goto LABEL_355;
                                  }

LABEL_349:
                                  v279 = [v33 artworkCatalog];
                                  goto LABEL_350;
                                }

LABEL_284:

                                v344 = &v442;
LABEL_353:

                                v126 = v33;
                                goto LABEL_354;
                              }

                              if ([v428 v18[196]] == &dword_4 + 2)
                              {
                                type metadata accessor for FeaturedRadioShowCell(0);
                                v340 = swift_dynamicCastClass();
                                if (v340)
                                {
                                  v341 = v340;
                                  v342 = v33;
                                  v279 = [v104 backgroundArtworkCatalog];
                                  if (!v279)
                                  {
                                    v279 = [v33 artworkCatalog];
                                  }

                                  v343 = *(v341 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                                  *(v341 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v279;
                                  goto LABEL_351;
                                }

                                goto LABEL_284;
                              }

                              if ([v428 v18[196]] == &dword_4 + 3)
                              {
                                v393 = v33;
                                type metadata accessor for PosterCell(0);
                                v394 = swift_dynamicCastClass();
                                if (v394)
                                {
                                  v395 = v394;
                                  v396 = v427;
                                  if (!v427)
                                  {
                                    v396 = [v33 artworkCatalog];
                                  }

                                  v397 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                                  swift_beginAccess();
                                  v398 = *(v395 + v397);
                                  *(v395 + v397) = v396;
                                  v399 = v427;
                                  v400 = v396;

                                  sub_74EA4(v396);
                                  v401 = &v443;
                                }

                                else
                                {

                                  v401 = &v442;
                                }

                                v126 = v393;
                                v144 = 5;
                                goto LABEL_355;
                              }
                            }

                            type metadata accessor for RadioStationCell(0);
                            v402 = swift_dynamicCastClass();
                            if (!v402)
                            {

                              v344 = &v443;
                              goto LABEL_353;
                            }

                            v278 = v402;
                            v279 = [v104 backgroundArtworkCatalog];
                            if (v279)
                            {
                              goto LABEL_350;
                            }

                            goto LABEL_349;
                          }

                          goto LABEL_119;
                        }

                        v156 = [v33 artworkCatalog];
                        if (!v156)
                        {
                          v156 = [v33 tracksTiledArtworkCatalogWithRows:2 columns:2];
                        }

                        v157 = v426;
                        if (v428)
                        {
                          if ([v428 v18[196]] == &dword_0 + 3)
                          {
                            type metadata accessor for CustomRoomAlbumCell(0);
                            v158 = swift_dynamicCastClass();
                            if (v158)
                            {
                              v159 = v158;
                              v160 = v33;
                              v161 = [v157 backgroundArtworkCatalog];
                              if (!v161)
                              {
                                v162 = v156;
                                v161 = v156;
                              }

                              v163 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v164 = *(v159 + v163);
                              *(v159 + v163) = v161;
                              v165 = v161;

                              sub_74EA4(v161);
LABEL_310:

                              v126 = v160;
                              v144 = 4;
                              goto LABEL_355;
                            }

                            goto LABEL_305;
                          }

                          if ([v428 v18[196]] == &dword_4 + 1)
                          {
                            type metadata accessor for ShowcaseCell(0);
                            v236 = swift_dynamicCastClass();
                            if (v236)
                            {
LABEL_177:
                              v237 = v236;
                              v238 = v33;
                              v239 = [v157 backgroundArtworkCatalog];
                              if (!v239)
                              {
                                v240 = v156;
                                v239 = v156;
                              }

                              v241 = *(v237 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v237 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v239;
                              v242 = v239;

                              sub_74EA4(v239);
LABEL_304:

                              v126 = v238;
                              v144 = 4;
                              goto LABEL_355;
                            }

LABEL_305:

                            v359 = &v442;
LABEL_312:

                            v126 = v33;
                            v144 = 4;
                            goto LABEL_355;
                          }

                          if ([v428 v18[196]] == &dword_4 + 3)
                          {
                            type metadata accessor for PosterCell(0);
                            v287 = swift_dynamicCastClass();
                            if (v287)
                            {
                              v288 = v287;
                              v289 = v33;
                              v290 = v427;
                              if (!v427)
                              {
                                v291 = v156;
                                v290 = v156;
                              }

                              v292 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v293 = *(v288 + v292);
                              *(v288 + v292) = v290;
                              v294 = v427;
                              v295 = v290;

                              sub_74EA4(v290);
                              v126 = v289;
                              v144 = 4;
                              goto LABEL_355;
                            }

                            goto LABEL_305;
                          }

                          if ([v428 v18[196]] == &dword_4 + 2)
                          {
                            type metadata accessor for FeaturedRadioShowCell(0);
                            v236 = swift_dynamicCastClass();
                            if (v236)
                            {
                              goto LABEL_177;
                            }

                            goto LABEL_305;
                          }
                        }

                        sub_4B306C();
                        if (v352)
                        {
                          type metadata accessor for PlaylistCell(0);
                          v353 = swift_dynamicCastClass();
                          if (v353)
                          {
                            v354 = v353;
                            v238 = v33;
                            v355 = [v157 backgroundArtworkCatalog];
                            if (!v355)
                            {
                              v356 = v156;
                              v355 = v156;
                            }

                            v357 = *(v354 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                            *(v354 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v355;
                            v358 = v355;

                            sub_74EA4(v355);
                            goto LABEL_304;
                          }
                        }

                        else
                        {
                          type metadata accessor for AlbumCell(0);
                          v360 = swift_dynamicCastClass();
                          if (v360)
                          {
                            v361 = v360;
                            v160 = v33;
                            v362 = [v157 backgroundArtworkCatalog];
                            if (!v362)
                            {
                              v363 = v156;
                              v362 = v156;
                            }

                            v364 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v365 = *(v361 + v364);
                            *(v361 + v364) = v362;
                            v366 = v362;

                            sub_74EA4(v362);
                            goto LABEL_310;
                          }
                        }

                        v359 = &v443;
                        goto LABEL_312;
                      }

                      v145 = v30;
                      v146 = [v426 backgroundArtworkCatalog];
                      if (!v146)
                      {
                        v146 = [v33 editorialArtworkCatalog];
                      }

                      if (v428)
                      {
                        if ([v428 v18[196]] == &dword_0 + 1)
                        {
                          type metadata accessor for AlbumCell(0);
                          v147 = swift_dynamicCastClass();
                          if (!v147)
                          {
                            goto LABEL_278;
                          }

                          goto LABEL_329;
                        }

                        if ([v428 v18[196]] == &dword_0 + 2)
                        {
                          sub_4B306C();
                          if (v210)
                          {
                            type metadata accessor for PersonHorizontalCell(0);
                            v211 = swift_dynamicCastClass();
                            if (v211)
                            {
                              v212 = *(v211 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v211 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v146;
                              v213 = v33;
                              v214 = v146;

                              sub_74EA4(v146);
                              sub_15D5A0();

LABEL_331:
                              v383 = v213;
LABEL_340:
                              sub_3EB30(v383, 3);
                              goto LABEL_341;
                            }

LABEL_278:

LABEL_324:
                            v378 = &v442;
LABEL_339:

                            v383 = v33;
                            goto LABEL_340;
                          }

                          type metadata accessor for PersonVerticalCell(0);
                          v333 = swift_dynamicCastClass();
                          if (!v333)
                          {
                            goto LABEL_278;
                          }

                          v334 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                          v335 = v333;
                          swift_beginAccess();
                          v336 = *(v335 + v334);
                          *(v335 + v334) = v146;
                          v337 = v33;
                          v338 = v146;

                          sub_74EA4(v146);
                          sub_1FD4B0();

LABEL_337:
                          sub_3EB30(v337, 3);
LABEL_341:
                          swift_unknownObjectRelease();

                          return;
                        }

                        if ([v428 v18[196]] == &dword_4 + 1)
                        {
                          type metadata accessor for ShowcaseCell(0);
                          goto LABEL_277;
                        }

                        if ([v428 v18[196]] == &dword_4 + 2)
                        {
                          type metadata accessor for FeaturedRadioShowCell(0);
LABEL_277:
                          v339 = swift_dynamicCastClass();
                          if (!v339)
                          {
                            goto LABEL_278;
                          }

LABEL_323:
                          v376 = *(v339 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                          *(v339 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v146;
                          v377 = v146;

                          sub_74EA4(v146);
                          goto LABEL_324;
                        }

                        if ([v428 v18[196]] == &dword_4 + 3)
                        {
                          v367 = v33;
                          type metadata accessor for PosterCell(0);
                          v368 = swift_dynamicCastClass();
                          if (v368)
                          {
                            v369 = v368;
                            v370 = v427;
                            if (!v427)
                            {
                              v370 = [v33 editorialArtworkCatalog];
                            }

                            v371 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v372 = *(v369 + v371);
                            *(v369 + v371) = v370;
                            v373 = v427;
                            v374 = v370;

                            sub_74EA4(v370);
                          }

                          else
                          {
                          }

                          sub_3EB30(v367, 3);
                          goto LABEL_341;
                        }
                      }

                      if ([v33 curatorKind] == &dword_0 + 3)
                      {
                        sub_4B306C();
                        if (v375)
                        {
                          type metadata accessor for PlaylistCell(0);
                          v339 = swift_dynamicCastClass();
                          if (v339)
                          {
                            goto LABEL_323;
                          }

LABEL_338:

                          v378 = &v443;
                          goto LABEL_339;
                        }

                        type metadata accessor for CuratorActivityCell(0);
                      }

                      else
                      {
                        if ([v33 curatorKind] != &dword_0 + 1)
                        {
                          sub_4B306C();
                          if (v384)
                          {
                            type metadata accessor for PersonHorizontalCell(0);
                            v385 = swift_dynamicCastClass();
                            if (v385)
                            {
                              v386 = *(v385 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v385 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v146;
                              v213 = v33;
                              v387 = v146;

                              sub_74EA4(v146);
                              sub_15D5A0();

                              goto LABEL_330;
                            }
                          }

                          else
                          {
                            type metadata accessor for PersonVerticalCell(0);
                            v388 = swift_dynamicCastClass();
                            if (v388)
                            {
                              v389 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              v390 = v388;
                              swift_beginAccess();
                              v391 = *(v390 + v389);
                              *(v390 + v389) = v146;
                              v337 = v33;
                              v392 = v146;

                              sub_74EA4(v146);
                              sub_1FD4B0();

                              goto LABEL_337;
                            }
                          }

                          goto LABEL_338;
                        }

                        type metadata accessor for RadioShowCell(0);
                      }

                      v147 = swift_dynamicCastClass();
                      if (v147)
                      {
LABEL_329:
                        v379 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                        v380 = v147;
                        swift_beginAccess();
                        v213 = v33;
                        v381 = *(v380 + v379);
                        *(v380 + v379) = v146;
                        v382 = v146;

                        sub_74EA4(v146);
LABEL_330:

                        goto LABEL_331;
                      }

                      goto LABEL_338;
                    }

                    if (v34)
                    {
                      v103 = v428;
                      if (v34 == 1)
                      {
                        v117 = v426;
                        if (!v428)
                        {
                          goto LABEL_134;
                        }

                        if ([v428 v18[196]] == &dword_0 + 3)
                        {
                          type metadata accessor for CustomRoomAlbumCell(0);
                          v118 = swift_dynamicCastClass();
                          if (v118)
                          {
                            v119 = v118;
                            v120 = [v117 backgroundArtworkCatalog];
                            if (!v120)
                            {
                              v120 = [v33 artworkCatalog];
                            }

                            v121 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v122 = v33;
                            v123 = *(v119 + v121);
                            *(v119 + v121) = v120;
                            v124 = v120;

                            sub_74EA4(v120);
                            sub_ABA670();
                            v125 = sub_ABA680();
                            (*(*(v125 - 8) + 56))(v5, 0, 1, v125);
                            VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v5);

                            v126 = v122;
                          }

                          else
                          {

                            v126 = v33;
                          }

                          goto LABEL_238;
                        }

                        if ([v428 v18[196]] == &dword_4 + 3)
                        {
                          type metadata accessor for PosterCell(0);
                          v183 = swift_dynamicCastClass();
                          if (v183)
                          {
                            v184 = v183;
                            v185 = v427;
                            if (!v427)
                            {
                              v185 = [v33 artworkCatalog];
                            }

                            v186 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v187 = *(v184 + v186);
                            *(v184 + v186) = v185;
                            v188 = v33;
                            v189 = v427;
                            v190 = v185;

                            sub_74EA4(v185);
                            v191 = &v443;
LABEL_189:

                            v126 = v188;
LABEL_238:
                            v144 = 1;
                            goto LABEL_355;
                          }

                          v257 = &v442;
                        }

                        else
                        {
LABEL_134:
                          sub_4B306C();
                          if (v192)
                          {
                            type metadata accessor for PersonHorizontalCell(0);
                            v193 = swift_dynamicCastClass();
                            if (v193)
                            {
                              v194 = v193;
                              v195 = [v117 backgroundArtworkCatalog];
                              if (!v195)
                              {
                                v195 = [v33 artworkCatalog];
                              }

                              v196 = *(v194 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v194 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v195;
                              v197 = v195;
                              v198 = v33;
                              v199 = v195;

                              sub_74EA4(v197);
                              sub_15D5A0();

                              v126 = v198;
                              v144 = 1;
                              goto LABEL_355;
                            }
                          }

                          else
                          {
                            type metadata accessor for PersonVerticalCell(0);
                            v250 = swift_dynamicCastClass();
                            if (v250)
                            {
                              v251 = v250;
                              v252 = [v117 backgroundArtworkCatalog];
                              if (!v252)
                              {
                                v252 = [v33 artworkCatalog];
                              }

                              v253 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v254 = *(v251 + v253);
                              *(v251 + v253) = v252;
                              v188 = v33;
                              v255 = v252;

                              sub_74EA4(v252);
                              sub_1FD4B0();

                              v191 = &v442;
                              goto LABEL_189;
                            }
                          }

                          v257 = &v443;
                        }

                        v126 = v33;
                        v144 = 1;
                        goto LABEL_355;
                      }

LABEL_119:

                      v126 = v33;
                      v144 = v34;
                      goto LABEL_355;
                    }

                    v133 = v426;
                    if (v428)
                    {
                      if ([v428 v18[196]] == &dword_0 + 3)
                      {
                        type metadata accessor for CustomRoomAlbumCell(0);
                        v134 = swift_dynamicCastClass();
                        if (v134)
                        {
                          v135 = v134;
                          v136 = v33;
                          v137 = [v133 backgroundArtworkCatalog];
                          if (!v137)
                          {
                            goto LABEL_267;
                          }

                          goto LABEL_268;
                        }

                        goto LABEL_269;
                      }

                      if ([v428 v18[196]] == &dword_4 + 1)
                      {
                        type metadata accessor for ShowcaseCell(0);
                        v203 = swift_dynamicCastClass();
                        if (v203)
                        {
                          v204 = v203;
                          v205 = [v133 backgroundArtworkCatalog];
                          if (!v205)
                          {
                            v205 = [v33 artworkCatalog];
                          }

                          v206 = *(v204 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                          *(v204 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v205;
                          v207 = v33;
LABEL_148:
                          v208 = v205;
                          v209 = v205;

                          sub_74EA4(v208);
                          v126 = v207;
LABEL_272:
                          v144 = 0;
                          goto LABEL_355;
                        }

                        goto LABEL_269;
                      }

                      if ([v428 v18[196]] == &dword_4 + 3)
                      {
                        type metadata accessor for PosterCell(0);
                        v269 = swift_dynamicCastClass();
                        if (v269)
                        {
                          v270 = v269;
                          v271 = v427;
                          if (!v427)
                          {
                            v271 = [v33 artworkCatalog];
                          }

                          v272 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                          swift_beginAccess();
                          v273 = *(v270 + v272);
                          *(v270 + v272) = v271;
                          v274 = v33;
                          v275 = v427;
                          v276 = v271;

                          sub_74EA4(v271);
                          v126 = v274;
                          v144 = 0;
                          goto LABEL_355;
                        }

                        goto LABEL_269;
                      }

                      if ([v428 v18[196]] == &dword_4 + 2)
                      {
                        type metadata accessor for FeaturedRadioShowCell(0);
                        v326 = swift_dynamicCastClass();
                        if (v326)
                        {
                          v327 = v326;
                          v207 = v33;
                          v205 = [v133 backgroundArtworkCatalog];
                          if (!v205)
                          {
                            v205 = [v33 artworkCatalog];
                          }

                          v206 = *(v327 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                          *(v327 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v205;
                          goto LABEL_148;
                        }

LABEL_269:

                        v332 = &v442;
LABEL_271:

                        v126 = v33;
                        goto LABEL_272;
                      }
                    }

                    type metadata accessor for AlbumCell(0);
                    v328 = swift_dynamicCastClass();
                    if (v328)
                    {
                      v135 = v328;
                      v136 = v33;
                      v137 = [v133 backgroundArtworkCatalog];
                      if (!v137)
                      {
LABEL_267:
                        v137 = [v136 artworkCatalog];
                      }

LABEL_268:
                      v329 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                      swift_beginAccess();
                      v330 = *(v135 + v329);
                      *(v135 + v329) = v137;
                      v331 = v137;

                      sub_74EA4(v137);
                      v126 = v136;
                      v144 = 0;
                      goto LABEL_355;
                    }

                    v332 = &v443;
                    goto LABEL_271;
                  }

                  v103 = v428;
                  if (v34 > 7u)
                  {
                    if (v34 != 8)
                    {
                      if (v34 != 9)
                      {
                        if (v34 != 12)
                        {
                          goto LABEL_119;
                        }

                        v109 = v426;
                        if (v428)
                        {
                          if ([v428 v18[196]] == &dword_0 + 1)
                          {
                            type metadata accessor for AlbumCell(0);
                            v110 = swift_dynamicCastClass();
                            if (v110)
                            {
                              v111 = v110;
                              v112 = v33;
                              v113 = [v109 backgroundArtworkCatalog];
                              if (!v113)
                              {
                                v113 = [v112 artworkCatalog];
                              }

                              v114 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v115 = *(v111 + v114);
                              *(v111 + v114) = v113;
                              v116 = v113;

                              goto LABEL_174;
                            }

                            goto LABEL_293;
                          }

                          if ([v428 v18[196]] == &dword_4)
                          {
                            type metadata accessor for TVShowCell(0);
                            v230 = swift_dynamicCastClass();
                            if (v230)
                            {
                              v231 = v230;
                              v112 = v33;
                              v232 = [v109 backgroundArtworkCatalog];
                              if (v232 || (v232 = [v109 editorialArtworkCatalog]) != 0)
                              {
                                v113 = v232;
                              }

                              else
                              {
                                v113 = [v33 editorialArtworkCatalog];
                              }

                              v233 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v234 = *(v231 + v233);
                              *(v231 + v233) = v113;
                              v235 = v113;

LABEL_174:
                              sub_74EA4(v113);

                              v126 = v112;
                              v144 = 12;
                              goto LABEL_355;
                            }

                            goto LABEL_293;
                          }

                          if ([v428 v18[196]] == &dword_4 + 1)
                          {
                            type metadata accessor for ShowcaseCell(0);
                            v280 = swift_dynamicCastClass();
                            if (v280)
                            {
                              v281 = v280;
                              v282 = [v109 editorialArtworkCatalog];
                              if (!v282)
                              {
                                v282 = [v33 editorialArtworkCatalog];
                              }

                              v283 = *(v281 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                              *(v281 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v282;
                              v284 = v33;
                              v285 = v282;
                              v286 = v282;

                              sub_74EA4(v285);
                              v126 = v284;
                              v144 = 12;
                              goto LABEL_355;
                            }

                            goto LABEL_293;
                          }

                          if ([v428 v18[196]] == &dword_4 + 3)
                          {
                            type metadata accessor for PosterCell(0);
                            v345 = swift_dynamicCastClass();
                            if (v345)
                            {
                              v346 = v345;
                              v347 = v33;
                              if (v427)
                              {
                                v348 = v427;
                              }

                              else
                              {
                                v348 = [v33 artworkCatalog];
                                v427 = 0;
                              }

                              v405 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                              swift_beginAccess();
                              v406 = *(v346 + v405);
                              *(v346 + v405) = v348;
                              v407 = v427;
                              v408 = v348;

                              sub_74EA4(v348);
                              v126 = v347;
                              v144 = 12;
                              goto LABEL_355;
                            }

                            goto LABEL_293;
                          }
                        }

                        type metadata accessor for TVShowEpisodeCell(0);
                        if (!swift_dynamicCastClass())
                        {

                          v351 = &v443;
                          goto LABEL_295;
                        }

                        v349 = [v109 backgroundArtworkCatalog];
                        if (!v349)
                        {
                          v349 = [v33 editorialArtworkCatalog];
                        }

                        v350 = v349;
                        sub_43CB7C(v349);

LABEL_293:
                        v351 = &v442;
LABEL_295:

                        v126 = v33;
                        v144 = 12;
                        goto LABEL_355;
                      }

                      v166 = v426;
                      if (v428)
                      {
                        if ([v428 v18[196]] == &dword_0 + 1)
                        {
                          type metadata accessor for AlbumCell(0);
                          v167 = swift_dynamicCastClass();
                          if (v167)
                          {
                            v168 = v167;
                            v169 = v33;
                            v170 = [v166 backgroundArtworkCatalog];
                            if (!v170)
                            {
                              v170 = [v169 artworkCatalog];
                            }

                            v171 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v172 = *(v168 + v171);
                            *(v168 + v171) = v170;
                            v173 = v170;

LABEL_233:
                            sub_74EA4(v170);

                            v126 = v169;
                            v144 = 9;
                            goto LABEL_355;
                          }

                          goto LABEL_234;
                        }

                        if ([v428 v18[196]] == &dword_4 + 1)
                        {
                          type metadata accessor for ShowcaseCell(0);
                          v243 = swift_dynamicCastClass();
                          if (v243)
                          {
                            v244 = v243;
                            v245 = [v166 backgroundArtworkCatalog];
                            if (!v245)
                            {
                              v245 = [v33 editorialArtworkCatalog];
                            }

                            v246 = *(v244 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                            *(v244 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v245;
                            v247 = v33;
                            v248 = v245;
                            v249 = v245;

                            sub_74EA4(v248);
                            v126 = v247;
                            v144 = 9;
                            goto LABEL_355;
                          }

                          goto LABEL_234;
                        }

                        if ([v428 v18[196]] == &dword_4 + 3)
                        {
                          type metadata accessor for PosterCell(0);
                          v296 = swift_dynamicCastClass();
                          if (v296)
                          {
                            v297 = v296;
                            v298 = v427;
                            if (!v427)
                            {
                              v298 = [v33 artworkCatalog];
                            }

                            v299 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                            swift_beginAccess();
                            v300 = *(v297 + v299);
                            *(v297 + v299) = v298;
                            v301 = v33;
                            v302 = v427;
                            v303 = v298;

                            sub_74EA4(v298);
                            v126 = v301;
                            v144 = 9;
                            goto LABEL_355;
                          }

LABEL_234:

                          v309 = &v442;
                          goto LABEL_236;
                        }
                      }

                      type metadata accessor for TVShowCell(0);
                      v304 = swift_dynamicCastClass();
                      if (v304)
                      {
                        v305 = v304;
                        v169 = v33;
                        v170 = [v166 backgroundArtworkCatalog];
                        if (!v170)
                        {
                          v170 = [v169 editorialArtworkCatalog];
                        }

                        v306 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
                        swift_beginAccess();
                        v307 = *(v305 + v306);
                        *(v305 + v306) = v170;
                        v308 = v170;

                        goto LABEL_233;
                      }

                      v309 = &v443;
LABEL_236:

                      v126 = v33;
                      v144 = 9;
                      goto LABEL_355;
                    }

                    v148 = v426;
                    if (!v428)
                    {
                      goto LABEL_158;
                    }

                    if ([v428 v18[196]] == &dword_4 + 1)
                    {
                      type metadata accessor for ShowcaseCell(0);
                      v149 = swift_dynamicCastClass();
                      if (v149)
                      {
                        v150 = v149;
                        v151 = [v148 backgroundArtworkCatalog];
                        if (!v151)
                        {
                          v151 = [v33 artworkCatalog];
                        }

                        v152 = *(v150 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                        *(v150 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v151;
                        v153 = v33;
                        v154 = v151;
                        v155 = v151;

                        sub_74EA4(v154);
                        v126 = v153;
                        v144 = 8;
                        goto LABEL_355;
                      }

                      goto LABEL_162;
                    }

                    if ([v428 v18[196]] == &dword_4 + 3)
                    {
                      type metadata accessor for PosterCell(0);
                      v215 = swift_dynamicCastClass();
                      if (v215)
                      {
                        v216 = v215;
                        v217 = v427;
                        if (!v427)
                        {
                          v217 = [v33 artworkCatalog];
                        }

                        v218 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                        swift_beginAccess();
                        v219 = *(v216 + v218);
                        *(v216 + v218) = v217;
                        v220 = v33;
                        v221 = v427;
                        v222 = v217;

                        sub_74EA4(v217);
                        v126 = v220;
                        v144 = 8;
                        goto LABEL_355;
                      }
                    }

                    else
                    {
LABEL_158:
                      type metadata accessor for TVShowEpisodeCell(0);
                      if (!swift_dynamicCastClass())
                      {

                        v225 = &v443;
                        goto LABEL_193;
                      }

                      v223 = [v148 backgroundArtworkCatalog];
                      if (!v223)
                      {
                        v223 = [v33 artworkCatalog];
                      }

                      v224 = v223;
                      sub_43CB7C(v223);
                    }

LABEL_162:

                    v225 = &v442;
LABEL_193:

                    v126 = v33;
                    v144 = 8;
                    goto LABEL_355;
                  }

                  if (v34 == 6)
                  {
                    if (v428 && [v428 v18[196]] == &dword_0 + 2)
                    {
                      type metadata accessor for PersonVerticalCell(0);
                      v138 = swift_dynamicCastClass();
                      if (v138)
                      {
                        v139 = [v426 backgroundArtworkCatalog];
                        if (!v139)
                        {
                          v139 = [v33 artworkCatalog];
                        }

                        v140 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                        swift_beginAccess();
                        v141 = *(v138 + v140);
                        *(v138 + v140) = v139;
                        v142 = v33;
                        v143 = v139;

                        sub_74EA4(v139);
                        sub_1FD4B0();

                        v126 = v142;
                        v144 = 6;
                        goto LABEL_355;
                      }

                      v256 = &v442;
                    }

                    else
                    {
                      type metadata accessor for SocialPersonHorizontalCell(0);
                      v174 = swift_dynamicCastClass();
                      if (v174)
                      {
                        v175 = [v426 backgroundArtworkCatalog];
                        if (!v175)
                        {
                          v175 = [v33 artworkCatalog];
                        }

                        v176 = *(v174 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                        *(v174 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v175;
                        v177 = v175;
                        v178 = v33;
                        v179 = v175;

                        sub_74EA4(v177);
                        sub_B0D4C();

                        v126 = v178;
                        v144 = 6;
                        goto LABEL_355;
                      }

                      v256 = &v443;
                    }

                    v126 = v33;
                    v144 = 6;
LABEL_355:
                    sub_3EB30(v126, v144);
                    swift_unknownObjectRelease();

                    return;
                  }

                  if (v34 != 7)
                  {
                    goto LABEL_119;
                  }

                  if (v428)
                  {
                    v127 = [v428 v18[196]];
                    v128 = v426;
                    if (v127 == &dword_0 + 3)
                    {
                      if ([v33 hasVideo])
                      {
                        type metadata accessor for CustomRoomMusicVideoCell(0);
                        v129 = swift_dynamicCastClass();
                        if (v129)
                        {
                          v130 = v129;
                          v131 = v33;
                          v132 = [v128 backgroundArtworkCatalog];
                          if (!v132)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_244;
                        }
                      }

                      else
                      {
                        type metadata accessor for CustomRoomAlbumCell(0);
                        v258 = swift_dynamicCastClass();
                        if (v258)
                        {
                          v130 = v258;
                          v131 = v33;
                          v132 = [v128 backgroundArtworkCatalog];
                          if (!v132)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_244;
                        }
                      }

                      goto LABEL_202;
                    }

                    if ([v428 v18[196]] == &dword_4 + 1)
                    {
                      type metadata accessor for ShowcaseCell(0);
                      v200 = swift_dynamicCastClass();
                      if (v200)
                      {
                        v201 = v200;
                        v202 = [v128 backgroundArtworkCatalog];
                        if (!v202)
                        {
                          goto LABEL_256;
                        }

                        goto LABEL_257;
                      }

LABEL_202:

                      v268 = &v442;
LABEL_259:

                      v126 = v33;
                      v144 = 7;
                      goto LABEL_355;
                    }

                    if ([v428 v18[196]] == &dword_4 + 3)
                    {
                      type metadata accessor for PosterCell(0);
                      v259 = swift_dynamicCastClass();
                      if (!v259)
                      {
                        goto LABEL_202;
                      }

                      v260 = v259;
                      v261 = v427;
                      if (!v427)
                      {
                        v261 = [v33 artworkCatalog];
                      }

                      v262 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                      swift_beginAccess();
                      v263 = *(v260 + v262);
                      *(v260 + v262) = v261;
                      v264 = v33;
                      v265 = v427;
                      v266 = v261;

                      sub_74EA4(v261);
                      v267 = &v443;
LABEL_253:

                      v126 = v264;
                      v144 = 7;
                      goto LABEL_355;
                    }

                    if ([v33 hasVideo])
                    {
                      if ([v428 v18[196]] == &dword_4)
                      {
                        v264 = v33;
                        type metadata accessor for TVShowCell(0);
                        v314 = swift_dynamicCastClass();
                        if (v314)
                        {
                          v315 = v314;
                          v316 = [v426 backgroundArtworkCatalog];
                          if (!v316)
                          {
                            v316 = [v426 editorialArtworkCatalog];
                            if (!v316)
                            {
                              v316 = [v33 artworkCatalog];
                            }
                          }

                          v317 = v316;
                          v318 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
                          swift_beginAccess();
                          v319 = *(v315 + v318);
                          *(v315 + v318) = v317;
                          v320 = v317;

                          sub_74EA4(v317);
                        }

                        v267 = &v442;
                        goto LABEL_253;
                      }

                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v180 = [v33 hasVideo];
                    v128 = v426;
                    if (v180)
                    {
LABEL_125:
                      v181 = sub_AB37F0();
                      if (sub_4B808C(v181))
                      {
                        type metadata accessor for RankedMusicVideoVerticalCell(0);
                        v182 = swift_dynamicCastClass();
                        if (v182)
                        {
                          v130 = v182;
                          v131 = v33;
                          v132 = [v128 backgroundArtworkCatalog];
                          if (!v132)
                          {
                            goto LABEL_243;
                          }

                          goto LABEL_244;
                        }
                      }

                      else
                      {
                        type metadata accessor for FeaturedMusicVideoVerticalCell(0);
                        v310 = swift_dynamicCastClass();
                        if (v310)
                        {
                          v130 = v310;
                          v131 = v33;
                          v132 = [v128 backgroundArtworkCatalog];
                          if (!v132)
                          {
LABEL_243:
                            v132 = [v131 artworkCatalog];
                          }

LABEL_244:
                          v311 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                          swift_beginAccess();
                          v312 = *(v130 + v311);
                          *(v130 + v311) = v132;
                          v313 = v132;

                          sub_74EA4(v132);
                          v126 = v131;
                          v144 = 7;
                          goto LABEL_355;
                        }
                      }

                      goto LABEL_258;
                    }
                  }

                  type metadata accessor for SongCell(0);
                  v321 = swift_dynamicCastClass();
                  if (v321)
                  {
                    v201 = v321;
                    v202 = [v128 backgroundArtworkCatalog];
                    if (!v202)
                    {
LABEL_256:
                      v202 = [v33 artworkCatalog];
                    }

LABEL_257:
                    v322 = *(v201 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
                    *(v201 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v202;
                    v323 = v33;
                    v324 = v202;
                    v325 = v202;

                    sub_74EA4(v324);
                    v126 = v323;
                    v144 = 7;
                    goto LABEL_355;
                  }

LABEL_258:

                  v268 = &v443;
                  goto LABEL_259;
                }
              }

              if (v428)
              {
                if ([v428 v18[196]] == &dword_4 + 3)
                {
                  type metadata accessor for PosterCell(0);
                  v46 = swift_dynamicCastClass();
                  if (v46)
                  {
                    v47 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
                    v48 = v46;
                    swift_beginAccess();
                    v49 = *(v48 + v47);
                    *(v48 + v47) = v427;
                    v50 = v427;

                    sub_74EA4(v427);
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                swift_unknownObjectRelease();

                v45 = &v442;
              }

              else
              {
                swift_unknownObjectRelease();
                v45 = &v442;
              }

              goto LABEL_28;
            }

            swift_unknownObjectRelease();
          }
        }

        v45 = &v443;
LABEL_28:
        v7 = *(v45 - 32);
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
    }

    v7 = 0;
    v11 = *&v2[v6];
    if (v11)
    {
      goto LABEL_9;
    }
  }

LABEL_29:
}

double sub_4BBF2C()
{

  return result;
}

double sub_4BC00C(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for JSGridViewController(uint64_t a1)
{
  result = qword_E0A890;
  if (!qword_E0A890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4BC220()
{
  v1 = (*v0 + qword_E0A860);
  v3 = *v1;
  v2 = v1[1];
  v4 = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper];
  *v6 = v3;
  *(v6 + 1) = v2;
  v9.receiver = v5;
  v9.super_class = v4;

  v7 = objc_msgSendSuper2(&v9, "init");
  sub_4A8388(v7);

  return v7;
}

void sub_4BC3C8()
{
  v1 = *v0;
  [v1 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    sub_4B8734(v3, 1);
  }

  else
  {
    __break(1u);
  }
}

double sub_4BC45C@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + qword_E0A788);

  return result;
}

double sub_4BC474@<D0>(_OWORD *a1@<X8>)
{
  sub_4B2998(v7);
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

id sub_4BC530(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
  result = objc_msgSendSuper2(&v16, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v10 = result;
    sub_13C80(0, &qword_E04510, UICollectionViewLayoutAttributes_ptr);
    v11 = sub_AB9760();

    v12 = *&v4[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper];
    v13 = *&v4[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper + 8];

    v15 = sub_3AF124(v14, v12, v13);

    sub_199C0(v15);
    return v11;
  }

  return result;
}

id sub_4BC6D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper] == a1 && *&v2[OBJC_IVAR____TtC16MusicApplication38SocialProfilesFlowCollectionViewLayout_socialProfilesHelper + 8] == a2;
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    v11 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v13.receiver = v3;
    v13.super_class = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
    v7 = objc_msgSendSuper2(&v13, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v11, isa);

    goto LABEL_10;
  }

  v5 = sub_AB9260();
  v6 = sub_AB3770().super.isa;
  v7 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v5 withIndexPath:v6];

  v8 = sub_AB3770().super.isa;
  isa = [v2 layoutAttributesForItemAtIndexPath:v8];

  if (isa)
  {
    if (v7)
    {
      v10 = v7;
      [(objc_class *)isa frame];
      [v10 setFrame:?];

      return v7;
    }

LABEL_10:
  }

  return v7;
}

void *sub_4BC998(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SocialProfilesFlowCollectionViewLayout();
  v9 = objc_msgSendSuper2(&v18, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  [v10 setInvalidateFlowLayoutDelegateMetrics:1];
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB9260();
    v14 = [v12 indexPathsForVisibleSupplementaryElementsOfKind:v13];

    sub_AB3820();
    sub_AB9760();

    v15 = sub_AB9260();
    isa = sub_AB9740().super.isa;
    [v10 invalidateSupplementaryElementsOfKind:v15 atIndexPaths:isa];
  }

  return v10;
}

id sub_4BCBEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_4BCCA8()
{
  result = qword_E0B390;
  if (!qword_E0B390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0B398, &qword_B12418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B390);
  }

  return result;
}

uint64_t sub_4BCD0C(uint64_t a1)
{
  *(a1 + 8) = sub_4BDE90(&qword_E0B3C8, type metadata accessor for JSGridViewController, &unk_B123F8);
  result = sub_4BDE90(&qword_E0B3D0, type metadata accessor for JSGridViewController, &unk_B12420);
  *(a1 + 16) = result;
  return result;
}

void sub_4BCD90(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v71 = a3;
  v5 = sub_AB3430();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin();
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v63 - v12;
  v13 = sub_AB3820();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin();
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v63 - v16;
  __chkstk_darwin();
  v19 = &v63 - v18;
  objc_opt_self();
  v75 = a1;
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    return;
  }

  v21 = *&v3[qword_DFE2F0];
  if (!v21)
  {
    return;
  }

  v22 = v20;
  swift_unknownObjectRetain();
  v72 = v21;
  [v3 loadViewIfNeeded];
  v23 = *&v3[qword_DFE2F8];
  if (!v23)
  {
    __break(1u);
    goto LABEL_38;
  }

  v24 = [v23 indexPathForCell:v22];
  v25 = v73;
  if (v24)
  {
    v26 = v24;
    sub_AB3790();

    v27 = v74;
    (*(v25 + 32))(v19, v17, v74);
    type metadata accessor for JSGridModelResponse();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {

      (*(v25 + 8))(v19, v27);
      goto LABEL_23;
    }

    v66 = v3;
    v29 = *(v28 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
    isa = sub_AB3770().super.isa;
    v31 = [v29 itemAtIndexPath:isa];

    if (!v31)
    {
      (*(v25 + 8))(v19, v74);
      goto LABEL_25;
    }

    swift_getObjectType();
    v32 = swift_conformsToProtocol2();
    if (!v32)
    {

      swift_unknownObjectRelease();
      (*(v25 + 8))(v19, v74);
      goto LABEL_23;
    }

    v64 = v32;
    v65 = v31;
    v33 = [v72 results];
    if (v33)
    {
      v34 = v33;
      v35 = sub_AB3770().super.isa;
      v36 = [v34 itemAtIndexPath:v35];

      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (!v37)
      {

        swift_unknownObjectRelease();
        (*(v25 + 8))(v19, v74);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v38 = [v37 contentItem];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 innerObject];

        if (v40)
        {
          v41 = v71[32];
          if ((v41 & 0xFE) == 0x7A)
          {
LABEL_16:

            (*(v25 + 8))(v19, v74);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_23:
            swift_unknownObjectRelease();
            return;
          }

          v42 = v41 >> 1;
          if (v42 <= 125)
          {
            if ((v42 - 62) < 2 || v42 == 125)
            {
              goto LABEL_16;
            }

            goto LABEL_32;
          }

          if (v42 == 127)
          {
            v71 = v36;
          }

          else
          {
            if (v42 != 126)
            {
LABEL_32:
              v71 = v36;
              goto LABEL_33;
            }

            v71 = v36;
          }

LABEL_33:
          swift_storeEnumTagMultiPayload();
          v44 = v9[6];
          v45 = v9[7];
          v46 = v9[8];
          sub_4BE210(v8, v11, type metadata accessor for Metrics.Event.Action);
          v11[v9[5]] = 0;
          *&v11[v44] = v40;
          *&v11[v45] = 0;
          *&v11[v46] = 0;
          v47 = v70;
          sub_4BE210(v11, v70, type metadata accessor for Metrics.Event);
          v48 = v40;
          sub_12B2FC();
          if (v50)
          {
            v51 = v49;
            ObjectType = swift_getObjectType();
            (*(v51 + 8))(ObjectType, v51);
            v54 = v53;
            swift_unknownObjectRelease();
            v55 = swift_getObjectType();
            v56 = v73;
            v57 = v74;
            (*(v73 + 16))(v15, v19, v74);
            sub_4BDE90(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            sub_ABAD10();
            v58 = v67;
            sub_3B8F68(v55);
            v59 = sub_21CCAC(1, v58, v76, v55, v54);
            (*(v68 + 8))(v58, v69);
            sub_12E1C(v76, &qword_DF2BD0, &unk_AFDC00);
            swift_unknownObjectRelease();
          }

          else
          {
            v59 = 0;
            v56 = v73;
            v57 = v74;
          }

          v60 = swift_getObjectType();
          sub_12AFE8();
          v62 = v61;
          (*(v64 + 8))(v47, v59, v61, v60);

          sub_4BE48C(v47, type metadata accessor for Metrics.Event);
          (*(v56 + 8))(v19, v57);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }
      }

      (*(v25 + 8))(v19, v74);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_25:
      swift_unknownObjectRelease();

      return;
    }

LABEL_38:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  v43 = v72;
}

id sub_4BD5D4(void *a1)
{
  v2 = [a1 backgroundArtworkCatalog];
  v3 = [a1 contentItem];
  if (v3)
  {
    v4 = v3;
    v5 = MPModelStoreBrowseContentItem.kind.getter();
    if (v6 == 0xFF)
    {
LABEL_5:

      return v2;
    }

    if (v2)
    {
LABEL_4:
      sub_3EB30(v5, v6);
      goto LABEL_5;
    }

    if (v6 > 5u)
    {
      if (v6 <= 7u)
      {
        if (v6 == 6)
        {
          v13 = v5;
          v2 = [v5 artworkCatalog];
          v5 = v13;
          v6 = 6;
          goto LABEL_4;
        }

        if (v6 == 7)
        {
          v11 = v5;
          v2 = [v5 artworkCatalog];
          v5 = v11;
          v6 = 7;
          goto LABEL_4;
        }
      }

      else
      {
        switch(v6)
        {
          case 8u:
            v15 = v5;
            v2 = [v5 artworkCatalog];
            v5 = v15;
            v6 = 8;
            goto LABEL_4;
          case 9u:
            v18 = v5;
            v2 = [v5 editorialArtworkCatalog];
            v5 = v18;
            v6 = 9;
            goto LABEL_4;
          case 0xCu:
            v9 = v5;
            v2 = [v5 editorialArtworkCatalog];
            v5 = v9;
            v6 = 12;
            goto LABEL_4;
        }
      }
    }

    else if (v6 <= 2u)
    {
      if (!v6)
      {
        v12 = v5;
        v2 = [v5 artworkCatalog];
        v5 = v12;
        v6 = 0;
        goto LABEL_4;
      }

      if (v6 == 1)
      {
        v10 = v5;
        v2 = [v5 artworkCatalog];
        v5 = v10;
        v6 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      switch(v6)
      {
        case 3u:
          v14 = v5;
          v2 = [v5 editorialArtworkCatalog];
          v5 = v14;
          v6 = 3;
          goto LABEL_4;
        case 4u:
          v16 = v5;
          v17 = [v5 artworkCatalog];
          if (!v17)
          {
            v17 = [v16 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          v2 = v17;
          v5 = v16;
          v6 = 4;
          goto LABEL_4;
        case 5u:
          v8 = v5;
          v2 = [v5 artworkCatalog];
          v5 = v8;
          v6 = 5;
          goto LABEL_4;
      }
    }

    sub_3EB30(v5, v6);

    return 0;
  }

  return v2;
}

void sub_4BD880()
{
  *(v0 + qword_E0A768) = 1;
  *(v0 + qword_E0A770) = 0;
  *(v0 + qword_E0A778) = 0;
  *(v0 + qword_E0A780) = 0;
  *(v0 + qword_E0A788) = 0;
  v1 = (v0 + qword_E0A798);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_E0A7A0) = 0;
  v2 = v0 + qword_E0A7A8;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + qword_E0A7B0;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + qword_E0A7B8;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v0 + qword_E0A7C0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = v0 + qword_E0A7C8;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v0 + qword_E0A7D0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v0 + qword_E0A7D8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v0 + qword_E0A7E0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = v0 + qword_E0A7E8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = v0 + qword_E0A7F0;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  v12 = v0 + qword_E0A7F8;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = v0 + qword_E0A800;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v0 + qword_E0A808;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v0 + qword_E0A810;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = v0 + qword_E0A818;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + qword_E0A820;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v0 + qword_E0A828) = 2;
  *(v0 + qword_E0A830) = 0;
  *(v0 + qword_E0A838) = 0;
  *(v0 + qword_E0A840) = 0;
  *(v0 + qword_E0A848) = 0;
  *(v0 + qword_E0A850) = 2;
  *(v0 + qword_E0A858) = 3;
  v18 = (v0 + qword_E0A860);
  *v18 = 0xD000000000000015;
  v18[1] = 0x8000000000B48DF0;
  sub_ABAFD0();
  __break(1u);
}

void sub_4BDAF8(void *a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 clearArtworkCatalogs];
  ObjectType = swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11)
  {
    (*(v11 + 8))(ObjectType, v11);
    v13 = v12;
    v14 = swift_getObjectType();
    (*(v6 + 16))(v9, a2, v5);
    sub_4BDE90(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    (*(v13 + 120))(a1, v16, v14, v13);
    sub_8085C(v16);
    swift_unknownObjectRelease();
    if (*(v2 + qword_E0A788))
    {

      sub_38E908(a2, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4BDCF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4BDD28()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4BDD60()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_4BDE2C()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_4B0B30(v2, v3, v4);
}

uint64_t sub_4BDE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4BDED8()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_4BDFAC()
{
  v1 = *(sub_AB3820() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_4B08F0(v2, v3, v4, v5);
}

uint64_t objectdestroy_183Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_4BE120(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_AB3820() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_4BE1C4()
{

  return swift_deallocObject();
}

uint64_t sub_4BE210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4BE278()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4BE3E0()
{

  return swift_deallocObject();
}

uint64_t sub_4BE428()
{

  return swift_deallocObject();
}

uint64_t sub_4BE48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4BE4F4()
{

  return swift_deallocObject();
}

uint64_t sub_4BE540()
{

  return swift_deallocObject();
}

uint64_t sub_4BE59C()
{

  return swift_deallocObject();
}

void sub_4BE5E4(void *a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_AB37B0() >= 1)
  {
    if (__OFSUB__(sub_AB37B0(), 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB37F0();
      sub_AB37C0();
      isa = sub_AB3770().super.isa;
      (*(v3 + 8))(v5, v2);
      v7 = [a1 cellForItemAtIndexPath:isa];

      if (v7)
      {
        type metadata accessor for HorizontalLockupCollectionViewCell(0);
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
          if (v9)
          {
            [v9 setHidden:1];
          }
        }
      }
    }
  }
}

void sub_4BE74C(void *a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_AB37B0() >= 1)
  {
    if (__OFSUB__(sub_AB37B0(), 1))
    {
      __break(1u);
    }

    else
    {
      sub_AB37F0();
      sub_AB37C0();
      isa = sub_AB3770().super.isa;
      (*(v3 + 8))(v5, v2);
      v7 = [a1 cellForItemAtIndexPath:isa];

      if (v7)
      {
        type metadata accessor for HorizontalLockupCollectionViewCell(0);
        v8 = swift_dynamicCastClass();
        if (v8 && (v9 = *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView)) != 0 && *(v8 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) == 1)
        {
          v10 = v9;
          if ([v10 isHidden])
          {
            [v10 setHidden:0];
          }
        }

        else
        {
          v10 = v7;
        }
      }
    }
  }
}

void sub_4BE8F4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = JSGrid.sections.getter();
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) > a1)
    {
      v10 = *(v8 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_25;
  }

  v10 = sub_35FC8C(a1, v8, v9);
LABEL_5:
  v11 = v10;
  v12 = &v10[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title];
  swift_beginAccess();
  v14 = *v12;
  v13 = *(v12 + 1);

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    return;
  }

  v16 = *&v1[qword_DFE2F0];
  if (!v16)
  {
    return;
  }

  v17 = [v16 results];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 sectionAtIndex:a1];

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
      swift_unknownObjectRelease();
      return;
    }

    v21 = v20;
    v22 = *&v2[qword_E0A778];
    v23 = &selRef__authenticateReturningError_;
    if (v22)
    {
      v24 = *&v2[qword_E0A778];
    }

    else
    {
      v45 = qword_E0A778;
      v46 = v20;
      v25 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v26 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
      swift_beginAccess();
      v25[v26] = 1;
      v24 = v25;
      [v24 setHidden:1];
      [v24 setUserInteractionEnabled:0];
      v27 = *&v2[direct field offset for BrowseCollectionViewController.textDrawingCache];
      v28 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
      swift_beginAccess();
      *&v24[v28] = v27;

      v23 = &selRef__authenticateReturningError_;

      v29 = [v2 view];
      if (!v29)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v30 = v29;
      [v29 addSubview:v24];

      v31 = *&v2[v45];
      *&v2[v45] = v24;

      v22 = 0;
      v21 = v46;
    }

    v32 = v22;
    sub_AB3810();
    sub_4A80BC(v24, v21);
    (*(v5 + 8))(v7, v4);
    v33 = [v2 v23[342]];
    if (v33)
    {
      v34 = v33;
      [v33 music_inheritedLayoutInsets];
      v36 = v35;
      v38 = v37;

      [v2 loadViewIfNeeded];
      v39 = qword_DFE2F8;
      v40 = *&v2[qword_DFE2F8];
      if (v40)
      {
        [v40 bounds];
        Width = CGRectGetWidth(v47);
        v42 = v24;
        [v2 loadViewIfNeeded];
        v43 = *&v2[v39];
        if (v43)
        {
          [v43 bounds];
          [v42 setFrame:{0.0, 0.0, Width - v36 - v38, CGRectGetHeight(v48)}];

          [v42 layoutIfNeeded];
          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void sub_4BED84(uint64_t a1)
{
  if ((sub_4B83D0(a1) & 1) == 0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = &off_CF1B00;
    sub_4B8148(a1, sub_4BF00C, v3);
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = &off_CF1B30;
      sub_4B8148(a1, sub_4BF00C, v6);
      v8 = v7;

      if (v8)
      {
        v9 = [v1 view];
        if (v9)
        {
          v10 = v9;
          [v9 bounds];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v19.origin.x = v12;
          v19.origin.y = v14;
          v19.size.width = v16;
          v19.size.height = v18;
          CGRectGetWidth(v19);
          sub_471A4();
          sub_AB38F0();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

BOOL sub_4BEF28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 itemType];
  v4 = *(v2 + 16);
  v5 = (v2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = *v5++;
  }

  while (v3 != v8);
  return v6 != 0;
}

unint64_t sub_4BF024()
{
  result = qword_E0B4A8;
  if (!qword_E0B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B4A8);
  }

  return result;
}

unint64_t sub_4BF07C()
{
  result = qword_E0B4B0;
  if (!qword_E0B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B4B0);
  }

  return result;
}

void sub_4BF128(void (*a1)(void **__return_ptr, id *), __n128 a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, uint64_t))
{
  v7 = v5;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v16[2] = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = a5(j, a4);
      }

      else
      {
        if (j >= *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v12 = *(a4 + 8 * j + 32);
      }

      v6 = v12;
      v15 = v12;
      a1(v16, &v15);
      if (v7)
      {
        goto LABEL_18;
      }

      v7 = 0;

      v6 = v16[0];
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_4BF2A8(void *(*a1)(uint64_t *__return_ptr, char *), __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a4 + 16);
  if (v7)
  {
    v12[1] = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v9 = (a4 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10;
      a1(v12, &v11);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      if (!--v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_4BF394(void (*a1)(void *__return_ptr, char **), __n128 a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v29 = a4 & 0xC000000000000001;
  if ((a4 & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

  if (a4 < 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = (a4 & 0xFFFFFFFFFFFFFF8);
  }

  v9 = sub_ABAC50();
  if (!v9)
  {
    return;
  }

  v36 = _swiftEmptyArrayStorage;
  sub_ABAEC0();
  v33 = sub_ABAC00();
  v34 = v10;
  v35 = 1;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    v9 = *(v8 + 16);
    if (!v9)
    {
      return;
    }

    v36 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v11 = sub_ABABC0();
    v12 = *(v8 + 36);
    v33 = v11;
    v34 = v12;
    v35 = 0;
  }

  v13 = 0;
  v28 = v8 + 56;
  v27 = v8 + 64;
  while (v13 < v9)
  {
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_36;
    }

    v16 = v9;
    v7 = v33;
    v6 = v34;
    LODWORD(v9) = v35;
    v17 = v8;
    sub_4C3A70(v33, v34, v35, v8);
    v5 = v18;
    v32 = v18;
    a1(v31, &v32);
    if (v4)
    {
      goto LABEL_40;
    }

    v5 = v31[0];
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    if (v29)
    {
      if (!v9)
      {
        goto LABEL_41;
      }

      if (sub_ABAC20())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B710, &qword_B127D8);
      v14 = sub_AB9B80();
      sub_ABACB0();
      v14(v31, 0);
      v9 = v16;
      if (v13 == v16)
      {
LABEL_33:
        sub_E1798(v33, v34, v35);
        return;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_42;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v19 = 1 << *(v8 + 32);
      if (v7 >= v19)
      {
        goto LABEL_37;
      }

      v20 = v7 >> 6;
      v21 = *(v28 + 8 * (v7 >> 6));
      if (((v21 >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(v8 + 36) != v6)
      {
        goto LABEL_39;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v9 = v16;
      }

      else
      {
        v5 = (v20 << 6);
        v23 = v20 + 1;
        v24 = (v27 + 8 * v20);
        v9 = v16;
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v5 += 64;
          ++v23;
          if (v26)
          {
            sub_E1798(v7, v6, 0);
            v19 = &v5[__clz(__rbit64(v25))];
            goto LABEL_31;
          }
        }

        sub_E1798(v7, v6, 0);
LABEL_31:
        v8 = v17;
      }

      v33 = v19;
      v34 = v6;
      v35 = 0;
      if (v13 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  sub_E1798(v7, v6, v9);

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_4BF700(uint64_t a1, void *a2)
{
  v15 = a2;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570) - 8);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_15F84(*(a1 + 48) + *(v14 + 72) * (v12 | (v11 << 6)), v5, &unk_DFEF20, &qword_AFA570);
    sub_4C2464(v5, v15);
    sub_12E1C(v5, &unk_DFEF20, &qword_AFA570);
    if (v2)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_4BF8AC(uint64_t a1, unsigned __int8 a2)
{
  sub_AB93F0();

  return result;
}

double sub_4BF9E8(uint64_t a1, unsigned __int8 a2)
{
  sub_AB93F0();

  return result;
}

double sub_4BFB24(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v10 = v8;
      a2(&v11, &v10, a3);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_4BFBA4(void *a1, uint64_t a2, double (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = [a1 results];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 firstItem];

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          swift_unknownObjectRetain();
          a3(v9, 0);
          return swift_unknownObjectRelease_n();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    sub_1CE268();
    v11 = swift_allocError();
    *v12 = 2;
  }

  swift_errorRetain();
  a3(v11, 1);
}

void sub_4BFCDC(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v35 - v11;
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_4C457C(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
  sub_AB5110();
  if (v8 == 8)
  {
    if (!*(a3 + 16))
    {
      (*(v10 + 32))(a4, v12, v9);
      return;
    }

    v6 = *(a3 + 32);
  }

  v43 = v6;
  v13._rawValue = &off_CF07E0;
  v14 = v12;
  sub_AB50D0(v13);
  v15 = v43;
  v16 = [a2 allSections];
  v41 = sub_13C80(0, &qword_DE8050, MPModelLibrarySearchScope_ptr);
  v17 = sub_AB9760();
  v18 = sub_4C00A8(v15, v17);

  if (v18[2])
  {
    v39 = a2;
    v40 = v9;
    v35 = v10;
    v36 = a4;
    v19 = 0;
    v20 = 50;
    if (v15)
    {
      v20 = 0;
    }

    v37 = v20;
    v38 = v12;
    v42 = v18;
    v23 = v18[7];
    v22 = (v18 + 7);
    v21 = v23;
    v24 = 1 << *(v22 - 24);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    if ((v25 & v21) != 0)
    {
      do
      {
        v28 = v19;
LABEL_15:
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v30 = *(v42[6] + ((v28 << 9) | (8 * v29)));
        v45 = _swiftEmptyArrayStorage;
        __chkstk_darwin();
        *(&v35 - 4) = &v45;
        *(&v35 - 3) = v37;
        *(&v35 - 16) = v31;
        v32 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
        v33 = sub_4C45FC();
        v34 = v39;
        static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(v34, v30, sub_4C45F0, (&v35 - 6), v41, v32, v33);
        v44 = 3;
        v9 = v40;
        v14 = v38;
        sub_AB5090();
      }

      while (v26);
    }

    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        (*(v35 + 32))(v36, v14, v9);
        return;
      }

      v26 = *&v22[8 * v28];
      ++v19;
      if (v26)
      {
        v19 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a4, v12, v9);
  }
}

void *sub_4C00A8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v32 = &_swiftEmptySetSingleton;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  v3 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = a2 & 0xC000000000000001;
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      v24 = a2;
      v25 = a2 & 0xFFFFFFFFFFFFFF8;
      v29 = a2 + 32;
      v28 = v2;
      v26 = a2 & 0xC000000000000001;
      v27 = v3;
      while (1)
      {
        if (v5)
        {
          v7 = sub_361270(v4, v24);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v7 = *(v29 + 8 * v4);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = sub_4C1244(v2);
        v11 = [v8 itemKind];
        v12 = v11;
        if ((v10 & 0xC000000000000001) != 0)
        {
          v30 = v8;
          v13 = v11;
          v14 = sub_ABACA0();

          if ((v14 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (!*(v10 + 16))
          {

            goto LABEL_7;
          }

          v30 = v8;
          sub_13C80(0, &qword_DE7580, MPModelKind_ptr);
          v15 = sub_ABA780(*(v10 + 40));
          v16 = -1 << *(v10 + 32);
          v17 = v15 & ~v16;
          if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
LABEL_20:

            v2 = v28;
            v5 = v26;
            v3 = v27;
            v6 = v25;
            goto LABEL_7;
          }

          v18 = ~v16;
          while (1)
          {
            v19 = *(*(v10 + 48) + 8 * v17);
            v20 = sub_ABA790();

            if (v20)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v2 = v28;
          v5 = v26;
          v3 = v27;
          v6 = v25;
        }

        sub_1A5B0(v31, v4);
LABEL_6:

LABEL_7:
        ++v4;
        if (v9 == v3)
        {
          return v32;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v22 = a2;
      v23 = sub_ABB060();
      a2 = v22;
      v3 = v23;
    }

    while (v23);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_4C0328(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v11 = *(type metadata accessor for Search.Item(0) - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a2, v13, &unk_E00040, &unk_AFA530);
  swift_storeEnumTagMultiPayload();
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_6B884(0, v14[2] + 1, 1, v14);
    *a4 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_6B884((v16 > 1), v17 + 1, 1, v14);
    *a4 = v14;
  }

  v14[2] = v17 + 1;
  result = sub_1D3168(v13, v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17);
  if ((a6 & 1) == 0 && *(*a4 + 16) >= a5)
  {
    *a3 = 1;
  }

  return result;
}

void *Library.Menu.Request.mediaPickerConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_4C0508(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = [objc_allocWithZone(MPModelLibrarySearchRequest) init];
  v8 = sub_AB9260();
  [v7 setLabel:v8];

  sub_15F84(v3 + 40, aBlock, &qword_DF4F58, &unk_B0EB60);
  v17[2] = aBlock;
  sub_4BFB24(_swiftEmptyArrayStorage, sub_4C46A8, v17, &off_CF1B58);
  sub_12E1C(aBlock, &qword_DF4F58, &unk_B0EB60);
  sub_13C80(0, &qword_DE8050, MPModelLibrarySearchScope_ptr);
  isa = sub_AB9740().super.isa;

  [v7 setScopes:isa];

  v10 = *(v3 + 24);
  v11 = v7;
  [v11 setMediaLibrary:v10];
  [v11 setFilteringOptions:*(v3 + 32)];

  v12 = sub_AB9260();
  [v11 setSearchString:v12];

  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_4C4704;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_311FA0;
  aBlock[3] = &block_descriptor_34_2;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  v16 = [v15 newOperationWithResponseHandler:v14];
  _Block_release(v14);
  [(objc_class *)ModelRequestQueue.unsafeMutableAddressor()->super.isa addOperation:v16];
  a3[3] = sub_13C80(0, &qword_DEBCB0, NSOperation_ptr);
  a3[4] = &protocol witness table for NSOperation;

  *a3 = v16;
}

void sub_4C07CC(void *a1, void *a2, void *a3, void (*a4)(void *, uint64_t, uint64_t))
{
  if (a1)
  {
    v8 = [a1 results];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 allSections];
      sub_13C80(0, &qword_DE8050, MPModelLibrarySearchScope_ptr);
      v11 = sub_AB9760();
      v12 = sub_4C47D0(v11);

      v13 = sub_988FC(_swiftEmptyArrayStorage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_AF4EC0;
      v15 = MPModelResponseDidInvalidateNotification;
      UIScreen.Dimensions.size.getter();
      *(v14 + 56) = &type metadata for NotificationTrigger;
      *(v14 + 64) = &protocol witness table for NotificationTrigger;
      *(v14 + 32) = v16;
      *(v14 + 40) = v17;
      type metadata accessor for BindingRequestResponseInvalidation();
      swift_allocObject();
      v18 = v9;

      v19 = v15;
      v20 = a1;
      v21 = BindingRequestResponseInvalidation.init(triggers:)(v14);
      v22 = sub_4C457C(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
      v23 = 0;
      goto LABEL_17;
    }
  }

  if (!a2)
  {
    sub_4C4710();
    v18 = swift_allocError();
    *v32 = a3;
    v33 = a3;
    goto LABEL_13;
  }

  v24 = sub_AB3040();
  if ([v24 code] == &dword_4 + 2)
  {
    v25 = [v24 domain];
    v26 = sub_AB92A0();
    v28 = v27;
    if (v26 == sub_AB92A0() && v28 == v29)
    {
    }

    else
    {
      v31 = sub_ABB3C0();

      if ((v31 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_4C4710();
    v18 = swift_allocError();
    *v34 = 0;
    swift_errorRetain();

    goto LABEL_16;
  }

LABEL_11:

  v18 = a2;
LABEL_13:
  swift_errorRetain();
  swift_errorRetain();
LABEL_16:
  v12 = 0;
  v13 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
LABEL_17:
  v35[0] = v18;
  v35[1] = v12;
  v35[2] = v13;
  v35[3] = 0;
  v36 = v23;
  a4(v35, v21, v22);
  swift_unknownObjectRelease();
  sub_4C4764(v18, v12, v13, 0, v23);

  sub_4C4764(v18, v12, v13, 0, v23);
}

double sub_4C0B48@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_4C0508(sub_4C4664, v6, a3);

  return result;
}

uint64_t sub_4C0C0C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x747369747261;
    v6 = 1735290739;
    if (a1 != 2)
    {
      v6 = 0x7473696C79616C70;
    }

    if (a1)
    {
      v5 = 0x6D75626C61;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x776F68537674;
    v2 = 0x646F736970457674;
    if (a1 != 7)
    {
      v2 = 0x6569766F6DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646956636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x7265736F706D6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_4C0D20()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_4BF8AC(v3, v1);
  return sub_ABB610();
}

Swift::Int sub_4C0D70(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_4BF8AC(v4, v2);
  return sub_ABB610();
}

unint64_t sub_4C0DB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4C4D54(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_4C0DE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4C0C0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_4C0E10(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_4C3F20(a1);

  *a2 = v4;
}

uint64_t sub_4C0EFC(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t sub_4C1104(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = sub_ABB3C0();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_4C1244(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF82E0;
        sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
        *(inited + 32) = static MPModelTVShow.defaultMusicKind.getter();
        sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
        *(inited + 40) = static MPModelTVEpisode.defaultMusicKind.getter();
        sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
        *(inited + 48) = static MPModelMovie.defaultMusicKind.getter();
        goto LABEL_18;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      v21 = objc_opt_self();
      sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
      v18 = static MPModelAlbum.defaultMusicKind.getter();
      v19 = [v21 kindWithAlbumKind:v18];
    }

    else
    {
      if (a1 != 4)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF82B0;
        v23 = [objc_opt_self() kindWithVariants:2];
        goto LABEL_16;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      v17 = objc_opt_self();
      sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
      v18 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v19 = [v17 kindWithPlaylistEntryKind:v18 options:0];
    }

    v22 = v19;

    *(inited + 32) = v22;
    goto LABEL_18;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF82B0;
      sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
      v20 = static MPModelAlbum.defaultMusicKind.getter();
LABEL_17:
      *(inited + 32) = v20;
      goto LABEL_18;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    v23 = [objc_opt_self() kindWithVariants:1];
LABEL_16:
    v20 = v23;
    goto LABEL_17;
  }

  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF82B0;
    sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
    v20 = static MPModelArtist.defaultMusicKind.getter();
    goto LABEL_17;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE38, &qword_B127D0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_AFFB00;
  *(v4 + 32) = sub_AB92A0();
  *(v4 + 40) = v5;
  sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  *(v4 + 48) = static MPModelArtist.defaultMusicKind.getter();
  *(v4 + 56) = sub_AB92A0();
  *(v4 + 64) = v6;
  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  *(v4 + 72) = static MPModelAlbum.defaultMusicKind.getter();
  *(v4 + 80) = sub_AB92A0();
  *(v4 + 88) = v7;
  *(v4 + 96) = [objc_opt_self() kindWithVariants:3];
  *(v4 + 104) = sub_AB92A0();
  *(v4 + 112) = v8;
  v9 = objc_opt_self();
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v10 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v11 = [v9 kindWithPlaylistEntryKind:v10 options:0];

  *(v4 + 120) = v11;
  *(v4 + 128) = sub_AB92A0();
  *(v4 + 136) = v12;
  sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
  *(v4 + 144) = static MPModelTVShow.defaultMusicKind.getter();
  *(v4 + 152) = sub_AB92A0();
  *(v4 + 160) = v13;
  sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  *(v4 + 168) = static MPModelTVEpisode.defaultMusicKind.getter();
  *(v4 + 176) = sub_AB92A0();
  *(v4 + 184) = v14;
  sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  *(v4 + 192) = static MPModelMovie.defaultMusicKind.getter();
  sub_97B14(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE40, &unk_B013E0);
  swift_arrayDestroy();
  sub_13C80(0, &qword_DE7580, MPModelKind_ptr);
  isa = sub_AB8FD0().super.isa;

  v16 = [v3 kindWithRelationshipKinds:isa];

  *(inited + 32) = v16;
LABEL_18:
  sub_11F70(inited);
  v25 = v24;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v25;
}

unint64_t sub_4C1860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4C4DA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_4C1890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0x7265736F706D6F63;
  v6 = 0xE900000000000073;
  if (v2 != 6)
  {
    v5 = 0x4D73776F68537674;
    v6 = 0xED0000736569766FLL;
  }

  v7 = 0x7473696C79616C70;
  v8 = 0xE900000000000073;
  if (v2 != 4)
  {
    v7 = 0x646956636973756DLL;
    v8 = 0xEB00000000736F65;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736D75626C61;
  if (v2 != 2)
  {
    v10 = 0x73676E6F73;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x73747369747261;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_4C199C()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x7265736F706D6F63;
  if (v1 != 6)
  {
    v3 = 0x4D73776F68537674;
  }

  v4 = 0x7473696C79616C70;
  if (v1 != 4)
  {
    v4 = 0x646956636973756DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736D75626C61;
  if (v1 != 2)
  {
    v5 = 0x73676E6F73;
  }

  if (*v0)
  {
    v2 = 0x73747369747261;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_4C1AAC()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 50;
  }
}

void sub_4C1ADC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a2;
  v61 = a1;
  v69 = a3;
  v68 = sub_AB7C10();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_AB7C50();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_AB7C20();
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570) - 8);
  __chkstk_darwin();
  v8 = (&v58 - v7);
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v79 = UnfairLock.init()();
  v9 = *v3;
  v75 = v3 + 2;
  v10 = swift_allocObject();
  v11 = sub_9A004(_swiftEmptyArrayStorage);
  v80 = v10;
  *(v10 + 16) = v11;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v78 = CompoundRequestResponseInvalidation.__allocating_init()();
  v91 = sub_9A238(_swiftEmptyArrayStorage);
  sub_4BF700(v9, &v91);
  v77 = dispatch_group_create();
  v12 = 0;
  v13 = v91;
  v14 = v91 + 64;
  v15 = 1 << *(v91 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v91 + 64);
  v18 = (v15 + 63) >> 6;
  v71 = &v87;
  v73 = v91 + 64;
  v72 = v18;
  v74 = v91;
  while (v17)
  {
LABEL_11:
    v32 = (v12 << 9) | (8 * __clz(__rbit64(v17)));
    v33 = *(*(v13 + 48) + v32);
    v34 = *(*(v13 + 56) + v32);
    v35 = objc_allocWithZone(MPModelLibraryRequest);
    v36 = v33;
    v37 = v34;
    v38 = v36;

    v83 = [v35 init];
    [v83 setItemKind:v38];
    v39 = *(v37 + 16);
    v81 = v37;
    v82 = v38;
    if (v39)
    {
      v76 = v17;
      aBlock = _swiftEmptyArrayStorage;
      sub_ABAEC0();
      v40 = v37 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v41 = *(v70 + 72);
      do
      {
        sub_15F84(v40, v8, &unk_DFEF20, &qword_AFA570);
        v42 = *v8;
        sub_12E1C(v8, &unk_DFEF20, &qword_AFA570);
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        v40 += v41;
        --v39;
      }

      while (v39);
      v17 = v76;
      v38 = v82;
    }

    sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
    isa = sub_AB9740().super.isa;

    [v83 setAllowedItemIdentifiers:isa];

    sub_15F84(v75, &aBlock, &qword_DF4F58, &unk_B0EB60);
    v44 = v88;
    if (v88)
    {
      v19 = v89;
      __swift_project_boxed_opaque_existential_1(&aBlock, v88);
      v20 = v19[1](v38, v44, v19);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {
      sub_12E1C(&aBlock, &qword_DF4F58, &unk_B0EB60);
      v20 = 0;
    }

    v21 = (v17 - 1) & v17;
    v22 = v83;
    [v83 setItemProperties:v20];

    v23 = v77;
    dispatch_group_enter(v77);
    v24 = swift_allocObject();
    v26 = v78;
    v25 = v79;
    v24[2] = v23;
    v24[3] = v25;
    v28 = v80;
    v27 = v81;
    v24[4] = v26;
    v24[5] = v27;
    v24[6] = v28;
    v89 = sub_4C4518;
    v90 = v24;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_311FA0;
    v88 = &block_descriptor_18_1;
    v29 = _Block_copy(&aBlock);
    v30 = v23;
    v17 = v21;

    [v22 performWithResponseHandler:v29];
    _Block_release(v29);

    v14 = v73;
    v18 = v72;
    v13 = v74;
  }

  while (1)
  {
    v31 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v31 >= v18)
    {

      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v45 = v59;
      v46 = v58;
      v47 = v60;
      (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.userInteractive(_:), v60);
      v48 = sub_ABA190();
      (*(v45 + 8))(v46, v47);
      v49 = swift_allocObject();
      v50 = v61;
      v49[2] = v80;
      v49[3] = v50;
      v51 = v78;
      v49[4] = v62;
      v49[5] = v51;
      v89 = sub_4C4570;
      v90 = v49;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_1B5EB4;
      v88 = &block_descriptor_24;
      v52 = _Block_copy(&aBlock);

      v53 = v63;
      sub_AB7C30();
      v84 = _swiftEmptyArrayStorage;
      sub_4C457C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      v54 = v66;
      v55 = v68;
      sub_ABABB0();
      v56 = v77;
      sub_ABA0F0();

      (*(v67 + 8))(v54, v55);
      (*(v64 + 8))(v53, v65);
      _Block_release(v52);

      v57 = v69;
      *(v69 + 32) = 0;
      *v57 = 0u;
      v57[1] = 0u;

      return;
    }

    v17 = *(v14 + 8 * v31);
    ++v12;
    if (v17)
    {
      v12 = v31;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_4C2464(uint64_t a1, void *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570) - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  v7 = *(a1 + 8);
  if (v7 > 3)
  {
    if (*(a1 + 8) > 5u)
    {
      if (v7 == 6)
      {
        sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
        v8 = static MPModelTVShow.defaultMusicKind.getter();
      }

      else if (v7 == 7)
      {
        sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
        v8 = static MPModelTVEpisode.defaultMusicKind.getter();
      }

      else
      {
        sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
        v8 = static MPModelMovie.defaultMusicKind.getter();
      }

      goto LABEL_17;
    }

    if (v7 == 4)
    {
      v8 = [objc_opt_self() kindWithVariants:2];
      goto LABEL_17;
    }

    v13 = objc_opt_self();
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v10 = static MPModelAlbum.defaultMusicKind.getter();
    v11 = [v13 kindWithAlbumKind:v10];
LABEL_19:
    v12 = v11;

    goto LABEL_20;
  }

  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
      v8 = static MPModelAlbum.defaultMusicKind.getter();
    }

    else
    {
      sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
      v8 = static MPModelArtist.defaultMusicKind.getter();
    }

    goto LABEL_17;
  }

  if (v7 != 2)
  {
    v9 = objc_opt_self();
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v10 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v11 = [v9 kindWithPlaylistEntryKind:v10 options:0];
    goto LABEL_19;
  }

  v8 = [objc_opt_self() kindWithVariants:1];
LABEL_17:
  v12 = v8;
LABEL_20:
  v14 = *a2;
  if (*(*a2 + 16) && (v15 = sub_2ECCE8(v12), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  sub_15F84(a1, v6, &unk_DFEF20, &qword_AFA570);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_6D1E0(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_6D1E0((v18 > 1), v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  sub_36B0C(v6, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, &unk_DFEF20, &qword_AFA570);
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
        v20 = static MPModelTVShow.defaultMusicKind.getter();
      }

      else if (v7 == 7)
      {
        sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
        v20 = static MPModelTVEpisode.defaultMusicKind.getter();
      }

      else
      {
        sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
        v20 = static MPModelMovie.defaultMusicKind.getter();
      }

      goto LABEL_44;
    }

    if (v7 == 4)
    {
      v20 = [objc_opt_self() kindWithVariants:2];
      goto LABEL_44;
    }

    v25 = objc_opt_self();
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v22 = static MPModelAlbum.defaultMusicKind.getter();
    v23 = [v25 kindWithAlbumKind:v22];
LABEL_46:
    v24 = v23;

    goto LABEL_47;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
      v20 = static MPModelAlbum.defaultMusicKind.getter();
    }

    else
    {
      sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
      v20 = static MPModelArtist.defaultMusicKind.getter();
    }

    goto LABEL_44;
  }

  if (v7 != 2)
  {
    v21 = objc_opt_self();
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v22 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v23 = [v21 kindWithPlaylistEntryKind:v22 options:0];
    goto LABEL_46;
  }

  v20 = [objc_opt_self() kindWithVariants:1];
LABEL_44:
  v24 = v20;
LABEL_47:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *a2;
  *a2 = 0x8000000000000000;
  sub_95378(v17, v24, isUniquelyReferenced_nonNull_native);
  *a2 = v28;
}

void sub_4C2A2C(void *a1, int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 && (v10 = [a1 results]) != 0)
  {
    v11 = v10;
    v15 = _swiftEmptyArrayStorage;
    __chkstk_darwin();
    v14 = &v15;
    v12 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(v11, sub_4C45C4, v13, &type metadata for AnyHashable, v12, &protocol witness table for AnyHashable);
    __chkstk_darwin();
    v13[0] = &v15;
    v13[1] = a6;
    v14 = (a7 + 16);
    UnfairLock.locked<A>(_:)(sub_4C45CC);

    dispatch_group_leave(group);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_4C2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530) - 8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  sub_15F84(a2, &v14 - v7, &unk_E00040, &unk_AFA530);
  v9 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_6D204(0, v9[2] + 1, 1, v9);
    *a4 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_6D204((v11 > 1), v12 + 1, 1, v9);
    *a4 = v9;
  }

  v9[2] = v12 + 1;
  return sub_36B0C(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, &unk_E00040, &unk_AFA530);
}

void sub_4C2D48(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v51 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F98, &unk_B02800);
  __chkstk_darwin();
  v43 = v38 - v8;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570) - 8);
  __chkstk_darwin();
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (v38 - v10);
  __chkstk_darwin();
  v41 = v38 - v12;
  __chkstk_darwin();
  v40 = v38 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  v14 = *(v53 - 8);
  __chkstk_darwin();
  v16 = v38 - v15;
  v17 = MPModelResponseDidInvalidateNotification;
  type metadata accessor for BindingRequestResponseInvalidation();
  UIScreen.Dimensions.size.getter();
  v52[3] = &type metadata for NotificationTrigger;
  v52[4] = &protocol witness table for NotificationTrigger;
  v52[0] = v18;
  v52[1] = v19;
  v20 = v17;
  v21 = a2;
  v22 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(v52);
  v23 = sub_4C457C(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v22, v23);

  v24 = *v51;
  v49 = *(*v51 + 16);
  if (v49)
  {
    v48 = v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v45 = a4;
    v50 = *(a4 + 16);
    v47 = *(v14 + 72);
    v38[2] = v5;
    v39 = (v14 + 56);
    v38[1] = v24;

    v25 = 0;
    do
    {
      v51 = v25;
      sub_15F84(v48 + v47 * v25, v16, &unk_E00040, &unk_AFA530);
      if (v50)
      {
        v30 = v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v31 = *(v46 + 72);
        v32 = v50;
        while (1)
        {
          sub_15F84(v30, v11, &unk_DFEF20, &qword_AFA570);
          v33 = *v11;
          v37 = SnapshotIdentifier.identifiers.getter(v53, v34, v35, v36);
          LOBYTE(v33) = [v33 intersectsSet:v37];

          if (v33)
          {
            break;
          }

          sub_12E1C(v11, &unk_DFEF20, &qword_AFA570);
          v30 += v31;
          if (!--v32)
          {
            goto LABEL_4;
          }
        }

        v26 = v41;
        sub_36B0C(v11, v41, &unk_DFEF20, &qword_AFA570);
        v27 = v40;
        sub_36B0C(v26, v40, &unk_DFEF20, &qword_AFA570);
        v28 = v42;
        sub_15F84(v27, v42, &unk_DFEF20, &qword_AFA570);
        v29 = v43;
        sub_15F84(v16, v43, &unk_E00040, &unk_AFA530);
        (*v39)(v29, 0, 1, v53);
        swift_beginAccess();
        sub_2E5BB4(v29, v28);
        swift_endAccess();
        sub_12E1C(v27, &unk_DFEF20, &qword_AFA570);
      }

LABEL_4:
      v25 = (v51 + 1);
      sub_12E1C(v16, &unk_E00040, &unk_AFA530);
    }

    while (v25 != v49);
  }
}

double sub_4C3224(uint64_t a1, void (*a2)(uint64_t, unint64_t, void, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a1 + 16);

  v8 = sub_988FC(_swiftEmptyArrayStorage);
  v9 = sub_4C457C(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
  a2(v7, v8, 0, a4, v9);

  return result;
}

uint64_t sub_4C32F8()
{
  v0 = qword_E0B498;

  return v0;
}

double sub_4C3330@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_4C1ADC(sub_1D2A44, v6, a3);

  return result;
}

BOOL sub_4C33C0(uint64_t *a1, uint64_t *a2)
{
  sub_4C8ED8(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  result = (v5 | v6) == 0;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {

    v9 = sub_4740B4(v5, v6);

    return v9 & 1;
  }

  return result;
}

unint64_t sub_4C344C(uint64_t a1)
{
  *(a1 + 8) = sub_4C347C();
  result = sub_4C34D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_4C347C()
{
  result = qword_E0B598;
  if (!qword_E0B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B598);
  }

  return result;
}

unint64_t sub_4C34D0()
{
  result = qword_E0B5A0;
  if (!qword_E0B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B5A0);
  }

  return result;
}

unint64_t sub_4C3524(uint64_t a1)
{
  result = sub_4C354C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4C354C()
{
  result = qword_E0B5D8;
  if (!qword_E0B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B5D8);
  }

  return result;
}

unint64_t sub_4C35B0()
{
  result = qword_E0B620;
  if (!qword_E0B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B620);
  }

  return result;
}

unint64_t sub_4C3604(uint64_t a1)
{
  result = sub_4C362C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4C362C()
{
  result = qword_E0B698;
  if (!qword_E0B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B698);
  }

  return result;
}

unint64_t sub_4C3680(uint64_t a1)
{
  result = sub_4C36A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4C36A8()
{
  result = qword_E0B6D0;
  if (!qword_E0B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6D0);
  }

  return result;
}

unint64_t sub_4C36FC(void *a1)
{
  a1[1] = sub_4C3734();
  a1[2] = sub_4C3788();
  result = sub_4C37DC();
  a1[3] = result;
  return result;
}

unint64_t sub_4C3734()
{
  result = qword_E0B6D8;
  if (!qword_E0B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6D8);
  }

  return result;
}

unint64_t sub_4C3788()
{
  result = qword_E0B6E0;
  if (!qword_E0B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6E0);
  }

  return result;
}

unint64_t sub_4C37DC()
{
  result = qword_E0B6E8;
  if (!qword_E0B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6E8);
  }

  return result;
}

unint64_t sub_4C3834()
{
  result = qword_E0B6F0;
  if (!qword_E0B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6F0);
  }

  return result;
}

uint64_t sub_4C3890(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = sub_4C1244(*a2);
  v9[2] = a3;
  sub_4BF394(sub_4C4AF8, v5, v9, v4);
  v7 = v6;

  return sub_19D34(v7);
}

void sub_4C3924(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_15F84(a2, v9, &qword_DF4F58, &unk_B0EB60);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(v6 + 8))(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_12E1C(v9, &qword_DF4F58, &unk_B0EB60);
    v7 = 0;
  }

  v8 = [objc_allocWithZone(MPModelLibrarySearchScope) initWithItemKind:v4 name:0 properties:v7];

  *a3 = v8;
}

uint64_t sub_4C3A20(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_4C3A70(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_ABAC70();
      sub_13C80(0, &qword_DE7580, MPModelKind_ptr);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_13C80(0, &qword_DE7580, MPModelKind_ptr);
    if (sub_ABAC30() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_ABAC40();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v4 = v14;
    swift_unknownObjectRelease();
    v7 = sub_ABA780(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_ABA790();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

BOOL sub_4C3CC0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if (sub_ABA790())
  {
    return a1[4] == *(a2 + 32);
  }

  return 0;
}