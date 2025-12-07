BOOL sub_23B2D08A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23B2D08E4(uint64_t a1, int a2)
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

uint64_t sub_23B2D0904(uint64_t result, int a2, int a3)
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

uint64_t sub_23B2D0934@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23B2D0994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23B2D09F0(void *a1)
{

  sub_23B2D80D4(v1);
}

uint64_t sub_23B2D0A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_23B2D0A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_23B2D3748();
}

char *sub_23B2D0B44@<X0>(char **a1@<X8>)
{
  result = ImageAnalysisInteraction.selectedRanges.getter();
  *a1 = result;
  return result;
}

id sub_23B2D0BB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) actionInfoEdgeInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_23B2D0C20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) actionInfoCustomFont];
  *a2 = result;
  return result;
}

uint64_t sub_23B2D0C8C@<X0>(uint64_t *a1@<X8>)
{
  result = ImageAnalysisInteraction.highlightedSubjects.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B2D0CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_23B2D0DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

__n128 sub_23B2D0E54@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

id sub_23B2D0EB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) zoomFactor];
  *a2 = v4;
  return result;
}

id sub_23B2D0F98@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) isTorchOn];
  *a2 = result;
  return result;
}

uint64_t sub_23B2D0FFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23B2D105C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23B2D1100()
{
  MEMORY[0x23EE99590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B2D1148()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B2D11A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23B2D11D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t RecognizedItem.Text.transcript.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecognizedItem.Text(0) + 24));

  return v1;
}

id RecognizedItem.Text.observation.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecognizedItem.Text(0) + 28));

  return v1;
}

uint64_t _s9VisionKit14RecognizedItemO4TextV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B2EADC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23B2D1488@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);
  v5 = *(v4 + 48);
  v12 = *(v4 + 32);
  v13 = v5;
  v14 = *(v4 + 64);
  v6 = v14;
  v7 = *(v4 + 16);
  v11[0] = *v4;
  v8 = v11[0];
  v11[1] = v7;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v8;
  *(a2 + 16) = v7;
  return sub_23B2D135C(v11, v10);
}

uint64_t RecognizedItem.Barcode.payloadStringValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecognizedItem.Barcode(0) + 24));

  return v1;
}

id RecognizedItem.Barcode.observation.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecognizedItem.Barcode(0) + 28));

  return v1;
}

uint64_t RecognizedItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecognizedItem.Text(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecognizedItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D17E8(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2D184C(v12, v6, type metadata accessor for RecognizedItem.Barcode);
    v13 = sub_23B2EADC0();
    (*(*(v13 - 8) + 16))(a1, v6, v13);
    v14 = v6;
    v15 = type metadata accessor for RecognizedItem.Barcode;
  }

  else
  {
    sub_23B2D184C(v12, v9, type metadata accessor for RecognizedItem.Text);
    v16 = sub_23B2EADC0();
    (*(*(v16 - 8) + 16))(a1, v9, v16);
    v14 = v9;
    v15 = type metadata accessor for RecognizedItem.Text;
  }

  return sub_23B2D18B4(v14, v15);
}

uint64_t sub_23B2D17B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B2D17E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B2D184C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B2D18B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 RecognizedItem.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for RecognizedItem.Text(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for RecognizedItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23B2D17E8(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2D184C(v12, v6, type metadata accessor for RecognizedItem.Barcode);
    v13 = &v6[*(v4 + 20)];
    v14 = *(v13 + 3);
    v27 = *(v13 + 2);
    v28 = v14;
    v29 = *(v13 + 8);
    v15 = *(v13 + 1);
    v25 = *v13;
    v26 = v15;
    sub_23B2D135C(&v25, v24);
    v16 = v6;
    v17 = type metadata accessor for RecognizedItem.Barcode;
  }

  else
  {
    sub_23B2D184C(v12, v9, type metadata accessor for RecognizedItem.Text);
    v18 = &v9[*(v7 + 20)];
    v19 = *(v18 + 3);
    v27 = *(v18 + 2);
    v28 = v19;
    v29 = *(v18 + 8);
    v20 = *(v18 + 1);
    v25 = *v18;
    v26 = v20;
    sub_23B2D135C(&v25, v24);
    v16 = v9;
    v17 = type metadata accessor for RecognizedItem.Text;
  }

  sub_23B2D18B4(v16, v17);
  v21 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v21;
  *(a1 + 64) = v29;
  result = v26;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B2D1B2C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecognizedItem.Text(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D17E8(v3, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2D184C(v13, v7, type metadata accessor for RecognizedItem.Barcode);
    v14 = sub_23B2EADC0();
    (*(*(v14 - 8) + 16))(a2, v7, v14);
    v15 = v7;
    v16 = type metadata accessor for RecognizedItem.Barcode;
  }

  else
  {
    sub_23B2D184C(v13, v11, type metadata accessor for RecognizedItem.Text);
    v17 = sub_23B2EADC0();
    (*(*(v17 - 8) + 16))(a2, v11, v17);
    v15 = v11;
    v16 = type metadata accessor for RecognizedItem.Text;
  }

  return sub_23B2D18B4(v15, v16);
}

uint64_t sub_23B2D1D78(uint64_t a1)
{
  result = type metadata accessor for RecognizedItem.Text(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RecognizedItem.Barcode(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
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

uint64_t sub_23B2D1E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B2D1E58(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_23B2D1EE0(uint64_t a1)
{
  result = sub_23B2EADC0();
  if (v2 <= 0x3F)
  {
    result = sub_23B2D2208(319, &qword_27E12E148, 0x277CE2DE0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B2EADC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 64);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B2EADC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 64) = (a2 - 1);
  }

  return result;
}

void sub_23B2D2130(uint64_t a1)
{
  sub_23B2EADC0();
  if (v1 <= 0x3F)
  {
    sub_23B2D28C8(319, &qword_27E12E160, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23B2D2208(319, &qword_27E12E168, 0x277CE2BF8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B2D2208(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B2D2288(uint64_t a1, int a2)
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

uint64_t sub_23B2D22A8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B2D234C(uint64_t a1, id *a2)
{
  result = sub_23B2EAEF0();
  *a2 = 0;
  return result;
}

uint64_t sub_23B2D23C4(uint64_t a1, id *a2)
{
  v3 = sub_23B2EAF00();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B2D2444@<X0>(uint64_t *a1@<X8>)
{
  sub_23B2EAF10();
  v2 = sub_23B2EAEE0();

  *a1 = v2;
  return result;
}

uint64_t sub_23B2D249C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23B2EAEE0();

  *a2 = v3;
  return result;
}

uint64_t sub_23B2D24E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B2EAF10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B2D2510(uint64_t a1)
{
  v2 = sub_23B2D2614(&qword_27E12E1A0, type metadata accessor for VNBarcodeSymbology, &unk_23B2EC088);
  v3 = sub_23B2D2614(&qword_27E12E1A8, type metadata accessor for VNBarcodeSymbology, &unk_23B2EC028);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B2D2614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B2D26A4()
{
  v0 = sub_23B2EAF10();
  v1 = MEMORY[0x23EE98CB0](v0);

  return v1;
}

uint64_t sub_23B2D26E0(uint64_t a1)
{
  sub_23B2EAF10();
  sub_23B2EAF20();
}

uint64_t sub_23B2D2734(uint64_t a1)
{
  sub_23B2EAF10();
  sub_23B2EB220();
  sub_23B2EAF20();
  v1 = sub_23B2EB240();

  return v1;
}

uint64_t sub_23B2D27A8(void *a1, uint64_t *a2)
{
  v2 = sub_23B2EAF10();
  v4 = v3;
  if (v2 == sub_23B2EAF10() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23B2EB1A0();
  }

  return v7 & 1;
}

void sub_23B2D28C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_23B2D297C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v1;
}

id ImageAnalysisInteractionDelegate.contentView(for:)(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v1;
}

id sub_23B2D29FC(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];
  v2 = [v1 window];

  v3 = [v2 rootViewController];
  return v3;
}

id ImageAnalysisInteractionDelegate.presentingViewController(for:)(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];
  v2 = [v1 window];

  v3 = [v2 rootViewController];
  return v3;
}

id ImageAnalysisInteraction.view.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v1;
}

void *sub_23B2D2C34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23B2D2C60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23B2D2CFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id ImageAnalysisInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ImageAnalysisInteraction.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D78510]) init];
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_proxy;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for ImageAnalysisInteractionDelegateProxy()) init];
  *&v0[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis] = 0;
  *&v0[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes] = 0;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
  v6 = *&v4[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction];
  v7 = v4;
  [v6 setActionInfoViewHidden_];
  [*&v4[v5] set:1 isPublicAPI:?];
  [*&v4[v5] setDelegate_];
  [*&v4[v5] setAnalysisButtonRequiresVisibleContentGating_];
  swift_unknownObjectWeakAssign();

  return v7;
}

id sub_23B2D2F40(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  v5 = *(v3 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return [v5 set:Strong != 0 publicAPIDelegateExists:?];
}

uint64_t ImageAnalysisInteraction.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  [v5 set:Strong != 0 publicAPIDelegateExists:?];
  return swift_unknownObjectRelease();
}

void (*ImageAnalysisInteraction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23B2D3120;
}

void sub_23B2D3120(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_unknownObjectRelease();
    }

    [v5 set:Strong != 0 publicAPIDelegateExists:?];
  }

  free(v3);
}

char *ImageAnalysisInteraction.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) init];
  v5 = &v4[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate];
  swift_beginAccess();
  *(v5 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t ImageAnalysisInteraction.analysis.setter(uint64_t a1)
{
  sub_23B2D80D4(a1);
}

uint64_t (*ImageAnalysisInteraction.analysis.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23B2D3378;
}

void sub_23B2D3378(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v6 = *(v4 + v3[4]);
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    [v5 setAnalysis_];
  }

  free(v3);
}

Swift::Void __swiftcall ImageAnalysisInteraction.willMove(to:)(UIView_optional *to)
{
  if (!to)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeInteraction_];
    }
  }
}

Swift::Void __swiftcall ImageAnalysisInteraction.didMove(to:)(UIView_optional *to)
{
  if (to)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v3 = to;
    [(UIView_optional *)v3 addInteraction:v2];
    sub_23B2D2208(0, &qword_27E12E1F0, 0x277D755E8);
    [v2 setWantsAutomaticContentsRectCalculation_];
  }
}

uint64_t ImageAnalysisInteraction.preferredInteractionTypes.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void ImageAnalysisInteraction.preferredInteractionTypes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_23B2D3748();
}

void sub_23B2D3748()
{
  v1 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  [v3 set:(v2 & 0x21) != 0 isInPublicAutomaticMode:?];
  if (v2)
  {
    if ([v3 highlightSelectableItems])
    {
      v5 = 11;
    }

    else
    {
      v5 = 9;
    }
  }

  else
  {
    if ((v2 & 0x20) == 0)
    {
      v4 = *(v0 + v1);
      if (v4)
      {
        if ((v4 & 0x20) == 0)
        {
          v5 = 9;
          if ((v4 & 2) == 0)
          {
            if ((v4 & 4) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((v4 & 0x20) == 0)
      {
        if ((v4 & 2) == 0)
        {
          v5 = 0;
          if ((v4 & 4) == 0)
          {
LABEL_23:
            if ((v4 & 8) == 0)
            {
LABEL_24:
              if ((v4 & 0x10) == 0)
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

LABEL_18:
            v5 |= 8uLL;
            if ((v4 & 0x10) == 0)
            {
              goto LABEL_26;
            }

LABEL_25:
            v5 |= 4uLL;
            goto LABEL_26;
          }

LABEL_17:
          v5 |= 2uLL;
          if ((v4 & 8) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }

        v5 = 1;
LABEL_22:
        if ((v4 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v5 = 1;
      goto LABEL_26;
    }

    if ([v3 highlightSelectableItems])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

LABEL_26:
  [v3 setActiveInteractionTypes_];
  if (*(v0 + v1))
  {
    v6 = [v3 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled_];
    }
  }
}

void (*ImageAnalysisInteraction.preferredInteractionTypes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23B2D3940;
}

void sub_23B2D3940(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_23B2D3748();
  }
}

unint64_t ImageAnalysisInteraction.activeInteractionTypes.getter@<X0>(unint64_t *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) activeInteractionTypes];
  *a1 = result & 8 | (2 * (result & 3)) & 0xEF | (16 * ((result >> 2) & 1));
  return result;
}

id (*ImageAnalysisInteraction.selectableItemsHighlighted.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  *a1 = v3;
  *(a1 + 8) = [v3 highlightSelectableItems];
  return sub_23B2D3A3C;
}

id (*ImageAnalysisInteraction.allowLongPressForDataDetectorsInTextMode.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  *a1 = v3;
  *(a1 + 8) = [v3 allowLongPressForDataDetectorsInTextMode];
  return sub_23B2D3AFC;
}

uint64_t sub_23B2D3B70(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23B2EAF10();

  return v4;
}

uint64_t ImageAnalysisInteraction.selectedAttributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) selectedAttributedText];
  if (!v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v3 = sub_23B2EAEE0();
    v4 = [v2 initWithString_];

    v1 = v4;
  }

  return MEMORY[0x28211C2C8](v1);
}

char *ImageAnalysisInteraction.selectedRanges.getter()
{
  v19 = *(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v1 = [v19 selectedRanges];
  sub_23B2D2208(0, &qword_27E12E1F8, 0x277CCAE60);
  v2 = sub_23B2EAF60();

  if (v2 >> 62)
  {
LABEL_22:
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_23B2EB160();
  }

  else
  {
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v18 = MEMORY[0x277D84F90];
  while (v21 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EE98EC0](v3, v2);
    }

    else
    {
      if (v3 >= *(v20 + 16))
      {
        goto LABEL_21;
      }

      v10 = *(v2 + 8 * v3 + 32);
    }

    v11 = v10;
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v10 rangeValue];
    v13 = [v19 text];
    if (v13)
    {
      v4 = v13;
      sub_23B2EAF10();
    }

    v5 = sub_23B2EB050();
    v7 = v6;
    v9 = v8;

    ++v3;
    if ((v9 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23B2D72B0(0, *(v18 + 2) + 1, 1, v18);
      }

      v15 = *(v18 + 2);
      v14 = *(v18 + 3);
      if (v15 >= v14 >> 1)
      {
        v18 = sub_23B2D72B0((v14 > 1), v15 + 1, 1, v18);
      }

      *(v18 + 2) = v15 + 1;
      v16 = &v18[16 * v15];
      *(v16 + 4) = v5;
      *(v16 + 5) = v7;
      v3 = v12;
    }
  }

  return v18;
}

void ImageAnalysisInteraction.selectedRanges.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v14 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = 32;
    do
    {
      v6 = [v2 text];
      if (v6)
      {
        v7 = v6;
        v8 = sub_23B2EAF10();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E200, &qword_23B2EC150);
      sub_23B2D81C0();
      sub_23B2D826C();
      v11 = sub_23B2EB0B0();
      if ([v4 valueWithRange_])
      {
        MEMORY[0x23EE98CC0]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23B2EAF70();
        }

        sub_23B2EAF80();
      }

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  sub_23B2D2208(0, &qword_27E12E1F8, 0x277CCAE60);
  v13 = sub_23B2EAF50();

  [v2 setSelectedRanges_];
}

void (*ImageAnalysisInteraction.selectedRanges.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ImageAnalysisInteraction.selectedRanges.getter();
  return sub_23B2D4114;
}

void sub_23B2D4114(uint64_t *a1, char a2)
{
  if (a2)
  {

    ImageAnalysisInteraction.selectedRanges.setter(v2);
  }

  else
  {
    ImageAnalysisInteraction.selectedRanges.setter(*a1);
  }
}

id (*ImageAnalysisInteraction.isSupplementaryInterfaceHidden.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  *a1 = v3;
  *(a1 + 8) = [v3 actionInfoViewHidden];
  return sub_23B2D4350;
}

void (*ImageAnalysisInteraction.supplementaryInterfaceContentInsets.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v4[4] = v5;
  [v5 actionInfoEdgeInsets];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  return sub_23B2D4454;
}

void sub_23B2D4454(double **a1)
{
  v1 = *a1;
  [*(*a1 + 4) setActionInfoEdgeInsets_];

  free(v1);
}

id ImageAnalysisInteraction.supplementaryInterfaceFont.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) actionInfoCustomFont];

  return v1;
}

