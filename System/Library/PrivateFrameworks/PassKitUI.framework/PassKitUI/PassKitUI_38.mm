uint64_t sub_1BD417618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04A604();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 0x8000, 0);
  sub_1BD1EB2D0();
  return sub_1BE04A614();
}

uint64_t sub_1BD417738()
{
  result = [*(v0 + OBJC_IVAR____PKEducationalMessageView_titleLabel) attributedText];
  if (result)
  {
    goto LABEL_3;
  }

  result = [*(v0 + OBJC_IVAR____PKEducationalMessageView_messageLabel) text];
  if (result)
  {
    goto LABEL_3;
  }

  if (*(v0 + OBJC_IVAR____PKEducationalMessageView_actionButton))
  {
    return 1;
  }

  result = [*(v0 + OBJC_IVAR____PKEducationalMessageView_imageView) image];
  if (result)
  {
LABEL_3:

    return 1;
  }

  return result;
}

double sub_1BD417958(char a1, double a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = UIEdgeInsetsInsetRect(0.0);
  v8 = v7;
  v9 = v4;
  v10 = v5;
  v11 = OBJC_IVAR____PKEducationalMessageView_animationView;
  v12 = *(v2 + OBJC_IVAR____PKEducationalMessageView_animationView);
  v72 = v7;
  v73 = v6;
  v71 = v4;
  if (v12)
  {
    [v12 sizeThatFits_];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v17 = [*(v2 + OBJC_IVAR____PKEducationalMessageView_imageView) image];
    if (!v17)
    {
      v76 = 0.0;
      v33 = v6;
      goto LABEL_11;
    }

    v18 = v17;
    [v17 size];
    v14 = v19;
    v16 = v20;
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v81.origin.x = v6;
  v81.origin.y = v8;
  v81.size.width = v9;
  v81.size.height = v10;
  CGRectDivide(v81, &slice, &remainder, v14, CGRectMaxXEdge);
  v82 = slice;
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v76 = v16;
  CGRectDivide(v82, &slice, &remainder, v16, CGRectMinYEdge);
  if ((a1 & 1) == 0)
  {
    v25 = slice.origin.x;
    v26 = slice.origin.y;
    v27 = slice.size.width;
    v28 = slice.size.height;
    v29 = *(v2 + v11);
    if (v29)
    {
      v30 = v29;
      [v30 setFrame_];
      [*(v2 + OBJC_IVAR____PKEducationalMessageView_imageView) setFrame_];
    }

    else
    {
      v31 = *(v2 + OBJC_IVAR____PKEducationalMessageView_imageView);
      v32 = [v31 image];
      if (v32)
      {

        [v31 setFrame_];
      }
    }
  }

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  CGRectDivide(v83, &slice, &remainder, 16.0, CGRectMaxXEdge);
  v33 = remainder.origin.x;
  v8 = remainder.origin.y;
  v9 = remainder.size.width;
  v10 = remainder.size.height;
LABEL_11:
  v34 = *(v2 + OBJC_IVAR____PKEducationalMessageView_titleLabel);
  [v34 sizeThatFits_];
  v36 = v35;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v84.origin.x = v33;
  v84.origin.y = v8;
  v84.size.width = v9;
  v84.size.height = v10;
  CGRectDivide(v84, &slice, &remainder, v36, CGRectMinYEdge);
  v37 = slice.origin.x;
  v38 = slice.origin.y;
  v39 = slice.size.width;
  v40 = slice.size.height;
  v41 = remainder.origin.x;
  v42 = remainder.origin.y;
  v44 = remainder.size.width;
  v43 = remainder.size.height;
  if ((a1 & 1) == 0)
  {
    [v34 setFrame_];
  }

  v77 = v40 + 0.0;
  v85.origin.x = v37;
  v85.origin.y = v38;
  v85.size.width = v39;
  v85.size.height = v40;
  if (CGRectGetHeight(v85) > 0.0)
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v86.origin.x = v41;
    v86.origin.y = v42;
    v86.size.width = v44;
    v86.size.height = v43;
    CGRectDivide(v86, &slice, &remainder, 2.0, CGRectMinYEdge);
    v41 = remainder.origin.x;
    v42 = remainder.origin.y;
    v44 = remainder.size.width;
    v43 = remainder.size.height;
    v77 = v77 + slice.size.height;
  }

  v45 = *(v2 + OBJC_IVAR____PKEducationalMessageView_messageLabel);
  [v45 sizeThatFits_];
  v47 = v46;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v87.origin.x = v41;
  v87.origin.y = v42;
  v87.size.width = v44;
  v87.size.height = v43;
  CGRectDivide(v87, &slice, &remainder, v47, CGRectMinYEdge);
  v48 = slice.origin.x;
  v49 = slice.origin.y;
  v51 = slice.size.width;
  v50 = slice.size.height;
  v52 = remainder.origin.x;
  rect = remainder.origin.y;
  v54 = remainder.size.width;
  v53 = remainder.size.height;
  v55 = v77 + slice.size.height;
  if (a1)
  {
    v56 = *(v2 + OBJC_IVAR____PKEducationalMessageView_actionButton);
    if (!v56)
    {
      return a2;
    }
  }

  else
  {
    [v45 setFrame_];
    v56 = *(v2 + OBJC_IVAR____PKEducationalMessageView_actionButton);
    if (!v56)
    {
      if (v76 >= v55)
      {
        return a2;
      }

      goto LABEL_27;
    }
  }

  v57 = v56;
  v88.origin.x = v48;
  v88.origin.y = v49;
  v88.size.width = v51;
  v88.size.height = v50;
  if (CGRectGetHeight(v88) <= 0.0)
  {
    v58 = v52;
    v59 = rect;
  }

  else
  {
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v89.origin.x = v52;
    v89.origin.y = rect;
    v89.size.width = v54;
    v89.size.height = v53;
    CGRectDivide(v89, &slice, &remainder, 2.0, CGRectMinYEdge);
    v58 = remainder.origin.x;
    v59 = remainder.origin.y;
    v54 = remainder.size.width;
    v53 = remainder.size.height;
    v55 = v55 + slice.size.height;
  }

  v60 = v57;
  [v60 sizeThatFits_];
  v62 = v61;
  v64 = v63;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v90.origin.x = v58;
  v90.origin.y = v59;
  v90.size.width = v54;
  v90.size.height = v53;
  CGRectDivide(v90, &slice, &remainder, v64, CGRectMinYEdge);
  v91 = slice;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v91, &slice, &remainder, v62, CGRectMinXEdge);
  v55 = v55 + slice.size.height;
  if (a1)
  {

    return a2;
  }

  [v60 setFrame_];

  if (v76 >= v55)
  {
    return a2;
  }

LABEL_27:
  if (!*(v2 + v11))
  {
    v65 = *(v2 + OBJC_IVAR____PKEducationalMessageView_imageView);
    v66 = [v65 image];
    if (v66)
    {
      v67 = v66;
      [v66 size];
      v69 = v68;

      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v92.origin.y = v72;
      v92.origin.x = v73;
      v92.size.width = v71;
      v92.size.height = v55;
      CGRectDivide(v92, &slice, &remainder, v69, CGRectMaxXEdge);
      [v65 frame];
      UIRectCenteredYInRect();
      [v65 setFrame_];
    }
  }

  return a2;
}

id EducationalMessageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EducationalMessageView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EducationalMessageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1BD418150()
{
  result = qword_1EBD4A9F0;
  if (!qword_1EBD4A9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4A9F0);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferActionExplanationView(uint64_t a1)
{
  result = qword_1EBD45BD8;
  if (!qword_1EBD45BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD4182C0(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD496B0, 0x1E69B8CE8);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &unk_1EBD496A0, 0x1E69B8C60);
    if (v2 <= 0x3F)
    {
      sub_1BD4184F8(319);
      if (v3 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v4 <= 0x3F)
        {
          sub_1BD418560(319, &qword_1EBD45BE8, &type metadata for PaymentOfferActionExplanationView.ButtonType, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD33A100(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BD33A100(319, &qword_1EBD39358, &unk_1EBD45160, &qword_1BE0C25A0, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1BD418560(319, &qword_1EBD3E998, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                if (v8 <= 0x3F)
                {
                  sub_1BD418560(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
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
  }
}

void sub_1BD4184F8(uint64_t a1)
{
  if (!qword_1EBD57CB0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD456C0, 0x1E69B91E8);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD57CB0);
    }
  }
}

void sub_1BD418560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for PaymentOfferActionExplanationView.ButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 5)
  {
    return v9 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD418678(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BD4186A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BD418728@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45BF0, &qword_1BE0D5408);
  v74 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v61 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45BF8, &qword_1BE0D5410);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = sub_1BE04FE84();
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C00, &qword_1BE0D5418);
  v70 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C08, &qword_1BE0D5420);
  v71 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v14 = &v61 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C10, &qword_1BE0D5428);
  MEMORY[0x1EEE9AC00](v76);
  v17 = &v61 - v16;
  if (*(v1 + 184) == 1)
  {
    v66 = &v61;
    MEMORY[0x1EEE9AC00](v15);
    v65 = &v61 - 4;
    *(&v61 - 2) = v1;
    v74 = v18;
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C20, &qword_1BE0D5430);
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C28, &qword_1BE0D5438);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C30, &qword_1BE0D5440);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38, &unk_1BE0D5448);
    v63 = v2;
    v21 = v20;
    v22 = type metadata accessor for MultiHyperLinkDetailSheet(255);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    v69 = v7;
    v24 = v23;
    v25 = sub_1BD41CF04();
    v67 = v8;
    v26 = v25;
    v27 = sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    v68 = v5;
    v28 = v27;
    v29 = sub_1BD10CC54();
    v78 = v21;
    v79 = v22;
    v80 = v24;
    v81 = v26;
    v82 = v28;
    v83 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v78 = v19;
    v79 = OpaqueTypeConformance2;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78, &unk_1BE0D5470);
    v33 = sub_1BD41D104();
    v78 = v32;
    v79 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v78 = v64;
    v79 = v62;
    v80 = v31;
    v81 = v34;
    swift_getOpaqueTypeConformance2();
    sub_1BE04EC04();
    v35 = sub_1BD0DE4F4(&qword_1EBD45C18, &qword_1EBD45C00, &qword_1BE0D5418, MEMORY[0x1E697C1A8]);
    sub_1BE050E54();
    (*(v70 + 8))(v12, v10);
    v36 = v72;
    sub_1BE04FE74();
    v78 = v10;
    v79 = v35;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = sub_1BD41D8A8(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    v39 = v75;
    v40 = v67;
    sub_1BE0507D4();
    (*(v73 + 8))(v36, v40);
    (*(v71 + 8))(v14, v39);
    v41 = v74;
    v42 = v76;
    (*(v74 + 16))(v69, v17, v76);
    swift_storeEnumTagMultiPayload();
    v78 = v39;
    v79 = v40;
    v80 = v37;
    v81 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v41 + 8))(v17, v42);
  }

  else
  {
    sub_1BD4190E8(v4);
    v44 = v74;
    (*(v74 + 16))(v7, v4, v2);
    swift_storeEnumTagMultiPayload();
    v45 = sub_1BD0DE4F4(&qword_1EBD45C18, &qword_1EBD45C00, &qword_1BE0D5418, MEMORY[0x1E697C1A8]);
    v78 = v10;
    v79 = v45;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_1BD41D8A8(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    v78 = v75;
    v79 = v8;
    v80 = v46;
    v81 = v47;
    v75 = swift_getOpaqueTypeConformance2();
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C20, &qword_1BE0D5430);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C28, &qword_1BE0D5438);
    v48 = v2;
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C30, &qword_1BE0D5440);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38, &unk_1BE0D5448);
    v51 = type metadata accessor for MultiHyperLinkDetailSheet(255);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    v53 = sub_1BD41CF04();
    v54 = sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    v55 = sub_1BD10CC54();
    v78 = v50;
    v79 = v51;
    v80 = v52;
    v81 = v53;
    v82 = v54;
    v83 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    v78 = v49;
    v79 = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78, &unk_1BE0D5470);
    v59 = sub_1BD41D104();
    v78 = v58;
    v79 = v59;
    v60 = swift_getOpaqueTypeConformance2();
    v78 = v73;
    v79 = v72;
    v80 = v57;
    v81 = v60;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v44 + 8))(v4, v48);
  }
}

uint64_t sub_1BD4190E8@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_1BE04F434();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v53 - v5;
  v6 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for TitleBodyMultiHyperlinkView(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C50, &qword_1BE0D5458);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v53 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C38, &unk_1BE0D5448);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C30, &qword_1BE0D5440);
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C20, &qword_1BE0D5430);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v53 - v19;
  sub_1BD419908(v10);
  sub_1BD419F04(&v70);
  v98 = v82;
  v99[0] = v83[0];
  *(v99 + 9) = *(v83 + 9);
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v90 = v74;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  PKEdgeInsetsMake();
  v84[12] = v98;
  v85[0] = v99[0];
  *(v85 + 9) = *(v99 + 9);
  v84[8] = v94;
  v84[9] = v95;
  v84[10] = v96;
  v84[11] = v97;
  v84[4] = v90;
  v84[5] = v91;
  v84[6] = v92;
  v84[7] = v93;
  v84[0] = v86;
  v84[1] = v87;
  v84[2] = v88;
  v84[3] = v89;
  sub_1BD9008B8(v10, v84, v12);
  sub_1BD41D840(v1, &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v20 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v21 = swift_allocObject();
  sub_1BD2141B8(&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C60, &unk_1BE0D5460) + 36)];
  *v22 = sub_1BD41D2D8;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v53 = v1;
  sub_1BD41D840(v1, &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v23 = swift_allocObject();
  sub_1BD2141B8(&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20);
  v24 = &v12[*(v54 + 36)];
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 2) = sub_1BD41D334;
  *(v24 + 3) = v23;
  sub_1BE052434();
  v26 = v25;
  sub_1BD41CFC0();
  v27 = v56;
  sub_1BE050DE4();
  v26, v28, v29, v30, v31, v32, v33, v34;
  sub_1BD0DE53C(v12, &qword_1EBD45C50, &qword_1BE0D5458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v35 = v59;
  sub_1BE0516C4();
  v36 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  v38 = sub_1BD41CF04();
  *&v52 = sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  *(&v52 + 1) = sub_1BD10CC54();
  v39 = v58;
  sub_1BE050F74();
  sub_1BD0DE53C(v35, &qword_1EBD393E8, &qword_1BE0B8680);
  sub_1BD0DE53C(v27, &qword_1EBD45C38, &unk_1BE0D5448);
  v40 = v64;
  v41 = v65;
  v42 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E697C438], v66);
  *&v70 = v39;
  *(&v70 + 1) = v36;
  *&v71 = v37;
  *(&v71 + 1) = v38;
  v72 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v57;
  v45 = v40;
  v46 = v60;
  v47 = v68;
  sub_1BE050E84();
  (*(v41 + 8))(v45, v42);
  (*(v61 + 8))(v47, v46);
  v69 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C28, &qword_1BE0D5438);
  *&v70 = v46;
  *(&v70 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78, &unk_1BE0D5470);
  v49 = sub_1BD41D104();
  *&v70 = v48;
  *(&v70 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v62;
  sub_1BE051024();
  return (*(v63 + 8))(v44, v50);
}

uint64_t sub_1BD419908@<X0>(uint64_t *a1@<X8>)
{
  v171 = a1;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v161 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v170 = &v161 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C98, &qword_1BE0D5498);
  MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v161 - v8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v10 = (v1 + 16);
  v13 = *(v1 + 96);
  v169 = v14;
  v168 = v1;
  if (v13)
  {
    sub_1BE048C84();
    v167 = v12;
    v12 = v11;
  }

  else
  {
    v163 = v4;
    v164 = v3;
    v15 = *(v1 + 32);
    v16 = *(v1 + 48);
    v17 = *(v1 + 64);
    v19 = *(v1 + 80);
    v18 = *(v1 + 88);
    v20 = *(v1 + 72);
    v21 = *(v1 + 56);
    v22 = *(v1 + 40);
    *&v173 = v11;
    *(&v173 + 1) = v12;
    *&v174 = v15;
    *(&v174 + 1) = v22;
    *&v175 = v16;
    *(&v175 + 1) = v21;
    *&v176 = v17;
    *(&v176 + 1) = v20;
    *&v177 = v19;
    *(&v177 + 1) = v18;
    v162 = v18;
    v178 = v13;
    sub_1BD0DE19C(&v173, v172, &qword_1EBD45C90, &unk_1BE0D5488);
    v23 = [v11 title];
    if (v23)
    {
      v24 = v23;
      v12 = sub_1BE052434();
      v26 = v25;
      v15, v25, v27, v28, v29, v30, v31, v32;

      v16, v33, v34, v35, v36, v37, v38, v39;
      v17, v40, v41, v42, v43, v44, v45, v46;
      v19, v47, v48, v49, v50, v51, v52, v53;
      v162, v54, v55, v56, v57, v58, v59, v60;
      v167 = v26;
    }

    else
    {
      v167 = v15;

      v16, v61, v62, v63, v64, v65, v66, v67;
      v17, v68, v69, v70, v71, v72, v73, v74;
      v19, v75, v76, v77, v78, v79, v80, v81;
      v162, v82, v83, v84, v85, v86, v87, v88;
    }

    v3 = v164;
    v4 = v163;
  }

  v178 = *(v10 + 80);
  v89 = v10[2];
  v90 = v10[4];
  v176 = v10[3];
  v177 = v90;
  v91 = *v10;
  v174 = v10[1];
  v175 = v89;
  v173 = v91;
  v92 = v174;
  if (v178)
  {
    v93 = *(&v174 + 1);
    if (*(&v174 + 1))
    {
      v94 = objc_allocWithZone(MEMORY[0x1E69B85D0]);
      sub_1BD41D7D8(&v173, v172);
      sub_1BE048C84();
      v95 = [v94 init];
      v96 = sub_1BE052404();
      v93, v97, v98, v99, v100, v101, v102, v103;
      [v95 setFooterText_];

      sub_1BD41D810(&v173);
    }

    else
    {
      v95 = 0;
    }
  }

  else
  {
    v104 = *(&v177 + 1);
    v105 = v177;
    v106 = v3;
    v107 = v176;
    v108 = v4;
    v109 = v175;
    v110 = v12;
    v111 = v173;
    sub_1BD41D7D8(&v173, v172);
    v92, v112, v113, v114, v115, v116, v117, v118;
    v119 = v109;
    v4 = v108;
    v119, v120, v121, v122, v123, v124, v125, v126;
    v127 = v107;
    v3 = v106;
    v127, v128, v129, v130, v131, v132, v133, v134;
    v105, v135, v136, v137, v138, v139, v140, v141;
    v104, v142, v143, v144, v145, v146, v147, v148;
    v95 = [v111 bodyLinkContent];

    v12 = v110;
  }

  v149 = v167;
  v150 = sub_1BD41AFB0();
  v152 = v151;
  type metadata accessor for PaymentOfferActionExplanationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516C4();
  (*(v4 + 56))(v9, 0, 1, v3);
  v153 = v171;
  *v171 = v12;
  v153[1] = v149;
  v153[2] = v95;
  v153[3] = v150;
  *(v153 + 32) = v152;
  v154 = v169;
  sub_1BD0DE19C(v9, v169, &qword_1EBD45C98, &qword_1BE0D5498);
  v155 = *(v4 + 48);
  if (v155(v154, 1, v3) == 1)
  {
    v156 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    v157 = v165;
    (*(*(v156 - 8) + 56))(v165, 1, 1, v156);
    v158 = v170;
    sub_1BE051944();
    sub_1BD0DE53C(v157, &unk_1EBD45160, &qword_1BE0C25A0);
    sub_1BD0DE53C(v9, &qword_1EBD45C98, &qword_1BE0D5498);
    if (v155(v154, 1, v3) != 1)
    {
      sub_1BD0DE53C(v154, &qword_1EBD45C98, &qword_1BE0D5498);
    }
  }

  else
  {
    sub_1BD0DE53C(v9, &qword_1EBD45C98, &qword_1BE0D5498);
    v158 = v170;
    sub_1BD41D768(v154, v170);
  }

  v159 = type metadata accessor for TitleBodyMultiHyperlinkView(0);
  return sub_1BD41D768(v158, v153 + *(v159 + 28));
}

void sub_1BD419F04(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = sub_1BE04F3D4();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BD41B390();
  v73 = v10;
  v72 = sub_1BD41B4C4();
  v71 = v11;
  sub_1BD41D840(v1, v9, type metadata accessor for PaymentOfferActionExplanationView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_1BD2141B8(v9, v13 + v12);
  v69 = sub_1BD41B618();
  v68 = v14;
  v15 = v2 + *(v6 + 72);
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  *&v83 = *v15;
  v17 = v83;
  *(&v83 + 1) = v16;
  LOBYTE(v84) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  MEMORY[0x1BFB3E970](v77);
  v70 = LOBYTE(v77[0]);
  *&v83 = v17;
  *(&v83 + 1) = v16;
  LOBYTE(v84) = v18;
  MEMORY[0x1BFB3E970](v77, v19);
  v20 = v77[0];
  v76 = 1;
  v21 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C88 &qword_1BE0D5480))];
  sub_1BD41B90C(v77);
  v86 = v77[3];
  v87 = v77[4];
  v88 = v77[5];
  v83 = v77[0];
  v84 = v77[1];
  v89 = v78;
  v85 = v77[2];
  v75 = 1;
  v22 = &v21[qword_1EBD56240];
  v23 = *&v21[qword_1EBD56240];
  v24 = *&v21[qword_1EBD56240 + 8];
  *v22 = sub_1BD41D3D0;
  v22[1] = v13;
  sub_1BD0D4744(v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = &v21[qword_1EBD56248];
  v32 = *&v21[qword_1EBD56248];
  v33 = *&v21[qword_1EBD56248 + 8];
  v34 = v68;
  *v31 = v69;
  v31[1] = v34;
  sub_1BD0D4744(v32, v33, v35, v36, v37, v38, v39, v40);
  v41 = v76;
  LODWORD(v69) = v75;
  v42 = sub_1BE0501F4();
  v43 = v2 + *(v6 + 76);
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v45 = v20;
    v46 = sub_1BE050174();
    sub_1BE04CF84();

    v20 = v45;
    v47 = v65;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v44, 0, v48, v49, v50, v51, v52, v53);
    (*(v66 + 8))(v47, v67);
  }

  v54 = v70 ^ 1;
  sub_1BE04E1F4();
  *a1 = v21;
  *(a1 + 8) = 0;
  v55 = v86;
  v56 = v88;
  *(a1 + 80) = v87;
  *(a1 + 96) = v56;
  *(a1 + 112) = v89;
  v57 = v84;
  *(a1 + 16) = v83;
  *(a1 + 32) = v57;
  *(a1 + 48) = v85;
  *(a1 + 64) = v55;
  *(a1 + 113) = v20;
  *(a1 + 118) = v82;
  *(a1 + 114) = *&v81[7];
  v58 = v73;
  *(a1 + 120) = v74;
  *(a1 + 128) = v58;
  *(a1 + 136) = 1;
  *(a1 + 137) = *v81;
  *(a1 + 140) = *&v81[3];
  v59 = v71;
  *(a1 + 144) = v72;
  *(a1 + 152) = v59;
  *(a1 + 160) = 0;
  *(a1 + 168) = v41;
  *(a1 + 169) = v54;
  *(a1 + 170) = v79;
  *(a1 + 174) = v80;
  *(a1 + 176) = 0;
  *(a1 + 184) = v69;
  *(a1 + 192) = v42;
  *(a1 + 200) = v60;
  *(a1 + 208) = v61;
  *(a1 + 216) = v62;
  *(a1 + 224) = v63;
  *(a1 + 232) = 0;
}

