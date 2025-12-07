uint64_t sub_18BAA4A80(uint64_t a1)
{
  v2 = type metadata accessor for SFBookmarksUIState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall SFEditableEffectView.init(frame:)(SFEditableEffectView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id SFEditableEffectView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___SFEditableEffectView_effect;
  *&v4[v9] = [objc_allocWithZone(SFEditableEffect) init];
  *&v4[OBJC_IVAR___SFEditableEffectView_effectViews] = MEMORY[0x1E69E7CC0];
  v12.receiver = v4;
  v12.super_class = SFEditableEffectView;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  return v10;
}

void SFEditableEffectView.init(coder:)()
{
  v1 = OBJC_IVAR___SFEditableEffectView_effect;
  *(v0 + v1) = [objc_allocWithZone(SFEditableEffect) init];
  *(v0 + OBJC_IVAR___SFEditableEffectView_effectViews) = MEMORY[0x1E69E7CC0];
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BAA4E08()
{
  v1 = v0;
  v2 = _s5LayerVMa(0);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___SFEditableEffectView_effectViews;
  v8 = *&v0[OBJC_IVAR___SFEditableEffectView_effectViews];
  if (v8 >> 62)
  {
    v9 = sub_18BC219A8();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_18BC1E3F8();
  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18CFFD010](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 removeFromSuperview];
  }

LABEL_10:
  v13 = [v1 effect];
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = OBJC_IVAR___SFEditableEffect_layers;
    v16 = v13;
    swift_beginAccess();
    v17 = *&v16[v15];
    sub_18BC1E3F8();

    v18 = *(v17 + 16);
    if (v18)
    {
      v26 = v14;
      sub_18BC21B98();
      v19 = v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v20 = *(v3 + 72);
      do
      {
        sub_18B9876B0(v19, v6);
        sub_18B98A928();
        sub_18B987654(v6);
        sub_18BC21B68();
        sub_18BC21BA8();
        sub_18BC21BB8();
        sub_18BC21B78();
        v19 += v20;
        --v18;
      }

      while (v18);

      v14 = v26;
    }

    else
    {
    }
  }

  *&v1[v7] = v14;

  v21 = *&v1[v7];
  if (v21 >> 62)
  {
    v22 = sub_18BC219A8();
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }
  }

  if (v22 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_18BC1E3F8();
  for (j = 0; j != v22; ++j)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x18CFFD010](j, v21);
    }

    else
    {
      v24 = *(v21 + 8 * j + 32);
    }

    v25 = v24;
    [v1 addSubview_];
  }
}

id sub_18BAA5164(void *a1)
{
  v2 = *&v1[OBJC_IVAR___SFEditableEffectView_effect];
  *&v1[OBJC_IVAR___SFEditableEffectView_effect] = a1;
  v3 = a1;

  v4 = [v1 effect];
  if (v4)
  {
    v5 = v4;
    sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250);
    sub_18BC1E3F8();
    v6 = sub_18BC20D88();

    v7 = [v5 applyToViews_];

    if ((v7 & 1) == 0)
    {
      sub_18BAA4E08();
    }
  }

  return [v1 setNeedsLayout];
}

id SFFluidCollectionView.TabOverviewSwipeDeleteInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_18BAA52A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_18BAA5368(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  swift_beginAccess();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void *sub_18BAA5488()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = sub_18B9F6F28();
  if (result)
  {
    v3 = result;
    v4 = sub_18B812A74();

    if (v4)
    {
      v5 = *(v1 + 184);
      swift_getExtendedExistentialTypeMetadata();
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BAA55CC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x100);
  *v4 = result;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  return result;
}

uint64_t sub_18BAA5604(uint64_t a1)
{
  v3 = sub_18B9F6F28();
  if (v3)
  {
    v4 = v3;
    if (sub_18BAA5488())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 16))(v4, v1, a1, ObjectType, v6);

      swift_unknownObjectRelease();
      return v8 & 1;
    }
  }

  return 0;
}

void sub_18BAA56A0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v7 = *((*MEMORY[0x1E69E7D40] & v4) + 0xC8);
  v8 = *((*MEMORY[0x1E69E7D40] & v4) + 0xD0);
  v9 = *((*MEMORY[0x1E69E7D40] & v4) + 0xD8);
  v10 = *((*MEMORY[0x1E69E7D40] & v4) + 0xE0);
  v112 = v5;
  *&v119 = v5;
  *(&v119 + 1) = v6;
  v111 = v7;
  *&v120 = v7;
  *(&v120 + 1) = v8;
  v110 = v8;
  v109 = v9;
  *v121 = v9;
  *&v121[8] = v10;
  v108 = v10;
  v107 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v119);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = v99 - v11;
  v114 = *(v6 - 8);
  v12 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v104 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v99 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v99 - v18;
  v115 = v6;
  v20 = sub_18BC21848();
  v113 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v99 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v99 - v27;
  v29 = sub_18B9F6F28();
  if (v29)
  {
    v30 = v29;
    v31 = [a1 state];
    if ((v31 - 3) < 2)
    {
      sub_18BB57890(v2);
      if (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xF8)) != 1)
      {

        return;
      }

      v103 = v30;
      sub_18BAA52A8(v22);
      v43 = v114;
      v44 = v115;
      if ((*(v114 + 48))(v22, 1, v115) == 1)
      {

        (*(v113 + 8))(v22, v20);
        return;
      }

      v52 = *(v43 + 32);
      v53 = v16;
      v101 = v43 + 32;
      v100 = v52;
      v52(v16, v22, v44);
      v54 = v103;
      sub_18BB65AD8();
      sub_18B810930(&v119);
      v116 = v119;
      v117 = v120;
      v118[0] = *v121;
      *&aBlock = v112;
      *(&aBlock + 1) = v44;
      *&v123 = v111;
      *(&v123 + 1) = v110;
      *&v124 = v109;
      *(&v124 + 1) = v108;
      v55 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &aBlock);
      v113 = v53;
      v102 = v55;
      v56 = SFFluidCollectionView.DataSource.Snapshot.containsItem(_:)(v53, v55);

      if ((v56 & 1) == 0)
      {
        (*(v114 + 8))(v113, v115);

        return;
      }

      v57 = *MEMORY[0x1E69DE3A8];
      v58 = v54;
      [a1 translationInView_];
      v60 = v59;
      v62 = v61;
      [a1 velocityInView_];
      v64 = v63;
      v66 = v65;

      v67 = SFProjectedOffsetForOffsetWithVelocity(v60, v62, v64, v66, v57, v57);
      v68 = [v58 effectiveUserInterfaceLayoutDirection];
      v69 = [a1 state];
      v70 = v113;
      if (v69 != 3)
      {
        goto LABEL_26;
      }

      if (v68)
      {
        v67 = -v67;
      }

      sub_18BB65AD8();
      sub_18B81D198(&v116);
      *&aBlock = v112;
      *(&aBlock + 1) = v115;
      *&v123 = v111;
      *(&v123 + 1) = v110;
      *&v124 = v109;
      *(&v124 + 1) = v108;
      v71 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &aBlock);
      v72 = v105;
      SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v70, v71, v105);
      v119 = v116;
      v120 = v117;
      *v121 = v118[0];
      *&v121[9] = *(v118 + 9);
      (*(*(v71 - 1) + 8))(&v119, v71);
      v73 = *(v72 + *(v107 + 76));
      (*(v106 + 8))(v72);
      if (v67 > -v73)
      {
LABEL_26:
        (*(v114 + 8))(v70, v115);

        return;
      }

      if (sub_18BAA5488())
      {
        v75 = v74;
        ObjectType = swift_getObjectType();
        (*(v75 + 24))(v58, v2, v70, ObjectType, v75);
        swift_unknownObjectRelease();
      }

      sub_18BB23214(&v116);
      v77 = v115;
      sub_18B85EDB0(v115, v115);
      v78 = v114;
      v79 = *(v114 + 80);
      swift_allocObject();
      v80 = sub_18BC20DB8();
      v81 = *(v78 + 16);
      v99[1] = v78 + 16;
      v99[0] = v81;
      v81(v82, v70, v77);
      *&aBlock = sub_18B82D294(v80, v77);
      v83 = sub_18BC20E78();
      WitnessTable = swift_getWitnessTable();
      SFFluidCollectionView.DataSource.Snapshot.deleteItems<A>(_:)(&aBlock, v102, v83, WitnessTable);

      v107 = v58;
      v85 = v116;
      v86 = v117;
      v87 = *(&v118[0] + 1);
      aBlock = v116;
      v123 = v117;
      v124 = v118[0];
      v99[3] = *&v118[0];
      sub_18BC1E1A8();
      v99[2] = v87;
      sub_18BC1E1A8();
      v106 = v85;
      sub_18BC1E3F8();
      v105 = *(&v85 + 1);
      sub_18BC1E1A8();
      v103 = v86;
      sub_18BC1E1A8();
      v102 = *(&v86 + 1);
      sub_18BC1E3F8();
      sub_18BB23218(&aBlock, 1);

      v88 = *MEMORY[0x1E69DDA98];
      if (!*MEMORY[0x1E69DDA98])
      {
        __break(1u);
        return;
      }

      v89 = v104;
      v90 = v113;
      (v99[0])(v104, v113, v77);
      v91 = swift_allocObject();
      *(v91 + 2) = v112;
      *(v91 + 3) = v77;
      v92 = v110;
      *(v91 + 4) = v111;
      *(v91 + 5) = v92;
      v93 = v108;
      *(v91 + 6) = v109;
      *(v91 + 7) = v93;
      v94 = v107;
      *(v91 + 8) = v2;
      *(v91 + 9) = v94;
      v100(&v91[(v79 + 80) & ~v79], v89, v77);
      *&v124 = sub_18BAA8F1C;
      *(&v124 + 1) = v91;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v123 = sub_18B7B0DB0;
      *(&v123 + 1) = &block_descriptor_28;
      v95 = _Block_copy(&aBlock);
      v96 = v94;
      v97 = v88;
      v98 = v2;

      [v97 _performBlockAfterCATransactionCommits_];
      _Block_release(v95);

      (*(v114 + 8))(v90, v77);
      goto LABEL_19;
    }

    if (v31 == 2)
    {
      sub_18BB577A0(v2);
    }

    else if (v31 == 1)
    {
      v32 = *MEMORY[0x1E69E7D40] & *v2;
      v33 = (v2 + *(v32 + 0x100));
      if ((v33[2] & 1) == 0)
      {
        v35 = *v33;
        v34 = v33[1];
        v36 = v30;
        v37 = v30;
        [a1 locationInView_];
        [a1 setTranslation:v37 inView:{v38 - v35, v39 - v34}];

        v30 = v36;
        v32 = *MEMORY[0x1E69E7D40] & *v2;
      }

      v40 = (v2 + *(v32 + 256));
      if (v40[2])
      {
        [a1 locationInView_];
      }

      else
      {
        v41 = *v40;
        v42 = v40[1];
      }

      v45 = v30;
      sub_18BB503F4(v28, v41, v42);
      sub_18BAA5368(v28);
      sub_18BAA52A8(v25);
      v46 = v114;
      v47 = v115;
      if ((*(v114 + 48))(v25, 1, v115) == 1)
      {
        (*(v113 + 8))(v25, v20);
        [a1 setEnabled_];
        [a1 setEnabled_];
      }

      else
      {
        (*(v46 + 32))(v19, v25, v47);
        *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xF8)) = sub_18BAA5604(v19) & 1;
        sub_18B85EDB0(v47, v47);
        swift_allocObject();
        v48 = sub_18BC20DB8();
        (*(v46 + 16))(v49, v19, v47);
        v50 = sub_18B82D294(v48, v47);
        sub_18BB573F8(v2, v50);

        (*(v46 + 8))(v19, v47);
      }

      goto LABEL_19;
    }

LABEL_19:
    v51 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
    *v51 = 0;
    *(v51 + 1) = 0;
    v51[16] = 1;
  }
}

double sub_18BAA6508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_18BAA5488())
  {
    v8 = v6;
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, a1, a3, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_18BAA65A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BAA56A0(v4);
}

void sub_18BAA6610(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_18B9F6F28();
  if (v6)
  {
    v7 = v6;
    v8 = *(v5 + 200);
    *&v18.a = *(v5 + 184);
    *&v18.c = v8;
    *&v18.tx = *(v5 + 216);
    v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v18);
    (*(*(v9 - 1) + 16))(a2, a1, v9);
    *(a2 + v9[21]) = 0x4000000000000000;
    v10 = (a2 + v9[20]);
    v11 = v10[1];
    *&v17.a = *v10;
    *&v17.c = v11;
    *&v17.tx = v10[2];
    CGAffineTransformScale(&v18, &v17, 1.09, 1.09);
    SFFluidCollectionView.LayoutAttributes.transform.setter(&v18, v9);
    sub_18BAA67FC(v2, v7, a2);
    *(a2 + v9[18]) = v12 + *(a2 + v9[18]);
    sub_18BABCB8C(v9);
    v13 = v9[23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17.a = *(a2 + v13);
    sub_18B84E858(0xD00000000000001BLL, 0x800000018BC62720, isUniquelyReferenced_nonNull_native, 3.0);

    *(a2 + v13) = v17.a;
  }

  else
  {
    v15 = *(v5 + 200);
    *&v18.a = *(v5 + 184);
    *&v18.c = v15;
    *&v18.tx = *(v5 + 216);
    v16 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v18);
    (*(*(v16 - 8) + 16))(a2, a1, v16);
  }
}

id sub_18BAA67FC(void *a1, void *a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *a1;
  [*(a1 + *(v7 + 0xE8)) translationInView_];
  v9 = v8;
  if ([a2 effectiveUserInterfaceLayoutDirection])
  {
    v9 = -v9;
  }

  v10 = *(v7 + 200);
  v15[0] = *(v7 + 184);
  v15[1] = v10;
  v15[2] = *(v7 + 216);
  v11 = *(a3 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v15) + 76));
  if (v9 >= 0.0 || (*(a1 + *((*v6 & *a1) + 0xF8)) & 1) != 0)
  {
    v12 = -9999.0;
    v13 = 0.0;
  }

  else
  {
    v13 = 9999.0;
    v12 = 0.0;
  }

  SFRubberBandOffsetForOffset(v9, v12, v13, v11);
  return [a2 effectiveUserInterfaceLayoutDirection];
}

uint64_t sub_18BAA6968(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_18BAA8B00(v7);

  return v9 & 1;
}

BOOL sub_18BAA69C8(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v5 = sub_18BC21848();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = sub_18B9F6F28();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = (v1 + *((*v3 & *v1) + 0x100));
  if (v11[2])
  {
    [a1 locationInView_];
    v13 = v12;
    v15 = v14;
    if (!sub_18BAA5488())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = *v11;
  v15 = v11[1];
  if (sub_18BAA5488())
  {
LABEL_6:
    v17 = v16;
    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 40))(v10, v1, ObjectType, v17, v13, v15);
    swift_unknownObjectRelease();
    if (v19)
    {
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  sub_18BB503F4(v8, v13, v15);

  v20 = (*(*(v4 - 8) + 48))(v8, 1, v4) != 1;
  (*(v6 + 8))(v8, v5);
  return v20;
}

uint64_t sub_18BAA6BD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_18BAA69C8(v4);

  return a1 & 1;
}

uint64_t sub_18BAA6C30(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_18BAA8C00(v7);

  return v9 & 1;
}

uint64_t sub_18BAA6C90()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = *((*v1 & *v0) + 0xF0);
  v3 = sub_18BC21848();
  v4 = *(*(v3 - 8) + 8);

  return v4(&v0[v2], v3);
}

id SFFluidCollectionView.TabOverviewSwipeDeleteInteraction.__deallocating_deinit()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0xC8);
  v5[0] = *(v1 + 0xB8);
  v5[1] = v2;
  v5[2] = *(v1 + 216);
  v3 = type metadata accessor for SFFluidCollectionView.TabOverviewSwipeDeleteInteraction(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_18BAA6DD8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0xF0);
  v4 = sub_18BC21848();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

void sub_18BAA6EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = a2;
  v12 = *v5;
  v13 = sub_18B831970(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_18BB29030();
      v13 = v21;
      goto LABEL_8;
    }

    sub_18BB2CE74(v18, a5 & 1);
    v13 = sub_18B831970(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = v10;

    sub_18B9929B8(v25, v26);
  }

  else
  {
    sub_18BB323D0(v13, a3, a4, a1, v10, v23);

    sub_18BC1E3F8();
  }
}

uint64_t sub_18BAA7004(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_18BC1EC08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_18B857EE4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for TabIconPool.Request(0);
      return sub_18BAA8F58(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for TabIconPool.Request);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_18BB291BC();
    goto LABEL_7;
  }

  sub_18BB2D144(v17, a3 & 1);
  v24 = sub_18B857EE4(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_18BB32424(v14, v11, a1, v20);
}

void sub_18BAA71D8(void *a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v11 = a5.n128_f64[0];
  v12 = *v5;
  v13 = sub_18BB8B1C4(a1, a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_18BB294F4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_18BB2D5C8(v18, a4 & 1);
    v13 = sub_18BB8B1C4(a1, a2, a3);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = v11;
  }

  else
  {
    sub_18BB32514(v13, a1, a2, a3, v23, v11);
    v24 = a1;

    sub_18BC1E3F8();
  }
}

void sub_18BAA731C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v27 = a1;
  v9 = sub_18BC1EC08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18B857EE4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_18BB29670();
      goto LABEL_9;
    }

    sub_18BB2D890(v18, a4 & 1);
    v21 = sub_18B857EE4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v27;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v27;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_18BB32564(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_18BAA74F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18BB8B258(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_18BB298F0();
      goto LABEL_7;
    }

    sub_18BB2DC44(v16, a3 & 1);
    v22 = sub_18BB8B258(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a2, v10, _s4ItemVMa_4);
      return sub_18BB32624(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 80 * v13;

  return sub_18BAA8E64(a1, v20);
}

uint64_t sub_18BAA76A0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18BB8B29C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_18BB2992C();
      goto LABEL_7;
    }

    sub_18BB2E0FC(v16, a3 & 1);
    v22 = sub_18BB8B29C(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a2, v10, _s4ItemVMa);
      return sub_18BB32650(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 80 * v13;

  return sub_18BAA8E64(a1, v20);
}