void ImageAnalysisInteraction.supplementaryInterfaceFont.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) setActionInfoCustomFont_];
}

void (*ImageAnalysisInteraction.supplementaryInterfaceFont.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  a1[1] = v3;
  *a1 = [v3 actionInfoCustomFont];
  return sub_23B2D4594;
}

void sub_23B2D4594(id *a1)
{
  v1 = *a1;
  [a1[1] setActionInfoCustomFont_];
}

uint64_t ImageAnalysisInteraction.SubjectUnavailable.hashValue.getter()
{
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](0);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4650()
{
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](0);
  return sub_23B2EB240();
}

uint64_t sub_23B2D46BC(uint64_t a1)
{
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](0);
  return sub_23B2EB240();
}

double ImageAnalysisInteraction.Subject.bounds.getter()
{
  v1 = sub_23B2EAE40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  sub_23B2EAE20();
  v6 = sub_23B2EADF0();
  [v5 imageSubjectBoundsWithIndexes_];
  v8 = v7;

  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t ImageAnalysisInteraction.Subject.image.getter()
{
  v2 = sub_23B2EAE40();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v5 = v0[1];
  v1[21] = v3;
  v1[22] = v4;
  v1[23] = v5;

  return MEMORY[0x2822009F8](sub_23B2D48F0, 0, 0);
}

uint64_t sub_23B2D48F0()
{
  v1 = v0[23];
  sub_23B2EAE20();
  v2 = sub_23B2EADF0();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23B2D4A30;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E218, &qword_23B2EC160);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D4C44;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 loadImageSubjectWithIndexes:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B2D4A30()
{

  return MEMORY[0x2822009F8](sub_23B2D4B10, 0, 0);
}

uint64_t sub_23B2D4B10()
{
  v1 = v0[18];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  if (v1)
  {
    (*(v4 + 8))(v0[21], v0[19]);

    v6 = v0[1];

    return v6(v1);
  }

  else
  {

    sub_23B2D8380();
    swift_allocError();
    swift_willThrow();
    (*(v4 + 8))(v3, v5);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_23B2D4C44(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t static ImageAnalysisInteraction.Subject.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
  return sub_23B2EB0A0() & 1;
}

uint64_t ImageAnalysisInteraction.Subject.hashValue.getter()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4D88()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4DFC(uint64_t a1)
{
  v2 = *v1;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v2);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4E40(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
  return sub_23B2EB0A0() & 1;
}

uint64_t ImageAnalysisInteraction.subjects.getter()
{
  v1[22] = v0;
  v2 = sub_23B2EADD0();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_23B2EAE40();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E230, &qword_23B2EC170);
  v1[30] = swift_task_alloc();
  sub_23B2EAFD0();
  v1[31] = sub_23B2EAFC0();
  v5 = sub_23B2EAF90();
  v1[32] = v5;
  v1[33] = v4;

  return MEMORY[0x2822009F8](sub_23B2D5038, v5, v4);
}

uint64_t sub_23B2D5038()
{
  v1 = *(v0[22] + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v0[34] = v1;
  v0[2] = v0;
  v0[3] = sub_23B2D515C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E238, &qword_23B2EC178);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D54B8;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 beginImageSubjectAnalysisIfNecessaryWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B2D515C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_23B2D5264, v2, v1);
}

uint64_t sub_23B2D5264()
{
  v19 = v0;
  v1 = v0[34];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];

  v17 = MEMORY[0x277D84FA0];
  v6 = [v1 allSubjectIndexes];
  sub_23B2EAE00();

  sub_23B2EADE0();
  (*(v4 + 8))(v2, v3);
  v7 = (v5 + 8);
  sub_23B2D843C(&qword_27E12E240, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  while (1)
  {
    v8 = v0[25];
    v9 = v0[23];
    sub_23B2EB020();
    sub_23B2D843C(&qword_27E12E248, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v10 = sub_23B2EAED0();
    (*v7)(v8, v9);
    if (v10)
    {
      break;
    }

    v11 = v0[34];
    v12 = sub_23B2EB040();
    v14 = *v13;
    v12(v0 + 18, 0);
    sub_23B2EB030();
    sub_23B2D77BC(v18, v14, v11);
  }

  sub_23B2D83D4(v0[30]);

  v15 = v0[1];

  return v15(v17);
}

uint64_t sub_23B2D54B8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t ImageAnalysisInteraction.highlightedSubjects.getter()
{
  v1 = sub_23B2EADD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_23B2EAE40();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E230, &qword_23B2EC170);
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10 - 8];
  v23 = MEMORY[0x277D84FA0];
  v12 = *(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v13 = [v12 selectedSubjectIndexes];
  sub_23B2EAE00();

  sub_23B2EADE0();
  (*(v6 + 8))(v8, v5);
  sub_23B2D843C(&qword_27E12E240, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v14 = (v2 + 8);
  while (1)
  {
    sub_23B2EB020();
    sub_23B2D843C(&qword_27E12E248, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v15 = sub_23B2EAED0();
    (*v14)(v4, v1);
    if (v15)
    {
      break;
    }

    v16 = sub_23B2EB040();
    v18 = *v17;
    v16(v21, 0);
    sub_23B2EB030();
    sub_23B2D77BC(v21, v18, v12);
  }

  sub_23B2D83D4(v11);
  return v23;
}

id ImageAnalysisInteraction.highlightedSubjects.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23B2EAE40();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  if (*(a1 + 16))
  {
    v11 = sub_23B2D5A78(a1);

    sub_23B2D843C(&qword_27E12E250, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    sub_23B2EB0E0();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = (v11 + 32);
      do
      {
        v14 = *v13++;
        v19[1] = v14;
        sub_23B2EB0C0();
        --v12;
      }

      while (v12);
    }

    (*(v5 + 32))(v10, v8, v4);
    v15 = *(v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v16 = sub_23B2EADF0();
    [v15 highlightSubjectAtIndexSet:v16 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    return (*(v5 + 8))(v10, v4);
  }

  else
  {

    v18 = *(v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);

    return [v18 highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
  }
}

uint64_t sub_23B2D5A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_23B2E6FEC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_23B2EB100();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 16 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_23B2E6FEC((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_23B2D8C08(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_23B2D8C08(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void (*ImageAnalysisInteraction.highlightedSubjects.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[5] = v1;
  v6 = sub_23B2EAE40();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v5[10] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[8] = malloc(*(v7 + 64));
    v5[9] = malloc(v8);
    v5[10] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[11] = v9;
  *v5 = ImageAnalysisInteraction.highlightedSubjects.getter();
  return sub_23B2D5DD4;
}

void sub_23B2D5DD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(**a1 + 16);
  if (a2)
  {
    if (v3)
    {

      v5 = sub_23B2D5A78(v4);

      sub_23B2D843C(&qword_27E12E250, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
      sub_23B2EB0E0();
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = (v5 + 32);
        do
        {
          v8 = *v7++;
          v2[2] = v8;
          sub_23B2EB0C0();
          --v6;
        }

        while (v6);
      }

      v10 = v2[8];
      v9 = v2[9];
      v11 = v2[6];
      v12 = v2[7];
      v13 = v2[5];

      (*(v12 + 32))(v9, v10, v11);
      v14 = *(v13 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
      v15 = sub_23B2EADF0();
      [v14 highlightSubjectAtIndexSet:v15 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

      (*(v12 + 8))(v9, v11);
    }

    else
    {
      [*(v2[5] + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
    }

    v28 = v2[10];
    v27 = v2[11];
    v30 = v2[8];
    v29 = v2[9];
  }

  else
  {
    if (v3)
    {
      v16 = sub_23B2D5A78(**a1);

      sub_23B2D843C(&qword_27E12E250, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
      sub_23B2EB0E0();
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (v16 + 32);
        do
        {
          v19 = *v18++;
          v2[4] = v19;
          sub_23B2EB0C0();
          --v17;
        }

        while (v17);
      }

      v21 = v2[10];
      v20 = v2[11];
      v22 = v2[6];
      v23 = v2[7];
      v24 = v2[5];

      (*(v23 + 32))(v20, v21, v22);
      v25 = *(v24 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
      v26 = sub_23B2EADF0();
      [v25 highlightSubjectAtIndexSet:v26 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

      (*(v23 + 8))(v20, v22);
    }

    else
    {
      v31 = v2[5];

      [*(v31 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
    }

    v28 = v2[10];
    v27 = v2[11];
    v30 = v2[8];
    v29 = v2[9];
  }

  free(v27);
  free(v28);
  free(v29);
  free(v30);

  free(v2);
}

uint64_t ImageAnalysisInteraction.subject(at:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 168) = v3;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 144) = a1;
  sub_23B2EAFD0();
  *(v4 + 176) = sub_23B2EAFC0();
  v6 = sub_23B2EAF90();
  *(v4 + 184) = v6;
  *(v4 + 192) = v5;

  return MEMORY[0x2822009F8](sub_23B2D61F0, v6, v5);
}

uint64_t sub_23B2D61F0()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v0[25] = v1;
  v0[2] = v0;
  v0[3] = sub_23B2D6314;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E238, &qword_23B2EC178);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D54B8;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 beginImageSubjectAnalysisIfNecessaryWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B2D6314()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_23B2D641C, v2, v1);
}

uint64_t sub_23B2D641C()
{
  v1 = [*(v0 + 200) subjectIndexAtPoint_];
  if (v1)
  {
    v2 = v1;
    *(v0 + 208) = [v1 integerValue];

    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_23B2D6524;

    return ImageAnalysisInteraction.subjects.getter();
  }

  else
  {
    v5 = *(v0 + 144);

    *v5 = 0;
    v5[1] = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_23B2D6524(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x2822009F8](sub_23B2D664C, v4, v3);
}

uint64_t sub_23B2D664C()
{
  v1 = v0[28];

  v3 = 0;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  v7 = (63 - v4) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_11:
    v9 = v0[26];
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(v1 + 48);
    if (*(v12 + 16 * v11) == v9)
    {
      v13 = v0[18];
      v14 = *(v12 + 16 * v11 + 8);

      *v13 = v9;
      v13[1] = v14;
LABEL_14:
      v16 = v0[1];

      return v16();
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v15 = v0[18];

      *v15 = 0;
      v15[1] = 0;
      goto LABEL_14;
    }

    v6 = *(v1 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImageAnalysisInteraction.image(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_23B2EAE40();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  sub_23B2EAFD0();
  v2[24] = sub_23B2EAFC0();
  v5 = sub_23B2EAF90();
  v2[25] = v5;
  v2[26] = v4;

  return MEMORY[0x2822009F8](sub_23B2D6878, v5, v4);
}

uint64_t sub_23B2D6878()
{
  v1 = v0[19];
  sub_23B2EAE30();
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return MEMORY[0x282200938](v6);
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        v6 = sub_23B2EAE10();
      }

      while (v4);
      continue;
    }
  }

  v9 = v0[20];

  v10 = *(v9 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v11 = sub_23B2EADF0();
  v0[27] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23B2D6A68;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E218, &qword_23B2EC160);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D4C44;
  v0[13] = &block_descriptor_13;
  v0[14] = v12;
  [v10 loadImageSubjectWithIndexes:v11 completion:v0 + 10];
  v6 = (v0 + 2);

  return MEMORY[0x282200938](v6);
}

uint64_t sub_23B2D6A68()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_23B2D6B70, v2, v1);
}

uint64_t sub_23B2D6B70()
{

  v1 = v0[18];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  if (v1)
  {
    (*(v4 + 8))(v0[23], v0[21]);

    v6 = v0[1];

    return v6(v1);
  }

  else
  {

    sub_23B2D8380();
    swift_allocError();
    swift_willThrow();
    (*(v4 + 8))(v3, v5);

    v8 = v0[1];

    return v8();
  }
}

id ImageAnalysisInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B2D726C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageAnalysisInteractionDelegateProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23B2D72B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E388, &qword_23B2EC588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23B2D73FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_23B2D75E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
  v10 = *(type metadata accessor for RecognizedItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RecognizedItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23B2D77BC(void *a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](a2);
  v7 = sub_23B2EB240();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 16 * v9);
      if (*v11 == a2)
      {
        v12 = v11[1];
        sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
        v13 = v12;
        v14 = sub_23B2EB0A0();

        if (v14)
        {
          break;
        }
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v15 = (*(v6 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    *a1 = v17;
    a1[1] = v16;
    v18 = v16;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v21 = a3;
    sub_23B2D7B9C(a2, v21, v9, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    *a1 = a2;
    a1[1] = v21;
    return 1;
  }
}

uint64_t sub_23B2D7940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E380, &qword_23B2EC580);
  result = sub_23B2EB130();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23B2EB220();
      MEMORY[0x23EE98FB0](v19);
      result = sub_23B2EB240();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_23B2D7B9C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_23B2D7940(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_23B2D7D48();
      goto LABEL_14;
    }

    sub_23B2D7EA4(v8 + 1);
  }

  v10 = *v4;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](a1);
  v11 = sub_23B2EB240();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    while (1)
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == a1)
      {
        v15 = v14[1];
        sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
        v16 = v15;
        v17 = sub_23B2EB0A0();

        if (v17)
        {
          break;
        }
      }

      a3 = (a3 + 1) & v13;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_23B2EB1C0();
    __break(1u);
  }

LABEL_14:
  v18 = *v23;
  *(*v23 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = a1;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }
}

id sub_23B2D7D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E380, &qword_23B2EC580);
  v2 = *v0;
  v3 = sub_23B2EB120();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23B2D7EA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E380, &qword_23B2EC580);
  result = sub_23B2EB130();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_23B2EB220();
      MEMORY[0x23EE98FB0](v18);
      result = sub_23B2EB240();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
      result = v19;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_23B2D80D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v5 = *(v1 + v3);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  [v4 setAnalysis_];
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

unint64_t sub_23B2D81C0()
{
  result = qword_27E12E208;
  if (!qword_27E12E208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12E200, &qword_23B2EC150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E208);
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

unint64_t sub_23B2D826C()
{
  result = qword_27E12E210;
  if (!qword_27E12E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E210);
  }

  return result;
}

uint64_t sub_23B2D82D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_23B2D8380()
{
  result = qword_27E12E220;
  if (!qword_27E12E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E220);
  }

  return result;
}

uint64_t sub_23B2D83D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E230, &qword_23B2EC170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B2D843C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B2D8488()
{
  result = qword_27E12E258;
  if (!qword_27E12E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E258);
  }

  return result;
}

unint64_t sub_23B2D84E0()
{
  result = qword_27E12E260;
  if (!qword_27E12E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E260);
  }

  return result;
}

unint64_t sub_23B2D8538()
{
  result = qword_27E12E268;
  if (!qword_27E12E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E268);
  }

  return result;
}

