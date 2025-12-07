uint64_t sub_215682FE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_215683000(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_215683028()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_215683074(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_215692C60();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21568312C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_215692C60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2156831DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21568321C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_215683254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_215692E20();
  *a1 = result;
  return result;
}

uint64_t sub_2156832A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215692E40();
  *a1 = result;
  return result;
}

uint64_t sub_21568330C()
{
  sub_215692EB0();
  sub_21568B380();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21568339C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2156833D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E4B8, &qword_215694B28);
  sub_21568B428(&qword_27CA6E4C8, &qword_27CA6E4B8, &qword_215694B28, MEMORY[0x277CDE5A0]);
  sub_2156881D4();
  return swift_getOpaqueTypeConformance2();
}

void sub_215683490(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TranscriptCompositor.collectionView.setter(v1);
}

uint64_t sub_2156834C0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

double sub_2156835BC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_21568363C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_boundarySupplementaryItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_215684898(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2156848B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_2156848F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static CKInboxViewControllerFactory.inboxViewController(model:)(void *a1)
{
  type metadata accessor for InboxModel(0);
  sub_215684A58();
  sub_215692E00();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  swift_beginAccess();
  v3 = a1;
  sub_215692D50();
  swift_endAccess();
  [*(v2 + 16) setDelegate_];
  sub_215692D10();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1B8, &qword_215694208));
  return sub_215692E80();
}

unint64_t sub_215684A58()
{
  result = qword_27CA6E1B0;
  if (!qword_27CA6E1B0)
  {
    type metadata accessor for InboxModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E1B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _s15CircleLayerTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15CircleLayerTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_215684DA0()
{
  result = qword_27CA6E1C0;
  if (!qword_27CA6E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E1C0);
  }

  return result;
}

uint64_t sub_215684E08()
{
  v1 = *v0;
  sub_215693270();
  MEMORY[0x21606E4D0](v1);
  return sub_215693290();
}

uint64_t sub_215684E7C(uint64_t a1)
{
  v2 = *v1;
  sub_215693270();
  MEMORY[0x21606E4D0](v2);
  return sub_215693290();
}

double CKDownloadingPendingMessagesView.intrinsicContentSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2156942A0;
  v2 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_smallCircle];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_mediumCircle];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_largeCircle];
  *(inited + 48) = v4;
  v18 = vdupq_n_s64(0x7FF0000000000000uLL);
  v19 = vdupq_n_s64(0xFFF0000000000000);
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v6; ; i = MEMORY[0x21606E3F0](0, inited))
  {
    v10 = i;
    v22 = i;
    sub_215685108(v18.i64, &v22, v20.i64);

    v18 = v20;
    v19 = v21;
    if (v5)
    {
      v11 = MEMORY[0x21606E3F0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v11 = *(inited + 40);
    }

    v12 = v11;
    v22 = v11;
    sub_215685108(v18.i64, &v22, v20.i64);

    v18 = v20;
    v19 = v21;
    if (v5)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v13 = MEMORY[0x21606E3F0](2, inited);
LABEL_10:
  v14 = v13;
  v22 = v13;
  sub_215685108(v18.i64, &v22, v20.i64);

  v15 = *v20.i64;
  v16 = *v21.i64;
  swift_setDeallocating();
  swift_arrayDestroy();
  [v0 transform];
  return (v16 - v15) * *v18.i64;
}

void sub_215685108(double *a1@<X0>, id *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  [*a2 frame];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinX = CGRectGetMinX(v19);
  if ((*&MinX & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = MinX;
  }

  if ((~*&MinX & 0x7FF0000000000000) != 0)
  {
    v13 = MinX;
  }

  if (v4 > MinX)
  {
    v4 = v13;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinY = CGRectGetMinY(v20);
  if ((*&MinY & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v5;
  }

  else
  {
    v15 = MinY;
  }

  if ((~*&MinY & 0x7FF0000000000000) != 0)
  {
    v15 = MinY;
  }

  if (v5 > MinY)
  {
    v5 = v15;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MaxX = CGRectGetMaxX(v21);
  if ((*&MaxX & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v7;
  }

  else
  {
    v17 = MaxX;
  }

  if ((~*&MaxX & 0x7FF0000000000000) != 0)
  {
    v17 = MaxX;
  }

  if (MaxX >= v7)
  {
    v7 = v17;
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = CGRectGetMaxY(v22);
  if (MaxY >= v6)
  {
    if ((~*&MaxY & 0x7FF0000000000000) == 0 && (*&MaxY & 0xFFFFFFFFFFFFFLL) != 0)
    {
      MaxY = v6;
    }
  }

  else
  {
    MaxY = v6;
  }

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = MaxY;
}

id CKDownloadingPendingMessagesView.init(configuration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

{
  v3 = OBJC_IVAR___CKDownloadingPendingMessagesView_smallCircle;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v4 = OBJC_IVAR___CKDownloadingPendingMessagesView_mediumCircle;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v5 = OBJC_IVAR___CKDownloadingPendingMessagesView_largeCircle;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = OBJC_IVAR___CKDownloadingPendingMessagesView_container;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR___CKDownloadingPendingMessagesView_progressView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D758F0]) init];
  v1[OBJC_IVAR___CKDownloadingPendingMessagesView_didFinishAppearenceAnimation] = 0;
  *&v1[OBJC_IVAR___CKDownloadingPendingMessagesView_configuration] = a1;
  v12.receiver = v1;
  v12.super_class = CKDownloadingPendingMessagesView;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_215685400();
  sub_2156855C0();
  [v10 startAppearanceAnimations];

  return v10;
}

id sub_215685400()
{
  sub_215685E0C();
  v1 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_container];
  [v0 addSubview_];
  [*&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_largeCircle] frame];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_progressView];
  [v1 addSubview_];
  v4 = [objc_opt_self() grayColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  v5 = [objc_opt_self() systemFontOfSize_];
  [v2 setFont_];

  [v3 setAlpha_];
  [v3 setClipsToBounds_];
  v6 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_configuration];
  [v3 setTintColor_];
  v7 = *(v6 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_progressTrackColor);

  return [v3 setTrackTintColor_];
}

void sub_2156855C0()
{
  v1 = *(v0 + OBJC_IVAR___CKDownloadingPendingMessagesView_progressView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2156942B0;
  v4 = [v1 centerYAnchor];
  v5 = *(v0 + OBJC_IVAR___CKDownloadingPendingMessagesView_container);
  v6 = [v5 centerYAnchor];
  v7 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v5 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];

  *(v3 + 40) = v10;
  v11 = [v1 trailingAnchor];
  v12 = [v5 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-10.0];

  *(v3 + 48) = v13;
  v14 = [v1 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v3 + 56) = v15;
  sub_2156873E4(0, &qword_27CA6E238, 0x277CCAAD0);
  v16 = sub_2156930E0();

  [v2 activateConstraints_];
}

Swift::Void __swiftcall CKDownloadingPendingMessagesView.updateMessageCount(with:)(NSAttributedString with)
{
  [*(v1 + OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel) setAttributedText_];

  sub_215685908();
}

void sub_215685908()
{
  if (v0[OBJC_IVAR___CKDownloadingPendingMessagesView_didFinishAppearenceAnimation])
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v13 = sub_215687224;
    v14 = v2;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_21568629C;
    v12 = &block_descriptor_6;
    v3 = _Block_copy(&v9);
    v4 = v0;

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v13 = sub_215687230;
    v14 = v5;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_21568674C;
    v12 = &block_descriptor_12;
    v6 = _Block_copy(&v9);
    v7 = v4;

    [v1 animateWithDuration:v3 animations:v6 completion:0.3];
    _Block_release(v6);
    _Block_release(v3);
  }

  else
  {
    [*&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel] setAlpha_];
    v8 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_progressView];

    [v8 setAlpha_];
  }
}

id CKDownloadingPendingMessagesView.updateForLayoutDirection(withScale:)(CGFloat a1)
{
  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    v4 = [result userInterfaceLayoutDirection];
    v5 = *&v1[OBJC_IVAR___CKDownloadingPendingMessagesView_progressView];
    if (v4 == 1)
    {
      CGAffineTransformMakeRotation(&v7, 3.14159265);
      [v5 setTransform_];
      v6 = -a1;
    }

    else
    {
      *&v7.a = 0x3FF0000000000000uLL;
      v7.c = 0.0;
      v7.d = 1.0;
      *&v7.tx = 0uLL;
      [v5 setTransform_];
      v6 = a1;
    }

    CGAffineTransformMakeScale(&v7, v6, a1);
    return [v1 setTransform_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CKDownloadingPendingMessagesView.layoutSubviews()()
{
  v6.super_class = CKDownloadingPendingMessagesView;
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_container] layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v3 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_progressView];
  v4 = [v3 layer];
  [v3 bounds];
  [v4 setCornerRadius_];
}

uint64_t sub_215685E0C()
{
  v21 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_smallCircle];
  v22[0] = 0;
  v23 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_mediumCircle];
  v24 = 1;
  v25 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_largeCircle];
  v26 = 2;
  v1 = *&v0[OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel];
  v2 = v21;
  v3 = v23;
  v4 = v25;
  v5 = 0;
  v27 = [v1 layer];
  v28 = 2;
  v6 = OBJC_IVAR___CKDownloadingPendingMessagesView_configuration;
  do
  {
    v16 = &v20[v5];
    v17 = *&v0[v6];
    if (v22[v5])
    {
      if (v22[v5] == 1)
      {
        v7 = (v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleSize);
        v8 = (v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleSize + 8);
        v19 = vaddq_f64(*(v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleOffset), *(v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame));
        v9 = 0.326;
        v10 = 0.37;
      }

      else
      {
        v7 = (v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleSize);
        v8 = (v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleSize + 8);
        v19 = vaddq_f64(*(v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleOffset), *(v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame));
        v9 = 0.185;
        v10 = 0.28;
      }
    }

    else
    {
      v7 = (v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame + 16);
      v8 = (v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame + 24);
      v19 = vaddq_f64(*(v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame), 0);
      v9 = 0.318;
      v10 = 0.318;
    }

    v5 += 16;
    v11 = *v8;
    v12 = *v7;
    v13 = v16[4];
    [v13 setAnchorPoint_];
    [v13 setPosition_];
    [v13 setBounds_];
    [v13 setCornerRadius_];
    v14 = [*(v17 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_bubbleColor) CGColor];
    [v13 setBackgroundColor_];

    [v13 setHidden_];
    v15 = [v0 layer];
    [v15 addSublayer_];
  }

  while (v5 != 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E240, &unk_215694300);
  return swift_arrayDestroy();
}

