uint64_t sub_20E3C0758()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined consume of (@escaping @callee_guaranteed @async () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20E3C0838(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _VisibleTransferRepresentation(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_20E3C094C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20E3C09E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ResolvedTransferRepresentation(0);
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v8 = type metadata accessor for _ConditionalTransferRepresentation(0, v1, v2, v7);
  v9 = *(*(v8 - 8) + 80);
  v17 = *(*(v8 - 8) + 64);
  v10 = (v0 + v5);
  v11 = *(v0 + v5 + 16);
  if (v11 != 255)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*v10, v10[1], v11 & 1);
  }

  v12 = v3[5];
  v13 = type metadata accessor for UTType();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  if (*(v10 + v3[8]))
  {
  }

  if (*(v10 + v3[9]))
  {
  }

  if (*(v10 + v3[10]))
  {
  }

  v14 = v4 | v9;
  v15 = (v5 + v6 + v9) & ~v9;

  (*(*(v1 - 8) + 8))(v0 + v15 + *(v8 + 36), v1);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_20E3C0C04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _FileNamedTransferRepresentation(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_20E3C0C4C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C0C84()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C0D04()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C0D84()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20E3C0DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 84));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20E3C0E78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 84)) = (a2 - 1);
  }

  return result;
}

uint64_t _sxq_s5Error_pIeghnrzo_xq_sAA_pIeghHnrzo_16CoreTransferable0C0RzAbCR_r0_lTR_0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_20E3C0FC4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t get_enum_tag_for_layout_string_xq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyxq_Iseghnrzo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20E3C1014()
{
  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_20E3C109C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C10E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C11AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_20E3C126C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C12A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C136C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_20E3C1430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C14FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_20E3C15D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C169C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_20E3C175C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C17DC()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C185C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20E3C18A0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20E3C18D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20E3C1998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20E3C1A54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20E3C1A94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20E3C1B6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20E3C1BAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxq_Ieghnr_xq_s5Error_pIeghHnrzo_16CoreTransferable0C0RzAbCR_r0_lTR_0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_20E3C1C58()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20E3C1CA4(uint64_t *a1)
{
  type metadata accessor for TupleTransferRepresentation(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_20E3C1CF0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C1D30()
{
  v1 = type metadata accessor for ResolvedTransferRepresentation(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 16);
  if (v6 != 255)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*v5, v5[1], v6 & 1);
  }

  v7 = v1[5];
  v8 = type metadata accessor for UTType();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  if (*(v5 + v1[8]))
  {
  }

  if (*(v5 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20E3C1EC4()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20E3C1F14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20E3C1F50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20E3C2000()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_20E3C217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3C2280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3C2384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3C2488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = UIFoundationLibrary();
  result = dlsym(v3, "NSDocumentTypeDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIFoundationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UIFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_277E1D690;
    v5 = 0;
    UIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIFoundationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __UIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getNSRTFTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSRTFTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSRTFTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSRTFDTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSRTFDTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSRTFDTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSHTMLTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSHTMLTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSHTMLTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

unint64_t static Transferable.exportedContentTypes(visibility:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  static Transferable.resolvedRepresentations()(a2, a3);
  *(swift_allocObject() + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMd, &_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMR);
  LazyFilterSequence.filter(_:)();

  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(v6, v7, v8);

  return v4;
}

uint64_t static Transferable.resolvedRepresentations()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v5, v6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(a2 + 24))(a1, a2);
  swift_getDynamicType();
  (*(v12 + 16))(v15, v17, AssociatedTypeWitness);
  _TransferRepresentationValue.init(_:)(v15, AssociatedTypeWitness, v11);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v22, v11);
  (*(v8 + 8))(v11, v7);
  v19 = v22;
  (*(v12 + 8))(v17, AssociatedTypeWitness);
  return v19;
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

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t a3)
{
  v5 = type metadata accessor for UTType();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
    v10 = a1;
    v11 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    while ((a2(v11) & 1) == 0)
    {
      ++v8;
      v11 += v12;
      if (v7 == v8)
      {
        v8 = v7;
        break;
      }
    }

    a1 = v10;
  }

  v13 = specialized LazyFilterSequence<>.distance(from:to:)(v8, v7, a1, a2);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = v5;
    v42 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
    v15 = v42;
    v16 = v7;
    v38 = v13;
    if (v7)
    {
      v16 = 0;
      v17 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
      v18 = a1;
      v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v20 = *(v17 + 72);
      while (1)
      {
        result = a2(v19);
        if (result)
        {
          break;
        }

        ++v16;
        v19 += v20;
        if (v7 == v16)
        {
          v16 = v7;
          break;
        }
      }

      v13 = v38;
      a1 = v18;
    }

    if (v13 < 0)
    {
      goto LABEL_36;
    }

    v40 = v15;
    result = type metadata accessor for ResolvedTransferRepresentation(0);
    v21 = 0;
    v35 = *(result - 8);
    v36 = result;
    v22 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v33[1] = v39 + 32;
    v34 = (v39 + 16);
    v23 = v41;
    while (2)
    {
      if (v21 >= v13)
      {
LABEL_33:
        __break(1u);
      }

      else if (!__OFADD__(v21++, 1))
      {
        if (v16 < v7)
        {
          v25 = *(v35 + 72);
          v26 = v37;
          (*v34)(v23, v22 + v25 * v16 + *(v36 + 20), v37);
          v27 = v40;
          v42 = v40;
          v29 = *(v40 + 16);
          v28 = *(v40 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v40 = v29 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
            v30 = v40;
            v26 = v37;
            v27 = v42;
          }

          *(v27 + 16) = v30;
          v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v40 = v27;
          result = (*(v39 + 32))(v27 + v31 + *(v39 + 72) * v29, v41, v26);
          do
          {
            v32 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            if (v32 == v7)
            {
              v16 = v7;
              goto LABEL_17;
            }

            if (v32 >= v7)
            {
              goto LABEL_32;
            }

            result = a2(v22 + v32 * v25);
            ++v16;
          }

          while ((result & 1) == 0);
          v16 = v32;
LABEL_17:
          v23 = v41;
          v13 = v38;
          if (v21 != v38)
          {
            continue;
          }

          return v40;
        }

        goto LABEL_35;
      }

      break;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

void *static Transferable.readableContentTypes.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static Transferable.resolvedRepresentations()(a1, a2);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_33:

    return MEMORY[0x277D84F90];
  }

  v9 = v7;
  v10 = type metadata accessor for ResolvedTransferRepresentation(0);
  result = v9;
  v12 = 0;
  v13 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v14 = result + v13;
  v15 = *(*(v10 - 8) + 72);
  v16 = *(v10 + 36);
  v17 = v13 + v16;
  while (!*(result + v17))
  {
    v17 += v15;
    if (v8 == ++v12)
    {
      goto LABEL_33;
    }
  }

  v18 = &v14[v16];
  v19 = 1;
  while (2)
  {
    if (v12 == v8)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    do
    {
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v20 == v8)
      {
        goto LABEL_15;
      }

      if (v20 >= v8)
      {
        goto LABEL_39;
      }

      ++v12;
    }

    while (!*&v18[v15 * v20]);
    v12 = v20;
    if (!__OFADD__(v19++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_15:
  if (!v19)
  {
    goto LABEL_33;
  }

  v30 = result;
  v36 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  v22 = 0;
  v23 = v36;
  v24 = v13 + *(v10 + 36);
  while (!*(v30 + v24))
  {
    v24 += v15;
    if (v8 == ++v22)
    {
      v22 = v8;
      break;
    }
  }

  if (v19 < 0)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v35 = 0;
  v31 = v34 + 32;
  v32 = (v34 + 16);
  v33 = v19;
  while (2)
  {
    if (v22 >= v8)
    {
      goto LABEL_40;
    }

    (*v32)(v6, &v14[v15 * v22 + *(v10 + 20)], v4);
    v36 = v23;
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v23 = v36;
    }

    v27 = v34;
    ++v35;
    *(v23 + 16) = v26 + 1;
    result = (*(v27 + 32))(v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v6, v4);
    do
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v28 == v8)
      {
        v22 = v8;
        goto LABEL_23;
      }

      if (v28 >= v8)
      {
        goto LABEL_37;
      }

      ++v22;
    }

    while (!*&v14[v28 * v15 + *(v10 + 36)]);
    v22 = v28;
LABEL_23:
    if (v35 != v33)
    {
      continue;
    }

    break;
  }

  return v23;
}

unint64_t Transferable.exportedContentTypes(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = *MEMORY[0x28223BE20](a1);
  v20 = static Transferable.resolvedRepresentations()(v10, v11);
  v21 = closure #1 in Transferable.exportedContentTypes(_:);
  v22 = 0;
  *(swift_allocObject() + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMd, &_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMR);
  LazyFilterSequence.filter(_:)();

  v16[1] = v18;
  v17 = v19;
  (*(v7 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  LazyFilterSequence.filter(_:)();

  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(v20, v21, v22);

  return v14;
}

uint64_t closure #3 in Transferable.exportedContentTypes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  MEMORY[0x28223BE20](v8);
  v9 = a1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 40);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);
    v15[3] = a3;
    v15[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

    v13 = v10(v15);
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t Transferable.init(importing:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(importing:contentType:), 0, 0);
}

uint64_t Transferable.init(importing:contentType:)()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  outlined init with copy of UTType?(v2, v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = Transferable.init(importing:contentType:);
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];

  return Transferable.init(_file:contentType:)(v8, v4, v5, v6, v7);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = Transferable.init(importing:contentType:);
  }

  else
  {
    v2 = Transferable.init(importing:contentType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[3];
  outlined destroy of UTType?(v0[4], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[3];
  outlined destroy of UTType?(v0[4], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[4];
  v2 = v0[3];
  outlined init with copy of UTType?(v0[5], v0[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined copy of Data._Representation(v2, v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = Transferable.init(importing:contentType:);
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return Transferable.init(_:_:)(v9, v7, v8, v4, v5, v6);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = Transferable.init(importing:contentType:);
  }

  else
  {
    v2 = Transferable.init(importing:contentType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v2 = v0[1];

  return v2();
}

uint64_t Transferable.init(_file:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for Logger();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for Optional();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = type metadata accessor for ReceivedTransferredFile(0);
  v5[38] = swift_task_alloc();
  v9 = type metadata accessor for ResolvedTransferRepresentation(0);
  v5[39] = v9;
  v5[40] = *(v9 - 8);
  v5[41] = swift_task_alloc();
  v10 = type metadata accessor for UTType();
  v5[42] = v10;
  v5[43] = *(v10 - 8);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(_file:contentType:), 0, 0);
}

uint64_t Transferable.init(_file:contentType:)()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  outlined init with copy of UTType?(*(v0 + 192), v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined init with copy of UTType?(v2, v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v5 = *(v4 + 48);
  LODWORD(v2) = v5(v1, 1, v3);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v2 == 1)
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    _contentType(for:)(v7);
    outlined destroy of UTType?(v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined init with take of URL?(v7, v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  }

  v8 = *(v0 + 360);
  v9 = *(v0 + 336);
  outlined init with copy of UTType?(*(v0 + 384), v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v5(v8, 1, v9) == 1)
  {
    v10 = *(v0 + 384);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    outlined destroy of UTType?(*(v0 + 360), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v14, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v11 + 8))(v13, v12);
LABEL_16:
    outlined destroy of UTType?(v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v42 = *(v0 + 8);

    return v42();
  }

  v15 = *(v0 + 368);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v18 = *(v0 + 336);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  (*(v17 + 32))(v16, *(v0 + 360), v18);
  (*(v17 + 16))(v15, v16, v18);
  (*(v17 + 56))(v15, 0, 1, v18);
  v21 = static Transferable.resolvedRepresentations(for:)(v15, v20, v19);
  *(v0 + 392) = v21;
  result = outlined destroy of UTType?(v15, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v23 = *(v21 + 16);
  *(v0 + 400) = v23;
  if (!v23)
  {
LABEL_15:

    v10 = *(v0 + 384);
    v36 = *(v0 + 344);
    v52 = *(v0 + 352);
    v37 = *(v0 + 336);
    v38 = *(v0 + 272);
    v39 = *(v0 + 280);
    v41 = *(v0 + 184);
    v40 = *(v0 + 192);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v40, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v39 + 8))(v41, v38);
    (*(v36 + 8))(v52, v37);
    goto LABEL_16;
  }

  v24 = 0;
  *(v0 + 488) = *(*(v0 + 320) + 80);
  v25 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 408) = v24;
    v26 = *(v0 + 392);
    if (v24 >= *(v26 + 16))
    {
      __break(1u);
      return result;
    }

    v27 = *(v0 + 328);
    v28 = *(v0 + 312);
    outlined init with copy of ResolvedTransferRepresentation(v26 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v24, v27, type metadata accessor for ResolvedTransferRepresentation);
    v29 = (v27 + *(v28 + 36));
    v30 = *v29;
    *(v0 + 416) = *v29;
    v31 = v29[1];
    *(v0 + 424) = v31;
    v32 = *(v0 + 328);
    if (!v30)
    {
      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
      goto LABEL_8;
    }

    v33 = *(v32 + *(*(v0 + 312) + 28));
    *(v0 + 432) = v33;
    if (v33 == type metadata accessor for SentTransferredFile(0))
    {
      break;
    }

    if (v33 == v25)
    {
      v34 = Data.init(contentsOf:options:)();
      *(v0 + 456) = v34;
      *(v0 + 464) = v35;
      v48 = *(v0 + 416);
      *(v0 + 80) = v25;
      *(v0 + 88) = &protocol witness table for Data;
      *(v0 + 56) = v34;
      *(v0 + 64) = v35;
      outlined copy of Data._Representation(v34, v35);
      v53 = (v48 + *v48);
      v49 = swift_task_alloc();
      *(v0 + 472) = v49;
      *v49 = v0;
      v49[1] = Transferable.init(_file:contentType:);
      v50 = v0 + 16;
      v51 = v0 + 56;
      goto LABEL_20;
    }

    outlined destroy of ResolvedTransferRepresentation(v32, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v30, v31);
LABEL_8:
    v24 = *(v0 + 408) + 1;
    if (v24 == *(v0 + 400))
    {
      goto LABEL_15;
    }
  }

  v44 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 288);
  (*(*(v0 + 280) + 16))(v45, *(v0 + 184), *(v0 + 272));

  ReceivedTransferredFile.init(file:isOriginalFile:)(v45, 1, v43);
  *(v0 + 160) = v44;
  *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  outlined init with copy of ResolvedTransferRepresentation(v43, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v53 = (v30 + *v30);
  v47 = swift_task_alloc();
  *(v0 + 440) = v47;
  *v47 = v0;
  v47[1] = Transferable.init(_file:contentType:);
  v50 = v0 + 96;
  v51 = v0 + 136;
LABEL_20:

  return v53(v50, v51);
}

{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {

    v3 = Transferable.init(_file:contentType:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v3 = Transferable.init(_file:contentType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ReceivedTransferredFile);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v2 - 8);
  (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
  if ((*(v4 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 448);
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
    v6 = MEMORY[0x277CC9318];
    if (*(v0 + 432) == MEMORY[0x277CC9318])
    {
      goto LABEL_4;
    }

LABEL_3:
    v8 = *(v0 + 416);
    v7 = *(v0 + 424);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v8, v7);
    while (1)
    {
      while (1)
      {
        v29 = *(v0 + 408) + 1;
        if (v29 == *(v0 + 400))
        {

          v68 = *(v0 + 384);
          v46 = *(v0 + 344);
          v47 = *(v0 + 352);
          v48 = *(v0 + 336);
          v50 = *(v0 + 272);
          v49 = *(v0 + 280);
          v52 = *(v0 + 184);
          v51 = *(v0 + 192);
          type metadata accessor for TransferableError(0);
          lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of UTType?(v51, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          (*(v49 + 8))(v52, v50);
          (*(v46 + 8))(v47, v48);
          outlined destroy of UTType?(v68, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

          v45 = *(v0 + 8);
          goto LABEL_18;
        }

        *(v0 + 408) = v29;
        v30 = *(v0 + 392);
        if (v29 >= *(v30 + 16))
        {
          __break(1u);
          return result;
        }

        v31 = *(v0 + 328);
        v32 = *(v0 + 312);
        outlined init with copy of ResolvedTransferRepresentation(v30 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v29, v31, type metadata accessor for ResolvedTransferRepresentation);
        v33 = (v31 + *(v32 + 36));
        v34 = *v33;
        *(v0 + 416) = *v33;
        *(v0 + 424) = v33[1];
        v35 = *(v0 + 328);
        if (v34)
        {
          break;
        }

        result = outlined destroy of ResolvedTransferRepresentation(v35, type metadata accessor for ResolvedTransferRepresentation);
      }

      v36 = *(v35 + *(*(v0 + 312) + 28));
      *(v0 + 432) = v36;
      if (v36 == type metadata accessor for SentTransferredFile(0))
      {
        v54 = *(v0 + 296);
        v53 = *(v0 + 304);
        v55 = *(v0 + 288);
        (*(*(v0 + 280) + 16))(v55, *(v0 + 184), *(v0 + 272));

        ReceivedTransferredFile.init(file:isOriginalFile:)(v55, 1, v53);
        *(v0 + 160) = v54;
        *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        outlined init with copy of ResolvedTransferRepresentation(v53, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
        v71 = (v34 + *v34);
        v57 = swift_task_alloc();
        *(v0 + 440) = v57;
        *v57 = v0;
        v57[1] = Transferable.init(_file:contentType:);
        v58 = v0 + 96;
        v59 = v0 + 136;
        goto LABEL_23;
      }

      if (v36 != v6)
      {
        goto LABEL_3;
      }

LABEL_4:
      v10 = Data.init(contentsOf:options:)();
      *(v0 + 456) = v10;
      *(v0 + 464) = v11;
      if (!v5)
      {
        break;
      }

      v69 = v5;
      v13 = *(v0 + 224);
      v12 = *(v0 + 232);
      v14 = *(v0 + 216);
      v15 = logger.unsafeMutableAddressor();
      (*(v13 + 16))(v12, v15, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v0 + 416);
      v19 = *(v0 + 424);
      v21 = *(v0 + 328);
      v22 = *(v0 + 232);
      v23 = *(v0 + 216);
      v24 = (*(v0 + 224) + 8);
      if (v18)
      {
        v66 = *(v0 + 328);
        v25 = v6;
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20E3BF000, v16, v17, "error", v26, 2u);
        v27 = v26;
        v6 = v25;
        MEMORY[0x20F32E080](v27, -1, -1);
        outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v20, v19);

        (*v24)(v22, v23);
        v28 = v66;
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 416), *(v0 + 424));

        (*v24)(v22, v23);
        v28 = v21;
      }

      result = outlined destroy of ResolvedTransferRepresentation(v28, type metadata accessor for ResolvedTransferRepresentation);
      v5 = 0;
    }

    v60 = *(v0 + 416);
    *(v0 + 80) = v6;
    *(v0 + 88) = &protocol witness table for Data;
    *(v0 + 56) = v10;
    *(v0 + 64) = v11;
    outlined copy of Data._Representation(v10, v11);
    v71 = (v60 + *v60);
    v61 = swift_task_alloc();
    *(v0 + 472) = v61;
    *v61 = v0;
    v61[1] = Transferable.init(_file:contentType:);
    v58 = v0 + 16;
    v59 = v0 + 56;
LABEL_23:

    return v71(v58, v59);
  }

  else
  {
    v37 = *(v0 + 416);
    v38 = *(v0 + 424);
    v39 = *(v0 + 344);
    v40 = *(v0 + 328);
    v62 = *(v0 + 336);
    v63 = *(v0 + 352);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v70 = *(v0 + 264);
    v43 = *(v0 + 192);
    v65 = *(v0 + 384);
    v67 = *(v0 + 200);
    v44 = *(v0 + 184);
    v64 = *(v0 + 176);

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v37, v38);
    outlined destroy of UTType?(v43, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v41 + 8))(v44, v42);
    outlined destroy of ResolvedTransferRepresentation(v40, type metadata accessor for ResolvedTransferRepresentation);
    (*(v39 + 8))(v63, v62);
    outlined destroy of UTType?(v65, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v4 + 32))(v64, v70, v67);

    v45 = *(v0 + 8);
LABEL_18:

    return v45();
  }
}

{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = Transferable.init(_file:contentType:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = Transferable.init(_file:contentType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 328);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 416), *(v0 + 424));
  outlined consume of Data._Representation(v1, v2);
  outlined destroy of ResolvedTransferRepresentation(v3, type metadata accessor for ResolvedTransferRepresentation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v6 = *(v0 + 336);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 256);
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);
    v12 = *(v0 + 184);
    v62 = *(v0 + 384);
    v65 = *(v0 + 176);

    outlined destroy of UTType?(v11, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v7 + 8))(v12, v8);
    (*(v5 + 8))(v4, v6);
    outlined destroy of UTType?(v62, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v13 = *(v10 - 8);
    (*(v13 + 56))(v9, 0, 1, v10);
    (*(v13 + 32))(v65, v9, v10);

    v14 = *(v0 + 8);
LABEL_5:

    return v14();
  }

  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  v17 = *(v0 + 240);
  (*(*(*(v0 + 200) - 8) + 56))(v15, 1, 1);
  result = (*(v16 + 8))(v15, v17);
  v19 = *(v0 + 408) + 1;
  if (v19 == *(v0 + 400))
  {
LABEL_4:

    v63 = *(v0 + 384);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    v22 = *(v0 + 336);
    v24 = *(v0 + 272);
    v23 = *(v0 + 280);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v25, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v23 + 8))(v26, v24);
    (*(v20 + 8))(v21, v22);
    outlined destroy of UTType?(v63, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v14 = *(v0 + 8);
    goto LABEL_5;
  }

  v27 = *(v0 + 480);
  v28 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 408) = v19;
    v29 = *(v0 + 392);
    if (v19 >= *(v29 + 16))
    {
      __break(1u);
      return result;
    }

    v30 = *(v0 + 328);
    v31 = *(v0 + 312);
    outlined init with copy of ResolvedTransferRepresentation(v29 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v19, v30, type metadata accessor for ResolvedTransferRepresentation);
    v32 = (v30 + *(v31 + 36));
    v33 = *v32;
    *(v0 + 416) = *v32;
    v34 = v32[1];
    *(v0 + 424) = v34;
    v35 = *(v0 + 328);
    if (v33)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
