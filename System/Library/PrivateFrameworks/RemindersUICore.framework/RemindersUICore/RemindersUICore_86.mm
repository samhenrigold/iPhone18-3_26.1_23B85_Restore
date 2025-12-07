Swift::Bool __swiftcall TTRIHashtagWrappingCollectionView.isLayoutSizeDependentOnPerpendicularAxis()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v1)
  {
    LOBYTE(v1) = [v1 isLayoutSizeDependentOnPerpendicularAxis];
  }

  else
  {
    __break(1u);
  }

  return v1;
}

id TTRIHashtagWrappingCollectionView._layoutSizeThatFits(_:fixedAxes:)(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v8, sel__layoutSizeThatFits_fixedAxes_, a1, a2, a3);
}

void *TTRIHashtagWrappingCollectionView.allHashtagButtons()()
{
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (result)
  {
    v2 = [result subviews];
    sub_21D114EC8();
    v3 = sub_21DBFA5EC();

    if (v3 >> 62)
    {
LABEL_22:
      v4 = sub_21DBFBD7C();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x223D44740](v7, v3);
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            type metadata accessor for TTRIHashtagButton();
            v10 = swift_dynamicCastClass();
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_24;
            }
          }

          v11 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_21D215058(0, v6[2] + 1, 1, v6);
          }

          v13 = v6[2];
          v12 = v6[3];
          if (v13 >= v12 >> 1)
          {
            v6 = sub_21D215058((v12 > 1), v13 + 1, 1, v6);
          }

          v6[2] = v13 + 1;
          v14 = &v6[2 * v13];
          v14[4] = v11;
          v14[5] = &protocol witness table for TTRIHashtagButton;
        }

        while (v5 != v4);
        goto LABEL_24;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_24:

    return v6;
  }

  __break(1u);
  return result;
}

void sub_21D8F2104()
{
  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v8 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (!v9)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = *(v1 + v7);
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v11 = [v9 arrangedSubviews];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v11;
    sub_21D114EC8();
    v14 = sub_21DBFA5EC();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_21D8F550C(v14);

  v39 = v12;
  v40 = sub_21D8F5700(v15);
  if (__OFADD__(*(v3 + 16), 2))
  {
    goto LABEL_32;
  }

  v16 = sub_21DB5D558();
  if ((v10 & 1) == 0)
  {
    sub_21D8F5854(&v40, v17);
    MEMORY[0x223D42D80]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v16 = sub_21DBFA6CC();
  }

  v35 = v8;
  if (!v6)
  {
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v16);
  v34[2] = 1;
  sub_21D8F7000(&v40, sub_21D8F9214, v34);
  if (!v18)
  {
    sub_21D8F5970(v5, v6, 0, 1, &v40);
  }

  MEMORY[0x223D42D80]();
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    sub_21DBFA6CC();
LABEL_16:
    v36 = v6;
    v6 = *(v3 + 16);
    if (!v6)
    {
      break;
    }

    v19 = 0;
    v20 = (v3 + 40);
    while (v19 < *(v3 + 16))
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      sub_21DBF8E0C();
      v37 = sub_21DBFA23C();
      v38 = v23;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v22, v21);

      sub_21D8F5970(v37, v38, v19, 0, &v40);

      MEMORY[0x223D42D80](v24);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      ++v19;
      sub_21DBFA6CC();
      v20 += 2;
      if (v6 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_21DBFA63C();
  }

LABEL_22:

  _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC22updateArrangedSubviews_08arrangedI16RequiringNewRows17hashTagButtonFontySaySo6UIViewCG_ShyAHGSo6UIFontCSgtF_0(v39, MEMORY[0x277D84FA0]);

  v25 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusGuide);
  if (!v25)
  {
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63A80, &qword_21DC30C38);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21DC08D00;
  v27 = *(v1 + v35);
  if (v27)
  {
    v28 = v26;
    v29 = v25;
    v30 = [v27 arrangedSubviews];
    if (!v30)
    {
LABEL_36:
      *(v28 + 32) = v30;
      v37 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63A88, &qword_21DC30C40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63A90, &qword_21DC30C48);
      sub_21D0D0F1C(&qword_27CE63A98, &qword_27CE63A88, &qword_21DC30C40, MEMORY[0x277D83970]);
      sub_21DBFA41C();

      v33 = sub_21DBFA5DC();

      [v29 setPreferredFocusEnvironments_];

      return;
    }

    sub_21D114EC8();
    v31 = sub_21DBFA5EC();

    if (v31 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        goto LABEL_27;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x223D44740](0, v31);
        goto LABEL_30;
      }

      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v31 + 32);
LABEL_30:
        v30 = v32;

        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_39;
    }

    v30 = 0;
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
}

void sub_21D8F2684(uint64_t a1)
{
  v3 = sub_21DBF5B9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  MEMORY[0x28223BE20](v9);
  v66 = &v55 - v10;
  v67 = sub_21DBF6C1C();
  v11 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator);
  if (!v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v17)
  {
    v59 = *a1;
    v61 = *(a1 + 8);

    v18 = [v17 arrangedSubviews];
    v63 = v15;
    v62 = v16;
    v60 = v3;
    v64 = v4;
    if (v18)
    {
      v19 = v18;
      sub_21D114EC8();
      v20 = sub_21DBFA5EC();
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
    swift_beginAccess();
    v22 = *(v1 + v21);
    v23 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
    swift_beginAccess();
    v58 = v11;
    v24 = *(v11 + 16);
    v25 = v1 + v23;
    v26 = v63;
    v27 = v67;
    v24(v63, v25, v67);
    v28 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState;
    v29 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState);
    v30 = *(v28 + 8);
    v57 = v29;
    if (v30 == 1)
    {
      v31 = v65;
      v24(v65, v26, v27);
      sub_21DBF8E0C();
    }

    else
    {
      sub_21DBF8E0C();
      sub_21D59B9BC(v29, v30);
      v31 = v65;
      sub_21DBF6BCC();
    }

    v32 = v64;
    v33 = sub_21D8F5C98(v66, v8, v20, v22, v31);

    v56 = v30;
    if (v61)
    {
      if (v33 >> 62)
      {
        v34 = sub_21DBFBD7C();
        if (v34)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
LABEL_12:
          if (v34 >= 1)
          {
            for (i = 0; i != v34; ++i)
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                v36 = MEMORY[0x223D44740](i, v33);
              }

              else
              {
                v36 = *(v33 + 8 * i + 32);
              }

              v37 = v36;
              [v36 tag];
              v38 = sub_21DBF5B2C();
              v39 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
              swift_beginAccess();
              v40 = v37[v39];
              v37[v39] = v38 & 1;
              if ((v38 & 1) != v40)
              {
                [v37 setNeedsUpdateConfiguration];
              }
            }

            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_25;
        }
      }
    }

    else
    {
      v41 = v59;
      v42 = objc_opt_self();
      v43 = v55;
      v44 = v60;
      (*(v32 + 16))(v55, v8, v60);
      v45 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v46 = (v5 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      *(v47 + 16) = v33;
      (*(v32 + 32))(v47 + v45, v43, v44);
      v48 = (v47 + v46);
      *v48 = sub_21D8A967C;
      v48[1] = 0;
      aBlock[4] = sub_21D8AA238;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_111;
      v49 = _Block_copy(aBlock);
      sub_21DBF8E0C();

      [v42 animateWithDuration:v49 animations:v41];
      _Block_release(v49);
    }

LABEL_21:
    v68 = v59;
    v69 = v61;
    v50 = v66;
    TTRIHashtagCollectionViewAdaptor.updateSelected(for:selectedViewTags:animation:)(v33, v66, &v68);
    sub_21D59B93C(v57, v56);

    v51 = *(v64 + 8);
    v52 = v60;
    v51(v8, v60);
    v51(v50, v52);
    v53 = *(v58 + 8);
    v54 = v67;
    v53(v65, v67);
    v53(v63, v54);

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_21D8F2CF0()
{
  v22 = sub_21DBF6C1C();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21DBF5B9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  v12 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v21 = *(v0 + v11);

  v13 = [v12 arrangedSubviews];
  if (v13)
  {
    v14 = v13;
    sub_21D114EC8();
    v15 = sub_21DBFA5EC();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v17 = *(v0 + v16);
  sub_21DBF8E0C();
  sub_21DBF6BCC();
  v18 = sub_21D8F5C98(v10, v7, v15, v17, v3);

  (*(v1 + 8))(v3, v22);
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC13updateEnabled_3forySb_SayAA0C6ButtonCGtF_0(v21, v18);
}

void sub_21D8F3088(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
    __break(1u);
    return;
  }

  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v14 = *(v4 + 16);
  v32 = v13;
  v33 = v14;
  v14(v9, (v1 + v13), v3);
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  swift_beginAccess();
  v31 = *(v1 + v17);
  v18 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  v19 = *(v1 + v18);
  sub_21D0D3954(v34, v36, &qword_27CE5C690, &unk_21DC11AB0);
  if (!v37)
  {
    sub_21D0CF7E0(v36, &qword_27CE5C690, &unk_21DC11AB0);
LABEL_14:
    (*(v4 + 32))(v12, v9, v3);
    goto LABEL_15;
  }

  LODWORD(v34) = v19;
  type metadata accessor for TTRIHashtagButton();

  sub_21DBF8E0C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v20 = v35;
  v21 = [v35 tag];
  if (v21 == 1)
  {
    v22 = 0;
    goto LABEL_9;
  }

  if (v21 != 2)
  {
    if (v21 > 9)
    {
      v23 = 0;
      v22 = v21 - 10;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v22 = 1;
LABEL_9:
  v23 = 1;
LABEL_10:
  sub_21D8F66B0(v9, v22, v23, v16, v31, v34, v12);

  (*(v4 + 8))(v9, v3);
LABEL_15:
  v24 = v33;
  v33(v6, (v1 + v32), v3);
  sub_21D8F91CC(&qword_27CE63930, MEMORY[0x277D453A0], MEMORY[0x277D453B0]);
  v25 = sub_21DBFA10C();
  v26 = *(v4 + 8);
  v26(v6, v3);
  if ((v25 & 1) == 0)
  {
    v24(v6, v12, v3);
    TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(v6, 0);
    v26(v6, v3);
    v27 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      ObjectType = swift_getObjectType();
      (*(v28 + 8))(v2, v12, ObjectType, v28);
      swift_unknownObjectRelease();
    }
  }

  v26(v12, v3);
}

void sub_21D8F354C(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer;
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer))
    {
      v5 = *(v3 + 8);
      [a1 locationInView_];
      v8 = *(v1 + v4);
      if (v8)
      {
        v9 = v6;
        v10 = v7;
        v25 = v5;
        v11 = [v8 visibleArrangedSubviews];
        if (v11)
        {
          sub_21D114EC8();
          v12 = sub_21DBFA5EC();

          if (v12 >> 62)
          {
            goto LABEL_19;
          }

          for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
          {
            v14 = 0;
            while (1)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x223D44740](v14, v12);
              }

              else
              {
                if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_18;
                }

                v15 = *(v12 + 8 * v14 + 32);
              }

              v11 = v15;
              v16 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              [v15 convertPoint:*(v1 + v4) fromView:{v9, v10}];
              if ([v11 pointInside:0 withEvent:?])
              {

                goto LABEL_21;
              }

              ++v14;
              if (v16 == i)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            ;
          }

LABEL_20:

          v11 = 0;
        }

LABEL_21:
        if (*(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
        {
          v17 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
          swift_beginAccess();
          v18 = *(v1 + v17);

          sub_21DBF8E0C();
          v19 = sub_21D8F7BB0(v11, v18);
          v21 = v20;

          if (v21)
          {
            ObjectType = swift_getObjectType();
            v23 = *(v25 + 40);
            sub_21DBF8E0C();
            v24 = v23(v1, a1, v19, v21, ObjectType, v25);
            swift_unknownObjectRelease();

            if ((v24 & 1) == 0)
            {
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

LABEL_30:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }
}

void sub_21D8F381C(uint64_t *a1)
{
  v3 = sub_21DBF5B9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v37 - v7;
  v43 = sub_21DBF6C1C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState];
  v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState];
  v13 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState + 8];
  *v12 = v10;
  v12[1] = v11;
  sub_21D59B9BC(v14, v13);
  sub_21D59B9BC(v10, v11);
  v15 = sub_21D59B93C(v14, v13);
  if (v13 == 1)
  {
    if (v11 == 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v11 == 1)
  {
LABEL_5:
    v16 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v17 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v17 | 2;
    v38 = v4;
    v39 = v3;
    if ((v17 | 2) == v17)
    {
      goto LABEL_9;
    }

    [v1 setNeedsLayout];
    v17 = *&v1[v16];
    if (v17)
    {
      [v1 invalidateIntrinsicContentSize];
      v17 = *&v1[v16];
    }

    if (v17)
    {
LABEL_9:
      *&v1[v16] = 0;
      if (v17)
      {
        sub_21D8F2104();
      }

      if ((v17 & 3) != 0)
      {
        v46 = 0x3FC999999999999ALL;
        v47 = 0;
        sub_21D8F2684(&v46);
      }

      if ((v17 & 5) != 0)
      {
        sub_21D8F2CF0();
      }
    }

    v18 = 1;
LABEL_26:
    if (*&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator])
    {
      v22 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer];
      if (v22)
      {
        v23 = v22;

        v24 = [v23 arrangedSubviews];

        if (v24)
        {
          sub_21D114EC8();
          v25 = sub_21DBFA5EC();
        }

        else
        {
          v25 = MEMORY[0x277D84F90];
        }

        v26 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
        swift_beginAccess();
        v27 = *&v1[v26];
        v28 = 0x3FC999999999999ALL;
        if (!v18)
        {
          v28 = 0;
        }

        v37 = v28;
        v29 = v18 ^ 1;
        if (v11 >= 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21DC08D00;
          *(inited + 32) = v10;
          *(inited + 40) = v11;
          sub_21D59B9BC(v10, v11);
          sub_21DBF8E0C();
          sub_21D1CDB50(inited);
          swift_setDeallocating();
          sub_21D6C9C70(inited + 32);
          v30 = v9;
          sub_21DBF6BDC();
        }

        else
        {
          sub_21DBF8E0C();
          v30 = v9;
          sub_21DBF6BCC();
        }

        v32 = v42;
        v33 = v40;
        v34 = sub_21D8F5C98(v42, v40, v25, v27, v30);

        v35 = v39;
        v36 = *(v38 + 8);
        v36(v33, v39);
        v44 = v37;
        v45 = v29;
        _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC17updateHighlighted3for011highlightedE4Tags9animationySayAA0C6ButtonCG_10Foundation8IndexSetVAA010TTRHashtagdE15AnimationParamsOtF_0(v34, v32, &v44);

        v36(v32, v35);
        (*(v41 + 8))(v30, v43);

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

  if (!v13)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_25:
    v38 = v4;
    v39 = v3;
    v18 = 0;
    goto LABEL_26;
  }

  if (!v11)
  {
    goto LABEL_25;
  }

  if (v14 == v10 && v13 == v11)
  {
    v20 = v10;
    v21 = v11;
    goto LABEL_38;
  }

  if ((sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  v20 = v14;
  v21 = v13;
LABEL_38:

  sub_21D59B93C(v20, v21);
}

id TTRIHashtagWrappingCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D8F3E3C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D8F3E80()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  swift_beginAccess();
  return *(v0 + v1);
}

void *TTRIHashtagWrappingCollectionView.accessibilityActions(for:)(void *a1)
{
  type metadata accessor for TTRIHashtagButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
    {
      v4 = result;
      v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
      swift_beginAccess();
      v6 = *(v1 + v5);

      v7 = a1;
      sub_21DBF8E0C();
      v8 = sub_21D8F7BB0(v4, v6);
      v10 = v9;

      if (v10)
      {
        v11 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          v18 = 1;
          *v17 = v4;
          memset(&v17[8], 0, 32);
          v17[40] = 1;
          *&v17[48] = 0;
          v17[56] = 1;
          v14 = *(v12 + 64);
          v15 = v7;
          v16 = v14(v1, v8, v10, v17, ObjectType, v12);

          swift_unknownObjectRelease();
          v19[0] = *v17;
          v19[1] = *&v17[16];
          v20[0] = *&v17[32];
          *(v20 + 9) = *&v17[41];
          sub_21D1A9430(v19);
          return v16;
        }
      }

      else
      {
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall TTRIHashtagWrappingCollectionView.containerViewDidLayoutArrangedSubviews(_:)(NUIContainerView *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
    if (v4)
    {
      if (v4 == a1)
      {
        v5 = *(v3 + 8);
        v6 = v4 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult;
        swift_beginAccess();
        if (v6[16] != 1)
        {
          v7 = *v6;
          v8 = *(v6 + 1);
          v9 = v4 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
          swift_beginAccess();
          if ((v9[8] & 1) == 0 && v7 >= 1 && *v9 == 0)
          {
            v11 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState;
            swift_beginAccess();
            if (*(v11 + 8))
            {
              if (__OFSUB__(v8--, 1))
              {
                __break(1u);
                return;
              }
            }
          }

          ObjectType = swift_getObjectType();
          v14[0] = v7;
          v14[1] = v8;
          (*(v5 + 24))(v1, v14, ObjectType, v5);
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t TTRIHashtagWrappingCollectionView.dropInteraction(_:canHandle:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 32))(v2, a2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void TTRIHashtagWrappingCollectionView.dropInteraction(_:sessionDidEnter:)()
{
  v0[0] = 0;
  v0[1] = 0;
  sub_21D8F381C(v0);
}

id TTRIHashtagWrappingCollectionView.dropInteraction(_:sessionDidUpdate:)(uint64_t a1, void *a2)
{
  sub_21D8F354C(a2);
  v3 = v2;
  v7 = v4;
  v8 = v2;
  sub_21DBF8E0C();
  sub_21D8F381C(&v7);
  sub_21D59B93C(v7, v8);
  if (v3)
  {

    v3 = 2;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D754A8]);

  return [v5 initWithDropOperation_];
}

UITargetedDragPreview_optional __swiftcall TTRIHashtagWrappingCollectionView.dropInteraction(_:previewForDropping:withDefault:)(UIDropInteraction _, UIDragItem previewForDropping, UITargetedDragPreview withDefault)
{
  v3 = sub_21D8F8768(withDefault.super.super.isa);
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

double TTRIHashtagWrappingCollectionView.dropInteraction(_:sessionDidEnd:)()
{
  v5 = xmmword_21DC19C40;
  sub_21D8F381C(&v5);
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState);
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState + 8);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState) = xmmword_21DC19C40;
  sub_21D59B93C(v1, v2);
  v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop);
  *v3 = 0;
  v3[1] = 0;

  return result;
}

UITargetedPreview_optional __swiftcall TTRIHashtagWrappingCollectionView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(UIContextMenuInteraction _, UIContextMenuConfiguration previewForHighlightingMenuWithConfiguration)
{
  v2 = sub_21D8F8D84();
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_21D8F48C8()
{
  if (qword_27CE56E48 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27CE638E0))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }
}

UITargetedPreview_optional __swiftcall TTRIHashtagWrappingCollectionView.contextMenuInteraction(_:previewForDismissingMenuWithConfiguration:)(UIContextMenuInteraction _, UIContextMenuConfiguration previewForDismissingMenuWithConfiguration)
{
  v2 = sub_21D8F8D84();
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t TTRIHashtagWrappingCollectionView.hashtagButtonCanBecomeFocused(_:)()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRIHashtagWrappingCollectionView.hashtagButtonDidBecomeFocused(_:)(void *a1)
{
  v2 = v1;
  v73 = sub_21DBF6C0C();
  v72 = *(v73 - 1);
  MEMORY[0x28223BE20](v73);
  v71 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF6C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v64 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v64 - v13;
  MEMORY[0x28223BE20](v15);
  v74 = v64 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v64 - v21;
  v23 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  if (*(v2 + v23) != 1)
  {
    return;
  }

  v70 = v22;
  if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_21DBF6BCC();
  v77[3] = type metadata accessor for TTRIHashtagButton();
  v77[0] = a1;
  v24 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v25 = *(v2 + v24);
  sub_21D0D3954(v77, v76, &qword_27CE5C690, &unk_21DC11AB0);
  if (!v76[3])
  {
    v34 = a1;
    sub_21D0CF7E0(v76, &qword_27CE5C690, &unk_21DC11AB0);
    v33 = v19;
    v29 = v70;
    goto LABEL_15;
  }

  v26 = a1;
  sub_21DBF8E0C();
  v27 = swift_dynamicCast();
  v28 = v25;
  v29 = v70;
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

  v30 = v75;
  v31 = [v75 tag];
  if (v31 == 1)
  {
    (*(v6 + 16))(v14, v19, v5);
    v35 = (*(v6 + 88))(v14, v5);
    if (v35 == *MEMORY[0x277D45378])
    {

      (*(v6 + 8))(v19, v5);
      (*(v6 + 96))(v14, v5);

      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
      v37 = v74;
      (*(v6 + 104))(v74, *MEMORY[0x277D45398], v5);
      (*(v72 + 8))(&v14[v36], v73);
LABEL_11:
      v33 = v37;
      goto LABEL_15;
    }

    v44 = v74;
    if (v35 == *MEMORY[0x277D45398] || v35 == *MEMORY[0x277D45380])
    {

      sub_21DBF6BCC();

LABEL_23:
      (*(v6 + 8))(v19, v5);
      v33 = v44;
      goto LABEL_15;
    }

LABEL_35:
    sub_21DBFC63C();
    __break(1u);
    return;
  }

  if (v31 != 2)
  {
    if (v31 > 9 && v31 - 10 < *(v28 + 16))
    {
      v45 = v28 + 16 * (v31 - 10);
      v47 = *(v45 + 32);
      v46 = *(v45 + 40);
      v68 = v47;
      v69 = v46;
      (*(v6 + 16))(v11, v19, v5);
      v48 = (*(v6 + 88))(v11, v5);
      v49 = v48;
      if (v48 == *MEMORY[0x277D45378])
      {
        v67 = v48;
        (*(v6 + 96))(v11, v5);
        v50 = *v11;
        v66 = *(v11 + 1);
        sub_21DBF8E0C();

        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830);
        v51 = *(v65 + 64);
        v75 = v50;
        v52 = *(v72 + 16);
        v66 = v51;
        v52(v71, &v11[v51], v73);
        v64[1] = v50;
        v53 = sub_21D1E1CE8(v68, v69, v50);
        v64[2] = v28;
        if (v53)
        {
          sub_21D1AAFC8(v68, v69);

          v54 = sub_21D8F78E8(v75, v28);

          v75 = v54;
        }

        else
        {
          v64[0] = v64;
          MEMORY[0x28223BE20](v53);
          v64[-2] = v28;
          v59 = sub_21DBF8E0C();
          v60 = sub_21D8F747C(v59, sub_21D8F6690);

          v29 = v70;
          v75 = v60;
          sub_21D29B8E4(v76, v68, v69);

          v54 = v75;
        }

        v61 = *(v65 + 64);
        v37 = v74;
        *v74 = v54;
        (*(v6 + 8))(v19, v5);
        *(v37 + 1) = MEMORY[0x277D84FA0];
        v62 = v72;
        v63 = v73;
        (*(v72 + 32))(&v37[v61], v71, v73);
        (*(v6 + 104))(v37, v67, v5);
        (*(v62 + 8))(&v11[v66], v63);
        goto LABEL_11;
      }

      v73 = v30;
      v55 = *MEMORY[0x277D45398];
      v56 = v69;
      sub_21DBF8E0C();
      if (v49 == v55 || v49 == *MEMORY[0x277D45380])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        *(inited + 32) = v68;
        v58 = inited + 32;
        *(inited + 40) = v56;
        sub_21D1CDB50(inited);
        swift_setDeallocating();
        sub_21D6C9C70(v58);
        v44 = v74;
        sub_21DBF6BDC();

        goto LABEL_23;
      }

      goto LABEL_35;
    }

LABEL_14:

    v33 = v19;
    goto LABEL_15;
  }

  v32 = v74;
  (*(v6 + 32))(v74, v19, v5);
  v33 = v32;
LABEL_15:
  (*(v6 + 32))(v29, v33, v5);
  sub_21D0CF7E0(v77, &qword_27CE5C690, &unk_21DC11AB0);
  v38 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v39 = *(v6 + 16);
  v39(v8, v2 + v38, v5);
  sub_21D8F91CC(&qword_27CE63930, MEMORY[0x277D453A0], MEMORY[0x277D453B0]);
  LOBYTE(v38) = sub_21DBFA10C();
  v40 = *(v6 + 8);
  v40(v8, v5);
  if ((v38 & 1) == 0)
  {
    v39(v8, v29, v5);
    TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(v8, 0);
    v40(v8, v5);
    v41 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      (*(v42 + 8))(v2, v29, ObjectType, v42);
      swift_unknownObjectRelease();
    }
  }

  v40(v29, v5);
}

uint64_t sub_21D8F5498()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_21D8F54E0()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE638E0 = result;
  return result;
}