void __swiftcall CKDownloadingPendingMessagesView.init(frame:)(CKDownloadingPendingMessagesView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_21568629C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2156862E0(uint64_t a1, void *a2)
{
  v3 = sub_215693030();
  MEMORY[0x28223BE20](v3);
  v4 = sub_215693050();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  sub_2156873E4(0, &qword_27CA6E218, 0x277D85C78);
  v11 = sub_215693160();
  sub_215693040();
  sub_215693080();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  aBlock[4] = sub_215687238;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21568629C;
  aBlock[3] = &block_descriptor_18;
  _Block_copy(aBlock);
  v16[1] = MEMORY[0x277D84F90];
  sub_215687240();
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E228, &qword_2156942F8);
  sub_215687298();
  sub_215693180();
  sub_215693070();
  swift_allocObject();
  sub_215693060();

  sub_215693150();

  return (v12)(v10, v4);
}

void sub_215686594(char *a1)
{
  [*&a1[OBJC_IVAR___CKDownloadingPendingMessagesView_progressView] _setProgressAnimated_duration_delay_options_];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_215687344;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_21568629C;
  v12 = &block_descriptor_24;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_2156873B8;
  v14 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_21568674C;
  v12 = &block_descriptor_30;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.3];
  _Block_release(v7);
  _Block_release(v4);
}

uint64_t sub_21568674C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_2156867A0()
{
  v1 = objc_opt_self();
  [v1 begin];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  aBlock[4] = sub_2156871D8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21568629C;
  aBlock[3] = &block_descriptor;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  v51 = v1;
  [v1 setCompletionBlock_];
  _Block_release(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2156942B0;
  *(inited + 32) = sub_215687454(0);
  v6 = *&v4[OBJC_IVAR___CKDownloadingPendingMessagesView_configuration];
  *(inited + 40) = sub_215687570(v6, 0, 0.0);
  *(inited + 48) = sub_2156877E4(v6, 0, 0.0);
  *(inited + 56) = sub_215687AC8(0, 0.0);
  v52 = *&v4[OBJC_IVAR___CKDownloadingPendingMessagesView_smallCircle];
  sub_215686F68(v52, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = *&v4[OBJC_IVAR___CKDownloadingPendingMessagesView_mediumCircle];
  [v7 convertTime:0 fromLayer:CACurrentMediaTime()];
  v9 = v8;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2156942B0;
  v11 = sub_2156930A0();
  v12 = objc_opt_self();
  v13 = [v12 animationWithKeyPath_];

  v14 = sub_215693130();
  [v13 setFromValue_];

  v15 = sub_215693130();
  [v13 setToValue_];

  v16 = v13;
  [v16 setDuration_];
  v17 = *MEMORY[0x277CDA238];
  [v16 setFillMode_];
  [v16 setRemovedOnCompletion_];

  *(v10 + 32) = v16;
  *(v10 + 40) = sub_215687570(v6, 1, v9);
  *(v10 + 48) = sub_2156877E4(v6, 1, v9);
  *(v10 + 56) = sub_215687AC8(1, v9);
  sub_215686F68(v7, v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  v18 = *&v4[OBJC_IVAR___CKDownloadingPendingMessagesView_largeCircle];
  [v18 convertTime:0 fromLayer:CACurrentMediaTime()];
  v20 = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2156942B0;
  v22 = sub_2156930A0();
  v23 = [v12 animationWithKeyPath_];

  v24 = sub_215693130();
  [v23 setFromValue_];

  v25 = sub_215693130();
  [v23 setToValue_];

  v26 = v23;
  [v26 setDuration_];
  [v26 setFillMode_];
  [v26 setRemovedOnCompletion_];

  *(v21 + 32) = v26;
  *(v21 + 40) = sub_215687570(v6, 2, v20);
  *(v21 + 48) = sub_2156877E4(v6, 2, v20);
  *(v21 + 56) = sub_215687AC8(2, v20);
  sub_215686F68(v18, v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  [v18 convertTime:0 fromLayer:CACurrentMediaTime()];
  v28 = v27;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_2156942B0;
  v30 = sub_2156930A0();
  v31 = [v12 animationWithKeyPath_];

  v32 = sub_215693130();
  [v31 setFromValue_];

  v33 = sub_215693130();
  [v31 setToValue_];

  v34 = v31;
  [v34 setDuration_];
  [v34 setFillMode_];
  [v34 setRemovedOnCompletion_];

  *(v29 + 32) = v34;
  *(v29 + 40) = sub_215687570(v6, 2, v28);
  *(v29 + 48) = sub_2156877E4(v6, 2, v28);
  *(v29 + 56) = sub_215687AC8(2, v28);
  v35 = *&v4[OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel];
  v36 = [v35 layer];
  sub_215686F68(v36, v29);

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_2156942B0;
  *(v37 + 32) = v52;
  *(v37 + 40) = v7;
  *(v37 + 48) = v18;
  v38 = v52;
  v39 = v7;
  v40 = v18;
  *(v37 + 56) = [v35 layer];
  v41 = v37 & 0xC000000000000001;
  if ((v37 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(v37 + 32); ; i = MEMORY[0x21606E3F0](0, v37))
  {
    v43 = i;
    [i setHidden_];

    if (v41)
    {
      v44 = MEMORY[0x21606E3F0](1, v37);
    }

    else
    {
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v44 = *(v37 + 40);
    }

    v45 = v44;
    [v44 setHidden_];

    if (v41)
    {
      v46 = MEMORY[0x21606E3F0](2, v37);
    }

    else
    {
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v46 = *(v37 + 48);
    }

    v47 = v46;
    [v46 setHidden_];

    if (v41)
    {
      break;
    }

    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v48 = *(v37 + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v48 = MEMORY[0x21606E3F0](3, v37);
LABEL_13:
  v49 = v48;
  [v48 setHidden_];

  swift_setDeallocating();
  swift_arrayDestroy();
  return [v51 commit];
}

void sub_215686F68(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2156931E0())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21606E3F0](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [a1 addAnimation:v6 forKey:0];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void _sSo32CKDownloadingPendingMessagesViewC0C7SupportE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR___CKDownloadingPendingMessagesView_smallCircle;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v2 = OBJC_IVAR___CKDownloadingPendingMessagesView_mediumCircle;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v3 = OBJC_IVAR___CKDownloadingPendingMessagesView_largeCircle;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v4 = OBJC_IVAR___CKDownloadingPendingMessagesView_container;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR___CKDownloadingPendingMessagesView_progressView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D758F0]) init];
  *(v0 + OBJC_IVAR___CKDownloadingPendingMessagesView_didFinishAppearenceAnimation) = 0;
  sub_2156931C0();
  __break(1u);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_215687240()
{
  result = qword_27CA6E220;
  if (!qword_27CA6E220)
  {
    sub_215693030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E220);
  }

  return result;
}

unint64_t sub_215687298()
{
  result = qword_27CA6E230;
  if (!qword_27CA6E230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E228, &qword_2156942F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E230);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_215687350(double a1, double a2)
{
  v4 = *(v2 + 16);
  [*(v4 + OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel) setAlpha_];
  v5 = *(v4 + OBJC_IVAR___CKDownloadingPendingMessagesView_progressView);

  return [v5 setAlpha_];
}

uint64_t sub_2156873E4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_215687454(char a1)
{
  v2 = sub_2156930A0();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = sub_215693130();
  [v3 setFromValue_];

  v5 = sub_215693130();
  [v3 setToValue_];

  if (a1)
  {
    v6 = 0.25;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v3;
  [v7 setDuration_];
  [v7 setFillMode_];
  [v7 setRemovedOnCompletion_];

  return v7;
}

id sub_215687570(uint64_t a1, char a2, double a3)
{
  v6 = sub_2156930A0();
  v7 = [objc_opt_self() animationWithKeyPath_];

  if (a2 == 2)
  {
    v8 = &OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleOffset;
  }

  else
  {
    if (a2 != 1)
    {
      v9 = *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame) + 0.0;
      v10 = 5.5;
      goto LABEL_7;
    }

    v8 = &OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleOffset;
  }

  v9 = *(a1 + *v8) + *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame);
  v10 = 5.0;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E248, &qword_215694328);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_215694310;
  v12 = MEMORY[0x277D85048];
  *(v11 + 56) = MEMORY[0x277D85048];
  *(v11 + 32) = v9;
  *(v11 + 88) = v12;
  *(v11 + 64) = v9 + v10;
  *(v11 + 120) = v12;
  *(v11 + 96) = v9;
  v13 = sub_2156930E0();

  [v7 setValues_];

  v14 = dbl_215694330[a2] + a3;
  v15 = v7;
  [v15 setBeginTime_];
  v16 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v17) = 1036831949;
  LODWORD(v18) = 0.25;
  LODWORD(v19) = 0.25;
  LODWORD(v20) = 1.0;
  v21 = [v16 initWithControlPoints__:v18 :{v17, v19, v20}];
  [v15 setTimingFunction_];

  [v15 setCalculationMode_];
  LODWORD(v22) = 1.0;
  [v15 setSpeed_];
  [v15 setDuration_];
  [v15 setFillMode_];
  [v15 setRemovedOnCompletion_];

  return v15;
}

id sub_2156877E4(uint64_t a1, char a2, double a3)
{
  v6 = sub_2156930A0();
  v7 = [objc_opt_self() animationWithKeyPath_];

  if (a2 == 2)
  {
    v8 = *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleOffset + 8) + *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame + 8);
    v9 = -6.0;
  }

  else if (a2 == 1)
  {
    v8 = *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleOffset + 8) + *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame + 8);
    v9 = 3.5;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame + 8) + 0.0;
    v9 = -2.5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E248, &qword_215694328);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_215694310;
  v11 = MEMORY[0x277D85048];
  *(v10 + 56) = MEMORY[0x277D85048];
  *(v10 + 32) = v8;
  *(v10 + 88) = v11;
  *(v10 + 64) = v8 + v9;
  *(v10 + 120) = v11;
  *(v10 + 96) = v8;
  v12 = sub_2156930E0();

  [v7 setValues_];

  v13 = a2;
  v14 = dbl_215694330[a2] + a3;
  v15 = v7;
  [v15 setBeginTime_];
  v16 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  if (v13 >= 2)
  {
    LODWORD(v17) = 1045836616;
    v21 = 1048849804;
  }

  else
  {
    LODWORD(v17) = 1051315048;
    v21 = 1036831949;
  }

  LODWORD(v18) = v21;
  LODWORD(v19) = 1057991709;
  LODWORD(v20) = 1064582806;
  v22 = [v16 initWithControlPoints__:v17 :{v18, v19, v20}];
  [v15 setTimingFunction_];

  [v15 setCalculationMode_];
  LODWORD(v23) = 1.0;
  [v15 setSpeed_];
  [v15 setDuration_];
  [v15 setFillMode_];
  [v15 setRemovedOnCompletion_];

  return v15;
}