LABEL_10:
    v19 = *(v0 + 408) + 1;
    if (v19 == *(v0 + 400))
    {
      goto LABEL_4;
    }
  }

  v36 = *(v35 + *(*(v0 + 312) + 28));
  *(v0 + 432) = v36;
  if (v36 == type metadata accessor for SentTransferredFile(0))
  {
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    v55 = *(v0 + 288);
    (*(*(v0 + 280) + 16))(v55, *(v0 + 184), *(v0 + 272));

    ReceivedTransferredFile.init(file:isOriginalFile:)(v55, 1, v53);
    *(v0 + 160) = v54;
    *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    outlined init with copy of ResolvedTransferRepresentation(v53, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
    v67 = (v33 + *v33);
    v57 = swift_task_alloc();
    *(v0 + 440) = v57;
    *v57 = v0;
    v57[1] = Transferable.init(_file:contentType:);
    v58 = v0 + 96;
    v59 = v0 + 136;
    goto LABEL_21;
  }

  if (v36 != v28)
  {
    outlined destroy of ResolvedTransferRepresentation(v35, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v33, v34);
    goto LABEL_10;
  }

  v37 = Data.init(contentsOf:options:)();
  *(v0 + 456) = v37;
  *(v0 + 464) = v38;
  if (v27)
  {
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    v42 = logger.unsafeMutableAddressor();
    (*(v40 + 16))(v39, v42, v41);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 416);
    v46 = *(v0 + 424);
    v48 = *(v0 + 328);
    v49 = *(v0 + 224);
    v66 = *(v0 + 232);
    v50 = *(v0 + 216);
    if (v45)
    {
      v64 = *(v0 + 328);
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20E3BF000, v43, v44, "error", v51, 2u);
      v52 = v51;
      v48 = v64;
      MEMORY[0x20F32E080](v52, -1, -1);
    }

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v47, v46);

    (*(v49 + 8))(v66, v50);
    result = outlined destroy of ResolvedTransferRepresentation(v48, type metadata accessor for ResolvedTransferRepresentation);
    v27 = 0;
    goto LABEL_10;
  }

  v60 = *(v0 + 416);
  *(v0 + 80) = v28;
  *(v0 + 88) = &protocol witness table for Data;
  *(v0 + 56) = v37;
  *(v0 + 64) = v38;
  outlined copy of Data._Representation(v37, v38);
  v67 = (v60 + *v60);
  v61 = swift_task_alloc();
  *(v0 + 472) = v61;
  *v61 = v0;
  v61[1] = Transferable.init(_file:contentType:);
  v58 = v0 + 16;
  v59 = v0 + 56;
LABEL_21:

  return v67(v58, v59);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ReceivedTransferredFile);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  v3 = MEMORY[0x277CC9318];
  if (*(v0 + 432) != MEMORY[0x277CC9318])
  {
    while (2)
    {
      v4 = *(v0 + 416);
      v5 = *(v0 + 424);
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
      for (result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v4, v5); ; result = outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation))
      {
        v9 = *(v0 + 408) + 1;
        if (v9 == *(v0 + 400))
        {

          v34 = *(v0 + 384);
          v17 = *(v0 + 344);
          v18 = *(v0 + 352);
          v19 = *(v0 + 336);
          v21 = *(v0 + 272);
          v20 = *(v0 + 280);
          v23 = *(v0 + 184);
          v22 = *(v0 + 192);
          type metadata accessor for TransferableError(0);
          lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of UTType?(v22, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          (*(v20 + 8))(v23, v21);
          (*(v17 + 8))(v18, v19);
          outlined destroy of UTType?(v34, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

          v24 = *(v0 + 8);

          return v24();
        }

        *(v0 + 408) = v9;
        v10 = *(v0 + 392);
        if (v9 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v0 + 328);
        v12 = *(v0 + 312);
        outlined init with copy of ResolvedTransferRepresentation(v10 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v9, v11, type metadata accessor for ResolvedTransferRepresentation);
        v13 = (v11 + *(v12 + 36));
        v14 = *v13;
        *(v0 + 416) = *v13;
        *(v0 + 424) = v13[1];
        v15 = *(v0 + 328);
        if (v14)
        {
          break;
        }
      }

      v16 = *(v15 + *(*(v0 + 312) + 28));
      *(v0 + 432) = v16;
      if (v16 == type metadata accessor for SentTransferredFile(0))
      {
        v26 = *(v0 + 296);
        v25 = *(v0 + 304);
        v27 = *(v0 + 288);
        (*(*(v0 + 280) + 16))(v27, *(v0 + 184), *(v0 + 272));

        ReceivedTransferredFile.init(file:isOriginalFile:)(v27, 1, v25);
        *(v0 + 160) = v26;
        *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        outlined init with copy of ResolvedTransferRepresentation(v25, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
        v35 = (v14 + *v14);
        v29 = swift_task_alloc();
        *(v0 + 440) = v29;
        *v29 = v0;
        v29[1] = Transferable.init(_file:contentType:);
        v32 = v0 + 96;
        v33 = v0 + 136;
        goto LABEL_15;
      }

      if (v16 != v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = Data.init(contentsOf:options:)();
  *(v0 + 456) = v7;
  *(v0 + 464) = v8;
  v30 = *(v0 + 416);
  *(v0 + 80) = v3;
  *(v0 + 88) = &protocol witness table for Data;
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  outlined copy of Data._Representation(v7, v8);
  v35 = (v30 + *v30);
  v31 = swift_task_alloc();
  *(v0 + 472) = v31;
  *v31 = v0;
  v31[1] = Transferable.init(_file:contentType:);
  v32 = v0 + 16;
  v33 = v0 + 56;
LABEL_15:

  return v35(v32, v33);
}

{
  outlined consume of Data._Representation(*(v0 + 456), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 480);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = logger.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 416);
  v9 = *(v0 + 424);
  v11 = *(v0 + 328);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  if (v8)
  {
    v49 = v1;
    v15 = *(v0 + 328);
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20E3BF000, v6, v7, "error", v16, 2u);
    v17 = v16;
    v11 = v15;
    v1 = v49;
    MEMORY[0x20F32E080](v17, -1, -1);
  }

  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v10, v9);

  (*(v12 + 8))(v13, v14);
  result = outlined destroy of ResolvedTransferRepresentation(v11, type metadata accessor for ResolvedTransferRepresentation);
  v19 = *(v0 + 408) + 1;
  v20 = MEMORY[0x277CC9318];
  if (v19 == *(v0 + 400))
  {
LABEL_13:

    v48 = *(v0 + 384);
    v35 = *(v0 + 344);
    v36 = *(v0 + 352);
    v37 = *(v0 + 336);
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v41 = *(v0 + 184);
    v40 = *(v0 + 192);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v40, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v38 + 8))(v41, v39);
    (*(v35 + 8))(v36, v37);
    outlined destroy of UTType?(v48, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v42 = *(v0 + 8);

    return v42();
  }

  while (1)
  {
    *(v0 + 408) = v19;
    v21 = *(v0 + 392);
    if (v19 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    outlined init with copy of ResolvedTransferRepresentation(v21 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v19, v22, type metadata accessor for ResolvedTransferRepresentation);
    v24 = (v22 + *(v23 + 36));
    v25 = *v24;
    *(v0 + 416) = *v24;
    v26 = v24[1];
    *(v0 + 424) = v26;
    v27 = *(v0 + 328);
    if (!v25)
    {
      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
      goto LABEL_6;
    }

    v28 = *(v27 + *(*(v0 + 312) + 28));
    *(v0 + 432) = v28;
    if (v28 == type metadata accessor for SentTransferredFile(0))
    {
      break;
    }

    if (v28 == v20)
    {
      v29 = Data.init(contentsOf:options:)();
      *(v0 + 456) = v29;
      *(v0 + 464) = v30;
      v31 = *(v0 + 416);
      *(v0 + 80) = v20;
      *(v0 + 88) = &protocol witness table for Data;
      *(v0 + 56) = v29;
      *(v0 + 64) = v30;
      outlined copy of Data._Representation(v29, v30);
      v50 = (v31 + *v31);
      v32 = swift_task_alloc();
      *(v0 + 472) = v32;
      *v32 = v0;
      v32[1] = Transferable.init(_file:contentType:);
      v33 = v0 + 16;
      v34 = v0 + 56;
      goto LABEL_17;
    }

    outlined destroy of ResolvedTransferRepresentation(v27, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v25, v26);
LABEL_6:
    v19 = *(v0 + 408) + 1;
    if (v19 == *(v0 + 400))
    {
      goto LABEL_13;
    }
  }

  v44 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 288);
  (*(*(v0 + 280) + 16))(v45, *(v0 + 184), *(v0 + 272));

  ReceivedTransferredFile.init(file:isOriginalFile:)(v45, 1, v43);
  *(v0 + 160) = v44;
  *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  outlined init with copy of ResolvedTransferRepresentation(v43, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v50 = (v25 + *v25);
  v47 = swift_task_alloc();
  *(v0 + 440) = v47;
  *v47 = v0;
  v47[1] = Transferable.init(_file:contentType:);
  v33 = v0 + 96;
  v34 = v0 + 136;
LABEL_17:

  return v50(v33, v34);
}

uint64_t Transferable.export(to:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.export(to:contentType:), 0, 0);
}

uint64_t Transferable.export(to:contentType:)()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = Transferable.export(to:contentType:);
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  v10 = v0[2];

  return Transferable._file(contentType:destinationDirectory:)(v10, v9, v6, v7, v8);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 80) = v0;

  outlined destroy of UTType?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](Transferable.export(to:contentType:), 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Transferable._file(contentType:destinationDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for Logger();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v10 = type metadata accessor for ResolvedTransferRepresentation(0);
  v6[34] = v10;
  v6[35] = *(v10 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable._file(contentType:destinationDirectory:), 0, 0);
}

uint64_t Transferable._file(contentType:destinationDirectory:)()
{
  v1 = static Transferable.resolvedRepresentations(for:)(*(v0 + 88), *(v0 + 104), *(v0 + 112));
  *(v0 + 320) = v1;
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 280);
    result = type metadata accessor for SentTransferredFile(0);
    v5 = 0;
    *(v0 + 336) = result;
    *(v0 + 76) = *(v3 + 80);
    v6 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 344) = v5;
      v7 = *(v0 + 320);
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *(v0 + 336);
      v9 = *(v0 + 312);
      v10 = *(v0 + 272);
      outlined init with copy of ResolvedTransferRepresentation(v7 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v5, v9, type metadata accessor for ResolvedTransferRepresentation);
      v11 = *(v9 + *(v10 + 28));
      if (v11 == v8)
      {
        break;
      }

      if (v11 == v6)
      {
        v22 = swift_task_alloc();
        *(v0 + 384) = v22;
        *v22 = v0;
        v22[1] = Transferable._file(contentType:destinationDirectory:);
        v23 = *(v0 + 312);
        v24 = *(v0 + 112);
        v25 = *(v0 + 104);

        return Transferable.data(from:)(v23, v25, v24);
      }

      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
      v5 = *(v0 + 344) + 1;
      if (v5 == *(v0 + 328))
      {
        goto LABEL_7;
      }
    }

    v13 = *(v0 + 264);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v15 + 56);
    *(v0 + 352) = v16;
    *(v0 + 360) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v16(v13, 1, 1, v14);
    v17 = swift_task_alloc();
    *(v0 + 368) = v17;
    *v17 = v0;
    v17[1] = Transferable._file(contentType:destinationDirectory:);
    v18 = *(v0 + 312);
    v19 = *(v0 + 256);
    v20 = *(v0 + 112);
    v21 = *(v0 + 104);

    return Transferable.url(from:)(v19, v18, v21, v20);
  }

  else
  {
LABEL_7:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = Transferable._file(contentType:destinationDirectory:);
  }

  else
  {
    v2 = Transferable._file(contentType:destinationDirectory:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  outlined destroy of UTType?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1(v2, 0, 1, v4);
  outlined init with take of URL?(v2, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(v0 + 248);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  outlined init with copy of UTType?(*(v0 + 264), v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v19 = *(v0 + 312);
    v20 = *(v0 + 264);
    v21 = *(v0 + 248);
    v22 = *(v0 + 232);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 96);
    v26 = *(v0 + 80);

    (*(v24 + 32))(v22, v21, v23);
    copyFile(from:to:)(v22, v25, v26);
    (*(v24 + 8))(v22, v23);
    outlined destroy of UTType?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of ResolvedTransferRepresentation(v19, type metadata accessor for ResolvedTransferRepresentation);

    v18 = *(v0 + 8);
    goto LABEL_10;
  }

  v8 = *(v0 + 312);
  v9 = *(v0 + 248);
  outlined destroy of UTType?(*(v0 + 264), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v8, type metadata accessor for ResolvedTransferRepresentation);
  result = outlined destroy of UTType?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(v0 + 344) + 1;
  if (v11 == *(v0 + 328))
  {
LABEL_8:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v18 = *(v0 + 8);
LABEL_10:

    return v18();
  }

  v12 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v11;
    v13 = *(v0 + 320);
    if (v11 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(v0 + 336);
    v15 = *(v0 + 312);
    v16 = *(v0 + 272);
    outlined init with copy of ResolvedTransferRepresentation(v13 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v11, v15, type metadata accessor for ResolvedTransferRepresentation);
    v17 = *(v15 + *(v16 + 28));
    if (v17 == v14)
    {
      break;
    }

    if (v17 == v12)
    {
      v36 = swift_task_alloc();
      *(v0 + 384) = v36;
      *v36 = v0;
      v36[1] = Transferable._file(contentType:destinationDirectory:);
      v37 = *(v0 + 312);
      v38 = *(v0 + 112);
      v39 = *(v0 + 104);

      return Transferable.data(from:)(v37, v39, v38);
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    v11 = *(v0 + 344) + 1;
    if (v11 == *(v0 + 328))
    {
      goto LABEL_8;
    }
  }

  v27 = *(v0 + 264);
  v28 = *(v0 + 192);
  v29 = *(v0 + 200);
  v30 = *(v29 + 56);
  *(v0 + 352) = v30;
  *(v0 + 360) = (v29 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30(v27, 1, 1, v28);
  v31 = swift_task_alloc();
  *(v0 + 368) = v31;
  *v31 = v0;
  v31[1] = Transferable._file(contentType:destinationDirectory:);
  v32 = *(v0 + 312);
  v33 = *(v0 + 256);
  v34 = *(v0 + 112);
  v35 = *(v0 + 104);

  return Transferable.url(from:)(v33, v32, v35, v34);
}

{
  v93 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    outlined copy of Data._Representation(*(v0 + 392), *(v0 + 400));
    goto LABEL_5;
  }

  v4 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 56) = *v1;
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 120);
  *(v0 + 64) = v3;
  *(v0 + 72) = v2 & 1;
  v8 = *(v0 + 104);
  *(v0 + 40) = v8;
  v9 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v7, v9);
  outlined copy of Data._Representation(v6, v5);
  outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v4, v3, v2);
  ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v0 + 16);
  v12 = v11;
  outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  if (!v12)
  {
LABEL_5:
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v13 + 8))(v14, v15);
  }

  v16 = *(v0 + 240);
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  outlined init with copy of UTType?(*(v0 + 96), v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = *(v17 + 48);
  v20 = v19(v16, 1, v18);
  v21 = *(v0 + 240);
  if (v20 == 1)
  {
    v22 = *(v0 + 192);
    backupDirectory()();
    if (v19(v21, 1, v22) != 1)
    {
      outlined destroy of UTType?(*(v0 + 240), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 240), *(v0 + 192));
  }

  v87 = *(v0 + 408);
  v23 = *(v0 + 216);
  v25 = *(v0 + 200);
  v24 = *(v0 + 208);
  v26 = *(v0 + 192);
  URL.appendingPathComponent(_:isDirectory:)();

  v27 = *(v25 + 8);
  v27(v24, v26);
  URL.appendingPathExtension(for:)();
  v27(v23, v26);
  v28 = v87;
  Data.write(to:options:)();
  v30 = *(v0 + 392);
  v29 = *(v0 + 400);
  v31 = *(v0 + 224);
  if (!v87)
  {
    v55 = *(v0 + 192);
    v56 = *(v0 + 200);
    v57 = *(v0 + 80);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    outlined consume of Data._Representation(v30, v29);
    outlined consume of Data._Representation(v30, v29);

    (*(v56 + 32))(v57, v31, v55);

    v58 = *(v0 + 8);
LABEL_22:

    return v58();
  }

  v88 = *(v0 + 304);
  v90 = *(v0 + 312);
  v32 = *(v0 + 160);
  v33 = v28;
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v27(v31, *(v0 + 192));
  outlined consume of Data._Representation(v30, v29);
  v36 = logger.unsafeMutableAddressor();
  (*(v34 + 16))(v32, v36, v35);
  v37 = v33;
  outlined init with copy of ResolvedTransferRepresentation(v90, v88, type metadata accessor for ResolvedTransferRepresentation);
  v38 = v33;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 400);
  v91 = *(v0 + 392);
  v43 = *(v0 + 304);
  v44 = *(v0 + 312);
  if (v41)
  {
    v85 = *(v0 + 136);
    v86 = *(v0 + 128);
    v89 = *(v0 + 160);
    v84 = *(v0 + 312);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v83 = v42;
    v47 = swift_slowAlloc();
    v92 = v47;
    *v45 = 136315394;
    v48 = UTType.identifier.getter();
    v50 = v49;
    outlined destroy of ResolvedTransferRepresentation(v43, type metadata accessor for ResolvedTransferRepresentation);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v92);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2112;
    v52 = v37;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v53;
    *v46 = v53;
    _os_log_impl(&dword_20E3BF000, v39, v40, "Error writing data for type identifier %s: %@", v45, 0x16u);
    outlined destroy of UTType?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x20F32E080](v47, -1, -1);
    MEMORY[0x20F32E080](v45, -1, -1);

    outlined consume of Data._Representation(v91, v83);
    (*(v85 + 8))(v89, v86);
    v54 = v84;
  }

  else
  {
    v59 = *(v0 + 160);
    v60 = *(v0 + 128);
    v61 = *(v0 + 136);

    outlined consume of Data._Representation(v91, v42);
    outlined destroy of ResolvedTransferRepresentation(v43, type metadata accessor for ResolvedTransferRepresentation);
    (*(v61 + 8))(v59, v60);
    v54 = v44;
  }

  result = outlined destroy of ResolvedTransferRepresentation(v54, type metadata accessor for ResolvedTransferRepresentation);
  v63 = *(v0 + 344) + 1;
  if (v63 == *(v0 + 328))
  {
LABEL_21:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v58 = *(v0 + 8);
    goto LABEL_22;
  }

  v64 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v63;
    v65 = *(v0 + 320);
    if (v63 >= *(v65 + 16))
    {
      __break(1u);
      return result;
    }

    v66 = *(v0 + 336);
    v67 = *(v0 + 312);
    v68 = *(v0 + 272);
    outlined init with copy of ResolvedTransferRepresentation(v65 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v63, v67, type metadata accessor for ResolvedTransferRepresentation);
    v69 = *(v67 + *(v68 + 28));
    if (v69 == v66)
    {
      break;
    }

    if (v69 == v64)
    {
      v79 = swift_task_alloc();
      *(v0 + 384) = v79;
      *v79 = v0;
      v79[1] = Transferable._file(contentType:destinationDirectory:);
      v80 = *(v0 + 312);
      v81 = *(v0 + 112);
      v82 = *(v0 + 104);

      return Transferable.data(from:)(v80, v82, v81);
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    v63 = *(v0 + 344) + 1;
    if (v63 == *(v0 + 328))
    {
      goto LABEL_21;
    }
  }

  v70 = *(v0 + 264);
  v71 = *(v0 + 192);
  v72 = *(v0 + 200);
  v73 = *(v72 + 56);
  *(v0 + 352) = v73;
  *(v0 + 360) = (v72 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v73(v70, 1, 1, v71);
  v74 = swift_task_alloc();
  *(v0 + 368) = v74;
  *v74 = v0;
  v74[1] = Transferable._file(contentType:destinationDirectory:);
  v75 = *(v0 + 312);
  v76 = *(v0 + 256);
  v77 = *(v0 + 112);
  v78 = *(v0 + 104);

  return Transferable.url(from:)(v76, v75, v78, v77);
}