unint64_t sub_21D8F550C(unint64_t result)
{
  v1 = result;
  v9 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_21DBFBD7C();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        MEMORY[0x223D44740](v3, v1);
        type metadata accessor for TTRIHashtagButton();
        if (swift_dynamicCastClass())
        {
          v5 = swift_unknownObjectRetain();
          MEMORY[0x223D42D80](v5);
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          swift_unknownObjectRelease();
          v4 = v9;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v3;
      }

      while (v2 != v3);
    }

    else
    {
      v6 = (v1 + 32);
      type metadata accessor for TTRIHashtagButton();
      v4 = MEMORY[0x277D84F90];
      do
      {
        v7 = *v6;
        if (swift_dynamicCastClass())
        {
          v8 = v7;
          MEMORY[0x223D42D80]();
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v4 = v9;
        }

        ++v6;
        --v2;
      }

      while (v2);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D8F5700(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_21DBFBD7C();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        MEMORY[0x223D44740]();
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = 32;
      do
      {
        v7 = *(a1 + v6);
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v6 += 8;
        --v2;
      }

      while (v2);
    }

    return v8;
  }

  return result;
}

void sub_21D8F5854(uint64_t *a1, __n128 a2)
{
  v10[2] = 2;
  sub_21D8F7000(a1, sub_21D8F9284, v10);
  if (!v4)
  {
    sub_21D8F7000(a1, sub_21D19DA18, 0);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = sub_21D8A918C(*(v2 + 32));
      v5 = 0;
    }

    v7 = v5;
    [v6 setTag_];
    *&v6[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = &protocol witness table for TTRHashtagCollectionViewPopulator<A>;
    swift_unknownObjectWeakAssign();
    v8 = v6;
    v9 = sub_21DBFA12C();
    [v8 setAccessibilityIdentifier_];
  }
}