id sub_215687AC8(char a1, double a2)
{
  v4 = sub_2156930A0();
  v5 = [objc_opt_self() animationWithKeyPath_];

  v6 = sub_215693120();
  [v5 setFromValue_];

  v7 = sub_215693120();
  [v5 setToValue_];

  v8 = v5;
  [v8 setDuration_];
  LODWORD(v9) = 1.0;
  [v8 setSpeed_];
  [v8 setBeginTime_];
  v10 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v11) = 1036831949;
  LODWORD(v12) = 0.25;
  LODWORD(v13) = 0.25;
  LODWORD(v14) = 1.0;
  v15 = [v10 initWithControlPoints__:v12 :{v11, v13, v14}];
  [v8 setTimingFunction_];

  [v8 setFillMode_];
  [v8 setRemovedOnCompletion_];

  return v8;
}

uint64_t DateText.init(date:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for MajorTimeChangeCoordinator();
  sub_215688228(&qword_27CA6E250, v4, type metadata accessor for MajorTimeChangeCoordinator, &protocol conformance descriptor for MajorTimeChangeCoordinator);
  *a2 = sub_215692E00();
  *(a2 + 1) = v5;
  v6 = *(type metadata accessor for DateText(0) + 20);
  v7 = sub_215692C60();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a2[v6], a1, v7);
}

uint64_t type metadata accessor for DateText(uint64_t a1)
{
  result = qword_27CA6E278;
  if (!qword_27CA6E278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DateText.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_215692CF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_215692C60();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  sub_215692CE0();
  sub_215692C50();
  v45 = v16;
  sub_215692CC0();
  v17 = *(v8 + 8);
  v17(v14, v7);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_215692CE0();
  sub_215692C50();
  v47 = v11;
  sub_215692CC0();
  v46 = v7;
  v44 = v17;
  v17(v14, v7);
  v18(v6, v3);
  v19 = *v2;
  if (*v2)
  {
    v20 = *(v19 + 16);
    sub_215692CE0();
    type metadata accessor for DateText(0);
    v21 = sub_215692CD0();
    v18(v6, v3);
    if (v21)
    {
      v22 = 24;
      v23 = v46;
      v24 = v47;
      v25 = v45;
    }

    else
    {
      v25 = v45;
      v26 = sub_215692C40();
      v23 = v46;
      v24 = v47;
      if ((v26 & 1) == 0)
      {
        goto LABEL_7;
      }

      sub_215688228(&qword_27CA6E260, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (sub_215693090())
      {
        goto LABEL_7;
      }

      v22 = 32;
    }

    v20 = *(v19 + v22);

LABEL_7:
    v27 = sub_215692C30();
    v28 = [v20 stringFromDate_];

    v29 = sub_2156930B0();
    v31 = v30;

    v49 = v29;
    v50 = v31;
    sub_2156881D4();
    v32 = sub_215692F70();
    v34 = v33;
    LOBYTE(v31) = v35;
    v37 = v36;

    v38 = v24;
    v39 = v44;
    v44(v38, v23);
    result = v39(v25, v23);
    v41 = v48;
    *v48 = v32;
    v41[1] = v34;
    *(v41 + 16) = v31 & 1;
    v41[3] = v37;
    return result;
  }

  type metadata accessor for MajorTimeChangeCoordinator();
  sub_215688228(&qword_27CA6E250, v42, type metadata accessor for MajorTimeChangeCoordinator, &protocol conformance descriptor for MajorTimeChangeCoordinator);
  result = sub_215692DF0();
  __break(1u);
  return result;
}

unint64_t sub_2156881D4()
{
  result = qword_27CA6E258;
  if (!qword_27CA6E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E258);
  }

  return result;
}

uint64_t sub_215688228(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_215688274()
{
  v0 = sub_215692CB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  [v4 setDoesRelativeDateFormatting_];
  v5 = objc_opt_self();
  v6 = sub_2156930A0();
  sub_215692CA0();
  v7 = sub_215692C90();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  [v4 setDateFormat_];
  return v4;
}

uint64_t MajorTimeChangeCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  MajorTimeChangeCoordinator.init()();
  return v0;
}

void *MajorTimeChangeCoordinator.init()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v2 setDateStyle_];
  [v2 setTimeStyle_];
  [v2 setDoesRelativeDateFormatting_];
  v1[2] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v3 setDateStyle_];
  [v3 setTimeStyle_];
  [v3 setDoesRelativeDateFormatting_];
  v1[3] = v3;
  v1[4] = sub_215688274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E268, &unk_215694360);
  swift_allocObject();
  v4 = sub_215692D30();
  v5 = MEMORY[0x277D84F90];
  v1[5] = v4;
  v1[6] = v5;
  sub_215688568();
  return v1;
}

void *sub_215688568()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_2156931E0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    result = objc_opt_self();
    if (v3 < 1)
    {
      __break(1u);
      return result;
    }

    v5 = result;

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21606E3F0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      v8 = [v5 defaultCenter];
      [v8 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v3 != v6);
  }

  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277D766F0];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  swift_weakInit();
  v29 = sub_21568911C;
  v30 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_215688A44;
  v28 = &block_descriptor_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = swift_beginAccess();
  MEMORY[0x21606E320](v17);
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215693100();
  }

  sub_215693110();
  swift_endAccess();
  v18 = [v9 defaultCenter];
  v19 = *MEMORY[0x277CBE620];
  v20 = [v12 mainQueue];
  v21 = swift_allocObject();
  swift_weakInit();
  v29 = sub_21568913C;
  v30 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_215688A44;
  v28 = &block_descriptor_8;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 addObserverForName:v19 object:0 queue:v20 usingBlock:v22];
  _Block_release(v22);

  v24 = swift_beginAccess();
  MEMORY[0x21606E320](v24);
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215693100();
  }

  sub_215693110();
  return swift_endAccess();
}

uint64_t sub_215688998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E268, &unk_215694360);
    sub_215689144(&qword_27CA6E290, MEMORY[0x277CBCE18]);
    sub_215692D40();
  }

  return result;
}

uint64_t sub_215688A44(uint64_t a1, uint64_t a2)
{
  v3 = sub_215692C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_215692C00();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_215688B38(uint64_t a1, uint64_t a2)
{
  v2 = sub_215692CB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 32);

    v8 = objc_opt_self();
    v9 = sub_2156930A0();
    sub_215692CA0();
    v10 = sub_215692C90();
    (*(v3 + 8))(v5, v2);
    v11 = [v8 dateFormatFromTemplate:v9 options:0 locale:v10];

    [v7 setDateFormat_];
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E268, &unk_215694360);
    sub_215689144(&qword_27CA6E290, MEMORY[0x277CBCE18]);
    sub_215692D40();
  }

  return result;
}

void *MajorTimeChangeCoordinator.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E248, &qword_215694328);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_215694350;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0xD000000000000012;
    *(v8 + 40) = 0x8000000215695020;
    sub_215693260();

    return v0;
  }

  v2 = sub_2156931E0();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = objc_opt_self();
  if (v2 >= 1)
  {
    v4 = result;

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21606E3F0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = [v4 defaultCenter];
      [v7 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v2 != v5);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t MajorTimeChangeCoordinator.__deallocating_deinit()
{
  MajorTimeChangeCoordinator.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_215688FDC(uint64_t a1)
{
  sub_215689060(319);
  if (v1 <= 0x3F)
  {
    sub_215692C60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_215689060(uint64_t a1)
{
  if (!qword_27CA6E288)
  {
    type metadata accessor for MajorTimeChangeCoordinator();
    sub_215688228(&qword_27CA6E250, v1, type metadata accessor for MajorTimeChangeCoordinator, &protocol conformance descriptor for MajorTimeChangeCoordinator);
    v2 = sub_215692E10();
    if (!v3)
    {
      atomic_store(v2, &qword_27CA6E288);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_215689144(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E268, &unk_215694360);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static TranscriptLayoutUtilities.layoutSize(size:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

id static TranscriptLayoutUtilities.dynamicWidthLayoutSize(height:)(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension_];
  v4 = [v2 absoluteDimension_];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  return v5;
}

id TranscriptLayoutUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptLayoutUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TranscriptLayoutUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s15MessagesSupport25TranscriptLayoutUtilitiesC012dynamicWidthD5Group10layoutItemSo012NSCollectiondH0CSo0kdJ0C_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() fractionalWidthDimension_];
  v3 = [a1 layoutSize];
  v4 = [v3 heightDimension];

  v5 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:v4];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_215694480;
  *(v7 + 32) = a1;
  sub_215689744();
  v8 = a1;
  v9 = sub_2156930E0();

  v10 = [v6 verticalGroupWithLayoutSize:v5 subitems:v9];

  return v10;
}

unint64_t sub_215689744()
{
  result = qword_28119C880;
  if (!qword_28119C880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119C880);
  }

  return result;
}

uint64_t sub_2156897BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2B0, &qword_215694568);
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2B8, &qword_215694570);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (a1)
  {
    v35 = a2;
    v36 = v6;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_215692D90();

    if (v41)
    {
      sub_21568AEEC();
      sub_21568AF40();
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }

    else
    {
      type metadata accessor for InboxModel(0);
      sub_21568B5D0(&qword_27CA6E1B0, type metadata accessor for InboxModel, &unk_215694980);
      v38 = sub_215692E00();
      v39 = v15;
      v40 = 1;
      sub_21568AEEC();
      sub_21568AF40();
    }

    sub_215692E90();
    v16 = v41;
    v17 = v42;
    v18 = v43;
    v19 = *(a1 + 16);
    sub_21568AF94(v16, v17, v18);

    v20 = [v19 footerAction];

    v21 = 1;
    if (v20)
    {
      _Block_release(v20);
      v22 = swift_allocObject();
      v23 = v35;
      *(v22 + 16) = a1;
      *(v22 + 24) = v23;

      sub_215693000();
      KeyPath = swift_getKeyPath();
      v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2D8, &qword_2156945F8) + 36)];
      *v25 = KeyPath;
      v25[8] = 1;
      v26 = sub_215692F20();
      v27 = swift_getKeyPath();
      v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2E0, &unk_215694630) + 36)];
      *v28 = v27;
      v28[1] = v26;
      v29 = sub_215692EC0();
      v30 = v37;
      v31 = &v8[*(v37 + 36)];
      *v31 = v29;
      *(v31 + 8) = 0u;
      *(v31 + 24) = 0u;
      v31[40] = 1;
      sub_21568B08C(v8, v14);
      v21 = 0;
    }

    else
    {
      v30 = v37;
    }

    (*(v36 + 56))(v14, v21, 1, v30);
    sub_21568AFA0(v14, v12);
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = v18;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2D0, &qword_2156945C0);
    sub_21568AFA0(v12, a3 + *(v32 + 48));
    sub_21568AF94(v16, v17, v18);
    sub_21568B010(v16, v17, v18);
    sub_21568B01C(v14);
    sub_21568B01C(v12);
    return sub_21568B010(v16, v17, v18);
  }

  else
  {
    type metadata accessor for InboxModel(0);
    sub_21568B5D0(&qword_27CA6E1B0, type metadata accessor for InboxModel, &unk_215694980);
    result = sub_215692DF0();
    __break(1u);
  }

  return result;
}