uint64_t Transferable._file(contentType:destinationDirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v5 = Transferable._file(contentType:destinationDirectory:);
  }

  else
  {
    v5 = Transferable._file(contentType:destinationDirectory:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t Transferable._file(contentType:destinationDirectory:)(uint64_t a1)
{
  v66 = v1;
  v2 = *(v1 + 376);
  v3 = *(v1 + 312);
  v4 = *(v1 + 296);
  v5 = *(v1 + 152);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = logger.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);
  outlined init with copy of ResolvedTransferRepresentation(v3, v4, type metadata accessor for ResolvedTransferRepresentation);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 376);
  v14 = *(v1 + 296);
  if (v12)
  {
    v62 = *(v1 + 136);
    v63 = *(v1 + 128);
    v64 = *(v1 + 152);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v65 = v17;
    *v15 = 136315394;
    v18 = UTType.identifier.getter();
    v20 = v19;
    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v65);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_20E3BF000, v10, v11, "Error loading URL for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v62 + 8))(v64, v63);
  }

  else
  {
    v24 = *(v1 + 152);
    v25 = *(v1 + 128);
    v26 = *(v1 + 136);

    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    (*(v26 + 8))(v24, v25);
  }

  v27 = *(v1 + 248);
  v28 = *(v1 + 192);
  v29 = *(v1 + 200);
  outlined init with copy of UTType?(*(v1 + 264), v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    v41 = *(v1 + 312);
    v42 = *(v1 + 264);
    v43 = *(v1 + 248);
    v44 = *(v1 + 232);
    v45 = *(v1 + 192);
    v46 = *(v1 + 200);
    v47 = *(v1 + 96);
    v48 = *(v1 + 80);

    (*(v46 + 32))(v44, v43, v45);
    copyFile(from:to:)(v44, v47, v48);
    (*(v46 + 8))(v44, v45);
    outlined destroy of UTType?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of ResolvedTransferRepresentation(v41, type metadata accessor for ResolvedTransferRepresentation);

    v40 = *(v1 + 8);
    goto LABEL_13;
  }

  v30 = *(v1 + 312);
  v31 = *(v1 + 248);
  outlined destroy of UTType?(*(v1 + 264), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v30, type metadata accessor for ResolvedTransferRepresentation);
  result = outlined destroy of UTType?(v31, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = *(v1 + 344) + 1;
  if (v33 == *(v1 + 328))
  {
LABEL_11:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v40 = *(v1 + 8);
LABEL_13:

    return v40();
  }

  v34 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v1 + 344) = v33;
    v35 = *(v1 + 320);
    if (v33 >= *(v35 + 16))
    {
      __break(1u);
      return result;
    }

    v36 = *(v1 + 336);
    v37 = *(v1 + 312);
    v38 = *(v1 + 272);
    outlined init with copy of ResolvedTransferRepresentation(v35 + ((*(v1 + 76) + 32) & ~*(v1 + 76)) + *(*(v1 + 280) + 72) * v33, v37, type metadata accessor for ResolvedTransferRepresentation);
    v39 = *(v37 + *(v38 + 28));
    if (v39 == v36)
    {
      break;
    }

    if (v39 == v34)
    {
      v58 = swift_task_alloc();
      *(v1 + 384) = v58;
      *v58 = v1;
      v58[1] = Transferable._file(contentType:destinationDirectory:);
      v59 = *(v1 + 312);
      v60 = *(v1 + 112);
      v61 = *(v1 + 104);

      return Transferable.data(from:)(v59, v61, v60);
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v1 + 312), type metadata accessor for ResolvedTransferRepresentation);
    v33 = *(v1 + 344) + 1;
    if (v33 == *(v1 + 328))
    {
      goto LABEL_11;
    }
  }

  v49 = *(v1 + 264);
  v50 = *(v1 + 192);
  v51 = *(v1 + 200);
  v52 = *(v51 + 56);
  *(v1 + 352) = v52;
  *(v1 + 360) = (v51 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v52(v49, 1, 1, v50);
  v53 = swift_task_alloc();
  *(v1 + 368) = v53;
  *v53 = v1;
  v53[1] = Transferable._file(contentType:destinationDirectory:);
  v54 = *(v1 + 312);
  v55 = *(v1 + 256);
  v56 = *(v1 + 112);
  v57 = *(v1 + 104);

  return Transferable.url(from:)(v55, v54, v57, v56);
}

{
  v56 = v1;
  v2 = *(v1 + 408);
  v3 = *(v1 + 312);
  v4 = *(v1 + 288);
  v6 = *(v1 + 136);
  v5 = *(v1 + 144);
  v7 = *(v1 + 128);
  v8 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v8, v7);
  outlined init with copy of ResolvedTransferRepresentation(v3, v4, type metadata accessor for ResolvedTransferRepresentation);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 408);
  v14 = *(v1 + 312);
  v15 = *(v1 + 288);
  if (v12)
  {
    v52 = *(v1 + 136);
    v53 = *(v1 + 128);
    v54 = *(v1 + 144);
    v51 = *(v1 + 312);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v55 = v18;
    *v16 = 136315394;
    v19 = UTType.identifier.getter();
    v21 = v20;
    outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v55);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    v23 = v13;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v24;
    *v17 = v24;
    _os_log_impl(&dword_20E3BF000, v10, v11, "Error loading data for type identifier %s: %@", v16, 0x16u);
    outlined destroy of UTType?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x20F32E080](v18, -1, -1);
    MEMORY[0x20F32E080](v16, -1, -1);

    (*(v52 + 8))(v54, v53);
    v25 = v51;
  }

  else
  {
    v27 = *(v1 + 136);
    v26 = *(v1 + 144);
    v28 = *(v1 + 128);

    outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation);
    (*(v27 + 8))(v26, v28);
    v25 = v14;
  }

  result = outlined destroy of ResolvedTransferRepresentation(v25, type metadata accessor for ResolvedTransferRepresentation);
  v30 = *(v1 + 344) + 1;
  if (v30 == *(v1 + 328))
  {
LABEL_10:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v37 = *(v1 + 8);

    return v37();
  }

  else
  {
    v31 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v1 + 344) = v30;
      v32 = *(v1 + 320);
      if (v30 >= *(v32 + 16))
      {
        __break(1u);
        return result;
      }

      v33 = *(v1 + 336);
      v34 = *(v1 + 312);
      v35 = *(v1 + 272);
      outlined init with copy of ResolvedTransferRepresentation(v32 + ((*(v1 + 76) + 32) & ~*(v1 + 76)) + *(*(v1 + 280) + 72) * v30, v34, type metadata accessor for ResolvedTransferRepresentation);
      v36 = *(v34 + *(v35 + 28));
      if (v36 == v33)
      {
        break;
      }

      if (v36 == v31)
      {
        v47 = swift_task_alloc();
        *(v1 + 384) = v47;
        *v47 = v1;
        v47[1] = Transferable._file(contentType:destinationDirectory:);
        v48 = *(v1 + 312);
        v49 = *(v1 + 112);
        v50 = *(v1 + 104);

        return Transferable.data(from:)(v48, v50, v49);
      }

      result = outlined destroy of ResolvedTransferRepresentation(*(v1 + 312), type metadata accessor for ResolvedTransferRepresentation);
      v30 = *(v1 + 344) + 1;
      if (v30 == *(v1 + 328))
      {
        goto LABEL_10;
      }
    }

    v38 = *(v1 + 264);
    v39 = *(v1 + 192);
    v40 = *(v1 + 200);
    v41 = *(v40 + 56);
    *(v1 + 352) = v41;
    *(v1 + 360) = (v40 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v41(v38, 1, 1, v39);
    v42 = swift_task_alloc();
    *(v1 + 368) = v42;
    *v42 = v1;
    v42[1] = Transferable._file(contentType:destinationDirectory:);
    v43 = *(v1 + 312);
    v44 = *(v1 + 256);
    v45 = *(v1 + 112);
    v46 = *(v1 + 104);

    return Transferable.url(from:)(v44, v43, v46, v45);
  }
}

uint64_t Transferable.withExportedFile<A>(contentType:fileHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = type metadata accessor for Logger();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.withExportedFile<A>(contentType:fileHandler:), 0, 0);
}

uint64_t Transferable.withExportedFile<A>(contentType:fileHandler:)()
{
  v1 = v0;
  (*(v0[15] + 56))(v0[13], 1, 1, v0[14]);
  v2 = swift_task_alloc();
  v1[18] = v2;
  *v2 = v1;
  v2[1] = Transferable.withExportedFile<A>(contentType:fileHandler:);
  v3 = v1[17];
  v4 = v1[13];
  v5 = v1[8];
  v6 = v1[7];
  v7 = v1[4];

  return Transferable._file(contentType:destinationDirectory:)(v3, v7, v4, v6, v5);
}

{
  v2 = *v1;
  v3 = *v1;
  v2[19] = v0;

  v4 = v2[13];
  if (v0)
  {
    outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    return MEMORY[0x2822009F8](Transferable.withExportedFile<A>(contentType:fileHandler:), 0, 0);
  }

  else
  {
    v5 = v2[5];
    outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    v2[20] = v6;
    *v6 = v3;
    v6[1] = Transferable.withExportedFile<A>(contentType:fileHandler:);
    v7 = v2[17];
    v8 = v2[3];

    return v10(v8, v7);
  }
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = Transferable.withExportedFile<A>(contentType:fileHandler:);
  }

  else
  {
    v2 = Transferable.withExportedFile<A>(contentType:fileHandler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v49 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[2] = 0;
  v5 = [v1 removeItemAtURL:v3 error:v0 + 2];

  v6 = v0[2];
  v7 = v0[17];
  if (v5)
  {
    v8 = v0[14];
    v9 = *(v0[15] + 8);
    v10 = v6;
    v9(v7, v8);
  }

  else
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v6;
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v19 = logger.unsafeMutableAddressor();
    (*(v15 + 16))(v14, v19, v16);
    (*(v12 + 16))(v11, v7, v13);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v47 = v22;
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[16];
    v25 = v0[17];
    v27 = v0[14];
    v26 = v0[15];
    v29 = v0[11];
    v28 = v0[12];
    v30 = v0[10];
    if (v23)
    {
      v46 = v0[10];
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48[0] = v43;
      *v31 = 136315394;
      v44 = v28;
      v45 = v25;
      v32 = URL.path.getter();
      v34 = v33;
      v35 = *(v26 + 8);
      v35(v24, v27);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v48);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      v37 = v18;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v38;
      *v42 = v38;
      _os_log_impl(&dword_20E3BF000, v21, v47, "Failed to remove temporary file: %s Error: %@", v31, 0x16u);
      outlined destroy of UTType?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x20F32E080](v43, -1, -1);
      MEMORY[0x20F32E080](v31, -1, -1);

      (*(v29 + 8))(v44, v46);
      v35(v45, v27);
    }

    else
    {

      v39 = *(v26 + 8);
      v39(v24, v27);
      (*(v29 + 8))(v28, v30);
      v39(v25, v27);
    }
  }

  v40 = v0[1];

  return v40();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t (*Transferable.suggestedFilename.getter(uint64_t a1, uint64_t a2))(void *)
{
  v4 = type metadata accessor for ResolvedTransferRepresentation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  result = static Transferable.resolvedRepresentations()(a1, a2);
  v15 = result;
  v16 = *(result + 2);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      outlined init with copy of ResolvedTransferRepresentation(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v7, type metadata accessor for ResolvedTransferRepresentation);
      if (v7[16] != 255)
      {

        outlined init with take of ResolvedTransferRepresentation(v7, v13, type metadata accessor for ResolvedTransferRepresentation);
        v18 = 0;
        goto LABEL_8;
      }

      ++v17;
      result = outlined destroy of ResolvedTransferRepresentation(v7, type metadata accessor for ResolvedTransferRepresentation);
      if (v16 == v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v18 = 1;
LABEL_8:
    (*(v5 + 56))(v13, v18, 1, v4);
    outlined init with copy of UTType?(v13, v11, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    if ((*(v5 + 48))(v11, 1, v4) == 1)
    {
      outlined destroy of UTType?(v13, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v19 = v11;
    }

    else
    {
      v20 = *v11;
      v21 = *(v11 + 1);
      v22 = v11[16];
      outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(*v11, v21, v11[16]);
      outlined destroy of ResolvedTransferRepresentation(v11, type metadata accessor for ResolvedTransferRepresentation);
      if (v22 != 255)
      {
        v27 = v20;
        v28 = v21;
        v29 = v22 & 1;
        v26[3] = a1;
        v26[4] = a2;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v25[1], a1);
        v24 = ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v26);
        outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(v27, v28, v29);
        outlined destroy of UTType?(v13, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
        outlined destroy of UTType?(v26, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
        return v24;
      }

      v19 = v13;
    }

    outlined destroy of UTType?(v19, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    return 0;
  }

  return result;
}

uint64_t Transferable.init(importing:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(importing:contentType:), 0, 0);
}

uint64_t Transferable.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for ReceivedTransferredFile(0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v9 = type metadata accessor for Optional();
  v6[37] = v9;
  v6[38] = *(v9 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v10 = type metadata accessor for ResolvedTransferRepresentation(0);
  v6[41] = v10;
  v6[42] = *(v10 - 8);
  v6[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(_:_:), 0, 0);
}

uint64_t Transferable.init(_:_:)()
{
  result = static Transferable.resolvedRepresentations(for:)(*(v0 + 200), *(v0 + 208), *(v0 + 216));
  *(v0 + 352) = result;
  v2 = *(result + 16);
  *(v0 + 360) = v2;
  if (!v2)
  {
LABEL_10:

    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v0 + 184);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v16, v14);
    outlined destroy of UTType?(v15, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v17 = *(v0 + 8);

    return v17();
  }

  v3 = 0;
  *(v0 + 448) = *(*(v0 + 336) + 80);
  v4 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 368) = v3;
    v5 = *(v0 + 352);
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 344);
    v7 = *(v0 + 328);
    outlined init with copy of ResolvedTransferRepresentation(v5 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v3, v6, type metadata accessor for ResolvedTransferRepresentation);
    v8 = (v6 + *(v7 + 36));
    v9 = *v8;
    *(v0 + 376) = *v8;
    v10 = v8[1];
    *(v0 + 384) = v10;
    v11 = *(v0 + 344);
    if (v9)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 344), type metadata accessor for ResolvedTransferRepresentation);