void sub_21D8F5970(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v29 = a1;
  v30 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  sub_21D8F7000(a5, sub_21D19DA18, 0);
  if (a4)
  {
    v19 = 1;
    if (a3)
    {
      v19 = 2;
    }

LABEL_6:
    v32 = v19;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = sub_21D8A9000(*(v5 + 32));
      v18 = 0;
    }

    v31 = v18;
    v21 = v20;
    sub_21DBFB97C();
    v22 = sub_21DBFB95C();
    v23 = *(*(v22 - 8) + 48);
    if (v23(v17, 1, v22))
    {
      sub_21D0CF7E0(v17, &unk_27CE5F2F0, qword_21DC0FEA0);
    }

    else
    {
      v24 = sub_21DBFB91C();
      v26 = v25;
      sub_21D0CF7E0(v17, &unk_27CE5F2F0, qword_21DC0FEA0);
      if (v26)
      {
        if (v24 == v29 && v26 == v30)
        {
        }

        else
        {
          v28 = sub_21DBFC64C();

          if ((v28 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

LABEL_22:
        [v21 setTag_];
        *&v21[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = &protocol witness table for TTRHashtagCollectionViewPopulator<A>;
        swift_unknownObjectWeakAssign();

        return;
      }
    }

LABEL_11:
    sub_21DBFB97C();
    if (v23(v14, 1, v22))
    {
      sub_21D0D3954(v14, v11, &unk_27CE5F2F0, qword_21DC0FEA0);
      sub_21DBFB98C();

      sub_21D0CF7E0(v14, &unk_27CE5F2F0, qword_21DC0FEA0);
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFB92C();
      sub_21DBFB98C();
    }

    [v21 invalidateIntrinsicContentSize];
    goto LABEL_22;
  }

  v19 = a3 + 10;
  if (!__OFADD__(a3, 10))
  {
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_21D8F5C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = sub_21DBF5B9C();
  v10 = *(v120 - 8);
  MEMORY[0x28223BE20](v120 - 8);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v124 = &v111 - v14;
  v15 = sub_21DBF6C1C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, a5, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  v21 = *MEMORY[0x277D45378];
  v116 = a2;
  v117 = a3;
  v123 = v10;
  v115 = v12;
  v118 = a1;
  if (v20 == v21)
  {
    (*(v16 + 96))(v19, v15);
    v22 = *v19;
    v112 = v19;
    v122 = sub_21DBF8E0C();
    sub_21D996B68(v122, v22);
    v24 = v23 + 56;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 56);
    v28 = (v25 + 63) >> 6;
    v119 = v23;
    sub_21DBF8E0C();
    v29 = a4;
    v30 = 0;
    v114 = (v29 + 40);
    v31 = MEMORY[0x277D84F90];
LABEL_5:
    while (v27)
    {
      v32 = v27;
LABEL_12:
      v27 = (v32 - 1) & v32;
      v35 = *(v29 + 16);
      if (v35)
      {
        v121 = (v32 - 1) & v32;
        v36 = 0;
        v37 = (v119[6] + ((v30 << 10) | (16 * __clz(__rbit64(v32)))));
        v38 = *v37;
        v39 = v37[1];
        v40 = v114;
        while (1)
        {
          v41 = *(v40 - 1) == v38 && *v40 == v39;
          if (v41 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          ++v36;
          v40 += 2;
          if (v35 == v36)
          {
            v27 = v121;
            goto LABEL_5;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_21D211BD0(0, *(v31 + 2) + 1, 1, v31);
        }

        v27 = v121;
        v43 = *(v31 + 2);
        v42 = *(v31 + 3);
        if (v43 >= v42 >> 1)
        {
          v31 = sub_21D211BD0((v42 > 1), v43 + 1, 1, v31);
        }

        *(v31 + 2) = v43 + 1;
        *&v31[8 * v43 + 32] = v36;
      }
    }

    v33 = v124;
    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_102;
      }

      if (v34 >= v28)
      {
        break;
      }

      v32 = *(v24 + 8 * v34);
      ++v30;
      if (v32)
      {
        v30 = v34;
        goto LABEL_12;
      }
    }

    v46 = *(v31 + 2);
    if (v46)
    {
      v47 = v29;
      v126 = MEMORY[0x277D84F90];
      sub_21D18EE0C(0, v46, 0);
      v45 = v126;
      v48 = *(v126 + 2);
      v49 = 16 * v48;
      v50 = 32;
      do
      {
        v51 = *&v31[v50];
        v126 = v45;
        v52 = *(v45 + 3);
        v53 = v48 + 1;
        if (v48 >= v52 >> 1)
        {
          sub_21D18EE0C((v52 > 1), v48 + 1, 1);
          v45 = v126;
        }

        *(v45 + 2) = v53;
        v54 = &v45[v49];
        *(v54 + 4) = v51;
        v54[40] = 0;
        v49 += 16;
        v50 += 8;
        v48 = v53;
        --v46;
      }

      while (v46);

      v33 = v124;
      v29 = v47;
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    v55 = v122 + 56;
    v56 = 1 << *(v122 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v122 + 56);
    v59 = (v56 + 63) >> 6;
    sub_21DBF8E0C();
    v60 = 0;
    v119 = (v29 + 40);
    v61 = MEMORY[0x277D84F90];
    v113 = v29;
    while (v58)
    {
      v62 = v58;
LABEL_47:
      v58 = (v62 - 1) & v62;
      v64 = *(v29 + 16);
      if (v64)
      {
        v121 = (v62 - 1) & v62;
        v65 = 0;
        v66 = (*(v122 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v62)))));
        v67 = *v66;
        v68 = v66[1];
        v69 = v119;
        while (1)
        {
          v70 = *(v69 - 1) == v67 && *v69 == v68;
          if (v70 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          ++v65;
          v69 += 2;
          if (v64 == v65)
          {
            goto LABEL_61;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_21D211BD0(0, *(v61 + 2) + 1, 1, v61);
        }

        v72 = *(v61 + 2);
        v71 = *(v61 + 3);
        if (v72 >= v71 >> 1)
        {
          v61 = sub_21D211BD0((v71 > 1), v72 + 1, 1, v61);
        }

        *(v61 + 2) = v72 + 1;
        *&v61[8 * v72 + 32] = v65;
LABEL_61:
        v33 = v124;
        v29 = v113;
        v58 = v121;
      }
    }

    while (1)
    {
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v63 >= v59)
      {

        v73 = *(v61 + 2);
        if (v73)
        {
          v126 = MEMORY[0x277D84F90];
          sub_21D18EE0C(0, v73, 0);
          v44 = v126;
          v74 = *(v126 + 2);
          v75 = 16 * v74;
          v76 = 32;
          v77 = v112;
          do
          {
            v78 = *&v61[v76];
            v126 = v44;
            v79 = *(v44 + 3);
            v80 = v74 + 1;
            if (v74 >= v79 >> 1)
            {
              sub_21D18EE0C((v79 > 1), v74 + 1, 1);
              v44 = v126;
            }

            *(v44 + 2) = v80;
            v81 = &v44[v75];
            *(v81 + 4) = v78;
            v81[40] = 0;
            v75 += 16;
            v76 += 8;
            v74 = v80;
            --v73;
          }

          while (v73);

          v33 = v124;
        }

        else
        {

          v44 = MEMORY[0x277D84F90];
          v77 = v112;
        }

        v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
        v83 = sub_21DBF6C0C();
        (*(*(v83 - 8) + 8))(v77 + v82, v83);
        v10 = v123;
        goto LABEL_70;
      }

      v62 = *(v55 + 8 * v63);
      ++v60;
      if (v62)
      {
        v60 = v63;
        goto LABEL_47;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v20 == *MEMORY[0x277D45398])
  {
    v44 = MEMORY[0x277D84F90];
    v45 = &unk_282EA65D0;
  }

  else
  {
    if (v20 != *MEMORY[0x277D45380])
    {
LABEL_105:
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    v44 = &unk_282EA6630;
    v45 = &unk_282EA6600;
  }

  v33 = v124;
LABEL_70:
  v84 = *(v45 + 2);
  if (v84)
  {
    v126 = MEMORY[0x277D84F90];
    sub_21D18E658(0, v84, 0);
    v85 = v126;
    v86 = v45 + 40;
    do
    {
      v87 = *(v86 - 1);
      if (*v86 == 1)
      {
        if (v87)
        {
          v88 = 2;
        }

        else
        {
          v88 = 1;
        }
      }

      else
      {
        v88 = v87 + 10;
        if (__OFADD__(v87, 10))
        {
          goto LABEL_103;
        }
      }

      v126 = v85;
      v90 = *(v85 + 2);
      v89 = *(v85 + 3);
      if (v90 >= v89 >> 1)
      {
        sub_21D18E658((v89 > 1), v90 + 1, 1);
        v85 = v126;
      }

      *(v85 + 2) = v90 + 1;
      *&v85[8 * v90 + 32] = v88;
      v86 += 16;
      --v84;
    }

    while (v84);

    v10 = v123;
    v33 = v124;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  sub_21D8F91CC(&qword_280D1B818, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  v91 = v120;
  sub_21DBFBCAC();
  v92 = *(v85 + 2);
  if (v92)
  {
    v93 = (v85 + 32);
    do
    {
      v94 = *v93++;
      v125 = v94;
      sub_21DBFBC6C();
      --v92;
    }

    while (v92);
  }

  v96 = *(v10 + 32);
  v95 = v10 + 32;
  v124 = v96;
  (v96)(v118, v33, v91);
  v97 = *(v44 + 2);
  if (v97)
  {
    v123 = v95;
    v126 = MEMORY[0x277D84F90];
    sub_21D18E658(0, v97, 0);
    v98 = v126;
    v99 = v44 + 40;
    do
    {
      v100 = *(v99 - 1);
      if (*v99 == 1)
      {
        if (v100)
        {
          v101 = 2;
        }

        else
        {
          v101 = 1;
        }
      }

      else
      {
        v101 = v100 + 10;
        if (__OFADD__(v100, 10))
        {
          goto LABEL_104;
        }
      }

      v126 = v98;
      v103 = *(v98 + 2);
      v102 = *(v98 + 3);
      if (v103 >= v102 >> 1)
      {
        sub_21D18E658((v102 > 1), v103 + 1, 1);
        v98 = v126;
      }

      *(v98 + 2) = v103 + 1;
      *&v98[8 * v103 + 32] = v101;
      v99 += 16;
      --v97;
    }

    while (v97);

    v91 = v120;
  }

  else
  {

    v98 = MEMORY[0x277D84F90];
  }

  v104 = v115;
  sub_21DBFBCAC();
  v105 = *(v98 + 2);
  v107 = v116;
  v106 = v117;
  if (v105)
  {
    v108 = (v98 + 32);
    do
    {
      v109 = *v108++;
      v125 = v109;
      sub_21DBFBC6C();
      --v105;
    }

    while (v105);
  }

  (v124)(v107, v104, v91);
  return sub_21D8F550C(v106);
}

uint64_t sub_21D8F66B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v85 = a5;
  v88 = a7;
  v86 = sub_21DBF6C0C();
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v89 = sub_21DBF6C1C();
  MEMORY[0x28223BE20](v89);
  v19 = (&v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v79 - v21;
  v25 = MEMORY[0x28223BE20](v23);
  v87 = (&v79 - v26);
  if (a3)
  {
    v27 = *(v24 + 16);
    v90 = v24;
    if (a2)
    {
      v28 = v87;
      v29 = a1;
      v30 = v89;
      v27(v87, v29, v89, v25);
LABEL_47:
      v63 = v90;
      return (*(v63 + 32))(v88, v28, v30);
    }

    v58 = a1;
    v30 = v89;
    v27(v22, v58, v89, v25);
    v59 = (*(v90 + 88))(v22, v30);
    v28 = v87;
    if (v59 == *MEMORY[0x277D45378])
    {
      (*(v90 + 96))(v22, v30);

      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
      (*(v90 + 104))(v28, *MEMORY[0x277D45398], v30);
      (*(v12 + 8))(&v22[v60], v86);
      goto LABEL_47;
    }

    v64 = *MEMORY[0x277D45398];
    v65 = v90;
    if (v59 == v64)
    {
      if (a6)
      {
        v64 = *MEMORY[0x277D45380];
LABEL_36:
        v72 = *(v90 + 104);
LABEL_37:
        v73 = v87;
LABEL_46:
        v72(v73, v64, v30, v65);
        goto LABEL_47;
      }

      if ((v85 & 1) == 0)
      {
        v72 = *(v90 + 104);
        v64 = v59;
        goto LABEL_37;
      }

LABEL_43:
      sub_21DBF6BCC();
      goto LABEL_47;
    }

    if (v59 == *MEMORY[0x277D45380])
    {
      if ((v85 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }

    goto LABEL_51;
  }

  if ((a2 & 0x8000000000000000) == 0 && *(a4 + 16) > a2)
  {
    v31 = a4 + 16 * a2;
    v33 = *(v31 + 32);
    v32 = *(v31 + 40);
    v34 = *(v24 + 16);
    v35 = a1;
    v36 = v89;
    v90 = v24;
    v34(v19, v35, v89, v25);
    v37 = (*(v90 + 88))(v19, v36);
    if (v37 != *MEMORY[0x277D45378])
    {
      if (v37 == *MEMORY[0x277D45398] || v37 == *MEMORY[0x277D45380])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        *(inited + 32) = v33;
        *(inited + 40) = v32;
        sub_21DBF8E0C();
        sub_21D1CDB50(inited);
        swift_setDeallocating();
        sub_21D6C9C70(inited + 32);
        v28 = v87;
        sub_21DBF6BDC();

        v30 = v89;
        v63 = v90;
        return (*(v63 + 32))(v88, v28, v30);
      }

      sub_21DBF8E0C();
      sub_21DBFC63C();
      __break(1u);
LABEL_51:
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    v83 = v33;
    v84 = v32;
    v82 = v37;
    (*(v90 + 96))(v19, v36);
    v38 = *v19;
    v80 = v19[1];
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830);
    v39 = *(v81 + 64);
    v93 = v38;
    v40 = v12;
    v41 = v86;
    (*(v12 + 16))(v17, v19 + v39, v86);
    if ((a6 & 1) == 0)
    {
      v79 = v39;
      v66 = v84;
      sub_21DBF8E0C();

      v67 = v83;
      v68 = sub_21D1E1CE8(v83, v66, v38);
      if (v68)
      {
        if (*(v38 + 16) > 1uLL || (v85 & 1) != 0)
        {
          sub_21D1AAFC8(v83, v66);
        }

        v69 = v93;
        sub_21DBF8E0C();
        v70 = sub_21DBF8E0C();
        v71 = sub_21D8F78E8(v70, a4);

        if ((v85 & 1) != 0 || *(v71 + 16))
        {

          v93 = v71;
        }

        else
        {

          v71 = v69;
        }
      }

      else
      {
        MEMORY[0x28223BE20](v68);
        *(&v79 - 2) = a4;
        v93 = sub_21D8F747C(v38, sub_21D8F92A4);
        sub_21D29B8E4(&v92, v67, v66);

        v71 = v93;
      }

      v28 = v87;
      v74 = v79;
      v75 = MEMORY[0x277D84FA0];
      v76 = *(v81 + 64);
      *v87 = v71;
      *(v28 + 1) = v75;
      (*(v40 + 32))(&v28[v76], v17, v41);
      v30 = v89;
      (*(v90 + 104))(v28, v82, v89);
      (*(v40 + 8))(v19 + v74, v41);
      goto LABEL_47;
    }

    v42 = *(v12 + 8);
    sub_21DBF8E0C();
    v42(v17, v41);
    v93 = v38;
    v43 = v80;
    v91 = v80;
    v44 = *(v12 + 32);
    v45 = v19 + v39;
    v46 = v14;
    v47 = v44(v14, v45, v41);
    v48 = v44;
    MEMORY[0x28223BE20](v47);
    *(&v79 - 2) = a4;
    sub_21DBF8E0C();
    v49 = sub_21D8F747C(v38, sub_21D8F6690);
    v93 = v49;
    MEMORY[0x28223BE20](v49);
    *(&v79 - 2) = a4;
    v50 = sub_21D8F747C(v43, sub_21D8F6690);
    v51 = v84;

    v91 = v50;
    v52 = v83;
    v53 = sub_21D1E1CE8(v83, v51, v49);
    if (sub_21D1E1CE8(v52, v51, v50))
    {
      sub_21D1AAFC8(v52, v51);

      sub_21D1AAFC8(v52, v51);

      v28 = v87;
      if ((v85 & 1) != 0 || v93[2] || v91[2])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v28 = v87;
      if (v53)
      {
        sub_21D1AAFC8(v52, v51);
      }
    }

    sub_21D29B8E4(&v92, v52, v51);
LABEL_45:

    v77 = *(v81 + 64);
    v78 = v91;
    *v28 = v93;
    *(v28 + 1) = v78;
    v48(&v28[v77], v46, v86);
    v30 = v89;
    v72 = *(v90 + 104);
    v73 = v28;
    v64 = v82;
    goto LABEL_46;
  }

  v54 = *(v24 + 16);
  v55 = v88;
  v56 = v89;

  return v54(v55, a1, v56, v25);
}

void sub_21D8F7000(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AA0, &qword_21DC30C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AA8, &qword_21DC30C58);
  sub_21D0D0F1C(&qword_27CE63AB0, &qword_27CE63AA0, &qword_21DC30C50, MEMORY[0x277D843F8]);
  sub_21DBFA48C();

  if (v9)
  {
    v5 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = sub_21D256E60(v4);

      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v8 < *(v4 + 16))
        {
          v6 = v4 + 8 * v8;
          v7 = *(v6 + 32);
          *(v6 + 32) = 0;

          *a1 = v4;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_21D8F7150(uint64_t a1, void *a2, uint64_t (*a3)(void **))
{
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  v5 = a2;
  v6 = a3(&v8);
  result = a1;
  if ((v6 & 1) == 0)
  {

    return 0;
  }

  return result;
}

void *sub_21D8F71DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_21D8F7308(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_21D8F726C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_21DBF8E0C();
    sub_21D8F7738(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_21D8F7308(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;
    sub_21DBF8E0C();
    v17 = (a4)(v24);

    if (v4)
    {
      return;
    }

    if ((v17 & 1) == 0)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_21D7C0054(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_21D8F747C(uint64_t a1, uint64_t (*a2)(void *, __n128))
{
  v30 = a2;
  v3 = a1;
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v26 = v5;
    v31 = v2;
    v28 = &v25;
    MEMORY[0x28223BE20](a1);
    v27 = &v25 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v6);
    v29 = 0;
    v7 = 0;
    v5 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v12 | (v7 << 6);
      v16 = v3;
      v17 = (*(v3 + 48) + 16 * v15);
      v18 = v17[1];
      v32[0] = *v17;
      v32[1] = v18;
      sub_21DBF8E0C();
      v2 = v31;
      v19 = (v30)(v32);
      v31 = v2;
      if (v2)
      {

        return swift_willThrow();
      }

      v20 = v19;

      v3 = v16;
      if ((v20 & 1) == 0)
      {
        *&v27[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_21D7C0054(v27, v26, v29, v3);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_21D7C0054(v27, v26, v29, v3);
      }

      v14 = *(v5 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_21D8F71DC(v23, v5, v3, v30);

  result = MEMORY[0x223D46520](v23, -1, -1);
  if (!v2)
  {
    return v24;
  }

  return result;
}

void sub_21D8F7738(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v24[0] = *v14;
    v24[1] = v15;
    MEMORY[0x28223BE20](a1);
    v19[2] = v24;
    sub_21DBF8E0C();
    v16 = sub_21D17B510(sub_21D8F9288, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v25;

        sub_21D7C0054(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_21D8F78E8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;
  v7 = sub_21DBF8E0C();
  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    v27 = v5;
    MEMORY[0x28223BE20](v7);
    v28 = v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v18 = (*(v30 + 48) + 16 * v17);
      v19 = v18[1];
      v32[0] = *v18;
      v32[1] = v19;
      MEMORY[0x28223BE20](v8);
      v26[-2] = v32;
      sub_21DBF8E0C();
      v20 = sub_21D17B510(sub_21D8F91AC, &v26[-4], v31);

      if (v20)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_21D7C0054(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;
  sub_21DBF8E0C();
  v22 = sub_21D8F726C(v24, v5, v2, v25);

  MEMORY[0x223D46520](v24, -1, -1);
LABEL_17:

  return v22;
}

uint64_t sub_21D8F7BB0(void *a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_21DBF6C0C();
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF6C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v57 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v57 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  sub_21DBF6BCC();
  if (a1)
  {
    v24 = sub_21D114EC8();
    v25 = a1;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v70[1] = 0;
    v70[2] = 0;
  }

  v70[0] = v25;
  v70[3] = v24;
  sub_21D0D3954(v70, v69, &qword_27CE5C690, &unk_21DC11AB0);
  if (v69[3])
  {
    v66 = v3;
    type metadata accessor for TTRIHashtagButton();
    v26 = a1;
    if (swift_dynamicCast())
    {
      v27 = v68;
      v28 = [v68 tag];
      if (v28 == 1)
      {
        v36 = v27;
        (*(v6 + 16))(v14, v20, v5);
        v37 = (*(v6 + 88))(v14, v5);
        v30 = MEMORY[0x277D45378];
        if (v37 == *MEMORY[0x277D45378])
        {

          (*(v6 + 8))(v20, v5);
          (*(v6 + 96))(v14, v5);

          v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
          (*(v6 + 104))(v17, *MEMORY[0x277D45398], v5);
          v39 = &v14[v38];
          v3 = v66;
          (*(v67 + 8))(v39, v66);
        }

        else
        {
          v3 = v66;
          if (v37 != *MEMORY[0x277D45398] && v37 != *MEMORY[0x277D45380])
          {
            goto LABEL_40;
          }

          sub_21DBF6BCC();

          (*(v6 + 8))(v20, v5);
        }

        goto LABEL_13;
      }

      if (v28 == 2)
      {

        (*(v6 + 32))(v17, v20, v5);
      }

      else
      {
        v3 = v66;
        if (v28 <= 9 || v28 - 10 >= *(v65 + 16))
        {

          v17 = v20;
          goto LABEL_12;
        }

        v40 = v65 + 16 * (v28 - 10);
        v41 = *(v40 + 40);
        v61 = *(v40 + 32);
        (*(v6 + 16))(v11, v20, v5);
        v42 = (*(v6 + 88))(v11, v5);
        v43 = v42 == *MEMORY[0x277D45378];
        v62 = v27;
        v63 = v41;
        if (v43)
        {
          v60 = v42;
          (*(v6 + 96))(v11, v5);
          v44 = *v11;
          sub_21DBF8E0C();

          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830);
          v45 = *(v58 + 64);
          v68 = v44;
          v46 = *(v67 + 16);
          v59 = v45;
          v46(v64, v11 + v45, v66);
          v47 = v61;
          v48 = sub_21D1E1CE8(v61, v41, v44);
          if (v48)
          {
            sub_21D1AAFC8(v47, v63);

            v49 = v68;
            v50 = v65;
            sub_21DBF8E0C();
            v51 = sub_21D8F78E8(v49, v50);

            v68 = v51;
          }

          else
          {
            MEMORY[0x28223BE20](v48);
            *(&v57 - 2) = v65;
            v68 = sub_21D8F747C(v44, sub_21D8F92A4);
            sub_21D29B8E4(v69, v47, v63);

            v51 = v68;
          }

          v54 = *(v58 + 64);
          *v17 = v51;
          (*(v6 + 8))(v20, v5);
          v17[1] = MEMORY[0x277D84FA0];
          v55 = v67;
          v56 = v17 + v54;
          v3 = v66;
          (*(v67 + 32))(v56, v64, v66);
          (*(v6 + 104))(v17, v60, v5);
          (*(v55 + 8))(v11 + v59, v3);
          goto LABEL_12;
        }

        v52 = v61;
        if (v42 != *MEMORY[0x277D45398] && v42 != *MEMORY[0x277D45380])
        {
          sub_21DBF8E0C();
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        *(inited + 32) = v52;
        *(inited + 40) = v63;
        sub_21DBF8E0C();
        sub_21D1CDB50(inited);
        swift_setDeallocating();
        sub_21D6C9C70(inited + 32);
        sub_21DBF6BDC();

        (*(v6 + 8))(v20, v5);
      }
    }

    else
    {
      v17 = v20;
    }

    v3 = v66;
  }

  else
  {
    v29 = a1;
    sub_21D0CF7E0(v69, &qword_27CE5C690, &unk_21DC11AB0);
    v17 = v20;
  }

LABEL_12:
  v30 = MEMORY[0x277D45378];
LABEL_13:
  (*(v6 + 32))(v23, v17, v5);
  sub_21D0CF7E0(v70, &qword_27CE5C690, &unk_21DC11AB0);
  (*(v6 + 16))(v8, v23, v5);
  v31 = (*(v6 + 88))(v8, v5);
  if (v31 == *v30)
  {
    (*(v6 + 96))(v8, v5);
    v32 = *v8;

    if (*(v32 + 16) == 1)
    {
      v33 = sub_21D195590(v32);

      (*(v6 + 8))(v23, v5);
    }

    else
    {
      (*(v6 + 8))(v23, v5);

      v33 = 0;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830);
    (*(v67 + 8))(v8 + *(v34 + 64), v3);
    return v33;
  }

  if (v31 == *MEMORY[0x277D45398] || v31 == *MEMORY[0x277D45380])
  {
    (*(v6 + 8))(v23, v5);
    return 0;
  }

LABEL_40:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

double sub_21D8F8530(void *a1)
{
  sub_21D8F354C(a1);
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = (v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop);
    *v8 = v3;
    v8[1] = v4;
    sub_21DBF8E0C();

    v9 = v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 48))(v1, a1, v6, v7, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void *sub_21D8F8620(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v8 = 0;
    for (i = (a4 + 40); ; i += 2)
    {
      v10 = *(i - 1) == a1 && *i == a2;
      if (v10 || (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      if (v4 == ++v8)
      {
        return 0;
      }
    }

    v11 = __OFADD__(v8, 10);
    v12 = (v8 + 10);
    if (v11)
    {
      goto LABEL_24;
    }

    if (a3 >> 62)
    {
      goto LABEL_25;
    }

    for (j = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_21DBFBD7C())
    {
      for (k = 0; ; ++k)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x223D44740](k, a3);
        }

        else
        {
          if (k >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v15 = *(a3 + 8 * k + 32);
        }

        v4 = v15;
        v16 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        if ([v15 tag] == v12)
        {
          return v4;
        }

        if (v16 == j)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    return 0;
  }

  return v4;
}

id sub_21D8F8768(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer;
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
    if (v4)
    {
      v5 = result;
      v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop);

      sub_21DBF8E0C();
      v7 = [v4 arrangedSubviews];
      if (v7)
      {
        v8 = v7;
        sub_21D114EC8();
        v9 = sub_21DBFA5EC();
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
      swift_beginAccess();
      v11 = *(v1 + v10);
      sub_21DBF8E0C();
      v12 = sub_21D8F8620(v6, v2, v9, v11);

      if (v12)
      {
        v13 = *(v1 + v3);
        if (v13)
        {
          v14 = v13;

          [v12 frame];
          [v12 alignmentRectForFrame_];
          x = v29.origin.x;
          y = v29.origin.y;
          width = v29.size.width;
          height = v29.size.height;
          MidX = CGRectGetMidX(v29);
          v30.origin.x = x;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          MidY = CGRectGetMidY(v30);
          CGAffineTransformMakeScale(&v28, 0.001, 0.001);
          tx = v28.tx;
          ty = v28.ty;
          v26 = *&v28.c;
          v27 = *&v28.a;
          v23 = objc_allocWithZone(MEMORY[0x277D75488]);
          *&v28.c = v26;
          *&v28.a = v27;
          v28.tx = tx;
          v28.ty = ty;
          v24 = [v23 initWithContainer:v14 center:&v28 transform:{MidX, MidY}];

          v25 = [v5 retargetedPreviewWithTarget_];
          return v25;
        }

        goto LABEL_14;
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void _s15RemindersUICore33TTRIHashtagWrappingCollectionViewC22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v2)
  {
    [v2 convertPoint:v0 fromCoordinateSpace:?];
    v5 = *&v1[v0];
    if (v5)
    {
      v6 = v3;
      v7 = v4;
      v8 = [v5 visibleArrangedSubviews];
      if (v8)
      {
        v1 = v8;
        sub_21D114EC8();
        v9 = sub_21DBFA5EC();

        if (!(v9 >> 62))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_5:
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_27;
        }
      }

      v10 = sub_21DBFBD7C();
      if (v10)
      {
LABEL_6:
        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x223D44740](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v1 = v12;
          v13 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          [v12 frame];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [v1 effectiveAlignmentRectInsets];
          v42.origin.x = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v22, v23);
          v41.x = v6;
          v41.y = v7;
          if (CGRectContainsPoint(v42, v41))
          {
            break;
          }

          ++v11;
          if (v13 == v10)
          {
            goto LABEL_27;
          }
        }

        if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
        {
          goto LABEL_33;
        }

        v24 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
        swift_beginAccess();
        v25 = *(v0 + v24);

        v26 = v1;
        sub_21DBF8E0C();
        v27 = sub_21D8F7BB0(v1, v25);
        v29 = v28;

        if (!v29)
        {

          return;
        }

        v30 = v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v31 = *(v30 + 8);
          ObjectType = swift_getObjectType();
          v38 = 1;
          *v37 = v1;
          memset(&v37[8], 0, 32);
          v37[40] = 1;
          *&v37[48] = 0;
          v37[56] = 1;
          v33 = *(v31 + 56);
          v1 = v26;
          v34 = v33(v0, v27, v29, v37, ObjectType, v31);
          swift_unknownObjectRelease();
          v39[0] = *v37;
          v39[1] = *&v37[16];
          v40[0] = *&v37[32];
          *(v40 + 9) = *&v37[41];
          sub_21D1A9430(v39);
          if (v34)
          {
            v11 = v34;
            if (qword_27CE56E48 == -1)
            {
LABEL_23:
              v35 = qword_27CE638E0;
              v36 = sub_21DBFA12C();

              objc_setAssociatedObject(v11, v35, v36, 1);

              return;
            }

LABEL_30:
            swift_once();
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

LABEL_27:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

id sub_21D8F8D84()
{
  result = sub_21D8F48C8();
  if (!v2)
  {
    return 0;
  }

  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (!v3)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = v2;

  v6 = [v3 visibleArrangedSubviews];
  if (v6)
  {
    v7 = v6;
    sub_21D114EC8();
    v8 = sub_21DBFA5EC();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v10 = *(v0 + v9);
  sub_21DBF8E0C();
  v11 = sub_21D8F8620(v4, v5, v8, v10);

  if (!v11)
  {
    return 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  type metadata accessor for TTRIHashtagButton();
  if (swift_dynamicCastClass())
  {
    v13 = v11;
    v15 = TTRIHashtagButton.currentVisiblePath.getter(v14);
    [v12 setVisiblePath_];
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v11 parameters:v12];

  return v16;
}

unint64_t sub_21D8F8F4C()
{
  result = qword_27CE63988;
  if (!qword_27CE63988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIHashtagWrappingCollectionView.FocusStyle, &type metadata for TTRIHashtagWrappingCollectionView.FocusStyle, v0, v1);
    atomic_store(result, &qword_27CE63988);
  }

  return result;
}

uint64_t type metadata accessor for TTRIHashtagWrappingCollectionView(uint64_t a1)
{
  result = qword_27CE639A0;
  if (!qword_27CE639A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8F9094(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21D8F91CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D8F924C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21D8F7150(*a1, *(a1 + 8), *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t TTRConfirmationDialogState.__allocating_init(dialogToShow:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21D8FB4D0(a1);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t TTRConfirmationDialogState.show(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_21D8FB428(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21D8F94A8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63AB8);
  v1 = __swift_project_value_buffer(v0, qword_27CE63AB8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRConfirmationDialogState.init(dialogToShow:)(uint64_t a1)
{
  v2 = sub_21D8FB4D0(a1);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_21D8F95F4@<X0>(uint64_t a1@<X8>)
{
  v7 = *(*v1 + 80);
  KeyPath = swift_getKeyPath(byte_21DC30DD0, &v7, v7);
  sub_21D8F96DC(KeyPath);

  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = sub_21DBFBA8C();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_21D8F977C(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = sub_21DBFBA8C();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

BOOL sub_21D8F991C()
{
  v1 = *(*v0 + 80);
  v2 = sub_21DBFBA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_21D8F95F4(&v8 - v4);
  v6 = (*(*(v1 - 8) + 48))(v5, 1, v1) != 1;
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_21D8F9A38(char a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - v7;
  if ((a1 & 1) == 0)
  {
    (*(*(v3 - 8) + 56))(v8, 1, 1, v3, v6);
    sub_21D8FB428(v8);
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t TTRConfirmationDialogState.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_21DBF5DBC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRConfirmationDialogState.__deallocating_deinit()
{
  TTRConfirmationDialogState.deinit();

  return swift_deallocClassInstance();
}

uint64_t View.confirmationDialog<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v66 = a4;
  v67 = a3;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v56 = type metadata accessor for TTRConfirmationDialogState(255, v6, v7, a5);
  v8 = sub_21DBF9C4C();
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v60 = v52 - v9;
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v10);
  v52[0] = v52 - v11;
  v71 = sub_21DBFBA8C();
  v55 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v52 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63AD0, &qword_21DC30C60);
  v18 = sub_21D176F0C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_21D8FB590();
  v74 = a2;
  v75 = MEMORY[0x277D837D0];
  v57 = AssociatedTypeWitness;
  v76 = AssociatedTypeWitness;
  v77 = v17;
  v64 = v18;
  v65 = v17;
  v21 = v67;
  v78 = v6;
  v79 = v67;
  v80 = v18;
  v81 = AssociatedConformanceWitness;
  v22 = v8;
  v68 = v20;
  v69 = AssociatedConformanceWitness;
  v82 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v58 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = v52 - v25;
  v26 = swift_allocBox();

  swift_getWitnessTable(protocol conformance descriptor for TTRConfirmationDialogState<A>, v56);
  sub_21DBF9C2C();
  v27 = v26;
  v56 = a2;
  sub_21D8FA5D0(v26, a2, v6, v21, v7);
  sub_21D8F95F4(v15);

  v28 = v53;
  if ((*(v53 + 48))(v15, 1, v6))
  {
    v29 = *(v55 + 1);
    v54 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v29;
    v29(v15, v71);
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v32 = v52[0];
    (*(v28 + 16))(v52[0], v15, v6);
    v33 = *(v55 + 1);
    v54 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v33;
    v33(v15, v71);
    v34 = (*(v7 + 24))(v6, v7);
    v36 = v35;
    (*(v28 + 8))(v32, v6);
    v31 = 0xE000000000000000;
    if (v36)
    {
      v30 = v34;
    }

    else
    {
      v30 = 0;
    }

    if (v36)
    {
      v31 = v36;
    }
  }

  v53 = v31;
  v72 = v30;
  v73 = v31;
  v37 = v60;
  v52[1] = v27;
  v38 = v56;
  v39 = v67;
  v40 = sub_21D8FA4C0(v27, v56, v6, v67, v7);
  *&v41 = MEMORY[0x28223BE20](v40).n128_u64[0];
  swift_getKeyPath(byte_21DC30C68, v41);
  sub_21DBF9C3C();

  (*(v61 + 8))(v37, v22);
  LODWORD(v61) = v76;
  sub_21D8FA5D0(v27, v38, v6, v39, v7);
  sub_21D8F95F4(v70);

  v60 = v52;
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v57 = swift_checkMetadataState();
  v44 = v64;
  v45 = v65;
  v46 = v58;
  v47 = v70;
  sub_21DBF99DC();

  v55(v47, v71);

  v74 = v38;
  v75 = MEMORY[0x277D837D0];
  v76 = v57;
  v77 = v45;
  v78 = v6;
  v79 = v39;
  v80 = v44;
  v81 = v69;
  v82 = v68;
  swift_getOpaqueTypeConformance2();
  v48 = v59;
  v49 = OpaqueTypeMetadata2;
  sub_21DA31930();
  v50 = *(v62 + 8);
  v50(v46, v49);
  sub_21DA31930();
  v50(v48, v49);
}

uint64_t sub_21D8FA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRConfirmationDialogState(255, a3, a5, a4);
  v5 = sub_21DBF9C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = swift_projectBox();
  (*(v6 + 16))(v8, v9, v5);
  sub_21DBF9C1C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21D8FA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRConfirmationDialogState(255, a3, a5, a4);
  v5 = sub_21DBF9C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v9 = swift_projectBox();
  (*(v6 + 16))(v8, v9, v5);
  sub_21DBF9C0C();
  (*(v6 + 8))(v8, v5);
  return v11[1];
}

uint64_t sub_21D8FA6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  (*(a5 + 40))(a3, a5, v12);
  swift_getAssociatedConformanceWitness();
  sub_21DA31930();
  v15 = *(v8 + 8);
  v15(v10, AssociatedTypeWitness);
  sub_21DA31930();
  return (v15)(v14, AssociatedTypeWitness);
}

double sub_21D8FA86C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 32))(a1, a2);
  if (v5)
  {
    *&v7 = v4;
    *(&v7 + 1) = v5;
    sub_21D176F0C();
    sub_21DBF996C();
  }

  sub_21DBF97FC();
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 32) = v9;
  return result;
}

uint64_t TTRDiscardChangesDialog.discardChanges.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRDiscardChangesDialog.init(discardChanges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRDiscardChangesDialog.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRDiscardChangesDialog.actions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AE0, &qword_21DC30CA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - v2;
  v5 = *v0;
  v4 = v0[1];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v10[0] = sub_21DBF516C();
  v10[1] = v6;
  sub_21DBF949C();
  v7 = sub_21DBF94AC();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  sub_21D176F0C();

  return sub_21DBF9B9C();
}

uint64_t sub_21D8FAC04()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRAlertWithMessageDialog.AlertAction.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertWithMessageDialog.AlertAction.action.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TTRAlertWithMessageDialog.AlertAction.init(title:isDestructive:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t TTRAlertWithMessageDialog.alertTitle.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertWithMessageDialog.alertMessage.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAlertWithMessageDialog.alertPrimaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_21DBF8E0C();
}

__n128 TTRAlertWithMessageDialog.init(alertTitle:alertMessage:alertPrimaryAction:shouldShowCancelButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 16);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = v8;
  *(a7 + 48) = v9;
  result = *(a5 + 3);
  *(a7 + 56) = result;
  *(a7 + 72) = a6;
  return result;
}

uint64_t TTRAlertWithMessageDialog.actions.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AE0, &qword_21DC30CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AE8, &qword_21DC30CA8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63AF0, &qword_21DC30CB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  *&v43[9] = *(v1 + 57);
  v21 = v1[3];
  v42 = v1[2];
  *v43 = v21;
  v22 = v1[1];
  v40 = *v1;
  v41 = v22;
  if (v43[24])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v38[0] = sub_21DBF516C();
    v38[1] = v23;
    sub_21D176F0C();
    sub_21DBF9BAC();
    (*(v9 + 32))(v20, v14, v8);
    (*(v9 + 56))(v20, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v34 - v19, 1, 1, v8);
  }

  v44 = v42;
  if (v43[0])
  {
    sub_21DBF949C();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_21DBF94AC();
  (*(*(v25 - 8) + 56))(v7, v24, 1, v25);
  v45 = v44;
  v39 = v44;
  sub_21D0D3954(v7, v4, &qword_27CE63AE0, &qword_21DC30CA0);
  v26 = swift_allocObject();
  v27 = *v43;
  v26[3] = v42;
  v26[4] = v27;
  *(v26 + 73) = *&v43[9];
  v28 = v41;
  v26[1] = v40;
  v26[2] = v28;
  sub_21D35BFD0(&v45, v38);
  sub_21D8FB654(&v40, v38);
  sub_21D176F0C();
  sub_21DBF9B9C();
  sub_21D0D3954(v20, v17, &qword_27CE63AF0, &qword_21DC30CB0);
  v36 = v20;
  v29 = *(v9 + 16);
  v29(v11, v14, v8);
  v35 = v7;
  v30 = v37;
  sub_21D0D3954(v17, v37, &qword_27CE63AF0, &qword_21DC30CB0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE63AF8, &qword_21DC30CB8);
  v29((v30 + *(v31 + 48)), v11, v8);
  v32 = *(v9 + 8);
  v32(v14, v8);
  sub_21D0CF7E0(v35, &qword_27CE63AE0, &qword_21DC30CA0);
  sub_21D0CF7E0(v36, &qword_27CE63AF0, &qword_21DC30CB0);
  v32(v11, v8);
  return sub_21D0CF7E0(v17, &qword_27CE63AF0, &qword_21DC30CB0);
}

double sub_21D8FB354()
{
  if (qword_27CE56E50 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE63AB8);
  v1 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("User cancelled action", 21, 2, v1);

  return result;
}

uint64_t sub_21D8FB3F4()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D8FB428(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath(byte_21DC30DD0, &v8);
  v6 = v1;
  v7 = a1;
  sub_21D8F9844(KeyPath, sub_21D8FBC24, &v5, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_21D8FB4D0(uint64_t a1)
{
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + *(*v1 + 96), 1, 1);
  sub_21DBF5DAC();
  sub_21D8FB428(a1);
  return v1;
}

unint64_t sub_21D8FB590()
{
  result = qword_27CE63AD8;
  if (!qword_27CE63AD8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63AD0, &qword_21DC30C60);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CE63AD8);
  }

  return result;
}

uint64_t sub_21D8FB700(uint64_t a1)
{
  result = sub_21DBFBA8C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF5DBC();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t destroy for TTRAlertWithMessageDialog()
{
}

uint64_t initializeWithCopy for TTRAlertWithMessageDialog(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRAlertWithMessageDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRAlertWithMessageDialog(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAlertWithMessageDialog(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAlertWithMessageDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRAlertWithMessageDialog.AlertAction()
{
}

uint64_t initializeWithCopy for TTRAlertWithMessageDialog.AlertAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRAlertWithMessageDialog.AlertAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithTake for TTRAlertWithMessageDialog.AlertAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t TTRRemindersBoardColumnWidthCalculator.WidthClass.description.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t TTRRemindersBoardColumnWidthCalculator.WidthClass.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D8FBD20()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

void TTRRemindersBoardColumnWidthCalculator.init(contentSize:edgeInsets:interColumnSpacing:displayScale:columnWidthRange:peekPercentage:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, __int128 a9, uint64_t a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v10 = 1.0;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  if (fabs(a8) >= 0.0000000149011612)
  {
    v10 = a8;
  }

  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = v10;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
}

uint64_t TTRRemindersBoardColumnWidthCalculator.supportedWidthClasses()()
{
  v1 = v0[3];
  v24 = v0[2];
  v25 = v1;
  v26 = v0[4];
  v2 = v0[1];
  v22 = *v0;
  v23 = v2;
  v21 = MEMORY[0x277D84F90];
  sub_21D18E658(0, 3, 0);
  v3 = v21;
  v20 = 0;
  v4 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v20);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    v17 = v4;
    sub_21D18E658((v5 > 1), v6 + 1, 1);
    v4 = v17;
    v3 = v21;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = v4;
  v20 = 1;
  v7 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v20);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (v9 >= v8 >> 1)
  {
    v18 = v7;
    sub_21D18E658((v8 > 1), v9 + 1, 1);
    v7 = v18;
    v3 = v21;
  }

  *(v3 + 16) = v9 + 1;
  *(v3 + 8 * v9 + 32) = v7;
  v20 = 2;
  v10 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v20);
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (v12 >= v11 >> 1)
  {
    v19 = v10;
    sub_21D18E658((v11 > 1), v12 + 1, 1);
    v10 = v19;
  }

  v13 = v21;
  *(v21 + 16) = v12 + 1;
  *(v13 + 8 * v12 + 32) = v10;
  v14 = sub_21DBFA64C();

  v15 = *(v14 + 16);

  if ((v15 - 1) >= 3)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return *(&off_27832F218 + v15 - 1);
  }
}

Swift::Int __swiftcall TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(RemindersUICore::TTRRemindersBoardColumnWidthCalculator::WidthClass a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  if (*a1)
  {
    v2 = *(v1 + 64);
    if (*a1 == 1)
    {
      v8 = *(v1 + 8);
      v9 = *(v1 + 48);
      v15 = *v1;
      v16 = v8;
      v17 = v4;
      v18 = *(v1 + 24);
      v19 = v5;
      v20 = v9;
      v21 = v6;
      v22 = v2;
      v23 = v7;
      v14 = 0;
      v10 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v14);
      v15 = v3;
      v16 = v8;
      v17 = v4;
      v18 = *(v1 + 24);
      v19 = v5;
      v20 = v9;
      v21 = v6;
      v22 = v2;
      v23 = v7;
      v14 = 2;
      *&a1 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v14);
      if (!__OFADD__(v10, a1))
      {
        v11 = roundf(vcvts_n_f32_s64(v10 + a1, 1uLL));
        if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v11 > -9.2234e18)
          {
            if (v11 < 9.2234e18)
            {
              *&a1 = v11;
              goto LABEL_27;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v12 = ceil((v3 - v4 - v6 * v7) / (v5 + v6) + -1.0);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 9.22337204e18)
  {
    __break(1u);
LABEL_12:
    v12 = ceil((v3 - v4 - v2 * v7) / (v5 + v2));
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v12 <= -9.22337204e18)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v12 >= 9.22337204e18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  if (v12 <= 1)
  {
    *&a1 = 1;
  }

  else
  {
    *&a1 = v12;
  }

LABEL_27:
  LOBYTE(result) = a1;
  return result;
}

Swift::Int TTRRemindersBoardColumnWidthCalculator.columnWidth(for:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 2);
  v11 = *(v1 + 24);
  v5 = *(v1 + 5);
  v4 = *(v1 + 6);
  v14 = *(v1 + 56);
  v6 = *(v1 + 9);
  v9 = *v1;
  v10 = v3;
  v12 = v5;
  v13 = v4;
  v15 = v6;
  v8 = v2;
  return TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v8);
}

uint64_t TTRRemindersBoardColumnWidthCalculator.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v32 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v31 = *(v0 + 56);
  v6 = *(v0 + 72);
  v29 = 0;
  v30 = 0xE000000000000000;
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = *(v0 + 24);
  v25 = v4;
  v26 = v5;
  v27 = *(v0 + 56);
  v28 = v6;
  v7 = TTRRemindersBoardColumnWidthCalculator.supportedWidthClasses()();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      v11 = *(v7 + v9);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_21DBFBEEC();
      v19 = v21;
      v20 = v22;
      v12 = 0x6D756964656DLL;
      if (v11 != 1)
      {
        v12 = 0x656772616CLL;
      }

      v13 = 0xE600000000000000;
      if (v11 != 1)
      {
        v13 = 0xE500000000000000;
      }

      if (v11)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x6C6C616D73;
      }

      if (v11)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v14, v15);

      MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC6FF00);
      v21 = v1;
      v22 = v2;
      v24 = v32;
      v23 = v3;
      v25 = v4;
      v26 = v5;
      v27 = v31;
      v28 = v6;
      v18 = v11;
      v21 = TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v18);
      v16 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v16);

      MEMORY[0x223D42AA0](0x6E6D756C6F63202CLL, 0xEF203A6874646957);
      v21 = v1;
      v22 = v2;
      v24 = v32;
      v23 = v3;
      v25 = v4;
      v26 = v5;
      v27 = v31;
      v28 = v6;
      v18 = v11;
      TTRRemindersBoardColumnWidthCalculator.numberOfColumns(for:)(&v18);
      v10 = sub_21DBFAA1C();
      MEMORY[0x223D42AA0](v10);

      MEMORY[0x223D42AA0](545005693, 0xE400000000000000);
      MEMORY[0x223D42AA0](v19, v20);

      ++v9;
      --v8;
    }

    while (v8);

    return v29;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_21D8FC550()
{
  result = qword_27CE63B98;
  if (!qword_27CE63B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersBoardColumnWidthCalculator.WidthClass, &type metadata for TTRRemindersBoardColumnWidthCalculator.WidthClass, v0, v1);
    atomic_store(result, &qword_27CE63B98);
  }

  return result;
}

unint64_t sub_21D8FC5A8()
{
  result = qword_27CE63BA0;
  if (!qword_27CE63BA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63BA8, &qword_21DC30EA0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE63BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersBoardColumnWidthCalculator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersBoardColumnWidthCalculator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

id TTRIReminderCompletionButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void TTRIReminderCompletionButton.icon.setter(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_21D637AC4(v5, v6);
  sub_21D637AE8(v5, v6);
  v7[0] = v5;
  v7[1] = v6;
  sub_21D8FD0A0(v7);
  sub_21D637AE8(v5, v6);
}

void TTRIReminderCompletionButton.scale.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = v2;
  if (v2 != v4)
  {
    [v1 setNeedsUpdateConfiguration];
  }
}

void TTRIReminderCompletionButton.prefersFadedAppearance.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
    swift_beginAccess();
    v7 = *&v1[v6];
    if (v7 >> 62)
    {
      v8 = 1;
    }

    else
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
    }

    if (v8 || (a1 & 1) != 0 || (v9 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (v1[v9] & 1) == 0))
    {
      v10 = &selRef_removeTarget_action_forControlEvents_;
    }

    else
    {
      v10 = &selRef_addTarget_action_forControlEvents_;
    }

    [v1 *v10];
    [v1 setNeedsUpdateConfiguration];
  }
}

uint64_t sub_21D8FC8EC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63BB0);
  v1 = __swift_project_value_buffer(v0, qword_27CE63BB0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIReminderCompletionButton.Scale.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRIReminderCompletionButton.Icon.AddIconStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *TTRIReminderCompletionButton.preferredSymbolConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIReminderCompletionButton.preferredSymbolConfiguration.setter(id a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      sub_21D0D8CF0(0, &unk_27CE65680, 0x277D755D0);
      a1 = a1;
      v6 = v4;
      v7 = sub_21DBFB63C();

      if (v7)
      {

        v4 = v6;
LABEL_10:

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v1 setNeedsUpdateConfiguration];

    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }
}

void (*TTRIReminderCompletionButton.preferredSymbolConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21D8FCCA0;
}

void sub_21D8FCCA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_21D0D8CF0(0, &unk_27CE65680, 0x277D755D0);
        v5 = v3;
        v9 = v8;
        v10 = sub_21DBFB63C();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    [*(v2 + 32) setNeedsUpdateConfiguration];

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  TTRIReminderCompletionButton.preferredSymbolConfiguration.setter(v3);
  v5 = *(v2 + 24);
LABEL_11:

LABEL_12:

  free(v2);
}

void TTRIReminderCompletionButton.scale.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_21D8FCDF0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v3 setNeedsUpdateConfiguration];
  }
}

void (*TTRIReminderCompletionButton.scale.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8FCEF4;
}

void sub_21D8FCEF4(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

unint64_t TTRIReminderCompletionButton.icon.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_21D637AC4(v4, v5);
}

unint64_t sub_21D8FCFA8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_21D637AC4(v4, v5);
}

void sub_21D8FD000(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_21D637AC4(v2, v3);
  sub_21D637AC4(v5, v6);
  sub_21D637AE8(v5, v6);
  v7[0] = v5;
  v7[1] = v6;
  sub_21D8FD0A0(v7);
  sub_21D637AE8(v5, v6);
}

void sub_21D8FD0A0(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v6 = *v4;
  v5 = *(v4 + 1);
  if (*v4 >> 1 == 0xFFFFFFFFLL)
  {
    sub_21D637AC4(*v4, *(v4 + 1));
    sub_21D637AC4(v2, v3);
    if (v2 >> 1 == 0xFFFFFFFF)
    {
      sub_21D637AE8(v6, v5);
      return;
    }
  }

  else
  {
    v14 = *v4;
    v15 = v5;
    if (v2 >> 1 != 0xFFFFFFFF)
    {
      v12 = v2;
      v13 = v3;
      sub_21D637AC4(v6, v5);
      sub_21D637AC4(v2, v3);
      sub_21D637AC4(v6, v5);
      v11 = _s15RemindersUICore28TTRIReminderCompletionButtonC4IconO2eeoiySbAE_AEtFZ_0(&v14, &v12);
      sub_21D637AFC(v12, v13);
      sub_21D637AFC(v14, v15);
      sub_21D637AE8(v6, v5);
      if (v11)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_21D637AC4(v6, v5);
    sub_21D637AC4(v2, v3);
    sub_21D637AC4(v6, v5);
    sub_21D637AFC(v6, v5);
  }

  sub_21D637AE8(v6, v5);
  sub_21D637AE8(v2, v3);
LABEL_7:
  if (*v4 >> 62)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
  }

  if (v7 || (v8 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance, swift_beginAccess(), (v1[v8] & 1) != 0) || (v9 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (v1[v9] & 1) == 0))
  {
    v10 = &selRef_removeTarget_action_forControlEvents_;
  }

  else
  {
    v10 = &selRef_addTarget_action_forControlEvents_;
  }

  [v1 *v10];
  [v1 setNeedsUpdateConfiguration];
}

void (*TTRIReminderCompletionButton.icon.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_21D637AC4(v7, v8);
  return sub_21D8FD330;
}

void sub_21D8FD330(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = v3[4];
  v6 = (v3[5] + v3[6]);
  v8 = *v6;
  v7 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  if (a2)
  {
    sub_21D637AC4(v4, v5);
    sub_21D637AC4(v8, v7);
    sub_21D637AE8(v8, v7);
    v11 = v8;
    v12 = v7;
    sub_21D8FD0A0(&v11);
    sub_21D637AE8(v8, v7);
    v9 = v3[3];
    v10 = v3[4];
  }

  else
  {
    sub_21D637AC4(v8, v7);
    sub_21D637AE8(v8, v7);
    v11 = v8;
    v12 = v7;
    sub_21D8FD0A0(&v11);
    v9 = v8;
    v10 = v7;
  }

  sub_21D637AE8(v9, v10);

  free(v3);
}

uint64_t TTRIReminderCompletionButton.prefersFadedAppearance.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*TTRIReminderCompletionButton.prefersFadedAppearance.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_21D8FD4E0;
}

void sub_21D8FD4E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    TTRIReminderCompletionButton.prefersFadedAppearance.setter(*(*a1 + 88));
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[9];
      v8 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
      swift_beginAccess();
      if ((v3 & 1) != 0 || ((v9 = *(v7 + v8), !(v9 >> 62)) ? (v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL) : (v10 = 1), v10 || (v11 = v2[9], v12 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (*(v11 + v12) & 1) == 0)))
      {
        v13 = &selRef_removeTarget_action_forControlEvents_;
      }

      else
      {
        v13 = &selRef_addTarget_action_forControlEvents_;
      }

      v14 = v2[9];
      [v14 *v13];
      [v14 setNeedsUpdateConfiguration];
    }
  }

  free(v2);
}

uint64_t TTRIReminderCompletionButton.togglesSelectionOnPress.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRIReminderCompletionButton.togglesSelectionOnPress.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
    swift_beginAccess();
    v7 = *&v1[v6];
    v8 = &selRef_removeTarget_action_forControlEvents_;
    if (v7 >> 62)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
    }

    if (!v9)
    {
      v10 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
      swift_beginAccess();
      if (!(v1[v10] & 1 | ((a1 & 1) == 0)))
      {
        v8 = &selRef_addTarget_action_forControlEvents_;
      }
    }

    [v1 *v8];
  }
}

void (*TTRIReminderCompletionButton.togglesSelectionOnPress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_21D8FD7BC;
}

void sub_21D8FD7BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    TTRIReminderCompletionButton.togglesSelectionOnPress.setter(*(*a1 + 88));
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = *(v2 + 80);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = *(v2 + 72);
      v8 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
      swift_beginAccess();
      v9 = *(v7 + v8);
      v10 = &selRef_removeTarget_action_forControlEvents_;
      if (v9 >> 62)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v9 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
      }

      if (!v11)
      {
        v12 = *(v2 + 72);
        v13 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
        swift_beginAccess();
        if (!(*(v12 + v13) & 1 | ((v3 & 1) == 0)))
        {
          v10 = &selRef_addTarget_action_forControlEvents_;
        }
      }

      [*(v2 + 72) *v10];
    }
  }

  free(v2);
}

id TTRIReminderCompletionButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon] = xmmword_21DC30F50;
  v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D8FD9A0();

  return v10;
}

id sub_21D8FD9A0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_21DBFB90C();
  v5 = sub_21DBFB95C();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_21DBFB98C();
  *(swift_allocObject() + 16) = ObjectType;
  sub_21DBFB99C();
  v6 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
  }

  if (v8 || (v9 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance, swift_beginAccess(), (v0[v9] & 1) != 0) || (v10 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress, swift_beginAccess(), (v0[v10] & 1) == 0))
  {
    v11 = &selRef_removeTarget_action_forControlEvents_;
  }

  else
  {
    v11 = &selRef_addTarget_action_forControlEvents_;
  }

  return [v0 *v11];
}

id TTRIReminderCompletionButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

CGSize __swiftcall TTRIReminderCompletionButton.sizeThatFits(_:)(CGSize a1)
{
  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage];
  }

  else
  {
    v4 = v1;
  }

  v5 = &selRef_intrinsicContentSize;
  if (!v3)
  {
    v5 = &selRef_size;
  }

  [v4 *v5];
  result.height = v7;
  result.width = v6;
  return result;
}

Swift::Void __swiftcall TTRIReminderCompletionButton.updateConfiguration()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_updateConfiguration);
  sub_21D8FDC88();
}