void sub_18BAA7848(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B7C4104(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18BB29D84();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18BB2E818(v16, a4 & 1);
    v11 = sub_18B7C4104(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    sub_18B7B1AD4(a1, v22);
  }

  else
  {
    sub_18BB327E4(v11, a2, a3, a1, v21);

    sub_18BC1E3F8();
  }
}

void sub_18BAA7998(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18BB8B494(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_18BB2A5A4();
    goto LABEL_7;
  }

  sub_18BB2EAD0(v16, a3 & 1);
  v20 = sub_18BB8B494(a2);
  if ((v17 & 1) != (v21 & 1))
  {
LABEL_14:
    sub_18BC22078();
    __break(1u);
    return;
  }

  v13 = v20;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_18B7EC67C(a2, v10, _s4ItemVMa_2);
  sub_18BB32850(v13, v10, a1, v19);
}

void sub_18BAA7B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18BB8B258(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_18BB2A828();
      goto LABEL_7;
    }

    sub_18BB2EB0C(v18, a4 & 1);
    v24 = sub_18BB8B258(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a3, v12, _s4ItemVMa_4);
      sub_18BB3287C(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

void sub_18BAA7CBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18BB8B258(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_18BB2A864();
    goto LABEL_7;
  }

  sub_18BB2EEBC(v16, a3 & 1);
  v20 = sub_18BB8B258(a2);
  if ((v17 & 1) != (v21 & 1))
  {
LABEL_14:
    sub_18BC22078();
    __break(1u);
    return;
  }

  v13 = v20;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_18B7EC67C(a2, v10, _s4ItemVMa_4);
  sub_18BB328A8(v13, v10, a1, v19);
}

void sub_18BAA7E30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = _s4ItemVMa_1(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18BB8B5B0(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_18BB2AAEC();
      goto LABEL_7;
    }

    sub_18BB2F268(v18, a4 & 1);
    v24 = sub_18BB8B5B0(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a3, v12, _s4ItemVMa_1);
      sub_18BB32980(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

void sub_18BAA7FE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *v3;
  v13 = sub_18B83B1C8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_18BB2B0C8();
      goto LABEL_7;
    }

    sub_18BB2F580(v16, a3 & 1);
    v20 = sub_18B83B1C8(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B83AA0C(a2, v10);
      sub_18B83BD64(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_18BAA81F8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v26 = a5;
  v27 = a6;
  v8 = v6;
  v12 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_18BB8B29C(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    v26();
    v24 = sub_18BB8B29C(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      v23 = *v8;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a2, v14, _s4ItemVMa);
      v27(v17, v14, a1, v23);
      return;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v8;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v23 + 56) + 8 * v17) = a1;
}

uint64_t sub_18BAA83BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18BB8B29C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = _s7SectionVMa_0(0);
      return sub_18BAA8F58(a1, v20 + *(*(v21 - 8) + 72) * v13, _s7SectionVMa_0);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_18BB2C404();
    goto LABEL_7;
  }

  sub_18BB31334(v16, a3 & 1);
  v23 = sub_18BB8B29C(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_18B7EC67C(a2, v10, _s4ItemVMa);
  return sub_18BB32BE4(v13, v10, a1, v19);
}

uint64_t sub_18BAA8568(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18BB8B29C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = _s4PageVMa(0);
      return sub_18BAA8F58(a1, v20 + *(*(v21 - 8) + 72) * v13, _s4PageVMa);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_18BB2C440();
    goto LABEL_7;
  }

  sub_18BB31370(v16, a3 & 1);
  v23 = sub_18BB8B29C(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_18B7EC67C(a2, v10, _s4ItemVMa);
  return sub_18BB32C10(v13, v10, a1, v19);
}

void sub_18BAA8754(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_18BB8B348(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_18BB2C9F8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_18BB31C04(v14, a3 & 1);
    v9 = sub_18BB8B348(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_18BB327A0(v9, a2, a1, v19);
  }
}

void sub_18BAA8874(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B831970(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18BB2CB54();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18BB31E6C(v16, a4 & 1);
    v11 = sub_18B831970(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v17)
  {
    v21 = *(*v5 + 56);
    v22 = *(v21 + 8 * v11);
    *(v21 + 8 * v11) = a1;
  }

  else
  {
    sub_18BB33460();

    sub_18BC1E3F8();
  }
}

void sub_18BAA89B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B7C4104(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18BB2CCC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18BB3211C(v16, a4 & 1);
    v11 = sub_18B7C4104(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_18BB33460();

    sub_18BC1E3F8();
  }
}

uint64_t sub_18BAA8B00(uint64_t a1)
{
  v2 = sub_18B9F6F28();
  if (v2)
  {
    v3 = v2;
    v4 = sub_18BB47924();

    v5 = [v4 gesturesForFailureRequirements];
    sub_18B7B0AC0(0, &qword_1EA9D4850, 0x1E69DCA60);
    v6 = sub_18BC20D98();

    v11 = a1;
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = &v11;
    v8 = sub_18B9B8B10(sub_18BAA901C, v10, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_18BAA8C00(void *a1)
{
  v3 = sub_18B9F6F28();
  if (v3)
  {
    v4 = v3;
    [a1 locationInView_];
    v6 = v5;
    v8 = v7;

    v9 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
    *v9 = v6;
    *(v9 + 1) = v8;
    v9[16] = 0;
  }

  return 1;
}

uint64_t sub_18BAA8C90(uint64_t a1)
{
  result = sub_18BC21848();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BAA8F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_18BAA903C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_isEditing] = 0;
  v10 = &v5[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v5[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_leadingSymbolName];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v5[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_title];
  v13 = _s16SelectableHeaderCMa();
  *v12 = 0;
  v12[1] = 0;
  v20.receiver = v5;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a2, a3, a4, a5);
  v15 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v16 = v14;
  v17 = [v15 initWithTarget:v16 action:sel_handleTap];
  v18 = v16;
  [v18 addGestureRecognizer_];
  [v18 setUserInteractionEnabled_];

  return v18;
}

double sub_18BAA924C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v5 = &v4[*a3];
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v7)
    {
      if (v6 == a1 && v7 == a2)
      {
        goto LABEL_11;
      }

      v9 = a4;
      v10 = sub_18BC21FD8();
      a4 = v9;
      if (v10)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v7)
  {
    return result;
  }

  [v4 *a4];
LABEL_11:

  return result;
}

void sub_18BAA92E4()
{
  if ((*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_isEditing) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler + 8);
      v3 = sub_18BC1E1A8();
      v1(v3);

      sub_18B7E0A10(v1, v2);
    }
  }
}

uint64_t sub_18BAA93A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1F878();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FA08();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1F708();
  v12 = _s16SelectableHeaderCMa();
  v76.receiver = v2;
  v76.super_class = v12;
  objc_msgSendSuper2(&v76, sel__bridgedUpdateConfigurationUsingState_, v11);

  v68 = a1;
  v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_isEditing] = sub_18BC1F728() & 1;
  sub_18BC1F978();
  v14 = sub_18BC1F988();
  if (*v13)
  {
    *v13 &= ~1uLL;
  }

  v72 = v5;
  v73 = v4;
  v14(v75, 0);
  v15 = sub_18BC1F948();
  *(v16 + 8) = 0;
  v15(v75, 0);
  v67 = objc_opt_self();
  v17 = [v67 secondaryLabelColor];
  v18 = sub_18BC1F8A8();
  sub_18BC1F858();
  v18(v75, 0);
  sub_18BC1F9C8();
  v74 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  if (*&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_leadingSymbolName + 8])
  {
    sub_18BC1E3F8();
    v19 = sub_18BC20B98();

    v20 = [objc_opt_self() systemImageNamed_];

    if (v20)
    {
      v21 = v2;
      v22 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      sub_18BC1F8B8();
      v23 = sub_18BC1F828();
      (*(v72 + 8))(v7, v73);
      v24 = [objc_opt_self() configurationWithFont:v23 scale:1];

      v25 = [v20 imageWithConfiguration_];
      v26 = sub_18BC1F6F8();
      v27 = &selRef_tertiaryLabelColor;
      if ((v26 & 1) == 0)
      {
        v27 = &selRef_secondaryLabelColor;
      }

      v28 = [v67 *v27];
      v29 = [v25 imageWithTintColor_];

      [v22 setImage_];
      v30 = [objc_opt_self() attributedStringWithAttachment_];
      v31 = v74;
      [v74 appendAttributedString_];

      v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v33 = sub_18BC20B98();
      v34 = [v32 initWithString_];

      [v31 appendAttributedString_];
      v2 = v21;
    }
  }

  v69 = v2;
  v35 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE00, &unk_18BC43850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC3E410;
  v37 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v38 = v37;
  sub_18BC1E3F8();
  sub_18BC1F8B8();
  v39 = sub_18BC1F848();
  v40 = *(v72 + 8);
  v40(v7, v35);
  *(inited + 64) = sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
  *(inited + 40) = v39;
  sub_18BA657FC(inited);
  swift_setDeallocating();
  sub_18B9F61F8(inited + 32);
  v41 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v42 = sub_18BC20B98();

  type metadata accessor for Key(0);
  sub_18BA1EC64();
  v43 = sub_18BC20998();

  v44 = [v41 initWithString:v42 attributes:v43];

  v45 = v74;
  [v74 appendAttributedString_];

  if (*&v69[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler])
  {
    v46 = v35;
    v47 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    sub_18BC1F8B8();
    v48 = sub_18BC1F828();
    v40(v7, v46);
    v49 = [objc_opt_self() configurationWithFont:v48 scale:1];

    v50 = sub_18BC20B98();
    v51 = [objc_opt_self() systemImageNamed_];

    if (v51)
    {
      v52 = [v51 imageWithConfiguration_];

      v53 = sub_18BC1F6F8();
      v54 = &selRef_tertiaryLabelColor;
      if ((v53 & 1) == 0)
      {
        v54 = &selRef_secondaryLabelColor;
      }

      v55 = [v67 *v54];
      v51 = [v52 imageWithTintColor_];

      v45 = v74;
    }

    [v47 setImage_];

    v56 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v57 = sub_18BC20B98();
    v58 = [v56 initWithString_];

    [v45 appendAttributedString_];
    v59 = [objc_opt_self() attributedStringWithAttachment_];
    [v45 appendAttributedString_];
  }

  v60 = v45;
  sub_18BC1F898();
  v61 = sub_18BC1F8A8();
  sub_18BC1F808();
  v61(v75, 0);
  v62 = v71;
  v75[3] = v71;
  v75[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v75);
  v64 = v70;
  (*(v70 + 16))(boxed_opaque_existential_0Tm, v10, v62);
  MEMORY[0x18CFFC900](v75);

  return (*(v64 + 8))(v10, v62);
}

void sub_18BAA9DB8(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, char a6)
{
  sub_18B7B0AC0(0, &qword_1EA9D4FE0, 0x1E69DD190);
  sub_18BAAA034();
  sub_18BC20FD8();
  v10 = a4;
  v11 = a1;
  v12 = sub_18BC20FC8();
  v13.receiver = v11;
  v13.super_class = _s16SelectableHeaderCMa();
  objc_msgSendSuper2(&v13, *a5, v12, v10);

  if (v11[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_isEditing] != 1 || !*&v11[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler])
  {
    [v11 setHighlighted_];
  }
}

id sub_18BAA9F74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s16SelectableHeaderCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18BAAA034()
{
  result = qword_1EA9D9CB0;
  if (!qword_1EA9D9CB0)
  {
    sub_18B7B0AC0(255, &qword_1EA9D4FE0, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9CB0);
  }

  return result;
}

double sub_18BAAA09C(uint64_t *a1)
{
  v2 = v1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration);
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 8);
  v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 16);
  v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 24);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 32);
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v10;
  *(v2 + 32) = *(a1 + 32);
  if (v8)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v9 != v3 || v8 != v4)
    {
      v12 = a1;
      v13 = sub_18BC21FD8();
      a1 = v12;
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v4)
  {
LABEL_13:
    sub_18B80C320();
    goto LABEL_14;
  }

  if (*(a1 + 2) != v6 || *(a1 + 3) != v5 || v7 != (a1[4] & 1))
  {
    goto LABEL_13;
  }

LABEL_14:

  return result;
}

id sub_18BAAA170(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0x3FD999999999999ALL;
  v3[32] = 0;
  v4 = &v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuProvider];
  *v5 = sub_18B8390A8;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_systemSnapshotBackgroundView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = &v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView] = 0;
  v8 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView] = 0;
  v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered] = 0;
  v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight] = 0;
  v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing] = 0;
  v13.receiver = v1;
  v13.super_class = _s11CapsuleViewCMa();
  v9 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_18B80C0B8();
  }

  return v10;
}

void sub_18BAAA2EC()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView;
  if (!*&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView])
  {
    v2 = [objc_allocWithZone(SFShadowView) init];
    [v2 setVibrancyEnabled_];
    v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView];
    *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView] = v2;
    v4 = v2;

    v5 = [objc_opt_self() effectWithStyle_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v8 = v6;

    [v0 insertSubview:v4 atIndex:0];
    [v0 insertSubview:v8 atIndex:1];
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18BAAB26C;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18B7D1EC4;
    *(v12 + 24) = v11;
    v16[4] = sub_18B7D1E94;
    v16[5] = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_18B7E3BF4;
    v16[3] = &block_descriptor_68_0;
    v13 = _Block_copy(v16);
    v14 = v0;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v10 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_18BAAA584(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView];
  if (v2)
  {
    v3 = v2;
    [a1 bounds];
    [v3 setFrame_];
  }

  v4 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView];
  if (v4)
  {
    v5 = v4;
    [a1 bounds];
    [v5 frameWithContentWithFrame_];
    [v5 setFrame_];
  }
}

uint64_t sub_18BAAA658(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v7)
  {
    if (v5 == v9 && v4 == v8)
    {
      return v6 ^ v10 ^ 1u;
    }

    return 0;
  }

  v12 = sub_18BC21FD8();
  result = 0;
  if ((v12 & 1) == 0)
  {
    return result;
  }

LABEL_10:
  if (v5 == v9 && v4 == v8)
  {
    return v6 ^ v10 ^ 1u;
  }

  return result;
}

id sub_18BAAA814(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView);
  v3 = [objc_opt_self() isSolariumEnabled];
  v4 = 0.0;
  if ((v3 & 1) == 0)
  {
    v4 = 1.0;
    if (*(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight) != 1 && (*(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing) & 1) == 0)
    {
      v4 = 0.0;
      if (*(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered))
      {
        v4 = 0.5;
      }
    }
  }

  return [v2 setAlpha_];
}

void sub_18BAAA8C0(char a1)
{
  v2 = v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered];
  v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered] = a1;
  if (v2 != (a1 & 1))
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18BAAB264;
    v6[4] = v4;
    v14 = sub_18B7E767C;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_53_1;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_56;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }
}

double sub_18BAAAAA0(char a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  if (a2)
  {
    v15[4] = sub_18BAAB258;
    v15[5] = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_18B7B0DB0;
    v15[3] = &block_descriptor_43;
    v6 = _Block_copy(v15);
    v7 = v2;
    swift_unknownObjectRetain();
    sub_18BC1E1A8();

    [a2 addAnimations_];

    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing;
    v2[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing] = a1 & 1;
    v10 = *&v2[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView];
    v11 = objc_opt_self();
    v12 = v2;
    v13 = [v11 isSolariumEnabled];
    v14 = 0.0;
    if ((v13 & 1) == 0)
    {
      v14 = 1.0;
      if (v12[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight] != 1 && (v2[v9] & 1) == 0)
      {
        v14 = 0.0;
        if (v12[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered])
        {
          v14 = 0.5;
        }
      }
    }

    [v10 setAlpha_];
  }

  return result;
}

id sub_18BAAAC78(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing;
  *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing) = a2;
  v4 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView);
  v5 = [objc_opt_self() isSolariumEnabled];
  v6 = 0.0;
  if ((v5 & 1) == 0)
  {
    v6 = 1.0;
    if (*(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight) != 1 && (*(a1 + v3) & 1) == 0)
    {
      v6 = 0.0;
      if (*(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered))
      {
        v6 = 0.5;
      }
    }
  }

  return [v4 setAlpha_];
}

void sub_18BAAAD30(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
  if (v1)
  {
    v3 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView + 8];
    v4 = v1;
    v5 = 1.0;
    if (([a1 isSelected] & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      if ((*(v3 + 8))(ObjectType, v3))
      {
        v5 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 24];
      }
    }

    v7 = swift_getObjectType();
    [v4 setAlpha_];
    v8 = v4;
    [a1 bounds];
    [v8 setFrame_];

    (*(v3 + 24))([a1 isSelected], v7, v3);
    v9 = v8;
    UIEdgeInsetsMakeWithEdges();
    [v9 setLayoutMargins_];
  }
}

void sub_18BAAAEB8()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView];
  if (v1)
  {
    v5 = v1;
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v4 = 0.5;
    if (v3 == 2)
    {
      v4 = 1.0;
    }

    [v5 setAlpha_];
  }
}

void sub_18BAAB01C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_18BAAAAA0(a6, a5);
  swift_unknownObjectRelease();
}

id sub_18BAAB094()
{
  v2.receiver = v0;
  v2.super_class = _s11CapsuleViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18BAAB194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18BAAB1F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_18BAAB274()
{
  if (![v0 isSelected])
  {
    return 0;
  }

  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuProvider];
  v2 = sub_18BC1E1A8();
  v3 = v1(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = objc_opt_self();
  v9[4] = sub_18BA6F860;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18B9CBA94;
  v9[3] = &block_descriptor_74_0;
  v6 = _Block_copy(v9);
  sub_18BC1E1A8();

  v7 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  return v7;
}

char *sub_18BAAB3E8(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30, &qword_18BC42A50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v79 - v10 + 16;
  v12 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  v14 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_userInterfaceStyleObservation];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_childrenCount];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_detailText];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_icon] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_image] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_imageViewBookmark] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isMultiSelectable] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isReorderable] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_parentFolder] = 0;
  v17 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_siteName];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_title];
  v19 = _s16BookmarkTileCellCMa();
  *v18 = 0;
  v18[1] = 0;
  v80.receiver = v4;
  v80.super_class = v19;
  v20 = objc_msgSendSuper2(&v80, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F7A8();
  sub_18BC1F768();
  v21 = sub_18BC1F7B8();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  MEMORY[0x18CFFC920](v11);
  v22 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView;
  [*&v20[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView] _setDisableAnimations_];
  [*&v20[v22] _setDisableAutoPlay_];
  [*&v20[v22] _setDisableTapGesture_];
  [*&v20[v22] _setEffectiveCornerRadius_];
  [*&v20[v22] _setPreferredSizeClass_];
  v23 = *&v20[v22];
  v24 = objc_allocWithZone(MEMORY[0x1E696ECB0]);
  v25 = v23;
  v26 = [v24 init];
  [v26 setAlignTextAndMediaHorizontalEdges_];
  [v25 _setSizeClassParameters_];

  v27 = *&v20[v22];
  UIEdgeInsetsMakeWithEdges();
  [v27 _setTextSafeAreaInset_];

  v28 = *&v20[v22];
  v29 = objc_allocWithZone(MEMORY[0x1E696ECA0]);
  v30 = v28;
  v31 = [v29 init];
  [v30 setMetadata_];

  [*&v20[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v20 contentView];
  [v32 addSubview_];

  v33 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel;
  v34 = *&v20[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = *MEMORY[0x1E69DDD10];
  v37 = v34;
  v38 = [v35 preferredFontForTextStyle_];
  [v37 setFont_];

  [*&v20[v33] setNumberOfLines_];
  [*&v20[v33] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v20[v33] setAdjustsFontForContentSizeCategory_];
  v39 = [v20 &selRef_flattenedImageWithColor_];
  [v39 addSubview_];

  v78 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_18BC44480;
  v41 = [*&v20[v22] topAnchor];
  v42 = [v20 &selRef_flattenedImageWithColor_];
  v43 = [v42 topAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v40 + 32) = v44;
  v45 = [*&v20[v22] bottomAnchor];
  v46 = [v20 &selRef_flattenedImageWithColor_];
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v40 + 40) = v48;
  v49 = [*&v20[v22] leadingAnchor];
  v50 = [v20 &selRef_flattenedImageWithColor_];
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v40 + 48) = v52;
  v53 = [*&v20[v22] trailingAnchor];
  v54 = [v20 &selRef_flattenedImageWithColor_];
  v55 = [v54 &selRef_stringByAppendingPathExtension_ + 4];

  v56 = [v53 constraintEqualToAnchor_];
  *(v40 + 56) = v56;
  v57 = [*&v20[v22] heightAnchor];
  v58 = [*&v20[v22] widthAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v40 + 64) = v59;
  v60 = [*&v20[v33] leadingAnchor];
  v61 = [v20 &selRef_flattenedImageWithColor_];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:16.0];
  *(v40 + 72) = v63;
  v64 = [*&v20[v33] trailingAnchor];
  v65 = [v20 &selRef_flattenedImageWithColor_];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor:v66 constant:-16.0];
  *(v40 + 80) = v67;
  v68 = [*&v20[v33] bottomAnchor];
  v69 = [v20 &selRef_flattenedImageWithColor_];
  v70 = [v69 bottomAnchor];

  v71 = [v68 constraintEqualToAnchor:v70 constant:-8.0];
  *(v40 + 88) = v71;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v72 = sub_18BC20D88();

  [v78 activateConstraints_];

  v79[0] = *&v20[v22];
  v73 = v79[0];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = v73;

  v75 = sub_18BC1E958();

  v79[3] = sub_18BC1E868();
  v79[0] = v75;
  v76 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_userInterfaceStyleObservation;
  swift_beginAccess();
  sub_18BAAD8E8(v79, &v20[v76]);
  swift_endAccess();

  return v20;
}