LABEL_4:
    v3 = *(v0 + 368) + 1;
    if (v3 == *(v0 + 360))
    {
      goto LABEL_10;
    }
  }

  v12 = *(v11 + *(*(v0 + 328) + 28));
  *(v0 + 392) = v12;
  if (v12 == v4)
  {
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    *(v0 + 160) = v4;
    *(v0 + 168) = &protocol witness table for Data;
    *(v0 + 136) = v19;
    *(v0 + 144) = v18;
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v9, v10);
    outlined copy of Data._Representation(v19, v18);
    v37 = (v9 + *v9);
    v20 = swift_task_alloc();
    *(v0 + 400) = v20;
    *v20 = v0;
    v20[1] = Transferable.init(_:_:);
    v21 = v0 + 96;
    v22 = v0 + 136;
    goto LABEL_15;
  }

  v13 = type metadata accessor for SentTransferredFile(0);

  if (v12 != v13)
  {
    outlined destroy of ResolvedTransferRepresentation(v11, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v9, v10);
    goto LABEL_4;
  }

  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 240);
  v36 = *(v0 + 264);
  v28 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v26 + 8))(v25, v27);
  URL.appendingPathComponent(_:isDirectory:)();

  v29 = *(v24 + 8);
  *(v0 + 416) = v29;
  *(v0 + 424) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v23, v36);
  Data.write(to:options:)();
  v30 = *(v0 + 376);
  v31 = *(v0 + 280);
  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v31, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v31, 1, v32);
  *(v0 + 80) = v33;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v32, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 432) = v35;
  *v35 = v0;
  v35[1] = Transferable.init(_:_:);
  v21 = v0 + 16;
  v22 = v0 + 56;
LABEL_15:

  return v37(v21, v22);
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {

    v3 = Transferable.init(_:_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v3 = Transferable.init(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v2 - 8);
  (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
  if ((*(v4 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 408);
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    v6 = type metadata accessor for SentTransferredFile(0);
    if (*(v0 + 392) != v6)
    {
      v7 = v6;
      v9 = *(v0 + 376);
      v8 = *(v0 + 384);
      v10 = *(v0 + 344);
      v11 = MEMORY[0x277CC9318];
      while (2)
      {
        outlined destroy of ResolvedTransferRepresentation(v10, type metadata accessor for ResolvedTransferRepresentation);
        for (result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v9, v8); ; result = outlined destroy of ResolvedTransferRepresentation(v18, type metadata accessor for ResolvedTransferRepresentation))
        {
          v13 = *(v0 + 368) + 1;
          if (v13 == *(v0 + 360))
          {

            v43 = *(v0 + 192);
            v44 = *(v0 + 200);
            v45 = *(v0 + 184);
            type metadata accessor for TransferableError(0);
            lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            outlined consume of Data._Representation(v45, v43);
            outlined destroy of UTType?(v44, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

            v42 = *(v0 + 8);
            goto LABEL_19;
          }

          *(v0 + 368) = v13;
          v14 = *(v0 + 352);
          if (v13 >= *(v14 + 16))
          {
            __break(1u);
            return result;
          }

          v15 = *(v0 + 344);
          v16 = *(v0 + 328);
          outlined init with copy of ResolvedTransferRepresentation(v14 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v13, v15, type metadata accessor for ResolvedTransferRepresentation);
          v17 = (v15 + *(v16 + 36));
          v9 = *v17;
          *(v0 + 376) = *v17;
          v8 = v17[1];
          *(v0 + 384) = v8;
          v18 = *(v0 + 344);
          if (v9)
          {
            break;
          }
        }

        v19 = *(v18 + *(*(v0 + 328) + 28));
        *(v0 + 392) = v19;
        if (v19 == v11)
        {
          v47 = *(v0 + 184);
          v46 = *(v0 + 192);
          *(v0 + 160) = v11;
          *(v0 + 168) = &protocol witness table for Data;
          *(v0 + 136) = v47;
          *(v0 + 144) = v46;
          outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v9, v8);
          outlined copy of Data._Representation(v47, v46);
          v51 = (v9 + *v9);
          v48 = swift_task_alloc();
          *(v0 + 400) = v48;
          *v48 = v0;
          v48[1] = Transferable.init(_:_:);
          v34 = v0 + 96;
          v35 = v0 + 136;
          goto LABEL_14;
        }

        v20 = v18;

        v10 = v20;
        if (v19 != v7)
        {
          continue;
        }

        break;
      }
    }

    v21 = *(v0 + 280);
    v22 = *(v0 + 272);
    v50 = v5;
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);
    v25 = *(v0 + 240);
    v49 = *(v0 + 264);
    v26 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    UUID.init()();
    UUID.uuidString.getter();
    (*(v24 + 8))(v23, v25);
    URL.appendingPathComponent(_:isDirectory:)();

    v27 = *(v22 + 8);
    *(v0 + 416) = v27;
    *(v0 + 424) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v21, v49);
    Data.write(to:options:)();
    if (v50)
    {
    }

    v28 = *(v0 + 376);
    v29 = *(v0 + 280);
    v31 = *(v0 + 224);
    v30 = *(v0 + 232);
    (*(*(v0 + 272) + 16))(v29, *(v0 + 288), *(v0 + 264));
    ReceivedTransferredFile.init(file:isOriginalFile:)(v29, 1, v30);
    *(v0 + 80) = v31;
    *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    outlined init with copy of ResolvedTransferRepresentation(v30, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
    v51 = (v28 + *v28);
    v33 = swift_task_alloc();
    *(v0 + 432) = v33;
    *v33 = v0;
    v33[1] = Transferable.init(_:_:);
    v34 = v0 + 16;
    v35 = v0 + 56;
LABEL_14:

    return v51(v34, v35);
  }

  else
  {
    v36 = *(v0 + 376);
    v37 = *(v0 + 384);
    v38 = *(v0 + 344);
    v40 = *(v0 + 192);
    v39 = *(v0 + 200);
    v41 = *(v0 + 184);

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v36, v37);
    outlined consume of Data._Representation(v41, v40);
    outlined destroy of UTType?(v39, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of ResolvedTransferRepresentation(v38, type metadata accessor for ResolvedTransferRepresentation);
    (*(v4 + 32))(*(v0 + 176), *(v0 + 320), *(v0 + 208));

    v42 = *(v0 + 8);
LABEL_19:

    return v42();
  }
}

{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v3 = Transferable.init(_:_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = Transferable.init(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 376), *(v0 + 384));
  outlined destroy of ResolvedTransferRepresentation(v6, type metadata accessor for ReceivedTransferredFile);
  v1(v4, v5);
  outlined destroy of ResolvedTransferRepresentation(v2, type metadata accessor for ResolvedTransferRepresentation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v8 = swift_dynamicCast();
  v9 = *(v7 - 8);
  (*(v9 + 56))(v3, v8 ^ 1u, 1, v7);
  if ((*(v9 + 48))(v3, 1, v7) != 1)
  {
    v17 = *(v0 + 192);
    v18 = *(v0 + 184);
    outlined destroy of UTType?(*(v0 + 200), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined consume of Data._Representation(v18, v17);

    (*(v9 + 32))(*(v0 + 176), *(v0 + 312), *(v0 + 208));

    v16 = *(v0 + 8);
    goto LABEL_5;
  }

  v10 = *(v0 + 440);
  result = (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  v12 = *(v0 + 368) + 1;
  if (v12 == *(v0 + 360))
  {
LABEL_3:

    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 184);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v15, v13);
    outlined destroy of UTType?(v14, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v16 = *(v0 + 8);
LABEL_5:

    return v16();
  }

  v19 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 368) = v12;
    v20 = *(v0 + 352);
    if (v12 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    outlined init with copy of ResolvedTransferRepresentation(v20 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v12, v21, type metadata accessor for ResolvedTransferRepresentation);
    v23 = (v21 + *(v22 + 36));
    v24 = *v23;
    *(v0 + 376) = *v23;
    v25 = v23[1];
    *(v0 + 384) = v25;
    v26 = *(v0 + 344);
    if (v24)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 344), type metadata accessor for ResolvedTransferRepresentation);
LABEL_10:
    v12 = *(v0 + 368) + 1;
    if (v12 == *(v0 + 360))
    {
      goto LABEL_3;
    }
  }

  v27 = *(v26 + *(*(v0 + 328) + 28));
  *(v0 + 392) = v27;
  if (v27 == v19)
  {
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    *(v0 + 160) = v19;
    *(v0 + 168) = &protocol witness table for Data;
    *(v0 + 136) = v30;
    *(v0 + 144) = v29;
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v24, v25);
    outlined copy of Data._Representation(v30, v29);
    v48 = (v24 + *v24);
    v31 = swift_task_alloc();
    *(v0 + 400) = v31;
    *v31 = v0;
    v31[1] = Transferable.init(_:_:);
    v32 = v0 + 96;
    v33 = v0 + 136;
    goto LABEL_20;
  }

  v28 = type metadata accessor for SentTransferredFile(0);

  if (v27 != v28)
  {
    outlined destroy of ResolvedTransferRepresentation(v26, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v24, v25);
    goto LABEL_10;
  }

  v34 = *(v0 + 280);
  v35 = *(v0 + 272);
  v47 = *(v0 + 264);
  v36 = *(v0 + 248);
  v37 = *(v0 + 256);
  v38 = *(v0 + 240);
  v39 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v36 + 8))(v37, v38);
  URL.appendingPathComponent(_:isDirectory:)();

  v40 = *(v35 + 8);
  *(v0 + 416) = v40;
  *(v0 + 424) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v34, v47);
  Data.write(to:options:)();
  if (v10)
  {
  }

  v41 = *(v0 + 376);
  v42 = *(v0 + 280);
  v44 = *(v0 + 224);
  v43 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v42, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v42, 1, v43);
  *(v0 + 80) = v44;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v43, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v48 = (v41 + *v41);
  v46 = swift_task_alloc();
  *(v0 + 432) = v46;
  *v46 = v0;
  v46[1] = Transferable.init(_:_:);
  v32 = v0 + 16;
  v33 = v0 + 56;
LABEL_20:

  return v48(v32, v33);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
  v3 = type metadata accessor for SentTransferredFile(0);
  if (*(v0 + 392) != v3)
  {
    v4 = v3;
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 344);
    v8 = MEMORY[0x277CC9318];
    while (2)
    {
      outlined destroy of ResolvedTransferRepresentation(v7, type metadata accessor for ResolvedTransferRepresentation);
      for (result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v6, v5); ; result = outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation))
      {
        v10 = *(v0 + 368) + 1;
        if (v10 == *(v0 + 360))
        {

          v33 = *(v0 + 192);
          v34 = *(v0 + 200);
          v35 = *(v0 + 184);
          type metadata accessor for TransferableError(0);
          lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined consume of Data._Representation(v35, v33);
          outlined destroy of UTType?(v34, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

          v36 = *(v0 + 8);

          return v36();
        }

        *(v0 + 368) = v10;
        v11 = *(v0 + 352);
        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v0 + 344);
        v13 = *(v0 + 328);
        outlined init with copy of ResolvedTransferRepresentation(v11 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v10, v12, type metadata accessor for ResolvedTransferRepresentation);
        v14 = (v12 + *(v13 + 36));
        v6 = *v14;
        *(v0 + 376) = *v14;
        v5 = v14[1];
        *(v0 + 384) = v5;
        v15 = *(v0 + 344);
        if (v6)
        {
          break;
        }
      }

      v16 = *(v15 + *(*(v0 + 328) + 28));
      *(v0 + 392) = v16;
      if (v16 == v8)
      {
        v38 = *(v0 + 184);
        v37 = *(v0 + 192);
        *(v0 + 160) = v8;
        *(v0 + 168) = &protocol witness table for Data;
        *(v0 + 136) = v38;
        *(v0 + 144) = v37;
        outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v6, v5);
        outlined copy of Data._Representation(v38, v37);
        v41 = (v6 + *v6);
        v39 = swift_task_alloc();
        *(v0 + 400) = v39;
        *v39 = v0;
        v39[1] = Transferable.init(_:_:);
        v31 = v0 + 96;
        v32 = v0 + 136;
        goto LABEL_11;
      }

      v17 = v15;

      v7 = v17;
      if (v16 != v4)
      {
        continue;
      }

      break;
    }
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 272);
  v21 = *(v0 + 248);
  v20 = *(v0 + 256);
  v22 = *(v0 + 240);
  v40 = *(v0 + 264);
  v23 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v21 + 8))(v20, v22);
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = *(v19 + 8);
  *(v0 + 416) = v24;
  *(v0 + 424) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v18, v40);
  Data.write(to:options:)();
  v25 = *(v0 + 376);
  v26 = *(v0 + 280);
  v28 = *(v0 + 224);
  v27 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v26, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v26, 1, v27);
  *(v0 + 80) = v28;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v27, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v41 = (v25 + *v25);
  v30 = swift_task_alloc();
  *(v0 + 432) = v30;
  *v30 = v0;
  v30[1] = Transferable.init(_:_:);
  v31 = v0 + 16;
  v32 = v0 + 56;
LABEL_11:

  return v41(v31, v32);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 376), *(v0 + 384));
  outlined destroy of ResolvedTransferRepresentation(v6, type metadata accessor for ReceivedTransferredFile);
  v1(v4, v5);
  outlined destroy of ResolvedTransferRepresentation(v2, type metadata accessor for ResolvedTransferRepresentation);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  result = (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  v9 = *(v0 + 368) + 1;
  if (v9 == *(v0 + 360))
  {
LABEL_2:

    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v12, v10);
    outlined destroy of UTType?(v11, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v13 = *(v0 + 8);

    return v13();
  }

  v14 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 368) = v9;
    v15 = *(v0 + 352);
    if (v9 >= *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = *(v0 + 344);
    v17 = *(v0 + 328);
    outlined init with copy of ResolvedTransferRepresentation(v15 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v9, v16, type metadata accessor for ResolvedTransferRepresentation);
    v18 = (v16 + *(v17 + 36));
    v19 = *v18;
    *(v0 + 376) = *v18;
    v20 = v18[1];
    *(v0 + 384) = v20;
    v21 = *(v0 + 344);
    if (v19)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 344), type metadata accessor for ResolvedTransferRepresentation);
LABEL_7:
    v9 = *(v0 + 368) + 1;
    if (v9 == *(v0 + 360))
    {
      goto LABEL_2;
    }
  }

  v22 = *(v21 + *(*(v0 + 328) + 28));
  *(v0 + 392) = v22;
  if (v22 == v14)
  {
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    *(v0 + 160) = v14;
    *(v0 + 168) = &protocol witness table for Data;
    *(v0 + 136) = v25;
    *(v0 + 144) = v24;
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v19, v20);
    outlined copy of Data._Representation(v25, v24);
    v43 = (v19 + *v19);
    v26 = swift_task_alloc();
    *(v0 + 400) = v26;
    *v26 = v0;
    v26[1] = Transferable.init(_:_:);
    v27 = v0 + 96;
    v28 = v0 + 136;
    goto LABEL_15;
  }

  v23 = type metadata accessor for SentTransferredFile(0);

  if (v22 != v23)
  {
    outlined destroy of ResolvedTransferRepresentation(v21, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v19, v20);
    goto LABEL_7;
  }

  v29 = *(v0 + 280);
  v30 = *(v0 + 272);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 240);
  v42 = *(v0 + 264);
  v34 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v32 + 8))(v31, v33);
  URL.appendingPathComponent(_:isDirectory:)();

  v35 = *(v30 + 8);
  *(v0 + 416) = v35;
  *(v0 + 424) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v29, v42);
  Data.write(to:options:)();
  v36 = *(v0 + 376);
  v37 = *(v0 + 280);
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v37, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v37, 1, v38);
  *(v0 + 80) = v39;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v38, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v43 = (v36 + *v36);
  v41 = swift_task_alloc();
  *(v0 + 432) = v41;
  *v41 = v0;
  v41[1] = Transferable.init(_:_:);
  v27 = v0 + 16;
  v28 = v0 + 56;
LABEL_15:

  return v43(v27, v28);
}

uint64_t Transferable.exported(as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UTType();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for ResolvedTransferRepresentation(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.exported(as:), 0, 0);
}