uint64_t sub_21D8FDC88()
{
  v1 = v0;
  v2 = sub_21DBF9D0C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v70[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A658, &unk_21DC0FE60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v70[-v6];
  v83 = sub_21DBF88CC();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v70[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v70[-v16];
  v18 = sub_21DBFB95C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v23 = v1[v22];
  v78 = v14;
  v72 = v4;
  v76 = v7;
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 0;
      v25 = 2;
    }

    else
    {
      v24 = 1;
      v25 = 3;
    }
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  v80 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = &v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v28 = *v27;
  v29 = *v27 >> 1 == 0xFFFFFFFF;
  v81 = v18;
  v77 = v26;
  if (v29)
  {
    LOBYTE(v28) = 0;
    v79 = 0;
    v80 = 0;
    v30 = 0;
    v74 = 0;
    v31 = 1.0;
    v71 = 1;
    goto LABEL_40;
  }

  if (!(v28 >> 62))
  {
    v35 = v27[1];
    sub_21D637AD8(v28, v35);
    if (v28)
    {
      if (qword_27CE56808 != -1)
      {
        swift_once();
      }

      v38 = &qword_27CE5C530;
    }

    else
    {
      if (qword_280D16890 != -1)
      {
        swift_once();
      }

      v38 = &qword_280D16898;
    }

    v74 = *v38;
    v42 = sub_21D8FECF4(v26, v1, v80);
    v43 = v42;
    v80 = v42;
    if (v28)
    {
      v44 = v42;
    }

    else
    {
      v45 = objc_opt_self();
      v46 = v43;
      v47 = v45;
      v48 = v46;
      v49 = [v47 tertiaryLabelColor];
      sub_21D637AE8(v28, v35);
      v35 = v49;
    }

    v50 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance;
    swift_beginAccess();
    v30 = 0;
    v51 = v1[v50];
    v71 = v28 ^ 1;
    if (v51)
    {
      v31 = 0.4;
    }

    else
    {
      v31 = 1.0;
    }

    v52 = &v85;
    goto LABEL_38;
  }

  if (v28 >> 62 != 1)
  {
    if (qword_280D16868 != -1)
    {
      swift_once();
    }

    v74 = qword_280D16870;
    v39 = sub_21D8FECF4(v26, v1, v80);
    v40 = objc_opt_self();
    v80 = v39;
    v35 = [v40 tertiaryLabelColor];
    LOBYTE(v28) = 0;
    v30 = 0;
    v71 = 1;
    v31 = 1.0;
    v79 = v35;
    goto LABEL_39;
  }

  if ((v28 & 1) == 0)
  {
    if (qword_27CE56810 != -1)
    {
      swift_once();
    }

    v74 = qword_27CE5C538;
    v41 = sub_21D8FECF4(v26, v1, v80);
    v35 = sub_21D8FEE58();

    LOBYTE(v28) = 0;
    v79 = 0;
    v30 = 0;
    v71 = 1;
    v31 = 1.0;
    goto LABEL_37;
  }

  if (qword_27CE56818 != -1)
  {
    swift_once();
  }

  v32 = qword_27CE5C540;
  v33 = objc_opt_self();
  v28 = v32;
  v79 = [v33 tintColor];
  v34 = v79;
  v35 = sub_21D8FECF4(v26, v1, v80);
  v31 = 1.0;
  v74 = v28;
  if (!v24)
  {
    LOBYTE(v28) = 0;
    v30 = 0;
    v71 = 1;
LABEL_37:
    v52 = &v86;
LABEL_38:
    *(v52 - 32) = v35;
    goto LABEL_39;
  }

  v36 = [objc_opt_self() configurationWithScale_];
  v37 = [v35 configurationByApplyingConfiguration_];

  v30 = [v28 imageWithSymbolConfiguration_];
  LOBYTE(v28) = 0;
  v71 = 1;
  v80 = v37;
  v35 = v37;
LABEL_39:
  v53 = v35;
LABEL_40:
  sub_21DBFB97C();
  v54 = *(v19 + 48);
  v55 = v81;
  if (v54(v17, 1, v81) == 1)
  {
    sub_21DBFB90C();
    if (v54(v17, 1, v55) != 1)
    {
      sub_21D3032C8(v17);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v55);
  }

  v73 = v74;
  sub_21DBFB8FC();
  sub_21DBFB78C();
  sub_21DBFB89C();
  sub_21DBFB82C();
  sub_21DBF889C();
  v56 = [objc_opt_self() clearColor];
  sub_21DBF883C();
  sub_21DBF885C();
  v57 = v76;
  sub_21DBF8BAC();
  v58 = sub_21DBF8B9C();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  sub_21DBF888C();
  (*(v82 + 16))(v75, v11, v83);
  sub_21DBFB7BC();
  if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
    sub_21D0D8CF0(0, &qword_27CE63C08, 0x277D75AF0);
    v84[3] = sub_21DBF9CEC();
    v84[4] = sub_21D8FFCB0();
    __swift_allocate_boxed_opaque_existential_0(v84);
    sub_21DBF9CDC();
    sub_21DBF9CFC();
    sub_21DBFB50C();
LABEL_49:
    sub_21DBFB8BC();
    goto LABEL_52;
  }

  v59 = sub_21DBFB8AC();
  if (!v59)
  {
    goto LABEL_49;
  }

  v60 = v59;
  if ((v71 & 1) == 0)
  {
    v61 = v59;
  }

  sub_21DBFB8BC();

LABEL_52:
  v62 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage;
  v63 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage];
  if (!v63)
  {
    if (!v30)
    {
      v65 = 0;
      goto LABEL_59;
    }

    v63 = 0;
    goto LABEL_58;
  }

  if (!v30)
  {
LABEL_58:
    *&v1[v62] = v30;
    v65 = v30;

    [v1 invalidateIntrinsicContentSize];
    goto LABEL_59;
  }

  sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
  v64 = v63;
  v65 = v30;
  v66 = sub_21DBFB63C();

  if ((v66 & 1) == 0)
  {
    v63 = *&v1[v62];
    goto LABEL_58;
  }

LABEL_59:
  v67 = v78;
  v68 = v81;
  (*(v19 + 16))(v78, v21, v81);
  (*(v19 + 56))(v67, 0, 1, v68);
  sub_21DBFB98C();
  [v1 setSelected_];
  [v1 setAlpha_];

  (*(v82 + 8))(v11, v83);
  (*(v19 + 8))(v21, v68);
}

uint64_t TTRIReminderCompletionButton.accessibilityUserInputLabels.getter()
{
  v1 = [v0 isSelected];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  if (v1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  *(v2 + 32) = sub_21DBF516C();
  *(v2 + 40) = v3;
  return v2;
}

void sub_21D8FEAE4(void *a1, char a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v11[4] = sub_21D8FFD20;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D0D74FC;
  v11[3] = &block_descriptor_33_1;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = a1;

  [v6 animateWithDuration:v8 animations:0.3];
  _Block_release(v8);
}

void sub_21D8FEBF4(uint64_t a1, char a2, void *a3)
{
  v4 = (a2 & 1) == 0;
  v5 = (a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = a3;
  v8 = a3;
  sub_21D637AC4(v6, v7);
  sub_21D637AE8(v6, v7);
  v9[0] = v6;
  v9[1] = v7;
  sub_21D8FD0A0(v9);
  sub_21D637AE8(v6, v7);
}

id sub_21D8FECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v7 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration;
    swift_beginAccess();
    v9 = *(a2 + v7);
    if (v9)
    {
      v10 = *(a2 + v7);
    }

    else
    {
      v10 = [objc_opt_self() configurationWithTextStyle_];
      v9 = 0;
    }

    v11 = v9;
    v12 = sub_21D8FEDE8(a3);

    swift_beginAccess();
    v13 = *v4;
    *v4 = v12;
    v5 = v12;

    v3 = 0;
  }

  v14 = v3;
  return v5;
}

id sub_21D8FEDE8(uint64_t a1)
{
  swift_getObjectType();
  v3 = [swift_getObjCClassFromMetadata() configurationWithScale_];
  v4 = [v1 configurationByApplyingConfiguration_];

  return v4;
}

id sub_21D8FEE58()
{
  swift_getObjectType();
  v1 = [swift_getObjCClassFromMetadata() configurationPreferringMulticolor];
  v2 = [v0 configurationByApplyingConfiguration_];

  return v2;
}

void sub_21D8FEEC0()
{
  sub_21D637AE8(*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon), *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon + 8));
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage);
}

id TTRIReminderCompletionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s15RemindersUICore28TTRIReminderCompletionButtonC4IconO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      if (v4 >> 62 == 1)
      {
        sub_21D637AFC(*a1, v3);
        sub_21D637AFC(v4, v5);
        return ((v4 ^ v2) & 1) == 0;
      }
    }

    else if (v4 >> 62 == 2 && v4 == 0x8000000000000000 && v5 == 0)
    {
      sub_21D637AFC(*a1, v3);
      sub_21D637AFC(0x8000000000000000, 0);
      return 1;
    }

    goto LABEL_18;
  }

  if (v4 >> 62)
  {
    v10 = v3;
    goto LABEL_18;
  }

  if ((v4 ^ v2))
  {
    sub_21D637AD8(*a1, v3);
LABEL_18:
    v11 = v4;
    v12 = v5;
LABEL_19:
    sub_21D637AD8(v11, v12);
    sub_21D637AFC(v2, v3);
LABEL_20:
    sub_21D637AFC(v4, v5);
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      sub_21D637AD8(*a2, 0);
      sub_21D637AD8(v2, v3);
      v11 = v4;
      v12 = 0;
      goto LABEL_19;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    sub_21D637AD8(v4, v5);
    sub_21D637AD8(v2, v3);
    sub_21D637AD8(v2, v3);
    sub_21D637AD8(v4, v5);
    v13 = sub_21DBFB63C();
    sub_21D637AFC(v2, v3);
    sub_21D637AFC(v4, v5);
    sub_21D637AFC(v2, v3);
    sub_21D637AFC(v4, v5);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_21D637AD8(*a2, *(a2 + 8));
    sub_21D637AD8(v2, 0);
    sub_21D637AD8(v2, 0);
    sub_21D637AD8(v4, v5);
    sub_21D637AFC(v2, 0);
    sub_21D637AFC(v4, v5);
    if (v5)
    {
      goto LABEL_20;
    }
  }

  return 1;
}

void _s15RemindersUICore28TTRIReminderCompletionButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_preferredSymbolConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon) = xmmword_21DC30F50;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_prefersFadedAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_togglesSelectionOnPress) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage) = 0;
  if (qword_27CE56E58 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE63BB0);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  v4 = sub_21D17716C(v2);
  sub_21DAEAB00("init(coder:) has not been implemented", 37, 2, v3, v4);
  __break(1u);
}

unint64_t sub_21D8FF2A8()
{
  result = qword_27CE63BF8;
  if (!qword_27CE63BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIReminderCompletionButton.Scale, &type metadata for TTRIReminderCompletionButton.Scale, v0, v1);
    atomic_store(result, &qword_27CE63BF8);
  }

  return result;
}

unint64_t sub_21D8FF300()
{
  result = qword_27CE63C00;
  if (!qword_27CE63C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIReminderCompletionButton.Icon.AddIconStyle, &type metadata for TTRIReminderCompletionButton.Icon.AddIconStyle, v0, v1);
    atomic_store(result, &qword_27CE63C00);
  }

  return result;
}

unint64_t *assignWithCopy for TTRIReminderCompletionButton.Icon(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D637AD8(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_21D637AFC(v5, v6);
  return a1;
}

unint64_t *assignWithTake for TTRIReminderCompletionButton.Icon(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_21D637AFC(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderCompletionButton.Icon(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIReminderCompletionButton.Icon(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D8FF4A8(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 2;
  }
}

void *sub_21D8FF4D8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 1 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 1;
  }

  return result;
}

char *sub_21D8FF528(void *a1)
{
  v2 = sub_21DBF851C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65BF0, &qword_21DC310E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_21DBF862C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - v14);
  type metadata accessor for TTRIReminderCompletionButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v17 = result;
    v38 = v3;
    v18 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon;
    swift_beginAccess();
    v19 = *&v17[v18];
    if (v19 >> 1 == 0xFFFFFFFF)
    {
      return 0;
    }

    else
    {
      if (v19 >> 62 || (v19 & 1) == 0)
      {
        v26 = objc_allocWithZone(MEMORY[0x277D75B90]);
        v27 = a1;
        *v15 = [v26 initWithView_];
        (*(v10 + 104))(v15, *MEMORY[0x277D74B08], v9);
        [v17 frame];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        [v17 frame];
        Height = CGRectGetHeight(v39);
        *v5 = v29;
        *(v5 + 1) = v31;
        *(v5 + 2) = v33;
        *(v5 + 3) = v35;
        *(v5 + 4) = Height * 0.5;
        v37 = v38;
        (*(v38 + 104))(v5, *MEMORY[0x277D74A60], v2);
        sub_21D0D8CF0(0, &qword_27CE63C18, 0x277D75890);
        (*(v10 + 16))(v12, v15, v9);
        (*(v37 + 16))(v8, v5, v2);
        (*(v37 + 56))(v8, 0, 1, v2);
        v25 = sub_21DBFAF6C();

        (*(v37 + 8))(v5, v2);
      }

      else
      {
        v20 = objc_allocWithZone(MEMORY[0x277D758D8]);
        v21 = a1;
        v22 = [v20 init];
        v23 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v17 parameters:v22];

        *v15 = v23;
        (*(v10 + 104))(v15, *MEMORY[0x277D74B00], v9);
        sub_21D0D8CF0(0, &qword_27CE63C18, 0x277D75890);
        (*(v10 + 16))(v12, v15, v9);
        (*(v38 + 56))(v8, 1, 1, v2);
        v24 = v23;
        v25 = sub_21DBFAF6C();
      }

      (*(v10 + 8))(v15, v9);
      return v25;
    }
  }

  return result;
}

