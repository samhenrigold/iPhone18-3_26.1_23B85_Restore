uint64_t storeEnumTagSinglePayload for DrawableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006CE54C(uint64_t a1)
{
  result = type metadata accessor for CRLPreviewImages.Item(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006CE5B0()
{
  result = qword_1019FACF0;
  if (!qword_1019FACF0)
  {
    result = swift_getWitnessTable(byte_101473900, &type metadata for CRLPreviewImages.ImageSizeClass.CustomCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FACF0);
  }

  return result;
}

unint64_t sub_1006CE608()
{
  result = qword_1019FACF8;
  if (!qword_1019FACF8)
  {
    result = swift_getWitnessTable(byte_101473B48, &type metadata for CRLPreviewImages.ImageSizeClass.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FACF8);
  }

  return result;
}

unint64_t sub_1006CE660()
{
  result = qword_1019FAD00;
  if (!qword_1019FAD00)
  {
    result = swift_getWitnessTable(byte_101473C00, &type metadata for CRLPreviewImages.Item.SceneCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD00);
  }

  return result;
}

unint64_t sub_1006CE6B8()
{
  result = qword_1019FAD08;
  if (!qword_1019FAD08)
  {
    result = swift_getWitnessTable(asc_101473CB8, &type metadata for CRLPreviewImages.Item.BoardCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD08);
  }

  return result;
}

unint64_t sub_1006CE710()
{
  result = qword_1019FAD10;
  if (!qword_1019FAD10)
  {
    result = swift_getWitnessTable(aI_56, &type metadata for CRLPreviewImages.Item.FilterCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD10);
  }

  return result;
}

unint64_t sub_1006CE768()
{
  result = qword_1019FAD18;
  if (!qword_1019FAD18)
  {
    result = swift_getWitnessTable(byte_101473E28, &type metadata for CRLPreviewImages.Item.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD18);
  }

  return result;
}

unint64_t sub_1006CE7C0()
{
  result = qword_1019FAD20;
  if (!qword_1019FAD20)
  {
    result = swift_getWitnessTable(aY_47, &type metadata for CRLPreviewImages.Item.FilterCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD20);
  }

  return result;
}

unint64_t sub_1006CE818()
{
  result = qword_1019FAD28;
  if (!qword_1019FAD28)
  {
    result = swift_getWitnessTable(aA_45, &type metadata for CRLPreviewImages.Item.FilterCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD28);
  }

  return result;
}

unint64_t sub_1006CE870()
{
  result = qword_1019FAD30;
  if (!qword_1019FAD30)
  {
    result = swift_getWitnessTable(byte_101473C28, &type metadata for CRLPreviewImages.Item.BoardCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD30);
  }

  return result;
}

unint64_t sub_1006CE8C8()
{
  result = qword_1019FAD38;
  if (!qword_1019FAD38)
  {
    result = swift_getWitnessTable(byte_101473C50, &type metadata for CRLPreviewImages.Item.BoardCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD38);
  }

  return result;
}

unint64_t sub_1006CE920()
{
  result = qword_1019FAD40;
  if (!qword_1019FAD40)
  {
    result = swift_getWitnessTable(byte_101473B70, &type metadata for CRLPreviewImages.Item.SceneCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD40);
  }

  return result;
}

unint64_t sub_1006CE978()
{
  result = qword_1019FAD48;
  if (!qword_1019FAD48)
  {
    result = swift_getWitnessTable(byte_101473B98, &type metadata for CRLPreviewImages.Item.SceneCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD48);
  }

  return result;
}

unint64_t sub_1006CE9D0()
{
  result = qword_1019FAD50;
  if (!qword_1019FAD50)
  {
    result = swift_getWitnessTable(byte_101473D98, &type metadata for CRLPreviewImages.Item.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD50);
  }

  return result;
}

unint64_t sub_1006CEA28()
{
  result = qword_1019FAD58;
  if (!qword_1019FAD58)
  {
    result = swift_getWitnessTable(byte_101473DC0, &type metadata for CRLPreviewImages.Item.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD58);
  }

  return result;
}

unint64_t sub_1006CEA80()
{
  result = qword_1019FAD60;
  if (!qword_1019FAD60)
  {
    result = swift_getWitnessTable(byte_101473A68, &type metadata for CRLPreviewImages.ImageSizeClass.BoardListViewCellCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD60);
  }

  return result;
}

unint64_t sub_1006CEAD8()
{
  result = qword_1019FAD68;
  if (!qword_1019FAD68)
  {
    result = swift_getWitnessTable(byte_101473A90, &type metadata for CRLPreviewImages.ImageSizeClass.BoardListViewCellCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD68);
  }

  return result;
}

unint64_t sub_1006CEB30()
{
  result = qword_1019FAD70;
  if (!qword_1019FAD70)
  {
    result = swift_getWitnessTable(asc_101473A18, &type metadata for CRLPreviewImages.ImageSizeClass.FolderGridViewCellQuadrantCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD70);
  }

  return result;
}

unint64_t sub_1006CEB88()
{
  result = qword_1019FAD78;
  if (!qword_1019FAD78)
  {
    result = swift_getWitnessTable(asc_101473A40, &type metadata for CRLPreviewImages.ImageSizeClass.FolderGridViewCellQuadrantCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD78);
  }

  return result;
}

unint64_t sub_1006CEBE0()
{
  result = qword_1019FAD80;
  if (!qword_1019FAD80)
  {
    result = swift_getWitnessTable(aQ_50, &type metadata for CRLPreviewImages.ImageSizeClass.FolderGridViewCellEntireCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD80);
  }

  return result;
}

unint64_t sub_1006CEC38()
{
  result = qword_1019FAD88;
  if (!qword_1019FAD88)
  {
    result = swift_getWitnessTable(aY_48, &type metadata for CRLPreviewImages.ImageSizeClass.FolderGridViewCellEntireCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD88);
  }

  return result;
}

unint64_t sub_1006CEC90()
{
  result = qword_1019FAD90;
  if (!qword_1019FAD90)
  {
    result = swift_getWitnessTable(byte_101473978, &type metadata for CRLPreviewImages.ImageSizeClass.BoardCanvasRenderingPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD90);
  }

  return result;
}

unint64_t sub_1006CECE8()
{
  result = qword_1019FAD98;
  if (!qword_1019FAD98)
  {
    result = swift_getWitnessTable(byte_1014739A0, &type metadata for CRLPreviewImages.ImageSizeClass.BoardCanvasRenderingPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAD98);
  }

  return result;
}

unint64_t sub_1006CED40()
{
  result = qword_1019FADA0;
  if (!qword_1019FADA0)
  {
    result = swift_getWitnessTable(byte_101473928, &type metadata for CRLPreviewImages.ImageSizeClass.SpotlightPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADA0);
  }

  return result;
}

unint64_t sub_1006CED98()
{
  result = qword_1019FADA8;
  if (!qword_1019FADA8)
  {
    result = swift_getWitnessTable(byte_101473950, &type metadata for CRLPreviewImages.ImageSizeClass.SpotlightPreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADA8);
  }

  return result;
}

unint64_t sub_1006CEDF0()
{
  result = qword_1019FADB0;
  if (!qword_1019FADB0)
  {
    result = swift_getWitnessTable(byte_101473870, &type metadata for CRLPreviewImages.ImageSizeClass.CustomCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADB0);
  }

  return result;
}

unint64_t sub_1006CEE48()
{
  result = qword_1019FADB8;
  if (!qword_1019FADB8)
  {
    result = swift_getWitnessTable(byte_101473898, &type metadata for CRLPreviewImages.ImageSizeClass.CustomCodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADB8);
  }

  return result;
}

unint64_t sub_1006CEEA0()
{
  result = qword_1019FADC0;
  if (!qword_1019FADC0)
  {
    result = swift_getWitnessTable(byte_101473AB8, &type metadata for CRLPreviewImages.ImageSizeClass.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADC0);
  }

  return result;
}

unint64_t sub_1006CEEF8()
{
  result = qword_1019FADC8;
  if (!qword_1019FADC8)
  {
    result = swift_getWitnessTable(aI_57, &type metadata for CRLPreviewImages.ImageSizeClass.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADC8);
  }

  return result;
}

uint64_t sub_1006CEF4C(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FADD0, &qword_101474250);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_1006CF168();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for CRLPreviewImages.LookupKey(0);
  HIBYTE(v8) = 0;
  sub_1006CC074(&qword_1019FAAC8, type metadata accessor for CRLPreviewImages.LookupKey, aI_54);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  HIBYTE(v8) = 1;
  sub_1006CF1BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v7;
}

unint64_t sub_1006CF168()
{
  result = qword_1019FADD8;
  if (!qword_1019FADD8)
  {
    result = swift_getWitnessTable(asc_101474350, &type metadata for CRLPreviewImages.CacheEntrySnapshot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADD8);
  }

  return result;
}

unint64_t sub_1006CF1BC()
{
  result = qword_1019FADE0;
  if (!qword_1019FADE0)
  {
    result = swift_getWitnessTable(byte_1014D4C24, &type metadata for CRLCodableImage, v0, v1);
    atomic_store(result, &qword_1019FADE0);
  }

  return result;
}

unint64_t sub_1006CF210()
{
  result = qword_1019FADF0;
  if (!qword_1019FADF0)
  {
    result = swift_getWitnessTable(byte_1014D4BFC, &type metadata for CRLCodableImage, v0, v1);
    atomic_store(result, &qword_1019FADF0);
  }

  return result;
}

unint64_t sub_1006CF278()
{
  result = qword_1019FADF8;
  if (!qword_1019FADF8)
  {
    result = swift_getWitnessTable(byte_101474328, &type metadata for CRLPreviewImages.CacheEntrySnapshot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FADF8);
  }

  return result;
}

unint64_t sub_1006CF2D0()
{
  result = qword_1019FAE00;
  if (!qword_1019FAE00)
  {
    result = swift_getWitnessTable(byte_101474260, &type metadata for CRLPreviewImages.CacheEntrySnapshot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAE00);
  }

  return result;
}

unint64_t sub_1006CF328()
{
  result = qword_1019FAE08;
  if (!qword_1019FAE08)
  {
    result = swift_getWitnessTable(byte_101474288, &type metadata for CRLPreviewImages.CacheEntrySnapshot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FAE08);
  }

  return result;
}

uint64_t *sub_1006CF3CC(char a1)
{
  v2 = v1;
  v37 = *v2;
  v4 = v37;
  v5 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v40 = &v35 - v11;
  v12 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v38 = &v35 - v16;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  __chkstk_darwin(v23);
  v25 = &v35 - v24;
  v26 = *(v4 + 736);
  swift_beginAccess();
  if (a1)
  {
    sub_1006D0AA0(v2 + v26, v22);
    sub_10001A2F8(&qword_1019F7EF0, &unk_101A0F400, &unk_1014746E0, byte_101478D54);
    CRType.copy(renamingReferences:)();
    sub_1006D0B78(v22);
    v27 = *(*v2 + 888);
    swift_beginAccess();
    sub_1006D0B10(v2 + v27, v9, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
    sub_1006D080C(&qword_1019FB2E0, type metadata accessor for CRLFreehandDrawingShapeCRDTData, aI_38);
    CRType.copy(renamingReferences:)();
    sub_1006D0BE0(v9);
  }

  else
  {
    sub_1006D0AA0(v2 + v26, v25);
    v28 = *(*v2 + 888);
    swift_beginAccess();
    sub_1006D0B10(v2 + v28, v40, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  }

  sub_1006D0AA0(v25, v22);
  v29 = v40;
  sub_1006D0B10(v40, v9, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  v30 = *(v2 + 5);
  v41[0] = *(v2 + 3);
  v41[1] = v30;
  v42 = *(v2 + 56);
  v36 = v2[2];
  v31 = swift_allocObject();
  sub_1006D0AA0(v22, v19);
  v32 = v39;
  sub_1006D0B10(v9, v39, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  sub_1006D0B10(v32, v31 + *(*v31 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  v33 = v38;
  sub_1006D0AA0(v19, v38);
  *(v31 + qword_101A27318) = 0;
  sub_1006D0AA0(v33, v14);
  sub_1006D0AA0(v14, v31 + *(*v31 + 736));
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_1006D0B78(v14);
  sub_1006D0B78(v33);
  sub_1006D0BE0(v32);
  sub_1006D0B78(v19);
  sub_1006D0BE0(v9);
  sub_1006D0B78(v22);
  sub_1006D0BE0(v29);
  sub_1006D0B78(v25);
  return sub_100747AF0(v41, v36);
}

uint64_t sub_1006CF8B4()
{
  sub_1006D0B78(v0 + *(*v0 + 736));
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1006D0BE0(v0 + *(*v0 + 888));

  return swift_deallocClassInstance();
}

void sub_1006CFA0C(uint64_t a1)
{
  type metadata accessor for CRLShapeItemCRDTData(319);
  if (v1 <= 0x3F)
  {
    sub_100039F68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006CFA90()
{
  qword_101AD61D8 = 97;
  unk_101AD61E0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD61E8 = result;
  return result;
}

void (*sub_1006CFB04(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_1006D0B10(v1, v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  return sub_100691D64;
}

uint64_t sub_1006CFBAC(uint64_t a1)
{
  v2 = sub_1006D080C(&qword_1019FB2E0, type metadata accessor for CRLFreehandDrawingShapeCRDTData, aI_38);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1006CFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1006CFC94(uint64_t a1, uint64_t a2)
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1006CFD18(uint64_t a1, uint64_t a2)
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1006CFD94(uint64_t a1, uint64_t a2)
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1006CFE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_1006CFEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_1006CFF20(uint64_t a1, uint64_t a2)
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_1006CFFA0()
{
  if (qword_1019F1498 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD61D8;

  return v0;
}

uint64_t sub_1006D0020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1006D00A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1006D0128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1006D01BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_1006D0238()
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_1006D02A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1006D0320(uint64_t a1, uint64_t a2)
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_1006D03A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1006D0530(uint64_t a1)
{
  v2 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_1006D05C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100FED700(a2);
  result = type metadata accessor for CRLShapeItemCRDTData(0);
  *(a2 + *(result + 20)) = _swiftEmptyDictionarySingleton;
  *(a2 + *(a1 + 20)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1006D0700(uint64_t a1)
{
  v2 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1006D080C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1006D0A48(uint64_t a1)
{
  result = sub_1006D080C(&qword_1019FB2C0, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_1014745E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006D0AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D0B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006D0B78(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D0BE0(uint64_t a1)
{
  v2 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D0C3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006D0CB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006D0D24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006D0D98()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLEmptyFolderViewDataSource__connectionStatus;
  v2 = sub_1005B981C(&qword_1019FB490, &qword_101474830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Freeform28CRLEmptyFolderViewDataSource__searchString;
  v4 = sub_1005B981C(&qword_1019FB498, &qword_101474838);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8Freeform28CRLEmptyFolderViewDataSource__searchComplete;
  v6 = sub_1005B981C(&unk_101A08DC0, &unk_101474840);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

id sub_1006D0EE0()
{
  if (qword_1019F14A0 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD61F0;
  qword_101AD61F8 = qword_101AD61F0;

  return v1;
}

void sub_1006D0FA0()
{
  if ([v0 hasSinglePreviewableInfo])
  {
    v1 = [v0 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_1006D2240();
    v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = sub_100BC17C8(v2);

    if (v3)
    {
      v4 = [v0 interactiveCanvasController];
      if (v4 && (v5 = v4, v7 = [v4 repForInfo:v3], v5, v7))
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          [v7 enterPreviewMode];
        }

        v6 = v7;
      }

      else
      {
        v6 = v3;
      }
    }
  }
}

id sub_1006D1130()
{
  v1 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 == 1)
  {
    return [v0 hasPreviewableInfos];
  }

  else
  {
    return 0;
  }
}

void sub_1006D1218()
{
  v1 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_23;
    }

    swift_dynamicCast();
    v11 = v18;
    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_20:
    v14 = [v17 interactiveCanvasController];
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = v14;
    v16 = [v14 repForInfo:v11 createIfNeeded:1];

    if (v16)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {

LABEL_23:
        sub_100035F90(v2);

        return;
      }

      v11 = v16;
LABEL_10:
    }
  }

  v12 = v5;
  v13 = v6;
  if (v6)
  {
LABEL_16:
    v6 = (v13 - 1) & v13;
    v11 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_23;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void CRLBoardItemEditor.accessibilityDescriptionEditor(_:didEndEditingWith:)(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [a1 accessibilityDescriptionToSubmit];
    if (!v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();

      v3 = v4;
    }

    v5 = v3;
    [v2 setAccessibilityDescription:?];
  }
}

void sub_1006D1618(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = *((swift_isaMask & *a1) + 0x1B0);
    v4 = a1;
    v5 = v3();
    v78 = v6;
    v80 = v5;
    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v13;

    v14 = [v7 mainBundle];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v7 mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();

    v82 = v4;
    v24 = [v2 placeholderString:v4];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
    v29 = objc_allocWithZone(v28);
    v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled] = 0;
    swift_unknownObjectWeakInit();
    v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact] = 0;
    *&v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView] = 0;
    v30 = &v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_initialAccessibilityDescription];
    *v30 = v80;
    v30[1] = v78;
    swift_unknownObjectWeakAssign();
    v31 = &v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_titleText];
    *v31 = v12;
    v31[1] = v77;
    v32 = &v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_subtitleText];
    *v32 = v18;
    v32[1] = v20;
    v33 = &v29[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_placeholderText];
    *v33 = v25;
    v33[1] = v27;
    v84.receiver = v29;
    v84.super_class = v28;
    v34 = objc_msgSendSuper2(&v84, "initWithNibName:bundle:", 0, 0);
    v35 = [v34 traitCollection];
    v36 = [v35 horizontalSizeClass];
    if (v36 != 1)
    {
      v36 = [v35 verticalSizeClass] == 1;
    }

    v37 = OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact;
    *(v34 + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact) = v36;
    sub_100D4757C(v36);

    if (*(v34 + v37))
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    [v34 setModalPresentationStyle:v38];
    [v34 setModalInPresentation:0];

    v39 = [v2 interactiveCanvasController];
    if (v39 && (v40 = v39, v41 = [v39 layerHost], v40, v41))
    {
      if ([v41 respondsToSelector:"asiOSCVC"])
      {
        v42 = [v41 asiOSCVC];
        swift_unknownObjectRelease();
        v43 = [v42 presentedViewController];
        if (v43)
        {
          v44 = v43;
          [v43 dismissViewControllerAnimated:1 completion:0];
        }

        v45 = [v42 miniFormatterPresenter];
        if (v45)
        {
          [v45 dismissMiniFormatter];
          swift_unknownObjectRelease();
        }

        v46 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v34];

        v47 = v46;
        v48 = [v47 sheetPresentationController];
        if (!v48)
        {
          v81 = objc_opt_self();
          v49 = [v81 _atomicIncrementAssertCount];
          v83 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v83, "invalid nil value found", 23, 2u);
          StaticString.description.getter("launchEditAccessibilityDescription(boardItem:)", 46, 2);
          v79 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.swift", 88, 2);
          v50 = String._bridgeToObjectiveC()();

          v51 = [v50 lastPathComponent];

          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v55 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v49;
          v57 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v57;
          v58 = sub_1005CF04C();
          *(inited + 104) = v58;
          *(inited + 72) = v79;
          *(inited + 136) = &type metadata for String;
          v59 = sub_1000053B0();
          *(inited + 112) = v52;
          *(inited + 120) = v54;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v59;
          *(inited + 152) = 113;
          v60 = v83;
          *(inited + 216) = v57;
          *(inited + 224) = v58;
          *(inited + 192) = v60;
          v61 = v79;
          v62 = v60;
          v63 = static os_log_type_t.error.getter();
          sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v64 = static os_log_type_t.error.getter();
          sub_100005404(v55, &_mh_execute_header, v64, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v65 = swift_allocObject();
          v65[2] = 8;
          v65[3] = 0;
          v65[4] = 0;
          v65[5] = 0;
          v66 = __VaListBuilder.va_list()();
          StaticString.description.getter("launchEditAccessibilityDescription(boardItem:)", 46, 2);
          v67 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.swift", 88, 2);
          v68 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil value found", 23, 2);
          v69 = String._bridgeToObjectiveC()();

          [v81 handleFailureInFunction:v67 file:v68 lineNumber:113 isFatal:0 format:v69 args:v66];

          v48 = v69;
        }

        v70 = [v47 sheetPresentationController];
        if (v70)
        {
          v71 = v70;
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_10146CE00;
          v73 = objc_opt_self();
          *(v72 + 32) = [v73 mediumDetent];
          *(v72 + 40) = [v73 largeDetent];
          sub_100006370(0, &qword_1019FB500, UISheetPresentationControllerDetent_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v71 setDetents:isa];

          [v71 setPrefersEdgeAttachedInCompactHeight:1];
          [v71 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
        }

        v75 = [v47 presentationController];

        if (v75)
        {
          [v75 setDelegate:v34];
        }

        [v42 presentViewController:v47 animated:1 completion:0];

        v76 = v82;
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v76 = v34;
LABEL_26:
  }
}

uint64_t sub_1006D2114(void *a1)
{
  v1 = (*((swift_isaMask & *a1) + 0xD8))();
  if (String.count.getter() > 0)
  {
    return v1;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

unint64_t sub_1006D2240()
{
  result = qword_1019FCB80;
  if (!qword_1019FCB80)
  {
    v3 = type metadata accessor for CRLBoardItem(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1019FCB80);
  }

  return result;
}

char *sub_1006D2420(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    type metadata accessor for UUID();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v6 resolveToSiblingsWithUuids:isa];

    type metadata accessor for CRLBoardItem(0);
    sub_1006D4864(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_1006D2A28(v9, a1, a2 & 1);

    return v10;
  }

  else
  {
    v12 = v2;
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39, "Can't get selectionPath with a nil board", 40, 2u);
    StaticString.description.getter("selectionPathFrom(persistableSelectionPath:isForCollaboratorCursorUpdate:)", 74, 2);
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_1005CF000();
    *(inited + 96) = v23;
    v24 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 34;
    v26 = v39;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "Can't get selectionPath with a nil board", 40, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter("selectionPathFrom(persistableSelectionPath:isForCollaboratorCursorUpdate:)", 74, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Can't get selectionPath with a nil board", 40, 2);
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:34 isFatal:0 format:v35 args:v32];

    v36 = *(v12 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
    v37 = Set._bridgeToObjectiveC()().super.isa;
    v38 = [v36 selectionPathForInfos:v37];

    return v38;
  }
}

char *sub_1006D2A28(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v6 - 8);
  v231 = &v219 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v230 = &v219 - v9;
  v10 = sub_1005B981C(qword_1019F8700, &qword_101474870);
  v235 = *(v10 - 8);
  v236 = v10;
  __chkstk_darwin(v10);
  v234 = &v219 - v11;
  v12 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v242 = *(v12 - 8);
  v243 = v12;
  __chkstk_darwin(v12);
  v241 = &v219 - v13;
  v238 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v238);
  v239 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v240 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019F8790, "2r&");
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v233 = &v219 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v232 = &v219 - v21;
  __chkstk_darwin(v22);
  v244 = &v219 - v23;
  __chkstk_darwin(v24);
  v237 = &v219 - v25;
  __chkstk_darwin(v26);
  v245 = &v219 - v27;
  v28 = sub_1005B981C(&qword_1019FB540, &qword_101474878);
  __chkstk_darwin(v28 - 8);
  v246 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v250 = &v219 - v31;
  __chkstk_darwin(v32);
  v251 = &v219 - v33;
  __chkstk_darwin(v34);
  v36 = &v219 - v35;
  __chkstk_darwin(v37);
  v39 = &v219 - v38;
  __chkstk_darwin(v40);
  v252 = (&v219 - v41);
  __chkstk_darwin(v42);
  v253 = &v219 - v43;
  __chkstk_darwin(v44);
  v46 = &v219 - v45;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    v52 = *(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
    v53.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v54 = [v52 selectionPathForInfos:v53.super.isa];
    goto LABEL_7;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_6;
  }

LABEL_3:
  v227 = v36;
  v47 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
  swift_beginAccess();
  v247 = v47;
  sub_1006D4660(a2 + v47, v46);
  v48 = type metadata accessor for CRLPersistableSelectionPath.UserInfo(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v255 = v49 + 48;
  v256 = v50;
  v51 = (v50)(v46, 1, v48);
  v228 = v39;
  v229 = v18;
  v248 = v48;
  if (v51 == 1)
  {
    sub_1006D46D0(v46);
LABEL_11:
    v60 = *(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
    sub_1012E3B78(a1);
    v61.super.isa = Set._bridgeToObjectiveC()().super.isa;

    v58 = v247;
    if (a3)
    {
      v62 = [v60 unsafePossiblyUnselectableSelectionPathForInfos:v61.super.isa];
    }

    else
    {
      v62 = [v60 selectionPathForInfos:v61.super.isa];
    }

    v63 = v248;
LABEL_15:
    v249 = v62;

    v64 = v253;
    sub_1006D4660(a2 + v58, v253);
    if ((v256)(v64, 1, v63) != 1)
    {
      sub_1006D4660(v64, v252);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v68 = sub_1005B981C(&qword_1019FB550, &qword_101474888);
        v66 = v229;
        v69 = *(v229 + 1);
        v70 = v252;
        v69(v252 + *(v68 + 48), v17);
        v252 = v69;
        v69(v70, v17);
        v64 = v253;
LABEL_20:
        sub_1006D46D0(v64);
        v71 = sub_100BC17C8(a1);
        if (v71)
        {
          v72 = v71;
          v73 = v63;
          v74 = a2;
          type metadata accessor for CRLWPShapeItem(0);
          v75 = swift_dynamicCastClass();
          if (v75)
          {
            v76 = v75;
            v77 = v74 + v58;
            v78 = v228;
            sub_1006D4660(v77, v228);
            if ((v256)(v78, 1, v73) == 1)
            {
LABEL_23:

              v79 = v228;
              goto LABEL_35;
            }

            v124 = v227;
            sub_1006D4660(v78, v227);
            v145 = swift_getEnumCaseMultiPayload();
            if (v145 == 1)
            {
              goto LABEL_89;
            }

            if (v145)
            {

              sub_1006D4804(v124, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
              v79 = v228;
LABEL_35:
              sub_1006D46D0(v79);
              return v249;
            }

            v146 = sub_1005B981C(&qword_1019FB558, &unk_101474890);
            v147 = *(v124 + v146[12]);
            v148 = *(v124 + v146[16]);
            v149 = *(v124 + v146[20]);
            v150 = *(v66 + 4);
            v226 = v17;
            result = v150(v245, v124, v17);
            v151 = *(v76 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
            if (v151)
            {
              v250 = v147;
              v251 = v149;
              v253 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
              LODWORD(v255) = v148;
              v152 = *&v151[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
              if (v152)
              {
                v153 = v239;
                (*(*v152 + 896))(result);
                v154 = v240;
                sub_1006D479C(v153 + *(v238 + 20), v240, type metadata accessor for CRLWPStorageCRDTData);
                v256 = v151;
                sub_1006D4804(v153, type metadata accessor for CRLWPShapeItemCRDTData);
                v155 = v241;
                v156 = v242;
                v157 = v243;
                (*(v242 + 16))(v241, v154, v243);
                sub_1006D4804(v154, type metadata accessor for CRLWPStorageCRDTData);
                v158 = v245;
                v159 = CRAttributedString.index(of:)();
                LOBYTE(v154) = v160;

                (*(v156 + 8))(v155, v157);
                if (v154)
                {
                  v252(v158, v226);
                  goto LABEL_23;
                }

                v200 = type metadata accessor for CRLTextRange();
                v201 = objc_allocWithZone(v200);
                v202 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
                *&v201[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
                v203 = OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge;
                *&v201[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
                NSNotFound.getter();
                v204 = &v201[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
                *v204 = v159;
                v204[1] = v159;
                v205 = v251;
                *&v201[v202] = v250;
                *&v201[v203] = v205;
                v258.receiver = v201;
                v258.super_class = v200;
                result = objc_msgSendSuper2(&v258, "init");
                v206 = result;
                v207 = *(v76 + v253);
                if (!v255)
                {
                  v208 = v245;
                  if (v207)
                  {
                    v215 = *(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
                    v216 = v207;
                    v209 = [v215 selectionPathForTextRange:v206 onStorage:v216];

                    v72 = v216;
                    goto LABEL_103;
                  }

LABEL_118:
                  __break(1u);
                  return result;
                }

                v208 = v245;
                if (v207)
                {
                  v209 = [*(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator) visualSelectionPathForTextRange:result onStorage:*(v76 + v253)];
LABEL_103:
                  v217 = v226;
                  v86 = v249;
                  v218 = v252;

                  v218(v208, v217);
                  v214 = v228;
                  goto LABEL_104;
                }

LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              goto LABEL_114;
            }

            goto LABEL_112;
          }

          v63 = v73;
        }

LABEL_26:
        v80 = v251;
        sub_1006D4660(a2 + v58, v251);
        if ((v256)(v80, 1, v63) == 1)
        {
          sub_1006D46D0(v80);
        }

        else
        {
          v81 = swift_getEnumCaseMultiPayload();
          sub_1006D4804(v80, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
          if (v81 == 4)
          {
            v82 = sub_100BC17C8(a1);
            if (v82)
            {
              v83 = v82;
              type metadata accessor for CRLShapeItem(0);
              v84 = swift_dynamicCastClass();

              if (v84)
              {
                v85 = [objc_allocWithZone(CRLPathSelection) init];
                v86 = v249;
                v87 = [v249 selectionPathWithAppendedSelection:v85];
LABEL_32:
                v88 = v87;

                return v88;
              }
            }
          }
        }

        v89 = v250;
        sub_1006D4660(a2 + v58, v250);
        if ((v256)(v89, 1, v63) == 1)
        {
          goto LABEL_34;
        }

        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_1006D4804(v89, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
          return v249;
        }

        sub_1006D4804(v89, type metadata accessor for CRLTableCellRange);
        v90 = sub_100BC17C8(a1);
        if (!v90)
        {
          return v249;
        }

        v91 = v90;
        type metadata accessor for CRLTableItem(0);
        v92 = swift_dynamicCastClass();

        if (!v92)
        {
          return v249;
        }

        v89 = v246;
        sub_1006D4660(a2 + v58, v246);
        if ((v256)(v89, 1, v63) == 1)
        {
LABEL_34:
          v79 = v89;
          goto LABEL_35;
        }

        v93 = swift_getEnumCaseMultiPayload();
        v86 = v249;
        if (v93 != 2)
        {
          sub_1006D4804(v89, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
          return v86;
        }

        v94 = *(v89 + *(sub_1005B981C(&qword_1019FB548, &qword_101474880) + 48));
        v95 = v230;
        sub_1006D4738(v89, v230);
        v96 = v231;
        sub_1006D479C(v95, v231, type metadata accessor for CRLTableCellRange);
        v97 = type metadata accessor for CRLTableCellSelection(0);
        v98 = objc_allocWithZone(v97);
        sub_1006D479C(v96, &v98[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
        v98[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = v94;
        v259.receiver = v98;
        v259.super_class = v97;
        v85 = objc_msgSendSuper2(&v259, "init");
        sub_1006D4804(v96, type metadata accessor for CRLTableCellRange);
        sub_1006D4804(v95, type metadata accessor for CRLTableCellRange);
        v87 = [v86 selectionPathWithAppendedSelection:v85];
        goto LABEL_32;
      }

      v66 = v229;
      if (!EnumCaseMultiPayload)
      {
        v67 = v252;
        v252 = *(v229 + 1);
        v252(v67, v17);
        goto LABEL_20;
      }

      sub_1006D4804(v252, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
    }

    sub_1006D46D0(v64);
    goto LABEL_26;
  }

  v57 = swift_getEnumCaseMultiPayload();
  sub_1006D4804(v46, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
  if (v57 != 3)
  {
    goto LABEL_11;
  }

  v58 = v247;
  v226 = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v59 = __CocoaSet.count.getter();
  }

  else
  {
    v59 = *(a1 + 16);
  }

  v225 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v257 = &type metadata for Int;
  sub_1005B981C(&qword_1019FB560, &unk_1014748A0);
  String.init<A>(describing:)();
  v100 = String._bridgeToObjectiveC()();

  v224 = sub_1005CF000();
  *(inited + 56) = v224;
  v101 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v100;
  v249 = (inited + 32);
  v223 = v101;
  *(inited + 64) = v101;
  v102 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v63 = v248;
  if (v59 == 1)
  {

    v17 = v226;
    v103 = &qword_1019F2000;
LABEL_75:
    v142 = sub_100BC17C8(a1);
    if (v142)
    {
      v61.super.isa = v142;
      type metadata accessor for CRLGroupItem(0);
      v143 = swift_dynamicCastClass();
      if (v143)
      {
        v144 = v143;
        v60 = *(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
        v62 = [v60 selectionPathForNothingSelectedInsideGroup:v144];
        goto LABEL_15;
      }

      v102 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    }

    v124 = &type metadata for Int32;
    v126 = objc_opt_self();
    LODWORD(v17) = [v126 _atomicIncrementAssertCount];
    v257 = [objc_allocWithZone(v102[101]) init];
    sub_100604538(_swiftEmptyArrayStorage, &v257, "The item in a GroupSelection should be a CRLGroupItem", 53, 2u);
    StaticString.description.getter("selectionPathFrom(boardItems:persistableSelectionPath:allowUnselectableItems:)", 78, 2);
    v128 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v161 = String._bridgeToObjectiveC()();

    v162 = [v161 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v163;

    if (v103[20] != -1)
    {
LABEL_109:
      swift_once();
    }

    v164 = static OS_os_log.crlAssert;
    v165 = swift_initStackObject();
    *(v165 + 16) = xmmword_10146CA70;
    *(v165 + 56) = v124;
    *(v165 + 64) = &protocol witness table for Int32;
    *(v165 + 72) = v128;
    *(v165 + 32) = v17;
    v167 = v223;
    v166 = v224;
    *(v165 + 96) = v224;
    *(v165 + 104) = v167;
    *(v165 + 136) = &type metadata for String;
    v168 = sub_1000053B0();
    *(v165 + 112) = a1;
    *(v165 + 120) = v76;
    *(v165 + 176) = &type metadata for UInt;
    *(v165 + 144) = v168;
    *(v165 + 152) = 90;
    v169 = v257;
    *(v165 + 216) = v166;
    *(v165 + 224) = v167;
    *(v165 + 184) = &protocol witness table for UInt;
    *(v165 + 192) = v169;
    v170 = v128;
    v171 = v169;
    v172 = static os_log_type_t.error.getter();
    sub_100005404(v164, &_mh_execute_header, v172, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v165);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v173 = static os_log_type_t.error.getter();
    sub_100005404(v164, &_mh_execute_header, v173, "The item in a GroupSelection should be a CRLGroupItem", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v174 = swift_allocObject();
    v174[2] = 8;
    v174[3] = 0;
    v174[4] = 0;
    v174[5] = 0;
    v175 = __VaListBuilder.va_list()();
    StaticString.description.getter("selectionPathFrom(boardItems:persistableSelectionPath:allowUnselectableItems:)", 78, 2);
    v176 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v177 = String._bridgeToObjectiveC()();

    StaticString.description.getter("The item in a GroupSelection should be a CRLGroupItem", 53, 2);
    v178 = String._bridgeToObjectiveC()();

    [v126 handleFailureInFunction:v176 file:v177 lineNumber:90 isFatal:0 format:v178 args:v175];

    v52 = *(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
    v53.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v54 = [v52 selectionPathForInfos:v53.super.isa];
LABEL_7:
    v55 = v54;

    return v55;
  }

  v221 = a2;
  v220 = objc_opt_self();
  v104 = [v220 _atomicIncrementAssertCount];
  v257 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v257, "expected equality between two values of type %{public}@", 55, 2u);
  StaticString.description.getter("selectionPathFrom(boardItems:persistableSelectionPath:allowUnselectableItems:)", 78, 2);
  v105 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
  v106 = String._bridgeToObjectiveC()();

  v107 = [v106 lastPathComponent];

  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;

  v222 = inited;
  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v111 = static OS_os_log.crlAssert;
  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_10146CA70;
  *(v112 + 56) = &type metadata for Int32;
  *(v112 + 64) = &protocol witness table for Int32;
  *(v112 + 72) = v105;
  *(v112 + 32) = v104;
  v114 = v223;
  v113 = v224;
  *(v112 + 96) = v224;
  *(v112 + 104) = v114;
  *(v112 + 136) = &type metadata for String;
  v115 = sub_1000053B0();
  *(v112 + 112) = v108;
  *(v112 + 120) = v110;
  *(v112 + 176) = &type metadata for UInt;
  *(v112 + 144) = v115;
  *(v112 + 152) = 87;
  v116 = v105;
  v117 = v257;
  *(v112 + 216) = v113;
  *(v112 + 224) = v114;
  *(v112 + 184) = &protocol witness table for UInt;
  *(v112 + 192) = v117;
  v118 = v116;
  v119 = v117;
  v120 = static os_log_type_t.error.getter();
  sub_100005404(v111, &_mh_execute_header, v120, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v112);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v121 = static os_log_type_t.error.getter();
  v122 = v111;
  v123 = v222;
  sub_100005404(v122, &_mh_execute_header, v121, "expected equality between two values of type %{public}@", 55, 2, v222);

  type metadata accessor for __VaListBuilder();
  v124 = swift_allocObject();
  v124[2] = 8;
  v124[3] = 0;
  v125 = v124 + 3;
  v124[4] = 0;
  v124[5] = 0;
  v76 = *(v123 + 16);
  if (!v76)
  {
LABEL_74:
    v138 = __VaListBuilder.va_list()();
    StaticString.description.getter("selectionPathFrom(boardItems:persistableSelectionPath:allowUnselectableItems:)", 78, 2);
    v139 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v140 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
    v141 = String._bridgeToObjectiveC()();

    [v220 handleFailureInFunction:v139 file:v140 lineNumber:87 isFatal:0 format:v141 args:v138];

    v17 = v226;
    a2 = v221;
    v58 = v247;
    v63 = v248;
    v103 = &qword_1019F2000;
    v102 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    goto LABEL_75;
  }

  v126 = 0;
  while (1)
  {
    v127 = &v249[40 * v126];
    v128 = *(v127 + 3);
    v66 = *(v127 + 4);
    LODWORD(v17) = sub_100020E58(v127, v128);
    v129 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v72 = *v125;
    v130 = *(v129 + 16);
    v131 = __OFADD__(*v125, v130);
    v132 = *v125 + v130;
    if (v131)
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v128 = v129;
    v17 = v124[4];
    if (v17 >= v132)
    {
      goto LABEL_67;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      goto LABEL_107;
    }

    v66 = v124[5];
    if (2 * v17 > v132)
    {
      v132 = 2 * v17;
    }

    v124[4] = v132;
    if ((v132 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_108;
    }

    result = swift_slowAlloc();
    v124[5] = result;
    if (v66)
    {
      if (result != v66 || result >= &v66[8 * v72])
      {
        memmove(result, v66, 8 * v72);
      }

      v17 = v124;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_67:
      result = v124[5];
    }

    if (!result)
    {
      goto LABEL_111;
    }

    v134 = v128[2];
    if (v134)
    {
      break;
    }

LABEL_52:

    if (++v126 == v76)
    {
      goto LABEL_74;
    }
  }

  v135 = v128 + 4;
  v136 = *v125;
  while (1)
  {
    v137 = *v135++;
    *&result[8 * v136] = v137;
    v136 = *v125 + 1;
    if (__OFADD__(*v125, 1))
    {
      break;
    }

    *v125 = v136;
    if (!--v134)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_89:
  v179 = *(sub_1005B981C(&qword_1019FB550, &qword_101474888) + 48);
  v180 = *(v66 + 4);
  v181 = v237;
  v180(v237, v124, v17);
  v182 = v124 + v179;
  v183 = v244;
  result = (v180)(v244, v182, v17);
  v255 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v184 = *(v76 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v184)
  {
    goto LABEL_113;
  }

  v185 = *(v229 + 2);
  v185(v232, v181, v17);
  v185(v233, v183, v17);
  sub_1006ACA60(&qword_1019F8798, &protocol conformance descriptor for CRAttributedString<A>.Cursor);
  sub_1006ACA60(&qword_1019F87A0, &protocol conformance descriptor for CRAttributedString<A>.Cursor);
  v186 = v184;
  v187 = v234;
  v226 = v17;
  result = CursorRange.init(lowerBound:upperBound:)();
  v256 = v186;
  v188 = *&v186[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v188)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v189 = v239;
  (*(*v188 + 896))(result);
  v190 = v240;
  sub_1006D479C(v189 + *(v238 + 20), v240, type metadata accessor for CRLWPStorageCRDTData);
  sub_1006D4804(v189, type metadata accessor for CRLWPShapeItemCRDTData);
  v191 = v241;
  v192 = v242;
  v193 = v243;
  (*(v242 + 16))(v241, v190, v243);
  sub_1006D4804(v190, type metadata accessor for CRLWPStorageCRDTData);
  v194 = CRAttributedString.range(of:)();
  v196 = v195;
  LOBYTE(v189) = v197;

  (*(v192 + 8))(v191, v193);
  result = (*(v235 + 8))(v187, v236);
  if (v189)
  {

    v198 = v226;
    v199 = v252;
    v252(v244, v226);
    v199(v237, v198);
    v79 = v228;
    goto LABEL_35;
  }

  v210 = v244;
  if (__OFSUB__(v196, v194))
  {
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v211 = v237;
  if (!*(v76 + v255))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v209 = [*(v254 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator) selectionPathForRange:v194 onStorage:v196 - v194];

  v212 = v226;
  v213 = v252;
  v252(v210, v226);
  v213(v211, v212);
  v214 = v228;
  v86 = v249;
LABEL_104:
  sub_1006D46D0(v214);
  if (v209)
  {

    return v209;
  }

  return v86;
}

id sub_1006D45BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLSelectionPathValidator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006D4660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB540, &qword_101474878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D46D0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB540, &qword_101474878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D4738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTableCellRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D479C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006D4804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006D4864(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

char *sub_1006D48AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for UUID();

    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [v7 parentMapOfItemsFrom:isa];

    type metadata accessor for CRLBoardItem(0);
    sub_1005B981C(&qword_1019FB568, &unk_1014748B0);
    sub_1006D4864(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v7 resolveToSiblingsWithUuids:v10];

    static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = Dictionary._bridgeToObjectiveC()().super.isa;
    v13 = Set._bridgeToObjectiveC()().super.isa;
    v14 = (*(a3 + 16))(a3, v12, v13);

    if (v14)
    {
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_1006D2A28(v15, a1, 0);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 _atomicIncrementAssertCount];
    v43 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v43, "Can't get selectionPath with a nil board", 40, 2u);
    StaticString.description.getter("selectionPathFrom(persistableSelectionPath:selectableBoardItemsFromParentMapAndSiblings:)", 89, 2);
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_1005CF000();
    *(inited + 96) = v27;
    v28 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 62;
    v30 = v43;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "Can't get selectionPath with a nil board", 40, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter("selectionPathFrom(persistableSelectionPath:selectableBoardItemsFromParentMapAndSiblings:)", 89, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSelectionPathValidator.swift", 92, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Can't get selectionPath with a nil board", 40, 2);
    v39 = String._bridgeToObjectiveC()();

    [v17 handleFailureInFunction:v37 file:v38 lineNumber:62 isFatal:0 format:v39 args:v36];

    v40 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator);
    v41 = Set._bridgeToObjectiveC()().super.isa;
    v16 = [v40 selectionPathForInfos:v41];
  }

  return v16;
}

id sub_1006D4FAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLWPStickyNoteLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1006D5004(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1006D5020(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006D5048(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006D506C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1006D50C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

Swift::Int sub_1006D5134()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006D5234(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1006D5320(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006D541C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006D5DA8(*a1);
  *a2 = result;
  return result;
}

void sub_1006D544C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6C61635377656976;
  v5 = 0x8000000101551700;
  v6 = 0x8000000101551720;
  v7 = 0xD000000000000021;
  if (v2 != 3)
  {
    v7 = 0xD000000000000019;
    v6 = 0x8000000101551750;
  }

  if (v2 == 2)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x4F746E65746E6F63;
    v3 = 0xED00007465736666;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1006D5508()
{
  v1 = *v0;
  v2 = 0x6C61635377656976;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v2 = 0x4F746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006D55C0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1006D5DA8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1006D55E8(uint64_t a1)
{
  v2 = sub_1006D6204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D5624(uint64_t a1)
{
  v2 = sub_1006D6204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D5660(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FB5B8, &unk_101474AE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1006D6204();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14 = *v3;
  v15 = 0;
  sub_1006CDEDC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = *(v3 + 8);
  v15 = 1;
  type metadata accessor for CGPoint(0);
  sub_1006D6314(&qword_1019FB5C0, &protocol conformance descriptor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *&v14 = *(v3 + 24);
  BYTE8(v14) = *(v3 + 32);
  v15 = 2;
  sub_1005B981C(&qword_1019FB5C8, &unk_1014B6510);
  sub_1006D6358();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10 = *(v3 + 48);
  if (v10 >> 60 != 15)
  {
    v11 = *(v3 + 40);
    *&v14 = v11;
    *(&v14 + 1) = v10;
    v15 = 3;
    sub_100024E98(v11, v10);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100025870(v11, v10);
  }

  v12 = *(v3 + 64);
  if (v12 >> 60 == 15)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = *(v3 + 56);
  *&v14 = v13;
  *(&v14 + 1) = v12;
  v15 = 4;
  sub_100024E98(v13, v12);
  sub_1006D63D4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  return sub_100025870(v13, v12);
}

__n128 sub_1006D5980@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1006D5DF4(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1006D59E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1006D5B34(v7, v9) & 1;
}

uint64_t sub_1006D5A40()
{
  _StringGuts.grow(_:)(51);
  v0._countAndFlagsBits = 0xD00000000000001DLL;
  v0._object = 0x800000010155F070;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v1);

  v2._object = 0x800000010155F090;
  v2._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v2);
  type metadata accessor for CGPoint(0);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_1006D5B34(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

LABEL_11:
  v24 = v2;
  v25 = v3;
  v6 = *(a1 + 40);
  v22 = *(a2 + 40);
  v23 = v6;
  v7 = *(&v6 + 1);
  v8 = v6;
  v10 = *(&v22 + 1);
  v9 = v22;
  if (*(&v6 + 1) >> 60 != 15)
  {
    if (*(&v22 + 1) >> 60 != 15)
    {
      v11 = a1;
      v12 = a2;
      sub_1006D6428(&v23, &v21);
      sub_1006D6428(&v22, &v21);
      v15 = sub_1009F9488(v8, v7, v9, v10);
      sub_100025870(v9, v10);
      sub_100025870(v8, v7);
      if (!v15)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_15:
    sub_1006D6428(&v23, &v21);
    v13 = &v22;
    v14 = &v21;
LABEL_22:
    sub_1006D6428(v13, v14);
    sub_100025870(v8, v7);
    sub_100025870(v9, v10);
    goto LABEL_23;
  }

  if (*(&v22 + 1) >> 60 != 15)
  {
    goto LABEL_15;
  }

  v11 = a1;
  v12 = a2;
  sub_1006D6428(&v23, &v21);
  sub_1006D6428(&v22, &v21);
  sub_100025870(v8, v7);
LABEL_17:
  v16 = *(v11 + 56);
  v20 = *(v12 + 56);
  v21 = v16;
  v7 = *(&v16 + 1);
  v8 = v16;
  v10 = *(&v20 + 1);
  v9 = v20;
  if (*(&v16 + 1) >> 60 == 15)
  {
    if (*(&v20 + 1) >> 60 == 15)
    {
      sub_1006D6428(&v21, v19);
      sub_1006D6428(&v20, v19);
      sub_100025870(v8, v7);
LABEL_26:
      v17 = *(v11 + 72) ^ *(v12 + 72) ^ 1;
      return v17 & 1;
    }

    goto LABEL_21;
  }

  if (*(&v20 + 1) >> 60 == 15)
  {
LABEL_21:
    sub_1006D6428(&v21, v19);
    v13 = &v20;
    v14 = v19;
    goto LABEL_22;
  }

  sub_1006D6428(&v21, v19);
  sub_1006D6428(&v20, v19);
  v18 = sub_1009F9488(v8, v7, v9, v10);
  sub_100025870(v9, v10);
  sub_100025870(v8, v7);
  if (v18)
  {
    goto LABEL_26;
  }

LABEL_23:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1006D5DA8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874170, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1006D5DF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_1019FB598, &qword_101474AD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1006D6204();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005070(a1);
    sub_100025870(0, 0xF000000000000000);
    return sub_100025870(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1006CDE88();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v27;
    type metadata accessor for CGPoint(0);
    LOBYTE(v23) = 1;
    sub_1006D6314(&qword_1019FB5A8, &protocol conformance descriptor for CGPoint);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v27;
    v11 = v28;
    LOBYTE(v27) = 2;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = 0;
    LOBYTE(v23) = 3;
    sub_1006D6258();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v12;
    v13 = v27;
    v14 = v28;
    sub_100025870(0, 0xF000000000000000);
    v38 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v15 = v39;
    v16 = v40;
    sub_100025870(0, 0xF000000000000000);
    *&v23 = v9;
    *(&v23 + 1) = v10;
    *&v24 = v11;
    v17 = v22;
    *(&v24 + 1) = v22;
    v18 = v42;
    LOBYTE(v25) = v42;
    *(&v25 + 1) = *v41;
    DWORD1(v25) = *&v41[3];
    *(&v25 + 1) = v13;
    *v26 = v14;
    *&v26[8] = v15;
    *&v26[16] = v16;
    v26[24] = 0;
    sub_1006D62AC(&v23, &v27);
    sub_100005070(a1);
    v27 = v9;
    v28 = v10;
    v29 = v11;
    v30 = v17;
    v31 = v18;
    *v32 = *v41;
    *&v32[3] = *&v41[3];
    v33 = v13;
    v34 = v14;
    v35 = v15;
    v36 = v16;
    v37 = 0;
    result = sub_1006D62E4(&v27);
    v20 = *v26;
    a2[2] = v25;
    a2[3] = v20;
    *(a2 + 57) = *&v26[9];
    v21 = v24;
    *a2 = v23;
    a2[1] = v21;
  }

  return result;
}

unint64_t sub_1006D6204()
{
  result = qword_1019FB5A0;
  if (!qword_1019FB5A0)
  {
    result = swift_getWitnessTable(aE_18, &type metadata for CRLBoardViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FB5A0);
  }

  return result;
}

unint64_t sub_1006D6258()
{
  result = qword_1019FB5B0;
  if (!qword_1019FB5B0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1019FB5B0);
  }

  return result;
}

uint64_t sub_1006D6314(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006D6358()
{
  result = qword_1019FB5D0;
  if (!qword_1019FB5D0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_1005C4E5C(&qword_1019FB5C8, &unk_1014B6510);
    v4[0] = &protocol witness table for UInt64;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_1019FB5D0);
  }

  return result;
}

unint64_t sub_1006D63D4()
{
  result = qword_1019FB5D8;
  if (!qword_1019FB5D8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1019FB5D8);
  }

  return result;
}

uint64_t sub_1006D6428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB5E0, &qword_101474AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CRLBoardAuxiliaryRealTimeChangeTypeLegacy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardAuxiliaryRealTimeChangeTypeLegacy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1006D65EC()
{
  result = qword_1019FB5E8;
  if (!qword_1019FB5E8)
  {
    result = swift_getWitnessTable(asc_101474BCC, &type metadata for CRLBoardViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FB5E8);
  }

  return result;
}

unint64_t sub_1006D6644()
{
  result = qword_1019FB5F0;
  if (!qword_1019FB5F0)
  {
    result = swift_getWitnessTable(a5_17, &type metadata for CRLBoardViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FB5F0);
  }

  return result;
}

unint64_t sub_1006D669C()
{
  result = qword_1019FB5F8;
  if (!qword_1019FB5F8)
  {
    result = swift_getWitnessTable(byte_101474B2C, &type metadata for CRLBoardViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FB5F8);
  }

  return result;
}

uint64_t sub_1006D66F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 201))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006D6710(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *(result + 200) = 0;
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

  *(result + 201) = v3;
  return result;
}

void *sub_1006D6780@<X0>(uint64_t a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v4 = result;
  v111 = v1;
  v112 = a1;
  [result frame];
  x = v125.origin.x;
  y = v125.origin.y;
  width = v125.size.width;
  height = v125.size.height;
  v113 = v4;
  if (CGRectGetWidth(v125) <= 0.0 || (v126.origin.x = x, v126.origin.y = y, v126.size.width = width, v126.size.height = height, CGRectGetHeight(v126) <= 0.0))
  {
    v9 = objc_opt_self();
    LODWORD(v10) = [v9 _atomicIncrementAssertCount];
    *&v123[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v123, "The layer's rect must have a size greater than 0.", 49, 2u);
    StaticString.description.getter("concretePropertyTransition", 26, 2);
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Property Transitions/CRLLayerTransformByNaturalRectTransition.swift", 147, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

LABEL_6:
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10146BDE0;
  v33 = objc_opt_self();
  v34 = [v33 valueWithCGPoint:{0.5, 0.5}];
  v35 = sub_100006370(0, &qword_101A04270, NSValue_ptr);
  *(v32 + 56) = v35;
  v36 = sub_10000FE24(&qword_1019FB608, &qword_101A04270, NSValue_ptr);
  *(v32 + 32) = v34;
  v37 = v32 + 32;
  *(v32 + 64) = v36;
  [v4 anchorPoint];
  v38 = [v33 valueWithCGPoint:?];
  *(v32 + 96) = v35;
  *(v32 + 104) = v36;
  *(v32 + 72) = v38;
  [v4 anchorPoint];
  if (v40 != 0.5 || v39 != 0.5)
  {
    v109 = objc_opt_self();
    v41 = [v109 _atomicIncrementAssertCount];
    *&v123[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v32, v123, "The view's anchor point is expected to be %@, but it's actually %@. Animations may appear incorrect.", 100, 2u);
    StaticString.description.getter("concretePropertyTransition", 26, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Property Transitions/CRLLayerTransformByNaturalRectTransition.swift", 147, 2);
    v43 = String._bridgeToObjectiveC()();

    v44 = [v43 lastPathComponent];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v110 = static OS_os_log.crlAssert;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10146CA70;
    *(v48 + 56) = &type metadata for Int32;
    *(v48 + 64) = &protocol witness table for Int32;
    *(v48 + 32) = v41;
    v49 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v48 + 96) = v49;
    v50 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v48 + 104) = v50;
    *(v48 + 72) = v42;
    *(v48 + 136) = &type metadata for String;
    v51 = sub_1000053B0();
    *(v48 + 112) = v45;
    *(v48 + 120) = v47;
    *(v48 + 176) = &type metadata for UInt;
    *(v48 + 144) = v51;
    *(v48 + 152) = 54;
    v52 = v42;
    v53 = *&v123[0];
    *(v48 + 216) = v49;
    *(v48 + 224) = v50;
    *(v48 + 184) = &protocol witness table for UInt;
    *(v48 + 192) = v53;
    v54 = v52;
    v55 = v53;
    v56 = static os_log_type_t.error.getter();
    v9 = v110;
    sub_100005404(v110, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v48);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v110, &_mh_execute_header, v57, "The view's anchor point is expected to be %@, but it's actually %@. Animations may appear incorrect.", 100, 2, v32);

    type metadata accessor for __VaListBuilder();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v11 = v58 + 3;
    v58[4] = 0;
    v58[5] = 0;
    v59 = *(v32 + 16);
    if (!v59)
    {
LABEL_37:
      v73 = __VaListBuilder.va_list()();
      StaticString.description.getter("concretePropertyTransition", 26, 2);
      v74 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Property Transitions/CRLLayerTransformByNaturalRectTransition.swift", 147, 2);
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter("The view's anchor point is expected to be %@, but it's actually %@. Animations may appear incorrect.", 100, 2);
      v76 = String._bridgeToObjectiveC()();

      [v109 handleFailureInFunction:v74 file:v75 lineNumber:54 isFatal:0 format:v76 args:v73];

      v4 = v113;
      goto LABEL_38;
    }

    v14 = 0;
    while (1)
    {
      v60 = (v37 + 40 * v14);
      v16 = v60[4];
      LODWORD(v10) = sub_100020E58(v60, v60[3]);
      v61 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v62 = *v11;
      v63 = *(v61 + 16);
      v64 = __OFADD__(*v11, v63);
      v65 = *v11 + v63;
      if (v64)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
LABEL_5:
        v17 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10146CA70;
        *(v18 + 56) = &type metadata for Int32;
        *(v18 + 64) = &protocol witness table for Int32;
        *(v18 + 32) = v10;
        v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v18 + 96) = v19;
        v20 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(v18 + 104) = v20;
        *(v18 + 72) = v11;
        *(v18 + 136) = &type metadata for String;
        v21 = sub_1000053B0();
        *(v18 + 112) = v14;
        *(v18 + 120) = v16;
        *(v18 + 176) = &type metadata for UInt;
        *(v18 + 144) = v21;
        *(v18 + 152) = 53;
        v22 = *&v123[0];
        *(v18 + 216) = v19;
        *(v18 + 224) = v20;
        *(v18 + 184) = &protocol witness table for UInt;
        *(v18 + 192) = v22;
        v23 = v11;
        v24 = v22;
        v25 = static os_log_type_t.error.getter();
        sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v26 = static os_log_type_t.error.getter();
        sub_100005404(v17, &_mh_execute_header, v26, "The layer's rect must have a size greater than 0.", 49, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v27 = swift_allocObject();
        v27[2] = 8;
        v27[3] = 0;
        v27[4] = 0;
        v27[5] = 0;
        v28 = __VaListBuilder.va_list()();
        StaticString.description.getter("concretePropertyTransition", 26, 2);
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Property Transitions/CRLLayerTransformByNaturalRectTransition.swift", 147, 2);
        v30 = String._bridgeToObjectiveC()();

        StaticString.description.getter("The layer's rect must have a size greater than 0.", 49, 2);
        v31 = String._bridgeToObjectiveC()();

        [v9 handleFailureInFunction:v29 file:v30 lineNumber:53 isFatal:0 format:v31 args:v28];

        v4 = v113;
        goto LABEL_6;
      }

      v10 = v58[4];
      if (v10 >= v65)
      {
        goto LABEL_29;
      }

      if (v10 + 0x4000000000000000 < 0)
      {
        goto LABEL_44;
      }

      v16 = v58[5];
      if (2 * v10 > v65)
      {
        v65 = 2 * v10;
      }

      v58[4] = v65;
      if ((v65 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_45;
      }

      v9 = v61;
      v66 = swift_slowAlloc();
      v67 = v66;
      v58[5] = v66;
      if (v16)
      {
        break;
      }

      v61 = v9;
      if (!v67)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_30:
      v69 = *(v61 + 16);
      if (v69)
      {
        v70 = (v61 + 32);
        v71 = *v11;
        while (1)
        {
          v72 = *v70++;
          *&v67[8 * v71] = v72;
          v71 = *v11 + 1;
          if (__OFADD__(*v11, 1))
          {
            break;
          }

          *v11 = v71;
          if (!--v69)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

LABEL_14:

      if (++v14 == v59)
      {
        goto LABEL_37;
      }
    }

    if (v66 != v16 || v66 >= &v16[8 * v62])
    {
      memmove(v66, v16, 8 * v62);
    }

    LODWORD(v10) = v58;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v61 = v9;
LABEL_29:
    v67 = v58[5];
    if (!v67)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_38:
  v77 = *(v111 + 152);
  v78 = *(v111 + 184);
  *&v121.m41 = *(v111 + 168);
  *&v121.m43 = v78;
  v122 = *(v111 + 200);
  v79 = *(v111 + 88);
  v80 = *(v111 + 120);
  *&v121.m21 = *(v111 + 104);
  *&v121.m23 = v80;
  *&v121.m31 = *(v111 + 136);
  *&v121.m33 = v77;
  *&v121.m11 = *(v111 + 72);
  *&v121.m13 = v79;
  v81 = *(v111 + 152);
  v82 = *(v111 + 184);
  v123[6] = *(v111 + 168);
  v123[7] = v82;
  v124 = *(v111 + 200);
  v83 = *(v111 + 88);
  v84 = *(v111 + 120);
  v123[2] = *(v111 + 104);
  v123[3] = v84;
  v85 = *(v111 + 136);
  v123[5] = v81;
  v123[4] = v85;
  v86 = *(v111 + 72);
  v123[1] = v83;
  v123[0] = v86;
  if (sub_1006A42F0(v123) == 1)
  {
    [v4 transform];
  }

  else
  {
    v120 = v121;
  }

  v87 = *(v111 + 24);
  v88 = *(v111 + 32);
  v89 = sub_1001206EC(x, y, width, height, *(v111 + 8), *(v111 + 16), v87, v88);
  v91 = v90;
  CATransform3DMakeScale(&b, v87 / width, v88 / height, 1.0);
  a = v120;
  CATransform3DConcat(&v116, &a, &b);
  CATransform3DMakeTranslation(&b, v89 - x, v91 - y, 0.0);
  a = v116;
  CATransform3DConcat(&v117, &a, &b);
  v92 = *(v111 + 56);
  v93 = *(v111 + 64);
  v94 = sub_1001206EC(x, y, width, height, *(v111 + 40), *(v111 + 48), v92, v93);
  v96 = v95;
  CATransform3DMakeScale(&v115, v92 / width, v93 / height, 1.0);
  a = v120;
  CATransform3DConcat(&b, &a, &v115);
  CATransform3DMakeTranslation(&v114, v94 - x, v96 - y, 0.0);
  v115 = b;
  CATransform3DConcat(&a, &v115, &v114);
  type metadata accessor for CATransform3D(0);
  v98 = v97;
  v115.m14 = v97;
  v99 = swift_allocObject();
  *&v115.m11 = v99;
  v100 = *&v117.m33;
  v99[5] = *&v117.m31;
  v99[6] = v100;
  v101 = *&v117.m43;
  v99[7] = *&v117.m41;
  v99[8] = v101;
  v102 = *&v117.m13;
  v99[1] = *&v117.m11;
  v99[2] = v102;
  v103 = *&v117.m23;
  v99[3] = *&v117.m21;
  v99[4] = v103;
  v114.m14 = v98;
  v104 = swift_allocObject();
  *&v114.m11 = v104;
  v105 = *&a.m33;
  v104[5] = *&a.m31;
  v104[6] = v105;
  v106 = *&a.m43;
  v104[7] = *&a.m41;
  v104[8] = v106;
  v107 = *&a.m13;
  v104[1] = *&a.m11;
  v104[2] = v107;
  v108 = *&a.m23;
  v104[3] = *&a.m21;
  v104[4] = v108;
  *v112 = 0u;
  *(v112 + 16) = 0u;
  *(v112 + 48) = 0u;
  *(v112 + 32) = 0u;
  *(v112 + 64) = 26;

  *(v112 + 72) = 0x726F66736E617274;
  *(v112 + 80) = 0xE90000000000006DLL;
  sub_1006A430C(&v115, v112);
  return sub_1006A430C(&v114, v112 + 32);
}

__n128 sub_1006D74D0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  v4 = *(v1 + 152);
  v5 = *(v1 + 184);
  *(a1 + 160) = *(v1 + 168);
  *(a1 + 176) = v5;
  *(a1 + 192) = *(v1 + 200);
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v4;
  result = *(v1 + 72);
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  *(a1 + 256) = 76;
  return result;
}

uint64_t sub_1006D7530(uint64_t a1, uint64_t a2)
{
  result = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = CGRectEqualToRect(*(a1 + 40), *(a2 + 40));
    if (result)
    {
      v5 = *(a1 + 152);
      v6 = *(a1 + 184);
      v34 = *(a1 + 168);
      v35 = v6;
      v36 = *(a1 + 200);
      v7 = *(a1 + 88);
      v8 = *(a1 + 120);
      v30 = *(a1 + 104);
      v31 = v8;
      v32 = *(a1 + 136);
      v33 = v5;
      v28 = *(a1 + 72);
      v29 = v7;
      if (sub_1006A42F0(&v28) == 1)
      {
        v9 = *(a2 + 152);
        v10 = *(a2 + 184);
        v25 = *(a2 + 168);
        v26 = v10;
        v27 = *(a2 + 200);
        v11 = *(a2 + 88);
        v12 = *(a2 + 120);
        v21 = *(a2 + 104);
        v22 = v12;
        v23 = *(a2 + 136);
        v24 = v9;
        v19 = *(a2 + 72);
        v20 = v11;
        result = sub_1006A42F0(&v19);
        if (result == 1)
        {
          return result;
        }
      }

      else
      {
        v13 = *(a2 + 152);
        v14 = *(a2 + 184);
        v25 = *(a2 + 168);
        v26 = v14;
        v27 = *(a2 + 200);
        v15 = *(a2 + 88);
        v16 = *(a2 + 120);
        v21 = *(a2 + 104);
        v22 = v16;
        v23 = *(a2 + 136);
        v24 = v13;
        v19 = *(a2 + 72);
        v20 = v15;
        if (sub_1006A42F0(&v19) != 1)
        {
          v18[0] = v28;
          v18[1] = v29;
          v18[2] = v30;
          v18[3] = v31;
          v18[4] = v32;
          v18[5] = v33;
          v18[6] = v34;
          v18[7] = v35;
          v17[0] = v19;
          v17[1] = v20;
          v17[2] = v21;
          v17[3] = v22;
          v17[4] = v23;
          v17[5] = v24;
          v17[6] = v25;
          v17[7] = v26;
          return sub_10013A608(v18, v17, 0.0);
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1006D76C8(uint64_t a1)
{
  result = sub_1006D76F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1006D76F0()
{
  result = qword_1019FB600;
  if (!qword_1019FB600)
  {
    result = swift_getWitnessTable(asc_101474CAC, &type metadata for CRLLayerTransformByNaturalRectTransition, v0, v1);
    atomic_store(result, &qword_1019FB600);
  }

  return result;
}

void *sub_1006D7744(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v28 = v1;
  v36 = _swiftEmptyArrayStorage;
  sub_100034080(0, v5, 0);
  v6 = v36;
  v7 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 36);
    v14 = v32;
    sub_1006EEEC4(*(a1 + 48) + *(v33 + 72) * v9, v32, type metadata accessor for CRLBoardIdentifier);
    v35 = UUID.uuidString.getter();
    v16 = v15;
    result = sub_100025BA8(v14, type metadata accessor for CRLBoardIdentifier);
    v36 = v6;
    v18 = v6[2];
    v17 = v6[3];
    v19 = v6;
    if (v18 >= v17 >> 1)
    {
      result = sub_100034080((v17 > 1), v18 + 1, 1);
      v19 = v36;
    }

    v19[2] = v18 + 1;
    v20 = &v19[2 * v18];
    v20[4] = v35;
    v20[5] = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v31;
    v21 = *(v31 + 8 * v13);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v19;
    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v30;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v12 = v30;
      v25 = (v29 + 8 * v13);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000341AC(v9, v34, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v9, v34, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v12)
    {
      return v6;
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

uint64_t sub_1006D7A2C()
{
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  type metadata accessor for CRLPreviewImages.Item(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

id sub_1006D7B48()
{
  result = [objc_opt_self() whiteColor];
  qword_101AD6208 = result;
  return result;
}

void sub_1006D7B84(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-v4];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100F7B928(v6, &v15);
    v9 = v16;
    if (*(v16 + 16))
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = v8;

      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v11;
      v13[5] = v9;
      sub_10064191C(0, 0, v5, &unk_101474EE0, v13);
      v23 = v15;
      sub_10000CAAC(&v23, &unk_1019FB880, &unk_101474EC0);

      v22 = v17;
      sub_10000CAAC(&v22, &unk_101A22E80, &unk_1014A08B0);
      v21 = v18;
      sub_10000CAAC(&v21, &qword_1019FB890, &qword_101474ED0);
      v20 = v19;
      sub_10000CAAC(&v20, &qword_1019FB890, &qword_101474ED0);
    }

    else
    {
      v23 = v15;
      sub_10000CAAC(&v23, &unk_1019FB880, &unk_101474EC0);

      v22 = v17;
      sub_10000CAAC(&v22, &unk_101A22E80, &unk_1014A08B0);
      v21 = v18;
      sub_10000CAAC(&v21, &qword_1019FB890, &qword_101474ED0);
      v20 = v19;
      sub_10000CAAC(&v20, &qword_1019FB890, &qword_101474ED0);
    }
  }
}

void sub_1006D7E20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10007BC04(&v31);
    v11 = v31;
    if (v31)
    {
      v12 = v32;
      v13 = v33;
      v15 = v34;
      v14 = v35;
      sub_100BC1A90(v32, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        v37 = v11;
        sub_10000CAAC(&v37, &unk_1019FB880, &unk_101474EC0);

        v38 = v13;
        sub_10000CAAC(&v38, &unk_101A22E80, &unk_1014A08B0);
        v39[0] = v15;
        sub_10000CAAC(v39, &qword_1019FB890, &qword_101474ED0);
        v30[0] = v14;
        sub_10000CAAC(v30, &qword_1019FB890, &qword_101474ED0);

        v16 = &unk_1019F52D0;
        v17 = &unk_10147C1C0;
        v18 = v4;
      }

      else
      {
        v28 = v15;
        v29 = v14;
        sub_1006EEE5C(v4, v8, type metadata accessor for CRLBoardIdentifier);
        if (qword_1019F2138 != -1)
        {
          swift_once();
        }

        v19 = static OS_os_log.crlBoardPreviewImageCache;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v21 = UUID.uuidString.getter();
        v23 = v22;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v21;
        *(inited + 40) = v23;
        v24 = static os_log_type_t.default.getter();
        sub_100005404(v19, &_mh_execute_header, v24, "Received asset download notification for board UUID: %@", 55, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        v30[0] = v11;
        v30[1] = v12;
        v30[2] = v13;
        v25 = v28;
        v30[3] = v28;
        v26 = v29;
        v30[4] = v29;
        PassthroughSubject.send(_:)();
        sub_100025BA8(v8, type metadata accessor for CRLBoardIdentifier);

        v36 = v11;
        sub_10000CAAC(&v36, &unk_1019FB880, &unk_101474EC0);

        v37 = v13;
        sub_10000CAAC(&v37, &unk_101A22E80, &unk_1014A08B0);
        v38 = v25;
        sub_10000CAAC(&v38, &qword_1019FB890, &qword_101474ED0);
        v39[0] = v26;
        v18 = v39;
        v16 = &qword_1019FB890;
        v17 = &qword_101474ED0;
      }

      sub_10000CAAC(v18, v16, v17);
    }

    else
    {
    }
  }
}

void sub_1006D8228(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() processInfo];
    v5 = [v4 thermalState];

    sub_100041C58(v5);
  }
}

void sub_1006D82C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlBoardPreviewImageCache;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "Received low memory warning. Clearing the image preview cache.", 62, 2, _swiftEmptyArrayStorage);
    [*&v3[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache] removeAllObjects];
  }
}

uint64_t sub_1006D8394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_1006D83B4, 0, 0);
}

uint64_t sub_1006D83B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[14] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_1006D8544;
LABEL_5:

    return _swift_task_switch(v5, v2, v4);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  v0[15] = v6;
  if (v6)
  {
    type metadata accessor for MainActor();
    v0[16] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v7;
    v5 = sub_1006D86D8;
    goto LABEL_5;
  }

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1006D8778;

  return sub_10007A630();
}

uint64_t sub_1006D8544()
{
  v1 = *(v0 + 104);

  sub_10007A274();

  return _swift_task_switch(sub_1006D85B4, 0, 0);
}

uint64_t sub_1006D85B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[16] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006D86D8, v3, v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1006D8778;

    return sub_10007A630();
  }
}

uint64_t sub_1006D86D8()
{
  v1 = *(v0 + 120);

  sub_10007C800();

  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1006D8778;

  return sub_10007A630();
}

uint64_t sub_1006D8778()
{

  return _swift_task_switch(sub_1006D8874, 0, 0);
}

uint64_t sub_1006D8874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_1006D8960;

    return sub_10007E728(0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006D8960()
{
  v1 = *(*v0 + 144);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1006D8A6C()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1006D8BCC, v3, v2);
}

uint64_t sub_1006D8BCC()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_1006D8C30, v1, v2);
}

uint64_t sub_1006D8C30()
{
  v1 = v0[2];
  if (v1)
  {
  }

  else
  {
    v2 = v0[14];
    v3 = v0[15];
    v5 = v0[12];
    v4 = v0[13];
    v6 = *(v0[22] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    v8 = *(*(v7 - 8) + 56);
    v8(v5, 1, 5, v7);
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;

    sub_10003CF3C(1, sub_100066014, v9, v6, v4);

    sub_100025BA8(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v10 = *(v3 + 48);
    v11 = v10(v4, 1, v2);
    v12 = v0[17];
    if (v11 == 1)
    {
      v13 = v0[13];
      v39 = v0[14];
      v14 = v0[11];
      v8(v14, 1, 5, v7);
      swift_storeEnumTagMultiPayload();
      sub_10003CB2C(v14, _swiftEmptyArrayStorage, v12);
      if (v10(v13, 1, v39) != 1)
      {
        sub_10000CAAC(v0[13], &unk_1019FB770, &unk_10146FA30);
      }
    }

    else
    {
      sub_1006EEE5C(v0[13], v0[17], _s4NodeVMa);
    }

    v15 = v0[17];
    v16 = *(v15 + *(v0[14] + 20));

    sub_100025BA8(v15, _s4NodeVMa);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v0[15];
      v19 = v0[6];
      v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v21 = *(v18 + 72);
      v22 = _swiftEmptyArrayStorage;
      do
      {
        v23 = v0[16];
        v24 = v0[10];
        sub_1006EEEC4(v20, v23, _s4NodeVMa);
        sub_1006EEEC4(v23, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100025BA8(v23, _s4NodeVMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v26 = v0[10];
        if (EnumCaseMultiPayload == 2)
        {
          v28 = v0[7];
          v27 = v0[8];
          v29 = v0[4];
          sub_1006EEE5C(v26, v29, _s5BoardVMa);
          sub_1006EEEC4(v29, v28, type metadata accessor for CRLBoardIdentifier);
          sub_100025BA8(v29, _s5BoardVMa);
          swift_storeEnumTagMultiPayload();
          sub_1006EEE5C(v28, v27, type metadata accessor for CRLPreviewImages.Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100B36CAC(0, v22[2] + 1, 1, v22);
          }

          v31 = v22[2];
          v30 = v22[3];
          if (v31 >= v30 >> 1)
          {
            v22 = sub_100B36CAC((v30 > 1), v31 + 1, 1, v22);
          }

          v32 = v0[8];
          v22[2] = v31 + 1;
          sub_1006EEE5C(v32, v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31, type metadata accessor for CRLPreviewImages.Item);
        }

        else
        {
          sub_100025BA8(v26, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v20 += v21;
        --v17;
      }

      while (v17);
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
    }

    v1 = sub_100E94184(v22);
  }

  v0[29] = v1;
  v33 = v0[3];
  v34 = static MainActor.shared.getter();
  v0[30] = v34;
  v35 = swift_task_alloc();
  v0[31] = v35;
  *(v35 + 16) = v1;
  *(v35 + 24) = v33;
  v36 = swift_task_alloc();
  v0[32] = v36;
  *v36 = v0;
  v36[1] = sub_1006D9170;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v36, &type metadata for () + 8, &type metadata for () + 8, v34, &protocol witness table for MainActor, &unk_101474DE8, v35, &type metadata for () + 8);
}

uint64_t sub_1006D9170()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return _swift_task_switch(sub_1006D92BC, v4, v5);
  }
}

uint64_t sub_1006D92BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1006D9398()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_subscriptionSet;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10004161C(&qword_1019FB8C0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_100035F90(v3);
      *&v1[v2] = _swiftEmptySetSingleton;

      v18.receiver = v1;
      v18.super_class = type metadata accessor for CRLBoardPreviewImageCache();
      objc_msgSendSuper2(&v18, "dealloc");
      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1006D96B4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = type metadata accessor for CRLPreviewImages.Item(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[36] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[37] = v5;
  v2[38] = v4;

  return _swift_task_switch(sub_1006D9838, v5, v4);
}

uint64_t sub_1006D9838()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  sub_1006DA498(v3);
  v4 = *(v2 + 48);
  v0[39] = v4;
  v0[40] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[31];

    sub_10000CAAC(v5, &unk_1019F33C0, &unk_101468A60);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[35];
    v9 = v0[32];
    v10 = v0[33];
    v11 = v0[31];
    v12 = *(v10 + 32);
    v0[41] = v12;
    v0[42] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v8, v11, v9);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_1006D99DC;
    v14 = v0[35];

    return sub_1006C5CD0(v14);
  }
}

uint64_t sub_1006D99DC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_1006DA058;
  }

  else
  {
    v5 = sub_1006D9B18;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006D9B18()
{
  if (qword_1019F1490 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_1005EB3DC(*(v0 + 232), qword_101AD61A8);
  sub_10000BE14(v4, v3, &unk_1019F33C0, &unk_101468A60);
  v5 = v1(v3, 1, v2);
  v6 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));

    sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
LABEL_17:

    v18 = *(v0 + 8);

    return v18();
  }

  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);
  (*(v0 + 328))(*(v0 + 272), *(v0 + 240), *(v0 + 256));
  v10 = *(v9 + 112);
  sub_1006EEEC4(v10 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v7, type metadata accessor for CRLPreviewImages.Item);
  sub_1006EEE5C(v7, v8, type metadata accessor for CRLPreviewImages.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v11 = *(v0 + 216);

    sub_100025BA8(v11, type metadata accessor for CRLPreviewImages.Item);
LABEL_16:
    v15 = *(v0 + 280);
    v16 = *(v0 + 256);
    v17 = *(*(v0 + 264) + 8);
    v17(*(v0 + 272), v16);
    v17(v15, v16);
    goto LABEL_17;
  }

  sub_100025BA8(*(v0 + 216), type metadata accessor for CRLBoardIdentifier);
  if (*(v10 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16))
  {
    if (*(v10 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass) ^ 2 | *(v10 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8))
    {
LABEL_15:

      goto LABEL_16;
    }
  }

  else if (*(v10 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass) != 200.0 || *(v10 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8) != 200.0)
  {
    goto LABEL_15;
  }

  v12 = swift_task_alloc();
  *(v0 + 360) = v12;
  *v12 = v0;
  v12[1] = sub_1006D9E44;
  v13 = *(v0 + 272);

  return sub_1006C5CD0(v13);
}

uint64_t sub_1006D9E44()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_1006DA268;
  }

  else
  {
    v5 = sub_1006D9F80;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006D9F80()
{

  v1 = v0[35];
  v2 = v0[32];
  v3 = *(v0[33] + 8);
  v3(v0[34], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006DA058()
{

  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v13 = v0[32];
  v14 = v0[35];
  v2 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v4 = Error.publicDescription.getter(v0[17], v0[18]);
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v8 = Error.fullDescription.getter(v0[20]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Error saving board preview image. %{public}@ <%@>", 49, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  (*(v1 + 8))(v14, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1006DA268()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v4 = v0[33];
  v16 = v0[32];
  v17 = v0[35];
  v5 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v7 = Error.publicDescription.getter(v0[17], v0[18]);
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  swift_getErrorValue();
  v11 = Error.fullDescription.getter(v0[20]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v13, "Error saving board preview image. %{public}@ <%@>", 49, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  (*(v4 + 8))(v17, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1006DA498@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v45 = 0;
  v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v45];

  v12 = v45;
  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    URL.appendingPathComponent(_:isDirectory:)();
    v14 = [v9 defaultManager];
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 crl_directoryExistsAt:v16];

    if (v18)
    {
      (*(v3 + 8))(v8, v2);
LABEL_7:
      (*(v3 + 32))(a1, v5, v2);
      v27 = 0;
      return (*(v3 + 56))(a1, v27, 1, v2);
    }

    v20 = [v9 defaultManager];
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v45 = 0;
    v24 = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:0 attributes:0 error:&v45];

    if (v24)
    {
      v25 = *(v3 + 8);
      v26 = v45;
      v25(v8, v2);
      goto LABEL_7;
    }

    v28 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v29 = *(v3 + 8);
    v29(v5, v2);
    v29(v8, v2);
  }

  else
  {
    v19 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v41 = a1;
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v32 = Error.publicDescription.getter(v43, v44);
  v34 = v33;
  *(inited + 56) = &type metadata for String;
  v35 = sub_1000053B0();
  *(inited + 64) = v35;
  *(inited + 32) = v32;
  *(inited + 40) = v34;
  swift_getErrorValue();
  v36 = Error.fullDescription.getter(v42);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v35;
  *(inited + 72) = v36;
  *(inited + 80) = v37;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v38, "Error fetching preview image cache directory. %{public}@ <%@>", 61, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v27 = 1;
  a1 = v41;
  return (*(v3 + 56))(a1, v27, 1, v2);
}

uint64_t sub_1006DA940(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  type metadata accessor for MainActor();
  v2[22] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[23] = v4;
  v2[24] = v3;

  return _swift_task_switch(sub_1006DA9D8, v4, v3);
}

uint64_t sub_1006DA9D8()
{
  v1 = [*(v0[21] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) objectForKey:v0[20]];
  if (v1)
  {
    v2 = v1;

    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = sub_1006D7A2C();
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v8, "Found existing cache entry for: %@", 34, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v9 = v0[1];

    return v9(v2);
  }

  else
  {
    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_10146C6B0;
    v13 = sub_1006D7A2C();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000053B0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v16, "Will create new cache entry for: %@", 35, 2, v12);
    swift_setDeallocating();
    sub_100005070((v12 + 32));
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_1006DAC98;
    v18 = v0[20];

    return sub_1006E2604(v18);
  }
}

uint64_t sub_1006DAC98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1006DAE28;
  }

  else
  {
    v4[27] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1006DADC0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006DADC0()
{

  v1 = *(v0 + 216);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006DAE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DAE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1006DAF28, v8, v7);
}

uint64_t sub_1006DAF28()
{
  sub_1006C63A0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1006DB018;
  v2 = *(v0 + 32);

  return sub_1006C5CD0(v2);
}

uint64_t sub_1006DB018()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1006DB1B8;
  }

  else
  {
    v5 = sub_1006DB154;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006DB154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DB1B8()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006DB258(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 160) = a4;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  type metadata accessor for CRLPreviewImages.Item(0);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 80) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;

  return _swift_task_switch(sub_1006DB32C, v8, v7);
}

uint64_t sub_1006DB32C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 160);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1006EEEC4(*(v0 + 32), v1, type metadata accessor for CRLPreviewImages.Item);
  v6 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v7 = objc_allocWithZone(v6);
  sub_1006EEEC4(v1, &v7[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v8 = &v7[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v8 = v5;
  *(v8 + 1) = v4;
  v8[16] = v3 & 1;
  *&v7[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v2;
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  v9 = objc_msgSendSuper2((v0 + 16), "init");
  *(v0 + 104) = v9;
  sub_100025BA8(v1, type metadata accessor for CRLPreviewImages.Item);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_1006DB4A4;

  return sub_1006DA940(v9);
}

uint64_t sub_1006DB4A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);

    return _swift_task_switch(sub_1006DB7CC, v5, v6);
  }

  else
  {

    v7 = swift_task_alloc();
    *(v3 + 136) = v7;
    *v7 = v4;
    v7[1] = sub_1006DB628;

    return sub_1006C6600();
  }
}

uint64_t sub_1006DB628(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1006DB840;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1006DB750;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006DB750()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_1006DB7CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DB840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DB8B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 136) = a4;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  type metadata accessor for CRLPreviewImages.Item(0);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 80) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;

  return _swift_task_switch(sub_1006DB988, v8, v7);
}

uint64_t sub_1006DB988()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 136);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_1006EEEC4(*(v0 + 32), v1, type metadata accessor for CRLPreviewImages.Item);
  v7 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v8 = objc_allocWithZone(v7);
  sub_1006EEEC4(v1, &v8[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v9 = &v8[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v9 = v6;
  *(v9 + 1) = v5;
  v9[16] = v4 & 1;
  *&v8[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v3;
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  v10 = objc_msgSendSuper2((v0 + 16), "init");
  sub_100025BA8(v1, type metadata accessor for CRLPreviewImages.Item);
  v11 = [*(v2 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) objectForKey:v10];
  *(v0 + 104) = v11;

  if (v11)
  {
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_1006DBB84;

    return sub_1006C6DA8();
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_1006DBB84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1006DBD2C;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1006DBCAC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006DBCAC()
{

  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006DBD2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DBDA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  *(v6 + 600) = v5;
  *(v6 + 592) = a5;
  *(v6 + 820) = a4;
  *(v6 + 584) = a3;
  *(v6 + 576) = a2;
  *(v6 + 568) = a1;
  type metadata accessor for CRLBoardIdentifier(0);
  *(v6 + 608) = swift_task_alloc();
  v7 = type metadata accessor for CRLPreviewImages.Item(0);
  *(v6 + 616) = v7;
  *(v6 + 624) = *(v7 - 8);
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = type metadata accessor for MainActor();
  *(v6 + 664) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 672) = v9;
  *(v6 + 680) = v8;

  return _swift_task_switch(sub_1006DBEF8, v9, v8);
}

uint64_t sub_1006DBEF8()
{
  v1 = *(v0 + 820);
  v2 = (v0 + 576);
  *(v0 + 544) = _swiftEmptyDictionarySingleton;
  if (v1)
  {
    v2 = (&unk_101475008 + 8 * *v2);
    v3 = v2;
  }

  else
  {
    v3 = (v0 + 584);
  }

  v4 = *v2;
  *(v0 + 696) = *v3;
  *(v0 + 688) = v4;
  v5 = *(v0 + 624);
  v6 = *(v0 + 568);
  v7 = *(v6 + 16);
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(v6 + 16);
  }

  *(v0 + 704) = v8;
  *(v0 + 816) = *(v5 + 80);
  if (v7)
  {
    v110 = (v0 + 560);
    *(v0 + 712) = *(v5 + 72);
    v9 = swift_bridgeObjectRetain_n();
    v12 = 0;
    while (1)
    {
      *(v0 + 720) = v12;
      if (v12 == v8)
      {
        __break(1u);
        goto LABEL_29;
      }

      v35 = *(v0 + 648);
      v36 = *(v0 + 640);
      sub_1006EEEC4(*(v0 + 568) + ((*(v0 + 816) + 32) & ~*(v0 + 816)) + *(v0 + 712) * v12, v35, type metadata accessor for CRLPreviewImages.Item);
      sub_1006EEEC4(v35, v36, type metadata accessor for CRLPreviewImages.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 2)
        {
          sub_1006DF808(*(v0 + 648), *(v0 + 608));
          sub_100025BA8(*(v0 + 608), type metadata accessor for CRLBoardIdentifier);
          *(v0 + 728) = static MainActor.shared.getter();
          v108 = dispatch thunk of Actor.unownedExecutor.getter();
          v11 = v109;
          *(v0 + 736) = v108;
          *(v0 + 744) = v109;
          v9 = sub_1006DCD48;
          v10 = v108;

          return _swift_task_switch(v9, v10, v11);
        }

        v38 = *(v0 + 640);
        v117 = (v38 + *(sub_1005B981C(&unk_1019FB780, &unk_101468AB0) + 48));
        v115 = objc_opt_self();
        v39 = [v115 _atomicIncrementAssertCount];
        *(v0 + 552) = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, (v0 + 552), "No image for the scene", 22, 2u);
        StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
        v41 = String._bridgeToObjectiveC()();

        v42 = [v41 lastPathComponent];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v111 = *(v0 + 648);
        v113 = *(v0 + 640);
        v46 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v39;
        v48 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v48;
        v49 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v49;
        *(inited + 72) = v40;
        *(inited + 136) = &type metadata for String;
        v50 = sub_1000053B0();
        *(inited + 112) = v43;
        *(inited + 120) = v45;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v50;
        *(inited + 152) = 303;
        v51 = *(v0 + 552);
        *(inited + 216) = v48;
        *(inited + 224) = v49;
        *(inited + 192) = v51;
        v52 = v40;
        v53 = v51;
        v54 = static os_log_type_t.error.getter();
        sub_100005404(v46, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v55 = static os_log_type_t.error.getter();
        sub_100005404(v46, &_mh_execute_header, v55, "No image for the scene", 22, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v56 = swift_allocObject();
        v56[2] = 8;
        v56[3] = 0;
        v56[4] = 0;
        v56[5] = 0;
        v57 = __VaListBuilder.va_list()();
        StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
        v58 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter("No image for the scene", 22, 2);
        v60 = String._bridgeToObjectiveC()();

        [v115 handleFailureInFunction:v58 file:v59 lineNumber:303 isFatal:0 format:v60 args:v57];

        sub_100025BA8(v111, type metadata accessor for CRLPreviewImages.Item);
        v61 = type metadata accessor for UUID();
        (*(*(v61 - 8) + 8))(v117, v61);
        v9 = sub_100025BA8(v113, type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        v116 = objc_opt_self();
        v13 = [v116 _atomicIncrementAssertCount];
        *v110 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v110, "No image for the folder", 23, 2u);
        StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
        v14 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
        v15 = String._bridgeToObjectiveC()();

        v16 = [v15 lastPathComponent];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v112 = *(v0 + 648);
        v114 = *(v0 + 640);
        v20 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_10146CA70;
        *(v21 + 56) = &type metadata for Int32;
        *(v21 + 64) = &protocol witness table for Int32;
        *(v21 + 32) = v13;
        v22 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v21 + 96) = v22;
        v23 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v21 + 104) = v23;
        *(v21 + 72) = v14;
        *(v21 + 136) = &type metadata for String;
        v24 = sub_1000053B0();
        *(v21 + 112) = v17;
        *(v21 + 120) = v19;
        *(v21 + 176) = &type metadata for UInt;
        *(v21 + 184) = &protocol witness table for UInt;
        *(v21 + 144) = v24;
        *(v21 + 152) = 296;
        v25 = *(v0 + 560);
        *(v21 + 216) = v22;
        *(v21 + 224) = v23;
        *(v21 + 192) = v25;
        v26 = v14;
        v27 = v25;
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v29, "No image for the folder", 23, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v30 = swift_allocObject();
        v30[2] = 8;
        v30[3] = 0;
        v30[4] = 0;
        v30[5] = 0;
        v31 = __VaListBuilder.va_list()();
        StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter("No image for the folder", 23, 2);
        v34 = String._bridgeToObjectiveC()();

        [v116 handleFailureInFunction:v32 file:v33 lineNumber:296 isFatal:0 format:v34 args:v31];

        sub_100025BA8(v112, type metadata accessor for CRLPreviewImages.Item);
        v9 = sub_100025BA8(v114, type metadata accessor for CRLPreviewImages.Item);
      }

      v8 = *(v0 + 704);
      v12 = *(v0 + 720) + 1;
      if (v12 == v8)
      {

        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v62 = *(v0 + 696);
  v63 = *(v0 + 688);
  v64 = *(v0 + 568);
  v65 = (2 * *(v0 + 704)) | 1;
  v66 = v64 + ((*(v0 + 816) + 32) & ~*(v0 + 816));
  sub_1005B981C(&unk_1019F6F30, &unk_10147AAA0);
  v67 = swift_allocObject();
  v68.n128_u64[1] = 8;
  *(v67 + 16) = xmmword_10146D2A0;
  v68.n128_u64[0] = 0;
  v69.n128_u64[0] = 0;
  v70.n128_f64[0] = (v63 + -2.0) * 0.5;
  v71.n128_f64[0] = (v62 + -2.0) * 0.5;
  *(v67 + 32) = sub_1001221E0(v68, v69, v70, v71, v72);
  *(v67 + 40) = v73;
  *(v67 + 48) = v74;
  *(v67 + 56) = v75;
  v76.n128_u64[0] = 0;
  v77.n128_f64[0] = (v63 + -2.0) * 0.5 + 2.0;
  v78.n128_f64[0] = (v63 + -2.0) * 0.5;
  v79.n128_f64[0] = (v62 + -2.0) * 0.5;
  *(v67 + 64) = sub_1001221E0(v77, v76, v78, v79, v80);
  *(v67 + 72) = v81;
  *(v67 + 80) = v82;
  *(v67 + 88) = v83;
  v84.n128_u64[0] = 0;
  v85.n128_f64[0] = (v62 + -2.0) * 0.5 + 2.0;
  v86.n128_f64[0] = (v63 + -2.0) * 0.5;
  v87.n128_f64[0] = (v62 + -2.0) * 0.5;
  *(v67 + 96) = sub_1001221E0(v84, v85, v86, v87, v88);
  *(v67 + 104) = v89;
  *(v67 + 112) = v90;
  *(v67 + 120) = v91;
  v92.n128_f64[0] = (v63 + -2.0) * 0.5 + 2.0;
  v93.n128_f64[0] = (v62 + -2.0) * 0.5 + 2.0;
  v94.n128_f64[0] = (v63 + -2.0) * 0.5;
  v95.n128_f64[0] = (v62 + -2.0) * 0.5;
  *(v67 + 128) = sub_1001221E0(v92, v93, v94, v95, v96);
  *(v67 + 136) = v97;
  *(v67 + 144) = v98;
  *(v67 + 152) = v99;
  v100 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v63, v62}];
  v101 = swift_allocObject();
  v101[2] = v67;
  v101[3] = v64;
  v101[4] = v66;
  v101[5] = 0;
  v101[6] = v65;
  v101[7] = v0 + 544;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1006EF6B8;
  *(v102 + 24) = v101;
  *(v0 + 512) = sub_1006EF75C;
  *(v0 + 520) = v102;
  *(v0 + 480) = _NSConcreteStackBlock;
  *(v0 + 488) = *"";
  *(v0 + 496) = sub_1006DE5CC;
  *(v0 + 504) = &unk_1018825B0;
  v103 = _Block_copy((v0 + 480));

  v104 = [v100 imageWithActions:v103];

  _Block_release(v103);
  LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

  if (v64)
  {
LABEL_29:
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v105 = [objc_allocWithZone(CRLImage) initWithUIImage:v104];

  v106 = *(v0 + 8);

  return v106(v105);
}

uint64_t sub_1006DCD48()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 592);
  v3 = (*(v0 + 696) + -2.0) * 0.5;
  v4 = (*(v0 + 688) + -2.0) * 0.5;
  sub_1006EEEC4(*(v0 + 648), v1, type metadata accessor for CRLPreviewImages.Item);
  v5 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v6 = objc_allocWithZone(v5);
  sub_1006EEEC4(v1, &v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v7 = &v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v7 = v4;
  v7[1] = v3;
  *(v7 + 16) = 0;
  *&v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v2;
  *(v0 + 528) = v6;
  *(v0 + 536) = v5;
  v8 = objc_msgSendSuper2((v0 + 528), "init");
  *(v0 + 752) = v8;
  sub_100025BA8(v1, type metadata accessor for CRLPreviewImages.Item);
  v9 = swift_task_alloc();
  *(v0 + 760) = v9;
  *v9 = v0;
  v9[1] = sub_1006DCED4;

  return sub_1006DA940(v8);
}

uint64_t sub_1006DCED4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[96] = a1;
  v3[97] = v1;

  v5 = v3[94];
  if (v1)
  {

    v6 = v3[93];
    v7 = v3[92];

    return _swift_task_switch(sub_1006DD1B8, v7, v6);
  }

  else
  {

    v8 = swift_task_alloc();
    v3[98] = v8;
    *v8 = v4;
    v8[1] = sub_1006DD084;

    return sub_1006C6600();
  }
}

uint64_t sub_1006DD084(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 792) = v1;

  if (v1)
  {

    v5 = v4[93];
    v6 = v4[92];
    v7 = sub_1006DE0DC;
  }

  else
  {
    v4[100] = a1;
    v5 = v4[93];
    v6 = v4[92];
    v7 = sub_1006DD228;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1006DD1B8()
{
  v0[101] = v0[97];

  v1 = v0[85];
  v2 = v0[84];

  return _swift_task_switch(sub_1006DE154, v2, v1);
}

uint64_t sub_1006DD228()
{

  v1 = *(v0 + 680);
  v2 = *(v0 + 672);

  return _swift_task_switch(sub_1006DD29C, v2, v1);
}

uint64_t sub_1006DD29C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 544);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 544) = 0x8000000000000000;
  sub_100A9DCDC(v1, v2, isUniquelyReferenced_nonNull_native);
  *(v0 + 544) = v4;
  sub_100025BA8(v2, type metadata accessor for CRLPreviewImages.Item);
  sub_100025BA8(v3, type metadata accessor for CRLBoardIdentifier);
  v6 = *(v0 + 720) + 1;
  if (v6 == *(v0 + 704))
  {
LABEL_2:

    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = *(v0 + 568);
    v10 = (2 * *(v0 + 704)) | 1;
    v11 = v9 + ((*(v0 + 816) + 32) & ~*(v0 + 816));
    sub_1005B981C(&unk_1019F6F30, &unk_10147AAA0);
    v12 = swift_allocObject();
    v13.n128_u64[1] = 8;
    *(v12 + 16) = xmmword_10146D2A0;
    v13.n128_u64[0] = 0;
    v14.n128_u64[0] = 0;
    v15.n128_f64[0] = (v8 + -2.0) * 0.5;
    v16.n128_f64[0] = (v7 + -2.0) * 0.5;
    *(v12 + 32) = sub_1001221E0(v13, v14, v15, v16, v17);
    *(v12 + 40) = v18;
    *(v12 + 48) = v19;
    *(v12 + 56) = v20;
    v21.n128_u64[0] = 0;
    v22.n128_f64[0] = (v8 + -2.0) * 0.5 + 2.0;
    v23.n128_f64[0] = (v8 + -2.0) * 0.5;
    v24.n128_f64[0] = (v7 + -2.0) * 0.5;
    *(v12 + 64) = sub_1001221E0(v22, v21, v23, v24, v25);
    *(v12 + 72) = v26;
    *(v12 + 80) = v27;
    *(v12 + 88) = v28;
    v29.n128_u64[0] = 0;
    v30.n128_f64[0] = (v7 + -2.0) * 0.5 + 2.0;
    v31.n128_f64[0] = (v8 + -2.0) * 0.5;
    v32.n128_f64[0] = (v7 + -2.0) * 0.5;
    *(v12 + 96) = sub_1001221E0(v29, v30, v31, v32, v33);
    *(v12 + 104) = v34;
    *(v12 + 112) = v35;
    *(v12 + 120) = v36;
    v37.n128_f64[0] = (v8 + -2.0) * 0.5 + 2.0;
    v38.n128_f64[0] = (v7 + -2.0) * 0.5 + 2.0;
    v39.n128_f64[0] = (v8 + -2.0) * 0.5;
    v40.n128_f64[0] = (v7 + -2.0) * 0.5;
    *(v12 + 128) = sub_1001221E0(v37, v38, v39, v40, v41);
    *(v12 + 136) = v42;
    *(v12 + 144) = v43;
    *(v12 + 152) = v44;
    v45 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v8, v7}];
    v46 = swift_allocObject();
    v46[2] = v12;
    v46[3] = v9;
    v46[4] = v11;
    v46[5] = 0;
    v46[6] = v10;
    v46[7] = v0 + 544;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1006EF6B8;
    *(v47 + 24) = v46;
    *(v0 + 512) = sub_1006EF75C;
    *(v0 + 520) = v47;
    *(v0 + 480) = _NSConcreteStackBlock;
    *(v0 + 488) = *"";
    *(v0 + 496) = sub_1006DE5CC;
    *(v0 + 504) = &unk_1018825B0;
    v48 = _Block_copy((v0 + 480));

    v49 = [v45 imageWithActions:v48];

    _Block_release(v48);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      v53 = [objc_allocWithZone(CRLImage) initWithUIImage:v49];

      v54 = *(v0 + 8);

      return v54(v53);
    }

    __break(1u);
    return _swift_task_switch(v50, v51, v52);
  }

  v109 = *(v0 + 792);
  v110 = (v0 + 560);
  while (1)
  {
    *(v0 + 720) = v6;
    v78 = *(v0 + 648);
    v79 = *(v0 + 640);
    sub_1006EEEC4(*(v0 + 568) + ((*(v0 + 816) + 32) & ~*(v0 + 816)) + *(v0 + 712) * v6, v78, type metadata accessor for CRLPreviewImages.Item);
    sub_1006EEEC4(v78, v79, type metadata accessor for CRLPreviewImages.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v116 = objc_opt_self();
      v56 = [v116 _atomicIncrementAssertCount];
      *v110 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v110, "No image for the folder", 23, 2u);
      StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
      v58 = String._bridgeToObjectiveC()();

      v59 = [v58 lastPathComponent];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v112 = *(v0 + 648);
      v114 = *(v0 + 640);
      v63 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v56;
      v65 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v65;
      v66 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v66;
      *(inited + 72) = v57;
      *(inited + 136) = &type metadata for String;
      v67 = sub_1000053B0();
      *(inited + 112) = v60;
      *(inited + 120) = v62;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v67;
      *(inited + 152) = 296;
      v68 = *(v0 + 560);
      *(inited + 216) = v65;
      *(inited + 224) = v66;
      *(inited + 192) = v68;
      v69 = v57;
      v70 = v68;
      v71 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v72 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v72, "No image for the folder", 23, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v73 = swift_allocObject();
      v73[2] = 8;
      v73[3] = 0;
      v73[4] = 0;
      v73[5] = 0;
      v74 = __VaListBuilder.va_list()();
      StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter("No image for the folder", 23, 2);
      v77 = String._bridgeToObjectiveC()();

      [v116 handleFailureInFunction:v75 file:v76 lineNumber:296 isFatal:0 format:v77 args:v74];

      sub_100025BA8(v112, type metadata accessor for CRLPreviewImages.Item);
      sub_100025BA8(v114, type metadata accessor for CRLPreviewImages.Item);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 2)
    {
      break;
    }

    v81 = *(v0 + 640);
    v117 = (v81 + *(sub_1005B981C(&unk_1019FB780, &unk_101468AB0) + 48));
    v115 = objc_opt_self();
    v82 = [v115 _atomicIncrementAssertCount];
    *(v0 + 552) = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, (v0 + 552), "No image for the scene", 22, 2u);
    StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
    v84 = String._bridgeToObjectiveC()();

    v85 = [v84 lastPathComponent];

    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v111 = *(v0 + 648);
    v113 = *(v0 + 640);
    v89 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v90 = swift_initStackObject();
    *(v90 + 16) = xmmword_10146CA70;
    *(v90 + 56) = &type metadata for Int32;
    *(v90 + 64) = &protocol witness table for Int32;
    *(v90 + 32) = v82;
    v91 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v90 + 96) = v91;
    v92 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v90 + 104) = v92;
    *(v90 + 72) = v83;
    *(v90 + 136) = &type metadata for String;
    v93 = sub_1000053B0();
    *(v90 + 112) = v86;
    *(v90 + 120) = v88;
    *(v90 + 176) = &type metadata for UInt;
    *(v90 + 184) = &protocol witness table for UInt;
    *(v90 + 144) = v93;
    *(v90 + 152) = 303;
    v94 = *(v0 + 552);
    *(v90 + 216) = v91;
    *(v90 + 224) = v92;
    *(v90 + 192) = v94;
    v95 = v83;
    v96 = v94;
    v97 = static os_log_type_t.error.getter();
    sub_100005404(v89, &_mh_execute_header, v97, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v90);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v98 = static os_log_type_t.error.getter();
    sub_100005404(v89, &_mh_execute_header, v98, "No image for the scene", 22, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v99 = swift_allocObject();
    v99[2] = 8;
    v99[3] = 0;
    v99[4] = 0;
    v99[5] = 0;
    v100 = __VaListBuilder.va_list()();
    StaticString.description.getter("image(for:sizeClass:contentsScale:)", 35, 2);
    v101 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No image for the scene", 22, 2);
    v103 = String._bridgeToObjectiveC()();

    [v115 handleFailureInFunction:v101 file:v102 lineNumber:303 isFatal:0 format:v103 args:v100];

    sub_100025BA8(v111, type metadata accessor for CRLPreviewImages.Item);
    v104 = type metadata accessor for UUID();
    (*(*(v104 - 8) + 8))(v117, v104);
    sub_100025BA8(v113, type metadata accessor for CRLBoardIdentifier);
LABEL_10:
    v6 = *(v0 + 720) + 1;
    if (v6 == *(v0 + 704))
    {
      goto LABEL_2;
    }
  }

  sub_1006DF808(*(v0 + 648), *(v0 + 608));
  if (!v109)
  {
    sub_100025BA8(*(v0 + 608), type metadata accessor for CRLBoardIdentifier);
    *(v0 + 728) = static MainActor.shared.getter();
    v107 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v108;
    *(v0 + 736) = v107;
    *(v0 + 744) = v108;
    v50 = sub_1006DCD48;
    v51 = v107;

    return _swift_task_switch(v50, v51, v52);
  }

  swift_bridgeObjectRelease_n();
  v105 = *(v0 + 640);
  sub_100025BA8(*(v0 + 648), type metadata accessor for CRLPreviewImages.Item);
  sub_100025BA8(v105, type metadata accessor for CRLBoardIdentifier);

  v106 = *(v0 + 8);

  return v106();
}

uint64_t sub_1006DE0DC()
{

  v0[101] = v0[99];

  v1 = v0[85];
  v2 = v0[84];

  return _swift_task_switch(sub_1006DE154, v2, v1);
}

uint64_t sub_1006DE154()
{

  v1 = v0[80];
  sub_100025BA8(v0[81], type metadata accessor for CRLPreviewImages.Item);
  sub_100025BA8(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = v0[1];

  return v2();
}

void sub_1006DE244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  v55 = a4;
  v56 = a5;
  v11 = type metadata accessor for CRLPreviewImages.Item(0);
  v54 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() secondarySystemBackgroundColor];
  [v14 setFill];

  v15 = *(a2 + 16);
  if (!v15)
  {
    return;
  }

  v16 = a6 >> 1;
  v17 = v16 - v56;
  if (__OFSUB__(v16, v56))
  {
    goto LABEL_18;
  }

  v18 = a7;
  v19 = 0;
  v20 = (a2 + 56);
  v52 = v16;
  v53 = a7;
  while (1)
  {
    v22 = *(v20 - 3);
    v21 = *(v20 - 2);
    v24 = *(v20 - 1);
    v23 = *v20;
    if (v19 >= v17)
    {
      goto LABEL_5;
    }

    if (v19 < v56 || v19 >= v16)
    {
      break;
    }

    sub_1006EEEC4(v55 + *(v54 + 72) * v19, v13, type metadata accessor for CRLPreviewImages.Item);
    v25 = *v18;
    if (*(*v18 + 16))
    {
      v26 = sub_1007C880C(v13);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);
        sub_100025BA8(v13, type metadata accessor for CRLPreviewImages.Item);
        v29 = [v28 UIImage];
        v30 = [v29 isSymbolImage];

        if (v30)
        {
          [a1 fillRect:{v22, v21, v24, v23}];
          [v28 size];
          v32 = v31;
          v34 = v33;
          v35 = sub_10011F340(v24, v23, 0.5);
          v37 = sub_100121EF4(0, v32, v34, v35, v36);
          v38 = sub_100120414(v22, v21, v24, v23);
          v40 = sub_10011EC70(v38, v39, v37);
        }

        else
        {
          [v28 size];
          v40 = sub_100121F30(0, v44, v45, v22, v21, v24, v23);
        }

        v46 = v40;
        v47 = v41;
        v48 = v42;
        v49 = v43;
        v50 = [v28 UIImage];
        [v50 drawInRect:{v46, v47, v48, v49}];

        v16 = v52;
        v18 = v53;
        goto LABEL_6;
      }
    }

    sub_100025BA8(v13, type metadata accessor for CRLPreviewImages.Item);
LABEL_5:
    [a1 fillRect:{v22, v21, v24, v23}];
LABEL_6:
    ++v19;
    v20 += 4;
    if (v15 == v19)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1006DE5CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1006DE618(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  type metadata accessor for MainActor();
  *(v3 + 32) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return _swift_task_switch(sub_1006DE6B4, v5, v4);
}

uint64_t sub_1006DE6B4()
{
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 16);
    sub_1005B981C(&qword_1019FB758, &qword_101474DA0);
    v2 = *(type metadata accessor for CRLPreviewImages.Item(0) - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10146C6B0;
    sub_1006EEEC4(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v4 + v3, type metadata accessor for CRLPreviewImages.Item);
    v5 = sub_1005BDB60(v4);
    *(v0 + 56) = v5;
    swift_setDeallocating();
    sub_100025BA8(v4 + v3, type metadata accessor for CRLPreviewImages.Item);
    swift_deallocClassInstance();
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1006DE93C;

    return sub_1006DED74(v5);
  }

  else
  {
    v8 = [*(*(v0 + 24) + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) objectForKey:*(v0 + 16)];
    if (v8)
    {
      v9 = v8;

      v10 = *(v0 + 8);

      return v10(v9);
    }

    else
    {
      v11 = swift_task_alloc();
      *(v0 + 72) = v11;
      *v11 = v0;
      v11[1] = sub_1006DEB80;
      v12 = *(v0 + 16);

      return sub_1006E37B4(v12);
    }
  }
}

uint64_t sub_1006DE93C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1006DEA80, v3, v2);
}

uint64_t sub_1006DEA80()
{
  v1 = [*(v0[3] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) objectForKey:v0[2]];
  if (v1)
  {
    v2 = v1;

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1006DEB80;
    v6 = v0[2];

    return sub_1006E37B4(v6);
  }
}

uint64_t sub_1006DEB80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1006DED10;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1006DECA8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006DECA8()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006DED10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DED74(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[44] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DEE74, v5, v4);
}

uint64_t sub_1006DEE74()
{
  v52 = v0;
  v1 = v0[38];

  if (*(v1 + 16))
  {
    v2 = v0[38];
    v3 = (v2 + 56);
    v4 = v0[41];
    v5 = -1;
    v6 = -1 << v2[32];
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v2 + 7);
    v8 = (63 - v6) >> 6;

    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_9:
        v12 = v0[42];
        v11 = v0[43];
        sub_1006EEEC4(*(v2 + 6) + *(v4 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), v11, type metadata accessor for CRLPreviewImages.Item);
        sub_1006EEE5C(v11, v12, type metadata accessor for CRLPreviewImages.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v14 = v0[42];
        if (EnumCaseMultiPayload != 2)
        {
          break;
        }

        v7 &= v7 - 1;
        v15 = *(sub_1005B981C(&unk_1019FB780, &unk_101468AB0) + 48);
        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 8))(v14 + v15, v16);
        sub_100025BA8(v14, type metadata accessor for CRLBoardIdentifier);
        v9 = v10;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      sub_100025BA8(v14, type metadata accessor for CRLPreviewImages.Item);
      v50 = objc_opt_self();
      LODWORD(v10) = [v50 _atomicIncrementAssertCount];
      v51 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v51, "Attempting to invalidate non-scene entries. Bailing.", 52, 2u);
      StaticString.description.getter("invalidateSceneEntries(for:)", 28, 2);
      v2 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
      v32 = String._bridgeToObjectiveC()();

      v33 = [v32 lastPathComponent];

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v34;

      if (qword_1019F20A0 == -1)
      {
        goto LABEL_34;
      }
    }

    else
    {
      while (1)
      {
LABEL_6:
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v10 >= v8)
        {
          break;
        }

        v7 = *(v3 + 8 * v10);
        ++v9;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      v17 = v0[38];
      v2 = v0[39];

      v18 = sub_1006DF5EC(v17);
      v19 = v18;
      if ((v18 & 0xC000000000000001) != 0)
      {
        v2 = __CocoaSet.makeIterator()();
        type metadata accessor for CRLPreviewImages.LookupKey(0);
        sub_10004161C(&qword_1019FB898, type metadata accessor for CRLPreviewImages.LookupKey, &protocol conformance descriptor for NSObject);
        Set.Iterator.init(_cocoa:)();
        v19 = v0[31];
        v10 = v0[32];
        v20 = v0[33];
        v21 = v0[34];
        v4 = v0[35];
      }

      else
      {
        v21 = 0;
        v22 = -1 << *(v18 + 32);
        v10 = v18 + 56;
        v20 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v4 = v24 & *(v18 + 56);
      }

      v50 = v20;
      v3 = (v20 + 64) >> 6;
      if (v19 < 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v25 = v21;
        v26 = v4;
        v27 = v21;
        if (!v4)
        {
          break;
        }

LABEL_23:
        v28 = (v26 - 1) & v26;
        v2 = *(*(v19 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v2)
        {
LABEL_29:
          sub_100035F90(v19);
          goto LABEL_30;
        }

        while (1)
        {
          [*(v0[39] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) removeObjectForKey:v2];

          v21 = v27;
          v4 = v28;
          if ((v19 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_25:
          v29 = __CocoaSet.Iterator.next()();
          if (v29)
          {
            v0[37] = v29;
            type metadata accessor for CRLPreviewImages.LookupKey(0);
            swift_dynamicCast();
            v2 = v0[36];
            v27 = v21;
            v28 = v4;
            if (v2)
            {
              continue;
            }
          }

          goto LABEL_29;
        }
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v3)
        {
          goto LABEL_29;
        }

        v26 = *(v10 + 8 * v27);
        ++v25;
        if (v26)
        {
          goto LABEL_23;
        }
      }

LABEL_36:
      __break(1u);
    }

    swift_once();
LABEL_34:
    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v10;
    v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v37;
    v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v38;
    *(inited + 72) = v2;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v3;
    *(inited + 120) = v4;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 380;
    v40 = v51;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v2;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "Attempting to invalidate non-scene entries. Bailing.", 52, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("invalidateSceneEntries(for:)", 28, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Attempting to invalidate non-scene entries. Bailing.", 52, 2);
    v49 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v47 file:v48 lineNumber:380 isFatal:0 format:v49 args:v46];
  }

LABEL_30:

  v30 = v0[1];

  return v30();
}

void *sub_1006DF5EC(uint64_t a1)
{
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    goto LABEL_2;
  }

LABEL_14:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_2:
    v7 = _swiftEmptySetSingleton;
    goto LABEL_3;
  }

  sub_1005BF998(_swiftEmptyArrayStorage);
LABEL_3:
  v16 = v7;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_10:
      sub_1006EEEC4(*(a1 + 48) + *(v4 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v6, type metadata accessor for CRLPreviewImages.Item);
      sub_1006E4C34(&v16, v6, v1);
      v10 &= v10 - 1;
      sub_100025BA8(v6, type metadata accessor for CRLPreviewImages.Item);
      v12 = v13;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  return v16;
}

uint64_t sub_1006DF808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = _s5BoardVMa(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_1006EEEC4(a1, v13, type metadata accessor for CRLPreviewImages.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1006EEE5C(v13, a2, type metadata accessor for CRLBoardIdentifier);
    sub_1010AB99C(a2, v7);
    if (v2)
    {

      (*(v9 + 56))(v7, 1, 1, v8);
      return sub_10000CAAC(v7, &unk_1019FA3E0, &unk_101474F20);
    }

    v23 = a2;
    (*(v9 + 56))(v7, 0, 1, v8);
    v24 = v42;
    sub_1006EEE5C(v7, v42, _s5BoardVMa);
    if (*(v24 + *(v8 + 72)))
    {
      if (qword_1019F2138 != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.crlBoardPreviewImageCache;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.default.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Throwing unsupportedItemType for board UUID: %@", 47, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      type metadata accessor for CRLPreviewImages.CacheError(0);
      sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
      swift_allocError();
      sub_1006EEEC4(v43, v31, type metadata accessor for CRLPreviewImages.Item);
    }

    else
    {
      if (*(v24 + *(v8 + 76) + 8) == 1)
      {
        v32 = _s5BoardVMa;
        v33 = v24;
        return sub_100025BA8(v33, v32);
      }

      if (qword_1019F2138 != -1)
      {
        swift_once();
      }

      v34 = static OS_os_log.crlBoardPreviewImageCache;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_10146C6B0;
      v36 = UUID.uuidString.getter();
      v38 = v37;
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = sub_1000053B0();
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      v39 = static os_log_type_t.default.getter();
      sub_100005404(v34, &_mh_execute_header, v39, "Throwing lastBoardOpenCrashed for board UUID: %@", 48, 2, v35);
      swift_setDeallocating();
      sub_100005070((v35 + 32));
      type metadata accessor for CRLPreviewImages.CacheError(0);
      sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
      swift_allocError();
      sub_1006EEEC4(v43, v40, type metadata accessor for CRLPreviewImages.Item);
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100025BA8(v24, _s5BoardVMa);
    v32 = type metadata accessor for CRLBoardIdentifier;
    v33 = v23;
    return sub_100025BA8(v33, v32);
  }

  sub_100025BA8(v13, type metadata accessor for CRLPreviewImages.Item);
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10146C6B0;
  v17 = v43;
  v18 = sub_1006C875C();
  v20 = v19;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1000053B0();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v21, "Throwing unsupportedItemType for item: %@", 41, 2, v16);
  swift_setDeallocating();
  sub_100005070((v16 + 32));
  type metadata accessor for CRLPreviewImages.CacheError(0);
  sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
  swift_allocError();
  sub_1006EEEC4(v17, v22, type metadata accessor for CRLPreviewImages.Item);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

id sub_1006DFF40()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache____lazy_storage___defaultUnsupportedImage;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache____lazy_storage___defaultUnsupportedImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache____lazy_storage___defaultUnsupportedImage);
  }

  else
  {
    v4 = sub_1006DFFA0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1006DFFA0()
{
  v0 = [objc_opt_self() tintColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithPointSize:7 weight:48.0];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101465920;
  *(v3 + 32) = v0;
  sub_100006370(0, &qword_101A11110, UIColor_ptr);
  v4 = v2;
  v5 = v0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v1 configurationWithPaletteColors:isa];

  v8 = [v4 configurationByApplyingConfiguration:v7];
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    [v11 size];
    v13 = v12 + v12;
    [v11 size];
    v15 = v14 + v14;
    [v11 size];
    v17 = (v13 - v16) * 0.5;
    [v11 size];
    v19 = (v15 - v18) * 0.5;
    [v11 size];
    v21 = v20;
    [v11 size];
    v23 = v22;
    v53.width = v13;
    v53.height = v15;
    UIGraphicsBeginImageContextWithOptions(v53, 0, 2.0);
    [v11 drawInRect:{v17, v19, v21, v23}];
    v24 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v25 = objc_allocWithZone(CRLImage);
    if (v24)
    {
      v26 = [v25 initWithUIImage:v24];
    }

    else
    {
      v26 = [v25 init];
    }
  }

  else
  {
    v51 = v5;
    v50 = objc_opt_self();
    v27 = [v50 _atomicIncrementAssertCount];
    v52 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v52, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("defaultUnsupportedImage", 23, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v36 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v36;
    v37 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v37;
    *(inited + 72) = v28;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(inited + 112) = v31;
    *(inited + 120) = v33;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 445;
    v39 = v52;
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v39;
    v40 = v28;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter("defaultUnsupportedImage", 23, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v48 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v46 file:v47 lineNumber:445 isFatal:0 format:v48 args:v45];

    v26 = [objc_allocWithZone(CRLImage) init];
  }

  return v26;
}

id sub_1006E065C(void *a1)
{
  if (qword_1019F14B8 != -1)
  {
    swift_once();
  }

  v2 = [qword_101AD6208 UIColor];
  [v2 setFill];

  v3 = sub_10011ECB4();

  return [a1 fillRect:v3];
}

uint64_t (*sub_1006E0714(uint64_t a1))(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v65 = &v57 - v3;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v61 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v62 = v5;
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v57 - v7;
  v8 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v16 = sub_1006D7A2C();
  v18 = v17;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v19, "Starting imaging task for: %@", 29, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_1006EEEC4(a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v13, type metadata accessor for CRLPreviewImages.Item);
  if (*(a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16) == 1)
  {
    v20 = (&unk_101475008 + 8 * *(a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass));
    v21 = *v20;
  }

  else
  {
    v20 = (a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8);
    v21 = *(a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
  }

  v22 = *v20;
  v23 = *(a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
  v24 = v66;
  if (qword_1019F14B8 != -1)
  {
    v54 = v21;
    v55 = *v20;
    v56 = *(a1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
    swift_once();
    v23 = v56;
    v22 = v55;
    v21 = v54;
  }

  v25 = qword_101AD6208;
  v26 = sub_10011F340(v21, v22, v23);
  v28 = v27;
  sub_1006EEEC4(v13, v10, type metadata accessor for CRLPreviewImages.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v59 = v25;
    v60 = v13;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1006EEE5C(v10, v24, type metadata accessor for CRLBoardIdentifier);
      v58 = 0u;
      v30 = 1;
      v57 = 0u;
    }

    else
    {
      v33 = sub_1005B981C(&unk_1019FB780, &unk_101468AB0);
      v34 = *(v33 + 48);
      v35 = &v10[*(v33 + 64)];
      v36 = *v35;
      v57 = *(v35 + 1);
      v58 = v36;
      sub_1006EEE5C(v10, v24, type metadata accessor for CRLBoardIdentifier);
      v37 = type metadata accessor for UUID();
      (*(*(v37 - 8) + 8))(&v10[v34], v37);
      v30 = 0;
    }

    v38 = v62;
    v67 = v30;
    v39 = v65;
    static TaskPriority.background.getter();
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    v41 = v63;
    sub_1006EEEC4(v24, v63, type metadata accessor for CRLBoardIdentifier);
    v42 = (*(v61 + 80) + 40) & ~*(v61 + 80);
    v43 = (v38 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v46 = v64;
    v45[4] = v64;
    sub_1006EEE5C(v41, v45 + v42, type metadata accessor for CRLBoardIdentifier);
    v47 = v59;
    *(v45 + v43) = v59;
    v48 = (v45 + v44);
    *v48 = v26;
    *(v48 + 1) = v28;
    v49 = v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8);
    v50 = v57;
    *v49 = v58;
    *(v49 + 1) = v50;
    v49[32] = v67;
    v51 = v46;
    v52 = v47;
    v32 = sub_1006E2100(0, 0, v39, &unk_101474E10, v45);
    sub_10000CAAC(v39, &qword_1019FB750, &qword_10146F1B0);
    sub_100025BA8(v24, type metadata accessor for CRLBoardIdentifier);
    sub_100025BA8(v60, type metadata accessor for CRLPreviewImages.Item);
  }

  else
  {
    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
    swift_allocError();
    sub_1006EEEC4(v13, v31, type metadata accessor for CRLPreviewImages.Item);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v32 = type metadata accessor for CRLPreviewImages.Item;
    sub_100025BA8(v13, type metadata accessor for CRLPreviewImages.Item);
    sub_100025BA8(v10, type metadata accessor for CRLPreviewImages.Item);
  }

  return v32;
}

uint64_t sub_1006E0DE4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 72) = a9;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 24) = a1;
  *(v9 + 32) = a6;
  type metadata accessor for CRLBoardIdentifier(0);
  *(v9 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1006E0E80, 0, 0);
}

uint64_t sub_1006E0E80()
{
  v0[11] = *(v0[4] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary);
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006E0F2C, v2, v1);
}