uint64_t Transferable.exported(as:)()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];
  outlined init with copy of UTType?(v0[2], v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) != 1)
  {
    v14 = v0[15];
    v15 = v0[6];
    v16 = v0[7];
    (*(v16 + 32))(v14, v0[14], v15);
    (*(v16 + 56))(v14, 0, 1, v15);
LABEL_12:
    v25 = v0[13];
    v26 = v0[6];
    outlined init with copy of UTType?(v0[15], v25, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v4(v25, 1, v26) == 1)
    {
      outlined destroy of UTType?(v0[13], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
      outlined destroy of UTType?(v0[15], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

      v28 = v0[1];

      return v28();
    }

    else
    {
      (*(v0[7] + 32))(v0[8], v0[13], v0[6]);
      v29 = swift_task_alloc();
      v0[16] = v29;
      *v29 = v0;
      v29[1] = Transferable.exported(as:);
      v30 = v0[8];
      v31 = v0[4];
      v32 = v0[3];

      return Transferable.data(contentType:)(v30, v32, v31);
    }
  }

  result = static Transferable.resolvedRepresentations()(v0[3], v0[4]);
  v6 = result;
  v7 = *(result + 16);
  if (!v7)
  {
LABEL_7:

    v13 = 1;
LABEL_10:
    v23 = v0[14];
    v24 = v0[6];
    (*(v0[7] + 56))(v0[15], v13, 1, v24);
    if (v4(v23, 1, v24) != 1)
    {
      outlined destroy of UTType?(v0[14], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    goto LABEL_12;
  }

  v8 = 0;
  v10 = v0[9];
  v9 = v0[10];
  v11 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  while (v8 < *(v6 + 16))
  {
    v12 = v0[11];
    outlined init with copy of ResolvedTransferRepresentation(v11 + *(v9 + 72) * v8, v12, type metadata accessor for ResolvedTransferRepresentation);
    if (*(v12 + *(v10 + 32)))
    {
      v17 = v0[15];
      v19 = v0[11];
      v18 = v0[12];
      v20 = v0[9];
      v21 = v0[6];
      v22 = v0[7];

      outlined init with take of ResolvedTransferRepresentation(v19, v18, type metadata accessor for ResolvedTransferRepresentation);
      (*(v22 + 16))(v17, v18 + *(v20 + 20), v21);
      outlined destroy of ResolvedTransferRepresentation(v18, type metadata accessor for ResolvedTransferRepresentation);
      v13 = 0;
      goto LABEL_10;
    }

    ++v8;
    result = outlined destroy of ResolvedTransferRepresentation(v0[11], type metadata accessor for ResolvedTransferRepresentation);
    if (v7 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = v0[15];
  (*(v0[7] + 8))(v0[8], v0[6]);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v2 = v0[1];
  v4 = v0[18];
  v3 = v0[19];

  return v2(v3, v4);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);
  outlined destroy of UTType?(v0[15], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v1 = v0[1];

  return v1();
}

uint64_t Transferable.exported(as:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = Transferable.exported(as:);
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = Transferable.exported(as:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t Transferable.data(contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.data(contentType:);

  return Transferable._data(contentType:)(a1, a2, a3);
}

uint64_t Transferable.data(contentType:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

unint64_t static Transferable.exportedFileContentTypes(visibility:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v11 = static Transferable.resolvedRepresentations()(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMd, &_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMR);
  LazyFilterSequence.filter(_:)();
  *(swift_allocObject() + 16) = v8;
  LazyFilterSequence.filter(_:)();

  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(v11, a4, 0);

  return v9;
}

uint64_t Transferable.file(contentType:fileHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = Transferable.file(contentType:fileHandler:);

  return Transferable._file(contentType:fileHandler:)(a1, a2, a3, a4, a5);
}

uint64_t Transferable.file(contentType:fileHandler:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Transferable._file(contentType:fileHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for Logger();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v10 = type metadata accessor for ResolvedTransferRepresentation(0);
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable._file(contentType:fileHandler:), 0, 0);
}

uint64_t Transferable._file(contentType:fileHandler:)()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = static Transferable.resolvedRepresentations(for:)(v1, v3, v2);
  *(v0 + 320) = v7;
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v8 = *(v7 + 16);
  *(v0 + 328) = v8;
  if (v8)
  {
    v9 = *(v0 + 272);
    v10 = type metadata accessor for SentTransferredFile(0);
    v11 = 0;
    *(v0 + 336) = v10;
    *(v0 + 76) = *(v9 + 80);
    v12 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 344) = v11;
      v13 = *(v0 + 320);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
      }

      v14 = *(v0 + 336);
      v15 = *(v0 + 304);
      v16 = *(v0 + 264);
      outlined init with copy of ResolvedTransferRepresentation(v13 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v11, v15, type metadata accessor for ResolvedTransferRepresentation);
      v17 = *(v15 + *(v16 + 28));
      if (v17 == v14)
      {
        break;
      }

      if (v17 == v12)
      {
        v29 = swift_task_alloc();
        *(v0 + 384) = v29;
        *v29 = v0;
        v29[1] = Transferable._file(contentType:fileHandler:);
        v30 = *(v0 + 304);
        v31 = *(v0 + 120);
        v32 = *(v0 + 112);

        return Transferable.data(from:)(v30, v32, v31);
      }

      outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
      v11 = *(v0 + 344) + 1;
      if (v11 == *(v0 + 328))
      {
        goto LABEL_7;
      }
    }

    v20 = *(v0 + 256);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v22 + 56);
    *(v0 + 352) = v23;
    *(v0 + 360) = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v23(v20, 1, 1, v21);
    v24 = swift_task_alloc();
    *(v0 + 368) = v24;
    *v24 = v0;
    v24[1] = Transferable._file(contentType:fileHandler:);
    v25 = *(v0 + 304);
    v26 = *(v0 + 248);
    v27 = *(v0 + 120);
    v28 = *(v0 + 112);

    return Transferable.url(from:)(v26, v25, v28, v27);
  }

  else
  {
LABEL_7:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = Transferable._file(contentType:fileHandler:);
  }

  else
  {
    v2 = Transferable._file(contentType:fileHandler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 200);
  outlined destroy of UTType?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1(v2, 0, 1, v4);
  outlined init with take of URL?(v2, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(v0 + 240);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  outlined init with copy of UTType?(*(v0 + 256), v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  if (v8 != 1)
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v0 + 96);

    (*(v22 + 32))(v20, v10, v21);
    v23(v20);
    (*(v22 + 8))(v20, v21);
    outlined destroy of UTType?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);

    v19 = *(v0 + 8);
    goto LABEL_10;
  }

  v11 = *(v0 + 304);
  outlined destroy of UTType?(*(v0 + 256), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v11, type metadata accessor for ResolvedTransferRepresentation);
  outlined destroy of UTType?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(v0 + 344) + 1;
  if (v12 == *(v0 + 328))
  {
LABEL_8:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = *(v0 + 8);
LABEL_10:

    return v19();
  }

  v13 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v12;
    v14 = *(v0 + 320);
    if (v12 >= *(v14 + 16))
    {
      __break(1u);
    }

    v15 = *(v0 + 336);
    v16 = *(v0 + 304);
    v17 = *(v0 + 264);
    outlined init with copy of ResolvedTransferRepresentation(v14 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v12, v16, type metadata accessor for ResolvedTransferRepresentation);
    v18 = *(v16 + *(v17 + 28));
    if (v18 == v15)
    {
      break;
    }

    if (v18 == v13)
    {
      v34 = swift_task_alloc();
      *(v0 + 384) = v34;
      *v34 = v0;
      v34[1] = Transferable._file(contentType:fileHandler:);
      v35 = *(v0 + 304);
      v36 = *(v0 + 120);
      v37 = *(v0 + 112);

      return Transferable.data(from:)(v35, v37, v36);
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
    v12 = *(v0 + 344) + 1;
    if (v12 == *(v0 + 328))
    {
      goto LABEL_8;
    }
  }

  v25 = *(v0 + 256);
  v26 = *(v0 + 200);
  v27 = *(v0 + 208);
  v28 = *(v27 + 56);
  *(v0 + 352) = v28;
  *(v0 + 360) = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v28(v25, 1, 1, v26);
  v29 = swift_task_alloc();
  *(v0 + 368) = v29;
  *v29 = v0;
  v29[1] = Transferable._file(contentType:fileHandler:);
  v30 = *(v0 + 304);
  v31 = *(v0 + 248);
  v32 = *(v0 + 120);
  v33 = *(v0 + 112);

  return Transferable.url(from:)(v31, v30, v33, v32);
}

{
  v93 = v0;
  v92[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    outlined copy of Data._Representation(*(v0 + 392), *(v0 + 400));
    goto LABEL_5;
  }

  v4 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 56) = *v1;
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 128);
  *(v0 + 64) = v3;
  *(v0 + 72) = v2 & 1;
  v8 = *(v0 + 112);
  *(v0 + 40) = v8;
  v9 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v7, v9);
  outlined copy of Data._Representation(v6, v5);
  outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v4, v3, v2);
  ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v0 + 16);
  v12 = v11;
  outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  if (!v12)
  {
LABEL_5:
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 176);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v14 + 8))(v13, v15);
  }

  v90 = *(v0 + 408);
  v16 = *(v0 + 216);
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();

  v20 = *(v17 + 8);
  v20(v16, v18);
  v21 = v90;
  Data.write(to:options:)();
  v22 = *(v0 + 392);
  v23 = *(v0 + 400);
  if (!v90)
  {
    v48 = *(v0 + 224);
    v49 = *(v0 + 96);
    outlined consume of Data._Representation(*(v0 + 392), *(v0 + 400));

    v49(v48);
    v50 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v51);
    v53 = v52;
    *(v0 + 80) = 0;
    LODWORD(v48) = [v50 removeItemAtURL:v52 error:v0 + 80];

    v54 = *(v0 + 80);
    v55 = *(v0 + 392);
    v56 = *(v0 + 400);
    if (v48)
    {
      v57 = v54;
      outlined consume of Data._Representation(v55, v56);
    }

    else
    {
      v69 = v54;
      v70 = _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v55, v56);
    }

    v20(*(v0 + 224), *(v0 + 200));
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);

    v68 = *(v0 + 8);
    goto LABEL_21;
  }

  v24 = v20;
  v25 = *(v0 + 296);
  v26 = *(v0 + 304);
  v27 = *(v0 + 168);
  v28 = *(v0 + 136);
  v29 = *(v0 + 144);
  v24(*(v0 + 224), *(v0 + 200));
  outlined consume of Data._Representation(v22, v23);
  v30 = logger.unsafeMutableAddressor();
  (*(v29 + 16))(v27, v30, v28);
  outlined init with copy of ResolvedTransferRepresentation(v26, v25, type metadata accessor for ResolvedTransferRepresentation);
  v31 = v90;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 400);
  v91 = *(v0 + 392);
  v36 = *(v0 + 296);
  v37 = *(v0 + 304);
  if (v34)
  {
    v87 = *(v0 + 144);
    v88 = *(v0 + 136);
    v89 = *(v0 + 168);
    v86 = *(v0 + 304);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v35;
    v40 = swift_slowAlloc();
    v92[0] = v40;
    *v38 = 136315394;
    v41 = UTType.identifier.getter();
    v43 = v42;
    outlined destroy of ResolvedTransferRepresentation(v36, type metadata accessor for ResolvedTransferRepresentation);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v92);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2112;
    v45 = v21;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v46;
    *v39 = v46;
    _os_log_impl(&dword_20E3BF000, v32, v33, "Error writing data for type identifier %s: %@", v38, 0x16u);
    outlined destroy of UTType?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x20F32E080](v40, -1, -1);
    MEMORY[0x20F32E080](v38, -1, -1);

    outlined consume of Data._Representation(v91, v85);
    (*(v87 + 8))(v89, v88);
    v47 = v86;
  }

  else
  {
    v58 = *(v0 + 168);
    v59 = *(v0 + 136);
    v60 = *(v0 + 144);

    outlined consume of Data._Representation(v91, v35);
    outlined destroy of ResolvedTransferRepresentation(v36, type metadata accessor for ResolvedTransferRepresentation);
    (*(v60 + 8))(v58, v59);
    v47 = v37;
  }

  outlined destroy of ResolvedTransferRepresentation(v47, type metadata accessor for ResolvedTransferRepresentation);
  v61 = *(v0 + 344) + 1;
  if (v61 == *(v0 + 328))
  {
LABEL_18:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v68 = *(v0 + 8);
LABEL_21:

    return v68();
  }

  v62 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v61;
    v63 = *(v0 + 320);
    if (v61 >= *(v63 + 16))
    {
      __break(1u);
    }

    v64 = *(v0 + 336);
    v65 = *(v0 + 304);
    v66 = *(v0 + 264);
    outlined init with copy of ResolvedTransferRepresentation(v63 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v61, v65, type metadata accessor for ResolvedTransferRepresentation);
    v67 = *(v65 + *(v66 + 28));
    if (v67 == v64)
    {
      break;
    }

    if (v67 == v62)
    {
      v81 = swift_task_alloc();
      *(v0 + 384) = v81;
      *v81 = v0;
      v81[1] = Transferable._file(contentType:fileHandler:);
      v82 = *(v0 + 304);
      v83 = *(v0 + 120);
      v84 = *(v0 + 112);

      return Transferable.data(from:)(v82, v84, v83);
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
    v61 = *(v0 + 344) + 1;
    if (v61 == *(v0 + 328))
    {
      goto LABEL_18;
    }
  }

  v72 = *(v0 + 256);
  v73 = *(v0 + 200);
  v74 = *(v0 + 208);
  v75 = *(v74 + 56);
  *(v0 + 352) = v75;
  *(v0 + 360) = (v74 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v75(v72, 1, 1, v73);
  v76 = swift_task_alloc();
  *(v0 + 368) = v76;
  *v76 = v0;
  v76[1] = Transferable._file(contentType:fileHandler:);
  v77 = *(v0 + 304);
  v78 = *(v0 + 248);
  v79 = *(v0 + 120);
  v80 = *(v0 + 112);

  return Transferable.url(from:)(v78, v77, v80, v79);
}

uint64_t Transferable._file(contentType:fileHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v5 = Transferable._file(contentType:fileHandler:);
  }

  else
  {
    v5 = Transferable._file(contentType:fileHandler:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t Transferable._file(contentType:fileHandler:)(uint64_t a1)
{
  v64 = v1;
  v63[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 376);
  v3 = *(v1 + 304);
  v4 = *(v1 + 288);
  v5 = *(v1 + 160);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = logger.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);
  outlined init with copy of ResolvedTransferRepresentation(v3, v4, type metadata accessor for ResolvedTransferRepresentation);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 376);
  v14 = *(v1 + 288);
  if (v12)
  {
    v60 = *(v1 + 144);
    v61 = *(v1 + 136);
    v62 = *(v1 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v63[0] = v17;
    *v15 = 136315394;
    v18 = UTType.identifier.getter();
    v20 = v19;
    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v63);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_20E3BF000, v10, v11, "Error loading URL for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v60 + 8))(v62, v61);
  }

  else
  {
    v24 = *(v1 + 160);
    v25 = *(v1 + 136);
    v26 = *(v1 + 144);

    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    (*(v26 + 8))(v24, v25);
  }

  v27 = *(v1 + 240);
  v28 = *(v1 + 200);
  v29 = *(v1 + 208);
  outlined init with copy of UTType?(*(v1 + 256), v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    v40 = *(v1 + 256);
    v41 = *(v1 + 232);
    v42 = *(v1 + 240);
    v43 = *(v1 + 200);
    v44 = *(v1 + 208);
    v45 = *(v1 + 96);

    (*(v44 + 32))(v41, v42, v43);
    v45(v41);
    (*(v44 + 8))(v41, v43);
    outlined destroy of UTType?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of ResolvedTransferRepresentation(*(v1 + 304), type metadata accessor for ResolvedTransferRepresentation);

    v39 = *(v1 + 8);
    goto LABEL_13;
  }

  v30 = *(v1 + 304);
  v31 = *(v1 + 240);
  outlined destroy of UTType?(*(v1 + 256), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v30, type metadata accessor for ResolvedTransferRepresentation);
  outlined destroy of UTType?(v31, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = *(v1 + 344) + 1;
  if (v32 == *(v1 + 328))
  {
LABEL_11:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v39 = *(v1 + 8);
LABEL_13:

    return v39();
  }

  v33 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v1 + 344) = v32;
    v34 = *(v1 + 320);
    if (v32 >= *(v34 + 16))
    {
      __break(1u);
    }

    v35 = *(v1 + 336);
    v36 = *(v1 + 304);
    v37 = *(v1 + 264);
    outlined init with copy of ResolvedTransferRepresentation(v34 + ((*(v1 + 76) + 32) & ~*(v1 + 76)) + *(*(v1 + 272) + 72) * v32, v36, type metadata accessor for ResolvedTransferRepresentation);
    v38 = *(v36 + *(v37 + 28));
    if (v38 == v35)
    {
      break;
    }

    if (v38 == v33)
    {
      v56 = swift_task_alloc();
      *(v1 + 384) = v56;
      *v56 = v1;
      v56[1] = Transferable._file(contentType:fileHandler:);
      v57 = *(v1 + 304);
      v58 = *(v1 + 120);
      v59 = *(v1 + 112);

      return Transferable.data(from:)(v57, v59, v58);
    }

    outlined destroy of ResolvedTransferRepresentation(*(v1 + 304), type metadata accessor for ResolvedTransferRepresentation);
    v32 = *(v1 + 344) + 1;
    if (v32 == *(v1 + 328))
    {
      goto LABEL_11;
    }
  }

  v47 = *(v1 + 256);
  v48 = *(v1 + 200);
  v49 = *(v1 + 208);
  v50 = *(v49 + 56);
  *(v1 + 352) = v50;
  *(v1 + 360) = (v49 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v50(v47, 1, 1, v48);
  v51 = swift_task_alloc();
  *(v1 + 368) = v51;
  *v51 = v1;
  v51[1] = Transferable._file(contentType:fileHandler:);
  v52 = *(v1 + 304);
  v53 = *(v1 + 248);
  v54 = *(v1 + 120);
  v55 = *(v1 + 112);

  return Transferable.url(from:)(v53, v52, v55, v54);
}

{
  v56 = v1;
  v55[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 408);
  v3 = *(v1 + 304);
  v4 = *(v1 + 280);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 136);
  v8 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v8, v7);
  outlined init with copy of ResolvedTransferRepresentation(v3, v4, type metadata accessor for ResolvedTransferRepresentation);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 408);
  v14 = *(v1 + 304);
  v15 = *(v1 + 280);
  if (v12)
  {
    v52 = *(v1 + 144);
    v53 = *(v1 + 136);
    v54 = *(v1 + 152);
    v51 = *(v1 + 304);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v55[0] = v18;
    *v16 = 136315394;
    v19 = UTType.identifier.getter();
    v21 = v20;
    outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v55);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    v23 = v13;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v24;
    *v17 = v24;
    _os_log_impl(&dword_20E3BF000, v10, v11, "Error loading data for type identifier %s: %@", v16, 0x16u);
    outlined destroy of UTType?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x20F32E080](v18, -1, -1);
    MEMORY[0x20F32E080](v16, -1, -1);

    (*(v52 + 8))(v54, v53);
    v25 = v51;
  }

  else
  {
    v27 = *(v1 + 144);
    v26 = *(v1 + 152);
    v28 = *(v1 + 136);

    outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation);
    (*(v27 + 8))(v26, v28);
    v25 = v14;
  }

  outlined destroy of ResolvedTransferRepresentation(v25, type metadata accessor for ResolvedTransferRepresentation);
  v29 = *(v1 + 344) + 1;
  if (v29 == *(v1 + 328))
  {
LABEL_10:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v36 = *(v1 + 8);

    return v36();
  }

  else
  {
    v30 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v1 + 344) = v29;
      v31 = *(v1 + 320);
      if (v29 >= *(v31 + 16))
      {
        __break(1u);
      }

      v32 = *(v1 + 336);
      v33 = *(v1 + 304);
      v34 = *(v1 + 264);
      outlined init with copy of ResolvedTransferRepresentation(v31 + ((*(v1 + 76) + 32) & ~*(v1 + 76)) + *(*(v1 + 272) + 72) * v29, v33, type metadata accessor for ResolvedTransferRepresentation);
      v35 = *(v33 + *(v34 + 28));
      if (v35 == v32)
      {
        break;
      }

      if (v35 == v30)
      {
        v47 = swift_task_alloc();
        *(v1 + 384) = v47;
        *v47 = v1;
        v47[1] = Transferable._file(contentType:fileHandler:);
        v48 = *(v1 + 304);
        v49 = *(v1 + 120);
        v50 = *(v1 + 112);

        return Transferable.data(from:)(v48, v50, v49);
      }

      outlined destroy of ResolvedTransferRepresentation(*(v1 + 304), type metadata accessor for ResolvedTransferRepresentation);
      v29 = *(v1 + 344) + 1;
      if (v29 == *(v1 + 328))
      {
        goto LABEL_10;
      }
    }

    v38 = *(v1 + 256);
    v39 = *(v1 + 200);
    v40 = *(v1 + 208);
    v41 = *(v40 + 56);
    *(v1 + 352) = v41;
    *(v1 + 360) = (v40 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v41(v38, 1, 1, v39);
    v42 = swift_task_alloc();
    *(v1 + 368) = v42;
    *v42 = v1;
    v42[1] = Transferable._file(contentType:fileHandler:);
    v43 = *(v1 + 304);
    v44 = *(v1 + 248);
    v45 = *(v1 + 120);
    v46 = *(v1 + 112);

    return Transferable.url(from:)(v44, v43, v46, v45);
  }
}