void sub_21D8FF9DC()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
  v2 = swift_beginAccess();
  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*v1 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL;
  }

  if (!v4)
  {
    v5 = v1[1];
    MEMORY[0x28223BE20](v2);
    v12[2] = v0;
    v13 = v6;
    v14 = v5;
    isEscapingClosureAtFileLocation = objc_opt_self();
    if (v3)
    {
      v0 = swift_allocObject();
      v0[2] = sub_21D8FFC90;
      v0[3] = v12;
      v19 = sub_21D0E6070;
      v20 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v17 = sub_21D0E6204;
      v18 = &block_descriptor_26_1;
      v8 = _Block_copy(&aBlock);
      sub_21D637AC4(v3, v5);

      [isEscapingClosureAtFileLocation performWithoutAnimation_];
      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      sub_21D637AE8(v3, v5);
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v5;
    v19 = sub_21D8FFCA0;
    v20 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21D0D74FC;
    v18 = &block_descriptor_112;
    v10 = _Block_copy(&aBlock);
    sub_21D637AC4(v3, v5);
    sub_21D637AC4(v3, v5);
    v11 = v0;

    [isEscapingClosureAtFileLocation animateWithDuration:v10 animations:0.3];
    _Block_release(v10);
    sub_21D637AE8(v3, v5);
  }
}

unint64_t sub_21D8FFCB0()
{
  result = qword_27CE63C10;
  if (!qword_27CE63C10)
  {
    v3 = sub_21DBF9CEC();
    result = swift_getWitnessTable(MEMORY[0x277CE1590], v3, v0, v1);
    atomic_store(result, &qword_27CE63C10);
  }

  return result;
}

id static CNContact.unknownContact(displayName:firstName:lastName:emailAddress:phoneNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  if (a8)
  {
    sub_21DBFA16C();
    v13 = sub_21DBFA12C();
    v14 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v15 = sub_21DBFA12C();

    v16 = [v14 initWithLabel:v15 value:v13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC09CF0;
    *(v17 + 32) = v16;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0, &qword_21DC31BC0);
    v19 = sub_21DBFA5DC();

    [v12 setEmailAddresses_];
  }

  if (a10)
  {
    v20 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v21 = sub_21DBFA12C();
    v22 = [v20 initWithStringValue_];

    sub_21DBFA16C();
    v23 = objc_allocWithZone(MEMORY[0x277CBDB20]);
    v24 = v22;
    v25 = sub_21DBFA12C();

    v26 = [v23 initWithLabel:v25 value:v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21DC09CF0;
    *(v27 + 32) = v26;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0, &qword_21DC31BC0);
    v29 = sub_21DBFA5DC();

    [v12 setPhoneNumbers_];
  }

  if (a4 || a2)
  {
    v30 = sub_21DBFA12C();
    [v12 setGivenName_];
  }

  if (a6)
  {
    v31 = sub_21DBFA12C();
    [v12 setFamilyName_];
  }

  return v12;
}

double CNContact.urlForRevealingInContactsApp.getter()
{
  sub_21DBFBEEC();

  strcpy(v6, "addressbook://");
  HIBYTE(v6[1]) = -18;
  v1 = [v0 identifier];
  v2 = sub_21DBFA16C();
  v4 = v3;

  MEMORY[0x223D42AA0](v2, v4);

  sub_21DBF54BC();

  return result;
}

id _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(void *a1)
{
  v24 = a1[1];
  v25 = a1[3];
  v1 = a1[5];
  v2 = a1[7];
  v3 = a1[9];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v5 = 0x277CBD000;
  v6 = 0x1FAE38000;
  if (v2)
  {
    v7 = *MEMORY[0x277CBD940];
    v8 = sub_21DBFA12C();
    v9 = [objc_allocWithZone(MEMORY[0x277CBDB20]) initWithLabel:v7 value:v8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC09CF0;
    *(v10 + 32) = v9;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0, &qword_21DC31BC0);
    v12 = sub_21DBFA5DC();

    [v4 setEmailAddresses_];

    v6 = 0x1FAE38000uLL;
    v5 = 0x277CBD000uLL;
  }

  if (v3)
  {
    v13 = v6;
    v14 = objc_allocWithZone(MEMORY[0x277CBDB70]);
    v15 = sub_21DBFA12C();
    v16 = [v14 initWithStringValue_];

    v17 = [objc_allocWithZone(*(v5 + 2848)) (v13 + 3576)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21DC09CF0;
    *(v18 + 32) = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0, &qword_21DC31BC0);
    v20 = sub_21DBFA5DC();

    [v4 setPhoneNumbers_];
  }

  if (v25 || v24)
  {
    v21 = sub_21DBFA12C();
    [v4 setGivenName_];
  }

  if (v1)
  {
    v22 = sub_21DBFA12C();
    [v4 setFamilyName_];
  }

  return v4;
}

uint64_t sub_21D9003F8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76810] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D76448] object:0];

  return v0;
}

uint64_t sub_21D9004B4()
{
  sub_21D9003F8();

  return swift_deallocClassInstance();
}

id sub_21D9004E8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_21D181DFC(), (v4 & 1) != 0))
  {
    v9 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    return v9;
  }

  else
  {
    swift_endAccess();
    v6 = [objc_opt_self() preferredFontForTextStyle_];
    swift_beginAccess();
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_21D476BC0(v7, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v10;
    swift_endAccess();
    return v7;
  }
}

id sub_21D900614(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16) || (v5 = sub_21D181DFC(), (v6 & 1) == 0))
  {
    swift_endAccess();
    if (a1 <= 4u)
    {
      if (a1 <= 1u)
      {
        if (a1)
        {
          v16 = *MEMORY[0x277D76918];
          v23 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
          if (v23)
          {
            v24 = v23;
            v19 = [v23 fontDescriptorWithDesign_];

            if (v19)
            {
              v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
              if (v20)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_48;
        }

        v11 = [objc_opt_self() preferredFontForTextStyle_];
      }

      else
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            v8 = MEMORY[0x277D76918];
LABEL_23:
            v9 = *v8;
            v10 = MEMORY[0x277D74420];
            goto LABEL_24;
          }

          v16 = *MEMORY[0x277D76968];
          v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 fontDescriptorWithDesign_];

            if (v19)
            {
              v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
              if (v20)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
            v19 = 0;
          }

LABEL_48:
          v20 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_49:
          v11 = v20;

          goto LABEL_50;
        }

        v12 = objc_opt_self();
        result = [v12 _preferredFontForTextStyle_variant_];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;
        v13 = [result fontDescriptor];
        v14 = [v13 fontDescriptorWithDesign_];

        if (v14)
        {
          v15 = [v12 fontWithDescriptor:v14 size:0.0];

          v11 = v15;
        }
      }

LABEL_50:
      swift_beginAccess();
      v27 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      sub_21D476BC0(v27, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 16) = v30;
      swift_endAccess();
      return v27;
    }

    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v8 = MEMORY[0x277D76968];
        goto LABEL_23;
      }

      v16 = *MEMORY[0x277D769D0];
      v25 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
      if (v25)
      {
        v26 = v25;
        v19 = [v25 fontDescriptorWithDesign_];

        if (v19)
        {
          v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
          if (v20)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      if (a1 == 7)
      {
        v8 = MEMORY[0x277D769D0];
        goto LABEL_23;
      }

      if (a1 == 8)
      {
        v9 = *MEMORY[0x277D769D0];
        v10 = MEMORY[0x277D74410];
LABEL_24:
        v11 = sub_21D10FA9C(v9, *v10, 0, 0);
        goto LABEL_50;
      }

      v16 = *MEMORY[0x277D76988];
      v21 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:0];
      if (v21)
      {
        v22 = v21;
        v19 = [v21 fontDescriptorWithDesign_];

        if (v19)
        {
          v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
          if (v20)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_48;
  }

  v29 = *(*(v4 + 56) + 8 * v5);
  swift_endAccess();

  return v29;
}

uint64_t sub_21D900BB4()
{
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 16);
    *(v0 + 16) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63C20, &qword_21DC31180);
    sub_21DBFC1EC();
    *(v0 + 16) = v2;
  }

  return swift_endAccess();
}

uint64_t sub_21D900C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21DBF4D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF4D1C();

  sub_21D900BB4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21D900D74()
{
  result = qword_280D1AE30;
  if (!qword_280D1AE30)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for TTRIFontCache.cachedFontKey, v0, v1);
    atomic_store(result, &qword_280D1AE30);
  }

  return result;
}

uint64_t UIScreen.landscapeHorizontalSizeClass.getter()
{
  [objc_msgSend(v0 fixedCoordinateSpace)];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_unknownObjectRelease();
  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  v9.n128_f64[0] = CGRectGetHeight(v12);

  return MEMORY[0x2821DEB40](v9);
}

uint64_t UIDragItem.localObject<A>(ofType:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_21D90105C();
  if (*(v6 + 16) && (v7 = sub_21D17EA0C(a1), (v8 & 1) != 0))
  {
    sub_21D0CEB98(*(v6 + 56) + 32 * v7, v11);
  }

  else
  {

    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

void UIDragItem.setLocalObject(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21D181CE0(a2, v11);
  sub_21D0DB414(a1, &v9);
  v8 = sub_21D90105C();
  if (v10)
  {
    sub_21D0CF2E8(&v9, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D478860(v7, v11, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_21D1A8418(&v9);
    sub_21D874094(v11, v7);
    sub_21D1A8418(v7);
  }

  sub_21D181D3C(v11);
  v6 = sub_21DBF9E5C();

  [v3 setLocalObject_];
}

uint64_t sub_21D90105C()
{
  if ([v0 localObject])
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63C28, &qword_21DC31190);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_21D1A8418(v5);
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_21D90111C(uint64_t a1, int a2)
{
  v3 = v2;
  v19 = a2;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CE468();
  *v11 = sub_21DBFB12C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_21DBF9DAC();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    (*(v6 + 16))(&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
    *(v15 + v14 + v7) = v19 & 1;
    *(v15 + ((v14 + v7) & 0xFFFFFFFFFFFFFFF8) + 8) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7C0, &qword_21DC10668);
    swift_allocObject();
    v16 = v3;
    v20 = sub_21DBF911C();
    sub_21D90201C();
    v17 = sub_21DBF91CC();

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D9013B8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63C30);
  v1 = __swift_project_value_buffer(v0, qword_27CE63C30);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D901480(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = v11;
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v47 = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CCAB70]);

  v17 = sub_21DBF53FC();
  v48 = [v16 initWithURL_];

  if (qword_27CE56E60 != -1)
  {
    swift_once();
  }

  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_27CE63C30);
  v19 = *(v10 + 16);
  v19(v14, a3, v9);
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAE9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = a3;
    v23 = v22;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v23 = 136315394;
    v45 = v19;
    v24 = a4;
    if (a4)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (a4)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_21D0CDFB4(v25, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_21DBF533C();
    v30 = v29;
    (*(v10 + 8))(v14, v9);
    v31 = sub_21D0CDFB4(v28, v30, aBlock);

    *(v23 + 14) = v31;
    a4 = v24;
    v19 = v45;
    _os_log_impl(&dword_21D0C9000, v20, v21, "URL metadata fetch setting isNonAppInitiated=%s {url: %s}", v23, 0x16u);
    v32 = v44;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v32, -1, -1);
    v33 = v23;
    a3 = v46;
    MEMORY[0x223D46520](v33, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v34 = a4 & 1;
  v35 = v48;
  [v48 _setNonAppInitiated_];
  v36 = v50;
  v19(v50, a3, v9);
  v37 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v10 + 32))(v39 + v37, v36, v9);
  v40 = (v39 + v38);
  v41 = v47;
  *v40 = sub_21D22D130;
  v40[1] = v41;
  aBlock[4] = sub_21D901F6C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D55C8BC;
  aBlock[3] = &block_descriptor_113;
  v42 = _Block_copy(aBlock);
  v43 = v35;

  [v51 startFetchingMetadataForRequest:v43 completionHandler:v42];
  _Block_release(v42);
}

void sub_21D901900(void *a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  if (a2)
  {
    v17 = a2;
    if (qword_27CE56E60 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE63C30);
    (*(v11 + 16))(v16, a3, v10);
    v19 = a2;
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = a4;
      v60 = v57;
      *v22 = 136315394;
      swift_getErrorValue();
      v23 = sub_21DBFC74C();
      v25 = sub_21D0CDFB4(v23, v24, &v60);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_21DBF533C();
      v28 = v27;
      (*(v11 + 8))(v16, v10);
      v29 = sub_21D0CDFB4(v26, v28, &v60);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_21D0C9000, v20, v21, "URL metadata fetch failed {error: %s, url: %s}", v22, 0x16u);
      v30 = v57;
      swift_arrayDestroy();
      a4 = v58;
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v46 = a2;
    (a4)(a2, 1);
  }

  else
  {
    v59 = a5;
    if (a1)
    {
      v31 = qword_27CE56E60;
      v32 = a1;
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_27CE63C30);
      v34 = v32;
      v35 = sub_21DBF84AC();
      v36 = sub_21DBFAE9C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v60 = v38;
        *v37 = 136315138;
        v39 = [v34 description];
        v40 = sub_21DBFA16C();
        v41 = a4;
        v43 = v42;

        v44 = sub_21D0CDFB4(v40, v43, &v60);
        a4 = v41;

        *(v37 + 4) = v44;
        _os_log_impl(&dword_21D0C9000, v35, v36, "URL metadata fetch finished {metadata %s}", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x223D46520](v38, -1, -1);
        MEMORY[0x223D46520](v37, -1, -1);
      }

      v58 = v34;
      (a4)(a1, 0);

      v45 = v58;
    }

    else
    {
      if (qword_27CE56E60 != -1)
      {
        swift_once();
      }

      v47 = sub_21DBF84BC();
      __swift_project_value_buffer(v47, qword_27CE63C30);
      (*(v11 + 16))(v13, a3, v10);
      v48 = sub_21DBF84AC();
      v49 = sub_21DBFAECC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v50 = 136315138;
        v52 = sub_21DBF533C();
        v54 = v53;
        (*(v11 + 8))(v13, v10);
        v55 = sub_21D0CDFB4(v52, v54, &v60);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_21D0C9000, v48, v49, "URL metadata fetch failed with no response or error {url: %s}", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x223D46520](v51, -1, -1);
        MEMORY[0x223D46520](v50, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v13, v10);
      }

      v56 = [objc_opt_self() unexpectedError];
      (a4)();
    }
  }
}

void sub_21D901F6C(void *a1, void *a2)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_21D901900(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_21D90201C()
{
  result = qword_27CE5A850;
  if (!qword_27CE5A850)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A7C0, &qword_21DC10668);
    result = swift_getWitnessTable(MEMORY[0x277CBCEB0], v3, v0, v1);
    atomic_store(result, &qword_27CE5A850);
  }

  return result;
}

uint64_t (*sub_21D902080(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D2424CC;
}

void *TTRRemindersListEditableSectionNameInteractor.__allocating_init(store:undoManager:committer:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[4] = a1;
  v6[5] = a2;
  sub_21D0D15E0(a3, (v6 + 6));
  return v6;
}

void *TTRRemindersListEditableSectionNameInteractor.init(store:undoManager:committer:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = a1;
  v3[5] = a2;
  sub_21D0D15E0(a3, (v3 + 6));
  return v3;
}

void sub_21D9021D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  v7 = a3;
  v8 = v6;
  TTRSection.init(with:store:)(v7, v8, &v31);
  v9 = v31;
  if (v32 > 1u)
  {
    if (v32 != 2)
    {
      return;
    }

    sub_21D0D32E4(v3 + 48, &v31);
    v18 = v33;
    v29 = v34;
    v30 = __swift_project_boxed_opaque_existential_1(&v31, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21DC09CF0;
    *(v19 + 32) = v9;
    v20 = *(v3 + 40);
    v21 = type metadata accessor for TTRTemplateSectionEditor();
    MEMORY[0x28223BE20](v21);
    v27 = a1;
    v28 = a2;
    sub_21D1B1ED4(v9, 2);
    v15 = v20;
    TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v21, v19, v8, v20, sub_21D7CF698, v26, 0, 0, v18, v21, v29, &protocol witness table for TTRTemplateSectionEditor);
    v16 = v9;
    v17 = 2;
  }

  else
  {
    v10 = v3 + 48;
    if (v32)
    {
      sub_21D0D32E4(v10, &v31);
      v22 = v33;
      v29 = v34;
      v30 = __swift_project_boxed_opaque_existential_1(&v31, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21DC09CF0;
      *(v23 + 32) = v9;
      v24 = *(v3 + 40);
      v25 = type metadata accessor for TTRSmartListSectionEditor();
      MEMORY[0x28223BE20](v25);
      v27 = a1;
      v28 = a2;
      sub_21D1B1ED4(v9, 1);
      v15 = v24;
      TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v25, v23, v8, v24, sub_21D902584, v26, 0, 0, v22, v25, v29, &protocol witness table for TTRSmartListSectionEditor);
      v16 = v9;
      v17 = 1;
    }

    else
    {
      sub_21D0D32E4(v10, &v31);
      v11 = v33;
      v29 = v34;
      v30 = __swift_project_boxed_opaque_existential_1(&v31, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21DC09CF0;
      *(v12 + 32) = v9;
      v13 = *(v3 + 40);
      v14 = type metadata accessor for TTRListSectionEditor();
      MEMORY[0x28223BE20](v14);
      v27 = a1;
      v28 = a2;
      sub_21D1B1ED4(v9, 0);
      v15 = v13;
      TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(v14, v12, v8, v13, sub_21D18387C, v26, 0, 0, v11, v14, v29, &protocol witness table for TTRListSectionEditor);
      v16 = v9;
      v17 = 0;
    }
  }

  sub_21D157864(v16, v17);

  __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t TTRRemindersListEditableSectionNameInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  return v0;
}

uint64_t TTRRemindersListEditableSectionNameInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t (*sub_21D902638(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24BEC0;
}

uint64_t sub_21D902800()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63C48);
  v1 = __swift_project_value_buffer(v0, qword_27CE63C48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSECreateRemindersModelChangeDetails.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

double TTRSECreateRemindersInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRSECreateRemindersInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

void *TTRSECreateRemindersInteractor.__allocating_init(store:undoManager:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[6] = 0;
  v4[7] = 0;
  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void *TTRSECreateRemindersInteractor.init(store:undoManager:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[6] = 0;
  v2[7] = 0;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

uint64_t TTRSECreateRemindersInteractor.start(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21DBFA84C();

  v8 = sub_21DBFA83C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = a1;
  sub_21D1B5178(0, 0, v6, &unk_21DC312A0, v9);
}

uint64_t sub_21D902C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_21DBFA84C();
  v5[12] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_21D902CF0, v7, v6);
}

uint64_t sub_21D902CF0()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v1 = sub_21DA52758(1, 2, 480.0);
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_21D902DF8;
  v3 = v0[11];

  return sub_21D9033E0(v3, v1, 2, sub_21D903274, 0);
}

uint64_t sub_21D902DF8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D902F14;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D38F86C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D902F14()
{
  v26 = v0;
  v1 = v0[15];

  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE63C48);
  v4 = v2;
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRSECreateRemindersInteractor: failed to start {error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v12 = v0[17];
  v0[8] = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  if (swift_dynamicCast())
  {
    v14 = 0;
  }

  else
  {
    v14 = v0[17];
    v15 = v14;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v0[17];
  if (Strong)
  {
    v18 = *(v0[10] + 24);
    ObjectType = swift_getObjectType();
    v25 = v14;
    v20 = *(v18 + 24);
    v21 = v14;
    v20(&v25, ObjectType, v18);
    swift_unknownObjectRelease();

    v22 = v25;
  }

  else
  {

    v22 = v17;
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_21D9031B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D902C58(a1, v4, v5, v7, v6);
}

void sub_21D903274(void *a1)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v6 = qword_280D1AA18;
  sub_21DA5392C(a1, 1);
  v7 = *(v6 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v7)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v8 = sub_21DBF55BC();
    (*(v3 + 8))(v5, v2);
    v9 = sub_21DBFA12C();
    [v7 setValue:v8 forKey:v9];
  }
}

uint64_t sub_21D9033E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 368) = a5;
  *(v6 + 376) = v5;
  *(v6 + 592) = a3;
  *(v6 + 352) = a2;
  *(v6 + 360) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  *(v6 + 384) = swift_task_alloc();
  v7 = sub_21DBF54CC();
  *(v6 + 392) = v7;
  *(v6 + 400) = *(v7 - 8);
  *(v6 + 408) = swift_task_alloc();
  v8 = sub_21DBF793C();
  *(v6 + 416) = v8;
  *(v6 + 424) = *(v8 - 8);
  *(v6 + 432) = swift_task_alloc();
  v9 = sub_21DBF604C();
  *(v6 + 440) = v9;
  *(v6 + 448) = *(v9 - 8);
  *(v6 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0, &qword_21DC1ED40);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = type metadata accessor for TTRExtensionContextExtractorResult(0);
  *(v6 + 496) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v6 + 504) = v10;
  *(v6 + 512) = sub_21DBFA84C();
  *(v6 + 520) = sub_21DBFA83C();
  v11 = swift_task_alloc();
  *(v6 + 528) = v11;
  *v11 = v6;
  v11[1] = sub_21D903688;

  return MEMORY[0x2821A7870](v10);
}