void sub_1BD41A3F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v2 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E69BABE8];
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  *(inited + 56) = *MEMORY[0x1E69BABE8];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v2;
  v8 = v4;
  sub_1BE048C84();
  v9 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v10 = *(v0 + 8);
  if ([v10 type] == 1)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v10;
    }

    v13 = *v0;
    v14 = *MEMORY[0x1E69BA9C0];
    v15 = [v13 ineligibleDetailsForCriteria_];
    v16 = [v15 analyticsValue];

    v17 = sub_1BE052434();
    v19 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v17, v19, v14, isUniquelyReferenced_nonNull_native);

    v21 = v9;
    v22 = *MEMORY[0x1E69BAA28];
    v23 = *MEMORY[0x1E69BAA28];
    if (v11)
    {
      v24 = [v11 issuerName];
      v25 = sub_1BE052434();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD1DAE70(v25, v27, v22, v28);

    v9 = v21;
  }

  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BE0B98E0;
  v31 = *MEMORY[0x1E69BB6E0];
  v32 = *MEMORY[0x1E69BB6C0];
  *(v30 + 32) = *MEMORY[0x1E69BB6E0];
  *(v30 + 40) = v32;
  v33 = *MEMORY[0x1E69BB6F8];
  v34 = *MEMORY[0x1E69BB728];
  *(v30 + 48) = *MEMORY[0x1E69BB6F8];
  *(v30 + 56) = v34;
  type metadata accessor for PKAnalyticsSubject(0);
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  v39 = sub_1BE052724();
  v30, v40, v41, v42, v43, v44, v45, v46;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD41D8A8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v47 = sub_1BE052224();
  v9, v48, v49, v50, v51, v52, v53, v54;
  [v29 subjects:v39 sendEvent:v47];
}

void sub_1BD41A768(uint64_t result)
{
  v1 = *(result + 192);
  if (v1)
  {
    v2 = *(result + 200);
    v3 = sub_1BE048964();
    v1(v3);

    sub_1BD0D4744(v1, v2, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_1BD41A7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE0, &unk_1BE104F90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - v6;
  v8 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E28, &unk_1BE0B99D0);
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C78, &unk_1BE0D5470);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - v16;
  if (*(a1 + 184) == 1)
  {
    v18 = sub_1BE04FB04();
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v18);
    v29 = v7;
    v30 = a2;
    v28[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68, &unk_1BE0B99F0);
    v28[0] = v9;
    sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68, &unk_1BE0B99F0, MEMORY[0x1E697D680]);
    v19 = v31;
    sub_1BE04E424();
    v20 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
    v21 = v29;
    v22 = v28[0];
    MEMORY[0x1BFB3CC50](v19, v28[0], v20);
    (*(v5 + 16))(v13, v21, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    v33 = v22;
    v34 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v13, v4, OpaqueTypeConformance2);
    sub_1BD068360(v13);
    (*(v5 + 8))(v21, v4);
    (*(v32 + 8))(v19, v22);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4, v15);
    v24 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
    v33 = v9;
    v34 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1BFB3CC80](v13, v4, v25);
    sub_1BD068360(v13);
  }

  v26 = sub_1BD41D104();
  MEMORY[0x1BFB3CC50](v17, v11, v26);
  return sub_1BD068360(v17);
}

uint64_t sub_1BD41AC5C(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD41D840(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD2141B8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78, &unk_1BE0B9A00);
  sub_1BD12DFE4();
  return sub_1BE051704();
}

id sub_1BD41AE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD41AFB0()
{
  v1 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  if (v7)
  {
    v8 = *(v0 + 104);
    sub_1BE048964();
    v9 = 0;
    if (v6)
    {
LABEL_3:
      v119 = v6;
      sub_1BE048964();
      v10 = sub_1BE0518D4();
      v6, v11, v12, v13, v14, v15, v16, v17;

      return v10;
    }
  }

  else
  {
    v113 = v5;
    v114 = (&v112 - v4);
    v115 = v3;
    v18 = *(v0 + 88);
    v19 = *(v0 + 64);
    v117 = *(v0 + 72);
    v20 = *(v0 + 48);
    v116 = *(v0 + 56);
    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 24);
    v119 = *(v0 + 16);
    v9 = v119;
    v120 = v23;
    v121 = v22;
    v122 = v21;
    v123 = v20;
    v124 = v116;
    v125 = v19;
    v126 = v117;
    v127 = v6;
    v128 = v18;
    v129 = v7;
    sub_1BD0DE19C(&v119, v118, &qword_1EBD45C90, &unk_1BE0D5488);
    v22, v24, v25, v26, v27, v28, v29, v30;
    v20, v31, v32, v33, v34, v35, v36, v37;
    v19, v38, v39, v40, v41, v42, v43, v44;
    v6, v45, v46, v47, v48, v49, v50, v51;
    v18, v52, v53, v54, v55, v56, v57, v58;
    v119 = v9;
    v120 = v23;
    v121 = v22;
    v122 = v21;
    v123 = v20;
    v124 = v116;
    v125 = v19;
    v126 = v117;
    v127 = v6;
    v128 = v18;
    v129 = v7;
    sub_1BD0DE19C(&v119, v118, &qword_1EBD45C90, &unk_1BE0D5488);

    v22, v59, v60, v61, v62, v63, v64, v65;
    v20, v66, v67, v68, v69, v70, v71, v72;
    v19, v73, v74, v75, v76, v77, v78, v79;
    v6, v80, v81, v82, v83, v84, v85, v86;
    v8 = *(v0 + 104);
    if (v9)
    {
      v87 = *(v0 + 8);
      v88 = [v9 systemIcon];
      if (v88)
      {
        v10 = v88;

        v18, v89, v90, v91, v92, v93, v94, v95;
        return v10;
      }

      v96 = [v9 iconURL];
      if (v96)
      {
        v97 = v96;
        v98 = v87;
        if ([v98 type] == 1)
        {
          objc_opt_self();
          v99 = swift_dynamicCastObjCClass();
          if (v99)
          {
            v100 = v99;
            v101 = *(v115 + 28);
            KeyPath = swift_getKeyPath();
            v103 = v114;
            *(v114->i64 + v101) = KeyPath;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
            swift_storeEnumTagMultiPayload();
            v103->i64[0] = v97;
            v103->i64[1] = v100;
            v103[1] = vdupq_n_s64(0x4051800000000000uLL);
            sub_1BD41D840(v103, v113, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
            sub_1BD41D8A8(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView, &unk_1BE0F0928);
            v10 = sub_1BE0518D4();

            v18, v104, v105, v106, v107, v108, v109, v110;
            sub_1BD23FB50(v103);
            return v10;
          }
        }
      }
    }

    v6 = v18;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  if (v8)
  {
    v10 = [v8 paymentPass];
  }

  else
  {

    return 0;
  }

  return v10;
}

id sub_1BD41B390()
{
  v1 = *(v0 + 144);
  if ((v1 - 2) < 5 || (v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 96);
    if (v4)
    {
      if (v2)
      {
        sub_1BE048C84();
        return v3;
      }
    }

    else
    {
      v7 = *(v0 + 80);
      v6 = *(v0 + 88);
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 24);
      v52[0] = *(v0 + 16);
      v11 = v52[0];
      v52[1] = v10;
      v52[2] = v9;
      v52[3] = v8;
      v52[4] = v3;
      v52[5] = v2;
      v53 = *(v0 + 64);
      v50 = v53;
      v54 = v7;
      v55 = v6;
      v56 = v4;
      sub_1BD0DE19C(v52, v51, &qword_1EBD45C90, &unk_1BE0D5488);
      v9, v12, v13, v14, v15, v16, v17, v18;
      v3, v19, v20, v21, v22, v23, v24, v25;
      v50, v26, v27, v28, v29, v30, v31, v32;
      v7, v33, v34, v35, v36, v37, v38, v39;
      v6, v40, v41, v42, v43, v44, v45, v46;
      v47 = [v11 primaryActionTitle];
      if (v47)
      {
        v48 = v47;
        v49 = sub_1BE052434();

        return v49;
      }
    }
  }

  return sub_1BD41BE2C(*(v0 + 112), *(v0 + 120), v1);
}

id sub_1BD41B4C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 96);
  if (v3)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    sub_1BE048C84();
  }

  else
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 24);
    v60[0] = *(v0 + 16);
    v16 = v60[0];
    v60[1] = v15;
    v60[2] = v14;
    v60[3] = v13;
    v61 = *(v0 + 48);
    v58 = v61;
    v62 = v1;
    v63 = v2;
    v64 = v12;
    v65 = v11;
    v66 = v3;
    sub_1BD0DE19C(v60, v59, &qword_1EBD45C90, &unk_1BE0D5488);
    v14, v17, v18, v19, v20, v21, v22, v23;
    v58, v24, v25, v26, v27, v28, v29, v30;
    v1, v31, v32, v33, v34, v35, v36, v37;
    v12, v38, v39, v40, v41, v42, v43, v44;
    v11, v45, v46, v47, v48, v49, v50, v51;
    v52 = [v16 secondaryActionTitle];
    if (!v52)
    {

LABEL_10:
      v56 = *(v0 + 145);
      if (v56 == 7)
      {
        return 0;
      }

      else
      {
        return sub_1BD41BE2C(*(v0 + 112), *(v0 + 120), v56);
      }
    }

    v53 = v52;
    v1 = sub_1BE052434();
    v2 = v54;
  }

  v55 = *(v0 + 145);
  if (v55 - 2) >= 6 && (v55)
  {
    v2, v4, v5, v6, v7, v8, v9, v10;
    goto LABEL_10;
  }

  return v1;
}

void (*sub_1BD41B618())()
{
  v1 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v60 - v5;
  v7 = *(v0 + 96);
  if ((v7 & 1) != 0 || (v9 = *(v0 + 80), v8 = *(v0 + 88), v11 = *(v0 + 32), v10 = *(v0 + 40), v12 = *(v0 + 24), v63[0] = *(v0 + 16), v13 = v63[0], v63[1] = v12, v63[2] = v11, v63[3] = v10, v14 = *(v0 + 64), v60 = *(v0 + 48), v61 = v14, v64 = v60, v65 = v14, v66 = v9, v67 = v8, v68 = v7, sub_1BD0DE19C(v63, v62, &qword_1EBD45C90, &unk_1BE0D5488), v11, v15, v16, v17, v18, v19, v20, v21, v60, v22, v23, v24, v25, v26, v27, v28, v61, v29, v30, v31, v32, v33, v34, v35, v9, v36, v37, v38, v39, v40, v41, v42, v8, v43, v44, v45, v46, v47, v48, v49, v50 = [v13 secondaryActionDetails], v13, !v50))
  {
    v53 = 0;
  }

  else
  {
    v51 = v50;
    v52 = [v51 linkURL];
    v53 = v52 != 0;
    if (v52)
    {
      v54 = v52;
      sub_1BE04A9F4();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = sub_1BE04AA64();
    (*(*(v56 - 8) + 56))(v6, v55, 1, v56);
    sub_1BD0DE53C(v6, &unk_1EBD3CF70, &qword_1BE0BA000);
    if (v53)
    {
      goto LABEL_10;
    }
  }

  if (*(v0 + 145) == 7)
  {
    return 0;
  }

LABEL_10:
  sub_1BD41D840(v0, &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v58 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v59 = swift_allocObject();
  sub_1BD2141B8(&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v59 + v58);
  *(v59 + v58 + v3) = v53;
  return sub_1BD41D6E8;
}

double sub_1BD41B90C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 96);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
LABEL_7:
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_10;
  }

  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v13 = *(v1 + 32);
  v12 = *(v1 + 40);
  v14 = *(v1 + 24);
  v87[0] = *(v1 + 16);
  v15 = v87[0];
  v87[1] = v14;
  v87[2] = v13;
  v87[3] = v12;
  v16 = *(v1 + 64);
  v82 = *(v1 + 48);
  v83 = v16;
  v88 = v82;
  v89 = v16;
  v90 = v11;
  v91 = v10;
  v92 = v7;
  sub_1BD0DE19C(v87, aBlock, &qword_1EBD45C90, &unk_1BE0D5488);
  v13, v17, v18, v19, v20, v21, v22, v23;
  v82, v24, v25, v26, v27, v28, v29, v30;
  v83, v31, v32, v33, v34, v35, v36, v37;
  v11, v38, v39, v40, v41, v42, v43, v44;
  v10, v45, v46, v47, v48, v49, v50, v51;
  v9 = [v15 footerContent];

  if (!v9)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v52 = v9;
  v9 = PKOBKTextAlignment();
  sub_1BD41D840(v1, &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferActionExplanationView);
  v53 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v54 = swift_allocObject();
  sub_1BD2141B8(v6, v54 + v53);
  v55 = objc_opt_self();
  v56 = swift_allocObject();
  v56[3] = 0;
  v56[4] = 0;
  v56[2] = 0;
  v56[5] = sub_1BD41D678;
  v56[6] = v54;
  aBlock[4] = sub_1BD3A376C;
  v86 = v56;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD198918;
  aBlock[3] = &block_descriptor_90;
  v57 = _Block_copy(aBlock);
  v58 = v86;
  sub_1BE048964();
  v58, v59, v60, v61, v62, v63, v64, v65;
  v66 = [v55 hyperlinkSourcesFromApplyFooter:v52 linkTapped:v57];
  _Block_release(v57);
  if (v66)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43EA8, off_1E8006508);
    v8 = sub_1BE052744();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v71 = [v52 footerText];
  v67 = sub_1BE052434();
  v68 = v72;

  v54, v73, v74, v75, v76, v77, v78, v79;
  v80 = sub_1BE050204();

  LOBYTE(aBlock[0]) = 0;
  v69 = 1;
  v84 = 1;
  v70 = v80;
LABEL_10:
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = v67;
  *(a1 + 32) = v68;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v70;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = v69;
  return result;
}

uint64_t sub_1BD41BC98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BE04AA64();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  type metadata accessor for PaymentOfferActionExplanationView(0);
  sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
}

id sub_1BD41BE2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v18;
  v21 = *(v5 + 104);
  if (a3 <= 4u)
  {
    if (a3 == 3)
    {
      (v21)(v16, *MEMORY[0x1E69B80D8], v4, v19.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v23 = result;
        v24 = sub_1BE04B6E4();
        v20 = v16;
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (a3 == 4)
    {
      (v21)(v13, *MEMORY[0x1E69B8068], v4, v19.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v23 = result;
        v24 = sub_1BE04B6E4();
        v20 = v13;
LABEL_16:

        (*(v5 + 8))(v20, v4);
        return v24;
      }

      goto LABEL_18;
    }

LABEL_10:
    v21(&v25 - v18, *MEMORY[0x1E69B80D8], v4, v19);
    result = PKPassKitBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_1BE04B6E4();
      goto LABEL_16;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 != 5)
  {
    if (a3 == 6)
    {
      (v21)(v7, *MEMORY[0x1E69B8078], v4, v19.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v23 = result;
        v24 = sub_1BE04B6E4();
        v20 = v7;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    goto LABEL_10;
  }

  (v21)(v10, *MEMORY[0x1E69B8078], v4, v19.n128_f64[0]);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6E4();
    v20 = v10;
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1BD41C200(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v100 - v7;
  sub_1BD41C54C();
  v9 = *(a1 + 96);
  if ((v9 & 1) == 0)
  {
    v11 = *(a1 + 80);
    v10 = *(a1 + 88);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(a1 + 24);
    v109[0] = *(a1 + 16);
    v15 = v109[0];
    v109[1] = v14;
    v109[2] = v13;
    v109[3] = v12;
    v16 = *(a1 + 64);
    v100 = *(a1 + 48);
    v101 = v16;
    v110 = v100;
    v111 = v16;
    v112 = v11;
    v113 = v10;
    v114 = v9;
    sub_1BD0DE19C(v109, v103, &qword_1EBD45C90, &unk_1BE0D5488);
    v13, v17, v18, v19, v20, v21, v22, v23;
    v100, v24, v25, v26, v27, v28, v29, v30;
    v101, v31, v32, v33, v34, v35, v36, v37;
    v11, v38, v39, v40, v41, v42, v43, v44;
    v10, v45, v46, v47, v48, v49, v50, v51;
    v52 = [v15 primaryActionDetails];

    if (v52)
    {
      v53 = v52;
      v54 = [v53 linkURL];
      if (v54)
      {
        v55 = v54;
        sub_1BE04A9F4();

        (*(v3 + 32))(v8, v5, v2);
        (*(v3 + 56))(v8, 0, 1, v2);
        sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);

        v56 = *(a1 + 96);
        if ((v56 & 1) == 0)
        {
          v58 = *(a1 + 80);
          v57 = *(a1 + 88);
          v60 = *(a1 + 32);
          v59 = *(a1 + 40);
          v61 = *(a1 + 24);
          v103[0] = *(a1 + 16);
          v62 = v103[0];
          v103[1] = v61;
          v103[2] = v60;
          v103[3] = v59;
          v63 = *(a1 + 64);
          v100 = *(a1 + 48);
          v101 = v63;
          v104 = v100;
          v105 = v63;
          v106 = v58;
          v107 = v57;
          v108 = v56;
          sub_1BD0DE19C(v103, &v102, &qword_1EBD45C90, &unk_1BE0D5488);
          v60, v64, v65, v66, v67, v68, v69, v70;
          v100, v71, v72, v73, v74, v75, v76, v77;
          v101, v78, v79, v80, v81, v82, v83, v84;
          v58, v85, v86, v87, v88, v89, v90, v91;
          v57, v92, v93, v94, v95, v96, v97, v98;
          v99 = [v62 primaryActionDetails];

          if (v99)
          {
            sub_1BD41C794(v99);

            return;
          }
        }
      }

      else
      {

        (*(v3 + 56))(v8, 1, 1, v2);
        sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
      }
    }
  }

  (*(a1 + 128))(*(a1 + 144));
}

void sub_1BD41C54C()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0B98E0;
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BB6C0];
  *(v2 + 32) = *MEMORY[0x1E69BB6E0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E69BB6F8];
  v6 = *MEMORY[0x1E69BB728];
  *(v2 + 48) = *MEMORY[0x1E69BB6F8];
  *(v2 + 56) = v6;
  type metadata accessor for PKAnalyticsSubject(0);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = sub_1BE052724();
  v2, v12, v13, v14, v15, v16, v17, v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v20 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v21;
  v22 = *MEMORY[0x1E69BA440];
  v23 = v0[21];
  v24 = v0[22];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = v23;
  v25 = *MEMORY[0x1E69BABE8];
  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v26 = v0[19];
  v27 = v0[20];
  *(inited + 88) = v26;
  *(inited + 96) = v27;
  v28 = v20;
  v29 = v22;
  sub_1BE048C84();
  v30 = v25;
  sub_1BE048C84();
  v31 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD41D8A8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v32 = sub_1BE052224();
  v31, v33, v34, v35, v36, v37, v38, v39;
  [v1 subjects:v11 sendEvent:v32];
}

id sub_1BD41C794(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v30 - v18;
  v20 = a1;
  v21 = [v20 linkURL];
  if (v21)
  {
    v30[1] = v2;
    v22 = v21;
    sub_1BE04A9F4();

    (*(v11 + 56))(v19, 0, 1, v10);
    sub_1BD0DE53C(v19, &unk_1EBD3CF70, &qword_1BE0BA000);
    result = [v20 linkURL];
    if (result)
    {
      v24 = result;
      sub_1BE04A9F4();

      (*(v11 + 32))(v16, v13, v10);
      v25 = [v20 behavior];
      if (v25 == 1)
      {
        v27 = [objc_opt_self() defaultWorkspace];
        if (v27)
        {
          v28 = v27;
          v29 = sub_1BE04A9C4();
          [v28 openSensitiveURL:v29 withOptions:0];
        }
      }

      else if (!v25)
      {
        (*(v11 + 16))(v9, v16, v10);
        v26 = type metadata accessor for MultiHyperLinkDetailSheet(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
        type metadata accessor for PaymentOfferActionExplanationView(0);
        sub_1BD0DE19C(v9, v6, &unk_1EBD45160, &qword_1BE0C25A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
        sub_1BE0516B4();
        sub_1BD0DE53C(v9, &unk_1EBD45160, &qword_1BE0C25A0);
      }

      return (*(v11 + 8))(v16, v10);
    }
  }

  else
  {

    (*(v11 + 56))(v19, 1, 1, v10);
    return sub_1BD0DE53C(v19, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  return result;
}

void sub_1BD41CB9C(uint64_t a1, char a2)
{
  sub_1BD41CCB4(MEMORY[0x1E69BB1A0]);
  if ((a2 & 1) != 0 && (v4 = *(a1 + 96), (v4 & 1) == 0) && (v6 = *(a1 + 80), v5 = *(a1 + 88), v8 = *(a1 + 32), v7 = *(a1 + 40), v9 = *(a1 + 24), v50[0] = *(a1 + 16), v10 = v50[0], v50[1] = v9, v50[2] = v8, v50[3] = v7, v48 = *(a1 + 64), v51 = *(a1 + 48), v47 = v51, v52 = v48, v53 = v6, v54 = v5, v55 = v4, sub_1BD0DE19C(v50, v49, &qword_1EBD45C90, &unk_1BE0D5488), v8, v11, v12, v13, v14, v15, v16, v17, v47, v18, v19, v20, v21, v22, v23, v24, v48, v25, v26, v27, v28, v29, v30, v31, v6, v32, v33, v34, v35, v36, v37, v38, v5, v39, v40, v41, v42, v43, v44, v45, v46 = [v10 secondaryActionDetails], v10, v46))
  {
    sub_1BD41C794(v46);
  }

  else if (*(a1 + 145) != 7)
  {
    (*(a1 + 128))();
  }
}

void sub_1BD41CCB4(void *a1)
{
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B98E0;
  v4 = *MEMORY[0x1E69BB6E0];
  v5 = *MEMORY[0x1E69BB6C0];
  *(v3 + 32) = *MEMORY[0x1E69BB6E0];
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x1E69BB6F8];
  v7 = *MEMORY[0x1E69BB728];
  *(v3 + 48) = *MEMORY[0x1E69BB6F8];
  *(v3 + 56) = v7;
  type metadata accessor for PKAnalyticsSubject(0);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = sub_1BE052724();
  v3, v13, v14, v15, v16, v17, v18, v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v21 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v22;
  v23 = *MEMORY[0x1E69BA440];
  *(inited + 56) = *MEMORY[0x1E69BA440];
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v24;
  v25 = *MEMORY[0x1E69BABE8];
  v26 = *(v1 + 152);
  v27 = *(v1 + 160);
  *(inited + 80) = *MEMORY[0x1E69BABE8];
  *(inited + 88) = v26;
  *(inited + 96) = v27;
  v28 = v21;
  v29 = v23;
  v30 = v25;
  sub_1BE048C84();
  v31 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD41D8A8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v32 = sub_1BE052224();
  v31, v33, v34, v35, v36, v37, v38, v39;
  [v2 subjects:v12 sendEvent:v32];
}

unint64_t sub_1BD41CF04()
{
  result = qword_1EBD45C40;
  if (!qword_1EBD45C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38, &unk_1BE0D5448);
    sub_1BD41CFC0();
    sub_1BD41D8A8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C40);
  }

  return result;
}

unint64_t sub_1BD41CFC0()
{
  result = qword_1EBD45C48;
  if (!qword_1EBD45C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C50, &qword_1BE0D5458);
    sub_1BD41D04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C48);
  }

  return result;
}