void sub_215689C60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [*(a1 + 16) footerAction];
    if (v2)
    {
      v3 = v2;
      (*(v2 + 2))();

      _Block_release(v3);
    }
  }

  else
  {
    type metadata accessor for InboxModel(0);
    sub_21568B5D0(&qword_27CA6E1B0, type metadata accessor for InboxModel, &unk_215694980);
    sub_215692DF0();
    __break(1u);
  }
}

void sub_215689D24(uint64_t a1@<X8>)
{
  if (qword_27CA6E110 != -1)
  {
    swift_once();
  }

  if (qword_27CA6EFF0)
  {
    v1 = qword_27CA6EFF0;
    sub_215692C20();

    sub_2156881D4();
    v2 = sub_215692F70();
    v4 = v3;
    v6 = v5;
    v7 = objc_opt_self();
    v8 = [v7 secondaryLabelColor];
    sub_215692FD0();
    v9 = sub_215692F40();
    v32 = v10;
    v33 = v9;
    v12 = v11;

    sub_21568B0FC(v2, v4, v6 & 1);

    if (qword_27CA6EFF0)
    {
      v13 = qword_27CA6EFF0;
      sub_215692C20();

      v14 = sub_215692F70();
      v16 = v15;
      v18 = v17;
      v19 = [v7 linkColor];
      sub_215692FD0();
      v20 = sub_215692F40();
      v22 = v21;
      v24 = v23;

      sub_21568B0FC(v14, v16, v18 & 1);

      v30 = sub_215692F50();
      v31 = v25;
      v27 = v26;
      v29 = v28;
      sub_21568B0FC(v20, v22, v24 & 1);

      sub_21568B0FC(v33, v32, v12 & 1);

      *a1 = v30;
      *(a1 + 8) = v27;
      *(a1 + 16) = v29 & 1;
      *(a1 + 24) = v31;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21568A010@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_215692E70();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E298, &qword_215694550);
  sub_2156897BC(v4, v3, a1 + *(v5 + 44));
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  v7 = sub_215692FD0();
  LOBYTE(v4) = sub_215692EC0();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2A0, &qword_215694558) + 36);
  *v8 = v7;
  *(v8 + 8) = v4;
  LOBYTE(v7) = sub_215692ED0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2A8, &qword_215694560);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_21568A0EC()
{
  v0 = sub_215692EB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InboxModel(0);
  sub_21568B5D0(&qword_27CA6E1B0, type metadata accessor for InboxModel, &unk_215694980);
  v6[0] = sub_215692E00();
  v6[1] = v4;
  sub_215692EA0();
  sub_21568B380();
  sub_215692FC0();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21568A244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_215692DE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E320, &qword_215694728);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E328, &qword_215694730);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E330, &qword_215694738);
  v33 = *(v15 - 8);
  v34 = v15;
  MEMORY[0x28223BE20](v15);
  v31 = &v30 - v16;
  v36 = a1;
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E338, &qword_215694740);
  sub_21568B428(&qword_27CA6E340, &qword_27CA6E338, &qword_215694740, MEMORY[0x277CE14C0]);
  sub_215692F30();
  sub_215692DD0();
  v17 = sub_21568B428(&qword_27CA6E348, &qword_27CA6E320, &qword_215694728, MEMORY[0x277CDE5A0]);
  v18 = MEMORY[0x277CDDB48];
  sub_215692FC0();
  (*(v6 + 8))(v8, v5);
  result = (*(v10 + 8))(v12, v9);
  if (qword_27CA6E110 != -1)
  {
    result = swift_once();
  }

  if (qword_27CA6EFF0)
  {
    v20 = qword_27CA6EFF0;
    v21 = sub_215692C20();
    v23 = v22;

    v42 = v21;
    v43 = v23;
    v38 = v9;
    v39 = v5;
    v40 = v17;
    v41 = v18;
    swift_getOpaqueTypeConformance2();
    sub_2156881D4();
    v25 = v31;
    v24 = v32;
    sub_215692FB0();

    (*(v30 + 8))(v14, v24);
    v26 = [objc_opt_self() systemGroupedBackgroundColor];
    v27 = sub_215692FD0();
    LOBYTE(v20) = sub_215692EC0();
    v28 = v35;
    (*(v33 + 32))(v35, v25, v34);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E350, &qword_215694748);
    v29 = v28 + *(result + 36);
    *v29 = v27;
    *(v29 + 8) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21568A71C(uint64_t a1@<X0>, char *a3@<X8>)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E358, &qword_215694750);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  if (a1)
  {
    v11 = [*(a1 + 16) sections];
    sub_21568B3DC();
    v12 = sub_2156930F0();

    v23 = v12;
    sub_21568AA38();
    v14 = v13;
    v22 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E368, &qword_215694758);
    sub_215692C80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E370, &unk_215694760);
    sub_21568B428(&qword_27CA6E378, &qword_27CA6E368, &qword_215694758, MEMORY[0x277D83980]);
    sub_21568B470();
    sub_21568B5D0(&qword_27CA6E3A0, sub_21568B3DC, &protocol conformance descriptor for CKInboxSection);
    sub_215693010();
    v15 = *(v5 + 16);
    v15(v8, v10, v4);
    v16 = v21;
    *v21 = v14;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E3A8, &unk_215694770);
    v15(&v16[*(v17 + 48)], v8, v4);
    v18 = *(v5 + 8);
    v19 = v14;
    v18(v10, v4);
    v18(v8, v4);
  }

  else
  {
    type metadata accessor for InboxModel(0);
    sub_21568B5D0(&qword_27CA6E1B0, type metadata accessor for InboxModel, &unk_215694980);
    sub_215692DF0();
    __break(1u);
  }
}

void sub_21568AA38()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_2156931E0())
  {
    if (sub_2156931E0())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x21606E3F0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_2156931E0();
LABEL_13:
      if (v3)
      {
        sub_21568B7E0(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_21568AB10(void **a1)
{
  v1 = *a1;
  sub_21568AC58(&v5);
  v2 = [v1 footer];
  if (v2)
  {
    v3 = v2;
    sub_2156930B0();

    sub_2156881D4();
    v2 = sub_215692F70();
  }

  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E390, &unk_215694B30);
  sub_21568B500();
  sub_21568B57C();
  return sub_215693020();
}

id sub_21568AC58@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 header];
  if (result)
  {
    v4 = result;
    sub_2156930B0();

    sub_2156881D4();
    v5 = sub_215692F70();
    v7 = v6;
    v9 = v8;
    sub_215692F00();
    sub_215692EF0();
    sub_215692F10();

    v10 = sub_215692F60();
    v12 = v11;
    v14 = v13;

    sub_21568B0FC(v5, v7, v9 & 1);

    v15 = [objc_opt_self() labelColor];
    sub_215692FD0();
    v16 = sub_215692F40();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_21568B0FC(v10, v12, v14 & 1);

    v23 = v20 & 1;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v23 = 0;
    v22 = 0;
  }

  *a1 = v16;
  a1[1] = v18;
  a1[2] = v23;
  a1[3] = v22;
  return result;
}

uint64_t sub_21568ADF8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_215692D90();

  *a2 = v4;
  return result;
}

uint64_t sub_21568AE78(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_215692DA0();
}

unint64_t sub_21568AEEC()
{
  result = qword_27CA6E2C0;
  if (!qword_27CA6E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E2C0);
  }

  return result;
}

unint64_t sub_21568AF40()
{
  result = qword_27CA6E2C8;
  if (!qword_27CA6E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E2C8);
  }

  return result;
}

uint64_t sub_21568AF94(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_21568AFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2B8, &qword_215694570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21568B010(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_21568B01C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2B8, &qword_215694570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21568B08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E2B0, &qword_215694568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21568B0FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21568B10C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21568B168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21568B1D8()
{
  result = qword_27CA6E2E8;
  if (!qword_27CA6E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E2A8, &qword_215694560);
    sub_21568B264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E2E8);
  }

  return result;
}

unint64_t sub_21568B264()
{
  result = qword_27CA6E2F0;
  if (!qword_27CA6E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E2A0, &qword_215694558);
    sub_21568B428(&qword_27CA6E2F8, &qword_27CA6E300, &qword_215694678, MEMORY[0x277CE1198]);
    sub_21568B428(&qword_27CA6E308, &qword_27CA6E310, &qword_215694680, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E2F0);
  }

  return result;
}