void sub_18BAABD78(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel);

    v7 = [v3 _effectiveTraitCollection];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 userInterfaceStyle];
    }

    else
    {
      v9 = 0;
    }

    [v6 setOverrideUserInterfaceStyle_];
  }
}

id sub_18BAABFFC(void *a1)
{
  v3 = sub_18BC1E728();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1E7F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E758();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v34 - v14;
  result = [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel) font];
  if (result)
  {
    v17 = result;
    v18 = [a1 localizedTitle];
    sub_18BC20BD8();

    sub_18BC1E7E8();
    sub_18BC1E768();
    v41 = v17;
    sub_18B9EA798();
    v19 = v17;
    sub_18BC1E778();
    v20 = objc_opt_self();
    v41 = [v20 secondaryLabelColor];
    sub_18B9EA7EC();
    sub_18BC1E778();
    v21 = WebBookmark.defaultIcon.getter();
    if (v21)
    {
      v22 = v21;
      v23 = objc_opt_self();
      v36 = v19;
      v35 = [v23 configurationWithFont_];
      v24 = [v22 imageByApplyingSymbolConfiguration_];
      if (v24 && (v25 = v24, v26 = [v20 secondaryLabelColor], v27 = objc_msgSend(v25, sel_imageWithTintColor_, v26), v25, v26, v27))
      {
        v28 = [objc_opt_self() textAttachmentWithImage_];
      }

      else
      {
        v28 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      }

      v29 = [objc_opt_self() attributedStringWithAttachment_];
      sub_18BC1E788();
      v30 = v37;
      sub_18BC1E6E8();
      sub_18BC1E718();
      v31 = *(v7 + 8);
      v31(v30, v6);
      v32 = v38;
      sub_18BC1E6D8();
      sub_18BAAD724();
      sub_18BC1E738();

      (*(v39 + 8))(v32, v40);
      v31(v11, v6);
      v19 = v36;
    }

    sub_18B7B0AC0(0, &qword_1EA9D5610, 0x1E696AAB0);
    (*(v7 + 16))(v11, v15, v6);
    v33 = sub_18BC213B8();

    (*(v7 + 8))(v15, v6);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BAAC4CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_imageViewBookmark;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v24 = v12;
    v13 = [v24 address];
    sub_18BC20BD8();

    sub_18BC1EA68();

    v14 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
    sub_18BA7FF9C(v10, v7);
    v15 = sub_18BC1EA98();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = 0;
    if (v17(v7, 1, v15) != 1)
    {
      v18 = sub_18BC1E9E8();
      (*(v16 + 8))(v7, v15);
    }

    [v14 setOriginalURL_];

    v19 = v24;
    v20 = [v24 localizedTitle];
    if (!v20)
    {
      sub_18BC20BD8();
      v20 = sub_18BC20B98();
      v19 = v24;
    }

    [v14 setTitle_];

    sub_18BA7FF9C(v10, v4);
    if (v17(v4, 1, v15) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_18BC1E9E8();
      (*(v16 + 8))(v4, v15);
    }

    [v14 setURL_];

    v22 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata);
    *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata) = v14;
    v23 = v14;
    sub_18BAAC7EC(v22);

    sub_18B988BAC(v10, &qword_1EA9D4500, &qword_18BC478E0);
  }
}

void sub_18BAAC7EC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata;
  v5 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_18B7B0AC0(0, &qword_1EA9D8290, 0x1E696ECA0);
    v6 = v5;
    v7 = a1;
    v8 = sub_18BC215C8();

    if (v8)
    {
      return;
    }

    v5 = *(v2 + v4);
    if (v5)
    {
LABEL_5:
      v9 = v5;
      goto LABEL_8;
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v5 = 0;
LABEL_8:
  v10 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_imageViewBookmark;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v12 = v5;
    v13 = [v11 localizedTitle];
LABEL_11:
    sub_18BC20BD8();

    v13 = sub_18BC20B98();

    goto LABEL_12;
  }

  v14 = v5;
  v13 = [v9 title];
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  [v9 setTitle_];

  [*(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView) setMetadata_];
}

void (*sub_18BAAC98C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_18BAAC9E4;
}

void sub_18BAAC9E4(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v9 = *(v4 + v3);
  *(v4 + v3) = *a1;
  v6 = v5;
  v7 = v6;
  if (a2)
  {
    v8 = v6;
    sub_18BAAC7EC(v9);
  }

  else
  {
    sub_18BAAC7EC(v9);
  }
}

id sub_18BAACA6C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_parentFolder;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel);
  if (v2)
  {
    v4 = v2;
    v5 = sub_18BAABFFC(v4);

    [v3 setAttributedText_];
    [v3 sizeToFit];
    v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView);
    [v3 frame];
    CGRectGetHeight(v12);
    UIEdgeInsetsMakeWithEdges();
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel) setAttributedText_];
    v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView);
    v7 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  return [v6 setContentInset_];
}

id sub_18BAACB78(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = _s16BookmarkTileCellCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_18BAACCC8()
{
  v1 = v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_childrenCount;
  swift_beginAccess();
  return *v1;
}

void sub_18BAACD14(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_childrenCount;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void *sub_18BAACE4C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_icon;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BAACE98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_icon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18BAACF50()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BAACF9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18BAAD054()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_imageViewBookmark;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_18BAAD0C0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18BAAD124;
}

uint64_t sub_18BAAD13C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isMultiSelectable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BAAD180(char a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isMultiSelectable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_18BAAD230()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isReorderable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BAAD274(char a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isReorderable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_18BAAD324()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata);
  v2 = v1;
  return v1;
}

void sub_18BAAD354(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata);
  *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata) = a1;
  v2 = a1;
  sub_18BAAC7EC(v3);
}

void (*sub_18BAAD3B4(void *a1))(void *a1)
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
  v2[4] = sub_18BAAC98C(v2);
  return sub_18BA75C58;
}

void *sub_18BAAD424()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_parentFolder;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BAAD490(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *(v5 + v8);
  *(v5 + v8) = a1;
  v10 = a1;

  a5();
}

uint64_t (*sub_18BAAD504(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18BAAD568;
}

uint64_t sub_18BAAD580(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void (*sub_18BAAD6B4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_18BA7633C(v2);
  return sub_18BA765E4;
}

unint64_t sub_18BAAD724()
{
  result = qword_1EA9D8298;
  if (!qword_1EA9D8298)
  {
    sub_18BC1E758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8298);
  }

  return result;
}

void sub_18BAAD77C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_attributionLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_userInterfaceStyleObservation);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_childrenCount;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_detailText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_icon) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_image) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_imageViewBookmark) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isMultiSelectable) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_isReorderable) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_linkMetadata) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_parentFolder) = 0;
  v6 = (v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_siteName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16BookmarkTileCell_title);
  *v7 = 0;
  v7[1] = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BAAD8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220, &qword_18BC3FCB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_18BAAD958(void *a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_readerModeToggleButton;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isReaderModeAvailable] = 0;
  v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader] = 0;
  v4 = &v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_showReader];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_hideReader];
  v6 = _s18ReaderButtonFooterCMa();
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

char *sub_18BAADA44(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_readerModeToggleButton;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isReaderModeAvailable] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader] = 0;
  v10 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_showReader];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_hideReader];
  v12 = _s18ReaderButtonFooterCMa();
  *v11 = 0;
  v11[1] = 0;
  v39.receiver = v4;
  v39.super_class = v12;
  v13 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = sub_18BC20B98();
  [v13 setAccessibilityIdentifier_];

  v15 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_readerModeToggleButton;
  v16 = *&v13[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_readerModeToggleButton];
  v17 = sub_18BC20B98();
  [v16 setAccessibilityIdentifier_];

  [*&v13[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_18BAADEAC();
  [*&v13[v15] addTarget:v13 action:sel_toggleReader_ forControlEvents:0x2000];
  v18 = [v13 contentView];
  [v18 addSubview_];

  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18BC42C20;
  v21 = [*&v13[v15] centerXAnchor];
  v22 = [v13 contentView];
  v23 = [v22 centerXAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v20 + 32) = v24;
  v25 = [*&v13[v15] centerYAnchor];
  v26 = [v13 contentView];
  v27 = [v26 centerYAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v20 + 40) = v28;
  v29 = [*&v13[v15] widthAnchor];
  v30 = [v13 contentView];
  v31 = [v30 widthAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v20 + 48) = v32;
  v33 = [*&v13[v15] heightAnchor];
  v34 = [v13 contentView];

  v35 = [v34 heightAnchor];
  v36 = [v33 constraintEqualToAnchor_];

  *(v20 + 56) = v36;
  sub_18BA497D0();
  v37 = sub_18BC20D88();

  [v19 activateConstraints_];

  return v13;
}

void sub_18BAADEAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_readerModeToggleButton);
  sub_18BAADFD4(&v6 - v3);
  sub_18BC21828();
  [v2 setMaximumContentSizeCategory_];
  v4 = [objc_opt_self() systemBlueColor];
  [v2 setBackgroundColor_];

  [v2 setNeedsLayout];
  v5 = sub_18BC20B98();
  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_18BAADFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC21628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EE48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC217C8();
  sub_18BBD99B4();
  v10 = sub_18BC20B98();
  v11 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v7 + 8))(v9, v6);
  sub_18BC217A8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v2);
  sub_18BC21638();
  v12 = sub_18BC21808();
  return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
}

void sub_18BAAE234()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_readerModeToggleButton);
  sub_18BAAE340(&v6 - v3);
  sub_18BC21828();
  v4 = [objc_opt_self() systemBlueColor];
  [v2 setBackgroundColor_];

  [v2 setNeedsLayout];
  v5 = sub_18BC20B98();
  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_18BAAE340@<X0>(uint64_t a1@<X8>)
{
  v18 = sub_18BC21628();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC1EE48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_18BC217C8();
  sub_18BBD99B4();
  v12 = sub_18BC20B98();
  v13 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE18();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  sub_18BC217A8();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC508], v18);
  sub_18BC21638();
  v15 = sub_18BC21808();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

id sub_18BAAE75C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_18B7B0DB0;
    v8[3] = a4;
    v6 = _Block_copy(v8);
    sub_18BC1E1A8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_18BAAE8C4()
{
  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_isShowingReader) == 1)
  {
    v1 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_hideReader;
    v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_hideReader);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v1 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_showReader;
    v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant18ReaderButtonFooter_showReader);
    if (!v2)
    {
      return;
    }
  }

  v3 = *(v0 + v1 + 8);
  v4 = sub_18BC1E1A8();
  v2(v4);

  sub_18B7E0A10(v2, v3);
}

id sub_18BAAE9B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s18ReaderButtonFooterCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BAAEA74(uint64_t a1)
{
  v31 = a1;
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v28 - v17;
  sub_18BC1EE38();
  sub_18BC1EE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
  v28 = sub_18BC1EE58();
  v18 = *(v28 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE08();
  v21 = *(v2 + 8);
  v21(v4, v1);
  v21(v7, v1);
  v21(v10, v1);
  v21(v13, v1);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v28);
  swift_deallocClassInstance();
  v22 = v30;
  sub_18BC1EE28();
  v21(v29, v1);
  v21(v22, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E6530];
  *(v23 + 16) = xmmword_18BC3E410;
  v25 = MEMORY[0x1E69E65A8];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = v31;
  v26 = sub_18BC20BA8();

  return v26;
}

uint64_t sub_18BAAEE6C(uint64_t a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  if (a1 == 1)
  {
    sub_18BC1EE38();
    v20 = sub_18BC1EE28();
    (*(v3 + 8))(v19, v2);
  }

  else
  {
    v36 = v17;
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v37 = sub_18BC1EE58();
    v38 = a1;
    v35 = *(v37 - 8);
    v21 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v22 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    v23 = v12;
    v24 = v9;
    v25 = v6;
    v26 = v2;
    v27 = v36;
    sub_18BC1EE38();
    sub_18BC1EE08();
    v34 = v15;
    v28 = *(v3 + 8);
    v28(v27, v26);
    v28(v25, v26);
    v28(v24, v26);
    v28(v23, v26);
    swift_setDeallocating();
    (*(v35 + 8))(v22 + v21, v37);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v28(v34, v26);
    v28(v19, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E6530];
    *(v29 + 16) = xmmword_18BC3E410;
    v31 = MEMORY[0x1E69E65A8];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v38;
    v20 = sub_18BC20BA8();
  }

  return v20;
}

uint64_t sub_18BAAF2E0(uint64_t a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  if (a1 == 1)
  {
    sub_18BC1EE38();
    v20 = sub_18BC1EE28();
    (*(v3 + 8))(v19, v2);
  }

  else
  {
    v35 = v17;
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v36 = sub_18BC1EE58();
    v37 = a1;
    v34 = *(v36 - 8);
    v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v22 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    v23 = v12;
    v24 = v9;
    v25 = v6;
    v26 = v35;
    sub_18BC1EE38();
    sub_18BC1EE08();
    v33 = v15;
    v27 = *(v3 + 8);
    v27(v26, v2);
    v27(v25, v2);
    v27(v24, v2);
    v27(v23, v2);
    swift_setDeallocating();
    (*(v34 + 8))(v22 + v21, v36);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v27(v33, v2);
    v27(v19, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E6530];
    *(v28 + 16) = xmmword_18BC3E410;
    v30 = MEMORY[0x1E69E65A8];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v37;
    v20 = sub_18BC20BA8();
  }

  return v20;
}

uint64_t sub_18BAAF748(uint64_t a1, char a2)
{
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  if (a1 == 1 || (a2 & 1) == 0)
  {
    sub_18BC1EE38();
    v29 = sub_18BC1EE28();
    (*(v5 + 8))(v22, v4);
  }

  else
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v34 = a1;
    v23 = sub_18BC1EE58();
    v32 = *(v23 - 8);
    v33 = v23;
    v31 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v24 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE08();
    v25 = *(v5 + 8);
    v25(v7, v4);
    v25(v10, v4);
    v25(v13, v4);
    v25(v16, v4);
    swift_setDeallocating();
    (*(v32 + 8))(v24 + v31, v33);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v25(v19, v4);
    v25(v22, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E6530];
    *(v26 + 16) = xmmword_18BC3E410;
    v28 = MEMORY[0x1E69E65A8];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v34;
    v29 = sub_18BC20BA8();
  }

  return v29;
}

uint64_t sub_18BAAFBDC(uint64_t a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  if (a1 == 1)
  {
    sub_18BC1EE38();
    v20 = sub_18BC1EE28();
    (*(v3 + 8))(v19, v2);
  }

  else
  {
    v39 = a1;
    v36 = v17;
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v21 = sub_18BC1EE58();
    v37 = *(v21 - 8);
    v38 = v21;
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    v24 = v12;
    v25 = v9;
    v26 = v6;
    v27 = v2;
    v28 = v36;
    sub_18BC1EE38();
    sub_18BC1EE08();
    v35 = v15;
    v29 = *(v3 + 8);
    v29(v28, v27);
    v29(v26, v27);
    v29(v25, v27);
    v29(v24, v27);
    swift_setDeallocating();
    (*(v37 + 8))(v23 + v22, v38);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v29(v35, v27);
    v29(v19, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E6530];
    *(v30 + 16) = xmmword_18BC3E410;
    v32 = MEMORY[0x1E69E65A8];
    *(v30 + 56) = v31;
    *(v30 + 64) = v32;
    *(v30 + 32) = v39;
    v20 = sub_18BC20BA8();
  }

  return v20;
}

uint64_t sub_18BAB0048(uint64_t a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  if (a1 == 1)
  {
    sub_18BC1EE38();
    v20 = sub_18BC1EE28();
    (*(v3 + 8))(v19, v2);
  }

  else
  {
    v39 = a1;
    v36 = v17;
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v21 = sub_18BC1EE58();
    v37 = *(v21 - 8);
    v38 = v21;
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    v24 = v12;
    v25 = v9;
    v26 = v6;
    v27 = v2;
    v28 = v36;
    sub_18BC1EE38();
    sub_18BC1EE08();
    v35 = v15;
    v29 = *(v3 + 8);
    v29(v28, v27);
    v29(v26, v27);
    v29(v25, v27);
    v29(v24, v27);
    swift_setDeallocating();
    (*(v37 + 8))(v23 + v22, v38);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v29(v35, v27);
    v29(v19, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E6530];
    *(v30 + 16) = xmmword_18BC3E410;
    v32 = MEMORY[0x1E69E65A8];
    *(v30 + 56) = v31;
    *(v30 + 64) = v32;
    *(v30 + 32) = v39;
    v20 = sub_18BC20BA8();
  }

  return v20;
}

uint64_t sub_18BAB04BC(uint64_t a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  if (a1 == 1)
  {
    sub_18BC1EE38();
    v20 = sub_18BC1EE28();
    (*(v3 + 8))(v19, v2);
  }

  else
  {
    v39 = a1;
    v36 = v17;
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v21 = sub_18BC1EE58();
    v37 = *(v21 - 8);
    v38 = v21;
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    v24 = v12;
    v25 = v9;
    v26 = v6;
    v27 = v2;
    v28 = v36;
    sub_18BC1EE38();
    sub_18BC1EE08();
    v35 = v15;
    v29 = *(v3 + 8);
    v29(v28, v27);
    v29(v26, v27);
    v29(v25, v27);
    v29(v24, v27);
    swift_setDeallocating();
    (*(v37 + 8))(v23 + v22, v38);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v29(v35, v27);
    v29(v19, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E6530];
    *(v30 + 16) = xmmword_18BC3E410;
    v32 = MEMORY[0x1E69E65A8];
    *(v30 + 56) = v31;
    *(v30 + 64) = v32;
    *(v30 + 32) = v39;
    v20 = sub_18BC20BA8();
  }

  return v20;
}