unint64_t sub_1BD41D04C()
{
  result = qword_1EBD45C58;
  if (!qword_1EBD45C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C60, &unk_1BE0D5460);
    sub_1BD0DE4F4(&qword_1EBD45C68, &qword_1EBD45C70, &qword_1BE105060, &unk_1BE0F0C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C58);
  }

  return result;
}

unint64_t sub_1BD41D104()
{
  result = qword_1EBD45C80;
  if (!qword_1EBD45C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78, &unk_1BE0D5470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E28, &unk_1BE0B99D0);
    sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45C80);
  }

  return result;
}

void sub_1BD41D21C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, char a11)
{
  if (a11)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v14, v15, v16, v17, v18, v19, v20;
    a6, v21, v22, v23, v24, v25, v26, v27;
    a8, v28, v29, v30, v31, v32, v33, v34;
    v42 = a9;
  }

  else
  {
    v42 = a10;

    a3, v46, v47, v48, v49, v50, v51, v52;
    a5, v53, v54, v55, v56, v57, v58, v59;
    a7, v60, v61, v62, v63, v64, v65, v66;
    a9, v67, v68, v69, v70, v71, v72, v73;
  }

  v42, v35, v36, v37, v38, v39, v40, v41;
}

uint64_t sub_1BD41D35C()
{
  v1 = *(type metadata accessor for PaymentOfferActionExplanationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1BD41CCB4(MEMORY[0x1E69BA468]);
  return (*(v2 + 128))(4);
}

uint64_t sub_1BD41D3E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentOfferActionExplanationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_1BD41D21C(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
  *(v2 + 120), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 136), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 160), v17, v18, v19, v20, v21, v22, v23;
  *(v2 + 176), v24, v25, v26, v27, v28, v29, v30;
  if (*(v2 + 192))
  {
    *(v2 + 200), v31, v32, v33, v34, v35, v36, v37;
  }

  v38 = (v2 + v1[15]);
  v39 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = sub_1BE04AA64();
      (*(*(v40 - 8) + 8))(v38, v40);
    }

    else
    {

      v38[2], v41, v42, v43, v44, v45, v46, v47;
    }
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v38 + *(v48 + 28)), v49, v50, v51, v52, v53, v54, v55;
  v56 = (v2 + v1[16]);
  *v56, v57, v58, v59, v60, v61, v62, v63;
  v56[1], v64, v65, v66, v67, v68, v69, v70;
  sub_1BD0D4604(*(v2 + v1[17]), *(v2 + v1[17] + 8), v71, v72, v73, v74, v75, v76);

  return swift_deallocObject();
}

uint64_t sub_1BD41D678(uint64_t a1)
{
  type metadata accessor for PaymentOfferActionExplanationView(0);

  return sub_1BD41BC98(a1);
}

void sub_1BD41D6E8()
{
  v1 = *(type metadata accessor for PaymentOfferActionExplanationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_1BD41CB9C(v2, v3);
}

uint64_t sub_1BD41D768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD41D840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD41D8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD41D900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_1BD41D948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

unint64_t sub_1BD41D9C0()
{
  result = qword_1EBD45CA0;
  if (!qword_1EBD45CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45CA8, &unk_1BE0D5600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C08, &qword_1BE0D5420);
    sub_1BE04FE84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C00, &qword_1BE0D5418);
    sub_1BD0DE4F4(&qword_1EBD45C18, &qword_1EBD45C00, &qword_1BE0D5418, MEMORY[0x1E697C1A8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD41D8A8(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C20, &qword_1BE0D5430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C28, &qword_1BE0D5438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C30, &qword_1BE0D5440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C38, &unk_1BE0D5448);
    type metadata accessor for MultiHyperLinkDetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    sub_1BD41CF04();
    sub_1BD41D8A8(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45C78, &unk_1BE0D5470);
    sub_1BD41D104();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45CA0);
  }

  return result;
}

uint64_t sub_1BD41DD48(uint64_t a1)
{
  result = type metadata accessor for FinanceKitTransactionIcon.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD41DDDC(uint64_t a1)
{
  sub_1BD41DE58(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD41DE58(uint64_t a1)
{
  if (!qword_1EBD45CD8)
  {
    sub_1BE0491F4();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD45CD8);
    }
  }
}

unint64_t sub_1BD41DEC4()
{
  result = qword_1EBD45CE0;
  if (!qword_1EBD45CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45CE0);
  }

  return result;
}

uint64_t sub_1BD41DF34@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v119 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CE8, &qword_1BE0D5700);
  MEMORY[0x1EEE9AC00](v118);
  v4 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v102 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CF0, &qword_1BE0D5708);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v102 - v7;
  v114 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v114);
  v110 = (&v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v108 = (&v102 - v10);
  v112 = sub_1BE051584();
  v11 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CF8, &unk_1BE0D5710);
  MEMORY[0x1EEE9AC00](v115);
  v107 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v102 - v18;
  v20 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE0491F4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v28 = a1;
  v30 = v29;
  sub_1BD41EA64(v28, v23);
  sub_1BD0DE204(&v23[*(v21 + 28)], v19, &qword_1EBD45CC0, &qword_1BE0D5630);
  if ((*(v25 + 48))(v19, 1, v30) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD45CC0, &qword_1BE0D5630);
LABEL_7:
    v59 = sub_1BE051574();
    v60 = v112;
    (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v112);
    v109 = sub_1BE0515E4();
    v59, v61, v62, v63, v64, v65, v66, v67;
    (*(v11 + 8))(v13, v60);
    LODWORD(v59) = *v113;
    sub_1BE051CD4();
    if (v59)
    {
      v68 = 10.0;
    }

    else
    {
      v68 = 5.0;
    }

    sub_1BE04E5E4();
    v69 = v123;
    v70 = v124;
    v71 = v125;
    v72 = v126;
    v73 = v127;
    v113 = v128;
    v74 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v122 = v70;
    v121 = v72;
    v120 = 0;
    v83 = *(v114 + 20);
    v84 = *MEMORY[0x1E697F468];
    v85 = sub_1BE04F684();
    v86 = v110;
    (*(*(v85 - 8) + 104))(v110 + v83, v84, v85);
    *v86 = v68;
    v86[1] = v68;
    v87 = &v4[*(v118 + 36)];
    sub_1BD1E4AAC(v86, v87);
    *(v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
    *v4 = v109;
    *(v4 + 1) = v69;
    v4[16] = v70;
    *(v4 + 3) = v71;
    v4[32] = v72;
    v88 = v113;
    *(v4 + 5) = v73;
    *(v4 + 6) = v88;
    v4[56] = v74;
    *(v4 + 8) = v76;
    *(v4 + 9) = v78;
    *(v4 + 10) = v80;
    *(v4 + 11) = v82;
    v4[96] = 0;
    v89 = v111;
    sub_1BD0DE204(v4, v111, &qword_1EBD45CE8, &qword_1BE0D5700);
    sub_1BD0DE19C(v89, v117, &qword_1EBD45CE8, &qword_1BE0D5700);
    swift_storeEnumTagMultiPayload();
    sub_1BD41EB80(&qword_1EBD45D00, &qword_1EBD45CF8, &unk_1BE0D5710, sub_1BD41EAC8);
    sub_1BD41EB80(&qword_1EBD45D18, &qword_1EBD45CE8, &qword_1BE0D5700, sub_1BD41EC30);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v89, &qword_1EBD45CE8, &qword_1BE0D5700);
  }

  (*(v25 + 32))(v27, v19, v30);
  v31 = sub_1BE0491E4();
  v33 = v32;
  v34 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v35 = sub_1BE04AAB4();
  v36 = [v34 initWithData_];

  sub_1BD1245AC(v31, v33, v37, v38, v39, v40, v41, v42);
  if (!v36)
  {
    (*(v25 + 8))(v27, v30);
    goto LABEL_7;
  }

  v111 = v30;
  v110 = v36;
  v43 = sub_1BE051544();
  v44 = v112;
  (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v112);
  v104 = sub_1BE0515E4();
  v43, v45, v46, v47, v48, v49, v50, v51;
  (*(v11 + 8))(v13, v44);
  v52 = *v113;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v113 = v123;
  v53 = v124;
  v54 = v125;
  v55 = v126;
  v112 = v127;
  v103 = v128;
  v56 = sub_1BE0491C4();
  v106 = v25;
  v105 = v27;
  if (v56)
  {
    v57 = v56;
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    v58 = sub_1BE0511C4();
  }

  else
  {
    v58 = sub_1BE051404();
  }

  v91 = sub_1BE0501D4();
  v122 = v53;
  v121 = v55;
  if (v52)
  {
    v92 = 10.0;
  }

  else
  {
    v92 = 5.0;
  }

  v93 = *(v114 + 20);
  v94 = *MEMORY[0x1E697F468];
  v95 = sub_1BE04F684();
  v96 = v108;
  (*(*(v95 - 8) + 104))(v108 + v93, v94, v95);
  *v96 = v92;
  v96[1] = v92;
  v97 = v107;
  v98 = &v107[*(v115 + 36)];
  sub_1BD1E4AAC(v96, v98);
  *(v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
  v99 = v113;
  *v97 = v104;
  *(v97 + 8) = v99;
  *(v97 + 16) = v53;
  *(v97 + 24) = v54;
  *(v97 + 32) = v55;
  v100 = v103;
  *(v97 + 40) = v112;
  *(v97 + 48) = v100;
  *(v97 + 56) = v58;
  *(v97 + 64) = v91;
  v101 = v109;
  sub_1BD0DE204(v97, v109, &qword_1EBD45CF8, &unk_1BE0D5710);
  sub_1BD0DE19C(v101, v117, &qword_1EBD45CF8, &unk_1BE0D5710);
  swift_storeEnumTagMultiPayload();
  sub_1BD41EB80(&qword_1EBD45D00, &qword_1EBD45CF8, &unk_1BE0D5710, sub_1BD41EAC8);
  sub_1BD41EB80(&qword_1EBD45D18, &qword_1EBD45CE8, &qword_1BE0D5700, sub_1BD41EC30);
  sub_1BE04F9A4();

  sub_1BD0DE53C(v101, &qword_1EBD45CF8, &unk_1BE0D5710);
  return (*(v106 + 8))(v105, v111);
}

uint64_t sub_1BD41EA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD41EAC8()
{
  result = qword_1EBD45D08;
  if (!qword_1EBD45D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D10, &qword_1BE0D5720);
    sub_1BD1A3410();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D08);
  }

  return result;
}

uint64_t sub_1BD41EB80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD41EC30()
{
  result = qword_1EBD45D20;
  if (!qword_1EBD45D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D28, &qword_1BE0D5728);
    sub_1BD1A3410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D20);
  }

  return result;
}

unint64_t sub_1BD41ECBC()
{
  result = qword_1EBD45D30;
  if (!qword_1EBD45D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D38, &qword_1BE0D5730);
    sub_1BD41ED40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D30);
  }

  return result;
}

unint64_t sub_1BD41ED40()
{
  result = qword_1EBD45D40;
  if (!qword_1EBD45D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45D48, &qword_1BE0D5738);
    sub_1BD41EB80(&qword_1EBD45D00, &qword_1EBD45CF8, &unk_1BE0D5710, sub_1BD41EAC8);
    sub_1BD41EB80(&qword_1EBD45D18, &qword_1EBD45CE8, &qword_1BE0D5700, sub_1BD41EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D40);
  }

  return result;
}