unint64_t sub_21568B380()
{
  result = qword_27CA6E318;
  if (!qword_27CA6E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E318);
  }

  return result;
}

unint64_t sub_21568B3DC()
{
  result = qword_27CA6E360;
  if (!qword_27CA6E360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA6E360);
  }

  return result;
}

uint64_t sub_21568B428(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21568B470()
{
  result = qword_27CA6E380;
  if (!qword_27CA6E380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E370, &unk_215694760);
    sub_21568B500();
    sub_21568B57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E380);
  }

  return result;
}

unint64_t sub_21568B500()
{
  result = qword_27CA6E388;
  if (!qword_27CA6E388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E390, &unk_215694B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E388);
  }

  return result;
}

unint64_t sub_21568B57C()
{
  result = qword_27CA6E398;
  if (!qword_27CA6E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E398);
  }

  return result;
}

uint64_t sub_21568B5D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21568B618@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_21568B624(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_2156931E0();
    }

    result = sub_2156931B0();
    *v2 = result;
  }

  return result;
}

uint64_t sub_21568B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_21568B3DC();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2156931E0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2156931E0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21568B7E0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2156931E0();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2156931E0();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_21568B624(result, 1);

  return sub_21568B6E0(v5, v3, 0);
}

unint64_t sub_21568B8B8()
{
  result = qword_27CA6E3B0;
  if (!qword_27CA6E3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E350, &qword_215694748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E328, &qword_215694730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E320, &qword_215694728);
    sub_215692DE0();
    sub_21568B428(&qword_27CA6E348, &qword_27CA6E320, &qword_215694728, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_2156881D4();
    swift_getOpaqueTypeConformance2();
    sub_21568B428(&qword_27CA6E308, &qword_27CA6E310, &qword_215694680, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E3B0);
  }

  return result;
}

id CKDownloadingPendingMessagesViewConfig.__allocating_init(smallBubbleFrame:mediumBubbleSize:mediumBubbleOffset:largeBubbleSize:largeBubbleOffset:bubbleColor:progressTintColor:progressTrackColor:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v30 = objc_allocWithZone(v20);
  v31 = &v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame];
  *v31 = a9;
  v31[1] = a10;
  v31[2] = a11;
  v31[3] = a12;
  v32 = &v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleSize];
  *v32 = a13;
  v32[1] = a14;
  v33 = &v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleOffset];
  *v33 = a15;
  v33[1] = a16;
  v34 = &v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleSize];
  *v34 = a17;
  *(v34 + 1) = a18;
  v35 = &v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleOffset];
  *v35 = a19;
  *(v35 + 1) = a20;
  *&v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_bubbleColor] = a1;
  *&v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_progressTintColor] = a2;
  *&v30[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_progressTrackColor] = a3;
  v39.receiver = v30;
  v39.super_class = v20;
  return objc_msgSendSuper2(&v39, sel_init);
}

id CKDownloadingPendingMessagesViewConfig.init(smallBubbleFrame:mediumBubbleSize:mediumBubbleOffset:largeBubbleSize:largeBubbleOffset:bubbleColor:progressTintColor:progressTrackColor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = &v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_smallBubbleFrame];
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v22 = &v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleSize];
  *v22 = a8;
  v22[1] = a9;
  v23 = &v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_mediumBubbleOffset];
  *v23 = a10;
  v23[1] = a11;
  v24 = &v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleSize];
  *v24 = a17;
  *(v24 + 1) = a18;
  v25 = &v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_largeBubbleOffset];
  *v25 = a19;
  *(v25 + 1) = a20;
  *&v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_bubbleColor] = a1;
  *&v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_progressTintColor] = a2;
  *&v20[OBJC_IVAR____TtC15MessagesSupport38CKDownloadingPendingMessagesViewConfig_progressTrackColor] = a3;
  v27.receiver = v20;
  v27.super_class = type metadata accessor for CKDownloadingPendingMessagesViewConfig();
  return objc_msgSendSuper2(&v27, sel_init);
}

id CKDownloadingPendingMessagesViewConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKDownloadingPendingMessagesViewConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDownloadingPendingMessagesViewConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21568BDDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_215692D90();

  return v1;
}

void sub_21568BE54()
{
  v1 = [v0 identifier];
  sub_215692C70();
}

void sub_21568BEB4()
{
  v1 = [*v0 identifier];
  sub_215692C70();
}

uint64_t sub_21568BF14()
{
  v1 = OBJC_IVAR____TtC15MessagesSupport10InboxModel__isCollapsed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E4B0, &unk_215694A00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21568BFC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215692D20();
  *a1 = result;
  return result;
}

uint64_t InboxItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CKInboxItemSwift_identifier;
  v4 = sub_215692C80();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InboxItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKInboxItemSwift_title);

  return v1;
}

uint64_t InboxItem.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKInboxItemSwift_subtitle);

  return v1;
}

uint64_t InboxItem.systemImage.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKInboxItemSwift_systemImage);

  return v1;
}

uint64_t InboxItem.accessoryText.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_215692D90();

  return v1;
}

uint64_t sub_21568C228@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_215692D90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21568C2A8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_215692DA0();
}

uint64_t InboxItem.accessoryText.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_215692DA0();
}

uint64_t (*InboxItem.accessoryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_215692D80();
  return sub_21568C444;
}

void sub_21568C444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t InboxItem.$accessoryText.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E400, &qword_215694800);
  sub_215692D60();
  return swift_endAccess();
}

uint64_t sub_21568C520(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E400, &qword_215694800);
  sub_215692D60();
  return swift_endAccess();
}

uint64_t sub_21568C598(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E408, qword_215694808);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E400, &qword_215694800);
  sub_215692D70();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t InboxItem.$accessoryText.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E408, qword_215694808);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E400, &qword_215694800);
  sub_215692D70();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*InboxItem.$accessoryText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E408, qword_215694808);
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

  v10 = OBJC_IVAR___CKInboxItemSwift__accessoryText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E400, &qword_215694800);
  sub_215692D60();
  swift_endAccess();
  return sub_21568C9C4;
}

void sub_21568C9C4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_215692D70();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_215692D70();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id InboxItem.__allocating_init(identifier:title:subtitle:systemImage:accessoryText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = a9;
  v17 = objc_allocWithZone(v10);
  v18 = OBJC_IVAR___CKInboxItemSwift_identifier;
  v19 = sub_215692C80();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v17[v18], a1, v19);
  v21 = &v17[OBJC_IVAR___CKInboxItemSwift_title];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v17[OBJC_IVAR___CKInboxItemSwift_subtitle];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &v17[OBJC_IVAR___CKInboxItemSwift_systemImage];
  *v23 = a6;
  *(v23 + 1) = a7;
  if (a9)
  {
    v24 = a8;
  }

  else
  {
    v24 = 0;
  }

  if (!a9)
  {
    v16 = 0xE000000000000000;
  }

  swift_beginAccess();
  v33 = v24;
  v34 = v16;
  sub_215692D50();
  swift_endAccess();
  v32.receiver = v17;
  v32.super_class = v31;
  v25 = objc_msgSendSuper2(&v32, sel_init);
  (*(v20 + 8))(a1, v19);
  return v25;
}

id InboxItem.init(identifier:title:subtitle:systemImage:accessoryText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v15 = a9;
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR___CKInboxItemSwift_identifier;
  v17 = sub_215692C80();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v9[v16], a1, v17);
  v19 = &v9[OBJC_IVAR___CKInboxItemSwift_title];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v9[OBJC_IVAR___CKInboxItemSwift_subtitle];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = &v9[OBJC_IVAR___CKInboxItemSwift_systemImage];
  *v21 = a6;
  *(v21 + 1) = a7;
  if (a9)
  {
    v22 = a8;
  }

  else
  {
    v22 = 0;
  }

  if (!a9)
  {
    v15 = 0xE000000000000000;
  }

  swift_beginAccess();
  v30 = v22;
  v31 = v15;
  sub_215692D50();
  swift_endAccess();
  v29.receiver = v9;
  v29.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v29, sel_init);
  (*(v18 + 8))(a1, v17);
  return v23;
}

Swift::Void __swiftcall InboxItem.update(accessoryText:)(Swift::String accessoryText)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  sub_215692DA0();
}

uint64_t InboxItem.description.getter()
{
  v1 = v0;
  sub_215693190();

  strcpy(v3, "<InboxItem t:");
  HIWORD(v3[1]) = -4864;
  MEMORY[0x21606E310](*(v1 + OBJC_IVAR___CKInboxItemSwift_title), *(v1 + OBJC_IVAR___CKInboxItemSwift_title + 8));
  MEMORY[0x21606E310](979968044, 0xE400000000000000);
  MEMORY[0x21606E310](*(v1 + OBJC_IVAR___CKInboxItemSwift_systemImage), *(v1 + OBJC_IVAR___CKInboxItemSwift_systemImage + 8));
  MEMORY[0x21606E310](979443756, 0xE400000000000000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_215692D90();

  MEMORY[0x21606E310]();

  MEMORY[0x21606E310](62, 0xE100000000000000);
  return v3[0];
}

id InboxItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InboxItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21568D2E4()
{
  result = qword_27CA6E410;
  if (!qword_27CA6E410)
  {
    sub_215692C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E410);
  }

  return result;
}

uint64_t sub_21568D43C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_215692D20();
  *a1 = result;
  return result;
}