uint64_t sub_1006E0F2C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];

  sub_1006EEEC4(v3, v1, type metadata accessor for CRLBoardIdentifier);
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  type metadata accessor for CRLBoardActor(0);
  v5 = swift_allocObject();
  v0[14] = v5;
  v6 = v4;
  swift_defaultActor_initialize();
  sub_1006EEE5C(v1, v5 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  *(v5 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v6;

  return _swift_task_switch(sub_1006E1038, v5, 0);
}

uint64_t sub_1006E1038()
{
  v1 = *(v0 + 112);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1006E1100;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_1006E1100(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1006E1548;
  }

  else
  {
    v4 = sub_1006E1214;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006E1214()
{
  v1 = static Task<>.isCancelled.getter();
  v2 = *(v0 + 16);
  if (v1)
  {
    sub_1006EEAB4();
    swift_allocError();
    swift_willThrow();

    v3 = *(v0 + 1);

    return v3();
  }

  else
  {
    v5 = objc_allocWithZone(CRLCanvasImager);
    v6 = v2;
    v7 = [v5 initWithBoard:v6];
    *(v0 + 18) = v7;
    v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

    v9 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v10 = *&v8[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    if (!v10)
    {
      sub_10096C7D4();
      v10 = *&v8[v9];
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    if (v11 >> 62)
    {
      sub_1005B981C(&qword_1019F5720, &unk_101474E20);
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v12 = *(v0 + 9);
    v14 = v0[7];
    v13 = v0[8];
    v15 = *(v0 + 6);

    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setInfos:isa];

    [v7 setBackgroundColor:v15];
    [v7 setScaledImageSize:{v14, v13}];
    if ((*(v12 + 32) & 1) == 0)
    {
      [v7 setUnscaledClipRect:{**(v0 + 9), *(*(v0 + 9) + 8), *(*(v0 + 9) + 16), *(*(v0 + 9) + 24)}];
    }

    v17 = *(v0 + 4);
    v18 = swift_task_alloc();
    *(v0 + 19) = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v7;
    v19 = swift_task_alloc();
    *(v0 + 20) = v19;
    v20 = sub_1005B981C(&unk_1019FB790, &unk_1014820B0);
    *v19 = v0;
    v19[1] = sub_1006E15B4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x800000010155F440, sub_1006ED3F0, v18, v20);
  }
}

uint64_t sub_1006E1548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006E15B4()
{

  return _swift_task_switch(sub_1006E16CC, 0, 0);
}

uint64_t sub_1006E16CC()
{
  v1 = v0[2];
  v0[21] = v1;
  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[18];
    v3 = v0[16];
    sub_1006EEAB4();
    swift_allocError();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = static MainActor.shared.getter();
    if (v1)
    {
      v0[22] = v6;
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
      v10 = sub_1006E1844;
    }

    else
    {
      v0[25] = v6;
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v11;
      v10 = sub_1006E1C34;
    }

    return _swift_task_switch(v10, v7, v9);
  }
}

uint64_t sub_1006E1844()
{
  v1 = *(v0 + 32);

  *(v0 + 184) = *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_assetDownloadHelper);

  return _swift_task_switch(sub_1006E18C8, 0, 0);
}

uint64_t sub_1006E18C8()
{
  v1 = *(v0 + 184);
  v2 = [*(v0 + 144) previousRenderDatasNeedingDownload];
  type metadata accessor for CRLAsset();
  sub_10004161C(qword_1019F8678, type metadata accessor for CRLAsset, &protocol conformance descriptor for NSObject);
  *(v0 + 192) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_1006E19A8, v1, 0);
}

uint64_t sub_1006E19A8()
{
  sub_1006A9260(*(v0 + 192), *(v0 + 128));

  return _swift_task_switch(sub_1006E1A28, 0, 0);
}

uint64_t sub_1006E1A28()
{
  v1 = *(v0 + 144);
  v2 = [objc_allocWithZone(CRLImage) initWithCGImage:*(v0 + 168)];
  type metadata accessor for CRLAccessibilitySceneDescriptionHelper();
  [v1 unscaledClipRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 canvas];
  v12 = [v11 allReps];

  sub_100006370(0, &qword_1019FB7A0, off_10182F798);
  sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0, off_10182F798, &protocol conformance descriptor for NSObject);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1005DC808(v13, 2, v4, v6, v8, v10);
  v15 = v14;

  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 128);
  [v2 setCrlaxDescription:v16];

  v18 = *(v0 + 168);
  v19 = *(v0 + 24);

  *v19 = v2;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1006E1C34()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_1006EE8FC(v2, v1);
  *(v0 + 26) = v3;

  return _swift_task_switch(sub_1006E1CB8, 0, 0);
}