unint64_t sub_23B2D8590()
{
  result = qword_27E12E270;
  if (!qword_27E12E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E270);
  }

  return result;
}

unint64_t sub_23B2D85E8()
{
  result = qword_27E12E278;
  if (!qword_27E12E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E278);
  }

  return result;
}

unint64_t sub_23B2D8640()
{
  result = qword_27E12E280;
  if (!qword_27E12E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E280);
  }

  return result;
}

id keypath_get_19Tm@<X0>(void *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) *a2];
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageAnalysisInteraction.InteractionTypes(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageAnalysisInteraction.InteractionTypes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageAnalysisInteraction.SubjectUnavailable(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ImageAnalysisInteraction.SubjectUnavailable(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23B2D8900(uint64_t a1, int a2)
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

uint64_t sub_23B2D8948(uint64_t result, int a2, int a3)
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

uint64_t sub_23B2D8998(unint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = Strong + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v11 = 1;
    return v11 & 1;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v13 = a1 & 8 | (2 * (a1 & 3)) & 0xEF | (16 * ((a1 >> 2) & 1));
  v11 = (*(v9 + 8))(v7, &v13, ObjectType, v9, a2, a3);

  swift_unknownObjectRelease();
  return v11 & 1;
}

char *sub_23B2D8A90()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = &result[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 24))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *sub_23B2D8B4C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = &result[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 32))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

double sub_23B2D8C08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ImageAnalysis.transcript.getter()
{
  v1 = [*(v0 + 16) transcript];
  v2 = sub_23B2EAF10();

  return v2;
}

Swift::Bool __swiftcall ImageAnalysis.hasResults(for:)(VisionKit::ImageAnalyzer::AnalysisTypes a1)
{
  v2 = *a1.rawValue;
  if ((*a1.rawValue & 1) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = 4;
      if ((v2 & 4) == 0)
      {
        return [*(v1 + 16) hasResultsForAnalysisTypes_];
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 4) == 0)
      {
        return [*(v1 + 16) hasResultsForAnalysisTypes_];
      }
    }

    goto LABEL_11;
  }

  if ((v2 & 2) == 0)
  {
    v3 = 1;
    if ((v2 & 4) == 0)
    {
      return [*(v1 + 16) hasResultsForAnalysisTypes_];
    }

    goto LABEL_11;
  }

  v3 = 5;
  if ((v2 & 4) != 0)
  {
LABEL_11:
    v3 |= 0x10uLL;
  }

  return [*(v1 + 16) hasResultsForAnalysisTypes_];
}

uint64_t ImageAnalysis.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

VisionKit::ImageAnalyzer::Configuration __swiftcall ImageAnalyzer.Configuration.init(_:)(VisionKit::ImageAnalyzer::AnalysisTypes a1)
{
  v2 = MEMORY[0x277D84F90];
  *v1 = *a1.rawValue;
  v1[1] = v2;
  result.analysisTypes = a1;
  return result;
}

uint64_t ImageAnalyzer.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277D78518]) init];
  *(v0 + 16) = v1;
  [v1 set:1 isPublicAPI:?];
  return v0;
}

uint64_t ImageAnalyzer.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D78518]) init];
  *(v0 + 16) = v1;
  [v1 set:1 isPublicAPI:?];
  return v0;
}

uint64_t static ImageAnalyzer.supportedTextRecognitionLanguages.getter()
{
  v0 = [objc_opt_self() supportedRecognitionLanguages];
  v1 = sub_23B2EAF60();

  return v1;
}

uint64_t ImageAnalyzer.analyze(_:configuration:)(uint64_t a1, void *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v4 = a2[1];
  v3[5] = *a2;
  v3[6] = v4;
  return MEMORY[0x2822009F8](sub_23B2D8FE4, 0, 0);
}

uint64_t sub_23B2D8FE4()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 24) imageOrientation];
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v3 = 5;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((*(v0 + 40) & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v3 = 0;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((*(v0 + 40) & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = *(v0 + 32);
  v5 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithImage:*(v0 + 24) orientation:v2 requestType:v3];
  *(v0 + 56) = v5;
  v6 = sub_23B2EAF50();
  [v5 setLocales_];

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = type metadata accessor for ImageAnalysis();
  *v8 = v0;
  v8[1] = sub_23B2D91A8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA644, v7, v9);
}

uint64_t sub_23B2D91A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23B2DA8C4;
  }

  else
  {

    v2 = sub_23B2DA8C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t ImageAnalyzer.analyze(_:orientation:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[5] = v3;
  v4[6] = v5;
  v4[7] = v6;
  return MEMORY[0x2822009F8](sub_23B2D92F0, 0, 0);
}

uint64_t sub_23B2D92F0()
{
  v2 = v0[6];
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      v3 = 5;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((v2 & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      v3 = 0;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((v2 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = v0[5];
  v5 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithImage:v0[3] orientation:v0[4] requestType:v3];
  v0[8] = v5;
  v6 = sub_23B2EAF50();
  [v5 setLocales_];

  v7 = swift_task_alloc();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = type metadata accessor for ImageAnalysis();
  *v8 = v0;
  v8[1] = sub_23B2D9494;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v7, v9);
}

uint64_t sub_23B2D9494()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_23B2D961C;
  }

  else
  {

    v2 = sub_23B2D95B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B2D95B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23B2D961C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ImageAnalyzer.analyze(_:orientation:configuration:)(uint64_t a1, int a2, void *a3)
{
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = a3[1];
  *(v4 + 40) = *a3;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_23B2D96B0, 0, 0);
}

{
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = a3[1];
  *(v4 + 40) = *a3;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_23B2D9A88, 0, 0);
}

{
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = a3[1];
  *(v4 + 40) = *a3;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_23B2D9C70, 0, 0);
}

uint64_t sub_23B2D96B0()
{
  v1 = v0[5];
  v2 = vk_orientationFromCGImagePropertyOrientation();
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v3 = 5;
      if ((v0[5] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((v0[5] & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v3 = 0;
      if ((v0[5] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((v0[5] & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = v0[4];
  v5 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithCGImage:v0[3] orientation:v2 requestType:v3];
  v0[7] = v5;
  v6 = sub_23B2EAF50();
  [v5 setLocales_];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = type metadata accessor for ImageAnalysis();
  *v8 = v0;
  v8[1] = sub_23B2D986C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v7, v9);
}

uint64_t sub_23B2D986C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23B2D99F4;
  }

  else
  {

    v2 = sub_23B2D9988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B2D9988()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23B2D99F4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B2D9A88()
{
  v1 = v0[5];
  v2 = vk_orientationFromCGImagePropertyOrientation();
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v3 = 5;
      if ((v0[5] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((v0[5] & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v3 = 0;
      if ((v0[5] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((v0[5] & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = v0[4];
  v5 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithCIImage:v0[3] orientation:v2 requestType:v3];
  v0[7] = v5;
  v6 = sub_23B2EAF50();
  [v5 setLocales_];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = type metadata accessor for ImageAnalysis();
  *v8 = v0;
  v8[1] = sub_23B2D91A8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v7, v9);
}

uint64_t sub_23B2D9C70()
{
  v1 = v0[5];
  v2 = vk_orientationFromCGImagePropertyOrientation();
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v3 = 5;
      if ((v0[5] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((v0[5] & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v3 = 0;
      if ((v0[5] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((v0[5] & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = v0[4];
  v5 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithCVPixelBuffer:v0[3] orientation:v2 requestType:v3];
  v0[7] = v5;
  v6 = sub_23B2EAF50();
  [v5 setLocales_];

  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = type metadata accessor for ImageAnalysis();
  *v8 = v0;
  v8[1] = sub_23B2D91A8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v7, v9);
}

uint64_t ImageAnalyzer.analyze(imageAt:orientation:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[3] = a1;
  v4[4] = v3;
  v6 = sub_23B2EAD90();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a3;
  v9 = a3[1];
  v4[7] = v7;
  v4[8] = v8;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_23B2D9EF8, 0, 0);
}

uint64_t sub_23B2D9EF8()
{
  v1 = v0[8];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v2 = 5;
      if ((v0[8] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 1;
    if ((v0[8] & 4) != 0)
    {
LABEL_11:
      v2 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v2 = 0;
      if ((v0[8] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 4;
    if ((v0[8] & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = objc_allocWithZone(MEMORY[0x277D78520]);
  v8 = sub_23B2EAD80();
  v9 = [v7 initWithImageURL:v8 requestType:v2];
  v0[10] = v9;

  (*(v4 + 8))(v3, v5);
  v10 = sub_23B2EAF50();
  [v9 setLocales_];

  v11 = swift_task_alloc();
  v0[11] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v9;
  v12 = swift_task_alloc();
  v0[12] = v12;
  v13 = type metadata accessor for ImageAnalysis();
  *v12 = v0;
  v12[1] = sub_23B2DA0F4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v11, v13);
}

uint64_t sub_23B2DA0F4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23B2DA288;
  }

  else
  {

    v2 = sub_23B2DA210;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B2DA210()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23B2DA288()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_23B2DA2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_23B2DA81C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2DA560;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  [v10 processRequest:a3 progressHandler:0 completionHandler:v13];
  _Block_release(v13);
}

void *sub_23B2DA4BC(void *result, id a2)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for ImageAnalysis();
    *(swift_allocObject() + 16) = v2;
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
    return sub_23B2EAFB0();
  }

  else if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
    return sub_23B2EAFA0();
  }

  return result;
}

void sub_23B2DA560(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t ImageAnalyzer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_23B2DA650()
{
  result = qword_27E12E3F0;
  if (!qword_27E12E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E3F0);
  }

  return result;
}

unint64_t sub_23B2DA6A8()
{
  result = qword_27E12E3F8;
  if (!qword_27E12E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E3F8);
  }

  return result;
}

unint64_t sub_23B2DA700()
{
  result = qword_27E12E400;
  if (!qword_27E12E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E400);
  }

  return result;
}

unint64_t sub_23B2DA758()
{
  result = qword_27E12E408;
  if (!qword_27E12E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E408);
  }

  return result;
}

void *sub_23B2DA81C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");

  return sub_23B2DA4BC(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23B2DA8CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_23B2DA924()
{
  v0 = sub_23B2EAE70();
  __swift_allocate_value_buffer(v0, qword_27E12E420);
  __swift_project_value_buffer(v0, qword_27E12E420);
  return sub_23B2EAE60();
}

uint64_t static DataScannerViewController.RecognizedDataType.text(languages:textContentType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = MEMORY[0x277D84F90];
}

uint64_t static DataScannerViewController.RecognizedDataType.barcode(symbologies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = 1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 8;
  *(a2 + 24) = a1;
}

uint64_t DataScannerViewController.RecognizedDataType.hashValue.getter()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t _s9VisionKit25DataScannerViewControllerC12QualityLevelO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2DAAE0(uint64_t a1)
{
  v2 = *v1;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v2);
  return sub_23B2EB240();
}

uint64_t DataScannerViewController.ScanningUnavailable.hashValue.getter()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

void sub_23B2DABF4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B2E809C(a1);

  *a2 = v3;
}

uint64_t sub_23B2DAC34(void *a1, uint64_t a2)
{
  v4 = sub_23B2EAE80();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23B2EAEA0();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v16 = sub_23B2EB080();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  aBlock[4] = sub_23B2EA864;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_182;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_23B2EAE90();
  v19 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  v14 = v16;
  MEMORY[0x23EE98E10](0, v9, v6, v12);
  _Block_release(v12);

  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);
}

void sub_23B2DAF68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_23B2E80D4(a3);
    }
  }
}

uint64_t sub_23B2DB058(void *a1, double a2)
{
  v4 = sub_23B2EAE80();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23B2EAEA0();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v16 = sub_23B2EB080();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  aBlock[4] = sub_23B2EA80C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_175;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_23B2EAE90();
  v19 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  v14 = v16;
  MEMORY[0x23EE98E10](0, v9, v6, v12);
  _Block_release(v12);

  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);
}

void sub_23B2DB394(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = &v5[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        (*(v7 + 24))(v5, ObjectType, v7, a2);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_23B2DB518(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if (a3)
      {
        [*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge] beginSessionForText:*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] & 1 barcodes:(*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] >> 1) & 1];
      }

      else
      {
        [*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge] endSession];
      }
    }
  }
}

uint64_t sub_23B2DB64C(void *a1, void *a2, void *a3)
{
  v6 = sub_23B2EAE80();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B2EAEA0();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v12 = sub_23B2EAE70();
  __swift_project_value_buffer(v12, qword_27E12E420);
  v13 = a2;
  v14 = a3;
  v15 = sub_23B2EAE50();
  v16 = sub_23B2EB070();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2112;
    v19 = v13;
    if (a3)
    {
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v17 + 14) = v21;
    v18[1] = v22;
    _os_log_impl(&dword_23B2CF000, v15, v16, "DataScannerViewController impl received didCapturePhoto with photo: %@, error: %@", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6F0, &qword_23B2ECE90);
    swift_arrayDestroy();
    MEMORY[0x23EE99510](v18, -1, -1);
    MEMORY[0x23EE99510](v17, -1, -1);
  }

  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v23 = sub_23B2EB080();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a1;
  v25[4] = v13;
  v25[5] = a3;
  aBlock[4] = sub_23B2EA7F4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_161;
  v26 = _Block_copy(aBlock);
  v27 = v13;
  v28 = a3;

  v29 = a1;
  sub_23B2EAE90();
  v35 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  MEMORY[0x23EE98E10](0, v11, v8, v26);
  _Block_release(v26);

  (*(v34 + 8))(v8, v6);
  (*(v32 + 8))(v11, v33);
}

void sub_23B2DBAEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_23B2E84D4(a3, a4);

      goto LABEL_9;
    }
  }

  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v10 = sub_23B2EAE70();
  __swift_project_value_buffer(v10, qword_27E12E420);
  v9 = sub_23B2EAE50();
  v11 = sub_23B2EB060();
  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B2CF000, v9, v11, "Unexpected error before calling didCapturePhoto on DataScannerViewController. Missing self or owner.", v12, 2u);
    MEMORY[0x23EE99510](v12, -1, -1);
  }

LABEL_9:
}

void sub_23B2DBCE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v3, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_23B2DBE48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v6 = sub_23B2EAE80();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23B2EAEA0();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v20 = sub_23B2EB080();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = v19;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_23B2EAE90();
  v23 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  v16 = v20;
  MEMORY[0x23EE98E10](0, v11, v8, v14);
  _Block_release(v14);

  (*(v22 + 8))(v8, v6);
  (*(v9 + 8))(v11, v21);
}

void sub_23B2DC168(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v3, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_23B2DC2CC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v7 = sub_23B2EAE80();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23B2EAEA0();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v21 = sub_23B2EB080();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  sub_23B2EAE90();
  v24 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  v17 = v21;
  MEMORY[0x23EE98E10](0, v12, v9, v15);
  _Block_release(v15);

  (*(v23 + 8))(v9, v7);
  (*(v10 + 8))(v12, v22);
}