uint64_t sub_18BAB0930(uint64_t a1, char a2)
{
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  if (a1 == 1 || (a2 & 1) == 0)
  {
    sub_18BC1EE38();
    v28 = sub_18BC1EE28();
    (*(v5 + 8))(v22, v4);
  }

  else
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v32 = sub_18BC1EE58();
    v30 = *(v32 - 8);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v23 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE08();
    v31 = a1;
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    v24(v13, v4);
    v24(v16, v4);
    swift_setDeallocating();
    (*(v30 + 8))(v23 + v33, v32);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v24(v19, v4);
    v24(v22, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E6530];
    *(v25 + 16) = xmmword_18BC3E410;
    v27 = MEMORY[0x1E69E65A8];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v31;
    v28 = sub_18BC20BA8();
  }

  return v28;
}

uint64_t sub_18BAB0DB8(uint64_t a1, char a2)
{
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  if (a1 == 1 || (a2 & 1) == 0)
  {
    sub_18BC1EE38();
    v28 = sub_18BC1EE28();
    (*(v5 + 8))(v22, v4);
  }

  else
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72E8, &unk_18BC47950);
    v32 = sub_18BC1EE58();
    v30 = *(v32 - 8);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v23 = swift_allocObject();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE08();
    v31 = a1;
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    v24(v13, v4);
    v24(v16, v4);
    swift_setDeallocating();
    (*(v30 + 8))(v23 + v33, v32);
    swift_deallocClassInstance();
    sub_18BC1EE28();
    v24(v19, v4);
    v24(v22, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E6530];
    *(v25 + 16) = xmmword_18BC3E410;
    v27 = MEMORY[0x1E69E65A8];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v31;
    v28 = sub_18BC20BA8();
  }

  return v28;
}

id SFCapsulePageLayoutFadeOut.__allocating_init(container:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

id SFCapsulePageLayoutFadeOut.init(container:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SFCapsulePageLayoutFadeOut();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutFadeOut.__allocating_init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

id SFCapsulePageLayoutFadeOut.init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutFadeOut();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t (*sub_18BAB16E8(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutFadeOut_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}

uint64_t (*sub_18BAB17B0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutFadeOut_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9AAC70;
}

double sub_18BAB18C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong pageWidth];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_18BAB1A24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [Strong supplementaryIdentifiers];
  swift_unknownObjectRelease();
  v2 = sub_18BC20D98();

  return v2;
}

char *sub_18BAB1AD4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = [result capsuleInfoForPage_];
    swift_unknownObjectRelease();
    v4 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
    swift_beginAccess();
    *&v3[v4] = 0;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_18BAB1C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_18BC20B98();
    v7 = [v5 infoForSupplementaryIdentifier:v6 page:a3];

    swift_unknownObjectRelease();
    v8 = &v7[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
    swift_beginAccess();
    if (!*(v8 + 1))
    {
      v9 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
      swift_beginAccess();
      *&v7[v9] = 0;
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18BAB1DD8(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [result *a2];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18BAB1E6C(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_unknownObjectRetain();
    v9 = a1;
    v10 = [v8 *a4];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SFCapsulePageLayoutFadeOut.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutFadeOut.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutFadeOut();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18BAB22EC()
{
  v0 = _s12ElementChunkCMa(0);
  v1 = objc_allocWithZone(v0);
  v2 = &v1[qword_1EA9D83E8];
  *v2 = 0xD00000000000001DLL;
  *(v2 + 1) = 0x800000018BC6A710;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EA9D8340 = result;
  return result;
}

id sub_18BAB2364()
{
  v1 = OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___previewSource;
  v2 = *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___previewSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___previewSource];
  }

  else
  {
    v4 = _s13PreviewSourceCMa();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_cachedTargetedPreview] = 0;
    *&v5[OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_coordinator] = v0;
    v11.receiver = v5;
    v11.super_class = v4;
    v6 = v0;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_18BAB240C()
{
  v1 = *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___replacementTextEffectDelegate];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___replacementTextEffectDelegate];
  }

  else
  {
    *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___replacementTextEffectDelegate] = v0;
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

double SFSummarizationAnimationCoordinator.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t SFSummarizationAnimationCoordinator.contentBoundsUpdating.getter()
{
  v1 = OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating;
  swift_beginAccess();
  return *(v0 + v1);
}

void SFSummarizationAnimationCoordinator.contentBoundsUpdating.setter(char a1)
{
  v3 = OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_18BAB270C(v4);
}

void sub_18BAB270C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (!v1[v3])
    {
      v7 = [v1 delegate];
      if (!v7)
      {
        return;
      }

      v8 = *&v1[OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView];
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        v11 = [v9 webViewForSummarizationAnimationCoordinator_];
        v12 = v10;
        [v11 bounds];
        [v12 setFrame_];
        [v12 setHidden_];

        [v9 setTextVisibilityForSummarizationAnimationCoordinator:v1 isVisible:0];
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_9;
    }

    v4 = *&v1[OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v6 = [v1 delegate];
    if (v6)
    {
      [v6 setTextVisibilityForSummarizationAnimationCoordinator:v1 isVisible:1];
      [v5 setHidden_];

LABEL_9:
      swift_unknownObjectRelease();
      return;
    }
  }
}

Swift::Void __swiftcall SFSummarizationAnimationCoordinator.beginPlaceholderReplacement()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView];
  if (v5)
  {
    v6 = sub_18BC20F48();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_18BC20F28();
    v7 = v5;
    v8 = v0;
    v9 = sub_18BC20F18();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = ObjectType;
    sub_18B97E1A4(0, 0, v4, &unk_18BC4A4C0, v10);
  }
}

uint64_t sub_18BAB2A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_18BC1F648();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_18BC1FB58();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  sub_18BC20F28();
  v5[15] = sub_18BC20F18();
  v9 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB2B50, v9, v8);
}

uint64_t sub_18BAB2B50()
{

  sub_18BC1F658();
  if (qword_1EA9D23E0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = qword_1EA9D8340;
  sub_18BAB240C();
  sub_18BAB683C();
  v9 = v8;
  sub_18BC1FB48();
  sub_18BC1FB38();
  (*(v2 + 8))(v1, v4);
  v10 = sub_18BC1F608();
  swift_allocObject();
  v7;
  v11 = sub_18BC1F5D8();
  v12 = MEMORY[0x1E69DBFB8];
  v0[5] = v10;
  v0[6] = v12;
  v0[2] = v11;
  sub_18BC1E1A8();
  sub_18BC1F618();

  (*(v6 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_18BAB2D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B7B6968;

  return sub_18BAB2A00(a1, v4, v5, v6, v7);
}

uint64_t SFSummarizationAnimationCoordinator.startPlaceholderAnimation()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  v1[4] = swift_task_alloc();
  v1[5] = sub_18BC20F28();
  v1[6] = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB2F04, v3, v2);
}

uint64_t sub_18BAB2F04()
{
  v1 = v0[2];

  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    v4 = v0[4];
    v5 = sub_18BC20F48();
    v12 = *(v0 + 1);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    swift_unknownObjectRetain();
    v6 = v12;
    v7 = sub_18BC20F18();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    *(v8 + 32) = v3;
    *(v8 + 40) = v12;
    sub_18B97E1A4(0, 0, v4, &unk_18BC4A4E0, v8);
    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_18BAB3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_18BC1F648();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_18BC1FB58();
  v5[28] = swift_task_alloc();
  v7 = sub_18BC21C28();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  sub_18BC20F28();
  v5[32] = sub_18BC20F18();
  v9 = sub_18BC20ED8();
  v5[33] = v9;
  v5[34] = v8;

  return MEMORY[0x1EEE6DFA0](sub_18BAB31E4, v9, v8);
}

uint64_t sub_18BAB31E4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = [v2 webViewForSummarizationAnimationCoordinator_];
  v0[35] = v3;
  sub_18BAB2364();
  v4 = objc_allocWithZone(sub_18BC1F678());
  v5 = sub_18BC1F668();
  v0[36] = v5;
  v6 = v5;
  v7 = [v3 scrollView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  [v6 setUserInteractionEnabled_];

  v16 = [v3 scrollView];
  [v16 addSubview_];

  v17 = *(v1 + OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView);
  *(v1 + OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView) = v6;
  v18 = v6;

  v0[2] = v0;
  v0[3] = sub_18BAB342C;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8430, &qword_18BC4A5E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18BBDE45C;
  v0[13] = &block_descriptor_82;
  v0[14] = v19;
  [v2 insertSummaryTextPlaceholderForSummarizationAnimationCoordinator:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18BAB342C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_18BAB3534, v2, v1);
}

uint64_t sub_18BAB3534()
{
  v1 = sub_18BC22208();
  v3 = v2;
  sub_18BC220A8();
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_18BAB3614;

  return sub_18BAB5F94(v1, v3, 0, 0, 1);
}

uint64_t sub_18BAB3614()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[31];
  v5 = v2[30];
  v6 = v2[29];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[33];
    v8 = v3[34];
    v9 = sub_18BAB68AC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[33];
    v8 = v3[34];
    v9 = sub_18BAB37A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_18BAB37A8()
{

  if (qword_1EA9D23E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = qword_1EA9D8340;
  v6 = *(v0 + 288);
  v7 = v5;
  sub_18BC1FB48();
  v8 = sub_18BC1F638();
  swift_allocObject();
  v9 = sub_18BC1F628();
  v10 = MEMORY[0x1E69DBFC0];
  *(v0 + 168) = v8;
  *(v0 + 176) = v10;
  *(v0 + 144) = v9;
  sub_18BC1E1A8();
  sub_18BC1F618();

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_18BAB3930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B7B6968;

  return sub_18BAB3068(a1, v4, v5, v6, v7);
}

uint64_t sub_18BAB3B6C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB3C04, v4, v3);
}

uint64_t sub_18BAB3C04()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_18BAB3CB4;

  return SFSummarizationAnimationCoordinator.startPlaceholderAnimation()();
}

uint64_t sub_18BAB3CB4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 40);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

Swift::Void __swiftcall SFSummarizationAnimationCoordinator.endAnimations()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_18BC20F48();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_18BC20F28();
  v5 = v0;
  v6 = sub_18BC20F18();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_18B97E1A4(0, 0, v3, &unk_18BC4A4F0, v7);
}

uint64_t sub_18BAB3F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18BC20F28();
  *(v4 + 24) = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB3FB8, v6, v5);
}

uint64_t sub_18BAB3FB8()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView;
  v3 = *(v1 + OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView);
  if (v3)
  {
    v4 = v3;
    sub_18BC1F658();

    v5 = *(v1 + v2);
    if (v5)
    {
      [v5 removeFromSuperview];
      v3 = *(v1 + v2);
    }

    else
    {
      v3 = 0;
    }
  }

  *(v1 + v2) = 0;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18BAB4068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B7B6968;

  return sub_18BAB3F20(a1, v4, v5, v6);
}

uint64_t sub_18BAB424C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_18BC20F28();
  v2[21] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BAB42E4, v4, v3);
}

uint64_t sub_18BAB42E4()
{
  v1 = [*(v0 + 160) delegate];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    _s12ElementChunkCMa(0);
    if (swift_dynamicCastClass())
    {
      v4 = *(v0 + 160);
      v5 = v3;
      v6 = [v2 webViewForSummarizationAnimationCoordinator_];
      *(v0 + 200) = v6;
      if ([v6 respondsToSelector_])
      {
        sub_18BC1E3F8();
        v7 = sub_18BC20B98();
        *(v0 + 208) = v7;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = sub_18BAB4538;
        v8 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8428, &qword_18BC4A5B0);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_18BAB46D0;
        *(v0 + 104) = &block_descriptor_31;
        *(v0 + 112) = v8;
        [v6 _targetedPreviewForElementWithID_completionHandler_];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      v9 = *(v0 + 152);
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_18BAB4538()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_18BAB4640, v2, v1);
}

uint64_t sub_18BAB4640()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[19];

  swift_unknownObjectRelease();
  v4 = v0[18];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_18BAB46D0(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

id SFSummarizationAnimationCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___previewSource] = 0;
  *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator____lazy_storage___replacementTextEffectDelegate] = 0;
  *&v0[OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___SFSummarizationAnimationCoordinator_contentBoundsUpdating] = 0;
  v2.receiver = v0;
  v2.super_class = SFSummarizationAnimationCoordinator;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for SFSummarizationAnimationCoordinator()
{
  result = qword_1EA9D83E0;
  if (!qword_1EA9D83E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D83E0);
  }

  return result;
}

uint64_t _s12ElementChunkCMa(uint64_t a1)
{
  result = qword_1EA9D8400;
  if (!qword_1EA9D8400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18BAB4A38(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v5 = sub_18BC20ED8();
  v2[5] = v5;
  v2[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18BAB4AD4, v5, v4);
}

uint64_t sub_18BAB4AD4()
{
  v1 = [*(v0 + 24) delegate];
  *(v0 + 56) = v1;
  if (v1)
  {
    [v1 replacePlaceholderWithSummaryForSummarizationAnimationCoordinator_];
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_18BAB4BD4;
    v3 = *(v0 + 16);

    return sub_18BAB424C(v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_18BAB4BD4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_18BAB4CFC, v4, v3);
}

uint64_t sub_18BAB4CFC()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18BAB4D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18B987B10;

  return MEMORY[0x1EEE4C2F8](a1, a2, a3, a4, a5);
}

void sub_18BAB4E34()
{
  v1 = *v0;
  v2 = OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView;
  v3 = *(v1 + OBJC_IVAR___SFSummarizationAnimationCoordinator_effectView);
  if (v3)
  {
    [v3 removeFromSuperview];
    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;
}

uint64_t sub_18BAB4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18B7B6968;

  return MEMORY[0x1EEE4C2F8](a1, a2, a3, a4, a5);
}

uint64_t sub_18BAB4F50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BAB4FE8, v4, v3);
}

uint64_t sub_18BAB4FE8()
{
  v0[7] = *(v0[3] + OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_coordinator);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18BAB5090;
  v2 = v0[2];

  return sub_18BAB424C(v2);
}

uint64_t sub_18BAB5090(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_18BAB51B8, v4, v3);
}

uint64_t sub_18BAB51B8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[3];

  v4 = *(v3 + OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_cachedTargetedPreview);
  *(v3 + OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_cachedTargetedPreview) = v1;

  if ([v2 delegate])
  {
    swift_unknownObjectRelease();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_18BAB53F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18BC20F28();
  v3[5] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB548C, v5, v4);
}

uint64_t sub_18BAB548C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_18BAB5550;
  v7 = v0[2];

  return sub_18BAB4F50(v7);
}

uint64_t sub_18BAB5550(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_18BAB5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_18BC20F28();
  v3[5] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB58D4, v5, v4);
}

uint64_t sub_18BAB58D4()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB5980, v5, v4);
}

void sub_18BAB5980()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_cachedTargetedPreview];
  if (v2)
  {
    v3 = v0[6];
    v4 = v2;

    (v3)[2](v3, v4);
    _Block_release(v3);

    v5 = v0[1];

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BAB5BC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = sub_18BC20F28();
  *(v4 + 48) = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB5C64, v6, v5);
}

uint64_t sub_18BAB5C64()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[8] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAB5D18, v7, v6);
}

uint64_t sub_18BAB5D18()
{

  _s12ElementChunkCMa(0);
  v1 = swift_dynamicCastClass();
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_coordinator;
    v4 = [*&v2[OBJC_IVAR____TtCE12MobileSafariCSo35SFSummarizationAnimationCoordinatorP33_E09169D422D36BE5C4DC0D2ABF558B1213PreviewSource_coordinator] delegate];
    v5 = *(v0 + 32);
    if (v4)
    {
      v6 = *(v0 + 16);
      [v4 setTextVisibilityForSummarizationAnimationCoordinator:*&v2[v3] isVisible:*(v0 + 72)];

      swift_unknownObjectRelease();
    }

    else
    {
      v8 = *(v0 + 16);
    }
  }

  else
  {
    v7 = *(v0 + 16);
  }

  v9 = *(v0 + 56);
  v9[2](v9);
  _Block_release(v9);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_18BAB5ED0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18B7B6968;

  return sub_18BAB5BC0(v2, v3, v5, v4);
}

uint64_t sub_18BAB5F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18BC21C18();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_18BAB6094, 0, 0);
}

uint64_t sub_18BAB6094()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_18BC21C28();
  v5 = sub_18BAB67F4(&qword_1EA9D8438, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_18BC22088();
  sub_18BAB67F4(&qword_1EA9D8440, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_18BC21C38();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_18BAB6224;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_18BAB6224()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18BAB63E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_18BAB63E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BAB644C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18BAB5838(v2, v3, v4);
}

uint64_t sub_18BAB6500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B987B10;

  return sub_18B7B3C20(a1, v4, v5, v6);
}

uint64_t objectdestroy_31Tm()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18BAB6614()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18BAB53F0(v2, v3, v4);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18BAB6708()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18B7B6968;

  return sub_18BAB3B6C(v2, v3);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18BAB67F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18BAB683C()
{
  result = qword_1EA9D8448;
  if (!qword_1EA9D8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8448);
  }

  return result;
}

id sub_18BAB68B0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_contentIsHidden] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image] = 0;
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  v10 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v11 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_imageView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for BlurrableImageView()) init];
  v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_needsLayOutWithCurrentMetrics] = 1;
  v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHighlighted] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHovered] = 0;
  v14.receiver = v4;
  v14.super_class = _s18PeekingOverlayViewCMa();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BAB6B24();

  return v12;
}

id sub_18BAB69F8(void *a1)
{
  v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_contentIsHidden] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image] = 0;
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_imageView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for BlurrableImageView()) init];
  v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_needsLayOutWithCurrentMetrics] = 1;
  v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHovered] = 0;
  v10.receiver = v1;
  v10.super_class = _s18PeekingOverlayViewCMa();
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_18BAB6B24();
  }

  return v7;
}

void sub_18BAB6B24()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_backgroundView];
  [v1 _setContinuousCornerRadius_];
  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_imageView];
  [v2 setContentMode_];
  v3 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:20.0];
  [v2 setPreferredSymbolConfiguration_];

  [v2 setTintAdjustmentMode_];
  v4 = objc_opt_self();
  v5 = [v4 secondaryLabelColor];
  [v2 setTintColor_];

  [v0 setInsetsLayoutMarginsFromSafeArea_];
  [v0 setUserInteractionEnabled_];
  [v0 addSubview_];
  [v0 addSubview_];
  if (v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHighlighted])
  {
    v6 = &selRef_systemFillColor;
  }

  else if (v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHovered])
  {
    v6 = &selRef_secondarySystemFillColor;
  }

  else
  {
    v6 = &selRef_tertiarySystemFillColor;
  }

  v7 = [v4 *v6];
  [v1 setBackgroundColor_];
}