uint64_t sub_1BD41EE24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BD41EE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1BD41EED8()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  v10 = [v1 eligibilityStatus];
  v11 = "TINUE_TO_PAY_IN_FULL_BUTTON";
  if (v10 > 3)
  {
    v12 = "DWARE_NOT_SUPPORTED";
    if (v10 == 5)
    {
      v11 = "_UNAVAILABLE_GENERIC_NO_MODEL";
    }

    v13 = v10 == 4;
  }

  else
  {
    if (v10 == 1)
    {
      return 0;
    }

    v12 = "_UNAVAILABLE_OS_NOT_SUPPORTED";
    v13 = v10 == 3;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = [v1 model];
  if (v15)
  {
    v23 = v15;
    v24 = sub_1BE052434();
    v26 = v25;

    (*(v3 + 104))(v9, *MEMORY[0x1E69B80D8], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BE0B69E0;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1BD110550();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    v28 = sub_1BE04B714();
    (v14 | 0x8000000000000000), v29, v30, v31, v32, v33, v34, v35;
    v27, v36, v37, v38, v39, v40, v41, v42;
    v5 = v9;
LABEL_14:
    (*(v3 + 8))(v5, v2);
    return v28;
  }

  (v14 | 0x8000000000000000), v16, v17, v18, v19, v20, v21, v22;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v44 = result;
    v28 = sub_1BE04B6F4();

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1BD41F1BC(void *a1, void *a2)
{
  sub_1BE053D04();
  result = [a1 identifier];
  if (result)
  {
    v5 = result;
    sub_1BE052434();
    v7 = v6;

    sub_1BE052524();
    v7, v8, v9, v10, v11, v12, v13, v14;
    sub_1BE053D24();
    if (a2)
    {
      v15 = a2;
      sub_1BE053084();
    }

    return sub_1BE053D64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD41F29C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_1BE052434();
    v6 = v5;

    sub_1BE052524();
    v6, v7, v8, v9, v10, v11, v12, v13;
    if (v2)
    {
      sub_1BE053D24();
      v14 = v2;
      sub_1BE053084();
    }

    else
    {
      sub_1BE053D24();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD41F380(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BE053D04();
  result = [v2 identifier];
  if (result)
  {
    v5 = result;
    sub_1BE052434();
    v7 = v6;

    sub_1BE052524();
    v7, v8, v9, v10, v11, v12, v13, v14;
    sub_1BE053D24();
    if (v3)
    {
      v15 = v3;
      sub_1BE053084();
    }

    return sub_1BE053D64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD41F43C(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD41F4A0()
{
  result = qword_1EBD45D50;
  if (!qword_1EBD45D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45D50);
  }

  return result;
}

unint64_t sub_1BD41F4F4(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = sub_1BE052434();
  v11 = v10;

  result = [a3 identifier];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1BE052434();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
    v11, v16, v17, v18, v19, v20, v21, v22;
    v15, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v24 = sub_1BE053B84();
    v11, v25, v26, v27, v28, v29, v30, v31;
    v15, v32, v33, v34, v35, v36, v37, v38;
    result = 0;
    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  result = (a2 | a4) == 0;
  if (a2)
  {
    if (a4)
    {
      sub_1BD3DE6D8();
      v46 = a4;
      v47 = a2;
      v48 = sub_1BE053074();

      return v48 & 1;
    }
  }

  return result;
}

id sub_1BD41F634(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    sub_1BE04B6F4();
    v10 = v9;

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    result = [a1 accountSuffix];
    if (result)
    {
      v12 = result;
      v13 = sub_1BE052434();
      v15 = v14;

      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1BD110550();
      *(v11 + 32) = v13;
      *(v11 + 40) = v15;
      v16 = sub_1BE052454();
      v10, v17, v18, v19, v20, v21, v22, v23;
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static PeerPaymentFraudUIFactory.fraudUIViewController(for:continuationHandler:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v182 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v174 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v174 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v174 - v16;
  v18 = sub_1BE04AA64();
  v180 = *(v18 - 8);
  v181 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v178 = (&v174 - v21);
  v22 = type metadata accessor for PeerPaymentFraudPageView(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v174 - v27;
  if (![a1 riskLevel])
  {
    a2(1);
    return;
  }

  v183 = a2;
  v184 = a3;
  v29 = [a1 dynamicFraudContent];
  if (!v29)
  {
    v36 = *MEMORY[0x1E69B8050];
    v37 = v182;
    v178 = v182[13];
    v178(v17, v36, v6);
    v38 = PKPassKitBundle();
    if (v38)
    {
      v28 = v38;
      v176 = sub_1BE04B6F4();
      v177 = v39;

      v40 = v37[1];
      v40(v17, v6);
      v178(v14, v36, v6);
      v41 = PKPassKitBundle();
      if (v41)
      {
        v28 = v41;
        v182 = sub_1BE04B6F4();
        v17 = v42;

        v40(v14, v6);
        v178(v11, v36, v6);
        v43 = PKPassKitBundle();
        if (v43)
        {
          v28 = v43;
          sub_1BE04B6F4();
          v175 = v44;

          v40(v11, v6);
          v178(v8, v36, v6);
          v45 = PKPassKitBundle();
          if (v45)
          {
            v46 = v45;
            v47 = sub_1BE04B6F4();
            v49 = v48;

            v40(v8, v6);
            v50 = v177;
            v51 = sub_1BE052404();
            v8 = v17;
            v17 = sub_1BE052404();
            v52 = [objc_opt_self() alertControllerWithTitle:v51 message:v17 preferredStyle:1];

            v53 = PKIsVision();
            v178 = v49;
            v174 = v47;
            if (!v53)
            {
              v50, v54, v55, v56, v57, v58, v59, v60;
              v8, v101, v102, v103, v104, v105, v106, v107;
              v81 = v175;
LABEL_25:
              v108 = swift_allocObject();
              v109 = v183;
              v110 = v184;
              v108[2] = v183;
              v108[3] = v110;
              sub_1BE048964();
              v111 = sub_1BE052404();
              v81, v112, v113, v114, v115, v116, v117, v118;
              v189 = sub_1BD19E0B8;
              v190 = v108;
              aBlock = MEMORY[0x1E69E9820];
              v186 = 1107296256;
              v187 = sub_1BD198918;
              v188 = &block_descriptor_91;
              v119 = _Block_copy(&aBlock);
              v190, v120, v121, v122, v123, v124, v125, v126;
              v127 = objc_opt_self();
              v128 = [v127 actionWithTitle:v111 style:2 handler:v119];
              _Block_release(v119);

              v129 = swift_allocObject();
              v129[2] = v109;
              v129[3] = v110;
              sub_1BE048964();
              v130 = v178;
              v131 = sub_1BE052404();
              v130, v132, v133, v134, v135, v136, v137, v138;
              v189 = sub_1BD1B5F6C;
              v190 = v129;
              aBlock = MEMORY[0x1E69E9820];
              v186 = 1107296256;
              v187 = sub_1BD198918;
              v188 = &block_descriptor_6;
              v139 = _Block_copy(&aBlock);
              v190, v140, v141, v142, v143, v144, v145, v146;
              v147 = [v127 actionWithTitle:v131 style:1 handler:v139];
              _Block_release(v139);

              [v52 addAction_];
              [v52 addAction_];
LABEL_30:

              return;
            }

            v61 = PKPassKitUIBundle();
            if (v61)
            {
              v69 = v61;
              v50, v62, v63, v64, v65, v66, v67, v68;
              v8, v70, v71, v72, v73, v74, v75, v76;
              v77 = sub_1BE052404();
              v78 = sub_1BE052404();
              v79 = [v69 URLForResource:v77 withExtension:{v78, v174}];

              if (v79)
              {
                v80 = v179;
                sub_1BE04A9F4();

                v79 = sub_1BE04A9C4();
                (*(v180 + 8))(v80, v181);
              }

              v81 = v175;
              v82 = PKUIScreenScale();
              v83 = PKUIImageFromPDF(v79, 64.0, 64.0, v82);

              v84 = [objc_opt_self() clearColor];
              v85 = PKUIImageWithBackgroundAndCornerRadius(v83, v84, 64.0, 64.0, 32.0);

              [v52 setImage_];
              goto LABEL_25;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  v31 = [v29 pages];
  if (v31)
  {
    v32 = v31;
    sub_1BD42069C();
    v33 = sub_1BE052744();

    v34 = v184;
    sub_1BE048964();
    PeerPaymentFraudPageView.init(pages:continuationHandler:)(v33, v183, v34, v28);
    sub_1BD4206E8(v28, v24);
    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45D58, &unk_1BE0D58B0));
    sub_1BE04F894();

    sub_1BD42074C(v28);
    return;
  }

  v86 = [v30 alertContent];
  v88 = v183;
  v87 = v184;
  if (!v86)
  {

    return;
  }

  v89 = v86;
  v90 = [v89 title];
  if (!v90)
  {
    goto LABEL_36;
  }

  v17 = v90;
  v28 = [v89 message];

  if (!v28)
  {
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v91 = [v89 confirmButtonTitle];
  if (!v91)
  {
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  v8 = v91;
  v92 = [v89 cancelButtonTitle];
  if (!v92)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  v182 = v92;
  v179 = v89;
  v93 = [objc_opt_self() alertControllerWithTitle:v17 message:v28 preferredStyle:1];

  if (!PKIsVision())
  {
LABEL_29:
    v152 = swift_allocObject();
    v152[2] = v88;
    v152[3] = v87;
    v189 = sub_1BD32990C;
    v190 = v152;
    aBlock = MEMORY[0x1E69E9820];
    v186 = 1107296256;
    v187 = sub_1BD198918;
    v188 = &block_descriptor_13;
    v153 = _Block_copy(&aBlock);
    v154 = v190;
    sub_1BE048964();
    v154, v155, v156, v157, v158, v159, v160, v161;
    v162 = objc_opt_self();
    v128 = [v162 actionWithTitle:v8 style:2 handler:v153];
    _Block_release(v153);

    v163 = swift_allocObject();
    v163[2] = v88;
    v163[3] = v87;
    v189 = sub_1BD1B6F78;
    v190 = v163;
    aBlock = MEMORY[0x1E69E9820];
    v186 = 1107296256;
    v187 = sub_1BD198918;
    v188 = &block_descriptor_20_0;
    v164 = _Block_copy(&aBlock);
    v165 = v190;
    sub_1BE048964();
    v165, v166, v167, v168, v169, v170, v171, v172;
    v173 = v182;
    v147 = [v162 actionWithTitle:v182 style:1 handler:v164];
    _Block_release(v164);

    [v93 addAction_];
    [v93 addAction_];

    goto LABEL_30;
  }

  v94 = PKPassKitUIBundle();
  if (v94)
  {
    v95 = v94;
    v96 = sub_1BE052404();
    v97 = sub_1BE052404();
    v98 = [v95 URLForResource:v96 withExtension:v97];

    if (v98)
    {
      v99 = v178;
      sub_1BE04A9F4();

      v100 = sub_1BE04A9C4();
      (*(v180 + 8))(v99, v181);
    }

    else
    {
      v100 = 0;
    }

    v148 = PKUIScreenScale();
    v149 = PKUIImageFromPDF(v100, 64.0, 64.0, v148);

    v150 = [objc_opt_self() clearColor];
    v151 = PKUIImageWithBackgroundAndCornerRadius(v149, v150, 64.0, 64.0, 32.0);

    [v93 setImage_];
    goto LABEL_29;
  }

LABEL_40:

  __break(1u);
}

id PeerPaymentFraudUIFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentFraudUIFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentFraudUIFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PeerPaymentFraudUIFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PeerPaymentFraudUIFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1BD42069C()
{
  result = qword_1EBD3FCF8;
  if (!qword_1EBD3FCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3FCF8);
  }

  return result;
}

uint64_t sub_1BD4206E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentFraudPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD42074C(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentFraudPageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD4207CC(void *a1, void (**a2)(void, void))
{
  v4 = sub_1BE04AA64();
  v213 = *(v4 - 8);
  v214 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v212 = v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v211 = v205 - v7;
  v8 = type metadata accessor for PeerPaymentFraudPageView(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v205 - v12);
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v215 = v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v205 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v205 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v205 - v24;
  v26 = swift_allocObject();
  v26[2] = a2;
  _Block_copy(a2);
  if (![a1 riskLevel])
  {
    a2[2](a2, 1);
    v26, v41, v42, v43, v44, v45, v46, v47;
    return;
  }

  v210 = a2;
  v216 = v26;
  v27 = [a1 dynamicFraudContent];
  if (!v27)
  {
    v48 = *MEMORY[0x1E69B8050];
    v10 = *(v15 + 104);
    (v10)(v25, v48, v14);
    v49 = PKPassKitBundle();
    if (v49)
    {
      v50 = v49;
      v209 = sub_1BE04B6F4();
      v211 = v51;

      a1 = *(v15 + 8);
      (a1)(v25, v14);
      (v10)(v22, v48, v14);
      v52 = PKPassKitBundle();
      if (v52)
      {
        v25 = v52;
        v208 = sub_1BE04B6F4();
        v54 = v53;

        (a1)(v22, v14);
        (v10)(v19, v48, v14);
        v55 = PKPassKitBundle();
        if (v55)
        {
          v25 = v55;
          v207 = sub_1BE04B6F4();
          v57 = v56;

          (a1)(v19, v14);
          v58 = v215;
          (v10)(v215, v48, v14);
          v59 = PKPassKitBundle();
          if (v59)
          {
            v60 = v59;
            v61 = sub_1BE04B6F4();
            v63 = v62;

            (a1)(v58, v14);
            v64 = v211;
            v25 = sub_1BE052404();
            a1 = sub_1BE052404();
            v65 = [objc_opt_self() alertControllerWithTitle:v25 message:a1 preferredStyle:1];

            v66 = PKIsVision();
            v205[1] = v61;
            v206 = v63;
            if ((v66 & 1) == 0)
            {
              v64, v67, v68, v69, v70, v71, v72, v73;
              v54, v119, v120, v121, v122, v123, v124, v125;
LABEL_25:
              v126 = swift_allocObject();
              v127 = v216;
              v126[2] = sub_1BD1B6B00;
              v126[3] = v127;
              sub_1BE048964();
              v128 = sub_1BE052404();
              v57, v129, v130, v131, v132, v133, v134, v135;
              v221 = sub_1BD32990C;
              v222 = v126;
              aBlock = MEMORY[0x1E69E9820];
              v218 = 1107296256;
              v219 = sub_1BD198918;
              v220 = &block_descriptor_31;
              v136 = _Block_copy(&aBlock);
              v222, v137, v138, v139, v140, v141, v142, v143;
              v144 = objc_opt_self();
              v145 = [v144 actionWithTitle:v128 style:2 handler:v136];
              _Block_release(v136);

              v146 = swift_allocObject();
              v146[2] = sub_1BD1B6B00;
              v146[3] = v127;
              sub_1BE048964();
              v147 = v206;
              v148 = sub_1BE052404();
              v147, v149, v150, v151, v152, v153, v154, v155;
              v221 = sub_1BD1B6F78;
              v222 = v146;
              aBlock = MEMORY[0x1E69E9820];
              v218 = 1107296256;
              v219 = sub_1BD198918;
              v220 = &block_descriptor_38_0;
              v156 = _Block_copy(&aBlock);
              v222, v157, v158, v159, v160, v161, v162, v163;
              v164 = [v144 actionWithTitle:v148 style:1 handler:v156];
              _Block_release(v156);

              [v65 addAction_];
              [v65 addAction_];
              v127, v165, v166, v167, v168, v169, v170, v171;
LABEL_30:

              return;
            }

            v74 = PKPassKitUIBundle();
            if (v74)
            {
              v82 = v74;
              v64, v75, v76, v77, v78, v79, v80, v81;
              v54, v83, v84, v85, v86, v87, v88, v89;
              v90 = sub_1BE052404();
              v91 = sub_1BE052404();
              v92 = [v82 URLForResource:v90 withExtension:v91];

              if (v92)
              {
                v93 = v212;
                sub_1BE04A9F4();

                v92 = sub_1BE04A9C4();
                (*(v213 + 8))(v93, v214);
              }

              v94 = PKUIScreenScale();
              v95 = PKUIImageFromPDF(v92, 64.0, 64.0, v94);

              v96 = [objc_opt_self() clearColor];
              v97 = PKUIImageWithBackgroundAndCornerRadius(v95, v96, 64.0, 64.0, 32.0);

              [v65 setImage_];
              goto LABEL_25;
            }

LABEL_35:
            _Block_release(v210);
            __break(1u);
LABEL_36:
            _Block_release(v210);
            __break(1u);
            goto LABEL_37;
          }

LABEL_34:
          _Block_release(v210);
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        _Block_release(v210);
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      _Block_release(v210);
      __break(1u);
    }

    _Block_release(v210);
    __break(1u);
    goto LABEL_33;
  }

  v28 = v27;
  v29 = [v27 pages];
  if (v29)
  {
    v30 = v29;
    sub_1BD42069C();
    v31 = sub_1BE052744();

    v32 = v216;
    sub_1BE048964();
    PeerPaymentFraudPageView.init(pages:continuationHandler:)(v31, sub_1BD1B6B00, v32, v13);
    sub_1BD4206E8(v13, v10);
    v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45D58, &unk_1BE0D58B0));
    sub_1BE04F894();

    sub_1BD42074C(v13);
    v32, v34, v35, v36, v37, v38, v39, v40;
    return;
  }

  v98 = [v28 alertContent];
  v106 = v216;
  if (!v98)
  {
    v216, v99, v100, v101, v102, v103, v104, v105;

    return;
  }

  v107 = v98;
  v108 = [v107 title];
  if (!v108)
  {
    goto LABEL_36;
  }

  a1 = v108;
  v10 = [v107 message];

  if (!v10)
  {
LABEL_37:
    _Block_release(v210);

    __break(1u);
    goto LABEL_38;
  }

  v109 = [v107 confirmButtonTitle];
  if (!v109)
  {
LABEL_38:
    _Block_release(v210);

    __break(1u);
    goto LABEL_39;
  }

  v25 = v109;
  v110 = [v107 cancelButtonTitle];
  if (!v110)
  {
LABEL_39:
    _Block_release(v210);

    __break(1u);
    goto LABEL_40;
  }

  v209 = v107;
  v215 = v110;
  v212 = v28;
  v111 = [objc_opt_self() alertControllerWithTitle:a1 message:v10 preferredStyle:1];

  if ((PKIsVision() & 1) == 0)
  {
LABEL_29:
    v176 = swift_allocObject();
    v176[2] = sub_1BD1B6B00;
    v176[3] = v106;
    v221 = sub_1BD32990C;
    v222 = v176;
    aBlock = MEMORY[0x1E69E9820];
    v218 = 1107296256;
    v219 = sub_1BD198918;
    v220 = &block_descriptor_45;
    v177 = _Block_copy(&aBlock);
    v178 = v222;
    sub_1BE048964();
    v178, v179, v180, v181, v182, v183, v184, v185;
    v186 = objc_opt_self();
    v145 = [v186 actionWithTitle:v25 style:2 handler:v177];
    _Block_release(v177);

    v187 = swift_allocObject();
    v187[2] = sub_1BD1B6B00;
    v187[3] = v106;
    v221 = sub_1BD1B6F78;
    v222 = v187;
    aBlock = MEMORY[0x1E69E9820];
    v218 = 1107296256;
    v219 = sub_1BD198918;
    v220 = &block_descriptor_52;
    v188 = _Block_copy(&aBlock);
    v189 = v222;
    sub_1BE048964();
    v189, v190, v191, v192, v193, v194, v195, v196;
    v197 = v215;
    v164 = [v186 actionWithTitle:v215 style:1 handler:v188];
    _Block_release(v188);

    [v111 addAction_];
    [v111 addAction_];
    v106, v198, v199, v200, v201, v202, v203, v204;

    goto LABEL_30;
  }

  v112 = PKPassKitUIBundle();
  if (v112)
  {
    v113 = v112;
    v114 = sub_1BE052404();
    v115 = sub_1BE052404();
    v116 = [v113 URLForResource:v114 withExtension:v115];

    if (v116)
    {
      v117 = v211;
      sub_1BE04A9F4();

      v118 = sub_1BE04A9C4();
      (*(v213 + 8))(v117, v214);
    }

    else
    {
      v118 = 0;
    }

    v106 = v216;
    v172 = PKUIScreenScale();
    v173 = PKUIImageFromPDF(v118, 64.0, 64.0, v172);

    v174 = [objc_opt_self() clearColor];
    v175 = PKUIImageWithBackgroundAndCornerRadius(v173, v174, 64.0, 64.0, 32.0);

    [v111 setImage_];
    goto LABEL_29;
  }

LABEL_40:
  _Block_release(v210);

  __break(1u);
}

void sub_1BD421620(uint64_t a1)
{
  sub_1BE04D8D4();
  if (v1 <= 0x3F)
  {
    sub_1BD4259F8(319);
    if (v2 <= 0x3F)
    {
      sub_1BD425A50();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD421798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v3 = *v2;
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v3;
  swift_unknownObjectRetain();
  v8 = v4;
  v9 = v5;

  return sub_1BE048964();
}

void sub_1BD421830(_OWORD *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
  v10 = *v9;
  v11 = *(v9 + 3);
  v12 = *(v9 + 4);
  v15 = v11;
  v13 = *(v9 + 5);
  v14 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v14;
  *(v9 + 2) = a1[2];
  v13, v11, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();
}

uint64_t sub_1BD4218E4(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  return v19;
}

uint64_t sub_1BD421998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1BE04D8C4();
}

void sub_1BD421A70(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD421B18(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1BE04D8C4();
}

id sub_1BD421D18()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1BD42432C();
  v5 = type metadata accessor for PaymentAuthorizationStateMachineWrapper(0, *((v2 & v1) + 0x50), v3, v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1BD421DB0(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = sub_1BE04D8D4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = &a1[*((*v2 & *a1) + 0x60)];
  v6 = *v5;
  v7 = *(v5 + 3);
  v8 = *(v5 + 4);
  *(v5 + 5), v9, v10, v11, v12, v13, v14, v15;

  swift_unknownObjectRelease();
  v16 = *((*v2 & *a1) + 0x68);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45E90, &unk_1BE0D5D60);
  (*(*(v17 - 8) + 8))(&a1[v16], v17);

  *&a1[*((*v2 & *a1) + 0x78) + 8], v18, v19, v20, v21, v22, v23, v24;
  *&a1[*((*v2 & *a1) + 0x80)], v25, v26, v27, v28, v29, v30, v31;

  *&a1[*((*v2 & *a1) + 0x90)], v32, v33, v34, v35, v36, v37, v38;
  v39 = *((*v2 & *a1) + 0xA8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D410, &qword_1BE0C1278);
  (*(*(v40 - 8) + 8))(&a1[v39], v40);

  v41 = *&a1[*((*v2 & *a1) + 0xD8)];
}

void sub_1BD4220A8()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (*(v0 + *(v1 + 0xC0)) == 1 || *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8)) == 1)
  {
    sub_1BE053994();
    __break(1u);
  }

  else
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    v3[2] = *(v1 + 80);
    v3[3] = v2;
    sub_1BE048964();
    sub_1BD4222AC(sub_1BD42D5A4, v3);
    v2, v4, v5, v6, v7, v8, v9, v10;

    v3, v11, v12, v13, v14, v15, v16, v17;
  }
}

void sub_1BD422250(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD422590(a1 & 1);
  }
}

void sub_1BD4222AC(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - v6;
  if ((sub_1BD42A44C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0));
  v9 = [v8 hostApplicationIdentifier];
  if (!v9)
  {
    sub_1BE052434();
    v22 = v15;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = sub_1BE052434();
  v13 = v12;

  v14 = sub_1BE052434();
  v22 = v15;
  if (!v13)
  {
LABEL_11:
    v22, v15, v16, v17, v18, v19, v20, v21;
    goto LABEL_12;
  }

  v23 = v14;
  if (v11 == v14 && v13 == v15)
  {
    goto LABEL_20;
  }

  v25 = sub_1BE053B84();
  v13, v26, v27, v28, v29, v30, v31, v32;
  v22, v33, v34, v35, v36, v37, v38, v39;
  if (v25)
  {
    goto LABEL_21;
  }

LABEL_12:
  v40 = [v8 bundleIdentifier];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1BE052434();
    v13 = v43;

    v44 = sub_1BE052434();
    v22 = v15;
    if (v13)
    {
      v23 = v44;
      if (v42 != v44 || v13 != v15)
      {
        v47 = sub_1BE053B84();
        v13, v48, v49, v50, v51, v52, v53, v54;
        v22, v55, v56, v57, v58, v59, v60, v61;
        if ((v47 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:
        a1(0);
        return;
      }

LABEL_20:
      v13, v15, v23, v17, v18, v19, v20, v21;
      v22, v62, v63, v64, v65, v66, v67, v68;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1BE052434();
    v22 = v15;
  }

  v22, v15, v45, v17, v18, v19, v20, v21;
LABEL_24:
  v69 = sub_1BE0528D4();
  (*(*(v69 - 8) + 56))(v7, 1, 1, v69);
  sub_1BE0528A4();
  v70 = v2;
  sub_1BE048964();
  v71 = sub_1BE052894();
  v72 = swift_allocObject();
  v73 = MEMORY[0x1E69E85E0];
  v72[2] = v71;
  v72[3] = v73;
  v72[4] = v70;
  v72[5] = a1;
  v72[6] = a2;
  v74 = sub_1BD122C00(0, 0, v7, &unk_1BE0D5BF8, v72);
  v74, v75, v76, v77, v78, v79, v80, v81;
}

void sub_1BD422590(char a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  if (a1)
  {
    if ((*(v1 + v4) & 1) == 0)
    {
      *(v1 + v4) = 1;
      [*(v1 + *((*v3 & *v1) + 0xD8)) setDelegate_];
      sub_1BD421798(&v37);
      v5 = v39;
      v6 = v37;
      v7 = v39;

      v36[0] = v38;
      sub_1BD0DE53C(v36, &qword_1EBD3D490, &unk_1BE0D42B0);

      v41, v8, v9, v10, v11, v12, v13, v14;
      sub_1BD424544(v5, 0, 0);
    }
  }

  else
  {
    *(v1 + v4) = 0;
    *(v1 + *((*v3 & *v1) + 0xC0)) = 1;
    v15 = *(v1 + *((*v3 & *v1) + 0xD8));
    [v15 setDelegate_];
    [v15 setModel_];
    *(*(v1 + *((*v3 & *v1) + 0x70)) + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8) = &off_1F3BA8E90;
    swift_unknownObjectWeakAssign();
    sub_1BD421798(v36);
    v16 = v36[5];
    sub_1BD0E66D0();

    v44 = v36[1];
    sub_1BD0DE53C(&v44, &qword_1EBD3D490, &unk_1BE0D42B0);
    v43 = v36[3];
    sub_1BD0DE53C(&v43, &qword_1EBD40150, &qword_1BE0C12A0);
    v17 = v36[4];
    v16, v18, v19, v20, v21, v22, v23, v24;

    [v15 start];
    sub_1BD421798(&v37);
    v25 = v39;
    v26 = v37;
    v27 = v39;

    v42 = v38;
    sub_1BD0DE53C(&v42, &qword_1EBD3D490, &unk_1BE0D42B0);

    v41, v28, v29, v30, v31, v32, v33, v34;
    sub_1BD424544(v25, 0, 0);

    sub_1BD422898();
    v35 = *((*v3 & *v2) + 0xB8);
    if (*(v2 + v35) == 1)
    {
      *(v2 + v35) = 0;
      sub_1BD423A40();
    }
  }
}

void sub_1BD422898()
{
  v1 = sub_1BE04A704();
  v129 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v126 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A20, &unk_1BE0F66E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v119 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v12 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v119 - v17);
  v19 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8));
  v20 = [v19 model];
  if (!v20)
  {
    return;
  }

  v125 = v1;
  v121 = v5;
  v130 = v20;
  v21 = [v20 paymentRequest];
  if (!v21)
  {
    v39 = v130;

    return;
  }

  v22 = v21;
  v127 = v19;
  v23 = [v19 model];
  if (!v23)
  {
    __break(1u);
    goto LABEL_53;
  }

  v24 = v23;
  v25 = [v23 paymentRequest];

  if (!v25)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v26 = [v25 requestType];

  v27 = v127;
  if ((v26 | 8) == 8)
  {
    *v18 = sub_1BD421770();
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v18, 1);
    sub_1BD42D548(v18);
  }

  v28 = [v22 requiredShippingContactFields];
  type metadata accessor for PKContactField(0);
  v30 = v29;
  v122 = sub_1BD42D500(&qword_1EBD35EE0, type metadata accessor for PKContactField, &unk_1BE0B362C);
  v31 = sub_1BE052A34();

  v128 = *MEMORY[0x1E69BB7D8];
  v32 = sub_1BD6CC0DC(v128, v31);
  v123 = v30;
  v124 = v31;
  if (v32)
  {
    v120 = v14;
    v33 = [v130 shippingAddress];
    sub_1BD0E5E8C(0, &qword_1EBD45E60, 0x1E696AEC0);
    v34 = sub_1BE0530A4();
    v119 = v22;
    if (v33)
    {
      v35 = v33;
      v36 = [v35 contactSource];
      if (v36 > 4)
      {
        v37 = @"none";
        v38 = @"none";
      }

      else
      {
        v37 = off_1E800FBF8[v36];
        v38 = off_1E800FC20[v36];
      }

      v40 = v37;
      v41 = v38;
      if (!v41)
      {
        goto LABEL_58;
      }

      v42 = v41;

      v34 = v42;
    }

    v43 = *MEMORY[0x1E69B9F80];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45E68, &qword_1BE0D5BD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0x656372756F73;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v34;
    v45 = v43;
    v46 = v34;
    v47 = sub_1BD1ACE64(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &unk_1EBD45E70, &unk_1BE0D5BE0);
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v48 = sub_1BE052224();
    v47, v49, v50, v51, v52, v53, v54, v55;
    MEMORY[0x1BFB41980](v45, v48);

    *v18 = v33;
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v18, 1);
    sub_1BD42D548(v18);
    v22 = v119;
    v14 = v120;
    v27 = v127;
    v31 = v124;
  }

  if ((sub_1BD6CC0DC(v128, v31) & 1) == 0)
  {
    if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7C0], v31))
    {
      v56 = [v27 model];
      if (!v56)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v57 = v56;
      v58 = [v56 shippingName];

      if (v58)
      {
        v59 = [v58 nameComponents];
        if (v59)
        {
          v60 = v59;
          sub_1BE04A6E4();

          v61 = 0;
        }

        else
        {
          v61 = 1;
        }

        v62 = v22;
        (*(v129 + 56))(v8, v61, 1, v125);
        sub_1BD36A448(v8, v11);
      }

      else
      {
        v62 = v22;
        (*(v129 + 56))(v11, 1, 1, v125);
      }

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70, &qword_1BE0D5BD0) + 48);
      sub_1BD0DE19C(v11, v18, &unk_1EBD52A20, &unk_1BE0F66E0);
      *(v18 + v63) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v18, 1);

      sub_1BD42D548(v18);
      sub_1BD0DE53C(v11, &unk_1EBD52A20, &unk_1BE0F66E0);
      v22 = v62;
      v27 = v127;
      v31 = v124;
    }

    if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7D0], v31))
    {
      v64 = [v27 model];
      if (!v64)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v65 = v64;
      v66 = [v64 shippingName];

      if (v66)
      {
        v67 = [v66 nameComponents];
        if (!v67)
        {
LABEL_61:
          __break(1u);
          return;
        }

        v68 = v67;
        v69 = v22;
        v70 = v126;
        sub_1BE04A6E4();

        v71 = v121;
        sub_1BE04A6C4();
        (*(v129 + 8))(v70, v125);
      }

      else
      {
        v69 = v22;
        v71 = v121;
        (*(v129 + 56))(v121, 1, 1, v125);
      }

      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A70, &qword_1BE0D5BD0) + 48);
      sub_1BD0DE19C(v71, v18, &unk_1EBD52A20, &unk_1BE0F66E0);
      *(v18 + v72) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v18, 1);

      sub_1BD42D548(v18);
      sub_1BD0DE53C(v71, &unk_1EBD52A20, &unk_1BE0F66E0);
      v22 = v69;
      v31 = v124;
    }
  }

  if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7C8], v31))
  {
    v73 = [v27 model];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 shippingPhone];

      *v18 = v75;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v18, 1);
      sub_1BD42D548(v18);
      goto LABEL_38;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_38:
  if (sub_1BD6CC0DC(*MEMORY[0x1E69BB7B8], v31))
  {
    v76 = [v27 model];
    if (v76)
    {
      v77 = v76;
      v78 = [v76 shippingEmail];

      *v18 = v78;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v18, 1);
      sub_1BD42D548(v18);
      goto LABEL_41;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_41:
  v79 = [v22 requiredBillingContactFields];
  v80 = sub_1BE052A34();

  if (sub_1BD6CC0DC(v128, v80))
  {
    *v18 = [v130 billingAddress];
    swift_storeEnumTagMultiPayload();
    sub_1BD6B56B4(v18, 1);
    sub_1BD42D548(v18);
  }

  v81 = [v22 availableShippingMethods];
  if (v81)
  {
    v82 = v81;
    v83 = [v81 defaultMethod];

    if (v83)
    {
      *v18 = v83;
      swift_storeEnumTagMultiPayload();
      sub_1BD6B56B4(v18, 1);
      sub_1BD42D548(v18);
    }
  }

  if ([v22 supportsCouponCode])
  {
    v91 = v22;
    v92 = [v27 model];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 couponCode];

      if (v94)
      {
        v80, v95, v96, v97, v98, v99, v100, v101;
        v31, v102, v103, v104, v105, v106, v107, v108;
        v109 = sub_1BE052434();
        v111 = v110;

        *v14 = v109;
        v14[1] = v111;
        swift_storeEnumTagMultiPayload();
        sub_1BD6B56B4(v14, 1);

        sub_1BD42D548(v14);
        return;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v80, v84, v85, v86, v87, v88, v89, v90;
  v31, v112, v113, v114, v115, v116, v117, v118;
}

id sub_1BD4233C8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39[-v7];
  sub_1BE04D084();
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v9, v10, "Stop state machine", v11, 2u);
    MEMORY[0x1BFB45F20](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = MEMORY[0x1E69E7D40];
  if ((*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0)) & 1) == 0 && (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) & 1) == 0)
  {
    sub_1BE04D1E4();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Tried to stop a state machine that was already stopped.", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    v12(v5, v2);
  }

  *(v1 + *((*v13 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v13 & *v1) + 0xB0)) = 0;
  v17 = sub_1BD4218D0();
  v18 = *&v17[qword_1EBDAADC0];
  sub_1BE048964();
  v17, v19, v20, v21, v22, v23, v24, v25;
  *(v18 + 224) = 1;
  v26 = *(v18 + 192);
  v41 = *(v18 + 176);
  v42 = v26;
  v43 = *(v18 + 208);
  v27 = *(v18 + 128);
  v40[0] = *(v18 + 112);
  v40[1] = v27;
  v28 = *(v18 + 160);
  v40[2] = *(v18 + 144);
  v40[3] = v28;
  sub_1BD0DE19C(v40, v39, &unk_1EBD45E50, &unk_1BE0D5BC0);
  v18, v29, v30, v31, v32, v33, v34, v35;
  if (v41)
  {
    sub_1BD0DE53C(v40, &unk_1EBD45E50, &unk_1BE0D5BC0);
  }

  [*(v1 + *((*v13 & *v1) + 0xD8)) setCancelReason_];
  sub_1BD42407C(0);
  v36 = *(v1 + *((*v13 & *v1) + 0x70));
  *(v36 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v37 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
  [*(v36 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) invalidate];
  return [*(v36 + v37) setDelegate_];
}