void sub_23B2DC5F4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if ((a3 & 1) == 0)
      {
        v7 = &v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 1);
          ObjectType = swift_getObjectType();
          v10 = 1;
          (*(v8 + 48))(v6, &v10, ObjectType, v8);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_23B2DC74C(uint64_t a1)
{
  if ([objc_opt_self() isCameraRestricted])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = swift_unknownObjectWeakLoadStrong();

      if (v3)
      {
        v4 = &v3[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v4 + 1);
          ObjectType = swift_getObjectType();
          v7 = 1;
          (*(v5 + 48))(v3, &v7, ObjectType, v5);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id sub_23B2DC8FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DataScannerViewController.Impl();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23B2DC99C()
{
  v0 = [objc_opt_self() supportedRecognitionLanguages];
  v1 = sub_23B2EAF60();

  return v1;
}

uint64_t (*sub_23B2DCA0C(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23B2EAD40;
}

void sub_23B2DCAAC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_23B2DCB0C()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id sub_23B2DCBD4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *a2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  result = swift_beginAccess();
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  if ((v6 & 1) == 0)
  {
    return [*(v7 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) setRegionOfInterest_];
  }

  return result;
}

__n128 sub_23B2DCC78@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

id sub_23B2DCCD0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  v6 = *(a1 + 32);
  *(v3 + 32) = v6;
  if ((v6 & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) setRegionOfInterest_];
  }

  return result;
}

uint64_t (*sub_23B2DCD54(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23B2DCDDC;
}

void sub_23B2DCDDC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v4 + v3[4];
    if ((*(v5 + 32) & 1) == 0)
    {
      [*(v4 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) setRegionOfInterest_];
    }
  }

  free(v3);
}

uint64_t sub_23B2DCE7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E490, &qword_23B2EC870);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E498, &qword_23B2EC878);
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  return sub_23B2EB000();
}

uint64_t sub_23B2DCFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  (*(v5 + 16))(&v14 - v6, a1, v4);
  v8 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations;
  v9 = *(a2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_23B2D73D8(0, v9[2] + 1, 1, v9);
    *(a2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_23B2D73D8((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  *(a2 + v8) = v9;
  return result;
}

id (*sub_23B2DD190(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  a1[1] = v3;
  [v3 zoomFactor];
  *a1 = v4;
  return sub_23B2DD1EC;
}

uint64_t sub_23B2DD268(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_23B2DD2D0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23B2DD370;
}

void sub_23B2DD374(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

double sub_23B2DD3FC()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_23B2DD454(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_23B2DD4E8;
}

double sub_23B2DD4F4()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_23B2DD54C(uint64_t *a1, SEL *a2, double a3)
{
  v6 = *a1;
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  *(v3 + v6) = a3;
  if (v8 != a3)
  {
    v9 = *(v3 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (v9)
    {
      [v9 *a2];
    }

    result = *(v3 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor);
    if (result)
    {
      return [result *a2];
    }
  }

  return result;
}

void (*sub_23B2DD5E8(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_23B2DD67C;
}

void sub_23B2DD688(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = v4;
  if (v4 != v7)
  {
    v8 = v3[4];
    v9 = *(v8 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (v9)
    {
      v10 = a3;
      [v9 *a3];
      a3 = v10;
      v8 = v3[4];
    }

    v11 = *(v8 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor);
    if (v11)
    {
      [v11 *a3];
    }
  }

  free(v3);
}

id (*sub_23B2DD798(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  *a1 = v3;
  *(a1 + 8) = [v3 isTorchOn];
  return sub_23B2DD7F4;
}

void sub_23B2DD80C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  *(v3 + v4) = v2;

  sub_23B2DD878();
}

void sub_23B2DD878()
{
  v1 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 configuration];
    swift_beginAccess();

    v4 = sub_23B2EAF50();

    [v3 setCustomWords_];

    [v2 setConfiguration_];
  }

  v5 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 configuration];
    swift_beginAccess();

    v8 = sub_23B2EAF50();

    [v7 setCustomWords_];

    [v6 setConfiguration_];
  }
}

void sub_23B2DDA3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_23B2DD878();
}

void (*sub_23B2DDA98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23B2DDAFC;
}

void sub_23B2DDAFC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_23B2DD878();
  }
}

uint64_t sub_23B2DDB30()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_23B2DDB74(char a1)
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 configuration];
    [v6 setUsesLanguageDetection_];
    [v5 setConfiguration_];
  }

  v7 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 configuration];
    [v9 setUsesLanguageDetection_];
    [v8 setConfiguration_];
  }
}

uint64_t (*sub_23B2DDC80(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23B2DDD08;
}

void sub_23B2DDD08(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (v5)
    {
      v6 = v3[4];
      v7 = v5;
      v8 = [v7 configuration];
      [v8 setUsesLanguageDetection_];
      [v7 setConfiguration_];

      v4 = v3[3];
    }

    v9 = *(v4 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor);
    if (v9)
    {
      v10 = v3[4];
      v11 = v9;
      v12 = [v11 configuration];
      [v12 setUsesLanguageDetection_];
      [v11 setConfiguration_];
    }
  }

  free(v3);
}

id DataScannerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataScannerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23B2EAEE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void *DataScannerViewController.__allocating_init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:)(uint64_t a1, char *a2, char a3, char a4, char a5, char a6, char a7)
{
  v12 = objc_allocWithZone(v7);
  v13 = *a2;
  v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v14 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v15 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v16 = v12;
  *&v12[v14] = [v15 init];
  v17 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v16[v17] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v18 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v16[v18] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v19 = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v16[v20] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v21 = &v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v23 = objc_opt_self();
  [v23 defaultProcessingInterval];
  *&v16[v22] = v24;
  v25 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  v26 = v23;
  v27 = a5;
  [v26 defaultInfrequentProcessingInterval];
  *&v16[v25] = v28;
  v29 = v13;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v19;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v30 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v13;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = a5;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = objc_opt_self();

  if (([v31 isOpticalFlowForTextEnabled] & 1) == 0)
  {

LABEL_11:
    v39 = 1;
    goto LABEL_12;
  }

  v32 = *&v16[v30];
  if (*(v32 + 16) != 1)
  {
    goto LABEL_9;
  }

  result = sub_23B2DE8B4(v32, &v47);
  if (!v48)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = v47;
  sub_23B2E9000(v47, v48, v49, v50);
  if (v34)
  {
LABEL_9:

LABEL_10:

    goto LABEL_11;
  }

  result = sub_23B2DE8B4(*&v16[v30], &v47);
  v35 = v48;
  if (!v48)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v37 = v49;
  v36 = v50;
  v38 = v47;

  sub_23B2E9000(v38, v35, v37, v36);
  v39 = v37 != 8;
LABEL_12:
  v40 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v40 setResolutionPreset_];
  [v40 setFrameRatePreset_];
  if ((v27 & 1) == 0)
  {
    [v40 setCameraPreset_];
  }

  [v40 setPreferBinning_];
  v41 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v41;
  v51.receiver = v16;
  v51.super_class = v43;
  v42 = objc_msgSendSuper2(&v51, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v42;
}

void *DataScannerViewController.init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:)(uint64_t a1, char *a2, char a3, char a4, char a5, char a6, char a7)
{
  v11 = *a2;
  v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v12 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v13 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v14 = v7;
  *&v7[v12] = [v13 init];
  v15 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v14[v15] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v16 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v14[v16] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v17 = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v14[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = &v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v21 = objc_opt_self();
  [v21 defaultProcessingInterval];
  *&v14[v20] = v22;
  v23 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v21 defaultInfrequentProcessingInterval];
  *&v14[v23] = v24;
  v25 = v11;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v17;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v26 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v11;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = a5;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = objc_opt_self();

  if (([v27 isOpticalFlowForTextEnabled] & 1) == 0)
  {

LABEL_11:
    v35 = 1;
    goto LABEL_12;
  }

  v28 = *&v14[v26];
  if (*(v28 + 16) != 1)
  {
    goto LABEL_9;
  }

  result = sub_23B2DE8B4(v28, &v43);
  if (!v44)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = v43;
  sub_23B2E9000(v43, v44, v45, v46);
  if (v30)
  {
LABEL_9:

LABEL_10:

    goto LABEL_11;
  }

  result = sub_23B2DE8B4(*&v14[v26], &v43);
  v31 = v44;
  if (!v44)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = v45;
  v32 = v46;
  v34 = v43;

  sub_23B2E9000(v34, v31, v33, v32);
  v35 = v33 != 8;
LABEL_12:
  v36 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v36 setResolutionPreset_];
  [v36 setFrameRatePreset_];
  if ((a5 & 1) == 0)
  {
    [v36 setCameraPreset_];
  }

  [v36 setPreferBinning_];
  v37 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v37;
  v38 = type metadata accessor for DataScannerViewController();
  v47.receiver = v14;
  v47.super_class = v38;
  v39 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v39;
}

void *sub_23B2DE8B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_23B2EB100();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 0;
    v6 = 0;
    *a2 = 0;
    a2[2] = 0;
  }

  else
  {
    result = sub_23B2E7FFC(result, *(a1 + 36), a1, v8);
    v5 = v9;
    v7 = v10;
    v6 = v11;
    *a2 = v8[0];
    *(a2 + 16) = v7;
  }

  a2[1] = v5;
  a2[3] = v6;
  return result;
}

void *DataScannerViewController.__allocating_init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:usesSingleCamera:)(uint64_t a1, char *a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v13 = objc_allocWithZone(v8);
  v14 = *a2;
  v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v15 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v16 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v17 = v13;
  *&v13[v15] = [v16 init];
  v18 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v17[v18] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v19 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v17[v19] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v20 = MEMORY[0x277D84F90];
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v17[v21] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v22 = &v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v24 = objc_opt_self();
  [v24 defaultProcessingInterval];
  *&v17[v23] = v25;
  v26 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v24 defaultInfrequentProcessingInterval];
  *&v17[v26] = v27;
  v28 = v14;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v20;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v29 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v14;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = a5;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v30 = objc_opt_self();

  if ([v30 isOpticalFlowForTextEnabled])
  {
    v31 = *&v17[v29];
    if (*(v31 + 16) == 1)
    {
      result = sub_23B2DE8B4(v31, &v48);
      if (!v49)
      {
        __break(1u);
        goto LABEL_20;
      }

      v33 = v48;
      sub_23B2E9000(v48, v49, v50, v51);
      if ((v33 & 1) == 0)
      {
        result = sub_23B2DE8B4(*&v17[v29], &v48);
        v34 = v49;
        if (v49)
        {
          v36 = v50;
          v35 = v51;
          v37 = v48;

          sub_23B2E9000(v37, v34, v36, v35);
          v38 = v36 != 8;
          goto LABEL_12;
        }

LABEL_20:
        __break(1u);
        return result;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v38 = 1;
LABEL_12:
  v39 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v39 setResolutionPreset_];
  [v39 setFrameRatePreset_];
  if ((a8 & 1) != 0 || (a5 & 1) == 0)
  {
    if (a8)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    [v39 setCameraPreset_];
  }

  [v39 setPreferBinning_];
  v41 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v41;
  v52.receiver = v17;
  v52.super_class = v44;
  v42 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v42;
}

void *DataScannerViewController.init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:usesSingleCamera:)(uint64_t a1, char *a2, char a3, char a4, unsigned int a5, char a6, char a7, unsigned int a8)
{
  v42 = __PAIR64__(a5, a8);
  v12 = *a2;
  v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v13 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v14 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v15 = v8;
  *&v8[v13] = [v14 init];
  v16 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v15[v16] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v17 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v15[v17] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v18 = MEMORY[0x277D84F90];
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v15[v19] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v20 = &v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v22 = objc_opt_self();
  [v22 defaultProcessingInterval];
  *&v15[v21] = v23;
  v24 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v22 defaultInfrequentProcessingInterval];
  *&v15[v24] = v25;
  v26 = v12;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v18;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v27 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v12;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = BYTE4(v42);
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v28 = objc_opt_self();

  if ([v28 isOpticalFlowForTextEnabled])
  {
    v29 = *&v15[v27];
    if (*(v29 + 16) == 1)
    {
      result = sub_23B2DE8B4(v29, &v45);
      if (!v46)
      {
        __break(1u);
        goto LABEL_20;
      }

      v31 = v45;
      sub_23B2E9000(v45, v46, v47, v48);
      if ((v31 & 1) == 0)
      {
        result = sub_23B2DE8B4(*&v15[v27], &v45);
        v32 = v46;
        if (v46)
        {
          v34 = v47;
          v33 = v48;
          v35 = v45;

          sub_23B2E9000(v35, v32, v34, v33);
          v36 = v34 != 8;
          goto LABEL_12;
        }

LABEL_20:
        __break(1u);
        return result;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v36 = 1;
LABEL_12:
  v37 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v37 setResolutionPreset_];
  [v37 setFrameRatePreset_];
  if ((v42 & 1) != 0 || (v42 & 0x100000000) == 0)
  {
    if (v42)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    [v37 setCameraPreset_];
  }

  [v37 setPreferBinning_];
  v39 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v39;
  v40 = type metadata accessor for DataScannerViewController();
  v49.receiver = v15;
  v49.super_class = v40;
  v41 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v41;
}

id DataScannerViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DataScannerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23B2DF564()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v2 setBackgroundColor_];
  v5 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl];
  swift_unknownObjectWeakAssign();
  v6 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider];
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v7 = sub_23B2EB080();
  v76 = v6;
  [v6 setDelegate:v5 queue:v7];

  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge] setDelegate_];
  if (v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] == 1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v1 action:sel_onPinch_];
    v9 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer;
    v10 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer];
    *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = v8;

    v11 = [v1 view];
    if (!v11)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!*&v1[v9])
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v12 = v11;
    [v11 addGestureRecognizer_];
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_onTap_];
  v14 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer;
  v15 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer];
  *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = v13;

  v16 = [v1 view];
  if (!v16)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!*&v1[v14])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v17 = v16;
  [v16 addGestureRecognizer_];

  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 addObserver:v1 selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v20 = [v18 defaultCenter];
  [v20 addObserver:v1 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (![objc_opt_self() isOpticalFlowForTextEnabled])
  {
    goto LABEL_18;
  }

  v21 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes];
  if (*(v21 + 16) != 1)
  {
    goto LABEL_18;
  }

  sub_23B2DE8B4(*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes], &aBlock);
  if (!v80)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v22 = aBlock;
  sub_23B2E9000(aBlock, v80, v81, v82);
  if ((v22 & 1) == 0)
  {
    sub_23B2DE8B4(v21, &aBlock);
    if (v80)
    {
      v23 = v81;
      sub_23B2E9000(aBlock, v80, v81, v82);
      if (v23 == 8 && v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] == 1)
      {
        v24 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType];
        if ((v24 & 1) == 0)
        {
          *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = v24 | 1;
        }

        v25 = [objc_allocWithZone(MEMORY[0x277D785A0]) init];
        [v25 setIsForSingleItem_];
        sub_23B2DE8B4(v21, &aBlock);
        v26 = v80;
        if (v80)
        {
          v28 = v81;
          v27 = v82;
          v29 = aBlock;

          sub_23B2E9000(v29, v26, v28, v27);
          v30 = sub_23B2EAF50();

          [v25 setRecognitionLanguages_];

          v31 = [objc_allocWithZone(MEMORY[0x277D785A8]) init];
          [v31 setConfiguration_];
          v32 = v31;
          v33 = sub_23B2EB080();
          [v32 setResultHandlerQueue_];

          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = sub_23B2EAD48;
          v84 = v34;
          aBlock = MEMORY[0x277D85DD0];
          v80 = 1107296256;
          v81 = sub_23B2EAD44;
          v82 = &block_descriptor_224;
          v35 = _Block_copy(&aBlock);

          [v32 setResultHandler_];
          _Block_release(v35);
          [v6 registerProcessor_];

          v36 = &OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor;
          goto LABEL_53;
        }

        goto LABEL_62;
      }

      goto LABEL_18;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