uint64_t Transferable.init(data:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(data:contentType:), 0, 0);
}

uint64_t Transferable.init(data:contentType:)()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for UTType();
  v0[10] = v5;
  v6 = *(v5 - 8);
  v0[11] = v6;
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  outlined copy of Data._Representation(v4, v3);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = Transferable.init(data:contentType:);
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  return Transferable.init(_:_:)(v13, v11, v12, v8, v9, v10);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = Transferable.init(data:contentType:);
  }

  else
  {
    v2 = Transferable.init(data:contentType:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t Transferable._data(contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for Logger();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for SentTransferredFile(0);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for ResolvedTransferRepresentation(0);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable._data(contentType:), 0, 0);
}

uint64_t Transferable._data(contentType:)()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v8 = static Transferable.resolvedRepresentations(for:)(v1, v3, v2);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v47 = *(v0 + 96);

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    v7(v48, v47, v5);
    goto LABEL_39;
  }

  v62 = v7;
  v10 = 0;
  v11 = *(v0 + 224);
  v63 = v5;
  v64 = *(v0 + 216);
  v12 = MEMORY[0x277D84F90];
  while (v10 < *(v8 + 16))
  {
    v13 = *(v0 + 272);
    v14 = *(v11 + 80);
    *(v0 + 384) = v14;
    v15 = (v14 + 32) & ~v14;
    v16 = *(v11 + 72);
    *(v0 + 296) = v16;
    outlined init with copy of ResolvedTransferRepresentation(v8 + v15 + v16 * v10, v13, type metadata accessor for ResolvedTransferRepresentation);
    v17 = *(v0 + 272);
    if (*(v13 + *(v64 + 32)))
    {
      outlined init with take of ResolvedTransferRepresentation(v17, *(v0 + 264), type metadata accessor for ResolvedTransferRepresentation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      v20 = *(v0 + 264);
      *(v12 + 16) = v19 + 1;
      outlined init with take of ResolvedTransferRepresentation(v20, v12 + v15 + v19 * v16, type metadata accessor for ResolvedTransferRepresentation);
    }

    else
    {
      outlined destroy of ResolvedTransferRepresentation(v17, type metadata accessor for ResolvedTransferRepresentation);
    }

    ++v10;
    *(v0 + 304) = v12;
    if (v9 == v10)
    {

      v22 = *(v12 + 16);
      *(v0 + 288) = v22;
      if (v22)
      {
        v23 = 0;
        v24 = MEMORY[0x277CC9318];
        while (1)
        {
          *(v0 + 312) = v23;
          v25 = *(v0 + 304);
          if (v23 >= *(v25 + 16))
          {
            __break(1u);
            return result;
          }

          v26 = *(v0 + 256);
          v27 = *(v0 + 216);
          outlined init with copy of ResolvedTransferRepresentation(v25 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v23, v26, type metadata accessor for ResolvedTransferRepresentation);
          v28 = *(v26 + *(v27 + 28));
          if (v28 == v24)
          {
            v51 = swift_task_alloc();
            *(v0 + 320) = v51;
            *v51 = v0;
            v51[1] = Transferable._data(contentType:);
            v52 = *(v0 + 256);
            v53 = *(v0 + 112);
            v54 = *(v0 + 104);

            return Transferable.data(from:)(v52, v54, v53);
          }

          v29 = *(v0 + 256);
          if (v28 == *(v0 + 168))
          {
            v30 = *(v0 + 208);
            v31 = *(v0 + 216);
            v32 = *(v0 + 176);
            v33 = *(v32 + 56);
            *(v0 + 352) = v33;
            *(v0 + 360) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
            v33(v30, 1, 1);
            v34 = *(v29 + *(v31 + 32));
            if (v34)
            {
              v56 = *(v0 + 120);
              v57 = *(v0 + 104);
              *(v0 + 80) = v57;
              v58 = v57;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
              (*(*(v58 - 8) + 16))(boxed_opaque_existential_1, v56, v58);
              v65 = (v34 + *v34);
              v60 = swift_task_alloc();
              *(v0 + 368) = v60;
              *v60 = v0;
              v60[1] = Transferable._data(contentType:);

              return v65(v0 + 16, v0 + 56);
            }

            v35 = *(v0 + 200);
            v36 = *(v0 + 168);
            outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
            *(v0 + 48) = 0;
            outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
            (v33)(v35, 1, 1, v36);
            outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            v37 = *(v0 + 192);
            v38 = *(v0 + 168);
            v39 = *(v0 + 176);
            outlined init with copy of UTType?(*(v0 + 208), v37, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            if ((*(v39 + 48))(v37, 1, v38) != 1)
            {
              outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
              v10 = Data.init(contentsOf:options:)();
              v12 = v42;
              v43 = *(v0 + 208);
              outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
              outlined destroy of UTType?(v43, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
              v44 = v12 >> 62;
              if ((v12 >> 62) > 1)
              {
                if (v44 != 2)
                {
                  outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
LABEL_32:
                  result = outlined consume of Data._Representation(v10, v12);
                  goto LABEL_15;
                }

                v45 = *(v10 + 16);
                v46 = *(v10 + 24);
              }

              else
              {
                if (!v44)
                {
                  outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
                  if ((v12 & 0xFF000000000000) != 0)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_32;
                }

                v45 = v10;
                v46 = v10 >> 32;
              }

              outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
              if (v45 != v46)
              {
                goto LABEL_46;
              }

              goto LABEL_32;
            }

            v40 = *(v0 + 256);
            v41 = *(v0 + 192);
            outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            outlined destroy of ResolvedTransferRepresentation(v40, type metadata accessor for ResolvedTransferRepresentation);
            result = outlined destroy of UTType?(v41, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
          }

          else
          {
            result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          }

LABEL_15:
          v23 = *(v0 + 312) + 1;
          if (v23 == *(v0 + 288))
          {

            type metadata accessor for TransferableError(0);
            lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
            swift_allocError();
            goto LABEL_39;
          }
        }
      }

      v49 = *(v0 + 96);

      type metadata accessor for TransferableError(0);
      lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
      swift_allocError();
      v62(v50, v49, v63);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v55 = *(v0 + 8);

      return v55();
    }
  }

  __break(1u);
LABEL_46:

  v61 = *(v0 + 8);

  return v61(v10, v12);
}

{
  v84 = v0;
  v3 = *(v0 + 336);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v13 = *(v0 + 328);
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      v5 = v13;
      v6 = v3;
      goto LABEL_14;
    }

    v7 = *(v0 + 328);
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
LABEL_8:
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    if (v9 != v8)
    {
      goto LABEL_9;
    }

LABEL_14:
    outlined consume of Data._Representation(v5, v6);
    v14 = *(v0 + 312) + 1;
    if (v14 == *(v0 + 288))
    {
LABEL_15:

      type metadata accessor for TransferableError(0);
      lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v15 = *(v0 + 8);

      return v15();
    }

    v16 = *(v0 + 344);
    v17 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 312) = v14;
      v18 = *(v0 + 304);
      if (v14 >= *(v18 + 16))
      {
        __break(1u);
LABEL_50:
        log = v2;
        v81 = v1;
        goto LABEL_10;
      }

      v19 = *(v0 + 256);
      v1 = *(v0 + 216);
      outlined init with copy of ResolvedTransferRepresentation(v18 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v14, v19, type metadata accessor for ResolvedTransferRepresentation);
      v20 = *(v19 + *(v1 + 28));
      if (v20 == v17)
      {
        v61 = swift_task_alloc();
        *(v0 + 320) = v61;
        *v61 = v0;
        v61[1] = Transferable._data(contentType:);
        v62 = *(v0 + 256);
        v63 = *(v0 + 112);
        v64 = *(v0 + 104);

        return Transferable.data(from:)(v62, v64, v63);
      }

      v21 = *(v0 + 256);
      if (v20 == *(v0 + 168))
      {
        v22 = *(v0 + 208);
        v23 = *(v0 + 216);
        v24 = *(v0 + 176);
        v25 = *(v24 + 56);
        *(v0 + 352) = v25;
        *(v0 + 360) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v25(v22, 1, 1);
        v26 = *(v21 + *(v23 + 32));
        if (v26)
        {
          v65 = *(v0 + 120);
          v66 = *(v0 + 104);
          *(v0 + 80) = v66;
          v67 = v66;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          (*(*(v67 - 8) + 16))(boxed_opaque_existential_1, v65, v67);
          v82 = (v26 + *v26);
          v69 = swift_task_alloc();
          *(v0 + 368) = v69;
          *v69 = v0;
          v69[1] = Transferable._data(contentType:);

          return v82(v0 + 16, v0 + 56);
        }

        v27 = *(v0 + 200);
        v28 = *(v0 + 168);
        outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
        outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
        (v25)(v27, 1, 1, v28);
        outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        v29 = *(v0 + 192);
        v30 = *(v0 + 168);
        v31 = *(v0 + 176);
        outlined init with copy of UTType?(*(v0 + 208), v29, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        v32 = *(v31 + 48);
        v2 = v31 + 48;
        if (v32(v29, 1, v30) != 1)
        {
          outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
          v34 = Data.init(contentsOf:options:)();
          if (v16)
          {
            logb = *(v0 + 256);
            v36 = *(v0 + 232);
            v37 = v16;
            v38 = *(v0 + 136);
            v39 = *(v0 + 144);
            v40 = *(v0 + 128);
            v41 = logger.unsafeMutableAddressor();
            (*(v38 + 16))(v39, v41, v40);
            v42 = v37;
            outlined init with copy of ResolvedTransferRepresentation(logb, v36, type metadata accessor for ResolvedTransferRepresentation);
            v43 = v37;
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.fault.getter();

            loga = v44;
            v46 = os_log_type_enabled(v44, v45);
            v2 = *(v0 + 232);
            v76 = *(v0 + 184);
            v77 = *(v0 + 208);
            if (v46)
            {
              v73 = *(v0 + 136);
              v74 = *(v0 + 128);
              v75 = *(v0 + 144);
              v47 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v83 = v72;
              *v47 = 136315394;
              v48 = UTType.identifier.getter();
              v70 = v45;
              v50 = v49;
              outlined destroy of ResolvedTransferRepresentation(v2, type metadata accessor for ResolvedTransferRepresentation);
              v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v83);

              *(v47 + 4) = v51;
              *(v47 + 12) = 2112;
              v52 = v42;
              v53 = _swift_stdlib_bridgeErrorToNSError();
              *(v47 + 14) = v53;
              *v71 = v53;
              _os_log_impl(&dword_20E3BF000, loga, v70, "Error loading data for type identifier %s: %@", v47, 0x16u);
              outlined destroy of UTType?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x20F32E080](v71, -1, -1);
              v1 = v72;
              __swift_destroy_boxed_opaque_existential_0Tm(v72);
              MEMORY[0x20F32E080](v72, -1, -1);
              MEMORY[0x20F32E080](v47, -1, -1);

              (*(v73 + 8))(v75, v74);
            }

            else
            {
              v1 = v42;
              v56 = *(v0 + 136);
              v57 = *(v0 + 144);
              v58 = *(v0 + 128);

              outlined destroy of ResolvedTransferRepresentation(v2, type metadata accessor for ResolvedTransferRepresentation);
              (*(v56 + 8))(v57, v58);
            }

            outlined destroy of ResolvedTransferRepresentation(v76, type metadata accessor for SentTransferredFile);
            outlined destroy of UTType?(v77, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
            v16 = 0;
            goto LABEL_20;
          }

          v2 = v34;
          v1 = v35;
          v54 = *(v0 + 208);
          outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
          outlined destroy of UTType?(v54, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
          v55 = v1 >> 62;
          if ((v1 >> 62) > 1)
          {
            if (v55 != 2)
            {
              outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
LABEL_42:
              outlined consume of Data._Representation(v2, v1);
              v16 = 0;
              goto LABEL_20;
            }

            v59 = *(v2 + 16);
            v60 = *(v2 + 24);
          }

          else
          {
            if (!v55)
            {
              outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
              if ((v1 & 0xFF000000000000) != 0)
              {
                goto LABEL_50;
              }

              goto LABEL_42;
            }

            v59 = v2;
            v60 = v2 >> 32;
          }

          outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          if (v59 != v60)
          {
            goto LABEL_50;
          }

          goto LABEL_42;
        }

        v33 = *(v0 + 256);
        v1 = *(v0 + 192);
        outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        outlined destroy of ResolvedTransferRepresentation(v33, type metadata accessor for ResolvedTransferRepresentation);
        outlined destroy of UTType?(v1, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      }

      else
      {
        outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      }

LABEL_20:
      v14 = *(v0 + 312) + 1;
      if (v14 == *(v0 + 288))
      {
        goto LABEL_15;
      }
    }
  }

  if (v4)
  {
    v10 = *(v0 + 328);
    v9 = v10;
    v8 = v10 >> 32;
    goto LABEL_8;
  }

  outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  log = v5;
  v81 = v6;
LABEL_10:

  v11 = *(v0 + 8);

  return v11(log, v81);
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = Transferable._data(contentType:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = Transferable._data(contentType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v77 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v4 = swift_dynamicCast();
  v1(v2, v4 ^ 1u, 1, v3);
  v5 = *(v0 + 376);
  v6 = MEMORY[0x277CC9318];
  v7 = &_s16CoreTransferable0B8Currency_pSgMd;
  while (2)
  {
    outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    outlined init with copy of UTType?(*(v0 + 208), v8, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    if ((*(v9 + 48))(v8, 1, v10) == 1)
    {
      v11 = *(v0 + 256);
      v12 = *(v0 + 192);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      outlined destroy of ResolvedTransferRepresentation(v11, type metadata accessor for ResolvedTransferRepresentation);
      outlined destroy of UTType?(v12, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      goto LABEL_20;
    }

    outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
    v13 = Data.init(contentsOf:options:)();
    if (!v5)
    {
      v7 = v13;
      v11 = v14;
      v36 = *(v0 + 208);
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
      outlined destroy of UTType?(v36, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      v37 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v37 != 2)
        {
          outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          goto LABEL_19;
        }

        v42 = *(v7 + 16);
        v43 = *(v7 + 24);
      }

      else
      {
        if (!v37)
        {
          outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          if ((v11 & 0xFF000000000000) != 0)
          {
LABEL_37:

            v68 = *(v0 + 8);

            return v68(v7, v11);
          }

LABEL_19:
          outlined consume of Data._Representation(v7, v11);
          v5 = 0;
          v7 = &_s16CoreTransferable0B8Currency_pSgMd;
          goto LABEL_20;
        }

        v42 = v7;
        v43 = v7 >> 32;
      }

      outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      if (v42 != v43)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    }

    v15 = *(v0 + 256);
    v16 = *(v0 + 232);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v20 = logger.unsafeMutableAddressor();
    (*(v17 + 16))(v18, v20, v19);
    outlined init with copy of ResolvedTransferRepresentation(v15, v16, type metadata accessor for ResolvedTransferRepresentation);
    v21 = v5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 232);
    if (v24)
    {
      v73 = *(v0 + 184);
      v74 = *(v0 + 208);
      v70 = *(v0 + 136);
      v71 = *(v0 + 128);
      v72 = *(v0 + 144);
      log = v22;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v28;
      *v26 = 136315394;
      v29 = UTType.identifier.getter();
      v31 = v30;
      outlined destroy of ResolvedTransferRepresentation(v25, type metadata accessor for ResolvedTransferRepresentation);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v76);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2112;
      v33 = v5;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v34;
      *v27 = v34;
      v11 = log;
      _os_log_impl(&dword_20E3BF000, log, v23, "Error loading data for type identifier %s: %@", v26, 0x16u);
      outlined destroy of UTType?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x20F32E080](v28, -1, -1);
      MEMORY[0x20F32E080](v26, -1, -1);

      (*(v70 + 8))(v72, v71);
      outlined destroy of ResolvedTransferRepresentation(v73, type metadata accessor for SentTransferredFile);
      v35 = v74;
    }

    else
    {
      v11 = *(v0 + 208);
      v38 = *(v0 + 184);
      v40 = *(v0 + 136);
      v39 = *(v0 + 144);
      v41 = *(v0 + 128);

      outlined destroy of ResolvedTransferRepresentation(v25, type metadata accessor for ResolvedTransferRepresentation);
      (*(v40 + 8))(v39, v41);
      outlined destroy of ResolvedTransferRepresentation(v38, type metadata accessor for SentTransferredFile);
      v35 = v11;
    }

    outlined destroy of UTType?(v35, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    v7 = &_s16CoreTransferable0B8Currency_pSgMd;
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    v5 = 0;
    while (1)
    {
LABEL_20:
      v44 = *(v0 + 312) + 1;
      if (v44 == *(v0 + 288))
      {

        type metadata accessor for TransferableError(0);
        lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v57 = *(v0 + 8);

        return v57();
      }

      *(v0 + 312) = v44;
      v45 = *(v0 + 304);
      if (v44 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v11 = *(v0 + 256);
      v46 = *(v0 + 216);
      outlined init with copy of ResolvedTransferRepresentation(v45 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v44, v11, type metadata accessor for ResolvedTransferRepresentation);
      v47 = *(v11 + *(v46 + 28));
      if (v47 == v6)
      {
        v59 = swift_task_alloc();
        *(v0 + 320) = v59;
        *v59 = v0;
        v59[1] = Transferable._data(contentType:);
        v60 = *(v0 + 256);
        v61 = *(v0 + 112);
        v62 = *(v0 + 104);

        return Transferable.data(from:)(v60, v62, v61);
      }

      v48 = *(v0 + 256);
      if (v47 == *(v0 + 168))
      {
        break;
      }

      outlined destroy of ResolvedTransferRepresentation(v48, type metadata accessor for ResolvedTransferRepresentation);
    }

    v49 = *(v0 + 208);
    v50 = *(v0 + 216);
    v51 = *(v0 + 176);
    v52 = *(v51 + 56);
    *(v0 + 352) = v52;
    *(v0 + 360) = (v51 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v53 = v48;
    v52(v49, 1, 1);
    v54 = *(v53 + *(v50 + 32));
    if (!v54)
    {
      v55 = *(v0 + 200);
      v56 = *(v0 + 168);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      (v52)(v55, 1, 1, v56);
      continue;
    }

    break;
  }

  v63 = *(v0 + 120);
  v64 = *(v0 + 104);
  *(v0 + 80) = v64;
  v65 = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v65 - 8) + 16))(boxed_opaque_existential_1, v63, v65);
  v75 = (v54 + *v54);
  v67 = swift_task_alloc();
  *(v0 + 368) = v67;
  *v67 = v0;
  v67[1] = Transferable._data(contentType:);

  return v75(v0 + 16, v0 + 56);
}

{
  v65 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v7 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v7, v5);
  outlined init with copy of ResolvedTransferRepresentation(v2, v3, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 376);
  v13 = *(v0 + 240);
  if (v11)
  {
    v60 = *(v0 + 136);
    v61 = *(v0 + 128);
    v62 = *(v0 + 152);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64 = v16;
    *v14 = 136315394;
    v17 = UTType.identifier.getter();
    v19 = v18;
    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v64);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = v12;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v15 = v22;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading URL for type identifier %s: %@", v14, 0x16u);
    outlined destroy of UTType?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x20F32E080](v16, -1, -1);
    MEMORY[0x20F32E080](v14, -1, -1);

    (*(v60 + 8))(v62, v61);
  }

  else
  {
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);

    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    (*(v25 + 8))(v23, v24);
  }

  while (2)
  {
    v39 = *(v0 + 192);
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    outlined init with copy of UTType?(*(v0 + 208), v39, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    if ((*(v41 + 48))(v39, 1, v40) == 1)
    {
      v27 = *(v0 + 256);
      v28 = *(v0 + 192);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      outlined destroy of ResolvedTransferRepresentation(v27, type metadata accessor for ResolvedTransferRepresentation);
      outlined destroy of UTType?(v28, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      goto LABEL_23;
    }

    outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
    v28 = Data.init(contentsOf:options:)();
    v27 = v42;
    v43 = *(v0 + 208);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
    outlined destroy of UTType?(v43, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    v44 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v44 != 2)
      {
        outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
        goto LABEL_22;
      }

      v45 = *(v28 + 16);
      v46 = *(v28 + 24);
      goto LABEL_19;
    }

    if (v44)
    {
      v45 = v28;
      v46 = v28 >> 32;
LABEL_19:
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      if (v45 != v46)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    if ((v27 & 0xFF000000000000) != 0)
    {
LABEL_34:

      v59 = *(v0 + 8);

      return v59(v28, v27);
    }

LABEL_22:
    outlined consume of Data._Representation(v28, v27);
    while (1)
    {
LABEL_23:
      v47 = *(v0 + 312) + 1;
      if (v47 == *(v0 + 288))
      {

        type metadata accessor for TransferableError(0);
        lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v48 = *(v0 + 8);

        return v48();
      }

      *(v0 + 312) = v47;
      v26 = *(v0 + 304);
      if (v47 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v27 = *(v0 + 256);
      v28 = *(v0 + 216);
      outlined init with copy of ResolvedTransferRepresentation(v26 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v47, v27, type metadata accessor for ResolvedTransferRepresentation);
      v29 = *(v27 + *(v28 + 28));
      if (v29 == MEMORY[0x277CC9318])
      {
        v50 = swift_task_alloc();
        *(v0 + 320) = v50;
        *v50 = v0;
        v50[1] = Transferable._data(contentType:);
        v51 = *(v0 + 256);
        v52 = *(v0 + 112);
        v53 = *(v0 + 104);

        return Transferable.data(from:)(v51, v53, v52);
      }

      v30 = *(v0 + 256);
      if (v29 == *(v0 + 168))
      {
        break;
      }

      outlined destroy of ResolvedTransferRepresentation(v30, type metadata accessor for ResolvedTransferRepresentation);
    }

    v31 = *(v0 + 208);
    v32 = *(v0 + 216);
    v33 = *(v0 + 176);
    v34 = *(v33 + 56);
    *(v0 + 352) = v34;
    *(v0 + 360) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v35 = v30;
    v34(v31, 1, 1);
    v36 = *(v35 + *(v32 + 32));
    if (!v36)
    {
      v37 = *(v0 + 200);
      v38 = *(v0 + 168);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      (v34)(v37, 1, 1, v38);
      outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      continue;
    }

    break;
  }

  v54 = *(v0 + 120);
  v55 = *(v0 + 104);
  *(v0 + 80) = v55;
  v56 = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v56 - 8) + 16))(boxed_opaque_existential_1, v54, v56);
  v63 = (v36 + *v36);
  v58 = swift_task_alloc();
  *(v0 + 368) = v58;
  *v58 = v0;
  v58[1] = Transferable._data(contentType:);

  return v63(v0 + 16, v0 + 56);
}