id sub_18BAB6D00()
{
  v2.receiver = v0;
  v2.super_class = _s18PeekingOverlayViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BAB6D90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (v5)
    {
      v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
      if (v6 || (sub_18BC21FD8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

double sub_18BAB6E04(char a1, uint64_t a2, uint64_t a3, double result)
{
  v5 = v4 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration;
  v6 = *(v4 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration);
  v7 = *(v4 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration + 8);
  v8 = *(v4 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration + 16);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  if (v6 == (a1 & 1))
  {
    if (a3)
    {
      if (v8)
      {
        v9 = v7 == a2 && v8 == a3;
        if (v9 || (sub_18BC21FD8() & 1) != 0)
        {
          goto LABEL_3;
        }
      }
    }

    else if (!v8)
    {
      return result;
    }
  }

  sub_18BAB7518(result);
LABEL_3:

  return result;
}

void sub_18BAB6EA4()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration);
  if (!v2 || (v3 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_beginAccess(), *(v2 + 24) = sub_18BA4C894, *(v2 + 32) = v3, , (v4 = *(v0 + v1)) == 0))
  {
    v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView);
    goto LABEL_6;
  }

  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView);
  if (!v5)
  {
LABEL_6:
    v9 = sub_18BC20B98();
    v7 = [objc_opt_self() systemImageNamed_];

    v8 = 0;
    goto LABEL_7;
  }

  v7 = v5;
  v8 = v7;
LABEL_7:
  [v6 setImage_];
}

void sub_18BAB6FE8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView);
    v6 = a1;
    if (!a1)
    {
      v7 = sub_18BC20B98();
      v6 = [objc_opt_self() systemImageNamed_];
    }

    v8 = a1;
    [v5 setImage_];
  }
}

id sub_18BAB70C4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration] = 0;
  v10 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v11 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_titleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_unreadIndicator;
  *&v4[v12] = [objc_allocWithZone(SFUnreadIndicator) init];
  v15.receiver = v4;
  v15.super_class = _s15PinnedTitleViewCMa();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BAB7310();

  return v13;
}

id sub_18BAB71F8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration] = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_titleLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_unreadIndicator;
  *&v1[v6] = [objc_allocWithZone(SFUnreadIndicator) init];
  v11.receiver = v1;
  v11.super_class = _s15PinnedTitleViewCMa();
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_18BAB7310();
  }

  return v8;
}

id sub_18BAB7310()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView];
  [v1 setContentMode_];
  [v1 setTintAdjustmentMode_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTintColor_];

  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_titleLabel];
  [v3 setAdjustsFontForContentSizeCategory_];
  if (qword_1EA9D2348 != -1)
  {
    swift_once();
  }

  [v3 setFont_];
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC3E410;
  v5 = sub_18BC1FF28();
  v6 = MEMORY[0x1E69DC2B0];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  MEMORY[0x18CFFCA40](v4, sel_contentSizeCategoryDidChange);
  swift_unknownObjectRelease();

  sub_18BAB7518(v7);
  v8 = [v0 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = sub_18BC21438();

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  return [v3 setNumberOfLines_];
}

id sub_18BAB7518(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_titleLabel];
  if (*&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration + 16])
  {
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = inited;
  v7[3] = sub_18BAB7E40;
  v7[4] = v5;
  v16 = sub_18B7D80AC;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B7B0DB0;
  v15 = &block_descriptor_32;
  v8 = _Block_copy(&v12);
  swift_retain_n();
  v9 = v1;
  sub_18BC1E1A8();

  v16 = CGRectMake;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B8043A0;
  v15 = &block_descriptor_13_0;
  v10 = _Block_copy(&v12);

  [v6 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v10);
  _Block_release(v8);

  return [v9 setNeedsLayout];
}

id sub_18BAB782C(uint64_t a1)
{
  v55.receiver = v1;
  v55.super_class = _s15PinnedTitleViewCMa();
  objc_msgSendSuper2(&v55, sel_layoutSubviews);
  v2 = [v1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_18BC21438();

  v5 = 16.0;
  if (v4)
  {
    v6 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:v2];
    [v6 capHeight];
    v5 = v7;
  }

  v8 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView];
  [v1 bounds];
  Height = CGRectGetHeight(v56);
  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  [v1 bounds];
  v15 = 0.0;
  if (v10)
  {
    MaxX = CGRectGetMaxX(*&v11);
    v57.origin.x = 0.0;
    v57.origin.y = 0.0;
    v57.size.width = v5;
    v57.size.height = Height;
    v17 = MaxX - CGRectGetMaxX(v57);
    v58.origin.x = 0.0;
    v58.origin.y = 0.0;
    v58.size.width = v5;
    v58.size.height = Height;
    MinY = CGRectGetMinY(v58);
    v59.origin.x = 0.0;
    v59.origin.y = 0.0;
    v59.size.width = v5;
    v59.size.height = Height;
    Width = CGRectGetWidth(v59);
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v5;
    v60.size.height = Height;
    Height = CGRectGetHeight(v60);
  }

  else
  {
    v17 = 0.0;
    MinY = 0.0;
    Width = v5;
  }

  [v8 setFrame_];
  v20 = v5 + 4.0;
  if (v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration] == 1)
  {
    [*&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_unreadIndicator] intrinsicContentSize];
    v15 = v21 + 4.0;
  }

  [v1 bounds];
  v26 = UIEdgeInsetsInsetRect_1(v22, v23, v24, v25, 0.0, v20, 0.0, v15);
  v27 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_titleLabel];
  [v27 sizeThatFits_];
  if (v26 >= v28)
  {
    v26 = v28;
  }

  [v1 bounds];
  v29 = CGRectGetHeight(v61);
  v30 = [v1 effectiveUserInterfaceLayoutDirection];
  [v1 bounds];
  if (v30)
  {
    v35 = CGRectGetMaxX(*&v31);
    v62.origin.y = 0.0;
    v62.origin.x = v20;
    v62.size.width = v26;
    v62.size.height = v29;
    v36 = v35 - CGRectGetMaxX(v62);
    v63.origin.y = 0.0;
    v63.origin.x = v20;
    v63.size.width = v26;
    v63.size.height = v29;
    v37 = CGRectGetMinY(v63);
    v64.origin.y = 0.0;
    v64.origin.x = v20;
    v64.size.width = v26;
    v64.size.height = v29;
    v38 = CGRectGetWidth(v64);
    v65.origin.y = 0.0;
    v65.origin.x = v20;
    v65.size.width = v26;
    v65.size.height = v29;
    v39 = CGRectGetHeight(v65);
  }

  else
  {
    v37 = 0.0;
    v36 = v20;
    v38 = v26;
    v39 = v29;
  }

  [v27 setFrame_];
  v40 = *&v1[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_unreadIndicator];
  v66.origin.x = v20;
  v66.origin.y = 0.0;
  v66.size.width = v26;
  v66.size.height = v29;
  v41 = CGRectGetMaxX(v66) + 4.0;
  [v40 intrinsicContentSize];
  v43 = v42;
  [v1 bounds];
  v44 = CGRectGetHeight(v67);
  v45 = [v1 effectiveUserInterfaceLayoutDirection];
  [v1 bounds];
  if (v45)
  {
    v50 = CGRectGetMaxX(*&v46);
    v68.origin.y = 0.0;
    v68.origin.x = v41;
    v68.size.width = v43;
    v68.size.height = v44;
    v51 = v50 - CGRectGetMaxX(v68);
    v69.origin.y = 0.0;
    v69.origin.x = v41;
    v69.size.width = v43;
    v69.size.height = v44;
    v52 = CGRectGetMinY(v69);
    v70.origin.y = 0.0;
    v70.origin.x = v41;
    v70.size.width = v43;
    v70.size.height = v44;
    v53 = CGRectGetWidth(v70);
    v71.origin.y = 0.0;
    v71.origin.x = v41;
    v71.size.width = v43;
    v71.size.height = v44;
    v44 = CGRectGetHeight(v71);
    v41 = v51;
    v43 = v53;
  }

  else
  {
    v52 = 0.0;
  }

  return [v40 setFrame_];
}

id sub_18BAB7CA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s15PinnedTitleViewCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BAB7D80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18BAB7DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_18BAB7E40()
{
  v1 = *(v0 + 16);
  v2 = 0.0;
  if (*(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_configuration))
  {
    v2 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_unreadIndicator) setAlpha_];
}

void sub_18BAB7E78(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration);
  if (v3)
  {
    v4 = a1;
    swift_beginAccess();
    *(v3 + 24) = CGRectMake;
    *(v3 + 32) = 0;

    a1 = v4;
  }

  *(v1 + v2) = a1;
  sub_18BC1E1A8();

  sub_18BAB6EA4();
}

uint64_t sub_18BAB7F0C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_18BAB7F40(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t sub_18BAB7F80@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t SFBookmarksCollectionViewController.Section.contextMenuActionProvider.getter()
{
  memcpy(__dst, (v0 + 64), sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1)
  {
    return 0;
  }

  v1 = __dst[29];
  sub_18B824D48(__dst[29], __dst[30]);
  return v1;
}

void sub_18BAB8024(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1 || (v3 = __dst[29]) == 0)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = __dst[30];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    sub_18BC1E1A8();
    v6 = sub_18BAB945C;
  }

  *a2 = v6;
  a2[1] = v5;
}

uint64_t sub_18BAB80D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18BAA4318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  memcpy(__dst, a2 + 8, sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1)
  {
    sub_18B824D48(v3, v4);
    return sub_18B7B171C(v6, v5);
  }

  else
  {
    v8 = a2[37];
    v9 = a2[38];
    sub_18B824D48(v3, v4);
    result = sub_18B7B171C(v8, v9);
    a2[37] = v6;
    a2[38] = v5;
  }

  return result;
}

uint64_t SFBookmarksCollectionViewController.Section.contextMenuActionProvider.setter(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2 + 8, sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1)
  {
    return sub_18B7B171C(a1, a2);
  }

  result = sub_18B7B171C(v2[37], v2[38]);
  v2[37] = a1;
  v2[38] = a2;
  return result;
}

void (*SFBookmarksCollectionViewController.Section.contextMenuActionProvider.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x268uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[76] = v1;
  memcpy(v3, (v1 + 64), 0x128uLL);
  if (sub_18B81CA10(v4) == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v4[29];
    v6 = v4[30];
    sub_18B824D48(v5, v6);
  }

  v4[74] = v5;
  v4[75] = v6;
  return sub_18BAB82D0;
}

void sub_18BAB82D0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 592);
  v5 = *(*a1 + 600);
  memcpy((*a1 + 296), (*(*a1 + 608) + 64), 0x128uLL);
  v6 = sub_18B81CA10((v3 + 37));
  if (a2)
  {
    if (v6 != 1)
    {
      v7 = v3[76];
      v8 = *(v7 + 296);
      v9 = *(v7 + 304);
      sub_18B824D48(v4, v5);
      sub_18B7B171C(v8, v9);
      *(v7 + 296) = v4;
      *(v7 + 304) = v5;
    }

    v10 = v3[74];
    v11 = v3[75];
  }

  else
  {
    if (v6 != 1)
    {
      v12 = v3[76];
      sub_18B7B171C(*(v12 + 296), *(v12 + 304));
      *(v12 + 296) = v4;
      *(v12 + 304) = v5;
      goto LABEL_9;
    }

    v10 = v4;
    v11 = v5;
  }

  sub_18B7B171C(v10, v11);
LABEL_9:

  free(v3);
}

uint64_t SFBookmarksCollectionViewController.Section.trailingSwipeActionsProvider.getter()
{
  memcpy(__dst, (v0 + 64), sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1)
  {
    return 0;
  }

  v1 = __dst[25];
  sub_18B824D48(__dst[25], __dst[26]);
  return v1;
}

void sub_18BAB840C(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1 || (v3 = __dst[25]) == 0)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = __dst[26];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    sub_18BC1E1A8();
    v6 = sub_18BAB9428;
  }

  *a2 = v6;
  a2[1] = v5;
}

uint64_t sub_18BAB84B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18BAA4318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  memcpy(__dst, a2 + 8, sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1)
  {
    sub_18B824D48(v3, v4);
    return sub_18B7B171C(v6, v5);
  }

  else
  {
    v8 = a2[33];
    v9 = a2[34];
    sub_18B824D48(v3, v4);
    result = sub_18B7B171C(v8, v9);
    a2[33] = v6;
    a2[34] = v5;
  }

  return result;
}

uint64_t SFBookmarksCollectionViewController.Section.trailingSwipeActionsProvider.setter(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2 + 8, sizeof(__dst));
  if (sub_18B81CA10(__dst) == 1)
  {
    return sub_18B7B171C(a1, a2);
  }

  result = sub_18B7B171C(v2[33], v2[34]);
  v2[33] = a1;
  v2[34] = a2;
  return result;
}

void (*SFBookmarksCollectionViewController.Section.trailingSwipeActionsProvider.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x268uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[76] = v1;
  memcpy(v3, (v1 + 64), 0x128uLL);
  if (sub_18B81CA10(v4) == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v4[25];
    v6 = v4[26];
    sub_18B824D48(v5, v6);
  }

  v4[74] = v5;
  v4[75] = v6;
  return sub_18BAB86B8;
}

void sub_18BAB86B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 592);
  v5 = *(*a1 + 600);
  memcpy((*a1 + 296), (*(*a1 + 608) + 64), 0x128uLL);
  v6 = sub_18B81CA10((v3 + 37));
  if (a2)
  {
    if (v6 != 1)
    {
      v7 = v3[76];
      v8 = *(v7 + 264);
      v9 = *(v7 + 272);
      sub_18B824D48(v4, v5);
      sub_18B7B171C(v8, v9);
      *(v7 + 264) = v4;
      *(v7 + 272) = v5;
    }

    v10 = v3[74];
    v11 = v3[75];
  }

  else
  {
    if (v6 != 1)
    {
      v12 = v3[76];
      sub_18B7B171C(*(v12 + 264), *(v12 + 272));
      *(v12 + 264) = v4;
      *(v12 + 272) = v5;
      goto LABEL_9;
    }

    v10 = v4;
    v11 = v5;
  }

  sub_18B7B171C(v10, v11);
LABEL_9:

  free(v3);
}

double static SFBookmarksCollectionViewController.Section.grid(leadingSymbolName:title:isOrthogonallyScrollable:acceptsDrops:expansionHandler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a6)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  sub_18BAA2264(__src);
  memcpy(&v20[7], __src, 0x128uLL);
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = v17;
  memcpy((a9 + 57), v20, 0x12FuLL);
  *(a9 + 360) = a5;
  *(a9 + 368) = 0;
  *(a9 + 376) = 0;
  *(a9 + 384) = 0;
  *(a9 + 392) = a7;
  *(a9 + 400) = a8;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  return sub_18B824D48(a7, a8);
}

uint64_t static SFBookmarksCollectionViewController.Section.historySession(identifier:title:willToggleHandler:shouldExpand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_18BAA2264(__src);
  memcpy(&v24[7], __src, 0x128uLL);
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18B9FC96C(a1, a2, a3, a4, v23);
  v18 = v23[33];
  v17 = v23[34];
  sub_18BC1E1A8();
  sub_18B7B171C(v18, v17);
  v23[33] = a7;
  v23[34] = a8;
  v19 = v23[35];
  v20 = v23[36];
  sub_18BC1E1A8();
  sub_18B7B171C(v19, v20);
  v23[35] = a5;
  v23[36] = a6;
  memcpy(__dst, v23, sizeof(__dst));
  memcpy(v27, v23, sizeof(v27));
  CGRectMake();
  memcpy(v28, &v24[7], sizeof(v28));
  sub_18BAA2054(__dst, v31);
  sub_18BAB8A7C(v28);
  memcpy(&v24[7], v27, 0x128uLL);
  v29[0] = a1;
  v29[1] = a2;
  LOBYTE(v29[2]) = 2;
  v29[4] = 0;
  v29[3] = 0;
  v29[5] = a3;
  v29[6] = a4;
  LOBYTE(v29[7]) = 2;
  memcpy(&v29[7] + 1, v24, 0x12FuLL);
  LOBYTE(v29[45]) = 0;
  memset(&v29[46], 0, 40);
  memcpy(a9, v29, 0x198uLL);
  memcpy(v30, v23, sizeof(v30));
  sub_18BAA21B4(v29, v31);
  sub_18BAA2294(v30);
  v31[0] = a1;
  v31[1] = a2;
  v32 = 2;
  v34 = 0;
  v33 = 0;
  v35 = a3;
  v36 = a4;
  v37 = 2;
  memcpy(v38, v24, 0x12FuLL);
  v38[303] = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  return sub_18BAA2210(v31);
}

uint64_t sub_18BAB8A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7E00, &qword_18BC49FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18BAB8AFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_18BAA2264(__src);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  memcpy((a4 + 64), __src, 0x128uLL);
  *(a4 + 360) = 0;
  *(a4 + 368) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0;
  sub_18BC1E3F8();
  return result;
}

id static SFBookmarksCollectionViewController.Section.historyInfoSection(identifier:icon:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v28 = a3;
  v10 = sub_18BC1EE48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_18BC21AD8();

  v29[0] = 0x2D79726F74736948;
  v29[1] = 0xE800000000000000;
  MEMORY[0x18CFFC150](a1, a2);
  MEMORY[0x18CFFC150](0xD000000000000013, 0x800000018BC6A940);
  v17 = v29[0];
  v18 = v29[1];
  if (a5)
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE18();
    v25 = v18;
    v26 = v17;
    v19 = *(v11 + 8);
    v19(v13, v10);
    v19(v16, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_18BC3E410;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_18B9EEA2C();
    *(v20 + 32) = v27;
    *(v20 + 40) = a5;
    sub_18BC1E3F8();
    v18 = v25;
    v21 = sub_18BC20BA8();
    a5 = v22;
    v17 = v26;
  }

  else
  {
    v21 = v27;
  }

  sub_18BAA2264(v29);
  *a6 = v17;
  *(a6 + 8) = v18;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 2;
  memcpy((a6 + 64), v29, 0x128uLL);
  *(a6 + 360) = 0;
  v23 = v28;
  *(a6 + 368) = v28;
  *(a6 + 376) = v21;
  *(a6 + 392) = 0;
  *(a6 + 400) = 0;
  *(a6 + 384) = a5;

  return v23;
}

uint64_t SFBookmarksCollectionViewController.Section.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if (*(v1 + 8))
  {
    sub_18BC22178();
    sub_18BC20C28();
  }

  else
  {
    sub_18BC22178();
  }

  MEMORY[0x18CFFD660](v2);
  sub_18BC22178();
  if (v3)
  {
    sub_18BC20C28();
  }

  return MEMORY[0x18CFFD660](v4);
}

uint64_t SFBookmarksCollectionViewController.Section.description.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0x3E6C696E3CLL;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](v2, v3);

  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  sub_18BC21C58();
  return 0;
}

uint64_t SFBookmarksCollectionViewController.Section.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_18BC22158();
  sub_18BC22178();
  if (v1)
  {
    sub_18BC20C28();
  }

  MEMORY[0x18CFFD660](v2);
  sub_18BC22178();
  if (v3)
  {
    sub_18BC20C28();
  }

  MEMORY[0x18CFFD660](v4);
  return sub_18BC221A8();
}

uint64_t sub_18BAB9090()
{
  sub_18BC22158();
  SFBookmarksCollectionViewController.Section.hash(into:)(v1);
  return sub_18BC221A8();
}

uint64_t sub_18BAB90D4(uint64_t a1)
{
  sub_18BC22158();
  SFBookmarksCollectionViewController.Section.hash(into:)(v2);
  return sub_18BC221A8();
}

