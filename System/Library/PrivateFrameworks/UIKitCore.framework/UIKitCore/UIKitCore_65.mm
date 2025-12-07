void sub_18913FFE8(void **a1, char a2)
{
  v2 = *a1;
  v3 = qword_1EA931F38;
  if (a2)
  {

    if (v3 != -1)
    {
      swift_once();
    }

    v17 = v2[18];
    v4 = v2[17];
    v15 = v2[16];
    v6 = v2[14];
    v5 = v2[15];
    v8 = v2[12];
    v7 = v2[13];
    v9 = __swift_project_value_buffer(v8, qword_1EA93E0B0);
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    sub_18A4A2598();
    sub_189140E9C(v4, 0, v10);
    v17(v4, v15);
  }

  else
  {
    if (qword_1EA931F38 != -1)
    {
      swift_once();
    }

    v18 = v2[18];
    v4 = v2[17];
    v16 = v2[16];
    v6 = v2[14];
    v5 = v2[15];
    v12 = v2[12];
    v11 = v2[13];
    v13 = __swift_project_value_buffer(v12, qword_1EA93E0B0);
    swift_beginAccess();
    (*(v11 + 16))(v6, v13, v12);
    sub_18A4A2598();
    sub_189140E9C(v4, 0, v14);
    v18(v4, v16);
  }

  free(v4);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_1891401F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  v5 = sub_18A4A2588();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_18914027C(uint64_t a1, double a2)
{
  v3 = sub_18A4A2588();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v4 + 16))(v7, a1, v3, v5);
  sub_189140E9C(v7, 0, v8);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_189140374@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  v4 = sub_18A4A2588();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1891403FC(uint64_t a1, double a2)
{
  sub_189140E9C(a1, 0, a2);
  v3 = sub_18A4A2588();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*sub_189140468(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_18A4A2588();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1891405C0;
}

void sub_1891405C0(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v5 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  if (a2)
  {
    v8 = (*(v3 + 64))(*(v3 + 48), *(v3 + 56), *(v3 + 32));
    sub_189140E9C(v5, 0, v8);
    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
  }

  else
  {
    sub_189140E9C(*(v3 + 56), 0, a3);
    (*(v7 + 8))(v4, v6);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t sub_1891406A4()
{
  v0 = sub_18A4A2668();
  __swift_allocate_value_buffer(v0, qword_1EA93E0B0);
  __swift_project_value_buffer(v0, qword_1EA93E0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0, &unk_18A65FF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  v2 = *off_1E70EC918;
  *(inited + 32) = *off_1E70EC918;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = @"UICTFontTextStyleBody";
  v6 = [v3 preferredFontForTextStyle_];

  v7 = sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
  *(inited + 40) = v6;
  v8 = *off_1E70EC920;
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 labelColor];
  *(inited + 104) = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  *(inited + 80) = v11;
  sub_188AEC99C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0, &unk_18A64E7C0);
  swift_arrayDestroy();
  return sub_18A4A2698();
}

uint64_t static IntelligenceUI.RotaryPlaceholderLabel.defaultAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA931F38 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A2668();
  v3 = __swift_project_value_buffer(v2, qword_1EA93E0B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static IntelligenceUI.RotaryPlaceholderLabel.defaultAttributes.setter(uint64_t a1)
{
  if (qword_1EA931F38 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A2668();
  v3 = __swift_project_value_buffer(v2, qword_1EA93E0B0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

double (*static IntelligenceUI.RotaryPlaceholderLabel.defaultAttributes.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EA931F38 != -1)
  {
    swift_once();
  }

  v1 = sub_18A4A2668();
  __swift_project_value_buffer(v1, qword_1EA93E0B0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_189140AA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA931F38 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A2668();
  v3 = __swift_project_value_buffer(v2, qword_1EA93E0B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

double sub_189140B60(uint64_t a1)
{
  if (qword_1EA931F38 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A2668();
  v3 = __swift_project_value_buffer(v2, qword_1EA93E0B0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  return result;
}

id (*sub_189140C54(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__textSegmentsCovered;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_189140C88;
}

id sub_189140C88(uint64_t a1)
{
  v1 = *a1;
  v1[*(a1 + 8)] = *(a1 + 16);
  return [v1 setNeedsLayout];
}

uint64_t sub_189140CA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_18A4A2668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A2588();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EA931F38;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_1EA93E0B0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v13, v4);
  sub_18A4A2598();
  sub_189140E9C(v11, a3 & 1, v14);
  return (*(v9 + 8))(v11, v8);
}

void sub_189140E9C(uint64_t a1, char a2, double a3)
{
  v6 = sub_18A4A2588();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28[-1] - v12;
  v14 = *(v7 + 16);
  v14(&v28[-1] - v12, a1, v6, v11);
  v15 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  (*(v7 + 40))(&v3[v15], v13, v6);
  swift_endAccess();
  (v14)(v13, a1, v6);
  [v3 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  _s22RotaryPlaceholderLabelC17TextSegmentLayoutCMa(0);
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views) = 0.0;
  v24[2] = v17;
  v24[3] = v19;
  v24[4] = v21;
  v24[5] = v23;
  (v14)(v24 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_attributedString, v13, v6);
  (v14)(v9, v13, v6);
  sub_189143354(v9, v24 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator, v17, v19, v21, v23);
  (*(v7 + 8))(v13, v6);
  if (a2)
  {
    v25 = &off_1EFAEB098;
    v26 = &_s22RotaryPlaceholderLabelC15RotaryAnimationVN;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    memset(v28, 0, 24);
  }

  v28[3] = v26;
  v28[4] = v25;
  sub_189141124(v24, v28);
  sub_189143608(v28);
  [v3 invalidateIntrinsicContentSize];
}

void sub_189141124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v96 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v90 - v10;
  v12 = *&v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel_segmentLayout];
  *&v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel_segmentLayout] = a1;
  sub_189146170(a2, &aBlock);
  if (!*&aBlock.d)
  {

    sub_189143608(&aBlock);
    sub_189144948();
    sub_189144858(v2);

    return;
  }

  sub_188A5EBAC(&aBlock, v99);

  *&v13 = COERCE_DOUBLE(sub_189143D9C());
  v14 = sub_189143D9C();
  v15 = *(v13 + 16);
  v16 = *(v14 + 16);
  v95 = v12;
  v94 = a1;
  v92 = v14;
  v91 = *&v13;
  if (v15 > v16 >> 3)
  {
    v17 = v14;

    a = COERCE_DOUBLE(sub_189191DFC(v13, v17));
  }

  else
  {
    *&aBlock.a = v14;

    sub_1891D7594(v13);
    a = aBlock.a;
  }

  v19 = MEMORY[0x1E69E7CC0];
  *&aBlock.a = MEMORY[0x1E69E7CC0];
  v20 = 1 << *(*&a + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*&a + 56);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  for (i = v19; v22; i = aBlock.a)
  {
LABEL_15:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_188C4738C(*(*&a + 48) + *(v96 + 72) * (v26 | (v24 << 6)), v11, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v27 = sub_189144308();
      if (v27[2])
      {
        v28 = sub_188E8BDFC(v11);
        if (v29)
        {
          break;
        }
      }

      sub_189145454(v11, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    i = COERCE_DOUBLE(*(v27[7] + 8 * v28));
    sub_189145454(v11, _s22RotaryPlaceholderLabelC11TextSegmentVMa);

    MEMORY[0x18CFE2450](v30);
    if (*((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v90 = *((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }

  while (1)
  {
LABEL_11:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(*&a + 56 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_15;
    }
  }

  if (*(v92 + 16) <= *(*&v91 + 16) >> 3)
  {
    aBlock.a = v91;
    sub_1891D7594(v92);

    v31 = aBlock.a;
  }

  else
  {
    v31 = COERCE_DOUBLE(sub_189191DFC(v92, *&v91));
  }

  aBlock.a = v19;
  v32 = 1 << *(*&v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v22 = v33 & *(*&v31 + 56);
  v34 = (v32 + 63) >> 6;

  for (j = 0; v22; v19 = aBlock.a)
  {
LABEL_33:
    while (1)
    {
      v37 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_188C4738C(*(*&v31 + 48) + *(v96 + 72) * (v37 | (j << 6)), v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v38 = sub_189144308();
      if (v38[2])
      {
        v39 = sub_188E8BDFC(v8);
        if (v40)
        {
          break;
        }
      }

      sub_189145454(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v41 = *(v38[7] + 8 * v39);
    sub_189145454(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);

    MEMORY[0x18CFE2450](v42);
    if (*((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }

  while (1)
  {
LABEL_29:
    v36 = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_50;
    }

    if (v36 >= v34)
    {
      break;
    }

    v22 = *(*&v31 + 56 + 8 * v36);
    ++j;
    if (v22)
    {
      j = v36;
      goto LABEL_33;
    }
  }

  sub_189144948();
  sub_189144858(v3);
  v22 = *&v19 >> 62;
  if (*&v19 >> 62)
  {
    goto LABEL_53;
  }

  for (k = *((*&v19 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_18A4A7F68())
  {
    v44 = 0;
    while (1)
    {
      if ((*&v19 & 0xC000000000000001) != 0)
      {
        v45 = sub_188E4B0FC(v44, *&v19);
      }

      else
      {
        if (v44 >= *((*&v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v45 = *(*&v19 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      [v3 addSubview_];

      ++v44;
      if (v47 == k)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_54:
  [v3 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  if (v22)
  {
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

    sub_18A4A83B8();
  }

  else
  {

    sub_18A4A8738();
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  }

  v56 = *&i;

  if (v56 >> 62)
  {
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

    v57 = sub_18A4A83B8();
  }

  else
  {

    sub_18A4A8738();
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v57 = v56;
  }

  v100.origin.x = v49;
  v100.origin.y = v51;
  v100.size.width = v53;
  v100.size.height = v55;
  Height = CGRectGetHeight(v100);
  if (!(v57 >> 62))
  {
    v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_61;
    }

LABEL_69:

    [v3 bounds];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:5.0 stiffness:1500.0 damping:100.0 initialVelocity:{0.0, 0.0}];
    v75 = objc_opt_self();
    [v74 mass];
    v77 = v76;
    [v74 stiffness];
    v79 = v78;
    [v74 damping];
    v81 = v80;
    [v74 initialVelocity];
    v83 = v82;
    sub_188A53994(v99, v97);
    v84 = swift_allocObject();
    sub_188A5EBAC(v97, (v84 + 2));
    *(v84 + 7) = v67;
    *(v84 + 8) = v69;
    *(v84 + 9) = v71;
    *(v84 + 10) = v73;
    v85 = i;
    v84[11] = v19;
    v84[12] = v85;
    *&aBlock.tx = sub_1891461A8;
    *&aBlock.ty = v84;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_188A4A8F0;
    *&aBlock.d = &block_descriptor_73_0;
    v86 = _Block_copy(&aBlock);

    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v19;
    *&aBlock.tx = sub_1891461BC;
    *&aBlock.ty = v88;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_188ABD010;
    *&aBlock.d = &block_descriptor_80_3;
    v89 = _Block_copy(&aBlock);

    [v75 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

    _Block_release(v89);
    _Block_release(v86);

    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    return;
  }

  v64 = Height;
  v65 = sub_18A4A7F68();
  Height = v64;
  v59 = v65;
  if (!v65)
  {
    goto LABEL_69;
  }

LABEL_61:
  if (v59 >= 1)
  {
    v60 = 0;
    v61 = Height + 5.0;
    do
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v62 = sub_188E49300(v60, v57);
      }

      else
      {
        v62 = *(v57 + 8 * v60 + 32);
      }

      v63 = v62;
      ++v60;
      CGAffineTransformMakeTranslation(&aBlock, 0.0, v61);
      [v63 setTransform_];
      [v63 setAlpha_];
    }

    while (v59 != v60);
    goto LABEL_69;
  }

  __break(1u);
}

void sub_189141BE4(char a1, char a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__textSegmentsCovered) = a1;
  if ((a2 & 1) == 0)
  {
LABEL_5:

    [v3 setNeedsLayout];
    return;
  }

  LOBYTE(v4) = a1;
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_189144308();

  v14 = v13[2];
  if (v14)
  {
    v15 = sub_188AF0A60(v13[2], 0);
    v39 = sub_188C5DAF0(&aBlock, v15 + 32, v14, v13);
    v16 = *&aBlock.a;

    sub_188E036A4(v16);
    if (v39 != v14)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  *&aBlock.a = v15;
  sub_18913F5EC(&aBlock);

  v17 = *&aBlock.a;
  if ((*&aBlock.a & 0x8000000000000000) != 0 || (*&aBlock.a & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  for (i = *(*&aBlock.a + 16); i; i = sub_18A4A7F68())
  {
    v19 = 0;
    v38 = v4 & 1;
    v20 = v17 & 0xC000000000000001;
    v37 = xmmword_18A64B730;
    do
    {
      if (v20)
      {
        v26 = sub_188E4B0FC(v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v17 + 8 * v19 + 32);
      }

      v27 = v26;
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v4)
      {
        v25 = 0uLL;
        v22 = 1.0;
        v23 = v37;
        v24 = xmmword_18A64B720;
      }

      else
      {
        v43.origin.x = v6;
        v43.origin.y = v8;
        v43.size.width = v10;
        v43.size.height = v12;
        Height = CGRectGetHeight(v43);
        v22 = 0.0;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -(Height + 5.0));
        v23 = *&aBlock.a;
        v24 = *&aBlock.c;
        v25 = *&aBlock.tx;
      }

      *&aBlock.a = v23;
      *&aBlock.c = v24;
      *&aBlock.tx = v25;
      [v27 setTransform_];
      [v27 setAlpha_];

      ++v19;
    }

    while (v28 != i);
    v4 = 0;
    while (1)
    {
      if (v20)
      {
        v29 = sub_188E4B0FC(v4, v17);
      }

      else
      {
        if (v4 >= *(v17 + 16))
        {
          goto LABEL_33;
        }

        v29 = *(v17 + 8 * v4 + 32);
      }

      v30 = v29;
      v31 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v40 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v38;
      *(v32 + 32) = v6;
      *(v32 + 40) = v8;
      *(v32 + 48) = v10;
      *(v32 + 56) = v12;
      *&aBlock.tx = sub_189144B04;
      *&aBlock.ty = v32;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188A4A8F0;
      *&aBlock.d = &block_descriptor_127;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&aBlock.tx = sub_189144B18;
      *&aBlock.ty = v35;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188ABD010;
      *&aBlock.d = &block_descriptor_6_10;
      v36 = _Block_copy(&aBlock);

      [v40 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

      _Block_release(v36);
      _Block_release(v33);
      ++v4;
      if (v31 == i)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
}

id sub_1891420DC(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    Height = CGRectGetHeight(*&a3);
    v8 = 0.0;
    CGAffineTransformMakeTranslation(&v13, 0.0, Height + 5.0);
    v10 = *&v13.a;
    v9 = *&v13.c;
    v11 = *&v13.tx;
  }

  else
  {
    v9 = xmmword_18A64B720;
    v10 = xmmword_18A64B730;
    v11 = 0uLL;
    v8 = 1.0;
  }

  *&v13.a = v10;
  *&v13.c = v9;
  *&v13.tx = v11;
  [a1 setTransform_];
  return [a1 setAlpha_];
}

id IntelligenceUI.RotaryPlaceholderLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id IntelligenceUI.RotaryPlaceholderLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_18A4A2588();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel_segmentLayout;
  sub_18A4A2578();
  _s22RotaryPlaceholderLabelC17TextSegmentLayoutCMa(0);
  v17 = swift_allocObject();
  *(v17->i64 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views) = 0;
  v17[1].i64[0] = 0;
  v17[1].i64[1] = 0;
  v17[2] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v18 = *(v10 + 16);
  v18(&v17->i8[OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_attributedString], v15, v9);
  v18(v12, v15, v9);
  sub_189143354(v12, v17->i64 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator, 0.0, 0.0, 1.79769313e308, 1.79769313e308);
  (*(v10 + 8))(v15, v9);
  *&v4[v16] = v17;
  sub_18A4A2578();
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__textSegmentsCovered] = 0;
  v19 = type metadata accessor for IntelligenceUI.RotaryPlaceholderLabel(0);
  v21.receiver = v4;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
}

id IntelligenceUI.RotaryPlaceholderLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id IntelligenceUI.RotaryPlaceholderLabel.init(coder:)(void *a1, double a2)
{
  v18 = a1;
  v3 = sub_18A4A2588();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel_segmentLayout;
  sub_18A4A2578();
  _s22RotaryPlaceholderLabelC17TextSegmentLayoutCMa(0);
  v11 = swift_allocObject();
  *(v11->i64 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views) = 0;
  v11[1].i64[0] = 0;
  v11[1].i64[1] = 0;
  v11[2] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v12 = *(v4 + 16);
  v12(&v11->i8[OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_attributedString], v9, v3);
  v12(v6, v9, v3);
  sub_189143354(v6, v11->i64 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator, 0.0, 0.0, 1.79769313e308, 1.79769313e308);
  (*(v4 + 8))(v9, v3);
  *&v2[v10] = v11;
  sub_18A4A2578();
  v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__textSegmentsCovered] = 0;
  v13 = type metadata accessor for IntelligenceUI.RotaryPlaceholderLabel(0);
  v19.receiver = v2;
  v19.super_class = v13;
  v14 = v18;
  v15 = objc_msgSendSuper2(&v19, sel_initWithCoder_, v18);

  if (v15)
  {
  }

  return v15;
}

double IntelligenceUI.RotaryPlaceholderLabel.intrinsicContentSize.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel_segmentLayout) + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator);

  v2 = [v1 documentRange];
  [v1 ensureLayoutForRange_];

  v3 = [v1 textContainer];
  if (v3)
  {
    v4 = v3;
    [v3 lineFragmentPadding];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  [v1 usageBoundsForTextContainer];
  v10 = CGRectInset(v9, -v6, 0.0);
  width = v10.size.width;

  return width;
}

CGSize __swiftcall IntelligenceUI.RotaryPlaceholderLabel.sizeThatFits(_:)(CGSize a1)
{
  [v1 intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

Swift::Void __swiftcall IntelligenceUI.RotaryPlaceholderLabel.layoutSubviews()()
{
  v1 = sub_18A4A2588();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for IntelligenceUI.RotaryPlaceholderLabel(0);
  v22.receiver = v0;
  v22.super_class = v8;
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  [v0 bounds];
  if (!CGRectEqualToRect(v23, *(*&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel_segmentLayout] + 16)))
  {
    v9 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
    swift_beginAccess();
    v10 = *(v2 + 16);
    v10(v7, &v0[v9], v1);
    [v0 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    _s22RotaryPlaceholderLabelC17TextSegmentLayoutCMa(0);
    v19 = swift_allocObject();
    *(v19 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views) = 0.0;
    v19[2] = v12;
    v19[3] = v14;
    v19[4] = v16;
    v19[5] = v18;
    v10(v19 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_attributedString, v7, v1);
    v10(v4, v7, v1);
    sub_189143354(v4, v19 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator, v12, v14, v16, v18);
    (*(v2 + 8))(v7, v1);
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_189141124(v19, v20);

    sub_189143608(v20);
  }
}

double sub_189142B60(double a1, double a2, double a3, double a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = a6;
  if (a6 >> 62)
  {
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

    v14 = sub_18A4A83B8();

    v8 = v14;
    if (!(a7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_18A4A8738();
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    if (!(a7 >> 62))
    {
LABEL_3:

      sub_18A4A8738();
      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      goto LABEL_4;
    }
  }

  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);

  v15 = sub_18A4A83B8();

  a7 = v15;
LABEL_4:
  sub_1891461C4(v8, a7, a1, a2, a3, a4);

  return result;
}

void sub_189142CE8(char a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      if (a3 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
      {
        v8 = 0;
        while (1)
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v9 = sub_188E4B0FC(v8, a3);
          }

          else
          {
            if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v9 = *(a3 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          [v9 removeFromSuperview];

          ++v8;
          if (v11 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:
      [v6 layoutSubviews];
    }
  }
}

uint64_t sub_189142E10()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_189142EB4(uint64_t a1)
{
  sub_18A4A7C98();
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  return sub_18A4A7348();
}

uint64_t sub_189142F4C()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_189142FEC(uint64_t a1, uint64_t a2)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    result = [*(a1 + 32) isEqualToTextRange_];
    if (result)
    {
      if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
      {
        return 1;
      }

      else
      {

        return sub_18A4A86C8();
      }
    }
  }

  return result;
}

id sub_1891432B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_189143354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v37 = a1;
  v36 = sub_18A4A2588();
  v34 = *(v36 - 8);
  v11 = v34;
  MEMORY[0x1EEE9AC00](v36);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(off_1E70ECBD8) init];
  *a2 = v14;
  v15 = objc_allocWithZone(off_1E70ECBC0);
  v33 = v14;
  v16 = [v15 init];
  *(a2 + 8) = v16;
  v17 = objc_allocWithZone(off_1E70ECBB0);
  v35 = v16;
  v18 = [v17 init];
  *(a2 + 16) = v18;
  v19 = objc_allocWithZone(off_1E70ECC00);
  v20 = v18;
  v21 = [v19 init];
  *(a2 + 24) = v21;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *(a2 + 48) = a5;
  *(a2 + 56) = a6;
  v22 = _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0);
  v23 = *(v11 + 16);
  v25 = v36;
  v24 = v37;
  v23(a2 + *(v22 + 36), v37, v36);
  v26 = v21;
  [v20 setSize_];
  v27 = v33;
  [v33 setTextContainer_];

  sub_188A34624(0, &qword_1EA930C60, 0x1E696AAB0);
  v28 = v24;
  v23(v13, v24, v25);
  v29 = sub_18A4A7AC8();
  [v26 setAttributedString_];
  v30 = v35;
  [v35 setTextStorage_];

  [v30 addTextLayoutManager_];
  return (*(v34 + 8))(v28, v25);
}

void sub_189143638()
{
  v2 = v0;
  v3 = sub_18A4A24F8();
  MEMORY[0x1EEE9AC00](v3);
  _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0);
  sub_18A4A24E8();
  sub_18914540C(&qword_1EA93B120, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  sub_18A4A7428();
  v4 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v5 = sub_18A4A7258();

  v6 = [v4 initWithString_];

  v7 = [(__CFString *)v6 length];
  v8 = *v2;
  v9 = [*v2 documentRange];
  v33 = v7;
  v35.location = 0;
  v35.length = v7;
  v10 = CFStringTokenizerCreate(0, v6, v35, 0, 0);
  v11 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  if (!CFStringTokenizerAdvanceToNextToken(v10))
  {
LABEL_22:
    v12 = (v11 >> 62);
    if (v11 >> 62)
    {
LABEL_44:
      v22 = sub_18A4A7F68();
      if (v22)
      {
LABEL_24:
        v15 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v15)
        {
          __break(1u);
        }

        else if ((v11 & 0xC000000000000001) == 0)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v23 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v24 = *(v11 + 8 * v23 + 32);
            goto LABEL_29;
          }

          __break(1u);
          goto LABEL_56;
        }

        v24 = sub_188E4B0E8(v23, v11);
LABEL_29:
        length = v24;
        v8 = [objc_allocWithZone(off_1E70ECBF0) initWithLocation:objc_msgSend(v24 endLocation:{sel_location, v32), objc_msgSend(v9, sel_endLocation)}];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v8)
        {
          goto LABEL_61;
        }

        if (v12)
        {
          v25 = sub_18A4A7F68();
        }

        else
        {
          v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v25)
        {
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v12 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            v11 = sub_188B8AD14(v11);
          }

          v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            v28 = v27 - 1;
            v29 = *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
            *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v28;

            v8 = v8;
            MEMORY[0x18CFE2450]();
            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_39:
              sub_18A4A75F8();

              goto LABEL_50;
            }

LABEL_58:
            sub_18A4A7588();
            goto LABEL_39;
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

    else
    {
      v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_24;
      }
    }

    if (!v33)
    {

      return;
    }

    v30 = [objc_allocWithZone(off_1E70ECBF0) initWithLocation:objc_msgSend(v9 endLocation:{sel_location), objc_msgSend(v9, sel_endLocation)}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v30)
    {
      goto LABEL_62;
    }

    v31 = v30;
    MEMORY[0x18CFE2450]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();

LABEL_50:
    return;
  }

  v12 = &selRef_leadingItemGroups;
  while (1)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v10);
    length = CurrentTokenRange.length;
    if (v11 >> 62)
    {
      v14 = sub_18A4A7F68();
      if (v14)
      {
LABEL_5:
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          goto LABEL_41;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = sub_188E4B0E8(v16, v11);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v17 = *(v11 + 8 * v16 + 32);
        }

        v11 = v17;
        v18 = [v17 endLocation];

        if (v18)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v18 = [v9 location];
LABEL_12:
    v19 = [v9 location];
    if (__OFADD__(CurrentTokenRange.location, CurrentTokenRange.length))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v20 = [v8 locationFromLocation:v19 withOffset:CurrentTokenRange.location + CurrentTokenRange.length];
    swift_unknownObjectRelease();
    if (!v20)
    {
      break;
    }

    v21 = [objc_allocWithZone(off_1E70ECBF0) initWithLocation:v18 endLocation:v20];
    if (!v21)
    {
      goto LABEL_60;
    }

    length = v21;
    MEMORY[0x18CFE2450]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_18A4A7588();
    }

    sub_18A4A75F8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v11 = v34;
    if (!CFStringTokenizerAdvanceToNextToken(v10))
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

id sub_189143C34()
{
  v1 = *v0;
  v2 = [v1 textContentManager];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 documentRange];
  v5 = [v3 textElementsForRange_];
  sub_188A34624(0, &qword_1EA934330, &off_1E70ECBC8);
  v6 = sub_18A4A7548();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v7 = sub_188E4B0D4(0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
LABEL_12:
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_189143D9C()
{
  v1 = v0;
  v2 = _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7CD0];
  v38 = MEMORY[0x1E69E7CD0];
  if ([v1[3] length] < 1)
  {
    return v5;
  }

  v32 = sub_189143C34();
  v6 = *v1;
  v7 = [*v1 documentRange];
  v31 = v6;
  [v6 ensureLayoutForRange_];

  sub_189143638();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_14:

    v24 = 0;
    v20 = 0;
    v5 = MEMORY[0x1E69E7CD0];
LABEL_15:
    sub_188A55B8C(v24, v20);
    return v5;
  }

  while (result >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v29 = v3 + 7;
    v30 = v9 & 0xC000000000000001;
    v28 = v36;
    v26 = result;
    v27 = v9;
    while (1)
    {
      v14 = v30 ? sub_188E4B0E8(v13, v9) : *(v9 + 8 * v13 + 32);
      v15 = v14;
      v16 = v1;
      v17 = v33;
      sub_188C4738C(v1, v33, _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa);
      v18 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v19 = &v29[v18] & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      v21 = v32;
      *(v20 + 16) = v32;
      sub_189146014(v17, v20 + v18);
      *(v20 + v19) = &v38;
      v3 = v21;
      sub_188A55B8C(v11, v12);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_189146078;
      *(v22 + 24) = v20;
      v36[2] = sub_189146168;
      v37 = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v36[0] = sub_18914E888;
      v36[1] = &block_descriptor_67_3;
      v23 = _Block_copy(aBlock);
      v1 = v37;

      [v31 enumerateTextSegmentsInRange:v15 type:0 options:0 usingBlock:v23];

      _Block_release(v23);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        break;
      }

      ++v13;
      v11 = sub_189146078;
      v12 = v20;
      v9 = v27;
      v1 = v16;
      if (v26 == v13)
      {

        v24 = sub_189146078;
        v5 = v38;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    v25 = v9;
    result = sub_18A4A7F68();
    v9 = v25;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_189144178(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t a8)
{
  v15 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v28 - v23);
  if (a1)
  {
    sub_188C4738C(a8, v24 + *(v22 + 32), _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa);
    *v24 = a2;
    v24[1] = a3;
    v24[2] = a4;
    v24[3] = a5;
    *(v24 + 4) = a1;
    v24[5] = 0.0;
    v24[6] = -2.68156159e154;
    *(v24 + 7) = a7;
    sub_188C4738C(v24, v17, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v25 = a1;
    v26 = a7;
    sub_188E726B4(v20, v17);
    sub_189145454(v20, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    sub_189145454(v24, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
  }

  return 1;
}

void *sub_189144308()
{
  v1 = OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views;
  if (*(v0 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views))
  {
    v2 = *(v0 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout____lazy_storage___views);
  }

  else
  {
    v2 = sub_189144370();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_189144370()
{
  v0 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v1 = *(v0 - 8);
  v46 = v0;
  v47 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v46 - v4);
  v6 = sub_188E8F954(MEMORY[0x1E69E7CC0]);
  v7 = sub_189143D9C();
  v8 = 0;
  v10 = v7 + 56;
  v9 = *(v7 + 56);
  v48 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v9) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v17 >= v14)
    {

      return v6;
    }

    v13 = *(v10 + 8 * v17);
    ++v8;
  }

  while (!v13);
  while (1)
  {
    v18 = *(v48 + 48);
    v49 = *(v47 + 72);
    sub_188C4738C(v18 + v49 * (__clz(__rbit64(v13)) | (v17 << 6)), v5, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    sub_188C4738C(v5, v50, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v19 = _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
    v20 = objc_allocWithZone(v19);
    sub_188C4738C(v5, &v20[OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView_segment], _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    v21 = *(v5 + 7);
    v22 = *(v5 + 4);
    v23 = objc_allocWithZone(off_1E70ECBD0);
    v24 = [v23 initWithTextElement:v21 range:{v22, v46}];
    *&v20[OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F11SegmentView_fragment] = v24;
    v25 = *v5;
    v26 = v5[1];
    v27 = v5[2];
    v28 = v5[3];
    v52.receiver = v20;
    v52.super_class = v19;
    v29 = objc_msgSendSuper2(&v52, sel_initWithFrame_, v25, v26, v27, v28);
    [v29 setOpaque_];
    v30 = [objc_opt_self() clearColor];
    [v29 setBackgroundColor_];

    sub_189145454(v5, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v6;
    v32 = sub_188E8BDFC(v50);
    v34 = v6[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      break;
    }

    v38 = v33;
    if (v6[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = v32;
        sub_188FA6F54();
        v32 = v44;
      }
    }

    else
    {
      sub_1890C133C(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_188E8BDFC(v50);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_24;
      }
    }

    v13 &= v13 - 1;
    v6 = v51;
    if (v38)
    {
      v15 = v51[7];
      v16 = *(v15 + 8 * v32);
      *(v15 + 8 * v32) = v29;

      sub_189145454(v50, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v8 = v17;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v51[(v32 >> 6) + 8] |= 1 << v32;
      v40 = v50;
      v41 = v32;
      sub_188C4738C(v50, v6[6] + v32 * v49, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      *(v6[7] + 8 * v41) = v29;
      sub_189145454(v40, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v42 = v6[2];
      v36 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v36)
      {
        goto LABEL_23;
      }

      v6[2] = v43;
      v8 = v17;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v17 = v8;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

CGFloat sub_189144794()
{
  v1 = *(v0 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator);
  v2 = [v1 documentRange];
  [v1 ensureLayoutForRange_];

  v3 = [v1 textContainer];
  if (v3)
  {
    v4 = v3;
    [v3 lineFragmentPadding];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  [v1 usageBoundsForTextContainer];
  v9 = CGRectInset(v8, -v6, 0.0);
  return v9.size.width;
}

void sub_189144858(void *a1)
{
  v2 = sub_189144308();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v2 + 8;
  v8 = v6 & v2[8];
  v9 = (v5 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      [a1 addSubview_];
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = v7[v10];
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

void sub_189144948()
{
  v0 = sub_189144308();
  v1 = v0;
  v2 = v0 + 8;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & v0[8];
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      [*(v1[7] + ((v8 << 9) | (8 * v9))) removeFromSuperview];
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = v2[v8];
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_189144A34()
{
  v1 = OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_attributedString;
  v2 = sub_18A4A2588();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_189145454(v0 + OBJC_IVAR____TtCCO5UIKit14IntelligenceUI22RotaryPlaceholderLabelP33_6F0AB2EDC77A7506E9CF9A7668188D4F17TextSegmentLayout_calculator, _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa);

  return swift_deallocClassInstance();
}

uint64_t sub_189144B48(uint64_t a1)
{
  result = sub_18A4A2588();
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

uint64_t sub_189144EA0(uint64_t a1)
{
  result = _s22RotaryPlaceholderLabelC11TextSegmentVMa(319);
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

uint64_t sub_189144F64(uint64_t a1)
{
  result = sub_18A4A2588();
  if (v2 <= 0x3F)
  {
    result = _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_18914508C(uint64_t a1)
{
  sub_188A34624(319, &qword_1EA93E148, &off_1E70ECBD8);
  if (v1 <= 0x3F)
  {
    sub_188A34624(319, &qword_1EA93E150, &off_1E70ECBC0);
    if (v2 <= 0x3F)
    {
      sub_188A34624(319, &qword_1EA93E158, &off_1E70ECBB0);
      if (v3 <= 0x3F)
      {
        sub_188A34624(319, &qword_1EA93E160, &off_1E70ECC00);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v5 <= 0x3F)
          {
            sub_18A4A2588();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1891451D8(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_188A34624(319, &qword_1EA934328, &off_1E70ECBF0);
    if (v2 <= 0x3F)
    {
      sub_188A34624(319, &qword_1EA934330, &off_1E70ECBC8);
      if (v3 <= 0x3F)
      {
        _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit14IntelligenceUIO22RotaryPlaceholderLabelC13AnimationType33_6F0AB2EDC77A7506E9CF9A7668188D4FLLO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1891452DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18914532C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_189145388(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18914540C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_189145454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1891454B4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_18A4A85F8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s22RotaryPlaceholderLabelC11SegmentViewCMa(0);
        v6 = sub_18A4A75D8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1891456BC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1891455B8(0, v2, 1, a1);
  }
}

void sub_1891455B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frame];
      MinX = CGRectGetMinX(v19);
      [v13 frame];
      v15 = CGRectGetMinX(v20);

      if (MinX >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v16;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1891456BC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_18917EF5C(v8);
    }

    v92 = v5;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v5 = v93 - 1;
        v94 = *&v8[16 * v93];
        v95 = *&v8[16 * v93 + 24];
        sub_189145D44((*a3 + 8 * v94), (*a3 + 8 * *&v8[16 * v93 + 16]), (*a3 + 8 * v95), v9);
        if (v92)
        {
          goto LABEL_97;
        }

        if (v95 < v94)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_18917EF5C(v8);
        }

        if (v93 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v96 = &v8[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        sub_18917EED0(v93 - 1);
        v93 = *(v8 + 2);
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frame];
      MinX = CGRectGetMinX(v106);
      [v17 frame];
      v19 = CGRectGetMinX(v107);

      v20 = v12 + 2;
      while (v6 != v20)
      {
        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        [v22 frame];
        v24 = CGRectGetMinX(v108);
        [v23 frame];
        v25 = CGRectGetMinX(v109);

        ++v20;
        ++v14;
        if (MinX < v19 == v24 >= v25)
        {
          v6 = (v20 - 1);
          break;
        }
      }

      v9 = v12;
      if (MinX < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_117;
        }

        if (v12 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v12;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v29 = *(v30 + v5);
              *(v30 + v5) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            v28 = (v28 + 1);
            v26 -= 8;
            v5 += 8;
          }

          while (v28 < v27);
        }
      }

      v10 = v6;
      v5 = v98;
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v32 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v32 >= v31)
        {
          v32 = a3[1];
        }

        if (v32 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v32)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_188E4B688(0, *(v8 + 2) + 1, 1, v8);
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v8 = sub_188E4B688((v46 > 1), v47 + 1, 1, v8);
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v10;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v104 = v10;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_56:
          if (v55)
          {
            goto LABEL_104;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_107;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_111;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_70:
        if (v73)
        {
          goto LABEL_106;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_109;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_77:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v8[16 * v89 + 32];
        v9 = *&v8[16 * v51 + 40];
        sub_189145D44((*a3 + 8 * v90), (*a3 + 8 * *&v8[16 * v51 + 32]), (*a3 + 8 * v9), v50);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v9 < v90)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_18917EF5C(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v91 = &v8[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v9;
        sub_18917EED0(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_102;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_103;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_105;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_108;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_112;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v7 = v104;
    v6 = a3[1];
    if (v104 >= v6)
    {
      goto LABEL_87;
    }
  }

  v99 = v5;
  v100 = v9;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v35 = (v9 - v10);
  v102 = v32;
LABEL_29:
  v103 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    [v40 frame];
    v42 = CGRectGetMinX(v110);
    [v41 frame];
    v43 = CGRectGetMinX(v111);

    if (v42 >= v43)
    {
LABEL_28:
      v10 = v103 + 1;
      v34 += 8;
      --v35;
      if (v103 + 1 != v102)
      {
        goto LABEL_29;
      }

      v10 = v102;
      v5 = v99;
      v9 = v100;
      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_189145D44(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v23 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v23;
    }

    v22 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v37 = v4;
LABEL_26:
      __dst = v22;
      v24 = v22 - 1;
      --v5;
      v25 = v14;
      do
      {
        v26 = v5 + 1;
        v27 = *--v25;
        v28 = v24;
        v29 = *v24;
        v30 = v27;
        v31 = v29;
        [v30 frame];
        MinX = CGRectGetMinX(v40);
        [v31 frame];
        v33 = CGRectGetMinX(v41);

        if (MinX < v33)
        {
          v34 = v28;
          if (v26 != __dst)
          {
            *v5 = *v28;
          }

          v4 = v37;
          if (v14 <= v37 || (v22 = v34, v34 <= v6))
          {
            v22 = v34;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v26 != v14)
        {
          *v5 = *v25;
        }

        --v5;
        v14 = v25;
        v24 = v28;
      }

      while (v25 > v37);
      v14 = v25;
      v22 = __dst;
      v4 = v37;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frame];
        v18 = CGRectGetMinX(v38);
        [v17 frame];
        v19 = CGRectGetMinX(v39);

        if (v18 >= v19)
        {
          break;
        }

        v20 = v13;
        v21 = v6 == v13++;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v20 = v4;
      v21 = v6 == v4++;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v20;
      goto LABEL_17;
    }

LABEL_19:
    v22 = v6;
  }

LABEL_37:
  if (v22 != v4 || v22 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_189146014(uint64_t a1, uint64_t a2)
{
  v4 = _s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189146078(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = *(_s22RotaryPlaceholderLabelC21TextSegmentCalculatorVMa(0) - 8);
  v14 = *(v6 + 16);
  v15 = v6 + ((*(v13 + 80) + 24) & ~*(v13 + 80));

  return sub_189144178(a1, a3, a4, a5, a6, a2, v14, v15);
}

void sub_1891461C4(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6)
{
  Height = CGRectGetHeight(*&a3);
  if (a2 >> 62)
  {
    v9 = sub_18A4A7F68();
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    if (v9 < 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_188E49300(v10, a2);
      }

      else
      {
        v11 = *(a2 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v18.c = 0.0;
      *&v18.a = 0x3FF0000000000000uLL;
      v18.d = 1.0;
      *&v18.tx = 0uLL;
      [v11 setTransform_];
      [v12 setAlpha_];
    }

    while (v9 != v10);
  }

  if (a1 >> 62)
  {
    v13 = sub_18A4A7F68();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 < 1)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v14 = 0;
  v15 = -(Height + 5.0);
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = sub_188E49300(v14, a1);
    }

    else
    {
      v16 = *(a1 + 8 * v14 + 32);
    }

    v17 = v16;
    ++v14;
    CGAffineTransformMakeTranslation(&v18, 0.0, v15);
    [v17 setTransform_];
    [v17 setAlpha_];
  }

  while (v13 != v14);
}

void (*UIZoomTransitionOptions.alignmentRectProvider.getter())(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_189146B78;
}

id static UIViewControllerTransition.zoom(options:sourceViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_189146EA4;
  v10[3] = &block_descriptor_128;
  v7 = _Block_copy(v10);

  v8 = [ObjCClassFromMetadata zoomWithOptions:a1 sourceViewProvider:v7];
  _Block_release(v7);
  return v8;
}

id static UIViewControllerTransition.zoom(options:sourceBarButtonItemProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_189146EA4;
  v10[3] = &block_descriptor_3_5;
  v7 = _Block_copy(v10);

  v8 = [ObjCClassFromMetadata zoomWithOptions:a1 sourceBarButtonItemProvider:v7];
  _Block_release(v7);
  return v8;
}

id static UIViewControllerTransition.coverVertical.getter()
{
  v0 = [swift_getObjCClassFromMetadata() coverVerticalTransition];

  return v0;
}

id static UIViewControllerTransition.flipHorizontal.getter()
{
  v0 = [swift_getObjCClassFromMetadata() flipHorizontalTransition];

  return v0;
}

id static UIViewControllerTransition.crossDissolve.getter()
{
  v0 = [swift_getObjCClassFromMetadata() crossDissolveTransition];

  return v0;
}

id static UIViewControllerTransition.partialCurl.getter()
{
  v0 = [swift_getObjCClassFromMetadata() partialCurlTransition];

  return v0;
}

uint64_t sub_1891466B4@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_allocObject();
  *(result + 16) = sub_189146EA8;
  *(result + 24) = v2;
  *a1 = sub_189146E54;
  a1[1] = result;
  return result;
}

double sub_189146740(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_189146E04;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v11[4] = sub_189146EAC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_189146A18;
  v11[3] = &block_descriptor_32_3;
  v9 = _Block_copy(v11);
  sub_188A52E38(v3, v4);
  sub_188A52E38(v6, v5);

  [v7 setAlignmentRectProvider_];
  _Block_release(v9);
  return sub_188A55B8C(v6, v5);
}

double UIZoomTransitionOptions.alignmentRectProvider.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_189146B80;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_189146A18;
  v9[3] = &block_descriptor_9_3;
  v7 = _Block_copy(v9);
  sub_188A52E38(a1, a2);

  [v3 setAlignmentRectProvider_];
  _Block_release(v7);
  return sub_188A55B8C(a1, a2);
}

double sub_18914698C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  if (!a2 || (, v6 = &v8, a2(&v8, a1), sub_188A55B8C(a2, a3), (v9 & 1) != 0))
  {
    v6 = MEMORY[0x1E695F050];
  }

  return *v6;
}

double sub_189146A18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_189146A98(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = 0uLL;
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong alignmentRectProvider];
    if (v8)
    {
      v9 = v8;
      v16 = (*(v8 + 2))(v8, a1);
      v17 = v10;
      v15 = v11;
      v18 = v12;
      _Block_release(v9);

      *&v14 = v15;
      *&v6 = v16;
      v13 = 0;
      *(&v6 + 1) = v17;
      *(&v14 + 1) = v18;
    }

    else
    {

      v13 = 1;
      v14 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v13 = 1;
    v14 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 16) = v14;
  *(a3 + 32) = v13;
}

void (*UIZoomTransitionOptions.alignmentRectProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 48) = sub_189146EA8;
  *(v4 + 56) = v5;
  return sub_189146C30;
}

void sub_189146C30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[4] = sub_189146EAC;
    v2[5] = v6;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_189146A18;
    v2[3] = &block_descriptor_18_6;
    v7 = _Block_copy(v2);
    sub_188A52E38(v3, v4);
    sub_188A52E38(v3, v4);

    [v5 setAlignmentRectProvider_];
    _Block_release(v7);
    sub_188A55B8C(v3, v4);
    v8 = v2[6];
    v9 = v2[7];
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v4;
    v2[4] = sub_189146EAC;
    v2[5] = v10;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_189146A18;
    v2[3] = &block_descriptor_25_5;
    v11 = _Block_copy(v2);
    sub_188A52E38(v3, v4);

    [v5 setAlignmentRectProvider_];
    _Block_release(v11);
    v8 = v3;
    v9 = v4;
  }

  sub_188A55B8C(v8, v9);

  free(v2);
}

double sub_189146E04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v10 = a1;
  v4(v8, &v10);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

double sub_189146E54@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v6, *a1);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_189146EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v53 = a1;
  v57 = a5;
  v10 = sub_18A4A7D38();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v48 - v11;
  v56 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v48 - v15;
  v16 = sub_18A4A49C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - v18;
  v21 = type metadata accessor for VelocityState(0, a3, a4, v20);
  v54 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  sub_18A4A4DA8();
  v24 = a2;
  sub_18A4A4D88();
  sub_1891473A8(v16, v28, v25, v26, v27);
  (*(v17 + 8))(v19, v16);
  v29 = v53;
  v31 = type metadata accessor for VelocitySampler(0, a3, a4, v30);
  if (v23[*(v31 + 44) + 8] == 1)
  {
    sub_189147424(v29, v31, a6);
    v33 = sub_18A4A4D78();
    sub_1891488BC(v23, v16, v36, v34, v35);
    v33(v58, 0);
  }

  v37 = &v23[*(type metadata accessor for VelocitySampler(0, *(v21 + 16), *(v21 + 24), v32) + 44)];
  if (v37[8])
  {
    v38 = 2.0;
  }

  else
  {
    v38 = *v37 + 2.0;
  }

  v39 = v55;
  sub_189147B2C(v24, a3, a4, v55, a6);
  v40 = v56;
  if ((*(v56 + 48))(v39, 1, a3) == 1)
  {
    (*(v54 + 8))(v23, v21);
    (*(v51 + 8))(v39, v52);
    v41 = v57;
    if (v38 <= a6)
    {
      v42 = 1;
      return (*(v40 + 56))(v41, v42, 1, a3);
    }

LABEL_11:
    (*(v40 + 16))(v41, v29, a3);
    v42 = 0;
    return (*(v40 + 56))(v41, v42, 1, a3);
  }

  v43 = v49;
  (*(v40 + 32))(v49, v39, a3);
  v44 = v50;
  sub_18A4A8408();
  v45 = sub_18A4A7248();
  v46 = *(v40 + 8);
  v46(v44, a3);
  v46(v43, a3);
  (*(v54 + 8))(v23, v21);
  v42 = 1;
  if (v45)
  {
    v41 = v57;
    return (*(v40 + 56))(v41, v42, 1, a3);
  }

  v41 = v57;
  if (v38 > a6)
  {
    goto LABEL_11;
  }

  return (*(v40 + 56))(v41, v42, 1, a3);
}

uint64_t sub_1891473A8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for VelocityState(0, *(a1 + 16), *(a1 + 24), a5);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9A0](v6, a1, v6, WitnessTable);
}

void sub_189147424(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_18A4A7D38();
  v84 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v85 = &v76 - v25;
  v26 = v3;
  v27 = &v3[*(a2 + 44)];
  v28 = *v27;
  v29 = v27[8];
  if ((v29 & 1) != 0 || v28 <= a3)
  {
    v80 = v23;
    v81 = v22;
    v79 = v21;
    v82 = v19;
    v83 = v20;
    v30 = a1;
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v85;
    (*(*(v7 - 8) + 16))(v85, v30, v7, v24);
    *&v32[v31] = a3;
    v33.n128_f64[0] = a3 - v28;
    if (a3 - v28 >= 2.22044605e-16)
    {
      v34 = 1;
    }

    else
    {
      v34 = v29;
    }

    if (v34)
    {
      *v27 = a3;
      v27[8] = 0;
      v35 = v84;
      v36 = *(v84 + 2);
      v80 = *(a2 + 40);
      v37 = v82;
      v78 = v36;
      (v36)(v13, &v26[v80], v82, v33);
      v77 = *(v83 + 48);
      v38 = v77(v13, 1, TupleTypeMetadata2);
      v39 = v13;
      v40 = *(v35 + 1);
      v40(v39, v37);
      v41 = *(a2 + 36);
      if (v38 != 1)
      {
        v69 = *(v35 + 3);
        v69(v26, &v26[v41], v37);
        v70 = &v26[v41];
        v71 = v80;
        v69(v70, &v26[v80], v37);
        v40(&v26[v71], v37);
        v72 = v83;
        (*(v83 + 32))(&v26[v71], v85, TupleTypeMetadata2);
        (*(v72 + 56))(&v26[v71], 0, 1, TupleTypeMetadata2);
        return;
      }

      v42 = v81;
      v78(v81, &v26[v41], v37);
      v43 = v77(v42, 1, TupleTypeMetadata2);
      v84 = v40;
      v40(v42, v37);
      v44 = v37;
      v45 = v83;
      v46 = (v83 + 56);
      if (v43 != 1)
      {
        v74 = v80;
        v84(&v26[v80], v44);
        (*(v45 + 32))(&v26[v74], v85, TupleTypeMetadata2);
        (*(v45 + 56))(&v26[v74], 0, 1, TupleTypeMetadata2);
        return;
      }

      v47 = TupleTypeMetadata2;
      v48 = v79;
      v78(v79, v26, v44);
      v49 = v47;
      LODWORD(v47) = v77(v48, 1, v47);
      v84(v48, v44);
      v50 = (v45 + 32);
      if (v47 == 1)
      {
        v84(v26, v44);
        (*v50)(v26, v85, v49);
        v51 = *v46;
        v52 = v26;
      }

      else
      {
        v84(&v26[v41], v44);
        (*v50)(&v26[v41], v85, v49);
        v51 = *v46;
        v52 = &v26[v41];
      }

      v75 = v49;
    }

    else
    {
      v53 = v84;
      v54 = *(v84 + 2);
      v55 = v26;
      v81 = *(a2 + 40);
      v56 = v82;
      v79 = v54;
      (v54)(v17, &v26[v81], v82, v33);
      v57 = v83;
      v78 = *(v83 + 48);
      v58 = (v78)(v17, 1, TupleTypeMetadata2);
      v59 = v17;
      v60 = *(v53 + 1);
      v60(v59, v56);
      v61 = v58 == 1;
      v62 = TupleTypeMetadata2;
      if (v61)
      {
        v63 = *(a2 + 36);
        v64 = v80;
        (v79)(v80, &v26[v63], v56);
        v65 = (v78)(v64, 1, v62);
        v60(v64, v56);
        v66 = v55;
        v67 = (v57 + 32);
        v68 = (v57 + 56);
        if (v65 == 1)
        {
          v60(v66, v56);
          (*v67)(v66, v85, v62);
          v51 = *v68;
          v52 = v66;
        }

        else
        {
          v60(&v66[v63], v56);
          (*v67)(&v66[v63], v85, v62);
          v51 = *v68;
          v52 = &v66[v63];
        }
      }

      else
      {
        v73 = v81;
        v60(&v26[v81], v56);
        (*(v57 + 32))(&v26[v73], v85, v62);
        v51 = *(v57 + 56);
        v52 = &v26[v73];
      }

      v75 = v62;
    }

    v51(v52, 0, 1, v75);
  }
}

uint64_t sub_189147B2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v58 = a4;
  v9 = sub_18A4A7D38();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v56 = type metadata accessor for VelocityState(0, a2, a3, v12);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = sub_18A4A49C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4DA8();
  v55 = a1;
  sub_18A4A4D88();
  sub_1891473A8(v17, v29, v26, v27, v28);
  v48 = *(v18 + 8);
  v48(v22, v17);
  v57 = a3;
  v31 = type metadata accessor for VelocitySampler(0, a2, a3, v30);
  sub_189147FF4(v31, v11);
  (*(*(v31 - 8) + 8))(v16, v31);
  if ((*(v23 + 48))(v11, 1, a2) == 1)
  {
    (*(v51 + 8))(v11, v52);
    v32 = 1;
    v33 = v58;
  }

  else
  {
    v34 = v50;
    (*(v23 + 32))(v50, v11, a2);
    v35 = v49;
    sub_18A4A4D88();
    v36 = v53;
    sub_1891473A8(v17, v40, v37, v38, v39);
    v48(v35, v17);
    v41 = v56;
    v43 = &v36[*(type metadata accessor for VelocitySampler(0, *(v56 + 16), *(v56 + 24), v42) + 44)];
    if (v43[8])
    {
      v44 = 0.0;
    }

    else
    {
      v44 = *v43;
    }

    (*(v54 + 8))(v36, v41);
    pow(0.998, (a5 - v44) * 1000.0);
    v45 = v58;
    (*(v23 + 16))(v58, v34, a2);
    sub_18A4A4E98();
    (*(v23 + 8))(v34, a2);
    v32 = 0;
    v33 = v45;
  }

  return (*(v23 + 56))(v33, v32, 1, a2);
}

uint64_t sub_189147FF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v68 = a1;
  v4 = *(a1 + 16);
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v54 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v63 = v54 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v60 = v54 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_18A4A7D38();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v54 - v20;
  v22 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v57 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v64 = v54 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v69 = v54 - v29;
  v65 = v14;
  v66 = v3;
  v30 = *(v14 + 16);
  v30(v21, v3, v13, v28);
  v31 = *(v22 + 48);
  if (v31(v21, 1, TupleTypeMetadata2) == 1)
  {
    v18 = v21;
LABEL_5:
    (*(v65 + 8))(v18, v13);
    v32 = 1;
    v33 = v67;
    v34 = v70;
    return (*(v34 + 56))(v33, v32, 1, v4);
  }

  v62 = v4;
  v56 = *(v22 + 32);
  v56(v69, v21, TupleTypeMetadata2);
  (v30)(v18, v66 + *(v68 + 36), v13);
  if (v31(v18, 1, TupleTypeMetadata2) == 1)
  {
    (*(v22 + 8))(v69, TupleTypeMetadata2);
    v4 = v62;
    goto LABEL_5;
  }

  v55 = v22;
  v54[1] = v22 + 32;
  v56(v64, v18, TupleTypeMetadata2);
  v35 = *(v68 + 24);
  v36 = v60;
  v37 = v62;
  v54[0] = *(v35 + 8);
  sub_18A4A83D8();
  v38 = v36;
  v54[2] = v35;
  sub_18A4A4E98();
  (*(v70 + 16))(v63, v36, v37);
  v39 = v59;
  (v30)(v59, v66 + *(v68 + 40), v13);
  if (v31(v39, 1, TupleTypeMetadata2) == 1)
  {
    v34 = v70;
    v40 = v62;
    (*(v70 + 8))(v38, v62);
    v41 = *(v55 + 8);
    v41(v64, TupleTypeMetadata2);
    v41(v69, TupleTypeMetadata2);
    (*(v65 + 8))(v39, v13);
    v42 = *(v34 + 32);
    v43 = v63;
  }

  else
  {
    v44 = v57;
    v56(v57, v39, TupleTypeMetadata2);
    v45 = v58;
    v46 = v38;
    v47 = v62;
    sub_18A4A83D8();
    sub_18A4A4E98();
    v48 = v63;
    sub_189178604(v47, v61);
    v34 = v70;
    v49 = *(v70 + 8);
    v49(v45, v47);
    v50 = *(v55 + 8);
    v50(v44, TupleTypeMetadata2);
    v49(v48, v47);
    v51 = v46;
    v40 = v47;
    v49(v51, v47);
    v50(v64, TupleTypeMetadata2);
    v50(v69, TupleTypeMetadata2);
    v42 = *(v34 + 32);
    v42(v48, v61, v47);
    v43 = v48;
  }

  v52 = v67;
  v42(v67, v43, v40);
  v33 = v52;
  v32 = 0;
  v4 = v40;
  return (*(v34 + 56))(v33, v32, 1, v4);
}

unint64_t sub_1891486F4()
{
  result = qword_1EA93E180;
  if (!qword_1EA93E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E180);
  }

  return result;
}

unint64_t sub_18914874C()
{
  result = qword_1EA93E188[0];
  if (!qword_1EA93E188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA93E188);
  }

  return result;
}

uint64_t sub_1891487A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 56);
  v7(a3, 1, 1, TupleTypeMetadata2);
  v9 = type metadata accessor for VelocitySampler(0, a1, a2, v8);
  v7(a3 + v9[9], 1, 1, TupleTypeMetadata2);
  result = (v7)(a3 + v9[10], 1, 1, TupleTypeMetadata2);
  v11 = a3 + v9[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a3 + v9[12]) = 0x3FE8000000000000;
  return result;
}

uint64_t sub_1891488BC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for VelocityState(0, *(a2 + 16), *(a2 + 24), a5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - v8, a1, v6, v7);
  swift_getWitnessTable();
  return sub_18A4A49E8();
}

uint64_t sub_1891489C0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VelocityState(0, a4, a5, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25[-v11];
  sub_18A4A4DA8();
  v13 = sub_18A4A4D78();
  v14 = sub_18A4A49C8();
  sub_1891473A8(v14, v18, v15, v16, v17);
  v20 = type metadata accessor for VelocitySampler(0, a4, a5, v19);
  sub_189147424(a1, v20, a2);
  sub_1891488BC(v12, v14, v23, v21, v22);
  (*(v10 + 8))(v12, v9);
  v13(v25, 0);
  return 1;
}

void sub_189148B78(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  sub_18A4A7D38();
  if (v1 <= 0x3F)
  {
    sub_189148F78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_189148C28(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!v5)
  {
    v7 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v7;
  v9 = *(v4 + 80) & 0xF8 | 7;
  v10 = ((v8 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v19 = (*(v4 + 48))(a1);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v6 + (v12 | v17) + 1;
}

void sub_189148D94(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 9;
  if (v7)
  {
    v12 = v11;
  }

  v8 = *(v6 + 80);
  v13 = ((v12 + ((v12 + (v8 & 0xF8 | 7) + ((v12 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7))) & ~(v8 & 0xF8 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v14 = a3 - v9;
    if (((v12 + ((v12 + (v8 & 0xF8 | 7) + ((v12 + (v8 & 0xF8 | 7)) & ~(v8 & 0xF8 | 7))) & ~(v8 & 0xF8 | 7)) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v9;
    }

    if (v13)
    {
      v18 = ~v9 + a2;
      v19 = a1;
      bzero(a1, v13);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v13) = 0;
  }

  else if (v5)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v7 >= 2)
  {
    v20 = a2 - v7;
    if (a2 >= v7)
    {
      if (v11)
      {
        v22 = a1;
        bzero(a1, v11);
        *v22 = v20;
      }
    }

    else
    {
      v21 = *(v6 + 56);

      v21();
    }
  }
}

void sub_189148F78()
{
  if (!qword_1EA93E210[0])
  {
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, qword_1EA93E210);
    }
  }
}

uint64_t sub_189148FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for VelocitySampler(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1891490F0()
{
  v1 = type metadata accessor for _UILightEffectTransitionView();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t sub_189149124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E2D0, &unk_18A64FF40);
  v1 = sub_18A4A7308();
  v3 = v2;
  result = sub_18A4A82E8();
  if (!v5)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  if (*(*(v0 + v8) + 16))
  {
    sub_188DCCD6C(v1, v3, v6, v7);
    v10 = v9;

    if (v10)
    {
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E2D8, &qword_18A66A230);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_beginAccess();
        return *(v12 + 16);
      }

      return 2;
    }
  }

  else
  {
  }

  swift_endAccess();
  return 2;
}

uint64_t sub_18914926C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E2F0, &qword_18A64FF98);
  v1 = sub_18A4A7308();
  v3 = v2;
  result = sub_18A4A82E8();
  if (!v5)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
  swift_beginAccess();
  if (*(*(v0 + v8) + 16))
  {
    sub_188DCCD6C(v1, v3, v6, v7);
    v10 = v9;

    if (v10)
    {
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E2F8, &unk_18A66A250);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_beginAccess();
        return *(v12 + 16);
      }

      return 2;
    }
  }

  else
  {
  }

  swift_endAccess();
  return 2;
}

void sub_1891493B4(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E2E0, &qword_18A66A238);
  v3 = sub_18A4A7308();
  v5 = v4;
  v6 = sub_18A4A82E8();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads;
    swift_beginAccess();
    if (*(*(v1 + v10) + 16))
    {
      sub_188DCCD6C(v3, v5, v8, v9);
      v12 = v11;

      if (v12)
      {
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E2E8, &unk_18A66A240);
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = v13;
          swift_beginAccess();
          v15 = *(v14 + 16);
LABEL_9:
          *a1 = v15;
          return;
        }

LABEL_8:
        v15 = 2;
        goto LABEL_9;
      }
    }

    else
    {
    }

    swift_endAccess();
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_189149528@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A53994(a1, v5);
  v3 = swift_allocObject();
  sub_188A5EBAC(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = sub_189149824;
  *(result + 24) = v3;
  *a2 = sub_188EBB1D8;
  a2[1] = result;
  return result;
}

void UISceneConnectionOptions.intelligenceLightConfiguration.getter(char *a1@<X8>)
{
  v3 = [(_UISceneHostingController *)v1 _fbScene];
  if (v3)
  {
    v4 = v3;
    sub_1891493B4(a1);
  }

  else
  {
    *a1 = 2;
  }
}

uint64_t sub_189149674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A53994(a1, v5);
  v3 = swift_allocObject();
  sub_188A5EBAC(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = sub_189149A2C;
  *(result + 24) = v3;
  *a2 = sub_189149AA4;
  a2[1] = result;
  return result;
}

double sub_189149704(uint64_t *a1, void *a2, unsigned __int8 *a3)
{
  v5 = *a1;

  sub_189149890(a2, a3, v5);

  return result;
}

unint64_t sub_189149778()
{
  result = qword_1EA93E300;
  if (!qword_1EA93E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E300);
  }

  return result;
}

unint64_t sub_1891497D0()
{
  result = qword_1EA93E308;
  if (!qword_1EA93E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E308);
  }

  return result;
}

uint64_t sub_189149824(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

void sub_189149890(void *a1, unsigned __int8 *a2, void (*a3)(void *, __int128 *))
{
  v5 = *a2;
  if ([a1 delegate] && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E318, &qword_18A66A2E0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E320, &qword_18A66A2E8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v9 + 1))
    {
      sub_188A5EBAC(&v8, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_0(v11, v12);
      (*(v7 + 8))(a1, v5, v6, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      return;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_1891499C4(&v8);
  LOBYTE(v8) = v5;
  v11[0] = a1;
  a3(v11, &v8);
}

uint64_t sub_1891499C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E310, &unk_18A66A2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189149A2C(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v5);
  v8 = v4;
  return (*(v6 + 8))(a1, &v8, v5, v6);
}

uint64_t sub_189149AD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v47 = MEMORY[0x1E69E7CC0];
  sub_188CCE410(0, v6, 0);
  result = v47;
  v8 = &type_layout_string_5UIKit24NavigationBarContentViewC7MarginsV;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = a1 + 32;
    v12 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    v13 = a2 + 32;
    v14 = a2;
    v15 = a1;
    while (v9 != v4)
    {
      if (v9 >= v4)
      {
        goto LABEL_48;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_49;
      }

      if (v10 == v5)
      {
        break;
      }

      if (v10 >= v5)
      {
        goto LABEL_50;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_51;
      }

      v22 = (v11 + 32 * v9);
      v23 = *v22;
      v25 = v22[1].f64[0];
      v24 = v22[1].f64[1];
      v26 = (v13 + 32 * v10);
      ++v9;
      ++v10;
      v16 = vdivq_f64(vabdq_f64(v23, *v26), v12);
      v17 = vabdd_f64(v25, v26[1].f64[0]) / 0.01;
      v18 = vabdd_f64(v24, v26[1].f64[1]) / 0.01;
      if (v16.f64[0] <= v16.f64[1])
      {
        v16.f64[0] = v16.f64[1];
      }

      if (v16.f64[0] <= v17)
      {
        v16.f64[0] = v17;
      }

      if (v16.f64[0] > v18)
      {
        v19 = v16.f64[0];
      }

      else
      {
        v19 = v18;
      }

      v48 = result;
      v21 = *(result + 16);
      v20 = *(result + 24);
      if (v21 >= v20 >> 1)
      {
        v45 = v14;
        v41 = v11;
        v43 = v15;
        v40 = v12;
        v39 = v13;
        sub_188CCE410((v20 > 1), v21 + 1, 1);
        v13 = v39;
        v12 = v40;
        v11 = v41;
        v15 = v43;
        v8 = &type_layout_string_5UIKit24NavigationBarContentViewC7MarginsV;
        v14 = v45;
        result = v48;
      }

      *(result + 16) = v21 + 1;
      *(result + 8 * v21 + 32) = v19;
      if (!--v6)
      {
        goto LABEL_26;
      }
    }

LABEL_52:
    __break(1u);
    return result;
  }

  v10 = 0;
  v9 = 0;
  v14 = a2;
  v15 = a1;
LABEL_26:
  if (v9 != v4)
  {
    v27 = 0;
    v28 = v15 + 32 * v9;
    v29 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    v30 = v8[359];
    v31 = v14 + 32 * v10;
    while (v9 < v4)
    {
      v32 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_45;
      }

      if (v5 == v10)
      {
        return result;
      }

      if (v10 >= v5)
      {
        goto LABEL_46;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_47;
      }

      v33 = vdivq_f64(vabdq_f64(*(v28 + v27 + 32), *(v31 + v27 + 32)), v29);
      v34 = vabdd_f64(*(v28 + v27 + 48), *(v31 + v27 + 48)) / v30;
      v35 = vabdd_f64(*(v28 + v27 + 56), *(v31 + v27 + 56)) / v30;
      if (v33.f64[0] <= v33.f64[1])
      {
        v33.f64[0] = v33.f64[1];
      }

      if (v33.f64[0] <= v34)
      {
        v33.f64[0] = v34;
      }

      if (v33.f64[0] > v35)
      {
        v36 = v33.f64[0];
      }

      else
      {
        v36 = v35;
      }

      v49 = result;
      v38 = *(result + 16);
      v37 = *(result + 24);
      if (v38 >= v37 >> 1)
      {
        v46 = v28;
        v44 = v29;
        v42 = v31;
        sub_188CCE410((v37 > 1), v38 + 1, 1);
        v31 = v42;
        v29 = v44;
        v28 = v46;
        result = v49;
      }

      *(result + 16) = v38 + 1;
      *(result + 8 * v38 + 32) = v36;
      ++v9;
      v27 += 32;
      ++v10;
      if (v32 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  return result;
}

uint64_t sub_189149E24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1890154CC(v2, v3);
    }

    return 0;
  }

  return !v3;
}

void sub_189149E4C(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    if (a1)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 16);
      if (v3 == v4)
      {

        v6 = sub_188EF6EEC(v2, a1);
      }

      else
      {
        if (v4 < v3)
        {
          return;
        }

        v6 = a1;
      }
    }

    else
    {

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
}

BOOL sub_189149EF0(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    if (a1)
    {
      v3 = *(a2 + 16);
      if (v3 == *(a1 + 16))
      {
        v4 = v3 + 1;
        v5 = (a2 + 56);
        v6 = (a1 + 56);
        do
        {
          result = --v4 == 0;
          if (!v4 || vabdd_f64(*(v5 - 3), *(v6 - 3)) > a3)
          {
            break;
          }

          v9 = *(v5 - 1);
          v8 = *v5;
          v10 = *(v5 - 2);
          v5 += 4;
          v12 = *(v6 - 1);
          v11 = *v6;
          v13 = *(v6 - 2);
          v6 += 4;
          v14 = vabdd_f64(v9, v12);
          v15 = vabdd_f64(v10, v13) > a3 || v14 > a3;
          v16 = vabdd_f64(v8, v11);
        }

        while (!v15 && v16 <= a3);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v23 = *(a2 + 16);
      v24 = (a2 + 32);
      v25 = vdupq_lane_s64(*&a3, 0);
      do
      {
        result = v23 == 0;
        if (!v23)
        {
          break;
        }

        v27 = *v24;
        v26 = v24[1];
        v24 += 2;
        --v23;
      }

      while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v25, vabsq_f64(v27)), vcgeq_f64(v25, vabsq_f64(v26)))))) & 1) == 0);
    }
  }

  else if (a1)
  {
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = vdupq_lane_s64(*&a3, 0);
    do
    {
      result = v18 == 0;
      if (!v18)
      {
        break;
      }

      v22 = *v19;
      v21 = v19[1];
      v19 += 2;
      --v18;
    }

    while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v20, vabsq_f64(v22)), vcgeq_f64(v20, vabsq_f64(v21)))))) & 1) == 0);
  }

  else
  {
    return 1;
  }

  return result;
}

double sub_18914A018(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = 0.0;
    if (!a1)
    {
      return v6;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_188CCE410(0, v7, 0);
      v9 = v38;
      v10 = *(v38 + 16);
      v11 = (a1 + 56);
      v12 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      do
      {
        v13 = vdivq_f64(vabsq_f64(*(v11 - 3)), v12);
        v14 = fabs(*(v11 - 1)) / 0.01;
        v15 = fabs(*v11) / 0.01;
        if (v13.f64[0] <= v13.f64[1])
        {
          v13.f64[0] = v13.f64[1];
        }

        if (v13.f64[0] > v14)
        {
          v14 = v13.f64[0];
        }

        if (v14 > v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        v39 = v9;
        v17 = *(v9 + 24);
        v18 = v10 + 1;
        if (v10 >= v17 >> 1)
        {
          v36 = v12;
          sub_188CCE410((v17 > 1), v10 + 1, 1);
          v12 = v36;
          v9 = v39;
        }

        *(v9 + 16) = v18;
        *(v9 + 8 * v10 + 32) = v16;
        v11 += 4;
        ++v10;
        --v7;
      }

      while (v7);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      v18 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v18)
      {
LABEL_48:

        return v6;
      }
    }

    v6 = *(v9 + 32);
    v31 = v18 - 1;
    if (v18 != 1)
    {
      v32 = 40;
      do
      {
        if (v6 < *(v9 + v32))
        {
          v6 = *(v9 + v32);
        }

        v32 += 8;
        --v31;
      }

      while (v31);
    }

    goto LABEL_48;
  }

  if (!a1)
  {
    v19 = *(a2 + 16);
    if (v19)
    {
      v40 = MEMORY[0x1E69E7CC0];
      sub_188CCE410(0, v19, 0);
      v21 = v40;
      v22 = *(v40 + 16);
      v23 = (a2 + 56);
      v24 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      do
      {
        v25 = vdivq_f64(vabsq_f64(*(v23 - 3)), v24);
        v26 = fabs(*(v23 - 1)) / 0.01;
        v27 = fabs(*v23) / 0.01;
        if (v25.f64[0] <= v25.f64[1])
        {
          v25.f64[0] = v25.f64[1];
        }

        if (v25.f64[0] > v26)
        {
          v26 = v25.f64[0];
        }

        if (v26 > v27)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        v41 = v21;
        v29 = *(v21 + 24);
        v30 = v22 + 1;
        if (v22 >= v29 >> 1)
        {
          v37 = v24;
          sub_188CCE410((v29 > 1), v22 + 1, 1);
          v24 = v37;
          v21 = v41;
        }

        *(v21 + 16) = v30;
        *(v21 + 8 * v22 + 32) = v28;
        v23 += 4;
        ++v22;
        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
      v30 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v30)
      {

        return 0.0;
      }
    }

    v6 = *(v21 + 32);
    v33 = v30 - 1;
    if (v30 != 1)
    {
      v34 = 40;
      do
      {
        if (v6 < *(v21 + v34))
        {
          v6 = *(v21 + v34);
        }

        v34 += 8;
        --v33;
      }

      while (v33);
    }

    goto LABEL_48;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    return INFINITY;
  }

  v2 = sub_189149AD0(a2, a1);
  v3 = COERCE_DOUBLE(sub_188F7BBAC(v2));
  v5 = v4;

  if (v5)
  {
    return 0.0;
  }

  else
  {
    return v3;
  }
}

BOOL sub_18914A350(uint64_t *a1)
{
  v2 = *a1;
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3 || *(*v1 + 16) == *(v2 + 16);
}

uint64_t sub_18914A39C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188CCF580(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18914A3C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_1890154CC(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_18914A40C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18914A510(*a1, *a2);
  *a3 = result;
  return result;
}

char *sub_18914A444(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_188CCF904(result, v5, 0);
  }

  return result;
}

uint64_t sub_18914A4BC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v1 = result;
    result = sub_18A4A75D8();
    *(result + 16) = v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_18914A510(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    if (!a2)
    {
      return v2;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    if (v4 < v3)
    {
    }

LABEL_9:

    return v2;
  }

  v6 = sub_188EF6C40(v5, v2);

  return v6;
}

uint64_t UIAnimatedTransitionProperty.init(value:animationMode:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(0, a3, a4, a5);
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for UIAnimatedTransitionProperty(0, a3, a4, a5);
  v16 = a6 + *(result + 44);
  *v16 = v11;
  *(v16 + 8) = v12;
  *(v16 + 16) = v13;
  return result;
}

BOOL static UIAnimatedTransitionProperty.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((static UIAnimatedTransitionProperty.ValueModification.== infix(_:_:)(a1, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for UIAnimatedTransitionProperty(0, a3, a4, a5) + 44);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = a2 + v10;
  v15 = *(a2 + v10);
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (v13)
  {
    if (v13 != 1)
    {
      return v17 == 2 && (*&v16 | *&v15) == 0;
    }

    v18 = v17 == 1;
  }

  else
  {
    v18 = v17 == 0;
  }

  return v18 && v11 == v15 && v12 == v16;
}

UIKit::SpringBehavior __swiftcall SpringBehavior.init()()
{
  v1 = 1.0;
  *v0 = xmmword_18A655850;
  result.dampingRatio = v1;
  return result;
}

uint64_t static UIAnimatedTransitionProperty.ValueModification.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a2;
  v44 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v43 = v7;
  v41 = v8;
  v10 = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(0, v7, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v39 - v20;
  v23 = *(v22 + 48);
  v42 = v11;
  v24 = *(v11 + 16);
  v24(&v39 - v20, v45, v10, v19);
  (v24)(&v21[v23], v46, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (v24)(v16, v21, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = v44;
      v33 = &v21[v23];
      v34 = v6;
      v35 = v6;
      v36 = v43;
      (*(v44 + 32))(v35, v33, v43);
      v30 = sub_18A4A7248();
      v37 = *(v32 + 8);
      v37(v34, v36);
      v37(v16, v36);
      goto LABEL_12;
    }

    v13 = v16;
LABEL_7:
    (*(v44 + 8))(v13, v43);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (v24)(v13, v21, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v43;
      v27 = v44;
      v28 = &v21[v23];
      v29 = v40;
      (*(v44 + 32))(v40, v28, v43);
      v30 = sub_18A4A7248();
      v31 = *(v27 + 8);
      v31(v29, v26);
      v31(v13, v26);
LABEL_12:
      v18 = v42;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v30 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v30 = 0;
  v10 = TupleTypeMetadata2;
LABEL_13:
  (*(v18 + 8))(v21, v10);
  return v30 & 1;
}

uint64_t static UIAnimatedTransitionProperty.fromCurrent(animationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-1] - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  swift_storeEnumTagMultiPayload();
  v17[0] = v13;
  v17[1] = v14;
  v18 = a1;
  return UIAnimatedTransitionProperty.init(value:animationMode:)(v12, v17, a2, a3, a4, a5);
}

uint64_t sub_18914AD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v19 = a7;
  v12 = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(0, a3, a4, a5);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-1] - v14;
  v17 = *a2;
  v16 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(*(a3 - 8) + 16))(&v20[-1] - v14, a1, a3, v13);
  swift_storeEnumTagMultiPayload();
  v20[0] = v17;
  v20[1] = v16;
  v21 = a2;
  return UIAnimatedTransitionProperty.init(value:animationMode:)(v15, v20, a3, a4, a5, v19);
}

uint64_t UIAnimatedTransitionProperty.add(_:animationMode:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v32 = a1;
  v33 = a3;
  v7 = a3[2];
  v6 = a3[3];
  v29 = a3[4];
  v8 = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(0, v7, v6, v29);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-v10];
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27[-v18];
  v20 = *a2;
  v30 = a2[1];
  v31 = v20;
  v21 = *(a2 + 16);
  (*(v9 + 16))(v11, v3, v8, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v28 = v21;
  v22 = v3;
  v23 = *(v12 + 32);
  v23(v19, v11, v7);
  (*(v29 + 8))(v32, v7);
  (*(v12 + 8))(v19, v7);
  (*(v9 + 8))(v22, v8);
  v23(v22, v15, v7);
  result = swift_storeEnumTagMultiPayload();
  v25 = &v22[*(v33 + 11)];
  v26 = v30;
  *v25 = v31;
  *(v25 + 1) = v26;
  v25[16] = v28;
  return result;
}

uint64_t UIAnimatedTransitionProperty.concatenating(_:animationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a1;
  v36 = a4;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30[-v12];
  v15 = *(v14 + 32);
  v35 = *(v14 + 24);
  v16 = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(0, v7, v35, v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30[-v21];
  v23 = *(a2 + 8);
  v33 = *a2;
  v34 = v23;
  v24 = *(a2 + 16);
  (*(v25 + 16))(&v30[-v21], v5, v16, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = v24;
    v28 = *(v8 + 32);
    v28(v13, v22, v7);
    (*(v15 + 8))(v32, v7, v15);
    (*(v8 + 8))(v13, v7);
    v28(v18, v10, v7);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v31 = v24;
    v27 = *(v8 + 32);
    v27(v13, v22, v7);
    (*(v15 + 8))(v32, v7, v15);
    (*(v8 + 8))(v13, v7);
    v27(v18, v10, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v37 = v33;
    v38 = v34;
    v39 = v31;
    return UIAnimatedTransitionProperty.init(value:animationMode:)(v18, &v37, v7, v35, v15, v36);
  }

  v37 = v33;
  v38 = v34;
  v39 = v24;
  return static UIAnimatedTransitionProperty.fromCurrent(animationMode:)(&v37, v7, v35, v15, v36);
}

BOOL _s5UIKit13AnimationModeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  return v4 == 2 && (*&v3 | *&v2) == 0;
}

uint64_t sub_18914B46C(uint64_t *a1)
{
  result = type metadata accessor for UIAnimatedTransitionProperty.ValueModification(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18914B4E8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v4 <= 3)
  {
    v5 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    v12 = a1[v3];
    if (v12 >= 3)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_25;
  }

LABEL_21:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 254;
}

void sub_18914B5C0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (a3 < 0xFE)
  {
    v9 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v5] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = a2 - 254;
  v11 = (a2 - 254) >> 8;
  bzero(a1, (v5 & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_19:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_19;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_18914B6F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18914B75C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_18914B868(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_18914BA24(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

void *sub_18914BA4C@<X0>(void *a1@<X8>)
{
  sub_188B7BF24(v10);
  v14[4] = v12;
  v15[0] = v13[0];
  *(v15 + 9) = *(v13 + 9);
  v14[0] = *&v10[8];
  v14[1] = *v11;
  v14[2] = *&v11[16];
  v14[3] = *&v11[32];
  sub_188B7FF64(v14);
  __src[0] = *v10;
  *&__src[1] = sub_18914BB98;
  *(&__src[1] + 1) = 0;
  __src[2] = *&v11[8];
  __src[3] = *&v11[24];
  __asm { FMOV            V0.2D, #10.0 }

  v8 = _Q0;
  *(&__src[4] + 8) = _Q0;
  *(&__src[5] + 8) = v13[0];
  *&__src[4] = *&v11[40];
  *(&__src[6] + 1) = 0;
  memcpy(&__src[7], &v13[1] + 8, 0x108uLL);
  v17 = *v10;
  v18 = sub_18914BB98;
  v19 = 0;
  v20 = *&v11[8];
  v21 = *&v11[24];
  v23 = v8;
  v24 = v13[0];
  v22 = *&v11[40];
  v25 = 0;
  memcpy(v26, &v13[1] + 8, sizeof(v26));
  sub_188B7E138(__src, v9);
  sub_188B82BE8(&v17);
  return memcpy(a1, __src, 0x178uLL);
}

double sub_18914BB98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0x4040000000000000;
  if (a1 > 3)
  {
    v2 = 0x4038000000000000;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  result = 4.0;
  *(a2 + 16) = xmmword_18A66A5E0;
  *(a2 + 32) = xmmword_18A66A5E0;
  *(a2 + 48) = 0;
  return result;
}

id sub_18914BC4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _UITabBarVisualProvider_FloatingPad();
  v6.receiver = v2;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc, v3);
}

uint64_t sub_18914BCA4(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 16) >= 6uLL)
  {
    v5 = sub_18914C7B0(*v2);

    *v2 = v5;
  }

  v8[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9352B0, &unk_18A66A800);
  v6 = sub_18A4A8778();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();
  v8[1] = a2;
  swift_unknownObjectWeakAssign();
  return sub_188F28630(v8, v6);
}

void *sub_18914BDC0()
{
  sub_18914E0F0(v0, v11);
  if (v11[16])
  {
    sub_188A3F704(v11, v9, &qword_1EA93E448, &qword_18A66A7E0);
    if (swift_weakLoadStrong())
    {
      sub_188FAACAC();
      v2 = v1;
    }

    else
    {
      v2 = sub_18914E128(MEMORY[0x1E69E7CC0]);
    }

    sub_188A3F5FC(v9, &qword_1EA93E448, &qword_18A66A7E0);
  }

  else
  {
    sub_188E8FC60(v11, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E458, &qword_18A66A7F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFB0;
      *(inited + 32) = v4;
      v7 = inited + 32;
      *(inited + 40) = v5;
      v2 = sub_18914E128(inited);
      swift_setDeallocating();
      sub_188A3F5FC(v7, &qword_1EA93E460, &qword_18A66A7F8);
    }

    else
    {
      v2 = sub_18914E128(MEMORY[0x1E69E7CC0]);
    }

    sub_188F8EAB4(v9);
  }

  return v2;
}

uint64_t sub_18914BF0C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_188AFA784();
  sub_18A4A2C08();

  swift_beginAccess();
  return sub_188A3F29C(v1 + 16, a1, &qword_1EA93CB20, &qword_18A666410);
}

uint64_t sub_18914BFAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AFA784();
  sub_18A4A2C08();

  swift_beginAccess();
  return sub_188A3F29C(v3 + 16, a2, &qword_1EA93CB20, &qword_18A666410);
}

uint64_t sub_18914C098()
{
  swift_getKeyPath();
  sub_188AFA784();
  sub_18A4A2C08();

  v1 = *(v0 + 48);

  return v1;
}

double sub_18914C118@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AFA784();
  sub_18A4A2C08();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;

  return result;
}

double sub_18914C194(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188AFA784();
    sub_18A4A2BF8();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

uint64_t sub_18914C2E4@<X0>(_BYTE *a1@<X8>)
{
  sub_18914E0F0(v1, v8 + 1);
  if (v9)
  {
    sub_188A3F704(v8 + 1, v7, &qword_1EA93E448, &qword_18A66A7E0);
    if (swift_weakLoadStrong())
    {
      sub_188FAAF08(*(v1 + 24), v8);

      v3 = v8[0];
    }

    else
    {
      v3 = 0;
    }

    result = sub_188A3F5FC(v7, &qword_1EA93E448, &qword_18A66A7E0);
  }

  else
  {
    sub_188E8FC60(v8 + 1, v7);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v7[1];
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(v8, *(v1 + 24), ObjectType, v4);
      swift_unknownObjectRelease();
      v3 = v8[0];
    }

    else
    {
      v3 = 0;
    }

    result = sub_188F8EAB4(v7);
  }

  *a1 = v3;
  return result;
}

uint64_t sub_18914C400()
{
  sub_18914E0F0(v0, v7);
  if (v7[16])
  {
    sub_188A3F704(v7, v5, &qword_1EA93E448, &qword_18A66A7E0);
    if (swift_weakLoadStrong())
    {
      v1 = sub_188FAB024(*(v0 + 24));
    }

    else
    {
      v1 = 0;
    }

    sub_188A3F5FC(v5, &qword_1EA93E448, &qword_18A66A7E0);
  }

  else
  {
    sub_188E8FC60(v7, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = v6;
      ObjectType = swift_getObjectType();
      v1 = (*(v2 + 48))(*(v0 + 24), ObjectType, v2);
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0;
    }

    sub_188F8EAB4(v5);
  }

  return v1 & 1;
}

uint64_t sub_18914C554(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_188B85570(1);
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 56) + 8 * v2);
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  v6 = sub_188B85570(2);
  if (v7)
  {
    if ((v4 & (v5 == *(*(a1 + 56) + 8 * v6))) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  if (!v10)
  {
    v15 = 0;
    v16 = 0;
    v14 = (v8 + 63) >> 6;
    while (v14 - 1 != v16)
    {
      v11 = v16 + 1;
      v17 = *(a1 + 72 + 8 * v16);
      v15 -= 64;
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v12 = __clz(__rbit64(v17)) - v15;
        goto LABEL_18;
      }
    }

    return 0;
  }

  v11 = 0;
  v12 = __clz(__rbit64(v10));
  v13 = (v10 - 1) & v10;
  v14 = (v8 + 63) >> 6;
LABEL_18:
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  result = *(v18 + 8 * v12);
  v21 = *(v19 + 8 * v12);
  if (!v13)
  {
    goto LABEL_20;
  }

  do
  {
    v22 = v11;
LABEL_24:
    v23 = (v22 << 9) | (8 * __clz(__rbit64(v13)));
    v24 = *(v18 + v23);
    v13 &= v13 - 1;
    v25 = *(v19 + v23);
    if (v21 < v25)
    {
      result = v24;
    }

    if (v21 <= v25)
    {
      v21 = v25;
    }
  }

  while (v13);
LABEL_20:
  while (1)
  {
    v22 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v22 >= v14)
    {
      return result;
    }

    v13 = *(a1 + 64 + 8 * v22);
    ++v11;
    if (v13)
    {
      v11 = v22;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

BOOL UITraitCollection._hasScrollPocketContainerModel.getter()
{
  v0 = sub_188A84438();
  if (v0)
  {
  }

  return v0 != 0;
}

unint64_t *sub_18914C7B0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_18914C910(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_18914CA58(v8, v4, v2);
  result = MEMORY[0x18CFEA5B0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_18914C910(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    sub_188F8EA58(*(a3 + 56) + 16 * v16, v18);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      result = sub_188F8EAB4(v18);
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_18914CD34(v5, a2, v6, a3);
      }
    }

    else
    {
      result = sub_188F8EAB4(v18);
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_18914CD34(v5, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_18914CA58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_18914C910(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_18914CAF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E08, &qword_18A64E860);
  result = sub_18A4A8488();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_188C46270(*(v4 + 56) + 40 * v16, v32);
    v29 = v32[0];
    v30 = v32[1];
    v31 = v33;
    v18 = v17;
    result = sub_18A4A7C78();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    v27 = *(v9 + 56) + 40 * v22;
    *v27 = v29;
    *(v27 + 16) = v30;
    *(v27 + 32) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_18914CD34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B30, &qword_18A64E740);
  result = sub_18A4A8488();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_188F8EA58(*(v4 + 56) + 16 * v16, v28);
    sub_188E8FC60(v28, v27);
    result = sub_18A4A8878();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    result = sub_188E8FC60(v27, *(v9 + 56) + 16 * v21);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_18914CF78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v8 = a4;
  v9 = a3;
  if (*(a4 + 16) == a3)
  {

    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_18A4A8488();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v32 = v8;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = 8 * (v17 | (v15 << 6));
    v21 = *(*(v8 + 48) + v20);
    sub_188A3F29C(*(v8 + 56) + v20, v36, a7, a8);
    sub_188A3F704(v36, v35, a7, a8);
    result = sub_18A4A8878();
    v22 = -1 << *(v13 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = 8 * v25;
    *(*(v13 + 48) + v30) = v21;
    result = sub_188A3F704(v35, *(v13 + 56) + v30, a7, a8);
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    v8 = v32;
    if (!v9)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

uint64_t sub_18914D1BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D40, &unk_18A64E930);
  result = sub_18A4A8488();
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
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 16 * v16;
    v18 = *(v17 + 8);
    v35 = *v17;
    v36 = *(*(v4 + 56) + 8 * v16);
    sub_18A4A8888();
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }

      MEMORY[0x18CFE37E0](v19);
      v22 = v36;
      v23 = v35;
      sub_18A4A7C98();
    }

    else
    {
      MEMORY[0x18CFE37E0](v18 != 0);
      sub_18A4A7288();
      v20 = v36;
      v21 = v35;
      sub_18A4A7348();

      v4 = v34;
    }

    result = sub_18A4A88E8();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v9 + 48) + 16 * v27;
    *v32 = v35;
    *(v32 + 8) = v18;
    *(*(v9 + 56) + 8 * v27) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_38;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_18914D478(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E80, &unk_18A657120);
      v7 = sub_18A4A8488();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v30 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v31 = (v9 - 1) & v9;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(*(v4 + 48) + 8 * v15);
        v17 = *(*(v4 + 56) + 8 * v15);
        sub_18A4A7288();
        sub_18A4A8888();
        v18 = v16;

        sub_18A4A7348();
        v19 = sub_18A4A88E8();

        v20 = -1 << *(v8 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v11 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v8 + 48) + 8 * v23) = v18;
        *(*(v8 + 56) + 8 * v23) = v17;
        ++*(v8 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v30;
        v9 = v31;
        if (!v5)
        {
          return;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v31 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_18914D6E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B420, &unk_18A64E940);
  result = sub_18A4A8488();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = v18;
    v31 = v19;
    result = sub_18A4A7C78();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v4 = v17;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v30;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
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

uint64_t sub_18914D93C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_18A4A8488();
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  v32 = a1;
  v33 = v6;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v34 = (v11 - 1) & v11;
LABEL_16:
    v17 = v14 | (v12 << 6);
    v18 = *(*(v6 + 48) + 8 * v17);
    v19 = *(*(v6 + 56) + 8 * v17);
    v20 = result;
    sub_18A4A7288();
    sub_18A4A8888();
    v35 = v18;
    v21 = v19;
    sub_18A4A7348();
    v22 = sub_18A4A88E8();

    result = v20;
    v23 = -1 << *(v20 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v20 + 48) + 8 * v26) = v35;
    *(*(v20 + 56) + 8 * v26) = v21;
    ++*(v20 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    a1 = v32;
    v6 = v33;
    v11 = v34;
    if (!v7)
    {
      return result;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return result;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v34 = (v16 - 1) & v16;
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

BOOL sub_18914DB9C(uint64_t a1, uint64_t a2)
{
  sub_18914E0F0(a1, v10);
  sub_18914E0F0(a2, v11);
  if (v10[16])
  {
    sub_18914E0F0(v10, v9);
    if (v12 == 1)
    {
      sub_188A3F704(v9, v8, &qword_1EA93E448, &qword_18A66A7E0);
      sub_188A3F704(v11, v7, &qword_1EA93E448, &qword_18A66A7E0);
      Strong = swift_weakLoadStrong();
      v4 = swift_weakLoadStrong();
      sub_188A3F5FC(v7, &qword_1EA93E448, &qword_18A66A7E0);
      sub_188A3F5FC(v8, &qword_1EA93E448, &qword_18A66A7E0);
      if (Strong)
      {
        if (v4)
        {

LABEL_13:
          v5 = Strong == v4;
LABEL_21:
          sub_1890EA0D0(v10);
          return v5;
        }

        goto LABEL_15;
      }

      if (v4)
      {
LABEL_15:

LABEL_20:
        v5 = 0;
        goto LABEL_21;
      }

LABEL_17:
      v5 = 1;
      goto LABEL_21;
    }

    sub_188A3F5FC(v9, &qword_1EA93E448, &qword_18A66A7E0);
  }

  else
  {
    sub_18914E0F0(v10, v9);
    if ((v12 & 1) == 0)
    {
      sub_188E8FC60(v9, v8);
      sub_188E8FC60(v11, v7);
      Strong = swift_unknownObjectWeakLoadStrong();
      v4 = swift_unknownObjectWeakLoadStrong();
      sub_188F8EAB4(v7);
      sub_188F8EAB4(v8);
      if (Strong)
      {
        if (v4)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_13;
        }
      }

      else if (!v4)
      {
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    sub_188F8EAB4(v9);
  }

  sub_188A3F5FC(v10, &qword_1EA93E450, &qword_18A66A7E8);
  return 0;
}

uint64_t sub_18914DD94(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_188AFA784();
  sub_18A4A2C08();

  swift_beginAccess();
  sub_188A3F29C(a1 + 16, v22, &qword_1EA93CB20, &qword_18A666410);
  swift_getKeyPath();
  v18[0] = a2;
  sub_18A4A2C08();

  swift_beginAccess();
  sub_188A3F29C(v22, v18, &qword_1EA93CB20, &qword_18A666410);
  sub_188A3F29C(a2 + 16, v20, &qword_1EA93CB20, &qword_18A666410);
  if (v19 == 0xFF)
  {
    sub_188A3F5FC(v22, &qword_1EA93CB20, &qword_18A666410);
    if (v21 == 0xFF)
    {
      sub_188A3F5FC(v18, &qword_1EA93CB20, &qword_18A666410);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_188A3F29C(v18, v16, &qword_1EA93CB20, &qword_18A666410);
  if (v21 == 0xFF)
  {
    sub_188A3F5FC(v22, &qword_1EA93CB20, &qword_18A666410);
    sub_188B04290(v16);
LABEL_11:
    v8 = &qword_1EA93E440;
    v9 = &qword_18A66A7B0;
LABEL_12:
    sub_188A3F5FC(v18, v8, v9);
LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  sub_188B02584(v20, v14);
  v11 = sub_18914DB9C(v16, v14);
  sub_188A3F5FC(v22, &qword_1EA93CB20, &qword_18A666410);
  if (!v11)
  {
    sub_188B04290(v14);
    sub_188B04290(v16);
    v8 = &qword_1EA93CB20;
    v9 = &qword_18A666410;
    goto LABEL_12;
  }

  v12 = v17;
  v13 = v15;
  sub_188B04290(v14);
  sub_188B04290(v16);
  sub_188A3F5FC(v18, &qword_1EA93CB20, &qword_18A666410);
  if (v12 != v13)
  {
    goto LABEL_13;
  }

LABEL_4:
  swift_getKeyPath();
  v18[0] = a1;
  sub_18A4A2C08();

  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  swift_getKeyPath();
  v18[0] = a2;

  sub_18A4A2C08();

  v6 = *(a2 + 56);
  v7 = v6 == 0;
  if (!v4)
  {
    return v7 & 1;
  }

  if (!v6)
  {

    goto LABEL_13;
  }

  if (v5 == *(a2 + 48) && v4 == v6)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_18A4A86C8();
  }

  return v7 & 1;
}

void *sub_18914E128(uint64_t a1)
{
  v2 = sub_188E8E96C(MEMORY[0x1E69E7CC0]);
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = &qword_1EA9352B0;
  while (2)
  {
    while (2)
    {
      v7 = (v5 + 16 * v3);
      v8 = v3;
      do
      {
        if (v4 == v8)
        {
          return v2;
        }

        if (v8 >= v4)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v3 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_21;
        }

        v10 = *v7;
        v7 += 2;
        v9 = v10;
        ++v8;
      }

      while (!v10);
      v11 = *(v7 - 1);
      v12 = v2[2];
      swift_unknownObjectRetain();
      if (v12 >= 6)
      {
        v13 = sub_18914C7B0(v2);

        v2 = v13;
      }

      v30 = v9;
      v31 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, &unk_18A66A800);
      v15 = sub_18A4A8778();
      swift_unknownObjectRelease();
      v31 = 0;
      swift_unknownObjectWeakInit();
      v31 = v11;
      swift_unknownObjectWeakAssign();
      sub_188E8FC60(&v30, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_188A403F4(v15);
      v19 = v2[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_22;
      }

      v23 = v18;
      if (v2[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = v17;
          sub_188FA2094();
          v17 = v27;
        }
      }

      else
      {
        sub_1890BC04C(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_188A403F4(v15);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_24;
        }
      }

      v6 = v14;
      if (v23)
      {
        sub_188EA2354(v29, v2[7] + 16 * v17);
        swift_unknownObjectRelease();
        continue;
      }

      break;
    }

    v2[(v17 >> 6) + 8] |= 1 << v17;
    *(v2[6] + 8 * v17) = v15;
    sub_188E8FC60(v29, v2[7] + 16 * v17);
    swift_unknownObjectRelease();
    v25 = v2[2];
    v21 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v21)
    {
      v2[2] = v26;
      continue;
    }

    break;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_18914E374()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_18914E3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB20, &qword_18A666410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18914E434(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18914E470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
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

uint64_t sub_18914E4B8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double sub_18914E5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(*v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;

    *v4 = v11;
  }

  v12 = qword_1ED491B40;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v14 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  a4(a2, a3, 0);
  os_unfair_lock_unlock(v14[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v15 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v13 _setNSIntegerValue_forTraitToken_];

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_18914E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_188A55538(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_188A3F5FC(v13, &qword_1EA934050, qword_18A64CA10);
}

uint64_t sub_18914E888(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

void sub_18914E930(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_18914E9A8();
}

void sub_18914E9A8()
{
  v1 = v0;
  v2 = sub_18A4A2668();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18915599C();
  type metadata accessor for AttributeScopes.UIKitAttributes(0);
  sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
  sub_18A4A70B8();
  v3 = *off_1E70EC920;
  v4 = &v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration];
  swift_beginAccess();
  v5 = *(v4 + 1);
  v14 = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
  *&v13 = v5;
  sub_188A55538(&v13, v12);
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_188B32C50(v12, v3, isUniquelyReferenced_nonNull_native);
  [*&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView] setEffect_];
  swift_beginAccess();
  v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  v9 = sub_18A4A7258();

  type metadata accessor for Key(0);
  sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key, &unk_18A64870C);
  v10 = sub_18A4A7088();

  v11 = [v8 initWithString:v9 attributes:v10];

  [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel] setAttributedText_];
  [v1 setNeedsLayout];
}

uint64_t sub_18914EC74()
{
  v1 = (v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_18914ECCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_18914E9A8();
}

void (*sub_18914ED30(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18914ED94;
}

id sub_18914EDAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v7 = *(v3 + 8);
  *a2 = *v3;
  a2[1] = v7;
  v5 = v4;

  return v7;
}

void sub_18914EE1C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v7 = v2;
  v8 = v3;

  sub_18914E9A8();
}

id sub_18914EE94@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v7 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v7;
  v5 = v4;

  return v7;
}

void sub_18914EF00(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration;
  swift_beginAccess();
  v6 = *v4;
  v5 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;

  sub_18914E9A8();
}

uint64_t (*sub_18914EF6C(uint64_t a1))(uint64_t, uint64_t)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_189167430;
}

double sub_18914F020(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_18914F08C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_188F2448C;
}

void *sub_18914F13C()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18914F188(void *a1)
{
  sub_189162E30(a1);
}

void (*sub_18914F1C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_18914F25C;
}

void sub_18914F25C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  if (a2)
  {
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
      v8 = *(v5 + v4);
      v5 = *(v2 + 32);
      v4 = *(v2 + 40);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v4) = v3;
    v10 = v7;

    if (v3)
    {
      v11 = sub_189159798();
      [v11 addSubview_];
    }

    [*(v2 + 32) invalidateIntrinsicContentSize];

    v12 = *(v2 + 24);
  }

  else
  {
    if (v6)
    {
      [*(v5 + v4) removeFromSuperview];
      v9 = *(v5 + v4);
      v5 = *(v2 + 32);
      v4 = *(v2 + 40);
    }

    else
    {
      v9 = 0;
    }

    *(v5 + v4) = v3;
    v12 = v3;

    if (v3)
    {
      v13 = sub_189159798();
      [v13 addSubview_];
    }

    [*(v2 + 32) invalidateIntrinsicContentSize];
  }

  free(v2);
}

void sub_18914F3BC(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_18914F410(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_18914F4C0(char *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty) == 1)
  {
    v3 = [*(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) text];
    if (!v3)
    {
      __break(1u);
      goto LABEL_12;
    }

    v4 = v3;
    sub_18A4A7288();

    v5 = sub_18A4A7358();

    if (v5 < 1)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  v6 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonShowsClearButtonWhenNotEmpty;
  swift_beginAccess();
  if (*(v1 + v6) != 1)
  {
    goto LABEL_8;
  }

  v7 = [*(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) text];
  if (v7)
  {
    v8 = v7;
    sub_18A4A7288();

    v9 = sub_18A4A7358();

    if (v9 > 0)
    {
      v10 = 1;
LABEL_10:
      *a1 = v10;
      return;
    }

LABEL_8:
    v10 = 2;
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
}

__n128 sub_18914F604@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_188A53994(v3, a2);
  }

  else
  {
    result = *v3;
    v5 = *(v3 + 16);
    *(a2 + 32) = *(v3 + 32);
    *a2 = result;
    *(a2 + 16) = v5;
  }

  return result;
}

double sub_18914F678(__int128 *a1, void **a2)
{
  if (*(a1 + 3))
  {
    sub_188A53994(a1, &v9);
  }

  else
  {
    v3 = a1[1];
    v9 = *a1;
    v10 = v3;
    v11 = *(a1 + 4);
  }

  v4 = *a2;
  v5 = v4 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit;
  swift_beginAccess();
  if (*(v5 + 24))
  {
    if (*(&v10 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v5, &v9);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else if (*(&v10 + 1))
  {
    sub_188A53994(&v9, v5);
    goto LABEL_11;
  }

  v6 = v9;
  v7 = v10;
  *(v5 + 32) = v11;
  *v5 = v6;
  *(v5 + 16) = v7;
LABEL_11:
  swift_endAccess();
  [v4 invalidateIntrinsicContentSize];
  if (*(&v10 + 1))
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(&v9);
  }

  return result;
}

__n128 sub_18914F75C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_188A53994(v3, a1);
  }

  else
  {
    result = *v3;
    v5 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(v3 + 32);
  }

  return result;
}

double sub_18914F7CC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit;
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (*(v3 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v3, a1);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  else if (v4)
  {
    sub_188A53994(a1, v3);
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
LABEL_8:
  swift_endAccess();
  [v1 invalidateIntrinsicContentSize];
  if (*(a1 + 24))
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return result;
}

uint64_t (*sub_18914F890(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18916743C;
}

void sub_18914F8F4()
{
  v1 = *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  v2 = [v1 text];
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v3 = v2;
  sub_18A4A7288();

  v4 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_characterLimit;
  swift_beginAccess();
  if (*(v4 + 8) != 1)
  {
    v5 = *v4;
    if (v5 < sub_18A4A7358())
    {
      sub_18A4A7378();
      v6 = sub_18A4A7448();
      MEMORY[0x18CFE2270](v6);

      v7 = sub_18A4A7258();

      [v1 setText_];

      v8 = [v1 _selectionDisplayInteraction];
      if (v8)
      {
        v9 = v8;

        [v9 _performCursorBulgeAnimation];

        return;
      }

      goto LABEL_9;
    }
  }
}

uint64_t sub_18914FA68()
{
  v1 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_characterLimit;
  swift_beginAccess();
  return *v1;
}

void sub_18914FAB4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_characterLimit;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_18914F8F4();
}

void (*sub_18914FB18(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18914FB7C;
}

void sub_18914FB94(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

id sub_18914FBD8()
{
  type metadata accessor for _UIIntelligenceButton();
  type metadata accessor for IntelligenceUI.PromptEntryView(0);
  sub_18915048C(0, v8);
  v0 = v8[0];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *(v0 + 16);

  v3 = [ObjCClassFromMetadata buttonWithConfiguration:v2 primaryAction:0];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_189167240;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188F23000;
  v8[3] = &block_descriptor_388;
  v5 = _Block_copy(v8);
  v6 = v3;

  [v6 setIsAccessibilityElementBlock_];
  _Block_release(v5);

  return v6;
}

id sub_18914FD34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [Strong showsMenuAsPrimaryAction];

  return v3;
}

uint64_t sub_18914FDB0()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_18914FE00(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18914FE64;
}

id sub_18914FE70()
{
  _s15PromptEntryViewC19AnimatingButtonViewCMa();
  type metadata accessor for IntelligenceUI.PromptEntryView(0);
  sub_189150C10(0, v8);
  v0 = v8[0];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *(v0 + 16);

  v3 = [ObjCClassFromMetadata buttonWithConfiguration:v2 primaryAction:0];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_189167238;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188F23000;
  v8[3] = &block_descriptor_382_0;
  v5 = _Block_copy(v8);
  v6 = v3;

  [v6 setIsAccessibilityElementBlock_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_18914FFD4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result isHidden])
    {

      return 0;
    }

    v3 = [v2 configuration];
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30, &unk_18A64F460);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
    }

    else
    {
      v5 = 0;
    }

    if (qword_1EA92FE30 != -1)
    {
      swift_once();
    }

    v6 = off_1EA92FE40;
    if (v5)
    {
      if (off_1EA92FE40)
      {
        v7 = *(v5 + 16);
        v8 = *(off_1EA92FE40 + 2);

        LODWORD(v7) = [v7 isEqual_];

        return v7 ^ 1;
      }
    }

    else
    {

      if (!v6)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_18915016C()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isTrailingButtonVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1891501BC(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v2[v4] = a1;
  return [v2 setNeedsLayout];
}

uint64_t (*sub_189150218(uint64_t a1))(uint64_t, uint64_t)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_189167434;
}

id (*sub_1891502B0(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1891502E4;
}

id sub_1891502E4(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + a1[1]) = *(a1 + 16);
  return [*(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton) setNeedsUpdateConfiguration];
}

uint64_t sub_189150308()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonHiddenWhenEmpty;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_189150360(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_189167438;
}

uint64_t sub_1891503C4()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonShowsClearButtonWhenNotEmpty;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_18915041C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_189150480;
}