uint64_t sub_21D903688()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = sub_21DBFA7CC();
  if (v0)
  {
    v5 = sub_21D904DFC;
  }

  else
  {
    *(v2 + 544) = v3;
    *(v2 + 552) = v4;
    v5 = sub_21D9037F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D9037F0()
{
  v21 = v0;
  v1 = *(v0 + 592);
  if (v1 == 2)
  {
    v2 = *(v0 + 480);
    sub_21D0D3954(*(v0 + 504) + *(*(v0 + 488) + 60), v2, &qword_27CE5EDE0, &qword_21DC1ED40);
    v3 = type metadata accessor for TTRSERecipeCard(0);
    LOBYTE(v1) = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
    sub_21D0CF7E0(v2, &qword_27CE5EDE0, &qword_21DC1ED40);
  }

  v4 = v1 & 1;
  *(v0 + 593) = v1 & 1;
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  TTRExtensionContextExtractorResult.containsImages.getter();
  v8 = v7 & 1;
  type metadata accessor for TTRQuickEntryReminderCreationInteractorCapability();
  v9 = *(v5 + 32);
  *(v0 + 560) = v9;
  v16 = v6;
  v17 = v8;
  v18 = v4;
  v19 = 1;
  v20 = 1;
  v10 = v6;
  v11 = static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreation(store:options:)(v9, &v16);
  *(v0 + 568) = v11;
  *(v0 + 328) = v11;
  v12 = swift_task_alloc();
  *(v0 + 576) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E080, &qword_21DC1BA70);
  v14 = sub_21D0D0F1C(&qword_27CE5E088, &qword_27CE5E080, &qword_21DC1BA70, MEMORY[0x277CBCD90]);
  *v12 = v0;
  v12[1] = sub_21D9039DC;

  return MEMORY[0x2821A7968](v0 + 96, v13, v14);
}

uint64_t sub_21D9039DC()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_21D904EDC;
  }

  else
  {
    v5 = sub_21D903AF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D903AF8()
{
  v1 = *(v0 + 593);

  v2 = *(v0 + 96);
  v3 = *(v0 + 112);
  v4 = *(v0 + 128);
  v151 = [v3 isSuggestedRemindersSupportedInCurrentAppVersion];
  v154 = v2;
  v5 = [v2 store];
  v6 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v7 = [v3 account];
  v8 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v167 = v9;
  if (v1 == 1)
  {
    v10 = v6;
    sub_21DBF8E0C();
    v11 = [v3 groceryContext];
    if (!v11 || (v177 = v11, v12 = sub_21D0D8CF0(0, &unk_280D0C250, 0x277D44688), v13 = sub_21D0FB9CC(v12, &protocol witness table for REMListGroceryContext), v177, (v13 & 1) == 0))
    {
      v14 = sub_21D9055B8(v7, v167, v10);
      if (v14)
      {
        v15 = v14;
        v161 = 1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = v6;
    sub_21DBF8E0C();
  }

  v15 = [v6 updateList_];
  v161 = 0;
LABEL_11:
  v17 = *(v0 + 472);
  v176 = v8;
  v168 = *(v0 + 488);
  v170 = v7;
  sub_21D0D3954(*(v0 + 504) + *(v168 + 60), v17, &qword_27CE5EDE0, &qword_21DC1ED40);
  v162 = type metadata accessor for TTRSERecipeCard(0);
  v160 = *(*(v162 - 8) + 48);
  v153 = v3;
  if (v160(v17, 1) == 1)
  {
    v18 = *(v0 + 504);
    sub_21D0CF7E0(*(v0 + 472), &qword_27CE5EDE0, &qword_21DC1ED40);
    v19 = sub_21DBFA12C();
    v20 = [v6 addReminderWithTitle:v19 toListChangeItem:v15];

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_21D0D3954(v0 + 136, v0 + 176, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v21 = swift_allocObject();
    *(v21 + 72) = 0;
    *(v21 + 16) = v20;
    sub_21D0D3954(v0 + 176, v21 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v21 + 64) = 0;
    v22 = v20;
    v23 = [v22 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v0 + 136, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(v0 + 176, &unk_27CE60D80, &unk_21DC093F0);
    *(v21 + 72) = v23;
    TTRReminderEditor.apply(_:)(v18);
    v24 = [v22 0x1FB1036F8];
    v25 = v22;
    MEMORY[0x223D42D80](v24);
    if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    v152 = 0;
    v173 = v176;
    v158 = v24;
  }

  else
  {
    v27 = *(v0 + 472);
    v28 = *(v27 + 8);
    sub_21DBF8E0C();
    sub_21D90BAE8(v27, type metadata accessor for TTRSERecipeCard);
    v29 = *(v28 + 16);
    v152 = v28;
    if (v29)
    {
      v30 = v28 + 40;
      do
      {
        sub_21DBF8E0C();
        v31 = sub_21DBFA12C();

        v32 = [v6 addReminderWithTitle:v31 toListChangeItem:v15];

        v33 = v32;
        MEMORY[0x223D42D80]();
        if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v30 += 24;
        --v29;
      }

      while (v29);
      v34 = v176;
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v173 = v34;
    v158 = 0;
  }

  v35 = *(v0 + 496);
  v36 = *(v0 + 368);
  v37 = *(v0 + 376);
  v157 = *(v0 + 560);
  v38 = *(v0 + 360);
  sub_21D575ED0(*(v0 + 504), v35, v26);
  v156 = *(v37 + 40);
  *(v0 + 16) = v38;
  *(v0 + 24) = v36;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  v175 = v0;
  type metadata accessor for ActionContext(0);
  v39 = swift_allocObject();
  swift_weakInit();
  v39[5] = 0;
  *(v39 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID) = MEMORY[0x277D84F98];
  v40 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList;
  *(v39 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList) = 0;
  v41 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_reminderIDWithExtractorResultApplied;
  *(v39 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_reminderIDWithExtractorResultApplied) = 0;
  swift_weakAssign();
  sub_21D575ED0(v35, v39 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult, v42);
  v39[7] = v167;
  v39[8] = v15;
  v39[6] = v6;
  v43 = (v39 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext);
  *v43 = v170;
  v43[1] = v167;
  v43[2] = v6;
  v155 = *(v39 + v41);
  v172 = v39;
  *(v39 + v41) = v158;
  v44 = v6;
  v45 = v15;
  v46 = v170;
  swift_bridgeObjectRetain_n();
  v165 = v44;
  sub_21DBF8E0C();
  v166 = v45;
  v164 = v46;
  v47 = v157;
  v48 = v156;
  sub_21D0D0E78(v38, v36);
  sub_21DBF8E0C();

  v49 = v158;

  if (v161)
  {
    v50 = *(v39 + v40);
    *(v39 + v40) = v166;
    v51 = v166;
  }

  v52 = *(v175 + 464);
  sub_21D0D3954(*(v175 + 496) + *(v168 + 60), v52, &qword_27CE5EDE0, &qword_21DC1ED40);
  v53 = (v160)(v52, 1, v162);
  sub_21D0CF7E0(v52, &qword_27CE5EDE0, &qword_21DC1ED40);
  v159 = v49;
  if (v53 != 1)
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v76 = sub_21DBF84BC();
    __swift_project_value_buffer(v76, qword_27CE63C48);
    v77 = sub_21DBF84AC();
    v78 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_47;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "TTRSECreateRemindersInteractor: RecipeCard with ingredients detected don't perform extraction";
    goto LABEL_46;
  }

  v55 = *(v175 + 448);
  v54 = *(v175 + 456);
  v56 = *(v175 + 440);
  (*(v55 + 104))(v54, *MEMORY[0x277D44DE0], v56);
  v57 = sub_21DBF603C();
  (*(v55 + 8))(v54, v56);
  if ((v57 & 1) == 0 || (v59 = *(v175 + 424), v58 = *(v175 + 432), v60 = *(v175 + 416), sub_21DBF80BC(), *(v175 + 336) = sub_21DBF80AC(), (*(v59 + 104))(v58, *MEMORY[0x277D45640], v60), v61 = sub_21DBF80DC(), (*(v59 + 8))(v58, v60), , (v61 & v151 & 1) == 0))
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v81 = sub_21DBF84BC();
    __swift_project_value_buffer(v81, qword_27CE63C48);
    v77 = sub_21DBF84AC();
    v78 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_47;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "TTRSECreateRemindersInteractor: Skipping Extraction because not on Apple Intelligence Supported Device";
LABEL_46:
    _os_log_impl(&dword_21D0C9000, v77, v78, v80, v79, 2u);
    MEMORY[0x223D46520](v79, -1, -1);
LABEL_47:

    v73 = v39;
    goto LABEL_48;
  }

  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v62 = sub_21DBF84BC();
  __swift_project_value_buffer(v62, qword_27CE63C48);
  v63 = sub_21DBF84AC();
  v64 = sub_21DBFAEDC();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_21D0C9000, v63, v64, "TTRSECreateRemindersInteractor: Attempting Extraction on Apple Intelligence supported device", v65, 2u);
    MEMORY[0x223D46520](v65, -1, -1);
  }

  v66 = *(v175 + 496);
  v67 = *(v175 + 392);
  v68 = *(v175 + 400);
  v69 = *(v175 + 384);

  *(v175 + 344) = *(v66 + 24);
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0, &unk_21DC2EB48);
  sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0, &unk_21DC2EB48, MEMORY[0x277D83970]);
  sub_21DBFA48C();

  if ((*(v68 + 48))(v69, 1, v67) != 1)
  {
    v132 = *(v175 + 400);
    v131 = *(v175 + 408);
    v133 = *(v175 + 392);
    (*(v132 + 32))(v131, *(v175 + 384), v133);
    v134 = objc_allocWithZone(MEMORY[0x277D44788]);
    v135 = sub_21DBF53FC();
    v75 = [v134 initWithInputURL_];

    (*(v132 + 8))(v131, v133);
    v73 = v39;
    if (v75)
    {
      goto LABEL_81;
    }

LABEL_48:
    v73[3] = 0;
    v73[4] = 0;
    goto LABEL_49;
  }

  v71 = *(v175 + 488);
  v70 = *(v175 + 496);
  sub_21D0CF7E0(*(v175 + 384), &qword_27CE5EA20, &qword_21DC0D4A0);
  v72 = *(v70 + *(v71 + 56));
  v73 = v39;
  if (!v72)
  {
    goto LABEL_48;
  }

  v74 = [v72 string];
  if (!v74)
  {
    sub_21DBFA16C();
    v74 = sub_21DBFA12C();
  }

  v75 = [objc_allocWithZone(MEMORY[0x277D44788]) initWithInputText_];

  if (!v75)
  {
    goto LABEL_48;
  }

LABEL_81:
  v136 = *(v175 + 560);
  type metadata accessor for GenerativeSuggestionContext();
  v137 = swift_allocObject();
  *(v137 + 16) = v75;
  *(v137 + 24) = v136;
  v73[3] = v137;
  v73[4] = &off_282EDB310;
  v138 = v136;
LABEL_49:
  v82 = *(v175 + 560);
  v83 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRReminderDetailPendingMoveInteractorCapability();
  v84 = swift_allocObject();
  *(v175 + 240) = &type metadata for TTRReminderDetailPendingMoveDynamicItemProvider;
  *(v175 + 248) = &protocol witness table for TTRReminderDetailPendingMoveDynamicItemProvider;
  *(v175 + 216) = sub_21D90BB48;
  *(v175 + 224) = v83;
  *(v84 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v84 + 160) = 0;
  v85 = v82;
  *(v84 + 32) = v82;
  *(v84 + 40) = v48;
  v86 = *(v175 + 16);
  v87 = *(v175 + 24);
  *(v84 + 48) = v86;
  *(v84 + 56) = v87;
  v88 = *(v175 + 32);
  v89 = *(v175 + 40);
  v90 = *(v175 + 48);
  v91 = *(v175 + 56);
  v92 = v48;
  v93 = *(v175 + 64);
  *(v84 + 112) = v88;
  *(v84 + 120) = v89;
  *(v84 + 128) = v90;
  *(v84 + 136) = v91;
  *(v84 + 144) = v93;
  *(v84 + 152) = *(v175 + 72);
  v94 = v85;
  v163 = v92;
  v95 = v87;
  v96 = v172;
  sub_21D0D0E78(v86, v95);
  v97 = v88;
  v98 = v91;
  isUniquelyReferenced_nonNull_native = v175;
  sub_21D575E44(v89, v90, v98, v93);
  sub_21D575DF4(0, 0, 0, 1);
  v100 = *(v175 + 80);
  v101 = *(v84 + 160);
  *(v84 + 160) = v100;
  v102 = v100;

  v103 = *(v175 + 88);
  *(v84 + 168) = v103;
  v104 = v103;
  sub_21D5B8E5C(v175 + 16);
  *(v84 + 64) = v166;
  sub_21D0D0FD0((v175 + 216), v84 + 72);
  v172[5] = v84;

  swift_beginAccess();
  *(v84 + 24) = &off_282EDB320;
  swift_unknownObjectWeakAssign();
  v105 = v173;
  if (v173 >> 62)
  {
LABEL_87:
    v106 = sub_21DBFBD7C();
    if (v106)
    {
      goto LABEL_51;
    }

LABEL_88:
    v139 = *(isUniquelyReferenced_nonNull_native + 496);
    v140 = *(isUniquelyReferenced_nonNull_native + 376);

    sub_21D90BAE8(v139, type metadata accessor for TTRExtensionContextExtractorResult);
    *(v140 + 56) = v96;

    *(v140 + 48) = sub_21D551A94(v163, v140, sub_21D905C3C, 0);

    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v141 = sub_21DBF84BC();
    __swift_project_value_buffer(v141, qword_27CE63C48);
    v142 = sub_21DBF84AC();
    v143 = sub_21DBFAEDC();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_21D0C9000, v142, v143, "TTRSECreateRemindersInteractor: finish setup", v144, 2u);
      MEMORY[0x223D46520](v144, -1, -1);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v145 = *(isUniquelyReferenced_nonNull_native + 352);
      v146 = *(*(isUniquelyReferenced_nonNull_native + 376) + 24);
      ObjectType = swift_getObjectType();
      (*(v146 + 8))(v105, v152, ObjectType, v146);

      swift_unknownObjectRelease();

      sub_21D157878(1);
    }

    else
    {
      v148 = *(isUniquelyReferenced_nonNull_native + 352);

      sub_21D157878(1);
    }

    v149 = *(isUniquelyReferenced_nonNull_native + 504);

    sub_21D90BAE8(v149, type metadata accessor for TTRExtensionContextExtractorResult);

    v150 = *(isUniquelyReferenced_nonNull_native + 8);

    return v150();
  }

  v106 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v106)
  {
    goto LABEL_88;
  }

LABEL_51:
  v107 = 0;
  v108 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
  v169 = v105 & 0xFFFFFFFFFFFFFF8;
  v171 = v105 & 0xC000000000000001;
  v174 = v105;
  while (1)
  {
    if (v171)
    {
      v111 = MEMORY[0x223D44740](v107, v105);
    }

    else
    {
      if (v107 >= *(v169 + 16))
      {
        goto LABEL_86;
      }

      v111 = *(v105 + 8 * v107 + 32);
    }

    v112 = v111;
    v113 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v114 = [v111 objectID];
    swift_beginAccess();
    v115 = *(v96 + v108);
    if ((v115 & 0xC000000000000001) != 0)
    {
      if (v115 < 0)
      {
        v116 = *(v96 + v108);
      }

      else
      {
        v116 = v115 & 0xFFFFFFFFFFFFFF8;
      }

      v117 = v112;
      v118 = sub_21DBFBD7C();
      if (__OFADD__(v118, 1))
      {
        goto LABEL_84;
      }

      *(v96 + v108) = sub_21D984914(v116, v118 + 1);
    }

    else
    {
      v119 = v112;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v178 = *(v96 + v108);
    v120 = v178;
    *(v96 + v108) = 0x8000000000000000;
    v96 = sub_21D17E07C(v114);
    v122 = v178[2];
    v123 = (v121 & 1) == 0;
    v124 = v122 + v123;
    if (__OFADD__(v122, v123))
    {
      goto LABEL_83;
    }

    v105 = v121;
    if (v178[3] < v124)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v175;
      if (v121)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_21D2240D0();
      v120 = v178;
      isUniquelyReferenced_nonNull_native = v175;
      if (v105)
      {
LABEL_52:
        v109 = v120[7];
        v110 = *(v109 + 8 * v96);
        *(v109 + 8 * v96) = v112;

        goto LABEL_53;
      }
    }

LABEL_73:
    v120[(v96 >> 6) + 8] |= 1 << v96;
    *(v120[6] + 8 * v96) = v114;
    *(v120[7] + 8 * v96) = v112;
    v127 = v120[2];
    v128 = __OFADD__(v127, 1);
    v129 = v127 + 1;
    if (v128)
    {
      goto LABEL_85;
    }

    v120[2] = v129;
LABEL_53:
    v96 = v172;
    *(v172 + v108) = v120;
    swift_endAccess();

    ++v107;
    v105 = v174;
    if (v113 == v106)
    {
      goto LABEL_88;
    }
  }

  sub_21D21BEE4(v124, isUniquelyReferenced_nonNull_native);
  v120 = v178;
  v125 = sub_21D17E07C(v114);
  if ((v105 & 1) == (v126 & 1))
  {
    v96 = v125;
    isUniquelyReferenced_nonNull_native = v175;
    if (v105)
    {
      goto LABEL_52;
    }

    goto LABEL_73;
  }

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

  return sub_21DBFC70C();
}