LABEL_18:
  v37 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes];
  v40 = *(v37 + 56);
  v39 = v37 + 56;
  v38 = v40;
  v41 = 1 << *(*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v38;
  v77 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes];
  v78 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType;
  v73 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor;
  v74 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor;
  v44 = (v41 + 63) >> 6;
  v75 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems;

  v45 = 0;
  while (v43)
  {
LABEL_28:
    v57 = (*(v77 + 48) + ((v45 << 11) | (32 * __clz(__rbit64(v43)))));
    v58 = *&v1[v78];
    if ((*v57 & 1) == 0)
    {
      v59 = v57[16];
      if ((v58 & 1) == 0)
      {
        *&v1[v78] = v58 | 1;
      }

      v60 = objc_allocWithZone(MEMORY[0x277D785A0]);

      v47 = [v60 init];
      [v47 setIsForSingleItem_];
      v61 = sub_23B2EAF50();

      [v47 setRecognitionLanguages_];

      if (v59 <= 3)
      {
        v63 = 7;
        if (v59 != 2)
        {
          v63 = 4;
        }

        v64 = 5;
        if (v59)
        {
          v64 = 2;
        }

        if (v59 <= 1)
        {
          v62 = v64;
        }

        else
        {
          v62 = v63;
        }
      }

      else if (v59 <= 5)
      {
        if (v59 == 4)
        {
          v62 = 8;
        }

        else
        {
          v62 = 3;
        }
      }

      else
      {
        if (v59 != 6)
        {
          if (v59 == 7)
          {
            v62 = 6;
            goto LABEL_49;
          }

LABEL_50:
          v65 = [objc_allocWithZone(MEMORY[0x277D78598]) init];
          [v65 setConfiguration_];
          v50 = v65;
          v66 = sub_23B2EB080();
          [v50 setResultHandlerQueue_];

          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = sub_23B2EAC58;
          v84 = v67;
          aBlock = MEMORY[0x277D85DD0];
          v80 = 1107296256;
          v81 = sub_23B2EAD44;
          v82 = &block_descriptor_216;
          v53 = _Block_copy(&aBlock);

          [v50 setResultHandler_];
          v54 = v73;
          goto LABEL_22;
        }

        v62 = 1;
      }

LABEL_49:
      [v47 setDataType_];
      goto LABEL_50;
    }

    if ((v58 & 2) == 0)
    {
      *&v1[v78] = v58 | 2;
    }

    v46 = objc_allocWithZone(MEMORY[0x277D78500]);

    v47 = [v46 init];
    [v47 setIsForSingleItem_];
    type metadata accessor for VNBarcodeSymbology(0);
    v48 = sub_23B2EAF50();

    [v47 setSymbologies_];

    v49 = [objc_allocWithZone(MEMORY[0x277D784F8]) init];
    [v49 setConfiguration_];
    v50 = v49;
    v51 = sub_23B2EB080();
    [v50 setResultHandlerQueue_];

    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v83 = sub_23B2EAC28;
    v84 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_23B2EAD44;
    v82 = &block_descriptor_212;
    v53 = _Block_copy(&aBlock);

    [v50 setResultHandler_];
    v54 = v74;
LABEL_22:
    v43 &= v43 - 1;
    _Block_release(v53);
    [v76 registerProcessor_];

    v55 = *&v1[v54];
    *&v1[v54] = v50;
  }

  while (1)
  {
    v56 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v56 >= v44)
    {
      break;
    }

    v43 = *(v39 + 8 * v56);
    ++v45;
    if (v43)
    {
      v45 = v56;
      goto LABEL_28;
    }
  }

  if ((v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] & 1) == 0)
  {
    return;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D78558]) init];
  v68 = sub_23B2EB080();
  [v32 setResultHandlerQueue_];

  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = sub_23B2EAC88;
  v84 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_23B2EAD44;
  v82 = &block_descriptor_220;
  v70 = _Block_copy(&aBlock);

  [v32 setResultHandler_];
  _Block_release(v70);
  [v76 registerProcessor_];
  v36 = &OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor;
LABEL_53:
  v71 = *v36;
  v72 = *&v1[v71];
  *&v1[v71] = v32;
}

void sub_23B2E00A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_23B2E0110(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a1 warpTransform];
    v10 = v6;
    v11 = v5;
    v9 = v7;
    [*&v4[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] applyHomographyWarpTransform_];
    v8 = *&v4[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor];
    [v8 applyWarpTransform_];
  }
}

void sub_23B2E02D8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E728, &qword_23B2ECEB0);
  v203 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v201 - v5;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v207 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v8 = &v201 - v7;
  v9 = type metadata accessor for RecognizedItem(0);
  v216 = *(v9 - 8);
  v217 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v210 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v211 = &v201 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v201 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v201 - v17;
  v209 = a1;
  v19 = [a1 allItems];
  v208 = sub_23B2D2208(0, &qword_27E12E778, 0x277D78590);
  v20 = sub_23B2EAF60();

  v21 = v20;
  if (v20 >> 62)
  {
    v95 = v20;
    v22 = sub_23B2EB160();
    v21 = v95;
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v213 = v2;
  v204 = v8;
  v206 = v4;
  v205 = v6;
  if (v22)
  {
    v23 = v21;
    v219[0] = MEMORY[0x277D84F90];
    sub_23B2E700C(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v24 = 0;
    v25 = v23;
    v214 = v23 & 0xC000000000000001;
    v215 = v23;
    v26 = v219[0];
    v27 = v22;
    do
    {
      if (v214)
      {
        v28 = MEMORY[0x23EE98EC0](v24, v25);
      }

      else
      {
        v28 = *(v25 + 8 * v24 + 32);
      }

      v29 = v28;
      v30 = [v29 uuid];
      sub_23B2EADB0();

      v31 = [v29 layerQuad];
      [v31 topLeft];
      v33 = v32;
      v35 = v34;
      [v31 topRight];
      v37 = v36;
      v39 = v38;
      [v31 bottomRight];
      v41 = v40;
      v43 = v42;
      [v31 bottomLeft];
      v45 = v44;
      v47 = v46;
      v48 = type metadata accessor for RecognizedItem.Text(0);
      v49 = (v18 + v48[5]);
      *v49 = v33;
      v49[1] = v35;
      v49[2] = v37;
      v49[3] = v39;
      v49[4] = v41;
      v49[5] = v43;
      v49[6] = v45;
      v49[7] = v47;
      v49[8] = v31;
      v50 = [v29 transcript];
      v51 = sub_23B2EAF10();
      v53 = v52;

      v54 = (v18 + v48[6]);
      *v54 = v51;
      v54[1] = v53;
      v55 = [v29 observation];

      *(v18 + v48[7]) = v55;
      swift_storeEnumTagMultiPayload();
      v219[0] = v26;
      v57 = *(v26 + 16);
      v56 = *(v26 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_23B2E700C((v56 > 1), v57 + 1, 1);
        v26 = v219[0];
      }

      ++v24;
      *(v26 + 16) = v57 + 1;
      sub_23B2EA920(v18, v26 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v57, type metadata accessor for RecognizedItem);
      v25 = v215;
    }

    while (v27 != v24);

    v2 = v213;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v58 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems;
  *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems) = v26;

  if (*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems))
  {
    v219[0] = *(v2 + v58);

    sub_23B2E7308(v59);
    v202 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems;
    *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) = v219[0];

    v60 = [v209 addedItems];
    v18 = sub_23B2EAF60();

    if (!(v18 >> 62))
    {
      v61 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
LABEL_17:
        v219[0] = MEMORY[0x277D84F90];
        sub_23B2E700C(0, v61 & ~(v61 >> 63), 0);
        if (v61 < 0)
        {
          __break(1u);
          goto LABEL_76;
        }

        v62 = 0;
        v215 = v219[0];
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x23EE98EC0](v62, v18);
          }

          else
          {
            v63 = *(v18 + 8 * v62 + 32);
          }

          v64 = v63;
          v65 = [v64 uuid];
          sub_23B2EADB0();

          v66 = [v64 layerQuad];
          [v66 topLeft];
          v68 = v67;
          v70 = v69;
          [v66 topRight];
          v72 = v71;
          v74 = v73;
          [v66 bottomRight];
          v76 = v75;
          v78 = v77;
          [v66 bottomLeft];
          v80 = v79;
          v82 = v81;
          v83 = type metadata accessor for RecognizedItem.Text(0);
          v84 = &v16[v83[5]];
          *v84 = v68;
          *(v84 + 1) = v70;
          *(v84 + 2) = v72;
          *(v84 + 3) = v74;
          *(v84 + 4) = v76;
          *(v84 + 5) = v78;
          *(v84 + 6) = v80;
          *(v84 + 7) = v82;
          *(v84 + 8) = v66;
          v85 = [v64 transcript];
          v86 = sub_23B2EAF10();
          v88 = v87;

          v89 = &v16[v83[6]];
          *v89 = v86;
          v89[1] = v88;
          v90 = [v64 observation];

          *&v16[v83[7]] = v90;
          swift_storeEnumTagMultiPayload();
          v91 = v215;
          v219[0] = v215;
          v93 = *(v215 + 16);
          v92 = *(v215 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_23B2E700C((v92 > 1), v93 + 1, 1);
            v91 = v219[0];
          }

          ++v62;
          *(v91 + 16) = v93 + 1;
          v94 = (*(v216 + 80) + 32) & ~*(v216 + 80);
          v215 = v91;
          sub_23B2EA920(v16, v91 + v94 + *(v216 + 72) * v93, type metadata accessor for RecognizedItem);
        }

        while (v61 != v62);

LABEL_31:
        v96 = [v209 updatedItems];
        v97 = sub_23B2EAF60();

        if (v97 >> 62)
        {
          v98 = sub_23B2EB160();
          v99 = v210;
          if (v98)
          {
LABEL_33:
            v219[0] = MEMORY[0x277D84F90];
            sub_23B2E700C(0, v98 & ~(v98 >> 63), 0);
            if ((v98 & 0x8000000000000000) == 0)
            {
              v100 = 0;
              v101 = v97;
              v210 = (v97 & 0xC000000000000001);
              v214 = v219[0];
              v102 = v97;
              do
              {
                if (v210)
                {
                  v103 = MEMORY[0x23EE98EC0](v100, v101);
                }

                else
                {
                  v103 = *(v101 + 8 * v100 + 32);
                }

                v104 = v103;
                v105 = [v104 uuid];
                v106 = v211;
                sub_23B2EADB0();

                v107 = [v104 layerQuad];
                [v107 topLeft];
                v109 = v108;
                v111 = v110;
                [v107 topRight];
                v113 = v112;
                v115 = v114;
                [v107 bottomRight];
                v117 = v116;
                v119 = v118;
                [v107 bottomLeft];
                v121 = v120;
                v123 = v122;
                v124 = type metadata accessor for RecognizedItem.Text(0);
                v125 = (v106 + v124[5]);
                *v125 = v109;
                v125[1] = v111;
                v125[2] = v113;
                v125[3] = v115;
                v125[4] = v117;
                v125[5] = v119;
                v125[6] = v121;
                v125[7] = v123;
                v125[8] = v107;
                v126 = [v104 transcript];
                v127 = sub_23B2EAF10();
                v129 = v128;

                v130 = (v106 + v124[6]);
                *v130 = v127;
                v130[1] = v129;
                v131 = [v104 observation];

                *(v106 + v124[7]) = v131;
                swift_storeEnumTagMultiPayload();
                v132 = v214;
                v219[0] = v214;
                v134 = *(v214 + 16);
                v133 = *(v214 + 24);
                if (v134 >= v133 >> 1)
                {
                  sub_23B2E700C((v133 > 1), v134 + 1, 1);
                  v106 = v211;
                  v132 = v219[0];
                }

                ++v100;
                *(v132 + 16) = v134 + 1;
                v135 = (*(v216 + 80) + 32) & ~*(v216 + 80);
                v214 = v132;
                sub_23B2EA920(v106, v132 + v135 + *(v216 + 72) * v134, type metadata accessor for RecognizedItem);
                v101 = v102;
              }

              while (v98 != v100);

LABEL_44:
              v136 = [v209 removedItems];
              v137 = sub_23B2EAF60();

              if (v137 >> 62)
              {
                v138 = sub_23B2EB160();
                if (v138)
                {
LABEL_46:
                  v219[0] = MEMORY[0x277D84F90];
                  sub_23B2E700C(0, v138 & ~(v138 >> 63), 0);
                  if ((v138 & 0x8000000000000000) == 0)
                  {
                    v139 = 0;
                    v211 = (v137 & 0xC000000000000001);
                    v140 = v219[0];
                    do
                    {
                      if (v211)
                      {
                        v141 = MEMORY[0x23EE98EC0](v139, v137);
                      }

                      else
                      {
                        v141 = *(v137 + 8 * v139 + 32);
                      }

                      v142 = v141;
                      v143 = [v142 uuid];
                      sub_23B2EADB0();

                      v144 = [v142 layerQuad];
                      [v144 topLeft];
                      v146 = v145;
                      v148 = v147;
                      [v144 topRight];
                      v150 = v149;
                      v152 = v151;
                      [v144 bottomRight];
                      v154 = v153;
                      v156 = v155;
                      [v144 bottomLeft];
                      v158 = v157;
                      v160 = v159;
                      v161 = type metadata accessor for RecognizedItem.Text(0);
                      v162 = (v99 + v161[5]);
                      *v162 = v146;
                      v162[1] = v148;
                      v162[2] = v150;
                      v162[3] = v152;
                      v162[4] = v154;
                      v162[5] = v156;
                      v162[6] = v158;
                      v162[7] = v160;
                      v162[8] = v144;
                      v163 = [v142 transcript];
                      v164 = sub_23B2EAF10();
                      v166 = v165;

                      v167 = (v99 + v161[6]);
                      *v167 = v164;
                      v167[1] = v166;
                      v168 = [v142 observation];

                      *(v99 + v161[7]) = v168;
                      swift_storeEnumTagMultiPayload();
                      v219[0] = v140;
                      v170 = *(v140 + 16);
                      v169 = *(v140 + 24);
                      if (v170 >= v169 >> 1)
                      {
                        sub_23B2E700C((v169 > 1), v170 + 1, 1);
                        v140 = v219[0];
                      }

                      ++v139;
                      *(v140 + 16) = v170 + 1;
                      sub_23B2EA920(v99, v140 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v170, type metadata accessor for RecognizedItem);
                    }

                    while (v138 != v139);

                    goto LABEL_57;
                  }

LABEL_77:
                  __break(1u);
                  return;
                }
              }

              else
              {
                v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v138)
                {
                  goto LABEL_46;
                }
              }

              v140 = MEMORY[0x277D84F90];
LABEL_57:
              v2 = v213;
              v171 = v213 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              v173 = v202;
              if (Strong)
              {
                v174 = *(v171 + 8);
                v175 = v215;
                if (*(v215 + 16))
                {
                  ObjectType = swift_getObjectType();
                  v177 = v213;
                  v178 = *(v213 + v173);
                  v179 = v174[3];

                  v179(v177, v175, v178, ObjectType, v174);
                }

                v180 = v214;
                if (*(v214 + 16))
                {
                  v181 = swift_getObjectType();
                  v182 = v213;
                  v183 = *(v213 + v173);
                  v184 = v174[4];

                  v184(v182, v180, v183, v181, v174);
                }

                if (*(v140 + 16))
                {
                  v185 = swift_getObjectType();
                  v2 = v213;
                  v186 = *(v213 + v173);
                  v187 = v174[5];

                  v187(v2, v140, v186, v185, v174);
                  swift_unknownObjectRelease();
                }

                else
                {
                  swift_unknownObjectRelease();
                  v2 = v213;
                }
              }

              v188 = *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
              v189 = *(v188 + 2);
              if (v189)
              {
                v211 = v140;
                v190 = *(v207 + 16);
                v191 = &v188[(*(v207 + 80) + 32) & ~*(v207 + 80)];
                v216 = *(v207 + 72);
                v217 = v190;
                v192 = (v203 + 8);
                v193 = (v207 + 8);
                v210 = v188;

                v194 = v173;
                v195 = v206;
                v196 = v205;
                v197 = v212;
                v198 = v204;
                do
                {
                  v217(v198, v191, v197);
                  v218 = *(v213 + v194);

                  sub_23B2EAFE0();
                  v197 = v212;
                  (*v192)(v196, v195);
                  (*v193)(v198, v197);
                  v191 += v216;
                  --v189;
                }

                while (v189);

                v2 = v213;
                v140 = v211;
              }

              if (*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled) == 1)
              {
                sub_23B2E3E7C(v215, v214, v140);
              }

              goto LABEL_72;
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }
        }

        else
        {
          v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v99 = v210;
          if (v98)
          {
            goto LABEL_33;
          }
        }

        v214 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }

LABEL_30:

      v215 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

LABEL_29:
    v61 = sub_23B2EB160();
    if (v61)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  sub_23B2E25DC();
LABEL_72:
  if (*(*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) + 16))
  {
    [*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) hideGuidance];
    v199 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
    [*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer) invalidate];
    v200 = *(v2 + v199);
    *(v2 + v199) = 0;
  }

  else
  {
    sub_23B2E590C();
  }
}

void sub_23B2E13A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E728, &qword_23B2ECEB0);
  v201 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v200 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v202 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v200 - v7;
  v9 = type metadata accessor for RecognizedItem(0);
  v217 = *(v9 - 8);
  v218 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v212 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v213 = &v200 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v214 = &v200 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v200 - v16;
  v208 = a1;
  v18 = [a1 allItems];
  v207 = sub_23B2D2208(0, &qword_27E12E770, 0x277D78588);
  v19 = sub_23B2EAF60();

  if (v19 >> 62)
  {
    goto LABEL_47;
  }

  v20 = v19;
  v19 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v203 = v6;
  v204 = v5;
  v205 = v3;
  v209 = v1;
  v215 = v20;
  v216 = v8;
  if (v19)
  {
    v6 = 0;
    v210 = v20 & 0xFFFFFFFFFFFFFF8;
    v211 = v20 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v211)
      {
        v21 = MEMORY[0x23EE98EC0](v6, v215);
        v8 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v6 >= *(v210 + 16))
        {
          goto LABEL_44;
        }

        v21 = v215[v6 + 4];
        v8 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v20 = v19;
          v19 = sub_23B2EB160();
          goto LABEL_3;
        }
      }

      v1 = v19;
      v22 = v21;
      v23 = [v22 uuid];
      sub_23B2EADB0();

      v24 = [v22 layerQuad];
      [v24 topLeft];
      v26 = v25;
      v28 = v27;
      [v24 topRight];
      v30 = v29;
      v32 = v31;
      [v24 bottomRight];
      v34 = v33;
      v36 = v35;
      [v24 bottomLeft];
      v38 = v37;
      v40 = v39;
      v41 = type metadata accessor for RecognizedItem.Barcode(0);
      v42 = &v17[v41[5]];
      *v42 = v26;
      *(v42 + 1) = v28;
      *(v42 + 2) = v30;
      *(v42 + 3) = v32;
      *(v42 + 4) = v34;
      *(v42 + 5) = v36;
      *(v42 + 6) = v38;
      *(v42 + 7) = v40;
      *(v42 + 8) = v24;
      *&v17[v41[7]] = [v22 observation];
      v43 = [v22 payloadStringValue];
      if (v43)
      {
        v44 = v43;
        v45 = sub_23B2EAF10();
        v47 = v46;
      }

      else
      {

        v45 = 0;
        v47 = 0;
      }

      v48 = &v17[v41[6]];
      *v48 = v45;
      v48[1] = v47;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23B2D75E4(0, *(v5 + 16) + 1, 1, v5);
      }

      v50 = *(v5 + 16);
      v49 = *(v5 + 24);
      v3 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v5 = sub_23B2D75E4((v49 > 1), v50 + 1, 1, v5);
      }

      *(v5 + 16) = v3;
      sub_23B2EA920(v17, v5 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v50, type metadata accessor for RecognizedItem);
      ++v6;
      v51 = v8 == v1;
      v8 = v216;
      if (v51)
      {
        goto LABEL_22;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_22:

  v52 = v209;
  *(v209 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems) = v5;
  v53 = v52;

  v3 = 0x27E12E000uLL;
  if (*(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems))
  {
    v220[0] = *(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems);

    sub_23B2E7308(v54);
    v206 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems;
    *(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) = v220[0];

    v55 = [v208 addedItems];
    v1 = sub_23B2EAF60();

    if (v1 >> 62)
    {
      v17 = sub_23B2EB160();
      if (v17)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_25:
        v5 = 0;
        v210 = v1 & 0xFFFFFFFFFFFFFF8;
        v211 = v1 & 0xC000000000000001;
        v215 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v211)
          {
            v56 = MEMORY[0x23EE98EC0](v5, v1);
            v57 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v5 >= *(v210 + 16))
            {
              goto LABEL_46;
            }

            v56 = *(v1 + 8 * v5 + 32);
            v57 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
              goto LABEL_45;
            }
          }

          v58 = v56;
          v59 = [v58 uuid];
          v60 = v214;
          sub_23B2EADB0();

          v61 = [v58 layerQuad];
          [v61 topLeft];
          v63 = v62;
          v65 = v64;
          [v61 topRight];
          v67 = v66;
          v69 = v68;
          [v61 bottomRight];
          v71 = v70;
          v73 = v72;
          [v61 bottomLeft];
          v75 = v74;
          v77 = v76;
          v19 = type metadata accessor for RecognizedItem.Barcode(0);
          v78 = (v60 + *(v19 + 20));
          *v78 = v63;
          v78[1] = v65;
          v78[2] = v67;
          v78[3] = v69;
          v78[4] = v71;
          v78[5] = v73;
          v78[6] = v75;
          v78[7] = v77;
          v78[8] = v61;
          *(v60 + *(v19 + 28)) = [v58 observation];
          v79 = [v58 payloadStringValue];
          if (v79)
          {
            v80 = v79;
            v81 = sub_23B2EAF10();
            v83 = v82;
          }

          else
          {

            v81 = 0;
            v83 = 0;
          }

          v84 = (v214 + *(v19 + 24));
          *v84 = v81;
          v84[1] = v83;
          swift_storeEnumTagMultiPayload();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v85 = v215;
          }

          else
          {
            v85 = sub_23B2D75E4(0, v215[2] + 1, 1, v215);
          }

          v6 = v85[2];
          v86 = v85[3];
          v3 = v6 + 1;
          if (v6 >= v86 >> 1)
          {
            v85 = sub_23B2D75E4((v86 > 1), v6 + 1, 1, v85);
          }

          v85[2] = v3;
          v87 = (*(v217 + 80) + 32) & ~*(v217 + 80);
          v215 = v85;
          sub_23B2EA920(v214, v85 + v87 + *(v217 + 72) * v6, type metadata accessor for RecognizedItem);
          ++v5;
          if (v57 == v17)
          {
            goto LABEL_50;
          }
        }
      }
    }

    v215 = MEMORY[0x277D84F90];
LABEL_50:

    v88 = [v208 updatedItems];
    v89 = sub_23B2EAF60();

    if (v89 >> 62)
    {
      goto LABEL_69;
    }

    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
LABEL_52:
      v91 = 0;
      v214 = v89 & 0xC000000000000001;
      v211 = v89 & 0xFFFFFFFFFFFFFF8;
      v92 = MEMORY[0x277D84F90];
      v210 = v89;
      while (1)
      {
        if (v214)
        {
          v93 = MEMORY[0x23EE98EC0](v91, v89);
          v94 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v91 >= *(v211 + 16))
          {
            goto LABEL_68;
          }

          v93 = *(v89 + 8 * v91 + 32);
          v94 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v90 = sub_23B2EB160();
            if (!v90)
            {
              break;
            }

            goto LABEL_52;
          }
        }

        v95 = v93;
        v96 = [v95 uuid];
        v97 = v213;
        sub_23B2EADB0();

        v98 = [v95 layerQuad];
        [v98 topLeft];
        v100 = v99;
        v102 = v101;
        [v98 topRight];
        v104 = v103;
        v106 = v105;
        [v98 bottomRight];
        v108 = v107;
        v110 = v109;
        [v98 bottomLeft];
        v112 = v111;
        v114 = v113;
        v115 = type metadata accessor for RecognizedItem.Barcode(0);
        v116 = (v97 + v115[5]);
        *v116 = v100;
        v116[1] = v102;
        v116[2] = v104;
        v116[3] = v106;
        v116[4] = v108;
        v116[5] = v110;
        v116[6] = v112;
        v116[7] = v114;
        v116[8] = v98;
        *(v97 + v115[7]) = [v95 observation];
        v117 = [v95 payloadStringValue];
        if (v117)
        {
          v118 = v90;
          v119 = v92;
          v120 = v117;
          v121 = sub_23B2EAF10();
          v123 = v122;

          v92 = v119;
          v90 = v118;
        }

        else
        {

          v121 = 0;
          v123 = 0;
        }

        v124 = (v213 + v115[6]);
        *v124 = v121;
        v124[1] = v123;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_23B2D75E4(0, v92[2] + 1, 1, v92);
        }

        v89 = v210;
        v126 = v92[2];
        v125 = v92[3];
        if (v126 >= v125 >> 1)
        {
          v92 = sub_23B2D75E4((v125 > 1), v126 + 1, 1, v92);
        }

        v92[2] = v126 + 1;
        sub_23B2EA920(v213, v92 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v126, type metadata accessor for RecognizedItem);
        ++v91;
        if (v94 == v90)
        {
          goto LABEL_71;
        }
      }
    }

    v92 = MEMORY[0x277D84F90];
LABEL_71:

    v127 = [v208 removedItems];
    v128 = sub_23B2EAF60();

    if (v128 >> 62)
    {
      goto LABEL_90;
    }

    v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v214 = v92;
    if (v129)
    {
LABEL_73:
      v130 = 0;
      v213 = v128 & 0xC000000000000001;
      v211 = v128 & 0xFFFFFFFFFFFFFF8;
      v131 = MEMORY[0x277D84F90];
      v210 = v129;
      while (1)
      {
        if (v213)
        {
          v132 = MEMORY[0x23EE98EC0](v130, v128);
          v133 = v130 + 1;
          if (__OFADD__(v130, 1))
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v130 >= *(v211 + 16))
          {
            goto LABEL_89;
          }

          v132 = *(v128 + 8 * v130 + 32);
          v133 = v130 + 1;
          if (__OFADD__(v130, 1))
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            v129 = sub_23B2EB160();
            v214 = v92;
            if (!v129)
            {
              break;
            }

            goto LABEL_73;
          }
        }

        v134 = v128;
        v135 = v131;
        v136 = v132;
        v137 = [v136 uuid];
        v138 = v212;
        sub_23B2EADB0();

        v139 = [v136 layerQuad];
        [v139 topLeft];
        v141 = v140;
        v143 = v142;
        [v139 topRight];
        v145 = v144;
        v147 = v146;
        [v139 bottomRight];
        v149 = v148;
        v151 = v150;
        [v139 bottomLeft];
        v153 = v152;
        v155 = v154;
        v156 = type metadata accessor for RecognizedItem.Barcode(0);
        v157 = (v138 + v156[5]);
        *v157 = v141;
        v157[1] = v143;
        v157[2] = v145;
        v157[3] = v147;
        v157[4] = v149;
        v157[5] = v151;
        v157[6] = v153;
        v157[7] = v155;
        v157[8] = v139;
        *(v138 + v156[7]) = [v136 observation];
        v158 = [v136 payloadStringValue];
        if (v158)
        {
          v159 = v158;
          v160 = sub_23B2EAF10();
          v162 = v161;
        }

        else
        {

          v160 = 0;
          v162 = 0;
        }

        v131 = v135;
        v163 = (v212 + v156[6]);
        *v163 = v160;
        v163[1] = v162;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_23B2D75E4(0, v135[2] + 1, 1, v135);
        }

        v92 = v214;
        v128 = v134;
        v164 = v210;
        v166 = v131[2];
        v165 = v131[3];
        v8 = v216;
        if (v166 >= v165 >> 1)
        {
          v131 = sub_23B2D75E4((v165 > 1), v166 + 1, 1, v131);
        }

        v131[2] = v166 + 1;
        sub_23B2EA920(v212, v131 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v166, type metadata accessor for RecognizedItem);
        ++v130;
        if (v133 == v164)
        {
          goto LABEL_92;
        }
      }
    }

    v131 = MEMORY[0x277D84F90];
LABEL_92:
    v213 = v131;

    v53 = v209;
    v167 = v209 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = 0x27E12E000;
    v169 = v206;
    if (Strong)
    {
      v170 = *(v167 + 8);
      v171 = v215;
      if (v215[2])
      {
        ObjectType = swift_getObjectType();
        v173 = v209;
        v174 = *(v209 + v169);
        v175 = v170[3];

        v176 = v173;
        v92 = v214;
        v175(v176, v171, v174, ObjectType, v170);
        v169 = v206;
      }

      if (v92[2])
      {
        v177 = swift_getObjectType();
        v178 = v209;
        v179 = *(v209 + v169);
        v180 = v170[4];

        v181 = v178;
        v92 = v214;
        v180(v181, v214, v179, v177, v170);
        v169 = v206;
      }

      v182 = v213;
      if (*(v213 + 16))
      {
        v183 = swift_getObjectType();
        v184 = v209;
        v185 = *(v209 + v169);
        v186 = v170[5];

        v187 = v184;
        v188 = v183;
        v53 = v184;
        v92 = v214;
        v186(v187, v182, v185, v188, v170);
        v169 = v206;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v53 = v209;
      }
    }

    v189 = *(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
    v190 = *(v189 + 16);
    if (v190)
    {
      v191 = *(v202 + 16);
      v192 = v189 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
      v217 = *(v202 + 72);
      v218 = v191;
      v193 = (v202 + 8);
      v194 = (v201 + 8);
      v212 = v189;

      v195 = v205;
      v196 = v204;
      v197 = v203;
      do
      {
        v218(v8, v192, v197);
        v219 = *(v209 + v169);

        sub_23B2EAFE0();
        v8 = v216;
        (*v193)(v216, v197);
        (*v194)(v196, v195);
        v192 += v217;
        --v190;
      }

      while (v190);

      v53 = v209;
      v3 = 0x27E12E000uLL;
      v92 = v214;
    }

    if (*(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled) == 1)
    {
      sub_23B2E3E7C(v215, v92, v213);
    }
  }

  else
  {
    sub_23B2E25DC();
  }

  if (*(*(v53 + *(v3 + 1352)) + 16))
  {
    [*(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) hideGuidance];
    v198 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
    [*(v53 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer) invalidate];
    v199 = *(v53 + v198);
    *(v53 + v198) = 0;
  }

  else
  {
    sub_23B2E590C();
  }
}