void sub_18915048C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() borderlessButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30, &unk_18A64F460);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  [v3 imageReservation];
  *&v6 = v5 & 0xFFFFFFFFFFFFFFF9 | 4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50, off_1E70E9510);
    swift_dynamicCast();
    v7 = v42;
    v8 = swift_allocObject();
    *(v8 + 16) = v42;

    v4 = v8;
  }

  [v7 setImageReservation_];
  [*(v4 + 16) imageReservation];
  v10 = v9 | 1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50, off_1E70E9510);
    swift_dynamicCast();
    v11 = v42;
    v12 = swift_allocObject();
    *(v12 + 16) = v42;

    v4 = v12;
  }

  [v11 setImageReservation_];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleTitle3" compatibleWithTraitCollection:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E700, &qword_18A66B010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  v16 = *off_1E70ECCC0;
  *(inited + 32) = *off_1E70ECCC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E708, &qword_18A66B018);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_18A64BFB0;
  v18 = *off_1E70ECD38;
  *(v17 + 32) = *off_1E70ECD38;
  *(v17 + 40) = *off_1E70ECD20;
  v19 = v16;
  v20 = v18;
  v21 = sub_188E8F510(v17);
  swift_setDeallocating();
  sub_188A3F5FC(v17 + 32, &qword_1EA93E710, &qword_18A66B020);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E718, &qword_18A66B028);
  *(inited + 40) = v21;
  sub_188E8F600(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &unk_1EA93E720, &qword_18A66B030);
  type metadata accessor for AttributeName(0);
  sub_188BEB2E8(&unk_1EA92FD78, type metadata accessor for AttributeName, &unk_18A64ADA4);
  v22 = sub_18A4A7088();

  v23 = [v14 fontDescriptorByAddingAttributes_];

  v24 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v25 = [v13 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleTitle3" compatibleWithTraitCollection:v24];

  [v25 pointSize];
  v27 = v26;

  [v23 pointSize];
  if (v27 > v28)
  {
    if ((*&v28 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }

    if ((~*&v28 & 0x7FF0000000000000) != 0)
    {
      v27 = v28;
    }

    else
    {
      v27 = v29;
    }
  }

  v30 = [objc_opt_self() fontWithDescriptor:v23 size:v27];
  v31 = [objc_opt_self() configurationWithFont_];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50, off_1E70E9510);
    swift_dynamicCast();
    v32 = swift_allocObject();
    *(v32 + 16) = v42;

    v4 = v32;
  }

  [*(v4 + 16) setPreferredSymbolConfigurationForImage_];

  v33 = [objc_opt_self() mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = sub_18A4A7288();
    v37 = v36;

    if (v35 == 0x6C7070612E6D6F63 && v37 == 0xEE00697269732E65)
    {
    }

    else
    {
      sub_18A4A86C8();
    }
  }

  v38 = sub_18A4A7258();
  v39 = [objc_opt_self() _systemImageNamed_];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50, off_1E70E9510);
    swift_dynamicCast();
    v40 = swift_allocObject();
    *(v40 + 16) = v42;

    v4 = v40;
  }

  [*(v4 + 16) setImage_];

  *a2 = v4;
}