uint64_t sub_21568D47C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___CKInboxItemSwift_identifier;
  v5 = sub_215692C80();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_21568D520(uint64_t a1)
{
  sub_21568D750(319, &qword_27CA6E430, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21568D5F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21568D630(uint64_t a1)
{
  sub_215692C80();
  if (v1 <= 0x3F)
  {
    sub_21568D750(319, &qword_27CA6E4A8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21568D750(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_215692DB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21568D7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E4B8, &qword_215694B28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-v6];
  v14 = a1;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E358, &qword_215694750);
  sub_21568E08C();
  result = sub_215692F30();
  if (qword_27CA6E110 != -1)
  {
    result = swift_once();
  }

  if (qword_27CA6EFF0)
  {
    v9 = qword_27CA6EFF0;
    v10 = sub_215692C20();
    v12 = v11;

    v16 = v10;
    v17 = v12;
    sub_21568B428(&qword_27CA6E4C8, &qword_27CA6E4B8, &qword_215694B28, MEMORY[0x277CDE5A0]);
    sub_2156881D4();
    sub_215692FB0();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21568DA0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [*(a1 + 16) sections];
    sub_2156873E4(0, &qword_27CA6E360, off_2781C8198);
    sub_2156930F0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E368, &qword_215694758);
    sub_215692C80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E370, &unk_215694760);
    sub_21568B428(&qword_27CA6E378, &qword_27CA6E368, &qword_215694758, MEMORY[0x277D83980]);
    sub_21568B470();
    sub_21568E110(&qword_27CA6E3A0, &qword_27CA6E360, off_2781C8198, &protocol conformance descriptor for CKInboxSection);
    return sub_215693010();
  }

  else
  {
    type metadata accessor for InboxModel(0);
    sub_21568E1B8(&qword_27CA6E1B0, type metadata accessor for InboxModel, &unk_215694980);
    result = sub_215692DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_21568DBD8(void **a1)
{
  v1 = *a1;
  sub_21568AC58(&v5);
  v2 = [v1 footer];
  if (v2)
  {
    v3 = v2;
    sub_2156930B0();

    sub_2156881D4();
    v2 = sub_215692F70();
  }

  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E390, &unk_215694B30);
  sub_21568B500();
  sub_21568B57C();
  return sub_215693020();
}

uint64_t sub_21568DD28(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  sub_21568E164();
  v2 = v1;
  return sub_215693000();
}

void sub_21568DDCC(void *a1)
{
  v1 = [a1 action];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))();

    _Block_release(v2);
  }
}

uint64_t sub_21568DE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 inboxItemSwift];
  type metadata accessor for InboxItem(0);
  sub_21568E1B8(&qword_27CA6E508, type metadata accessor for InboxItem, &protocol conformance descriptor for InboxItem);
  result = sub_215692DC0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21568DEC4()
{
  v1 = [*v0 items];
  sub_2156873E4(0, &qword_27CA6E4D0, off_2781C8190);
  sub_2156930F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E4D8, &qword_215694B40);
  sub_215692C80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E4E0, &qword_215694B48);
  sub_21568B428(&qword_27CA6E4E8, &qword_27CA6E4D8, &qword_215694B40, MEMORY[0x277D83980]);
  sub_21568B428(&qword_27CA6E4F0, &qword_27CA6E4E0, &qword_215694B48, MEMORY[0x277CDF028]);
  sub_21568E110(&qword_27CA6E4F8, &qword_27CA6E4D0, off_2781C8190, &protocol conformance descriptor for CKInboxItem);
  return sub_215693010();
}

unint64_t sub_21568E08C()
{
  result = qword_27CA6E4C0;
  if (!qword_27CA6E4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E358, &qword_215694750);
    sub_21568B470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E4C0);
  }

  return result;
}

uint64_t sub_21568E110(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2156873E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21568E164()
{
  result = qword_27CA6E500;
  if (!qword_27CA6E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E500);
  }

  return result;
}

uint64_t sub_21568E1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21568E200()
{
  result = qword_27CA6E510;
  if (!qword_27CA6E510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA6E518, qword_215694B50);
    sub_21568B428(&qword_27CA6E4F0, &qword_27CA6E4E0, &qword_215694B48, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E510);
  }

  return result;
}

void *TranscriptCompositor.collectionView.getter()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TranscriptCompositor.collectionView.setter(void *a1)
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = [v5 collectionViewLayout];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
      swift_beginAccess();
      v10 = *(v1 + v9);
      *(v1 + v9) = v8;
      v11 = v6;

      v12 = [objc_opt_self() sharedFeatureFlags];
      LODWORD(v9) = [v12 isModernSplitViewControllerEnabled];

      if (v9)
      {
        sub_21568ECB8();
      }
    }

    else
    {
      v11 = v5;
      v5 = v6;
    }
  }
}

uint64_t (*TranscriptCompositor.collectionView.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionView;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21568E558;
}

void sub_21568E558(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 collectionViewLayout];
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v3[3];
        v10 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
        swift_beginAccess();
        v11 = *(v9 + v10);
        *(v9 + v10) = v8;
        v12 = v6;

        v13 = [objc_opt_self() sharedFeatureFlags];
        LODWORD(v9) = [v13 isModernSplitViewControllerEnabled];

        if (v9)
        {
          sub_21568ECB8();
        }

        v6 = v5;
      }

      else
      {
        v12 = v5;
      }
    }
  }

  free(v3);
}

uint64_t TranscriptCompositor.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TranscriptCompositor.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21568E884;
}

void sub_21568E884(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t TranscriptCompositor.layoutContext.getter()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_layoutContext;
  swift_beginAccess();
  return *(v0 + v1);
}

void *TranscriptCompositor.collectionViewLayout.getter()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21568EC18(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v4) = [v7 isModernSplitViewControllerEnabled];

  if (v4)
  {
    sub_21568ECB8();
  }
}

void sub_21568ECB8()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D752C0]);
    v4 = v2;
    v5 = [v3 init];
    v6 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
    swift_beginAccess();
    [v5 setScrollDirection_];
    v7 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
    swift_beginAccess();
    [v5 setInterSectionSpacing_];
    swift_beginAccess();
    sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

    v8 = sub_2156930E0();

    [v5 setBoundarySupplementaryItems_];

    v9 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
    swift_beginAccess();
    [v5 setContentInsetsReference_];
    [v4 setConfiguration_];
  }
}

uint64_t TranscriptCompositor.scrollDirection.getter()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

void TranscriptCompositor.scrollDirection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D752C0]);
    v7 = v5;
    v8 = [v6 init];
    [v8 setScrollDirection_];
    v9 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
    swift_beginAccess();
    [v8 setInterSectionSpacing_];
    swift_beginAccess();
    sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

    v10 = sub_2156930E0();

    [v8 setBoundarySupplementaryItems_];

    v11 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
    swift_beginAccess();
    [v8 setContentInsetsReference_];
    [v7 setConfiguration_];
  }
}

uint64_t (*TranscriptCompositor.scrollDirection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
  *(v3 + 96) = v1;
  *(v3 + 104) = v4;
  swift_beginAccess();
  return sub_21568F164;
}

void sub_21568F164(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v8 = v3[12];
      v7 = v3[13];
      v9 = objc_allocWithZone(MEMORY[0x277D752C0]);
      v10 = v6;
      v11 = [v9 init];
      [v11 setScrollDirection_];
      v12 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
      swift_beginAccess();
      [v11 setInterSectionSpacing_];
      swift_beginAccess();
      sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

      v13 = sub_2156930E0();

      [v11 setBoundarySupplementaryItems_];

      v14 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
      swift_beginAccess();
      [v11 setContentInsetsReference_];
      [v10 setConfiguration_];
    }
  }

  free(v3);
}

double TranscriptCompositor.interSectionSpacing.getter()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
  swift_beginAccess();
  return *(v0 + v1);
}

void TranscriptCompositor.interSectionSpacing.setter(double a1)
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D752C0]);
    v7 = v5;
    v8 = [v6 init];
    v9 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
    swift_beginAccess();
    [v8 setScrollDirection_];
    [v8 setInterSectionSpacing_];
    swift_beginAccess();
    sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

    v10 = sub_2156930E0();

    [v8 setBoundarySupplementaryItems_];

    v11 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
    swift_beginAccess();
    [v8 setContentInsetsReference_];
    [v7 setConfiguration_];
  }
}

uint64_t (*TranscriptCompositor.interSectionSpacing.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
  *(v3 + 96) = v1;
  *(v3 + 104) = v4;
  swift_beginAccess();
  return sub_21568F628;
}

void sub_21568F628(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v8 = v3[12];
      v7 = v3[13];
      v9 = objc_allocWithZone(MEMORY[0x277D752C0]);
      v10 = v6;
      v11 = [v9 init];
      v12 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
      swift_beginAccess();
      [v11 setScrollDirection_];
      [v11 setInterSectionSpacing_];
      swift_beginAccess();
      sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

      v13 = sub_2156930E0();

      [v11 setBoundarySupplementaryItems_];

      v14 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
      swift_beginAccess();
      [v11 setContentInsetsReference_];
      [v10 setConfiguration_];
    }
  }

  free(v3);
}

uint64_t sub_21568F888(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

void TranscriptCompositor.boundarySupplementaryItems.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_boundarySupplementaryItems;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D752C0]);
    v7 = v5;
    v8 = [v6 init];
    v9 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
    swift_beginAccess();
    [v8 setScrollDirection_];
    v10 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
    swift_beginAccess();
    [v8 setInterSectionSpacing_];
    sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

    v11 = sub_2156930E0();

    [v8 setBoundarySupplementaryItems_];

    v12 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
    swift_beginAccess();
    [v8 setContentInsetsReference_];
    [v7 setConfiguration_];
  }
}

uint64_t (*TranscriptCompositor.boundarySupplementaryItems.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_boundarySupplementaryItems;
  *(v3 + 96) = v1;
  *(v3 + 104) = v4;
  swift_beginAccess();
  return sub_21568FB94;
}

void sub_21568FB94(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v7 = v3[12];
      v8 = objc_allocWithZone(MEMORY[0x277D752C0]);
      v9 = v6;
      v10 = [v8 init];
      v11 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
      swift_beginAccess();
      [v10 setScrollDirection_];
      v12 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
      swift_beginAccess();
      [v10 setInterSectionSpacing_];
      sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

      v13 = sub_2156930E0();

      [v10 setBoundarySupplementaryItems_];

      v14 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
      swift_beginAccess();
      [v10 setContentInsetsReference_];
      [v9 setConfiguration_];
    }
  }

  free(v3);
}

uint64_t TranscriptCompositor.contentsInsetReference.getter()
{
  v1 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
  swift_beginAccess();
  return *(v0 + v1);
}