void *sub_23B2E25DC()
{
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E728, &qword_23B2ECEB0);
  v146 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v2 = &v143 - v1;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v149 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = &v143 - v3;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E730, &qword_23B2ECEB8);
  v4 = MEMORY[0x28223BE20](v159);
  v158 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v157 = &v143 - v6;
  *&v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E738, &qword_23B2ECEC0);
  MEMORY[0x28223BE20](v155);
  v161 = &v143 - v7;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E740, &qword_23B2ECEC8);
  v150 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v152 = &v143 - v8;
  v165 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v165);
  v167 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for RecognizedItem.Text(0);
  MEMORY[0x28223BE20](v164);
  v166 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecognizedItem(0);
  v168 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v143 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v144 = &v143 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v160 = &v143 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v143 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v143 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v143 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v143 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E748, &qword_23B2ECED0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v30);
  v35 = &v143 - v34;
  v36 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor;
  if (!*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor) && !*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor) && !*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor))
  {
    return result;
  }

  v163 = v32;
  v145 = v2;
  aBlock = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems);

  v173 = v0;
  sub_23B2E7308(v37);
  v38 = aBlock;
  v39 = *(v173 + v36);
  v40 = aBlock;
  if (v39)
  {
    v41 = v39;
    v42 = [v41 configuration];
    [v42 comparisonPoint];
    v44 = v43;
    v46 = v45;

    v38 = v40;
  }

  else
  {
    result = *(v173 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (!result)
    {
      result = *(v173 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor);
      if (!result)
      {
        goto LABEL_58;
      }
    }

    v42 = [result configuration];
    [v42 comparisonPoint];
    v44 = v47;
    v46 = v48;
  }

  v49 = *(v38 + 16);
  v172 = v11;
  v151 = v35;
  if (v49)
  {
    v50 = v38 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    result = sub_23B2D17E8(v50, v28);
    if (v49 != 1)
    {
      v170 = v166 + 64;
      v169 = v167 + 64;
      v93 = 1;
      while (v93 < *(v38 + 16))
      {
        sub_23B2D17E8(v50 + *(v168 + 72) * v93, v26);
        sub_23B2D17E8(v26, v23);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v94 = v167;
          sub_23B2EA920(v23, v167, type metadata accessor for RecognizedItem.Barcode);
          v95 = *(v169 + *(v165 + 20));
          v96 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v94 = v166;
          sub_23B2EA920(v23, v166, type metadata accessor for RecognizedItem.Text);
          v95 = *(v170 + *(v164 + 20));
          v96 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v94, v96);
        [v95 vertexCentroid];
        v98 = v97;
        v100 = v99;

        v101 = MEMORY[0x23EE98FD0](v44, v46, v98, v100);
        sub_23B2D17E8(v28, v20);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v102 = v167;
          sub_23B2EA920(v20, v167, type metadata accessor for RecognizedItem.Barcode);
          v103 = *(v169 + *(v165 + 20));
          v104 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v102 = v166;
          sub_23B2EA920(v20, v166, type metadata accessor for RecognizedItem.Text);
          v103 = *(v170 + *(v164 + 20));
          v104 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v102, v104);
        [v103 vertexCentroid];
        v106 = v105;
        v108 = v107;

        if (v101 >= MEMORY[0x23EE98FD0](v44, v46, v106, v108))
        {
          result = sub_23B2EA878(v26, type metadata accessor for RecognizedItem);
        }

        else
        {
          sub_23B2EA878(v28, type metadata accessor for RecognizedItem);
          result = sub_23B2EA920(v26, v28, type metadata accessor for RecognizedItem);
        }

        v11 = v172;
        v38 = v40;
        if (v49 == ++v93)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

LABEL_11:

    v35 = v151;
    sub_23B2EA920(v28, v151, type metadata accessor for RecognizedItem);
    v51 = v168;
    (*(v168 + 56))(v35, 0, 1, v11);
  }

  else
  {

    v51 = v168;
    (*(v168 + 56))(v35, 1, 1, v11);
  }

  v52 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems;
  v53 = *(v173 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems);
  v54 = *(v51 + 48);
  if (v54(v35, 1, v11) == 1)
  {
    v55 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
  v56 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23B2EC850;
  v57 = v163;
  sub_23B2EAB4C(v35, v163, &qword_27E12E748, &qword_23B2ECED0);
  result = (v54)(v57, 1, v11);
  if (result == 1)
  {
    goto LABEL_57;
  }

  sub_23B2EA920(v57, v55 + v56, type metadata accessor for RecognizedItem);
LABEL_17:
  v58 = v173;
  v163 = v52;
  *(v173 + v52) = v55;
  v59 = v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    v170 = *(v59 + 8);
    v174 = v53;
    aBlock = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E498, &qword_23B2EC878);
    sub_23B2EAA34(&qword_27E12E750, &qword_27E12E498, &qword_23B2EC878, MEMORY[0x277D83958]);
    sub_23B2EAEC0();

    v62 = sub_23B2EAA34(&qword_27E12E758, &qword_27E12E740, &qword_23B2ECEC8, MEMORY[0x277D84490]);
    v63 = v162;
    sub_23B2EB010();
    sub_23B2EB020();
    if (aBlock != v174 || (v64 = *&v163[v173], !*(v64 + 16)))
    {
      v68 = v161;
      (*(v150 + 16))(v161, v152, v63);
      v69 = *(v155 + 36);
      sub_23B2EB010();
      sub_23B2EB020();
      v70 = v160;
      if (*(v68 + v69) != aBlock)
      {
        v154 = v170 + 24;
        v153 = v170 + 40;
        v155 = xmmword_23B2EC850;
        v169 = v61;
        v156 = v62;
        do
        {
          v110 = sub_23B2EB040();
          v111 = v157;
          sub_23B2EAB4C(v112, v157, &qword_27E12E730, &qword_23B2ECEB8);
          v110(&aBlock, 0);
          sub_23B2EB030();
          v113 = v158;
          sub_23B2EAA7C(v111, v158);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E760, &qword_23B2ECED8);
          sub_23B2EA920(v113 + *(v115 + 48), v70, type metadata accessor for RecognizedItem);
          ObjectType = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
          v117 = v51;
          v118 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v119 = swift_allocObject();
          *(v119 + 16) = v155;
          sub_23B2D17E8(v70, v119 + v118);
          v120 = v173;
          v121 = *&v163[v173];
          v122 = v170;
          if (EnumCaseMultiPayload == 1)
          {
            v109 = *(v170 + 40);
          }

          else
          {
            v109 = *(v170 + 24);
          }

          v109(v120, v119, v121, ObjectType, v122);

          v70 = v160;
          sub_23B2EA878(v160, type metadata accessor for RecognizedItem);
          v68 = v161;
          v63 = v162;
          sub_23B2EB020();
          v51 = v117;
        }

        while (*(v68 + v69) != aBlock);
      }

      swift_unknownObjectRelease();
      sub_23B2EAAEC(v68, &qword_27E12E738, &qword_23B2ECEC0);
      (*(v150 + 8))(v152, v63);
      v71 = v148;
      v72 = v149;
      goto LABEL_26;
    }

    v65 = swift_getObjectType();
    v66 = v170;
    v67 = *(v170 + 32);

    v67(v173, v64, v64, v65, v66);
    swift_unknownObjectRelease();

    (*(v150 + 8))(v152, v63);
  }

  else
  {
  }

  v71 = v148;
  v72 = v149;
LABEL_26:
  v73 = v173;
  v74 = *(v173 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
  v75 = *(v74 + 16);
  if (v75)
  {
    v77 = *(v72 + 16);
    v76 = v72 + 16;
    v78 = v74 + ((*(v76 + 64) + 32) & ~*(v76 + 64));
    v169 = *(v76 + 56);
    v170 = v77;
    v79 = (v146 + 8);
    v162 = v74;

    v80 = v71;
    v81 = v145;
    v82 = v147;
    v83 = v163;
    do
    {
      (v170)(v82, v78, v80);
      aBlock = *(v73 + v83);

      sub_23B2EAFE0();
      v73 = v173;
      (*v79)(v81, v171);
      (*(v76 - 8))(v82, v80);
      v78 += v169;
      --v75;
    }

    while (v75);
  }

  if (*(v73 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled) == 1)
  {
    v84 = *(v73 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView);
    if (v84)
    {
      v85 = *&v163[v73];
      if (*(v85 + 16))
      {
        v86 = v144;
        sub_23B2D17E8(v85 + ((*(v168 + 80) + 32) & ~*(v168 + 80)), v144);
        v87 = v143;
        sub_23B2D17E8(v86, v143);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = v167;
          sub_23B2EA920(v87, v167, type metadata accessor for RecognizedItem.Barcode);
          v89 = *(v88 + *(v165 + 20) + 64);
          v90 = v84;
          v91 = v89;
          v92 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v88 = v166;
          sub_23B2EA920(v87, v166, type metadata accessor for RecognizedItem.Text);
          v127 = *(v88 + *(v164 + 20) + 64);
          v128 = v84;
          v91 = v127;
          v92 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v88, v92);
        [v91 minimumBoundingRectWithoutRotation];
        v130 = v129;
        v132 = v131;
        v134 = v133;
        v136 = v135;
        [v91 averagedAngleFromBottomAndTopEdges];
        v138 = v137;
        v139 = objc_opt_self();
        v140 = swift_allocObject();
        v140[2] = v84;
        v140[3] = v130;
        v140[4] = v132;
        v140[5] = v134;
        v140[6] = v136;
        v140[7] = v138;
        v179 = sub_23B2EA988;
        v180 = v140;
        aBlock = MEMORY[0x277D85DD0];
        v176 = 1107296256;
        v177 = sub_23B2EACDC;
        v178 = &block_descriptor_192;
        v141 = _Block_copy(&aBlock);
        v142 = v84;

        [v139 animate_];
        _Block_release(v141);

        sub_23B2EA878(v86, type metadata accessor for RecognizedItem);
      }

      else
      {
        v123 = objc_opt_self();
        v124 = swift_allocObject();
        *(v124 + 16) = v84;
        v179 = sub_23B2EA9E4;
        v180 = v124;
        aBlock = MEMORY[0x277D85DD0];
        v176 = 1107296256;
        v177 = sub_23B2EACDC;
        v178 = &block_descriptor_198;
        v125 = _Block_copy(&aBlock);
        v126 = v84;

        [v123 animate_];

        _Block_release(v125);
      }
    }
  }

  return sub_23B2EAAEC(v151, &qword_27E12E748, &qword_23B2ECED0);
}

uint64_t sub_23B2E3A84(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecognizedItem.Text(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecognizedItem(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = sub_23B2EADC0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_23B2D17E8(a1, v14);
  v22 = (v16 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2EA920(v14, v5, type metadata accessor for RecognizedItem.Barcode);
    v23 = *v22;
    (*v22)(v21, v5, v15);
    v24 = type metadata accessor for RecognizedItem.Barcode;
    v25 = v5;
  }

  else
  {
    sub_23B2EA920(v14, v8, type metadata accessor for RecognizedItem.Text);
    v23 = *v22;
    (*v22)(v21, v8, v15);
    v24 = type metadata accessor for RecognizedItem.Text;
    v25 = v8;
  }

  sub_23B2EA878(v25, v24);
  sub_23B2D17E8(v32, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2EA920(v12, v5, type metadata accessor for RecognizedItem.Barcode);
    v23(v19, v5, v15);
    v26 = type metadata accessor for RecognizedItem.Barcode;
    v27 = v5;
  }

  else
  {
    sub_23B2EA920(v12, v8, type metadata accessor for RecognizedItem.Text);
    v23(v19, v8, v15);
    v26 = type metadata accessor for RecognizedItem.Text;
    v27 = v8;
  }

  sub_23B2EA878(v27, v26);
  v28 = sub_23B2EADA0();
  v29 = *(v16 + 8);
  v29(v19, v15);
  v29(v21, v15);
  return v28 & 1;
}

uint64_t sub_23B2E3E38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23B2E3E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v138 = a2;
  v7 = sub_23B2EADC0();
  v149 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v136 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v163 = &v136 - v15;
  MEMORY[0x28223BE20](v14);
  v166 = &v136 - v16;
  v147 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v147);
  v162 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for RecognizedItem.Text(0);
  MEMORY[0x28223BE20](v146);
  v161 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecognizedItem(0);
  v139 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v140 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v156 = &v136 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v136 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v141 = &v136 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v148 = &v136 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v158 = &v136 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v155 = &v136 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v154 = &v136 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v136 - v37;
  v39 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID;
  result = swift_beginAccess();
  v165 = v39;
  if (!*&v4[v39])
  {
    return result;
  }

  v137 = a3;
  v157 = v26;
  v142 = v13;
  v150 = v10;
  v41 = *(a1 + 16);
  v153 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  result = swift_beginAccess();
  v145 = v161 + 64;
  v144 = v162 + 64;
  v164 = v7;
  v160 = v19;
  v42 = v165;
  v43 = v163;
  if (!v41)
  {
LABEL_23:
    v83 = *(v138 + 16);
    v84 = v148;
    v85 = v158;
    if (v83)
    {
      v86 = v138 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v87 = (v149 + 16);
      v88 = (v149 + 8);
      v166 = *(v139 + 72);
      do
      {
        sub_23B2D17E8(v86, v85);
        sub_23B2D17E8(v85, v84);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v89 = v162;
          sub_23B2EA920(v84, v162, type metadata accessor for RecognizedItem.Barcode);
          (*v87)(v43, v89, v7);
          v90 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v89 = v161;
          sub_23B2EA920(v84, v161, type metadata accessor for RecognizedItem.Text);
          (*v87)(v43, v89, v7);
          v90 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v89, v90);
        v91 = *&v4[v165];
        if (!v91)
        {
          goto LABEL_62;
        }

        if (*(v91 + 16))
        {

          v92 = v163;
          v93 = sub_23B2E7434(v163);
          if (v94)
          {
            v95 = *v88;
            v96 = *(*(v91 + 56) + 8 * v93);
            v95(v92, v7);

            v97 = v141;
            sub_23B2D17E8(v158, v141);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v98 = v162;
              sub_23B2EA920(v97, v162, type metadata accessor for RecognizedItem.Barcode);
              v99 = *(v144 + *(v147 + 20));
              v100 = type metadata accessor for RecognizedItem.Barcode;
            }

            else
            {
              v98 = v161;
              sub_23B2EA920(v97, v161, type metadata accessor for RecognizedItem.Text);
              v99 = *(v145 + *(v146 + 20));
              v100 = type metadata accessor for RecognizedItem.Text;
            }

            sub_23B2EA878(v98, v100);
            v84 = v148;
            [v96 animateToQuad_];

            v43 = v163;
            v7 = v164;
            goto LABEL_27;
          }

          v84 = v148;
        }

        v43 = v163;
        (*v88)(v163, v7);
LABEL_27:
        v85 = v158;
        result = sub_23B2EA878(v158, type metadata accessor for RecognizedItem);
        v86 += v166;
        --v83;
      }

      while (v83);
    }

    v101 = *(v137 + 16);
    v102 = v142;
    v103 = v157;
    if (!v101)
    {
      return result;
    }

    v104 = v137 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v105 = (v149 + 16);
    v106 = (v149 + 8);
    v166 = *(v139 + 72);
    v159 = (v149 + 16);
    v143 = v4;
    while (1)
    {
      sub_23B2D17E8(v104, v103);
      v107 = v103;
      v108 = v156;
      sub_23B2D17E8(v107, v156);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v109 = v108;
        v110 = v162;
        sub_23B2EA920(v109, v162, type metadata accessor for RecognizedItem.Barcode);
        v111 = *v105;
        (*v105)(v102, v110, v7);
        v112 = type metadata accessor for RecognizedItem.Barcode;
      }

      else
      {
        v113 = v108;
        v110 = v161;
        sub_23B2EA920(v113, v161, type metadata accessor for RecognizedItem.Text);
        v111 = *v105;
        (*v105)(v102, v110, v7);
        v112 = type metadata accessor for RecognizedItem.Text;
      }

      sub_23B2EA878(v110, v112);
      v114 = *&v4[v165];
      if (!v114)
      {
        goto LABEL_63;
      }

      if (!*(v114 + 16))
      {
        goto LABEL_41;
      }

      v115 = sub_23B2E7434(v102);
      if ((v116 & 1) == 0)
      {
        break;
      }

      v117 = v106;
      v118 = *v106;
      v119 = *(*(v114 + 56) + 8 * v115);
      v164 = v118;
      v118(v102, v7);
      v106 = v117;

      v163 = v119;
      [v119 removeFromSuperview];
      v120 = v140;
      sub_23B2D17E8(v157, v140);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v121 = v120;
        v122 = v162;
        sub_23B2EA920(v121, v162, type metadata accessor for RecognizedItem.Barcode);
        v105 = v159;
        v111(v150, v122, v7);
        v123 = type metadata accessor for RecognizedItem.Barcode;
      }

      else
      {
        v124 = v120;
        v122 = v161;
        sub_23B2EA920(v124, v161, type metadata accessor for RecognizedItem.Text);
        v105 = v159;
        v111(v150, v122, v7);
        v123 = type metadata accessor for RecognizedItem.Text;
      }

      sub_23B2EA878(v122, v123);
      v125 = v165;
      v126 = v143;
      swift_beginAccess();
      if (!*&v126[v125])
      {
        goto LABEL_66;
      }

      v127 = v150;
      v128 = sub_23B2E7434(v150);
      if (v129)
      {
        v130 = v128;
        v131 = v165;
        v132 = v143;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = *&v132[v131];
        v167 = v134;
        *&v132[v131] = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23B2E7D88();
          v134 = v167;
        }

        v135 = v164;
        v164((*(v134 + 48) + *(v149 + 72) * v130), v7);

        sub_23B2E7A68(v130, v134);
        v135(v150, v7);
        v106 = v117;
        *&v132[v131] = v134;
        v102 = v142;
        v4 = v132;
      }

      else
      {
        v164(v127, v7);
        v102 = v142;
        v4 = v143;
      }

      swift_endAccess();