void sub_189150C10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() borderlessButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30, &unk_18A64F460);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a2 = v5;
  v6 = sub_18A4A7258();
  v7 = [objc_opt_self() systemImageNamed_];

  sub_188EB028C(v7);
  [*(*a2 + 16) imageReservation];
  sub_18916286C(COERCE_DOUBLE(v8 & 0xFFFFFFFFFFFFFFF9 | 4));
  [*(*a2 + 16) imageReservation];
  sub_18916286C(COERCE_DOUBLE(v9 | 1));
  v10 = objc_opt_self();
  v11 = @"UICTFontTextStyleTitle3";
  v12 = [v10 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E700, &qword_18A66B010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  v14 = *off_1E70ECCC0;
  *(inited + 32) = *off_1E70ECCC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E708, &qword_18A66B018);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_18A64BFB0;
  v16 = *off_1E70ECD38;
  *(v15 + 32) = *off_1E70ECD38;
  *(v15 + 40) = *off_1E70ECD20;
  v17 = v14;
  v18 = v16;
  v19 = sub_188E8F510(v15);
  swift_setDeallocating();
  sub_188A3F5FC(v15 + 32, &qword_1EA93E710, &qword_18A66B020);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E718, &qword_18A66B028);
  *(inited + 40) = v19;
  sub_188E8F600(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &unk_1EA93E720, &qword_18A66B030);
  type metadata accessor for AttributeName(0);
  sub_188BEB2E8(&unk_1EA92FD78, type metadata accessor for AttributeName, &unk_18A64ADA4);
  v20 = sub_18A4A7088();

  v21 = [v12 fontDescriptorByAddingAttributes_];

  v22 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v23 = [v10 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v22];

  [v23 pointSize];
  v25 = v24;

  [v21 pointSize];
  if (v25 > v26)
  {
    if ((*&v26 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    if ((~*&v26 & 0x7FF0000000000000) != 0)
    {
      v25 = v26;
    }

    else
    {
      v25 = v27;
    }
  }

  v28 = [objc_opt_self() fontWithDescriptor:v21 size:v25];
  v29 = [objc_opt_self() configurationWithFont_];
  sub_188EB02D4(v29);
}

uint64_t sub_189151048()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonConfiguredAsToggle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18915108C(char a1)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonConfiguredAsToggle;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (qword_1EA92F6F0 == -1)
  {
    v4 = qword_1EA92F700;
    if (a1)
    {
LABEL_3:
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = objc_allocWithZone(UIAction);
      v7 = v4;

      v8 = sub_18A4A7258();
      aBlock[4] = sub_189162EE4;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188BFF280;
      aBlock[3] = &block_descriptor_129;
      v9 = _Block_copy(aBlock);

      v10 = [v6 initWithTitle:v8 image:0 identifier:v7 discoverabilityTitle:0 attributes:0 state:0 handler:v9];
      _Block_release(v9);

      v11 = v10;
      [v11 setSubtitle_];
      [v11 setSelectedImage_];

      [*(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton) addAction:v11 forControlEvents:0x2000];

      return;
    }
  }

  else
  {
    swift_once();
    v12 = *(v1 + v3);
    v4 = qword_1EA92F700;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [*(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton) removeActionForIdentifier:v4 forControlEvents:0x2000];
}

uint64_t (*sub_1891512C4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonConfiguredAsToggle;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_18915134C;
}

void sub_18915134C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_1EA92F6F0 != -1)
    {
      swift_once();
    }

    v4 = v3[6];
    v5 = qword_1EA92F700;
    if (*(v4 + v3[7]) == 1)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = objc_allocWithZone(UIAction);
      v8 = v5;

      v9 = sub_18A4A7258();
      v3[4] = sub_189167440;
      v3[5] = v6;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_188BFF280;
      v3[3] = &block_descriptor_10_3;
      v10 = _Block_copy(v3);

      v11 = [v7 initWithTitle:v9 image:0 identifier:v8 discoverabilityTitle:0 attributes:0 state:0 handler:v10];
      _Block_release(v10);

      v12 = v11;
      [v12 setSubtitle_];
      [v12 setSelectedImage_];

      [*(v4 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton) addAction:v12 forControlEvents:0x2000];
    }

    else
    {
      [*(v4 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton) removeActionForIdentifier:qword_1EA92F700 forControlEvents:0x2000];
    }
  }

  free(v3);
}

