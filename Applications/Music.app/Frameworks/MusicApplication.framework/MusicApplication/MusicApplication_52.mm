void sub_4684D8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_2:

    swift_unknownObjectRelease();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v2 = [Strong parentViewController];
  if (v2)
  {
    v16 = v2;
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      v5 = v0;
      v6 = v16;
LABEL_15:

      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      v12 = v11;
      v13 = v5;
      v14 = swift_unknownObjectWeakLoadStrong();
      *(v13 + 24) = v12;
      swift_unknownObjectWeakAssign();
      sub_12DE8C(v14);

      swift_unknownObjectRelease();
      goto LABEL_2;
    }

    v6 = v16;
    while (1)
    {
      v8 = v6;

      v6 = [v6 parentViewController];
      if (!v6)
      {
        break;
      }

      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v4 = v9;
        v5 = v0;
        goto LABEL_15;
      }
    }

    v7 = v16;
  }

  else
  {
    v7 = v15;
  }
}

uint64_t sub_4686C8(uint64_t a1, void *a2, uint64_t (*a3)(id, uint64_t, void), double a4)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = a2;
      if ([v9 isHidden] & 1) == 0 && (objc_msgSend(v9, "_isInAWindow") & 1) != 0 && (v11 = swift_unknownObjectWeakLoadStrong(), v12 = a3(v10, v11, *(v4 + 24)), swift_unknownObjectRelease(), (v12))
      {
        [v10 visibleBounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v10 adjustedContentInset];
        UIEdgeInsetsInsetRect(v14, v16, v18, v20, v21, v22);
        [v9 frame];
        v46 = v23;
        v24 = sub_ABA450();
        if (*(a1 + 200) > 1u)
        {
          if (*(a1 + 200) == 2)
          {
            v44 = [v9 superview];
            if (v44)
            {
              v45 = v44;
              [v9 frame];
              [v45 convertRect:v10 toCoordinateSpace:?];
              v25 = sub_ABA450();

              v42 = v9;
              v9 = v45;
              goto LABEL_18;
            }

            v25 = 1;
          }

          else
          {
            [v9 frame];
            [v9 convertRect:v10 toCoordinateSpace:?];
            [v10 visibleBounds];
            v25 = sub_ABA450();
          }
        }

        else
        {
          v25 = v24;
          if (*(a1 + 200))
          {
            if ((v24 & 1) != 0 && swift_unknownObjectWeakLoadStrong() && (v26 = *(v4 + 24), ObjectType = swift_getObjectType(), v28 = (*(v26 + 88))(ObjectType, v26), swift_unknownObjectRelease(), v28))
            {
              if (v28 != a2 && (v29 = swift_unknownObjectWeakLoadStrong()) != 0 && (v30 = v29, v31 = [v29 superview], v30, v31))
              {
                [v28 visibleBounds];
                v33 = v32;
                v35 = v34;
                v37 = v36;
                v39 = v38;
                [v28 adjustedContentInset];
                UIEdgeInsetsInsetRect(v33, v35, v37, v39, v40, v41);
                [v9 frame];
                [v31 convertRect:v28 toCoordinateSpace:?];
                v25 = sub_ABA450();

                v42 = v28;
                v9 = v31;
              }

              else
              {

                v25 = 1;
                v42 = v10;
                v9 = v28;
              }
            }

            else
            {
              v25 = 1;
              v42 = v9;
              v9 = v10;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v42 = v10;
LABEL_18:

      return v25 & 1;
    }
  }

  v25 = 0;
  return v25 & 1;
}

id sub_468AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  if (!a2)
  {
    return &dword_0 + 1;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 88))(ObjectType, a3);
  if (!v8)
  {
    return &dword_0 + 1;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v10 superview];
  if (v11)
  {
    while (1)
    {

      if (v10)
      {
        v13 = [v10 superview];
        if (v13)
        {
          v14 = v13;

          if (v14 == v9)
          {
            break;
          }
        }
      }

      v12 = [v10 superview];

      v11 = [v12 superview];
      v10 = v12;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = v10;
LABEL_10:
  [v9 visibleBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = [v9 adjustedContentInset];
  if (v12)
  {
    v26 = UIEdgeInsetsInsetRect(v16, v18, v20, v22, v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v12 frame];
    v42.origin.x = v33;
    v42.origin.y = v34;
    v42.size.width = v35;
    v42.size.height = v36;
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    if (CGRectIntersectsRect(v41, v42))
    {
      v37 = swift_getObjectType();
      v38 = (*(a3 + 32))(v37, a3);
      v40 = a4(v9, v38, v39);

      swift_unknownObjectRelease();
      return (v40 & 1);
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

  return result;
}

uint64_t sub_468CF8(void *a1)
{
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  v3 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v4 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
  v5 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v3, *v4, 0, v1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v3, *v4, 0, a1);
    if (v10)
    {
      if (v7 == v9 && v8 == v10)
      {

LABEL_15:
        v16 = 1;
        return v16 & 1;
      }

      v12 = sub_ABB3C0();

      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v13 = sub_4709EC(v1);
  v14 = sub_4709EC(a1);
  if (v13[2] && v14[2])
  {
    v15 = sub_470AD0(v14, v13);

    v16 = v15 ^ 1;
  }

  else
  {

    v16 = 0;
  }

  return v16 & 1;
}

double sub_468E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210, &unk_B107A0);
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v24[-1] - v13;
  if (*(v4 + qword_E719B0) == 1)
  {
    v15 = [v4 traitCollection];
    v16 = UITraitCollection.isMediaPicker.getter(v15);

    if (!v16)
    {
      v21 = [v5 isEditing];
      v22 = *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText);
      *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText) = v21 ^ 1;
      if (v22 == (v21 ^ 1))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText);
  *(a1 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText) = 0;
  if (v17)
  {
LABEL_4:
    __chkstk_darwin();
    *(&v23 - 2) = a1;
    type metadata accessor for DetailCellTextStack(0);
    sub_471B10(&unk_DF8680, type metadata accessor for DetailCellTextStack, &unk_AFAE58);
    sub_AB6780();
    sub_AB6AA0();
    v24[3] = v10;
    v24[4] = sub_36A00(&unk_E09220, &unk_E09210, &unk_B107A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    __swift_allocate_boxed_opaque_existential_0(v24);
    sub_AB6770();
    (*(v11 + 8))(v14, v10);
    sub_ABA2B0();
  }

LABEL_5:
  v18 = static String.stringForTrackCountAndDuration(trackCount:duration:)(a2, 0, a3, a4 & 1);
  return sub_AB850(v18, v19);
}

void sub_469118()
{
  (*&stru_6A8.segname[(swift_isaMask & *v0) - 8])();

  sub_46C570();
}

uint64_t sub_469178@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30) - 8;
  __chkstk_darwin();
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v25 - v12;
  v27 = *(v5 + 16);
  v28 = a1;
  v27(&v25 - v12, a1, v4, v11);
  v29 = *(v5 + 56);
  v30 = v5 + 56;
  v29(v13, 0, 1, v4);
  v14 = qword_E719B8;
  swift_beginAccess();
  v15 = *(v7 + 56);
  sub_15F84(v13, v9, &unk_DE8E20, &qword_AF7990);
  sub_15F84(v2 + v14, &v9[v15], &unk_DE8E20, &qword_AF7990);
  v16 = *(v5 + 48);
  if (v16(v9, 1, v4) == 1)
  {
    sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    if (v16(&v9[v15], 1, v4) == 1)
    {
      sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
LABEL_9:
      v19 = 1;
      v18 = v31;
      return v29(v18, v19, 1, v4);
    }

    goto LABEL_6;
  }

  v17 = v26;
  sub_15F84(v9, v26, &unk_DE8E20, &qword_AF7990);
  if (v16(&v9[v15], 1, v4) == 1)
  {
    sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    (*(v5 + 8))(v17, v4);
LABEL_6:
    sub_12E1C(v9, &unk_DF7930, &unk_B03B30);
    goto LABEL_7;
  }

  v20 = &v9[v15];
  v21 = v25;
  (*(v5 + 32))(v25, v20, v4);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v22 = sub_AB91C0();
  v23 = *(v5 + 8);
  v23(v21, v4);
  sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
  v23(v17, v4);
  sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = v31;
  (v27)(v31, v28, v4);
  v19 = 0;
  return v29(v18, v19, 1, v4);
}

void sub_4695C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30) - 8;
  __chkstk_darwin();
  v10 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v14 = qword_E719B8;
  swift_beginAccess();
  v15 = *(v6 + 16);
  v33 = a2;
  v16 = a2;
  v17 = v3;
  v15(v13, v16, v5);
  (*(v6 + 56))(v13, 0, 1, v5);
  v18 = *(v8 + 56);
  sub_15F84(v3 + v14, v10, &unk_DE8E20, &qword_AF7990);
  sub_15F84(v13, &v10[v18], &unk_DE8E20, &qword_AF7990);
  v19 = *(v6 + 48);
  if (v19(v10, 1, v5) == 1)
  {
    sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    if (v19(&v10[v18], 1, v5) == 1)
    {
      sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v20 = v31;
  sub_15F84(v10, v31, &unk_DE8E20, &qword_AF7990);
  if (v19(&v10[v18], 1, v5) == 1)
  {
    sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    (*(v6 + 8))(v20, v5);
LABEL_6:
    sub_12E1C(v10, &unk_DF7930, &unk_B03B30);
LABEL_7:
    sub_3E61E0(v32, v33);
    return;
  }

  v21 = v30;
  (*(v6 + 32))(v30, &v10[v18], v5);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v22 = sub_AB91C0();
  v23 = *(v6 + 8);
  v23(v21, v5);
  sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
  v23(v20, v5);
  sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v24 = sub_3B350C(v33);
  v25 = (*&stru_158.sectname[swift_isaMask & *v17])();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 results];

    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = [v27 totalItemCount];
  }

  else
  {
    v28 = 0;
  }

  (*(&stru_798.size + (swift_isaMask & *v17)))(v24, v28, *(v17 + qword_E719C0), *(v17 + qword_E719C0 + 8));
}

uint64_t sub_469AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_AB3820() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v7 = 0;
  while ((sub_AB91C0() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_469BE8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_ABB060();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_35F8D4(v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v8 = sub_ABA790();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_469CF8(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x7972617262696CLL;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  while (1)
  {
    v6 = *(v4 + v3) ? 0x7972617262696CLL : 0x676F6C61746163;
    if (v6 == v5)
    {
      break;
    }

    v7 = sub_ABB3C0();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v3;
}

char *sub_469DDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  v11 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v12 = *v11 == a2 && v11[1] == a3;
  if (v12 || (sub_ABB3C0()) && (v13 = *(v5 + qword_E08820)) != 0)
  {
    v14 = type metadata accessor for ContainerDetailHeaderReusableView();
    v15 = v13;
    v16 = static UICollectionReusableView.reuseIdentifier.getter();
    v18 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v14, a2, a3, a4, v16, v17, v14);

    v19 = *&v18[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
    *&v18[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView] = v13;
    v20 = v15;
    sub_1331DC(v19);

    v21 = *&stru_5B8.segname[(swift_isaMask & *v6) + 8];
    v22 = 0;
    if ((v21() & 1) == 0)
    {
      v22 = *(v6 + qword_E08840);
      v23 = v22;
    }

    v24 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView;
    v25 = *&v18[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView];
    *&v18[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView] = v22;
    v26 = v22;
    [v25 removeFromSuperview];
    if (*&v18[v24])
    {
      [v18 addSubview:?];
    }

    [v18 setNeedsLayout];

    v27 = *&v18[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator];
    if (*(v6 + qword_E08838) == 1 && !*(v6 + qword_E08840))
    {
      v28 = 1;
    }

    else
    {
      v28 = v21();
    }

    [v27 setHidden:v28 & 1];
    v18[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightViewDisplayStyle] = *(v6 + qword_E08830);
    v29 = v18;
    [v29 frame];
    [a1 bounds];
    [v29 sizeThatFits:{v30, v31}];
    [v29 frame];
    [v29 setFrame:?];

    return v29;
  }

  else
  {

    return sub_3DE1D8(a1, a4);
  }
}

BOOL sub_46A0D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  v4 = __chkstk_darwin();
  v6 = &v10 - v5;
  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a2, v4);
  v7 = sub_AB3820();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
  return v8;
}

void sub_46A200(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v46 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = &v43 - v10;
  v12 = sub_AB3820();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin();
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  if (!a1)
  {
    v17 = (*&stru_158.sectname[swift_isaMask & *v4])(v14);
    if (!v17)
    {
LABEL_5:
      v19 = type metadata accessor for PlaybackIntentDescriptor(0);
      v20 = *(*(v19 - 8) + 56);

      v20(a3, 1, 1, v19);
      return;
    }
  }

  v18 = a1;
  if ([v17 isEmpty])
  {

    goto LABEL_5;
  }

  sub_15F84(a2, v11, &unk_DE8E20, &qword_AF7990);
  v21 = (*(v13 + 48))(v11, 1, v12);
  v22 = &selRef__authenticateReturningError_;
  v45 = a3;
  if (v21 == 1)
  {
    sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
LABEL_19:
    v34 = 0;
    goto LABEL_25;
  }

  (*(v13 + 32))(v16, v11, v12);
  v23 = [v17 results];
  if (!v23)
  {
    (*(v13 + 8))(v16, v12);
    goto LABEL_19;
  }

  v24 = v23;
  isa = sub_AB3770().super.isa;
  v26 = [v24 itemAtIndexPath:isa];

  if (!v26)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
LABEL_21:
    (*(v13 + 8))(v16, v12);
    v34 = 0;
    goto LABEL_24;
  }

  v28 = v27;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {
    goto LABEL_23;
  }

  v29 = (*&stru_158.sectname[swift_isaMask & *v4])();
  if (!v29)
  {
    goto LABEL_23;
  }

  v30 = v29;
  swift_unknownObjectRetain();
  v31 = [v30 request];

  if (!v31)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  type metadata accessor for JSContainerDetailModelRequest();
  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease();

  if (!v32)
  {
LABEL_23:
    v34 = [v28 identifiers];
    swift_unknownObjectRelease();
    (*(v13 + 8))(v16, v12);
    goto LABEL_24;
  }

  v33 = [v44 innermostModelObject];
  v34 = [v33 identifiers];
  (*(v13 + 8))(v16, v12);
  swift_unknownObjectRelease();

LABEL_24:
  v22 = &selRef__authenticateReturningError_;
LABEL_25:
  v35 = [v17 v22[224]];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 playbackIntentWithStartItemIdentifiers:v34];

    if (v37)
    {
      *v9 = v37;
      swift_storeEnumTagMultiPayload();
      v50 = 0;
      memset(v49, 0, sizeof(v49));
      v48 = 0;
      memset(v47, 0, sizeof(v47));
      v38 = v4;
      v42 = v4;
      v39 = v45;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v9, v49, 3, 0, 0, 1, 0, 1, v45, v42, v47);

      v40 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    }

    else
    {

      v41 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v41 - 8) + 56))(v45, 1, 1, v41);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_46A81C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_2EC048(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = sub_AB3820();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

double sub_46A8FC(void *a1)
{
  sub_3B316C(a1);
  v1 = type metadata accessor for DetailCell(0);
  v2 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v1, v2, v3);

  v4 = type metadata accessor for ContainerDetailHeaderReusableView();
  v5 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v6 = *v5;
  v7 = v5[1];

  v8 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v4, v6, v7, v8, v9);

  return result;
}

void sub_46A9C8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = a2;
  v7 = [v5 tableViewCell];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 _setDrawsSeparatorAtTopOfSection:0];

  v9 = [v5 tableViewCell];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 _setDrawsSeparatorAtBottomOfSection:0];
}

double sub_46AAB8(int a1, id a2)
{
  [a2 clearArtworkCatalogs];
  sub_46B304();
  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB3820();
  v3 = __swift_project_value_buffer(v2, qword_E71978);
  sub_470E6C(v3, &unk_D14FB8, &unk_D14FE0, sub_47113C);

  return result;
}

void sub_46AB6C(void *a1, uint64_t a2)
{
  sub_3B41F4(a1, a2);
  isa = sub_AB3770().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  sub_46C814();
}

void sub_46ABE0(uint64_t a1)
{
  v2 = qword_DFE308;
  *(v1 + qword_DFE308) = a1;

  sub_4A4164();

  v3 = *(v1 + v2);
  if (v3)
  {
    *(v3 + 24) = &off_D14F98;

    swift_unknownObjectWeakAssign();
  }
}

void *sub_46AC70()
{
  v1 = *(v0 + qword_E08818);
  v2 = v1;
  return v1;
}

void sub_46ACA0(void *a1)
{
  v2 = qword_E08818;
  v3 = *(v1 + qword_E08818);
  *(v1 + qword_E08818) = a1;
  v8 = a1;

  v4 = *(v1 + qword_E08810);
  if (v4)
  {
    v5 = *(v1 + qword_E08810 + 8);
    v6 = *(v1 + v2);
    sub_307CC(v4, v5);
    v7 = v6;
    v4(v6);

    sub_3FC30(v4, v5);
  }

  else
  {
  }
}

void *sub_46AD74()
{
  v1 = *(v0 + qword_E08820);
  v2 = v1;
  return v1;
}

void sub_46ADA4(void *a1)
{
  v3 = *(v1 + qword_E08820);
  *(v1 + qword_E08820) = a1;
  v2 = a1;
  sub_46E2F0(v3);
}

void *sub_46AE24()
{
  v1 = *(v0 + qword_E08840);
  v2 = v1;
  return v1;
}

void sub_46AE54(uint64_t a1)
{
  v2 = *(v1 + qword_E08840);
  *(v1 + qword_E08840) = a1;
}

void sub_46AE68(void *a1)
{
  v2 = *(v1 + qword_E08848);
  *(v1 + qword_E08848) = a1;
  v3 = a1;

  *(v1 + qword_E08860) = 0;
  (*&stru_6A8.segname[(swift_isaMask & *v1) - 8])();
}