id sub_1BD42379C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Attempted to pause state machine while it's waiting for app protection unlock to start. Removing hold to resume on start", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    result = (*(v3 + 8))(v8, v2);
    v14 = *((*v9 & *v1) + 0xB8);
    if (*(v1 + v14) == 1)
    {
      *(v1 + v14) = 0;
    }
  }

  else
  {
    sub_1BE04D084();
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, v16, "Pause state machine", v17, 2u);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v18 = sub_1BD4218D0();
    sub_1BE04CAA4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD492024();
    return [*(v1 + *((*v9 & *v1) + 0xD8)) didResignActive_];
  }

  return result;
}

id sub_1BD423A40()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, v11, "Attempted to resume state machine while it's waiting for app protection unlock start. Holding until start has been called", v12, 2u);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    result = (*(v3 + 8))(v8, v2);
    *(v1 + *((*v9 & *v1) + 0xB8)) = 1;
  }

  else
  {
    sub_1BE04D084();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Resume state machine", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v17 = sub_1BD4218D0();
    sub_1BE04CAA4();
    v17, v18, v19, v20, v21, v22, v23, v24;
    sub_1BD492170();
    return [*(v1 + *((*v9 & *v1) + 0xD8)) didBecomeActive_];
  }

  return result;
}

id sub_1BD423D2C(const char *a1, void (*a2)(uint64_t), SEL *a3)
{
  v7 = v3;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BD026000, v12, v13, a1, v14, 2u);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v15 = (*(v9 + 8))(v11, v8);
  a2(v15);
  return [*(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0xD8)) *a3];
}

void sub_1BD423EBC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, "Sidecar became active", v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-2019 userInfo:0];
  v10 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8));
  v11 = sub_1BE04A844();
  [v10 didEncounterError_];
}

id sub_1BD42407C(char a1)
{
  v3 = MEMORY[0x1E69E7D40];
  result = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) paymentRequest];
  if (result)
  {
    v5 = result;
    v6 = [result isPeerPaymentRequest];

    if (v6)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA158], 0);
    }

    sub_1BD4241C0(1);
    result = [*(v1 + *((*v3 & *v1) + 0xD8)) didCancel];
    if (a1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result authorizationDidFinishWithError_];

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD4241C0(char a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(v48);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v48[0];
  LOBYTE(v5) = sub_1BE04CA44();
  v20, v21, v22, v23, v24, v25, v26, v27;
  if (v5)
  {
    if (a1)
    {
      v28 = 3;
    }

    else
    {
      v28 = 1;
    }

    [*(v3 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    sub_1BE04D8B4(v48);
    v29, v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;
    v45 = v48[0];
    sub_1BE04CA54();
    v46 = *(v45 + qword_1EBD55580);
    v47 = *(v45 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v48[0] = v46;
    v48[1] = v47;
    sub_1BE04D8C4();
  }
}

void sub_1BD42432C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  if ((*(v0 + v2) & 1) == 0)
  {
    v3 = v0;
    *(v0 + v2) = 1;
    v4 = *(v0 + *((*v1 & *v0) + 0x70));
    KeyPath = swift_getKeyPath();
    v6 = swift_getKeyPath();
    sub_1BE04D8B4(v49);
    KeyPath, v7, v8, v9, v10, v11, v12, v13;
    v6, v14, v15, v16, v17, v18, v19, v20;
    v21 = v49[0];
    LOBYTE(v6) = sub_1BE04CA44();
    v21, v22, v23, v24, v25, v26, v27, v28;
    if (v6)
    {
      [*(v4 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
      v29 = swift_getKeyPath();
      v30 = swift_getKeyPath();
      sub_1BE04D8B4(v49);
      v29, v31, v32, v33, v34, v35, v36, v37;
      v30, v38, v39, v40, v41, v42, v43, v44;
      v45 = v49[0];
      sub_1BE04CA54();
      v46 = *(v45 + qword_1EBD55580);
      v47 = *(v45 + qword_1EBD55580 + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v49[0] = v46;
      v49[1] = v47;
      sub_1BE04D8C4();
    }

    v48 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
    [*(v4 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) invalidate];
    [*(v4 + v48) setDelegate_];
    [*(v3 + *((*v1 & *v3) + 0xD8)) invalidate];
    sub_1BE04BE44();
  }
}

void sub_1BD424544(void *a1, uint64_t a2, void *a3)
{
  sub_1BD421798(&v48);
  v7 = [*(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8)) state];
  v58 = v48;
  v59 = v7;
  v60 = a1;
  v61 = v50;
  v57 = v49;
  v8 = a1;
  sub_1BD0DE53C(&v57, &qword_1EBD40150, &qword_1BE0C12A0);
  sub_1BD421830(&v58, v9, v10, v11, v12, v13, v14, v15);
  v16 = sub_1BD421770();
  sub_1BD421798(v51);
  (*(*v16 + qword_1EBDAAD58 + 96))(v51);

  v56 = v51[1];
  sub_1BD0DE53C(&v56, &qword_1EBD3D490, &unk_1BE0D42B0);
  v55 = v51[3];
  sub_1BD0DE53C(&v55, &qword_1EBD40150, &qword_1BE0C12A0);

  v17 = v51[5];
  v16, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
  v32 = sub_1BD4218D0();
  sub_1BD421798(v52);
  sub_1BD83BD94(v52, a2, a3);

  v54 = v52[1];
  sub_1BD0DE53C(&v54, &qword_1EBD3D490, &unk_1BE0D42B0);
  v53 = v52[3];
  sub_1BD0DE53C(&v53, &qword_1EBD40150, &qword_1BE0C12A0);

  v33 = v52[5];
  v32, v34, v35, v36, v37, v38, v39, v40;
  v33, v41, v42, v43, v44, v45, v46, v47;
}

void sub_1BD424758(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v8 = a1;
  v9 = sub_1BE04D204();
  v10 = sub_1BE052C34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    v14 = [v8 description];
    v15 = sub_1BE052434();
    v17 = v16;

    v18 = sub_1BD123690(v15, v17, &v34);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v12 + 4) = v18;
    _os_log_impl(&dword_1BD026000, v9, v10, "Handle invalid data with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13, v26, v27, v28, v29, v30, v31, v32);
    MEMORY[0x1BFB45F20](v13, -1, -1);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_1BD4241C0(1);
}

id sub_1BD424948()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v47 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1BE051F54();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BE051FA4();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BE051FC4();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v45 - v18;
  *(*(v1 + *((v3 & v2) + 0x90)) + 32) = 1;
  v20 = *(v1 + *((*v1 & v3) + 0xD0));
  result = [v20 paymentRequest];
  if (result)
  {
    v22 = result;
    v23 = [result isPeerPaymentRequest];

    if (!v23)
    {
LABEL_8:
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v46 = sub_1BE052D54();
      sub_1BE051FB4();
      *v10 = 1;
      (*(v8 + 104))(v10, *MEMORY[0x1E69E7F48], v7);
      v29 = v48;
      MEMORY[0x1BFB3F070](v13, v10);
      (*(v8 + 8))(v10, v7);
      v30 = v50;
      v49 = *(v49 + 8);
      (v49)(v13, v50);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = *(v47 + 80);
      v32[3] = v31;
      aBlock[4] = sub_1BD42D6A8;
      v58 = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_76_0;
      v33 = _Block_copy(aBlock);
      v58, v34, v35, v36, v37, v38, v39, v40;
      v41 = v51;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      v42 = v53;
      v43 = v56;
      sub_1BE053664();
      v44 = v46;
      MEMORY[0x1BFB3FD90](v29, v41, v42, v33);
      _Block_release(v33);

      (*(v55 + 8))(v42, v43);
      (*(v52 + 8))(v41, v54);
      return (v49)(v29, v30);
    }

    result = [v20 paymentRequest];
    if (result)
    {
      v24 = result;
      v25 = [result originatingURL];

      if (v25)
      {
        sub_1BE04A9F4();

        v26 = sub_1BE04AA64();
        (*(*(v26 - 8) + 56))(v19, 0, 1, v26);
        v27 = MEMORY[0x1E69BA180];
      }

      else
      {
        v28 = sub_1BE04AA64();
        (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
        v27 = MEMORY[0x1E69BA160];
      }

      sub_1BD0DE53C(v19, &unk_1EBD3CF70, &qword_1BE0BA000);
      MEMORY[0x1BFB41980](*v27, 0);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BD424FF8(void *a1))(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v9 = a1;
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v12 = 136315138;
    v13 = [v9 error];
    v43 = v5;
    v44 = v13;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0, &unk_1BE0CB420);
    v41 = v11;
    v15 = sub_1BE0534A4();
    v16 = v4;
    v18 = v17;

    v19 = sub_1BD123690(v15, v18, &v45);
    v20 = v18;
    v4 = v16;
    v20, v21, v22, v23, v24, v25, v26, v27;
    *(v12 + 4) = v19;
    _os_log_impl(&dword_1BD026000, v10, v41, "Payment failed with error %s", v12, 0xCu);
    v28 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42, v29, v30, v31, v32, v33, v34, v35);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v12, -1, -1);

    (*(v6 + 8))(v8, v43);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  result = sub_1BD425D84(v9);
  if (!result)
  {
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = *(v4 + 80);
    v38[3] = v9;
    v38[4] = v37;
    v39 = v9;
    return sub_1BD42D6B0;
  }

  return result;
}

void (*sub_1BD4252D0(void *a1))(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1BE04D214();
  v102 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v9 = a1;
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v101 = v5;
    v13 = v12;
    v99 = swift_slowAlloc();
    v104[0] = v99;
    *v13 = 136315138;
    v14 = [v9 error];
    v100 = v6;
    v15 = v14;
    v103 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0, &unk_1BE0CB420);
    v16 = sub_1BE0534A4();
    v17 = v9;
    v19 = v18;

    v20 = sub_1BD123690(v16, v19, v104);
    v21 = v19;
    v9 = v17;
    v21, v22, v23, v24, v25, v26, v27, v28;
    *(v13 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v10, v11, "Payment failed with fatal error %s", v13, 0xCu);
    v29 = v99;
    __swift_destroy_boxed_opaque_existential_0(v99, v30, v31, v32, v33, v34, v35, v36);
    v4 = MEMORY[0x1E69E7D40];
    MEMORY[0x1BFB45F20](v29, -1, -1);
    v37 = v13;
    v5 = v101;
    MEMORY[0x1BFB45F20](v37, -1, -1);

    (*(v102 + 8))(v8, v100);
  }

  else
  {

    (*(v102 + 8))(v8, v6);
  }

  sub_1BD4241C0(1);
  result = [v9 error];
  if (result)
  {
    v39 = result;
    result = [*(v2 + *((*v4 & *v2) + 0xD0)) paymentRequest];
    if (result)
    {
      v40 = result;
      v41 = v9;
      v42 = [result useLocationBasedAuthorization];

      if (v42)
      {
        v43 = [v39 domain];
        v44 = sub_1BE052434();
        v46 = v45;

        v48 = sub_1BE052434();
        v54 = v47;
        if (v44 == v48 && v46 == v47)
        {
          v46, v47, v48, v49, v50, v51, v52, v53;
          v54, v55, v56, v57, v58, v59, v60, v61;
        }

        else
        {
          v62 = sub_1BE053B84();
          v46, v63, v64, v65, v66, v67, v68, v69;
          v54, v70, v71, v72, v73, v74, v75, v76;
          if ((v62 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if ([v39 code] == -1)
        {
          v77 = [v39 userInfo];
          v78 = sub_1BE052244();

          if (v78[2])
          {
            v86 = sub_1BD148F70(0xD000000000000015, 0x80000001BE128F00);
            if (v79)
            {
              sub_1BD038CD0(v78[7] + 32 * v86, v104);
              v78, v87, v88, v89, v90, v91, v92, v93;

              if (swift_dynamicCast())
              {
                v94 = v103 == 5;
LABEL_19:
                *(*(v2 + *((*v4 & *v2) + 0x90)) + 32) = 1;
                v95 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v96 = swift_allocObject();
                *(v96 + 16) = *(v5 + 80);
                *(v96 + 24) = v95;
                *(v96 + 32) = v41;
                *(v96 + 40) = v94;
                v97 = v41;
                return sub_1BD42D6D4;
              }

LABEL_18:
              v94 = 0;
              goto LABEL_19;
            }
          }

          v78, v79, v80, v81, v82, v83, v84, v85;
        }
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD4257CC(void *a1)
{
  result = [a1 remotePaymentRequest];
  if (result)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result authorizationWillStart];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BD425868(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  v11 = a1;
  LOBYTE(a6) = sub_1BD42CE30(a5, a6);

  return a6 & 1;
}

void sub_1BD4258DC()
{
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0)) == 1)
  {
    v1 = 2;
    sub_1BD421B18(&v1);

    sub_1BD422590(0);
  }
}

void sub_1BD425958(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1BD42D468();
}

void sub_1BD4259F8(uint64_t a1)
{
  if (!qword_1EBD36910)
  {
    type metadata accessor for AuthenticatorModel(255);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD36910);
    }
  }
}

void sub_1BD425A50()
{
  if (!qword_1EBD45E28)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD45E28);
    }
  }
}

uint64_t sub_1BD425AA0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for PaymentAuthorizationStateMachineWrapper(0, *(a1 + 80), a3, a4);
  result = sub_1BE04D814();
  *a5 = result;
  return result;
}

id sub_1BD425AE4()
{
  v0 = sub_1BD42BBA8();

  return v0;
}

uint64_t sub_1BD425CF0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BD425D2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD492914(0);
  }
}

void *(*sub_1BD425D84(void *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  result = [a1 error];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v4 = [v43 domain];
      v5 = sub_1BE052434();
      v7 = v6;

      v8 = sub_1BE052434();
      v16 = v9;
      if (v5 == v8 && v7 == v9)
      {
        v7, v9, v10, v11, v12, v13, v14, v15;
        v16, v33, v34, v35, v36, v37, v38, v39;
      }

      else
      {
        v18 = sub_1BE053B84();
        v7, v19, v20, v21, v22, v23, v24, v25;
        v16, v26, v27, v28, v29, v30, v31, v32;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      v40 = [v43 code];

      if (v40 == -2012)
      {
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        *(v42 + 16) = *(v2 + 80);
        *(v42 + 24) = v41;
        return sub_1BD42D6C4;
      }
    }

    return 0;
  }

  return result;
}

void *sub_1BD425F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v3 = sub_1BE051F54();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BE051FC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v38 = sub_1BE052D54();
    sub_1BE051FB4();
    *v11 = 450;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7F38], v8);
    MEMORY[0x1BFB3F070](v15, v11);
    (*(v9 + 8))(v11, v8);
    v37 = *(v13 + 8);
    v21 = v15;
    v22 = v12;
    v37(v21, v12);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v39;
    v24[3] = v23;
    aBlock[4] = sub_1BD42D6CC;
    v46 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_97_1;
    v25 = _Block_copy(aBlock);
    v46, v26, v27, v28, v29, v30, v31, v32;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v33 = v40;
    v34 = v44;
    sub_1BE053664();
    v35 = v38;
    MEMORY[0x1BFB3FD90](v18, v7, v33, v25);
    _Block_release(v25);

    (*(v43 + 8))(v33, v34);
    (*(v41 + 8))(v7, v42);
    return (v37)(v18, v22);
  }

  return result;
}

void sub_1BD426434(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1BD4218D0();
    v4 = sub_1BE04CA44();
    v3, v5, v6, v7, v8, v9, v10, v11;
    if (v4)
    {
      v12 = sub_1BD4218D0();
      sub_1BD83CA74(3, 0, 0, 0, 1);
      v12, v13, v14, v15, v16, v17, v18, v19;
      [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)) didResolveError];
    }
  }
}

uint64_t sub_1BD42650C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v59 = a3;
  v5 = sub_1BE051F54();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE051FA4();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1BE051FC4();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v54 - v15;
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  if ([a2 isPaymentOffersError])
  {
    v55 = v8;
    sub_1BE04D084();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = a2;
      v27 = v26;
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "Error originated from payment offers", v26, 2u);
      v28 = v27;
      a2 = v54;
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v17 + 8))(v23, v16);
    v29 = 2000;
    v8 = v55;
  }

  else
  {
    v29 = 450;
  }

  if ([a2 isClientFailure])
  {
    sub_1BE04D084();
    v30 = sub_1BE04D204();
    v31 = sub_1BE052C34();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v8;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1BD026000, v30, v31, "Error originated from client", v33, 2u);
      v34 = v33;
      v8 = v32;
      MEMORY[0x1BFB45F20](v34, -1, -1);
    }

    (*(v17 + 8))(v19, v16);
    v29 = 2000;
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v55 = sub_1BE052D54();
  sub_1BE051FB4();
  *v11 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F38], v8);
  v35 = v57;
  MEMORY[0x1BFB3F070](v13, v11);
  (*(v9 + 8))(v11, v8);
  v36 = *(v58 + 8);
  v37 = v60;
  v36(v13, v60);
  v38 = swift_allocObject();
  v39 = v59;
  *(v38 + 16) = v56;
  *(v38 + 24) = v39;
  aBlock[4] = sub_1BD42D6BC;
  v68 = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_86;
  v40 = _Block_copy(aBlock);
  v41 = v68;
  sub_1BE048964();
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = v61;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v50 = v63;
  v51 = v66;
  sub_1BE053664();
  v52 = v55;
  MEMORY[0x1BFB3FD90](v35, v49, v50, v40);
  _Block_release(v40);

  (*(v65 + 8))(v50, v51);
  (*(v62 + 8))(v49, v64);
  return (v36)(v35, v37);
}

void sub_1BD426BAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xD8));

    [v3 didResolveError];
  }
}

void sub_1BD426C40(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = v10;
    v11[4] = a3;
    v12 = a3;
    if (a4)
    {
      sub_1BD4218D0();
      sub_1BE048964();
      sub_1BDA33888(sub_1BD42D730, v11, &v46);
      v39 = v47;
      v40 = v46;
      v14 = v48;
      v13 = v49;
      swift_getKeyPath();
      swift_getKeyPath();
      v42 = v40;
      v43 = v39;
      v44 = v14;
      v45 = v13;
      v50 = v47;
      v51 = v46;
      sub_1BD206260(&v51, v41);
      sub_1BD0DE19C(&v50, v41, &qword_1EBD3A5C8, &qword_1BE0BAA50);
      sub_1BE048964();
      sub_1BE04D8C4();

      v11, v15, v16, v17, v18, v19, v20, v21;
      sub_1BD1BCDE4(&v51);
      sub_1BD0DE53C(&v50, &qword_1EBD3A5C8, &qword_1BE0BAA50);
      v29 = v13;
    }

    else
    {
      v30 = v12;
      v31 = sub_1BE048964();
      sub_1BD426E20(v31, v30);

      v11, v32, v33, v34, v35, v36, v37, v38;
      v29 = v10;
    }

    v29, v22, v23, v24, v25, v26, v27, v28;
  }
}

void *sub_1BD426E20(uint64_t a1, void *a2)
{
  v40 = a2;
  v2 = sub_1BE051F54();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051F44();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BE051FC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v39 = sub_1BE052D54();
    sub_1BE051FB4();
    *v10 = 450;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F38], v7);
    MEMORY[0x1BFB3F070](v14, v10);
    (*(v8 + 8))(v10, v7);
    v38 = *(v12 + 8);
    v20 = v11;
    v38(v14, v11);
    v21 = swift_allocObject();
    v22 = v40;
    *(v21 + 16) = v19;
    *(v21 + 24) = v22;
    aBlock[4] = sub_1BD42D73C;
    v47 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_117_0;
    v23 = _Block_copy(aBlock);
    v24 = v47;
    v25 = v19;
    v26 = v22;
    v24, v27, v28, v29, v30, v31, v32, v33;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v34 = v41;
    v35 = v45;
    sub_1BE053664();
    v36 = v39;
    MEMORY[0x1BFB3FD90](v17, v6, v34, v23);
    _Block_release(v23);

    (*(v44 + 8))(v34, v35);
    (*(v42 + 8))(v6, v43);
    return (v38)(v17, v20);
  }

  return result;
}

void sub_1BD4272CC(int a1, id a2)
{
  v2 = [a2 error];
  sub_1BD492914(v2);
}