LABEL_42:
      v103 = v157;
      result = sub_23B2EA878(v157, type metadata accessor for RecognizedItem);
      v104 += v166;
      if (!--v101)
      {
        return result;
      }
    }

LABEL_41:
    (*v106)(v102, v7);
    goto LABEL_42;
  }

  v159 = (v149 + 16);
  v152 = (v149 + 8);
  v44 = a1 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v151 = *(v139 + 72);
  while (1)
  {
    sub_23B2D17E8(v44, v38);
    v47 = [v4 view];
    if (!v47)
    {
      break;
    }

    v48 = v47;
    [v47 bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [objc_allocWithZone(MEMORY[0x277D78580]) initWithFrame_];
    v58 = v154;
    sub_23B2D17E8(v38, v154);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v162;
      sub_23B2EA920(v58, v162, type metadata accessor for RecognizedItem.Barcode);
      v60 = *(v144 + *(v147 + 20));
      v61 = type metadata accessor for RecognizedItem.Barcode;
    }

    else
    {
      v59 = v161;
      sub_23B2EA920(v58, v161, type metadata accessor for RecognizedItem.Text);
      v60 = *(v145 + *(v146 + 20));
      v61 = type metadata accessor for RecognizedItem.Text;
    }

    sub_23B2EA878(v59, v61);
    [v57 setQuad_];

    v62 = v155;
    sub_23B2D17E8(v38, v155);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = v62;
      v64 = v162;
      sub_23B2EA920(v63, v162, type metadata accessor for RecognizedItem.Barcode);
      v65 = *v159;
      (*v159)(v166, v64, v164);
      v66 = type metadata accessor for RecognizedItem.Barcode;
    }

    else
    {
      v67 = v62;
      v64 = v161;
      sub_23B2EA920(v67, v161, type metadata accessor for RecognizedItem.Text);
      v65 = *v159;
      (*v159)(v166, v64, v164);
      v66 = type metadata accessor for RecognizedItem.Text;
    }

    sub_23B2EA878(v64, v66);
    swift_beginAccess();
    if (!*&v4[v42])
    {
      goto LABEL_64;
    }

    v68 = v57;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v167 = *&v4[v42];
    v70 = v167;
    *&v4[v42] = 0x8000000000000000;
    v72 = sub_23B2E7434(v166);
    v73 = v70[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      break;
    }

    v76 = v71;
    if (v70[3] >= v75)
    {
      if ((v69 & 1) == 0)
      {
        sub_23B2E7D88();
      }
    }

    else
    {
      sub_23B2E768C(v75, v69);
      v77 = sub_23B2E7434(v166);
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_67;
      }

      v72 = v77;
    }

    v79 = v167;
    if (v76)
    {
      v45 = v167[7];
      v46 = *(v45 + 8 * v72);
      *(v45 + 8 * v72) = v68;
    }

    else
    {
      v167[(v72 >> 6) + 8] |= 1 << v72;
      v65(v79[6] + *(v149 + 72) * v72, v166, v164);
      *(v79[7] + 8 * v72) = v68;
      v80 = v79[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_61;
      }

      v79[2] = v82;
    }

    v7 = v164;
    (*v152)(v166, v164);
    v42 = v165;
    *&v4[v165] = v79;
    swift_endAccess();
    [*&v4[v153] addSubview_];

    result = sub_23B2EA878(v38, type metadata accessor for RecognizedItem);
    v44 += v151;
    --v41;
    v43 = v163;
    if (!v41)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_23B2EB1D0();
  __break(1u);
  return result;
}

void sub_23B2E4E74()
{
  v1 = [*&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] previewView];
  [v0 setView_];

  v2 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  [*&v0[v2] setAutoresizingMask_];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  [v14 addSubview_];

  v16 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame_];
  [v16 setAutoresizingMask_];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  [v27 addSubview_];

  if (v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] != 1)
  {
    goto LABEL_8;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D78568]) init];
  v30 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView];
  *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = v29;
  v31 = v29;

  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v33 = v32;
  [v32 addSubview_];

LABEL_8:
  if (v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] == 1)
  {
    if (v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] == 1)
    {
      v34 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID;
      swift_beginAccess();
      *&v0[v34] = MEMORY[0x277D84F98];
    }

    else
    {
      [*&v0[v2] bounds];
      v39 = [objc_allocWithZone(MEMORY[0x277D78570]) initWithFrame_];
      [v39 setAutoresizingMask_];
      [*&v0[v2] addSubview_];
      [v39 setSpotlightBlurRadius_];
      [v39 setInvertedShadowAlpha_];
      v40 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView];
      *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = v39;
    }
  }
}

void sub_23B2E5254()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E580, &unk_23B2EC880);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23B2EC860;
    v4 = v2;
    v5 = [v4 widthAnchor];
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 widthAnchor];

      v9 = [v5 constraintLessThanOrEqualToAnchor:v8 multiplier:0.666666667];
      *(v3 + 32) = v9;
      v10 = [v4 centerXAnchor];
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 centerXAnchor];

        v14 = [v10 constraintEqualToAnchor_];
        *(v3 + 40) = v14;
        v15 = [v4 topAnchor];

        v16 = [v1 view];
        if (v16)
        {
          v17 = v16;
          v18 = objc_opt_self();
          v19 = [v17 safeAreaLayoutGuide];

          v20 = [v19 topAnchor];
          v21 = [v15 constraintEqualToAnchor:v20 constant:20.0];

          *(v3 + 48) = v21;
          sub_23B2D2208(0, &qword_27E12E588, 0x277CCAAD0);
          v22 = sub_23B2EAF50();

          [v18 activateConstraints_];

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_23B2E5554(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = objc_opt_self();
  if ([v3 isCameraRestricted])
  {
    v4 = &v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v9 = 1;
    goto LABEL_8;
  }

  if ([v3 isSupported])
  {
    return [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] startRunning];
  }

  v8 = &v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v9 = 0;
LABEL_8:
    (*(v6 + 48))(v1, &v9, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23B2E56F8(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] hideGuidance];
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] invalidate];
  v4 = *&v1[v3];
  *&v1[v3] = 0;
}

id sub_23B2E584C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v4, sel_removeFromParentViewController);
  return [*&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
}

void sub_23B2E590C()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
  if (!*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer))
  {
    if (*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView))
    {
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_23B2EABB4;
      v7[5] = v3;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_23B2EAD44;
      v7[3] = &block_descriptor_204;
      v4 = _Block_copy(v7);

      v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
      _Block_release(v4);
      v6 = *(v0 + v1);
      *(v0 + v1) = v5;
    }
  }
}

uint64_t sub_23B2E5A34(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B2EAE80();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B2EAEA0();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v8 = sub_23B2EB080();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_23B2EABBC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_208;
  v11 = _Block_copy(aBlock);

  sub_23B2EAE90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  MEMORY[0x23EE98E10](0, v7, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

void sub_23B2E5D50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_23B2D2208(0, &qword_27E12E708, 0x277D78578);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_23B2EAD70();

    v5 = *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView];
    if (v5)
    {
      v6 = v5;
      v7 = sub_23B2EAEE0();

      [v6 showGuidanceWithText_];
    }

    else
    {
    }

    v8 = *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer];
    *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  }
}

void sub_23B2E5F28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23B2E5F90(void *a1)
{
  v2 = v1;
  v63 = type metadata accessor for RecognizedItem.Barcode(0);
  MEMORY[0x28223BE20](v63);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RecognizedItem.Text(0);
  MEMORY[0x28223BE20](v62);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecognizedItem(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = [v2 view];
  [a1 locationInView_];
  v17 = v16;
  v19 = v18;

  v20 = v2;
  [*&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] setInterestPoint_];
  v21 = *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems];
  v22 = *(v21 + 16);
  if (v22)
  {
    v57 = *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems];
    v58 = v2;
    v23 = &v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
    v24 = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

    swift_beginAccess();
    v25 = v5;
    v26 = *(v9 + 72);
    v60 = v7 + 64;
    v61 = v25;
    v59 = v25 + 64;
    do
    {
      sub_23B2D17E8(v24, v14);
      sub_23B2D17E8(v14, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = v61;
        sub_23B2EA920(v12, v61, type metadata accessor for RecognizedItem.Barcode);
        v28 = *(v59 + *(v63 + 20));
        v29 = type metadata accessor for RecognizedItem.Barcode;
        v30 = v27;
      }

      else
      {
        sub_23B2EA920(v12, v7, type metadata accessor for RecognizedItem.Text);
        v28 = *&v60[*(v62 + 20)];
        v29 = type metadata accessor for RecognizedItem.Text;
        v30 = v7;
      }

      sub_23B2EA878(v30, v29);
      v31 = [v28 containsPoint_];

      if (v31 && swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        (*(v32 + 16))(v58, v14, ObjectType, v32);
        swift_unknownObjectRelease();
      }

      sub_23B2EA878(v14, type metadata accessor for RecognizedItem);
      v24 += v26;
      --v22;
    }

    while (v22);

    v20 = v58;
  }

  if ((v20[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] & 1) == 0)
  {
    v34 = [v20 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v44 = MEMORY[0x23EE98FE0](v17, v19, v37, v39, v41, v43);
      v45 = MEMORY[0x23EE98FF0](v44);
      v47 = v46;
      v48 = *&v20[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor];
      if (v48)
      {
        v49 = v48;
        v50 = [v49 configuration];
        [v50 setComparisonPoint_];
        [v49 setConfiguration_];
      }

      v51 = *&v20[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor];
      if (v51)
      {
        v52 = v51;
        v53 = [v52 configuration];
        [v53 setComparisonPoint_];
        [v52 setConfiguration_];
      }

      v54 = *&v20[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor];
      if (v54)
      {
        v55 = v54;
        v56 = [v55 configuration];
        [v56 setComparisonPoint_];
        [v55 setConfiguration_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_23B2E6560(void *a1)
{
  result = [a1 state];
  if (result == 2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom);
    [a1 scale];
    v6 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
    v8 = v5 * v7;

    return [v6 setZoomFactor_];
  }

  else if (result == 1)
  {
    result = [*(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) zoomFactor];
    *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom) = v4;
  }

  return result;
}

uint64_t sub_23B2E6684()
{
  v1[3] = v0;
  v1[4] = sub_23B2EAFD0();
  v1[5] = sub_23B2EAFC0();
  v3 = sub_23B2EAF90();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_23B2E6720, v3, v2);
}

uint64_t sub_23B2E6720()
{
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v1 = sub_23B2EAE70();
  __swift_project_value_buffer(v1, qword_27E12E420);
  v2 = sub_23B2EAE50();
  v3 = sub_23B2EB070();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B2CF000, v2, v3, "Starting capturePhoto()", v4, 2u);
    MEMORY[0x23EE99510](v4, -1, -1);
  }

  v5 = v0[3];

  [*(v5 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) capturePhoto];
  v6 = sub_23B2EAFC0();
  v0[8] = v6;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *(v7 + 16) = v5;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_23B2D2208(0, &qword_27E12E590, 0x277D755B8);
  *v8 = v0;
  v8[1] = sub_23B2E6910;
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v6, v10, 0x5065727574706163, 0xEE0029286F746F68, sub_23B2E90A0, v7, v9);
}

uint64_t sub_23B2E6910()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_23B2E6A9C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_23B2E6A34;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B2E6A34()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23B2E6A9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B2E6B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E360, &unk_23B2EC560);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v8 = sub_23B2EAE70();
  __swift_project_value_buffer(v8, qword_27E12E420);
  v9 = sub_23B2EAE50();
  v10 = sub_23B2EB070();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B2CF000, v9, v10, "Appending continuation for capturePhoto()", v11, 2u);
    MEMORY[0x23EE99510](v11, -1, -1);
  }

  (*(v5 + 16))(v7, a1, v4);
  v12 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions;
  swift_beginAccess();
  v13 = *(a2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_23B2D73B4(0, v13[2] + 1, 1, v13);
    *(a2 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_23B2D73B4((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  result = (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v7, v4);
  *(a2 + v12) = v13;
  return result;
}

void sub_23B2E6D68()
{
  v1 = objc_opt_self();
  if (![v1 isSupported])
  {
    v2 = 0;
    goto LABEL_5;
  }

  if ([v1 isCameraRestricted])
  {
    v2 = 1;
LABEL_5:
    sub_23B2E90A8();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  if (([v4 isProcessing] & 1) == 0)
  {
    [v4 startProcessing];
    sub_23B2E590C();
  }
}

double sub_23B2E6E38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - v3;
  [*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) stopProcessing];
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations;
  v6 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
  v7 = *(v6 + 16);
  if (v7)
  {
    v14 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations;
    v15 = v0;
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v4, v11, v1);
      sub_23B2EAFF0();
      (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);

    v5 = v14;
    v0 = v15;
  }

  *(v0 + v5) = MEMORY[0x277D84F90];

  return result;
}

char *sub_23B2E6FEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B2E702C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23B2E700C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B2E7130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23B2E702C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E780, &unk_23B2ECEE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_23B2E7130(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
  v10 = *(type metadata accessor for RecognizedItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RecognizedItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_23B2E7308(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23B2D75E4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for RecognizedItem(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}