BOOL _s12MobileSafari35SFBookmarksCollectionViewControllerC7SectionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a1 + 56);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v8)
    {
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v14 = sub_18BC21FD8();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    if (v4 != v9)
    {
      return result;
    }

LABEL_11:
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_18BC21FD8() & 1) == 0)
      {
        return 0;
      }

      return v7 == v12;
    }

    if (!v10)
    {
      return v7 == v12;
    }

    return 0;
  }

  result = 0;
  if (!v8)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari35SFBookmarksCollectionViewControllerC4ItemVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18BAB9230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 408))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18BAB928C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 408) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 408) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18BAB937C()
{
  result = qword_1EA9D84B8;
  if (!qword_1EA9D84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D84B8);
  }

  return result;
}

unint64_t sub_18BAB93D4()
{
  result = qword_1EA9D84C0;
  if (!qword_1EA9D84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D84C0);
  }

  return result;
}

uint64_t sub_18BAB9428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18BAB945C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

char *sub_18BAB9490(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1EE48();
  v175 = *(v9 - 1);
  v176 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v174 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v165 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v165 - v15;
  v17 = sub_18BC1F7B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30, &qword_18BC42A50);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v165 - v22;
  v24 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_speechRatePicker;
  v25 = objc_allocWithZone(type metadata accessor for SFInlinePopUpButton());
  *&v4[v24] = sub_18BA2DE08(0);
  v26 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_backButton;
  v27 = type metadata accessor for MediaPlaybackButton();
  v28 = objc_allocWithZone(v27);
  sub_18BABB62C(0);
  *&v4[v26] = v29;
  v30 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_playButton;
  v31 = objc_allocWithZone(v27);
  sub_18BABB62C(1u);
  *&v4[v30] = v32;
  v33 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_forwardButton;
  v34 = objc_allocWithZone(v27);
  sub_18BABB62C(2u);
  *&v4[v33] = v35;
  v36 = _s20ListenToPageCardCellCMa();
  v177.receiver = v4;
  v177.super_class = v36;
  v37 = objc_msgSendSuper2(&v177, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = sub_18BC20B98();
  [v37 setAccessibilityIdentifier_];

  sub_18BC1F7A8();
  v39 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_18BC1F788();
  (*(v18 + 16))(v23, v20, v17);
  sub_18BC1F768();
  (*(v18 + 8))(v20, v17);
  (*(v18 + 56))(v23, 0, 1, v17);
  MEMORY[0x18CFFC920](v23);
  v40 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_speechRatePicker;
  v41 = *&v37[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_speechRatePicker];
  sub_18BC21818();
  v42 = sub_18BC21808();
  v43 = *(v42 - 8);
  result = (*(v43 + 48))(v16, 1, v42);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_18BC21668();
    v46 = v45;
    (*(v43 + 8))(v16, v42);
    v47 = [v37 contentView];
    if (qword_1EA9D2180 != -1)
    {
      swift_once();
    }

    [v47 setLayoutMargins_];

    v48 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v48 setAccessibilityTraits_];
    [v48 setAdjustsFontForContentSizeCategory_];
    v49 = [objc_opt_self() preferredFontForTextStyle_];
    [v48 setFont_];

    sub_18BC1EE38();
    v50 = v174;
    sub_18BC1EE38();
    sub_18BC1EE18();
    v51 = v175[1];
    v52 = v50;
    v53 = v176;
    v51(v52, v176);
    v51(v13, v53);
    v54 = sub_18BC20B98();

    [v48 setText_];

    v55 = v48;
    [v55 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v56) = 1132068864;
    v176 = v55;
    [v55 setContentCompressionResistancePriority:0 forAxis:v56];
    v57 = [v37 contentView];
    [v57 addSubview_];

    v58 = *&v37[v40];
    v59 = sub_18BC20B98();
    [v58 setAccessibilityIdentifier_];

    [*&v37[v40] setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v60) = 1144750080;
    [*&v37[v40] setContentCompressionResistancePriority:0 forAxis:v60];
    v61 = [v37 &selRef_flattenedImageWithColor_];
    [v61 addSubview_];

    v62 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v62 setTranslatesAutoresizingMaskIntoConstraints_];
    v63 = v37;
    v64 = [v63 &selRef_flattenedImageWithColor_];
    [v64 addSubview_];

    v65 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_playButton;
    [*&v63[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_playButton] setTranslatesAutoresizingMaskIntoConstraints_];
    v66 = *&v63[v65];
    v168 = v40;
    v169 = v65;
    [v66 addTarget:v63 action:sel_playOrPause forControlEvents:0x2000];
    [v62 addSubview_];
    v67 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_backButton;
    [*&v63[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_backButton] setTranslatesAutoresizingMaskIntoConstraints_];
    v68 = *&v63[v67];
    v171 = v67;
    [v68 addTarget:v63 action:sel_skipBackward forControlEvents:0x2000];
    [v62 addSubview_];
    v69 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_forwardButton;
    [*&v63[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_forwardButton] setTranslatesAutoresizingMaskIntoConstraints_];
    v70 = *&v63[v69];
    v173 = v69;
    v71 = v70;
    [v71 addTarget:v63 action:sel_skipForward forControlEvents:0x2000];

    v72 = *&v63[v69];
    v167 = v62;
    [v62 addSubview_];
    v73 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    v175 = v73;
    v74 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    v170 = v74;
    [v62 addLayoutGuide_];
    [v62 addLayoutGuide_];
    v75 = [v63 contentView];
    v76 = [v75 layoutMarginsGuide];

    v174 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_18BC4AA90;
    v78 = v176;
    v79 = [v176 leadingAnchor];
    v80 = [v76 &selRef_initWithRow_itemRange_ + 1];
    v81 = [v79 constraintEqualToAnchor_];

    *(v77 + 32) = v81;
    v82 = [v78 topAnchor];
    v172 = v76;
    v83 = [v76 &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
    v84 = [v82 constraintEqualToAnchor_];

    *(v77 + 40) = v84;
    v85 = v168;
    v86 = [*&v37[v168] leadingAnchor];
    v87 = [v78 trailingAnchor];
    v88 = [v86 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v87 multiplier:1.0];

    *(v77 + 48) = v88;
    v89 = [*&v37[v85] lastBaselineAnchor];
    v90 = [v78 lastBaselineAnchor];
    v91 = [v89 constraintEqualToAnchor_];

    *(v77 + 56) = v91;
    v92 = [*&v37[v85] trailingAnchor];
    v93 = [v76 trailingAnchor];
    v94 = [v92 constraintEqualToAnchor_];

    *(v77 + 64) = v94;
    v95 = v167;
    v96 = [v167 topAnchor];
    v97 = [v78 bottomAnchor];

    v98 = [v96 &selRef:v97 containsButtonType:? + 5];
    *(v77 + 72) = v98;
    v99 = [v95 leadingAnchor];
    v100 = [v63 contentView];
    v101 = [v100 leadingAnchor];

    v102 = [v99 &selRef:v101 containsButtonType:? + 5];
    *(v77 + 80) = v102;
    v103 = [v95 trailingAnchor];
    v104 = [v63 contentView];
    v105 = [v104 trailingAnchor];

    v106 = [v103 &selRef:v105 containsButtonType:? + 5];
    *(v77 + 88) = v106;
    v107 = [v95 bottomAnchor];
    v108 = [v63 contentView];

    v109 = [v108 bottomAnchor];
    v110 = [v107 &selRef:v109 containsButtonType:? + 5];

    *(v77 + 96) = v110;
    v111 = [v95 heightAnchor];
    v112 = [v111 constraintEqualToConstant_];

    *(v77 + 104) = v112;
    v113 = v169;
    v114 = *&v63[v169];
    v166 = v63;
    v115 = [v114 centerXAnchor];
    v116 = [v95 &selRef_contentIdentifier + 2];
    v117 = [v115 &selRef:v116 containsButtonType:? + 5];

    *(v77 + 112) = v117;
    v118 = [*&v63[v113] centerYAnchor];
    v119 = [v95 &selRef_contentIsCentered];
    v120 = [v118 &selRef:v119 containsButtonType:? + 5];

    *(v77 + 120) = v120;
    v121 = v175;
    v122 = [v175 topAnchor];
    v123 = [v95 bottomAnchor];
    v124 = [v122 &selRef:v123 containsButtonType:? + 5];

    *(v77 + 128) = v124;
    v125 = [v121 leadingAnchor];
    v126 = [v95 leadingAnchor];
    v127 = [v125 &selRef:v126 containsButtonType:? + 5];

    *(v77 + 136) = v127;
    v128 = [v121 trailingAnchor];
    v129 = [v95 centerXAnchor];
    v130 = [v128 &selRef:v129 containsButtonType:? + 5];

    *(v77 + 144) = v130;
    v131 = [v121 bottomAnchor];
    v132 = v95;
    v133 = [v95 bottomAnchor];
    v134 = [v131 &selRef:v133 containsButtonType:? + 5];

    *(v77 + 152) = v134;
    v135 = v171;
    v136 = v166;
    v137 = [*&v166[v171] centerXAnchor];
    v138 = [v121 centerXAnchor];
    v139 = [v137 &selRef:v138 containsButtonType:? + 5];

    *(v77 + 160) = v139;
    v140 = [*&v136[v135] centerYAnchor];
    v141 = v132;
    v142 = [v132 centerYAnchor];
    v143 = [v140 &selRef:v142 containsButtonType:? + 5];

    *(v77 + 168) = v143;
    v144 = v170;
    v145 = [v170 topAnchor];
    v146 = [v141 bottomAnchor];
    v147 = [v145 &selRef:v146 containsButtonType:? + 5];

    *(v77 + 176) = v147;
    v148 = [v144 leadingAnchor];
    v149 = [v141 centerXAnchor];
    v150 = [v148 &selRef:v149 containsButtonType:? + 5];

    *(v77 + 184) = v150;
    v151 = [v144 trailingAnchor];
    v152 = [v141 trailingAnchor];
    v153 = [v151 &selRef:v152 containsButtonType:? + 5];

    *(v77 + 192) = v153;
    v154 = [v144 bottomAnchor];
    v155 = [v141 bottomAnchor];
    v156 = [v154 &selRef:v155 containsButtonType:? + 5];

    *(v77 + 200) = v156;
    v157 = v173;
    v158 = [*&v136[v173] centerXAnchor];
    v159 = [v144 centerXAnchor];
    v160 = [v158 &selRef:v159 containsButtonType:? + 5];

    *(v77 + 208) = v160;
    v161 = [*&v136[v157] centerYAnchor];
    v162 = [v141 centerYAnchor];
    v163 = [v161 &selRef:v162 containsButtonType:? + 5];

    *(v77 + 216) = v163;
    sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
    v164 = sub_18BC20D88();

    [v174 activateConstraints_];

    return v136;
  }

  return result;
}

void sub_18BABA7F8()
{
  v84 = sub_18BC1EE48();
  v1 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v3 = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedPlaybackController];
  v5 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_playButton);
  v6 = [v4 currentPlaybackState] == 1;
  v7 = v5[OBJC_IVAR___SFMediaPlaybackButton_isPlaying];
  v5[OBJC_IVAR___SFMediaPlaybackButton_isPlaying] = v6;
  if (v5[OBJC_IVAR___SFMediaPlaybackButton_playbackType] == 1 && ((v6 ^ v7) & 1) != 0 && (v8 = objc_opt_self(), v9 = swift_allocObject(), *(v9 + 16) = v5, v10 = swift_allocObject(), *(v10 + 16) = sub_18BABC9F4, *(v10 + 24) = v9, aBlock[4] = sub_18B9D53B0, aBlock[5] = v10, aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 1107296256, aBlock[2] = sub_18B7E3BF4, aBlock[3] = &block_descriptor_53_2, v11 = _Block_copy(aBlock), v12 = v5, sub_18BC1E1A8(), , [v8 performWithoutAnimation_], _Block_release(v11), LOBYTE(v8) = swift_isEscapingClosureAtFileLocation(), , , (v8 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v74 = v4;
    [v4 currentPlaybackRate];
    v14 = v13;
    if (unk_1EFF1A898 == v14 || *&qword_1EFF1A890 == v14 || unk_1EFF1A888 == v14 || *&qword_1EFF1A880 == v14 || unk_1EFF1A878 == v14 || *&qword_1EFF1A870 == v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = 1.0;
    }

    v80 = v0;
    v21 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_speechRatePicker);
    *aBlock = v20;
    sub_18BC1EE38();
    sub_18BC1EE28();
    v22 = *(v1 + 8);
    v81 = v1 + 8;
    v23 = v84;
    v83 = v22;
    v22(v3, v84);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v82 = v3;
    v25 = v24;
    v26 = swift_allocObject();
    v85 = xmmword_18BC3E410;
    *(v26 + 16) = xmmword_18BC3E410;
    v27 = sub_18BABC974();
    v28 = sub_18BC20968();
    v30 = v29;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_18B9EEA2C();
    *(v26 + 64) = v31;
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    v32 = sub_18BC20BE8();
    v34 = v33;

    v35 = &v21[OBJC_IVAR___SFInlinePopUpButton_valueText];
    *v35 = v32;
    v35[1] = v34;

    v36 = *&v21[OBJC_IVAR___SFInlinePopUpButton_referenceFont];
    *&v21[OBJC_IVAR___SFInlinePopUpButton_referenceFont] = 0;

    sub_18BA2E374();
    v37 = sub_18BC20B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0, &unk_18BC51A40);
    inited = swift_initStackObject();
    *(inited + 16) = v85;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000018BC6AB20;
    *aBlock = v20;
    v79 = v25;
    v39 = swift_allocObject();
    *(v39 + 16) = v85;
    v78 = v27;
    v40 = sub_18BC20968();
    v41 = MEMORY[0x1E69E6158];
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v31;
    v77 = v31;
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = sub_18BC20BE8();
    *(inited + 72) = v41;
    *(inited + 48) = v43;
    *(inited + 56) = v44;
    sub_18BA64DB8(inited);
    swift_setDeallocating();
    sub_18BA13828(inited + 32);
    v45 = sub_18BC20998();

    v46 = WBSMakeAccessibilityIdentifier();

    if (!v46)
    {
      sub_18BC20BD8();
      v46 = sub_18BC20B98();
    }

    v75 = v21;
    [v21 setAccessibilityIdentifier_];

    v47 = v82;
    sub_18BC1EE38();
    v73[1] = sub_18BC1EE28();
    v73[2] = v48;
    v49 = v83;
    v83(v47, v23);
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v76 = sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
    v50 = 0;
    v51 = v49;
    v52 = v74;
    v53 = v47;
    do
    {
      v87 = *(&unk_1EFF1A850 + v50 + 32);
      v54 = v87;
      sub_18BC1EE38();
      sub_18BC1EE28();
      v51(v53, v23);
      v55 = swift_allocObject();
      *(v55 + 16) = v85;
      v56 = sub_18BC20968();
      v57 = v77;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v57;
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      sub_18BC20BE8();

      [v52 currentPlaybackRate];
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      v60[2] = v52;
      v60[3] = v54;
      v60[4] = v59;
      v61 = v52;
      v23 = v84;
      v62 = sub_18BC215E8();
      v87 = v54;
      v63 = swift_allocObject();
      *(v63 + 16) = v85;
      v64 = v62;
      v65 = sub_18BC20968();
      *(v63 + 56) = MEMORY[0x1E69E6158];
      *(v63 + 64) = v57;
      *(v63 + 32) = v65;
      *(v63 + 40) = v66;
      sub_18BC20BE8();
      v67 = sub_18BC20B98();

      [v64 setAccessibilityIdentifier_];

      sub_18BC21B68();
      sub_18BC21BA8();
      v53 = v82;
      v51 = v83;
      sub_18BC21BB8();
      sub_18BC21B78();
      v50 += 8;
    }

    while (v50 != 48);
    sub_18B7B0AC0(0, &unk_1EA9DADD0, 0x1E69DCC60);
    v68 = sub_18BC214D8();
    v69 = v75;
    [v75 setMenu_];

    v70 = [v69 menu];
    if (v70)
    {
      v71 = v70;
      v72 = sub_18BC20B98();
      [v71 setAccessibilityIdentifier_];
    }
  }
}

void sub_18BABB190(int a1, id a2, uint64_t a3)
{
  [a2 setPlaybackRate_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_18BABA7F8();
  }
}

void sub_18BABB1F4()
{
  v1 = [objc_opt_self() sharedPlaybackController];
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_playButton);
  v3 = OBJC_IVAR___SFMediaPlaybackButton_isPlaying;
  if (v2[OBJC_IVAR___SFMediaPlaybackButton_isPlaying])
  {
    v4 = &selRef_pause;
  }

  else
  {
    v4 = &selRef_play;
  }

  v10 = v1;
  [v1 *v4];
  v2[v3] = (v2[v3] & 1) == 0;
  if (v2[OBJC_IVAR___SFMediaPlaybackButton_playbackType] == 1)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18BABC96C;
    *(v7 + 24) = v6;
    aBlock[4] = sub_18B7D1E94;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_36;
    v8 = _Block_copy(aBlock);
    v9 = v2;
    sub_18BC1E1A8();

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_18BABB468(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedPlaybackController];
  [v4 *a3];
}