uint64_t sub_189151584()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButtonToggleState;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1891515DC(char a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  swift_beginAccess();
  *(v3 + v6) = a1;
  return [*(v3 + *a3) setNeedsUpdateConfiguration];
}

void (*sub_189151640(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1891516A4;
}

void sub_1891516B0(uint64_t a1, char a2, void *a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 24) + *a3);

    [v6 setNeedsUpdateConfiguration];
  }
}

void sub_18915171C(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView);
  *(*a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView) = *a1;
  v4 = v2;

  sub_18915175C();
}

void sub_18915175C()
{
  v1 = v0;
  v2 = sub_18915184C();
  [v1 promptBackgroundViewDidUpdateConfiguration_];

  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView;
  v4 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView] superview];
  if (!v4 || (v5 = v4, sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78), v6 = v1, v7 = sub_18A4A7C88(), v5, v6, (v7 & 1) == 0))
  {
    v8 = *&v1[v3];

    [v1 insertSubview:v8 atIndex:0];
  }
}

char *sub_18915184C()
{
  v1 = v0;
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView;
  v7 = *(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView);
  }

  else
  {
    if (qword_1EA92FDB0 != -1)
    {
      v16 = v3;
      swift_once();
      v3 = v16;
    }

    v9 = __swift_project_value_buffer(v3, qword_1EA92FDC0);
    sub_189162F30(v9, v5, type metadata accessor for UIPromptBackgroundView.Configuration);
    v10 = objc_allocWithZone(type metadata accessor for UIPromptBackgroundView(0));
    v11 = UIPromptBackgroundView.init(configuration:)(v5);
    v12 = *(v1 + v6);
    *(v1 + v6) = v11;
    v8 = v11;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

void sub_18915197C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView;
  v4 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView];
  *&v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView] = a1;
  v10 = a1;

  v5 = sub_18915184C();
  [v2 promptBackgroundViewDidUpdateConfiguration_];

  v6 = [*&v2[v3] superview];
  if (!v6 || (v7 = v6, sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78), v8 = v2, v9 = sub_18A4A7C88(), v7, v8, (v9 & 1) == 0))
  {
    [v2 insertSubview:*&v2[v3] atIndex:0];
  }
}