uint64_t sub_21D904DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D904EDC()
{
  v1 = v0[63];
  v2 = v0[44];

  sub_21D157878(1);
  sub_21D90BAE8(v1, type metadata accessor for TTRExtensionContextExtractorResult);

  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall TTRSECreateRemindersInteractor.registerUndo(byDraining:)(NSUndoManager *byDraining)
{
  v3 = *(v1 + 32);
  if ([(NSUndoManager *)byDraining canUndo])
  {
    v4 = swift_allocObject();
    *(v4 + 16) = byDraining;
    *(v4 + 24) = v3;
    sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
    v5 = byDraining;
    v6 = v3;
    sub_21DBFAE8C();
  }
}

uint64_t TTRSECreateRemindersInteractor.fetchAllHashtagLabelsAsync()()
{
  v1[3] = v0;
  v1[4] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v1[5] = swift_task_alloc();
  sub_21DBFA84C();
  v1[6] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_21D9051CC, v3, v2);
}

uint64_t sub_21D9051CC(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = *(v1[3] + 32);
  sub_21DBFA85C();
  v5 = sub_21DBFA89C();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v7 = v4;
  v8 = sub_21D393568(0, 0, v2, &unk_21DC312B8, v6);
  v1[9] = v8;
  sub_21D0CF7E0(v2, &unk_27CE5F150, &qword_21DC0D090);
  v9 = swift_task_alloc();
  v1[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  *v9 = v1;
  v9[1] = sub_21D905348;

  return MEMORY[0x282200460](v1 + 2, v8, v10);
}

uint64_t sub_21D905348()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D90548C, v3, v2);
}

uint64_t sub_21D90548C()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D9054FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21D90551C, 0, 0);
}

uint64_t sub_21D90551C()
{
  v1 = v0[2];
  *v1 = sub_21D90A888(v0[3]);
  v2 = v0[1];

  return v2();
}

id sub_21D9055B8(void *a1, uint64_t a2, void *a3)
{
  v47 = a3;
  v5 = sub_21DBF69AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63CA8, &qword_21DC31680);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 32) = a1;
  *&v54[0] = v9;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63CB0, &unk_21DC31688);
  sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
  sub_21D0D0F1C(&qword_27CE63CB8, &qword_27CE63CB0, &unk_21DC31688, MEMORY[0x277D83970]);
  v11 = sub_21DBFA41C();

  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v46 = v11;
    *&v54[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v48 = *(v6 + 16);
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    do
    {
      v48(v8, v14, v5);
      sub_21DBF693C();
      (*(v6 + 8))(v8, v5);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v14 += v15;
      --v12;
    }

    while (v12);
    v13 = *&v54[0];
    v11 = v46;
  }

  *&v54[0] = v11;
  sub_21D5635A4(v13);
  v16 = *&v54[0];
  if (!(*&v54[0] >> 62))
  {
    v17 = *((*&v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_26:

    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE63C48);
    v43 = sub_21DBF84AC();
    v44 = sub_21DBFAEBC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21D0C9000, v43, v44, "TTRSECreateRemindersInteractor: unable to create grocery list change item, supported account not found", v45, 2u);
      MEMORY[0x223D46520](v45, -1, -1);
    }

    return 0;
  }

LABEL_25:
  v17 = sub_21DBFBD7C();
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_7:
  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223D44740](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = [v19 capabilities];
    v23 = [v22 supportsGroceriesList];

    if (v23)
    {
      break;
    }

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_26;
    }
  }

  v24 = v47;
  v25 = [v47 updateAccount_];
  v26 = sub_21DBFA12C();
  v27 = [v24 addListWithName:v26 toAccountChangeItem:v25];

  v55 = 0;
  memset(v54, 0, sizeof(v54));
  sub_21D0D3954(v54, v52, &unk_27CE60D80, &unk_21DC093F0);
  v28 = qword_280D1AA10;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_280D1AA18;
  sub_21D0CF7E0(v54, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  v31 = swift_allocObject();
  v50 = type metadata accessor for TTRUserDefaults();
  v51 = &protocol witness table for TTRUserDefaults;
  *&v49 = v30;
  *(v31 + 64) = 0;
  *(v31 + 16) = v29;
  v32 = v52[1];
  *(v31 + 24) = v52[0];
  *(v31 + 40) = v32;
  *(v31 + 56) = v53;
  swift_beginAccess();
  *(v31 + 64) = 0;
  sub_21D0D0FD0(&v49, v31 + 72);
  v33 = v30;
  TTRListEditor.setSuggestedGroceryListProperties()();
  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v34 = sub_21DBF84BC();
  __swift_project_value_buffer(v34, qword_27CE63C48);
  v35 = v29;
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEDC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = [v35 objectID];
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&dword_21D0C9000, v36, v37, "TTRSECreateRemindersInteractor: created grocery list change item {objectID: %@}", v38, 0xCu);
    sub_21D0CF7E0(v39, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v39, -1, -1);
    MEMORY[0x223D46520](v38, -1, -1);
  }

  return v35;
}

double sub_21D905C3C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v5 = 1;
    (*(v3 + 16))(&v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRSECreateRemindersInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRSECreateRemindersInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_21D905D90(void *a1)
{
  v3 = *(v1 + 32);
  result = [a1 canUndo];
  if (result)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v3;
    sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);
    v6 = a1;
    v7 = v3;
    sub_21DBFAE8C();
  }

  return result;
}

uint64_t sub_21D905E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1237C4;

  return TTRSECreateRemindersInteractor.fetchAllHashtagLabelsAsync()();
}

char *sub_21D905EF8(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v1 = sub_21DBF8E0C();
  v2 = sub_21D198C38(v1);

  return v2;
}

uint64_t sub_21D905F9C(int a1, __n128 a2)
{
  v113 = a1;
  v154 = sub_21DBF68CC();
  v3 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v155 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v156 = &v102 - v6;
  v7 = sub_21DBF648C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v102 = (&v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v147 = (&v102 - v11);
  v12 = sub_21DBF695C();
  v152 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF68DC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v132 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v102 - v19;
  v20 = sub_21DBF69AC();
  v116 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v119 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21DBF64DC();
  MEMORY[0x28223BE20](v112);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v2;
  v25 = *(v2 + 56);
  v26 = *(v25 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v124 = v12;
  v109 = v24;
  v158 = MEMORY[0x277D84F90];
  v107 = v26;
  v27 = v22;
  sub_21D18F5C8(0, v26, 0);
  v28 = 0;
  v118 = v158;
  v103 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedList;
  v115 = v25 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
  v114 = v116 + 16;
  v131 = v16 + 16;
  v130 = v16 + 88;
  v129 = *MEMORY[0x277D452F8];
  v125 = *MEMORY[0x277D452F0];
  v123 = *MEMORY[0x277D45300];
  v128 = (v16 + 96);
  v122 = (v152 + 32);
  v145 = v3 + 88;
  v146 = v3 + 16;
  v144 = *MEMORY[0x277D452E8];
  v139 = *MEMORY[0x277D452E0];
  v142 = (v3 + 96);
  v143 = (v3 + 8);
  v153 = (v8 + 104);
  v148 = v8 + 32;
  v121 = (v152 + 8);
  v127 = (v16 + 8);
  v106 = (v116 + 8);
  v140 = *MEMORY[0x277D45020];
  v110 = v27;
  v105 = v27 + 32;
  LODWORD(v152) = *MEMORY[0x277D45028];
  v126 = xmmword_21DC08D00;
  v149 = v7;
  v136 = v15;
  v29 = v116;
  v120 = v14;
  v134 = v16;
  v111 = v20;
  v108 = v25;
  do
  {
    if (v28 >= *(v25 + 16))
    {
      goto LABEL_60;
    }

    v30 = *(v29 + 72);
    v117 = v28;
    (*(v29 + 16))(v119, v115 + v30 * v28, v20);
    v31 = sub_21DBF694C();
    v135 = *(v31 + 16);
    if (v135)
    {
      v32 = 0;
      v33 = MEMORY[0x277D84F90];
      v34 = v134;
      v35 = v137;
      v133 = v31;
      while (v32 < *(v31 + 16))
      {
        v141 = v33;
        v36 = v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v37 = *(v34 + 72);
        v138 = v32;
        v38 = *(v34 + 16);
        v38(v35, v36 + v37 * v32, v15);
        v39 = v132;
        v38(v132, v35, v15);
        v40 = (*(v34 + 88))(v39, v15);
        if (v40 == v129)
        {
          (*v128)(v39, v15);
          v41 = *v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C0, &unk_21DC09C20);
          v42 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v43 = swift_allocObject();
          *(v43 + 16) = v126;
          *(v43 + v42) = v41;
          (*(v8 + 104))(v43 + v42, v152, v7);
          (*v127)(v35, v15);
          goto LABEL_23;
        }

        if (v40 == v125)
        {
          (*v128)(v39, v15);
          v44 = *v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C0, &unk_21DC09C20);
          v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v43 = swift_allocObject();
          *(v43 + 16) = v126;
          *(v43 + v45) = v44;
          (*(v8 + 104))(v43 + v45, v140, v7);
          (*v127)(v137, v15);
          goto LABEL_23;
        }

        if (v40 != v123)
        {
          goto LABEL_65;
        }

        (*v128)(v39, v15);
        v46 = v124;
        (*v122)(v14, v39, v124);
        v47 = sub_21DBF694C();
        v48 = *(v47 + 16);
        if (v48)
        {
          v157 = MEMORY[0x277D84F90];
          v49 = v47;
          sub_21D18E93C(0, v48, 0);
          v50 = v49;
          v51 = 0;
          v43 = v157;
          v150 = v49 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v151 = v49;
          while (v51 < *(v50 + 16))
          {
            v52 = v48;
            v53 = v8;
            v54 = *(v3 + 16);
            v55 = v156;
            v56 = v154;
            v54(v156, v150 + *(v3 + 72) * v51, v154);
            v57 = v155;
            v54(v155, v55, v56);
            v58 = v3;
            v59 = (*(v3 + 88))(v57, v56);
            v60 = v152;
            if (v59 != v144)
            {
              v60 = v140;
              if (v59 != v139)
              {
                goto LABEL_61;
              }
            }

            v61 = v154;
            (*v143)(v156, v154);
            v62 = v155;
            (*v142)(v155, v61);
            v63 = v147;
            *v147 = *v62;
            v7 = v149;
            (*v153)(v63, v60, v149);
            v157 = v43;
            v65 = *(v43 + 16);
            v64 = *(v43 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_21D18E93C((v64 > 1), v65 + 1, 1);
              v43 = v157;
            }

            ++v51;
            *(v43 + 16) = v65 + 1;
            v8 = v53;
            (*(v53 + 32))(v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v65, v63, v7);
            v48 = v52;
            v3 = v58;
            v50 = v151;
            if (v52 == v51)
            {

              v14 = v120;
              (*v121)(v120, v124);
              (*v127)(v137, v136);
              goto LABEL_23;
            }
          }

          __break(1u);
          return v118;
        }

        (*v121)(v14, v46);
        (*v127)(v137, v15);
        v43 = MEMORY[0x277D84F90];
LABEL_23:
        v66 = *(v43 + 16);
        v67 = v141[2];
        v68 = v67 + v66;
        if (__OFADD__(v67, v66))
        {
          goto LABEL_56;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v141;
        if (!isUniquelyReferenced_nonNull_native || v68 > v141[3] >> 1)
        {
          if (v67 <= v68)
          {
            v71 = v67 + v66;
          }

          else
          {
            v71 = v67;
          }

          v70 = sub_21D21507C(isUniquelyReferenced_nonNull_native, v71, 1, v141);
        }

        v15 = v136;
        if (*(v43 + 16))
        {
          if ((v70[3] >> 1) - v70[2] < v66)
          {
            goto LABEL_58;
          }

          v33 = v70;
          swift_arrayInitWithCopy();

          v34 = v134;
          v35 = v137;
          if (v66)
          {
            v72 = v33[2];
            v73 = __OFADD__(v72, v66);
            v74 = v72 + v66;
            if (v73)
            {
              goto LABEL_59;
            }

            v33[2] = v74;
          }
        }

        else
        {
          v33 = v70;

          v34 = v134;
          v35 = v137;
          if (v66)
          {
            goto LABEL_57;
          }
        }

        v32 = v138 + 1;
        v31 = v133;
        if (v138 + 1 == v135)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (qword_27CE56E68 != -1)
      {
        swift_once();
      }

      v94 = sub_21DBF84BC();
      __swift_project_value_buffer(v94, qword_27CE63C48);
      v95 = MEMORY[0x277D84F90];
      v96 = sub_21D17716C(MEMORY[0x277D84F90]);
      v97 = sub_21D17716C(v95);
      sub_21DAEAB00("Unknown group child type", 24, 2, v96, v97);
      while (1)
      {
        __break(1u);
LABEL_65:
        if (qword_27CE56E68 != -1)
        {
          swift_once();
        }

        v98 = sub_21DBF84BC();
        __swift_project_value_buffer(v98, qword_27CE63C48);
        v99 = MEMORY[0x277D84F90];
        v100 = sub_21D17716C(MEMORY[0x277D84F90]);
        v101 = sub_21D17716C(v99);
        sub_21DAEAB00("Unknown account child type", 26, 2, v100, v101);
      }
    }

    v33 = MEMORY[0x277D84F90];
LABEL_37:
    v75 = v33;

    if (v113)
    {
      v76 = *(v104 + v103);
      if (v76)
      {
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v77 = v76;
        v78 = [v77 accountID];
        v79 = sub_21DBF693C();
        v80 = [v79 objectID];

        LOBYTE(v79) = sub_21DBFB63C();
        if (v79)
        {
          v81 = sub_21D906F60();
          v7 = v149;
          if (v81)
          {
            v82 = v81;
            v83 = sub_21DBFB60C();
            v84 = v102;
            *v102 = v83;
            (*v153)(v84, v152, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_21D21507C(0, v75[2] + 1, 1, v75);
            }

            v86 = v75[2];
            v85 = v75[3];
            if (v86 >= v85 >> 1)
            {
              v75 = sub_21D21507C((v85 > 1), v86 + 1, 1, v75);
            }

            v75[2] = v86 + 1;
            (*(v8 + 32))(v75 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v86, v102, v7);
          }

          else
          {
          }
        }

        else
        {

          v7 = v149;
        }
      }
    }

    v20 = v111;
    v87 = v119;
    sub_21DBF693C();
    v88 = v109;
    sub_21DBF64BC();
    (*v106)(v87, v20);
    v89 = v118;
    v158 = v118;
    v91 = *(v118 + 16);
    v90 = *(v118 + 24);
    if (v91 >= v90 >> 1)
    {
      sub_21D18F5C8((v90 > 1), v91 + 1, 1);
      v89 = v158;
    }

    v28 = v117 + 1;
    *(v89 + 16) = v91 + 1;
    v92 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v118 = v89;
    (*(v110 + 32))(v89 + v92 + *(v110 + 72) * v91, v88, v112);
    v29 = v116;
    v25 = v108;
  }

  while (v28 != v107);
  return v118;
}

id sub_21D906F60()
{
  v1 = sub_21D90A088();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 saveRequest];
    v4 = [v3 store];

    v5 = [v0 storage];
    v6 = [objc_allocWithZone(MEMORY[0x277D44660]) initWithStore:v4 account:v2 storage:v5];
  }

  else
  {
    if (qword_27CE56E68 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE63C48);
    v8 = v0;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = [v8 objectID];
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRSECreateRemindersInteractor#remListRepresentation: no account {objectID: %@}", v11, 0xCu);
      sub_21D0CF7E0(v12, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_21D907150()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  sub_21D90BAE8(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult, type metadata accessor for TTRExtensionContextExtractorResult);
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_groceryListCreationContext);

  return v0;
}

uint64_t sub_21D907220()
{
  sub_21D907150();

  return swift_deallocClassInstance();
}

void sub_21D907274(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v2[20];
    v8 = v2[14];
    v4 = v2[8];
    *a1 = v3;
    a1[1] = v8;
    a1[2] = v4;
    v5 = v4;
    v6 = v3;

    v7 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_21D9072D8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 160);
    if (v3)
    {
      v4 = 1;
      v5 = *(v2 + 160);
    }

    else
    {
      v5 = *(v2 + 112);
      if (v5)
      {
        v6 = a1;
        v7 = v5;
        a1 = v6;
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }
    }

    v8 = *(v2 + 120);
    v9 = *(v2 + 128);
    v10 = *(v2 + 136);
    v11 = *(v2 + 144);
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
    *(a1 + 48) = *(v2 + 152);
    v12 = v3;

    sub_21D575E44(v8, v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_21D907394(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 48);
    v12 = *(v2 + 112);
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = *(v2 + 168);
    v11 = *(v2 + 160);
    *a1 = v3;
    *(a1 + 16) = v12;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
    *(a1 + 48) = v6;
    *(a1 + 56) = *(v2 + 152);
    *(a1 + 64) = v11;
    *(a1 + 72) = v7;
    sub_21D0D0E78(v3, *(&v3 + 1));
    v8 = v12;
    sub_21D575E44(*(&v12 + 1), v4, v5, v6);
    v9 = v7;

    v10 = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D907454(uint64_t result)
{
  v2 = *(v1 + 40);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = v1;
  v4 = *result;
  v5 = *(result + 8);
  v6 = v2[20];
  v7 = v2[14];
  v8 = v2[8];
  v32[0] = v6;
  v32[1] = v7;
  v32[2] = v8;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v33);

  v12 = *(&v34 + 1);
  if (!*(&v34 + 1))
  {
    sub_21D0CF7E0(&v33, &qword_27CE59DC0, &qword_21DC0FBF0);
    v15 = 2;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_6:
    v17 = [v4 account];
    v16 = [v17 capabilities];

    goto LABEL_7;
  }

  v13 = v35;
  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v14 = (*(v13 + 72))(v12, v13);
  v15 = [v14 supportsAttachments];

  __swift_destroy_boxed_opaque_existential_0(&v33);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v16 = [v4 accountCapabilities];
LABEL_7:
  v18 = [v16 supportsAttachments];

  if (v15 != 2 && ((v18 ^ v15) & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = *(v3 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_reminderIDWithExtractorResultApplied);
  if (!v16)
  {
    goto LABEL_18;
  }

  v19 = OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_uncommittedReminderByID;
  swift_beginAccess();
  v20 = *(v3 + v19);
  v16 = v16;
  v21 = sub_21D1AA268(v16, v20);
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  swift_endAccess();
  if (qword_27CE56E68 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE63C48);
  v24 = v22;
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEDC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [v24 objectID];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_21D0C9000, v25, v26, "TTRSECreateRemindersInteractor: need to reapply extractor result to reminder {objectID: %@}", v27, 0xCu);
    sub_21D0CF7E0(v28, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_21D0D3954(&v33, v32, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v30 = swift_allocObject();
  *(v30 + 72) = 0;
  *(v30 + 16) = v24;
  sub_21D0D3954(v32, v30 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v30 + 64) = 0;
  v31 = [v24 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(&v33, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v32, &unk_27CE60D80, &unk_21DC093F0);
  *(v30 + 72) = v31;

  swift_retain_n();
  TTRReminderEditor.prepareToReapplyExtensionContextExtractorResultDueToAccountCapabilityChange()();

  for (; !*(v3 + 40); v30 = 0)
  {
    __break(1u);
LABEL_17:
    swift_endAccess();

LABEL_18:
    ;
  }

  *&v33 = v4;
  BYTE8(v33) = v5;

  TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(&v33);

  if (v30)
  {
    TTRReminderEditor.apply(_:)((v3 + OBJC_IVAR____TtC15RemindersUICoreP33_A3BA6000D8428A992F3ECBE4ED9D1F9813ActionContext_extractorResult));
  }

  return result;
}