CGFloat sub_18BABB5D4(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeScale(&v11, a1, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

void sub_18BABB62C(unsigned __int8 a1)
{
  v3 = a1;
  v4 = OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR___SFMediaPlaybackButton_iconView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v1[OBJC_IVAR___SFMediaPlaybackButton_isPlaying] = 1;
  *&v1[OBJC_IVAR___SFMediaPlaybackButton_highlightSizeAnchor] = 0;
  v1[OBJC_IVAR___SFMediaPlaybackButton_playbackType] = a1;
  v6 = type metadata accessor for MediaPlaybackButton();
  v56.receiver = v1;
  v56.super_class = v6;
  v7 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = MEMORY[0x1E69DDDB8];
  if (v3 != 1)
  {
    v8 = MEMORY[0x1E69DDDC0];
  }

  v9 = *v8;
  v10 = objc_opt_self();
  v11 = v7;
  v12 = [v10 configurationWithTextStyle:v9 scale:2];

  v13 = [v10 configurationPreferringMonochrome];
  v14 = [v12 configurationByApplyingConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18BC3E410;
  v16 = sub_18BC1FF28();
  v17 = MEMORY[0x1E69DC2B0];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  *(&v54 + 1) = v6;
  *&aBlock = v11;
  v18 = v11;
  MEMORY[0x18CFFCA50](v15, &aBlock, sel_updateHighlightIndicator);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v19 = OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView;
  [*&v18[OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = *&v18[v19];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 secondaryLabelColor];
  [v22 setBackgroundColor_];

  [*&v18[v19] setAlpha_];
  v24 = qword_1EA9D23F0;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  aBlock = xmmword_1EA9D84F8;
  v54 = xmmword_1EA9D8508;
  v55 = xmmword_1EA9D8518;
  [v25 setTransform_];

  [v18 insertSubview:*&v18[v19] atIndex:0];
  v26 = OBJC_IVAR___SFMediaPlaybackButton_iconView;
  v27 = *&v18[OBJC_IVAR___SFMediaPlaybackButton_iconView];
  v28 = [v21 labelColor];
  [v27 setTintColor_];

  v52 = v14;
  [*&v18[v26] setPreferredSymbolConfiguration_];
  [*&v18[v26] setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 addSubview_];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18BC41E50;
  v31 = [*&v18[v19] heightAnchor];
  v32 = [*&v18[v19] widthAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v18[v19] centerXAnchor];
  v35 = [v18 centerXAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v18[v19] centerYAnchor];
  v38 = [v18 centerYAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v18[v26] centerXAnchor];
  v41 = [v18 centerXAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  v43 = [*&v18[v26] centerYAnchor];
  v44 = [v18 centerYAnchor];

  v45 = [v43 constraintEqualToAnchor_];
  *(v30 + 64) = v45;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v46 = sub_18BC20D88();

  [v29 activateConstraints_];

  sub_18BABBEEC();
  v47 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = v18;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_18BABC9F4;
  *(v49 + 24) = v48;
  *&v55 = sub_18B9D53B0;
  *(&v55 + 1) = v49;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v54 = sub_18B7E3BF4;
  *(&v54 + 1) = &block_descriptor_64_0;
  v50 = _Block_copy(&aBlock);
  v51 = v18;
  sub_18BC1E1A8();

  [v47 performWithoutAnimation_];
  _Block_release(v50);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
  }
}

void sub_18BABBDAC(uint64_t a1)
{
  v2 = sub_18BC20B98();

  v3 = [objc_opt_self() systemImageNamed_];

  [*(a1 + OBJC_IVAR___SFMediaPlaybackButton_iconView) setImage_];
}

void sub_18BABBEEC()
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  v2 = [v1 fontDescriptor];

  [v2 pointSize];
  v4 = v3;

  v5 = v4 + 8.0;
  v6 = OBJC_IVAR___SFMediaPlaybackButton_highlightSizeAnchor;
  v7 = *(v0 + OBJC_IVAR___SFMediaPlaybackButton_highlightSizeAnchor);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR___SFMediaPlaybackButton_highlightSizeAnchor);
  }

  else
  {
    v9 = [*(v0 + OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView) widthAnchor];
    v8 = [v9 constraintEqualToConstant_];

    v7 = 0;
  }

  v10 = v7;
  [v8 setConstant_];
  [v8 setActive_];
  v11 = *(v0 + v6);
  *(v0 + v6) = v8;
}

void sub_18BABC11C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v1 isHighlighted];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  if (v3)
  {
    *(v5 + 24) = ObjectType;
    v15 = sub_18BABC7AC;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v6 = &block_descriptor_27;
  }

  else
  {
    v15 = sub_18BABC734;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_18B7B0DB0;
    v14 = &block_descriptor_33;
    v7 = _Block_copy(&v11);
    v1 = v1;

    [v4 animateWithDuration:2 delay:v7 options:0 animations:0.47 completion:0.0];
    _Block_release(v7);
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = ObjectType;
    v15 = sub_18BABC7A4;
    v16 = v8;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v6 = &block_descriptor_21;
  }

  v13 = sub_18B7B0DB0;
  v14 = v6;
  v9 = _Block_copy(&v11);
  v10 = v1;

  [v4 animateWithDuration:2 delay:v9 options:0 animations:0.2 completion:{0.0, v11, v12}];
  _Block_release(v9);
}

id sub_18BABC370(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___SFMediaPlaybackButton_iconView);
  if (qword_1EA9D23E8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  v6 = xmmword_1EA9D84C8;
  v7 = xmmword_1EA9D84D8;
  v8 = xmmword_1EA9D84E8;
  [v2 setTransform_];
  v3 = *(a1 + OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView);
  [v3 setAlpha_];
  if (qword_1EA9D23F8 != -1)
  {
    swift_once();
  }

  v6 = xmmword_1EA9D8528;
  v7 = xmmword_1EA9D8538;
  v8 = xmmword_1EA9D8548;
  return [v3 setTransform_];
}

id sub_18BABC484(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView);
  if (qword_1EA9D23F0 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  v4[0] = xmmword_1EA9D84F8;
  v4[1] = xmmword_1EA9D8508;
  v4[2] = xmmword_1EA9D8518;
  return [v1 setTransform_];
}

id sub_18BABC614(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_18BABC6E0()
{
  result = qword_1EA9D85A0;
  if (!qword_1EA9D85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D85A0);
  }

  return result;
}

id sub_18BABC734()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SFMediaPlaybackButton_iconView);
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  [v2 setTransform_];
  return [*(v1 + OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView) setAlpha_];
}

void sub_18BABC7B4()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_speechRatePicker;
  v2 = objc_allocWithZone(type metadata accessor for SFInlinePopUpButton());
  *(v0 + v1) = sub_18BA2DE08(0);
  v3 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_backButton;
  v4 = type metadata accessor for MediaPlaybackButton();
  v5 = objc_allocWithZone(v4);
  sub_18BABB62C(0);
  *(v0 + v3) = v6;
  v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_playButton;
  v8 = objc_allocWithZone(v4);
  sub_18BABB62C(1u);
  *(v0 + v7) = v9;
  v10 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant20ListenToPageCardCell_forwardButton;
  v11 = objc_allocWithZone(v4);
  sub_18BABB62C(2u);
  *(v0 + v10) = v12;
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BABC8A8()
{
  v1 = OBJC_IVAR___SFMediaPlaybackButton_highlightIndicatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR___SFMediaPlaybackButton_iconView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v0 + OBJC_IVAR___SFMediaPlaybackButton_isPlaying) = 1;
  *(v0 + OBJC_IVAR___SFMediaPlaybackButton_highlightSizeAnchor) = 0;
  sub_18BC21CF8();
  __break(1u);
}

unint64_t sub_18BABC974()
{
  result = qword_1EA9DADE0;
  if (!qword_1EA9DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DADE0);
  }

  return result;
}

int **(*SFFluidCollectionView.LayoutAttributes.center.modify(void *a1, uint64_t a2))(int **result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_18BABDF44;
}

id SFFluidCollectionView.LayoutAttributes.transform.setter(_OWORD *a1, int *a2)
{
  v3 = (v2 + a2[20]);
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  v3[2] = a1[2];
  return sub_18B84EE04(a2);
}

uint64_t SFFluidCollectionView.LayoutAttributes.representedElement.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v7[0] = a1[1];
  v7[1] = v4;
  v7[2] = a1[3];
  v5 = type metadata accessor for SFFluidCollectionView.Element(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

__n128 sub_18BABCB0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v7[0] = *(a2 + a3 - 48);
  v7[1] = v5;
  v7[2] = *(a2 + a3 - 16);
  result = *(a1 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v7) + 72));
  *a4 = result;
  return result;
}

id SFFluidCollectionView.LayoutAttributes.center.setter(int *a1, double a2, double a3)
{
  v4 = (v3 + a1[18]);
  *v4 = a2;
  v4[1] = a3;
  return sub_18B84EE04(a1);
}

__n128 sub_18BABCBA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v7[0] = *(a2 + a3 - 48);
  v7[1] = v5;
  v7[2] = *(a2 + a3 - 16);
  result = *(a1 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v7) + 76));
  *a4 = result;
  return result;
}

uint64_t sub_18BABCC10(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, double, double))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a3 + a4 - 32);
  v11[0] = *(a3 + a4 - 48);
  v11[1] = v8;
  v11[2] = *(a3 + a4 - 16);
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v11);
  return a5(v9, v6, v7);
}

id SFFluidCollectionView.LayoutAttributes.size.setter(int *a1, double a2, double a3)
{
  v4 = (v3 + a1[19]);
  *v4 = a2;
  v4[1] = a3;
  return sub_18B84EE04(a1);
}

int **(*SFFluidCollectionView.LayoutAttributes.size.modify(void *a1, uint64_t a2))(int **result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_18BABCCB0;
}

int **sub_18BABCCB0(int **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_18B84EE04(*result);
  }

  return result;
}

__n128 SFFluidCollectionView.LayoutAttributes.transform.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 80);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

__n128 sub_18BABCCF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v9[0] = *(a2 + a3 - 48);
  v9[1] = v5;
  v9[2] = *(a2 + a3 - 16);
  v6 = a1 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v9) + 80);
  v7 = *(v6 + 16);
  *a4 = *v6;
  *(a4 + 16) = v7;
  result = *(v6 + 32);
  *(a4 + 32) = result;
  return result;
}

id sub_18BABCD5C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = a1[2];
  v5 = *(a3 + a4 - 32);
  v8[0] = *(a3 + a4 - 48);
  v8[1] = v5;
  v8[2] = *(a3 + a4 - 16);
  v6 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v8);
  return SFFluidCollectionView.LayoutAttributes.transform.setter(v9, v6);
}

int **(*SFFluidCollectionView.LayoutAttributes.transform.modify(void *a1, uint64_t a2))(int **result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_18BABDF44;
}

void sub_18BABCDE8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v9[0] = *(a1 + a2 - 48);
  v9[1] = v4;
  v9[2] = *(a1 + a2 - 16);
  v5 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v9);
  *a3 = SFFluidCollectionView.LayoutAttributes.frame.getter(v5);
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
}

id sub_18BABCE40(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a3 + a4 - 32);
  v11[0] = *(a3 + a4 - 48);
  v11[1] = v8;
  v11[2] = *(a3 + a4 - 16);
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v11);
  return SFFluidCollectionView.LayoutAttributes.frame.setter(v9, v4, v5, v6, v7);
}

void (*SFFluidCollectionView.LayoutAttributes.frame.modify(uint64_t *a1, uint64_t a2))(CGFloat **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v6 = (v2 + *(a2 + 96));
  v7 = v6[1];
  *v5 = *v6;
  *(v5 + 16) = v7;
  return sub_18BABCF34;
}

void sub_18BABCF34(CGFloat **a1)
{
  v1 = *a1;
  SFFluidCollectionView.LayoutAttributes.frame.setter(*(*a1 + 4), *v1, v1[1], v1[2], v1[3]);

  free(v1);
}

void SFFluidCollectionView.LayoutAttributes.animatableProperties.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);

  *(v2 + v4) = a1;
}

void SFFluidCollectionView.LayoutAttributes.nonAnimatableProperties.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 92);

  *(v2 + v4) = a1;
}