void (*sub_189151A80(char **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_18915184C();
  return sub_189151AC8;
}

void sub_189151AC8(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView;
  v7 = *&v5[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView];
  *&v5[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView] = *a1;
  v8 = v4;
  if (a2)
  {
    v9 = v8;

    v10 = sub_18915184C();
    [v5 promptBackgroundViewDidUpdateConfiguration_];

    v11 = [*&v5[v6] superview];
    v12 = v5;
    if (v11)
    {
      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
      v13 = v5;
      v14 = sub_18A4A7C88();

      if (v14)
      {
LABEL_6:

        v15 = *a1;
        goto LABEL_12;
      }

      v12 = *(a1 + 8);
    }

    [v12 insertSubview:*&v5[v6] atIndex:0];
    goto LABEL_6;
  }

  v21 = v8;

  v16 = sub_18915184C();
  [v5 promptBackgroundViewDidUpdateConfiguration_];

  v17 = [*&v5[v6] superview];
  v18 = v5;
  if (!v17)
  {
    goto LABEL_10;
  }

  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v19 = v5;
  v20 = sub_18A4A7C88();

  if ((v20 & 1) == 0)
  {
    v18 = *(a1 + 8);
LABEL_10:
    [v18 insertSubview:*&v5[v6] atIndex:0];
  }

  v15 = v21;
LABEL_12:
}

id sub_189151C9C(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  return [v3 invalidateIntrinsicContentSize];
}

double sub_189151D08()
{
  v1 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding;
  swift_beginAccess();
  return *v1;
}

id sub_189151D54(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [v4 invalidateIntrinsicContentSize];
}

void (*sub_189151DD0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_189151E34;
}

void sub_189151E40(uint64_t a1, char a2, const char **a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 24);
    v7 = *a3;

    [v6 v7];
  }
}