void sub_1BD42732C(uint64_t a1, void *a2)
{
  v3 = v2;
  v74 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  if (a1)
  {
    goto LABEL_6;
  }

  v11 = *(v3 + *(v74 + 208));
  v12 = [v11 paymentRequest];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 requestType];

  if (v14 == 13)
  {
    goto LABEL_6;
  }

  v15 = [v11 paymentRequest];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 disablePasscodeFallback];

  if (v17)
  {
LABEL_6:
    sub_1BD421798(v75);
    v18 = v75[0];
    v19 = v75[4];

    v77 = v75[1];
    sub_1BD0DE53C(&v77, &qword_1EBD3D490, &unk_1BE0D42B0);
    v76 = v75[3];
    sub_1BD0DE53C(&v76, &qword_1EBD40150, &qword_1BE0C12A0);

    v75[5], v20, v21, v22, v23, v24, v25, v26;
    v27 = [v19 paymentRequest];

    if (v27)
    {
      sub_1BD0E5E8C(0, &unk_1EBD35E80, 0x1E69B8540);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v29 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v30 = sub_1BE052434();
      v31 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v30;
      *(inited + 48) = v32;
      v33 = *v31;
      *(inited + 56) = *v31;
      *(inited + 64) = sub_1BE052434();
      *(inited + 72) = v34;
      v35 = v29;
      v36 = v33;
      v37 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      sub_1BD6B14D4(v37, v27);

      v37, v38, v39, v40, v41, v42, v43, v44;
      v45 = sub_1BD421770();
      sub_1BD6B261C(v45);
      v45, v46, v47, v48, v49, v50, v51, v52;
      if (a2)
      {
        v53 = a2;
      }

      else
      {
        v53 = sub_1BD4277B4(a1, 0);
      }

      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = *(v74 + 80);
      v55[3] = v54;
      v56 = a2;
      sub_1BE048964();
      sub_1BD7F2940(v53, sub_1BD42BC20, v55);

      v54, v57, v58, v59, v60, v61, v62, v63;
      v55, v64, v65, v66, v67, v68, v69, v70;
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_1BE04D084();
  v71 = sub_1BE04D204();
  v72 = sub_1BE052C34();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_1BD026000, v71, v72, "Cannot evaluate policy, cancelling", v73, 2u);
    MEMORY[0x1BFB45F20](v73, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_1BD42407C(1);
}

id sub_1BD4277B4(uint64_t a1, int a2)
{
  v3 = v2;
  v188 = a2;
  v5 = sub_1BE04BD74();
  v193 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v187 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v186 = &v185 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v191 = &v185 - v10;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BD4218D0();
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_1BE04D8B4(v195);
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v17, v25, v26, v27, v28, v29, v30, v31;
  v15, v32, v33, v34, v35, v36, v37, v38;
  v39 = v195[0];
  v40 = objc_allocWithZone(MEMORY[0x1E69BC748]);
  v189 = v39;
  v192 = [v40 initWithPolicy_];
  if (!v192)
  {
    goto LABEL_48;
  }

  v190 = v11;
  v41 = sub_1BD4218D0();
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  sub_1BE04D8B4(v195);
  v42, v44, v45, v46, v47, v48, v49, v50;
  v43, v51, v52, v53, v54, v55, v56, v57;
  v41, v58, v59, v60, v61, v62, v63, v64;
  v65 = PKAuthenticatorPolicyDescription(v195[0]);
  if (!v65)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v66 = v65;
  v67 = sub_1BE052434();
  v69 = v68;

  v195[0] = v67;
  v195[1] = v69;
  v70 = sub_1BE052644();
  v72 = v71;
  sub_1BE04D084();
  sub_1BE048C84();
  v73 = sub_1BE04D204();
  v74 = sub_1BE052C54();
  v72, v75, v76, v77, v78, v79, v80, v81;
  v82 = os_log_type_enabled(v73, v74);
  v194 = v72;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v185 = a1;
    v84 = v83;
    v85 = v5;
    v86 = swift_slowAlloc();
    v195[0] = v86;
    *v84 = 136315138;
    *(v84 + 4) = sub_1BD123690(v70, v72, v195);
    _os_log_impl(&dword_1BD026000, v73, v74, "New authenticator policy is %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86, v87, v88, v89, v90, v91, v92, v93);
    v94 = v86;
    v5 = v85;
    MEMORY[0x1BFB45F20](v94, -1, -1);
    v95 = v84;
    a1 = v185;
    MEMORY[0x1BFB45F20](v95, -1, -1);
  }

  (*(v12 + 8))(v14, v190);
  v96 = v193;
  v97 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD0));
  v98 = [v97 paymentRequest];
  v99 = v191;
  v100 = v192;
  if (!v98)
  {
    goto LABEL_43;
  }

  v101 = v98;
  if ((v188 & 1) == 0)
  {
    [v192 setInitialAuthenticatorState_];
  }

  if (([v101 _isAMPPayment] & 1) != 0 || objc_msgSend(v101, sel_requestType) == 7 || objc_msgSend(v101, sel_requestType) == 13)
  {
    v102 = [v101 externalizedContext];
    if (v102)
    {
      v103 = v102;
      v104 = sub_1BE04AAC4();
      v106 = v105;

      v107 = sub_1BE04AAB4();
      sub_1BD1245AC(v104, v106, v108, v109, v110, v111, v112, v113);
    }

    else
    {
      v107 = 0;
    }

    [v100 setExternalizedContext_];

    v114 = [v101 accesssControlRef];
    v115 = &selRef_setAccessControlRef_;
LABEL_15:
    [v100 *v115];

    goto LABEL_16;
  }

  if ([v101 requestType] == 6)
  {
    v174 = [v101 externalizedContext];
    if (v174)
    {
      v175 = v174;
      v176 = sub_1BE04AAC4();
      v178 = v177;

      v114 = sub_1BE04AAB4();
      sub_1BD1245AC(v176, v178, v179, v180, v181, v182, v183, v184);
    }

    else
    {
      v114 = 0;
    }

    v115 = &selRef_setExternalizedContext_;
    goto LABEL_15;
  }

LABEL_16:
  if ([v101 _isAMPPayment])
  {
    [v100 setMaxBiometryFailures_];
  }

  if (v189 == 6 || v189 == 3)
  {
    (*(v96 + 104))(v99, *MEMORY[0x1E69B8068], v5);
    v123 = PKPassKitBundle();
    if (v123)
    {
      v124 = v123;
      sub_1BE04B6F4();
      v126 = v125;

      (*(v96 + 8))(v99, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_1BE0B69E0;
      v128 = [v97 pass];
      if (v128)
      {
        v136 = v128;
        v194, v129, v130, v131, v132, v133, v134, v135;
        v137 = [v136 localizedDescription];

        v138 = sub_1BE052434();
        v140 = v139;

        *(v127 + 56) = MEMORY[0x1E69E6158];
        *(v127 + 64) = sub_1BD110550();
        *(v127 + 32) = v138;
        *(v127 + 40) = v140;
        sub_1BE052454();
        v142 = v141;
        v126, v141, v143, v144, v145, v146, v147, v148;
        v149 = sub_1BE052404();
        v142, v150, v151, v152, v153, v154, v155, v156;
        [v100 setPINTitle_];

        v157 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v100 setPINLength_];

        goto LABEL_24;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v194, v116, v117, v118, v119, v120, v121, v122;
LABEL_24:
  v158 = [v101 localizedConfirmationTitle];
  v159 = v187;
  if (v158)
  {
    v160 = v158;
LABEL_33:
    [v100 setPasscodeTitle_];

    goto LABEL_34;
  }

  if ([v101 confirmationStyle] == 1)
  {
    v159 = v186;
    (*(v96 + 104))(v186, *MEMORY[0x1E69B8068], v5);
    v161 = PKPassKitBundle();
    if (v161)
    {
      v162 = v161;
LABEL_32:
      sub_1BE04B6F4();
      v165 = v164;

      (*(v96 + 8))(v159, v5);
      v160 = sub_1BE052404();
      v165, v166, v167, v168, v169, v170, v171, v172;
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  if ([v101 confirmationStyle] == 3)
  {
    (*(v96 + 104))(v159, *MEMORY[0x1E69B8068], v5);
    v163 = PKPassKitBundle();
    if (v163)
    {
      v162 = v163;
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_34:
  if ([v101 useLocationBasedAuthorization])
  {
    [v100 setUseLocationBasedAuthorization_];
  }

  return v100;
}

void sub_1BD428134(uint64_t a1, void *a2, uint64_t a3)
{
  v254 = a3;
  v4 = sub_1BE04C974();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v260 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  v262 = v7;
  v263 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v250 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v250 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v259 = &v250 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v250 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v255 = &v250 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v257 = (&v250 - v25);
  v258 = sub_1BE04C7B4();
  v256 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v27 = &v250 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v29 = Strong;
  v251 = v27;
  v252 = v5;
  v253 = v4;
  v30 = a2;
  v31 = [a2 result];
  v261 = v29;
  sub_1BD421798(v265);
  v32 = v265[0];
  v33 = v265[4];

  v267 = v265[1];
  sub_1BD0DE53C(&v267, &qword_1EBD3D490, &unk_1BE0D42B0);
  v266 = v265[3];
  sub_1BD0DE53C(&v266, &qword_1EBD40150, &qword_1BE0C12A0);

  v265[5], v34, v35, v36, v37, v38, v39, v40;
  v41 = [v33 paymentRequest];

  if (!v41)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_1BD6B99C4(v31, v41);

  v42 = [v30 result];
  if (v42 > 3)
  {
    v43 = v261;
    if ((v42 - 4) < 2)
    {
      sub_1BE04D084();
      v64 = sub_1BE04D204();
      v65 = sub_1BE052C54();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1BD026000, v64, v65, "Authentication pre-empted or failed", v66, 2u);
        MEMORY[0x1BFB45F20](v66, -1, -1);
      }

      (*(v263 + 8))(v10, v262);
      v67 = *(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD8));
      v68 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v70 = v67;
      v71 = v68;
      v72 = [v30 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v72;
      v73 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
      v74 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v75 = sub_1BE052224();
      v73, v76, v77, v78, v79, v80, v81, v82;
      v83 = [v74 initWithDomain:v71 code:-1 userInfo:v75];

      v84 = sub_1BE04A844();
      [v70 didEncounterFatalError_];

      return;
    }

    if (v42 == 6)
    {
      sub_1BE04D084();
      v165 = sub_1BE04D204();
      v166 = sub_1BE052C54();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&dword_1BD026000, v165, v166, "Triggered biolockout", v167, 2u);
        MEMORY[0x1BFB45F20](v167, -1, -1);
      }

      (*(v263 + 8))(v13, v262);
      v168 = MEMORY[0x1E69E7D40];
      v169 = [*(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD0)) paymentRequest];
      if (v169)
      {
        v170 = v169;
        if ([v169 _isPVKRequest])
        {
          v171 = *(v43 + *((*v168 & *v43) + 0xD8));
          v172 = *MEMORY[0x1E69BBBC8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
          v173 = swift_initStackObject();
          *(v173 + 16) = xmmword_1BE0B69E0;
          *(v173 + 32) = 0xD000000000000015;
          *(v173 + 40) = 0x80000001BE128F00;
          v174 = v171;
          v175 = v172;
          v176 = [v30 &selRef_removeObjectIdenticalTo_];
          *(v173 + 72) = MEMORY[0x1E69E6530];
          *(v173 + 48) = v176;
          v177 = sub_1BD1AACF8(v173);
          swift_setDeallocating();
          sub_1BD0DE53C(v173 + 32, &qword_1EBD52080, &qword_1BE0BDD40);
          v178 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v179 = sub_1BE052224();
          v177, v180, v181, v182, v183, v184, v185, v186;
          v187 = [v178 initWithDomain:v175 code:-1 userInfo:v179];

          v188 = sub_1BE04A844();
          [v174 didEncounterFatalError_];
        }

        else
        {
          if ([v170 requestType] == 13)
          {
            v193 = sub_1BD4218D0();
            v194 = *&v193[qword_1EBDAADC0];
            sub_1BE048964();
            v193, v195, v196, v197, v198, v199, v200, v201;
            LODWORD(v193) = v194[61];
            v194, v202, v203, v204, v205, v206, v207, v208;
            if (v193 == 1)
            {
              sub_1BD429354();
            }

            else
            {
              v213 = sub_1BD4218D0();
              sub_1BE04CA74();
              v213, v214, v215, v216, v217, v218, v219, v220;
              v221 = sub_1BD4218D0();
              v222 = *&v221[qword_1EBDAADC0];
              v223 = *&v221[qword_1EBDAADA8 + 16];
              v268[0] = *&v221[qword_1EBDAADA8];
              v268[1] = v223;
              v269 = *&v221[qword_1EBDAADA8 + 32];
              v224 = *&v268[0];
              v225 = v269;
              v270 = *(&v268[0] + 1);
              v271[0] = *(&v223 + 1);
              v226 = *(&v269 + 1);
              sub_1BE048964();
              v227 = v224;
              sub_1BD0DE19C(&v270, v264, &qword_1EBD3D490, &unk_1BE0D42B0);
              sub_1BD0DE19C(v271, v264, &qword_1EBD40150, &qword_1BE0C12A0);
              v228 = v225;
              sub_1BE048964();
              sub_1BDA74FEC(v268, v221, 0, 0);

              v43 = v261;
              sub_1BD0DE53C(&v270, &qword_1EBD3D490, &unk_1BE0D42B0);
              sub_1BD0DE53C(v271, &qword_1EBD40150, &qword_1BE0C12A0);
              v221, v229, v230, v231, v232, v233, v234, v235;
              v222, v236, v237, v238, v239, v240, v241, v242;
              v226, v243, v244, v245, v246, v247, v248, v249;
            }

            v211 = v252;
            v210 = v253;
            v212 = v260;
          }

          else
          {
            v209 = sub_1BD429504();
            v211 = v252;
            v210 = v253;
            v212 = v260;
            if ((v209 & 1) != 0 || [v170 _isAMPPayment])
            {
              sub_1BD4295A8();
            }
          }

          (*(v211 + 104))(v212, *MEMORY[0x1E69BCA48], v210);
          if (sub_1BD42A3D0())
          {
            sub_1BD491BC4(v212);
          }

          (*(v211 + 8))(v212, v210);
        }

        return;
      }

LABEL_68:
      __break(1u);
      return;
    }

    if (v42 != 7)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v43 = v261;
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v161 = v259;
      sub_1BE04D084();
      v162 = sub_1BE04D204();
      v163 = sub_1BE052C54();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&dword_1BD026000, v162, v163, "Authentication canceled by app", v164, 2u);
        MEMORY[0x1BFB45F20](v164, -1, -1);
      }

      else
      {
      }

      (*(v263 + 8))(v161, v262);
      return;
    }

LABEL_15:
    sub_1BE04D084();
    v55 = sub_1BE04D204();
    v56 = sub_1BE052C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1BD026000, v55, v56, "Authentication canceled by biometry or selected fallback", v57, 2u);
      MEMORY[0x1BFB45F20](v57, -1, -1);
    }

    (*(v263 + 8))(v16, v262);
    v58 = MEMORY[0x1E69E7D40];
    v59 = [*(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD0)) paymentRequest];
    v61 = v252;
    v60 = v253;
    v62 = v260;
    if (v59)
    {
      v63 = v59;
      if ([v59 requestType] == 13)
      {
        [*(v43 + *((*v58 & *v43) + 0xD8)) didResolveError];
      }

      else if ([v63 _isAMPPayment])
      {
        sub_1BD4295A8();
      }

      (*(v61 + 104))(v62, *MEMORY[0x1E69BCA48], v60);
      if (sub_1BD42A3D0())
      {
        sub_1BD491BC4(v62);
      }

      (*(v61 + 8))(v62, v60);
      return;
    }

    goto LABEL_67;
  }

  if (v42)
  {
    if (v42 == 1)
    {
      sub_1BE04D084();
      v44 = sub_1BE04D204();
      v45 = sub_1BE052C54();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1BD026000, v44, v45, "Authentication canceled by user", v46, 2u);
        MEMORY[0x1BFB45F20](v46, -1, -1);
      }

      (*(v263 + 8))(v21, v262);
      [*(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD8)) didResolveError];
      v47 = sub_1BD4218D0();
      sub_1BE04CB64();
      v47, v48, v49, v50, v51, v52, v53, v54;

      return;
    }

LABEL_13:

    return;
  }

  v85 = *((*MEMORY[0x1E69E7D40] & *v261) + 0xD8);
  if ([*(v261 + v85) state] == 5)
  {
    if ([v30 biometricMatch])
    {
      v86 = sub_1BD4218D0();
      v87 = *&v86[qword_1EBDAADC0];
      sub_1BE048964();
      v86, v88, v89, v90, v91, v92, v93, v94;
      sub_1BDA75178(8, 17, 0, 0);
      v87, v95, v96, v97, v98, v99, v100, v101;
    }

    if ((PKPearlIsAvailable() & 1) == 0 && (PKOpticIDIsAvailable() & 1) == 0)
    {
      [*(v43 + v85) beginDelayingAuthorizedState];
      v102 = sub_1BD4218D0();
      v103 = *&v102[qword_1EBDAADC0];
      sub_1BE048964();
      v102, v104, v105, v106, v107, v108, v109, v110;
      v111 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v112 = swift_allocObject();
      v112[2] = v254;
      v112[3] = v111;
      sub_1BE048964();
      sub_1BDA75178(11, 17, sub_1BD42D49C, v112);
      v103, v113, v114, v115, v116, v117, v118, v119;
      v111, v120, v121, v122, v123, v124, v125, v126;
      v112, v127, v128, v129, v130, v131, v132, v133;
      if (0.5 - CFAbsoluteTimeGetCurrent() > 0.0)
      {
        [*(v43 + v85) delayAuthorizedStateByDuration_];
      }
    }

    v134 = sub_1BD4218D0();
    v135 = v256;
    v136 = v251;
    v137 = v258;
    (*(v256 + 104))(v251, *MEMORY[0x1E69BC988], v258);
    v138 = sub_1BE051F44();
    v139 = v257;
    (*(*(v138 - 8) + 56))(v257, 1, 1, v138);
    sub_1BD83C0A8(v136, 0, 0, v139);
    v134, v140, v141, v142, v143, v144, v145, v146;
    sub_1BD0DE53C(v139, &unk_1EBD45E40, &unk_1BE0D5BB0);
    (*(v135 + 8))(v136, v137);
    v147 = swift_unknownObjectWeakLoadStrong();
    if (v147)
    {
      [v147 authorizationWillStart];
      swift_unknownObjectRelease();
    }

    v148 = *(v43 + v85);
    v149 = [v30 credential];
    if (v149)
    {
      v150 = v149;
      v151 = sub_1BE04AAC4();
      v153 = v152;

      v154 = sub_1BE04AAB4();
      sub_1BD1245AC(v151, v153, v155, v156, v157, v158, v159, v160);
    }

    else
    {
      v154 = 0;
    }

    [v148 didAuthenticateWithCredential_];

    swift_unknownObjectRelease();
  }

  else
  {
    v189 = v255;
    sub_1BE04D084();
    v190 = sub_1BE04D204();
    v191 = sub_1BE052C54();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&dword_1BD026000, v190, v191, "Authentication successful but in wrong state - discarding credential", v192, 2u);
      MEMORY[0x1BFB45F20](v192, -1, -1);
    }

    else
    {
    }

    (*(v263 + 8))(v189, v262);
  }
}

void sub_1BD4292C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xD8));

    [v4 endDelayingAuthorizedState];
  }
}

void sub_1BD429354()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1BD4241C0(1);
  v2 = [objc_allocWithZone(MEMORY[0x1E69BC748]) initWithPolicy_];
  if (v2)
  {
    v3 = v2;
    [v2 setPasscodeOnly_];
    v4 = sub_1BE052404();
    v5 = PKLocalizedIdentityString(v4);

    [v3 setPasscodeTitle_];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = *(v1 + 80);
    v7[3] = v6;
    sub_1BE048964();
    sub_1BD7F2940(v3, sub_1BD42BBD4, v7);

    v6, v8, v9, v10, v11, v12, v13, v14;

    v7, v15, v16, v17, v18, v19, v20, v21;
  }
}

id sub_1BD429504()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0));
  result = [v1 paymentRequest];
  if (result)
  {
    v3 = result;
    if ([result _isAMPPayment])
    {
      v4 = [v1 mode];

      return (v4 == 1);
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

void sub_1BD4295A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v54[-v1 - 8];
  v3 = sub_1BE04C7B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD4241C0(1);
  v7 = sub_1BD4218D0();
  sub_1BE04C994();
  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1BD4218D0();
  (*(v4 + 104))(v6, *MEMORY[0x1E69BC980], v3);
  v16 = sub_1BE051F44();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  sub_1BD83C0A8(v6, 0, 0, v2);
  v15, v17, v18, v19, v20, v21, v22, v23;
  sub_1BD0DE53C(v2, &unk_1EBD45E40, &unk_1BE0D5BB0);
  (*(v4 + 8))(v6, v3);
  v24 = sub_1BD4218D0();
  v25 = *&v24[qword_1EBDAADC0];
  v26 = *&v24[qword_1EBDAADA8 + 16];
  v55[0] = *&v24[qword_1EBDAADA8];
  v55[1] = v26;
  v56 = *&v24[qword_1EBDAADA8 + 32];
  v27 = *&v55[0];
  v28 = v56;
  v57 = *(&v55[0] + 1);
  v58 = *(&v26 + 1);
  v29 = *(&v56 + 1);
  sub_1BE048964();
  v30 = v27;
  sub_1BD0DE19C(&v57, v54, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v58, v54, &qword_1EBD40150, &qword_1BE0C12A0);
  v31 = v28;
  sub_1BE048964();
  sub_1BDA74FEC(v55, v24, 0, 0);

  sub_1BD0DE53C(&v57, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v58, &qword_1EBD40150, &qword_1BE0C12A0);
  v24, v32, v33, v34, v35, v36, v37, v38;
  v25, v39, v40, v41, v42, v43, v44, v45;
  v29, v46, v47, v48, v49, v50, v51, v52;
}

id sub_1BD42989C()
{
  result = sub_1BD429504();
  if (result)
  {
    v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0));

    return [v2 fallbackToBypassMode];
  }

  return result;
}

void sub_1BD429900()
{
  v1 = sub_1BE04D214();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = sub_1BD4218D0();
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(v13);
  v14, v17, v18, v19, v20, v21, v22, v23;
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v16, v31, v32, v33, v34, v35, v36, v37;
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC980], v7);
  LOBYTE(v14) = sub_1BE04C7A4();
  v38 = *(v8 + 8);
  v38(v10, v7);
  v38(v13, v7);
  if (v14)
  {
    sub_1BE04D084();
    v39 = sub_1BE04D204();
    v40 = sub_1BE052C54();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1BD026000, v39, v40, "Passcode required, not automatically resuming authentication", v41, 2u);
      MEMORY[0x1BFB45F20](v41, -1, -1);
    }

    (*(v45 + 8))(v6, v46);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD42B138();
  }

  else
  {
    sub_1BE04D084();
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1BD026000, v42, v43, "Not in authenticate state, not resuming authentication", v44, 2u);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    (*(v45 + 8))(v3, v46);
  }
}

void *sub_1BD429C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a3;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v17 = sub_1BE052D54();
    v33 = v11;
    v18 = v17;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v21 = v35;
    v20[2] = v34;
    v20[3] = v19;
    v20[4] = a1;
    aBlock[4] = v21;
    v38 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v36;
    v22 = _Block_copy(aBlock);
    v23 = v38;
    v24 = a1;
    v23, v25, v26, v27, v28, v29, v30, v31;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD42D500(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v14, v10, v22);
    _Block_release(v22);

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v33);
  }

  return result;
}

void sub_1BD429FA0(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a2 result])
    {
      sub_1BE04D084();
      v9 = sub_1BE04D204();
      v10 = sub_1BE052C54();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1BD026000, v9, v10, "Passcode to clear biolockout pre-empted or failed", v11, 2u);
        MEMORY[0x1BFB45F20](v11, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      v12 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0xD8));
      v13 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v15 = v12;
      v16 = v13;
      v17 = [a2 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v17;
      v18 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
      v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v20 = sub_1BE052224();
      v18, v21, v22, v23, v24, v25, v26, v27;
      v28 = [v19 initWithDomain:v16 code:-1 userInfo:v20];

      v29 = sub_1BE04A844();
      [v15 didEncounterFatalError_];

      v8 = v29;
    }

    else
    {
      v30 = sub_1BD4218D0();
      sub_1BE04CA74();
      v30, v31, v32, v33, v34, v35, v36, v37;
      v38 = sub_1BD4218D0();
      v39 = *&v38[qword_1EBDAADC0];
      v40 = *&v38[qword_1EBDAADA8 + 16];
      v68[0] = *&v38[qword_1EBDAADA8];
      v68[1] = v40;
      v69 = *&v38[qword_1EBDAADA8 + 32];
      v41 = *&v68[0];
      v42 = v69;
      v70 = *(&v68[0] + 1);
      v71[0] = *(&v40 + 1);
      v43 = *(&v69 + 1);
      sub_1BE048964();
      v44 = v41;
      sub_1BD0DE19C(&v70, v67, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(v71, v67, &qword_1EBD40150, &qword_1BE0C12A0);
      v45 = v42;
      sub_1BE048964();
      sub_1BDA74FEC(v68, v38, 0, 0);

      sub_1BD0DE53C(&v70, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE53C(v71, &qword_1EBD40150, &qword_1BE0C12A0);
      v38, v46, v47, v48, v49, v50, v51, v52;
      v39, v53, v54, v55, v56, v57, v58, v59;
      v43, v60, v61, v62, v63, v64, v65, v66;

      sub_1BD429900();
    }
  }
}