void TranscriptCompositor.contentsInsetReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D752C0]);
    v7 = v5;
    v8 = [v6 init];
    v9 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
    swift_beginAccess();
    [v8 setScrollDirection_];
    v10 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
    swift_beginAccess();
    [v8 setInterSectionSpacing_];
    swift_beginAccess();
    sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

    v11 = sub_2156930E0();

    [v8 setBoundarySupplementaryItems_];

    [v8 setContentInsetsReference_];
    [v7 setConfiguration_];
  }
}

uint64_t (*TranscriptCompositor.contentsInsetReference.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference;
  *(v3 + 96) = v1;
  *(v3 + 104) = v4;
  swift_beginAccess();
  return sub_215690050;
}

void sub_215690050(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v8 = v3[12];
      v7 = v3[13];
      v9 = objc_allocWithZone(MEMORY[0x277D752C0]);
      v10 = v6;
      v11 = [v9 init];
      v12 = OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection;
      swift_beginAccess();
      [v11 setScrollDirection_];
      v13 = OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing;
      swift_beginAccess();
      [v11 setInterSectionSpacing_];
      swift_beginAccess();
      sub_2156873E4(0, &qword_28119C870, 0x277CFB830);

      v14 = sub_2156930E0();

      [v11 setBoundarySupplementaryItems_];

      [v11 setContentInsetsReference_];
      [v10 setConfiguration_];
    }
  }

  free(v3);
}

id TranscriptCompositor.init(layoutContext:datasource:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_collectionView] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_collectionViewLayout] = 0;
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_scrollDirection] = 0;
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_interSectionSpacing] = 0;
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_boundarySupplementaryItems] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_contentsInsetReference] = 1;
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_layoutContext] = a1;
  *&v2[OBJC_IVAR___CKTranscriptCompositorSwift_datasource] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TranscriptCompositor.layoutSection(forSection:layoutEnvironment:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKTranscriptCompositorSwift_collectionView;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (!v6)
  {
    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v8 = sub_215693170();
    sub_215693140();
    sub_215692D00();
LABEL_11:

    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v6;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v9 = [Strong compositorDatasourceItemsForSection_];
  swift_unknownObjectRelease();
  if (!v9)
  {
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E630, &qword_215694B68);
  v10 = sub_2156930F0();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (!sub_2156931E0())
  {
LABEL_25:

LABEL_26:
    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v24 = sub_215693170();
    sub_215693140();
    goto LABEL_27;
  }

LABEL_6:
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {

    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v24 = sub_215693170();
    sub_215693140();
LABEL_27:
    sub_215692D00();

    return 0;
  }

  [v11 compositorMarginInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_unknownObjectRelease();
  v60 = MEMORY[0x277D84F90];
  LOBYTE(v61) = 0;
  *(&v61 + 1) = 0;
  *&v62 = 0;
  *(&v62 + 1) = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v20 = *&v2[v5];
  if (!v20)
  {

    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v25 = sub_215693170();
    sub_215693140();
    sub_215692D00();

    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v24 = sub_215693170();
    sub_215693140();
    goto LABEL_27;
  }

  *&v59 = v2;
  v21 = swift_unknownObjectWeakLoadStrong();
  v22 = v20;
  v23 = v2;
  if (v21)
  {
    v50 = [v21 compositorMessageEditingContext];
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0;
  }

  v26 = OBJC_IVAR___CKTranscriptCompositorSwift_datasource;
  swift_beginAccess();
  v27 = *&v23[v26];
  swift_getObjectType();
  *&v57[0] = v27;
  v28 = OBJC_IVAR___CKTranscriptCompositorSwift_layoutContext;
  swift_beginAccess();
  v29 = *&v23[v28];
  v30 = objc_allocWithZone(CKTranscriptLayoutEnvironment);
  v31 = v22;
  swift_unknownObjectRetain();
  v32 = v50;
  v33 = [v30 initWithDatasource:sub_2156931F0() collectionLayoutEnvironment:a2 collectionView:v31 marginInsets:v29 layoutContext:v32 messageEditingContext:{v13, v15, v17, v19}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *(&v59 + 1) = v33;
  sub_215691004(a1, v10);

  v54 = v61;
  v55 = v62;
  v56 = v63;
  v52 = v59;
  v53 = v60;
  v57[2] = v61;
  v57[3] = v62;
  v58 = v63;
  v57[0] = v59;
  v57[1] = v60;
  sub_215690CC0(&v52, v51);
  sub_215690D1C(v57);
  v34 = v53 >> 62;
  if (v53 >> 62)
  {
    if (sub_2156931E0())
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v49 = sub_215693170();
    sub_215693140();
    sub_215692D00();

    sub_215690D1C(&v52);
    goto LABEL_11;
  }

LABEL_17:
  v35 = v54;
  v36 = objc_opt_self();
  if (v35 == 1)
  {
    v37 = v36;
    [v8 bounds];
    v36 = v37;
    v39 = v38;
    v40 = &selRef_estimatedDimension_;
  }

  else
  {
    v40 = &selRef_absoluteDimension_;
    v39 = *(&v53 + 1);
  }

  v41 = [v36 *v40];
  v42 = [objc_opt_self() fractionalWidthDimension_];
  v43 = [objc_opt_self() sizeWithWidthDimension:v42 heightDimension:v41];
  if (v34)
  {
    sub_2156873E4(0, &qword_28119C880, 0x277CFB860);

    sub_2156931D0();
  }

  else
  {

    sub_215693210();
    sub_2156873E4(0, &qword_28119C880, 0x277CFB860);
  }

  v44 = objc_opt_self();
  sub_2156873E4(0, &qword_28119C880, 0x277CFB860);
  v45 = sub_2156930E0();

  v46 = [v44 verticalGroupWithLayoutSize:v43 subitems:v45];

  v47 = [objc_opt_self() sectionWithGroup_];
  sub_215690D1C(&v52);
  return v47;
}

id TranscriptCompositor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptCompositor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

void sub_215690EA0()
{
  v0 = sub_2156930A0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27CA6EFF0 = v1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_215690F34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_215690F7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_215691004(uint64_t result, unint64_t a2)
{
  v60 = result;
  v3 = v2;
  v4 = a2;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v65 = v4 & 0xFFFFFFFFFFFFFF8;
      v66 = v4 & 0xC000000000000001;
      v7 = 0x2781C8000;
      v63 = v5;
      v64 = v4;
      while (v66)
      {
        v17 = MEMORY[0x21606E3F0](v6, v4);
        v18 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_37;
        }

LABEL_13:
        v19 = *(v3 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E630, &qword_215694B68);
        v20 = sub_2156930E0();
        v68 = v19;
        v21 = [v17 layoutItemWithEnvironment:v19 datasourceItemIndex:v6 allDatasourceItems:v20];

        v69 = v21;
        if (v21)
        {
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v23 = [Strong compositorSupportsCustomLayoutGroupsForSection_];
            swift_unknownObjectRelease();
          }

          else
          {
            v23 = 0;
          }

          v24 = swift_unknownObjectWeakLoadStrong();
          if (v24 && (v25 = [v24 compositorSupportsCustomLayoutGroupsForLayoutProvider_], swift_unknownObjectRelease(), v26 = v23 & v25, v7 = 0x2781C8000, v26 == 1))
          {
            v4 = v64;
            v12 = v21;
            sub_21569176C(v17, v6, v64, v21);
            if (v61)
            {

              v56 = [v17 layoutGroupIdentifier];
              v57 = sub_2156930B0();
              v59 = v58;

              swift_unknownObjectRelease();

              *(v3 + 40) = v57;
              *(v3 + 48) = v59;
              return result;
            }

            v5 = v63;
          }

          else
          {
            v27 = [v21 *(v7 + 2256)];
            v28 = [v27 heightDimension];

            LOBYTE(v27) = [v28 isEstimated];
            if (v27)
            {
              v29 = 1;
            }

            else
            {
              v30 = [v69 *(v7 + 2256)];
              v31 = [v30 heightDimension];

              [v31 dimension];
              v33 = v32;

              v29 = 0;
              *(v3 + 24) = v33 + *(v3 + 24);
            }

            *(v3 + 32) = v29;
            v34 = swift_unknownObjectWeakLoadStrong();
            if (!v34 || (v35 = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0), v36 = swift_allocObject(), *(v36 + 16) = xmmword_215694480, *(v36 + 32) = v17, swift_unknownObjectRetain(), v37 = sub_2156930E0(), , v38 = swift_allocObject(), *(v38 + 16) = xmmword_215694480, *(v38 + 32) = v69, sub_2156873E4(0, &qword_28119C880, 0x277CFB860), v39 = v69, v40 = sub_2156930E0(), , v41 = [v35 layoutGroupForDatasourceItems:v37 environment:v68 layoutItems:v40], swift_unknownObjectRelease(), v37, v40, !v41))
            {
              v62 = [objc_opt_self() fractionalWidthDimension_];
              v42 = [v69 layoutSize];
              v67 = [v42 heightDimension];

              v43 = [objc_opt_self() sizeWithWidthDimension:v62 heightDimension:v67];
              v44 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0);
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_215694480;
              *(v45 + 32) = v69;
              sub_2156873E4(0, &qword_28119C880, 0x277CFB860);
              v46 = v69;
              v47 = sub_2156930E0();

              v41 = [v44 verticalGroupWithLayoutSize:v43 subitems:v47];
            }

            v4 = v64;
            v48 = sub_2156930E0();
            sub_2156873E4(0, &qword_28119C878, 0x277CFB880);
            v49 = sub_2156930E0();
            v50 = [v17 layoutItemSpacingWithEnvironment:v68 datasourceItemIndex:v6 allDatasourceItems:v48 supplementryItems:v49 sizeOverride:{0.0, 0.0}];

            v5 = v63;
            if (v50)
            {
              [v41 setEdgeSpacing_];
              v51 = [v50 top];
              if (v51)
              {
                v52 = v51;
                [v51 spacing];
                v54 = v53;

                *(v3 + 24) = v54 + *(v3 + 24);
              }

              v55 = [v50 bottom];
              if (v55)
              {
                v8 = v55;
                [v55 spacing];
                v10 = v9;

                *(v3 + 24) = v10 + *(v3 + 24);
              }

              else
              {
              }
            }

            v11 = v41;
            MEMORY[0x21606E320]();
            v12 = v69;
            if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_215693100();
              v12 = v69;
            }

            sub_215693110();
          }
        }

        v13 = [v17 layoutGroupIdentifier];
        v14 = sub_2156930B0();
        v16 = v15;

        swift_unknownObjectRelease();

        *(v3 + 40) = v14;
        *(v3 + 48) = v16;
        ++v6;
        v7 = 0x2781C8000uLL;
        if (v18 == v5)
        {
          return result;
        }
      }

      if (v6 >= *(v65 + 16))
      {
        goto LABEL_38;
      }

      v17 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v18 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_2156931E0();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_21569176C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = v4;
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a3;
    v5 = a1;
    v81 = a4;
    if (!(a3 >> 62))
    {
      v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v78 = a2;
  v9 = sub_2156931E0();
  a2 = v78;
LABEL_4:
  v80 = a2;
  if (v8 >= v9)
  {
    v19 = *(v7 + 48);
    if (!v19)
    {
      goto LABEL_46;
    }

    v20 = 0;
    goto LABEL_16;
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    if (v8 < 0)
    {
      __break(1u);
    }

    else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      goto LABEL_9;
    }

    __break(1u);
LABEL_64:
    sub_215693100();
LABEL_56:
    sub_215693110();

    return;
  }

  v10 = MEMORY[0x21606E3F0](v8, v6);