id sub_189151EA0(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITextEffectView.EffectID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6B8, &unk_18A66AFA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v63 - v12;
  v13 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0, &qword_18A6509D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v28 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_activePonderEffect;
  v67 = v5;
  v29 = (v5 + 48);
  v65 = a1;
  if (a1)
  {
    swift_beginAccess();
    sub_188A3F29C(&v2[v28], v27, &qword_1EA93E6C0, &qword_18A6509D0);
    v30 = (*v29)(v27, 1, v4);
    result = sub_188A3F5FC(v27, &qword_1EA93E6C0, &qword_18A6509D0);
    if (v30 != 1)
    {
      return result;
    }

    _s15PromptEntryViewC5ChunkCMa();
    v33 = [objc_allocWithZone(v32) init];
    v34 = sub_189159720();
    if (qword_1EA92EB38 != -1)
    {
      swift_once();
    }

    v35 = xmmword_1EA92EB40;
    v71 = xmmword_1EA92EB40;
    v72 = xmmword_1EA92EB50;
    v73 = unk_1EA92EB60;
    v74 = qword_1EA92EB70;
    v36 = type metadata accessor for UITextEffectView.PonderingEffect(0);
    swift_allocObject();
    v37 = *(&v35 + 1);

    v38 = v35;
    v39 = sub_189138BC4(v33, v34, &v71);

    v40 = *&v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView];
    *(&v72 + 1) = v36;
    *&v73 = &protocol witness table for UITextEffectView.PonderingEffect;
    *&v71 = v39;
    v41 = v40;

    v42 = v66;
    sub_189001650(&v71, v66);

    v43 = __swift_destroy_boxed_opaque_existential_0Tm(&v71);
    (*(v67 + 56))(v42, 0, 1, v4, v43);
    swift_beginAccess();
    sub_188A4B4F4(v42, &v2[v28], &qword_1EA93E6C0, &qword_18A6509D0);
    swift_endAccess();
    v44 = sub_18915184C();
    v45 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
    swift_beginAccess();
    v46 = &v44[v45];
    v47 = v68;
    sub_189162F30(v46, v68, type metadata accessor for UIPromptBackgroundView.Configuration);

    v48 = v64;
    sub_189162F30(v47, v64, type metadata accessor for UIPromptBackgroundView.Configuration);
    v49 = v70;
    (*(v69 + 56))(v48, 0, 1, v70);
    v50 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_nonPonderingBackgroundStyle;
    swift_beginAccess();
    sub_188A4B4F4(v48, &v2[v50], &qword_1EA93E6B8, &unk_18A66AFA0);
    swift_endAccess();
    v51 = *&v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView];
    v52 = v63;
    sub_189162F30(v47, v63, type metadata accessor for UIPromptBackgroundView.Configuration);
    *(v52 + *(v49 + 48)) = 3;
    v53 = v51;
    sub_188F4DAA8(v52);

    v54 = v47;
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_188A3F29C(&v2[v28], v22, &qword_1EA93E6C0, &qword_18A6509D0);
  if ((*v29)(v22, 1, v4) == 1)
  {
    sub_188A3F5FC(v22, &qword_1EA93E6C0, &qword_18A6509D0);
  }

  else
  {
    sub_18916731C(v22, v7, type metadata accessor for UITextEffectView.EffectID);
    v55 = sub_189159720();
    sub_18900294C(v7);

    sub_189163C68(v7, type metadata accessor for UITextEffectView.EffectID);
    v56 = v66;
    (*(v67 + 56))(v66, 1, 1, v4);
    swift_beginAccess();
    sub_188A4B4F4(v56, &v2[v28], &qword_1EA93E6C0, &qword_18A6509D0);
    swift_endAccess();
  }

  v57 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_nonPonderingBackgroundStyle;
  swift_beginAccess();
  sub_188A3F29C(&v2[v57], v10, &qword_1EA93E6B8, &unk_18A66AFA0);
  if ((*(v69 + 48))(v10, 1, v70) != 1)
  {
    sub_18916731C(v10, v15, type metadata accessor for UIPromptBackgroundView.Configuration);
    v58 = sub_18915184C();
    v59 = v68;
    sub_189162F30(v15, v68, type metadata accessor for UIPromptBackgroundView.Configuration);
    sub_188F4DAA8(v59);

    v54 = v15;
LABEL_12:
    sub_189163C68(v54, type metadata accessor for UIPromptBackgroundView.Configuration);
    goto LABEL_13;
  }

  sub_188A3F5FC(v10, &qword_1EA93E6B8, &unk_18A66AFA0);
LABEL_13:
  v60 = &v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = *(v60 + 1);
    ObjectType = swift_getObjectType();
    (*(v61 + 96))(v2, v65 & 1, ObjectType, v61);
    swift_unknownObjectRelease();
  }

  return [v2 setNeedsLayout];
}

uint64_t sub_1891526CC()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_189152710(int a1)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_189151EA0(a1);
}

uint64_t (*sub_189152768(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1891527F0;
}

void sub_1891527F0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_189151EA0(*(v3[3] + v3[4]));
  }

  free(v3);
}

uint64_t sub_1891528CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_18A4A2668();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

double sub_189152954(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_18A4A2668();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  swift_endAccess();
  return result;
}

uint64_t sub_189152A78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_18A4A2668();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}