id sub_1BD42A3D0()
{
  result = [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result _isAMPPayment];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD42A44C()
{
  if (sub_1BD42A3D0())
  {
    return 0;
  }

  result = [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0)) paymentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result requestType];

    return (v3 != 6 && v3 != 15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD42A4E0(char a1, uint64_t a2, void (*a3)(void, double))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = MEMORY[0x1EEE9AC00](result);
    a3(0, v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD42A5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1BE0528A4();
  v6[5] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD42A68C, v8, v7);
}

uint64_t sub_1BD42A68C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1BD42A748;

  return MEMORY[0x1EEE23E78]();
}

uint64_t sub_1BD42A748(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD42DD70, v4, v3);
}

uint64_t sub_1BD42A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1BE0528A4();
  v6[5] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD42A90C, v8, v7);
}

uint64_t sub_1BD42A90C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1BD42A9C8;

  return MEMORY[0x1EEE23E78]();
}

uint64_t sub_1BD42A9C8(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD42AAF0, v4, v3);
}

uint64_t sub_1BD42AAF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 72);
  v10 = *(v8 + 24);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v10(v9);
  v11 = *(v8 + 8);

  return v11();
}

void sub_1BD42AB6C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD42ABEC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

double sub_1BD42AC60@<D0>(_OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  result = *&v20;
  *a2 = v20;
  return result;
}

uint64_t sub_1BD42ACE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD42AD5C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD42ADD8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BE04C7B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v4 + 8))(v10, v3);
}

double sub_1BD42AF48@<D0>(_OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v22);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  result = *v22;
  v20 = v22[1];
  v21 = v22[2];
  *a2 = v22[0];
  a2[1] = v20;
  a2[2] = v21;
  return result;
}

uint64_t sub_1BD42AFD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BD0EE87C(v2, v3, v4, v5, v6, v7);
  return sub_1BE04D8C4();
}

uint64_t sub_1BD42B088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD4218D0();
  *a1 = result;
  return result;
}

uint64_t sub_1BD42B0E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD421770();
  *a1 = result;
  return result;
}

void sub_1BD42B138()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v98 - v7;
  v9 = sub_1BD4218D0();
  v10 = sub_1BE04CA44();
  v9, v11, v12, v13, v14, v15, v16, v17;
  if ((v10 & 1) == 0)
  {
    sub_1BE04D084();
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BD026000, v21, v22, "handleAuthenticate", v23, 2u);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v24 = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) paymentRequest];
    if (!v24)
    {
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = objc_opt_self();
    v27 = sub_1BD4218D0();
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    sub_1BE04D8B4(&v99);
    KeyPath, v30, v31, v32, v33, v34, v35, v36;
    v29, v37, v38, v39, v40, v41, v42, v43;
    v27, v44, v45, v46, v47, v48, v49, v50;
    [v26 currentStateForPolicy_];
    [v25 disablePasscodeFallback];
    v51 = sub_1BD4218D0();
    sub_1BE04CB44();
    v51, v52, v53, v54, v55, v56, v57, v58;
    if ([v25 _isAMPPayment])
    {
      v59 = [v25 accesssControlRef];
      if (!v59 || (v60 = v59, v61 = [v26 currentStateForAccessControl_], v60, (v62 = v61) == 0))
      {
        sub_1BD4295A8();
        sub_1BD42989C();
        v63 = sub_1BD4218D0();
        sub_1BE04CB64();
        v63, v64, v65, v66, v67, v68, v69, v70;
LABEL_18:

        return;
      }
    }

    else if (([v25 requestType] == 7 || objc_msgSend(v25, sel_requestType) == 13) && (v71 = objc_msgSend(v25, sel_accesssControlRef)) != 0)
    {
      v72 = v71;
      v73 = [v26 currentStateForAccessControl_];

      v62 = v73;
    }

    else
    {
      v74 = sub_1BD4218D0();
      v75 = swift_getKeyPath();
      v76 = swift_getKeyPath();
      sub_1BE04D8B4(&v99);
      v75, v77, v78, v79, v80, v81, v82, v83;
      v76, v84, v85, v86, v87, v88, v89, v90;
      v74, v91, v92, v93, v94, v95, v96, v97;
      v62 = [v26 currentStateForPolicy_];
    }

    sub_1BD42732C(v62, 0);
    goto LABEL_18;
  }

  sub_1BE04D084();
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1BD026000, v18, v19, "AuthenticationWrapper - already authenticating, ignoring evaluation request", v20, 2u);
    MEMORY[0x1BFB45F20](v20, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
}

void sub_1BD42B764(void *a1, char *a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v121 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v120 - v11;
  v13 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xD0));
  sub_1BE048964();
  v14 = [v13 paymentRequest];
  if (v14)
  {
    v22 = v14;
    v23 = [v14 _isAMPPayment];

    if (v23)
    {
      goto LABEL_9;
    }

    v24 = [v13 paymentRequest];
    if (v24)
    {
      v32 = v24;
      v33 = [v24 requestType];

      if (v33 == 15 || v33 == 6)
      {
        goto LABEL_9;
      }

      v47 = [v13 hostApplicationIdentifier];
      if (v47)
      {
        v48 = v47;
        v49 = sub_1BE052434();
        v51 = v50;

        v52 = sub_1BE052434();
        v60 = v53;
        if (v51)
        {
          v61 = v52;
          if (v49 == v52 && v51 == v53)
          {
            goto LABEL_31;
          }

          v63 = sub_1BE053B84();
          v51, v64, v65, v66, v67, v68, v69, v70;
          v60, v71, v72, v73, v74, v75, v76, v77;
          if (v63)
          {
            goto LABEL_9;
          }

LABEL_23:
          v78 = [v13 bundleIdentifier];
          if (v78)
          {
            v79 = v78;
            v80 = sub_1BE052434();
            v51 = v81;

            v82 = sub_1BE052434();
            v60 = v53;
            if (v51)
            {
              v61 = v82;
              if (v80 != v82 || v51 != v53)
              {
                v85 = sub_1BE053B84();
                v51, v86, v87, v88, v89, v90, v91, v92;
                v60, v93, v94, v95, v96, v97, v98, v99;
                if ((v85 & 1) == 0)
                {
                  goto LABEL_34;
                }

LABEL_9:
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v43 = MEMORY[0x1EEE9AC00](Strong);
                  v44 = a3(0, v43);
                  *(&v120 - 2) = v44;
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](KeyPath);
                  *(&v120 - 2) = v44;
                  swift_getKeyPath();
                  v122 = 2;
                  sub_1BE04D8C4();
                }

                v46 = a2;
                goto LABEL_12;
              }

LABEL_31:
              v51, v53, v61, v55, v56, v57, v58, v59;
              v60, v100, v101, v102, v103, v104, v105, v106;
              goto LABEL_9;
            }
          }

          else
          {
            sub_1BE052434();
            v60 = v53;
          }

          v60, v53, v83, v55, v56, v57, v58, v59;
LABEL_34:
          v107 = sub_1BE0528D4();
          (*(*(v107 - 8) + 56))(v12, 1, 1, v107);
          sub_1BE0528A4();
          v108 = a1;
          sub_1BE048964();
          v109 = sub_1BE052894();
          v110 = swift_allocObject();
          v111 = MEMORY[0x1E69E85E0];
          v110[2] = v109;
          v110[3] = v111;
          v110[4] = v108;
          v110[5] = a5;
          v110[6] = a2;
          v112 = sub_1BD122C00(0, 0, v12, v121, v110);
          a2, v113, v114, v115, v116, v117, v118, v119;
          v46 = v112;
LABEL_12:
          v46, v36, v37, v38, v39, v40, v41, v42;
          return;
        }
      }

      else
      {
        sub_1BE052434();
        v60 = v53;
      }

      v60, v53, v54, v55, v56, v57, v58, v59;
      goto LABEL_23;
    }
  }

  else
  {
    a2, v15, v16, v17, v18, v19, v20, v21;
    __break(1u);
  }

  a2, v25, v26, v27, v28, v29, v30, v31;
  __break(1u);
}

uint64_t sub_1BD42BC6C(uint64_t a1)
{
  v147 = a1;
  v1 = sub_1BE04CFC4();
  v150 = *(v1 - 8);
  v151 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v145 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v146 = &v125 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v144 = &v125 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v143 = &v125 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v125 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v125 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v125 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v125 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v135 = &v125 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v125 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v125 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v125 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v131 = &v125 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v125 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v125 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v125 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v127 = &v125 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v126 = &v125 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v136 = &v125 - v42;
  v43 = sub_1BE04CFE4();
  v148 = *(v43 - 8);
  v149 = v43;
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v125 - v45;
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](&v125 - v50);
  MEMORY[0x1EEE9AC00](v51);
  MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v54);
  MEMORY[0x1EEE9AC00](v55);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v125 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v125 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v125 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v125 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v125 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v125 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v125 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v125 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v94 = &v125 - v93;
  switch(v147)
  {
    case 0:
      sub_1BE04B6A4();
      v95 = v136;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "initialize";
      goto LABEL_44;
    case 1:
      sub_1BE04B6A4();
      v95 = v126;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v108 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        v110 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v108, v110, "stateChange", "continuitySearch", v109, 2u);
        v94 = v80;
        v98 = v109;
        goto LABEL_45;
      }

      v46 = v80;
      goto LABEL_48;
    case 3:
      sub_1BE04B6A4();
      v95 = v127;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v103 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v104 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v103, v104, "stateChange", "invalidData", v98, 2u);
        v94 = v77;
        goto LABEL_45;
      }

      v46 = v77;
      goto LABEL_48;
    case 4:
      sub_1BE04B6A4();
      v95 = v128;
      sub_1BE04CFB4();
      v115 = sub_1BE04CFD4();
      v116 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v117 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v115, v116, v117, "stateChange", "initialize", v98, 2u);
        v94 = v74;
        v119 = v150;
        v118 = v151;
        v121 = v148;
        v120 = v149;
        v96 = v115;
        goto LABEL_46;
      }

      v46 = v74;
      v119 = v150;
      v118 = v151;
      v121 = v148;
      v120 = v149;
      v96 = v115;
      goto LABEL_49;
    case 5:
      sub_1BE04B6A4();
      v95 = v129;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v122 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v123 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v122, v123, "stateChange", "authenticate", v98, 2u);
        v94 = v71;
        goto LABEL_45;
      }

      v46 = v71;
      goto LABEL_48;
    case 6:
      sub_1BE04B6A4();
      v105 = v130;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v106 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v107 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v106, v107, "stateChange", "inactive", v98, 2u);
        v94 = v68;
        v95 = v105;
        goto LABEL_45;
      }

      v46 = v68;
      v95 = v105;
      goto LABEL_48;
    case 7:
      sub_1BE04B6A4();
      v95 = v131;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v111 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v112 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v111, v112, "stateChange", "clientCallback", v98, 2u);
        v94 = v65;
        goto LABEL_45;
      }

      v46 = v65;
      goto LABEL_48;
    case 8:
      sub_1BE04B6A4();
      v95 = v132;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v113 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v114 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v113, v114, "stateChange", "prepareTransactionDetails", v98, 2u);
        v94 = v62;
        goto LABEL_45;
      }

      v46 = v62;
      goto LABEL_48;
    case 9:
      v94 = v59;
      sub_1BE04B6A4();
      v95 = v133;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "nonce";
      goto LABEL_44;
    case 10:
      v94 = v89;
      sub_1BE04B6A4();
      v95 = v134;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "authorize";
      goto LABEL_44;
    case 11:
      v94 = v88;
      sub_1BE04B6A4();
      v95 = v135;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "rewrap";
      goto LABEL_44;
    case 12:
      v94 = v87;
      sub_1BE04B6A4();
      v95 = v137;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "authorized";
      goto LABEL_44;
    case 13:
      v94 = v86;
      sub_1BE04B6A4();
      v95 = v138;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "cancel";
      goto LABEL_44;
    case 14:
      v94 = v85;
      sub_1BE04B6A4();
      v95 = v139;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "error";
      goto LABEL_44;
    case 15:
      v94 = v84;
      sub_1BE04B6A4();
      v95 = v140;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "fatalError";
      goto LABEL_44;
    case 16:
      v94 = v83;
      sub_1BE04B6A4();
      v95 = v141;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "success";
      goto LABEL_44;
    case 17:
      v94 = v82;
      sub_1BE04B6A4();
      v95 = v142;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "dataProcessing";
      goto LABEL_44;
    case 18:
      v94 = v92;
      sub_1BE04B6A4();
      v95 = v143;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "updatingPaymentOffers";
      goto LABEL_44;
    case 19:
      v94 = v91;
      sub_1BE04B6A4();
      v95 = v144;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_47;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1BE04CFA4();
      v100 = "selectedPaymentOfferInvalid";
      goto LABEL_44;
    case 20:
      sub_1BE04B6A4();
      v95 = v146;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v101 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_48;
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v102 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v101, v102, "stateChange", "loadingPreconfiguredInstallmentPaymentOffer", v98, 2u);
      v94 = v46;
      goto LABEL_45;
    default:
      v94 = v90;
      sub_1BE04B6A4();
      v95 = v145;
      sub_1BE04CFB4();
      v96 = sub_1BE04CFD4();
      v97 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v99 = sub_1BE04CFA4();
        v100 = "unknown";
LABEL_44:
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v96, v97, v99, "stateChange", v100, v98, 2u);
LABEL_45:
        v119 = v150;
        v118 = v151;
        v121 = v148;
        v120 = v149;
LABEL_46:
        MEMORY[0x1BFB45F20](v98, -1, -1);
        v46 = v94;
      }

      else
      {
LABEL_47:
        v46 = v94;
LABEL_48:
        v119 = v150;
        v118 = v151;
        v121 = v148;
        v120 = v149;
      }

LABEL_49:

      (*(v119 + 8))(v95, v118);
      return (*(v121 + 8))(v46, v120);
  }
}