uint64_t SFFluidCollectionView.LayoutAttributes.customProperties.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));
  v3 = *(v1 + *(a1 + 92));
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v2;
  sub_18BABDC98(v3, sub_18BABDC80, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t SFFluidCollectionView.LayoutAttributes.hasAnimatableChanges(from:)(uint64_t a1, int *a2)
{
  v3 = a2[19];
  v4 = *(v2 + v3);
  v5 = *(v2 + v3 + 8);
  v6 = (a1 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 && ((v8 = a2[18], v9 = *(v2 + v8), v10 = *(v2 + v8 + 8), v11 = (a1 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), v12 && (sub_18BC212E8() & 1) != 0 && *(v2 + a2[21]) == *(a1 + a2[21]) && *(v2 + a2[17]) == *(a1 + a2[17])))
  {
    sub_18BABD2C0(*(v2 + a2[22]), *(a1 + a2[22]));
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t static SFFluidCollectionView.LayoutAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (static SFFluidCollectionView.Element.== infix(_:_:)(a1, a2, a3, a4, a5) & 1) != 0 && (v20[0] = a3, v20[1] = a4, v20[2] = a5, v20[3] = a6, v20[4] = a7, v20[5] = a8, v16 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v20), sub_18BABD2C0(*(a1 + v16[23]), *(a2 + v16[23])), (v17))
  {
    v18 = SFFluidCollectionView.LayoutAttributes.hasAnimatableChanges(from:)(a2, v16) ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_18BABD2C0(uint64_t a1, uint64_t a2)
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
      sub_18BC1E3F8();
      v17 = sub_18B831970(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
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

uint64_t sub_18BABD3FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v33 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = (*(result + 48) + v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_18BC1E3F8();
    sub_18B9929A4(*&v17, v18);
    v19 = v15 == 0;
    if (!v15)
    {
      return v19;
    }

    v20 = sub_18B831970(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_34;
    }

    v23 = *(a2 + 56) + 16 * v20;
    v24 = *v23;
    v25 = *(v23 + 8);
    if (v25)
    {
      if (v25 == 1)
      {
        if (v18 != 1)
        {
          v29 = v24;
          v30 = 1;
          goto LABEL_33;
        }

        sub_18B9929B8(*&v24, 1);
        sub_18B9929B8(*&v17, 1);
        result = v33;
        v7 = v34;
        if (v24 != v17)
        {
          return v19;
        }
      }

      else
      {
        if (v18 != 2)
        {
          v31 = *&v24;
          v29 = v24;
          v30 = 2;
LABEL_33:
          sub_18B9929B8(*&v29, v30);
LABEL_34:
          v28 = v17;
          v32 = v18;
          goto LABEL_35;
        }

        if (v24 == 0.0)
        {
          v27 = *&v17;
          sub_18B9929B8(0, 2);
          sub_18B9929B8(*&v17, 2);
          result = v33;
          v7 = v34;
          if (v17 != 0.0)
          {
            v28 = v17;
            goto LABEL_39;
          }
        }

        else
        {
          if (v17 == 0.0)
          {
            sub_18B9929A4(*&v24, 2);
            sub_18B9929A4(0, 2);
            sub_18B9929B8(*&v24, 2);
            v28 = 0.0;
LABEL_39:
            v32 = 2;
LABEL_35:
            sub_18B9929B8(*&v28, v32);
            return 0;
          }

          sub_18B7E7DC4();
          sub_18B9929A4(*&v24, 2);
          sub_18B9929A4(*&v24, 2);
          sub_18B9929A4(*&v24, 2);
          sub_18B9929A4(*&v17, 2);
          sub_18B9929A4(*&v24, 2);
          sub_18B9929A4(*&v17, 2);
          v26 = sub_18BC215C8();
          sub_18B9929B8(*&v24, 2);
          sub_18B9929B8(*&v17, 2);
          sub_18B9929B8(*&v24, 2);
          sub_18B9929B8(*&v17, 2);
          sub_18B9929B8(*&v24, 2);
          sub_18B9929B8(*&v24, 2);
          sub_18B9929B8(*&v17, 2);
          result = v33;
          v7 = v34;
          if ((v26 & 1) == 0)
          {
            return v19;
          }
        }
      }
    }

    else
    {
      sub_18B9929B8(*&v24, 0);
      if (v18)
      {
        goto LABEL_34;
      }

      sub_18B9929B8(*&v17, 0);
      result = v33;
      v7 = v34;
      if ((LODWORD(v24) ^ LODWORD(v17)))
      {
        return v19;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BABD73C(uint64_t result, uint64_t a2)
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
    sub_18B7F44EC(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;
    sub_18BC1E3F8();
    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_18B7C4104(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_18B831014(&v24);
      return 0;
    }

    sub_18B7F44EC(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x18CFFCF40](v23, &v24);
    sub_18B831014(v23);
    result = sub_18B831014(&v24);
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

void SFFluidCollectionView.LayoutAttributes.hash(into:)(uint64_t a1, _OWORD *a2)
{
  v3 = a2[2];
  v5[0] = a2[1];
  v5[1] = v3;
  v5[2] = a2[3];
  v4 = type metadata accessor for SFFluidCollectionView.Element(0, v5);
  SFFluidCollectionView.Element.hash(into:)(a1, v4);
}

uint64_t SFFluidCollectionView.LayoutAttributes.description.getter(uint64_t a1)
{
  v16.a = 0.0;
  v16.b = -2.68156159e154;
  MEMORY[0x18CFFC150](123, 0xE100000000000000);
  v3 = *(a1 + 32);
  *&transform.a = *(a1 + 16);
  *&transform.c = v3;
  *&transform.tx = *(a1 + 48);
  type metadata accessor for SFFluidCollectionView.Element(0, &transform);
  swift_getWitnessTable();
  sub_18BC21F98();
  MEMORY[0x18CFFC150](0x20656D617266203BLL, 0xEA0000000000203DLL);
  v4 = (v1 + *(a1 + 96));
  v5 = v4[1];
  *&transform.a = *v4;
  *&transform.c = v5;
  type metadata accessor for CGRect(0);
  sub_18BC21C58();
  v20 = *&v16.a;
  if (*(v1 + *(a1 + 84)) != 0.0)
  {
    transform.a = 0.0;
    transform.b = -2.68156159e154;
    sub_18BC21AD8();

    strcpy(&transform, "; zPosition = ");
    HIBYTE(transform.b) = -18;
    v6 = sub_18BC20F88();
    MEMORY[0x18CFFC150](v6);

    MEMORY[0x18CFFC150](*&transform.a, *&transform.b);
  }

  if (*(v1 + *(a1 + 68)) != 1.0)
  {
    transform.a = 1.0386763e-152;
    transform.b = -3.91910665e202;
    v7 = sub_18BC20F88();
    MEMORY[0x18CFFC150](v7);

    MEMORY[0x18CFFC150](*&transform.a, *&transform.b);
  }

  v8 = (v1 + *(a1 + 80));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v8[4];
  v14 = v8[5];
  transform.a = *v8;
  transform.b = v10;
  transform.c = v11;
  transform.d = v12;
  transform.tx = v13;
  transform.ty = v14;
  if (!CGAffineTransformIsIdentity(&transform))
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    transform.a = v9;
    transform.b = v10;
    transform.c = v11;
    transform.d = v12;
    transform.tx = v13;
    transform.ty = v14;
    CGAffineTransformDecompose(&v16, &transform);
    transform = v16;
    type metadata accessor for CGAffineTransformComponents(0);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](v17, v18);
  }

  MEMORY[0x18CFFC150](125, 0xE100000000000000);
  return *&v20.width;
}

uint64_t SFFluidCollectionView.LayoutAttributes.hashValue.getter(_OWORD *a1)
{
  sub_18BC22158();
  SFFluidCollectionView.LayoutAttributes.hash(into:)(v3, a1);
  return sub_18BC221A8();
}

uint64_t sub_18BABDC24(uint64_t a1, _OWORD *a2)
{
  sub_18BC22158();
  SFFluidCollectionView.LayoutAttributes.hash(into:)(v4, a2);
  return sub_18BC221A8();
}

double sub_18BABDC80@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  sub_18BC1E3F8();
  return result;
}

void sub_18BABDC98(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v43[0] = *v16;
    v43[1] = v17;
    v43[2] = v18;
    sub_18BC1E3F8();
    (a2)(&v40, v43);

    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = *a5;
    v24 = sub_18B831970(v40, v41);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_18B860D54();
      }
    }

    else
    {
      sub_18B84E998(v27, v38 & 1);
      v29 = sub_18B831970(v19, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *a5;
    if (v28)
    {
      v12 = *(v31[7] + 8 * v24);

      *(v31[7] + 8 * v24) = v12;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v31[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v20;
      *(v31[7] + 8 * v24) = v21;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_18B7D2E34(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_18BC22078();
  __break(1u);
}

void sub_18BABDF48()
{
  v1 = *(v0 + 16);
  [v1 setAlpha_];
  v2 = sub_18B7DE654();
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v4 = 8.0;
  if (IsReduceTransparencyEnabled)
  {
    v4 = 0.0;
  }

  [v2 setValue_];

  v5 = sub_18B7DE654();
  [v5 value];
  v7 = v6;

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B7EA1B8;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18B7D1EC4;
  *(v11 + 24) = v10;
  v15[4] = sub_18B7D1E94;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_18B7E3BF4;
  v15[3] = &block_descriptor_34;
  v12 = _Block_copy(v15);
  v13 = v1;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_18BABE184()
{
  [*(v0 + 16) setAlpha_];
  v1 = sub_18B7DE654();
  [v1 setValue_];
}

uint64_t SFCodableWithKeyedArchiver.init(from:)@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18BC221C8();
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_18BABE304();
  sub_18BC21FE8();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  sub_18BABE358();
  v5 = sub_18BC212F8();
  sub_18B9880FC(v7, v8);
  *a3 = v5;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_18BABE304()
{
  result = qword_1EA9D8640;
  if (!qword_1EA9D8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8640);
  }

  return result;
}

unint64_t sub_18BABE358()
{
  result = qword_1EA9D8648;
  if (!qword_1EA9D8648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D8648);
  }

  return result;
}

id SFCodableWithKeyedArchiver.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void SFCodableWithKeyedArchiver.encode(to:)(void *a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (*v1)
  {
    v4 = objc_opt_self();
    v12[0] = 0;
    v5 = v2;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v12];
    v7 = v12[0];
    if (v6)
    {
      v8 = sub_18BC1EAB8();
      v10 = v9;

      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_18BC221E8();
      __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_18BABE59C();
      sub_18BC21FF8();

      sub_18B9880FC(v8, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      v11 = v7;
      sub_18BC1E898();

      swift_willThrow();
    }
  }
}

unint64_t sub_18BABE59C()
{
  result = qword_1EA9D8650[0];
  if (!qword_1EA9D8650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D8650);
  }

  return result;
}

uint64_t static SFCodableWithKeyedArchiver.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = sub_18BC215C8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t SFCodableWithKeyedArchiver.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_18BC21848();
  swift_getWitnessTable();
  return sub_18BC21858();
}

uint64_t SFCodableWithKeyedArchiver.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_18BC22158();
  SFCodableWithKeyedArchiver.hash(into:)(v4, a1);
  return sub_18BC221A8();
}

uint64_t sub_18BABE77C(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  SFCodableWithKeyedArchiver.hash(into:)(v4, a2);
  return sub_18BC221A8();
}

uint64_t sub_18BABE7E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v17[0] = *(*v1 + 88);
  v17[1] = v5;
  v17[2] = *(v4 + 120);
  v6 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v17);
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9 + 16;
  v11 = *(v3 + 176);
  swift_beginAccess();
  (*(v8 + 16))(v10, v1 + v11, v7);
  v12 = *(v6 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v6) != 1)
  {
    return (*(v12 + 32))(a1, v10, v6);
  }

  v14 = *(*v1 + 184);
  swift_beginAccess();
  (*(v12 + 16))(a1, v1 + v14, v6);
  result = (v13)(v10, 1, v6);
  if (result != 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_18BABEA24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v32[0] = *(*v1 + 88);
  v32[1] = v4;
  v32[2] = *(v3 + 120);
  v5 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v32);
  v31 = sub_18BC21848();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0, &unk_18BC42FB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  sub_18BAC13A8(a1, &v29 - v10);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  (*(*(updated - 8) + 56))(v11, 0, 1, updated);
  v13 = *(*v1 + 160);
  swift_beginAccess();
  sub_18BAC130C(v11, &v1[v13]);
  swift_endAccess();
  v14 = *(*v1 + 192);
  v15 = *&v1[v14];
  *&v1[v14] = 0;
  sub_18BABED8C(v15);
  v16 = *(*v1 + 184);
  swift_beginAccess();
  v17 = *(v5 - 8);
  v30 = *(v17 + 16);
  v30(v8, &v1[v16], v5);
  v18 = *(v17 + 56);
  v18(v8, 0, 1, v5);
  v19 = *(*v1 + 168);
  swift_beginAccess();
  v20 = *(v6 + 40);
  v21 = &v1[v19];
  v22 = v8;
  v23 = v8;
  v24 = v31;
  v20(v21, v23, v31);
  swift_endAccess();
  v25 = &v1[v16];
  v26 = v22;
  v30(v22, v25, v5);
  v18(v22, 0, 1, v5);
  v27 = *(*v1 + 176);
  swift_beginAccess();
  v20(&v1[v27], v26, v24);
  return swift_endAccess();
}

void sub_18BABED8C(double a1)
{
  v141 = *v1;
  v3 = v141;
  v4 = v141[12];
  v5 = v141[13];
  v6 = v141[14];
  v7 = v141[15];
  v8 = v141[16];
  v139 = v141[11];
  *&v143 = v139;
  *(&v143 + 1) = v4;
  v144 = v5;
  v145 = v6;
  v146 = v7;
  v147 = v8;
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v143);
  v140 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v126 - v13;
  v15 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v21 = v3[24];
  v22 = *&v1[v21];
  if (v22 == a1)
  {
    return;
  }

  v132 = v8;
  v133 = v7;
  v134 = v6;
  v136 = v5;
  v135 = v4;
  v137 = v14;
  v138 = v11;
  if (v22 <= 0.0)
  {
    v28 = v141[21];
    v29 = v17;
    v30 = &v126 - v18;
    v31 = v19;
    swift_beginAccess();
    (*(v31 + 16))(v30, &v1[v28], v29);
    v32 = *(*v1 + 176);
    swift_beginAccess();
    (*(v31 + 40))(&v1[v32], v30, v29);
LABEL_8:
    swift_endAccess();
    return;
  }

  v131 = &v126 - v18;
  v23 = v19;
  v24 = v17;
  if (v22 >= 1.0)
  {
    v33 = v141[23];
    swift_beginAccess();
    v34 = v140;
    v35 = &v1[v33];
    v36 = v131;
    (*(v140 + 16))(v131, v35, v9);
    (*(v34 + 56))(v36, 0, 1, v9);
    v37 = *(*v1 + 176);
    swift_beginAccess();
    (*(v23 + 40))(&v1[v37], v36, v24);
    goto LABEL_8;
  }

  v25 = v141[21];
  v26 = v20;
  swift_beginAccess();
  (*(v23 + 16))(v26, &v1[v25], v24);
  v27 = v140;
  if ((*(v140 + 48))(v26, 1, v9) == 1)
  {
    (*(v23 + 8))(v26, v24);
  }

  else
  {
    v128 = v21;
    v38 = v137;
    (*(v27 + 32))();
    v39 = *(*v1 + 184);
    v40 = v9;
    v127 = v9;
    v41 = &v1[v39];
    swift_beginAccess();
    v42 = *(v27 + 16);
    v43 = v138;
    v129 = v41;
    v42(v138, v41, v40);
    v44 = v131;
    v42(v131, v43, v40);
    (*(v27 + 56))(v44, 0, 1, v40);
    v45 = *(*v1 + 176);
    swift_beginAccess();
    (*(v23 + 40))(&v1[v45], v44, v24);
    v46 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v46);
    v47 = v139;
    v48 = v135;
    *(&v126 - 6) = v139;
    *(&v126 - 5) = v48;
    v49 = v134;
    *(&v126 - 4) = v136;
    *(&v126 - 3) = v49;
    v50 = v133;
    v51 = v132;
    *(&v126 - 2) = v133;
    *(&v126 - 1) = v51;
    KeyPath = swift_getKeyPath();
    sub_18BABF944(sub_18BAC140C, KeyPath, v38, v1);
    v54 = v53;

    *&v138[v127[17]] = v54;
    MEMORY[0x1EEE9AC00](v55);
    *(&v126 - 6) = v47;
    *(&v126 - 5) = v48;
    v56 = v136;
    *(&v126 - 4) = v136;
    *(&v126 - 3) = v49;
    *(&v126 - 2) = v50;
    *(&v126 - 1) = v51;
    v57 = swift_getKeyPath();
    sub_18BABF944(sub_18BAC137C, v57, v38, v1);
    v59 = v58;

    MEMORY[0x1EEE9AC00](v60);
    *(&v126 - 6) = v47;
    *(&v126 - 5) = v48;
    *(&v126 - 4) = v56;
    *(&v126 - 3) = v49;
    *(&v126 - 2) = v50;
    *(&v126 - 1) = v51;
    v61 = v50;
    v62 = swift_getKeyPath();
    sub_18BABF944(sub_18BAC140C, v62, v38, v1);
    v64 = v63;

    v130 = v1;
    v65 = v138;
    v66 = SFFluidCollectionView.LayoutAttributes.center.setter(v127, v59, v64);
    MEMORY[0x1EEE9AC00](v66);
    v67 = v139;
    v68 = v135;
    *(&v126 - 6) = v139;
    *(&v126 - 5) = v68;
    v69 = v56;
    *(&v126 - 4) = v56;
    v70 = v134;
    *(&v126 - 3) = v134;
    *(&v126 - 2) = v61;
    *(&v126 - 1) = v51;
    v71 = swift_getKeyPath();
    v72 = v137;
    v73 = v65;
    sub_18BABF944(sub_18BAC140C, v71, v137, v1);
    v75 = v74;

    MEMORY[0x1EEE9AC00](v76);
    *(&v126 - 6) = v67;
    *(&v126 - 5) = v68;
    *(&v126 - 4) = v69;
    *(&v126 - 3) = v70;
    *(&v126 - 2) = v61;
    *(&v126 - 1) = v51;
    v77 = swift_getKeyPath();
    v78 = v72;
    v79 = v72;
    v80 = v130;
    sub_18BABF944(sub_18BAC140C, v77, v78, v130);
    v82 = v81;

    v83 = v127;
    v84 = SFFluidCollectionView.LayoutAttributes.size.setter(v127, v75, v82);
    MEMORY[0x1EEE9AC00](v84);
    *(&v126 - 6) = v139;
    *(&v126 - 5) = v68;
    *(&v126 - 4) = v136;
    *(&v126 - 3) = v70;
    *(&v126 - 2) = v61;
    *(&v126 - 1) = v51;
    v85 = swift_getKeyPath();
    sub_18BABF944(sub_18BAC140C, v85, v79, v80);
    v87 = v86;

    *&v73[v83[21]] = v87;
    sub_18BABFAEC(v79, v80, &v143);
    v88 = v83;
    SFFluidCollectionView.LayoutAttributes.transform.setter(&v143, v83);
    v89 = *(v79 + v83[22]);
    v90 = v89 + 64;
    v91 = 1 << *(v89 + 32);
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v93 = v92 & *(v89 + 64);
    v94 = (v91 + 63) >> 6;
    v141 = v89;
    sub_18BC1E3F8();
    v95 = 0;
    v139 = v94;
    while (1)
    {
      if (!v93)
      {
        while (1)
        {
          v98 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            break;
          }

          if (v98 >= v94)
          {
            v125 = *(v140 + 8);
            v125(v137, v88);

            goto LABEL_33;
          }

          v93 = *(v90 + 8 * v98);
          ++v95;
          if (v93)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        sub_18BC22078();
        __break(1u);
        return;
      }

      v98 = v95;
LABEL_20:
      v99 = __clz(__rbit64(v93)) | (v98 << 6);
      v100 = (v141[6] + 16 * v99);
      v102 = *v100;
      v101 = v100[1];
      v103 = *(v141[7] + 8 * v99);
      v104 = *&v129[v88[22]];
      v105 = *(v104 + 16);
      sub_18BC1E3F8();
      if (!v105)
      {
        break;
      }

      v106 = sub_18B831970(v102, v101);
      if ((v107 & 1) == 0)
      {
        break;
      }

      v108 = v90;
      v109 = _SFInterpolate(v103, *(*(v104 + 56) + 8 * v106), *&v130[v128]);
      v110 = v88[22];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = *&v73[v110];
      v112 = v142;
      v113 = sub_18B831970(v102, v101);
      v115 = v112[2];
      v116 = (v114 & 1) == 0;
      v117 = __OFADD__(v115, v116);
      v118 = v115 + v116;
      if (v117)
      {
        goto LABEL_35;
      }

      v119 = v114;
      if (v112[3] >= v118)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v124 = v113;
          sub_18B860D54();
          v113 = v124;
        }
      }

      else
      {
        sub_18B84E998(v118, isUniquelyReferenced_nonNull_native);
        v113 = sub_18B831970(v102, v101);
        if ((v119 & 1) != (v120 & 1))
        {
          goto LABEL_37;
        }
      }

      v90 = v108;
      v93 &= v93 - 1;
      v94 = v139;
      if (v119)
      {
        v96 = v113;

        v97 = v142;
        *(v142[7] + 8 * v96) = v109;
      }

      else
      {
        v97 = v142;
        v142[(v113 >> 6) + 8] |= 1 << v113;
        v121 = (v97[6] + 16 * v113);
        *v121 = v102;
        v121[1] = v101;
        *(v97[7] + 8 * v113) = v109;
        v122 = v97[2];
        v117 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v117)
        {
          goto LABEL_36;
        }

        v97[2] = v123;
      }

      v73 = v138;
      *&v138[v110] = v97;
      v95 = v98;
    }

    v125 = *(v140 + 8);
    v125(v137, v88);

LABEL_33:
    v125(v73, v88);
  }
}

void sub_18BABF944(double (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3, char *a4)
{
  v7 = *a4;
  v8 = *(*a4 + 104);
  v17[0] = *(*a4 + 88);
  v17[1] = v8;
  v17[2] = *(v7 + 120);
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v17);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = a1(a3, v11);
  v15 = *(*a4 + 184);
  swift_beginAccess();
  (*(v10 + 16))(v13, &a4[v15], v9);
  v16 = (a1)(v13);
  (*(v10 + 8))(v13, v9);
  _SFInterpolate(v14, v16, *&a4[*(*a4 + 192)]);
}

CGFloat sub_18BABFAEC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a2;
  v7 = *a2;
  v8 = *(*a2 + 104);
  *&transform.a = *(*a2 + 88);
  *&transform.c = v8;
  *&transform.tx = *(v7 + 120);
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &transform);
  v10 = (a1 + *(v9 + 80));
  v11 = v10[1];
  *&transform.a = *v10;
  *&transform.c = v11;
  *&transform.tx = v10[2];
  CGAffineTransformDecompose(&v26, &transform);
  v12 = a2 + *(v6 + 184);
  swift_beginAccess();
  v13 = &v12[*(v9 + 80)];
  v14 = *(v13 + 1);
  *&v25.a = *v13;
  *&v25.c = v14;
  *&v25.tx = *(v13 + 2);
  CGAffineTransformDecompose(&transform, &v25);
  v15 = _SFInterpolate(v26.scale.width, transform.a, *(a2 + *(*a2 + 192)));
  v16 = _SFInterpolate(v26.scale.height, transform.b, *(a2 + *(*a2 + 192)));
  v17 = _SFInterpolate(v26.horizontalShear, transform.c, *(a2 + *(*a2 + 192)));
  v18 = _SFInterpolate(v26.rotation, transform.d, *(a2 + *(*a2 + 192)));
  v19 = _SFInterpolate(v26.translation.dx, transform.tx, *(a2 + *(*a2 + 192)));
  v20 = _SFInterpolate(v26.translation.dy, transform.ty, *(a2 + *(*a2 + 192)));
  v25.a = v15;
  v25.b = v16;
  v25.c = v17;
  v25.d = v18;
  v25.tx = v19;
  v25.ty = v20;
  CGAffineTransformMakeWithComponents(&v24, &v25);
  result = v24.a;
  v22 = *&v24.c;
  v23 = *&v24.tx;
  *a3 = *&v24.a;
  a3[1] = v22;
  a3[2] = v23;
  return result;
}

void sub_18BABFD18(double a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_18BABED8C(v3);
}

uint64_t sub_18BABFD3C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v18[0] = *(*v0 + 88);
  v18[1] = v2;
  v18[2] = *(v1 + 120);
  v3 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v18);
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0, &unk_18BC42FB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  (*(*(updated - 8) + 56))(v10, 1, 1, updated);
  v12 = *(*v0 + 160);
  swift_beginAccess();
  sub_18BAC130C(v10, &v0[v12]);
  swift_endAccess();
  v13 = *(*(v3 - 8) + 56);
  v13(v7, 1, 1, v3);
  v14 = *(*v0 + 168);
  swift_beginAccess();
  v15 = *(v5 + 40);
  v15(&v0[v14], v7, v4);
  swift_endAccess();
  v13(v7, 1, 1, v3);
  v16 = *(*v0 + 176);
  swift_beginAccess();
  v15(&v0[v16], v7, v4);
  return swift_endAccess();
}

uint64_t sub_18BABFFF0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 128);
  v15 = *(*v0 + 88);
  v16[0] = v15;
  v14 = v1;
  v16[1] = v1;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v6 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, v16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  sub_18BABE7E4(&v14 - v8);
  v10 = *(*v0 + 152);
  swift_beginAccess();
  (*(v7 + 40))(&v0[v10], v9, v6);
  result = swift_endAccess();
  v12 = *(v0 + 3);
  if (v12)
  {
    (*(v7 + 16))(v9, &v0[v10], v6);
    v13 = v12;
    sub_18BA259AC(v9, v15, v14, v2, v3, v4, v5);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_18BAC0220()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v24 = *(*v0 + 88);
  v3 = *(v1 + 112);
  v23 = *(v1 + 96);
  v25 = v23;
  v26 = v3;
  v27 = v2;
  v4 = type metadata accessor for SFFluidCollectionView.Element(0, &v24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = v23;
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *(v0 + 3);
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&v23 = v9;
      v15 = v0;
      v16 = Strong;
      v17 = sub_18BB65E00();
      v19 = v18;
      v20 = v13;
      sub_18B824D48(v17, v19);

      if (v17)
      {
        v21 = *(*v15 + 184);
        swift_beginAccess();
        (*(v5 + 16))(v7, &v15[v21], v4);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v22 = v23;
          (*(v23 + 32))(v12, v7, v8);
          v17(v12, v20);

          sub_18B7B171C(v17, v19);
          (*(v22 + 8))(v12, v8);
        }

        else
        {

          sub_18B7B171C(v17, v19);
          (*(v5 + 8))(v7, v4);
        }
      }

      else
      {
      }
    }
  }
}

void sub_18BAC04F0()
{
  v1 = *(*v0 + 216);
  v2 = *(v0 + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

void sub_18BAC051C()
{
  v1 = *(*v0 + 216);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

uint64_t sub_18BAC05BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v34 = *(*v2 + 88);
  v6 = *(v4 + 112);
  v30 = *(v4 + 96);
  v35 = v30;
  v36 = v6;
  v37 = v5;
  v7 = type metadata accessor for SFFluidCollectionView.Element(0, &v34);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = v30;
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *(v2 + 3);
  if (v19 && v19 == a1)
  {
    v20 = *(v4 + 184);
    swift_beginAccess();
    (*(v8 + 16))(v10, &v2[v20], v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *(v12 + 32);
      v21(v18, v10, v11);
      v21(v15, v18, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8828, &qword_18BC4AF68);
      if (swift_dynamicCast())
      {
        sub_18B7C3FA4(v32, &v34);
        v22 = __swift_project_boxed_opaque_existential_1Tm(&v34, v36);
        v23 = *(_s4ItemVMa_2(0) + 20);
        v24 = sub_18BC1EC08();
        v25 = *(v24 - 8);
        v26 = v22 + v23;
        v27 = v31;
        (*(v25 + 16))(v31, v26, v24);
        (*(v25 + 56))(v27, 0, 1, v24);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v34);
      }

      v33 = 0;
      memset(v32, 0, sizeof(v32));
      sub_18B988BAC(v32, &qword_1EA9D8830, &unk_18BC4AF70);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  v29 = sub_18BC1EC08();
  return (*(*(v29 - 8) + 56))(v31, 1, 1, v29);
}