uint64_t sub_1006E1CB8()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 24);

  *v3 = v1;

  v4 = *(v0 + 8);

  return v4();
}

double sub_1006E1D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F64C8, &qword_101474E30);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v24 = *(a2 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_imagerQueue);
  (*(v12 + 16))(&v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v23;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_10061A7DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101882380;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10004161C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v7, v5);
  (*(v8 + 8))(v10, v25);

  return result;
}

uint64_t sub_1006E2100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000BE14(a3, v22 - v9, &qword_1019FB750, &qword_10146F1B0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000CAAC(v10, &qword_1019FB750, &qword_10146F1B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      sub_100006370(0, &qword_1019FAC38, off_10182F870);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006370(0, &qword_1019FAC38, off_10182F870);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1006E2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000BE14(a3, v22 - v9, &qword_1019FB750, &qword_10146F1B0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000CAAC(v10, &qword_1019FB750, &qword_10146F1B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1006E2604(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v2[121] = swift_task_alloc();
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  v2[122] = v3;
  v2[123] = *(v3 - 8);
  v2[124] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[125] = swift_task_alloc();
  v2[126] = type metadata accessor for MainActor();
  v2[127] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[128] = v5;
  v2[129] = v4;

  return _swift_task_switch(sub_1006E2768, v5, v4);
}

uint64_t sub_1006E2768()
{
  v55 = v0;
  v1 = *(v0 + 1000);
  v2 = *(v0 + 952);
  v3 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
  *(v0 + 1040) = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
  v4 = 0;
  sub_1006DF808(v2 + v3, v1);
  v5 = sub_1006E413C(*(v0 + 952));
  v8 = v5;
  if (!v5)
  {
    if (qword_1019F2138 != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v9 = 0;
  while (1)
  {
    v53 = v9;
    *(v0 + 1056) = v9;
    *(v0 + 1048) = v8;
    v10 = *(v0 + 960);
    v11 = *(v0 + 952);
    v12 = *(v10 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache);

    [v12 setObject:v8 forKey:v11];
    v51 = *(v11 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8);
    v52 = *(v11 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
    v50 = *(v11 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16);
    v13 = *(v11 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
    v4 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cachedSizes;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = *(v10 + v4);
    v15 = v54[0];
    *(v10 + v4) = 0x8000000000000000;
    v17 = sub_1007C880C(v2 + v3);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (!__OFADD__(v18, v19))
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_16:
    v24 = *(v0 + 952);
    v25 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v27 = sub_1006D7A2C();
    v29 = v28;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v27;
    *(inited + 40) = v29;
    v30 = static os_log_type_t.default.getter();
    sub_100005404(v25, &_mh_execute_header, v30, "Unable to restore cache entry from persistent file: %@", 54, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v31 = sub_1006E0714(v24);
    if (v4)
    {
      sub_100025BA8(*(v0 + 1000), type metadata accessor for CRLBoardIdentifier);

      v6 = *(v0 + 8);

      return v6();
    }

    v9 = v31;
    v32 = *(v0 + 952);
    type metadata accessor for CRLPreviewImages.CacheEntry();
    v8 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v8 + 128) = 0x80;
    *(v8 + 112) = v32;
    *(v8 + 120) = 0;
    v33 = v32;
  }

  v21 = v16;
  if (v15[3] >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100AA5C6C();
      v15 = v54[0];
    }
  }

  else
  {
    sub_100A8BF5C(v20, isUniquelyReferenced_nonNull_native);
    v15 = v54[0];
    v22 = sub_1007C880C(v2 + v3);
    if ((v21 & 1) != (v23 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v17 = v22;
  }

  *(v10 + v4) = v15;
  if ((v21 & 1) == 0)
  {
    v34 = *(v0 + 992);
    sub_1006EEEC4(v2 + v3, v34, type metadata accessor for CRLPreviewImages.Item);
    sub_100AA28A0(v17, v34, _swiftEmptySetSingleton, v15);
  }

  sub_100E6EE98(v54, v52, v51, v50, v13);
  swift_endAccess();
  if (v53)
  {
    v35 = qword_1019F2138;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlBoardPreviewImageCache;
    *(v0 + 1064) = static OS_os_log.crlBoardPreviewImageCache;
    *(v0 + 1072) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146C6B0;
    v38 = UUID.uuidString.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    v41 = sub_1000053B0();
    *(v0 + 1080) = v41;
    *(v37 + 64) = v41;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v36, &_mh_execute_header, v42, "Starting board thumbnail generation for board UUID: %@", 54, 2, v37);
    swift_setDeallocating();
    sub_100005070((v37 + 32));

    return _swift_task_switch(sub_1006E2DD8, v8, 0);
  }

  else
  {

    *(v0 + 1112) = 0;
    v43 = *(v0 + 1040);
    v44 = *(v0 + 984);
    v45 = *(v0 + 952);
    sub_1005B981C(&qword_1019FB758, &qword_101474DA0);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10146C6B0;
    sub_1006EEEC4(v45 + v43, v47 + v46, type metadata accessor for CRLPreviewImages.Item);
    v48 = sub_1005BDB60(v47);
    *(v0 + 1120) = v48;
    swift_setDeallocating();
    sub_100025BA8(v47 + v46, type metadata accessor for CRLPreviewImages.Item);
    swift_deallocClassInstance();
    v49 = swift_task_alloc();
    *(v0 + 1128) = v49;
    *v49 = v0;
    v49[1] = sub_1006E35B4;

    return sub_10007E728(v48);
  }
}

uint64_t sub_1006E2DD8()
{
  v1 = v0[131];
  v2 = *(v1 + 128);
  if ((v2 & 0xC0) == 0x80 && (v2 == 128 ? (v3 = *(v1 + 120) == 0) : (v3 = 0), v3))
  {
    v6 = v0[132];

    v7 = *(v1 + 120);
    *(v1 + 120) = v6;
    v8 = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_1006CCCB4(v7, v8);
    v9 = swift_task_alloc();
    v0[137] = v9;
    v10 = sub_100006370(0, &qword_1019FAC38, off_10182F870);
    v11 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    *v9 = v0;
    v9[1] = sub_1006E3098;

    return Task.result.getter(v0 + 117, v6, v10, v11, &protocol self-conformance witness table for Error);
  }

  else
  {

    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
    v0[136] = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = v0[129];
    v5 = v0[128];

    return _swift_task_switch(sub_1006E2FD0, v5, v4);
  }
}

uint64_t sub_1006E2FD0()
{
  v1 = *(v0 + 1000);

  sub_100025BA8(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E3098()
{
  v1 = *v0;

  v2 = *(v1 + 1048);

  return _swift_task_switch(sub_1006E31A8, v2, 0);
}

uint64_t sub_1006E31A8()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 944) | 0x40;
  v3 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 936);
  v4 = *(v1 + 128);
  *(v1 + 128) = v2;
  sub_1006CCCB4(v3, v4);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1024);

  return _swift_task_switch(sub_1006E322C, v6, v5);
}

uint64_t sub_1006E322C()
{
  v1 = v0[135];
  v2 = v0[133];
  v3 = v0[131];
  v4 = v0[121];
  v5 = v0[120];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Finished generating board thumbnail for board UUID: %@", 54, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  static TaskPriority.background.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);

  v11 = v5;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v13[5] = v3;
  v0[138] = sub_10064191C(0, 0, v4, &unk_101474DC0, v13);
  sub_1005B981C(&qword_1019FB768, &qword_101474DD8);
  swift_asyncLet_begin();

  return _swift_asyncLet_finish(v0 + 2, v0 + 945, sub_1006E3430, v0 + 82);
}

uint64_t sub_1006E344C()
{

  v0[139] = v0[132];
  v1 = v0[130];
  v2 = v0[123];
  v3 = v0[119];
  sub_1005B981C(&qword_1019FB758, &qword_101474DA0);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146C6B0;
  sub_1006EEEC4(v3 + v1, v5 + v4, type metadata accessor for CRLPreviewImages.Item);
  v6 = sub_1005BDB60(v5);
  v0[140] = v6;
  swift_setDeallocating();
  sub_100025BA8(v5 + v4, type metadata accessor for CRLPreviewImages.Item);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[141] = v7;
  *v7 = v0;
  v7[1] = sub_1006E35B4;

  return sub_10007E728(v6);
}

uint64_t sub_1006E35B4()
{
  v1 = *v0;

  v2 = *(v1 + 1032);
  v3 = *(v1 + 1024);

  return _swift_task_switch(sub_1006E36F8, v3, v2);
}

uint64_t sub_1006E36F8()
{
  v1 = v0[125];

  sub_100025BA8(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = v0[1];
  v3 = v0[131];

  return v2(v3);
}

uint64_t sub_1006E37B4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for CRLPreviewImages.Item(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v4;
  v2[14] = v3;

  return _swift_task_switch(sub_1006E3888, v4, v3);
}

uint64_t sub_1006E3888()
{
  v33 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
  sub_1006EEEC4(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v0[11], type metadata accessor for CRLPreviewImages.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = v0[11];
    v4 = v0[7];
    v5 = *(sub_1005B981C(&unk_1019FB780, &unk_101468AB0) + 48);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    sub_100025BA8(v3, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLPreviewImages.CacheEntry();
    v7 = swift_allocObject();
    v0[15] = v7;
    swift_defaultActor_initialize();
    *(v7 + 128) = 0x80;
    *(v7 + 112) = v4;
    *(v7 + 120) = 0;
    v0[16] = sub_1006E0714(v4);
    v12 = v0[7];
    v13 = v0[8];
    [*(v13 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) setObject:v7 forKey:v12];
    v30 = *(v12 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8);
    v31 = *(v12 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
    v29 = *(v12 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16);
    v14 = *(v12 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
    v15 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cachedSizes;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v13 + v15);
    v32[0] = v17;
    *(v13 + v15) = 0x8000000000000000;
    v18 = sub_1007C880C(v1 + v2);
    v21 = v18;
    v22 = v17[2];
    v23 = (v19 & 1) == 0;
    v24 = (v22 + v23);
    if (__OFADD__(v22, v23))
    {
      __break(1u);
    }

    else
    {
      v25 = v19;
      if (v17[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100AA5C6C();
          v17 = v32[0];
        }
      }

      else
      {
        sub_100A8BF5C(v24, isUniquelyReferenced_nonNull_native);
        v17 = v32[0];
        v26 = sub_1007C880C(v1 + v2);
        if ((v25 & 1) != (v27 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v21 = v26;
      }

      *(v13 + v15) = v17;
      if ((v25 & 1) == 0)
      {
        v28 = v0[10];
        sub_1006EEEC4(v1 + v2, v28, type metadata accessor for CRLPreviewImages.Item);
        sub_100AA28A0(v21, v28, _swiftEmptySetSingleton, v17);
      }

      sub_100E6EE98(v32, v31, v30, v29, v14);
      swift_endAccess();
      v24 = sub_1006E3CD0;
      v19 = v7;
      v20 = 0;
    }

    return _swift_task_switch(v24, v19, v20);
  }

  v8 = v0[11];

  sub_100025BA8(v8, type metadata accessor for CRLPreviewImages.Item);
  type metadata accessor for CRLPreviewImages.CacheError(0);
  sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
  swift_allocError();
  sub_1006EEEC4(v1 + v2, v9, type metadata accessor for CRLPreviewImages.Item);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006E3CD0()
{
  v1 = v0[15];
  v2 = *(v1 + 128);
  if ((v2 & 0xC0) == 0x80 && (v2 == 128 ? (v3 = *(v1 + 120) == 0) : (v3 = 0), v3))
  {
    *(v1 + 120) = v0[16];
    *(v1 + 128) = 0;

    v6 = swift_task_alloc();
    v0[17] = v6;
    v7 = sub_100006370(0, &qword_1019FAC38, off_10182F870);
    v8 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    *v6 = v0;
    v6[1] = sub_1006E3E94;
    v9 = v0[16];

    return Task.result.getter(v0 + 5, v9, v7, v8, &protocol self-conformance witness table for Error);
  }

  else
  {
    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_10004161C(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError, byte_101474210);
    v0[18] = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = v0[13];
    v5 = v0[14];

    return _swift_task_switch(sub_1006E40B4, v4, v5);
  }
}

uint64_t sub_1006E3E94()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1006E3FA4, v1, 0);
}

uint64_t sub_1006E3FA4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48) | 0x40;
  v3 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 40);
  v4 = *(v1 + 128);
  *(v1 + 128) = v2;
  sub_1006CCCB4(v3, v4);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);

  return _swift_task_switch(sub_1006E4024, v5, v6);
}

uint64_t sub_1006E4024()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_1006E40B4()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1006E413C(char *a1)
{
  v3 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v69 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  sub_1006DA498(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CAAC(v5, &unk_1019F33C0, &unk_101468A60);
    return 0;
  }

  (*(v7 + 32))(v12, v5, v6);
  sub_1006CA724();
  URL.appendingPathComponent(_:isDirectory:)();

  v13 = [objc_opt_self() defaultManager];
  if ((URL.isFileURL.getter() & 1) == 0)
  {

LABEL_10:
    v23 = *(v7 + 8);
    v23(v9, v6);
    v23(v12, v6);
    return 0;
  }

  v83 = a1;
  LOBYTE(v84[0]) = 0;
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 fileExistsAtPath:v14 isDirectory:v84];

  if (v15 & 1) == 0 || (v84[0])
  {
    goto LABEL_10;
  }

  v16 = Data.init(contentsOf:options:)();
  if (v1)
  {
    v21 = *(v7 + 8);
    v21(v9, v6);
    return (v21)(v12, v6);
  }

  v18 = v16;
  v19 = v17;
  type metadata accessor for CRLPreviewImages.CacheEntry();
  swift_allocObject();
  sub_100024E98(v18, v19);
  v20 = sub_1006C5BA4(v18, v19);
  v75 = v18;
  v76 = 0;
  v77 = v20;
  v82 = *(v20 + 112);
  v79 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v81 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v84[0] = v81;
  sub_1005B981C(&unk_1019FB7C0, &unk_101474E38);
  String.init<A>(describing:)();
  v25 = String._bridgeToObjectiveC()();

  v78 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v78;
  v26 = inited;
  v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v25;
  v28 = (inited + 32);
  v74 = v27;
  *(v26 + 64) = v27;
  if (static NSObject.== infix(_:_:)())
  {
    sub_10002640C(v75, v19);
    swift_setDeallocating();
    sub_100005070(v28);
LABEL_40:
    v68 = *(v7 + 8);
    v68(v9, v6);
    v68(v12, v6);
    return v77;
  }

  v80 = v28;
  v70 = v19;
  v69 = objc_opt_self();
  LODWORD(v82) = [v69 _atomicIncrementAssertCount];
  v84[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v26, v84, "expected equality between two values of type %{public}@", 55, 2u);
  StaticString.description.getter("cacheEntryFromPersistenceDirectoryData(for:)", 44, 2);
  v83 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
  v29 = String._bridgeToObjectiveC()();
  v73 = v26;
  v30 = v29;

  v31 = [v30 lastPathComponent];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v33;

  if (qword_1019F20A0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v72 = static OS_os_log.crlAssert;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_10146CA70;
  *(v34 + 56) = &type metadata for Int32;
  *(v34 + 64) = &protocol witness table for Int32;
  *(v34 + 32) = v82;
  v81 = (v34 + 32);
  v35 = v78;
  v36 = v74;
  *(v34 + 96) = v78;
  *(v34 + 104) = v36;
  *(v34 + 72) = v83;
  *(v34 + 136) = &type metadata for String;
  v37 = sub_1000053B0();
  v38 = v71;
  *(v34 + 112) = v32;
  *(v34 + 120) = v38;
  *(v34 + 176) = &type metadata for UInt;
  *(v34 + 184) = &protocol witness table for UInt;
  *(v34 + 144) = v37;
  *(v34 + 152) = 682;
  v39 = v83;
  v40 = v84[0];
  *(v34 + 216) = v35;
  *(v34 + 224) = v36;
  *(v34 + 192) = v40;
  v83 = v39;
  v41 = v40;
  v42 = static os_log_type_t.error.getter();
  v43 = v72;
  sub_100005404(v72, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
  swift_setDeallocating();
  v74 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v44 = static os_log_type_t.error.getter();
  v45 = v73;
  sub_100005404(v43, &_mh_execute_header, v44, "expected equality between two values of type %{public}@", 55, 2, v73);

  type metadata accessor for __VaListBuilder();
  v46 = swift_allocObject();
  v46[2] = 8;
  v46[3] = 0;
  v47 = v46 + 3;
  v46[4] = 0;
  v46[5] = 0;
  v82 = v46;
  v48 = *(v45 + 16);
  v49 = v80;
  v79 = v48;
  if (!v48)
  {
LABEL_39:
    v83 = __VaListBuilder.va_list()();
    StaticString.description.getter("cacheEntryFromPersistenceDirectoryData(for:)", 44, 2);
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
    v66 = String._bridgeToObjectiveC()();

    v67 = v81;
    [v69 handleFailureInFunction:v81 file:v65 lineNumber:682 isFatal:0 format:v66 args:v83];

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_10002640C(v75, v70);
    goto LABEL_40;
  }

  v50 = 0;
  while (1)
  {
    v83 = v50;
    v51 = &v49[5 * v50];
    v32 = v51[3];
    sub_100020E58(v51, v32);
    v52 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v53 = *v47;
    v54 = *(v52 + 16);
    v55 = __OFADD__(*v47, v54);
    v56 = *v47 + v54;
    if (v55)
    {
      goto LABEL_42;
    }

    v32 = v52;
    v57 = v82;
    v58 = v82[4];
    if (v58 >= v56)
    {
      goto LABEL_32;
    }

    if (v58 + 0x4000000000000000 < 0)
    {
      goto LABEL_43;
    }

    v81 = v82[5];
    v78 = v58;
    if (2 * v58 > v56)
    {
      v56 = 2 * v58;
    }

    v82[4] = v56;
    if ((v56 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_44;
    }

    v59 = v57;
    result = swift_slowAlloc();
    v59[5] = result;
    if (v81)
    {
      if (result != v81 || result >= &v81[8 * v53])
      {
        memmove(result, v81, 8 * v53);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v57 = v82;
LABEL_32:
      result = v57[5];
    }

    v49 = v80;
    if (!result)
    {
      break;
    }

    v61 = *(v32 + 16);
    if (v61)
    {
      v62 = (v32 + 32);
      v63 = *v47;
      while (1)
      {
        v64 = *v62++;
        *&result[8 * v63] = v64;
        v63 = *v47 + 1;
        if (__OFADD__(*v47, 1))
        {
          break;
        }

        *v47 = v63;
        if (!--v61)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_17:

    v50 = v83 + 1;
    if (v83 + 1 == v79)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E4AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10007EE50;

  return sub_1006D96B4(a5);
}

uint64_t sub_1006E4B74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002E33C;

  return Task.result.getter(a1, a2, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

void sub_1006E4C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v7 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v7 - 8);
  v33 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cachedSizes;
  swift_beginAccess();
  v10 = *(a3 + v9);
  v11 = *(v10 + 16);

  v32[1] = v4;
  v35 = a2;
  if (v11 && (v12 = sub_1007C880C(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = _swiftEmptySetSingleton;
  }

  v15 = 0;
  v36 = v14;
  v16 = v14 + 7;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14[7];
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v36[6] + ((v21 << 11) | (32 * v22));
    v24 = *v23;
    v38 = *(v23 + 8);
    v37 = *(v23 + 16);
    v25 = *(v23 + 24);
    v26 = v33;
    sub_1006EEEC4(v35, v33, type metadata accessor for CRLPreviewImages.Item);
    v27 = type metadata accessor for CRLPreviewImages.LookupKey(0);
    v28 = objc_allocWithZone(v27);
    sub_1006EEEC4(v26, &v28[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
    v29 = &v28[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
    v30 = v38;
    *v29 = v24;
    *(v29 + 1) = v30;
    v29[16] = v37;
    *&v28[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v25;
    v39.receiver = v28;
    v39.super_class = v27;
    v31 = objc_msgSendSuper2(&v39, "init");
    sub_100025BA8(v26, type metadata accessor for CRLPreviewImages.Item);
    sub_100E70E08(&v40, v31);
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = v16[v21];
    ++v15;
    if (v19)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1006E4EC4(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006E4F5C, v4, v3);
}

uint64_t sub_1006E4F5C()
{
  v1 = v0[27];

  if (!*(v1 + 16))
  {
    goto LABEL_25;
  }

  v2 = sub_1006DF5EC(v0[27]);
  v36 = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLPreviewImages.LookupKey(0);
    sub_10004161C(&qword_1019FB898, type metadata accessor for CRLPreviewImages.LookupKey, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[19];
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = (v2 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v37 = v3;
  while (v3 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19)
    {
      goto LABEL_23;
    }

    v0[26] = v19;
    type metadata accessor for CRLPreviewImages.LookupKey(0);
    swift_dynamicCast();
    v18 = v0[25];
    v16 = v6;
    v17 = v7;
    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_20:
    v38 = v17;
    v20 = v0[28];
    sub_1006E5460(v18, 0);
    [*(v20 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache) removeObjectForKey:v18];
    v21 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
    v22 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cachedSizes;
    swift_beginAccess();
    v5 = *(v20 + v22);
    v23 = sub_1007C880C(v18 + v21);
    if (v24)
    {
      v25 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v20 + v22);
      *(v20 + v22) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA5C6C();
      }

      v12 = *(v5 + 48);
      v13 = type metadata accessor for CRLPreviewImages.Item(0);
      sub_100025BA8(v12 + *(*(v13 - 8) + 72) * v25, type metadata accessor for CRLPreviewImages.Item);

      sub_100BCEDF0(v25, v5);
      *(v20 + v22) = v5;
      v3 = v37;
    }

    swift_endAccess();

    v6 = v16;
    v7 = v38;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (!v7)
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_23;
      }

      v15 = v4[v16];
      ++v14;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_16:
  v17 = (v15 - 1) & v15;
  v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_23:
  v27 = v0[28];
  sub_100035F90(v3);
  v28 = *(*(v27 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);

  v29 = sub_1006EC840(v36, v28);

  v3 = sub_100E93FF4(v29);

  v5 = [objc_opt_self() defaultCenter];
  if (qword_1019F14B0 == -1)
  {
    goto LABEL_24;
  }

LABEL_29:
  swift_once();
LABEL_24:
  v30 = v0[28];
  v31 = qword_101AD6200;
  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[23] = 0xD00000000000001DLL;
  v0[24] = 0x800000010155F910;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1005B981C(&qword_1019FB8A8, &qword_101474F00);
  *(inited + 72) = v3;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 postNotificationName:v31 object:v30 userInfo:isa];

LABEL_25:
  v34 = v0[1];

  return v34();
}

uint64_t sub_1006E5460(uint64_t a1, int a2)
{
  v49 = a2;
  v2 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for URL();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v46 - v11;
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlBoardPreviewImageCache;
  v46 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v14 = sub_1006D7A2C();
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v47 = sub_1000053B0();
  *(inited + 64) = v47;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v17 = v12;
  v18 = static os_log_type_t.info.getter();
  sub_100005404(v12, &_mh_execute_header, v18, "Removing asset from disk storage: %@", 36, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  if (v49)
  {
    if (qword_1019F1490 != -1)
    {
      swift_once();
    }

    v19 = sub_1005EB3DC(v2, qword_101AD61A8);
    sub_10000BE14(v19, v4, &unk_1019F33C0, &unk_101468A60);
  }

  else
  {
    sub_1006DA498(v4);
  }

  v21 = v50;
  v20 = v51;
  sub_100044B68(v4, v7);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    return sub_10000CAAC(v7, &unk_1019F33C0, &unk_101468A60);
  }

  v23 = v48;
  (*(v21 + 32))(v48, v7, v20);
  sub_1006C63A0();
  v31 = objc_opt_self();
  v32 = [v31 defaultManager];
  if ((URL.isFileURL.getter() & 1) == 0)
  {

LABEL_16:
    v44 = *(v21 + 8);
    v44(v52, v20);
    return (v44)(v23, v20);
  }

  v33 = v17;
  LOBYTE(v53[0]) = 0;
  URL.path.getter();
  v34 = String._bridgeToObjectiveC()();

  v35 = [v32 fileExistsAtPath:v34 isDirectory:v53];

  if (v35 & 1) == 0 || (v53[0])
  {
    goto LABEL_16;
  }

  v36 = [v31 defaultManager];
  v37 = v52;
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  v53[0] = 0;
  v41 = [v36 removeItemAtURL:v39 error:v53];

  if (v41)
  {
    v42 = *(v21 + 8);
    v43 = v53[0];
    v42(v37, v20);
    return (v42)(v23, v20);
  }

  else
  {
    v45 = v53[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v21 + 8))(v37, v20);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v25 = Error.publicDescription.getter(v53[6], v53[7]);
    v26 = v47;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v26;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    swift_getErrorValue();
    v28 = Error.fullDescription.getter(v53[2]);
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v26;
    *(v24 + 72) = v28;
    *(v24 + 80) = v29;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v30, "Error removing CacheEntry on disk storage: %{public}@ <%@>", 58, 2, v24);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    return (*(v21 + 8))(v48, v20);
  }
}

uint64_t sub_1006E5A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4[14] = v5;
  v4[15] = *(v5 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for CRLPreviewImages.Item(0);
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v4[20] = *(v7 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006E5C18, v9, v8);
}

uint64_t sub_1006E5C18()
{
  v1 = *(v0 + 152);
  v37 = *(v0 + 112);
  v2 = *(v0 + 80);

  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v47 = v2;

  v9 = 0;
  v45 = v7;
  v46 = v2 + 56;
  v38 = v1;
  while (v6)
  {
LABEL_11:
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    sub_1006EEEC4(*(v47 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v9 << 6)), v12, type metadata accessor for CRLPreviewImages.Item);
    sub_1006EEE5C(v12, v13, type metadata accessor for CRLPreviewImages.Item);
    sub_1006EEEC4(v13, v14, type metadata accessor for CRLPreviewImages.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 184);
    if (EnumCaseMultiPayload != 1)
    {
      sub_100025BA8(*(v0 + 184), type metadata accessor for CRLPreviewImages.Item);
      v10 = (v0 + 176);
      v7 = v45;
      v3 = v46;
      goto LABEL_5;
    }

    v17 = v1;
    v18 = *(v0 + 168);
    v41 = *(v0 + 160);
    v19 = *(v0 + 136);
    v39 = v18;
    v40 = *(v0 + 128);
    v20 = *(v0 + 104);
    v43 = v20;
    v44 = *(v0 + 96);
    sub_1006EEE5C(*(v0 + 176), v19, type metadata accessor for CRLBoardIdentifier);
    v21 = type metadata accessor for TaskPriority();
    v42 = *(v21 - 8);
    (*(v42 + 56))(v20, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1006EEEC4(v16, v18, type metadata accessor for CRLPreviewImages.Item);
    sub_1006EEEC4(v19, v40, type metadata accessor for CRLBoardIdentifier);
    v23 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v24 = (v41 + *(v37 + 80) + v23) & ~*(v37 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v22;
    sub_1006EEE5C(v39, v25 + v23, type metadata accessor for CRLPreviewImages.Item);
    sub_1006EEE5C(v40, v25 + v24, type metadata accessor for CRLBoardIdentifier);
    sub_10000BE14(v43, v44, &qword_1019FB750, &qword_10146F1B0);
    v27 = (*(v42 + 48))(v44, 1, v21);
    v28 = *(v0 + 96);
    if (v27 == 1)
    {
      sub_10000CAAC(*(v0 + 96), &qword_1019FB750, &qword_10146F1B0);
      if (!*v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v42 + 8))(v28, v21);
      if (!*v26)
      {
LABEL_16:
        v29 = 0;
        v31 = 0;
        goto LABEL_17;
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v31 = v30;
    swift_unknownObjectRelease();
LABEL_17:
    v32 = **(v0 + 72);

    if (v31 | v29)
    {
      v33 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    else
    {
      v33 = 0;
    }

    v7 = v45;
    v34 = *(v0 + 136);
    v35 = *(v0 + 104);
    *(v0 + 48) = 1;
    *(v0 + 56) = v33;
    *(v0 + 64) = v32;
    swift_task_create();

    sub_10000CAAC(v35, &qword_1019FB750, &qword_10146F1B0);
    sub_100025BA8(v34, type metadata accessor for CRLBoardIdentifier);
    v10 = (v0 + 184);
    v1 = v38;
    v3 = v46;
LABEL_5:
    v6 &= v6 - 1;
    result = sub_100025BA8(*v10, type metadata accessor for CRLPreviewImages.Item);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1006E61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  _s5BoardVMa(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for CRLPreviewImages.Item(0);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1006E6264, 0, 0);
}

uint64_t sub_1006E6264()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 88);
    sub_1006EEEC4(*(v0 + 64), v2, type metadata accessor for CRLPreviewImages.Item);
    v3 = type metadata accessor for CRLPreviewImages.LookupKey(0);
    v4 = objc_allocWithZone(v3);
    sub_1006EEEC4(v2, &v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
    v5 = &v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
    *v5 = xmmword_101474CF0;
    v5[16] = 1;
    *&v4[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = 0x4000000000000000;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    v6 = objc_msgSendSuper2((v0 + 40), "init");
    *(v0 + 104) = v6;
    sub_100025BA8(v2, type metadata accessor for CRLPreviewImages.Item);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_1006E6448;

    return sub_1006DA940(v6);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1006E6448(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1006E6B98, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 136) = v5;
    *v5 = v4;
    v5[1] = sub_1006E65D0;

    return sub_1006C6600();
  }
}

uint64_t sub_1006E65D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1006E6C10;
  }

  else
  {
    v4 = sub_1006E66E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006E66E4()
{
  v1 = v0[18];
  v2 = *(v0[12] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary);
  v0[20] = v2;
  v3 = v2;
  v4 = [v1 PNGRepresentation];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v0[21] = v5;
  v0[22] = v7;
  type metadata accessor for MainActor();
  v0[23] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[24] = v9;
  v0[25] = v8;

  return _swift_task_switch(sub_1006E67CC, v9, v8);
}

uint64_t sub_1006E67CC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 160) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore);
  *(v3 + 208) = v4;
  if (v4)
  {
    v5 = *(v3 + 152);
    v7 = *(v3 + 72);
    v6 = *(v3 + 80);

    sub_1010AB99C(v7, v6);
    *(v3 + 216) = v5;
    if (v5)
    {
      v8 = *(v3 + 176);
      v9 = *(v3 + 168);

      sub_10002640C(v9, v8);

      *(v3 + 232) = v5;
      a1 = sub_1006E6B10;
      a2 = 0;
    }

    else
    {
      a1 = sub_1006E68C0;
      a2 = v4;
    }

    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1006E68C0()
{
  v1 = v0[27];
  sub_1012813BC(v0[10], v0[21], v0[22]);
  v0[28] = v1;
  sub_100025BA8(v0[10], _s5BoardVMa);

  v2 = v0[24];
  v3 = v0[25];
  if (v1)
  {
    v4 = sub_1006E6A80;
  }

  else
  {
    v4 = sub_1006E6974;
  }

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_1006E6974()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];

  sub_10002640C(v2, v1);

  return _swift_task_switch(sub_1006E69F8, 0, 0);
}

uint64_t sub_1006E69F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E6A80()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  sub_10002640C(v2, v1);

  *(v0 + 232) = *(v0 + 224);

  return _swift_task_switch(sub_1006E6B10, 0, 0);
}

uint64_t sub_1006E6B10()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E6B98()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E6C10()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E6C8C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v101 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v86 - v5;
  v103 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v103);
  v105 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5BoardVMa(0);
  __chkstk_darwin(v7 - 8);
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s4NodeVMa(0);
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v86 - v13;
  __chkstk_darwin(v14);
  v104 = &v86 - v15;
  v93 = a1;
  v94 = *(*(a1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);

  v16 = 0;
  v17 = 0;
  v90 = xmmword_10146BDE0;
  v86 = xmmword_10146CA70;
  v107 = v11;
  while (1)
  {
    v92 = *(&off_101874208 + v16 + 32);
    v98 = sub_1006E7934(v92);
    if (v17)
    {

      if (qword_1019F2138 != -1)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }

    v96 = 0;
    v97 = v16;
    v108[0] = _swiftEmptySetSingleton;
    v35 = v94[2];

    if (v35)
    {
      break;
    }

LABEL_32:

    v59 = v108[0];

    v17 = v96;
    v34 = sub_1006EDE90(v60, v59);

    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v95 = static OS_os_log.crlBoardPreviewImageCache;
    v91 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = v90;
    v62 = *(v34 + 16);
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v62;
    v96 = inited + 32;
    v108[0] = sub_1006D7744(v34);
    sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
    v63 = BidirectionalCollection<>.joined(separator:)();
    v65 = v64;

    *(inited + 96) = &type metadata for String;
    v66 = sub_1000053B0();
    *(inited + 104) = v66;
    *(inited + 72) = v63;
    *(inited + 80) = v65;
    v67 = static os_log_type_t.default.getter();
    sub_100005404(v95, &_mh_execute_header, v67, "removeStrandedCacheEntriesInOnDiskStorage, about to remove images for %d board UUIDs: %@", 88, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v68 = *(v34 + 16);
    if (v68)
    {
      v69 = v98[2];

      v11 = v107;
      if (v68 == v69)
      {
        v89 = v66;
        v96 = v34;
        v98 = v17;
        v95 = objc_opt_self();
        v70 = [v95 _atomicIncrementAssertCount];
        v108[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v108, "Removing _all_ cached board images.", 35, 2u);
        StaticString.description.getter("removeStrandedCacheEntriesInOnDiskStorage()", 43, 2);
        v88 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
        v71 = String._bridgeToObjectiveC()();

        v72 = [v71 lastPathComponent];

        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v87 = static OS_os_log.crlAssert;
        v18 = swift_initStackObject();
        *(v18 + 16) = v86;
        *(v18 + 56) = &type metadata for Int32;
        *(v18 + 64) = &protocol witness table for Int32;
        *(v18 + 32) = v70;
        v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v18 + 96) = v19;
        v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        v21 = v88;
        *(v18 + 72) = v88;
        v22 = v89;
        *(v18 + 136) = &type metadata for String;
        *(v18 + 144) = v22;
        *(v18 + 104) = v20;
        *(v18 + 112) = v73;
        *(v18 + 120) = v75;
        *(v18 + 176) = &type metadata for UInt;
        *(v18 + 152) = 841;
        v23 = v108[0];
        *(v18 + 216) = v19;
        *(v18 + 224) = v20;
        *(v18 + 184) = &protocol witness table for UInt;
        *(v18 + 192) = v23;
        v24 = v21;
        v25 = v23;
        v26 = static os_log_type_t.error.getter();
        v27 = v87;
        sub_100005404(v87, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
        swift_setDeallocating();
        swift_arrayDestroy();
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v27, &_mh_execute_header, v28, "Removing _all_ cached board images.", 35, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v29 = swift_allocObject();
        v29[2] = 8;
        v29[3] = 0;
        v29[4] = 0;
        v29[5] = 0;
        v30 = __VaListBuilder.va_list()();
        StaticString.description.getter("removeStrandedCacheEntriesInOnDiskStorage()", 43, 2);
        v31 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardPreviewImageCache.swift", 101, 2);
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Removing _all_ cached board images.", 35, 2);
        v33 = String._bridgeToObjectiveC()();

        [v95 handleFailureInFunction:v31 file:v32 lineNumber:841 isFatal:0 format:v33 args:v30];

        v11 = v107;
        v17 = v98;
        v34 = v96;
      }

      sub_1006E8454(v34, v92);
    }

    else
    {

      v11 = v107;
    }

    v16 = v97 + 1;
    if (v97 == 1)
    {
    }
  }

  v36 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v37 = v94;
  while (1)
  {
    sub_1006EEEC4(v37 + v36, v11, _s4NodeVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v35 - 1) > v37[3] >> 1)
    {
      v37 = sub_10003DFD0(isUniquelyReferenced_nonNull_native, v35, 1, v37);
    }

    sub_100025BA8(v37 + v36, _s4NodeVMa);
    v41 = *(v106 + 72);
    if (v41 > 0 || v37 + v36 >= v37 + v36 + v41 + (v37[2] - 1) * v41)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v41)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = v37[2] - 1;
    v37[2] = v42;
    v43 = *&v11[*(v9 + 20)];
    v44 = *(v43 + 16);
    v45 = v42 + v44;
    if (__OFADD__(v42, v44))
    {
      break;
    }

    v46 = v9;
    v47 = v37[3];

    if (v45 > (v47 >> 1))
    {
      if (v42 <= v45)
      {
        v53 = v42 + v44;
      }

      else
      {
        v53 = v42;
      }

      v37 = sub_10003DFD0(1, v53, 1, v37);
      v42 = v37[2];
      v9 = v46;
      if (*(v43 + 16))
      {
LABEL_21:
        if ((v37[3] >> 1) - v42 < v44)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        v49 = v104;
        v48 = v105;
        v11 = v107;
        if (v44)
        {
          v50 = v37[2];
          v51 = __OFADD__(v50, v44);
          v52 = v50 + v44;
          if (v51)
          {
            goto LABEL_45;
          }

          v37[2] = v52;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v9 = v46;
      if (v44)
      {
        goto LABEL_21;
      }
    }

    v49 = v104;
    v48 = v105;
    v11 = v107;
    if (v44)
    {
      goto LABEL_43;
    }

LABEL_30:
    v54 = v102;
    sub_1006EEE5C(v11, v102, _s4NodeVMa);
    sub_1006EEE5C(v54, v49, _s4NodeVMa);
    sub_1006EEEC4(v49, v48, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v55 = v99;
      sub_1006EEE5C(v48, v99, _s5BoardVMa);
      v56 = v101;
      sub_1006EEEC4(v55, v101, type metadata accessor for CRLBoardIdentifier);
      v57 = v100;
      sub_100031F10(v100, v56);
      v58 = v57;
      v9 = v46;
      sub_100025BA8(v58, type metadata accessor for CRLBoardIdentifier);
      sub_100025BA8(v55, _s5BoardVMa);
      v38 = _s4NodeVMa;
      v39 = v49;
    }

    else
    {
      sub_100025BA8(v49, _s4NodeVMa);
      v38 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v39 = v48;
    }

    sub_100025BA8(v39, v38);
    v35 = v37[2];
    if (!v35)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_40:
  v76 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v77 = swift_initStackObject();
  *(v77 + 16) = v90;
  swift_getErrorValue();
  v78 = Error.publicDescription.getter(v109, v110);
  v80 = v79;
  *(v77 + 56) = &type metadata for String;
  v81 = sub_1000053B0();
  *(v77 + 64) = v81;
  *(v77 + 32) = v78;
  *(v77 + 40) = v80;
  swift_getErrorValue();
  v82 = Error.fullDescription.getter(v108[2]);
  *(v77 + 96) = &type metadata for String;
  *(v77 + 104) = v81;
  *(v77 + 72) = v82;
  *(v77 + 80) = v83;
  v84 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v84, "Error removing stranded cache entries from on disk storage. %{public}@ <%@>", 75, 2, v77);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  return swift_arrayDestroy();
}