LABEL_9:
  v11 = [v10 layoutGroupIdentifier];
  swift_unknownObjectRelease();
  v12 = sub_2156930B0();
  v14 = v13;

  v15 = [v5 layoutGroupIdentifier];
  v16 = sub_2156930B0();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {

    v19 = *(v7 + 48);
    if (v19)
    {
      v20 = 1;
      goto LABEL_16;
    }

LABEL_45:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_215694480;
    *(v52 + 32) = v5;
    swift_unknownObjectRetain();

    *(v7 + 56) = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_215694480;
    *(v53 + 32) = v81;
    v54 = v81;

    *(v7 + 64) = v53;
    return;
  }

  v20 = sub_215693200();

  v19 = *(v7 + 48);
  if (!v19)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_16:
  v21 = *(v7 + 40);
  v22 = [v5 layoutGroupIdentifier];
  v23 = sub_2156930B0();
  v25 = v24;

  if (v21 != v23 || v19 != v25)
  {
    v27 = sub_215693200();

    if (v20)
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_24;
    }

    if (v27)
    {
      goto LABEL_30;
    }

LABEL_46:

    v55 = MEMORY[0x277D84F90];
    *(v7 + 56) = MEMORY[0x277D84F90];

    *(v7 + 64) = v55;
    sub_21569217C(v81);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v57 = Strong, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1C8, &unk_2156944C0), v58 = swift_allocObject(), v79 = xmmword_215694480, *(v58 + 16) = xmmword_215694480, *(v58 + 32) = v5, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E630, &qword_215694B68), v59 = sub_2156930E0(), , v60 = *(v7 + 8), v61 = swift_allocObject(), *(v61 + 16) = xmmword_215694480, *(v61 + 32) = v81, sub_2156873E4(0, &qword_28119C880, 0x277CFB860), v62 = v81, v63 = sub_2156930E0(), , v64 = [v57 layoutGroupForDatasourceItems:v59 environment:v60 layoutItems:v63], swift_unknownObjectRelease(), v59, v63, !v64))
    {
      v64 = _s15MessagesSupport25TranscriptLayoutUtilitiesC012dynamicWidthD5Group10layoutItemSo012NSCollectiondH0CSo0kdJ0C_tFZ_0(v81);
    }

    v65 = *(v7 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E630, &qword_215694B68);
    v66 = sub_2156930E0();
    sub_2156873E4(0, &qword_28119C878, 0x277CFB880);
    v67 = sub_2156930E0();
    v68 = [v5 layoutItemSpacingWithEnvironment:v65 datasourceItemIndex:v80 allDatasourceItems:v66 supplementryItems:v67 sizeOverride:{0.0, 0.0}];

    if (v68)
    {
      [v64 setEdgeSpacing_];
      v69 = [v68 top];
      if (v69)
      {
        v70 = v69;
        [v69 spacing];
        v72 = v71;

        *(v7 + 24) = v72 + *(v7 + 24);
      }

      v73 = [v68 bottom];
      if (v73)
      {
        v74 = v73;
        [v73 spacing];
        v76 = v75;

        *(v7 + 24) = v76 + *(v7 + 24);
      }

      else
      {
      }
    }

    v5 = v64;
    MEMORY[0x21606E320]();
    if (*((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (v20)
  {
LABEL_24:
    v28 = swift_unknownObjectRetain();
    MEMORY[0x21606E320](v28);
    if (*((*(v7 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215693100();
    }

    sub_215693110();
    v29 = v81;
    MEMORY[0x21606E320]();
    if (*((*(v7 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215693100();
    }

    sub_215693110();
    return;
  }

LABEL_30:
  v30 = swift_unknownObjectRetain();
  MEMORY[0x21606E320](v30);
  if (*((*(v7 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215693100();
  }

  sub_215693110();
  v31 = v81;
  MEMORY[0x21606E320]();
  if (*((*(v7 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215693100();
  }

  sub_215693110();
  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32 && (v33 = v32, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E630, &qword_215694B68), v34 = sub_2156930E0(), v35 = *(v7 + 8), sub_2156873E4(0, &qword_28119C880, 0x277CFB860), v36 = sub_2156930E0(), v37 = [v33 layoutGroupForDatasourceItems:v34 environment:v35 layoutItems:v36], swift_unknownObjectRelease(), v34, v36, v37))
  {
    v38 = v37;
    MEMORY[0x21606E320]();
    if (*((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215693100();
    }

    sub_215693110();
    v39 = v38;
    sub_21569217C(v39);
    v40 = [v39 edgeSpacing];

    if (v40)
    {
      v41 = [v40 top];
      if (v41)
      {
        v42 = v41;
        [v41 spacing];
        v44 = v43;

        *(v7 + 24) = v44 + *(v7 + 24);
      }

      v45 = [v40 bottom];
      if (v45)
      {
        v46 = v45;
        [v45 spacing];
        v48 = v47;

        *(v7 + 24) = v48 + *(v7 + 24);

        v49 = MEMORY[0x277D84F90];
        *(v7 + 56) = MEMORY[0x277D84F90];

        *(v7 + 64) = v49;
        return;
      }
    }

    v77 = MEMORY[0x277D84F90];
    *(v7 + 56) = MEMORY[0x277D84F90];

    *(v7 + 64) = v77;
  }

  else
  {
    sub_2156873E4(0, &unk_28119C860, 0x277D86200);
    v50 = sub_215693170();
    sub_215693140();
    sub_215692D00();

    sub_215692268();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();
  }
}

void sub_21569217C(void *a1)
{
  v3 = [a1 layoutSize];
  v4 = [v3 heightDimension];

  LOBYTE(v3) = [v4 isEstimated];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v6 = [a1 layoutSize];
    v7 = [v6 heightDimension];

    [v7 dimension];
    v9 = v8;

    v5 = 0;
    *(v1 + 24) = v9 + *(v1 + 24);
  }

  *(v1 + 32) = v5;
}

unint64_t sub_215692268()
{
  result = qword_27CA6E638;
  if (!qword_27CA6E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptCompositorLayoutPassError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptCompositorLayoutPassError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21569241C()
{
  result = qword_27CA6E640;
  if (!qword_27CA6E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E640);
  }

  return result;
}

uint64_t sub_215692470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2156924B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_215692520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E658, &qword_215694D68);
  v41 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = a1;
  v48 = a2;
  v45 = a1;
  v46 = a2;
  v44 = &v39 - v8;
  sub_215692FF0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_215692D90();

  v9 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v9 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_2156881D4();
    v10 = sub_215692F70();
    v12 = v11;
    v14 = v13;
    sub_215692EE0();
    v39 = v5;
    v15 = sub_215692F60();
    v17 = v16;
    v19 = v18;

    sub_21568B0FC(v10, v12, v14 & 1);

    v20 = [objc_opt_self() secondaryLabelColor];
    sub_215692FD0();
    v21 = sub_215692F40();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_21568B0FC(v15, v17, v19 & 1);

    v28 = v25 & 1;
    v5 = v39;
    sub_215692AF4(v21, v23, v25 & 1);

    sub_21568B0FC(v21, v23, v25 & 1);

    v40 = v21;
    sub_215692AF4(v21, v23, v25 & 1);

    v29 = 1;
  }

  else
  {

    v29 = 0;
    v40 = 0;
    v23 = 0;
    v28 = 0;
    v27 = 0;
  }

  v30 = v41;
  v31 = *(v41 + 16);
  v32 = v43;
  v33 = v5;
  v31(v43, v44, v5);
  v34 = v42;
  v31(v42, v32, v33);
  v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E660, &qword_215694DB8) + 48)];
  v36 = v40;
  sub_215692B04(0, v29, v40, v23, v28, v27);
  sub_215692B50(0, v29, v36, v23, v28, v27);
  *v35 = 0;
  *(v35 + 1) = v29;
  *(v35 + 2) = v36;
  *(v35 + 3) = v23;
  *(v35 + 4) = v28;
  *(v35 + 5) = v27;
  v37 = *(v30 + 8);
  v37(v44, v33);
  sub_215692B50(0, v29, v36, v23, v28, v27);
  return (v37)(v32, v33);
}

uint64_t sub_215692920@<X0>(uint64_t a2@<X8>)
{
  sub_2156881D4();

  v3 = sub_215692F70();
  v5 = v4;
  v7 = v6;
  v8 = [objc_opt_self() labelColor];
  sub_215692FD0();
  v9 = sub_215692F40();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21568B0FC(v3, v5, v7 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_215692A30@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_215692E60();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E650, &qword_215694D60);
  return sub_215692520(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_215692A9C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_215692FE0();
  *a1 = result;
  return result;
}

uint64_t sub_215692AF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_215692B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_215692AF4(a3, a4, a5 & 1);
  }
}

void sub_215692B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_21568B0FC(a3, a4, a5 & 1);
  }
}

unint64_t sub_215692B9C()
{
  result = qword_27CA6E668;
  if (!qword_27CA6E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA6E670, &unk_215694DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA6E668);
  }

  return result;
}