uint64_t Transferable._data(contentType:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = v2;

  if (v2)
  {
    v5 = Transferable._data(contentType:);
  }

  else
  {
    v5 = Transferable._data(contentType:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t Transferable._data(contentType:)(uint64_t a1)
{
  v70 = v1;
  v2 = *(v1 + 344);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  v5 = *(v1 + 160);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = logger.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);
  outlined init with copy of ResolvedTransferRepresentation(v4, v3, type metadata accessor for ResolvedTransferRepresentation);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 344);
  v14 = *(v1 + 248);
  if (v12)
  {
    v65 = *(v1 + 136);
    v66 = *(v1 + 128);
    v67 = *(v1 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v69 = v17;
    *v15 = 136315394;
    v18 = UTType.identifier.getter();
    v20 = v19;
    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v69);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_20E3BF000, v10, v11, "Error loading data for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v65 + 8))(v67, v66);
  }

  else
  {
    v24 = *(v1 + 160);
    v25 = *(v1 + 128);
    v26 = *(v1 + 136);

    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    (*(v26 + 8))(v24, v25);
  }

  result = outlined destroy of ResolvedTransferRepresentation(*(v1 + 256), type metadata accessor for ResolvedTransferRepresentation);
  v28 = *(v1 + 312) + 1;
  if (v28 == *(v1 + 288))
  {
LABEL_5:

    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v29 = *(v1 + 8);

    return v29();
  }

  v30 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v1 + 312) = v28;
    v31 = *(v1 + 304);
    if (v28 >= *(v31 + 16))
    {
      __break(1u);
      return result;
    }

    v32 = *(v1 + 256);
    v33 = *(v1 + 216);
    outlined init with copy of ResolvedTransferRepresentation(v31 + ((*(v1 + 384) + 32) & ~*(v1 + 384)) + *(v1 + 296) * v28, v32, type metadata accessor for ResolvedTransferRepresentation);
    v34 = *(v32 + *(v33 + 28));
    if (v34 == v30)
    {
      break;
    }

    v35 = *(v1 + 256);
    if (v34 == *(v1 + 168))
    {
      v36 = *(v1 + 208);
      v37 = *(v1 + 216);
      v38 = *(v1 + 176);
      v39 = *(v38 + 56);
      *(v1 + 352) = v39;
      *(v1 + 360) = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v39(v36, 1, 1);
      v40 = *(v35 + *(v37 + 32));
      if (v40)
      {
        v59 = *(v1 + 120);
        v60 = *(v1 + 104);
        *(v1 + 80) = v60;
        v61 = v60;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 56));
        (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v59, v61);
        v68 = (v40 + *v40);
        v63 = swift_task_alloc();
        *(v1 + 368) = v63;
        *v63 = v1;
        v63[1] = Transferable._data(contentType:);

        return v68(v1 + 16, v1 + 56);
      }

      v41 = *(v1 + 200);
      v42 = *(v1 + 168);
      outlined destroy of UTType?(*(v1 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
      *(v1 + 48) = 0;
      outlined destroy of UTType?(v1 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      (v39)(v41, 1, 1, v42);
      outlined init with take of URL?(*(v1 + 200), *(v1 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      v43 = *(v1 + 192);
      v44 = *(v1 + 168);
      v45 = *(v1 + 176);
      outlined init with copy of UTType?(*(v1 + 208), v43, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      if ((*(v45 + 48))(v43, 1, v44) != 1)
      {
        outlined init with take of ResolvedTransferRepresentation(*(v1 + 192), *(v1 + 184), type metadata accessor for SentTransferredFile);
        v48 = Data.init(contentsOf:options:)();
        v50 = v49;
        v51 = *(v1 + 208);
        outlined destroy of ResolvedTransferRepresentation(*(v1 + 184), type metadata accessor for SentTransferredFile);
        outlined destroy of UTType?(v51, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        v52 = v50 >> 62;
        if ((v50 >> 62) > 1)
        {
          if (v52 != 2)
          {
            outlined destroy of ResolvedTransferRepresentation(*(v1 + 256), type metadata accessor for ResolvedTransferRepresentation);
LABEL_27:
            result = outlined consume of Data._Representation(v48, v50);
            goto LABEL_10;
          }

          v53 = *(v48 + 16);
          v54 = *(v48 + 24);
        }

        else
        {
          if (!v52)
          {
            outlined destroy of ResolvedTransferRepresentation(*(v1 + 256), type metadata accessor for ResolvedTransferRepresentation);
            if ((v50 & 0xFF000000000000) != 0)
            {
              goto LABEL_34;
            }

            goto LABEL_27;
          }

          v53 = v48;
          v54 = v48 >> 32;
        }

        outlined destroy of ResolvedTransferRepresentation(*(v1 + 256), type metadata accessor for ResolvedTransferRepresentation);
        if (v53 != v54)
        {
LABEL_34:

          v64 = *(v1 + 8);

          return v64(v48, v50);
        }

        goto LABEL_27;
      }

      v46 = *(v1 + 256);
      v47 = *(v1 + 192);
      outlined destroy of UTType?(*(v1 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      outlined destroy of ResolvedTransferRepresentation(v46, type metadata accessor for ResolvedTransferRepresentation);
      result = outlined destroy of UTType?(v47, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    }

    else
    {
      result = outlined destroy of ResolvedTransferRepresentation(*(v1 + 256), type metadata accessor for ResolvedTransferRepresentation);
    }

LABEL_10:
    v28 = *(v1 + 312) + 1;
    if (v28 == *(v1 + 288))
    {
      goto LABEL_5;
    }
  }

  v55 = swift_task_alloc();
  *(v1 + 320) = v55;
  *v55 = v1;
  v55[1] = Transferable._data(contentType:);
  v56 = *(v1 + 256);
  v57 = *(v1 + 112);
  v58 = *(v1 + 104);

  return Transferable.data(from:)(v56, v58, v57);
}

void *static Transferable.writableContentTypes.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static Transferable.resolvedRepresentations()(a1, a2);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_33:

    return MEMORY[0x277D84F90];
  }

  v9 = v7;
  v10 = type metadata accessor for ResolvedTransferRepresentation(0);
  result = v9;
  v12 = 0;
  v13 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v14 = result + v13;
  v15 = *(*(v10 - 8) + 72);
  v16 = *(v10 + 32);
  v17 = v13 + v16;
  while (!*(result + v17))
  {
    v17 += v15;
    if (v8 == ++v12)
    {
      goto LABEL_33;
    }
  }

  v18 = &v14[v16];
  v19 = 1;
  while (2)
  {
    if (v12 == v8)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    do
    {
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v20 == v8)
      {
        goto LABEL_15;
      }

      if (v20 >= v8)
      {
        goto LABEL_39;
      }

      ++v12;
    }

    while (!*&v18[v15 * v20]);
    v12 = v20;
    if (!__OFADD__(v19++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_15:
  if (!v19)
  {
    goto LABEL_33;
  }

  v30 = result;
  v36 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  v22 = 0;
  v23 = v36;
  v24 = v13 + *(v10 + 32);
  while (!*(v30 + v24))
  {
    v24 += v15;
    if (v8 == ++v22)
    {
      v22 = v8;
      break;
    }
  }

  if (v19 < 0)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v35 = 0;
  v31 = v34 + 32;
  v32 = (v34 + 16);
  v33 = v19;
  while (2)
  {
    if (v22 >= v8)
    {
      goto LABEL_40;
    }

    (*v32)(v6, &v14[v15 * v22 + *(v10 + 20)], v4);
    v36 = v23;
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v23 = v36;
    }

    v27 = v34;
    ++v35;
    *(v23 + 16) = v26 + 1;
    result = (*(v27 + 32))(v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v6, v4);
    do
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v28 == v8)
      {
        v22 = v8;
        goto LABEL_23;
      }

      if (v28 >= v8)
      {
        goto LABEL_37;
      }

      ++v22;
    }

    while (!*&v14[v28 * v15 + *(v10 + 32)]);
    v22 = v28;
LABEL_23:
    if (v35 != v33)
    {
      continue;
    }

    break;
  }

  return v23;
}

uint64_t static Transferable.resolvedRepresentations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = type metadata accessor for ResolvedTransferRepresentation(0);
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = static Transferable.resolvedRepresentations()(a2, a3);
  outlined init with copy of UTType?(v36, v16, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of UTType?(v16, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (*(v21 + 16))
    {
      v22 = v35;
      outlined init with copy of ResolvedTransferRepresentation(v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v13, type metadata accessor for ResolvedTransferRepresentation);
      v23 = 0;
    }

    else
    {
      v23 = 1;
      v22 = v35;
    }

    v26 = v23;
    v27 = v34;
    (*(v22 + 56))(v13, v26, 1, v34);
    outlined init with copy of UTType?(v13, v11, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    if ((*(v22 + 48))(v11, 1, v27) == 1)
    {
      outlined destroy of UTType?(v13, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      return MEMORY[0x277D84F90];
    }

    else
    {
      v28 = v11;
      v29 = v33;
      outlined init with take of ResolvedTransferRepresentation(v28, v33, type metadata accessor for ResolvedTransferRepresentation);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
      v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20E3FD830;
      outlined init with take of ResolvedTransferRepresentation(v29, v25 + v30, type metadata accessor for ResolvedTransferRepresentation);
      outlined destroy of UTType?(v13, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    }
  }

  else
  {
    v24 = (*(v18 + 32))(v20, v16, v17);
    MEMORY[0x28223BE20](v24);
    *(&v32 - 2) = v20;
    v25 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static Transferable.resolvedRepresentations(for:), (&v32 - 4), v21);
    (*(v18 + 8))(v20, v17);
  }

  return v25;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ResolvedTransferRepresentation(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      outlined init with copy of ResolvedTransferRepresentation(a3 + v15 + v16 * v13, v12, type metadata accessor for ResolvedTransferRepresentation);
      v17 = a1(v12);
      if (v3)
      {
        outlined destroy of ResolvedTransferRepresentation(v12, type metadata accessor for ResolvedTransferRepresentation);

        goto LABEL_15;
      }

      if (v17)
      {
        outlined init with take of ResolvedTransferRepresentation(v12, v24, type metadata accessor for ResolvedTransferRepresentation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = outlined init with take of ResolvedTransferRepresentation(v24, v14 + v15 + v20 * v16, type metadata accessor for ResolvedTransferRepresentation);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = outlined destroy of ResolvedTransferRepresentation(v12, type metadata accessor for ResolvedTransferRepresentation);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t Transferable.url(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
  v5[17] = swift_task_alloc();
  v6 = type metadata accessor for SentTransferredFile(0);
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.url(from:), 0, 0);
}

uint64_t Transferable.url(from:)()
{
  v1 = *(v0 + 104);
  v2 = (v1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v3 = *v2;
  *(v0 + 168) = *v2;
  *(v0 + 176) = v2[1];
  if (v3)
  {
    v4 = *(v0 + 128);
    v9 = *(v0 + 112);
    *(v0 + 80) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v4);

    v10 = (v3 + *v3);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = Transferable.url(from:);

    return v10(v0 + 16, v0 + 56);
  }

  else
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = Transferable.url(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = Transferable.url(from:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[19];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[21], v0[22]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[20];
    v5 = v0[17];
    v6 = v0[12];
    v3(v5, 0, 1, v0[18]);
    outlined init with take of ResolvedTransferRepresentation(v5, v4, type metadata accessor for SentTransferredFile);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(v6, v4, v7);
  }

  else
  {
    v9 = v0[17];
    v3(v9, 1, 1, v0[18]);
    outlined destroy of UTType?(v9, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

{
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[21], v0[22]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t Transferable.data(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x2822009F8](Transferable.data(from:), 0, 0);
}

uint64_t Transferable.data(from:)()
{
  v1 = *(v0 + 112);
  v2 = (v1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v3 = *v2;
  *(v0 + 144) = *v2;
  *(v0 + 152) = v2[1];
  if (v3)
  {
    v4 = *(v0 + 136);
    v9 = *(v0 + 120);
    *(v0 + 80) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v4);

    v10 = (v3 + *v3);
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = Transferable.data(from:);

    return v10(v0 + 16, v0 + 56);
  }

  else
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = Transferable.data(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = Transferable.data(from:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[18], v0[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  if (swift_dynamicCast())
  {
    v1 = v0[12];
    v2 = v0[13];
    v3 = v0[1];

    return v3(v1, v2);
  }

  else
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

{
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[18], v0[19]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t _contentType(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v16[1] = *(v2 - 8);
  v16[2] = v2;
  MEMORY[0x28223BE20](v2);
  v16[3] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URLResourceValues();
  v16[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  if ((*(v8 + 48))(v11, 1, v7) == 1)
  {
    outlined destroy of UTType?(v11, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20E3FD830;
    v13 = *MEMORY[0x277CBE7B8];
    *(inited + 32) = *MEMORY[0x277CBE7B8];
    v14 = v13;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of ResolvedTransferRepresentation(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();

    URLResourceValues.contentType.getter();
    return (*(v16[0] + 8))(v6, v4);
  }

  else
  {
    (*(v8 + 32))(a1, v11, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x20F32D490](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x20F32D560](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSURLResourceKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x20F32D490](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
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

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
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
  result = type metadata accessor for ResolvedTransferRepresentation(0);
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
    return result;
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
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x277D85578]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR, type metadata accessor for ResolvedTransferRepresentation);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized LazyFilterSequence<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v6 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v7 = 1;
    v8 = a2;
    v6 = result;
  }

  else
  {
    v7 = -1;
    v8 = result;
  }

  v9 = 0;
  v10 = *(a3 + 16);
LABEL_8:
  while (2)
  {
    v11 = __OFADD__(v9, v7);
    v9 += v7;
    if (v11)
    {
LABEL_18:
      __break(1u);
    }

    else if (v6 != v10)
    {
      do
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (v12 == v10)
        {
          v6 = v10;
          if (v10 == v8)
          {
            return v9;
          }

          goto LABEL_8;
        }

        if (v12 >= v10)
        {
          goto LABEL_17;
        }

        v13 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
        result = a4(a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
        ++v6;
      }

      while ((result & 1) == 0);
      v6 = v12;
      if (v12 != v8)
      {
        continue;
      }

      return v9;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError()
{
  result = lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError;
  if (!lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError;
  if (!lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError);
  }

  return result;
}

BOOL partial apply for closure #2 in static Transferable.exportedContentTypes(visibility:)(uint64_t a1)
{
  v3[1] = *(v1 + 16);
  v3[0] = *(a1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 44));
  return TransferRepresentationVisibility.conforms(to:)(v3);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t outlined init with take of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UTType?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined destroy of ResolvedTransferRepresentation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for NSURLResourceKey()
{
  if (!lazy cache variable for type metadata for NSURLResourceKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSURLResourceKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TransferableError and conformance TransferableError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static AttributedString.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v4 = MEMORY[0x28223BE20](v37);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v31 = &v30 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
  v10 = MEMORY[0x28223BE20](v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = &v30 - v13;
  static UTType.flatRTFD.getter();
  v14 = type metadata accessor for AttributedString();
  v15 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40], &protocol conformance descriptor for AttributedString);
  DataRepresentation.init(contentType:exporting:importing:)(v3, &async function pointer to closure #1 in static AttributedString.flatRTFDRepresentation.getter, 0, &async function pointer to closure #2 in static AttributedString.flatRTFDRepresentation.getter, 0, v14, v15);
  v30 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR, &protocol conformance descriptor for DataRepresentation<A>);
  TransferRepresentation.exportingCondition(_:)(closure #3 in static AttributedString.flatRTFDRepresentation.getter, 0, v37, v30, v12);
  outlined destroy of UTType?(v9, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v33 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type _ConditionalTransferRepresentation<DataRepresentation<AttributedString>> and conformance _ConditionalTransferRepresentation<A>, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR, &protocol conformance descriptor for _ConditionalTransferRepresentation<A>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v12, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
  static UTType.rtf.getter();
  v16 = v31;
  DataRepresentation.init(contentType:exporting:importing:)(v3, &async function pointer to closure #1 in static AttributedString.rtfRepresentation.getter, 0, &async function pointer to closure #2 in static AttributedString.rtfRepresentation.getter, 0, v14, v15);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v16, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  static UTType.html.getter();
  v17 = v32;
  DataRepresentation.init(importedContentType:importing:)(v3, &async function pointer to closure #1 in static AttributedString.htmlRepresentation.getter, 0, v14, v15, v32);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v17, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v18 = lazy protocol witness table accessor for type String and conformance String();
  ProxyRepresentation.init(exporting:importing:)(closure #1 in static AttributedString.transferRepresentation.getter, 0, closure #2 in static AttributedString.transferRepresentation.getter, 0, v14, MEMORY[0x277D837D0], v15, v18, &v41);
  v38 = v41;
  v39 = v42;
  v40 = v43;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMd, &_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMR);
  lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type ProxyRepresentation<AttributedString, String> and conformance ProxyRepresentation<A, B>, &_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMd, &_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMR, &protocol conformance descriptor for ProxyRepresentation<A, B>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  v20 = v39;
  v21 = v40;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v38, *(&v38 + 1));
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v20, *(&v20 + 1));
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v21, *(&v21 + 1));
  v22 = v45;
  v23 = v46;
  v41 = v44;
  v42 = v45;
  v43 = v46;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v44, *(&v44 + 1));
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v22, *(&v22 + 1));
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v23, *(&v23 + 1));
  v24 = v34;
  static TransferRepresentationBuilder.buildBlock<A, B, C, D>(_:_:_:_:)(v34, v9, v16, &v41, v14, v35, v37, v37, v36, v19, v33);
  v25 = v42;
  v26 = v43;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v41, *(&v41 + 1));
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v25, *(&v25 + 1));
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v26, *(&v26 + 1));
  v27 = v45;
  v28 = v46;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v44, *(&v44 + 1));
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v27, *(&v27 + 1));
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v28, *(&v28 + 1));
  outlined destroy of UTType?(v16, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  outlined destroy of UTType?(v9, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  return outlined destroy of UTType?(v24, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
}

uint64_t closure #1 in static AttributedString.transferRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x28223BE20](v2);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  result = String.init<A>(_:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t closure #2 in static AttributedString.transferRepresentation.getter(uint64_t *a1)
{
  v1 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v1 - 8);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t closure #1 in static AttributedString.flatRTFDRepresentation.getter(uint64_t a1)
{
  v1[18] = a1;
  v2 = type metadata accessor for AttributedString();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static AttributedString.flatRTFDRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static AttributedString.flatRTFDRepresentation.getter()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  type metadata accessor for NSAttributedString();
  (*(v2 + 16))(v1, v4, v3);
  v5 = NSAttributedString.init(_:)();
  v6 = [v5 length];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v9 = objc_opt_self();
  v10 = v5;
  v11 = [v9 documentType];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 120) = v12;
  *(v0 + 128) = v14;
  v15 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v16 = [v9 rtfd];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 96) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 136) = 0;
  v21 = [v7 dataFromAttributedString:v10 range:0 documentAttributes:v6 error:{isa, v0 + 136}];

  v22 = *(v0 + 136);
  if (v21)
  {
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *(v0 + 8);

    return v26(v23, v25);
  }

  else
  {
    v28 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t closure #2 in static AttributedString.flatRTFDRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;

  return MEMORY[0x2822009F8](closure #2 in static AttributedString.flatRTFDRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static AttributedString.flatRTFDRepresentation.getter()
{
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v4 = objc_opt_self();
  v5 = [v4 documentType];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[15] = v6;
  v0[16] = v8;
  v9 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v10 = [v4 rtfd];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 96) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[17] = 0;
  v15 = [v1 attributedStringFromData:isa options:v14 documentAttributes:0 error:v0 + 17];

  v16 = v0[17];
  if (v15)
  {
    v17 = v16;
    AttributedString.init(_:)();
  }

  else
  {
    v19 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
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

uint64_t closure #1 in static AttributedString.rtfRepresentation.getter(uint64_t a1)
{
  v1[18] = a1;
  v2 = type metadata accessor for AttributedString();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static AttributedString.rtfRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static AttributedString.rtfRepresentation.getter()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  type metadata accessor for NSAttributedString();
  (*(v2 + 16))(v1, v4, v3);
  v5 = NSAttributedString.init(_:)();
  v6 = [v5 length];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v9 = objc_opt_self();
  v10 = v5;
  v11 = [v9 documentType];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 120) = v12;
  *(v0 + 128) = v14;
  v15 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v16 = [v9 rtf];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 96) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 136) = 0;
  v21 = [v7 dataFromAttributedString:v10 range:0 documentAttributes:v6 error:{isa, v0 + 136}];

  v22 = *(v0 + 136);
  if (v21)
  {
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *(v0 + 8);

    return v26(v23, v25);
  }

  else
  {
    v28 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t closure #2 in static AttributedString.rtfRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;

  return MEMORY[0x2822009F8](closure #2 in static AttributedString.rtfRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static AttributedString.rtfRepresentation.getter()
{
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v4 = objc_opt_self();
  v5 = [v4 documentType];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[15] = v6;
  v0[16] = v8;
  v9 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v10 = [v4 rtf];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 96) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[17] = 0;
  v15 = [v1 attributedStringFromData:isa options:v14 documentAttributes:0 error:v0 + 17];

  v16 = v0[17];
  if (v15)
  {
    v17 = v16;
    AttributedString.init(_:)();
  }

  else
  {
    v19 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

uint64_t closure #1 in static AttributedString.htmlRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;

  return MEMORY[0x2822009F8](closure #1 in static AttributedString.htmlRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static AttributedString.htmlRepresentation.getter()
{
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v4 = objc_opt_self();
  v5 = [v4 documentType];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[15] = v6;
  v0[16] = v8;
  v9 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v10 = [v4 html];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 96) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[17] = 0;
  v15 = [v1 attributedStringFromData:isa options:v14 documentAttributes:0 error:v0 + 17];

  v16 = v0[17];
  if (v15)
  {
    v17 = v16;
    AttributedString.init(_:)();
  }

  else
  {
    v19 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x20F32D890](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F32D720](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

uint64_t ResolvedTransferRepresentation.exporter.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1, v1[1]);
  return v2;
}

uint64_t ResolvedTransferRepresentation.exporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ResolvedTransferRepresentation.importer.getter()
{
  v1 = (v0 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 36));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v1, v1[1]);
  return v2;
}

uint64_t ResolvedTransferRepresentation.importer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 36));
  result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t _TransferRepresentationOutputs.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporter:importer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v32 = a4;
  v30 = a2;
  v31 = a3;
  v33 = a9;
  v28 = a11;
  v29 = a10;
  v26 = a13;
  v27 = a12;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
  v22 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E3FD830;
  (*(v19 + 16))(v21, a1, v18);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a5, a6);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(a7, a8);
  ResolvedTransferRepresentation.init<A, B, C>(contentType:suggestedFileName:shouldAttemptToOpenInPlace:exporting:importing:)(v21, v30, v31, v32, a5, a6, a7, a8, v24 + v23, v29, *(&v29 + 1), v28, *(&v28 + 1), v27, v26);
  _TransferRepresentationOutputs.init(_:)(v24);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a7, a8);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a5, a6);
  result = (*(v19 + 8))(a1, v18);
  *v33 = v34;
  return result;
}

uint64_t TransferRepresentation.visibility(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v9;
  (*(v8 + 16))(v11, v4, a2);
  (*(v8 + 32))(a4, v11, a2);
  result = type metadata accessor for _VisibleTransferRepresentation(0, a2, a3, v13);
  *(a4 + *(result + 36)) = v12;
  return result;
}

uint64_t static _VisibleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TransferRepresentationValue(0, v9, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v16 = type metadata accessor for _VisibleTransferRepresentation(0, a2, a3, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  (*(v17 + 16))(v23 - v18, v23[0], v16);
  (*(v6 + 16))(v8, v19, a2);
  _TransferRepresentationValue.init(_:)(v8, a2, v14);
  (*(a3 + 48))(&v28, v14);
  (*(v12 + 8))(v14, v11);
  v25 = a2;
  v26 = a3;
  v27 = v19;
  v20 = type metadata accessor for ResolvedTransferRepresentation(0);
  v21 = _TransferRepresentationOutputs.map<A>(_:)(partial apply for closure #1 in static _VisibleTransferRepresentation._decomposedTransferRepresentation(_:inputs:), v24, v20);

  _TransferRepresentationOutputs.init(_:)(v21);
  return (*(v17 + 8))(v19, v16);
}

uint64_t partial apply for closure #1 in static _VisibleTransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  outlined init with copy of ResolvedTransferRepresentation(a1, a2);
  v8 = *(v6 + *(type metadata accessor for _VisibleTransferRepresentation(0, v4, v5, v7) + 36));
  result = type metadata accessor for ResolvedTransferRepresentation(0);
  *(a2 + *(result + 44)) = v8;
  return result;
}

uint64_t instantiation function for generic protocol witness table for _VisibleTransferRepresentation<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _VisibleTransferRepresentation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _VisibleTransferRepresentation(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for _VisibleTransferRepresentation(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t outlined init with copy of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTransferRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Data.transferRepresentation.getter()
{
  v0 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  static UTType.data.getter();
  v9 = lazy protocol witness table accessor for type Data and conformance Data();
  DataRepresentation.init(contentType:exporting:importing:)(v2, &async function pointer to closure #1 in static Data.transferRepresentation.getter, 0, &async function pointer to closure #2 in static Data.transferRepresentation.getter, 0, MEMORY[0x277CC9318], v9);
  lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<Data> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR, &protocol conformance descriptor for DataRepresentation<A>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v6, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  return outlined destroy of UTType?(v8, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
}

uint64_t closure #1 in static Data.transferRepresentation.getter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  outlined copy of Data._Representation(*a1, v2);
  v4 = *(v1 + 8);

  return v4(v3, v2);
}

uint64_t closure #2 in static Data.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](closure #2 in static Data.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static Data.transferRepresentation.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = v1;
  v3[1] = v2;
  outlined copy of Data._Representation(v1, v2);
  v4 = v0[1];

  return v4();
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance Data(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  static UTType.data.getter();
  DataRepresentation.init(contentType:exporting:importing:)(v6, &async function pointer to closure #1 in static Data.transferRepresentation.getter, 0, &async function pointer to closure #2 in static Data.transferRepresentation.getter, 0, a1, a2);
  lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<Data> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR, &protocol conformance descriptor for DataRepresentation<A>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v10, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  return outlined destroy of UTType?(v12, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation0C0VGMR);
}

uint64_t static String.transferRepresentation.getter()
{
  v0 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  static UTType.utf8PlainText.getter();
  v9 = lazy protocol witness table accessor for type String and conformance String();
  DataRepresentation.init(contentType:exporting:importing:)(v2, &async function pointer to closure #1 in static String.transferRepresentation.getter, 0, &async function pointer to closure #2 in static String.transferRepresentation.getter, 0, MEMORY[0x277D837D0], v9);
  lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<String> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR, &protocol conformance descriptor for DataRepresentation<A>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v6, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  return outlined destroy of UTType?(v8, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
}

uint64_t closure #1 in static String.transferRepresentation.getter(uint64_t *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;

  return MEMORY[0x2822009F8](closure #1 in static String.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static String.transferRepresentation.getter()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {

    v9 = v0[1];

    return v9(v4, v6);
  }
}

uint64_t closure #2 in static String.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for String.Encoding();
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static String.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static String.transferRepresentation.getter()
{
  static String.Encoding.utf8.getter();
  v1 = String.init(data:encoding:)();
  if (v2)
  {
    v3 = *(v0 + 16);
    *v3 = v1;
    v3[1] = v2;
  }

  else
  {
    type metadata accessor for TransferableError(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance String(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  static UTType.utf8PlainText.getter();
  DataRepresentation.init(contentType:exporting:importing:)(v6, &async function pointer to closure #1 in static String.transferRepresentation.getter, 0, &async function pointer to closure #2 in static String.transferRepresentation.getter, 0, a1, a2);
  lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<String> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR, &protocol conformance descriptor for DataRepresentation<A>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v10, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  return outlined destroy of UTType?(v12, &_s16CoreTransferable18DataRepresentationVySSGMd, &_s16CoreTransferable18DataRepresentationVySSGMR);
}

uint64_t static URL.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  v1 = MEMORY[0x28223BE20](v22);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v21 = &v20 - v4;
  v5 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  static UTType.url.getter();
  v14 = type metadata accessor for URL();
  v15 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], &protocol conformance descriptor for URL);
  DataRepresentation.init(contentType:exporting:importing:)(v7, &async function pointer to closure #1 in static URL.transferRepresentation.getter, 0, &async function pointer to partial apply for closure #2 in static URL.transferRepresentation.getter, 0, v14, v15);
  v16 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<URL> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR, &protocol conformance descriptor for DataRepresentation<A>);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v11, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  static UTType.fileURL.getter();
  DataRepresentation.init(contentType:exporting:importing:)(v7, &async function pointer to closure #3 in static URL.transferRepresentation.getter, 0, &async function pointer to partial apply for closure #4 in static URL.transferRepresentation.getter, 0, v14, v15);
  TransferRepresentation.exportingCondition(_:)(closure #5 in static URL.transferRepresentation.getter, 0, v8, v16, v3);
  outlined destroy of UTType?(v11, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
  lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type _ConditionalTransferRepresentation<DataRepresentation<URL>> and conformance _ConditionalTransferRepresentation<A>, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR, &protocol conformance descriptor for _ConditionalTransferRepresentation<A>);
  v17 = v21;
  v18 = v22;
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  outlined destroy of UTType?(v3, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  static TransferRepresentationBuilder.buildBlock<A, B>(_:_:)(v13, v17, v8, v18, v23);
  outlined destroy of UTType?(v17, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation3URLVGGMR);
  return outlined destroy of UTType?(v13, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation3URLVGMR);
}

uint64_t closure #1 in static URL.transferRepresentation.getter(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for UTType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static URL.transferRepresentation.getter, 0, 0);
}

{
  v2 = v1[7];
  v3 = v1[4];
  static UTType.url.getter();
  v4 = swift_task_alloc();
  v1[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = closure #1 in static URL.transferRepresentation.getter;
  v6 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000012, 0x800000020E3FF2B0, closure #1 in URL.data(contentType:)partial apply, v4, v6);
}

uint64_t closure #1 in static URL.transferRepresentation.getter()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in static URL.transferRepresentation.getter;
  }

  else
  {

    v2 = closure #1 in static URL.transferRepresentation.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static URL.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static URL.transferRepresentation.getter(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  static UTType.url.getter();
  static URL.url(contentType:data:)();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t partial apply for closure #2 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.file(contentType:fileHandler:);

  return closure #2 in static URL.transferRepresentation.getter(a1, a2, a3);
}

void static URL.url(contentType:data:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = UTType.identifier.getter();
  v3 = MEMORY[0x20F32D490](v2);

  v8[0] = 0;
  v4 = [v0 objectWithItemProviderData:isa typeIdentifier:v3 error:v8];

  v5 = v8[0];
  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t closure #3 in static URL.transferRepresentation.getter(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for UTType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in static URL.transferRepresentation.getter, 0, 0);
}

{
  v2 = v1[7];
  v3 = v1[4];
  static UTType.fileURL.getter();
  v4 = swift_task_alloc();
  v1[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = closure #3 in static URL.transferRepresentation.getter;
  v6 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000012, 0x800000020E3FF2B0, partial apply for closure #1 in URL.data(contentType:), v4, v6);
}

uint64_t closure #3 in static URL.transferRepresentation.getter()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #3 in static URL.transferRepresentation.getter;
  }

  else
  {

    v2 = closure #3 in static URL.transferRepresentation.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v3 = v0[1];

  return v3(v1, v2);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t closure #4 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UTType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #4 in static URL.transferRepresentation.getter, 0, 0);
}

uint64_t closure #4 in static URL.transferRepresentation.getter(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  static UTType.fileURL.getter();
  static URL.url(contentType:data:)();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t partial apply for closure #4 in static URL.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #4 in static URL.transferRepresentation.getter(a1, a2, a3);
}

void closure #1 in URL.data(contentType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (aBlock - v4);
  URL._bridgeToObjectiveC()(v4);
  v7 = v6;
  v8 = UTType.identifier.getter();
  v9 = MEMORY[0x20F32D490](v8);

  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v5, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in URL.data(contentType:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  v13 = [v7 loadDataWithTypeIdentifier:v9 forItemProviderCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  outlined consume of Data?(v4, v8);
}

uint64_t partial apply for closure #1 in closure #1 in URL.data(contentType:)(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      type metadata accessor for TransferableError(0);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError, &protocol conformance descriptor for TransferableError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  return static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)(a1, a2, a3);
}

{
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v6, v7);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v21 - v17;
  (*(a2 + 40))(a1, a2);
  (*(v13 + 16))(v16, v18, AssociatedTypeWitness);
  _TransferRepresentationValue.init(_:)(v16, AssociatedTypeWitness, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(v12);
  (*(v9 + 8))(v12, v8);
  return (*(v13 + 8))(v18, AssociatedTypeWitness);
}

void TransferRepresentation.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x20F32D540](v1);

  MEMORY[0x20F32D540](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}