void sub_46AF10(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4 = __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&stru_158.sectname[swift_isaMask & *v1];
  v8 = v7(v4);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 results];

    if (v10)
    {
      isa = sub_AB3770().super.isa;
      v12 = [v10 itemAtIndexPath:isa];

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v31 = a1;
          v14 = v13;
          v15 = (*&stru_6F8.segname[swift_isaMask & *v2])();
          if (v15)
          {
            v16 = v15;
            v17 = (*&stru_6F8.segname[(swift_isaMask & *v2) - 8])(v14);
            if (v17)
            {
              v18 = v17;
              v19 = (v7)();
              if (v19 && (v20 = v19, v21 = [v19 request], v20, v21))
              {
                v36 = &OBJC_PROTOCOL____TtP16MusicApplication43ContainerDetailIndividualPlaybackIntentable_;
                v22 = swift_dynamicCastObjCProtocolConditional();
                if (v22)
                {
                  v23 = v22;
                  v24 = [objc_opt_self() emptyPropertySet];
                  v25 = [v23 playbackIntentFor:v16 itemKind:v18 itemProperties:v24];

                  if (v25)
                  {
                    *v6 = v25;
                    swift_storeEnumTagMultiPayload();
                    v35 = 0;
                    memset(v34, 0, sizeof(v34));
                    v33 = 0;
                    memset(v32, 0, sizeof(v32));
                    v26 = v2;
                    v27 = v31;
                    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, v34, 3, 0, 0, 1, 0, 1, v31, v2, v32);
                    v28 = type metadata accessor for PlaybackIntentDescriptor(0);
                    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
                    swift_unknownObjectRelease();

                    return;
                  }
                }

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          a1 = v31;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v29 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
}

void *sub_46B304()
{
  v1 = qword_E08870;
  if (*&v0[qword_E08870])
  {
    v2 = *&v0[qword_E08870];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E091A0, &qword_B10728);
    swift_allocObject();
    v2 = sub_2C0B70(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_46B3D0(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v37 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + qword_E08820);
  if (v11)
  {
    type metadata accessor for DetailHeader();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_E71978);
  if (sub_AB3780())
  {
    v14 = v2 + qword_E08808;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 1);
      ObjectType = swift_getObjectType();
      (*(v15 + 40))(&v76, v2, ObjectType, v15);
      swift_unknownObjectRelease();

LABEL_25:
      v30 = v83;
      a2[6] = v82;
      a2[7] = v30;
      a2[8] = v84[0];
      *(a2 + 137) = *(v84 + 9);
      v31 = v79;
      a2[2] = v78;
      a2[3] = v31;
      v32 = v81;
      a2[4] = v80;
      a2[5] = v32;
      v33 = v77;
      *a2 = v76;
      a2[1] = v33;
      return;
    }

LABEL_24:

    sub_465CC(&v76);
    goto LABEL_25;
  }

  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
    goto LABEL_24;
  }

  v17 = (*(v8 + 32))(v10, v6, v7);
  v18 = (*&stru_158.sectname[swift_isaMask & *v2])(v17);
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = v18;
  v20 = [v18 results];

  if (!v20)
  {
    goto LABEL_29;
  }

  isa = sub_AB3770().super.isa;
  v22 = [v20 itemAtIndexPath:isa];

  if (!v22)
  {
LABEL_23:
    (*(v8 + 8))(v10, v7);
    goto LABEL_24;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v24 = v23;
  v25 = IndexPath.safeItem.getter();
  if (!v12 || (v26 = __OFADD__(v25, 1), ++v25, !v26))
  {
    v39 = v25;
    sub_27A160(v24, &v85);
    v88 = v86;
    v89 = v85;
    v74 = v85;
    v75 = v86;
    v27 = v87;
    v28 = sub_279AC8(v87);
    v38 = v27;
    if (v28 == 0x497972617262696CLL && v29 == 0xEB000000006D6574)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_ABB3C0() ^ 1;
    }

    sub_15F84(&v89, &v76, &unk_DEE6F0, &unk_AF8970);
    sub_15F84(&v88, &v76, &unk_DEE6F0, &unk_AF8970);

    v34 = v37 & 1;
    (*(v8 + 8))(v10, v7);
    sub_28D048(&v85);
    v40 = v74;
    v41 = v75;
    v35 = v39;
    *&v42 = 8;
    *(&v42 + 1) = v39;
    LOWORD(v43[0]) = 512;
    v36 = v38;
    BYTE2(v43[0]) = v38;
    *(v43 + 3) = v72;
    BYTE7(v43[0]) = v73;
    *(v43 + 8) = 0u;
    *(&v43[1] + 8) = 0u;
    *(&v43[2] + 8) = 0u;
    *(&v43[3] + 8) = 0u;
    *(&v43[4] + 1) = 0;
    LOBYTE(v44[0]) = v34;
    *(v44 + 1) = *v71;
    DWORD1(v44[0]) = *&v71[3];
    *(&v44[0] + 1) = 0;
    *&v44[1] = 0;
    BYTE8(v44[1]) = 2;
    sub_465F4(&v40, &v76);
    swift_unknownObjectRelease();
    v45[0] = v74;
    v45[1] = v75;
    v46 = 8;
    v47 = v35;
    v48 = 512;
    v49 = v36;
    v50 = v72;
    v51 = v73;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v57 = v34;
    *v58 = *v71;
    *&v58[3] = *&v71[3];
    v59 = 0;
    v60 = 0;
    v61 = 2;
    sub_46650(v45);

    v68 = v43[3];
    v69 = v43[4];
    v70[0] = v44[0];
    *(v70 + 9) = *(v44 + 9);
    v64 = v42;
    v65 = v43[0];
    v66 = v43[1];
    v67 = v43[2];
    v62 = v40;
    v63 = v41;
    UIScreen.Dimensions.size.getter();
    v82 = v68;
    v83 = v69;
    v84[0] = v70[0];
    *(v84 + 9) = *(v70 + 9);
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v81 = v67;
    v76 = v62;
    v77 = v63;
    goto LABEL_25;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_46BA20(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v32 = a1;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30) - 8;
  __chkstk_darwin();
  v11 = &v31 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  v15 = qword_E719B8;
  swift_beginAccess();
  (*(v7 + 16))(v14, a3, v6);
  (*(v7 + 56))(v14, 0, 1, v6);
  v16 = *(v9 + 56);
  sub_15F84(v4 + v15, v11, &unk_DE8E20, &qword_AF7990);
  sub_15F84(v14, &v11[v16], &unk_DE8E20, &qword_AF7990);
  v17 = *(v7 + 48);
  if (v17(v11, 1, v6) == 1)
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    if (v17(&v11[v16], 1, v6) == 1)
    {
      sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v18 = v34;
  sub_15F84(v11, v34, &unk_DE8E20, &qword_AF7990);
  if (v17(&v11[v16], 1, v6) == 1)
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    (*(v7 + 8))(v18, v6);
LABEL_6:
    sub_12E1C(v11, &unk_DF7930, &unk_B03B30);
LABEL_7:
    [v35 rowHeight];
    return;
  }

  v19 = v33;
  (*(v7 + 32))(v33, &v11[v16], v6);
  sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v20 = sub_AB91C0();
  v21 = *(v7 + 8);
  v21(v19, v6);
  sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
  v21(v18, v6);
  sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v22 = sub_46C4B0();
  v23 = (*&stru_158.sectname[swift_isaMask & *v4])();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 results];

    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = [v25 totalItemCount];
  }

  else
  {
    v26 = 0;
  }

  v27 = (*(&stru_798.size + (swift_isaMask & *v4)))(v22, v26, *(v4 + qword_E719C0), *(v4 + qword_E719C0 + 8));
  if ((*&stru_5B8.segname[(swift_isaMask & *v4) + 8])(v27))
  {
  }

  else
  {
    [v35 rowHeight];
    [v32 bounds];
    v29 = v28;
    v30 = [v22 contentView];
    [v30 sizeThatFits:{v29, 1.79769313e308}];
  }
}

void sub_46BFE0(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v44 = a2;
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v3;
  v16 = [v3 traitCollection];
  v17 = UITraitCollection.isMediaPicker.getter(v16);

  if (v17)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = a1;
      v21 = v43;
      sub_46AF10(v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_12E1C(v10, &unk_DEA510, "\b]\r");
      }

      else
      {
        v27 = v15;
        sub_140E58(v10, v15);
        [v21 loadViewIfNeeded];
        v28 = *&v21[qword_DFE2F8];
        if (v28)
        {
          v29 = v28;
          isa = sub_AB3770().super.isa;
          v31 = [v29 cellForItemAtIndexPath:isa];

          if (v31)
          {
            type metadata accessor for SongCell(0);
            v32 = swift_dynamicCastClass();
            if (!v32)
            {
            }
          }

          else
          {
            v32 = 0;
          }

          if (*&v21[qword_DFE298])
          {
            if (v32)
            {
              v33 = &off_D02738;
            }

            else
            {
              v33 = 0;
            }

            v34 = v32;
            sub_3B8FA0(v15, v19, v32, v33);

            v21 = v43;
          }

          v35 = v21;
          v36 = &v21[qword_E08808];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v36 + 1);
            ObjectType = swift_getObjectType();
            v39 = *(v37 + 16);
            v40 = v20;
            v39(v35, v19, v44, ObjectType, v37);

            sub_1914D8(v27);
            swift_unknownObjectRelease();
          }

          else
          {
            v41 = v20;
            sub_1914D8(v27);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    v22 = Logger.jsBridge.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v22, v5);
    v23 = sub_AB4BA0();
    v24 = sub_AB9F40();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_425E68(0xD000000000000030, 0x8000000000B662A0, &v45);
      _os_log_impl(&dword_0, v23, v24, "Attempted to perform %s within Legacy Music, outside a picker environment, which is not unexpected.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    (*(v6 + 8))(v8, v5);
  }
}

id sub_46C4B0()
{
  v1 = qword_E08888;
  v2 = *&v0[qword_E08888];
  if (v2)
  {
    v3 = *&v0[qword_E08888];
LABEL_5:
    v7 = v2;
    return v3;
  }

  type metadata accessor for DetailCell(0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setHidden:1];
  [v0 loadViewIfNeeded];
  result = *&v0[qword_DFE2F8];
  if (result)
  {
    [result addSubview:v4];
    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_46C570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v17 - v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v17 - v8;
  v10 = qword_E08860;
  if ((v0[qword_E08860] & 1) == 0 && [v0 isViewLoaded])
  {
    v11 = qword_E71990;
    swift_beginAccess();
    sub_15F84(&v0[v11], v2, &unk_DE8E20, &qword_AF7990);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_12E1C(v2, &unk_DE8E20, &qword_AF7990);
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      (*(v4 + 16))(v6, v9, v3);
      [v0 loadViewIfNeeded];
      v12 = *&v0[qword_DFE2F8];
      if (v12)
      {
        v13 = v0;
        v14 = v12;
        isa = sub_AB3770().super.isa;
        [v14 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:v13[qword_E08878]];
        v16 = *(v4 + 8);
        v16(v6, v3);
        v16(v9, v3);

        v13[v10] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_46C814()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 loadViewIfNeeded];
  v6 = *&v0[qword_DFE2F8];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v7 indexPathsForSelectedItems];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB9760();

    sub_AB37C0();
    if (v10)
    {
      sub_469AC8(v5, v10);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        v13 = v0[qword_E719C8];
        v0[qword_E719C8] = 1;
        if ((v13 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_10:
        (*(v2 + 8))(v5, v1);
        return;
      }
    }
  }

  else
  {

    sub_AB37C0();
  }

  v18 = qword_E08880;
  swift_beginAccess();
  v19 = *&v0[v18];

  sub_469AC8(v5, v19);
  v21 = v20;

  v22 = v0[qword_E719C8];
  v23 = (v21 & 1) == 0;
  v0[qword_E719C8] = v23;
  if (v22 == v23)
  {
    goto LABEL_10;
  }

LABEL_6:
  v14 = &v0[qword_E08808];
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 1);
  (*(v2 + 8))(v5, v1);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v0, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_46CA68(uint64_t a1, uint64_t a2, double a3, uint64_t a4, _OWORD *a5, uint64_t a6, char a7, char a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, double), uint64_t *a11, uint64_t *a12, void (*a13)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (*(*(v21 + 112) + 16))
    {

      sub_2EC048(a2);
      if (v22)
      {

        swift_unknownObjectWeakAssign();
LABEL_9:

        a10(v29, a2, a9, a3);
      }
    }

    if (a8 == 4)
    {
      a8 = *(v21 + 40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = a5[7];
    *(v23 + 112) = a5[6];
    *(v23 + 128) = v24;
    *(v23 + 144) = a5[8];
    *(v23 + 153) = *(a5 + 137);
    v25 = a5[3];
    *(v23 + 48) = a5[2];
    *(v23 + 64) = v25;
    v26 = a5[5];
    *(v23 + 80) = a5[4];
    *(v23 + 96) = v26;
    v27 = a5[1];
    *(v23 + 16) = *a5;
    *(v23 + 32) = v27;
    swift_unknownObjectWeakAssign();
    *(v23 + 176) = a6;
    *(v23 + 184) = a7 & 1;
    *(v23 + 200) = a8;
    swift_beginAccess();
    sub_465F4(a5, v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *(v21 + 112);
    *(v21 + 112) = 0x8000000000000000;
    a13(v23, a2, isUniquelyReferenced_nonNull_native);
    *(v21 + 112) = v30[0];
    swift_endAccess();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_46CC94(uint64_t a1, uint64_t a2, double a3, uint64_t a4, _OWORD *a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    if (*(*(v17 + 112) + 16) && (sub_2F5A90(a2), (v18 & 1) != 0))
    {
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (a8 == 4)
      {
        a8 = *(v17 + 40);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09248, &qword_B107C8);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = a5[7];
      *(v19 + 112) = a5[6];
      *(v19 + 128) = v20;
      *(v19 + 144) = a5[8];
      *(v19 + 153) = *(a5 + 137);
      v21 = a5[3];
      *(v19 + 48) = a5[2];
      *(v19 + 64) = v21;
      v22 = a5[5];
      *(v19 + 80) = a5[4];
      *(v19 + 96) = v22;
      v23 = a5[1];
      *(v19 + 16) = *a5;
      *(v19 + 32) = v23;
      swift_unknownObjectWeakAssign();
      *(v19 + 176) = a6;
      *(v19 + 184) = a7 & 1;
      *(v19 + 200) = a8;
      swift_beginAccess();
      sub_465F4(a5, v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26[0] = *(v17 + 112);
      *(v17 + 112) = 0x8000000000000000;
      sub_94810(v19, a2, isUniquelyReferenced_nonNull_native);
      *(v17 + 112) = v26[0];
      swift_endAccess();
    }

    sub_467134(v25, a2, a9, a3);
  }

  return result;
}

uint64_t sub_46CE94(uint64_t a1, uint64_t a2, double a3, uint64_t a4, _OWORD *a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    v18 = *(v17 + 112);
    if (*(v18 + 16) && (v19 = sub_2F5A90(a2), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (a8 == 4)
      {
        a8 = *(v17 + 40);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09258, &unk_B107D8);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = a5[7];
      *(v21 + 112) = a5[6];
      *(v21 + 128) = v22;
      *(v21 + 144) = a5[8];
      *(v21 + 153) = *(a5 + 137);
      v23 = a5[3];
      *(v21 + 48) = a5[2];
      *(v21 + 64) = v23;
      v24 = a5[5];
      *(v21 + 80) = a5[4];
      *(v21 + 96) = v24;
      v25 = a5[1];
      *(v21 + 16) = *a5;
      *(v21 + 32) = v25;
      swift_unknownObjectWeakAssign();
      *(v21 + 176) = a6;
      *(v21 + 184) = a7 & 1;
      *(v21 + 200) = a8;
      swift_beginAccess();
      sub_465F4(a5, v27);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27[0] = *(v17 + 112);
      *(v17 + 112) = 0x8000000000000000;
      sub_956BC(v21, a2, isUniquelyReferenced_nonNull_native);
      *(v17 + 112) = v27[0];
      swift_endAccess();
    }

    sub_467F10(v21, a2, a9, a3);
  }

  return result;
}

void sub_46D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_beginAccess();
  v9 = sub_46A81C(a2, sub_27F6E8, sub_331E14);
  swift_endAccess();

  if (!v9)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_25:

    return;
  }

  v11 = Strong;
  v12 = *(v9 + 88);
  if (*(v9 + 144))
  {
    v13 = *(v9 + 16);
  }

  else
  {
    v13 = 0;
  }

  if (*(v9 + 144))
  {
    v14 = *(v9 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (v12)
  {
    v15 = (v12 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v13 = *v15;
    v14 = v15[1];
  }

  else if (!v14)
  {
    v33[0] = *(v9 + 56);
    v13 = sub_ABB330();
    v14 = v31;
    goto LABEL_15;
  }

LABEL_15:
  swift_beginAccess();
  v16 = *(v11 + 104);
  if (*(v16 + 16))
  {

    v17 = sub_2EBF88(v13, v14);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      swift_beginAccess();
      v20 = *(v19 + 200);
      v23 = *(v20 + 16);
      v21 = v20 + 16;
      v22 = v23;
      if (v23 && (*(v21 + 16 * v22 + 8) & 1) == 0)
      {
        (*(v6 + 16))(v8, a3, v5);
        sub_AB33D0();
        v25 = v24;
        (*(v6 + 8))(v8, v5);
        swift_beginAccess();
        v26 = *(v19 + 200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v19 + 200) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_6A8D8(0, *(v26 + 2) + 1, 1, v26);
          *(v19 + 200) = v26;
        }

        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        if (v29 >= v28 >> 1)
        {
          v26 = sub_6A8D8((v28 > 1), v29 + 1, 1, v26);
        }

        *(v26 + 2) = v29 + 1;
        v30 = &v26[16 * v29];
        *(v30 + 4) = v25;
        v30[40] = 1;
        *(v19 + 200) = v26;
        swift_endAccess();
      }

      goto LABEL_25;
    }
  }

  else
  {
  }
}

void sub_46D43C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), void (*a5)(void), uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v37[0] = a6;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_beginAccess();
  v14 = sub_46A81C(a2, a4, a5);
  swift_endAccess();

  if (!v14)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v16 = Strong;
  v17 = *(v14 + 88);
  if (*(v14 + 144))
  {
    v18 = *(v14 + 16);
  }

  else
  {
    v18 = 0;
  }

  if (*(v14 + 144))
  {
    v19 = *(v14 + 24);
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = (v17 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v18 = *v20;
    v19 = v20[1];
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v37[7] = *(v14 + 56);
  v18 = sub_ABB330();
  v19 = v36;
LABEL_15:
  swift_beginAccess();
  v21 = *(v16 + 104);
  if (!*(v21 + 16))
  {

LABEL_27:

    return;
  }

  v22 = sub_2EBF88(v18, v19);
  if ((v23 & 1) == 0)
  {

    goto LABEL_27;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  swift_beginAccess();
  v25 = *(v24 + 200);
  v28 = *(v25 + 16);
  v26 = v25 + 16;
  v27 = v28;
  if (v28 && (*(v26 + 16 * v27 + 8) & 1) == 0)
  {
    (*(v11 + 16))(v13, a3, v10);
    sub_AB33D0();
    v30 = v29;
    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    v31 = *(v24 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 200) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = (v37[0])(0, *(v31 + 16) + 1, 1, v31);
      *(v24 + 200) = v31;
    }

    v34 = *(v31 + 16);
    v33 = *(v31 + 24);
    if (v34 >= v33 >> 1)
    {
      v31 = (v37[0])(v33 > 1, v34 + 1, 1, v31);
    }

    *(v31 + 16) = v34 + 1;
    v35 = v31 + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = 1;
    *(v24 + 200) = v31;
    swift_endAccess();
  }
}

uint64_t sub_46D7D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin();
  v7 = &v10[-v6];
  (*&stru_838.segname[(swift_isaMask & *v1) + 8])(a1, v5);
  v8 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(v1 + v8, v4, &unk_DE8E20, &qword_AF7990);
  swift_beginAccess();
  sub_57890(v7, v1 + v8);
  swift_endAccess();
  sub_46EB6C(v4);
  sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
  return sub_12E1C(v7, &unk_DE8E20, &qword_AF7990);
}

id sub_46D9A4()
{
  v1 = (*(&stru_608.size + (swift_isaMask & *v0)))();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 songKind];
  }

  else
  {

    return 0;
  }

  return v3;
}