uint64_t sub_1BD42CE30(uint64_t a1, void *a2)
{
  v67 = a2;
  v3 = sub_1BE04D214();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v63 - v6);
  v8 = sub_1BE04C7B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BD4218D0();
  (*(v9 + 104))(v11, *MEMORY[0x1E69BC988], v8);
  *v7 = 1;
  v13 = *MEMORY[0x1E69E7F48];
  v14 = sub_1BE051F44();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  sub_1BD83C0A8(v11, 0, 0, v7);
  v12, v16, v17, v18, v19, v20, v21, v22;
  v23 = v7;
  v24 = a1;
  sub_1BD0DE53C(v23, &unk_1EBD45E40, &unk_1BE0D5BB0);
  result = (*(v9 + 8))(v11, v8);
  v26 = 0;
  if (v24 > 12)
  {
    if (v24 > 15)
    {
      v28 = 0;
      v27 = v67;
      if ((v24 - 17) >= 4)
      {
        if (v24 == 16)
        {
          sub_1BD424948();
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      goto LABEL_38;
    }

    v27 = v67;
    if (v24 == 13)
    {
      sub_1BD42407C(1);
      goto LABEL_37;
    }

    if (v24 == 14)
    {
      if (v67)
      {
        objc_opt_self();
        v34 = swift_dynamicCastObjCClassUnconditional();
        v31 = sub_1BD424FF8(v34);
        goto LABEL_25;
      }
    }

    else
    {
      if (v67)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClassUnconditional();
        v31 = sub_1BD4252D0(v30);
LABEL_25:
        v26 = v31;
        v28 = v32;
        goto LABEL_38;
      }

      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v24 > 5)
  {
    v28 = 0;
    v27 = v67;
    if ((v24 - 8) >= 5)
    {
      if (v24 == 6)
      {
        sub_1BD4241C0(1);
        goto LABEL_37;
      }

      if (v24 == 7)
      {
        if (v67)
        {
          objc_opt_self();
          v33 = swift_dynamicCastObjCClassUnconditional();
          sub_1BD4922B8(v33);
          goto LABEL_37;
        }

        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_38:
    sub_1BD42BC6C(v24);
    sub_1BD424544(v27, v26, v28);
    sub_1BD1107D8(v26, v28);
    return 1;
  }

  v27 = v67;
  if (v24 > 3)
  {
    if (v24 != 4)
    {
      sub_1BD42B138();
      goto LABEL_37;
    }

    if (v67)
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClassUnconditional();
      sub_1BD4257CC(v35);
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  v28 = 0;
  if (v24 < 2)
  {
    goto LABEL_38;
  }

  if (v24 == 3)
  {
    if (v67)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClassUnconditional();
      sub_1BD424758(v29);
LABEL_37:
      v26 = 0;
      v28 = 0;
      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_29:
  v36 = v66;
  sub_1BE04D084();
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C34();
  if (!os_log_type_enabled(v37, v38))
  {

    (*(v64 + 8))(v36, v65);
    goto LABEL_37;
  }

  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v68 = v40;
  *v39 = 136315138;
  if (v24 > 0x14)
  {
    v41 = @"unknown";
    v42 = @"unknown";
  }

  else
  {
    v41 = off_1E800FC48[v24];
    v42 = off_1E800FCF0[v24];
  }

  v43 = v41;
  result = v42;
  if (result)
  {
    v44 = result;
    v45 = sub_1BE052434();
    v47 = v46;

    v48 = sub_1BD123690(v45, v47, &v68);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v39 + 4) = v48;
    _os_log_impl(&dword_1BD026000, v37, v38, "State change not implemented: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40, v56, v57, v58, v59, v60, v61, v62);
    MEMORY[0x1BFB45F20](v40, -1, -1);
    MEMORY[0x1BFB45F20](v39, -1, -1);

    (*(v64 + 8))(v66, v65);
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
  return result;
}

__CFString *PKAuthenticatorPolicyDescription(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E800FDF0[a1];
    v2 = off_1E800FD98[a1];
  }

  return v1;
}

uint64_t sub_1BD42D500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD42D548(uint64_t a1)
{
  v2 = type metadata accessor for Analytics.StateChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD42D5AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD42D774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42D86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD42A870(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42D964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42DA5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42DB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD42DC94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD42A5F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD42DD88(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v10;
  switch(a1)
  {
    case 2:
      (*(v3 + 104))(v5, *MEMORY[0x1E69B8050], v2, v11);
      v16 = PKPassKitBundle();
      if (v16)
      {
        v14 = v16;
        v15 = sub_1BE04B6F4();
        v12 = v5;
        goto LABEL_10;
      }

      goto LABEL_12;
    case 1:
      (*(v3 + 104))(v8, *MEMORY[0x1E69B8050], v2, v11);
      v13 = PKPassKitBundle();
      if (v13)
      {
        v14 = v13;
        v15 = sub_1BE04B6F4();
        v12 = v8;
LABEL_10:

        (*(v3 + 8))(v12, v2);
        return v15;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      break;
    case 0:
      (*(v3 + 104))(v19 - v10, *MEMORY[0x1E69B8050], v2, v11);
      v17 = PKPassKitBundle();
      if (v17)
      {
        v14 = v17;
        v15 = sub_1BE04B6F4();
        goto LABEL_10;
      }

      goto LABEL_13;
  }

  v19[1] = a1;
  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

uint64_t sub_1BD42E038(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v10;
  switch(a1)
  {
    case 2:
      (*(v3 + 104))(v5, *MEMORY[0x1E69B8050], v2, v11);
      v16 = PKPassKitBundle();
      if (v16)
      {
        v14 = v16;
        v15 = sub_1BE04B6F4();
        v12 = v5;
        goto LABEL_10;
      }

      goto LABEL_12;
    case 1:
      (*(v3 + 104))(v8, *MEMORY[0x1E69B8050], v2, v11);
      v13 = PKPassKitBundle();
      if (v13)
      {
        v14 = v13;
        v15 = sub_1BE04B6F4();
        v12 = v8;
LABEL_10:

        (*(v3 + 8))(v12, v2);
        return v15;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      break;
    case 0:
      (*(v3 + 104))(v19 - v10, *MEMORY[0x1E69B8050], v2, v11);
      v17 = PKPassKitBundle();
      if (v17)
      {
        v14 = v17;
        v15 = sub_1BE04B6F4();
        goto LABEL_10;
      }

      goto LABEL_13;
  }

  v19[1] = a1;
  result = sub_1BE053BE4();
  __break(1u);
  return result;
}

uint64_t sub_1BD42E2E4(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = *MEMORY[0x1E69B8050];
  v14 = *(v3 + 104);
  v14(&v37 - v11, v13, v2, v10);
  v15 = PKPassKitBundle();
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v37 = sub_1BE04B6F4();
  v38 = v17;

  v18 = *(v3 + 8);
  v18(v12, v2);
  if (a1)
  {
    if (a1 == 2)
    {
      return v37;
    }

    if (a1 != 1)
    {
      goto LABEL_15;
    }

    (v14)(v8, v13, v2);
    v26 = PKPassKitBundle();
    if (v26)
    {
      v27 = v26;
      v22 = sub_1BE04B6F4();
      v24 = v28;

      v25 = v8;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v39 = a1;
    result = sub_1BE053BE4();
    __break(1u);
    return result;
  }

  (v14)(v5, v13, v2);
  v20 = PKPassKitBundle();
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = sub_1BE04B6F4();
  v24 = v23;

  v25 = v5;
LABEL_10:
  v18(v25, v2);
  v39 = v22;
  v40 = v24;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  v29 = v38;
  MEMORY[0x1BFB3F610](v37, v38);
  v29, v30, v31, v32, v33, v34, v35, v36;
  return v39;
}

unint64_t NearbyPeerPaymentContext.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1BD42E5D0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id NearbyPeerPayment.ErrorUIStyle.uiColor.getter()
{
  v1 = v0;
  v2 = sub_1BE04B794();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69B7E90])
  {
    v8 = [objc_opt_self() systemRedColor];
  }

  else
  {
    v9 = v7;
    v10 = *MEMORY[0x1E69B7E98];
    v11 = objc_opt_self();
    if (v9 != v10)
    {
      v13 = [v11 systemRedColor];
      (*(v3 + 8))(v6, v2);
      return v13;
    }

    v8 = [v11 grayColor];
  }

  return v8;
}

unint64_t sub_1BD42E7BC()
{
  result = qword_1EBD45E98;
  if (!qword_1EBD45E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45E98);
  }

  return result;
}

uint64_t sub_1BD42E820(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BD42E868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD42E8E0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    if (a7)
    {
      sub_1BD42E998();
      v12 = a7;
      v13 = a3;
      v14 = sub_1BE053074();

      if (v14)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v15 = 0;
    return v15 & 1;
  }

  if (a7)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = a4 ^ a8 ^ 1;
  return v15 & 1;
}

unint64_t sub_1BD42E998()
{
  result = qword_1EBD45EA0;
  if (!qword_1EBD45EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45EA0);
  }

  return result;
}

void sub_1BD42E9E4(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 paymentOffersController];
  if (!v6)
  {
    sub_1BD0E8E44(a2);

    goto LABEL_7;
  }

  v7 = WrappedPass.secureElementPass.getter();
  if (!v7 || (v8 = v7, v9 = [v7 uniqueID], v8, !v9))
  {
    sub_1BD0E8E44(a2);

    v6 = 0;
LABEL_7:
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v10 = sub_1BE052434();
  v12 = v11;
  v13 = [v6 merchandisingOfferForPassUniqueID_];
  v14 = [v6 didFetchMerchandisingOfferForPassUniqueID_];

  sub_1BD0E8E44(a2);
LABEL_8:
  *a3 = v6;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
}

uint64_t sub_1BD42EB14@<X0>(uint64_t a1@<X8>)
{
  v327 = a1;
  v332 = sub_1BE04D214();
  v335 = *(v332 - 1);
  MEMORY[0x1EEE9AC00](v332);
  v334 = (&v303 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v318 = &v303 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v316 = &v303 - v6;
  v333 = sub_1BE04A324();
  v328 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v311 = &v303 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v312 = &v303 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v326 = &v303 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v325 = &v303 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v315 = (&v303 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v336 = &v303 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v330 = &v303 - v19;
  v20 = sub_1BE04AA64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v313 = &v303 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v303 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670, &unk_1BE0D5F70);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v303 - v27;
  v29 = sub_1BE04A3B4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v303 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v303 - v35;
  v331 = *&v1[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method];
  v37 = [v331 url];
  sub_1BE04A9F4();

  sub_1BE04A354();
  v319 = v21;
  v38 = *(v21 + 8);
  v321 = v21 + 8;
  v322 = v20;
  v320 = v38;
  v38(v25, v20);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1BD0DE53C(v28, &unk_1EBD49670, &unk_1BE0D5F70);
    v39 = v334;
    sub_1BE04D0C4();
    v40 = v1;
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C34();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v337 = v44;
      *v43 = 136315138;
      v45 = [v331 url];
      sub_1BE04A9F4();

      sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v46 = v322;
      v47 = sub_1BE053B24();
      v49 = v48;
      v320(v25, v46);
      v50 = sub_1BD123690(v47, v49, &v337);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v43 + 4) = v50;
      _os_log_impl(&dword_1BD026000, v41, v42, "Failed to create url components from %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44, v58, v59, v60, v61, v62, v63, v64);
      MEMORY[0x1BFB45F20](v44, -1, -1);
      MEMORY[0x1BFB45F20](v43, -1, -1);
    }

    (*(v335 + 8))(v39, v332);
LABEL_75:
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0, &unk_1BE0D5F60);
    return (*(*(v292 - 8) + 56))(v327, 1, 1, v292);
  }

  v309 = v30;
  v65 = *(v30 + 32);
  v317 = v36;
  v310 = v29;
  v65(v36, v28, v29);
  v308 = *&v1[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_pass];
  v66 = [v308 deviceAccountIdentifier];
  v67 = sub_1BE052434();
  v69 = v68;

  sub_1BE04A3A4();
  v305 = *MEMORY[0x1E69BC6E0];
  sub_1BE052434();
  sub_1BE04A394();
  v70 = sub_1BE052434();
  MEMORY[0x1BFB37400](v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9A8, &qword_1BE0BFBE0);
  v71 = v328;
  v72 = *(v328 + 9);
  v73 = (*(v328 + 80) + 32) & ~*(v328 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1BE0B6CA0;
  v334 = @"deviceAccountIdentifier";
  sub_1BE052434();
  v76 = v75;
  v306 = v67;
  v307 = v69;
  sub_1BE04A2F4();
  v76, v77, v78, v79, v80, v81, v82, v83;
  v84 = sub_1BE052434();
  v86 = v85;
  sub_1BE052434();
  v88 = v87;
  v335 = v72;
  sub_1BE04A2F4();
  v86, v89, v90, v91, v92, v93, v94, v95;
  v88, v96, v97, v98, v99, v100, v101, v102;
  sub_1BE04A344();
  v103 = sub_1BE04A334();
  if (v103)
  {
    v104 = v103;
  }

  else
  {
    v104 = MEMORY[0x1E69E7CC0];
  }

  v105 = *(v104 + 2);
  v314 = v32;
  v323 = v73;
  v106 = 0;
  if (!v105)
  {
    goto LABEL_58;
  }

  v107 = (v71 + 16);
  v329 = @"primaryAccountNumberSuffix";
  v324 = @"redirectUrl";
  v331 = (v71 + 16);
  v332 = (v71 + 8);
  v108 = v333;
  while (1)
  {
    v109 = *(v104 + 2);
    if (v106 >= v109)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v71 = *v107;
    (*v107)(v330, &v104[v73], v108);
    v84 = sub_1BE04A304();
    v111 = v110;
    v113 = sub_1BE052434();
    v119 = v112;
    if (v84 == v113 && v111 == v112)
    {
      goto LABEL_22;
    }

    v74 = sub_1BE053B84();
    v119, v120, v121, v122, v123, v124, v125, v126;
    if (v74)
    {
      goto LABEL_25;
    }

    v113 = sub_1BE052434();
    v119 = v112;
    if (v84 == v113 && v111 == v112)
    {
LABEL_22:
      v74 = v111;
      goto LABEL_24;
    }

    v74 = sub_1BE053B84();
    v119, v134, v135, v136, v137, v138, v139, v140;
    if (v74)
    {
      goto LABEL_25;
    }

    v113 = sub_1BE052434();
    v74 = v112;
    if (v84 == v113 && v111 == v112)
    {
      break;
    }

    v141 = sub_1BE053B84();
    v74, v142, v143, v144, v145, v146, v147, v148;
    v111, v149, v150, v151, v152, v153, v154, v155;
    v108 = v333;
    v156 = *v332;
    (*v332)(v330, v333);
    if (v141)
    {
      goto LABEL_26;
    }

    ++v106;
    v73 += v335;
    v107 = v331;
    if (v105 == v106)
    {
      v105 = *(v104 + 2);
      v106 = v105;
      goto LABEL_27;
    }
  }

  v119 = v111;
LABEL_24:
  v74, v112, v113, v114, v115, v116, v117, v118;
  v111 = v119;
LABEL_25:
  v111, v127, v128, v129, v130, v131, v132, v133;
  v108 = v333;
  v156 = *v332;
  (*v332)(v330, v333);
LABEL_26:
  v105 = v106 + 1;
  v109 = *(v104 + 2);
  if (v109 - 1 == v106)
  {
LABEL_27:
    v73 = v323;
    goto LABEL_58;
  }

  v330 = v106;
  v73 += v335;
  v157 = (v328 + 40);
  while (2)
  {
    if (v105 >= v109)
    {
      __break(1u);
      goto LABEL_78;
    }

    v71(v336, &v104[v73], v108);
    v84 = sub_1BE04A304();
    v159 = v158;
    v161 = sub_1BE052434();
    v74 = v160;
    if (v84 == v161 && v159 == v160)
    {
LABEL_32:
      v159, v160, v161, v162, v163, v164, v165, v166;
      v159 = v74;
      goto LABEL_35;
    }

    v174 = sub_1BE053B84();
    v74, v175, v176, v177, v178, v179, v180, v181;
    if (v174)
    {
      goto LABEL_34;
    }

    v161 = sub_1BE052434();
    v74 = v160;
    if (v84 == v161 && v159 == v160)
    {
      v108 = v333;
      goto LABEL_32;
    }

    v183 = sub_1BE053B84();
    v74, v184, v185, v186, v187, v188, v189, v190;
    if (v183)
    {
LABEL_34:
      v108 = v333;
LABEL_35:
      v159, v167, v168, v169, v170, v171, v172, v173;
      v182 = v336;
LABEL_36:
      v156(v182, v108);
    }

    else
    {
      v192 = sub_1BE052434();
      v74 = v191;
      if (v84 == v192 && v159 == v191)
      {
        v191, v191, v192, v193, v194, v195, v196, v197;
        v159, v198, v199, v200, v201, v202, v203, v204;
        v182 = v336;
        v108 = v333;
        goto LABEL_36;
      }

      v84 = sub_1BE053B84();
      v74, v205, v206, v207, v208, v209, v210, v211;
      v159, v212, v213, v214, v215, v216, v217, v218;
      v108 = v333;
      result = (v156)(v336, v333);
      if ((v84 & 1) == 0)
      {
        if (v105 != v330)
        {
          if (v330 < 0)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            return result;
          }

          v220 = *(v104 + 2);
          if (v330 >= v220)
          {
            goto LABEL_84;
          }

          v304 = v330 * v335;
          v84 = v331;
          v74 = v71;
          result = (v71)(v312, &v104[v323 + v330 * v335], v108);
          if (v105 >= v220)
          {
            goto LABEL_85;
          }

          v71(v311, &v104[v73], v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1BD4FFF04(v104);
          }

          v221 = *v157;
          result = (*v157)(&v104[v323 + v304], v311, v108);
          if (v105 >= *(v104 + 2))
          {
            goto LABEL_86;
          }

          v221(&v104[v73], v312, v108);
        }

        ++v330;
      }
    }

    ++v105;
    v109 = *(v104 + 2);
    v73 += v335;
    if (v105 != v109)
    {
      continue;
    }

    break;
  }

  v106 = v330;
  v73 = v323;
  if (v105 < v330)
  {
    goto LABEL_79;
  }

  if (v330 < 0)
  {
    goto LABEL_80;
  }

LABEL_58:
  v109 = v106 - v105;
  v74 = v106;
  if (__OFADD__(v105, v106 - v105))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    v104 = sub_1BD1D75E0((v109 > 1), v74, 1, v104);
    goto LABEL_66;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v337 = v104;
  if (!isUniquelyReferenced_nonNull_native || v106 > *(v104 + 3) >> 1)
  {
    if (v105 <= v106)
    {
      v223 = v106;
    }

    else
    {
      v223 = v105;
    }

    v104 = sub_1BD1D75E0(isUniquelyReferenced_nonNull_native, v223, 1, v104);
    v337 = v104;
  }

  sub_1BD1DD130(v106, v105, 0);
  sub_1BE052434();
  v225 = v224;
  v71 = v315;
  v226 = v307;
  sub_1BE04A2F4();
  v225, v227, v228, v229, v230, v231, v232, v233;
  v226, v234, v235, v236, v237, v238, v239, v240;
  v84 = *(v104 + 2);
  v109 = *(v104 + 3);
  v74 = v84 + 1;
  if (v84 >= v109 >> 1)
  {
    goto LABEL_82;
  }

LABEL_66:
  v241 = v328;
  *(v104 + 2) = v74;
  v242 = *(v241 + 4);
  v242(&v104[v73 + v84 * v335], v71, v333);
  sub_1BE052434();
  v244 = v243;
  v245 = [v308 primaryAccountNumberSuffix];
  sub_1BE052434();
  v247 = v246;

  sub_1BE04A2F4();
  v244, v248, v249, v250, v251, v252, v253, v254;
  v247, v255, v256, v257, v258, v259, v260, v261;
  v263 = *(v104 + 2);
  v262 = *(v104 + 3);
  if (v263 >= v262 >> 1)
  {
    v104 = sub_1BD1D75E0((v262 > 1), v263 + 1, 1, v104);
  }

  v264 = v316;
  v266 = v322;
  v265 = v323;
  *(v104 + 2) = v263 + 1;
  v242(&v104[v265 + v263 * v335], v325, v333);
  sub_1BE052434();
  v268 = v267;
  sub_1BE04A364();
  v269 = *(v319 + 48);
  if (v269(v264, 1, v266) == 1)
  {
    sub_1BD0DE53C(v264, &unk_1EBD3CF70, &qword_1BE0BA000);
    v270 = 0;
  }

  else
  {
    sub_1BE04A9B4();
    v270 = v271;
    v320(v264, v266);
  }

  sub_1BE04A2F4();
  v268, v272, v273, v274, v275, v276, v277, v278;
  v270, v279, v280, v281, v282, v283, v284, v285;
  v287 = *(v104 + 2);
  v286 = *(v104 + 3);
  if (v287 >= v286 >> 1)
  {
    v104 = sub_1BD1D75E0((v286 > 1), v287 + 1, 1, v104);
  }

  v288 = v318;
  *(v104 + 2) = v287 + 1;
  v242(&v104[v323 + v287 * v335], v326, v333);
  v289 = v317;
  sub_1BE04A344();
  sub_1BE04A364();
  if (v269(v288, 1, v266) == 1)
  {
    v290 = *(v309 + 8);
    v291 = v310;
    v290(v314, v310);
    v290(v289, v291);
    sub_1BD0DE53C(v288, &unk_1EBD3CF70, &qword_1BE0BA000);
    goto LABEL_75;
  }

  v293 = v319;
  v294 = v313;
  (*(v319 + 32))(v313, v288, v266);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0, &unk_1BE0D5F60);
  v296 = v327;
  v297 = (v327 + *(v295 + 48));
  (*(v293 + 16))(v327, v294, v266);
  v298 = sub_1BE052434();
  v300 = v299;
  v320(v294, v266);
  v301 = *(v309 + 8);
  v302 = v310;
  v301(v314, v310);
  v301(v289, v302);
  *v297 = v298;
  v297[1] = v300;
  return (*(*(v295 - 8) + 56))(v296, 0, 1, v295);
}

void sub_1BD42FCC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v7 = sub_1BE051F54();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE051FA4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1BE051FC4();
  v58 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v56 - v13;
  v14 = sub_1BE04D214();
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_1BE04AA64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (a2)
    {
      v26 = a2;
      v27 = sub_1BE04A844();
      v28 = [v27 code];

      if (v28 == 1)
      {
        v29 = [objc_opt_self() errorWithSeverity_];
        (v66)();

LABEL_13:
        return;
      }

      if (!PKShowFakeVerificationChannels())
      {
        v52 = a2;
        v53 = sub_1BE04A844();

        v54 = [objc_opt_self() errorWithUnderlyingError:v53 defaultSeverity:4];
        v55 = v54;
        v66(v54, 1);

        goto LABEL_13;
      }

      sub_1BE04D0C4();
      v31 = sub_1BE04D204();
      v32 = sub_1BE052C54();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1BD026000, v31, v32, "Handling fake web verification url result", v33, 2u);
        MEMORY[0x1BFB45F20](v33, -1, -1);
      }

      (*(v56 + 8))(v16, v14);
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v56 = sub_1BE052D54();
      sub_1BE051FB4();
      v34 = v57;
      sub_1BE051FF4();
      v58 = *(v58 + 8);
      (v58)(v11, v65);
      v35 = swift_allocObject();
      v36 = v66;
      v37 = v67;
      v35[2] = v25;
      v35[3] = v36;
      v35[4] = v37;
      aBlock[4] = sub_1BD431D20;
      v69 = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_13_0;
      v38 = _Block_copy(aBlock);
      v39 = v69;
      v40 = v25;
      sub_1BE048964();
      v39, v41, v42, v43, v44, v45, v46, v47;
      v48 = v59;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD431D2C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      v49 = v61;
      v50 = v64;
      sub_1BE053664();
      v51 = v56;
      MEMORY[0x1BFB3FD90](v34, v48, v49, v38);
      _Block_release(v38);

      (*(v63 + 8))(v49, v50);
      (*(v60 + 8))(v48, v62);
      (v58)(v34, v65);
    }

    else
    {
      sub_1BD38F438(a1, v19);
      if ((*(v21 + 48))(v19, 1, v20) == 1)
      {
        sub_1BD0DE53C(v19, &unk_1EBD3CF70, &qword_1BE0BA000);
        v30 = [objc_opt_self() errorWithSeverity_];
        (v66)();
      }

      else
      {
        (*(v21 + 32))(v23, v19, v20);
        sub_1BD430634(v23, v66, v67);

        (*(v21 + 8))(v23, v20);
      }
    }
  }
}

uint64_t sub_1BD430498(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AA54();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1BD430634(v11, a2, a3);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void sub_1BD430634(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v246 = a3;
  v247 = a2;
  v244 = a1;
  v243 = sub_1BE04AA64();
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v239 = (&v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v237 = &v225 - v6;
  v245 = sub_1BE04D214();
  v242 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v240 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v238 = &v225 - v9;
  v10 = sub_1BE052484();
  v11 = *(v10 - 8);
  v234 = v10;
  v235 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04A324();
  v236 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v225 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v225 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670, &unk_1BE0D5F70);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v225 - v21;
  v23 = sub_1BE04A3B4();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v225 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v3 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method);
  v29 = [v28 strategy];
  if (v29 < 3)
  {
    sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
    sub_1BD412688();
    sub_1BE053D84();
    v30 = aBlock;
    v31 = v249;
    (v247)(aBlock, v249);
    sub_1BD431D7C(v30, v31);
    return;
  }

  v227 = v3;
  v228 = v19;
  v233 = v16;
  v229 = v14;
  v225 = v28;
  v226 = v13;
  v32 = v243;
  v230 = v27;
  v231 = v24;
  v232 = v23;
  if (v29 != 3)
  {
LABEL_34:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v33 = v244;
  sub_1BE04A354();
  v34 = v231;
  v35 = v232;
  v36 = (*(v231 + 48))(v22, 1, v232);
  v37 = v245;
  v38 = v247;
  if (v36 == 1)
  {
    sub_1BD0DE53C(v22, &unk_1EBD49670, &unk_1BE0D5F70);
    v39 = v240;
    sub_1BE04D0C4();
    v40 = v241;
    v41 = v239;
    (*(v241 + 16))(v239, v33, v32);
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C34();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v242;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v48 = sub_1BE053B24();
      v49 = v41;
      v51 = v50;
      (*(v40 + 8))(v49, v32);
      v52 = sub_1BD123690(v48, v51, &aBlock);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v46 + 4) = v52;
      _os_log_impl(&dword_1BD026000, v42, v43, "Failed to convert token url into components. Url: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47, v60, v61, v62, v63, v64, v65, v66);
      MEMORY[0x1BFB45F20](v47, -1, -1);
      MEMORY[0x1BFB45F20](v46, -1, -1);

      (*(v45 + 8))(v240, v37);
    }

    else
    {

      (*(v40 + 8))(v41, v32);
      (*(v45 + 8))(v39, v37);
    }

    v115 = [objc_opt_self() errorWithSeverity_];
    v247();

    return;
  }

  (*(v34 + 32))(v230, v22, v35);
  v67 = sub_1BE04A334();
  if (!v67)
  {
    goto LABEL_27;
  }

  v75 = v67;
  v76 = v229;
  v77 = v236;
  v78 = v233;
  if (!*(v67 + 16))
  {
LABEL_15:
    v75, v68, v69, v70, v71, v72, v73, v74;
    v38 = v247;
    v37 = v245;
LABEL_27:
    v162 = v238;
    sub_1BE04D0C4();
    v163 = v241;
    v164 = v237;
    (*(v241 + 16))(v237, v244, v32);
    v165 = sub_1BE04D204();
    v166 = sub_1BE052C34();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = v38;
      v168 = v163;
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      aBlock = v170;
      *v169 = 136315138;
      sub_1BD431D2C(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v171 = sub_1BE053B24();
      v172 = v164;
      v173 = v167;
      v174 = v162;
      v176 = v175;
      (*(v168 + 8))(v172, v32);
      v177 = sub_1BD123690(v171, v176, &aBlock);
      v38 = v173;
      v176, v178, v179, v180, v181, v182, v183, v184;
      *(v169 + 4) = v177;
      _os_log_impl(&dword_1BD026000, v165, v166, "Failed to find token in result url: %s", v169, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v170, v185, v186, v187, v188, v189, v190, v191);
      MEMORY[0x1BFB45F20](v170, -1, -1);
      MEMORY[0x1BFB45F20](v169, -1, -1);

      (*(v242 + 8))(v174, v245);
    }

    else
    {

      (*(v163 + 8))(v164, v32);
      (*(v242 + 8))(v162, v37);
    }

    v192 = v232;
    v193 = v231;
    v194 = v230;
    v195 = [objc_opt_self() errorWithSeverity_];
    v38();

    (*(v193 + 8))(v194, v192);
    return;
  }

  v79 = *(v67 + 16);
  v80 = 0;
  v240 = (v236 + 16);
  v239 = @"verificationToken";
  v81 = (v236 + 8);
  while (1)
  {
    if (v80 >= v75[2])
    {
      __break(1u);
      goto LABEL_34;
    }

    (*(v77 + 16))(v78, v75 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v80, v76);
    v82 = sub_1BE04A304();
    v84 = v83;
    v86 = sub_1BE052434();
    v92 = v85;
    if (v82 == v86 && v84 == v85)
    {
      v75, v85, v86, v87, v88, v89, v90, v91;
      v84, v116, v117, v118, v119, v120, v121, v122;
      v123 = v92;
      goto LABEL_20;
    }

    v93 = sub_1BE053B84();
    v84, v94, v95, v96, v97, v98, v99, v100;
    v92, v101, v102, v103, v104, v105, v106, v107;
    if (v93)
    {
      break;
    }

    ++v80;
    v78 = v233;
    (*v81)(v233, v76);
    if (v79 == v80)
    {
      goto LABEL_15;
    }
  }

  v123 = v75;
LABEL_20:
  v123, v108, v109, v110, v111, v112, v113, v114;
  v124 = v228;
  (*(v77 + 32))(v228, v233, v76);
  sub_1BE04A314();
  v126 = v125;
  (*(v77 + 8))(v124, v76);
  v38 = v247;
  v37 = v245;
  if (!v126)
  {
    goto LABEL_27;
  }

  v127 = [objc_allocWithZone(MEMORY[0x1E69B8EE8]) init];
  v128 = v227;
  v129 = [*(v227 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_methodGroup) identifier];
  if (!v129)
  {
    sub_1BE052434();
    v131 = v130;
    v129 = sub_1BE052404();
    v131, v132, v133, v134, v135, v136, v137, v138;
  }

  [v127 setMethodGroupIdentifier_];

  v139 = [v225 identifier];
  v140 = v234;
  v141 = v235;
  v142 = v226;
  if (!v139)
  {
    sub_1BE052434();
    v144 = v143;
    v139 = sub_1BE052404();
    v144, v145, v146, v147, v148, v149, v150, v151;
  }

  [v127 setMethodIdentifier_];

  sub_1BE052464();
  v152 = sub_1BE052444();
  v154 = v153;
  v126, v153, v155, v156, v157, v158, v159, v160;
  (*(v141 + 8))(v142, v140);
  if (v154 >> 60 == 15)
  {
    v161 = 0;
  }

  else
  {
    v161 = sub_1BE04AAB4();
    sub_1BD030220(v152, v154, v196, v197, v198, v199, v200, v201);
  }

  v202 = v246;
  v203 = v232;
  [v127 setVerificationData_];

  v204 = *(v128 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_verificationController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_1BE0B7020;
  *(v205 + 32) = v127;
  sub_1BD0E5E8C(0, &qword_1EBD45EF8, 0x1E69B8EE8);
  v206 = v127;
  v207 = sub_1BE052724();
  v205, v208, v209, v210, v211, v212, v213, v214;
  v215 = swift_allocObject();
  *(v215 + 16) = v247;
  *(v215 + 24) = v202;
  v252 = sub_1BD431D74;
  v253 = v215;
  aBlock = MEMORY[0x1E69E9820];
  v249 = 1107296256;
  v250 = sub_1BD4315EC;
  v251 = &block_descriptor_19_2;
  v216 = _Block_copy(&aBlock);
  v217 = v253;
  sub_1BE048964();
  v217, v218, v219, v220, v221, v222, v223, v224;
  [v204 submitVerificationEntries:v207 completion:v216];
  _Block_release(v216);

  (*(v231 + 8))(v230, v203);
}