void sub_46DA70(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v20 = a1;
    v4 = [v20 results];
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = v4;
    v6 = [v4 numberOfSections];

    if (v6 >= 1)
    {
      v7 = [v20 results];
      if (!v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = v7;
      v9 = [v7 numberOfSections];

      v10 = v9 - 1;
      if (!__OFSUB__(v9, 1))
      {
        v11 = [v20 results];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 numberOfItemsInSection:v10];

          if (v13 < 1 || ((*&stru_5B8.segname[(swift_isaMask & *v2) + 8])() & 1) != 0)
          {
            v14 = sub_AB3820();
            (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
LABEL_16:

            return;
          }

          v17 = [v20 results];
          if (v17)
          {
            v18 = v17;
            [v17 numberOfItemsInSection:v10];

            sub_AB37A0();
            v19 = sub_AB3820();
            (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
            goto LABEL_16;
          }

LABEL_23:
          __break(1u);
          return;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v15 = sub_AB3820();
  v16 = *(*(v15 - 8) + 56);

  v16(a2, 1, 1, v15);
}

uint64_t sub_46DCF0(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*&stru_1F8.segname[(swift_isaMask & *v2) + 16])(a1, v8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
    goto LABEL_3;
  }

  v13 = (*(v7 + 32))(v10, v5, v6);
  v14 = (*&stru_158.sectname[swift_isaMask & *v2])(v13);
  v11 = v14;
  if (!v14)
  {
    (*(v7 + 8))(v10, v6);
    return v11 & 1;
  }

  v15 = [v14 results];
  if (!v15)
  {
    (*(v7 + 8))(v10, v6);

    goto LABEL_3;
  }

  v16 = v15;

  isa = sub_AB3770().super.isa;
  v18 = [v16 itemAtIndexPath:isa];

  if (!v18)
  {
LABEL_14:
    (*(v7 + 8))(v10, v6);
    goto LABEL_3;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (*(v2 + qword_DFE298))
  {
    v11 = v19;

    LOBYTE(v11) = sub_2FC35C(v11);
    (*(v7 + 8))(v10, v6);
    swift_unknownObjectRelease();

    return v11 & 1;
  }

  (*(v7 + 8))(v10, v6);
  swift_unknownObjectRelease();
LABEL_3:
  LOBYTE(v11) = 0;
  return v11 & 1;
}

id sub_46E054()
{
  *&v0[qword_E08800] = 0;
  *&v0[qword_E08808 + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[qword_E08810];
  *v1 = 0;
  v1[1] = 0;
  *&v0[qword_E08818] = 0;
  *&v0[qword_E08820] = 0;
  v0[qword_E08828] = 0;
  v0[qword_E08830] = 0;
  v0[qword_E08838] = 0;
  *&v0[qword_E08840] = 0;
  *&v0[qword_E08848] = 0;
  v2 = &v0[qword_E08850];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v2[24] = 1;
  v3 = &v0[qword_E08858];
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = xmmword_B03DA0;
  v0[qword_E08860] = 0;
  v0[qword_E08868] = 0;
  v4 = qword_E71990;
  v5 = sub_AB3820();
  v6 = *(*(v5 - 8) + 56);
  v6(&v0[v4], 1, 1, v5);
  v0[qword_E71998] = 0;
  v7 = &v0[qword_E719A0];
  *v7 = 0;
  v7[1] = 0;
  *&v0[qword_E08870] = 0;
  v0[qword_E08878] = 0;
  *&v0[qword_E719A8] = _swiftEmptyArrayStorage;
  v0[qword_E719B0] = 0;
  v6(&v0[qword_E719B8], 1, 1, v5);
  v8 = &v0[qword_E719C0];
  *v8 = 0;
  v8[8] = 1;
  *&v0[qword_E08880] = _swiftEmptyArrayStorage;
  v0[qword_E719C8] = 0;
  *&v0[qword_E08888] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ContainerDetailSongsViewController(0);
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_3B4C14(1);

  return v9;
}

id sub_46E2F0(id result)
{
  v2 = result;
  v3 = qword_E08820;
  v4 = *&v1[qword_E08820];
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }

    result = [v1 isViewLoaded];
    if ((result & 1) == 0)
    {
      return result;
    }

    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    result = [v1 isViewLoaded];
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v5 = v2;
  result = [v1 loadViewIfNeeded];
  if (!*&v1[qword_DFE2F8])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ([v5 isDescendantOfView:?])
  {
    [v5 removeFromSuperview];
  }

LABEL_12:
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    [v1 loadViewIfNeeded];
    result = *&v1[qword_DFE2F8];
    if (!result)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    [result addSubview:v7];
  }

  [v1 loadViewIfNeeded];
  result = *&v1[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  return [result reloadData];
}

double sub_46E444(char a1)
{
  if (*(v1 + qword_E71998) != 1)
  {
    return result;
  }

  if (a1)
  {
    return result;
  }

  v2 = (*&stru_158.sectname[swift_isaMask & *v1])();
  if (!v2)
  {
    return result;
  }

  v4 = v2;
  v15 = [v2 request];

  if (!v15)
  {
    return result;
  }

  type metadata accessor for JSContainerDetailModelRequest();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel);
    v14 = v6;

    if (!v6)
    {
      return result;
    }

    JSContainerDetail.containerDetailedResponseChildrenStoreIDs.getter();
    if (!v7)
    {
      v13 = v14;
      goto LABEL_14;
    }

    v8 = v7;
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_E71120);

    v15 = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (!os_log_type_enabled(v15, v10))
    {

      swift_bridgeObjectRelease_n();
      return result;
    }

    v11 = swift_slowAlloc();
    *v11 = 134349056;
    v12 = *(v8 + 16);

    *(v11 + 4) = v12;

    _os_log_impl(&dword_0, v15, v10, "[ContainerDetailSongsViewController] detailed model response set for displaying full track listing, item count=%{public}ld", v11, 0xCu);
  }

  v13 = v15;
LABEL_14:

  return result;
}

uint64_t sub_46E668()
{
  v0 = sub_AB3820();
  __swift_allocate_value_buffer(v0, qword_E71978);
  __swift_project_value_buffer(v0, qword_E71978);
  return sub_AB37C0();
}

void sub_46E6DC(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ContainerDetailSongsViewController(0);
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[qword_E08878] = a5;
}

void sub_46E750(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ContainerDetailSongsViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidAppear:", a3);
  sub_46C570();
}

void sub_46E7B8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ContainerDetailSongsViewController(0);
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = *&v0[qword_E08820];
  if (v1)
  {
    v2 = v1;
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 addSubview:v2];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_46E848(void *a1)
{
  v1 = a1;
  sub_46E7B8();
}

char *sub_46E890(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v21 = sub_469DDC(v16, v13, v15, v12, v20);

  (*(v10 + 8))(v12, v9);

  return v21;
}

char *sub_46E9F0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_47125C(a4);

  return v8;
}

id sub_46EA44(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4695C8(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

void sub_46EB6C(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v34 - v7;
  __chkstk_darwin();
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30) - 8;
  __chkstk_darwin();
  v12 = &v34 - v11;
  v13 = qword_E719B8;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v39 = a1;
  sub_15F84(a1, v12, &unk_DE8E20, &qword_AF7990);
  v40 = v1;
  v36 = v13;
  sub_15F84(v1 + v13, &v12[v14], &unk_DE8E20, &qword_AF7990);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      return;
    }
  }

  else
  {
    sub_15F84(v12, v9, &unk_DE8E20, &qword_AF7990);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v31 = v35;
      (*(v4 + 32))(v35, &v12[v14], v3);
      sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v32 = sub_AB91C0();
      v33 = *(v4 + 8);
      v33(v31, v3);
      v33(v9, v3);
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      v16 = v41;
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v9, v3);
  }

  sub_12E1C(v12, &unk_DF7930, &unk_B03B30);
  v16 = v41;
LABEL_7:
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v17 = sub_AB4BC0();
  __swift_project_value_buffer(v17, qword_E70DC0);
  sub_15F84(v39, v16, &unk_DE8E20, &qword_AF7990);
  v18 = v40;
  v19 = v40;
  v20 = sub_AB4BA0();
  v21 = sub_AB9F50();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v22 = 136446466;
    v23 = v37;
    sub_15F84(v16, v37, &unk_DE8E20, &qword_AF7990);
    v24 = sub_AB9350();
    LODWORD(v39) = v21;
    v26 = v25;
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    v27 = sub_425E68(v24, v26, &v42);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    sub_15F84(v18 + v36, v23, &unk_DE8E20, &qword_AF7990);
    v28 = sub_AB9350();
    v30 = sub_425E68(v28, v29, &v42);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_0, v20, v39, "Updating the detail cell's index from %{public}s to %{public}s.", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
  }
}

void sub_46F114(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v29 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + qword_E719C0);
  if (*(v2 + qword_E719C0 + 8))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0)
  {
    v9 = *v12;
    if (*v12 == *&a1)
    {
      return;
    }
  }

  if ([v2 isViewLoaded])
  {
    v13 = v2;
    v14 = (*&stru_158.sectname[swift_isaMask & *v2])();
    if (v14)
    {
      v29 = v14;
      v15 = [v14 results];
      if (!v15)
      {
        __break(1u);
        goto LABEL_25;
      }

      v16 = v15;
      v17 = [v15 totalItemCount];

      if (v17 >= 1)
      {
        v18 = qword_E719B8;
        swift_beginAccess();
        sub_15F84(v2 + v18, v6, &unk_DE8E20, &qword_AF7990);
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {
          sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
LABEL_22:

          return;
        }

        (*(v8 + 32))(v11, v6, v7);
        [v2 loadViewIfNeeded];
        v20 = *(v2 + qword_DFE2F8);
        if (v20)
        {
          v21 = v20;
          isa = sub_AB3770().super.isa;
          v23 = [v21 cellForItemAtIndexPath:isa];

          if (v23)
          {
            type metadata accessor for DetailCell(0);
            v24 = swift_dynamicCastClass();
            if (v24)
            {
              v25 = v24;
              v26 = [v29 results];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 totalItemCount];

                (*(&stru_798.size + (swift_isaMask & *v13)))(v25, v28, *v12, *(v12 + 8));
                (*(v8 + 8))(v11, v7);

                return;
              }

              goto LABEL_26;
            }
          }

          (*(v8 + 8))(v11, v7);
          goto LABEL_22;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v19 = v29;
    }
  }
}

BOOL sub_46F514(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v12 = *&stru_1F8.segname[(swift_isaMask & *a1) + 16];
  v13 = a4;
  v14 = a1;
  v12(v11);
  (*(v9 + 8))(v11, v8);
  v15 = (*(v9 + 48))(v7, 1, v8) != 1;
  sub_12E1C(v7, &unk_DE8E20, &qword_AF7990);

  return v15;
}

double sub_46F6F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_4713C4(v6);

  return v9;
}

double sub_46F760(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_46BA20(v13, v14, v12);
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_46F894(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  LOBYTE(a1) = sub_471510(v10);

  (*(v8 + 8))(v10, v7);
  return a1 & 1;
}

void sub_46F9A8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  sub_AB3790();
  (*(v7 + 16))(v9, v11, v6);
  v12 = qword_E08880;
  swift_beginAccess();
  v13 = *&a1[v12];
  v18 = a4;
  v14 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v12] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_6AE4C(0, v13[2] + 1, 1, v13);
    *&a1[v12] = v13;
  }

  v17 = v13[2];
  v16 = v13[3];
  if (v17 >= v16 >> 1)
  {
    v13 = sub_6AE4C((v16 > 1), v17 + 1, 1, v13);
  }

  v13[2] = v17 + 1;
  (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v6);
  *&a1[v12] = v13;
  sub_46C814();
  (*(v7 + 8))(v11, v6);
}

void sub_46FBB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_471958(v10);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_46FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v5 + 8))(v7, v4);
  return 0;
}

void sub_46FD8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];

  sub_46C814();
  (*(v8 + 8))(v10, v7);
}

void sub_46FED0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  sub_46A9C8(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

double sub_46FFF4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a4;
  v14 = a6;
  v15 = a1;
  sub_46B304();
  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_E71978);
  v17 = sub_46687C(v13, v16, sub_46B3D0, &unk_D14FB8, &unk_D15008, sub_471220);
  (*(v10 + 8))(v12, v9, v17);

  return result;
}

double sub_470190(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a4;
  v14 = a6;
  v15 = a1;
  [v13 clearArtworkCatalogs];
  sub_46B304();
  if (qword_DE6CD8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_E71978);
  v17 = sub_470E6C(v16, &unk_D14FB8, &unk_D14FE0, sub_47113C);
  (*(v10 + 8))(v12, v9, v17);

  return result;
}

void sub_470320()
{
  sub_176DC(v0 + qword_E08808);
  sub_3FC30(*(v0 + qword_E08810), *(v0 + qword_E08810 + 8));

  sub_12E1C(v0 + qword_E71990, &unk_DE8E20, &qword_AF7990);
  swift_unknownObjectRelease();

  sub_12E1C(v0 + qword_E719B8, &unk_DE8E20, &qword_AF7990);

  v1 = *(v0 + qword_E08888);
}

id sub_470454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerDetailSongsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_47048C(uint64_t a1)
{
  sub_176DC(a1 + qword_E08808);
  sub_3FC30(*(a1 + qword_E08810), *(a1 + qword_E08810 + 8));

  sub_12E1C(a1 + qword_E71990, &unk_DE8E20, &qword_AF7990);
  swift_unknownObjectRelease();

  sub_12E1C(a1 + qword_E719B8, &unk_DE8E20, &qword_AF7990);

  v2 = *(a1 + qword_E08888);
}

uint64_t type metadata accessor for ContainerDetailSongsViewController(uint64_t a1)
{
  result = qword_E088B8;
  if (!qword_E088B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_470610(uint64_t a1)
{
  sub_55244(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_470730()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(type metadata accessor for ContainerDetailCollectionTableLayout()) init];
  [v2 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v2 _setFloatingElementKinds:isa];

  (*(&stru_748.size + (swift_isaMask & *v1)))(v2);
  return v2;
}

double sub_47087C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_46B3D0(a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_470968(uint64_t a1)
{
  *(a1 + 8) = sub_471B10(&qword_E091D0, type metadata accessor for ContainerDetailSongsViewController, &unk_B10708);
  result = sub_471B10(&qword_E091D8, type metadata accessor for ContainerDetailSongsViewController, &unk_B10730);
  *(a1 + 16) = result;
  return result;
}

void *sub_4709EC(void *a1)
{
  v5 = &_swiftEmptySetSingleton;
  v1 = [a1 universalStore];
  if (v1)
  {
    v2 = v1;
    if ([v1 adamID])
    {
      sub_1AB4C(&v4, [v2 adamID]);
    }

    if ([v2 purchasedAdamID])
    {
      sub_1AB4C(&v4, [v2 purchasedAdamID]);
    }

    if ([v2 subscriptionAdamID])
    {
      sub_1AB4C(&v4, [v2 subscriptionAdamID]);
    }

    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_470AD0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      result = sub_ABB5B0();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_470C24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*&stru_158.sectname[swift_isaMask & *v2])();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 results];

    if (!v8)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v10 = [v8 itemAtIndexPath:isa];

    if (v10)
    {
      v11 = [v10 relativeModelObjectForStoreLibraryPersonalization];
      if (!v11)
      {
LABEL_12:

        swift_unknownObjectRelease();
        return;
      }

      v17 = v11;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = v3 + qword_E08808;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v14 + 1);
          ObjectType = swift_getObjectType();
          (*(v15 + 24))(v3, v13, a1, a2, ObjectType, v15);
          swift_unknownObjectRelease();

          goto LABEL_12;
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

double sub_470E6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  v26 = a3;
  v27 = a4;
  v5 = v4;
  v25 = a1;
  v6 = sub_AB3820();
  v21 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB3430();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v22 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v20 - v12;
  sub_AB3420();
  v24 = *(v5 + 88);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v25, v6);
  v15 = v23;
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v23);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = (v8 + *(v10 + 80) + v16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  (*(v7 + 32))(v18 + v16, v9, v21);
  (*(v10 + 32))(v18 + v17, v22, v15);

  sub_48C6A0(v27, v18);
  (*(v10 + 8))(v13, v15);

  return result;
}

uint64_t sub_471100()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_47113C()
{
  v1 = *(sub_AB3820() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_AB3430() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_46D0A0(v5, v0 + v2, v6);
}

char *sub_47125C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = sub_497570(a1);
  v6 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(v1 + v6, v4, &unk_DE8E20, &qword_AF7990);
  v7 = sub_AB3820();
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
    return v5;
  }

  v8 = sub_AB37F0();
  result = sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
  if (v8 != a1)
  {
    return v5;
  }

  if (!__OFADD__(v5++, 1))
  {
    return v5;
  }

  __break(1u);
  return result;
}

double sub_4713C4(void *a1)
{
  v2 = *(v1 + qword_E08820);
  if (!v2)
  {
    return 0.0;
  }

  v4 = v2;
  [a1 bounds];
  v7 = [v4 sizeThatFits:{v5, v6}];
  v9 = v8;
  if (((*&stru_5B8.segname[(swift_isaMask & *v1) + 8])(v7) & 1) != 0 || (v10 = *(v1 + qword_E08840)) == 0)
  {
  }

  else
  {
    v11 = v10;
    [v11 intrinsicContentSize];
    v13 = v12;
    v14 = dbl_B107E8[*(v1 + qword_E08830)] + dbl_B10800[*(v1 + qword_E08830)];
    v15 = Int.seconds.getter(1);

    return v9 + v13 - v15 * v14;
  }

  return v9;
}

uint64_t sub_471510(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v25 - v13;
  v15 = [v1 traitCollection];
  v16 = UITraitCollection.isMediaPicker.getter(v15);

  if (v16 && (sub_46DCF0(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  (*(v5 + 16))(v14, a1, v4);
  (*(v5 + 56))(v14, 0, 1, v4);
  v17 = qword_E719B8;
  swift_beginAccess();
  v18 = *(v7 + 48);
  sub_15F84(v14, v9, &unk_DE8E20, &qword_AF7990);
  sub_15F84(v2 + v17, &v9[v18], &unk_DE8E20, &qword_AF7990);
  v19 = *(v5 + 48);
  if (v19(v9, 1, v4) != 1)
  {
    sub_15F84(v9, v11, &unk_DE8E20, &qword_AF7990);
    if (v19(&v9[v18], 1, v4) != 1)
    {
      v21 = v25;
      (*(v5 + 32))(v25, &v9[v18], v4);
      sub_471B10(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = sub_AB91C0();
      v23 = *(v5 + 8);
      v23(v21, v4);
      sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
      v23(v11, v4);
      sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
      v20 = v22 ^ 1;
      return v20 & 1;
    }

    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    (*(v5 + 8))(v11, v4);
    goto LABEL_9;
  }

  sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
  if (v19(&v9[v18], 1, v4) != 1)
  {
LABEL_9:
    sub_12E1C(v9, &unk_DF7930, &unk_B03B30);
    v20 = 1;
    return v20 & 1;
  }

  sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
LABEL_6:
  v20 = 0;
  return v20 & 1;
}

void sub_471958(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = qword_E08880;
  swift_beginAccess();
  v8 = *(v1 + v7);

  v9 = sub_469AC8(a1, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    sub_2E5F78(v9, v6);
    (*(v4 + 8))(v6, v3);
    swift_endAccess();
    sub_46C814();
    v12 = *(v1 + qword_E08848);
    *(v1 + qword_E08848) = 0;

    *(v1 + qword_E08860) = 0;
    (*&stru_6A8.segname[(swift_isaMask & *v1) - 8])();
  }
}

uint64_t sub_471B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_471B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_beginAccess();
  v9 = sub_27BD7C(a2);
  swift_endAccess();

  if (!v9)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v11 = Strong;
  v12 = *(v9 + 88);
  if (*(v9 + 144))
  {
    v13 = *(v9 + 16);
  }

  else
  {
    v13 = 0;
  }

  if (*(v9 + 144))
  {
    v14 = *(v9 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (v12)
  {
    v15 = (v12 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v13 = *v15;
    v14 = v15[1];
LABEL_14:

    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  v32[7] = *(v9 + 56);
  v13 = sub_ABB330();
  v14 = v31;
LABEL_15:
  swift_beginAccess();
  v16 = *(v11 + 104);
  if (!*(v16 + 16))
  {

LABEL_27:

    return;
  }

  v17 = sub_2EBF88(v13, v14);
  if ((v18 & 1) == 0)
  {

    goto LABEL_27;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  swift_beginAccess();
  v20 = *(v19 + 200);
  v23 = *(v20 + 16);
  v21 = v20 + 16;
  v22 = v23;
  if (v23 && (*(v21 + 16 * v22 + 8) & 1) == 0)
  {
    (*(v6 + 16))(v8, a3, v5);
    sub_AB33D0();
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v26 = *(v19 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 200) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_6A900(0, *(v26 + 2) + 1, 1, v26);
      *(v19 + 200) = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_6A900((v28 > 1), v29 + 1, 1, v26);
    }

    *(v26 + 2) = v29 + 1;
    v30 = &v26[16 * v29];
    *(v30 + 4) = v25;
    v30[40] = 1;
    *(v19 + 200) = v26;
    swift_endAccess();
  }
}

void sub_471ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_beginAccess();
  v9 = sub_27C098(a2);
  swift_endAccess();

  if (!v9)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_21:

    return;
  }

  v11 = Strong;
  v12 = *(v9 + 88);
  if (*(v9 + 144))
  {
    v13 = *(v9 + 16);
  }

  else
  {
    v13 = 0;
  }

  if (*(v9 + 144))
  {
    v14 = *(v9 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (v12)
  {
    v15 = (v12 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v13 = *v15;
    v14 = v15[1];
  }

  else if (!v14)
  {
    v28[0] = *(v9 + 56);
    v13 = sub_ABB330();
    v14 = v26;
    goto LABEL_15;
  }

LABEL_15:
  swift_beginAccess();
  v16 = *(v11 + 104);
  if (*(v16 + 16))
  {

    v17 = sub_2EBF88(v13, v14);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      swift_beginAccess();
      v20 = *(v19 + 200);
      v23 = *(v20 + 16);
      v21 = v20 + 16;
      v22 = v23;
      if (v23)
      {
        if ((*(v21 + 16 * v22 + 8) & 1) == 0)
        {
          (*(v6 + 16))(v8, a3, v5);
          sub_AB33D0();
          v25 = v24;
          (*(v6 + 8))(v8, v5);
          swift_beginAccess();
          sub_2C1F68(1, v25);
          swift_endAccess();
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
  }
}

void sub_4721D4()
{
  *(v0 + qword_E08800) = 0;
  *(v0 + qword_E08808 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + qword_E08810);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_E08818) = 0;
  *(v0 + qword_E08820) = 0;
  *(v0 + qword_E08828) = 0;
  *(v0 + qword_E08830) = 0;
  *(v0 + qword_E08838) = 0;
  *(v0 + qword_E08840) = 0;
  *(v0 + qword_E08848) = 0;
  v2 = v0 + qword_E08850;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 1;
  v3 = (v0 + qword_E08858);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = xmmword_B03DA0;
  *(v0 + qword_E08860) = 0;
  *(v0 + qword_E08868) = 0;
  v4 = qword_E71990;
  v5 = sub_AB3820();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + qword_E71998) = 0;
  v7 = (v0 + qword_E719A0);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + qword_E08870) = 0;
  *(v0 + qword_E08878) = 0;
  *(v0 + qword_E719A8) = _swiftEmptyArrayStorage;
  *(v0 + qword_E719B0) = 0;
  v6(v0 + qword_E719B8, 1, 1, v5);
  v8 = v0 + qword_E719C0;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + qword_E08880) = _swiftEmptyArrayStorage;
  *(v0 + qword_E719C8) = 0;
  *(v0 + qword_E08888) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t objectdestroy_125Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  v9 = *(v8 + 32);
  if (v9 >= 9)
  {
  }

  (*(v6 + 8))(v0 + ((((v4 + 175) & 0xFFFFFFFFFFFFFFF8) + v7 + 10) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_4726A4(void (*a1)(uint64_t, uint64_t, uint64_t, double), uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t), double a5)
{
  v11 = *(sub_AB3820() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 175) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_AB3430() - 8);
  return sub_46CA68(*(v5 + 16), v5 + v12, a5, *(v5 + v13), (v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + v14), *(v5 + v14 + 8), *(v5 + v14 + 9), v5 + ((v14 + *(v15 + 80) + 10) & ~*(v15 + 80)), a1, a2, a3, a4);
}

uint64_t objectdestroy_121Tm()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_472974(void (*a1)(uint64_t, uint64_t), void (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v7 = *(sub_AB3820() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_AB3430() - 8);
  sub_46D43C(*(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2, a3);
}

uint64_t sub_472A84(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, sub_ABB5C0(), ApplicationCapabilities.Service.rawValue.getter(), sub_AB93F0(), , v4 = sub_ABB610(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = v3;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000000B5B970;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x8000000000B5B9B0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000000B5B990;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (v3 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (v3 == 9)
      {
        v16 = 0x8000000000B5B990;
      }

      if (v3 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x8000000000B5B9B0;
      }

      v17 = 0x746963696C707865;
      if (v3 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (v3 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (v3 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (v3 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v3 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (v3 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v3 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000000B5B970;
      }

      if (v3)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (v3)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (v3 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v3 <= 4u ? v19 : v15;
      v24 = v3 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = sub_ABB3C0();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        v3 = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

BOOL sub_472E58(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_ABB5B0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_472F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  sub_AB93F0();
  v6 = sub_ABB610();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_ABB3C0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_472FF8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_ABACA0();
  }

  else if (*(a2 + 16) && (sub_13C80(0, &qword_DE7500, UIViewController_ptr), v5 = sub_ABA780(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_ABA790();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_473110(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_ABB5C0();
  sub_ABB5D0(v3);
  v4 = sub_ABB610();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_4731E0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_ABB5C0();
    sub_ABB5D0(a1 & 1);
    v5 = sub_ABB610();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_4732A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_485F14(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = sub_AB90D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_485F14(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = sub_AB91C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_4734C0(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_ABB5C0();
    sub_1BDE98(a1);
    sub_AB93F0();

    v4 = sub_ABB610();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA00000000007365;
        v9 = 0x6974697669746361;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE600000000000000;
            v9 = 0x736D75626C61;
            break;
          case 2:
            v8 = 0xE700000000000000;
            v9 = 0x73747369747261;
            break;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x73726F7461727563;
            break;
          case 4:
            v8 = 0xE500000000000000;
            v9 = 0x73676E6F73;
            break;
          case 5:
            v8 = 0xE800000000000000;
            v9 = 0x736E6F6974617473;
            break;
          case 6:
            v9 = 0x75632D656C707061;
            v8 = 0xEE0073726F746172;
            break;
          case 7:
            v9 = 0x6169726F74696465;
            v8 = 0xEF736D6574692D6CLL;
            break;
          case 8:
            v9 = 0x6F6D2D636973756DLL;
            v10 = 1936025974;
            goto LABEL_20;
          case 9:
            v9 = 0x69762D636973756DLL;
            v10 = 1936680292;
LABEL_20:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0xA:
            v9 = 0x6F736970652D7674;
            v8 = 0xEB00000000736564;
            break;
          case 0xB:
            v8 = 0xE800000000000000;
            v9 = 0x73776F68732D7674;
            break;
          case 0xC:
            v9 = 0x646564616F6C7075;
            v8 = 0xEF736F656469762DLL;
            break;
          case 0xD:
            v9 = 0x6C2D64726F636572;
            v8 = 0xED0000736C656261;
            break;
          case 0xE:
            v9 = 0x702D6C6169636F73;
            v8 = 0xEF73656C69666F72;
            break;
          case 0xF:
            v9 = 0x7473696C79616C70;
            v8 = 0xE900000000000073;
            break;
          default:
            break;
        }

        v11 = 0x6974697669746361;
        v12 = 0xEA00000000007365;
        switch(a1)
        {
          case 1:
            v12 = 0xE600000000000000;
            if (v9 == 0x736D75626C61)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          case 2:
            v12 = 0xE700000000000000;
            if (v9 != 0x73747369747261)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 3:
            v12 = 0xE800000000000000;
            if (v9 != 0x73726F7461727563)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 4:
            v12 = 0xE500000000000000;
            if (v9 != 0x73676E6F73)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 5:
            v12 = 0xE800000000000000;
            if (v9 != 0x736E6F6974617473)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 6:
            v12 = 0xEE0073726F746172;
            if (v9 != 0x75632D656C707061)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 7:
            v13 = 0x6169726F74696465;
            v14 = 0x6D6574692D6CLL;
            goto LABEL_38;
          case 8:
            v15 = 0x6F6D2D636973756DLL;
            v16 = 1936025974;
            goto LABEL_53;
          case 9:
            v15 = 0x69762D636973756DLL;
            v16 = 1936680292;
LABEL_53:
            v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v15)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 10:
            v11 = 0x6F736970652D7674;
            v12 = 0xEB00000000736564;
            goto LABEL_47;
          case 11:
            v12 = 0xE800000000000000;
            if (v9 != 0x73776F68732D7674)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 12:
            v13 = 0x646564616F6C7075;
            v14 = 0x6F656469762DLL;
            goto LABEL_38;
          case 13:
            v12 = 0xED0000736C656261;
            if (v9 != 0x6C2D64726F636572)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 14:
            v13 = 0x702D6C6169636F73;
            v14 = 0x656C69666F72;
LABEL_38:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
            if (v9 != v13)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          case 15:
            v12 = 0xE900000000000073;
            if (v9 != 0x7473696C79616C70)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          default:
LABEL_47:
            if (v9 != v11)
            {
              goto LABEL_49;
            }

LABEL_48:
            if (v8 == v12)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_49:
            v17 = sub_ABB3C0();

            if (v17)
            {
              return v17 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_473A94(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((sub_ABB5C0(), (a1 & 1) == 0) ? (v4 = 0x676F6C61746163) : (v4 = 0x7972617262696CLL), sub_AB93F0(), , v5 = sub_ABB610(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7) ? 0x7972617262696CLL : 0x676F6C61746163;
      if (v9 == v4)
      {
        break;
      }

      v10 = sub_ABB3C0();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v10 & 1;
    }

    swift_bridgeObjectRelease_n();
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_473BDC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_19F44(*(a2 + 40), a1), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v26 = ~v5;
    v7 = 7368564;
    v8 = 0xE300000000000000;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      if (v9 > 3)
      {
        if (*(*(a2 + 48) + v6) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0x7265736F706D6F63;
            v15 = 0xE900000000000073;
          }

          else
          {
            v14 = 0x4D73776F68537674;
            v15 = 0xED0000736569766FLL;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 0x7473696C79616C70;
          }

          else
          {
            v14 = 0x646956636973756DLL;
          }

          if (v9 == 4)
          {
            v15 = 0xE900000000000073;
          }

          else
          {
            v15 = 0xEB00000000736F65;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x736D75626C61;
        }

        else
        {
          v10 = 0x73676E6F73;
        }

        if (v9 == 2)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v6))
        {
          v12 = 0x73747369747261;
        }

        else
        {
          v12 = 7368564;
        }

        if (*(*(a2 + 48) + v6))
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE300000000000000;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0x7265736F706D6F63;
      if (a1 != 6)
      {
        v16 = 0x4D73776F68537674;
      }

      v17 = 0xED0000736569766FLL;
      if (a1 == 6)
      {
        v17 = 0xE900000000000073;
      }

      v18 = 0x7473696C79616C70;
      if (a1 != 4)
      {
        v18 = 0x646956636973756DLL;
      }

      v19 = 0xEB00000000736F65;
      if (a1 == 4)
      {
        v19 = 0xE900000000000073;
      }

      if (a1 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a1 == 2)
      {
        v20 = 0x736D75626C61;
      }

      else
      {
        v20 = 0x73676E6F73;
      }

      if (a1 == 2)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      if (a1)
      {
        v7 = 0x73747369747261;
        v8 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        v20 = v7;
        v21 = v8;
      }

      v22 = a1 <= 3u ? v20 : v16;
      v23 = a1 <= 3u ? v21 : v17;
      if (v14 == v22 && v15 == v23)
      {
        break;
      }

      v24 = sub_ABB3C0();

      if ((v24 & 1) == 0)
      {
        v6 = (v6 + 1) & v26;
        v7 = 7368564;
        v8 = 0xE300000000000000;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v24 & 1;
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_473EC0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_ABABC0();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_48541C(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_473F44(uint64_t a1)
{
  v2 = sub_ABABC0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 2;
  }

  else
  {
    return sub_4C3A20(v2, *(a1 + 36), 0, a1) & 1;
  }
}

Swift::Int sub_473FAC(unsigned __int8 a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_4740B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_9ACA0(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_2EBF88(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_8085C(&v24);
      return 0;
    }

    sub_9ACA0(*(a2 + 56) + 40 * v17, v23);
    v20 = sub_ABAD00();
    sub_8085C(v23);
    result = sub_8085C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_474250(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = *(*(a1 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_2F5AD8();
      v18 = v17;

      if ((v18 & 1) == 0)
      {

        return;
      }

      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v19 = *(*(a2 + 56) + 8 * v16);
      v20 = sub_ABA790();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_4743C4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      sub_9AEAC(v16);
      v17 = sub_2EBF88(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
LABEL_26:
        sub_9AE98(v16);
        return;
      }

      v20 = *(*(a2 + 56) + 8 * v17);
      switch(v20)
      {
        case 3:
          if (v16 != 3)
          {
            goto LABEL_26;
          }

          break;
        case 2:
          if (v16 != 2)
          {
            goto LABEL_26;
          }

          break;
        case 1:
          if (v16 != 1)
          {
            goto LABEL_26;
          }

          break;
        default:
          if ((v16 - 1) < 3)
          {
            goto LABEL_26;
          }

          sub_9AE98(v16);
          break;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void *sub_474554()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *v0;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = sub_12B7FC(v1);

  return v2;
}

uint64_t SearchRequestResults._scopes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8D8, &qword_AF8F10);
  v2 = sub_ABAF60();

  return v2;
}

double sub_474644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v13 = *v2;
  v14[0] = v4;
  *(v14 + 9) = *(v2 + 25);
  sub_15F84(a1, v12, &unk_E00060, &qword_B094F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
  if (swift_dynamicCast())
  {
    v6 = *(&v10 + 1);
    v5 = v10;
    v8 = *(&v11 + 1);
    v7 = v11;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_1B6920(v5, v6, v7, v8, a2);
  return sub_344D0C(v10, *(&v10 + 1), v11, *(&v11 + 1));
}

uint64_t SearchRequestResults._snapshot(for:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_ABA9C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15[-v10 - 8];
  sub_15F84(a1, v15, &unk_E00060, &qword_B094F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
  v12 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v11, v12 ^ 1u, 1, AssociatedTypeWitness);
  (*(a3 + 56))(v11, a2, a3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t Logger.search.unsafeMutableAddressor()
{
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.search);
}

uint64_t SearchRequest.description.getter(uint64_t a1, uint64_t a2)
{
  v12 = (*(*(a2 + 8) + 24))();
  v13 = v4;
  strcpy(&v11, " hashedText: ");
  HIWORD(v11._object) = -4864;
  (*(a2 + 40))(a1, a2);
  sub_36A48();
  sub_ABAAD0();

  v14._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v14);

  sub_AB94A0(v11);

  strcpy(&v11, " variant: ");
  BYTE3(v11._object) = 0;
  HIDWORD(v11._object) = -369098752;
  (*(a2 + 64))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010, &unk_B02880);
  v15._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v15);

  sub_AB94A0(v11);

  strcpy(&v11, " library: ");
  BYTE3(v11._object) = 0;
  HIDWORD(v11._object) = -369098752;
  v5 = (*(a2 + 88))(a1, a2);
  v6 = [v5 description];
  v7 = sub_AB92A0();
  v9 = v8;

  v16._countAndFlagsBits = v7;
  v16._object = v9;
  sub_AB94A0(v16);

  sub_AB94A0(v11);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_ABAD90(21);
  v17._object = 0x8000000000B563A0;
  v17._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v17);
  (*(a2 + 112))(a1, a2);
  type metadata accessor for MPMediaLibraryFilteringOptions(0);
  sub_ABAF70();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_AB94A0(v18);

  return v12;
}

void SearchSource._add<A>(recentlySearchedModelObject:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Search.Recents.Item(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v21 - v14;
  v16 = a1;
  v17 = v21[3];
  sub_47B440(v16, AssociatedTypeWitness, a3, AssociatedConformanceWitness, v15);
  if (!v17)
  {
    v18 = [objc_opt_self() standardUserDefaults];
    v20 = sub_47B6E8(v15, v21[1], a2, a4, v19);
    (*(v13 + 8))(v15, v12, v20);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchSource._clearRecentlySearchedItems()()
{
  v3 = v1;
  v4 = v0;
  v5 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.clearRecentlySearchedItems<A>(for:)(v2, v4, v3, v6);
}

uint64_t sub_474EF0(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v4);
    v2 = v4[4];

    sub_70C54(v4);
    sub_472A84(2, v2);
  }

  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t Search.Configuration.defaultSource.getter()
{
  v1 = v0;
  static ApplicationCapabilities.shared.getter(&v10);
  sub_70C54(&v10);
  v2 = (v11 & 0x80) == 0;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = NSUserDefaults.lastSelectedSearchSource.getter();

  if (v4 == 2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(v1 + 64);
  v7 = v5;
  if (sub_473A94(v5, v6))
  {
    return v7;
  }

  v8 = sub_473F44(v6);
  if (v8 != 2)
  {
    return v8 & 1;
  }

  sub_ABAD90(53);
  sub_ABAF70();
  v12._object = 0x8000000000B66340;
  v12._countAndFlagsBits = 0xD000000000000033;
  sub_AB94A0(v12);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t *Search.resultSnapshotController.getter()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    swift_beginAccess();
    sub_30E554(v0 + 16, v6);
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    v6[80] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09280, &qword_B10858);
    v2 = swift_allocObject();
    v1 = RequestResponse.Controller.init(request:)(v6, v2, v3, v4);
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t Search.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_30E554(v1 + 16, v4);
  swift_beginAccess();
  sub_30EDB4(a1, v1 + 16);
  swift_endAccess();
  sub_476C14(v4);
  sub_30E5B0(a1);
  return sub_30E5B0(v4);
}

uint64_t *Search.recentlySearchedSnapshotController.getter()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    swift_beginAccess();
    sub_30E554(v0 + 16, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09288, &qword_B10860);
    v2 = swift_allocObject();
    v1 = RequestResponse.Controller.init(request:)(v6, v2, v3, v4);
    *(v0 + 120) = v1;
  }

  return v1;
}

double NSUserDefaults.lastSelectedSearchSource.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = NSUserDefaults.lastSelectedSearchSource.getter();
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v3 == 2)
  {
    goto LABEL_5;
  }

  if (a1)
  {
    v5 = 0x7972617262696CLL;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  if (v3)
  {
    v6 = 0x7972617262696CLL;
  }

  else
  {
    v6 = 0x676F6C61746163;
  }

  if (v5 == v6)
  {
    swift_bridgeObjectRelease_n();
    return result;
  }

  v13 = sub_ABB3C0();
  swift_bridgeObjectRelease_n();
  if ((v13 & 1) == 0)
  {
LABEL_5:
    sub_AB2B00();
    swift_allocObject();
    sub_AB2AF0();
    LOBYTE(v15) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09290, &qword_B10868);
    sub_483B0C();
    v7 = sub_AB2AE0();
    v9 = v8;

    if (v9 >> 60 == 15)
    {
      v15 = 0u;
      v16 = 0u;
    }

    else
    {
      *(&v16 + 1) = &type metadata for Data;
      *&v15 = v7;
      *(&v15 + 1) = v9;
    }

    v14 = 0;
    sub_9007C(v7, v9);
    v10 = sub_35BCD8();
    v11 = sub_36A48();
    NSUserDefaults.subscript.setter(&v15, &v14, &_s9SearchKeyON, v10, v11, v12);
    sub_466A4(v7, v9);
  }

  return result;
}

unint64_t Search.ResultContext.source(for:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Search.ResultContext(0) + 40));
  v4 = v3[2];
  if ((~v4 & 0x7000000000000007) == 0)
  {
    return 2;
  }

  if ((v4 & 0x4000000000000000) == 0)
  {
    return v4 >> 63;
  }

  v7 = *v3;
  v6 = v3[1];
  v8 = sub_30F03C(*v3, v6, v3[2]);
  v9 = v7(a1, v8);
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_30F04C(v7, v6, v4);
    return 2;
  }

  v12 = v11;
  sub_30EEB0(v9, v10, v11);
  sub_30F04C(v7, v6, v4);
  return v12 >> 63;
}

uint64_t Search.persist<A>(_:for:)(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 88);
  v8 = a2 & 1;

  sub_477E20(v8, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ((~v14 & 0xF000000000000007) != 0)
  {
    v17 = &_s7LibraryVN;
    if (v14 >= 0)
    {
      v17 = &_s7CatalogVN;
    }

    v18 = &off_D00048;
    if (v14 < 0)
    {
      v18 = &off_D17228;
    }

    *(&v22 + 1) = v17;
    v23 = v18;

    sub_30EEB0(v10, v12, v14);
    *&v21 = v10;
    *(&v21 + 1) = v12;
    *&v22 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    sub_70DF8(&v21, v24);
    v19 = v25;
    v20 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v20 + 24))(a1, a3, v19, v20);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_12E1C(&v21, &qword_DFE5E0, &qword_B09500);
    sub_30F074();
    swift_allocError();
    *v15 = v8;
    return swift_willThrow();
  }
}

uint64_t Search.Source.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t Search.augmentedModelObject(from:with:for:completionHandler:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  v11 = *(v5 + 88);

  sub_477E20(a3 & 1, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ((~v17 & 0xF000000000000007) != 0)
  {
    v20 = &_s7LibraryVN;
    if (v17 >= 0)
    {
      v20 = &_s7CatalogVN;
    }

    v21 = &off_D00048;
    if (v17 < 0)
    {
      v21 = &off_D17228;
    }

    *(&v25 + 1) = v20;
    v26 = v21;

    sub_30EEB0(v13, v15, v17);
    *&v24 = v13;
    *(&v24 + 1) = v15;
    *&v25 = v17 & 0x7FFFFFFFFFFFFFFFLL;
    sub_70DF8(&v24, v27);
    v22 = v28;
    v23 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v23 + 40))(a1, a2, a4, a5, v22, v23);
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_12E1C(&v24, &qword_DFE5E0, &qword_B09500);
    sub_1CE268();
    swift_allocError();
    *v18 = 0;
    a4();
  }
}

void Search.Configuration.mediaLibrary.setter(id obj)
{
  objc_storeStrong((v1 + 8), obj);
  sub_4768E8();
}

void Search.Configuration.mediaPickerConfiguration.setter(void *a1)
{
  v3 = *v1;
  v4 = a1;

  *v1 = a1;
  sub_4768E8();
}

uint64_t Search.ResultSnapshotRequest.init(configuration:source:text:variant:scope:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 144) = 0;
  v7 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v7;
  *(a7 + 64) = a1[4];
  v8 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v8;
  *(a7 + 128) = 0u;
  *(a7 + 80) = a2 & 1;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5 & 1;
  *(a7 + 112) = 0u;
  return sub_160B4(a6, a7 + 112, &unk_E00060, &qword_B094F0);
}

uint64_t Search.__allocating_init()()
{
  v0 = swift_allocObject();
  Search.init()();
  return v0;
}

uint64_t sub_475B48@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v46[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v10 = &v46[-v9];
  v11 = type metadata accessor for Search.ResultContext(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_15F84(a1, v10, &unk_E00050, &qword_B094D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_E00050, &qword_B094D0);
    v15 = sub_48176C();
    v17 = v16;
    v18 = *aSearch_11;
    v19 = unk_E09278;
    v20 = sub_AB31C0();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);

    return MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v15, v17, v18, v19, v6, 0, 0, 0, v48);
  }

  sub_489CC8(v10, v14, type metadata accessor for Search.ResultContext);
  v22 = *&v14[*(v11 + 32)];
  v23 = *&v14[*(v11 + 36)];
  if (v23 && (v24 = [v23 requestUrl]) != 0)
  {
    v25 = v24;
    sub_AB92A0();
    v27 = v26;

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  URL.init(string:)(v28, v8);
  v53 = sub_96B2C(_swiftEmptyArrayStorage);
  sub_489D30(v3, v51);
  if (v52 == 1)
  {
    if (v22)
    {
      if (*(v22 + 16))
      {
        v29 = sub_2EBF88(0x7363697274656DLL, 0xE700000000000000);
        if (v30)
        {
          sub_9ACA0(*(v22 + 56) + 40 * v29, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590, &unk_B02860);
          if (swift_dynamicCast())
          {
            v31 = v49;

            v53 = v31;
          }
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
    v32 = sub_AB50C0();
    v33 = v32 <= 0;
    if (v32 <= 0)
    {
      v34 = 0x65736C6166;
    }

    else
    {
      v34 = 1702195828;
    }

    if (v33)
    {
      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    sub_2E4D4C(v34, v35, 0x6C75736552736168, 0xEA00000000007374);
    sub_12E1C(v51, &unk_E00060, &qword_B094F0);
  }

  else
  {
    sub_30E4AC(v51);
  }

  if (v47 != 2)
  {
    v36 = 0x7972617262696CLL;
    if (v47)
    {

LABEL_25:
      v38 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = v38;
      sub_92078(v36, 0xE700000000000000, 0xD000000000000014, 0x8000000000B66490, isUniquelyReferenced_nonNull_native);
      v53 = v51[0];
      goto LABEL_26;
    }

    v37 = sub_ABB3C0();

    v36 = 0x676F6C61746163;
    if (v37)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v40 = sub_48176C();
  v42 = v41;
  v43 = *aSearch_11;
  v44 = unk_E09278;
  sub_15F84(v8, v6, &unk_DF2AE0, &qword_AFC930);
  v45 = v53;

  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v40, v42, v43, v44, v6, v45, 0, 0, v48);
  sub_12E1C(v8, &unk_DF2AE0, &qword_AFC930);
  return sub_486014(v14, type metadata accessor for Search.ResultContext);
}

double static Search.ResultContext.empty()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
  sub_AB5110();
  v2 = type metadata accessor for Search.ResultContext(0);
  v3 = (a1 + v2[7]);
  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  v5 = (a1 + v2[5]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[6]) = 1;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  v6 = (a1 + v2[10]);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0x7000000000000007;
  return result;
}

Swift::Void __swiftcall NSUserDefaults.clearAllRecentlySearchedItems()()
{
  memset(v4, 0, sizeof(v4));
  v3 = 1;
  v0 = sub_35BCD8();
  v1 = sub_36A48();
  NSUserDefaults.subscript.setter(v4, &v3, &_s9SearchKeyON, v0, v1, v2);
}

id Search.Item.modelObject.getter()
{
  v1 = v0;
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0, &unk_B09508);
  __chkstk_darwin();
  v6 = &v18 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v18 - v9;
  __chkstk_darwin();
  v12 = &v18 - v11;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v14, type metadata accessor for Search.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_36B0C(v14, v12, &unk_E00040, &unk_AFA530);
    sub_15F84(v12, v10, &unk_E00040, &unk_AFA530);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_12E1C(v12, &unk_E00040, &unk_AFA530);
      return *v10;
    }

    sub_36B0C(v10, v6, &qword_DFE5F0, &unk_B09508);
    v17 = SnapshotIdentifier.Lazy.object.getter(v4);
    sub_12E1C(v6, &qword_DFE5F0, &unk_B09508);
    sub_12E1C(v12, &unk_E00040, &unk_AFA530);
  }

  else
  {
    sub_489CC8(v14, v3, type metadata accessor for Search.Recents.Result.Item);
    sub_15F84(v3, v8, &unk_E00040, &unk_AFA530);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_486014(v3, type metadata accessor for Search.Recents.Result.Item);
      return *v8;
    }

    sub_36B0C(v8, v6, &qword_DFE5F0, &unk_B09508);
    v17 = SnapshotIdentifier.Lazy.object.getter(v4);
    sub_12E1C(v6, &qword_DFE5F0, &unk_B09508);
    sub_486014(v3, type metadata accessor for Search.Recents.Result.Item);
  }

  return v17;
}

id Search.init()()
{
  v1 = v0;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = result;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = &_swiftEmptySetSingleton;
    *(v0 + 88) = &_swiftEmptySetSingleton;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B00DA0;

    v4 = *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 56) = &type metadata for NotificationTrigger;
    *(inited + 64) = &protocol witness table for NotificationTrigger;
    *(inited + 32) = v5;
    *(inited + 40) = v6;

    v7 = v4;
    v8 = *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 96) = &type metadata for NotificationTrigger;
    *(inited + 104) = &protocol witness table for NotificationTrigger;
    *(inited + 72) = v9;
    *(inited + 80) = v10;

    v11 = v8;
    v12 = *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 136) = &type metadata for NotificationTrigger;
    *(inited + 144) = &protocol witness table for NotificationTrigger;
    *(inited + 112) = v13;
    *(inited + 120) = v14;

    v15 = v12;
    v16 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 176) = &type metadata for NotificationTrigger;
    *(inited + 184) = &protocol witness table for NotificationTrigger;
    *(inited + 152) = v17;
    *(inited + 160) = v18;

    v19 = v16;
    v20 = *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 216) = &type metadata for NotificationTrigger;
    *(inited + 224) = &protocol witness table for NotificationTrigger;
    *(inited + 192) = v21;
    *(inited + 200) = v22;

    v23 = v20;
    v24 = *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 256) = &type metadata for NotificationTrigger;
    *(inited + 264) = &protocol witness table for NotificationTrigger;
    *(inited + 232) = v25;
    *(inited + 240) = v26;
    v27 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for Whitetail.Binding();
    swift_allocObject();

    v28 = v24;

    v29 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_483C7C, v27);

    *(v1 + 112) = v29;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_476814(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    sub_30E554(v3 + 16, v5);
    sub_4768E8();
    sub_30E554(v3 + 16, v4);
    swift_beginAccess();
    sub_30EDB4(v5, v3 + 16);
    swift_endAccess();
    sub_476C14(v4);
    sub_30E5B0(v4);
    sub_30E5B0(v5);
  }

  return result;
}

uint64_t sub_4768E8()
{
  v1 = v0;
  static ApplicationCapabilities.shared.getter(v25);
  if (!*v0)
  {
    goto LABEL_7;
  }

  v2 = *v0;
  if ([v2 showsLibraryContent])
  {
    v3 = [v2 pickingForExternalPlayer];

    if (v3)
    {
      v4 = v25[2];
      v5 = sub_4776BC(v1, v25);
      if ((v4 & 1) == 0)
      {
LABEL_5:
        if ((v5 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

LABEL_8:
      sub_ABB5C0();
      sub_AB93F0();
      v6 = sub_ABB610();
      v7 = -1 << *(&_swiftEmptySetSingleton + 32);
      v8 = v6 & ~v7;
      if (((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
LABEL_13:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_245D4(1, v8, isUniquelyReferenced_nonNull_native);
        if ((v5 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      v9 = ~v7;
      v10 = *(&_swiftEmptySetSingleton + 6);
      while ((*(v10 + v8) & 1) == 0 && (sub_ABB3C0() & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if (((*(&_swiftEmptySetSingleton + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_5;
    }

LABEL_7:
    v5 = sub_4776BC(v1, v25);
    goto LABEL_8;
  }

  if ((sub_4776BC(v1, v25) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_ABB5C0();
  sub_AB93F0();
  v12 = sub_ABB610();
  v13 = -1 << *(&_swiftEmptySetSingleton + 32);
  v14 = v12 & ~v13;
  if ((*(&_swiftEmptySetSingleton + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14))
  {
    v15 = ~v13;
    v16 = *(&_swiftEmptySetSingleton + 6);
    while (*(v16 + v14) == 1 && (sub_ABB3C0() & 1) == 0)
    {
      v14 = (v14 + 1) & v15;
      if (((*(&_swiftEmptySetSingleton + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_245D4(0, v14, v17);
  }

LABEL_22:
  v18 = v1[8];
  v1[8] = &_swiftEmptySetSingleton;
  sub_4C9E88(&_swiftEmptySetSingleton, v18);
  if (v19)
  {

    return sub_70C54(v25);
  }

  else
  {
    v21 = v1[9];

    sub_4867CC(&_swiftEmptySetSingleton, v21);
    v23 = v22;

    v24 = sub_2F3DD0(v23);

    result = sub_70C54(v25);
    v1[9] = v24;
  }

  return result;
}

double sub_476C14(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_30E554(v1 + 16, v11);
  v4 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v4 + 2), v10);
  sub_30EDB4(v11, v10);
  RequestResponse.Controller.request.setter(v10);

  Search.recentlySearchedSnapshotController.getter();
  sub_30E554(v11, v10);
  RequestResponse.Controller.request.setter(v10);

  sub_4C9E88(*(a1 + 64), v12);
  if (v5)
  {
    sub_30E5B0(v11);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v2 + 96);
    if (v7)
    {
      v8 = *(v2 + 104);
      swift_endAccess();
      sub_307CC(v7, v8);

      v7(v9);
      sub_30E5B0(v11);

      sub_17654(v7, v8);
    }

    else
    {
      sub_30E5B0(v11);
      swift_endAccess();
    }
  }

  return result;
}

__n128 Search.RecentlySearchedSnapshotRequest.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

void (*Search.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  swift_beginAccess();
  sub_30E554(v1 + 16, v4);
  return sub_476E64;
}

void sub_476E64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 288);
  if (a2)
  {
    sub_30E554(*a1, v2 + 80);
    sub_30E554(v3 + 16, v2 + 160);
    swift_beginAccess();
    sub_30EDB4(v2 + 80, v3 + 16);
    swift_endAccess();
    sub_476C14(v2 + 160);
    sub_30E5B0(v2 + 80);
    sub_30E5B0(v2 + 160);
    v4 = v2;
  }

  else
  {
    sub_30E554(v3 + 16, v2 + 80);
    swift_beginAccess();
    sub_30EDB4(v2, v3 + 16);
    swift_endAccess();
    sub_476C14(v2 + 80);
    sub_30E5B0(v2);
    v4 = v2 + 80;
  }

  sub_30E5B0(v4);

  free(v2);
}

uint64_t sub_476F74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_4768E8();
  }

  return result;
}

uint64_t NSUserDefaults.lastSelectedSearchSource.getter()
{
  LOBYTE(v11) = 0;
  sub_35BCD8();
  v1 = sub_36A48();
  NSUserDefaults.subscript.getter(&v15);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      sub_AB2AD0();
      swift_allocObject();
      sub_AB2AC0();
      sub_483CD8();
      sub_AB2AB0();

      sub_466B8(v11, v12);
      return v15;
    }
  }

  else
  {
    sub_12E1C(&v15, &unk_DE8E40, &unk_AF8050);
  }

  sub_483C84();
  v2 = v0;
  NSUserDefaults.Migrator.init<A>(userDefaults:key:)(v2, v3, &type metadata for String, &type metadata for String, &_s9SearchKeyO6LegacyON, v1, &v15);
  v4 = v15;
  UIScreen.Dimensions.size.getter();
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092B0, &unk_B10870);
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v6, v8, 0, v9, &type metadata for Data, &v13, v1);

  if (v14 >> 60 == 15)
  {
    return 2;
  }

  sub_466A4(v13, v14);
  return NSUserDefaults.lastSelectedSearchSource.getter();
}

void sub_4772D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 64);
  *(a2 + 64) = *a1;

  sub_4C9E88(v5, v4);
  if (v6)
  {
  }

  else
  {
    v7 = *(a2 + 72);

    sub_4867CC(v3, v7);
    v9 = v8;

    v10 = sub_2F3DD0(v9);

    *(a2 + 72) = v10;
  }
}

void sub_4773AC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  v25 = *a1;
  if (*a1)
  {
    v8 = 0x7972617262696CLL;
  }

  else
  {
    v8 = 0x676F6C61746163;
  }

  v32 = a2;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = (*(v32 + 48) + 24 * (__clz(__rbit64(v6)) | (v10 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      if (v14 < 0)
      {
        v15 = 0x7972617262696CLL;
      }

      else
      {
        v15 = 0x676F6C61746163;
      }

      if (v15 == v8)
      {
        sub_2BB90(v13, v12, v14);

        swift_bridgeObjectRelease_n();
        goto LABEL_25;
      }

      v16 = sub_ABB3C0();
      sub_2BB90(v13, v12, v14);
      swift_bridgeObjectRelease_n();
      if (v16)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_2BBCC(v13, v12, v14);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v14;
  }

  else
  {
    while (1)
    {
LABEL_8:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v10 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    if (v25)
    {
      v17 = [objc_opt_self() deviceMediaLibrary];
      if (v17)
      {
        v27 = 0;
        v28 = 0xE000000000000000;
        v29 = 1;
        v30 = v17;
        memset(v31, 0, sizeof(v31));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09920, &qword_B119A0);
        swift_allocObject();
        v14 = RequestResponse.Controller.init(request:)(&v27, v18, v19, v20) | 0x8000000000000000;
        v13 = 0x7972617262694CLL;
        v12 = 0xE700000000000000;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v21 = [objc_opt_self() deviceMediaLibrary];
    if (v21)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      v29 = 1;
      v30 = v21;
      memset(v31, 0, sizeof(v31));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09928, &qword_B119A8);
      swift_allocObject();
      v14 = RequestResponse.Controller.init(request:)(&v27, v22, v23, v24);
      v12 = 0xEB00000000636973;
      v13 = 0x754D2E656C707041;
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
  }
}

uint64_t sub_4776BC(id *a1, uint64_t a2)
{
  sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
  v4 = a1[1];
  v5 = static MPMediaLibrary.device.getter();
  v6 = sub_ABA790();

  if (v6 & 1) != 0 && (v7 = *(a2 + 32), (sub_472A84(0, v7)))
  {
    v8 = *(a2 + 1);
    if (*a1)
    {
      v9 = *a1;
      if (MPMediaPickerConfiguration.supportsCatalogContent.getter() & 1) != 0 && (v8)
      {
        static ApplicationCapabilities.shared.getter(v13);
        sub_70C54(v13);

        v10 = v13[9] & 1;
      }

      else
      {

        v10 = 0;
      }
    }

    else
    {
      if (sub_472A84(2, v7))
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_472A84(4, v7);
      }

      v10 = v8 & v12;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_307CC(v1, *(v0 + 104));
  return v1;
}

uint64_t Search.onAvailableSourcesChanged.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_17654(v5, v6);
}

uint64_t static Search.Source.< infix(_:_:)(char a1, char a2)
{
  v2 = 0;
  if (a1 & 1) == 0 && (a2)
  {
    static ApplicationCapabilities.shared.getter(v5);
    v3 = v5[4];

    sub_70C54(v5);
    v2 = sub_472A84(2, v3);
  }

  return v2 & 1;
}

MusicApplication::Search::Source_optional __swiftcall Search.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_CF18E8;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicApplication_Search_Source_library;
  }

  else
  {
    v4.value = MusicApplication_Search_Source_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_47798C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7972617262696CLL;
  }

  else
  {
    v2 = 0x676F6C61746163;
  }

  if (*a2)
  {
    v3 = 0x7972617262696CLL;
  }

  else
  {
    v3 = 0x676F6C61746163;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_477A14()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_477A8C(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_477AE8(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_477B68(uint64_t *a1@<X8>)
{
  v2 = 0x676F6C61746163;
  if (*v1)
  {
    v2 = 0x7972617262696CLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_477C50(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  if ((*a1 & 1) == 0 && *a2)
  {
    static ApplicationCapabilities.shared.getter(v5);
    v3 = v5[4];

    sub_70C54(v5);
    v2 = sub_472A84(2, v3);
  }

  return v2 & 1;
}

uint64_t sub_477CC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 1;
  if ((*a2 & 1) == 0 && *a1)
  {
    static ApplicationCapabilities.shared.getter(v6);
    v3 = v6[4];

    sub_70C54(v6);
    v4 = sub_472A84(2, v3);

    v2 = v4 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_477D38(_BYTE *a1, _BYTE *a2)
{
  v2 = 1;
  if ((*a1 & 1) == 0 && *a2)
  {
    static ApplicationCapabilities.shared.getter(v6);
    v3 = v6[4];

    sub_70C54(v6);
    v4 = sub_472A84(2, v3);

    v2 = v4 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_477DB0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  if ((*a2 & 1) == 0 && *a1)
  {
    static ApplicationCapabilities.shared.getter(v5);
    v3 = v5[4];

    sub_70C54(v5);
    v2 = sub_472A84(2, v3);
  }

  return v2 & 1;
}

void sub_477E20(char a1, uint64_t a2)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  if (a1)
  {
    v8 = 0x7972617262696CLL;
  }

  else
  {
    v8 = 0x676F6C61746163;
  }

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = (*(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v10 << 6)));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v14 < 0 ? 0x7972617262696CLL : 0x676F6C61746163;
      if (v15 == v8)
      {
        break;
      }

      v16 = sub_ABB3C0();
      sub_2BB90(v12, v13, v14);
      swift_bridgeObjectRelease_n();
      if (v16)
      {
        goto LABEL_18;
      }

      v6 &= v6 - 1;
      sub_2BBCC(v12, v13, v14);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_2BB90(v12, v13, v14);

    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
LABEL_18:

        return;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void SharePlayTogetherSession.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t static Search.Item.Hint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_ABB3C0(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_ABB3C0();
    }
  }

  return result;
}

uint64_t Search.Item.Hint.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_AB93F0();

  return sub_AB93F0();
}

Swift::Int Search.Item.Hint.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t static Search.Recents.Result.Item.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  if ((static SnapshotIdentifier.== infix(_:_:)(a1, a2, v4) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Search.Recents.Result.Item(0);
  if ((sub_AB33E0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

void Search.Item.hash(into:)(uint64_t a1)
{
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  v7 = &v15 - v6;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v9, type metadata accessor for Search.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_36B0C(v9, v7, &unk_E00040, &unk_AFA530);
      sub_ABB5D0(1uLL);
      SnapshotIdentifier.hash(into:)(a1, v5, v11, v12);
      sub_12E1C(v7, &unk_E00040, &unk_AFA530);
    }

    else
    {
      sub_489CC8(v9, v4, type metadata accessor for Search.Recents.Result.Item);
      sub_ABB5D0(2uLL);
      SnapshotIdentifier.hash(into:)(a1, v5, v13, v14);
      sub_AB3430();
      sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_AB90E0();
      sub_AB93F0();
      sub_486014(v4, type metadata accessor for Search.Recents.Result.Item);
    }
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
    sub_AB93F0();
  }
}

Swift::Int Search.Item.hashValue.getter()
{
  sub_ABB5C0();
  Search.Item.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_478594(uint64_t a1)
{
  sub_ABB5C0();
  Search.Item.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t Search.ResultContext.snapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Search.ResultContext.snapshot.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Search.ResultContext.searchedText.getter()
{
  v1 = *(v0 + *(type metadata accessor for Search.ResultContext(0) + 20));

  return v1;
}

void Search.ResultContext.searchedText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Search.ResultContext(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Search.ResultContext.variant.setter(char a1)
{
  result = type metadata accessor for Search.ResultContext(0);
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

double Search.ResultContext.resources.getter()
{
  type metadata accessor for Search.ResultContext(0);

  return result;
}

void Search.ResultContext.resources.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Search.ResultContext(0) + 32);

  *(v1 + v3) = a1;
}

void *Search.ResultContext.performanceMetrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for Search.ResultContext(0) + 36));
  v2 = v1;
  return v1;
}

void Search.ResultContext.performanceMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Search.ResultContext(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t Search.ResultContext.ScopingContext.selected.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 8));

  return sub_70DF8(a1, v1 + 8);
}

double Search.recentlySearchedSnapshotController.setter(uint64_t a1)
{
  *(v1 + 120) = a1;

  return result;
}

double (*Search.recentlySearchedSnapshotController.modify(uint64_t **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Search.recentlySearchedSnapshotController.getter();
  return sub_478B1C;
}

double sub_478B1C(uint64_t *a1)
{
  *(a1[1] + 120) = *a1;

  return result;
}

double Search.RecentlySearchedSnapshotRequest.perform(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v11 = v16 - v10;
  v12 = *(v5 + 72);
  sub_30E554(v5, v16);
  if (a1)
  {
    RequestResponse.Revision.content.getter(v11);
    v13 = type metadata accessor for Search.ResultContext(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      sub_12E1C(v11, &unk_E00050, &qword_B094D0);
      a1 = 0;
    }

    else
    {
      a1 = *&v11[*(v13 + 32)];

      sub_486014(v11, type metadata accessor for Search.ResultContext);
    }
  }

  v17[2] = v16[2];
  v17[3] = v16[3];
  v17[4] = v16[4];
  v17[0] = v16[0];
  v17[1] = v16[1];
  v18 = a1;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v12;

  sub_47953C(sub_485FD4, v14, a4);
  sub_485FE4(v17);

  return result;
}

uint64_t sub_478D38(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, __n128), uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v42 = a1;
  v45 = a7;
  v46 = a6;
  v43 = a4;
  v44 = a5;
  v10 = *(type metadata accessor for Search.Item(0) - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0, &qword_B10898);
  __chkstk_darwin();
  v15 = &v36 - v14;
  v16 = (type metadata accessor for Search.ResultContext(0) - 8);
  __chkstk_darwin();
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D30D0();
  sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
  sub_AB5110();
  v19 = &v18[v16[9]];
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  v20 = &v18[v16[7]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v18[v16[8]] = 1;
  v21 = v16[10];
  *&v18[v21] = 0;
  *&v18[v16[11]] = 0;
  v22 = &v18[v16[12]];
  *v22 = sub_479238;
  *(v22 + 8) = xmmword_B10820;
  if (a3)
  {
    v47 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_willThrowTypedImpl();
    sub_487D68(v18, v15, type metadata accessor for Search.ResultContext);
    swift_storeEnumTagMultiPayload();
    (v46)(v15, v43, v44);
  }

  else
  {
    v38 = v13;
    v40 = v15;
    *&v18[v21] = a2;

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
    v24._rawValue = &off_CF1938;
    v39 = v18;
    sub_AB50D0(v24);
    v25 = v42;
    v26 = v42[2];
    if (v26)
    {
      v36 = v23;
      v37 = v22;
      v47 = _swiftEmptyArrayStorage;
      sub_6D8B4(0, v26, 0);
      v27 = v47;
      v28 = *(type metadata accessor for Search.Recents.Result.Item(0) - 8);
      v29 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v30 = *(v28 + 72);
      do
      {
        sub_487D68(v29, v12, type metadata accessor for Search.Recents.Result.Item);
        swift_storeEnumTagMultiPayload();
        v47 = v27;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          sub_6D8B4((v31 > 1), v32 + 1, 1);
          v27 = v47;
        }

        v27[2] = v32 + 1;
        sub_489CC8(v12, v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, type metadata accessor for Search.Item);
        v29 += v30;
        --v26;
      }

      while (v26);
      v33 = v46;
      v22 = v37;
    }

    else
    {
      v33 = v46;
    }

    LOBYTE(v47) = 3;
    v18 = v39;
    sub_AB5090();

    v34 = swift_allocObject();
    v15 = v40;
    *(v34 + 16) = v41;
    *v22 = sub_48BC9C;
    *(v22 + 1) = v34;
    *(v22 + 2) = 0x4000000000000000;
    sub_487D68(v18, v15, type metadata accessor for Search.ResultContext);
    swift_storeEnumTagMultiPayload();

    (v33)(v15, v43, v44);
  }

  sub_12E1C(v15, &qword_E092C0, &qword_B10898);
  return sub_486014(v18, type metadata accessor for Search.ResultContext);
}

uint64_t sub_479248(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_487D68(a1, v5, type metadata accessor for Search.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_489CC8(v5, v7, type metadata accessor for Search.Recents.Result.Item);
    __chkstk_darwin();
    *&v11[-16] = v7;
    sub_1B600C(sub_48BCA4, &v11[-32], a2);
    v9 = v8;
    sub_486014(v7, type metadata accessor for Search.Recents.Result.Item);
    return v9;
  }

  else
  {
    sub_486014(v5, type metadata accessor for Search.Item);
    return 0;
  }
}

uint64_t sub_479414(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;

  v7 = v5 < 0;
  if (v5 < 0)
  {
    v8 = &_s7LibraryVN;
  }

  else
  {
    v8 = &_s7CatalogVN;
  }

  if (v7)
  {
    v9 = &off_D17228;
  }

  else
  {
    v9 = &off_D00048;
  }

  v17[3] = v8;
  v17[4] = v9;
  v17[0] = v4;
  v17[1] = v3;
  v17[2] = v6;
  __swift_project_boxed_opaque_existential_1(v17, v8);
  v10 = (v9[1])(v8, v9);
  v12 = v11;
  v13 = (a2 + *(type metadata accessor for Search.Recents.Result.Item(0) + 24));
  if (v10 == *v13 && v12 == v13[1])
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_ABB3C0();
  }

  __swift_destroy_boxed_opaque_existential_0(v17);
  return v15 & 1;
}

double sub_47953C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v29 = a1;
  v37 = a3;
  v34 = sub_AB7C10();
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_AB7C50();
  v33 = *(v35 - 8);
  __chkstk_darwin();
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C20();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v10 = UnfairLock.init()();
  v31 = v10;
  v11 = dispatch_group_create();
  v27 = v11;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v12 = CompoundRequestResponseInvalidation.__allocating_init()();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_988FC(_swiftEmptyArrayStorage);
  v15 = *(v3 + 72);
  v39 = v3;
  v40 = v11;
  v41 = v10;
  v42 = v13;
  v43 = v14;
  v44 = v12;
  sub_2C1E14(sub_489FEC, v38, v15);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.userInteractive(_:), v6);
  v26 = sub_ABA190();
  (*(v7 + 8))(v9, v6);
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v17 = v29;
  v16[4] = v14;
  v16[5] = v17;
  v16[6] = v30;
  aBlock[4] = sub_48A060;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_148;
  v18 = _Block_copy(aBlock);

  v19 = v28;
  sub_AB7C30();
  v45 = _swiftEmptyArrayStorage;
  sub_485F14(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  v20 = v32;
  v21 = v34;
  sub_ABABB0();
  v22 = v26;
  v23 = v27;
  sub_ABA0F0();

  (*(v36 + 8))(v20, v21);
  (*(v33 + 8))(v19, v35);
  _Block_release(v18);

  v24 = v37;
  *(v37 + 32) = 0;
  *v24 = 0u;
  v24[1] = 0u;

  return result;
}

double Search.resultSnapshotController.setter(uint64_t a1)
{
  *(v1 + 128) = a1;

  return result;
}

double (*Search.resultSnapshotController.modify(uint64_t **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Search.resultSnapshotController.getter();
  return sub_479AD0;
}

double sub_479AD0(uint64_t *a1)
{
  *(a1[1] + 128) = *a1;

  return result;
}

unint64_t Search.ResultSnapshotRequest.description.getter()
{
  v4 = 0xD000000000000015;
  v5 = 0x8000000000B10860;
  sub_ABAD90(18);
  v6._object = 0x8000000000B66380;
  v6._countAndFlagsBits = 0xD000000000000010;
  sub_AB94A0(v6);
  sub_ABAF70();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 0x3A656372756F7320;
  v8._object = 0xE900000000000020;
  sub_AB94A0(v8);
  sub_ABAF70();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_AB94A0(v9);

  sub_36A48();
  v2[5] = sub_ABAAD0();
  v10._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v10);

  v11._countAndFlagsBits = 0x203A7478657420;
  v11._object = 0xE700000000000000;
  sub_AB94A0(v11);

  v2[0] = 0x746E616972617620;
  v2[1] = 0xEA0000000000203ALL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010, &unk_B02880);
  v12._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v12);

  v13._countAndFlagsBits = 0x746E616972617620;
  v13._object = 0xEA0000000000203ALL;
  sub_AB94A0(v13);

  v3._countAndFlagsBits = 0x203A65706F637320;
  v3._object = 0xE800000000000000;
  sub_15F84(v0 + 112, v2, &unk_E00060, &qword_B094F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
  v14._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v14);

  sub_AB94A0(v3);

  return v4;
}

uint64_t PlaylistCovers.Recipe.textColor.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void PlaylistCovers.Recipe.textColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

double Search.ResultSnapshotRequest.perform(_:_:)@<D0>(void (*a1)(uint64_t, void, void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0, &qword_B10898);
  __chkstk_darwin();
  v8 = (&v38 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v38 - v11;
  v13 = *(v3 + 80);
  sub_477E20(v13, *(v3 + 72));
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v20 = v16;
    v38 = v6;
    v39 = v8;
    v43 = a2;
    v44 = a3;
    v40 = v15;
    v41 = v14;
    v21 = type metadata accessor for Search.ResultContext(0);
    v42 = swift_allocBox();
    v23 = v22;
    type metadata accessor for Search.Item(0);
    sub_1D30D0();
    sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
    sub_AB5110();
    v25 = *(v3 + 88);
    v24 = *(v3 + 96);
    v26 = *(v3 + 104);
    v27 = (v23 + v21[7]);
    v27[1] = 0u;
    v27[2] = 0u;
    *v27 = 0u;
    (*(v10 + 32))(v23, v12, v9);
    v28 = (v23 + v21[5]);
    *v28 = v25;
    v28[1] = v24;
    *(v23 + v21[6]) = v26;
    *(v23 + v21[8]) = 0;
    *(v23 + v21[9]) = 0;
    v29 = (v23 + v21[10]);
    v30 = v40;
    v31 = v41;
    *v29 = v41;
    v29[1] = v30;
    v29[2] = v20;
    v32 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v32 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v34 = v42;
      v33 = v43;

      sub_487D54(v31, v30, v20);
      if (v20 < 0)
      {
        sub_487B1C(v20 & 0x7FFFFFFFFFFFFFFFLL, v3, v34, v45, v33);
      }

      else
      {
        sub_4878E4(v20, v3, v34, v45, v33);
      }

      v37 = v44;
      sub_30EEB0(v31, v30, v20);
      *(v37 + 4) = 0;
      *v37 = 0u;
      v37[1] = 0u;
    }

    else
    {
      v35 = v39;
      sub_487D68(v23, v39, type metadata accessor for Search.ResultContext);
      swift_storeEnumTagMultiPayload();

      sub_487D54(v31, v30, v20);
      v45(v35, 0, 0);
      sub_30EEB0(v31, v30, v20);
      sub_12E1C(v35, &qword_E092C0, &qword_B10898);
      v36 = v44;
      *v44 = 0u;
      v36[1] = 0u;
      *(v36 + 4) = 0;
    }
  }

  else
  {
    sub_486074();
    v17 = swift_allocError();
    *v18 = v13;
    *v8 = v17;
    swift_storeEnumTagMultiPayload();
    v45(v8, 0, 0);
    sub_12E1C(v8, &qword_E092C0, &qword_B10898);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  return result;
}

double sub_47A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v43 = a6;
  v38 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0, &qword_B10898);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin();
  v39 = &v36 - v11;
  v44 = type metadata accessor for Search.ResultContext(0);
  v12 = swift_projectBox();
  type metadata accessor for GenericRequestResponseInvalidation();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = (v13 + 32);
  *(v13 + 48) = 0;
  v15 = (v13 + 48);
  *(v13 + 40) = 0;
  *(v13 + 16) = 0x636972656E6547;
  *(v13 + 24) = 0xE700000000000000;
  if (!RequestResponse.Revision.isValid.getter())
  {
    swift_beginAccess();
    if ((*v15 & 1) == 0)
    {
      *v15 = 1;
      swift_beginAccess();
      v16 = *v14;
      if (*v14)
      {
        v17 = *(v13 + 40);
        v18 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);

        v16(v13, v18);
        sub_17654(v16, v17);
      }
    }
  }

  v19 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_48C67C;
  v19[1] = v13;

  sub_17654(v20, v21);
  RequestResponse.Revision.content.getter(&v45);
  v22 = v45;
  if (v45)
  {
    v37 = a5;
    v23 = v46;
    v24 = v47;
    v25 = *(&v45 + 1);
    swift_beginAccess();
    v26 = v44;
    *(v12 + *(v44 + 32)) = v23;
    v27 = *(v26 + 36);
    v28 = *(v12 + v27);
    *(v12 + v27) = v24;

    v36 = v24;

    sub_15F84(v38 + 112, &v45, &unk_E00060, &qword_B094F0);
    if (v47)
    {
      sub_70DF8(&v45, &v49);
    }

    else if (*(v25 + 16))
    {
      v29 = *(v25 + 32);
      *(&v50 + 1) = &_s7LibraryV11ResultScopeON;
      v51 = &off_D171C0;
      LOBYTE(v49) = v29;
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
    }

    sub_15F84(&v49, &v45, &unk_E00060, &qword_B094F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
    if (swift_dynamicCast())
    {
      v30 = LOBYTE(v48[0]);
    }

    else
    {
      v30 = 8;
      LOBYTE(v48[0]) = 8;
    }

    v31 = v39;
    sub_4BFCDC(v30, v22, v25, v39);
    swift_beginAccess();
    (*(v40 + 40))(v12, v31, v41);
    sub_15F84(&v49, &v45, &unk_E00060, &qword_B094F0);
    if (v47)
    {
      sub_70DF8(&v45, v48);

      v33 = sub_12BCEC(v32);

      swift_bridgeObjectRelease_n();
      sub_70DF8(v48, &v45 + 8);
      *&v45 = v33;
      sub_12E1C(&v49, &unk_E00060, &qword_B094F0);
      swift_beginAccess();
      sub_160B4(&v45, v12 + *(v44 + 28), &unk_E00070, &unk_B0A990);
    }

    else
    {

      sub_12E1C(&v49, &unk_E00060, &qword_B094F0);
      sub_12E1C(&v45, &unk_E00060, &qword_B094F0);
    }

    a5 = v37;
  }

  swift_beginAccess();
  sub_487D68(v12, v9, type metadata accessor for Search.ResultContext);
  swift_storeEnumTagMultiPayload();
  v34 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  a5(v9, v13, v34);
  sub_12E1C(v9, &qword_E092C0, &qword_B10898);

  return result;
}

double sub_47A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v68 = a6;
  v61 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E092C0, &qword_B10898);
  __chkstk_darwin();
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin();
  v62 = &v57 - v11;
  v69 = type metadata accessor for Search.ResultContext(0);
  v12 = swift_projectBox();
  type metadata accessor for GenericRequestResponseInvalidation();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 48) = 0;
  v14 = (v13 + 48);
  *(v13 + 40) = 0;
  *(v13 + 16) = 0x636972656E6547;
  *(v13 + 24) = 0xE700000000000000;
  if (!RequestResponse.Revision.isValid.getter())
  {
    swift_beginAccess();
    if ((*v14 & 1) == 0)
    {
      *v14 = 1;
      swift_beginAccess();
      v15 = *(v13 + 32);
      if (v15)
      {
        v16 = *(v13 + 40);
        v17 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);

        v15(v13, v17);
        sub_17654(v15, v16);
      }
    }
  }

  v18 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = sub_489E4C;
  v18[1] = v13;

  sub_17654(v19, v20);
  RequestResponse.Revision.content.getter(&v70);
  v21 = v74;
  if (v74 != 255)
  {
    v65 = v9;
    v22 = a5;
    v58 = v70;
    v59 = v73;
    v78 = v70;
    v79 = v71;
    v80 = v72;
    v81 = v73;
    v23 = *(&v70 + 1);
    v60 = v72;
    if (v74)
    {
      v24 = v72;
    }

    else
    {
      v24 = *(&v70 + 1);
    }

    v25 = v71;
    if (v74)
    {
      v26 = v73;
    }

    else
    {
      v26 = v71;
    }

    v82 = v74 & 1;

    swift_beginAccess();
    v27 = v69;
    *(v12 + *(v69 + 32)) = v24;

    v28 = *(v27 + 36);
    v29 = *(v12 + v28);
    *(v12 + v28) = v26;
    v30 = v26;

    sub_15F84(v61 + 112, &v70, &unk_E00060, &qword_B094F0);
    v57 = v22;
    v66 = v21;
    if (v72)
    {
      sub_70DF8(&v70, v77);
      a5 = v22;
      v9 = v65;
      v31 = v25;
    }

    else
    {
      if (v21)
      {
        v32 = v58;
        v33 = v59;
        sub_9AE20(v58, v23, v25, v60, v59, 1);

        v34 = v32;
        v31 = v25;
      }

      else
      {
        v31 = v25;
        sub_9AE20(v58, v23, v25, v60, v59, 0);
        v34 = _swiftEmptyArrayStorage;
        v33 = v25;
      }

      v9 = v65;

      if (v34[2])
      {
        v35 = v34[4];
        v36 = v34[5];
        v37 = v34[7];
        v61 = v34[6];

        v38 = swift_allocObject();
        v38[2] = v35;
        v38[3] = v36;
        v38[4] = v61;
        v38[5] = v37;
        v39 = &off_CFFFD0;
        v40 = &_s7CatalogV11ResultScopeVN;
      }

      else
      {

        v38 = 0;
        v40 = 0;
        v39 = 0;
        v77[1] = 0;
        v77[2] = 0;
      }

      a5 = v57;
      v77[0] = v38;
      v77[3] = v40;
      v77[4] = v39;
      if (v72)
      {
        sub_12E1C(&v70, &unk_E00060, &qword_B094F0);
      }
    }

    sub_15F84(v77, &v70, &unk_E00060, &qword_B094F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
    if (swift_dynamicCast())
    {
      v42 = *(&v75 + 1);
      v41 = v75;
      v44 = *(&v76 + 1);
      v43 = v76;
    }

    else
    {
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v41 = 0;
      v75 = 0u;
      v76 = 0u;
    }

    v45 = v58;
    v46 = v62;
    sub_1B6920(v41, v42, v43, v44, v62);
    sub_344D0C(v75, *(&v75 + 1), v76, *(&v76 + 1));
    swift_beginAccess();
    (*(v63 + 40))(v12, v46, v64);
    sub_15F84(v77, &v70, &unk_E00060, &qword_B094F0);
    if (v72)
    {
      v64 = v12;
      v47 = v31;
      sub_70DF8(&v70, &v75);
      v48 = v59;
      v49 = v60;
      v50 = v47;
      if (v66)
      {
        sub_9AE20(v45, v23, v47, v60, v59, 1);

        v51 = v23;
        v52 = v48;
        v53 = v45;
      }

      else
      {
        sub_9AE20(v45, v23, v47, v60, v59, 0);
        v53 = _swiftEmptyArrayStorage;
        v51 = v23;
        v52 = v50;
      }

      v54 = sub_12B7FC(v53);
      sub_1D339C(v45, v51, v50, v49, v48, v66);
      sub_70DF8(&v75, &v70 + 8);
      *&v70 = v54;
      sub_12E1C(v77, &unk_E00060, &qword_B094F0);

      v12 = v64;
      swift_beginAccess();
      sub_160B4(&v70, v12 + *(v69 + 28), &unk_E00070, &unk_B0A990);
      a5 = v57;
      v9 = v65;
    }

    else
    {
      sub_1D339C(v45, v23, v31, v60, v59, v66);
      sub_12E1C(v77, &unk_E00060, &qword_B094F0);
      sub_12E1C(&v70, &unk_E00060, &qword_B094F0);
    }
  }

  swift_beginAccess();
  sub_487D68(v12, v9, type metadata accessor for Search.ResultContext);
  swift_storeEnumTagMultiPayload();
  v55 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  a5(v9, v13, v55);
  sub_12E1C(v9, &qword_E092C0, &qword_B10898);

  return result;
}

void sub_47B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if ((*(a3 + 48) & 1) == 0)
  {
    *(a3 + 48) = 1;
    swift_beginAccess();
    v4 = *(a3 + 32);
    if (v4)
    {
      v5 = *(a3 + 40);
      v6 = sub_485F14(&qword_E09938, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);

      v4(a3, v6);
      sub_17654(v4, v5);
    }
  }
}

double sub_47B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v6 = a4 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = a4;
  }

  if (a4 < 0)
  {
    v7 = &_s7LibraryVN;
  }

  else
  {
    v7 = &_s7CatalogVN;
  }

  if (a4 < 0)
  {
    v8 = &off_D17228;
  }

  else
  {
    v8 = &off_D00048;
  }

  v10[3] = v7;
  v10[4] = v8;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = v6;
  __swift_project_boxed_opaque_existential_1(v10, v7);
  (v8[1])(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_AB93F0();

  sub_AB93F0();

  return result;
}

Swift::Int sub_47B2CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_ABB5C0();
  sub_47B1A4(v5, v1, v2, v3);
  return sub_ABB610();
}

Swift::Int sub_47B334(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_ABB5C0();
  sub_47B1A4(v6, v2, v3, v4);
  return sub_ABB610();
}

uint64_t *Search.deinit()
{
  sub_30E5B0(v0 + 16);
  sub_17654(*(v0 + 96), *(v0 + 104));

  return v0;
}

uint64_t Search.__deallocating_deinit()
{
  sub_30E5B0(v0 + 16);
  sub_17654(*(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

void sub_47B440(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a5;
  v25 = a3;
  v23 = sub_ABA9C0();
  v8 = *(v23 - 8);
  __chkstk_darwin();
  v10 = &v22 - v9;
  v11 = *(a2 - 8);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 32);
  v15 = a1;
  v14();
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v23);
    type metadata accessor for Search.Recents.Item.InitializerError(0, a2, a4, v16);
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v13, v10, a2);
    v18 = [v15 identifiers];
    v19 = v24;
    *v24 = v18;
    v21 = type metadata accessor for Search.Recents.Item(0, a2, a4, v20);
    (*(v11 + 16))(&v19[*(v21 + 36)], v13, a2);
    sub_AB3420();

    (*(v11 + 8))(v13, a2);
  }
}

double sub_47B6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Search.Recents.Item(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  sub_ABB340();
  v13 = *(v12 - 8);
  swift_allocObject();
  v14 = sub_AB9780();
  (*(v13 + 16))(v15, a1, v12);
  v16 = sub_23BCD8(v14, v12);
  if (sub_AB9860())
  {
    WitnessTable = swift_getWitnessTable();
    v18 = sub_486410(v16, v12, WitnessTable);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  sub_47E434(v18, a2, a3, a4, v19);

  return result;
}

double NSUserDefaults.clearRecentlySearchedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Search.Recents.Item(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = sub_AB97C0();
  if (sub_AB9860())
  {
    WitnessTable = swift_getWitnessTable();
    v13 = sub_486410(v11, v10, WitnessTable);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  sub_47ED9C(v13, a1, a2, a3);

  return result;
}

unint64_t sub_47BA28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1960;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_47BA78(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1684957547;
  }

  return 0x6564644165746164;
}

uint64_t sub_47BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_ABB400();
}

uint64_t sub_47BB48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_47BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_47BC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_47BC94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_47BA28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_47BCC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_47BA78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_47BCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_47BA74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_47BD20@<X0>(_BYTE *a2@<X8>)
{
  result = static MPIdentifierSet.Purpose.Options.all.getter();
  *a2 = result;
  return result;
}

uint64_t sub_47BD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_47BDA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void Search.Recents.Item.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v42 = sub_AB3430();
  v39 = *(v42 - 8);
  __chkstk_darwin();
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a2 - 8);
  __chkstk_darwin();
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Recents.Item.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v47 = sub_ABB200();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v11 = &v35 - v10;
  v46 = a3;
  v13 = type metadata accessor for Search.Recents.Item(0, a2, a3, v12);
  v38 = *(v13 - 8);
  __chkstk_darwin();
  v15 = (&v35 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v48;
  sub_ABB680();
  if (v16)
  {
    goto LABEL_4;
  }

  v48 = v13;
  v17 = v45;
  v18 = v46;
  v51 = 0;
  sub_487DE8();
  sub_ABB1E0();
  v37 = v11;
  v19 = v49;
  v20 = v50;
  sub_13C80(0, &qword_DEBB58, NSKeyedUnarchiver_ptr);
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  v35 = v19;
  v36 = v20;
  v21 = sub_ABA0D0();
  v24 = a2;
  if (!v21)
  {
    type metadata accessor for Search.Recents.Item.InitializerError(0, a2, v18, v22);
    swift_getWitnessTable();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    (*(v17 + 8))(v37, v47);
    sub_466B8(v35, v36);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v25 = v15;
  *v15 = v21;
  LOBYTE(v49) = 1;
  v26 = v44;
  v27 = v21;
  v28 = v37;
  sub_ABB1E0();
  v29 = v17;
  v46 = v27;
  v30 = v25;
  (*(v41 + 32))(v25 + *(v48 + 36), v26, v24);
  LOBYTE(v49) = 2;
  sub_485F14(&qword_E092D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31 = v42;
  v32 = v43;
  sub_ABB1E0();
  (*(v29 + 8))(v28, v47);
  v33 = v48;
  (*(v39 + 32))(v30 + *(v48 + 40), v32, v31);
  sub_466B8(v35, v36);
  v34 = v38;
  (*(v38 + 16))(v40, v30, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v34 + 8))(v30, v33);
}

uint64_t Search.Recents.Item.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v23[0] = *(a2 + 24);
  v23[1] = v8;
  type metadata accessor for Search.Recents.Item.CodingKeys(255, v8, v23[0], a4);
  swift_getWitnessTable();
  v24 = sub_ABB290();
  v9 = *(v24 - 8);
  __chkstk_darwin();
  v11 = v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_ABB690();
  v12 = objc_opt_self();
  v13 = *v5;
  v26[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v26];
  v15 = v26[0];
  if (v14)
  {
    v16 = sub_AB3260();
    v18 = v17;

    v26[0] = v16;
    v26[1] = v18;
    v25 = 0;
    sub_487E54();
    v19 = v23[2];
    v20 = v24;
    sub_ABB280();
    if (!v19)
    {
      LOBYTE(v26[0]) = 1;
      sub_ABB280();
      LOBYTE(v26[0]) = 2;
      sub_AB3430();
      sub_485F14(&qword_E092E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_ABB280();
    }

    (*(v9 + 8))(v11, v20);
    return sub_466B8(v16, v18);
  }

  else
  {
    v22 = v15;
    sub_AB3050();

    swift_willThrow();
    return (*(v9 + 8))(v11, v24);
  }
}

uint64_t static Search.Recents.Item.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Search.Recents.Item(0, a3, a4, a4);

  return sub_AB3390();
}

uint64_t static Search.Recents.Item.__derived_struct_equals(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Search.Recents.Item(0, a3, a4, v6);
  if ((sub_AB91C0() & 1) == 0)
  {
    return 0;
  }

  return sub_AB33E0();
}

uint64_t Search.Recents.Item.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_ABA7A0();
  sub_AB90E0();
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return sub_AB90E0();
}

Swift::Int Search.Recents.Item.hashValue.getter(uint64_t a1)
{
  sub_ABB5C0();
  Search.Recents.Item.hash(into:)(v3, a1);
  return sub_ABB610();
}

Swift::Int sub_47C938(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  Search.Recents.Item.hash(into:)(v4, a2);
  return sub_ABB610();
}

uint64_t Search.Recents.Result.Item.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  SnapshotIdentifier.hash(into:)(a1, v2, v3, v4);
  type metadata accessor for Search.Recents.Result.Item(0);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();

  return sub_AB93F0();
}

Swift::Int Search.Recents.Result.Item.hashValue.getter()
{
  sub_ABB5C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  SnapshotIdentifier.hash(into:)(v4, v0, v1, v2);
  type metadata accessor for Search.Recents.Result.Item(0);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_47CB84(uint64_t a1)
{
  sub_ABB5C0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  SnapshotIdentifier.hash(into:)(v5, v1, v2, v3);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_47CC58(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  SnapshotIdentifier.hash(into:)(a1, v3, v4, v5);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();

  return sub_AB93F0();
}

Swift::Int sub_47CD28(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  SnapshotIdentifier.hash(into:)(v6, v2, v3, v4);
  sub_AB3430();
  sub_485F14(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_AB90E0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_47CDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  if ((static SnapshotIdentifier.== infix(_:_:)(a1, a2, v6) & 1) == 0 || (sub_AB33E0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

_BYTE *sub_47CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v6 = sub_ABAE50();
  v62 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v52[-v9];
  __chkstk_darwin();
  v61 = &v52[-v11];
  __chkstk_darwin();
  v13 = &v52[-v12];
  LOBYTE(v67) = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v65);
  if (v66)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
    if (swift_dynamicCast())
    {
      v14 = v67;
      v15 = (*(*(a3 + 8) + 16))(a2);
      if (*(v14 + 16))
      {
        v60 = v14;
        v17 = sub_2EBF88(v15, v16);
        if (v18)
        {
          v56 = v6;
          v19 = (*(v60 + 56) + 16 * v17);
          v20 = v19[1];
          v58 = *v19;
          v59 = v20;
          sub_90090(v58, v20);

          sub_AB2AD0();
          swift_allocObject();
          v57 = sub_AB2AC0();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v24 = type metadata accessor for Search.Recents.Item(255, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
          WitnessTable = swift_getWitnessTable();
          sub_AB9BF0();
          v55 = v24;
          v64 = swift_getWitnessTable();
          swift_getWitnessTable();
          v25 = v58;
          sub_AB2AB0();
          if (!v3)
          {

            sub_466B8(v25, v59);

            return v65;
          }

          *&v65 = v3;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
          v26 = v56;
          if (!swift_dynamicCast())
          {

            swift_willThrow();
            sub_466B8(v58, v59);

            return v26;
          }

          v28 = v61;
          v27 = v62;
          (*(v62 + 32))(v61, v13, v26);
          v29 = v26;
          if (qword_DE6D48 != -1)
          {
            swift_once();
          }

          v30 = sub_AB4BC0();
          __swift_project_value_buffer(v30, static Logger.search);
          v31 = *(v27 + 16);
          v31(v10, v28, v26);
          v32 = sub_AB4BA0();
          v53 = sub_AB9F30();
          v57 = v32;
          if (os_log_type_enabled(v32, v53))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v67 = v34;
            *v33 = 136315138;
            v31(v8, v10, v29);
            v35 = sub_AB9350();
            v37 = v36;
            v38 = *(v62 + 8);
            v38(v10, v29);
            v39 = sub_425E68(v35, v37, &v67);

            *(v33 + 4) = v39;
            v40 = v57;
            _os_log_impl(&dword_0, v57, v53, "Error decoding recently searched items from user defaults: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);

            v28 = v61;
          }

          else
          {
            v38 = *(v62 + 8);
            v38(v10, v29);
          }

          v48 = [objc_opt_self() standardUserDefaults];
          NSUserDefaults.clearRecentlySearchedItems<A>(for:)(v63, a2, a3, v49);

          v50 = v55;
          v51 = sub_AB97C0();
          if (sub_AB9860())
          {
            v26 = sub_486410(v51, v50, WitnessTable);

            v38(v28, v56);
          }

          else
          {
            v38(v28, v56);

            v26 = &_swiftEmptySetSingleton;
          }

          sub_466B8(v58, v59);
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    sub_12E1C(&v65, &unk_DE8E40, &unk_AF8050);
  }

  v41 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Search.Recents.Item(0, v41, v42, v43);
  v45 = sub_AB97C0();
  if (!sub_AB9860())
  {

    return &_swiftEmptySetSingleton;
  }

  v46 = swift_getWitnessTable();
  v26 = sub_486410(v45, v44, v46);
LABEL_15:

  return v26;
}

void sub_47D6C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();

  sub_19BC4(v13);
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  sub_48B9A0(a5, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, &v15);

  if (v8)
  {

    swift_endAccess();
    __break(1u);
  }

  else
  {
    *a3 = v15;
    swift_endAccess();
    CompoundRequestResponseInvalidation.append(_:)(a7, a8);
  }
}

void sub_47D7F8(uint64_t *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = [objc_opt_self() standardUserDefaults];
    sub_48A764(v13, v12);
    if (!v7)
    {
      v17 = v16;

      if (*(v17 + 16))
      {
        v18 = *(a2 + 80);
        sub_15F84(a2 + 24, v34, &qword_DF4F58, &unk_B0EB60);
        v32 = v17;
        v33 = v18;

        dispatch_group_enter(a3);
        v19 = swift_allocObject();
        v19[2] = a3;
        v19[3] = v13;
        v19[4] = v12;
        v19[5] = v14;
        v19[6] = a4;
        v19[7] = a5;
        v20 = v35;
        v19[8] = a6;
        v19[9] = v20;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_48AD88;
        *(v21 + 24) = v19;
        v22 = a3;

        sub_1C23C4(sub_48A704, v21, v31);
        sub_12E1C(v31, &unk_DF7968, &qword_B03810);
        sub_48ADF4(&v32);
LABEL_9:

        return;
      }

      goto LABEL_10;
    }

LABEL_6:

    return;
  }

  v15 = [objc_opt_self() standardUserDefaults];
  sub_48A12C(v13, v12);
  if (v7)
  {
    goto LABEL_6;
  }

  v24 = v23;

  if (*(v24 + 16))
  {
    v25 = *(a2 + 80);
    sub_15F84(a2 + 24, v34, &qword_DF4F58, &unk_B0EB60);
    v32 = v24;
    v33 = v25;

    dispatch_group_enter(a3);
    v26 = swift_allocObject();
    v26[2] = a3;
    v26[3] = v13;
    v26[4] = v12;
    v26[5] = v14 & 0x7FFFFFFFFFFFFFFFLL;
    v26[6] = a4;
    v26[7] = a5;
    v27 = v35;
    v26[8] = a6;
    v26[9] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_48A6EC;
    *(v28 + 24) = v26;
    v29 = a3;

    sub_4C1ADC(sub_48A704, v28, v31);
    sub_12E1C(v31, &unk_DF7968, &qword_B03810);
    sub_48A710(&v32);
    goto LABEL_9;
  }

LABEL_10:
}

double sub_47DB60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t, __n128), __n128 a5)
{
  type metadata accessor for BindingRequestResponseInvalidation();
  LOBYTE(v42) = 1;
  sub_35BCD8();
  v8 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0, 0, &v42, &_s9SearchKeyON);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v44 = &type metadata for UserDefaultsKeyValueTrigger;
  v45 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v15 = swift_allocObject();
  v42 = v15;
  v15[2] = v8;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v14;
  v16 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v42);
  v17 = sub_485F14(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v16, v17);

  v18 = objc_opt_self();
  v19 = MPMediaLibraryDidChangeNotification;
  v20 = [v18 deviceMediaLibrary];
  UIScreen.Dimensions.size.getter();
  v44 = &type metadata for NotificationTrigger;
  v45 = &protocol witness table for NotificationTrigger;
  v42 = v21;
  v43 = v22;
  v23 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v42);
  CompoundRequestResponseInvalidation.append(_:)(v23, v17);

  v24 = MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification;
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 sharedRestrictionsMonitor];
  UIScreen.Dimensions.size.getter();
  v44 = &type metadata for NotificationTrigger;
  v45 = &protocol witness table for NotificationTrigger;
  v42 = v28;
  v43 = v29;
  v30 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v42);
  CompoundRequestResponseInvalidation.append(_:)(v30, v17);

  swift_beginAccess();
  v41[0] = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  sub_483D2C(v41);

  v31 = *(v41[0] + 16);
  v32 = v31 >= 0x14;
  v33 = v31 - 20;
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  sub_4850DC(v34, v41[0]);
  v36 = v35;
  swift_beginAccess();
  v37 = *(a3 + 16);
  v38 = sub_485F14(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);

  (a4)(v36, v37, 0, a1, v38);

  return result;
}

uint64_t sub_47DE80()
{
  v0 = qword_E09260;

  return v0;
}

double sub_47DEB8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_47953C(sub_1D2A44, v6, a3);

  return result;
}

Swift::Int sub_47DF54()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_47DFC8(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

void sub_47E01C(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF1A18;
  v6._object = v3;
  v5 = sub_ABB140(v4, v6);

  *a2 = v5 != 0;
}

uint64_t sub_47E090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000018;
  }

  if (v2)
  {
    v4 = "ary";
  }

  else
  {
    v4 = "lastSelectedSearchSource";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (*a2)
  {
    v7 = "lastSelectedSearchSource";
  }

  else
  {
    v7 = "ary";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

Swift::Int sub_47E13C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_47E1BC(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_47E228(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_47E2B0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "lastSelectedSearchSource";
  }

  else
  {
    v3 = "ary";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_47E2F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];

  if (sub_48C0F0(v6, v5) == 2)
  {
    *a2 = xmmword_B10830;
  }

  else
  {
    sub_AB2B00();
    swift_allocObject();
    sub_AB2AF0();
    sub_483B90();
    v7 = sub_AB2AE0();
    v9 = v8;

    if (!v3)
    {
      *a2 = v7;
      *(a2 + 8) = v9;
    }
  }
}

double (*NSUserDefaults.lastSelectedSearchSource.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = NSUserDefaults.lastSelectedSearchSource.getter();
  return sub_47E40C;
}

void sub_47E434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Search.Recents.Item(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v71 = sub_ABA9C0();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v13 = &v68 - v12;
  v86 = v11;
  v14 = *(v11 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  __chkstk_darwin();
  v85 = &v68 - v19;
  __chkstk_darwin();
  v21 = &v68 - v20;
  v22 = v87;
  v23 = sub_47CEB8(a2, a3, a4);
  if (v22)
  {
    return;
  }

  v81 = v21;
  v78 = v16;
  v79 = v18;
  v72 = v13;
  v87 = 0;
  v69 = a2;
  v76 = a3;
  v77 = a4;
  v92 = v23;
  v24 = v82;
  v26 = v82 + 56;
  v25 = *(v82 + 56);
  v27 = 1 << *(v82 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v14;
  v80 = v14;
  v30 = v28 & v25;
  v31 = (v27 + 63) >> 6;
  v73 = v29 + 16;
  v83 = (v29 + 32);
  v84 = (v29 + 8);

  v32 = 0;
  v33 = v85;
  v34 = v86;
  v74 = v31;
  for (i = v26; ; v26 = i)
  {
    v35 = v81;
    if (!v30)
    {
      break;
    }

    v36 = v32;
    v37 = v80;
LABEL_13:
    v38 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    (*(v37 + 16))(v81, *(v24 + 48) + *(v37 + 72) * (v38 | (v36 << 6)), v34);
    (*(v37 + 32))(v33, v35, v34);
    v88 = v92;
    __chkstk_darwin();
    v39 = v77;
    *(&v68 - 4) = v76;
    *(&v68 - 3) = v39;
    *(&v68 - 2) = v33;

    swift_getWitnessTable();
    sub_AB9BF0();
    swift_getWitnessTable();
    v40 = v87;
    sub_AB9CC0();
    v87 = v40;

    v41 = v91;
    if (v91 == 255)
    {
      v33 = v85;
      v34 = v86;
      (*v84)(v85, v86);
      v32 = v36;
    }

    else
    {
      v42 = v89;
      v43 = v90;
      v44 = v79;
      sub_AB9BB0();
      v45 = *v84;
      v46 = v44;
      v24 = v82;
      v47 = v86;
      (*v84)(v46, v86);
      v48 = sub_F01A0(v42, v43, v41);
      v49 = v85;
      (v45)(v85, v47, v48);
      v32 = v36;
      v34 = v47;
      v33 = v49;
    }

    v31 = v74;
  }

  v37 = v80;
  while (1)
  {
    v36 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    if (v36 >= v31)
    {
      break;
    }

    v30 = *(v26 + 8 * v36);
    ++v32;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  v89 = v24;

  WitnessTable = swift_getWitnessTable();
  v51 = sub_AB9BF0();
  swift_getWitnessTable();
  sub_AB9BE0();
  v52 = v92;
  if (sub_AB9B90() < 21)
  {
    v65 = v76;
    v66 = v77;
    v67 = v69;
LABEL_25:
    sub_47ED9C(v52, v67, v65, v66);

    return;
  }

  v88 = v52;
  swift_getWitnessTable();
  v89 = sub_AB96A0();
  v52 = v92;
  if (sub_AB9B90() < 21)
  {
LABEL_24:

    v65 = v76;
    v66 = v77;
    v67 = v69;
    goto LABEL_25;
  }

  v82 = v51;
  v85 = (v37 + 48);
  v81 = sub_AB9870();
  while (1)
  {
    v88 = v89;

    swift_getWitnessTable();
    v53 = v72;
    sub_AB9CF0();
    if ((*v85)(v53, 1, v34) == 1)
    {

      (*(v70 + 8))(v53, v71);
      goto LABEL_24;
    }

    v54 = v78;
    (*v83)(v78, v53, v34);

    v55 = sub_AB9B50();
    if (v57 == -1)
    {
      break;
    }

    v58 = v55;
    v59 = v56;
    v60 = v57;
    swift_getWitnessTable();
    v61 = WitnessTable;
    v62 = v79;
    sub_AB9DA0();
    v63 = *v84;
    (*v84)(v62, v34);
    sub_AB9BB0();
    v64 = v62;
    WitnessTable = v61;
    v63(v64, v34);
    v63(v78, v34);
    sub_F01A0(v58, v59, v60);
    v52 = v92;
    if (sub_AB9B90() <= 20)
    {
      goto LABEL_24;
    }
  }

  (*v84)(v54, v34);
}

id sub_47EC80(id *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Search.Recents.Item(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  if (sub_AB91C0())
  {
    return [*a1 intersectsSet:*a2];
  }

  else
  {
    return 0;
  }
}

void sub_47ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  *&v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Search.Recents.Item(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  swift_getWitnessTable();
  sub_AB9BF0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_AB2AE0();
  v13 = v12;

  if (!v4)
  {
    LOBYTE(v23) = 1;
    v14 = sub_35BCD8();
    v15 = sub_36A48();
    NSUserDefaults.subscript.getter(&v24);
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
      if (swift_dynamicCast())
      {
        v16 = v23;
LABEL_7:
        v17 = (*(*(a4 + 8) + 16))(a3);
        v19 = v18;
        sub_90090(v11, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v24 = v16;
        sub_94300(v11, v13, v17, v19, isUniquelyReferenced_nonNull_native);

        v21 = v24;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
        *&v24 = v21;
        LOBYTE(v23) = 1;
        NSUserDefaults.subscript.setter(&v24, &v23, &_s9SearchKeyON, v14, v15, v22);
        sub_466B8(v11, v13);
        return;
      }
    }

    else
    {
      sub_12E1C(&v24, &unk_DE8E40, &unk_AF8050);
    }

    v16 = sub_98EDC(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }
}

id sub_47F0B8()
{
  result = sub_47F0D8();
  qword_E719D0 = result;
  return result;
}

id sub_47F0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AFFB00;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  if (qword_DE6CF0 != -1)
  {
    swift_once();
  }

  v2 = qword_E719E0;
  *(inited + 48) = qword_E719E0;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  v4 = qword_DE6CE8;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E719D8;
  *(inited + 72) = qword_E719D8;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v7;
  v8 = qword_DE6D10;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E71A00;
  *(inited + 96) = qword_E71A00;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v11;
  v12 = qword_DE6D00;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_E719F0;
  *(inited + 120) = qword_E719F0;
  *(inited + 128) = sub_AB92A0();
  *(inited + 136) = v15;
  v16 = qword_DE6D18;
  v17 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_E71A08;
  *(inited + 144) = qword_E71A08;
  *(inited + 152) = sub_AB92A0();
  *(inited + 160) = v19;
  v20 = qword_DE6D20;
  v21 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_E71A10;
  *(inited + 168) = qword_E71A10;
  *(inited + 176) = sub_AB92A0();
  *(inited + 184) = v23;
  v24 = qword_DE6D28;
  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_E71A18;
  *(inited + 192) = qword_E71A18;
  v27 = v26;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MPPropertySet);
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  isa = sub_AB8FD0().super.isa;

  v30 = [v28 initWithProperties:0 relationships:isa];

  return v30;
}

id sub_47F438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  if (qword_DE6D08 != -1)
  {
    swift_once();
  }

  v2 = qword_E719F8;
  *(inited + 48) = qword_E719F8;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v3;
  v4 = qword_DE6D38;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E71A28;
  *(inited + 72) = qword_E71A28;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v7;
  v8 = qword_DE6D30;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E71A20;
  *(inited + 96) = qword_E71A20;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v11;
  v12 = qword_DE6D40;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_E71A30;
  *(inited + 120) = qword_E71A30;
  v15 = v14;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MPPropertySet);
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  isa = sub_AB8FD0().super.isa;

  v18 = [v16 initWithProperties:0 relationships:isa];

  if (qword_DE6CE0 != -1)
  {
    swift_once();
  }

  v19 = [v18 propertySetByCombiningWithPropertySet:qword_E719D0];

  return v19;
}

id sub_47F6EC()
{
  result = sub_47F70C();
  qword_E719D8 = result;
  return result;
}

id sub_47F70C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85E0;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF4EC0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = sub_AB9740().super.isa;
  v21 = [v15 propertySetWithProperties:v20];

  *(inited + 72) = v21;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MPPropertySet);
  v23 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v24 = sub_AB8FD0().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  v26 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v27 = sub_2BAFF8(v26);
  v28 = [v25 propertySetByCombiningWithPropertySet:v27];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v31 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v32 = [v30 propertySetByCombiningWithPropertySet:v31];

  v33 = [v28 propertySetByCombiningWithPropertySet:v32];
  v34 = sub_10F414(v26);
  v35 = [v33 propertySetByCombiningWithPropertySet:v34];

  return v35;
}

id sub_47FB58()
{
  result = sub_47FB78();
  qword_E719E0 = result;
  return result;
}

id sub_47FB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = [objc_opt_self() propertySetWithProperties:isa];

  v7 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v10 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v11 = [v9 propertySetByCombiningWithPropertySet:v10];

  v12 = [v6 propertySetByCombiningWithPropertySet:v11];
  v13 = sub_10F414(v7);
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  return v14;
}

id sub_47FD44()
{
  result = sub_47FD64();
  qword_E719E8 = result;
  return result;
}

id sub_47FD64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  isa = sub_AB9740().super.isa;
  v3 = [objc_opt_self() propertySetWithProperties:isa];

  v4 = sub_13C80(0, &qword_E09A48, MPModelComposer_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v7 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v8 = [v6 propertySetByCombiningWithPropertySet:v7];

  v9 = [v3 propertySetByCombiningWithPropertySet:v8];
  v10 = sub_10F414(v4);
  v11 = [v9 propertySetByCombiningWithPropertySet:v10];

  return v11;
}